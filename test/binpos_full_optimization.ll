; ModuleID = 'binpos.c'
source_filename = "binpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [40 x i8] c"Couldn't read magic number from BINPOS\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fxyz\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"bad magic number \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"malloc error in binpos\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Could only read %d of %d atoms requested\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @readbinposhdr(%struct._IO_FILE* nocapture %0) local_unnamed_addr #0 !dbg !78 {
  %2 = alloca [10 x i8], align 1
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !85, metadata !DIExpression()), !dbg !90
  %3 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !91
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %3) #8, !dbg !91
  call void @llvm.dbg.declare(metadata [10 x i8]* %2, metadata !86, metadata !DIExpression()), !dbg !92
  %4 = call i64 @fread(i8* nonnull %3, i64 1, i64 4, %struct._IO_FILE* %0), !dbg !93
  %5 = icmp eq i64 %4, 4, !dbg !95
  br i1 %5, label %9, label %6, !dbg !96

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !97, !tbaa !99
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %7) #9, !dbg !103
  tail call void @exit(i32 -1) #10, !dbg !104
  unreachable, !dbg !104

9:                                                ; preds = %1
  %10 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 4, !dbg !105
  store i8 0, i8* %10, align 1, !dbg !106, !tbaa !107
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(5) %3, i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 5), !dbg !108
  %12 = icmp eq i32 %11, 0, !dbg !110
  br i1 %12, label %16, label %13, !dbg !111

13:                                               ; preds = %9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !112, !tbaa !99
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* nonnull %3) #9, !dbg !114
  call void @exit(i32 -1) #10, !dbg !115
  unreachable, !dbg !115

16:                                               ; preds = %9
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %3) #8, !dbg !116
  ret i32 0, !dbg !117
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind
declare dso_local i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @readbinposfrm(i32 %0, double* nocapture %1, %struct._IO_FILE* nocapture %2) local_unnamed_addr #0 !dbg !118 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !124, metadata !DIExpression()), !dbg !130
  store i32 %0, i32* %4, align 4, !tbaa !131
  call void @llvm.dbg.value(metadata double* %1, metadata !125, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !126, metadata !DIExpression()), !dbg !130
  %5 = bitcast i32* %4 to i8*, !dbg !133
  call void @llvm.dbg.value(metadata i32* %4, metadata !124, metadata !DIExpression(DW_OP_deref)), !dbg !130
  %6 = call i64 @fread(i8* nonnull %5, i64 4, i64 1, %struct._IO_FILE* %2), !dbg !135
  %7 = icmp eq i64 %6, 1, !dbg !136
  br i1 %7, label %8, label %102, !dbg !137

8:                                                ; preds = %3
  %9 = load i32, i32* %4, align 4, !dbg !138, !tbaa !131
  call void @llvm.dbg.value(metadata i32 %9, metadata !124, metadata !DIExpression()), !dbg !130
  %10 = mul nsw i32 %9, 3, !dbg !139
  %11 = sext i32 %10 to i64, !dbg !140
  %12 = shl nsw i64 %11, 2, !dbg !141
  %13 = tail call noalias i8* @malloc(i64 %12) #8, !dbg !142
  %14 = bitcast i8* %13 to float*, !dbg !143
  call void @llvm.dbg.value(metadata float* %14, metadata !129, metadata !DIExpression()), !dbg !130
  %15 = icmp eq i8* %13, null, !dbg !144
  br i1 %15, label %16, label %19, !dbg !146

16:                                               ; preds = %8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !147, !tbaa !99
  %18 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %17) #9, !dbg !149
  tail call void @exit(i32 1) #10, !dbg !150
  unreachable, !dbg !150

19:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i32 %9, metadata !124, metadata !DIExpression()), !dbg !130
  %20 = tail call i64 @fread(i8* nonnull %13, i64 4, i64 %11, %struct._IO_FILE* %2), !dbg !151
  %21 = trunc i64 %20 to i32, !dbg !151
  call void @llvm.dbg.value(metadata i32 %21, metadata !127, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.value(metadata i32 %9, metadata !124, metadata !DIExpression()), !dbg !130
  %22 = icmp eq i32 %10, %21, !dbg !153
  br i1 %22, label %23, label %89, !dbg !154

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 0, metadata !128, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.value(metadata i32 %9, metadata !124, metadata !DIExpression()), !dbg !130
  %24 = icmp sgt i32 %9, 0, !dbg !155
  br i1 %24, label %25, label %101, !dbg !158

25:                                               ; preds = %23
  %26 = icmp sgt i64 %11, 1, !dbg !158
  %27 = select i1 %26, i64 %11, i64 1, !dbg !158
  %28 = icmp ult i64 %27, 4, !dbg !158
  br i1 %28, label %29, label %31, !dbg !158

29:                                               ; preds = %87, %25
  %30 = phi i64 [ 0, %25 ], [ %32, %87 ]
  br label %93, !dbg !158

31:                                               ; preds = %25
  %32 = and i64 %27, 9223372036854775804, !dbg !158
  %33 = add nsw i64 %32, -4, !dbg !158
  %34 = lshr exact i64 %33, 2, !dbg !158
  %35 = add nuw nsw i64 %34, 1, !dbg !158
  %36 = and i64 %35, 1, !dbg !158
  %37 = icmp eq i64 %33, 0, !dbg !158
  br i1 %37, label %71, label %38, !dbg !158

38:                                               ; preds = %31
  %39 = sub nuw nsw i64 %35, %36, !dbg !158
  br label %40, !dbg !158

40:                                               ; preds = %40, %38
  %41 = phi i64 [ 0, %38 ], [ %68, %40 ], !dbg !159
  %42 = phi i64 [ %39, %38 ], [ %69, %40 ]
  %43 = getelementptr inbounds float, float* %14, i64 %41, !dbg !160
  %44 = bitcast float* %43 to <2 x float>*, !dbg !160
  %45 = load <2 x float>, <2 x float>* %44, align 4, !dbg !160, !tbaa !162
  %46 = getelementptr inbounds float, float* %43, i64 2, !dbg !160
  %47 = bitcast float* %46 to <2 x float>*, !dbg !160
  %48 = load <2 x float>, <2 x float>* %47, align 4, !dbg !160, !tbaa !162
  %49 = fpext <2 x float> %45 to <2 x double>, !dbg !160
  %50 = fpext <2 x float> %48 to <2 x double>, !dbg !160
  %51 = getelementptr inbounds double, double* %1, i64 %41, !dbg !164
  %52 = bitcast double* %51 to <2 x double>*, !dbg !165
  store <2 x double> %49, <2 x double>* %52, align 8, !dbg !165, !tbaa !166
  %53 = getelementptr inbounds double, double* %51, i64 2, !dbg !165
  %54 = bitcast double* %53 to <2 x double>*, !dbg !165
  store <2 x double> %50, <2 x double>* %54, align 8, !dbg !165, !tbaa !166
  %55 = or i64 %41, 4, !dbg !159
  %56 = getelementptr inbounds float, float* %14, i64 %55, !dbg !160
  %57 = bitcast float* %56 to <2 x float>*, !dbg !160
  %58 = load <2 x float>, <2 x float>* %57, align 4, !dbg !160, !tbaa !162
  %59 = getelementptr inbounds float, float* %56, i64 2, !dbg !160
  %60 = bitcast float* %59 to <2 x float>*, !dbg !160
  %61 = load <2 x float>, <2 x float>* %60, align 4, !dbg !160, !tbaa !162
  %62 = fpext <2 x float> %58 to <2 x double>, !dbg !160
  %63 = fpext <2 x float> %61 to <2 x double>, !dbg !160
  %64 = getelementptr inbounds double, double* %1, i64 %55, !dbg !164
  %65 = bitcast double* %64 to <2 x double>*, !dbg !165
  store <2 x double> %62, <2 x double>* %65, align 8, !dbg !165, !tbaa !166
  %66 = getelementptr inbounds double, double* %64, i64 2, !dbg !165
  %67 = bitcast double* %66 to <2 x double>*, !dbg !165
  store <2 x double> %63, <2 x double>* %67, align 8, !dbg !165, !tbaa !166
  %68 = add i64 %41, 8, !dbg !159
  %69 = add i64 %42, -2, !dbg !159
  %70 = icmp eq i64 %69, 0, !dbg !159
  br i1 %70, label %71, label %40, !dbg !159, !llvm.loop !168

71:                                               ; preds = %40, %31
  %72 = phi i64 [ 0, %31 ], [ %68, %40 ]
  %73 = icmp eq i64 %36, 0, !dbg !159
  br i1 %73, label %87, label %74, !dbg !159

74:                                               ; preds = %71
  %75 = getelementptr inbounds float, float* %14, i64 %72, !dbg !160
  %76 = bitcast float* %75 to <2 x float>*, !dbg !160
  %77 = load <2 x float>, <2 x float>* %76, align 4, !dbg !160, !tbaa !162
  %78 = getelementptr inbounds float, float* %75, i64 2, !dbg !160
  %79 = bitcast float* %78 to <2 x float>*, !dbg !160
  %80 = load <2 x float>, <2 x float>* %79, align 4, !dbg !160, !tbaa !162
  %81 = fpext <2 x float> %77 to <2 x double>, !dbg !160
  %82 = fpext <2 x float> %80 to <2 x double>, !dbg !160
  %83 = getelementptr inbounds double, double* %1, i64 %72, !dbg !164
  %84 = bitcast double* %83 to <2 x double>*, !dbg !165
  store <2 x double> %81, <2 x double>* %84, align 8, !dbg !165, !tbaa !166
  %85 = getelementptr inbounds double, double* %83, i64 2, !dbg !165
  %86 = bitcast double* %85 to <2 x double>*, !dbg !165
  store <2 x double> %82, <2 x double>* %86, align 8, !dbg !165, !tbaa !166
  br label %87, !dbg !158

87:                                               ; preds = %71, %74
  %88 = icmp eq i64 %27, %32, !dbg !158
  br i1 %88, label %101, label %29, !dbg !158

89:                                               ; preds = %19
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !171, !tbaa !99
  %91 = sdiv i32 %21, 3, !dbg !173
  %92 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %91, i32 %9) #9, !dbg !174
  tail call void @exit(i32 -1) #10, !dbg !175
  unreachable, !dbg !175

93:                                               ; preds = %29, %93
  %94 = phi i64 [ %99, %93 ], [ %30, %29 ]
  call void @llvm.dbg.value(metadata i64 %94, metadata !128, metadata !DIExpression()), !dbg !130
  %95 = getelementptr inbounds float, float* %14, i64 %94, !dbg !160
  %96 = load float, float* %95, align 4, !dbg !160, !tbaa !162
  %97 = fpext float %96 to double, !dbg !160
  %98 = getelementptr inbounds double, double* %1, i64 %94, !dbg !164
  store double %97, double* %98, align 8, !dbg !165, !tbaa !166
  %99 = add nuw nsw i64 %94, 1, !dbg !159
  call void @llvm.dbg.value(metadata i64 %99, metadata !128, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.value(metadata i32 %9, metadata !124, metadata !DIExpression()), !dbg !130
  %100 = icmp slt i64 %99, %11, !dbg !155
  br i1 %100, label %93, label %101, !dbg !158, !llvm.loop !176

101:                                              ; preds = %93, %87, %23
  tail call void @free(i8* nonnull %13) #8, !dbg !178
  br label %102, !dbg !179

102:                                              ; preds = %3, %101
  %103 = phi i32 [ 1, %101 ], [ 0, %3 ], !dbg !130
  ret i32 %103, !dbg !180
}

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !6 dso_local void @free(i8* nocapture) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @writebinposhdr(%struct._IO_FILE* nocapture %0) local_unnamed_addr #6 !dbg !181 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !183, metadata !DIExpression()), !dbg !184
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %0), !dbg !185
  ret i32 0, !dbg !186
}

; Function Attrs: nofree nounwind
declare dso_local i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @writebinposfrm(i32 %0, double* nocapture readonly %1, %struct._IO_FILE* nocapture %2) local_unnamed_addr #0 !dbg !187 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !189, metadata !DIExpression()), !dbg !194
  store i32 %0, i32* %4, align 4, !tbaa !131
  call void @llvm.dbg.value(metadata double* %1, metadata !190, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !191, metadata !DIExpression()), !dbg !194
  %5 = bitcast i32* %4 to i8*, !dbg !195
  call void @llvm.dbg.value(metadata i32* %4, metadata !189, metadata !DIExpression(DW_OP_deref)), !dbg !194
  %6 = call i64 @fwrite(i8* nonnull %5, i64 4, i64 1, %struct._IO_FILE* %2), !dbg !196
  %7 = load i32, i32* %4, align 4, !dbg !197, !tbaa !131
  call void @llvm.dbg.value(metadata i32 %7, metadata !189, metadata !DIExpression()), !dbg !194
  %8 = mul nsw i32 %7, 3, !dbg !198
  %9 = sext i32 %8 to i64, !dbg !199
  %10 = shl nsw i64 %9, 2, !dbg !200
  %11 = tail call noalias i8* @malloc(i64 %10) #8, !dbg !201
  %12 = bitcast i8* %11 to float*, !dbg !202
  call void @llvm.dbg.value(metadata float* %12, metadata !192, metadata !DIExpression()), !dbg !194
  %13 = icmp eq i8* %11, null, !dbg !203
  br i1 %13, label %80, label %14, !dbg !205

14:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 0, metadata !193, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata i32 %7, metadata !189, metadata !DIExpression()), !dbg !194
  %15 = icmp sgt i32 %7, 0, !dbg !206
  br i1 %15, label %16, label %91, !dbg !209

16:                                               ; preds = %14
  %17 = icmp sgt i64 %9, 1, !dbg !209
  %18 = select i1 %17, i64 %9, i64 1, !dbg !209
  %19 = icmp ult i64 %18, 4, !dbg !209
  br i1 %19, label %20, label %22, !dbg !209

20:                                               ; preds = %78, %16
  %21 = phi i64 [ 0, %16 ], [ %23, %78 ]
  br label %83, !dbg !209

22:                                               ; preds = %16
  %23 = and i64 %18, 9223372036854775804, !dbg !209
  %24 = add nsw i64 %23, -4, !dbg !209
  %25 = lshr exact i64 %24, 2, !dbg !209
  %26 = add nuw nsw i64 %25, 1, !dbg !209
  %27 = and i64 %26, 1, !dbg !209
  %28 = icmp eq i64 %24, 0, !dbg !209
  br i1 %28, label %62, label %29, !dbg !209

29:                                               ; preds = %22
  %30 = sub nuw nsw i64 %26, %27, !dbg !209
  br label %31, !dbg !209

31:                                               ; preds = %31, %29
  %32 = phi i64 [ 0, %29 ], [ %59, %31 ], !dbg !210
  %33 = phi i64 [ %30, %29 ], [ %60, %31 ]
  %34 = getelementptr inbounds double, double* %1, i64 %32, !dbg !211
  %35 = bitcast double* %34 to <2 x double>*, !dbg !211
  %36 = load <2 x double>, <2 x double>* %35, align 8, !dbg !211, !tbaa !166
  %37 = getelementptr inbounds double, double* %34, i64 2, !dbg !211
  %38 = bitcast double* %37 to <2 x double>*, !dbg !211
  %39 = load <2 x double>, <2 x double>* %38, align 8, !dbg !211, !tbaa !166
  %40 = fptrunc <2 x double> %36 to <2 x float>, !dbg !211
  %41 = fptrunc <2 x double> %39 to <2 x float>, !dbg !211
  %42 = getelementptr inbounds float, float* %12, i64 %32, !dbg !213
  %43 = bitcast float* %42 to <2 x float>*, !dbg !214
  store <2 x float> %40, <2 x float>* %43, align 4, !dbg !214, !tbaa !162
  %44 = getelementptr inbounds float, float* %42, i64 2, !dbg !214
  %45 = bitcast float* %44 to <2 x float>*, !dbg !214
  store <2 x float> %41, <2 x float>* %45, align 4, !dbg !214, !tbaa !162
  %46 = or i64 %32, 4, !dbg !210
  %47 = getelementptr inbounds double, double* %1, i64 %46, !dbg !211
  %48 = bitcast double* %47 to <2 x double>*, !dbg !211
  %49 = load <2 x double>, <2 x double>* %48, align 8, !dbg !211, !tbaa !166
  %50 = getelementptr inbounds double, double* %47, i64 2, !dbg !211
  %51 = bitcast double* %50 to <2 x double>*, !dbg !211
  %52 = load <2 x double>, <2 x double>* %51, align 8, !dbg !211, !tbaa !166
  %53 = fptrunc <2 x double> %49 to <2 x float>, !dbg !211
  %54 = fptrunc <2 x double> %52 to <2 x float>, !dbg !211
  %55 = getelementptr inbounds float, float* %12, i64 %46, !dbg !213
  %56 = bitcast float* %55 to <2 x float>*, !dbg !214
  store <2 x float> %53, <2 x float>* %56, align 4, !dbg !214, !tbaa !162
  %57 = getelementptr inbounds float, float* %55, i64 2, !dbg !214
  %58 = bitcast float* %57 to <2 x float>*, !dbg !214
  store <2 x float> %54, <2 x float>* %58, align 4, !dbg !214, !tbaa !162
  %59 = add i64 %32, 8, !dbg !210
  %60 = add i64 %33, -2, !dbg !210
  %61 = icmp eq i64 %60, 0, !dbg !210
  br i1 %61, label %62, label %31, !dbg !210, !llvm.loop !215

62:                                               ; preds = %31, %22
  %63 = phi i64 [ 0, %22 ], [ %59, %31 ]
  %64 = icmp eq i64 %27, 0, !dbg !210
  br i1 %64, label %78, label %65, !dbg !210

65:                                               ; preds = %62
  %66 = getelementptr inbounds double, double* %1, i64 %63, !dbg !211
  %67 = bitcast double* %66 to <2 x double>*, !dbg !211
  %68 = load <2 x double>, <2 x double>* %67, align 8, !dbg !211, !tbaa !166
  %69 = getelementptr inbounds double, double* %66, i64 2, !dbg !211
  %70 = bitcast double* %69 to <2 x double>*, !dbg !211
  %71 = load <2 x double>, <2 x double>* %70, align 8, !dbg !211, !tbaa !166
  %72 = fptrunc <2 x double> %68 to <2 x float>, !dbg !211
  %73 = fptrunc <2 x double> %71 to <2 x float>, !dbg !211
  %74 = getelementptr inbounds float, float* %12, i64 %63, !dbg !213
  %75 = bitcast float* %74 to <2 x float>*, !dbg !214
  store <2 x float> %72, <2 x float>* %75, align 4, !dbg !214, !tbaa !162
  %76 = getelementptr inbounds float, float* %74, i64 2, !dbg !214
  %77 = bitcast float* %76 to <2 x float>*, !dbg !214
  store <2 x float> %73, <2 x float>* %77, align 4, !dbg !214, !tbaa !162
  br label %78, !dbg !209

78:                                               ; preds = %62, %65
  %79 = icmp eq i64 %18, %23, !dbg !209
  br i1 %79, label %91, label %20, !dbg !209

80:                                               ; preds = %3
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !217, !tbaa !99
  %82 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %81) #9, !dbg !219
  tail call void @exit(i32 1) #10, !dbg !220
  unreachable, !dbg !220

83:                                               ; preds = %20, %83
  %84 = phi i64 [ %89, %83 ], [ %21, %20 ]
  call void @llvm.dbg.value(metadata i64 %84, metadata !193, metadata !DIExpression()), !dbg !194
  %85 = getelementptr inbounds double, double* %1, i64 %84, !dbg !211
  %86 = load double, double* %85, align 8, !dbg !211, !tbaa !166
  %87 = fptrunc double %86 to float, !dbg !211
  %88 = getelementptr inbounds float, float* %12, i64 %84, !dbg !213
  store float %87, float* %88, align 4, !dbg !214, !tbaa !162
  %89 = add nuw nsw i64 %84, 1, !dbg !210
  call void @llvm.dbg.value(metadata i64 %89, metadata !193, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata i32 %7, metadata !189, metadata !DIExpression()), !dbg !194
  %90 = icmp slt i64 %89, %9, !dbg !206
  br i1 %90, label %83, label %91, !dbg !209, !llvm.loop !221

91:                                               ; preds = %83, %78, %14
  %92 = tail call i64 @fwrite(i8* nonnull %11, i64 4, i64 %9, %struct._IO_FILE* %2), !dbg !222
  tail call void @free(i8* nonnull %11) #8, !dbg !223
  %93 = tail call i32 @fflush(%struct._IO_FILE* %2), !dbg !224
  ret i32 0, !dbg !225
}

; Function Attrs: nofree nounwind
declare !dbg !11 dso_local i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nofree nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!74, !75, !76}
!llvm.ident = !{!77}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "binpos.c", directory: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src")
!2 = !{}
!3 = !{!4, !6, !11}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!6 = !DISubprogram(name: "free", scope: !7, file: !7, line: 565, type: !8, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!7 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !DISubprogram(name: "fflush", scope: !12, file: !12, line: 218, type: !13, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!12 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !16}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !18, line: 49, size: 1728, elements: !19)
!18 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!19 = !{!20, !21, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !37, !38, !39, !40, !44, !46, !48, !52, !55, !57, !60, !63, !64, !65, !69, !70}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !17, file: !18, line: 51, baseType: !15, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !17, file: !18, line: 54, baseType: !22, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !17, file: !18, line: 55, baseType: !22, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !17, file: !18, line: 56, baseType: !22, size: 64, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !17, file: !18, line: 57, baseType: !22, size: 64, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !17, file: !18, line: 58, baseType: !22, size: 64, offset: 320)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !17, file: !18, line: 59, baseType: !22, size: 64, offset: 384)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !17, file: !18, line: 60, baseType: !22, size: 64, offset: 448)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !17, file: !18, line: 61, baseType: !22, size: 64, offset: 512)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !17, file: !18, line: 64, baseType: !22, size: 64, offset: 576)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !17, file: !18, line: 65, baseType: !22, size: 64, offset: 640)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !17, file: !18, line: 66, baseType: !22, size: 64, offset: 704)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !17, file: !18, line: 68, baseType: !35, size: 64, offset: 768)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !18, line: 36, flags: DIFlagFwdDecl)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !17, file: !18, line: 70, baseType: !16, size: 64, offset: 832)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !17, file: !18, line: 72, baseType: !15, size: 32, offset: 896)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !17, file: !18, line: 73, baseType: !15, size: 32, offset: 928)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !17, file: !18, line: 74, baseType: !41, size: 64, offset: 960)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !42, line: 152, baseType: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!43 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !17, file: !18, line: 77, baseType: !45, size: 16, offset: 1024)
!45 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !17, file: !18, line: 78, baseType: !47, size: 8, offset: 1040)
!47 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !17, file: !18, line: 79, baseType: !49, size: 8, offset: 1048)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 1)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !17, file: !18, line: 81, baseType: !53, size: 64, offset: 1088)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !18, line: 43, baseType: null)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !17, file: !18, line: 89, baseType: !56, size: 64, offset: 1152)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !42, line: 153, baseType: !43)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !17, file: !18, line: 91, baseType: !58, size: 64, offset: 1216)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !18, line: 37, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !17, file: !18, line: 92, baseType: !61, size: 64, offset: 1280)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !18, line: 38, flags: DIFlagFwdDecl)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !17, file: !18, line: 93, baseType: !16, size: 64, offset: 1344)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !17, file: !18, line: 94, baseType: !10, size: 64, offset: 1408)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !17, file: !18, line: 95, baseType: !66, size: 64, offset: 1472)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !67, line: 46, baseType: !68)
!67 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!68 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !17, file: !18, line: 96, baseType: !15, size: 32, offset: 1536)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !17, file: !18, line: 98, baseType: !71, size: 160, offset: 1568)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 20)
!74 = !{i32 7, !"Dwarf Version", i32 4}
!75 = !{i32 2, !"Debug Info Version", i32 3}
!76 = !{i32 1, !"wchar_size", i32 4}
!77 = !{!"clang version 10.0.0-4ubuntu1 "}
!78 = distinct !DISubprogram(name: "readbinposhdr", scope: !1, file: !1, line: 6, type: !79, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !84)
!79 = !DISubroutineType(types: !80)
!80 = !{!15, !81}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !83, line: 7, baseType: !17)
!83 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!84 = !{!85, !86}
!85 = !DILocalVariable(name: "fp", arg: 1, scope: !78, file: !1, line: 6, type: !81)
!86 = !DILocalVariable(name: "magic", scope: !78, file: !1, line: 8, type: !87)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 80, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 10)
!90 = !DILocation(line: 0, scope: !78)
!91 = !DILocation(line: 8, column: 2, scope: !78)
!92 = !DILocation(line: 8, column: 7, scope: !78)
!93 = !DILocation(line: 10, column: 6, scope: !94)
!94 = distinct !DILexicalBlock(scope: !78, file: !1, line: 10, column: 6)
!95 = !DILocation(line: 10, column: 31, scope: !94)
!96 = !DILocation(line: 10, column: 6, scope: !78)
!97 = !DILocation(line: 11, column: 12, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 10, column: 37)
!99 = !{!100, !100, i64 0}
!100 = !{!"any pointer", !101, i64 0}
!101 = !{!"omnipotent char", !102, i64 0}
!102 = !{!"Simple C/C++ TBAA"}
!103 = !DILocation(line: 11, column: 3, scope: !98)
!104 = !DILocation(line: 12, column: 3, scope: !98)
!105 = !DILocation(line: 15, column: 2, scope: !78)
!106 = !DILocation(line: 15, column: 13, scope: !78)
!107 = !{!101, !101, i64 0}
!108 = !DILocation(line: 16, column: 6, scope: !109)
!109 = distinct !DILexicalBlock(scope: !78, file: !1, line: 16, column: 6)
!110 = !DILocation(line: 16, column: 30, scope: !109)
!111 = !DILocation(line: 16, column: 6, scope: !78)
!112 = !DILocation(line: 17, column: 12, scope: !113)
!113 = distinct !DILexicalBlock(scope: !109, file: !1, line: 16, column: 36)
!114 = !DILocation(line: 17, column: 3, scope: !113)
!115 = !DILocation(line: 18, column: 3, scope: !113)
!116 = !DILocation(line: 21, column: 1, scope: !78)
!117 = !DILocation(line: 20, column: 2, scope: !78)
!118 = distinct !DISubprogram(name: "readbinposfrm", scope: !1, file: !1, line: 23, type: !119, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !123)
!119 = !DISubroutineType(types: !120)
!120 = !{!15, !15, !121, !81}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!123 = !{!124, !125, !126, !127, !128, !129}
!124 = !DILocalVariable(name: "n_atom", arg: 1, scope: !118, file: !1, line: 23, type: !15)
!125 = !DILocalVariable(name: "apos", arg: 2, scope: !118, file: !1, line: 23, type: !121)
!126 = !DILocalVariable(name: "fp", arg: 3, scope: !118, file: !1, line: 23, type: !81)
!127 = !DILocalVariable(name: "count", scope: !118, file: !1, line: 26, type: !15)
!128 = !DILocalVariable(name: "i", scope: !118, file: !1, line: 26, type: !15)
!129 = !DILocalVariable(name: "aposf", scope: !118, file: !1, line: 27, type: !4)
!130 = !DILocation(line: 0, scope: !118)
!131 = !{!132, !132, i64 0}
!132 = !{!"int", !101, i64 0}
!133 = !DILocation(line: 29, column: 13, scope: !134)
!134 = distinct !DILexicalBlock(scope: !118, file: !1, line: 29, column: 6)
!135 = !DILocation(line: 29, column: 6, scope: !134)
!136 = !DILocation(line: 29, column: 45, scope: !134)
!137 = !DILocation(line: 29, column: 6, scope: !118)
!138 = !DILocation(line: 35, column: 31, scope: !118)
!139 = !DILocation(line: 35, column: 30, scope: !118)
!140 = !DILocation(line: 35, column: 29, scope: !118)
!141 = !DILocation(line: 35, column: 38, scope: !118)
!142 = !DILocation(line: 35, column: 21, scope: !118)
!143 = !DILocation(line: 35, column: 10, scope: !118)
!144 = !DILocation(line: 36, column: 7, scope: !145)
!145 = distinct !DILexicalBlock(scope: !118, file: !1, line: 36, column: 6)
!146 = !DILocation(line: 36, column: 6, scope: !118)
!147 = !DILocation(line: 36, column: 25, scope: !148)
!148 = distinct !DILexicalBlock(scope: !145, file: !1, line: 36, column: 14)
!149 = !DILocation(line: 36, column: 16, scope: !148)
!150 = !DILocation(line: 36, column: 63, scope: !148)
!151 = !DILocation(line: 37, column: 16, scope: !152)
!152 = distinct !DILexicalBlock(scope: !118, file: !1, line: 37, column: 6)
!153 = !DILocation(line: 38, column: 3, scope: !152)
!154 = !DILocation(line: 37, column: 6, scope: !118)
!155 = !DILocation(line: 43, column: 13, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !1, line: 43, column: 2)
!157 = distinct !DILexicalBlock(scope: !118, file: !1, line: 43, column: 2)
!158 = !DILocation(line: 43, column: 2, scope: !157)
!159 = !DILocation(line: 43, column: 25, scope: !156)
!160 = !DILocation(line: 44, column: 13, scope: !161)
!161 = distinct !DILexicalBlock(scope: !156, file: !1, line: 43, column: 29)
!162 = !{!163, !163, i64 0}
!163 = !{!"float", !101, i64 0}
!164 = !DILocation(line: 44, column: 3, scope: !161)
!165 = !DILocation(line: 44, column: 11, scope: !161)
!166 = !{!167, !167, i64 0}
!167 = !{!"double", !101, i64 0}
!168 = distinct !{!168, !158, !169, !170}
!169 = !DILocation(line: 45, column: 2, scope: !157)
!170 = !{!"llvm.loop.isvectorized", i32 1}
!171 = !DILocation(line: 39, column: 12, scope: !172)
!172 = distinct !DILexicalBlock(scope: !152, file: !1, line: 38, column: 18)
!173 = !DILocation(line: 40, column: 10, scope: !172)
!174 = !DILocation(line: 39, column: 3, scope: !172)
!175 = !DILocation(line: 41, column: 3, scope: !172)
!176 = distinct !{!176, !158, !169, !177, !170}
!177 = !{!"llvm.loop.unroll.runtime.disable"}
!178 = !DILocation(line: 46, column: 2, scope: !118)
!179 = !DILocation(line: 55, column: 2, scope: !118)
!180 = !DILocation(line: 56, column: 1, scope: !118)
!181 = distinct !DISubprogram(name: "writebinposhdr", scope: !1, file: !1, line: 58, type: !79, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !182)
!182 = !{!183}
!183 = !DILocalVariable(name: "fp", arg: 1, scope: !181, file: !1, line: 58, type: !81)
!184 = !DILocation(line: 0, scope: !181)
!185 = !DILocation(line: 61, column: 5, scope: !181)
!186 = !DILocation(line: 62, column: 2, scope: !181)
!187 = distinct !DISubprogram(name: "writebinposfrm", scope: !1, file: !1, line: 65, type: !119, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !188)
!188 = !{!189, !190, !191, !192, !193}
!189 = !DILocalVariable(name: "n_atom", arg: 1, scope: !187, file: !1, line: 65, type: !15)
!190 = !DILocalVariable(name: "apos", arg: 2, scope: !187, file: !1, line: 65, type: !121)
!191 = !DILocalVariable(name: "fp", arg: 3, scope: !187, file: !1, line: 65, type: !81)
!192 = !DILocalVariable(name: "aposf", scope: !187, file: !1, line: 67, type: !4)
!193 = !DILocalVariable(name: "i", scope: !187, file: !1, line: 68, type: !15)
!194 = !DILocation(line: 0, scope: !187)
!195 = !DILocation(line: 70, column: 10, scope: !187)
!196 = !DILocation(line: 70, column: 2, scope: !187)
!197 = !DILocation(line: 74, column: 31, scope: !187)
!198 = !DILocation(line: 74, column: 30, scope: !187)
!199 = !DILocation(line: 74, column: 29, scope: !187)
!200 = !DILocation(line: 74, column: 38, scope: !187)
!201 = !DILocation(line: 74, column: 21, scope: !187)
!202 = !DILocation(line: 74, column: 10, scope: !187)
!203 = !DILocation(line: 75, column: 7, scope: !204)
!204 = distinct !DILexicalBlock(scope: !187, file: !1, line: 75, column: 6)
!205 = !DILocation(line: 75, column: 6, scope: !187)
!206 = !DILocation(line: 76, column: 13, scope: !207)
!207 = distinct !DILexicalBlock(scope: !208, file: !1, line: 76, column: 2)
!208 = distinct !DILexicalBlock(scope: !187, file: !1, line: 76, column: 2)
!209 = !DILocation(line: 76, column: 2, scope: !208)
!210 = !DILocation(line: 76, column: 25, scope: !207)
!211 = !DILocation(line: 77, column: 14, scope: !212)
!212 = distinct !DILexicalBlock(scope: !207, file: !1, line: 76, column: 29)
!213 = !DILocation(line: 77, column: 3, scope: !212)
!214 = !DILocation(line: 77, column: 12, scope: !212)
!215 = distinct !{!215, !209, !216, !170}
!216 = !DILocation(line: 78, column: 2, scope: !208)
!217 = !DILocation(line: 75, column: 25, scope: !218)
!218 = distinct !DILexicalBlock(scope: !204, file: !1, line: 75, column: 14)
!219 = !DILocation(line: 75, column: 16, scope: !218)
!220 = !DILocation(line: 75, column: 63, scope: !218)
!221 = distinct !{!221, !209, !216, !177, !170}
!222 = !DILocation(line: 79, column: 2, scope: !187)
!223 = !DILocation(line: 80, column: 2, scope: !187)
!224 = !DILocation(line: 84, column: 2, scope: !187)
!225 = !DILocation(line: 85, column: 2, scope: !187)
