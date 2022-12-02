; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1

; Function Attrs: norecurse nounwind uwtable
define dso_local void @foo(i32* noalias nocapture, i32* noalias nocapture, i32* noalias nocapture, i8* noalias nocapture readonly, i32) local_unnamed_addr #0 !dbg !8 {
  %6 = icmp sgt i32 %4, 0, !dbg !10
  br i1 %6, label %7, label %51, !dbg !11

; <label>:7:                                      ; preds = %5
  %8 = zext i32 %4 to i64
  %9 = icmp eq i32 %4, 1, !dbg !12
  br i1 %9, label %52, label %10, !dbg !12

; <label>:10:                                     ; preds = %7
  %11 = insertelement <n x 4 x i64> undef, i64 %8, i32 0, !dbg !13
  %12 = shufflevector <n x 4 x i64> %11, <n x 4 x i64> undef, <n x 4 x i32> zeroinitializer, !dbg !13
  %13 = icmp ugt <n x 4 x i64> %12, stepvector, !dbg !13
  br label %14, !dbg !12

; <label>:14:                                     ; preds = %14, %10
  %15 = phi i64 [ 0, %10 ], [ %45, %14 ], !dbg !13
  %16 = phi <n x 4 x i1> [ %13, %10 ], [ %49, %14 ], !dbg !13
  %17 = phi i64 [ 0, %10 ], [ %19, %14 ]
  %18 = icmp ult i64 %15, 4294967294, !dbg !12
  call void @llvm.assume(i1 %18), !dbg !12
  %19 = add i64 %17, mul (i64 vscale, i64 4), !dbg !12
  %20 = getelementptr inbounds i8, i8* %3, i64 %17, !dbg !12
  %21 = bitcast i8* %20 to <n x 4 x i8>*, !dbg !12
  %22 = call <n x 4 x i8> @llvm.masked.load.nxv4i8.p0nxv4i8(<n x 4 x i8>* %21, i32 1, <n x 4 x i1> %16, <n x 4 x i8> undef), !dbg !12, !tbaa !14
  %23 = icmp ne <n x 4 x i8> %22, zeroinitializer, !dbg !12
  %24 = getelementptr inbounds i32, i32* %0, i64 %17, !dbg !18
  %25 = and <n x 4 x i1> %23, %16, !dbg !18
  %26 = bitcast i32* %24 to <n x 4 x i32>*, !dbg !18
  %27 = call <n x 4 x i32> @llvm.masked.load.nxv4i32.p0nxv4i32(<n x 4 x i32>* %26, i32 4, <n x 4 x i1> %25, <n x 4 x i32> undef), !dbg !18, !tbaa !19
  %28 = mul nsw <n x 4 x i32> %27, shufflevector (<n x 4 x i32> insertelement (<n x 4 x i32> undef, i32 18, i32 0), <n x 4 x i32> undef, <n x 4 x i32> zeroinitializer), !dbg !21
  %29 = getelementptr inbounds i32, i32* %2, i64 %17, !dbg !22
  %30 = bitcast i32* %29 to <n x 4 x i32>*, !dbg !22
  %31 = call <n x 4 x i32> @llvm.masked.load.nxv4i32.p0nxv4i32(<n x 4 x i32>* %30, i32 4, <n x 4 x i1> %25, <n x 4 x i32> undef), !dbg !22, !tbaa !19
  %32 = shl <n x 4 x i32> %31, shufflevector (<n x 4 x i32> insertelement (<n x 4 x i32> undef, i32 1, i32 0), <n x 4 x i32> undef, <n x 4 x i32> zeroinitializer), !dbg !23
  %33 = add nsw <n x 4 x i32> %32, %28, !dbg !24
  %34 = getelementptr inbounds i32, i32* %1, i64 %17, !dbg !25
  %35 = bitcast i32* %34 to <n x 4 x i32>*, !dbg !25
  %36 = call <n x 4 x i32> @llvm.masked.load.nxv4i32.p0nxv4i32(<n x 4 x i32>* %35, i32 4, <n x 4 x i1> %25, <n x 4 x i32> undef), !dbg !25, !tbaa !19
  %37 = shl nsw <n x 4 x i32> %27, shufflevector (<n x 4 x i32> insertelement (<n x 4 x i32> undef, i32 2, i32 0), <n x 4 x i32> undef, <n x 4 x i32> zeroinitializer), !dbg !26
  %38 = sub nsw <n x 4 x i32> %36, %37, !dbg !27
  %39 = mul nsw <n x 4 x i32> %33, %38, !dbg !28
  call void @llvm.masked.store.nxv4i32.p0nxv4i32(<n x 4 x i32> %39, <n x 4 x i32>* %26, i32 4, <n x 4 x i1> %25), !dbg !29, !tbaa !19
  %40 = mul nsw <n x 4 x i32> %36, shufflevector (<n x 4 x i32> insertelement (<n x 4 x i32> undef, i32 5, i32 0), <n x 4 x i32> undef, <n x 4 x i32> zeroinitializer), !dbg !30
  %41 = mul nsw <n x 4 x i32> %40, %39, !dbg !31
  call void @llvm.masked.store.nxv4i32.p0nxv4i32(<n x 4 x i32> %41, <n x 4 x i32>* %35, i32 4, <n x 4 x i1> %25), !dbg !32, !tbaa !19
  %42 = shl <n x 4 x i32> %41, shufflevector (<n x 4 x i32> insertelement (<n x 4 x i32> undef, i32 1, i32 0), <n x 4 x i32> undef, <n x 4 x i32> zeroinitializer), !dbg !33
  %43 = mul <n x 4 x i32> %39, shufflevector (<n x 4 x i32> insertelement (<n x 4 x i32> undef, i32 -3, i32 0), <n x 4 x i32> undef, <n x 4 x i32> zeroinitializer), !dbg !34
  %44 = add <n x 4 x i32> %42, %43, !dbg !34
  call void @llvm.masked.store.nxv4i32.p0nxv4i32(<n x 4 x i32> %44, <n x 4 x i32>* %30, i32 4, <n x 4 x i1> %25), !dbg !35, !tbaa !19
  %45 = add nuw i64 %15, mul (i64 vscale, i64 4), !dbg !10
  %46 = insertelement <n x 4 x i64> undef, i64 %45, i32 0, !dbg !10
  %47 = shufflevector <n x 4 x i64> %46, <n x 4 x i64> undef, <n x 4 x i32> zeroinitializer, !dbg !10
  %48 = add nuw <n x 4 x i64> %47, stepvector, !dbg !10
  %49 = icmp ult <n x 4 x i64> %48, %12, !dbg !10
  %50 = extractelement <n x 4 x i1> %49, i64 0, !dbg !10
  br i1 %50, label %14, label %51, !dbg !12, !llvm.loop !36

; <label>:51:                                     ; preds = %14, %75, %5
  ret void, !dbg !40

; <label>:52:                                     ; preds = %7, %75
  %53 = phi i64 [ %76, %75 ], [ 0, %7 ]
  %54 = getelementptr inbounds i8, i8* %3, i64 %53, !dbg !12
  %55 = load i8, i8* %54, align 1, !dbg !12, !tbaa !14, !range !41
  %56 = icmp eq i8 %55, 0, !dbg !12
  br i1 %56, label %75, label %57, !dbg !12

; <label>:57:                                     ; preds = %52
  %58 = getelementptr inbounds i32, i32* %0, i64 %53, !dbg !18
  %59 = load i32, i32* %58, align 4, !dbg !18, !tbaa !19
  %60 = mul nsw i32 %59, 18, !dbg !21
  %61 = getelementptr inbounds i32, i32* %2, i64 %53, !dbg !22
  %62 = load i32, i32* %61, align 4, !dbg !22, !tbaa !19
  %63 = shl i32 %62, 1, !dbg !23
  %64 = add nsw i32 %63, %60, !dbg !24
  %65 = getelementptr inbounds i32, i32* %1, i64 %53, !dbg !25
  %66 = load i32, i32* %65, align 4, !dbg !25, !tbaa !19
  %67 = shl nsw i32 %59, 2, !dbg !26
  %68 = sub nsw i32 %66, %67, !dbg !27
  %69 = mul nsw i32 %64, %68, !dbg !28
  store i32 %69, i32* %58, align 4, !dbg !29, !tbaa !19
  %70 = mul nsw i32 %66, 5, !dbg !30
  %71 = mul nsw i32 %70, %69, !dbg !31
  store i32 %71, i32* %65, align 4, !dbg !32, !tbaa !19
  %72 = shl i32 %71, 1, !dbg !33
  %73 = mul i32 %69, -3, !dbg !34
  %74 = add i32 %72, %73, !dbg !34
  store i32 %74, i32* %61, align 4, !dbg !35, !tbaa !19
  br label %75, !dbg !42

; <label>:75:                                     ; preds = %52, %57
  %76 = add nuw nsw i64 %53, 1, !dbg !13
  %77 = icmp eq i64 %76, %8, !dbg !10
  br i1 %77, label %51, label %52, !dbg !11, !llvm.loop !43
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 !dbg !45 {
  %1 = alloca [8192 x i32], align 4, !dbg !46
  %2 = alloca [8192 x i32], align 4, !dbg !47
  %3 = alloca [8192 x i32], align 4, !dbg !48
  %4 = alloca [8192 x i8], align 1, !dbg !49
  br label %26, !dbg !50

; <label>:5:                                      ; preds = %113, %5
  %6 = phi i64 [ %17, %5 ], [ 0, %113 ], !dbg !51
  %7 = phi <n x 4 x i1> [ %21, %5 ], [ icmp ugt (<n x 4 x i64> shufflevector (<n x 4 x i64> insertelement (<n x 4 x i64> undef, i64 8192, i32 0), <n x 4 x i64> undef, <n x 4 x i32> zeroinitializer), <n x 4 x i64> stepvector), %113 ], !dbg !51
  %8 = phi i64 [ %11, %5 ], [ 0, %113 ]
  %9 = phi <n x 4 x i32> [ %16, %5 ], [ zeroinitializer, %113 ]
  %10 = icmp ult i64 %6, 8191, !dbg !52
  call void @llvm.assume(i1 %10), !dbg !52
  %11 = add i64 %8, mul (i64 vscale, i64 4), !dbg !52
  %12 = getelementptr inbounds [8192 x i32], [8192 x i32]* %3, i64 0, i64 %8, !dbg !52
  %13 = bitcast i32* %12 to <n x 4 x i32>*, !dbg !52
  %14 = call <n x 4 x i32> @llvm.masked.load.nxv4i32.p0nxv4i32(<n x 4 x i32>* %13, i32 4, <n x 4 x i1> %7, <n x 4 x i32> undef), !dbg !52, !tbaa !19
  %15 = select <n x 4 x i1> %7, <n x 4 x i32> %14, <n x 4 x i32> zeroinitializer
  %16 = add nsw <n x 4 x i32> %9, %15
  %17 = add nuw i64 %6, mul (i64 vscale, i64 4), !dbg !53
  %18 = insertelement <n x 4 x i64> undef, i64 %17, i32 0, !dbg !53
  %19 = shufflevector <n x 4 x i64> %18, <n x 4 x i64> undef, <n x 4 x i32> zeroinitializer, !dbg !53
  %20 = add nuw <n x 4 x i64> %19, stepvector, !dbg !53
  %21 = icmp ult <n x 4 x i64> %20, shufflevector (<n x 4 x i64> insertelement (<n x 4 x i64> undef, i64 8192, i32 0), <n x 4 x i64> undef, <n x 4 x i32> zeroinitializer), !dbg !53
  %22 = extractelement <n x 4 x i1> %21, i64 0, !dbg !53
  br i1 %22, label %5, label %23, !dbg !52, !llvm.loop !54

; <label>:23:                                     ; preds = %5
  %24 = call i32 @llvm.experimental.vector.reduce.add.i32.nxv4i32(<n x 4 x i32> %16)
  %25 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %24), !dbg !57
  ret i32 0, !dbg !58

; <label>:26:                                     ; preds = %38, %0
  %27 = phi i32 [ 0, %0 ], [ %111, %38 ]
  %28 = zext i32 %27 to i64, !dbg !59
  %29 = getelementptr inbounds [8192 x i32], [8192 x i32]* %1, i64 0, i64 %28, !dbg !59
  store i32 %27, i32* %29, align 4, !dbg !60, !tbaa !19
  %30 = getelementptr inbounds [8192 x i32], [8192 x i32]* %2, i64 0, i64 %28, !dbg !61
  store i32 2, i32* %30, align 4, !dbg !62, !tbaa !19
  %31 = getelementptr inbounds [8192 x i32], [8192 x i32]* %3, i64 0, i64 %28, !dbg !63
  store i32 0, i32* %31, align 4, !dbg !64, !tbaa !19
  %32 = icmp eq i32 %27, 0, !dbg !65
  br i1 %32, label %38, label %33, !dbg !66

; <label>:33:                                     ; preds = %26
  %34 = trunc i32 %27 to i16
  %35 = urem i16 %34, 10
  %36 = icmp eq i16 %35, 0, !dbg !67
  %37 = zext i1 %36 to i8, !dbg !67
  br label %38, !dbg !66

; <label>:38:                                     ; preds = %26, %33
  %39 = phi i8 [ %37, %33 ], [ 0, %26 ], !dbg !66
  %40 = getelementptr inbounds [8192 x i8], [8192 x i8]* %4, i64 0, i64 %28, !dbg !68
  store i8 %39, i8* %40, align 1, !dbg !69, !tbaa !14
  %41 = or i32 %27, 1, !dbg !70
  %42 = zext i32 %41 to i64, !dbg !59
  %43 = getelementptr inbounds [8192 x i32], [8192 x i32]* %1, i64 0, i64 %42, !dbg !59
  store i32 %41, i32* %43, align 4, !dbg !60, !tbaa !19
  %44 = getelementptr inbounds [8192 x i32], [8192 x i32]* %2, i64 0, i64 %42, !dbg !61
  store i32 2, i32* %44, align 4, !dbg !62, !tbaa !19
  %45 = getelementptr inbounds [8192 x i32], [8192 x i32]* %3, i64 0, i64 %42, !dbg !63
  store i32 0, i32* %45, align 4, !dbg !64, !tbaa !19
  %46 = trunc i32 %41 to i16
  %47 = urem i16 %46, 10
  %48 = icmp eq i16 %47, 0, !dbg !67
  %49 = zext i1 %48 to i8, !dbg !67
  %50 = getelementptr inbounds [8192 x i8], [8192 x i8]* %4, i64 0, i64 %42, !dbg !68
  store i8 %49, i8* %50, align 1, !dbg !69, !tbaa !14
  %51 = or i32 %27, 2, !dbg !70
  %52 = zext i32 %51 to i64, !dbg !59
  %53 = getelementptr inbounds [8192 x i32], [8192 x i32]* %1, i64 0, i64 %52, !dbg !59
  store i32 %51, i32* %53, align 4, !dbg !60, !tbaa !19
  %54 = getelementptr inbounds [8192 x i32], [8192 x i32]* %2, i64 0, i64 %52, !dbg !61
  store i32 2, i32* %54, align 4, !dbg !62, !tbaa !19
  %55 = getelementptr inbounds [8192 x i32], [8192 x i32]* %3, i64 0, i64 %52, !dbg !63
  store i32 0, i32* %55, align 4, !dbg !64, !tbaa !19
  %56 = trunc i32 %51 to i16
  %57 = urem i16 %56, 10
  %58 = icmp eq i16 %57, 0, !dbg !67
  %59 = zext i1 %58 to i8, !dbg !67
  %60 = getelementptr inbounds [8192 x i8], [8192 x i8]* %4, i64 0, i64 %52, !dbg !68
  store i8 %59, i8* %60, align 1, !dbg !69, !tbaa !14
  %61 = or i32 %27, 3, !dbg !70
  %62 = zext i32 %61 to i64, !dbg !59
  %63 = getelementptr inbounds [8192 x i32], [8192 x i32]* %1, i64 0, i64 %62, !dbg !59
  store i32 %61, i32* %63, align 4, !dbg !60, !tbaa !19
  %64 = getelementptr inbounds [8192 x i32], [8192 x i32]* %2, i64 0, i64 %62, !dbg !61
  store i32 2, i32* %64, align 4, !dbg !62, !tbaa !19
  %65 = getelementptr inbounds [8192 x i32], [8192 x i32]* %3, i64 0, i64 %62, !dbg !63
  store i32 0, i32* %65, align 4, !dbg !64, !tbaa !19
  %66 = trunc i32 %61 to i16
  %67 = urem i16 %66, 10
  %68 = icmp eq i16 %67, 0, !dbg !67
  %69 = zext i1 %68 to i8, !dbg !67
  %70 = getelementptr inbounds [8192 x i8], [8192 x i8]* %4, i64 0, i64 %62, !dbg !68
  store i8 %69, i8* %70, align 1, !dbg !69, !tbaa !14
  %71 = or i32 %27, 4, !dbg !70
  %72 = zext i32 %71 to i64, !dbg !59
  %73 = getelementptr inbounds [8192 x i32], [8192 x i32]* %1, i64 0, i64 %72, !dbg !59
  store i32 %71, i32* %73, align 4, !dbg !60, !tbaa !19
  %74 = getelementptr inbounds [8192 x i32], [8192 x i32]* %2, i64 0, i64 %72, !dbg !61
  store i32 2, i32* %74, align 4, !dbg !62, !tbaa !19
  %75 = getelementptr inbounds [8192 x i32], [8192 x i32]* %3, i64 0, i64 %72, !dbg !63
  store i32 0, i32* %75, align 4, !dbg !64, !tbaa !19
  %76 = trunc i32 %71 to i16
  %77 = urem i16 %76, 10
  %78 = icmp eq i16 %77, 0, !dbg !67
  %79 = zext i1 %78 to i8, !dbg !67
  %80 = getelementptr inbounds [8192 x i8], [8192 x i8]* %4, i64 0, i64 %72, !dbg !68
  store i8 %79, i8* %80, align 1, !dbg !69, !tbaa !14
  %81 = or i32 %27, 5, !dbg !70
  %82 = zext i32 %81 to i64, !dbg !59
  %83 = getelementptr inbounds [8192 x i32], [8192 x i32]* %1, i64 0, i64 %82, !dbg !59
  store i32 %81, i32* %83, align 4, !dbg !60, !tbaa !19
  %84 = getelementptr inbounds [8192 x i32], [8192 x i32]* %2, i64 0, i64 %82, !dbg !61
  store i32 2, i32* %84, align 4, !dbg !62, !tbaa !19
  %85 = getelementptr inbounds [8192 x i32], [8192 x i32]* %3, i64 0, i64 %82, !dbg !63
  store i32 0, i32* %85, align 4, !dbg !64, !tbaa !19
  %86 = trunc i32 %81 to i16
  %87 = urem i16 %86, 10
  %88 = icmp eq i16 %87, 0, !dbg !67
  %89 = zext i1 %88 to i8, !dbg !67
  %90 = getelementptr inbounds [8192 x i8], [8192 x i8]* %4, i64 0, i64 %82, !dbg !68
  store i8 %89, i8* %90, align 1, !dbg !69, !tbaa !14
  %91 = or i32 %27, 6, !dbg !70
  %92 = zext i32 %91 to i64, !dbg !59
  %93 = getelementptr inbounds [8192 x i32], [8192 x i32]* %1, i64 0, i64 %92, !dbg !59
  store i32 %91, i32* %93, align 4, !dbg !60, !tbaa !19
  %94 = getelementptr inbounds [8192 x i32], [8192 x i32]* %2, i64 0, i64 %92, !dbg !61
  store i32 2, i32* %94, align 4, !dbg !62, !tbaa !19
  %95 = getelementptr inbounds [8192 x i32], [8192 x i32]* %3, i64 0, i64 %92, !dbg !63
  store i32 0, i32* %95, align 4, !dbg !64, !tbaa !19
  %96 = trunc i32 %91 to i16
  %97 = urem i16 %96, 10
  %98 = icmp eq i16 %97, 0, !dbg !67
  %99 = zext i1 %98 to i8, !dbg !67
  %100 = getelementptr inbounds [8192 x i8], [8192 x i8]* %4, i64 0, i64 %92, !dbg !68
  store i8 %99, i8* %100, align 1, !dbg !69, !tbaa !14
  %101 = or i32 %27, 7, !dbg !70
  %102 = zext i32 %101 to i64, !dbg !59
  %103 = getelementptr inbounds [8192 x i32], [8192 x i32]* %1, i64 0, i64 %102, !dbg !59
  store i32 %101, i32* %103, align 4, !dbg !60, !tbaa !19
  %104 = getelementptr inbounds [8192 x i32], [8192 x i32]* %2, i64 0, i64 %102, !dbg !61
  store i32 2, i32* %104, align 4, !dbg !62, !tbaa !19
  %105 = getelementptr inbounds [8192 x i32], [8192 x i32]* %3, i64 0, i64 %102, !dbg !63
  store i32 0, i32* %105, align 4, !dbg !64, !tbaa !19
  %106 = trunc i32 %101 to i16
  %107 = urem i16 %106, 10
  %108 = icmp eq i16 %107, 0, !dbg !67
  %109 = zext i1 %108 to i8, !dbg !67
  %110 = getelementptr inbounds [8192 x i8], [8192 x i8]* %4, i64 0, i64 %102, !dbg !68
  store i8 %109, i8* %110, align 1, !dbg !69, !tbaa !14
  %111 = add nuw nsw i32 %27, 8, !dbg !70
  %112 = icmp ult i32 %111, 8192, !dbg !71
  br i1 %112, label %26, label %113, !dbg !50, !llvm.loop !72

; <label>:113:                                    ; preds = %38, %113
  %114 = phi i64 [ %144, %113 ], [ 0, %38 ], !dbg !74
  %115 = phi <n x 4 x i1> [ %148, %113 ], [ icmp ugt (<n x 4 x i64> shufflevector (<n x 4 x i64> insertelement (<n x 4 x i64> undef, i64 8192, i32 0), <n x 4 x i64> undef, <n x 4 x i32> zeroinitializer), <n x 4 x i64> stepvector), %38 ], !dbg !74
  %116 = phi i64 [ %118, %113 ], [ 0, %38 ]
  %117 = icmp ult i64 %114, 8191, !dbg !76
  call void @llvm.assume(i1 %117), !dbg !76
  %118 = add i64 %116, mul (i64 vscale, i64 4), !dbg !76
  %119 = getelementptr inbounds [8192 x i8], [8192 x i8]* %4, i64 0, i64 %116, !dbg !76
  %120 = bitcast i8* %119 to <n x 4 x i8>*, !dbg !76
  %121 = call <n x 4 x i8> @llvm.masked.load.nxv4i8.p0nxv4i8(<n x 4 x i8>* %120, i32 1, <n x 4 x i1> %115, <n x 4 x i8> undef), !dbg !76, !tbaa !14, !alias.scope !77, !noalias !80
  %122 = icmp ne <n x 4 x i8> %121, zeroinitializer, !dbg !76
  %123 = getelementptr inbounds [8192 x i32], [8192 x i32]* %1, i64 0, i64 %116, !dbg !84
  %124 = and <n x 4 x i1> %122, %115, !dbg !84
  %125 = bitcast i32* %123 to <n x 4 x i32>*, !dbg !84
  %126 = call <n x 4 x i32> @llvm.masked.load.nxv4i32.p0nxv4i32(<n x 4 x i32>* %125, i32 4, <n x 4 x i1> %124, <n x 4 x i32> undef), !dbg !84, !tbaa !19, !alias.scope !85, !noalias !86
  %127 = mul nsw <n x 4 x i32> %126, shufflevector (<n x 4 x i32> insertelement (<n x 4 x i32> undef, i32 18, i32 0), <n x 4 x i32> undef, <n x 4 x i32> zeroinitializer), !dbg !87
  %128 = getelementptr inbounds [8192 x i32], [8192 x i32]* %3, i64 0, i64 %116, !dbg !88
  %129 = bitcast i32* %128 to <n x 4 x i32>*, !dbg !88
  %130 = call <n x 4 x i32> @llvm.masked.load.nxv4i32.p0nxv4i32(<n x 4 x i32>* %129, i32 4, <n x 4 x i1> %124, <n x 4 x i32> undef), !dbg !88, !tbaa !19, !alias.scope !89, !noalias !90
  %131 = shl <n x 4 x i32> %130, shufflevector (<n x 4 x i32> insertelement (<n x 4 x i32> undef, i32 1, i32 0), <n x 4 x i32> undef, <n x 4 x i32> zeroinitializer), !dbg !91
  %132 = add nsw <n x 4 x i32> %131, %127, !dbg !92
  %133 = getelementptr inbounds [8192 x i32], [8192 x i32]* %2, i64 0, i64 %116, !dbg !93
  %134 = bitcast i32* %133 to <n x 4 x i32>*, !dbg !93
  %135 = call <n x 4 x i32> @llvm.masked.load.nxv4i32.p0nxv4i32(<n x 4 x i32>* %134, i32 4, <n x 4 x i1> %124, <n x 4 x i32> undef), !dbg !93, !tbaa !19, !alias.scope !94, !noalias !95
  %136 = shl nsw <n x 4 x i32> %126, shufflevector (<n x 4 x i32> insertelement (<n x 4 x i32> undef, i32 2, i32 0), <n x 4 x i32> undef, <n x 4 x i32> zeroinitializer), !dbg !96
  %137 = sub nsw <n x 4 x i32> %135, %136, !dbg !97
  %138 = mul nsw <n x 4 x i32> %132, %137, !dbg !98
  call void @llvm.masked.store.nxv4i32.p0nxv4i32(<n x 4 x i32> %138, <n x 4 x i32>* %125, i32 4, <n x 4 x i1> %124), !dbg !99, !tbaa !19, !alias.scope !85, !noalias !86
  %139 = mul nsw <n x 4 x i32> %135, shufflevector (<n x 4 x i32> insertelement (<n x 4 x i32> undef, i32 5, i32 0), <n x 4 x i32> undef, <n x 4 x i32> zeroinitializer), !dbg !100
  %140 = mul nsw <n x 4 x i32> %139, %138, !dbg !101
  call void @llvm.masked.store.nxv4i32.p0nxv4i32(<n x 4 x i32> %140, <n x 4 x i32>* %134, i32 4, <n x 4 x i1> %124), !dbg !102, !tbaa !19, !alias.scope !94, !noalias !95
  %141 = shl <n x 4 x i32> %140, shufflevector (<n x 4 x i32> insertelement (<n x 4 x i32> undef, i32 1, i32 0), <n x 4 x i32> undef, <n x 4 x i32> zeroinitializer), !dbg !103
  %142 = mul <n x 4 x i32> %138, shufflevector (<n x 4 x i32> insertelement (<n x 4 x i32> undef, i32 -3, i32 0), <n x 4 x i32> undef, <n x 4 x i32> zeroinitializer), !dbg !104
  %143 = add <n x 4 x i32> %141, %142, !dbg !104
  call void @llvm.masked.store.nxv4i32.p0nxv4i32(<n x 4 x i32> %143, <n x 4 x i32>* %129, i32 4, <n x 4 x i1> %124), !dbg !105, !tbaa !19, !alias.scope !89, !noalias !90
  %144 = add nuw i64 %114, mul (i64 vscale, i64 4), !dbg !106
  %145 = insertelement <n x 4 x i64> undef, i64 %144, i32 0, !dbg !106
  %146 = shufflevector <n x 4 x i64> %145, <n x 4 x i64> undef, <n x 4 x i32> zeroinitializer, !dbg !106
  %147 = add nuw <n x 4 x i64> %146, stepvector, !dbg !106
  %148 = icmp ult <n x 4 x i64> %147, shufflevector (<n x 4 x i64> insertelement (<n x 4 x i64> undef, i64 8192, i32 0), <n x 4 x i64> undef, <n x 4 x i32> zeroinitializer), !dbg !106
  %149 = extractelement <n x 4 x i1> %148, i64 0, !dbg !106
  br i1 %149, label %113, label %5, !dbg !76, !llvm.loop !107
}

; Function Attrs: nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind readonly
declare <n x 4 x i8> @llvm.masked.load.nxv4i8.p0nxv4i8(<n x 4 x i8>*, i32, <n x 4 x i1>, <n x 4 x i8>) #3

; Function Attrs: argmemonly nounwind readonly
declare <n x 4 x i32> @llvm.masked.load.nxv4i32.p0nxv4i32(<n x 4 x i32>*, i32, <n x 4 x i1>, <n x 4 x i32>) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.masked.store.nxv4i32.p0nxv4i32(<n x 4 x i32>, <n x 4 x i32>*, i32, <n x 4 x i1>) #4

; Function Attrs: nounwind
declare void @llvm.assume(i1) #5

; Function Attrs: nounwind readnone
declare i32 @llvm.experimental.vector.reduce.add.i32.nxv4i32(<n x 4 x i32>) #6

attributes #0 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="a64fx" "target-features"="+crc,+crypto,+fp-armv8,+lse,+neon,+ras,+rdm,+sve,+v8.2a,+v8.3a" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="a64fx" "target-features"="+crc,+crypto,+fp-armv8,+lse,+neon,+ras,+rdm,+sve,+v8.2a,+v8.3a" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="a64fx" "target-features"="+crc,+crypto,+fp-armv8,+lse,+neon,+ras,+rdm,+sve,+v8.2a,+v8.3a" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind readonly }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.compinfo = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang: Fujitsu C/C++ Compiler 4.7.0 (Nov  4 2021 10:55:52) (based on LLVM 7.1.0)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "test.c", directory: "/lustre/home/jlabegalinid")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang: Fujitsu C/C++ Compiler 4.7.0 (Nov  4 2021 10:55:52) (based on LLVM 7.1.0)"}
!7 = !{!"C::clang"}
!8 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 11, type: !9, isLocal: false, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 17, column: 21, scope: !8)
!11 = !DILocation(line: 17, column: 3, scope: !8)
!12 = !DILocation(line: 18, column: 9, scope: !8)
!13 = !DILocation(line: 17, column: 26, scope: !8)
!14 = !{!15, !15, i64 0}
!15 = !{!"_Bool", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !DILocation(line: 19, column: 20, scope: !8)
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !16, i64 0}
!21 = !DILocation(line: 19, column: 18, scope: !8)
!22 = !DILocation(line: 19, column: 31, scope: !8)
!23 = !DILocation(line: 19, column: 29, scope: !8)
!24 = !DILocation(line: 19, column: 25, scope: !8)
!25 = !DILocation(line: 19, column: 40, scope: !8)
!26 = !DILocation(line: 19, column: 49, scope: !8)
!27 = !DILocation(line: 19, column: 45, scope: !8)
!28 = !DILocation(line: 19, column: 37, scope: !8)
!29 = !DILocation(line: 19, column: 12, scope: !8)
!30 = !DILocation(line: 20, column: 16, scope: !8)
!31 = !DILocation(line: 20, column: 23, scope: !8)
!32 = !DILocation(line: 20, column: 12, scope: !8)
!33 = !DILocation(line: 21, column: 16, scope: !8)
!34 = !DILocation(line: 21, column: 23, scope: !8)
!35 = !DILocation(line: 21, column: 12, scope: !8)
!36 = distinct !{!36, !11, !37, !38, !39}
!37 = !DILocation(line: 23, column: 3, scope: !8)
!38 = !{!"llvm.loop.vectorize.width", i32 1}
!39 = !{!"llvm.loop.interleave.count", i32 1}
!40 = !DILocation(line: 27, column: 1, scope: !8)
!41 = !{i8 0, i8 2}
!42 = !DILocation(line: 22, column: 5, scope: !8)
!43 = distinct !{!43, !11, !37, !44, !38, !39}
!44 = !{!"llvm.loop.unroll.runtime.disable"}
!45 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 29, type: !9, isLocal: false, isDefinition: true, scopeLine: 29, isOptimized: true, unit: !0, retainedNodes: !2)
!46 = !DILocation(line: 33, column: 3, scope: !45)
!47 = !DILocation(line: 34, column: 3, scope: !45)
!48 = !DILocation(line: 35, column: 3, scope: !45)
!49 = !DILocation(line: 36, column: 3, scope: !45)
!50 = !DILocation(line: 38, column: 3, scope: !45)
!51 = !DILocation(line: 49, column: 26, scope: !45)
!52 = !DILocation(line: 50, column: 12, scope: !45)
!53 = !DILocation(line: 49, column: 21, scope: !45)
!54 = distinct !{!54, !55, !56, !38, !39}
!55 = !DILocation(line: 49, column: 3, scope: !45)
!56 = !DILocation(line: 51, column: 3, scope: !45)
!57 = !DILocation(line: 53, column: 3, scope: !45)
!58 = !DILocation(line: 56, column: 1, scope: !45)
!59 = !DILocation(line: 39, column: 5, scope: !45)
!60 = !DILocation(line: 39, column: 10, scope: !45)
!61 = !DILocation(line: 40, column: 5, scope: !45)
!62 = !DILocation(line: 40, column: 10, scope: !45)
!63 = !DILocation(line: 41, column: 5, scope: !45)
!64 = !DILocation(line: 41, column: 10, scope: !45)
!65 = !DILocation(line: 42, column: 18, scope: !45)
!66 = !DILocation(line: 42, column: 16, scope: !45)
!67 = !DILocation(line: 42, column: 37, scope: !45)
!68 = !DILocation(line: 42, column: 5, scope: !45)
!69 = !DILocation(line: 42, column: 13, scope: !45)
!70 = !DILocation(line: 38, column: 26, scope: !45)
!71 = !DILocation(line: 38, column: 21, scope: !45)
!72 = distinct !{!72, !50, !73}
!73 = !DILocation(line: 43, column: 3, scope: !45)
!74 = !DILocation(line: 17, column: 26, scope: !8, inlinedAt: !75)
!75 = distinct !DILocation(line: 45, column: 3, scope: !45)
!76 = !DILocation(line: 18, column: 9, scope: !8, inlinedAt: !75)
!77 = !{!78}
!78 = distinct !{!78, !79, !"foo: argument 3"}
!79 = distinct !{!79, !"foo"}
!80 = !{!81, !82, !83}
!81 = distinct !{!81, !79, !"foo: argument 0"}
!82 = distinct !{!82, !79, !"foo: argument 1"}
!83 = distinct !{!83, !79, !"foo: argument 2"}
!84 = !DILocation(line: 19, column: 20, scope: !8, inlinedAt: !75)
!85 = !{!81}
!86 = !{!82, !83, !78}
!87 = !DILocation(line: 19, column: 18, scope: !8, inlinedAt: !75)
!88 = !DILocation(line: 19, column: 31, scope: !8, inlinedAt: !75)
!89 = !{!83}
!90 = !{!81, !82, !78}
!91 = !DILocation(line: 19, column: 29, scope: !8, inlinedAt: !75)
!92 = !DILocation(line: 19, column: 25, scope: !8, inlinedAt: !75)
!93 = !DILocation(line: 19, column: 40, scope: !8, inlinedAt: !75)
!94 = !{!82}
!95 = !{!81, !83, !78}
!96 = !DILocation(line: 19, column: 49, scope: !8, inlinedAt: !75)
!97 = !DILocation(line: 19, column: 45, scope: !8, inlinedAt: !75)
!98 = !DILocation(line: 19, column: 37, scope: !8, inlinedAt: !75)
!99 = !DILocation(line: 19, column: 12, scope: !8, inlinedAt: !75)
!100 = !DILocation(line: 20, column: 16, scope: !8, inlinedAt: !75)
!101 = !DILocation(line: 20, column: 23, scope: !8, inlinedAt: !75)
!102 = !DILocation(line: 20, column: 12, scope: !8, inlinedAt: !75)
!103 = !DILocation(line: 21, column: 16, scope: !8, inlinedAt: !75)
!104 = !DILocation(line: 21, column: 23, scope: !8, inlinedAt: !75)
!105 = !DILocation(line: 21, column: 12, scope: !8, inlinedAt: !75)
!106 = !DILocation(line: 17, column: 21, scope: !8, inlinedAt: !75)
!107 = distinct !{!107, !11, !37, !38, !39}
