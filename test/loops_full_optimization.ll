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
  br i1 %5, label %6, label %50, !dbg !28

6:                                                ; preds = %4
  %7 = icmp eq i32 %3, 1, !dbg !29
  %8 = icmp sgt i32 %3, 5, !dbg !33
  %9 = zext i32 %3 to i64, !dbg !27
  %10 = add nsw i64 %9, -1, !dbg !28
  %11 = and i64 %9, 3, !dbg !35
  %12 = icmp ult i64 %10, 3, !dbg !35
  %13 = sub nsw i64 %9, %11, !dbg !35
  %14 = icmp eq i64 %11, 0, !dbg !35
  %15 = and i64 %9, 1, !dbg !35
  %16 = icmp eq i64 %10, 0, !dbg !35
  %17 = sub nsw i64 %9, %15, !dbg !35
  %18 = icmp eq i64 %15, 0, !dbg !35
  br label %19, !dbg !28

19:                                               ; preds = %6, %88
  %20 = phi i64 [ 0, %6 ], [ %90, %88 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !19, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.value(metadata i32 0, metadata !21, metadata !DIExpression()), !dbg !35
  %21 = getelementptr inbounds float, float* %0, i64 %20, !dbg !36
  %22 = load float, float* %21, align 4, !dbg !38, !tbaa !39
  br i1 %7, label %51, label %23, !dbg !43

23:                                               ; preds = %19
  br i1 %8, label %25, label %24, !dbg !43

24:                                               ; preds = %23
  br i1 %12, label %71, label %92, !dbg !43

25:                                               ; preds = %23
  br i1 %16, label %58, label %26, !dbg !43

26:                                               ; preds = %25, %26
  %27 = phi float [ %46, %26 ], [ %22, %25 ], !dbg !44
  %28 = phi i64 [ %47, %26 ], [ 0, %25 ]
  %29 = phi i64 [ %48, %26 ], [ %17, %25 ]
  call void @llvm.dbg.value(metadata i64 %28, metadata !21, metadata !DIExpression()), !dbg !35
  %30 = getelementptr inbounds float, float* %1, i64 %28, !dbg !45
  %31 = load float, float* %30, align 4, !dbg !45, !tbaa !39
  %32 = getelementptr inbounds float, float* %2, i64 %28, !dbg !46
  %33 = load float, float* %32, align 4, !dbg !46, !tbaa !39
  %34 = fsub float %31, %33, !dbg !47
  %35 = fadd float %27, %34, !dbg !44
  %36 = fmul float %31, %33, !dbg !48
  %37 = fadd float %35, %36, !dbg !51
  %38 = or i64 %28, 1, !dbg !52
  call void @llvm.dbg.value(metadata i64 %38, metadata !21, metadata !DIExpression()), !dbg !35
  %39 = getelementptr inbounds float, float* %1, i64 %38, !dbg !45
  %40 = load float, float* %39, align 4, !dbg !45, !tbaa !39
  %41 = getelementptr inbounds float, float* %2, i64 %38, !dbg !46
  %42 = load float, float* %41, align 4, !dbg !46, !tbaa !39
  %43 = fsub float %40, %42, !dbg !47
  %44 = fadd float %37, %43, !dbg !44
  %45 = fmul float %40, %42, !dbg !48
  %46 = fadd float %44, %45, !dbg !51
  %47 = add nuw nsw i64 %28, 2, !dbg !52
  call void @llvm.dbg.value(metadata i64 %47, metadata !21, metadata !DIExpression()), !dbg !35
  %48 = add i64 %29, -2, !dbg !43
  %49 = icmp eq i64 %48, 0, !dbg !43
  br i1 %49, label %58, label %26, !dbg !43, !llvm.loop !53

50:                                               ; preds = %88, %4
  ret i32 0, !dbg !55

51:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 0, metadata !21, metadata !DIExpression()), !dbg !35
  %52 = load float, float* %1, align 4, !dbg !56, !tbaa !39
  %53 = load float, float* %2, align 4, !dbg !58, !tbaa !39
  %54 = fadd float %52, %53, !dbg !59
  %55 = fadd float %22, %54, !dbg !60
  %56 = fmul float %52, %53, !dbg !48
  %57 = fadd float %55, %56, !dbg !51
  call void @llvm.dbg.value(metadata i64 1, metadata !21, metadata !DIExpression()), !dbg !35
  br label %88, !dbg !61

58:                                               ; preds = %26, %25
  %59 = phi float [ undef, %25 ], [ %46, %26 ]
  %60 = phi float [ %22, %25 ], [ %46, %26 ]
  %61 = phi i64 [ 0, %25 ], [ %47, %26 ]
  br i1 %18, label %88, label %62, !dbg !43

62:                                               ; preds = %58
  call void @llvm.dbg.value(metadata i64 %61, metadata !21, metadata !DIExpression()), !dbg !35
  %63 = getelementptr inbounds float, float* %1, i64 %61, !dbg !45
  %64 = load float, float* %63, align 4, !dbg !45, !tbaa !39
  %65 = getelementptr inbounds float, float* %2, i64 %61, !dbg !46
  %66 = load float, float* %65, align 4, !dbg !46, !tbaa !39
  call void @llvm.dbg.value(metadata i64 %61, metadata !21, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !35
  %67 = fsub float %64, %66, !dbg !47
  %68 = fadd float %60, %67, !dbg !44
  %69 = fmul float %64, %66, !dbg !48
  %70 = fadd float %68, %69, !dbg !51
  br label %88, !dbg !51

71:                                               ; preds = %92, %24
  %72 = phi float [ undef, %24 ], [ %122, %92 ]
  %73 = phi float [ %22, %24 ], [ %122, %92 ]
  %74 = phi i64 [ 0, %24 ], [ %123, %92 ]
  br i1 %14, label %88, label %75, !dbg !43

75:                                               ; preds = %71, %75
  %76 = phi float [ %84, %75 ], [ %73, %71 ], !dbg !35
  %77 = phi i64 [ %85, %75 ], [ %74, %71 ]
  %78 = phi i64 [ %86, %75 ], [ %11, %71 ]
  call void @llvm.dbg.value(metadata i64 %77, metadata !21, metadata !DIExpression()), !dbg !35
  %79 = getelementptr inbounds float, float* %1, i64 %77, !dbg !62
  %80 = load float, float* %79, align 4, !dbg !62, !tbaa !39
  %81 = getelementptr inbounds float, float* %2, i64 %77, !dbg !63
  %82 = load float, float* %81, align 4, !dbg !63, !tbaa !39
  %83 = fmul float %80, %82, !dbg !48
  %84 = fadd float %76, %83, !dbg !51
  %85 = add nuw nsw i64 %77, 1, !dbg !52
  call void @llvm.dbg.value(metadata i64 %85, metadata !21, metadata !DIExpression()), !dbg !35
  %86 = add i64 %78, -1, !dbg !43
  %87 = icmp eq i64 %86, 0, !dbg !43
  br i1 %87, label %88, label %75, !dbg !43, !llvm.loop !64

88:                                               ; preds = %71, %75, %62, %58, %51
  %89 = phi float [ %57, %51 ], [ %59, %58 ], [ %70, %62 ], [ %72, %71 ], [ %84, %75 ]
  store float %89, float* %21, align 4, !dbg !51, !tbaa !39
  %90 = add nuw nsw i64 %20, 1, !dbg !61
  call void @llvm.dbg.value(metadata i64 %90, metadata !19, metadata !DIExpression()), !dbg !26
  %91 = icmp eq i64 %90, %9, !dbg !27
  br i1 %91, label %50, label %19, !dbg !28, !llvm.loop !66

92:                                               ; preds = %24, %92
  %93 = phi float [ %122, %92 ], [ %22, %24 ], !dbg !35
  %94 = phi i64 [ %123, %92 ], [ 0, %24 ]
  %95 = phi i64 [ %124, %92 ], [ %13, %24 ]
  call void @llvm.dbg.value(metadata i64 %94, metadata !21, metadata !DIExpression()), !dbg !35
  %96 = getelementptr inbounds float, float* %1, i64 %94, !dbg !62
  %97 = load float, float* %96, align 4, !dbg !62, !tbaa !39
  %98 = getelementptr inbounds float, float* %2, i64 %94, !dbg !63
  %99 = load float, float* %98, align 4, !dbg !63, !tbaa !39
  %100 = fmul float %97, %99, !dbg !48
  %101 = fadd float %93, %100, !dbg !51
  %102 = or i64 %94, 1, !dbg !52
  call void @llvm.dbg.value(metadata i64 %102, metadata !21, metadata !DIExpression()), !dbg !35
  %103 = getelementptr inbounds float, float* %1, i64 %102, !dbg !62
  %104 = load float, float* %103, align 4, !dbg !62, !tbaa !39
  %105 = getelementptr inbounds float, float* %2, i64 %102, !dbg !63
  %106 = load float, float* %105, align 4, !dbg !63, !tbaa !39
  %107 = fmul float %104, %106, !dbg !48
  %108 = fadd float %101, %107, !dbg !51
  %109 = or i64 %94, 2, !dbg !52
  call void @llvm.dbg.value(metadata i64 %109, metadata !21, metadata !DIExpression()), !dbg !35
  %110 = getelementptr inbounds float, float* %1, i64 %109, !dbg !62
  %111 = load float, float* %110, align 4, !dbg !62, !tbaa !39
  %112 = getelementptr inbounds float, float* %2, i64 %109, !dbg !63
  %113 = load float, float* %112, align 4, !dbg !63, !tbaa !39
  %114 = fmul float %111, %113, !dbg !48
  %115 = fadd float %108, %114, !dbg !51
  %116 = or i64 %94, 3, !dbg !52
  call void @llvm.dbg.value(metadata i64 %116, metadata !21, metadata !DIExpression()), !dbg !35
  %117 = getelementptr inbounds float, float* %1, i64 %116, !dbg !62
  %118 = load float, float* %117, align 4, !dbg !62, !tbaa !39
  %119 = getelementptr inbounds float, float* %2, i64 %116, !dbg !63
  %120 = load float, float* %119, align 4, !dbg !63, !tbaa !39
  %121 = fmul float %118, %120, !dbg !48
  %122 = fadd float %115, %121, !dbg !51
  %123 = add nuw nsw i64 %94, 4, !dbg !52
  call void @llvm.dbg.value(metadata i64 %123, metadata !21, metadata !DIExpression()), !dbg !35
  %124 = add i64 %95, -4, !dbg !43
  %125 = icmp eq i64 %124, 0, !dbg !43
  br i1 %125, label %71, label %92, !dbg !43, !llvm.loop !53
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local i32 @bar(float* nocapture %0, float* nocapture readonly %1, float* nocapture readnone %2, i32 %3) local_unnamed_addr #0 !dbg !68 {
  call void @llvm.dbg.value(metadata float* %0, metadata !72, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.value(metadata float* %1, metadata !73, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.value(metadata float* %2, metadata !74, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.value(metadata i32 %3, metadata !75, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.value(metadata i32 0, metadata !76, metadata !DIExpression()), !dbg !84
  %5 = bitcast float* %0 to i8*
  %6 = icmp sgt i32 %3, 0, !dbg !85
  br i1 %6, label %7, label %137, !dbg !87

7:                                                ; preds = %4
  %8 = zext i32 %3 to i64, !dbg !85
  %9 = icmp ult i32 %3, 8, !dbg !87
  br i1 %9, label %10, label %30, !dbg !87

10:                                               ; preds = %104, %30, %7
  %11 = phi i64 [ 0, %30 ], [ 0, %7 ], [ %37, %104 ]
  %12 = xor i64 %11, -1, !dbg !87
  %13 = add nsw i64 %12, %8, !dbg !87
  %14 = and i64 %8, 3, !dbg !87
  %15 = icmp eq i64 %14, 0, !dbg !87
  br i1 %15, label %27, label %16, !dbg !87

16:                                               ; preds = %10, %16
  %17 = phi i64 [ %24, %16 ], [ %11, %10 ]
  %18 = phi i64 [ %25, %16 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %17, metadata !76, metadata !DIExpression()), !dbg !84
  %19 = getelementptr inbounds float, float* %0, i64 %17, !dbg !88
  %20 = load float, float* %19, align 4, !dbg !88, !tbaa !39
  %21 = getelementptr inbounds float, float* %1, i64 %17, !dbg !90
  %22 = load float, float* %21, align 4, !dbg !90, !tbaa !39
  %23 = fmul float %20, %22, !dbg !91
  store float %23, float* %19, align 4, !dbg !92, !tbaa !39
  %24 = add nuw nsw i64 %17, 1, !dbg !93
  call void @llvm.dbg.value(metadata i64 %24, metadata !76, metadata !DIExpression()), !dbg !84
  %25 = add i64 %18, -1, !dbg !87
  %26 = icmp eq i64 %25, 0, !dbg !87
  br i1 %26, label %27, label %16, !dbg !87, !llvm.loop !94

27:                                               ; preds = %16, %10
  %28 = phi i64 [ %11, %10 ], [ %24, %16 ]
  %29 = icmp ult i64 %13, 3, !dbg !87
  br i1 %29, label %106, label %110, !dbg !87

30:                                               ; preds = %7
  %31 = getelementptr float, float* %0, i64 %8, !dbg !87
  %32 = getelementptr float, float* %1, i64 %8, !dbg !87
  %33 = icmp ugt float* %32, %0, !dbg !87
  %34 = icmp ugt float* %31, %1, !dbg !87
  %35 = and i1 %33, %34, !dbg !87
  br i1 %35, label %10, label %36, !dbg !87

36:                                               ; preds = %30
  %37 = and i64 %8, 4294967288, !dbg !87
  %38 = add nsw i64 %37, -8, !dbg !87
  %39 = lshr exact i64 %38, 3, !dbg !87
  %40 = add nuw nsw i64 %39, 1, !dbg !87
  %41 = and i64 %40, 1, !dbg !87
  %42 = icmp eq i64 %38, 0, !dbg !87
  br i1 %42, label %84, label %43, !dbg !87

43:                                               ; preds = %36
  %44 = sub nuw nsw i64 %40, %41, !dbg !87
  br label %45, !dbg !87

45:                                               ; preds = %45, %43
  %46 = phi i64 [ 0, %43 ], [ %81, %45 ], !dbg !93
  %47 = phi i64 [ %44, %43 ], [ %82, %45 ]
  %48 = getelementptr inbounds float, float* %0, i64 %46, !dbg !88
  %49 = bitcast float* %48 to <4 x float>*, !dbg !88
  %50 = load <4 x float>, <4 x float>* %49, align 4, !dbg !88, !tbaa !39, !alias.scope !95, !noalias !98
  %51 = getelementptr inbounds float, float* %48, i64 4, !dbg !88
  %52 = bitcast float* %51 to <4 x float>*, !dbg !88
  %53 = load <4 x float>, <4 x float>* %52, align 4, !dbg !88, !tbaa !39, !alias.scope !95, !noalias !98
  %54 = getelementptr inbounds float, float* %1, i64 %46, !dbg !90
  %55 = bitcast float* %54 to <4 x float>*, !dbg !90
  %56 = load <4 x float>, <4 x float>* %55, align 4, !dbg !90, !tbaa !39, !alias.scope !98
  %57 = getelementptr inbounds float, float* %54, i64 4, !dbg !90
  %58 = bitcast float* %57 to <4 x float>*, !dbg !90
  %59 = load <4 x float>, <4 x float>* %58, align 4, !dbg !90, !tbaa !39, !alias.scope !98
  %60 = fmul <4 x float> %50, %56, !dbg !91
  %61 = fmul <4 x float> %53, %59, !dbg !91
  %62 = bitcast float* %48 to <4 x float>*, !dbg !92
  store <4 x float> %60, <4 x float>* %62, align 4, !dbg !92, !tbaa !39, !alias.scope !95, !noalias !98
  %63 = bitcast float* %51 to <4 x float>*, !dbg !92
  store <4 x float> %61, <4 x float>* %63, align 4, !dbg !92, !tbaa !39, !alias.scope !95, !noalias !98
  %64 = or i64 %46, 8, !dbg !93
  %65 = getelementptr inbounds float, float* %0, i64 %64, !dbg !88
  %66 = bitcast float* %65 to <4 x float>*, !dbg !88
  %67 = load <4 x float>, <4 x float>* %66, align 4, !dbg !88, !tbaa !39, !alias.scope !95, !noalias !98
  %68 = getelementptr inbounds float, float* %65, i64 4, !dbg !88
  %69 = bitcast float* %68 to <4 x float>*, !dbg !88
  %70 = load <4 x float>, <4 x float>* %69, align 4, !dbg !88, !tbaa !39, !alias.scope !95, !noalias !98
  %71 = getelementptr inbounds float, float* %1, i64 %64, !dbg !90
  %72 = bitcast float* %71 to <4 x float>*, !dbg !90
  %73 = load <4 x float>, <4 x float>* %72, align 4, !dbg !90, !tbaa !39, !alias.scope !98
  %74 = getelementptr inbounds float, float* %71, i64 4, !dbg !90
  %75 = bitcast float* %74 to <4 x float>*, !dbg !90
  %76 = load <4 x float>, <4 x float>* %75, align 4, !dbg !90, !tbaa !39, !alias.scope !98
  %77 = fmul <4 x float> %67, %73, !dbg !91
  %78 = fmul <4 x float> %70, %76, !dbg !91
  %79 = bitcast float* %65 to <4 x float>*, !dbg !92
  store <4 x float> %77, <4 x float>* %79, align 4, !dbg !92, !tbaa !39, !alias.scope !95, !noalias !98
  %80 = bitcast float* %68 to <4 x float>*, !dbg !92
  store <4 x float> %78, <4 x float>* %80, align 4, !dbg !92, !tbaa !39, !alias.scope !95, !noalias !98
  %81 = add i64 %46, 16, !dbg !93
  %82 = add i64 %47, -2, !dbg !93
  %83 = icmp eq i64 %82, 0, !dbg !93
  br i1 %83, label %84, label %45, !dbg !93, !llvm.loop !100

84:                                               ; preds = %45, %36
  %85 = phi i64 [ 0, %36 ], [ %81, %45 ]
  %86 = icmp eq i64 %41, 0, !dbg !93
  br i1 %86, label %104, label %87, !dbg !93

87:                                               ; preds = %84
  %88 = getelementptr inbounds float, float* %0, i64 %85, !dbg !88
  %89 = bitcast float* %88 to <4 x float>*, !dbg !88
  %90 = load <4 x float>, <4 x float>* %89, align 4, !dbg !88, !tbaa !39, !alias.scope !95, !noalias !98
  %91 = getelementptr inbounds float, float* %88, i64 4, !dbg !88
  %92 = bitcast float* %91 to <4 x float>*, !dbg !88
  %93 = load <4 x float>, <4 x float>* %92, align 4, !dbg !88, !tbaa !39, !alias.scope !95, !noalias !98
  %94 = getelementptr inbounds float, float* %1, i64 %85, !dbg !90
  %95 = bitcast float* %94 to <4 x float>*, !dbg !90
  %96 = load <4 x float>, <4 x float>* %95, align 4, !dbg !90, !tbaa !39, !alias.scope !98
  %97 = getelementptr inbounds float, float* %94, i64 4, !dbg !90
  %98 = bitcast float* %97 to <4 x float>*, !dbg !90
  %99 = load <4 x float>, <4 x float>* %98, align 4, !dbg !90, !tbaa !39, !alias.scope !98
  %100 = fmul <4 x float> %90, %96, !dbg !91
  %101 = fmul <4 x float> %93, %99, !dbg !91
  %102 = bitcast float* %88 to <4 x float>*, !dbg !92
  store <4 x float> %100, <4 x float>* %102, align 4, !dbg !92, !tbaa !39, !alias.scope !95, !noalias !98
  %103 = bitcast float* %91 to <4 x float>*, !dbg !92
  store <4 x float> %101, <4 x float>* %103, align 4, !dbg !92, !tbaa !39, !alias.scope !95, !noalias !98
  br label %104, !dbg !87

104:                                              ; preds = %84, %87
  %105 = icmp eq i64 %37, %8, !dbg !87
  br i1 %105, label %106, label %10, !dbg !87

106:                                              ; preds = %27, %110, %104
  call void @llvm.dbg.value(metadata i32 0, metadata !78, metadata !DIExpression()), !dbg !103
  br i1 %6, label %107, label %137, !dbg !104

107:                                              ; preds = %106
  %108 = zext i32 %3 to i64, !dbg !105
  %109 = shl nuw nsw i64 %108, 2, !dbg !104
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %5, i8 0, i64 %109, i1 false), !dbg !106
  call void @llvm.dbg.value(metadata i32 undef, metadata !78, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.value(metadata i32 undef, metadata !80, metadata !DIExpression()), !dbg !107
  br label %137, !dbg !108

110:                                              ; preds = %27, %110
  %111 = phi i64 [ %135, %110 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %111, metadata !76, metadata !DIExpression()), !dbg !84
  %112 = getelementptr inbounds float, float* %0, i64 %111, !dbg !88
  %113 = load float, float* %112, align 4, !dbg !88, !tbaa !39
  %114 = getelementptr inbounds float, float* %1, i64 %111, !dbg !90
  %115 = load float, float* %114, align 4, !dbg !90, !tbaa !39
  %116 = fmul float %113, %115, !dbg !91
  store float %116, float* %112, align 4, !dbg !92, !tbaa !39
  %117 = add nuw nsw i64 %111, 1, !dbg !93
  call void @llvm.dbg.value(metadata i64 %117, metadata !76, metadata !DIExpression()), !dbg !84
  %118 = getelementptr inbounds float, float* %0, i64 %117, !dbg !88
  %119 = load float, float* %118, align 4, !dbg !88, !tbaa !39
  %120 = getelementptr inbounds float, float* %1, i64 %117, !dbg !90
  %121 = load float, float* %120, align 4, !dbg !90, !tbaa !39
  %122 = fmul float %119, %121, !dbg !91
  store float %122, float* %118, align 4, !dbg !92, !tbaa !39
  %123 = add nuw nsw i64 %111, 2, !dbg !93
  call void @llvm.dbg.value(metadata i64 %123, metadata !76, metadata !DIExpression()), !dbg !84
  %124 = getelementptr inbounds float, float* %0, i64 %123, !dbg !88
  %125 = load float, float* %124, align 4, !dbg !88, !tbaa !39
  %126 = getelementptr inbounds float, float* %1, i64 %123, !dbg !90
  %127 = load float, float* %126, align 4, !dbg !90, !tbaa !39
  %128 = fmul float %125, %127, !dbg !91
  store float %128, float* %124, align 4, !dbg !92, !tbaa !39
  %129 = add nuw nsw i64 %111, 3, !dbg !93
  call void @llvm.dbg.value(metadata i64 %129, metadata !76, metadata !DIExpression()), !dbg !84
  %130 = getelementptr inbounds float, float* %0, i64 %129, !dbg !88
  %131 = load float, float* %130, align 4, !dbg !88, !tbaa !39
  %132 = getelementptr inbounds float, float* %1, i64 %129, !dbg !90
  %133 = load float, float* %132, align 4, !dbg !90, !tbaa !39
  %134 = fmul float %131, %133, !dbg !91
  store float %134, float* %130, align 4, !dbg !92, !tbaa !39
  %135 = add nuw nsw i64 %111, 4, !dbg !93
  call void @llvm.dbg.value(metadata i64 %135, metadata !76, metadata !DIExpression()), !dbg !84
  %136 = icmp eq i64 %135, %8, !dbg !85
  br i1 %136, label %106, label %110, !dbg !87, !llvm.loop !109

137:                                              ; preds = %4, %107, %106
  ret i32 0, !dbg !108
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local i32 @bar2(float* nocapture %0, float* nocapture readnone %1, float* nocapture readonly %2, i32 %3) local_unnamed_addr #0 !dbg !110 {
  call void @llvm.dbg.value(metadata float* %0, metadata !112, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.value(metadata float* %1, metadata !113, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.value(metadata float* %2, metadata !114, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.value(metadata i32 %3, metadata !115, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.value(metadata i32 0, metadata !116, metadata !DIExpression()), !dbg !119
  %5 = icmp sgt i32 %3, 0, !dbg !120
  br i1 %5, label %6, label %30, !dbg !122

6:                                                ; preds = %4
  %7 = zext i32 %3 to i64, !dbg !120
  %8 = getelementptr inbounds float, float* %0, i64 -1, !dbg !123
  %9 = load float, float* %8, align 4, !dbg !125, !tbaa !39
  %10 = add nsw i64 %7, -1, !dbg !122
  %11 = and i64 %7, 3, !dbg !122
  %12 = icmp ult i64 %10, 3, !dbg !122
  br i1 %12, label %15, label %13, !dbg !122

13:                                               ; preds = %6
  %14 = sub nsw i64 %7, %11, !dbg !122
  br label %31, !dbg !122

15:                                               ; preds = %31, %6
  %16 = phi float [ %9, %6 ], [ %52, %31 ]
  %17 = phi i64 [ 0, %6 ], [ %54, %31 ]
  %18 = icmp eq i64 %11, 0, !dbg !122
  br i1 %18, label %30, label %19, !dbg !122

19:                                               ; preds = %15, %19
  %20 = phi float [ %25, %19 ], [ %16, %15 ], !dbg !125
  %21 = phi i64 [ %27, %19 ], [ %17, %15 ]
  %22 = phi i64 [ %28, %19 ], [ %11, %15 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !116, metadata !DIExpression()), !dbg !119
  %23 = getelementptr inbounds float, float* %2, i64 %21, !dbg !126
  %24 = load float, float* %23, align 4, !dbg !126, !tbaa !39
  %25 = fmul float %20, %24, !dbg !127
  %26 = getelementptr inbounds float, float* %0, i64 %21, !dbg !128
  store float %25, float* %26, align 4, !dbg !129, !tbaa !39
  %27 = add nuw nsw i64 %21, 1, !dbg !130
  call void @llvm.dbg.value(metadata i64 %27, metadata !116, metadata !DIExpression()), !dbg !119
  %28 = add i64 %22, -1, !dbg !122
  %29 = icmp eq i64 %28, 0, !dbg !122
  br i1 %29, label %30, label %19, !dbg !122, !llvm.loop !131

30:                                               ; preds = %15, %19, %4
  ret i32 0, !dbg !132

31:                                               ; preds = %31, %13
  %32 = phi float [ %9, %13 ], [ %52, %31 ], !dbg !125
  %33 = phi i64 [ 0, %13 ], [ %54, %31 ]
  %34 = phi i64 [ %14, %13 ], [ %55, %31 ]
  call void @llvm.dbg.value(metadata i64 %33, metadata !116, metadata !DIExpression()), !dbg !119
  %35 = getelementptr inbounds float, float* %2, i64 %33, !dbg !126
  %36 = load float, float* %35, align 4, !dbg !126, !tbaa !39
  %37 = fmul float %32, %36, !dbg !127
  %38 = getelementptr inbounds float, float* %0, i64 %33, !dbg !128
  store float %37, float* %38, align 4, !dbg !129, !tbaa !39
  %39 = or i64 %33, 1, !dbg !130
  call void @llvm.dbg.value(metadata i64 %39, metadata !116, metadata !DIExpression()), !dbg !119
  %40 = getelementptr inbounds float, float* %2, i64 %39, !dbg !126
  %41 = load float, float* %40, align 4, !dbg !126, !tbaa !39
  %42 = fmul float %37, %41, !dbg !127
  %43 = getelementptr inbounds float, float* %0, i64 %39, !dbg !128
  store float %42, float* %43, align 4, !dbg !129, !tbaa !39
  %44 = or i64 %33, 2, !dbg !130
  call void @llvm.dbg.value(metadata i64 %44, metadata !116, metadata !DIExpression()), !dbg !119
  %45 = getelementptr inbounds float, float* %2, i64 %44, !dbg !126
  %46 = load float, float* %45, align 4, !dbg !126, !tbaa !39
  %47 = fmul float %42, %46, !dbg !127
  %48 = getelementptr inbounds float, float* %0, i64 %44, !dbg !128
  store float %47, float* %48, align 4, !dbg !129, !tbaa !39
  %49 = or i64 %33, 3, !dbg !130
  call void @llvm.dbg.value(metadata i64 %49, metadata !116, metadata !DIExpression()), !dbg !119
  %50 = getelementptr inbounds float, float* %2, i64 %49, !dbg !126
  %51 = load float, float* %50, align 4, !dbg !126, !tbaa !39
  %52 = fmul float %47, %51, !dbg !127
  %53 = getelementptr inbounds float, float* %0, i64 %49, !dbg !128
  store float %52, float* %53, align 4, !dbg !129, !tbaa !39
  %54 = add nuw nsw i64 %33, 4, !dbg !130
  call void @llvm.dbg.value(metadata i64 %54, metadata !116, metadata !DIExpression()), !dbg !119
  %55 = add i64 %34, -4, !dbg !122
  %56 = icmp eq i64 %55, 0, !dbg !122
  br i1 %56, label %15, label %31, !dbg !122, !llvm.loop !133
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }

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
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 4, column: 16)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 3, column: 37)
!32 = distinct !DILexicalBlock(scope: !22, file: !1, line: 3, column: 9)
!33 = !DILocation(line: 0, scope: !34)
!34 = distinct !DILexicalBlock(scope: !31, file: !1, line: 7, column: 17)
!35 = !DILocation(line: 0, scope: !22)
!36 = !DILocation(line: 0, scope: !37)
!37 = distinct !DILexicalBlock(scope: !34, file: !1, line: 7, column: 23)
!38 = !DILocation(line: 0, scope: !31)
!39 = !{!40, !40, i64 0}
!40 = !{!"float", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !DILocation(line: 3, column: 9, scope: !22)
!44 = !DILocation(line: 8, column: 22, scope: !37)
!45 = !DILocation(line: 8, column: 25, scope: !37)
!46 = !DILocation(line: 8, column: 32, scope: !37)
!47 = !DILocation(line: 8, column: 30, scope: !37)
!48 = !DILocation(line: 11, column: 30, scope: !49)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 10, column: 18)
!50 = distinct !DILexicalBlock(scope: !31, file: !1, line: 10, column: 16)
!51 = !DILocation(line: 11, column: 22, scope: !49)
!52 = !DILocation(line: 3, column: 32, scope: !32)
!53 = distinct !{!53, !43, !54}
!54 = !DILocation(line: 14, column: 9, scope: !22)
!55 = !DILocation(line: 16, column: 5, scope: !7)
!56 = !DILocation(line: 5, column: 25, scope: !57)
!57 = distinct !DILexicalBlock(scope: !30, file: !1, line: 4, column: 23)
!58 = !DILocation(line: 5, column: 32, scope: !57)
!59 = !DILocation(line: 5, column: 30, scope: !57)
!60 = !DILocation(line: 5, column: 22, scope: !57)
!61 = !DILocation(line: 2, column: 28, scope: !24)
!62 = !DILocation(line: 11, column: 25, scope: !49)
!63 = !DILocation(line: 11, column: 32, scope: !49)
!64 = distinct !{!64, !65}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = distinct !{!66, !28, !67}
!67 = !DILocation(line: 15, column: 5, scope: !20)
!68 = distinct !DISubprogram(name: "bar", scope: !1, file: !1, line: 19, type: !69, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !71)
!69 = !DISubroutineType(types: !70)
!70 = !{!10, !12, !12, !12, !10}
!71 = !{!72, !73, !74, !75, !76, !78, !80}
!72 = !DILocalVariable(name: "a", arg: 1, scope: !68, file: !1, line: 19, type: !12)
!73 = !DILocalVariable(name: "b", arg: 2, scope: !68, file: !1, line: 19, type: !12)
!74 = !DILocalVariable(name: "c", arg: 3, scope: !68, file: !1, line: 19, type: !12)
!75 = !DILocalVariable(name: "n", arg: 4, scope: !68, file: !1, line: 19, type: !10)
!76 = !DILocalVariable(name: "i", scope: !77, file: !1, line: 20, type: !10)
!77 = distinct !DILexicalBlock(scope: !68, file: !1, line: 20, column: 5)
!78 = !DILocalVariable(name: "i", scope: !79, file: !1, line: 23, type: !10)
!79 = distinct !DILexicalBlock(scope: !68, file: !1, line: 23, column: 5)
!80 = !DILocalVariable(name: "d", scope: !81, file: !1, line: 25, type: !10)
!81 = distinct !DILexicalBlock(scope: !82, file: !1, line: 23, column: 33)
!82 = distinct !DILexicalBlock(scope: !79, file: !1, line: 23, column: 5)
!83 = !DILocation(line: 0, scope: !68)
!84 = !DILocation(line: 0, scope: !77)
!85 = !DILocation(line: 20, column: 23, scope: !86)
!86 = distinct !DILexicalBlock(scope: !77, file: !1, line: 20, column: 5)
!87 = !DILocation(line: 20, column: 5, scope: !77)
!88 = !DILocation(line: 21, column: 14, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !1, line: 20, column: 33)
!90 = !DILocation(line: 21, column: 21, scope: !89)
!91 = !DILocation(line: 21, column: 19, scope: !89)
!92 = !DILocation(line: 21, column: 12, scope: !89)
!93 = !DILocation(line: 20, column: 28, scope: !86)
!94 = distinct !{!94, !65}
!95 = !{!96}
!96 = distinct !{!96, !97}
!97 = distinct !{!97, !"LVerDomain"}
!98 = !{!99}
!99 = distinct !{!99, !97}
!100 = distinct !{!100, !87, !101, !102}
!101 = !DILocation(line: 22, column: 5, scope: !77)
!102 = !{!"llvm.loop.isvectorized", i32 1}
!103 = !DILocation(line: 0, scope: !79)
!104 = !DILocation(line: 23, column: 5, scope: !79)
!105 = !DILocation(line: 23, column: 23, scope: !82)
!106 = !DILocation(line: 24, column: 12, scope: !81)
!107 = !DILocation(line: 0, scope: !81)
!108 = !DILocation(line: 28, column: 5, scope: !68)
!109 = distinct !{!109, !87, !101, !102}
!110 = distinct !DISubprogram(name: "bar2", scope: !1, file: !1, line: 32, type: !69, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !111)
!111 = !{!112, !113, !114, !115, !116}
!112 = !DILocalVariable(name: "a", arg: 1, scope: !110, file: !1, line: 32, type: !12)
!113 = !DILocalVariable(name: "b", arg: 2, scope: !110, file: !1, line: 32, type: !12)
!114 = !DILocalVariable(name: "c", arg: 3, scope: !110, file: !1, line: 32, type: !12)
!115 = !DILocalVariable(name: "n", arg: 4, scope: !110, file: !1, line: 32, type: !10)
!116 = !DILocalVariable(name: "i", scope: !117, file: !1, line: 34, type: !10)
!117 = distinct !DILexicalBlock(scope: !110, file: !1, line: 34, column: 6)
!118 = !DILocation(line: 0, scope: !110)
!119 = !DILocation(line: 0, scope: !117)
!120 = !DILocation(line: 34, column: 24, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !1, line: 34, column: 6)
!122 = !DILocation(line: 34, column: 6, scope: !117)
!123 = !DILocation(line: 0, scope: !124)
!124 = distinct !DILexicalBlock(scope: !121, file: !1, line: 34, column: 34)
!125 = !DILocation(line: 35, column: 14, scope: !124)
!126 = !DILocation(line: 35, column: 25, scope: !124)
!127 = !DILocation(line: 35, column: 23, scope: !124)
!128 = !DILocation(line: 35, column: 7, scope: !124)
!129 = !DILocation(line: 35, column: 12, scope: !124)
!130 = !DILocation(line: 34, column: 29, scope: !121)
!131 = distinct !{!131, !65}
!132 = !DILocation(line: 42, column: 5, scope: !110)
!133 = distinct !{!133, !122, !134}
!134 = !DILocation(line: 40, column: 5, scope: !117)
