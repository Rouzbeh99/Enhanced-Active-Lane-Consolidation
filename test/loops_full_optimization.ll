; ModuleID = 'loops.c'
source_filename = "loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
define dso_local i32 @bar(float* nocapture %0, float* nocapture readonly %1, float* nocapture readonly %2, i32 %3) local_unnamed_addr #0 !dbg !76 {
  call void @llvm.dbg.value(metadata float* %0, metadata !80, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.value(metadata float* %1, metadata !81, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.value(metadata float* %2, metadata !82, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.value(metadata i32 %3, metadata !83, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.value(metadata i32 0, metadata !84, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.value(metadata i32 0, metadata !85, metadata !DIExpression()), !dbg !90
  %5 = icmp sgt i32 %3, 0, !dbg !91
  br i1 %5, label %6, label %78, !dbg !93

6:                                                ; preds = %4
  %7 = zext i32 %3 to i64, !dbg !91
  %8 = getelementptr inbounds float, float* %0, i64 -1, !dbg !94
  %9 = load float, float* %8, align 4, !dbg !96, !tbaa !36
  %10 = add nsw i64 %7, -1, !dbg !93
  %11 = and i64 %7, 3, !dbg !93
  %12 = icmp ult i64 %10, 3, !dbg !93
  br i1 %12, label %15, label %13, !dbg !93

13:                                               ; preds = %6
  %14 = sub nsw i64 %7, %11, !dbg !93
  br label %37, !dbg !93

15:                                               ; preds = %37, %6
  %16 = phi float [ %9, %6 ], [ %58, %37 ]
  %17 = phi i64 [ 0, %6 ], [ %60, %37 ]
  %18 = icmp eq i64 %11, 0, !dbg !93
  br i1 %18, label %30, label %19, !dbg !93

19:                                               ; preds = %15, %19
  %20 = phi float [ %25, %19 ], [ %16, %15 ], !dbg !96
  %21 = phi i64 [ %27, %19 ], [ %17, %15 ]
  %22 = phi i64 [ %28, %19 ], [ %11, %15 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !85, metadata !DIExpression()), !dbg !90
  %23 = getelementptr inbounds float, float* %1, i64 %21, !dbg !97
  %24 = load float, float* %23, align 4, !dbg !97, !tbaa !36
  %25 = fmul float %20, %24, !dbg !98
  %26 = getelementptr inbounds float, float* %0, i64 %21, !dbg !99
  store float %25, float* %26, align 4, !dbg !100, !tbaa !36
  %27 = add nuw nsw i64 %21, 1, !dbg !101
  call void @llvm.dbg.value(metadata i64 %27, metadata !85, metadata !DIExpression()), !dbg !90
  %28 = add i64 %22, -1, !dbg !93
  %29 = icmp eq i64 %28, 0, !dbg !93
  br i1 %29, label %30, label %19, !dbg !93, !llvm.loop !102

30:                                               ; preds = %19, %15
  call void @llvm.dbg.value(metadata i32 0, metadata !87, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32 0, metadata !84, metadata !DIExpression()), !dbg !89
  br i1 %5, label %31, label %78, !dbg !105

31:                                               ; preds = %30
  %32 = zext i32 %3 to i64, !dbg !106
  %33 = and i64 %32, 1, !dbg !105
  %34 = icmp eq i32 %3, 1, !dbg !105
  br i1 %34, label %65, label %35, !dbg !105

35:                                               ; preds = %31
  %36 = sub nsw i64 %32, %33, !dbg !105
  br label %80, !dbg !105

37:                                               ; preds = %37, %13
  %38 = phi float [ %9, %13 ], [ %58, %37 ], !dbg !96
  %39 = phi i64 [ 0, %13 ], [ %60, %37 ]
  %40 = phi i64 [ %14, %13 ], [ %61, %37 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !85, metadata !DIExpression()), !dbg !90
  %41 = getelementptr inbounds float, float* %1, i64 %39, !dbg !97
  %42 = load float, float* %41, align 4, !dbg !97, !tbaa !36
  %43 = fmul float %38, %42, !dbg !98
  %44 = getelementptr inbounds float, float* %0, i64 %39, !dbg !99
  store float %43, float* %44, align 4, !dbg !100, !tbaa !36
  %45 = or i64 %39, 1, !dbg !101
  call void @llvm.dbg.value(metadata i64 %45, metadata !85, metadata !DIExpression()), !dbg !90
  %46 = getelementptr inbounds float, float* %1, i64 %45, !dbg !97
  %47 = load float, float* %46, align 4, !dbg !97, !tbaa !36
  %48 = fmul float %43, %47, !dbg !98
  %49 = getelementptr inbounds float, float* %0, i64 %45, !dbg !99
  store float %48, float* %49, align 4, !dbg !100, !tbaa !36
  %50 = or i64 %39, 2, !dbg !101
  call void @llvm.dbg.value(metadata i64 %50, metadata !85, metadata !DIExpression()), !dbg !90
  %51 = getelementptr inbounds float, float* %1, i64 %50, !dbg !97
  %52 = load float, float* %51, align 4, !dbg !97, !tbaa !36
  %53 = fmul float %48, %52, !dbg !98
  %54 = getelementptr inbounds float, float* %0, i64 %50, !dbg !99
  store float %53, float* %54, align 4, !dbg !100, !tbaa !36
  %55 = or i64 %39, 3, !dbg !101
  call void @llvm.dbg.value(metadata i64 %55, metadata !85, metadata !DIExpression()), !dbg !90
  %56 = getelementptr inbounds float, float* %1, i64 %55, !dbg !97
  %57 = load float, float* %56, align 4, !dbg !97, !tbaa !36
  %58 = fmul float %53, %57, !dbg !98
  %59 = getelementptr inbounds float, float* %0, i64 %55, !dbg !99
  store float %58, float* %59, align 4, !dbg !100, !tbaa !36
  %60 = add nuw nsw i64 %39, 4, !dbg !101
  call void @llvm.dbg.value(metadata i64 %60, metadata !85, metadata !DIExpression()), !dbg !90
  %61 = add i64 %40, -4, !dbg !93
  %62 = icmp eq i64 %61, 0, !dbg !93
  br i1 %62, label %15, label %37, !dbg !93, !llvm.loop !108

63:                                               ; preds = %80
  %64 = sitofp i32 %100 to float, !dbg !105
  br label %65, !dbg !105

65:                                               ; preds = %63, %31
  %66 = phi i32 [ undef, %31 ], [ %100, %63 ]
  %67 = phi i64 [ 0, %31 ], [ %101, %63 ]
  %68 = phi float [ 0.000000e+00, %31 ], [ %64, %63 ]
  %69 = icmp eq i64 %33, 0, !dbg !105
  br i1 %69, label %78, label %70, !dbg !105

70:                                               ; preds = %65
  call void @llvm.dbg.value(metadata i64 %67, metadata !87, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32 undef, metadata !84, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.value(metadata i32 undef, metadata !84, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.value(metadata i64 %67, metadata !87, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !104
  %71 = getelementptr inbounds float, float* %1, i64 %67, !dbg !110
  %72 = load float, float* %71, align 4, !dbg !110, !tbaa !36
  %73 = getelementptr inbounds float, float* %2, i64 %67, !dbg !112
  %74 = load float, float* %73, align 4, !dbg !112, !tbaa !36
  %75 = fadd float %72, %74, !dbg !113
  %76 = fadd float %75, %68, !dbg !114
  %77 = fptosi float %76 to i32, !dbg !114
  call void @llvm.dbg.value(metadata i32 %77, metadata !84, metadata !DIExpression()), !dbg !89
  br label %78, !dbg !115

78:                                               ; preds = %70, %65, %4, %30
  %79 = phi i32 [ 0, %30 ], [ 0, %4 ], [ %66, %65 ], [ %77, %70 ], !dbg !89
  call void @llvm.dbg.value(metadata i32 %79, metadata !84, metadata !DIExpression()), !dbg !89
  ret i32 %79, !dbg !115

80:                                               ; preds = %80, %35
  %81 = phi i64 [ 0, %35 ], [ %101, %80 ]
  %82 = phi i32 [ 0, %35 ], [ %100, %80 ]
  %83 = phi i64 [ %36, %35 ], [ %102, %80 ]
  call void @llvm.dbg.value(metadata i64 %81, metadata !87, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32 %82, metadata !84, metadata !DIExpression()), !dbg !89
  %84 = getelementptr inbounds float, float* %1, i64 %81, !dbg !110
  %85 = load float, float* %84, align 4, !dbg !110, !tbaa !36
  %86 = getelementptr inbounds float, float* %2, i64 %81, !dbg !112
  %87 = load float, float* %86, align 4, !dbg !112, !tbaa !36
  %88 = fadd float %85, %87, !dbg !113
  %89 = sitofp i32 %82 to float, !dbg !114
  %90 = fadd float %88, %89, !dbg !114
  %91 = fptosi float %90 to i32, !dbg !114
  call void @llvm.dbg.value(metadata i32 %91, metadata !84, metadata !DIExpression()), !dbg !89
  %92 = or i64 %81, 1, !dbg !116
  call void @llvm.dbg.value(metadata i64 %92, metadata !87, metadata !DIExpression()), !dbg !104
  %93 = getelementptr inbounds float, float* %1, i64 %92, !dbg !110
  %94 = load float, float* %93, align 4, !dbg !110, !tbaa !36
  %95 = getelementptr inbounds float, float* %2, i64 %92, !dbg !112
  %96 = load float, float* %95, align 4, !dbg !112, !tbaa !36
  %97 = fadd float %94, %96, !dbg !113
  %98 = sitofp i32 %91 to float, !dbg !114
  %99 = fadd float %97, %98, !dbg !114
  %100 = fptosi float %99 to i32, !dbg !114
  call void @llvm.dbg.value(metadata i32 %100, metadata !84, metadata !DIExpression()), !dbg !89
  %101 = add nuw nsw i64 %81, 2, !dbg !116
  call void @llvm.dbg.value(metadata i64 %101, metadata !87, metadata !DIExpression()), !dbg !104
  %102 = add i64 %83, -2, !dbg !105
  %103 = icmp eq i64 %102, 0, !dbg !105
  br i1 %103, label %63, label %80, !dbg !105, !llvm.loop !117
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local i32 @bar2(float* nocapture %0, float* nocapture readnone %1, float* nocapture %2, i32 %3) local_unnamed_addr #0 !dbg !119 {
  call void @llvm.dbg.value(metadata float* %0, metadata !121, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.value(metadata float* undef, metadata !122, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.value(metadata float* %2, metadata !123, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.value(metadata i32 %3, metadata !124, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.value(metadata i32 0, metadata !125, metadata !DIExpression()), !dbg !128
  %5 = icmp sgt i32 %3, 0, !dbg !129
  br i1 %5, label %6, label %28, !dbg !131

6:                                                ; preds = %4
  %7 = zext i32 %3 to i64, !dbg !129
  %8 = and i64 %7, 1, !dbg !131
  %9 = icmp eq i32 %3, 1, !dbg !131
  br i1 %9, label %12, label %10, !dbg !131

10:                                               ; preds = %6
  %11 = sub nsw i64 %7, %8, !dbg !131
  br label %29, !dbg !131

12:                                               ; preds = %57, %6
  %13 = phi i64 [ 0, %6 ], [ %58, %57 ]
  %14 = icmp eq i64 %8, 0, !dbg !132
  br i1 %14, label %28, label %15, !dbg !132

15:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i64 %13, metadata !125, metadata !DIExpression()), !dbg !128
  %16 = getelementptr inbounds float, float* %0, i64 %13, !dbg !134
  %17 = load float, float* %16, align 4, !dbg !134, !tbaa !36
  %18 = getelementptr inbounds float, float* %2, i64 %13, !dbg !135
  %19 = load float, float* %18, align 4, !dbg !135, !tbaa !36
  %20 = fmul float %17, %19, !dbg !136
  store float %20, float* %16, align 4, !dbg !137, !tbaa !36
  %21 = fcmp ogt float %20, 5.000000e+00, !dbg !138
  br i1 %21, label %22, label %28, !dbg !132

22:                                               ; preds = %15
  %23 = add nsw i64 %13, -1, !dbg !140
  %24 = getelementptr inbounds float, float* %0, i64 %23, !dbg !142
  %25 = bitcast float* %24 to i32*, !dbg !142
  %26 = load i32, i32* %25, align 4, !dbg !142, !tbaa !36
  %27 = bitcast float* %18 to i32*, !dbg !143
  store i32 %26, i32* %27, align 4, !dbg !143, !tbaa !36
  br label %28, !dbg !144

28:                                               ; preds = %12, %15, %22, %4
  ret i32 0, !dbg !145

29:                                               ; preds = %57, %10
  %30 = phi i64 [ 0, %10 ], [ %58, %57 ]
  %31 = phi i64 [ %11, %10 ], [ %59, %57 ]
  call void @llvm.dbg.value(metadata i64 %30, metadata !125, metadata !DIExpression()), !dbg !128
  %32 = getelementptr inbounds float, float* %0, i64 %30, !dbg !134
  %33 = load float, float* %32, align 4, !dbg !134, !tbaa !36
  %34 = getelementptr inbounds float, float* %2, i64 %30, !dbg !135
  %35 = load float, float* %34, align 4, !dbg !135, !tbaa !36
  %36 = fmul float %33, %35, !dbg !136
  store float %36, float* %32, align 4, !dbg !137, !tbaa !36
  %37 = fcmp ogt float %36, 5.000000e+00, !dbg !138
  br i1 %37, label %38, label %44, !dbg !132

38:                                               ; preds = %29
  %39 = add nsw i64 %30, -1, !dbg !140
  %40 = getelementptr inbounds float, float* %0, i64 %39, !dbg !142
  %41 = bitcast float* %40 to i32*, !dbg !142
  %42 = load i32, i32* %41, align 4, !dbg !142, !tbaa !36
  %43 = bitcast float* %34 to i32*, !dbg !143
  store i32 %42, i32* %43, align 4, !dbg !143, !tbaa !36
  br label %44, !dbg !144

44:                                               ; preds = %29, %38
  %45 = or i64 %30, 1, !dbg !146
  call void @llvm.dbg.value(metadata i64 %45, metadata !125, metadata !DIExpression()), !dbg !128
  %46 = getelementptr inbounds float, float* %0, i64 %45, !dbg !134
  %47 = load float, float* %46, align 4, !dbg !134, !tbaa !36
  %48 = getelementptr inbounds float, float* %2, i64 %45, !dbg !135
  %49 = load float, float* %48, align 4, !dbg !135, !tbaa !36
  %50 = fmul float %47, %49, !dbg !136
  store float %50, float* %46, align 4, !dbg !137, !tbaa !36
  %51 = fcmp ogt float %50, 5.000000e+00, !dbg !138
  br i1 %51, label %52, label %57, !dbg !132

52:                                               ; preds = %44
  %53 = getelementptr inbounds float, float* %0, i64 %30, !dbg !142
  %54 = bitcast float* %53 to i32*, !dbg !142
  %55 = load i32, i32* %54, align 4, !dbg !142, !tbaa !36
  %56 = bitcast float* %48 to i32*, !dbg !143
  store i32 %55, i32* %56, align 4, !dbg !143, !tbaa !36
  br label %57, !dbg !144

57:                                               ; preds = %52, %44
  %58 = add nuw nsw i64 %30, 2, !dbg !146
  call void @llvm.dbg.value(metadata i64 %58, metadata !125, metadata !DIExpression()), !dbg !128
  %59 = add i64 %31, -2, !dbg !131
  %60 = icmp eq i64 %59, 0, !dbg !131
  br i1 %60, label %12, label %29, !dbg !131, !llvm.loop !147
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local i32 @test(i32* nocapture %0, float* nocapture %1, float* nocapture readnone %2, float* nocapture %3, i32 %4) local_unnamed_addr #0 !dbg !149 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !154, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.value(metadata float* %1, metadata !155, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.value(metadata float* %2, metadata !156, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.value(metadata float* %3, metadata !157, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.value(metadata i32 %4, metadata !158, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.value(metadata i32 0, metadata !159, metadata !DIExpression()), !dbg !162
  %6 = icmp sgt i32 %4, 0, !dbg !163
  %7 = zext i32 %4 to i64, !dbg !163
  %8 = load i32, i32* %0, align 4, !dbg !167, !tbaa !169
  br i1 %6, label %9, label %74, !dbg !171

9:                                                ; preds = %5
  %10 = and i64 %7, 1, !dbg !172
  %11 = icmp eq i32 %4, 1, !dbg !172
  br i1 %11, label %37, label %12, !dbg !172

12:                                               ; preds = %9
  %13 = sub nsw i64 %7, %10, !dbg !172
  br label %14, !dbg !172

14:                                               ; preds = %538, %12
  %15 = phi i64 [ 0, %12 ], [ %539, %538 ]
  %16 = phi i64 [ %13, %12 ], [ %540, %538 ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !125, metadata !DIExpression()), !dbg !173
  %17 = getelementptr inbounds float, float* %1, i64 %15, !dbg !174
  %18 = load float, float* %17, align 4, !dbg !174, !tbaa !36
  %19 = getelementptr inbounds float, float* %3, i64 %15, !dbg !175
  %20 = load float, float* %19, align 4, !dbg !175, !tbaa !36
  %21 = fmul float %18, %20, !dbg !176
  store float %21, float* %17, align 4, !dbg !177, !tbaa !36
  %22 = fcmp ogt float %21, 5.000000e+00, !dbg !178
  br i1 %22, label %23, label %29, !dbg !179

23:                                               ; preds = %14
  %24 = add nsw i64 %15, -1, !dbg !180
  %25 = getelementptr inbounds float, float* %1, i64 %24, !dbg !181
  %26 = bitcast float* %25 to i32*, !dbg !181
  %27 = load i32, i32* %26, align 4, !dbg !181, !tbaa !36
  %28 = bitcast float* %19 to i32*, !dbg !182
  store i32 %27, i32* %28, align 4, !dbg !182, !tbaa !36
  br label %29, !dbg !183

29:                                               ; preds = %23, %14
  %30 = or i64 %15, 1, !dbg !184
  call void @llvm.dbg.value(metadata i64 %30, metadata !125, metadata !DIExpression()), !dbg !173
  %31 = getelementptr inbounds float, float* %1, i64 %30, !dbg !174
  %32 = load float, float* %31, align 4, !dbg !174, !tbaa !36
  %33 = getelementptr inbounds float, float* %3, i64 %30, !dbg !175
  %34 = load float, float* %33, align 4, !dbg !175, !tbaa !36
  %35 = fmul float %32, %34, !dbg !176
  store float %35, float* %31, align 4, !dbg !177, !tbaa !36
  %36 = fcmp ogt float %35, 5.000000e+00, !dbg !178
  br i1 %36, label %533, label %538, !dbg !179

37:                                               ; preds = %538, %9
  %38 = phi i64 [ 0, %9 ], [ %539, %538 ]
  %39 = icmp eq i64 %10, 0, !dbg !179
  br i1 %39, label %53, label %40, !dbg !179

40:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i64 %38, metadata !125, metadata !DIExpression()), !dbg !173
  %41 = getelementptr inbounds float, float* %1, i64 %38, !dbg !174
  %42 = load float, float* %41, align 4, !dbg !174, !tbaa !36
  %43 = getelementptr inbounds float, float* %3, i64 %38, !dbg !175
  %44 = load float, float* %43, align 4, !dbg !175, !tbaa !36
  %45 = fmul float %42, %44, !dbg !176
  store float %45, float* %41, align 4, !dbg !177, !tbaa !36
  %46 = fcmp ogt float %45, 5.000000e+00, !dbg !178
  br i1 %46, label %47, label %53, !dbg !179

47:                                               ; preds = %40
  %48 = add nsw i64 %38, -1, !dbg !180
  %49 = getelementptr inbounds float, float* %1, i64 %48, !dbg !181
  %50 = bitcast float* %49 to i32*, !dbg !181
  %51 = load i32, i32* %50, align 4, !dbg !181, !tbaa !36
  %52 = bitcast float* %43 to i32*, !dbg !182
  store i32 %51, i32* %52, align 4, !dbg !182, !tbaa !36
  br label %53, !dbg !183

53:                                               ; preds = %47, %40, %37
  %54 = and i64 %7, 1, !dbg !172
  %55 = icmp eq i32 %4, 1, !dbg !172
  br i1 %55, label %100, label %56, !dbg !172

56:                                               ; preds = %53
  %57 = sub nsw i64 %7, %54, !dbg !172
  br label %77, !dbg !172

58:                                               ; preds = %457, %424
  %59 = phi i64 [ 0, %424 ], [ %458, %457 ]
  %60 = icmp eq i64 %425, 0, !dbg !179
  br i1 %60, label %74, label %61, !dbg !179

61:                                               ; preds = %58
  call void @llvm.dbg.value(metadata i64 %59, metadata !125, metadata !DIExpression()), !dbg !173
  %62 = getelementptr inbounds float, float* %1, i64 %59, !dbg !174
  %63 = load float, float* %62, align 4, !dbg !174, !tbaa !36
  %64 = getelementptr inbounds float, float* %3, i64 %59, !dbg !175
  %65 = load float, float* %64, align 4, !dbg !175, !tbaa !36
  %66 = fmul float %63, %65, !dbg !176
  store float %66, float* %62, align 4, !dbg !177, !tbaa !36
  %67 = fcmp ogt float %66, 5.000000e+00, !dbg !178
  br i1 %67, label %68, label %74, !dbg !179

68:                                               ; preds = %61
  %69 = add nsw i64 %59, -1, !dbg !180
  %70 = getelementptr inbounds float, float* %1, i64 %69, !dbg !181
  %71 = bitcast float* %70 to i32*, !dbg !181
  %72 = load i32, i32* %71, align 4, !dbg !181, !tbaa !36
  %73 = bitcast float* %64 to i32*, !dbg !182
  store i32 %72, i32* %73, align 4, !dbg !182, !tbaa !36
  br label %74, !dbg !183

74:                                               ; preds = %58, %61, %68, %5
  %75 = icmp ne i32 %8, 0, !dbg !185
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %0, align 4, !dbg !167, !tbaa !169
  ret i32 0, !dbg !186

77:                                               ; preds = %529, %56
  %78 = phi i64 [ 0, %56 ], [ %530, %529 ]
  %79 = phi i64 [ %57, %56 ], [ %531, %529 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !125, metadata !DIExpression()), !dbg !173
  %80 = getelementptr inbounds float, float* %1, i64 %78, !dbg !174
  %81 = load float, float* %80, align 4, !dbg !174, !tbaa !36
  %82 = getelementptr inbounds float, float* %3, i64 %78, !dbg !175
  %83 = load float, float* %82, align 4, !dbg !175, !tbaa !36
  %84 = fmul float %81, %83, !dbg !176
  store float %84, float* %80, align 4, !dbg !177, !tbaa !36
  %85 = fcmp ogt float %84, 5.000000e+00, !dbg !178
  br i1 %85, label %86, label %92, !dbg !179

86:                                               ; preds = %77
  %87 = add nsw i64 %78, -1, !dbg !180
  %88 = getelementptr inbounds float, float* %1, i64 %87, !dbg !181
  %89 = bitcast float* %88 to i32*, !dbg !181
  %90 = load i32, i32* %89, align 4, !dbg !181, !tbaa !36
  %91 = bitcast float* %82 to i32*, !dbg !182
  store i32 %90, i32* %91, align 4, !dbg !182, !tbaa !36
  br label %92, !dbg !183

92:                                               ; preds = %86, %77
  %93 = or i64 %78, 1, !dbg !184
  call void @llvm.dbg.value(metadata i64 %93, metadata !125, metadata !DIExpression()), !dbg !173
  %94 = getelementptr inbounds float, float* %1, i64 %93, !dbg !174
  %95 = load float, float* %94, align 4, !dbg !174, !tbaa !36
  %96 = getelementptr inbounds float, float* %3, i64 %93, !dbg !175
  %97 = load float, float* %96, align 4, !dbg !175, !tbaa !36
  %98 = fmul float %95, %97, !dbg !176
  store float %98, float* %94, align 4, !dbg !177, !tbaa !36
  %99 = fcmp ogt float %98, 5.000000e+00, !dbg !178
  br i1 %99, label %524, label %529, !dbg !179

100:                                              ; preds = %529, %53
  %101 = phi i64 [ 0, %53 ], [ %530, %529 ]
  %102 = icmp eq i64 %54, 0, !dbg !179
  br i1 %102, label %116, label %103, !dbg !179

103:                                              ; preds = %100
  call void @llvm.dbg.value(metadata i64 %101, metadata !125, metadata !DIExpression()), !dbg !173
  %104 = getelementptr inbounds float, float* %1, i64 %101, !dbg !174
  %105 = load float, float* %104, align 4, !dbg !174, !tbaa !36
  %106 = getelementptr inbounds float, float* %3, i64 %101, !dbg !175
  %107 = load float, float* %106, align 4, !dbg !175, !tbaa !36
  %108 = fmul float %105, %107, !dbg !176
  store float %108, float* %104, align 4, !dbg !177, !tbaa !36
  %109 = fcmp ogt float %108, 5.000000e+00, !dbg !178
  br i1 %109, label %110, label %116, !dbg !179

110:                                              ; preds = %103
  %111 = add nsw i64 %101, -1, !dbg !180
  %112 = getelementptr inbounds float, float* %1, i64 %111, !dbg !181
  %113 = bitcast float* %112 to i32*, !dbg !181
  %114 = load i32, i32* %113, align 4, !dbg !181, !tbaa !36
  %115 = bitcast float* %106 to i32*, !dbg !182
  store i32 %114, i32* %115, align 4, !dbg !182, !tbaa !36
  br label %116, !dbg !183

116:                                              ; preds = %110, %103, %100
  %117 = and i64 %7, 1, !dbg !172
  %118 = icmp eq i32 %4, 1, !dbg !172
  br i1 %118, label %144, label %119, !dbg !172

119:                                              ; preds = %116
  %120 = sub nsw i64 %7, %117, !dbg !172
  br label %121, !dbg !172

121:                                              ; preds = %520, %119
  %122 = phi i64 [ 0, %119 ], [ %521, %520 ]
  %123 = phi i64 [ %120, %119 ], [ %522, %520 ]
  call void @llvm.dbg.value(metadata i64 %122, metadata !125, metadata !DIExpression()), !dbg !173
  %124 = getelementptr inbounds float, float* %1, i64 %122, !dbg !174
  %125 = load float, float* %124, align 4, !dbg !174, !tbaa !36
  %126 = getelementptr inbounds float, float* %3, i64 %122, !dbg !175
  %127 = load float, float* %126, align 4, !dbg !175, !tbaa !36
  %128 = fmul float %125, %127, !dbg !176
  store float %128, float* %124, align 4, !dbg !177, !tbaa !36
  %129 = fcmp ogt float %128, 5.000000e+00, !dbg !178
  br i1 %129, label %130, label %136, !dbg !179

130:                                              ; preds = %121
  %131 = add nsw i64 %122, -1, !dbg !180
  %132 = getelementptr inbounds float, float* %1, i64 %131, !dbg !181
  %133 = bitcast float* %132 to i32*, !dbg !181
  %134 = load i32, i32* %133, align 4, !dbg !181, !tbaa !36
  %135 = bitcast float* %126 to i32*, !dbg !182
  store i32 %134, i32* %135, align 4, !dbg !182, !tbaa !36
  br label %136, !dbg !183

136:                                              ; preds = %130, %121
  %137 = or i64 %122, 1, !dbg !184
  call void @llvm.dbg.value(metadata i64 %137, metadata !125, metadata !DIExpression()), !dbg !173
  %138 = getelementptr inbounds float, float* %1, i64 %137, !dbg !174
  %139 = load float, float* %138, align 4, !dbg !174, !tbaa !36
  %140 = getelementptr inbounds float, float* %3, i64 %137, !dbg !175
  %141 = load float, float* %140, align 4, !dbg !175, !tbaa !36
  %142 = fmul float %139, %141, !dbg !176
  store float %142, float* %138, align 4, !dbg !177, !tbaa !36
  %143 = fcmp ogt float %142, 5.000000e+00, !dbg !178
  br i1 %143, label %515, label %520, !dbg !179

144:                                              ; preds = %520, %116
  %145 = phi i64 [ 0, %116 ], [ %521, %520 ]
  %146 = icmp eq i64 %117, 0, !dbg !179
  br i1 %146, label %160, label %147, !dbg !179

147:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 %145, metadata !125, metadata !DIExpression()), !dbg !173
  %148 = getelementptr inbounds float, float* %1, i64 %145, !dbg !174
  %149 = load float, float* %148, align 4, !dbg !174, !tbaa !36
  %150 = getelementptr inbounds float, float* %3, i64 %145, !dbg !175
  %151 = load float, float* %150, align 4, !dbg !175, !tbaa !36
  %152 = fmul float %149, %151, !dbg !176
  store float %152, float* %148, align 4, !dbg !177, !tbaa !36
  %153 = fcmp ogt float %152, 5.000000e+00, !dbg !178
  br i1 %153, label %154, label %160, !dbg !179

154:                                              ; preds = %147
  %155 = add nsw i64 %145, -1, !dbg !180
  %156 = getelementptr inbounds float, float* %1, i64 %155, !dbg !181
  %157 = bitcast float* %156 to i32*, !dbg !181
  %158 = load i32, i32* %157, align 4, !dbg !181, !tbaa !36
  %159 = bitcast float* %150 to i32*, !dbg !182
  store i32 %158, i32* %159, align 4, !dbg !182, !tbaa !36
  br label %160, !dbg !183

160:                                              ; preds = %154, %147, %144
  %161 = and i64 %7, 1, !dbg !172
  %162 = icmp eq i32 %4, 1, !dbg !172
  br i1 %162, label %188, label %163, !dbg !172

163:                                              ; preds = %160
  %164 = sub nsw i64 %7, %161, !dbg !172
  br label %165, !dbg !172

165:                                              ; preds = %511, %163
  %166 = phi i64 [ 0, %163 ], [ %512, %511 ]
  %167 = phi i64 [ %164, %163 ], [ %513, %511 ]
  call void @llvm.dbg.value(metadata i64 %166, metadata !125, metadata !DIExpression()), !dbg !173
  %168 = getelementptr inbounds float, float* %1, i64 %166, !dbg !174
  %169 = load float, float* %168, align 4, !dbg !174, !tbaa !36
  %170 = getelementptr inbounds float, float* %3, i64 %166, !dbg !175
  %171 = load float, float* %170, align 4, !dbg !175, !tbaa !36
  %172 = fmul float %169, %171, !dbg !176
  store float %172, float* %168, align 4, !dbg !177, !tbaa !36
  %173 = fcmp ogt float %172, 5.000000e+00, !dbg !178
  br i1 %173, label %174, label %180, !dbg !179

174:                                              ; preds = %165
  %175 = add nsw i64 %166, -1, !dbg !180
  %176 = getelementptr inbounds float, float* %1, i64 %175, !dbg !181
  %177 = bitcast float* %176 to i32*, !dbg !181
  %178 = load i32, i32* %177, align 4, !dbg !181, !tbaa !36
  %179 = bitcast float* %170 to i32*, !dbg !182
  store i32 %178, i32* %179, align 4, !dbg !182, !tbaa !36
  br label %180, !dbg !183

180:                                              ; preds = %174, %165
  %181 = or i64 %166, 1, !dbg !184
  call void @llvm.dbg.value(metadata i64 %181, metadata !125, metadata !DIExpression()), !dbg !173
  %182 = getelementptr inbounds float, float* %1, i64 %181, !dbg !174
  %183 = load float, float* %182, align 4, !dbg !174, !tbaa !36
  %184 = getelementptr inbounds float, float* %3, i64 %181, !dbg !175
  %185 = load float, float* %184, align 4, !dbg !175, !tbaa !36
  %186 = fmul float %183, %185, !dbg !176
  store float %186, float* %182, align 4, !dbg !177, !tbaa !36
  %187 = fcmp ogt float %186, 5.000000e+00, !dbg !178
  br i1 %187, label %506, label %511, !dbg !179

188:                                              ; preds = %511, %160
  %189 = phi i64 [ 0, %160 ], [ %512, %511 ]
  %190 = icmp eq i64 %161, 0, !dbg !179
  br i1 %190, label %204, label %191, !dbg !179

191:                                              ; preds = %188
  call void @llvm.dbg.value(metadata i64 %189, metadata !125, metadata !DIExpression()), !dbg !173
  %192 = getelementptr inbounds float, float* %1, i64 %189, !dbg !174
  %193 = load float, float* %192, align 4, !dbg !174, !tbaa !36
  %194 = getelementptr inbounds float, float* %3, i64 %189, !dbg !175
  %195 = load float, float* %194, align 4, !dbg !175, !tbaa !36
  %196 = fmul float %193, %195, !dbg !176
  store float %196, float* %192, align 4, !dbg !177, !tbaa !36
  %197 = fcmp ogt float %196, 5.000000e+00, !dbg !178
  br i1 %197, label %198, label %204, !dbg !179

198:                                              ; preds = %191
  %199 = add nsw i64 %189, -1, !dbg !180
  %200 = getelementptr inbounds float, float* %1, i64 %199, !dbg !181
  %201 = bitcast float* %200 to i32*, !dbg !181
  %202 = load i32, i32* %201, align 4, !dbg !181, !tbaa !36
  %203 = bitcast float* %194 to i32*, !dbg !182
  store i32 %202, i32* %203, align 4, !dbg !182, !tbaa !36
  br label %204, !dbg !183

204:                                              ; preds = %198, %191, %188
  %205 = and i64 %7, 1, !dbg !172
  %206 = icmp eq i32 %4, 1, !dbg !172
  br i1 %206, label %232, label %207, !dbg !172

207:                                              ; preds = %204
  %208 = sub nsw i64 %7, %205, !dbg !172
  br label %209, !dbg !172

209:                                              ; preds = %502, %207
  %210 = phi i64 [ 0, %207 ], [ %503, %502 ]
  %211 = phi i64 [ %208, %207 ], [ %504, %502 ]
  call void @llvm.dbg.value(metadata i64 %210, metadata !125, metadata !DIExpression()), !dbg !173
  %212 = getelementptr inbounds float, float* %1, i64 %210, !dbg !174
  %213 = load float, float* %212, align 4, !dbg !174, !tbaa !36
  %214 = getelementptr inbounds float, float* %3, i64 %210, !dbg !175
  %215 = load float, float* %214, align 4, !dbg !175, !tbaa !36
  %216 = fmul float %213, %215, !dbg !176
  store float %216, float* %212, align 4, !dbg !177, !tbaa !36
  %217 = fcmp ogt float %216, 5.000000e+00, !dbg !178
  br i1 %217, label %218, label %224, !dbg !179

218:                                              ; preds = %209
  %219 = add nsw i64 %210, -1, !dbg !180
  %220 = getelementptr inbounds float, float* %1, i64 %219, !dbg !181
  %221 = bitcast float* %220 to i32*, !dbg !181
  %222 = load i32, i32* %221, align 4, !dbg !181, !tbaa !36
  %223 = bitcast float* %214 to i32*, !dbg !182
  store i32 %222, i32* %223, align 4, !dbg !182, !tbaa !36
  br label %224, !dbg !183

224:                                              ; preds = %218, %209
  %225 = or i64 %210, 1, !dbg !184
  call void @llvm.dbg.value(metadata i64 %225, metadata !125, metadata !DIExpression()), !dbg !173
  %226 = getelementptr inbounds float, float* %1, i64 %225, !dbg !174
  %227 = load float, float* %226, align 4, !dbg !174, !tbaa !36
  %228 = getelementptr inbounds float, float* %3, i64 %225, !dbg !175
  %229 = load float, float* %228, align 4, !dbg !175, !tbaa !36
  %230 = fmul float %227, %229, !dbg !176
  store float %230, float* %226, align 4, !dbg !177, !tbaa !36
  %231 = fcmp ogt float %230, 5.000000e+00, !dbg !178
  br i1 %231, label %497, label %502, !dbg !179

232:                                              ; preds = %502, %204
  %233 = phi i64 [ 0, %204 ], [ %503, %502 ]
  %234 = icmp eq i64 %205, 0, !dbg !179
  br i1 %234, label %248, label %235, !dbg !179

235:                                              ; preds = %232
  call void @llvm.dbg.value(metadata i64 %233, metadata !125, metadata !DIExpression()), !dbg !173
  %236 = getelementptr inbounds float, float* %1, i64 %233, !dbg !174
  %237 = load float, float* %236, align 4, !dbg !174, !tbaa !36
  %238 = getelementptr inbounds float, float* %3, i64 %233, !dbg !175
  %239 = load float, float* %238, align 4, !dbg !175, !tbaa !36
  %240 = fmul float %237, %239, !dbg !176
  store float %240, float* %236, align 4, !dbg !177, !tbaa !36
  %241 = fcmp ogt float %240, 5.000000e+00, !dbg !178
  br i1 %241, label %242, label %248, !dbg !179

242:                                              ; preds = %235
  %243 = add nsw i64 %233, -1, !dbg !180
  %244 = getelementptr inbounds float, float* %1, i64 %243, !dbg !181
  %245 = bitcast float* %244 to i32*, !dbg !181
  %246 = load i32, i32* %245, align 4, !dbg !181, !tbaa !36
  %247 = bitcast float* %238 to i32*, !dbg !182
  store i32 %246, i32* %247, align 4, !dbg !182, !tbaa !36
  br label %248, !dbg !183

248:                                              ; preds = %242, %235, %232
  %249 = and i64 %7, 1, !dbg !172
  %250 = icmp eq i32 %4, 1, !dbg !172
  br i1 %250, label %276, label %251, !dbg !172

251:                                              ; preds = %248
  %252 = sub nsw i64 %7, %249, !dbg !172
  br label %253, !dbg !172

253:                                              ; preds = %493, %251
  %254 = phi i64 [ 0, %251 ], [ %494, %493 ]
  %255 = phi i64 [ %252, %251 ], [ %495, %493 ]
  call void @llvm.dbg.value(metadata i64 %254, metadata !125, metadata !DIExpression()), !dbg !173
  %256 = getelementptr inbounds float, float* %1, i64 %254, !dbg !174
  %257 = load float, float* %256, align 4, !dbg !174, !tbaa !36
  %258 = getelementptr inbounds float, float* %3, i64 %254, !dbg !175
  %259 = load float, float* %258, align 4, !dbg !175, !tbaa !36
  %260 = fmul float %257, %259, !dbg !176
  store float %260, float* %256, align 4, !dbg !177, !tbaa !36
  %261 = fcmp ogt float %260, 5.000000e+00, !dbg !178
  br i1 %261, label %262, label %268, !dbg !179

262:                                              ; preds = %253
  %263 = add nsw i64 %254, -1, !dbg !180
  %264 = getelementptr inbounds float, float* %1, i64 %263, !dbg !181
  %265 = bitcast float* %264 to i32*, !dbg !181
  %266 = load i32, i32* %265, align 4, !dbg !181, !tbaa !36
  %267 = bitcast float* %258 to i32*, !dbg !182
  store i32 %266, i32* %267, align 4, !dbg !182, !tbaa !36
  br label %268, !dbg !183

268:                                              ; preds = %262, %253
  %269 = or i64 %254, 1, !dbg !184
  call void @llvm.dbg.value(metadata i64 %269, metadata !125, metadata !DIExpression()), !dbg !173
  %270 = getelementptr inbounds float, float* %1, i64 %269, !dbg !174
  %271 = load float, float* %270, align 4, !dbg !174, !tbaa !36
  %272 = getelementptr inbounds float, float* %3, i64 %269, !dbg !175
  %273 = load float, float* %272, align 4, !dbg !175, !tbaa !36
  %274 = fmul float %271, %273, !dbg !176
  store float %274, float* %270, align 4, !dbg !177, !tbaa !36
  %275 = fcmp ogt float %274, 5.000000e+00, !dbg !178
  br i1 %275, label %488, label %493, !dbg !179

276:                                              ; preds = %493, %248
  %277 = phi i64 [ 0, %248 ], [ %494, %493 ]
  %278 = icmp eq i64 %249, 0, !dbg !179
  br i1 %278, label %292, label %279, !dbg !179

279:                                              ; preds = %276
  call void @llvm.dbg.value(metadata i64 %277, metadata !125, metadata !DIExpression()), !dbg !173
  %280 = getelementptr inbounds float, float* %1, i64 %277, !dbg !174
  %281 = load float, float* %280, align 4, !dbg !174, !tbaa !36
  %282 = getelementptr inbounds float, float* %3, i64 %277, !dbg !175
  %283 = load float, float* %282, align 4, !dbg !175, !tbaa !36
  %284 = fmul float %281, %283, !dbg !176
  store float %284, float* %280, align 4, !dbg !177, !tbaa !36
  %285 = fcmp ogt float %284, 5.000000e+00, !dbg !178
  br i1 %285, label %286, label %292, !dbg !179

286:                                              ; preds = %279
  %287 = add nsw i64 %277, -1, !dbg !180
  %288 = getelementptr inbounds float, float* %1, i64 %287, !dbg !181
  %289 = bitcast float* %288 to i32*, !dbg !181
  %290 = load i32, i32* %289, align 4, !dbg !181, !tbaa !36
  %291 = bitcast float* %282 to i32*, !dbg !182
  store i32 %290, i32* %291, align 4, !dbg !182, !tbaa !36
  br label %292, !dbg !183

292:                                              ; preds = %286, %279, %276
  %293 = and i64 %7, 1, !dbg !172
  %294 = icmp eq i32 %4, 1, !dbg !172
  br i1 %294, label %320, label %295, !dbg !172

295:                                              ; preds = %292
  %296 = sub nsw i64 %7, %293, !dbg !172
  br label %297, !dbg !172

297:                                              ; preds = %484, %295
  %298 = phi i64 [ 0, %295 ], [ %485, %484 ]
  %299 = phi i64 [ %296, %295 ], [ %486, %484 ]
  call void @llvm.dbg.value(metadata i64 %298, metadata !125, metadata !DIExpression()), !dbg !173
  %300 = getelementptr inbounds float, float* %1, i64 %298, !dbg !174
  %301 = load float, float* %300, align 4, !dbg !174, !tbaa !36
  %302 = getelementptr inbounds float, float* %3, i64 %298, !dbg !175
  %303 = load float, float* %302, align 4, !dbg !175, !tbaa !36
  %304 = fmul float %301, %303, !dbg !176
  store float %304, float* %300, align 4, !dbg !177, !tbaa !36
  %305 = fcmp ogt float %304, 5.000000e+00, !dbg !178
  br i1 %305, label %306, label %312, !dbg !179

306:                                              ; preds = %297
  %307 = add nsw i64 %298, -1, !dbg !180
  %308 = getelementptr inbounds float, float* %1, i64 %307, !dbg !181
  %309 = bitcast float* %308 to i32*, !dbg !181
  %310 = load i32, i32* %309, align 4, !dbg !181, !tbaa !36
  %311 = bitcast float* %302 to i32*, !dbg !182
  store i32 %310, i32* %311, align 4, !dbg !182, !tbaa !36
  br label %312, !dbg !183

312:                                              ; preds = %306, %297
  %313 = or i64 %298, 1, !dbg !184
  call void @llvm.dbg.value(metadata i64 %313, metadata !125, metadata !DIExpression()), !dbg !173
  %314 = getelementptr inbounds float, float* %1, i64 %313, !dbg !174
  %315 = load float, float* %314, align 4, !dbg !174, !tbaa !36
  %316 = getelementptr inbounds float, float* %3, i64 %313, !dbg !175
  %317 = load float, float* %316, align 4, !dbg !175, !tbaa !36
  %318 = fmul float %315, %317, !dbg !176
  store float %318, float* %314, align 4, !dbg !177, !tbaa !36
  %319 = fcmp ogt float %318, 5.000000e+00, !dbg !178
  br i1 %319, label %479, label %484, !dbg !179

320:                                              ; preds = %484, %292
  %321 = phi i64 [ 0, %292 ], [ %485, %484 ]
  %322 = icmp eq i64 %293, 0, !dbg !179
  br i1 %322, label %336, label %323, !dbg !179

323:                                              ; preds = %320
  call void @llvm.dbg.value(metadata i64 %321, metadata !125, metadata !DIExpression()), !dbg !173
  %324 = getelementptr inbounds float, float* %1, i64 %321, !dbg !174
  %325 = load float, float* %324, align 4, !dbg !174, !tbaa !36
  %326 = getelementptr inbounds float, float* %3, i64 %321, !dbg !175
  %327 = load float, float* %326, align 4, !dbg !175, !tbaa !36
  %328 = fmul float %325, %327, !dbg !176
  store float %328, float* %324, align 4, !dbg !177, !tbaa !36
  %329 = fcmp ogt float %328, 5.000000e+00, !dbg !178
  br i1 %329, label %330, label %336, !dbg !179

330:                                              ; preds = %323
  %331 = add nsw i64 %321, -1, !dbg !180
  %332 = getelementptr inbounds float, float* %1, i64 %331, !dbg !181
  %333 = bitcast float* %332 to i32*, !dbg !181
  %334 = load i32, i32* %333, align 4, !dbg !181, !tbaa !36
  %335 = bitcast float* %326 to i32*, !dbg !182
  store i32 %334, i32* %335, align 4, !dbg !182, !tbaa !36
  br label %336, !dbg !183

336:                                              ; preds = %330, %323, %320
  %337 = and i64 %7, 1, !dbg !172
  %338 = icmp eq i32 %4, 1, !dbg !172
  br i1 %338, label %364, label %339, !dbg !172

339:                                              ; preds = %336
  %340 = sub nsw i64 %7, %337, !dbg !172
  br label %341, !dbg !172

341:                                              ; preds = %475, %339
  %342 = phi i64 [ 0, %339 ], [ %476, %475 ]
  %343 = phi i64 [ %340, %339 ], [ %477, %475 ]
  call void @llvm.dbg.value(metadata i64 %342, metadata !125, metadata !DIExpression()), !dbg !173
  %344 = getelementptr inbounds float, float* %1, i64 %342, !dbg !174
  %345 = load float, float* %344, align 4, !dbg !174, !tbaa !36
  %346 = getelementptr inbounds float, float* %3, i64 %342, !dbg !175
  %347 = load float, float* %346, align 4, !dbg !175, !tbaa !36
  %348 = fmul float %345, %347, !dbg !176
  store float %348, float* %344, align 4, !dbg !177, !tbaa !36
  %349 = fcmp ogt float %348, 5.000000e+00, !dbg !178
  br i1 %349, label %350, label %356, !dbg !179

350:                                              ; preds = %341
  %351 = add nsw i64 %342, -1, !dbg !180
  %352 = getelementptr inbounds float, float* %1, i64 %351, !dbg !181
  %353 = bitcast float* %352 to i32*, !dbg !181
  %354 = load i32, i32* %353, align 4, !dbg !181, !tbaa !36
  %355 = bitcast float* %346 to i32*, !dbg !182
  store i32 %354, i32* %355, align 4, !dbg !182, !tbaa !36
  br label %356, !dbg !183

356:                                              ; preds = %350, %341
  %357 = or i64 %342, 1, !dbg !184
  call void @llvm.dbg.value(metadata i64 %357, metadata !125, metadata !DIExpression()), !dbg !173
  %358 = getelementptr inbounds float, float* %1, i64 %357, !dbg !174
  %359 = load float, float* %358, align 4, !dbg !174, !tbaa !36
  %360 = getelementptr inbounds float, float* %3, i64 %357, !dbg !175
  %361 = load float, float* %360, align 4, !dbg !175, !tbaa !36
  %362 = fmul float %359, %361, !dbg !176
  store float %362, float* %358, align 4, !dbg !177, !tbaa !36
  %363 = fcmp ogt float %362, 5.000000e+00, !dbg !178
  br i1 %363, label %470, label %475, !dbg !179

364:                                              ; preds = %475, %336
  %365 = phi i64 [ 0, %336 ], [ %476, %475 ]
  %366 = icmp eq i64 %337, 0, !dbg !179
  br i1 %366, label %380, label %367, !dbg !179

367:                                              ; preds = %364
  call void @llvm.dbg.value(metadata i64 %365, metadata !125, metadata !DIExpression()), !dbg !173
  %368 = getelementptr inbounds float, float* %1, i64 %365, !dbg !174
  %369 = load float, float* %368, align 4, !dbg !174, !tbaa !36
  %370 = getelementptr inbounds float, float* %3, i64 %365, !dbg !175
  %371 = load float, float* %370, align 4, !dbg !175, !tbaa !36
  %372 = fmul float %369, %371, !dbg !176
  store float %372, float* %368, align 4, !dbg !177, !tbaa !36
  %373 = fcmp ogt float %372, 5.000000e+00, !dbg !178
  br i1 %373, label %374, label %380, !dbg !179

374:                                              ; preds = %367
  %375 = add nsw i64 %365, -1, !dbg !180
  %376 = getelementptr inbounds float, float* %1, i64 %375, !dbg !181
  %377 = bitcast float* %376 to i32*, !dbg !181
  %378 = load i32, i32* %377, align 4, !dbg !181, !tbaa !36
  %379 = bitcast float* %370 to i32*, !dbg !182
  store i32 %378, i32* %379, align 4, !dbg !182, !tbaa !36
  br label %380, !dbg !183

380:                                              ; preds = %374, %367, %364
  %381 = and i64 %7, 1, !dbg !172
  %382 = icmp eq i32 %4, 1, !dbg !172
  br i1 %382, label %408, label %383, !dbg !172

383:                                              ; preds = %380
  %384 = sub nsw i64 %7, %381, !dbg !172
  br label %385, !dbg !172

385:                                              ; preds = %466, %383
  %386 = phi i64 [ 0, %383 ], [ %467, %466 ]
  %387 = phi i64 [ %384, %383 ], [ %468, %466 ]
  call void @llvm.dbg.value(metadata i64 %386, metadata !125, metadata !DIExpression()), !dbg !173
  %388 = getelementptr inbounds float, float* %1, i64 %386, !dbg !174
  %389 = load float, float* %388, align 4, !dbg !174, !tbaa !36
  %390 = getelementptr inbounds float, float* %3, i64 %386, !dbg !175
  %391 = load float, float* %390, align 4, !dbg !175, !tbaa !36
  %392 = fmul float %389, %391, !dbg !176
  store float %392, float* %388, align 4, !dbg !177, !tbaa !36
  %393 = fcmp ogt float %392, 5.000000e+00, !dbg !178
  br i1 %393, label %394, label %400, !dbg !179

394:                                              ; preds = %385
  %395 = add nsw i64 %386, -1, !dbg !180
  %396 = getelementptr inbounds float, float* %1, i64 %395, !dbg !181
  %397 = bitcast float* %396 to i32*, !dbg !181
  %398 = load i32, i32* %397, align 4, !dbg !181, !tbaa !36
  %399 = bitcast float* %390 to i32*, !dbg !182
  store i32 %398, i32* %399, align 4, !dbg !182, !tbaa !36
  br label %400, !dbg !183

400:                                              ; preds = %394, %385
  %401 = or i64 %386, 1, !dbg !184
  call void @llvm.dbg.value(metadata i64 %401, metadata !125, metadata !DIExpression()), !dbg !173
  %402 = getelementptr inbounds float, float* %1, i64 %401, !dbg !174
  %403 = load float, float* %402, align 4, !dbg !174, !tbaa !36
  %404 = getelementptr inbounds float, float* %3, i64 %401, !dbg !175
  %405 = load float, float* %404, align 4, !dbg !175, !tbaa !36
  %406 = fmul float %403, %405, !dbg !176
  store float %406, float* %402, align 4, !dbg !177, !tbaa !36
  %407 = fcmp ogt float %406, 5.000000e+00, !dbg !178
  br i1 %407, label %461, label %466, !dbg !179

408:                                              ; preds = %466, %380
  %409 = phi i64 [ 0, %380 ], [ %467, %466 ]
  %410 = icmp eq i64 %381, 0, !dbg !179
  br i1 %410, label %424, label %411, !dbg !179

411:                                              ; preds = %408
  call void @llvm.dbg.value(metadata i64 %409, metadata !125, metadata !DIExpression()), !dbg !173
  %412 = getelementptr inbounds float, float* %1, i64 %409, !dbg !174
  %413 = load float, float* %412, align 4, !dbg !174, !tbaa !36
  %414 = getelementptr inbounds float, float* %3, i64 %409, !dbg !175
  %415 = load float, float* %414, align 4, !dbg !175, !tbaa !36
  %416 = fmul float %413, %415, !dbg !176
  store float %416, float* %412, align 4, !dbg !177, !tbaa !36
  %417 = fcmp ogt float %416, 5.000000e+00, !dbg !178
  br i1 %417, label %418, label %424, !dbg !179

418:                                              ; preds = %411
  %419 = add nsw i64 %409, -1, !dbg !180
  %420 = getelementptr inbounds float, float* %1, i64 %419, !dbg !181
  %421 = bitcast float* %420 to i32*, !dbg !181
  %422 = load i32, i32* %421, align 4, !dbg !181, !tbaa !36
  %423 = bitcast float* %414 to i32*, !dbg !182
  store i32 %422, i32* %423, align 4, !dbg !182, !tbaa !36
  br label %424, !dbg !183

424:                                              ; preds = %418, %411, %408
  %425 = and i64 %7, 1, !dbg !172
  %426 = icmp eq i32 %4, 1, !dbg !172
  br i1 %426, label %58, label %427, !dbg !172

427:                                              ; preds = %424
  %428 = sub nsw i64 %7, %425, !dbg !172
  br label %429, !dbg !172

429:                                              ; preds = %457, %427
  %430 = phi i64 [ 0, %427 ], [ %458, %457 ]
  %431 = phi i64 [ %428, %427 ], [ %459, %457 ]
  call void @llvm.dbg.value(metadata i64 %430, metadata !125, metadata !DIExpression()), !dbg !173
  %432 = getelementptr inbounds float, float* %1, i64 %430, !dbg !174
  %433 = load float, float* %432, align 4, !dbg !174, !tbaa !36
  %434 = getelementptr inbounds float, float* %3, i64 %430, !dbg !175
  %435 = load float, float* %434, align 4, !dbg !175, !tbaa !36
  %436 = fmul float %433, %435, !dbg !176
  store float %436, float* %432, align 4, !dbg !177, !tbaa !36
  %437 = fcmp ogt float %436, 5.000000e+00, !dbg !178
  br i1 %437, label %438, label %444, !dbg !179

438:                                              ; preds = %429
  %439 = add nsw i64 %430, -1, !dbg !180
  %440 = getelementptr inbounds float, float* %1, i64 %439, !dbg !181
  %441 = bitcast float* %440 to i32*, !dbg !181
  %442 = load i32, i32* %441, align 4, !dbg !181, !tbaa !36
  %443 = bitcast float* %434 to i32*, !dbg !182
  store i32 %442, i32* %443, align 4, !dbg !182, !tbaa !36
  br label %444, !dbg !183

444:                                              ; preds = %438, %429
  %445 = or i64 %430, 1, !dbg !184
  call void @llvm.dbg.value(metadata i64 %445, metadata !125, metadata !DIExpression()), !dbg !173
  %446 = getelementptr inbounds float, float* %1, i64 %445, !dbg !174
  %447 = load float, float* %446, align 4, !dbg !174, !tbaa !36
  %448 = getelementptr inbounds float, float* %3, i64 %445, !dbg !175
  %449 = load float, float* %448, align 4, !dbg !175, !tbaa !36
  %450 = fmul float %447, %449, !dbg !176
  store float %450, float* %446, align 4, !dbg !177, !tbaa !36
  %451 = fcmp ogt float %450, 5.000000e+00, !dbg !178
  br i1 %451, label %452, label %457, !dbg !179

452:                                              ; preds = %444
  %453 = getelementptr inbounds float, float* %1, i64 %430, !dbg !181
  %454 = bitcast float* %453 to i32*, !dbg !181
  %455 = load i32, i32* %454, align 4, !dbg !181, !tbaa !36
  %456 = bitcast float* %448 to i32*, !dbg !182
  store i32 %455, i32* %456, align 4, !dbg !182, !tbaa !36
  br label %457, !dbg !183

457:                                              ; preds = %452, %444
  %458 = add nuw nsw i64 %430, 2, !dbg !184
  call void @llvm.dbg.value(metadata i64 %458, metadata !125, metadata !DIExpression()), !dbg !173
  %459 = add i64 %431, -2, !dbg !172
  %460 = icmp eq i64 %459, 0, !dbg !172
  br i1 %460, label %58, label %429, !dbg !172, !llvm.loop !187

461:                                              ; preds = %400
  %462 = getelementptr inbounds float, float* %1, i64 %386, !dbg !181
  %463 = bitcast float* %462 to i32*, !dbg !181
  %464 = load i32, i32* %463, align 4, !dbg !181, !tbaa !36
  %465 = bitcast float* %404 to i32*, !dbg !182
  store i32 %464, i32* %465, align 4, !dbg !182, !tbaa !36
  br label %466, !dbg !183

466:                                              ; preds = %461, %400
  %467 = add nuw nsw i64 %386, 2, !dbg !184
  call void @llvm.dbg.value(metadata i64 %467, metadata !125, metadata !DIExpression()), !dbg !173
  %468 = add i64 %387, -2, !dbg !172
  %469 = icmp eq i64 %468, 0, !dbg !172
  br i1 %469, label %408, label %385, !dbg !172, !llvm.loop !187

470:                                              ; preds = %356
  %471 = getelementptr inbounds float, float* %1, i64 %342, !dbg !181
  %472 = bitcast float* %471 to i32*, !dbg !181
  %473 = load i32, i32* %472, align 4, !dbg !181, !tbaa !36
  %474 = bitcast float* %360 to i32*, !dbg !182
  store i32 %473, i32* %474, align 4, !dbg !182, !tbaa !36
  br label %475, !dbg !183

475:                                              ; preds = %470, %356
  %476 = add nuw nsw i64 %342, 2, !dbg !184
  call void @llvm.dbg.value(metadata i64 %476, metadata !125, metadata !DIExpression()), !dbg !173
  %477 = add i64 %343, -2, !dbg !172
  %478 = icmp eq i64 %477, 0, !dbg !172
  br i1 %478, label %364, label %341, !dbg !172, !llvm.loop !187

479:                                              ; preds = %312
  %480 = getelementptr inbounds float, float* %1, i64 %298, !dbg !181
  %481 = bitcast float* %480 to i32*, !dbg !181
  %482 = load i32, i32* %481, align 4, !dbg !181, !tbaa !36
  %483 = bitcast float* %316 to i32*, !dbg !182
  store i32 %482, i32* %483, align 4, !dbg !182, !tbaa !36
  br label %484, !dbg !183

484:                                              ; preds = %479, %312
  %485 = add nuw nsw i64 %298, 2, !dbg !184
  call void @llvm.dbg.value(metadata i64 %485, metadata !125, metadata !DIExpression()), !dbg !173
  %486 = add i64 %299, -2, !dbg !172
  %487 = icmp eq i64 %486, 0, !dbg !172
  br i1 %487, label %320, label %297, !dbg !172, !llvm.loop !187

488:                                              ; preds = %268
  %489 = getelementptr inbounds float, float* %1, i64 %254, !dbg !181
  %490 = bitcast float* %489 to i32*, !dbg !181
  %491 = load i32, i32* %490, align 4, !dbg !181, !tbaa !36
  %492 = bitcast float* %272 to i32*, !dbg !182
  store i32 %491, i32* %492, align 4, !dbg !182, !tbaa !36
  br label %493, !dbg !183

493:                                              ; preds = %488, %268
  %494 = add nuw nsw i64 %254, 2, !dbg !184
  call void @llvm.dbg.value(metadata i64 %494, metadata !125, metadata !DIExpression()), !dbg !173
  %495 = add i64 %255, -2, !dbg !172
  %496 = icmp eq i64 %495, 0, !dbg !172
  br i1 %496, label %276, label %253, !dbg !172, !llvm.loop !187

497:                                              ; preds = %224
  %498 = getelementptr inbounds float, float* %1, i64 %210, !dbg !181
  %499 = bitcast float* %498 to i32*, !dbg !181
  %500 = load i32, i32* %499, align 4, !dbg !181, !tbaa !36
  %501 = bitcast float* %228 to i32*, !dbg !182
  store i32 %500, i32* %501, align 4, !dbg !182, !tbaa !36
  br label %502, !dbg !183

502:                                              ; preds = %497, %224
  %503 = add nuw nsw i64 %210, 2, !dbg !184
  call void @llvm.dbg.value(metadata i64 %503, metadata !125, metadata !DIExpression()), !dbg !173
  %504 = add i64 %211, -2, !dbg !172
  %505 = icmp eq i64 %504, 0, !dbg !172
  br i1 %505, label %232, label %209, !dbg !172, !llvm.loop !187

506:                                              ; preds = %180
  %507 = getelementptr inbounds float, float* %1, i64 %166, !dbg !181
  %508 = bitcast float* %507 to i32*, !dbg !181
  %509 = load i32, i32* %508, align 4, !dbg !181, !tbaa !36
  %510 = bitcast float* %184 to i32*, !dbg !182
  store i32 %509, i32* %510, align 4, !dbg !182, !tbaa !36
  br label %511, !dbg !183

511:                                              ; preds = %506, %180
  %512 = add nuw nsw i64 %166, 2, !dbg !184
  call void @llvm.dbg.value(metadata i64 %512, metadata !125, metadata !DIExpression()), !dbg !173
  %513 = add i64 %167, -2, !dbg !172
  %514 = icmp eq i64 %513, 0, !dbg !172
  br i1 %514, label %188, label %165, !dbg !172, !llvm.loop !187

515:                                              ; preds = %136
  %516 = getelementptr inbounds float, float* %1, i64 %122, !dbg !181
  %517 = bitcast float* %516 to i32*, !dbg !181
  %518 = load i32, i32* %517, align 4, !dbg !181, !tbaa !36
  %519 = bitcast float* %140 to i32*, !dbg !182
  store i32 %518, i32* %519, align 4, !dbg !182, !tbaa !36
  br label %520, !dbg !183

520:                                              ; preds = %515, %136
  %521 = add nuw nsw i64 %122, 2, !dbg !184
  call void @llvm.dbg.value(metadata i64 %521, metadata !125, metadata !DIExpression()), !dbg !173
  %522 = add i64 %123, -2, !dbg !172
  %523 = icmp eq i64 %522, 0, !dbg !172
  br i1 %523, label %144, label %121, !dbg !172, !llvm.loop !187

524:                                              ; preds = %92
  %525 = getelementptr inbounds float, float* %1, i64 %78, !dbg !181
  %526 = bitcast float* %525 to i32*, !dbg !181
  %527 = load i32, i32* %526, align 4, !dbg !181, !tbaa !36
  %528 = bitcast float* %96 to i32*, !dbg !182
  store i32 %527, i32* %528, align 4, !dbg !182, !tbaa !36
  br label %529, !dbg !183

529:                                              ; preds = %524, %92
  %530 = add nuw nsw i64 %78, 2, !dbg !184
  call void @llvm.dbg.value(metadata i64 %530, metadata !125, metadata !DIExpression()), !dbg !173
  %531 = add i64 %79, -2, !dbg !172
  %532 = icmp eq i64 %531, 0, !dbg !172
  br i1 %532, label %100, label %77, !dbg !172, !llvm.loop !187

533:                                              ; preds = %29
  %534 = getelementptr inbounds float, float* %1, i64 %15, !dbg !181
  %535 = bitcast float* %534 to i32*, !dbg !181
  %536 = load i32, i32* %535, align 4, !dbg !181, !tbaa !36
  %537 = bitcast float* %33 to i32*, !dbg !182
  store i32 %536, i32* %537, align 4, !dbg !182, !tbaa !36
  br label %538, !dbg !183

538:                                              ; preds = %533, %29
  %539 = add nuw nsw i64 %15, 2, !dbg !184
  call void @llvm.dbg.value(metadata i64 %539, metadata !125, metadata !DIExpression()), !dbg !173
  %540 = add i64 %16, -2, !dbg !172
  %541 = icmp eq i64 %540, 0, !dbg !172
  br i1 %541, label %37, label %14, !dbg !172, !llvm.loop !187
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
!71 = !DILocation(line: 14, column: 9, scope: !22)
!72 = !DILocation(line: 2, column: 28, scope: !24)
!73 = distinct !{!73, !28, !74}
!74 = !DILocation(line: 15, column: 5, scope: !20)
!75 = !DILocation(line: 16, column: 5, scope: !7)
!76 = distinct !DISubprogram(name: "bar", scope: !1, file: !1, line: 19, type: !77, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !79)
!77 = !DISubroutineType(types: !78)
!78 = !{!10, !12, !12, !12, !10}
!79 = !{!80, !81, !82, !83, !84, !85, !87}
!80 = !DILocalVariable(name: "a", arg: 1, scope: !76, file: !1, line: 19, type: !12)
!81 = !DILocalVariable(name: "b", arg: 2, scope: !76, file: !1, line: 19, type: !12)
!82 = !DILocalVariable(name: "c", arg: 3, scope: !76, file: !1, line: 19, type: !12)
!83 = !DILocalVariable(name: "n", arg: 4, scope: !76, file: !1, line: 19, type: !10)
!84 = !DILocalVariable(name: "d", scope: !76, file: !1, line: 21, type: !10)
!85 = !DILocalVariable(name: "i", scope: !86, file: !1, line: 24, type: !10)
!86 = distinct !DILexicalBlock(scope: !76, file: !1, line: 24, column: 5)
!87 = !DILocalVariable(name: "i", scope: !88, file: !1, line: 29, type: !10)
!88 = distinct !DILexicalBlock(scope: !76, file: !1, line: 29, column: 5)
!89 = !DILocation(line: 0, scope: !76)
!90 = !DILocation(line: 0, scope: !86)
!91 = !DILocation(line: 24, column: 23, scope: !92)
!92 = distinct !DILexicalBlock(scope: !86, file: !1, line: 24, column: 5)
!93 = !DILocation(line: 24, column: 5, scope: !86)
!94 = !DILocation(line: 0, scope: !95)
!95 = distinct !DILexicalBlock(scope: !92, file: !1, line: 24, column: 33)
!96 = !DILocation(line: 25, column: 14, scope: !95)
!97 = !DILocation(line: 25, column: 25, scope: !95)
!98 = !DILocation(line: 25, column: 23, scope: !95)
!99 = !DILocation(line: 25, column: 7, scope: !95)
!100 = !DILocation(line: 25, column: 12, scope: !95)
!101 = !DILocation(line: 24, column: 28, scope: !92)
!102 = distinct !{!102, !103}
!103 = !{!"llvm.loop.unroll.disable"}
!104 = !DILocation(line: 0, scope: !88)
!105 = !DILocation(line: 29, column: 5, scope: !88)
!106 = !DILocation(line: 29, column: 23, scope: !107)
!107 = distinct !DILexicalBlock(scope: !88, file: !1, line: 29, column: 5)
!108 = distinct !{!108, !93, !109}
!109 = !DILocation(line: 26, column: 5, scope: !86)
!110 = !DILocation(line: 30, column: 13, scope: !111)
!111 = distinct !DILexicalBlock(scope: !107, file: !1, line: 29, column: 33)
!112 = !DILocation(line: 30, column: 20, scope: !111)
!113 = !DILocation(line: 30, column: 18, scope: !111)
!114 = !DILocation(line: 30, column: 10, scope: !111)
!115 = !DILocation(line: 33, column: 5, scope: !76)
!116 = !DILocation(line: 29, column: 28, scope: !107)
!117 = distinct !{!117, !105, !118}
!118 = !DILocation(line: 32, column: 5, scope: !88)
!119 = distinct !DISubprogram(name: "bar2", scope: !1, file: !1, line: 38, type: !77, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !120)
!120 = !{!121, !122, !123, !124, !125}
!121 = !DILocalVariable(name: "a", arg: 1, scope: !119, file: !1, line: 38, type: !12)
!122 = !DILocalVariable(name: "b", arg: 2, scope: !119, file: !1, line: 38, type: !12)
!123 = !DILocalVariable(name: "c", arg: 3, scope: !119, file: !1, line: 38, type: !12)
!124 = !DILocalVariable(name: "n", arg: 4, scope: !119, file: !1, line: 38, type: !10)
!125 = !DILocalVariable(name: "i", scope: !126, file: !1, line: 40, type: !10)
!126 = distinct !DILexicalBlock(scope: !119, file: !1, line: 40, column: 6)
!127 = !DILocation(line: 0, scope: !119)
!128 = !DILocation(line: 0, scope: !126)
!129 = !DILocation(line: 40, column: 24, scope: !130)
!130 = distinct !DILexicalBlock(scope: !126, file: !1, line: 40, column: 6)
!131 = !DILocation(line: 40, column: 6, scope: !126)
!132 = !DILocation(line: 43, column: 9, scope: !133)
!133 = distinct !DILexicalBlock(scope: !130, file: !1, line: 40, column: 34)
!134 = !DILocation(line: 41, column: 14, scope: !133)
!135 = !DILocation(line: 41, column: 21, scope: !133)
!136 = !DILocation(line: 41, column: 19, scope: !133)
!137 = !DILocation(line: 41, column: 12, scope: !133)
!138 = !DILocation(line: 43, column: 14, scope: !139)
!139 = distinct !DILexicalBlock(scope: !133, file: !1, line: 43, column: 9)
!140 = !DILocation(line: 44, column: 18, scope: !141)
!141 = distinct !DILexicalBlock(scope: !139, file: !1, line: 43, column: 18)
!142 = !DILocation(line: 44, column: 15, scope: !141)
!143 = !DILocation(line: 44, column: 13, scope: !141)
!144 = !DILocation(line: 45, column: 6, scope: !141)
!145 = !DILocation(line: 48, column: 5, scope: !119)
!146 = !DILocation(line: 40, column: 29, scope: !130)
!147 = distinct !{!147, !131, !148}
!148 = !DILocation(line: 46, column: 5, scope: !126)
!149 = distinct !DISubprogram(name: "test", scope: !1, file: !1, line: 52, type: !150, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !153)
!150 = !DISubroutineType(types: !151)
!151 = !{!10, !152, !12, !12, !12, !10}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!153 = !{!154, !155, !156, !157, !158, !159}
!154 = !DILocalVariable(name: "number", arg: 1, scope: !149, file: !1, line: 52, type: !152)
!155 = !DILocalVariable(name: "a", arg: 2, scope: !149, file: !1, line: 52, type: !12)
!156 = !DILocalVariable(name: "b", arg: 3, scope: !149, file: !1, line: 52, type: !12)
!157 = !DILocalVariable(name: "c", arg: 4, scope: !149, file: !1, line: 52, type: !12)
!158 = !DILocalVariable(name: "n", arg: 5, scope: !149, file: !1, line: 52, type: !10)
!159 = !DILocalVariable(name: "i", scope: !160, file: !1, line: 53, type: !10)
!160 = distinct !DILexicalBlock(scope: !149, file: !1, line: 53, column: 3)
!161 = !DILocation(line: 0, scope: !149)
!162 = !DILocation(line: 0, scope: !160)
!163 = !DILocation(line: 0, scope: !130, inlinedAt: !164)
!164 = distinct !DILocation(line: 54, column: 4, scope: !165)
!165 = distinct !DILexicalBlock(scope: !166, file: !1, line: 53, column: 31)
!166 = distinct !DILexicalBlock(scope: !160, file: !1, line: 53, column: 3)
!167 = !DILocation(line: 0, scope: !168)
!168 = distinct !DILexicalBlock(scope: !165, file: !1, line: 56, column: 7)
!169 = !{!170, !170, i64 0}
!170 = !{!"int", !38, i64 0}
!171 = !DILocation(line: 53, column: 3, scope: !160)
!172 = !DILocation(line: 40, column: 6, scope: !126, inlinedAt: !164)
!173 = !DILocation(line: 0, scope: !126, inlinedAt: !164)
!174 = !DILocation(line: 41, column: 14, scope: !133, inlinedAt: !164)
!175 = !DILocation(line: 41, column: 21, scope: !133, inlinedAt: !164)
!176 = !DILocation(line: 41, column: 19, scope: !133, inlinedAt: !164)
!177 = !DILocation(line: 41, column: 12, scope: !133, inlinedAt: !164)
!178 = !DILocation(line: 43, column: 14, scope: !139, inlinedAt: !164)
!179 = !DILocation(line: 43, column: 9, scope: !133, inlinedAt: !164)
!180 = !DILocation(line: 44, column: 18, scope: !141, inlinedAt: !164)
!181 = !DILocation(line: 44, column: 15, scope: !141, inlinedAt: !164)
!182 = !DILocation(line: 44, column: 13, scope: !141, inlinedAt: !164)
!183 = !DILocation(line: 45, column: 6, scope: !141, inlinedAt: !164)
!184 = !DILocation(line: 40, column: 29, scope: !130, inlinedAt: !164)
!185 = !DILocation(line: 56, column: 7, scope: !168)
!186 = !DILocation(line: 62, column: 4, scope: !149)
!187 = distinct !{!187, !172, !188}
!188 = !DILocation(line: 46, column: 5, scope: !126, inlinedAt: !164)
