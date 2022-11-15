; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1

; Function Attrs: nounwind uwtable vscale_range(0,16)
define dso_local void @foo(i32* noalias nocapture %0, i32* noalias nocapture %1, i32* noalias nocapture %2, i8* noalias nocapture readonly %3, i32 %4) local_unnamed_addr #0 !dbg !12 {
  tail call void @m5_reset_stats(i64 0, i64 0) #8, !dbg !14
  %6 = icmp sgt i32 %4, 0, !dbg !15
  br i1 %6, label %7, label %49, !dbg !16

7:                                                ; preds = %5
  %8 = zext i32 %4 to i64, !dbg !15
  %9 = insertelement <vscale x 4 x i64> poison, i64 %8, i32 0, !dbg !17
  %10 = shufflevector <vscale x 4 x i64> %9, <vscale x 4 x i64> poison, <vscale x 4 x i32> zeroinitializer, !dbg !17
  %11 = icmp ugt <vscale x 4 x i64> %10, stepvector, !dbg !17
  br label %12, !dbg !16

12:                                               ; preds = %12, %7
  %13 = phi i64 [ 0, %7 ], [ %43, %12 ], !dbg !17
  %14 = phi <vscale x 4 x i1> [ %11, %7 ], [ %47, %12 ], !dbg !17
  %15 = phi i64 [ 0, %7 ], [ %16, %12 ]
  %16 = add i64 %15, mul (i64 vscale, i64 4), !dbg !17
  %17 = getelementptr inbounds i8, i8* %3, i64 %15, !dbg !18
  %18 = bitcast i8* %17 to <vscale x 4 x i8>*, !dbg !18
  %19 = call <vscale x 4 x i8> @llvm.masked.load.nxv4i8.p0nxv4i8(<vscale x 4 x i8>* %18, i32 1, <vscale x 4 x i1> %14, <vscale x 4 x i8> undef), !dbg !18, !tbaa !19
  %20 = icmp ne <vscale x 4 x i8> %19, zeroinitializer, !dbg !18
  %21 = getelementptr inbounds i32, i32* %0, i64 %15, !dbg !23
  %22 = and <vscale x 4 x i1> %20, %14, !dbg !23
  %23 = bitcast i32* %21 to <vscale x 4 x i32>*, !dbg !23
  %24 = call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0nxv4i32(<vscale x 4 x i32>* %23, i32 4, <vscale x 4 x i1> %22, <vscale x 4 x i32> undef), !dbg !23, !tbaa !24
  %25 = mul nsw <vscale x 4 x i32> %24, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 18, i32 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer), !dbg !26
  %26 = getelementptr inbounds i32, i32* %2, i64 %15, !dbg !27
  %27 = bitcast i32* %26 to <vscale x 4 x i32>*, !dbg !27
  %28 = call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0nxv4i32(<vscale x 4 x i32>* %27, i32 4, <vscale x 4 x i1> %22, <vscale x 4 x i32> undef), !dbg !27, !tbaa !24
  %29 = shl nsw <vscale x 4 x i32> %28, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 1, i32 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer), !dbg !28
  %30 = add nsw <vscale x 4 x i32> %29, %25, !dbg !29
  %31 = getelementptr inbounds i32, i32* %1, i64 %15, !dbg !30
  %32 = bitcast i32* %31 to <vscale x 4 x i32>*, !dbg !30
  %33 = call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0nxv4i32(<vscale x 4 x i32>* %32, i32 4, <vscale x 4 x i1> %22, <vscale x 4 x i32> undef), !dbg !30, !tbaa !24
  %34 = mul <vscale x 4 x i32> %24, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 -4, i32 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer), !dbg !31
  %35 = add <vscale x 4 x i32> %33, %34, !dbg !32
  %36 = mul nsw <vscale x 4 x i32> %30, %35, !dbg !33
  call void @llvm.masked.store.nxv4i32.p0nxv4i32(<vscale x 4 x i32> %36, <vscale x 4 x i32>* %23, i32 4, <vscale x 4 x i1> %22), !dbg !34, !tbaa !24
  %37 = mul nsw <vscale x 4 x i32> %33, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 5, i32 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer), !dbg !35
  %38 = mul nsw <vscale x 4 x i32> %37, %36, !dbg !36
  call void @llvm.masked.store.nxv4i32.p0nxv4i32(<vscale x 4 x i32> %38, <vscale x 4 x i32>* %32, i32 4, <vscale x 4 x i1> %22), !dbg !37, !tbaa !24
  %39 = shl nsw <vscale x 4 x i32> %38, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 1, i32 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer), !dbg !38
  %40 = mul <vscale x 4 x i32> %36, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 -3, i32 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer), !dbg !39
  %41 = add <vscale x 4 x i32> %39, %40, !dbg !40
  call void @llvm.masked.store.nxv4i32.p0nxv4i32(<vscale x 4 x i32> %41, <vscale x 4 x i32>* %27, i32 4, <vscale x 4 x i1> %22), !dbg !41, !tbaa !24
  %42 = icmp ult i64 %13, 2147483647, !dbg !17
  call void @llvm.assume(i1 %42), !dbg !17
  %43 = add nuw i64 %13, mul (i64 vscale, i64 4), !dbg !17
  %44 = insertelement <vscale x 4 x i64> poison, i64 %43, i32 0, !dbg !17
  %45 = shufflevector <vscale x 4 x i64> %44, <vscale x 4 x i64> poison, <vscale x 4 x i32> zeroinitializer, !dbg !17
  %46 = add nuw <vscale x 4 x i64> %45, stepvector, !dbg !17
  %47 = icmp ult <vscale x 4 x i64> %46, %10, !dbg !17
  %48 = extractelement <vscale x 4 x i1> %47, i64 0, !dbg !17
  br i1 %48, label %12, label %49, !dbg !16, !llvm.loop !42

49:                                               ; preds = %12, %5
  tail call void @m5_dump_stats(i64 0, i64 0) #8, !dbg !45
  ret void, !dbg !46
}

declare dso_local void @m5_reset_stats(i64, i64) local_unnamed_addr #1

declare dso_local void @m5_dump_stats(i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable vscale_range(0,16)
define dso_local i32 @main() local_unnamed_addr #0 !dbg !47 {
  %1 = alloca [8192 x i32], align 4, !dbg !48
  %2 = alloca [8192 x i32], align 4, !dbg !49
  %3 = alloca [8192 x i32], align 4, !dbg !50
  %4 = bitcast [8192 x i32]* %3 to i8*, !dbg !51
  %5 = alloca [8192 x i8], align 4, !dbg !51
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(32768) %4, i8 0, i64 32768, i1 false), !dbg !52
  %6 = getelementptr inbounds [8192 x i32], [8192 x i32]* %1, i64 0, i64 0, !dbg !53
  store i32 0, i32* %6, align 4, !dbg !54, !tbaa !24
  %7 = getelementptr inbounds [8192 x i32], [8192 x i32]* %2, i64 0, i64 0, !dbg !55
  store i32 2, i32* %7, align 4, !dbg !56, !tbaa !24
  %8 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0, !dbg !57
  store i8 0, i8* %8, align 4, !dbg !58, !tbaa !19
  br label %9, !dbg !59

9:                                                ; preds = %9, %0
  %10 = phi i64 [ 0, %0 ], [ %32, %9 ]
  %11 = phi <vscale x 4 x i1> [ icmp ugt (<vscale x 4 x i64> shufflevector (<vscale x 4 x i64> insertelement (<vscale x 4 x i64> poison, i64 8191, i32 0), <vscale x 4 x i64> poison, <vscale x 4 x i32> zeroinitializer), <vscale x 4 x i64> stepvector), %0 ], [ %36, %9 ]
  %12 = or i64 %10, 1
  %13 = trunc i64 %10 to i16
  %14 = or i16 %13, 1
  %15 = trunc i64 %12 to i32, !dbg !54
  %16 = insertelement <vscale x 4 x i32> undef, i32 %15, i32 0, !dbg !54
  %17 = shufflevector <vscale x 4 x i32> %16, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer, !dbg !54
  %18 = add <vscale x 4 x i32> %17, stepvector, !dbg !54
  %19 = getelementptr inbounds [8192 x i32], [8192 x i32]* %1, i64 0, i64 %12, !dbg !53
  %20 = bitcast i32* %19 to <vscale x 4 x i32>*, !dbg !54
  call void @llvm.masked.store.nxv4i32.p0nxv4i32(<vscale x 4 x i32> %18, <vscale x 4 x i32>* %20, i32 4, <vscale x 4 x i1> %11), !dbg !54, !tbaa !24
  %21 = getelementptr inbounds [8192 x i32], [8192 x i32]* %2, i64 0, i64 %12, !dbg !55
  %22 = bitcast i32* %21 to <vscale x 4 x i32>*, !dbg !56
  call void @llvm.masked.store.nxv4i32.p0nxv4i32(<vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 2, i32 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer), <vscale x 4 x i32>* %22, i32 4, <vscale x 4 x i1> %11), !dbg !56, !tbaa !24
  %23 = insertelement <vscale x 4 x i16> undef, i16 %14, i32 0, !dbg !60
  %24 = shufflevector <vscale x 4 x i16> %23, <vscale x 4 x i16> undef, <vscale x 4 x i32> zeroinitializer, !dbg !60
  %25 = add <vscale x 4 x i16> %24, stepvector, !dbg !60
  %26 = urem <vscale x 4 x i16> %25, shufflevector (<vscale x 4 x i16> insertelement (<vscale x 4 x i16> poison, i16 10, i32 0), <vscale x 4 x i16> poison, <vscale x 4 x i32> zeroinitializer), !dbg !60
  %27 = icmp eq <vscale x 4 x i16> %26, zeroinitializer, !dbg !61
  %28 = zext <vscale x 4 x i1> %27 to <vscale x 4 x i8>, !dbg !61
  %29 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 %12, !dbg !57
  %30 = bitcast i8* %29 to <vscale x 4 x i8>*, !dbg !58
  call void @llvm.masked.store.nxv4i8.p0nxv4i8(<vscale x 4 x i8> %28, <vscale x 4 x i8>* %30, i32 1, <vscale x 4 x i1> %11), !dbg !58, !tbaa !19
  %31 = icmp ult i64 %10, 8191
  call void @llvm.assume(i1 %31)
  %32 = add nuw i64 %10, mul (i64 vscale, i64 4)
  %33 = insertelement <vscale x 4 x i64> poison, i64 %32, i32 0
  %34 = shufflevector <vscale x 4 x i64> %33, <vscale x 4 x i64> poison, <vscale x 4 x i32> zeroinitializer
  %35 = add nuw <vscale x 4 x i64> %34, stepvector
  %36 = icmp ult <vscale x 4 x i64> %35, shufflevector (<vscale x 4 x i64> insertelement (<vscale x 4 x i64> poison, i64 8191, i32 0), <vscale x 4 x i64> poison, <vscale x 4 x i32> zeroinitializer)
  %37 = extractelement <vscale x 4 x i1> %36, i64 0
  br i1 %37, label %9, label %38, !dbg !59, !llvm.loop !62

38:                                               ; preds = %9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63), !dbg !66
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67), !dbg !66
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69), !dbg !66
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71), !dbg !66
  tail call void @m5_reset_stats(i64 0, i64 0) #8, !dbg !73, !noalias !75
  br label %39, !dbg !76

39:                                               ; preds = %39, %38
  %40 = phi i64 [ 0, %38 ], [ %70, %39 ], !dbg !77
  %41 = phi <vscale x 4 x i1> [ icmp ugt (<vscale x 4 x i64> shufflevector (<vscale x 4 x i64> insertelement (<vscale x 4 x i64> poison, i64 8192, i32 0), <vscale x 4 x i64> poison, <vscale x 4 x i32> zeroinitializer), <vscale x 4 x i64> stepvector), %38 ], [ %74, %39 ], !dbg !77
  %42 = phi i64 [ 0, %38 ], [ %43, %39 ]
  %43 = add i64 %42, mul (i64 vscale, i64 4), !dbg !77
  %44 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 %42, !dbg !78
  %45 = bitcast i8* %44 to <vscale x 4 x i8>*, !dbg !78
  %46 = call <vscale x 4 x i8> @llvm.masked.load.nxv4i8.p0nxv4i8(<vscale x 4 x i8>* nonnull %45, i32 1, <vscale x 4 x i1> %41, <vscale x 4 x i8> undef), !dbg !78, !tbaa !19, !alias.scope !71, !noalias !79
  %47 = icmp ne <vscale x 4 x i8> %46, zeroinitializer, !dbg !78
  %48 = getelementptr inbounds [8192 x i32], [8192 x i32]* %1, i64 0, i64 %42, !dbg !80
  %49 = and <vscale x 4 x i1> %47, %41, !dbg !80
  %50 = bitcast i32* %48 to <vscale x 4 x i32>*, !dbg !80
  %51 = call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0nxv4i32(<vscale x 4 x i32>* nonnull %50, i32 4, <vscale x 4 x i1> %49, <vscale x 4 x i32> undef), !dbg !80, !tbaa !24, !alias.scope !63, !noalias !81
  %52 = mul nsw <vscale x 4 x i32> %51, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 18, i32 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer), !dbg !82
  %53 = getelementptr inbounds [8192 x i32], [8192 x i32]* %3, i64 0, i64 %42, !dbg !83
  %54 = bitcast i32* %53 to <vscale x 4 x i32>*, !dbg !83
  %55 = call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0nxv4i32(<vscale x 4 x i32>* nonnull %54, i32 4, <vscale x 4 x i1> %49, <vscale x 4 x i32> undef), !dbg !83, !tbaa !24, !alias.scope !69, !noalias !84
  %56 = shl nsw <vscale x 4 x i32> %55, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 1, i32 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer), !dbg !85
  %57 = add nsw <vscale x 4 x i32> %56, %52, !dbg !86
  %58 = getelementptr inbounds [8192 x i32], [8192 x i32]* %2, i64 0, i64 %42, !dbg !87
  %59 = bitcast i32* %58 to <vscale x 4 x i32>*, !dbg !87
  %60 = call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0nxv4i32(<vscale x 4 x i32>* nonnull %59, i32 4, <vscale x 4 x i1> %49, <vscale x 4 x i32> undef), !dbg !87, !tbaa !24, !alias.scope !67, !noalias !88
  %61 = mul <vscale x 4 x i32> %51, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 -4, i32 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer), !dbg !89
  %62 = add <vscale x 4 x i32> %60, %61, !dbg !90
  %63 = mul nsw <vscale x 4 x i32> %57, %62, !dbg !91
  call void @llvm.masked.store.nxv4i32.p0nxv4i32(<vscale x 4 x i32> %63, <vscale x 4 x i32>* %50, i32 4, <vscale x 4 x i1> %49), !dbg !92, !tbaa !24, !alias.scope !63, !noalias !81
  %64 = mul nsw <vscale x 4 x i32> %60, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 5, i32 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer), !dbg !93
  %65 = mul nsw <vscale x 4 x i32> %64, %63, !dbg !94
  call void @llvm.masked.store.nxv4i32.p0nxv4i32(<vscale x 4 x i32> %65, <vscale x 4 x i32>* %59, i32 4, <vscale x 4 x i1> %49), !dbg !95, !tbaa !24, !alias.scope !67, !noalias !88
  %66 = shl nsw <vscale x 4 x i32> %65, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 1, i32 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer), !dbg !96
  %67 = mul <vscale x 4 x i32> %63, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 -3, i32 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer), !dbg !97
  %68 = add <vscale x 4 x i32> %66, %67, !dbg !98
  call void @llvm.masked.store.nxv4i32.p0nxv4i32(<vscale x 4 x i32> %68, <vscale x 4 x i32>* %54, i32 4, <vscale x 4 x i1> %49), !dbg !99, !tbaa !24, !alias.scope !69, !noalias !84
  %69 = icmp ult i64 %40, 8192, !dbg !77
  call void @llvm.assume(i1 %69), !dbg !77
  %70 = add nuw i64 %40, mul (i64 vscale, i64 4), !dbg !77
  %71 = insertelement <vscale x 4 x i64> poison, i64 %70, i32 0, !dbg !77
  %72 = shufflevector <vscale x 4 x i64> %71, <vscale x 4 x i64> poison, <vscale x 4 x i32> zeroinitializer, !dbg !77
  %73 = add nuw <vscale x 4 x i64> %72, stepvector, !dbg !77
  %74 = icmp ult <vscale x 4 x i64> %73, shufflevector (<vscale x 4 x i64> insertelement (<vscale x 4 x i64> poison, i64 8192, i32 0), <vscale x 4 x i64> poison, <vscale x 4 x i32> zeroinitializer), !dbg !77
  %75 = extractelement <vscale x 4 x i1> %74, i64 0, !dbg !77
  br i1 %75, label %39, label %76, !dbg !76, !llvm.loop !100

76:                                               ; preds = %39
  tail call void @m5_dump_stats(i64 0, i64 0) #8, !dbg !101, !noalias !75
  br label %77, !dbg !102

77:                                               ; preds = %77, %76
  %78 = phi i64 [ 0, %76 ], [ %88, %77 ], !dbg !103
  %79 = phi <vscale x 4 x i1> [ icmp ugt (<vscale x 4 x i64> shufflevector (<vscale x 4 x i64> insertelement (<vscale x 4 x i64> poison, i64 8192, i32 0), <vscale x 4 x i64> poison, <vscale x 4 x i32> zeroinitializer), <vscale x 4 x i64> stepvector), %76 ], [ %92, %77 ], !dbg !103
  %80 = phi i64 [ 0, %76 ], [ %82, %77 ]
  %81 = phi <vscale x 4 x i32> [ zeroinitializer, %76 ], [ %86, %77 ]
  %82 = add i64 %80, mul (i64 vscale, i64 4), !dbg !103
  %83 = getelementptr inbounds [8192 x i32], [8192 x i32]* %3, i64 0, i64 %80, !dbg !104
  %84 = bitcast i32* %83 to <vscale x 4 x i32>*, !dbg !104
  %85 = call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0nxv4i32(<vscale x 4 x i32>* nonnull %84, i32 4, <vscale x 4 x i1> %79, <vscale x 4 x i32> zeroinitializer), !dbg !104, !tbaa !24
  %86 = add nsw <vscale x 4 x i32> %81, %85
  %87 = icmp ult i64 %78, 8192, !dbg !103
  call void @llvm.assume(i1 %87), !dbg !103
  %88 = add nuw i64 %78, mul (i64 vscale, i64 4), !dbg !103
  %89 = insertelement <vscale x 4 x i64> poison, i64 %88, i32 0, !dbg !103
  %90 = shufflevector <vscale x 4 x i64> %89, <vscale x 4 x i64> poison, <vscale x 4 x i32> zeroinitializer, !dbg !103
  %91 = add nuw <vscale x 4 x i64> %90, stepvector, !dbg !103
  %92 = icmp ult <vscale x 4 x i64> %91, shufflevector (<vscale x 4 x i64> insertelement (<vscale x 4 x i64> poison, i64 8192, i32 0), <vscale x 4 x i64> poison, <vscale x 4 x i32> zeroinitializer), !dbg !103
  %93 = extractelement <vscale x 4 x i1> %92, i64 0, !dbg !103
  br i1 %93, label %77, label %94, !dbg !102, !llvm.loop !105

94:                                               ; preds = %77
  %95 = call i32 @llvm.vector.reduce.add.nxv4i32(<vscale x 4 x i32> %86)
  %96 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %95), !dbg !106
  ret i32 0, !dbg !107
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: argmemonly nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i8> @llvm.masked.load.nxv4i8.p0nxv4i8(<vscale x 4 x i8>*, i32 immarg, <vscale x 4 x i1>, <vscale x 4 x i8>) #5

; Function Attrs: argmemonly nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0nxv4i32(<vscale x 4 x i32>*, i32 immarg, <vscale x 4 x i1>, <vscale x 4 x i32>) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.nxv4i32.p0nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i32>*, i32 immarg, <vscale x 4 x i1>) #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.nxv4i8.p0nxv4i8(<vscale x 4 x i8>, <vscale x 4 x i8>*, i32 immarg, <vscale x 4 x i1>) #6

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.nxv4i32(<vscale x 4 x i32>) #7

attributes #0 = { nounwind uwtable vscale_range(0,16) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+sve,+v8.2a" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+sve,+v8.2a" }
attributes #2 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+sve,+v8.2a" }
attributes #3 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nosync nounwind readonly willreturn }
attributes #6 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #7 = { nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Arm C/C++/Fortran Compiler version 22.0.2 (build number 1776) (based on LLVM 13.0.0)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "test.c", directory: "/home/arm")
!2 = !{}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 1, !"branch-target-enforcement", i32 0}
!6 = !{i32 1, !"sign-return-address", i32 0}
!7 = !{i32 1, !"sign-return-address-all", i32 0}
!8 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 1}
!11 = !{!"Arm C/C++/Fortran Compiler version 22.0.2 (build number 1776) (based on LLVM 13.0.0)"}
!12 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 11, type: !13, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!13 = !DISubroutineType(types: !2)
!14 = !DILocation(line: 16, column: 3, scope: !12)
!15 = !DILocation(line: 17, column: 21, scope: !12)
!16 = !DILocation(line: 17, column: 3, scope: !12)
!17 = !DILocation(line: 17, column: 26, scope: !12)
!18 = !DILocation(line: 18, column: 9, scope: !12)
!19 = !{!20, !20, i64 0}
!20 = !{!"_Bool", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !DILocation(line: 19, column: 20, scope: !12)
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !21, i64 0}
!26 = !DILocation(line: 19, column: 18, scope: !12)
!27 = !DILocation(line: 19, column: 31, scope: !12)
!28 = !DILocation(line: 19, column: 29, scope: !12)
!29 = !DILocation(line: 19, column: 25, scope: !12)
!30 = !DILocation(line: 19, column: 40, scope: !12)
!31 = !DILocation(line: 19, column: 49, scope: !12)
!32 = !DILocation(line: 19, column: 45, scope: !12)
!33 = !DILocation(line: 19, column: 37, scope: !12)
!34 = !DILocation(line: 19, column: 12, scope: !12)
!35 = !DILocation(line: 20, column: 16, scope: !12)
!36 = !DILocation(line: 20, column: 23, scope: !12)
!37 = !DILocation(line: 20, column: 12, scope: !12)
!38 = !DILocation(line: 21, column: 16, scope: !12)
!39 = !DILocation(line: 21, column: 27, scope: !12)
!40 = !DILocation(line: 21, column: 23, scope: !12)
!41 = !DILocation(line: 21, column: 12, scope: !12)
!42 = distinct !{!42, !43, !44}
!43 = !{!"llvm.loop.vectorize.width", i32 1}
!44 = !{!"llvm.loop.interleave.count", i32 1}
!45 = !DILocation(line: 24, column: 3, scope: !12)
!46 = !DILocation(line: 27, column: 1, scope: !12)
!47 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 29, type: !13, scopeLine: 29, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!48 = !DILocation(line: 33, column: 3, scope: !47)
!49 = !DILocation(line: 34, column: 3, scope: !47)
!50 = !DILocation(line: 35, column: 3, scope: !47)
!51 = !DILocation(line: 36, column: 3, scope: !47)
!52 = !DILocation(line: 41, column: 10, scope: !47)
!53 = !DILocation(line: 39, column: 5, scope: !47)
!54 = !DILocation(line: 39, column: 10, scope: !47)
!55 = !DILocation(line: 40, column: 5, scope: !47)
!56 = !DILocation(line: 40, column: 10, scope: !47)
!57 = !DILocation(line: 42, column: 5, scope: !47)
!58 = !DILocation(line: 42, column: 13, scope: !47)
!59 = !DILocation(line: 38, column: 3, scope: !47)
!60 = !DILocation(line: 42, column: 32, scope: !47)
!61 = !DILocation(line: 42, column: 37, scope: !47)
!62 = distinct !{!62, !43, !44}
!63 = !{!64}
!64 = distinct !{!64, !65, !"foo: argument 0"}
!65 = distinct !{!65, !"foo"}
!66 = !DILocation(line: 45, column: 3, scope: !47)
!67 = !{!68}
!68 = distinct !{!68, !65, !"foo: argument 1"}
!69 = !{!70}
!70 = distinct !{!70, !65, !"foo: argument 2"}
!71 = !{!72}
!72 = distinct !{!72, !65, !"foo: argument 3"}
!73 = !DILocation(line: 16, column: 3, scope: !12, inlinedAt: !74)
!74 = distinct !DILocation(line: 45, column: 3, scope: !47)
!75 = !{!64, !68, !70, !72}
!76 = !DILocation(line: 17, column: 3, scope: !12, inlinedAt: !74)
!77 = !DILocation(line: 17, column: 26, scope: !12, inlinedAt: !74)
!78 = !DILocation(line: 18, column: 9, scope: !12, inlinedAt: !74)
!79 = !{!64, !68, !70}
!80 = !DILocation(line: 19, column: 20, scope: !12, inlinedAt: !74)
!81 = !{!68, !70, !72}
!82 = !DILocation(line: 19, column: 18, scope: !12, inlinedAt: !74)
!83 = !DILocation(line: 19, column: 31, scope: !12, inlinedAt: !74)
!84 = !{!64, !68, !72}
!85 = !DILocation(line: 19, column: 29, scope: !12, inlinedAt: !74)
!86 = !DILocation(line: 19, column: 25, scope: !12, inlinedAt: !74)
!87 = !DILocation(line: 19, column: 40, scope: !12, inlinedAt: !74)
!88 = !{!64, !70, !72}
!89 = !DILocation(line: 19, column: 49, scope: !12, inlinedAt: !74)
!90 = !DILocation(line: 19, column: 45, scope: !12, inlinedAt: !74)
!91 = !DILocation(line: 19, column: 37, scope: !12, inlinedAt: !74)
!92 = !DILocation(line: 19, column: 12, scope: !12, inlinedAt: !74)
!93 = !DILocation(line: 20, column: 16, scope: !12, inlinedAt: !74)
!94 = !DILocation(line: 20, column: 23, scope: !12, inlinedAt: !74)
!95 = !DILocation(line: 20, column: 12, scope: !12, inlinedAt: !74)
!96 = !DILocation(line: 21, column: 16, scope: !12, inlinedAt: !74)
!97 = !DILocation(line: 21, column: 27, scope: !12, inlinedAt: !74)
!98 = !DILocation(line: 21, column: 23, scope: !12, inlinedAt: !74)
!99 = !DILocation(line: 21, column: 12, scope: !12, inlinedAt: !74)
!100 = distinct !{!100, !43, !44}
!101 = !DILocation(line: 24, column: 3, scope: !12, inlinedAt: !74)
!102 = !DILocation(line: 49, column: 3, scope: !47)
!103 = !DILocation(line: 49, column: 26, scope: !47)
!104 = !DILocation(line: 50, column: 12, scope: !47)
!105 = distinct !{!105, !43, !44}
!106 = !DILocation(line: 53, column: 3, scope: !47)
!107 = !DILocation(line: 56, column: 1, scope: !47)
