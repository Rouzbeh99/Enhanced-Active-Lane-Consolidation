; ModuleID = 'nblist.ll'
source_filename = "nblist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.kdnode = type { i32, %struct.kdnode*, %struct.kdnode* }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [40 x i8] c"Error allocate kdnode array in nbtree!\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @nblist(i32* %0, i32* %1, i32** %2, double* %3, i32 %4, i32 %5, double %6, i32 %7, i32 %8, i32* %9) #0 !dbg !33 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.kdnode*, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !41, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i32* %1, metadata !42, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i32** %2, metadata !43, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata double* %3, metadata !44, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i32 %4, metadata !45, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i32 %5, metadata !46, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata double %6, metadata !47, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i32 %7, metadata !48, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i32 %8, metadata !49, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i32* %9, metadata !50, metadata !DIExpression()), !dbg !71
  %14 = bitcast i32* %11 to i8*, !dbg !72
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #7, !dbg !72
  %15 = bitcast i32* %12 to i8*, !dbg !72
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #7, !dbg !72
  call void @llvm.dbg.declare(metadata i32* undef, metadata !56, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata i32* undef, metadata !57, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i32* null, metadata !62, metadata !DIExpression()), !dbg !71
  %16 = bitcast %struct.kdnode** %13 to i8*, !dbg !75
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #7, !dbg !75
  %17 = fmul double %6, %6, !dbg !76
  call void @llvm.dbg.value(metadata double %17, metadata !67, metadata !DIExpression()), !dbg !71
  %18 = call i32 @get_blocksize() #7, !dbg !77
  call void @llvm.dbg.value(metadata i32 %18, metadata !58, metadata !DIExpression()), !dbg !71
  %19 = sext i32 %7 to i64, !dbg !78
  %20 = mul nsw i64 %19, 24, !dbg !80
  %21 = call noalias i8* @malloc(i64 %20) #7, !dbg !81
  call void @llvm.dbg.value(metadata i8* %21, metadata !68, metadata !DIExpression()), !dbg !71
  %22 = icmp eq i8* %21, null, !dbg !82
  br i1 %22, label %23, label %26, !dbg !83

23:                                               ; preds = %10
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !84, !tbaa !86
  %25 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %24) #8, !dbg !90
  call void @exit(i32 1) #9, !dbg !91
  unreachable, !dbg !91

26:                                               ; preds = %10
  %27 = call i32* @ivector(i32 0, i32 %7) #7, !dbg !92
  call void @llvm.dbg.value(metadata i32* %27, metadata !59, metadata !DIExpression()), !dbg !71
  %28 = call i32* @ivector(i32 0, i32 %7) #7, !dbg !93
  call void @llvm.dbg.value(metadata i32* %28, metadata !60, metadata !DIExpression()), !dbg !71
  %29 = call i32* @ivector(i32 0, i32 %7) #7, !dbg !94
  call void @llvm.dbg.value(metadata i32* %29, metadata !61, metadata !DIExpression()), !dbg !71
  %30 = call i32* @ivector(i32 0, i32 %7) #7, !dbg !95
  call void @llvm.dbg.value(metadata i32* %30, metadata !64, metadata !DIExpression()), !dbg !71
  %31 = icmp eq i32 %8, 4, !dbg !96
  br i1 %31, label %32, label %34, !dbg !98

32:                                               ; preds = %26
  %33 = call i32* @ivector(i32 0, i32 %7) #7, !dbg !99
  call void @llvm.dbg.value(metadata i32* %33, metadata !62, metadata !DIExpression()), !dbg !71
  br label %34, !dbg !101

34:                                               ; preds = %32, %26
  %.0 = phi i32* [ %33, %32 ], [ null, %26 ], !dbg !71
  call void @llvm.dbg.value(metadata i32* %.0, metadata !62, metadata !DIExpression()), !dbg !71
  %35 = call i32* @ivector(i32 0, i32 %7) #7, !dbg !102
  call void @llvm.dbg.value(metadata i32* %35, metadata !63, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i32 0, metadata !51, metadata !DIExpression()), !dbg !71
  %smax = call i32 @llvm.smax.i32(i32 %7, i32 0), !dbg !103
  %wide.trip.count = zext i32 %smax to i64, !dbg !105
  call void @llvm.dbg.value(metadata i64 0, metadata !51, metadata !DIExpression()), !dbg !71
  %exitcond18.not = icmp slt i32 %7, 1, !dbg !105
  br i1 %exitcond18.not, label %._crit_edge, label %.lr.ph, !dbg !107

.lr.ph:                                           ; preds = %34, %46
  %indvars.iv19 = phi i64 [ %indvars.iv.next, %46 ], [ 0, %34 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv19, metadata !51, metadata !DIExpression()), !dbg !71
  %36 = getelementptr inbounds i32, i32* %29, i64 %indvars.iv19, !dbg !108
  %37 = trunc i64 %indvars.iv19 to i32, !dbg !110
  store i32 %37, i32* %36, align 4, !dbg !110, !tbaa !111
  %38 = getelementptr inbounds i32, i32* %28, i64 %indvars.iv19, !dbg !113
  %39 = trunc i64 %indvars.iv19 to i32, !dbg !114
  store i32 %39, i32* %38, align 4, !dbg !114, !tbaa !111
  %40 = getelementptr inbounds i32, i32* %27, i64 %indvars.iv19, !dbg !115
  %41 = trunc i64 %indvars.iv19 to i32, !dbg !116
  store i32 %41, i32* %40, align 4, !dbg !116, !tbaa !111
  %42 = icmp eq i32 %8, 4, !dbg !117
  br i1 %42, label %43, label %46, !dbg !119

43:                                               ; preds = %.lr.ph
  %44 = getelementptr inbounds i32, i32* %.0, i64 %indvars.iv19, !dbg !120
  %45 = trunc i64 %indvars.iv19 to i32, !dbg !122
  store i32 %45, i32* %44, align 4, !dbg !122, !tbaa !111
  br label %46, !dbg !123

46:                                               ; preds = %43, %.lr.ph
  %47 = getelementptr inbounds i32, i32* %35, i64 %indvars.iv19, !dbg !124
  %48 = trunc i64 %indvars.iv19 to i32, !dbg !125
  store i32 %48, i32* %47, align 4, !dbg !125, !tbaa !111
  %indvars.iv.next = add nuw nsw i64 %indvars.iv19, 1, !dbg !126
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !51, metadata !DIExpression()), !dbg !71
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !105
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !107, !llvm.loop !127

._crit_edge:                                      ; preds = %46, %34
  call void @heapsort_index(i32* %27, i32 %7, double* %3, i32 0, i32 %8), !dbg !129
  call void @heapsort_index(i32* %28, i32 %7, double* %3, i32 1, i32 %8), !dbg !130
  call void @heapsort_index(i32* %29, i32 %7, double* %3, i32 2, i32 %8), !dbg !131
  %49 = icmp eq i32 %8, 4, !dbg !132
  br i1 %49, label %50, label %51, !dbg !134

50:                                               ; preds = %._crit_edge
  call void @heapsort_index(i32* %.0, i32 %7, double* %3, i32 3, i32 %8), !dbg !135
  br label %51, !dbg !137

51:                                               ; preds = %50, %._crit_edge
  call void @llvm.dbg.value(metadata i8* %21, metadata !69, metadata !DIExpression()), !dbg !71
  %52 = bitcast %struct.kdnode** %13 to i8**, !dbg !138
  store i8* %21, i8** %52, align 8, !dbg !138, !tbaa !86
  %.cast = bitcast i8* %21 to %struct.kdnode*, !dbg !139
  call void @llvm.dbg.value(metadata %struct.kdnode* %.cast, metadata !69, metadata !DIExpression()), !dbg !71
  %53 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %.cast, i64 1, !dbg !139
  call void @llvm.dbg.value(metadata %struct.kdnode* %53, metadata !69, metadata !DIExpression()), !dbg !71
  store %struct.kdnode* %53, %struct.kdnode** %13, align 8, !dbg !139, !tbaa !86
  call void @llvm.dbg.value(metadata %struct.kdnode* %.cast, metadata !70, metadata !DIExpression()), !dbg !71
  %54 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %.cast, i64 0, i32 1, !dbg !140
  store %struct.kdnode* null, %struct.kdnode** %54, align 8, !dbg !141, !tbaa !142
  %55 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %.cast, i64 0, i32 2, !dbg !144
  store %struct.kdnode* null, %struct.kdnode** %55, align 8, !dbg !145, !tbaa !146
  %56 = add nsw i32 %7, -1, !dbg !147
  call void @llvm.dbg.value(metadata %struct.kdnode** %13, metadata !69, metadata !DIExpression(DW_OP_deref)), !dbg !71
  call void @buildkdtree(i32* %35, i32* %27, i32* %28, i32* %29, i32* %.0, i32* %30, i32 0, i32 %56, %struct.kdnode** nonnull %13, %struct.kdnode* nonnull %.cast, double* %3, i32 0, i32 %8), !dbg !148
  call void @llvm.dbg.value(metadata i32 0, metadata !55, metadata !DIExpression()), !dbg !71
  %57 = call i32* @ivector(i32 0, i32 %7) #7, !dbg !149
  call void @llvm.dbg.value(metadata i32* %57, metadata !65, metadata !DIExpression()), !dbg !71
  %58 = call i32* @ivector(i32 0, i32 %7) #7, !dbg !151
  call void @llvm.dbg.value(metadata i32* %58, metadata !66, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i32 0, metadata !51, metadata !DIExpression()), !dbg !71
  %smax15 = call i32 @llvm.smax.i32(i32 %7, i32 0), !dbg !152
  %wide.trip.count16 = zext i32 %smax15 to i64, !dbg !154
  call void @llvm.dbg.value(metadata i64 0, metadata !51, metadata !DIExpression()), !dbg !71
  %exitcond1728.not = icmp slt i32 %7, 1, !dbg !154
  br i1 %exitcond1728.not, label %._crit_edge37, label %.lr.ph36, !dbg !156

.lr.ph36:                                         ; preds = %51, %._crit_edge27
  %.0134 = phi i32 [ %144, %._crit_edge27 ], [ 0, %51 ]
  %indvars.iv1229 = phi i64 [ %indvars.iv.next13, %._crit_edge27 ], [ 0, %51 ]
  call void @llvm.dbg.value(metadata i32 %.0134, metadata !55, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i64 %indvars.iv1229, metadata !51, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i32 0, metadata !54, metadata !DIExpression()), !dbg !71
  store i32 0, i32* %12, align 4, !dbg !157, !tbaa !111
  call void @llvm.dbg.value(metadata i32 0, metadata !53, metadata !DIExpression()), !dbg !71
  store i32 0, i32* %11, align 4, !dbg !159, !tbaa !111
  %59 = trunc i64 %indvars.iv1229 to i32, !dbg !160
  call void @llvm.dbg.value(metadata i32* %11, metadata !53, metadata !DIExpression(DW_OP_deref)), !dbg !71
  call void @llvm.dbg.value(metadata i32* %12, metadata !54, metadata !DIExpression(DW_OP_deref)), !dbg !71
  call void @searchkdtree(%struct.kdnode* nonnull %.cast, double* %3, i32 0, i32 %59, i32* nonnull %11, i32* nonnull %12, i32* %57, i32* %58, double %6, double %17, i32 %8, i32* %9), !dbg !160
  %60 = load i32, i32* %11, align 4, !dbg !161, !tbaa !111
  call void @llvm.dbg.value(metadata i32 %60, metadata !53, metadata !DIExpression()), !dbg !71
  call void @heapsort_pairs(i32* %57, i32 %60), !dbg !162
  %61 = load i32, i32* %12, align 4, !dbg !163, !tbaa !111
  call void @llvm.dbg.value(metadata i32 %61, metadata !54, metadata !DIExpression()), !dbg !71
  call void @heapsort_pairs(i32* %58, i32 %61), !dbg !164
  %62 = getelementptr inbounds i32*, i32** %2, i64 %indvars.iv1229, !dbg !165
  %63 = load i32*, i32** %62, align 8, !dbg !165, !tbaa !86
  %64 = icmp eq i32* %63, null, !dbg !167
  br i1 %64, label %65, label %76, !dbg !168

65:                                               ; preds = %.lr.ph36
  %66 = load i32, i32* %11, align 4, !dbg !169, !tbaa !111
  call void @llvm.dbg.value(metadata i32 %66, metadata !53, metadata !DIExpression()), !dbg !71
  %67 = load i32, i32* %12, align 4, !dbg !170, !tbaa !111
  call void @llvm.dbg.value(metadata i32 %67, metadata !54, metadata !DIExpression()), !dbg !71
  %68 = add nsw i32 %66, %67, !dbg !171
  %69 = icmp sgt i32 %68, 0, !dbg !172
  br i1 %69, label %70, label %76, !dbg !173

70:                                               ; preds = %65
  %71 = load i32, i32* %11, align 4, !dbg !174, !tbaa !111
  call void @llvm.dbg.value(metadata i32 %71, metadata !53, metadata !DIExpression()), !dbg !71
  %72 = load i32, i32* %12, align 4, !dbg !176, !tbaa !111
  call void @llvm.dbg.value(metadata i32 %72, metadata !54, metadata !DIExpression()), !dbg !71
  %73 = add nsw i32 %71, %72, !dbg !177
  %74 = call i32* @ivector(i32 0, i32 %73) #7, !dbg !178
  %75 = getelementptr inbounds i32*, i32** %2, i64 %indvars.iv1229, !dbg !179
  store i32* %74, i32** %75, align 8, !dbg !180, !tbaa !86
  br label %114, !dbg !181

76:                                               ; preds = %65, %.lr.ph36
  %77 = getelementptr inbounds i32*, i32** %2, i64 %indvars.iv1229, !dbg !182
  %78 = load i32*, i32** %77, align 8, !dbg !182, !tbaa !86
  %.not = icmp eq i32* %78, null, !dbg !184
  br i1 %.not, label %114, label %79, !dbg !185

79:                                               ; preds = %76
  %80 = load i32, i32* %11, align 4, !dbg !186, !tbaa !111
  call void @llvm.dbg.value(metadata i32 %80, metadata !53, metadata !DIExpression()), !dbg !71
  %81 = load i32, i32* %12, align 4, !dbg !187, !tbaa !111
  call void @llvm.dbg.value(metadata i32 %81, metadata !54, metadata !DIExpression()), !dbg !71
  %82 = add nsw i32 %80, %81, !dbg !188
  %83 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv1229, !dbg !189
  %84 = load i32, i32* %83, align 4, !dbg !189, !tbaa !111
  %85 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv1229, !dbg !190
  %86 = load i32, i32* %85, align 4, !dbg !190, !tbaa !111
  %87 = add nsw i32 %84, %86, !dbg !191
  %88 = icmp sgt i32 %82, %87, !dbg !192
  br i1 %88, label %101, label %89, !dbg !193

89:                                               ; preds = %79
  %90 = load i32, i32* %11, align 4, !dbg !194, !tbaa !111
  call void @llvm.dbg.value(metadata i32 %90, metadata !53, metadata !DIExpression()), !dbg !71
  %91 = load i32, i32* %12, align 4, !dbg !195, !tbaa !111
  call void @llvm.dbg.value(metadata i32 %91, metadata !54, metadata !DIExpression()), !dbg !71
  %92 = add nsw i32 %90, %91, !dbg !196
  %93 = shl nsw i32 %92, 2, !dbg !197
  %94 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv1229, !dbg !198
  %95 = load i32, i32* %94, align 4, !dbg !198, !tbaa !111
  %96 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv1229, !dbg !199
  %97 = load i32, i32* %96, align 4, !dbg !199, !tbaa !111
  %98 = add nsw i32 %95, %97, !dbg !200
  %99 = mul nsw i32 %98, 3, !dbg !201
  %100 = icmp slt i32 %93, %99, !dbg !202
  br i1 %100, label %101, label %114, !dbg !203

101:                                              ; preds = %89, %79
  %102 = getelementptr inbounds i32*, i32** %2, i64 %indvars.iv1229, !dbg !204
  %103 = load i32*, i32** %102, align 8, !dbg !204, !tbaa !86
  %104 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv1229, !dbg !206
  %105 = load i32, i32* %104, align 4, !dbg !206, !tbaa !111
  %106 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv1229, !dbg !207
  %107 = load i32, i32* %106, align 4, !dbg !207, !tbaa !111
  %108 = add nsw i32 %105, %107, !dbg !208
  call void @free_ivector(i32* %103, i32 0, i32 %108) #7, !dbg !209
  %109 = load i32, i32* %11, align 4, !dbg !210, !tbaa !111
  call void @llvm.dbg.value(metadata i32 %109, metadata !53, metadata !DIExpression()), !dbg !71
  %110 = load i32, i32* %12, align 4, !dbg !211, !tbaa !111
  call void @llvm.dbg.value(metadata i32 %110, metadata !54, metadata !DIExpression()), !dbg !71
  %111 = add nsw i32 %109, %110, !dbg !212
  %112 = call i32* @ivector(i32 0, i32 %111) #7, !dbg !213
  %113 = getelementptr inbounds i32*, i32** %2, i64 %indvars.iv1229, !dbg !214
  store i32* %112, i32** %113, align 8, !dbg !215, !tbaa !86
  br label %114, !dbg !216

114:                                              ; preds = %76, %89, %101, %70
  %115 = load i32, i32* %11, align 4, !dbg !217, !tbaa !111
  call void @llvm.dbg.value(metadata i32 %115, metadata !53, metadata !DIExpression()), !dbg !71
  %116 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv1229, !dbg !218
  store i32 %115, i32* %116, align 4, !dbg !219, !tbaa !111
  %117 = load i32, i32* %12, align 4, !dbg !220, !tbaa !111
  call void @llvm.dbg.value(metadata i32 %117, metadata !54, metadata !DIExpression()), !dbg !71
  %118 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv1229, !dbg !221
  store i32 %117, i32* %118, align 4, !dbg !222, !tbaa !111
  call void @llvm.dbg.value(metadata i64 0, metadata !52, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i32 %115, metadata !53, metadata !DIExpression()), !dbg !71
  %119 = icmp sgt i32 %115, 0, !dbg !223
  br i1 %119, label %.lr.ph22, label %._crit_edge23, !dbg !226

.lr.ph22:                                         ; preds = %114, %.lr.ph22
  %indvars.iv620 = phi i64 [ %indvars.iv.next7, %.lr.ph22 ], [ 0, %114 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv620, metadata !52, metadata !DIExpression()), !dbg !71
  %120 = getelementptr inbounds i32, i32* %57, i64 %indvars.iv620, !dbg !227
  %121 = load i32, i32* %120, align 4, !dbg !227, !tbaa !111
  %122 = getelementptr inbounds i32*, i32** %2, i64 %indvars.iv1229, !dbg !229
  %123 = load i32*, i32** %122, align 8, !dbg !229, !tbaa !86
  %124 = getelementptr inbounds i32, i32* %123, i64 %indvars.iv620, !dbg !229
  store i32 %121, i32* %124, align 4, !dbg !230, !tbaa !111
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv620, 1, !dbg !231
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next7, metadata !52, metadata !DIExpression()), !dbg !71
  %125 = load i32, i32* %11, align 4, !dbg !232, !tbaa !111
  call void @llvm.dbg.value(metadata i32 %125, metadata !53, metadata !DIExpression()), !dbg !71
  %126 = sext i32 %125 to i64, !dbg !223
  %127 = icmp slt i64 %indvars.iv.next7, %126, !dbg !223
  br i1 %127, label %.lr.ph22, label %._crit_edge23, !dbg !226, !llvm.loop !233

._crit_edge23:                                    ; preds = %.lr.ph22, %114
  call void @llvm.dbg.value(metadata i64 0, metadata !52, metadata !DIExpression()), !dbg !71
  %128 = load i32, i32* %12, align 4, !dbg !235, !tbaa !111
  call void @llvm.dbg.value(metadata i32 %128, metadata !54, metadata !DIExpression()), !dbg !71
  %129 = icmp sgt i32 %128, 0, !dbg !238
  br i1 %129, label %.lr.ph26, label %._crit_edge27, !dbg !239

.lr.ph26:                                         ; preds = %._crit_edge23, %.lr.ph26
  %indvars.iv924 = phi i64 [ %indvars.iv.next10, %.lr.ph26 ], [ 0, %._crit_edge23 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv924, metadata !52, metadata !DIExpression()), !dbg !71
  %130 = getelementptr inbounds i32, i32* %58, i64 %indvars.iv924, !dbg !240
  %131 = load i32, i32* %130, align 4, !dbg !240, !tbaa !111
  %132 = getelementptr inbounds i32*, i32** %2, i64 %indvars.iv1229, !dbg !242
  %133 = load i32*, i32** %132, align 8, !dbg !242, !tbaa !86
  %134 = load i32, i32* %11, align 4, !dbg !243, !tbaa !111
  call void @llvm.dbg.value(metadata i32 %134, metadata !53, metadata !DIExpression()), !dbg !71
  %135 = sext i32 %134 to i64, !dbg !244
  %136 = add nsw i64 %indvars.iv924, %135, !dbg !244
  %137 = getelementptr inbounds i32, i32* %133, i64 %136, !dbg !242
  store i32 %131, i32* %137, align 4, !dbg !245, !tbaa !111
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv924, 1, !dbg !246
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next10, metadata !52, metadata !DIExpression()), !dbg !71
  %138 = load i32, i32* %12, align 4, !dbg !235, !tbaa !111
  call void @llvm.dbg.value(metadata i32 %138, metadata !54, metadata !DIExpression()), !dbg !71
  %139 = sext i32 %138 to i64, !dbg !238
  %140 = icmp slt i64 %indvars.iv.next10, %139, !dbg !238
  br i1 %140, label %.lr.ph26, label %._crit_edge27, !dbg !239, !llvm.loop !247

._crit_edge27:                                    ; preds = %.lr.ph26, %._crit_edge23
  %141 = load i32, i32* %11, align 4, !dbg !249, !tbaa !111
  call void @llvm.dbg.value(metadata i32 %141, metadata !53, metadata !DIExpression()), !dbg !71
  %142 = load i32, i32* %12, align 4, !dbg !250, !tbaa !111
  call void @llvm.dbg.value(metadata i32 %142, metadata !54, metadata !DIExpression()), !dbg !71
  %143 = add nsw i32 %141, %142, !dbg !251
  %144 = add nsw i32 %.0134, %143, !dbg !252
  call void @llvm.dbg.value(metadata i32 %144, metadata !55, metadata !DIExpression()), !dbg !71
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv1229, 1, !dbg !253
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next13, metadata !51, metadata !DIExpression()), !dbg !71
  %exitcond17.not = icmp eq i64 %indvars.iv.next13, %wide.trip.count16, !dbg !154
  br i1 %exitcond17.not, label %._crit_edge37, label %.lr.ph36, !dbg !156, !llvm.loop !254

._crit_edge37:                                    ; preds = %._crit_edge27, %51
  %.01.lcssa = phi i32 [ 0, %51 ], [ %144, %._crit_edge27 ], !dbg !71
  call void @free_ivector(i32* %57, i32 0, i32 %7) #7, !dbg !256
  call void @free_ivector(i32* %58, i32 0, i32 %7) #7, !dbg !257
  call void @free(i8* %21) #7, !dbg !258
  call void @free_ivector(i32* %27, i32 0, i32 %7) #7, !dbg !259
  call void @free_ivector(i32* %28, i32 0, i32 %7) #7, !dbg !260
  call void @free_ivector(i32* %29, i32 0, i32 %7) #7, !dbg !261
  call void @free_ivector(i32* %30, i32 0, i32 %7) #7, !dbg !262
  %145 = icmp eq i32 %8, 4, !dbg !263
  br i1 %145, label %146, label %147, !dbg !265

146:                                              ; preds = %._crit_edge37
  call void @free_ivector(i32* %.0, i32 0, i32 %7) #7, !dbg !266
  br label %147, !dbg !268

147:                                              ; preds = %146, %._crit_edge37
  call void @free_ivector(i32* %35, i32 0, i32 %7) #7, !dbg !269
  %148 = bitcast %struct.kdnode** %13 to i8*, !dbg !270
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %148) #7, !dbg !270
  %149 = bitcast i32* %12 to i8*, !dbg !270
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %149) #7, !dbg !270
  %150 = bitcast i32* %11 to i8*, !dbg !270
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %150) #7, !dbg !270
  ret i32 %.01.lcssa, !dbg !271
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !4 dso_local i32 @get_blocksize() #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #4

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

declare !dbg !18 dso_local i32* @ivector(i32, i32) #3

; Function Attrs: nounwind uwtable
define internal void @heapsort_index(i32* %0, i32 %1, double* %2, i32 %3, i32 %4) #0 !dbg !272 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !276, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata i32 %1, metadata !277, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double* %2, metadata !278, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata i32 %3, metadata !279, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata i32 %4, metadata !280, metadata !DIExpression()), !dbg !283
  %6 = sdiv i32 %1, 2, !dbg !284
  call void @llvm.dbg.value(metadata i32 %6, metadata !281, metadata !DIExpression()), !dbg !283
  %7 = icmp sgt i32 %1, 1, !dbg !286
  br i1 %7, label %.lr.ph, label %._crit_edge, !dbg !288

.lr.ph:                                           ; preds = %5, %.lr.ph
  %.03 = phi i32 [ %8, %.lr.ph ], [ %6, %5 ]
  call void @llvm.dbg.value(metadata i32 %.03, metadata !281, metadata !DIExpression()), !dbg !283
  call void @downheap_index(i32* %0, i32 %1, i32 %.03, double* %2, i32 %3, i32 %4), !dbg !289
  %8 = add nsw i32 %.03, -1, !dbg !290
  call void @llvm.dbg.value(metadata i32 %8, metadata !281, metadata !DIExpression()), !dbg !283
  %9 = icmp sgt i32 %.03, 1, !dbg !286
  br i1 %9, label %.lr.ph, label %._crit_edge, !dbg !288, !llvm.loop !291

._crit_edge:                                      ; preds = %.lr.ph, %5
  %10 = sext i32 %1 to i64, !dbg !293
  call void @llvm.dbg.value(metadata i64 %10, metadata !277, metadata !DIExpression()), !dbg !283
  %11 = icmp sgt i32 %1, 1, !dbg !294
  br i1 %11, label %.lr.ph6, label %._crit_edge7, !dbg !293

.lr.ph6:                                          ; preds = %._crit_edge, %.lr.ph6
  %indvars.iv4 = phi i64 [ %indvars.iv.next, %.lr.ph6 ], [ %10, %._crit_edge ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv4, metadata !277, metadata !DIExpression()), !dbg !283
  %12 = load i32, i32* %0, align 4, !dbg !295, !tbaa !111
  call void @llvm.dbg.value(metadata i32 %12, metadata !282, metadata !DIExpression()), !dbg !283
  %indvars.iv.next = add nsw i64 %indvars.iv4, -1, !dbg !297
  %13 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next, !dbg !298
  %14 = load i32, i32* %13, align 4, !dbg !298, !tbaa !111
  store i32 %14, i32* %0, align 4, !dbg !299, !tbaa !111
  %15 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next, !dbg !300
  store i32 %12, i32* %15, align 4, !dbg !301, !tbaa !111
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !277, metadata !DIExpression()), !dbg !283
  %16 = trunc i64 %indvars.iv.next to i32, !dbg !302
  call void @downheap_index(i32* nonnull %0, i32 %16, i32 1, double* %2, i32 %3, i32 %4), !dbg !302
  %17 = icmp sgt i64 %indvars.iv4, 2, !dbg !294
  br i1 %17, label %.lr.ph6, label %._crit_edge7, !dbg !293, !llvm.loop !303

._crit_edge7:                                     ; preds = %.lr.ph6, %._crit_edge
  ret void, !dbg !305
}

; Function Attrs: nounwind uwtable
define internal void @buildkdtree(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6, i32 %7, %struct.kdnode** %8, %struct.kdnode* %9, double* %10, i32 %11, i32 %12) #0 !dbg !306 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !311, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32* %1, metadata !312, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32* %2, metadata !313, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32* %3, metadata !314, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32* %4, metadata !315, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32* %5, metadata !316, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %6, metadata !317, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %7, metadata !318, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata %struct.kdnode** %8, metadata !319, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata %struct.kdnode* %9, metadata !320, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata double* %10, metadata !321, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %11, metadata !322, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %12, metadata !323, metadata !DIExpression()), !dbg !330
  %14 = add nsw i32 %12, 1, !dbg !331
  %15 = srem i32 %11, %14, !dbg !332
  call void @llvm.dbg.value(metadata i32 %15, metadata !322, metadata !DIExpression()), !dbg !330
  %16 = icmp eq i32 %7, %6, !dbg !333
  br i1 %16, label %17, label %22, !dbg !335

17:                                               ; preds = %13
  %18 = sext i32 %6 to i64, !dbg !336
  %19 = getelementptr inbounds i32, i32* %0, i64 %18, !dbg !336
  %20 = load i32, i32* %19, align 4, !dbg !336, !tbaa !111
  %21 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i64 0, i32 0, !dbg !338
  store i32 %20, i32* %21, align 8, !dbg !339, !tbaa !340
  br label %352, !dbg !341

22:                                               ; preds = %13
  %23 = add nsw i32 %6, 1, !dbg !342
  %24 = icmp eq i32 %23, %7, !dbg !344
  br i1 %24, label %25, label %133, !dbg !345

25:                                               ; preds = %22
  %cond = icmp eq i32 %15, 0, !dbg !346
  br i1 %cond, label %26, label %35, !dbg !346

26:                                               ; preds = %25
  %27 = sext i32 %6 to i64, !dbg !349
  %28 = getelementptr inbounds i32, i32* %0, i64 %27, !dbg !349
  %29 = load i32, i32* %28, align 4, !dbg !349, !tbaa !111
  %30 = sext i32 %7 to i64, !dbg !350
  %31 = getelementptr inbounds i32, i32* %0, i64 %30, !dbg !350
  %32 = load i32, i32* %31, align 4, !dbg !350, !tbaa !111
  %33 = icmp slt i32 %29, %32, !dbg !351
  br i1 %33, label %55, label %34, !dbg !352

34:                                               ; preds = %26
  %cond87 = icmp eq i32 %15, 0, !dbg !353
  br i1 %cond87, label %72, label %35, !dbg !353

35:                                               ; preds = %34, %25
  %36 = sext i32 %6 to i64, !dbg !354
  %37 = getelementptr inbounds i32, i32* %0, i64 %36, !dbg !354
  %38 = load i32, i32* %37, align 4, !dbg !354, !tbaa !111
  %39 = mul nsw i32 %38, %12, !dbg !355
  %40 = add nsw i32 %39, %15, !dbg !356
  %41 = add nsw i32 %40, -1, !dbg !357
  %42 = sext i32 %41 to i64, !dbg !358
  %43 = getelementptr inbounds double, double* %10, i64 %42, !dbg !358
  %44 = load double, double* %43, align 8, !dbg !358, !tbaa !359
  %45 = sext i32 %7 to i64, !dbg !361
  %46 = getelementptr inbounds i32, i32* %0, i64 %45, !dbg !361
  %47 = load i32, i32* %46, align 4, !dbg !361, !tbaa !111
  %48 = mul nsw i32 %47, %12, !dbg !362
  %49 = add nsw i32 %48, %15, !dbg !363
  %50 = add nsw i32 %49, -1, !dbg !364
  %51 = sext i32 %50 to i64, !dbg !365
  %52 = getelementptr inbounds double, double* %10, i64 %51, !dbg !365
  %53 = load double, double* %52, align 8, !dbg !365, !tbaa !359
  %54 = fcmp olt double %44, %53, !dbg !366
  br i1 %54, label %55, label %71, !dbg !367

55:                                               ; preds = %35, %26
  %56 = sext i32 %7 to i64, !dbg !368
  %57 = getelementptr inbounds i32, i32* %0, i64 %56, !dbg !368
  %58 = load i32, i32* %57, align 4, !dbg !368, !tbaa !111
  %59 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i64 0, i32 0, !dbg !370
  store i32 %58, i32* %59, align 8, !dbg !371, !tbaa !340
  %60 = sext i32 %6 to i64, !dbg !372
  %61 = getelementptr inbounds i32, i32* %0, i64 %60, !dbg !372
  %62 = load i32, i32* %61, align 4, !dbg !372, !tbaa !111
  %63 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !373, !tbaa !86
  %64 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %63, i64 0, i32 0, !dbg !374
  store i32 %62, i32* %64, align 8, !dbg !375, !tbaa !340
  %65 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %63, i64 0, i32 1, !dbg !376
  store %struct.kdnode* null, %struct.kdnode** %65, align 8, !dbg !377, !tbaa !142
  %66 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !378, !tbaa !86
  %67 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %66, i64 0, i32 2, !dbg !379
  store %struct.kdnode* null, %struct.kdnode** %67, align 8, !dbg !380, !tbaa !146
  %68 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !381, !tbaa !86
  %69 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %68, i64 1, !dbg !381
  store %struct.kdnode* %69, %struct.kdnode** %8, align 8, !dbg !381, !tbaa !86
  %70 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i64 0, i32 1, !dbg !382
  store %struct.kdnode* %68, %struct.kdnode** %70, align 8, !dbg !383, !tbaa !142
  br label %352, !dbg !384

71:                                               ; preds = %35
  %cond88 = icmp eq i32 %15, 0, !dbg !385
  br i1 %cond88, label %72, label %81, !dbg !385

72:                                               ; preds = %71, %34
  %73 = sext i32 %6 to i64, !dbg !387
  %74 = getelementptr inbounds i32, i32* %0, i64 %73, !dbg !387
  %75 = load i32, i32* %74, align 4, !dbg !387, !tbaa !111
  %76 = sext i32 %7 to i64, !dbg !388
  %77 = getelementptr inbounds i32, i32* %0, i64 %76, !dbg !388
  %78 = load i32, i32* %77, align 4, !dbg !388, !tbaa !111
  %79 = icmp sgt i32 %75, %78, !dbg !389
  br i1 %79, label %101, label %80, !dbg !390

80:                                               ; preds = %72
  %.not110 = icmp eq i32 %15, 0, !dbg !391
  br i1 %.not110, label %117, label %81, !dbg !392

81:                                               ; preds = %71, %80
  %82 = sext i32 %6 to i64, !dbg !393
  %83 = getelementptr inbounds i32, i32* %0, i64 %82, !dbg !393
  %84 = load i32, i32* %83, align 4, !dbg !393, !tbaa !111
  %85 = mul nsw i32 %84, %12, !dbg !394
  %86 = add nsw i32 %85, %15, !dbg !395
  %87 = add nsw i32 %86, -1, !dbg !396
  %88 = sext i32 %87 to i64, !dbg !397
  %89 = getelementptr inbounds double, double* %10, i64 %88, !dbg !397
  %90 = load double, double* %89, align 8, !dbg !397, !tbaa !359
  %91 = sext i32 %7 to i64, !dbg !398
  %92 = getelementptr inbounds i32, i32* %0, i64 %91, !dbg !398
  %93 = load i32, i32* %92, align 4, !dbg !398, !tbaa !111
  %94 = mul nsw i32 %93, %12, !dbg !399
  %95 = add nsw i32 %94, %15, !dbg !400
  %96 = add nsw i32 %95, -1, !dbg !401
  %97 = sext i32 %96 to i64, !dbg !402
  %98 = getelementptr inbounds double, double* %10, i64 %97, !dbg !402
  %99 = load double, double* %98, align 8, !dbg !402, !tbaa !359
  %100 = fcmp ogt double %90, %99, !dbg !403
  br i1 %100, label %101, label %117, !dbg !404

101:                                              ; preds = %81, %72
  %102 = sext i32 %6 to i64, !dbg !405
  %103 = getelementptr inbounds i32, i32* %0, i64 %102, !dbg !405
  %104 = load i32, i32* %103, align 4, !dbg !405, !tbaa !111
  %105 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i64 0, i32 0, !dbg !407
  store i32 %104, i32* %105, align 8, !dbg !408, !tbaa !340
  %106 = sext i32 %7 to i64, !dbg !409
  %107 = getelementptr inbounds i32, i32* %0, i64 %106, !dbg !409
  %108 = load i32, i32* %107, align 4, !dbg !409, !tbaa !111
  %109 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !410, !tbaa !86
  %110 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %109, i64 0, i32 0, !dbg !411
  store i32 %108, i32* %110, align 8, !dbg !412, !tbaa !340
  %111 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %109, i64 0, i32 1, !dbg !413
  store %struct.kdnode* null, %struct.kdnode** %111, align 8, !dbg !414, !tbaa !142
  %112 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !415, !tbaa !86
  %113 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %112, i64 0, i32 2, !dbg !416
  store %struct.kdnode* null, %struct.kdnode** %113, align 8, !dbg !417, !tbaa !146
  %114 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !418, !tbaa !86
  %115 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %114, i64 1, !dbg !418
  store %struct.kdnode* %115, %struct.kdnode** %8, align 8, !dbg !418, !tbaa !86
  %116 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i64 0, i32 1, !dbg !419
  store %struct.kdnode* %114, %struct.kdnode** %116, align 8, !dbg !420, !tbaa !142
  br label %352, !dbg !421

117:                                              ; preds = %81, %80
  %118 = sext i32 %6 to i64, !dbg !422
  %119 = getelementptr inbounds i32, i32* %0, i64 %118, !dbg !422
  %120 = load i32, i32* %119, align 4, !dbg !422, !tbaa !111
  %121 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i64 0, i32 0, !dbg !424
  store i32 %120, i32* %121, align 8, !dbg !425, !tbaa !340
  %122 = sext i32 %7 to i64, !dbg !426
  %123 = getelementptr inbounds i32, i32* %0, i64 %122, !dbg !426
  %124 = load i32, i32* %123, align 4, !dbg !426, !tbaa !111
  %125 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !427, !tbaa !86
  %126 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %125, i64 0, i32 0, !dbg !428
  store i32 %124, i32* %126, align 8, !dbg !429, !tbaa !340
  %127 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %125, i64 0, i32 1, !dbg !430
  store %struct.kdnode* null, %struct.kdnode** %127, align 8, !dbg !431, !tbaa !142
  %128 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !432, !tbaa !86
  %129 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %128, i64 0, i32 2, !dbg !433
  store %struct.kdnode* null, %struct.kdnode** %129, align 8, !dbg !434, !tbaa !146
  %130 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !435, !tbaa !86
  %131 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %130, i64 1, !dbg !435
  store %struct.kdnode* %131, %struct.kdnode** %8, align 8, !dbg !435, !tbaa !86
  %132 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i64 0, i32 2, !dbg !436
  store %struct.kdnode* %130, %struct.kdnode** %132, align 8, !dbg !437, !tbaa !146
  br label %352

133:                                              ; preds = %22
  %134 = add nsw i32 %6, %7, !dbg !438
  %135 = sdiv i32 %134, 2, !dbg !440
  call void @llvm.dbg.value(metadata i32 %135, metadata !325, metadata !DIExpression()), !dbg !330
  %136 = icmp eq i32 %15, 0, !dbg !441
  br i1 %136, label %137, label %141, !dbg !443

137:                                              ; preds = %133
  %138 = sext i32 %135 to i64, !dbg !444
  %139 = getelementptr inbounds i32, i32* %0, i64 %138, !dbg !444
  %140 = load i32, i32* %139, align 4, !dbg !444, !tbaa !111
  call void @llvm.dbg.value(metadata i32 %140, metadata !326, metadata !DIExpression()), !dbg !330
  br label %.loopexit, !dbg !446

141:                                              ; preds = %133
  %142 = sext i32 %135 to i64, !dbg !447
  %143 = getelementptr inbounds i32, i32* %0, i64 %142, !dbg !447
  %144 = load i32, i32* %143, align 4, !dbg !447, !tbaa !111
  %145 = mul nsw i32 %144, %12, !dbg !449
  %146 = add nsw i32 %145, %15, !dbg !450
  %147 = add nsw i32 %146, -1, !dbg !451
  %148 = sext i32 %147 to i64, !dbg !452
  %149 = getelementptr inbounds double, double* %10, i64 %148, !dbg !452
  %150 = load double, double* %149, align 8, !dbg !452, !tbaa !359
  call void @llvm.dbg.value(metadata double %150, metadata !329, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %135, metadata !324, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !330
  %narrow = add nsw i32 %135, -1, !dbg !453
  %151 = sext i32 %narrow to i64, !dbg !453
  %152 = sext i32 %6 to i64, !dbg !453
  %smin = call i32 @llvm.smin.i32(i32 %135, i32 %6), !dbg !453
  call void @llvm.dbg.value(metadata i32 %135, metadata !325, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i64 %151, metadata !324, metadata !DIExpression()), !dbg !330
  %.not.not = icmp sgt i32 %135, %6, !dbg !455
  br i1 %.not.not, label %.lr.ph, label %.loopexit, !dbg !457

.lr.ph:                                           ; preds = %141, %162
  %indvars2541 = phi i32 [ %indvars25, %162 ], [ %narrow, %141 ]
  %.01640 = phi i32 [ %indvars2541, %162 ], [ %135, %141 ]
  %indvars.iv39 = phi i64 [ %indvars.iv.next, %162 ], [ %151, %141 ]
  call void @llvm.dbg.value(metadata i32 %.01640, metadata !325, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i64 %indvars.iv39, metadata !324, metadata !DIExpression()), !dbg !330
  %153 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv39, !dbg !458
  %154 = load i32, i32* %153, align 4, !dbg !458, !tbaa !111
  %155 = mul nsw i32 %154, %12, !dbg !461
  %156 = add nsw i32 %155, %15, !dbg !462
  %157 = add nsw i32 %156, -1, !dbg !463
  %158 = sext i32 %157 to i64, !dbg !464
  %159 = getelementptr inbounds double, double* %10, i64 %158, !dbg !464
  %160 = load double, double* %159, align 8, !dbg !464, !tbaa !359
  %161 = fcmp olt double %160, %150, !dbg !465
  br i1 %161, label %.loopexit, label %162, !dbg !466

162:                                              ; preds = %.lr.ph
  call void @llvm.dbg.value(metadata i64 %indvars.iv39, metadata !325, metadata !DIExpression()), !dbg !330
  %indvars.iv.next = add nsw i64 %indvars.iv39, -1, !dbg !467
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !324, metadata !DIExpression()), !dbg !330
  %indvars25 = trunc i64 %indvars.iv.next to i32, !dbg !468
  call void @llvm.dbg.value(metadata i32 %indvars2541, metadata !325, metadata !DIExpression()), !dbg !330
  %.not109.not = icmp sgt i64 %indvars.iv39, %152, !dbg !455
  br i1 %.not109.not, label %.lr.ph, label %.loopexit, !dbg !457, !llvm.loop !469

.loopexit:                                        ; preds = %.lr.ph, %162, %141, %137
  %.117 = phi i32 [ %135, %137 ], [ %.01640, %.lr.ph ], [ %smin, %162 ], [ %smin, %141 ], !dbg !471
  %.015 = phi i32 [ %140, %137 ], [ undef, %.lr.ph ], [ undef, %162 ], [ undef, %141 ]
  %.0 = phi double [ undef, %137 ], [ %150, %.lr.ph ], [ %150, %162 ], [ %150, %141 ]
  call void @llvm.dbg.value(metadata double %.0, metadata !329, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %.015, metadata !326, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %.117, metadata !325, metadata !DIExpression()), !dbg !330
  %163 = sext i32 %.117 to i64, !dbg !472
  %164 = getelementptr inbounds i32, i32* %0, i64 %163, !dbg !472
  %165 = load i32, i32* %164, align 4, !dbg !472, !tbaa !111
  %166 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i64 0, i32 0, !dbg !473
  store i32 %165, i32* %166, align 8, !dbg !474, !tbaa !340
  %167 = add nsw i32 %6, -1, !dbg !475
  call void @llvm.dbg.value(metadata i32 %167, metadata !327, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %.117, metadata !328, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %6, metadata !324, metadata !DIExpression()), !dbg !330
  %168 = sext i32 %6 to i64, !dbg !476
  %169 = sext i32 %7 to i64, !dbg !476
  call void @llvm.dbg.value(metadata i32 %.117, metadata !328, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %167, metadata !327, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i64 %168, metadata !324, metadata !DIExpression()), !dbg !330
  %.not = icmp sgt i32 %6, %7, !dbg !478
  br i1 %.not, label %._crit_edge, label %.lr.ph50, !dbg !480

.lr.ph50:                                         ; preds = %.loopexit, %203
  %.0148 = phi i32 [ %.2, %203 ], [ %.117, %.loopexit ]
  %.0246 = phi i32 [ %.24, %203 ], [ %167, %.loopexit ]
  %indvars.iv2642 = phi i64 [ %indvars.iv.next27, %203 ], [ %168, %.loopexit ]
  call void @llvm.dbg.value(metadata i32 %.0148, metadata !328, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %.0246, metadata !327, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i64 %indvars.iv2642, metadata !324, metadata !DIExpression()), !dbg !330
  %170 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv2642, !dbg !481
  %171 = load i32, i32* %170, align 4, !dbg !481, !tbaa !111
  %172 = sext i32 %.117 to i64, !dbg !484
  %173 = getelementptr inbounds i32, i32* %0, i64 %172, !dbg !484
  %174 = load i32, i32* %173, align 4, !dbg !484, !tbaa !111
  %.not106 = icmp eq i32 %171, %174, !dbg !485
  br i1 %.not106, label %203, label %175, !dbg !486

175:                                              ; preds = %.lr.ph50
  %cond89 = icmp eq i32 %15, 0, !dbg !487
  br i1 %cond89, label %176, label %181, !dbg !487

176:                                              ; preds = %175
  %177 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv2642, !dbg !490
  %178 = load i32, i32* %177, align 4, !dbg !490, !tbaa !111
  %179 = icmp slt i32 %178, %.015, !dbg !491
  br i1 %179, label %191, label %180, !dbg !492

180:                                              ; preds = %176
  %.not108 = icmp eq i32 %15, 0, !dbg !493
  br i1 %.not108, label %197, label %181, !dbg !494

181:                                              ; preds = %175, %180
  %182 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv2642, !dbg !495
  %183 = load i32, i32* %182, align 4, !dbg !495, !tbaa !111
  %184 = mul nsw i32 %183, %12, !dbg !496
  %185 = add nsw i32 %184, %15, !dbg !497
  %186 = add nsw i32 %185, -1, !dbg !498
  %187 = sext i32 %186 to i64, !dbg !499
  %188 = getelementptr inbounds double, double* %10, i64 %187, !dbg !499
  %189 = load double, double* %188, align 8, !dbg !499, !tbaa !359
  %190 = fcmp olt double %189, %.0, !dbg !500
  br i1 %190, label %191, label %197, !dbg !501

191:                                              ; preds = %181, %176
  %192 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv2642, !dbg !502
  %193 = load i32, i32* %192, align 4, !dbg !502, !tbaa !111
  %194 = add nsw i32 %.0246, 1, !dbg !504
  call void @llvm.dbg.value(metadata i32 %194, metadata !327, metadata !DIExpression()), !dbg !330
  %195 = sext i32 %194 to i64, !dbg !505
  %196 = getelementptr inbounds i32, i32* %5, i64 %195, !dbg !505
  store i32 %193, i32* %196, align 4, !dbg !506, !tbaa !111
  br label %203, !dbg !507

197:                                              ; preds = %181, %180
  %198 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv2642, !dbg !508
  %199 = load i32, i32* %198, align 4, !dbg !508, !tbaa !111
  %200 = add nsw i32 %.0148, 1, !dbg !510
  call void @llvm.dbg.value(metadata i32 %200, metadata !328, metadata !DIExpression()), !dbg !330
  %201 = sext i32 %200 to i64, !dbg !511
  %202 = getelementptr inbounds i32, i32* %5, i64 %201, !dbg !511
  store i32 %199, i32* %202, align 4, !dbg !512, !tbaa !111
  br label %203

203:                                              ; preds = %.lr.ph50, %197, %191
  %.24 = phi i32 [ %.0246, %.lr.ph50 ], [ %194, %191 ], [ %.0246, %197 ], !dbg !513
  %.2 = phi i32 [ %.0148, %.lr.ph50 ], [ %.0148, %191 ], [ %200, %197 ], !dbg !514
  call void @llvm.dbg.value(metadata i32 %.2, metadata !328, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %.24, metadata !327, metadata !DIExpression()), !dbg !330
  %indvars.iv.next27 = add i64 %indvars.iv2642, 1, !dbg !515
  call void @llvm.dbg.value(metadata i32 %.2, metadata !328, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %.24, metadata !327, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next27, metadata !324, metadata !DIExpression()), !dbg !330
  %.not107 = icmp sgt i64 %indvars.iv.next27, %169, !dbg !478
  br i1 %.not107, label %._crit_edge, label %.lr.ph50, !dbg !480, !llvm.loop !516

._crit_edge:                                      ; preds = %203, %.loopexit
  %204 = add nsw i32 %6, -1, !dbg !518
  call void @llvm.dbg.value(metadata i32 %204, metadata !327, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %.117, metadata !328, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %6, metadata !324, metadata !DIExpression()), !dbg !330
  %205 = sext i32 %7 to i64, !dbg !519
  call void @llvm.dbg.value(metadata i32 %.117, metadata !328, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %204, metadata !327, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i64 %168, metadata !324, metadata !DIExpression()), !dbg !330
  %.not93 = icmp sgt i32 %6, %7, !dbg !521
  br i1 %.not93, label %._crit_edge61, label %.lr.ph60, !dbg !523

.lr.ph60:                                         ; preds = %._crit_edge, %239
  %.357 = phi i32 [ %.5, %239 ], [ %.117, %._crit_edge ]
  %.3555 = phi i32 [ %.57, %239 ], [ %204, %._crit_edge ]
  %indvars.iv2951 = phi i64 [ %indvars.iv.next30, %239 ], [ %168, %._crit_edge ]
  call void @llvm.dbg.value(metadata i32 %.357, metadata !328, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %.3555, metadata !327, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i64 %indvars.iv2951, metadata !324, metadata !DIExpression()), !dbg !330
  %206 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv2951, !dbg !524
  %207 = load i32, i32* %206, align 4, !dbg !524, !tbaa !111
  %208 = sext i32 %.117 to i64, !dbg !527
  %209 = getelementptr inbounds i32, i32* %0, i64 %208, !dbg !527
  %210 = load i32, i32* %209, align 4, !dbg !527, !tbaa !111
  %.not103 = icmp eq i32 %207, %210, !dbg !528
  br i1 %.not103, label %239, label %211, !dbg !529

211:                                              ; preds = %.lr.ph60
  %cond90 = icmp eq i32 %15, 0, !dbg !530
  br i1 %cond90, label %212, label %217, !dbg !530

212:                                              ; preds = %211
  %213 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv2951, !dbg !533
  %214 = load i32, i32* %213, align 4, !dbg !533, !tbaa !111
  %215 = icmp slt i32 %214, %.015, !dbg !534
  br i1 %215, label %227, label %216, !dbg !535

216:                                              ; preds = %212
  %.not105 = icmp eq i32 %15, 0, !dbg !536
  br i1 %.not105, label %233, label %217, !dbg !537

217:                                              ; preds = %211, %216
  %218 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv2951, !dbg !538
  %219 = load i32, i32* %218, align 4, !dbg !538, !tbaa !111
  %220 = mul nsw i32 %219, %12, !dbg !539
  %221 = add nsw i32 %220, %15, !dbg !540
  %222 = add nsw i32 %221, -1, !dbg !541
  %223 = sext i32 %222 to i64, !dbg !542
  %224 = getelementptr inbounds double, double* %10, i64 %223, !dbg !542
  %225 = load double, double* %224, align 8, !dbg !542, !tbaa !359
  %226 = fcmp olt double %225, %.0, !dbg !543
  br i1 %226, label %227, label %233, !dbg !544

227:                                              ; preds = %217, %212
  %228 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv2951, !dbg !545
  %229 = load i32, i32* %228, align 4, !dbg !545, !tbaa !111
  %230 = add nsw i32 %.3555, 1, !dbg !547
  call void @llvm.dbg.value(metadata i32 %230, metadata !327, metadata !DIExpression()), !dbg !330
  %231 = sext i32 %230 to i64, !dbg !548
  %232 = getelementptr inbounds i32, i32* %1, i64 %231, !dbg !548
  store i32 %229, i32* %232, align 4, !dbg !549, !tbaa !111
  br label %239, !dbg !550

233:                                              ; preds = %217, %216
  %234 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv2951, !dbg !551
  %235 = load i32, i32* %234, align 4, !dbg !551, !tbaa !111
  %236 = add nsw i32 %.357, 1, !dbg !553
  call void @llvm.dbg.value(metadata i32 %236, metadata !328, metadata !DIExpression()), !dbg !330
  %237 = sext i32 %236 to i64, !dbg !554
  %238 = getelementptr inbounds i32, i32* %1, i64 %237, !dbg !554
  store i32 %235, i32* %238, align 4, !dbg !555, !tbaa !111
  br label %239

239:                                              ; preds = %.lr.ph60, %233, %227
  %.57 = phi i32 [ %.3555, %.lr.ph60 ], [ %230, %227 ], [ %.3555, %233 ], !dbg !513
  %.5 = phi i32 [ %.357, %.lr.ph60 ], [ %.357, %227 ], [ %236, %233 ], !dbg !556
  call void @llvm.dbg.value(metadata i32 %.5, metadata !328, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %.57, metadata !327, metadata !DIExpression()), !dbg !330
  %indvars.iv.next30 = add i64 %indvars.iv2951, 1, !dbg !557
  call void @llvm.dbg.value(metadata i32 %.5, metadata !328, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %.57, metadata !327, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next30, metadata !324, metadata !DIExpression()), !dbg !330
  %.not104 = icmp sgt i64 %indvars.iv.next30, %205, !dbg !521
  br i1 %.not104, label %._crit_edge61, label %.lr.ph60, !dbg !523, !llvm.loop !558

._crit_edge61:                                    ; preds = %239, %._crit_edge
  %240 = add nsw i32 %6, -1, !dbg !560
  call void @llvm.dbg.value(metadata i32 %240, metadata !327, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %.117, metadata !328, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %6, metadata !324, metadata !DIExpression()), !dbg !330
  %241 = sext i32 %7 to i64, !dbg !562
  call void @llvm.dbg.value(metadata i32 %.117, metadata !328, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %240, metadata !327, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i64 %168, metadata !324, metadata !DIExpression()), !dbg !330
  %.not94 = icmp sgt i32 %6, %7, !dbg !564
  br i1 %.not94, label %._crit_edge72, label %.lr.ph71, !dbg !566

.lr.ph71:                                         ; preds = %._crit_edge61, %275
  %.668 = phi i32 [ %.8, %275 ], [ %.117, %._crit_edge61 ]
  %.6866 = phi i32 [ %.810, %275 ], [ %240, %._crit_edge61 ]
  %indvars.iv3262 = phi i64 [ %indvars.iv.next33, %275 ], [ %168, %._crit_edge61 ]
  call void @llvm.dbg.value(metadata i32 %.668, metadata !328, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %.6866, metadata !327, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i64 %indvars.iv3262, metadata !324, metadata !DIExpression()), !dbg !330
  %242 = getelementptr inbounds i32, i32* %3, i64 %indvars.iv3262, !dbg !567
  %243 = load i32, i32* %242, align 4, !dbg !567, !tbaa !111
  %244 = sext i32 %.117 to i64, !dbg !570
  %245 = getelementptr inbounds i32, i32* %0, i64 %244, !dbg !570
  %246 = load i32, i32* %245, align 4, !dbg !570, !tbaa !111
  %.not100 = icmp eq i32 %243, %246, !dbg !571
  br i1 %.not100, label %275, label %247, !dbg !572

247:                                              ; preds = %.lr.ph71
  %cond91 = icmp eq i32 %15, 0, !dbg !573
  br i1 %cond91, label %248, label %253, !dbg !573

248:                                              ; preds = %247
  %249 = getelementptr inbounds i32, i32* %3, i64 %indvars.iv3262, !dbg !576
  %250 = load i32, i32* %249, align 4, !dbg !576, !tbaa !111
  %251 = icmp slt i32 %250, %.015, !dbg !577
  br i1 %251, label %263, label %252, !dbg !578

252:                                              ; preds = %248
  %.not102 = icmp eq i32 %15, 0, !dbg !579
  br i1 %.not102, label %269, label %253, !dbg !580

253:                                              ; preds = %247, %252
  %254 = getelementptr inbounds i32, i32* %3, i64 %indvars.iv3262, !dbg !581
  %255 = load i32, i32* %254, align 4, !dbg !581, !tbaa !111
  %256 = mul nsw i32 %255, %12, !dbg !582
  %257 = add nsw i32 %256, %15, !dbg !583
  %258 = add nsw i32 %257, -1, !dbg !584
  %259 = sext i32 %258 to i64, !dbg !585
  %260 = getelementptr inbounds double, double* %10, i64 %259, !dbg !585
  %261 = load double, double* %260, align 8, !dbg !585, !tbaa !359
  %262 = fcmp olt double %261, %.0, !dbg !586
  br i1 %262, label %263, label %269, !dbg !587

263:                                              ; preds = %253, %248
  %264 = getelementptr inbounds i32, i32* %3, i64 %indvars.iv3262, !dbg !588
  %265 = load i32, i32* %264, align 4, !dbg !588, !tbaa !111
  %266 = add nsw i32 %.6866, 1, !dbg !590
  call void @llvm.dbg.value(metadata i32 %266, metadata !327, metadata !DIExpression()), !dbg !330
  %267 = sext i32 %266 to i64, !dbg !591
  %268 = getelementptr inbounds i32, i32* %2, i64 %267, !dbg !591
  store i32 %265, i32* %268, align 4, !dbg !592, !tbaa !111
  br label %275, !dbg !593

269:                                              ; preds = %253, %252
  %270 = getelementptr inbounds i32, i32* %3, i64 %indvars.iv3262, !dbg !594
  %271 = load i32, i32* %270, align 4, !dbg !594, !tbaa !111
  %272 = add nsw i32 %.668, 1, !dbg !596
  call void @llvm.dbg.value(metadata i32 %272, metadata !328, metadata !DIExpression()), !dbg !330
  %273 = sext i32 %272 to i64, !dbg !597
  %274 = getelementptr inbounds i32, i32* %2, i64 %273, !dbg !597
  store i32 %271, i32* %274, align 4, !dbg !598, !tbaa !111
  br label %275

275:                                              ; preds = %.lr.ph71, %269, %263
  %.810 = phi i32 [ %.6866, %.lr.ph71 ], [ %266, %263 ], [ %.6866, %269 ], !dbg !599
  %.8 = phi i32 [ %.668, %.lr.ph71 ], [ %.668, %263 ], [ %272, %269 ], !dbg !600
  call void @llvm.dbg.value(metadata i32 %.8, metadata !328, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %.810, metadata !327, metadata !DIExpression()), !dbg !330
  %indvars.iv.next33 = add i64 %indvars.iv3262, 1, !dbg !601
  call void @llvm.dbg.value(metadata i32 %.8, metadata !328, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %.810, metadata !327, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next33, metadata !324, metadata !DIExpression()), !dbg !330
  %.not101 = icmp sgt i64 %indvars.iv.next33, %241, !dbg !564
  br i1 %.not101, label %._crit_edge72, label %.lr.ph71, !dbg !566, !llvm.loop !602

._crit_edge72:                                    ; preds = %275, %._crit_edge61
  %.68.lcssa = phi i32 [ %240, %._crit_edge61 ], [ %.810, %275 ], !dbg !599
  %.6.lcssa = phi i32 [ %.117, %._crit_edge61 ], [ %.8, %275 ], !dbg !600
  %276 = icmp eq i32 %12, 4, !dbg !604
  br i1 %276, label %277, label %._crit_edge84, !dbg !606

277:                                              ; preds = %._crit_edge72
  %278 = add nsw i32 %6, -1, !dbg !607
  call void @llvm.dbg.value(metadata i32 %278, metadata !327, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %.117, metadata !328, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %6, metadata !324, metadata !DIExpression()), !dbg !330
  %279 = sext i32 %7 to i64, !dbg !609
  call void @llvm.dbg.value(metadata i32 %.117, metadata !328, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %278, metadata !327, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i64 %168, metadata !324, metadata !DIExpression()), !dbg !330
  %.not96 = icmp sgt i32 %6, %7, !dbg !611
  br i1 %.not96, label %._crit_edge84, label %.lr.ph83, !dbg !613

.lr.ph83:                                         ; preds = %277, %313
  %.980 = phi i32 [ %.11, %313 ], [ %.117, %277 ]
  %.91178 = phi i32 [ %.1113, %313 ], [ %278, %277 ]
  %indvars.iv3574 = phi i64 [ %indvars.iv.next36, %313 ], [ %168, %277 ]
  call void @llvm.dbg.value(metadata i32 %.980, metadata !328, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %.91178, metadata !327, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i64 %indvars.iv3574, metadata !324, metadata !DIExpression()), !dbg !330
  %280 = getelementptr inbounds i32, i32* %4, i64 %indvars.iv3574, !dbg !614
  %281 = load i32, i32* %280, align 4, !dbg !614, !tbaa !111
  %282 = sext i32 %.117 to i64, !dbg !617
  %283 = getelementptr inbounds i32, i32* %0, i64 %282, !dbg !617
  %284 = load i32, i32* %283, align 4, !dbg !617, !tbaa !111
  %.not97 = icmp eq i32 %281, %284, !dbg !618
  br i1 %.not97, label %313, label %285, !dbg !619

285:                                              ; preds = %.lr.ph83
  %cond92 = icmp eq i32 %15, 0, !dbg !620
  br i1 %cond92, label %286, label %291, !dbg !620

286:                                              ; preds = %285
  %287 = getelementptr inbounds i32, i32* %4, i64 %indvars.iv3574, !dbg !623
  %288 = load i32, i32* %287, align 4, !dbg !623, !tbaa !111
  %289 = icmp slt i32 %288, %.015, !dbg !624
  br i1 %289, label %301, label %290, !dbg !625

290:                                              ; preds = %286
  %.not99 = icmp eq i32 %15, 0, !dbg !626
  br i1 %.not99, label %307, label %291, !dbg !627

291:                                              ; preds = %285, %290
  %292 = getelementptr inbounds i32, i32* %4, i64 %indvars.iv3574, !dbg !628
  %293 = load i32, i32* %292, align 4, !dbg !628, !tbaa !111
  %294 = mul nsw i32 %293, %12, !dbg !629
  %295 = add nsw i32 %294, %15, !dbg !630
  %296 = add nsw i32 %295, -1, !dbg !631
  %297 = sext i32 %296 to i64, !dbg !632
  %298 = getelementptr inbounds double, double* %10, i64 %297, !dbg !632
  %299 = load double, double* %298, align 8, !dbg !632, !tbaa !359
  %300 = fcmp olt double %299, %.0, !dbg !633
  br i1 %300, label %301, label %307, !dbg !634

301:                                              ; preds = %291, %286
  %302 = getelementptr inbounds i32, i32* %4, i64 %indvars.iv3574, !dbg !635
  %303 = load i32, i32* %302, align 4, !dbg !635, !tbaa !111
  %304 = add nsw i32 %.91178, 1, !dbg !637
  call void @llvm.dbg.value(metadata i32 %304, metadata !327, metadata !DIExpression()), !dbg !330
  %305 = sext i32 %304 to i64, !dbg !638
  %306 = getelementptr inbounds i32, i32* %3, i64 %305, !dbg !638
  store i32 %303, i32* %306, align 4, !dbg !639, !tbaa !111
  br label %313, !dbg !640

307:                                              ; preds = %291, %290
  %308 = getelementptr inbounds i32, i32* %4, i64 %indvars.iv3574, !dbg !641
  %309 = load i32, i32* %308, align 4, !dbg !641, !tbaa !111
  %310 = add nsw i32 %.980, 1, !dbg !643
  call void @llvm.dbg.value(metadata i32 %310, metadata !328, metadata !DIExpression()), !dbg !330
  %311 = sext i32 %310 to i64, !dbg !644
  %312 = getelementptr inbounds i32, i32* %3, i64 %311, !dbg !644
  store i32 %309, i32* %312, align 4, !dbg !645, !tbaa !111
  br label %313

313:                                              ; preds = %.lr.ph83, %307, %301
  %.1113 = phi i32 [ %.91178, %.lr.ph83 ], [ %304, %301 ], [ %.91178, %307 ], !dbg !646
  %.11 = phi i32 [ %.980, %.lr.ph83 ], [ %.980, %301 ], [ %310, %307 ], !dbg !647
  call void @llvm.dbg.value(metadata i32 %.11, metadata !328, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %.1113, metadata !327, metadata !DIExpression()), !dbg !330
  %indvars.iv.next36 = add i64 %indvars.iv3574, 1, !dbg !648
  call void @llvm.dbg.value(metadata i32 %.11, metadata !328, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %.1113, metadata !327, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next36, metadata !324, metadata !DIExpression()), !dbg !330
  %.not98 = icmp sgt i64 %indvars.iv.next36, %279, !dbg !611
  br i1 %.not98, label %._crit_edge84, label %.lr.ph83, !dbg !613, !llvm.loop !649

._crit_edge84:                                    ; preds = %277, %313, %._crit_edge72
  %.1214 = phi i32 [ %.68.lcssa, %._crit_edge72 ], [ %278, %277 ], [ %.1113, %313 ], !dbg !513
  %.12 = phi i32 [ %.6.lcssa, %._crit_edge72 ], [ %.117, %277 ], [ %.11, %313 ], !dbg !513
  call void @llvm.dbg.value(metadata i32 %.12, metadata !328, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %.1214, metadata !327, metadata !DIExpression()), !dbg !330
  %.not95 = icmp slt i32 %.1214, %6, !dbg !651
  br i1 %.not95, label %331, label %314, !dbg !653

314:                                              ; preds = %._crit_edge84
  %315 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !654, !tbaa !86
  %316 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %315, i64 0, i32 1, !dbg !656
  store %struct.kdnode* null, %struct.kdnode** %316, align 8, !dbg !657, !tbaa !142
  %317 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !658, !tbaa !86
  %318 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %317, i64 0, i32 2, !dbg !659
  store %struct.kdnode* null, %struct.kdnode** %318, align 8, !dbg !660, !tbaa !146
  %319 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !661, !tbaa !86
  %320 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %319, i64 1, !dbg !661
  store %struct.kdnode* %320, %struct.kdnode** %8, align 8, !dbg !661, !tbaa !86
  %321 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i64 0, i32 1, !dbg !662
  store %struct.kdnode* %319, %struct.kdnode** %321, align 8, !dbg !663, !tbaa !142
  %322 = icmp eq i32 %12, 4, !dbg !664
  br i1 %322, label %323, label %327, !dbg !666

323:                                              ; preds = %314
  %324 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i64 0, i32 1, !dbg !667
  %325 = load %struct.kdnode*, %struct.kdnode** %324, align 8, !dbg !667, !tbaa !142
  %326 = add nsw i32 %15, 1, !dbg !669
  call void @buildkdtree(i32* %5, i32* %1, i32* %2, i32* %3, i32* %0, i32* %4, i32 %6, i32 %.1214, %struct.kdnode** nonnull %8, %struct.kdnode* %325, double* %10, i32 %326, i32 %12), !dbg !670
  br label %331, !dbg !671

327:                                              ; preds = %314
  %328 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i64 0, i32 1, !dbg !672
  %329 = load %struct.kdnode*, %struct.kdnode** %328, align 8, !dbg !672, !tbaa !142
  %330 = add nsw i32 %15, 1, !dbg !674
  call void @buildkdtree(i32* %5, i32* %1, i32* %2, i32* %0, i32* %4, i32* %3, i32 %6, i32 %.1214, %struct.kdnode** nonnull %8, %struct.kdnode* %329, double* %10, i32 %330, i32 %12), !dbg !675
  br label %331

331:                                              ; preds = %323, %327, %._crit_edge84
  %332 = icmp sgt i32 %.12, %.117, !dbg !676
  br i1 %332, label %333, label %352, !dbg !678

333:                                              ; preds = %331
  %334 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !679, !tbaa !86
  %335 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %334, i64 0, i32 1, !dbg !681
  store %struct.kdnode* null, %struct.kdnode** %335, align 8, !dbg !682, !tbaa !142
  %336 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !683, !tbaa !86
  %337 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %336, i64 0, i32 2, !dbg !684
  store %struct.kdnode* null, %struct.kdnode** %337, align 8, !dbg !685, !tbaa !146
  %338 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !686, !tbaa !86
  %339 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %338, i64 1, !dbg !686
  store %struct.kdnode* %339, %struct.kdnode** %8, align 8, !dbg !686, !tbaa !86
  %340 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i64 0, i32 2, !dbg !687
  store %struct.kdnode* %338, %struct.kdnode** %340, align 8, !dbg !688, !tbaa !146
  %341 = icmp eq i32 %12, 4, !dbg !689
  br i1 %341, label %342, label %347, !dbg !691

342:                                              ; preds = %333
  %343 = add nsw i32 %.117, 1, !dbg !692
  %344 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i64 0, i32 2, !dbg !694
  %345 = load %struct.kdnode*, %struct.kdnode** %344, align 8, !dbg !694, !tbaa !146
  %346 = add nsw i32 %15, 1, !dbg !695
  call void @buildkdtree(i32* %5, i32* %1, i32* %2, i32* %3, i32* %0, i32* %4, i32 %343, i32 %7, %struct.kdnode** nonnull %8, %struct.kdnode* %345, double* %10, i32 %346, i32 %12), !dbg !696
  br label %352, !dbg !697

347:                                              ; preds = %333
  %348 = add nsw i32 %.117, 1, !dbg !698
  %349 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i64 0, i32 2, !dbg !700
  %350 = load %struct.kdnode*, %struct.kdnode** %349, align 8, !dbg !700, !tbaa !146
  %351 = add nsw i32 %15, 1, !dbg !701
  call void @buildkdtree(i32* %5, i32* %1, i32* %2, i32* %0, i32* %4, i32* %3, i32 %348, i32 %7, %struct.kdnode** nonnull %8, %struct.kdnode* %350, double* %10, i32 %351, i32 %12), !dbg !702
  br label %352

352:                                              ; preds = %101, %117, %55, %342, %347, %331, %17
  ret void, !dbg !703
}

; Function Attrs: nounwind uwtable
define internal void @searchkdtree(%struct.kdnode* %0, double* %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7, double %8, double %9, i32 %10, i32* %11) #0 !dbg !704 {
  call void @llvm.dbg.value(metadata %struct.kdnode* %0, metadata !708, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata double* %1, metadata !709, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i32 %2, metadata !710, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i32 %3, metadata !711, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i32* %4, metadata !712, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i32* %5, metadata !713, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i32* %6, metadata !714, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i32* %7, metadata !715, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata double %8, metadata !716, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata double %9, metadata !717, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i32 %10, metadata !718, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i32* %11, metadata !719, metadata !DIExpression()), !dbg !725
  %13 = add nsw i32 %10, 1, !dbg !726
  %14 = srem i32 %2, %13, !dbg !727
  call void @llvm.dbg.value(metadata i32 %14, metadata !710, metadata !DIExpression()), !dbg !725
  %cond = icmp eq i32 %14, 0, !dbg !728
  br i1 %cond, label %15, label %19, !dbg !728

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i64 0, i32 2, !dbg !730
  %17 = load %struct.kdnode*, %struct.kdnode** %16, align 8, !dbg !730, !tbaa !146
  %.not8 = icmp eq %struct.kdnode* %17, null, !dbg !731
  br i1 %.not8, label %18, label %39, !dbg !732

18:                                               ; preds = %15
  %.not9 = icmp eq i32 %14, 0, !dbg !733
  br i1 %.not9, label %43, label %19, !dbg !734

19:                                               ; preds = %12, %18
  %20 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i64 0, i32 2, !dbg !735
  %21 = load %struct.kdnode*, %struct.kdnode** %20, align 8, !dbg !735, !tbaa !146
  %.not = icmp eq %struct.kdnode* %21, null, !dbg !736
  br i1 %.not, label %43, label %22, !dbg !737

22:                                               ; preds = %19
  %23 = mul nsw i32 %10, %3, !dbg !738
  %24 = add nsw i32 %23, %14, !dbg !739
  %25 = add nsw i32 %24, -1, !dbg !740
  %26 = sext i32 %25 to i64, !dbg !741
  %27 = getelementptr inbounds double, double* %1, i64 %26, !dbg !741
  %28 = load double, double* %27, align 8, !dbg !741, !tbaa !359
  %29 = fadd double %28, %8, !dbg !742
  %30 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i64 0, i32 0, !dbg !743
  %31 = load i32, i32* %30, align 8, !dbg !743, !tbaa !340
  %32 = mul nsw i32 %31, %10, !dbg !744
  %33 = add nsw i32 %32, %14, !dbg !745
  %34 = add nsw i32 %33, -1, !dbg !746
  %35 = sext i32 %34 to i64, !dbg !747
  %36 = getelementptr inbounds double, double* %1, i64 %35, !dbg !747
  %37 = load double, double* %36, align 8, !dbg !747, !tbaa !359
  %38 = fcmp ult double %29, %37, !dbg !748
  br i1 %38, label %43, label %39, !dbg !749

39:                                               ; preds = %22, %15
  %40 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i64 0, i32 2, !dbg !750
  %41 = load %struct.kdnode*, %struct.kdnode** %40, align 8, !dbg !750, !tbaa !146
  %42 = add nsw i32 %14, 1, !dbg !752
  call void @searchkdtree(%struct.kdnode* %41, double* %1, i32 %42, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7, double %8, double %9, i32 %10, i32* %11), !dbg !753
  br label %43, !dbg !754

43:                                               ; preds = %39, %22, %19, %18
  %44 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i64 0, i32 0, !dbg !755
  %45 = load i32, i32* %44, align 8, !dbg !755, !tbaa !340
  %.not2 = icmp eq i32 %45, %3, !dbg !757
  br i1 %.not2, label %138, label %46, !dbg !758

46:                                               ; preds = %43
  %47 = sext i32 %3 to i64, !dbg !759
  %48 = getelementptr inbounds i32, i32* %11, i64 %47, !dbg !759
  %49 = load i32, i32* %48, align 4, !dbg !759, !tbaa !111
  %.not6 = icmp eq i32 %49, 0, !dbg !759
  br i1 %.not6, label %56, label %50, !dbg !760

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i64 0, i32 0, !dbg !761
  %52 = load i32, i32* %51, align 8, !dbg !761, !tbaa !340
  %53 = sext i32 %52 to i64, !dbg !762
  %54 = getelementptr inbounds i32, i32* %11, i64 %53, !dbg !762
  %55 = load i32, i32* %54, align 4, !dbg !762, !tbaa !111
  %.not7 = icmp eq i32 %55, 0, !dbg !762
  br i1 %.not7, label %56, label %138, !dbg !763

56:                                               ; preds = %50, %46
  %57 = mul nsw i32 %10, %3, !dbg !764
  %58 = sext i32 %57 to i64, !dbg !766
  %59 = getelementptr inbounds double, double* %1, i64 %58, !dbg !766
  %60 = load double, double* %59, align 8, !dbg !766, !tbaa !359
  %61 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i64 0, i32 0, !dbg !767
  %62 = load i32, i32* %61, align 8, !dbg !767, !tbaa !340
  %63 = mul nsw i32 %62, %10, !dbg !768
  %64 = sext i32 %63 to i64, !dbg !769
  %65 = getelementptr inbounds double, double* %1, i64 %64, !dbg !769
  %66 = load double, double* %65, align 8, !dbg !769, !tbaa !359
  %67 = fsub double %60, %66, !dbg !770
  call void @llvm.dbg.value(metadata double %67, metadata !720, metadata !DIExpression()), !dbg !725
  %68 = mul nsw i32 %10, %3, !dbg !771
  %69 = add nsw i32 %68, 1, !dbg !772
  %70 = sext i32 %69 to i64, !dbg !773
  %71 = getelementptr inbounds double, double* %1, i64 %70, !dbg !773
  %72 = load double, double* %71, align 8, !dbg !773, !tbaa !359
  %73 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i64 0, i32 0, !dbg !774
  %74 = load i32, i32* %73, align 8, !dbg !774, !tbaa !340
  %75 = mul nsw i32 %74, %10, !dbg !775
  %76 = add nsw i32 %75, 1, !dbg !776
  %77 = sext i32 %76 to i64, !dbg !777
  %78 = getelementptr inbounds double, double* %1, i64 %77, !dbg !777
  %79 = load double, double* %78, align 8, !dbg !777, !tbaa !359
  %80 = fsub double %72, %79, !dbg !778
  call void @llvm.dbg.value(metadata double %80, metadata !721, metadata !DIExpression()), !dbg !725
  %81 = mul nsw i32 %10, %3, !dbg !779
  %82 = add nsw i32 %81, 2, !dbg !780
  %83 = sext i32 %82 to i64, !dbg !781
  %84 = getelementptr inbounds double, double* %1, i64 %83, !dbg !781
  %85 = load double, double* %84, align 8, !dbg !781, !tbaa !359
  %86 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i64 0, i32 0, !dbg !782
  %87 = load i32, i32* %86, align 8, !dbg !782, !tbaa !340
  %88 = mul nsw i32 %87, %10, !dbg !783
  %89 = add nsw i32 %88, 2, !dbg !784
  %90 = sext i32 %89 to i64, !dbg !785
  %91 = getelementptr inbounds double, double* %1, i64 %90, !dbg !785
  %92 = load double, double* %91, align 8, !dbg !785, !tbaa !359
  %93 = fsub double %85, %92, !dbg !786
  call void @llvm.dbg.value(metadata double %93, metadata !722, metadata !DIExpression()), !dbg !725
  %94 = fmul double %67, %67, !dbg !787
  %95 = fmul double %80, %80, !dbg !788
  %96 = fadd double %94, %95, !dbg !789
  %97 = fmul double %93, %93, !dbg !790
  %98 = fadd double %96, %97, !dbg !791
  call void @llvm.dbg.value(metadata double %98, metadata !724, metadata !DIExpression()), !dbg !725
  %99 = icmp eq i32 %10, 4, !dbg !792
  br i1 %99, label %100, label %116, !dbg !794

100:                                              ; preds = %56
  %101 = mul nsw i32 %10, %3, !dbg !795
  %102 = add nsw i32 %101, 3, !dbg !797
  %103 = sext i32 %102 to i64, !dbg !798
  %104 = getelementptr inbounds double, double* %1, i64 %103, !dbg !798
  %105 = load double, double* %104, align 8, !dbg !798, !tbaa !359
  %106 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i64 0, i32 0, !dbg !799
  %107 = load i32, i32* %106, align 8, !dbg !799, !tbaa !340
  %108 = mul nsw i32 %107, %10, !dbg !800
  %109 = add nsw i32 %108, 3, !dbg !801
  %110 = sext i32 %109 to i64, !dbg !802
  %111 = getelementptr inbounds double, double* %1, i64 %110, !dbg !802
  %112 = load double, double* %111, align 8, !dbg !802, !tbaa !359
  %113 = fsub double %105, %112, !dbg !803
  call void @llvm.dbg.value(metadata double %113, metadata !723, metadata !DIExpression()), !dbg !725
  %114 = fmul double %113, %113, !dbg !804
  %115 = fadd double %98, %114, !dbg !805
  call void @llvm.dbg.value(metadata double %115, metadata !724, metadata !DIExpression()), !dbg !725
  br label %116, !dbg !806

116:                                              ; preds = %100, %56
  %.0 = phi double [ %115, %100 ], [ %98, %56 ], !dbg !807
  call void @llvm.dbg.value(metadata double %.0, metadata !724, metadata !DIExpression()), !dbg !725
  %117 = fcmp olt double %.0, %9, !dbg !808
  br i1 %117, label %118, label %138, !dbg !810

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i64 0, i32 0, !dbg !811
  %120 = load i32, i32* %119, align 8, !dbg !811, !tbaa !340
  %121 = icmp slt i32 %120, %3, !dbg !814
  br i1 %121, label %122, label %130, !dbg !815

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i64 0, i32 0, !dbg !816
  %124 = load i32, i32* %123, align 8, !dbg !816, !tbaa !340
  %125 = load i32, i32* %4, align 4, !dbg !818, !tbaa !111
  %126 = sext i32 %125 to i64, !dbg !819
  %127 = getelementptr inbounds i32, i32* %6, i64 %126, !dbg !819
  store i32 %124, i32* %127, align 4, !dbg !820, !tbaa !111
  %128 = load i32, i32* %4, align 4, !dbg !821, !tbaa !111
  %129 = add nsw i32 %128, 1, !dbg !821
  store i32 %129, i32* %4, align 4, !dbg !821, !tbaa !111
  br label %138, !dbg !822

130:                                              ; preds = %118
  %131 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i64 0, i32 0, !dbg !823
  %132 = load i32, i32* %131, align 8, !dbg !823, !tbaa !340
  %133 = load i32, i32* %5, align 4, !dbg !825, !tbaa !111
  %134 = sext i32 %133 to i64, !dbg !826
  %135 = getelementptr inbounds i32, i32* %7, i64 %134, !dbg !826
  store i32 %132, i32* %135, align 4, !dbg !827, !tbaa !111
  %136 = load i32, i32* %5, align 4, !dbg !828, !tbaa !111
  %137 = add nsw i32 %136, 1, !dbg !828
  store i32 %137, i32* %5, align 4, !dbg !828, !tbaa !111
  br label %138

138:                                              ; preds = %116, %130, %122, %50, %43
  %cond1 = icmp eq i32 %14, 0, !dbg !829
  br i1 %cond1, label %139, label %143, !dbg !829

139:                                              ; preds = %138
  %140 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i64 0, i32 1, !dbg !831
  %141 = load %struct.kdnode*, %struct.kdnode** %140, align 8, !dbg !831, !tbaa !142
  %.not4 = icmp eq %struct.kdnode* %141, null, !dbg !832
  br i1 %.not4, label %142, label %163, !dbg !833

142:                                              ; preds = %139
  %.not5 = icmp eq i32 %14, 0, !dbg !834
  br i1 %.not5, label %167, label %143, !dbg !835

143:                                              ; preds = %138, %142
  %144 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i64 0, i32 1, !dbg !836
  %145 = load %struct.kdnode*, %struct.kdnode** %144, align 8, !dbg !836, !tbaa !142
  %.not3 = icmp eq %struct.kdnode* %145, null, !dbg !837
  br i1 %.not3, label %167, label %146, !dbg !838

146:                                              ; preds = %143
  %147 = mul nsw i32 %10, %3, !dbg !839
  %148 = add nsw i32 %147, %14, !dbg !840
  %149 = add nsw i32 %148, -1, !dbg !841
  %150 = sext i32 %149 to i64, !dbg !842
  %151 = getelementptr inbounds double, double* %1, i64 %150, !dbg !842
  %152 = load double, double* %151, align 8, !dbg !842, !tbaa !359
  %153 = fsub double %152, %8, !dbg !843
  %154 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i64 0, i32 0, !dbg !844
  %155 = load i32, i32* %154, align 8, !dbg !844, !tbaa !340
  %156 = mul nsw i32 %155, %10, !dbg !845
  %157 = add nsw i32 %156, %14, !dbg !846
  %158 = add nsw i32 %157, -1, !dbg !847
  %159 = sext i32 %158 to i64, !dbg !848
  %160 = getelementptr inbounds double, double* %1, i64 %159, !dbg !848
  %161 = load double, double* %160, align 8, !dbg !848, !tbaa !359
  %162 = fcmp olt double %153, %161, !dbg !849
  br i1 %162, label %163, label %167, !dbg !850

163:                                              ; preds = %146, %139
  %164 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i64 0, i32 1, !dbg !851
  %165 = load %struct.kdnode*, %struct.kdnode** %164, align 8, !dbg !851, !tbaa !142
  %166 = add nsw i32 %14, 1, !dbg !853
  call void @searchkdtree(%struct.kdnode* %165, double* %1, i32 %166, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7, double %8, double %9, i32 %10, i32* %11), !dbg !854
  br label %167, !dbg !855

167:                                              ; preds = %163, %146, %143, %142
  ret void, !dbg !856
}

; Function Attrs: nounwind uwtable
define internal void @heapsort_pairs(i32* %0, i32 %1) #0 !dbg !857 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !861, metadata !DIExpression()), !dbg !865
  call void @llvm.dbg.value(metadata i32 %1, metadata !862, metadata !DIExpression()), !dbg !865
  %3 = sdiv i32 %1, 2, !dbg !866
  call void @llvm.dbg.value(metadata i32 %3, metadata !863, metadata !DIExpression()), !dbg !865
  %4 = icmp sgt i32 %1, 1, !dbg !868
  br i1 %4, label %.lr.ph, label %._crit_edge, !dbg !870

.lr.ph:                                           ; preds = %2, %.lr.ph
  %.03 = phi i32 [ %5, %.lr.ph ], [ %3, %2 ]
  call void @llvm.dbg.value(metadata i32 %.03, metadata !863, metadata !DIExpression()), !dbg !865
  call void @downheap_pairs(i32* %0, i32 %1, i32 %.03), !dbg !871
  %5 = add nsw i32 %.03, -1, !dbg !872
  call void @llvm.dbg.value(metadata i32 %5, metadata !863, metadata !DIExpression()), !dbg !865
  %6 = icmp sgt i32 %.03, 1, !dbg !868
  br i1 %6, label %.lr.ph, label %._crit_edge, !dbg !870, !llvm.loop !873

._crit_edge:                                      ; preds = %.lr.ph, %2
  %7 = sext i32 %1 to i64, !dbg !875
  call void @llvm.dbg.value(metadata i64 %7, metadata !862, metadata !DIExpression()), !dbg !865
  %8 = icmp sgt i32 %1, 1, !dbg !876
  br i1 %8, label %.lr.ph6, label %._crit_edge7, !dbg !875

.lr.ph6:                                          ; preds = %._crit_edge, %.lr.ph6
  %indvars.iv4 = phi i64 [ %indvars.iv.next, %.lr.ph6 ], [ %7, %._crit_edge ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv4, metadata !862, metadata !DIExpression()), !dbg !865
  %9 = load i32, i32* %0, align 4, !dbg !877, !tbaa !111
  call void @llvm.dbg.value(metadata i32 %9, metadata !864, metadata !DIExpression()), !dbg !865
  %indvars.iv.next = add nsw i64 %indvars.iv4, -1, !dbg !879
  %10 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next, !dbg !880
  %11 = load i32, i32* %10, align 4, !dbg !880, !tbaa !111
  store i32 %11, i32* %0, align 4, !dbg !881, !tbaa !111
  %12 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next, !dbg !882
  store i32 %9, i32* %12, align 4, !dbg !883, !tbaa !111
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !862, metadata !DIExpression()), !dbg !865
  %13 = trunc i64 %indvars.iv.next to i32, !dbg !884
  call void @downheap_pairs(i32* nonnull %0, i32 %13, i32 1), !dbg !884
  %14 = icmp sgt i64 %indvars.iv4, 2, !dbg !876
  br i1 %14, label %.lr.ph6, label %._crit_edge7, !dbg !875, !llvm.loop !885

._crit_edge7:                                     ; preds = %.lr.ph6, %._crit_edge
  ret void, !dbg !887
}

declare !dbg !22 dso_local void @free_ivector(i32*, i32, i32) #3

; Function Attrs: nounwind
declare !dbg !25 dso_local void @free(i8*) #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal void @downheap_index(i32* %0, i32 %1, i32 %2, double* %3, i32 %4, i32 %5) #0 !dbg !888 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !892, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i32 %1, metadata !893, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i32 %2, metadata !894, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata double* %3, metadata !895, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i32 %4, metadata !896, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i32 %5, metadata !897, metadata !DIExpression()), !dbg !900
  %7 = add nsw i32 %2, -1, !dbg !901
  %8 = sext i32 %7 to i64, !dbg !902
  %9 = getelementptr inbounds i32, i32* %0, i64 %8, !dbg !902
  %10 = load i32, i32* %9, align 4, !dbg !902, !tbaa !111
  call void @llvm.dbg.value(metadata i32 %10, metadata !899, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i32 %2, metadata !894, metadata !DIExpression()), !dbg !900
  %11 = sdiv i32 %1, 2, !dbg !903
  %.not = icmp slt i32 %11, %2, !dbg !904
  br i1 %.not, label %.loopexit, label %.lr.ph, !dbg !905

.lr.ph:                                           ; preds = %6, %51
  %.014 = phi i32 [ %.0, %51 ], [ %2, %6 ]
  call void @llvm.dbg.value(metadata i32 %.014, metadata !894, metadata !DIExpression()), !dbg !900
  %12 = shl nsw i32 %.014, 1, !dbg !906
  call void @llvm.dbg.value(metadata i32 %12, metadata !898, metadata !DIExpression()), !dbg !900
  %13 = icmp slt i32 %12, %1, !dbg !908
  br i1 %13, label %14, label %35, !dbg !910

14:                                               ; preds = %.lr.ph
  %15 = add nsw i32 %12, -1, !dbg !911
  %16 = sext i32 %15 to i64, !dbg !912
  %17 = getelementptr inbounds i32, i32* %0, i64 %16, !dbg !912
  %18 = load i32, i32* %17, align 4, !dbg !912, !tbaa !111
  %19 = mul nsw i32 %18, %5, !dbg !913
  %20 = add nsw i32 %19, %4, !dbg !914
  %21 = sext i32 %20 to i64, !dbg !915
  %22 = getelementptr inbounds double, double* %3, i64 %21, !dbg !915
  %23 = load double, double* %22, align 8, !dbg !915, !tbaa !359
  %24 = sext i32 %12 to i64, !dbg !916
  %25 = getelementptr inbounds i32, i32* %0, i64 %24, !dbg !916
  %26 = load i32, i32* %25, align 4, !dbg !916, !tbaa !111
  %27 = mul nsw i32 %26, %5, !dbg !917
  %28 = add nsw i32 %27, %4, !dbg !918
  %29 = sext i32 %28 to i64, !dbg !919
  %30 = getelementptr inbounds double, double* %3, i64 %29, !dbg !919
  %31 = load double, double* %30, align 8, !dbg !919, !tbaa !359
  %32 = fcmp olt double %23, %31, !dbg !920
  br i1 %32, label %33, label %35, !dbg !921

33:                                               ; preds = %14
  %34 = or i32 %12, 1, !dbg !922
  call void @llvm.dbg.value(metadata i32 %34, metadata !898, metadata !DIExpression()), !dbg !900
  br label %35, !dbg !923

35:                                               ; preds = %33, %14, %.lr.ph
  %.0 = phi i32 [ %34, %33 ], [ %12, %14 ], [ %12, %.lr.ph ], !dbg !924
  call void @llvm.dbg.value(metadata i32 %.0, metadata !898, metadata !DIExpression()), !dbg !900
  %36 = mul nsw i32 %10, %5, !dbg !925
  %37 = add nsw i32 %36, %4, !dbg !927
  %38 = sext i32 %37 to i64, !dbg !928
  %39 = getelementptr inbounds double, double* %3, i64 %38, !dbg !928
  %40 = load double, double* %39, align 8, !dbg !928, !tbaa !359
  %41 = add nsw i32 %.0, -1, !dbg !929
  %42 = sext i32 %41 to i64, !dbg !930
  %43 = getelementptr inbounds i32, i32* %0, i64 %42, !dbg !930
  %44 = load i32, i32* %43, align 4, !dbg !930, !tbaa !111
  %45 = mul nsw i32 %44, %5, !dbg !931
  %46 = add nsw i32 %45, %4, !dbg !932
  %47 = sext i32 %46 to i64, !dbg !933
  %48 = getelementptr inbounds double, double* %3, i64 %47, !dbg !933
  %49 = load double, double* %48, align 8, !dbg !933, !tbaa !359
  %50 = fcmp ult double %40, %49, !dbg !934
  br i1 %50, label %51, label %.loopexit, !dbg !935

51:                                               ; preds = %35
  %52 = add nsw i32 %.0, -1, !dbg !936
  %53 = sext i32 %52 to i64, !dbg !937
  %54 = getelementptr inbounds i32, i32* %0, i64 %53, !dbg !937
  %55 = load i32, i32* %54, align 4, !dbg !937, !tbaa !111
  %56 = add nsw i32 %.014, -1, !dbg !938
  %57 = sext i32 %56 to i64, !dbg !939
  %58 = getelementptr inbounds i32, i32* %0, i64 %57, !dbg !939
  store i32 %55, i32* %58, align 4, !dbg !940, !tbaa !111
  call void @llvm.dbg.value(metadata i32 %.0, metadata !894, metadata !DIExpression()), !dbg !900
  %.not5 = icmp sgt i32 %.0, %11, !dbg !904
  br i1 %.not5, label %.loopexit, label %.lr.ph, !dbg !905, !llvm.loop !941

.loopexit:                                        ; preds = %6, %51, %35
  %.013 = phi i32 [ %.014, %35 ], [ %2, %6 ], [ %.0, %51 ]
  %59 = add nsw i32 %.013, -1, !dbg !943
  %60 = sext i32 %59 to i64, !dbg !944
  %61 = getelementptr inbounds i32, i32* %0, i64 %60, !dbg !944
  store i32 %10, i32* %61, align 4, !dbg !945, !tbaa !111
  ret void, !dbg !946
}

; Function Attrs: nounwind uwtable
define internal void @downheap_pairs(i32* %0, i32 %1, i32 %2) #0 !dbg !947 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !949, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata i32 %1, metadata !950, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata i32 %2, metadata !951, metadata !DIExpression()), !dbg !954
  %4 = add nsw i32 %2, -1, !dbg !955
  %5 = sext i32 %4 to i64, !dbg !956
  %6 = getelementptr inbounds i32, i32* %0, i64 %5, !dbg !956
  %7 = load i32, i32* %6, align 4, !dbg !956, !tbaa !111
  call void @llvm.dbg.value(metadata i32 %7, metadata !953, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata i32 %2, metadata !951, metadata !DIExpression()), !dbg !954
  %8 = sdiv i32 %1, 2, !dbg !957
  %.not = icmp slt i32 %8, %2, !dbg !958
  br i1 %.not, label %.loopexit, label %.lr.ph, !dbg !959

.lr.ph:                                           ; preds = %3, %26
  %.014 = phi i32 [ %.0, %26 ], [ %2, %3 ]
  call void @llvm.dbg.value(metadata i32 %.014, metadata !951, metadata !DIExpression()), !dbg !954
  %9 = shl nsw i32 %.014, 1, !dbg !960
  call void @llvm.dbg.value(metadata i32 %9, metadata !952, metadata !DIExpression()), !dbg !954
  %10 = icmp slt i32 %9, %1, !dbg !962
  br i1 %10, label %11, label %21, !dbg !964

11:                                               ; preds = %.lr.ph
  %12 = add nsw i32 %9, -1, !dbg !965
  %13 = sext i32 %12 to i64, !dbg !966
  %14 = getelementptr inbounds i32, i32* %0, i64 %13, !dbg !966
  %15 = load i32, i32* %14, align 4, !dbg !966, !tbaa !111
  %16 = sext i32 %9 to i64, !dbg !967
  %17 = getelementptr inbounds i32, i32* %0, i64 %16, !dbg !967
  %18 = load i32, i32* %17, align 4, !dbg !967, !tbaa !111
  %19 = icmp slt i32 %15, %18, !dbg !968
  %20 = zext i1 %19 to i32, !dbg !969
  %spec.select = or i32 %9, %20, !dbg !969
  br label %21, !dbg !969

21:                                               ; preds = %11, %.lr.ph
  %.0 = phi i32 [ %9, %.lr.ph ], [ %spec.select, %11 ], !dbg !970
  call void @llvm.dbg.value(metadata i32 %.0, metadata !952, metadata !DIExpression()), !dbg !954
  %22 = add nsw i32 %.0, -1, !dbg !971
  %23 = sext i32 %22 to i64, !dbg !973
  %24 = getelementptr inbounds i32, i32* %0, i64 %23, !dbg !973
  %25 = load i32, i32* %24, align 4, !dbg !973, !tbaa !111
  %.not5 = icmp slt i32 %7, %25, !dbg !974
  br i1 %.not5, label %26, label %.loopexit, !dbg !975

26:                                               ; preds = %21
  %27 = add nsw i32 %.0, -1, !dbg !976
  %28 = sext i32 %27 to i64, !dbg !977
  %29 = getelementptr inbounds i32, i32* %0, i64 %28, !dbg !977
  %30 = load i32, i32* %29, align 4, !dbg !977, !tbaa !111
  %31 = add nsw i32 %.014, -1, !dbg !978
  %32 = sext i32 %31 to i64, !dbg !979
  %33 = getelementptr inbounds i32, i32* %0, i64 %32, !dbg !979
  store i32 %30, i32* %33, align 4, !dbg !980, !tbaa !111
  call void @llvm.dbg.value(metadata i32 %.0, metadata !951, metadata !DIExpression()), !dbg !954
  %.not6 = icmp sgt i32 %.0, %8, !dbg !958
  br i1 %.not6, label %.loopexit, label %.lr.ph, !dbg !959, !llvm.loop !981

.loopexit:                                        ; preds = %3, %26, %21
  %.013 = phi i32 [ %.014, %21 ], [ %2, %3 ], [ %.0, %26 ]
  %34 = add nsw i32 %.013, -1, !dbg !983
  %35 = sext i32 %34 to i64, !dbg !984
  %36 = getelementptr inbounds i32, i32* %0, i64 %35, !dbg !984
  store i32 %7, i32* %36, align 4, !dbg !985, !tbaa !111
  ret void, !dbg !986
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { cold }
attributes #9 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!29, !30, !31}
!llvm.ident = !{!32}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "nblist.c", directory: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src")
!2 = !{}
!3 = !{!4, !8, !17, !18, !22, !25}
!4 = !DISubprogram(name: "get_blocksize", scope: !1, file: !1, line: 33, type: !5, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "KDNODE_T", file: !1, line: 40, baseType: !10)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kdnode", file: !1, line: 37, size: 192, elements: !11)
!11 = !{!12, !14, !16}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !10, file: !1, line: 38, baseType: !13, size: 32)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT_T", file: !1, line: 23, baseType: !7)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "lo", scope: !10, file: !1, line: 39, baseType: !15, size: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "hi", scope: !10, file: !1, line: 39, baseType: !15, size: 64, offset: 128)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !DISubprogram(name: "ivector", scope: !1, file: !1, line: 28, type: !19, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !7, !7}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!22 = !DISubprogram(name: "free_ivector", scope: !1, file: !1, line: 29, type: !23, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !21, !7, !7}
!25 = !DISubprogram(name: "free", scope: !26, file: !26, line: 565, type: !27, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!26 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!27 = !DISubroutineType(types: !28)
!28 = !{null, !17}
!29 = !{i32 7, !"Dwarf Version", i32 4}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 4}
!32 = !{!"clang version 10.0.0-4ubuntu1 "}
!33 = distinct !DISubprogram(name: "nblist", scope: !1, file: !1, line: 783, type: !34, scopeLine: 786, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !40)
!34 = !DISubroutineType(types: !35)
!35 = !{!13, !36, !36, !37, !38, !13, !13, !39, !7, !7, !21}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!40 = !{!41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70}
!41 = !DILocalVariable(name: "lpears", arg: 1, scope: !33, file: !1, line: 783, type: !36)
!42 = !DILocalVariable(name: "upears", arg: 2, scope: !33, file: !1, line: 783, type: !36)
!43 = !DILocalVariable(name: "pearlist", arg: 3, scope: !33, file: !1, line: 783, type: !37)
!44 = !DILocalVariable(name: "x", arg: 4, scope: !33, file: !1, line: 783, type: !38)
!45 = !DILocalVariable(name: "context_PxQ", arg: 5, scope: !33, file: !1, line: 784, type: !13)
!46 = !DILocalVariable(name: "derivs", arg: 6, scope: !33, file: !1, line: 784, type: !13)
!47 = !DILocalVariable(name: "cutoff", arg: 7, scope: !33, file: !1, line: 784, type: !39)
!48 = !DILocalVariable(name: "natom", arg: 8, scope: !33, file: !1, line: 784, type: !7)
!49 = !DILocalVariable(name: "dim", arg: 9, scope: !33, file: !1, line: 785, type: !7)
!50 = !DILocalVariable(name: "frozen", arg: 10, scope: !33, file: !1, line: 785, type: !21)
!51 = !DILocalVariable(name: "i", scope: !33, file: !1, line: 787, type: !7)
!52 = !DILocalVariable(name: "j", scope: !33, file: !1, line: 787, type: !7)
!53 = !DILocalVariable(name: "locnt", scope: !33, file: !1, line: 787, type: !7)
!54 = !DILocalVariable(name: "upcnt", scope: !33, file: !1, line: 787, type: !7)
!55 = !DILocalVariable(name: "totpair", scope: !33, file: !1, line: 787, type: !7)
!56 = !DILocalVariable(name: "numthreads", scope: !33, file: !1, line: 787, type: !7)
!57 = !DILocalVariable(name: "threadnum", scope: !33, file: !1, line: 787, type: !7)
!58 = !DILocalVariable(name: "blocksize", scope: !33, file: !1, line: 787, type: !7)
!59 = !DILocalVariable(name: "xn", scope: !33, file: !1, line: 788, type: !21)
!60 = !DILocalVariable(name: "yn", scope: !33, file: !1, line: 788, type: !21)
!61 = !DILocalVariable(name: "zn", scope: !33, file: !1, line: 788, type: !21)
!62 = !DILocalVariable(name: "wn", scope: !33, file: !1, line: 788, type: !21)
!63 = !DILocalVariable(name: "on", scope: !33, file: !1, line: 788, type: !21)
!64 = !DILocalVariable(name: "tn", scope: !33, file: !1, line: 788, type: !21)
!65 = !DILocalVariable(name: "lopairlist", scope: !33, file: !1, line: 788, type: !21)
!66 = !DILocalVariable(name: "uppairlist", scope: !33, file: !1, line: 788, type: !21)
!67 = !DILocalVariable(name: "cutoff2", scope: !33, file: !1, line: 789, type: !39)
!68 = !DILocalVariable(name: "kdtree", scope: !33, file: !1, line: 790, type: !8)
!69 = !DILocalVariable(name: "kdptr", scope: !33, file: !1, line: 790, type: !8)
!70 = !DILocalVariable(name: "root", scope: !33, file: !1, line: 790, type: !8)
!71 = !DILocation(line: 0, scope: !33)
!72 = !DILocation(line: 787, column: 4, scope: !33)
!73 = !DILocation(line: 787, column: 37, scope: !33)
!74 = !DILocation(line: 787, column: 49, scope: !33)
!75 = !DILocation(line: 790, column: 4, scope: !33)
!76 = !DILocation(line: 799, column: 21, scope: !33)
!77 = !DILocation(line: 803, column: 16, scope: !33)
!78 = !DILocation(line: 807, column: 38, scope: !79)
!79 = distinct !DILexicalBlock(scope: !33, file: !1, line: 807, column: 8)
!80 = !DILocation(line: 807, column: 44, scope: !79)
!81 = !DILocation(line: 807, column: 31, scope: !79)
!82 = !DILocation(line: 807, column: 65, scope: !79)
!83 = !DILocation(line: 807, column: 8, scope: !33)
!84 = !DILocation(line: 808, column: 15, scope: !85)
!85 = distinct !DILexicalBlock(scope: !79, file: !1, line: 807, column: 74)
!86 = !{!87, !87, i64 0}
!87 = !{!"any pointer", !88, i64 0}
!88 = !{!"omnipotent char", !89, i64 0}
!89 = !{!"Simple C/C++ TBAA"}
!90 = !DILocation(line: 808, column: 7, scope: !85)
!91 = !DILocation(line: 809, column: 7, scope: !85)
!92 = !DILocation(line: 824, column: 9, scope: !33)
!93 = !DILocation(line: 825, column: 9, scope: !33)
!94 = !DILocation(line: 826, column: 9, scope: !33)
!95 = !DILocation(line: 827, column: 9, scope: !33)
!96 = !DILocation(line: 829, column: 12, scope: !97)
!97 = distinct !DILexicalBlock(scope: !33, file: !1, line: 829, column: 8)
!98 = !DILocation(line: 829, column: 8, scope: !33)
!99 = !DILocation(line: 830, column: 12, scope: !100)
!100 = distinct !DILexicalBlock(scope: !97, file: !1, line: 829, column: 18)
!101 = !DILocation(line: 831, column: 4, scope: !100)
!102 = !DILocation(line: 833, column: 9, scope: !33)
!103 = !DILocation(line: 836, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !33, file: !1, line: 836, column: 4)
!105 = !DILocation(line: 836, column: 18, scope: !106)
!106 = distinct !DILexicalBlock(scope: !104, file: !1, line: 836, column: 4)
!107 = !DILocation(line: 836, column: 4, scope: !104)
!108 = !DILocation(line: 837, column: 23, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !1, line: 836, column: 32)
!110 = !DILocation(line: 837, column: 29, scope: !109)
!111 = !{!112, !112, i64 0}
!112 = !{!"int", !88, i64 0}
!113 = !DILocation(line: 837, column: 15, scope: !109)
!114 = !DILocation(line: 837, column: 21, scope: !109)
!115 = !DILocation(line: 837, column: 7, scope: !109)
!116 = !DILocation(line: 837, column: 13, scope: !109)
!117 = !DILocation(line: 838, column: 15, scope: !118)
!118 = distinct !DILexicalBlock(scope: !109, file: !1, line: 838, column: 11)
!119 = !DILocation(line: 838, column: 11, scope: !109)
!120 = !DILocation(line: 839, column: 10, scope: !121)
!121 = distinct !DILexicalBlock(scope: !118, file: !1, line: 838, column: 21)
!122 = !DILocation(line: 839, column: 16, scope: !121)
!123 = !DILocation(line: 840, column: 7, scope: !121)
!124 = !DILocation(line: 842, column: 7, scope: !109)
!125 = !DILocation(line: 842, column: 13, scope: !109)
!126 = !DILocation(line: 836, column: 28, scope: !106)
!127 = distinct !{!127, !107, !128}
!128 = !DILocation(line: 845, column: 4, scope: !104)
!129 = !DILocation(line: 847, column: 4, scope: !33)
!130 = !DILocation(line: 848, column: 4, scope: !33)
!131 = !DILocation(line: 849, column: 4, scope: !33)
!132 = !DILocation(line: 851, column: 12, scope: !133)
!133 = distinct !DILexicalBlock(scope: !33, file: !1, line: 851, column: 8)
!134 = !DILocation(line: 851, column: 8, scope: !33)
!135 = !DILocation(line: 852, column: 7, scope: !136)
!136 = distinct !DILexicalBlock(scope: !133, file: !1, line: 851, column: 18)
!137 = !DILocation(line: 853, column: 4, scope: !136)
!138 = !DILocation(line: 869, column: 10, scope: !33)
!139 = !DILocation(line: 870, column: 16, scope: !33)
!140 = !DILocation(line: 871, column: 10, scope: !33)
!141 = !DILocation(line: 871, column: 13, scope: !33)
!142 = !{!143, !87, i64 8}
!143 = !{!"kdnode", !112, i64 0, !87, i64 8, !87, i64 16}
!144 = !DILocation(line: 872, column: 10, scope: !33)
!145 = !DILocation(line: 872, column: 13, scope: !33)
!146 = !{!143, !87, i64 16}
!147 = !DILocation(line: 881, column: 49, scope: !33)
!148 = !DILocation(line: 881, column: 4, scope: !33)
!149 = !DILocation(line: 1009, column: 20, scope: !150)
!150 = distinct !DILexicalBlock(scope: !33, file: !1, line: 903, column: 4)
!151 = !DILocation(line: 1010, column: 20, scope: !150)
!152 = !DILocation(line: 1057, column: 12, scope: !153)
!153 = distinct !DILexicalBlock(scope: !150, file: !1, line: 1057, column: 7)
!154 = !DILocation(line: 1057, column: 21, scope: !155)
!155 = distinct !DILexicalBlock(scope: !153, file: !1, line: 1057, column: 7)
!156 = !DILocation(line: 1057, column: 7, scope: !153)
!157 = !DILocation(line: 1082, column: 24, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !1, line: 1057, column: 35)
!159 = !DILocation(line: 1082, column: 16, scope: !158)
!160 = !DILocation(line: 1083, column: 10, scope: !158)
!161 = !DILocation(line: 1117, column: 37, scope: !158)
!162 = !DILocation(line: 1117, column: 10, scope: !158)
!163 = !DILocation(line: 1118, column: 37, scope: !158)
!164 = !DILocation(line: 1118, column: 10, scope: !158)
!165 = !DILocation(line: 1151, column: 15, scope: !166)
!166 = distinct !DILexicalBlock(scope: !158, file: !1, line: 1151, column: 14)
!167 = !DILocation(line: 1151, column: 27, scope: !166)
!168 = !DILocation(line: 1151, column: 36, scope: !166)
!169 = !DILocation(line: 1151, column: 40, scope: !166)
!170 = !DILocation(line: 1151, column: 48, scope: !166)
!171 = !DILocation(line: 1151, column: 46, scope: !166)
!172 = !DILocation(line: 1151, column: 54, scope: !166)
!173 = !DILocation(line: 1151, column: 14, scope: !158)
!174 = !DILocation(line: 1152, column: 38, scope: !175)
!175 = distinct !DILexicalBlock(scope: !166, file: !1, line: 1151, column: 60)
!176 = !DILocation(line: 1152, column: 46, scope: !175)
!177 = !DILocation(line: 1152, column: 44, scope: !175)
!178 = !DILocation(line: 1152, column: 27, scope: !175)
!179 = !DILocation(line: 1152, column: 13, scope: !175)
!180 = !DILocation(line: 1152, column: 25, scope: !175)
!181 = !DILocation(line: 1153, column: 10, scope: !175)
!182 = !DILocation(line: 1153, column: 22, scope: !183)
!183 = distinct !DILexicalBlock(scope: !166, file: !1, line: 1153, column: 21)
!184 = !DILocation(line: 1153, column: 34, scope: !183)
!185 = !DILocation(line: 1153, column: 43, scope: !183)
!186 = !DILocation(line: 1154, column: 23, scope: !183)
!187 = !DILocation(line: 1154, column: 31, scope: !183)
!188 = !DILocation(line: 1154, column: 29, scope: !183)
!189 = !DILocation(line: 1154, column: 39, scope: !183)
!190 = !DILocation(line: 1154, column: 51, scope: !183)
!191 = !DILocation(line: 1154, column: 49, scope: !183)
!192 = !DILocation(line: 1154, column: 37, scope: !183)
!193 = !DILocation(line: 1154, column: 62, scope: !183)
!194 = !DILocation(line: 1155, column: 28, scope: !183)
!195 = !DILocation(line: 1155, column: 36, scope: !183)
!196 = !DILocation(line: 1155, column: 34, scope: !183)
!197 = !DILocation(line: 1155, column: 25, scope: !183)
!198 = !DILocation(line: 1156, column: 28, scope: !183)
!199 = !DILocation(line: 1156, column: 40, scope: !183)
!200 = !DILocation(line: 1156, column: 38, scope: !183)
!201 = !DILocation(line: 1156, column: 25, scope: !183)
!202 = !DILocation(line: 1155, column: 43, scope: !183)
!203 = !DILocation(line: 1153, column: 21, scope: !166)
!204 = !DILocation(line: 1157, column: 26, scope: !205)
!205 = distinct !DILexicalBlock(scope: !183, file: !1, line: 1156, column: 54)
!206 = !DILocation(line: 1157, column: 42, scope: !205)
!207 = !DILocation(line: 1157, column: 54, scope: !205)
!208 = !DILocation(line: 1157, column: 52, scope: !205)
!209 = !DILocation(line: 1157, column: 13, scope: !205)
!210 = !DILocation(line: 1158, column: 38, scope: !205)
!211 = !DILocation(line: 1158, column: 46, scope: !205)
!212 = !DILocation(line: 1158, column: 44, scope: !205)
!213 = !DILocation(line: 1158, column: 27, scope: !205)
!214 = !DILocation(line: 1158, column: 13, scope: !205)
!215 = !DILocation(line: 1158, column: 25, scope: !205)
!216 = !DILocation(line: 1159, column: 10, scope: !205)
!217 = !DILocation(line: 1160, column: 22, scope: !158)
!218 = !DILocation(line: 1160, column: 10, scope: !158)
!219 = !DILocation(line: 1160, column: 20, scope: !158)
!220 = !DILocation(line: 1161, column: 22, scope: !158)
!221 = !DILocation(line: 1161, column: 10, scope: !158)
!222 = !DILocation(line: 1161, column: 20, scope: !158)
!223 = !DILocation(line: 1162, column: 24, scope: !224)
!224 = distinct !DILexicalBlock(scope: !225, file: !1, line: 1162, column: 10)
!225 = distinct !DILexicalBlock(scope: !158, file: !1, line: 1162, column: 10)
!226 = !DILocation(line: 1162, column: 10, scope: !225)
!227 = !DILocation(line: 1163, column: 30, scope: !228)
!228 = distinct !DILexicalBlock(scope: !224, file: !1, line: 1162, column: 38)
!229 = !DILocation(line: 1163, column: 13, scope: !228)
!230 = !DILocation(line: 1163, column: 28, scope: !228)
!231 = !DILocation(line: 1162, column: 34, scope: !224)
!232 = !DILocation(line: 1162, column: 26, scope: !224)
!233 = distinct !{!233, !226, !234}
!234 = !DILocation(line: 1164, column: 10, scope: !225)
!235 = !DILocation(line: 1165, column: 26, scope: !236)
!236 = distinct !DILexicalBlock(scope: !237, file: !1, line: 1165, column: 10)
!237 = distinct !DILexicalBlock(scope: !158, file: !1, line: 1165, column: 10)
!238 = !DILocation(line: 1165, column: 24, scope: !236)
!239 = !DILocation(line: 1165, column: 10, scope: !237)
!240 = !DILocation(line: 1166, column: 38, scope: !241)
!241 = distinct !DILexicalBlock(scope: !236, file: !1, line: 1165, column: 38)
!242 = !DILocation(line: 1166, column: 13, scope: !241)
!243 = !DILocation(line: 1166, column: 25, scope: !241)
!244 = !DILocation(line: 1166, column: 31, scope: !241)
!245 = !DILocation(line: 1166, column: 36, scope: !241)
!246 = !DILocation(line: 1165, column: 34, scope: !236)
!247 = distinct !{!247, !239, !248}
!248 = !DILocation(line: 1167, column: 10, scope: !237)
!249 = !DILocation(line: 1168, column: 21, scope: !158)
!250 = !DILocation(line: 1168, column: 29, scope: !158)
!251 = !DILocation(line: 1168, column: 27, scope: !158)
!252 = !DILocation(line: 1168, column: 18, scope: !158)
!253 = !DILocation(line: 1057, column: 31, scope: !155)
!254 = distinct !{!254, !156, !255}
!255 = !DILocation(line: 1169, column: 7, scope: !153)
!256 = !DILocation(line: 1177, column: 7, scope: !150)
!257 = !DILocation(line: 1178, column: 7, scope: !150)
!258 = !DILocation(line: 1195, column: 4, scope: !33)
!259 = !DILocation(line: 1196, column: 4, scope: !33)
!260 = !DILocation(line: 1197, column: 4, scope: !33)
!261 = !DILocation(line: 1198, column: 4, scope: !33)
!262 = !DILocation(line: 1199, column: 4, scope: !33)
!263 = !DILocation(line: 1201, column: 12, scope: !264)
!264 = distinct !DILexicalBlock(scope: !33, file: !1, line: 1201, column: 8)
!265 = !DILocation(line: 1201, column: 8, scope: !33)
!266 = !DILocation(line: 1202, column: 7, scope: !267)
!267 = distinct !DILexicalBlock(scope: !264, file: !1, line: 1201, column: 18)
!268 = !DILocation(line: 1203, column: 4, scope: !267)
!269 = !DILocation(line: 1206, column: 4, scope: !33)
!270 = !DILocation(line: 1211, column: 1, scope: !33)
!271 = !DILocation(line: 1210, column: 4, scope: !33)
!272 = distinct !DISubprogram(name: "heapsort_index", scope: !1, file: !1, line: 207, type: !273, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !275)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !21, !7, !38, !7, !7}
!275 = !{!276, !277, !278, !279, !280, !281, !282}
!276 = !DILocalVariable(name: "a", arg: 1, scope: !272, file: !1, line: 207, type: !21)
!277 = !DILocalVariable(name: "n", arg: 2, scope: !272, file: !1, line: 207, type: !7)
!278 = !DILocalVariable(name: "x", arg: 3, scope: !272, file: !1, line: 207, type: !38)
!279 = !DILocalVariable(name: "p", arg: 4, scope: !272, file: !1, line: 207, type: !7)
!280 = !DILocalVariable(name: "dim", arg: 5, scope: !272, file: !1, line: 207, type: !7)
!281 = !DILocalVariable(name: "k", scope: !272, file: !1, line: 210, type: !7)
!282 = !DILocalVariable(name: "v", scope: !272, file: !1, line: 210, type: !7)
!283 = !DILocation(line: 0, scope: !272)
!284 = !DILocation(line: 212, column: 15, scope: !285)
!285 = distinct !DILexicalBlock(scope: !272, file: !1, line: 212, column: 4)
!286 = !DILocation(line: 212, column: 22, scope: !287)
!287 = distinct !DILexicalBlock(scope: !285, file: !1, line: 212, column: 4)
!288 = !DILocation(line: 212, column: 4, scope: !285)
!289 = !DILocation(line: 213, column: 7, scope: !287)
!290 = !DILocation(line: 212, column: 29, scope: !287)
!291 = distinct !{!291, !288, !292}
!292 = !DILocation(line: 213, column: 40, scope: !285)
!293 = !DILocation(line: 214, column: 4, scope: !272)
!294 = !DILocation(line: 214, column: 13, scope: !272)
!295 = !DILocation(line: 215, column: 11, scope: !296)
!296 = distinct !DILexicalBlock(scope: !272, file: !1, line: 214, column: 18)
!297 = !DILocation(line: 218, column: 25, scope: !296)
!298 = !DILocation(line: 216, column: 14, scope: !296)
!299 = !DILocation(line: 216, column: 12, scope: !296)
!300 = !DILocation(line: 217, column: 7, scope: !296)
!301 = !DILocation(line: 217, column: 16, scope: !296)
!302 = !DILocation(line: 218, column: 7, scope: !296)
!303 = distinct !{!303, !293, !304}
!304 = !DILocation(line: 219, column: 4, scope: !272)
!305 = !DILocation(line: 220, column: 1, scope: !272)
!306 = distinct !DISubprogram(name: "buildkdtree", scope: !1, file: !1, line: 255, type: !307, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !21, !21, !21, !21, !21, !21, !7, !7, !309, !8, !38, !7, !7}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!310 = !{!311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329}
!311 = !DILocalVariable(name: "xn", arg: 1, scope: !306, file: !1, line: 255, type: !21)
!312 = !DILocalVariable(name: "yn", arg: 2, scope: !306, file: !1, line: 255, type: !21)
!313 = !DILocalVariable(name: "zn", arg: 3, scope: !306, file: !1, line: 255, type: !21)
!314 = !DILocalVariable(name: "wn", arg: 4, scope: !306, file: !1, line: 255, type: !21)
!315 = !DILocalVariable(name: "on", arg: 5, scope: !306, file: !1, line: 255, type: !21)
!316 = !DILocalVariable(name: "tn", arg: 6, scope: !306, file: !1, line: 255, type: !21)
!317 = !DILocalVariable(name: "start", arg: 7, scope: !306, file: !1, line: 256, type: !7)
!318 = !DILocalVariable(name: "end", arg: 8, scope: !306, file: !1, line: 256, type: !7)
!319 = !DILocalVariable(name: "kdpptr", arg: 9, scope: !306, file: !1, line: 256, type: !309)
!320 = !DILocalVariable(name: "that", arg: 10, scope: !306, file: !1, line: 256, type: !8)
!321 = !DILocalVariable(name: "x", arg: 11, scope: !306, file: !1, line: 257, type: !38)
!322 = !DILocalVariable(name: "p", arg: 12, scope: !306, file: !1, line: 257, type: !7)
!323 = !DILocalVariable(name: "dim", arg: 13, scope: !306, file: !1, line: 257, type: !7)
!324 = !DILocalVariable(name: "i", scope: !306, file: !1, line: 259, type: !7)
!325 = !DILocalVariable(name: "middle", scope: !306, file: !1, line: 259, type: !7)
!326 = !DILocalVariable(name: "imedian", scope: !306, file: !1, line: 259, type: !7)
!327 = !DILocalVariable(name: "lower", scope: !306, file: !1, line: 259, type: !7)
!328 = !DILocalVariable(name: "upper", scope: !306, file: !1, line: 259, type: !7)
!329 = !DILocalVariable(name: "median", scope: !306, file: !1, line: 260, type: !39)
!330 = !DILocation(line: 0, scope: !306)
!331 = !DILocation(line: 276, column: 14, scope: !306)
!332 = !DILocation(line: 276, column: 6, scope: !306)
!333 = !DILocation(line: 281, column: 12, scope: !334)
!334 = distinct !DILexicalBlock(scope: !306, file: !1, line: 281, column: 8)
!335 = !DILocation(line: 281, column: 8, scope: !306)
!336 = !DILocation(line: 282, column: 17, scope: !337)
!337 = distinct !DILexicalBlock(scope: !334, file: !1, line: 281, column: 22)
!338 = !DILocation(line: 282, column: 13, scope: !337)
!339 = !DILocation(line: 282, column: 15, scope: !337)
!340 = !{!143, !112, i64 0}
!341 = !DILocation(line: 283, column: 4, scope: !337)
!342 = !DILocation(line: 293, column: 26, scope: !343)
!343 = distinct !DILexicalBlock(scope: !334, file: !1, line: 293, column: 13)
!344 = !DILocation(line: 293, column: 17, scope: !343)
!345 = !DILocation(line: 293, column: 13, scope: !334)
!346 = !DILocation(line: 298, column: 21, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !1, line: 298, column: 11)
!348 = distinct !DILexicalBlock(scope: !343, file: !1, line: 293, column: 31)
!349 = !DILocation(line: 298, column: 25, scope: !347)
!350 = !DILocation(line: 298, column: 37, scope: !347)
!351 = !DILocation(line: 298, column: 35, scope: !347)
!352 = !DILocation(line: 298, column: 47, scope: !347)
!353 = !DILocation(line: 299, column: 21, scope: !347)
!354 = !DILocation(line: 299, column: 33, scope: !347)
!355 = !DILocation(line: 299, column: 31, scope: !347)
!356 = !DILocation(line: 299, column: 43, scope: !347)
!357 = !DILocation(line: 299, column: 47, scope: !347)
!358 = !DILocation(line: 299, column: 25, scope: !347)
!359 = !{!360, !360, i64 0}
!360 = !{!"double", !88, i64 0}
!361 = !DILocation(line: 300, column: 33, scope: !347)
!362 = !DILocation(line: 300, column: 31, scope: !347)
!363 = !DILocation(line: 300, column: 41, scope: !347)
!364 = !DILocation(line: 300, column: 45, scope: !347)
!365 = !DILocation(line: 300, column: 25, scope: !347)
!366 = !DILocation(line: 299, column: 52, scope: !347)
!367 = !DILocation(line: 298, column: 11, scope: !348)
!368 = !DILocation(line: 305, column: 20, scope: !369)
!369 = distinct !DILexicalBlock(scope: !347, file: !1, line: 304, column: 7)
!370 = !DILocation(line: 305, column: 16, scope: !369)
!371 = !DILocation(line: 305, column: 18, scope: !369)
!372 = !DILocation(line: 306, column: 25, scope: !369)
!373 = !DILocation(line: 306, column: 11, scope: !369)
!374 = !DILocation(line: 306, column: 21, scope: !369)
!375 = !DILocation(line: 306, column: 23, scope: !369)
!376 = !DILocation(line: 307, column: 21, scope: !369)
!377 = !DILocation(line: 307, column: 24, scope: !369)
!378 = !DILocation(line: 308, column: 11, scope: !369)
!379 = !DILocation(line: 308, column: 21, scope: !369)
!380 = !DILocation(line: 308, column: 24, scope: !369)
!381 = !DILocation(line: 309, column: 30, scope: !369)
!382 = !DILocation(line: 309, column: 16, scope: !369)
!383 = !DILocation(line: 309, column: 19, scope: !369)
!384 = !DILocation(line: 310, column: 7, scope: !369)
!385 = !DILocation(line: 315, column: 26, scope: !386)
!386 = distinct !DILexicalBlock(scope: !347, file: !1, line: 315, column: 16)
!387 = !DILocation(line: 315, column: 30, scope: !386)
!388 = !DILocation(line: 315, column: 42, scope: !386)
!389 = !DILocation(line: 315, column: 40, scope: !386)
!390 = !DILocation(line: 315, column: 52, scope: !386)
!391 = !DILocation(line: 316, column: 20, scope: !386)
!392 = !DILocation(line: 316, column: 26, scope: !386)
!393 = !DILocation(line: 316, column: 38, scope: !386)
!394 = !DILocation(line: 316, column: 36, scope: !386)
!395 = !DILocation(line: 316, column: 48, scope: !386)
!396 = !DILocation(line: 316, column: 52, scope: !386)
!397 = !DILocation(line: 316, column: 30, scope: !386)
!398 = !DILocation(line: 317, column: 38, scope: !386)
!399 = !DILocation(line: 317, column: 36, scope: !386)
!400 = !DILocation(line: 317, column: 46, scope: !386)
!401 = !DILocation(line: 317, column: 50, scope: !386)
!402 = !DILocation(line: 317, column: 30, scope: !386)
!403 = !DILocation(line: 316, column: 57, scope: !386)
!404 = !DILocation(line: 315, column: 16, scope: !347)
!405 = !DILocation(line: 322, column: 20, scope: !406)
!406 = distinct !DILexicalBlock(scope: !386, file: !1, line: 321, column: 7)
!407 = !DILocation(line: 322, column: 16, scope: !406)
!408 = !DILocation(line: 322, column: 18, scope: !406)
!409 = !DILocation(line: 323, column: 25, scope: !406)
!410 = !DILocation(line: 323, column: 11, scope: !406)
!411 = !DILocation(line: 323, column: 21, scope: !406)
!412 = !DILocation(line: 323, column: 23, scope: !406)
!413 = !DILocation(line: 324, column: 21, scope: !406)
!414 = !DILocation(line: 324, column: 24, scope: !406)
!415 = !DILocation(line: 325, column: 11, scope: !406)
!416 = !DILocation(line: 325, column: 21, scope: !406)
!417 = !DILocation(line: 325, column: 24, scope: !406)
!418 = !DILocation(line: 326, column: 30, scope: !406)
!419 = !DILocation(line: 326, column: 16, scope: !406)
!420 = !DILocation(line: 326, column: 19, scope: !406)
!421 = !DILocation(line: 327, column: 7, scope: !406)
!422 = !DILocation(line: 332, column: 20, scope: !423)
!423 = distinct !DILexicalBlock(scope: !386, file: !1, line: 331, column: 12)
!424 = !DILocation(line: 332, column: 16, scope: !423)
!425 = !DILocation(line: 332, column: 18, scope: !423)
!426 = !DILocation(line: 333, column: 25, scope: !423)
!427 = !DILocation(line: 333, column: 11, scope: !423)
!428 = !DILocation(line: 333, column: 21, scope: !423)
!429 = !DILocation(line: 333, column: 23, scope: !423)
!430 = !DILocation(line: 334, column: 21, scope: !423)
!431 = !DILocation(line: 334, column: 24, scope: !423)
!432 = !DILocation(line: 335, column: 11, scope: !423)
!433 = !DILocation(line: 335, column: 21, scope: !423)
!434 = !DILocation(line: 335, column: 24, scope: !423)
!435 = !DILocation(line: 336, column: 30, scope: !423)
!436 = !DILocation(line: 336, column: 16, scope: !423)
!437 = !DILocation(line: 336, column: 19, scope: !423)
!438 = !DILocation(line: 358, column: 23, scope: !439)
!439 = distinct !DILexicalBlock(scope: !343, file: !1, line: 342, column: 9)
!440 = !DILocation(line: 358, column: 30, scope: !439)
!441 = !DILocation(line: 360, column: 13, scope: !442)
!442 = distinct !DILexicalBlock(scope: !439, file: !1, line: 360, column: 11)
!443 = !DILocation(line: 360, column: 11, scope: !439)
!444 = !DILocation(line: 361, column: 20, scope: !445)
!445 = distinct !DILexicalBlock(scope: !442, file: !1, line: 360, column: 19)
!446 = !DILocation(line: 362, column: 7, scope: !445)
!447 = !DILocation(line: 363, column: 27, scope: !448)
!448 = distinct !DILexicalBlock(scope: !442, file: !1, line: 362, column: 14)
!449 = !DILocation(line: 363, column: 25, scope: !448)
!450 = !DILocation(line: 363, column: 38, scope: !448)
!451 = !DILocation(line: 363, column: 42, scope: !448)
!452 = !DILocation(line: 363, column: 19, scope: !448)
!453 = !DILocation(line: 364, column: 15, scope: !454)
!454 = distinct !DILexicalBlock(scope: !448, file: !1, line: 364, column: 10)
!455 = !DILocation(line: 364, column: 33, scope: !456)
!456 = distinct !DILexicalBlock(scope: !454, file: !1, line: 364, column: 10)
!457 = !DILocation(line: 364, column: 10, scope: !454)
!458 = !DILocation(line: 365, column: 25, scope: !459)
!459 = distinct !DILexicalBlock(scope: !460, file: !1, line: 365, column: 17)
!460 = distinct !DILexicalBlock(scope: !456, file: !1, line: 364, column: 48)
!461 = !DILocation(line: 365, column: 23, scope: !459)
!462 = !DILocation(line: 365, column: 31, scope: !459)
!463 = !DILocation(line: 365, column: 35, scope: !459)
!464 = !DILocation(line: 365, column: 17, scope: !459)
!465 = !DILocation(line: 365, column: 40, scope: !459)
!466 = !DILocation(line: 365, column: 17, scope: !460)
!467 = !DILocation(line: 364, column: 44, scope: !456)
!468 = !DILocation(line: 0, scope: !454)
!469 = distinct !{!469, !457, !470}
!470 = !DILocation(line: 370, column: 10, scope: !454)
!471 = !DILocation(line: 358, column: 14, scope: !439)
!472 = !DILocation(line: 385, column: 17, scope: !439)
!473 = !DILocation(line: 385, column: 13, scope: !439)
!474 = !DILocation(line: 385, column: 15, scope: !439)
!475 = !DILocation(line: 414, column: 21, scope: !439)
!476 = !DILocation(line: 416, column: 12, scope: !477)
!477 = distinct !DILexicalBlock(scope: !439, file: !1, line: 416, column: 7)
!478 = !DILocation(line: 416, column: 25, scope: !479)
!479 = distinct !DILexicalBlock(scope: !477, file: !1, line: 416, column: 7)
!480 = !DILocation(line: 416, column: 7, scope: !477)
!481 = !DILocation(line: 417, column: 14, scope: !482)
!482 = distinct !DILexicalBlock(scope: !483, file: !1, line: 417, column: 14)
!483 = distinct !DILexicalBlock(scope: !479, file: !1, line: 416, column: 38)
!484 = !DILocation(line: 417, column: 23, scope: !482)
!485 = !DILocation(line: 417, column: 20, scope: !482)
!486 = !DILocation(line: 417, column: 14, scope: !483)
!487 = !DILocation(line: 420, column: 27, scope: !488)
!488 = distinct !DILexicalBlock(scope: !489, file: !1, line: 420, column: 17)
!489 = distinct !DILexicalBlock(scope: !482, file: !1, line: 417, column: 35)
!490 = !DILocation(line: 420, column: 31, scope: !488)
!491 = !DILocation(line: 420, column: 37, scope: !488)
!492 = !DILocation(line: 420, column: 49, scope: !488)
!493 = !DILocation(line: 421, column: 21, scope: !488)
!494 = !DILocation(line: 421, column: 27, scope: !488)
!495 = !DILocation(line: 421, column: 39, scope: !488)
!496 = !DILocation(line: 421, column: 37, scope: !488)
!497 = !DILocation(line: 421, column: 45, scope: !488)
!498 = !DILocation(line: 421, column: 49, scope: !488)
!499 = !DILocation(line: 421, column: 31, scope: !488)
!500 = !DILocation(line: 421, column: 54, scope: !488)
!501 = !DILocation(line: 420, column: 17, scope: !489)
!502 = !DILocation(line: 426, column: 30, scope: !503)
!503 = distinct !DILexicalBlock(scope: !488, file: !1, line: 425, column: 13)
!504 = !DILocation(line: 426, column: 19, scope: !503)
!505 = !DILocation(line: 426, column: 16, scope: !503)
!506 = !DILocation(line: 426, column: 28, scope: !503)
!507 = !DILocation(line: 427, column: 13, scope: !503)
!508 = !DILocation(line: 428, column: 30, scope: !509)
!509 = distinct !DILexicalBlock(scope: !488, file: !1, line: 427, column: 20)
!510 = !DILocation(line: 428, column: 19, scope: !509)
!511 = !DILocation(line: 428, column: 16, scope: !509)
!512 = !DILocation(line: 428, column: 28, scope: !509)
!513 = !DILocation(line: 0, scope: !439)
!514 = !DILocation(line: 415, column: 13, scope: !439)
!515 = !DILocation(line: 416, column: 34, scope: !479)
!516 = distinct !{!516, !480, !517}
!517 = !DILocation(line: 431, column: 7, scope: !477)
!518 = !DILocation(line: 449, column: 21, scope: !439)
!519 = !DILocation(line: 451, column: 12, scope: !520)
!520 = distinct !DILexicalBlock(scope: !439, file: !1, line: 451, column: 7)
!521 = !DILocation(line: 451, column: 25, scope: !522)
!522 = distinct !DILexicalBlock(scope: !520, file: !1, line: 451, column: 7)
!523 = !DILocation(line: 451, column: 7, scope: !520)
!524 = !DILocation(line: 452, column: 14, scope: !525)
!525 = distinct !DILexicalBlock(scope: !526, file: !1, line: 452, column: 14)
!526 = distinct !DILexicalBlock(scope: !522, file: !1, line: 451, column: 38)
!527 = !DILocation(line: 452, column: 23, scope: !525)
!528 = !DILocation(line: 452, column: 20, scope: !525)
!529 = !DILocation(line: 452, column: 14, scope: !526)
!530 = !DILocation(line: 455, column: 27, scope: !531)
!531 = distinct !DILexicalBlock(scope: !532, file: !1, line: 455, column: 17)
!532 = distinct !DILexicalBlock(scope: !525, file: !1, line: 452, column: 35)
!533 = !DILocation(line: 455, column: 31, scope: !531)
!534 = !DILocation(line: 455, column: 37, scope: !531)
!535 = !DILocation(line: 455, column: 49, scope: !531)
!536 = !DILocation(line: 456, column: 21, scope: !531)
!537 = !DILocation(line: 456, column: 27, scope: !531)
!538 = !DILocation(line: 456, column: 39, scope: !531)
!539 = !DILocation(line: 456, column: 37, scope: !531)
!540 = !DILocation(line: 456, column: 45, scope: !531)
!541 = !DILocation(line: 456, column: 49, scope: !531)
!542 = !DILocation(line: 456, column: 31, scope: !531)
!543 = !DILocation(line: 456, column: 54, scope: !531)
!544 = !DILocation(line: 455, column: 17, scope: !532)
!545 = !DILocation(line: 461, column: 30, scope: !546)
!546 = distinct !DILexicalBlock(scope: !531, file: !1, line: 460, column: 13)
!547 = !DILocation(line: 461, column: 19, scope: !546)
!548 = !DILocation(line: 461, column: 16, scope: !546)
!549 = !DILocation(line: 461, column: 28, scope: !546)
!550 = !DILocation(line: 462, column: 13, scope: !546)
!551 = !DILocation(line: 463, column: 30, scope: !552)
!552 = distinct !DILexicalBlock(scope: !531, file: !1, line: 462, column: 20)
!553 = !DILocation(line: 463, column: 19, scope: !552)
!554 = !DILocation(line: 463, column: 16, scope: !552)
!555 = !DILocation(line: 463, column: 28, scope: !552)
!556 = !DILocation(line: 450, column: 13, scope: !439)
!557 = !DILocation(line: 451, column: 34, scope: !522)
!558 = distinct !{!558, !523, !559}
!559 = !DILocation(line: 466, column: 7, scope: !520)
!560 = !DILocation(line: 495, column: 24, scope: !561)
!561 = distinct !DILexicalBlock(scope: !439, file: !1, line: 477, column: 7)
!562 = !DILocation(line: 497, column: 15, scope: !563)
!563 = distinct !DILexicalBlock(scope: !561, file: !1, line: 497, column: 10)
!564 = !DILocation(line: 497, column: 28, scope: !565)
!565 = distinct !DILexicalBlock(scope: !563, file: !1, line: 497, column: 10)
!566 = !DILocation(line: 497, column: 10, scope: !563)
!567 = !DILocation(line: 498, column: 17, scope: !568)
!568 = distinct !DILexicalBlock(scope: !569, file: !1, line: 498, column: 17)
!569 = distinct !DILexicalBlock(scope: !565, file: !1, line: 497, column: 41)
!570 = !DILocation(line: 498, column: 26, scope: !568)
!571 = !DILocation(line: 498, column: 23, scope: !568)
!572 = !DILocation(line: 498, column: 17, scope: !569)
!573 = !DILocation(line: 501, column: 30, scope: !574)
!574 = distinct !DILexicalBlock(scope: !575, file: !1, line: 501, column: 20)
!575 = distinct !DILexicalBlock(scope: !568, file: !1, line: 498, column: 38)
!576 = !DILocation(line: 501, column: 34, scope: !574)
!577 = !DILocation(line: 501, column: 40, scope: !574)
!578 = !DILocation(line: 501, column: 52, scope: !574)
!579 = !DILocation(line: 502, column: 24, scope: !574)
!580 = !DILocation(line: 502, column: 30, scope: !574)
!581 = !DILocation(line: 502, column: 42, scope: !574)
!582 = !DILocation(line: 502, column: 40, scope: !574)
!583 = !DILocation(line: 502, column: 48, scope: !574)
!584 = !DILocation(line: 502, column: 52, scope: !574)
!585 = !DILocation(line: 502, column: 34, scope: !574)
!586 = !DILocation(line: 502, column: 57, scope: !574)
!587 = !DILocation(line: 501, column: 20, scope: !575)
!588 = !DILocation(line: 507, column: 33, scope: !589)
!589 = distinct !DILexicalBlock(scope: !574, file: !1, line: 506, column: 16)
!590 = !DILocation(line: 507, column: 22, scope: !589)
!591 = !DILocation(line: 507, column: 19, scope: !589)
!592 = !DILocation(line: 507, column: 31, scope: !589)
!593 = !DILocation(line: 508, column: 16, scope: !589)
!594 = !DILocation(line: 509, column: 33, scope: !595)
!595 = distinct !DILexicalBlock(scope: !574, file: !1, line: 508, column: 23)
!596 = !DILocation(line: 509, column: 22, scope: !595)
!597 = !DILocation(line: 509, column: 19, scope: !595)
!598 = !DILocation(line: 509, column: 31, scope: !595)
!599 = !DILocation(line: 0, scope: !561)
!600 = !DILocation(line: 496, column: 16, scope: !561)
!601 = !DILocation(line: 497, column: 37, scope: !565)
!602 = distinct !{!602, !566, !603}
!603 = !DILocation(line: 512, column: 10, scope: !563)
!604 = !DILocation(line: 522, column: 15, scope: !605)
!605 = distinct !DILexicalBlock(scope: !439, file: !1, line: 522, column: 11)
!606 = !DILocation(line: 522, column: 11, scope: !439)
!607 = !DILocation(line: 540, column: 24, scope: !608)
!608 = distinct !DILexicalBlock(scope: !605, file: !1, line: 522, column: 21)
!609 = !DILocation(line: 542, column: 15, scope: !610)
!610 = distinct !DILexicalBlock(scope: !608, file: !1, line: 542, column: 10)
!611 = !DILocation(line: 542, column: 28, scope: !612)
!612 = distinct !DILexicalBlock(scope: !610, file: !1, line: 542, column: 10)
!613 = !DILocation(line: 542, column: 10, scope: !610)
!614 = !DILocation(line: 543, column: 17, scope: !615)
!615 = distinct !DILexicalBlock(scope: !616, file: !1, line: 543, column: 17)
!616 = distinct !DILexicalBlock(scope: !612, file: !1, line: 542, column: 41)
!617 = !DILocation(line: 543, column: 26, scope: !615)
!618 = !DILocation(line: 543, column: 23, scope: !615)
!619 = !DILocation(line: 543, column: 17, scope: !616)
!620 = !DILocation(line: 544, column: 30, scope: !621)
!621 = distinct !DILexicalBlock(scope: !622, file: !1, line: 544, column: 20)
!622 = distinct !DILexicalBlock(scope: !615, file: !1, line: 543, column: 38)
!623 = !DILocation(line: 544, column: 34, scope: !621)
!624 = !DILocation(line: 544, column: 40, scope: !621)
!625 = !DILocation(line: 544, column: 52, scope: !621)
!626 = !DILocation(line: 545, column: 24, scope: !621)
!627 = !DILocation(line: 545, column: 30, scope: !621)
!628 = !DILocation(line: 545, column: 42, scope: !621)
!629 = !DILocation(line: 545, column: 40, scope: !621)
!630 = !DILocation(line: 545, column: 48, scope: !621)
!631 = !DILocation(line: 545, column: 52, scope: !621)
!632 = !DILocation(line: 545, column: 34, scope: !621)
!633 = !DILocation(line: 545, column: 57, scope: !621)
!634 = !DILocation(line: 544, column: 20, scope: !622)
!635 = !DILocation(line: 546, column: 33, scope: !636)
!636 = distinct !DILexicalBlock(scope: !621, file: !1, line: 545, column: 69)
!637 = !DILocation(line: 546, column: 22, scope: !636)
!638 = !DILocation(line: 546, column: 19, scope: !636)
!639 = !DILocation(line: 546, column: 31, scope: !636)
!640 = !DILocation(line: 547, column: 16, scope: !636)
!641 = !DILocation(line: 548, column: 33, scope: !642)
!642 = distinct !DILexicalBlock(scope: !621, file: !1, line: 547, column: 23)
!643 = !DILocation(line: 548, column: 22, scope: !642)
!644 = !DILocation(line: 548, column: 19, scope: !642)
!645 = !DILocation(line: 548, column: 31, scope: !642)
!646 = !DILocation(line: 0, scope: !608)
!647 = !DILocation(line: 541, column: 16, scope: !608)
!648 = !DILocation(line: 542, column: 37, scope: !612)
!649 = distinct !{!649, !613, !650}
!650 = !DILocation(line: 551, column: 10, scope: !610)
!651 = !DILocation(line: 576, column: 17, scope: !652)
!652 = distinct !DILexicalBlock(scope: !439, file: !1, line: 576, column: 11)
!653 = !DILocation(line: 576, column: 11, scope: !439)
!654 = !DILocation(line: 577, column: 11, scope: !655)
!655 = distinct !DILexicalBlock(scope: !652, file: !1, line: 576, column: 27)
!656 = !DILocation(line: 577, column: 21, scope: !655)
!657 = !DILocation(line: 577, column: 24, scope: !655)
!658 = !DILocation(line: 578, column: 11, scope: !655)
!659 = !DILocation(line: 578, column: 21, scope: !655)
!660 = !DILocation(line: 578, column: 24, scope: !655)
!661 = !DILocation(line: 579, column: 30, scope: !655)
!662 = !DILocation(line: 579, column: 16, scope: !655)
!663 = !DILocation(line: 579, column: 19, scope: !655)
!664 = !DILocation(line: 590, column: 18, scope: !665)
!665 = distinct !DILexicalBlock(scope: !655, file: !1, line: 590, column: 14)
!666 = !DILocation(line: 590, column: 14, scope: !655)
!667 = !DILocation(line: 592, column: 53, scope: !668)
!668 = distinct !DILexicalBlock(scope: !665, file: !1, line: 590, column: 24)
!669 = !DILocation(line: 592, column: 62, scope: !668)
!670 = !DILocation(line: 591, column: 13, scope: !668)
!671 = !DILocation(line: 593, column: 10, scope: !668)
!672 = !DILocation(line: 595, column: 53, scope: !673)
!673 = distinct !DILexicalBlock(scope: !665, file: !1, line: 593, column: 17)
!674 = !DILocation(line: 595, column: 62, scope: !673)
!675 = !DILocation(line: 594, column: 13, scope: !673)
!676 = !DILocation(line: 614, column: 17, scope: !677)
!677 = distinct !DILexicalBlock(scope: !439, file: !1, line: 614, column: 11)
!678 = !DILocation(line: 614, column: 11, scope: !439)
!679 = !DILocation(line: 615, column: 11, scope: !680)
!680 = distinct !DILexicalBlock(scope: !677, file: !1, line: 614, column: 27)
!681 = !DILocation(line: 615, column: 21, scope: !680)
!682 = !DILocation(line: 615, column: 24, scope: !680)
!683 = !DILocation(line: 616, column: 11, scope: !680)
!684 = !DILocation(line: 616, column: 21, scope: !680)
!685 = !DILocation(line: 616, column: 24, scope: !680)
!686 = !DILocation(line: 617, column: 30, scope: !680)
!687 = !DILocation(line: 617, column: 16, scope: !680)
!688 = !DILocation(line: 617, column: 19, scope: !680)
!689 = !DILocation(line: 628, column: 18, scope: !690)
!690 = distinct !DILexicalBlock(scope: !680, file: !1, line: 628, column: 14)
!691 = !DILocation(line: 628, column: 14, scope: !680)
!692 = !DILocation(line: 630, column: 32, scope: !693)
!693 = distinct !DILexicalBlock(scope: !690, file: !1, line: 628, column: 24)
!694 = !DILocation(line: 630, column: 56, scope: !693)
!695 = !DILocation(line: 630, column: 65, scope: !693)
!696 = !DILocation(line: 629, column: 13, scope: !693)
!697 = !DILocation(line: 631, column: 10, scope: !693)
!698 = !DILocation(line: 633, column: 32, scope: !699)
!699 = distinct !DILexicalBlock(scope: !690, file: !1, line: 631, column: 17)
!700 = !DILocation(line: 633, column: 56, scope: !699)
!701 = !DILocation(line: 633, column: 65, scope: !699)
!702 = !DILocation(line: 632, column: 13, scope: !699)
!703 = !DILocation(line: 639, column: 1, scope: !306)
!704 = distinct !DISubprogram(name: "searchkdtree", scope: !1, file: !1, line: 667, type: !705, scopeLine: 671, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !707)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !8, !38, !13, !13, !36, !36, !36, !36, !39, !39, !7, !21}
!707 = !{!708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724}
!708 = !DILocalVariable(name: "that", arg: 1, scope: !704, file: !1, line: 667, type: !8)
!709 = !DILocalVariable(name: "x", arg: 2, scope: !704, file: !1, line: 667, type: !38)
!710 = !DILocalVariable(name: "p", arg: 3, scope: !704, file: !1, line: 667, type: !13)
!711 = !DILocalVariable(name: "q", arg: 4, scope: !704, file: !1, line: 667, type: !13)
!712 = !DILocalVariable(name: "loindexp", arg: 5, scope: !704, file: !1, line: 668, type: !36)
!713 = !DILocalVariable(name: "upindexp", arg: 6, scope: !704, file: !1, line: 668, type: !36)
!714 = !DILocalVariable(name: "lopairlist", arg: 7, scope: !704, file: !1, line: 669, type: !36)
!715 = !DILocalVariable(name: "uppairlist", arg: 8, scope: !704, file: !1, line: 669, type: !36)
!716 = !DILocalVariable(name: "cut", arg: 9, scope: !704, file: !1, line: 670, type: !39)
!717 = !DILocalVariable(name: "cut2", arg: 10, scope: !704, file: !1, line: 670, type: !39)
!718 = !DILocalVariable(name: "dim", arg: 11, scope: !704, file: !1, line: 670, type: !7)
!719 = !DILocalVariable(name: "frozen", arg: 12, scope: !704, file: !1, line: 670, type: !21)
!720 = !DILocalVariable(name: "xij", scope: !704, file: !1, line: 672, type: !39)
!721 = !DILocalVariable(name: "yij", scope: !704, file: !1, line: 672, type: !39)
!722 = !DILocalVariable(name: "zij", scope: !704, file: !1, line: 672, type: !39)
!723 = !DILocalVariable(name: "wij", scope: !704, file: !1, line: 672, type: !39)
!724 = !DILocalVariable(name: "r2", scope: !704, file: !1, line: 672, type: !39)
!725 = !DILocation(line: 0, scope: !704)
!726 = !DILocation(line: 685, column: 14, scope: !704)
!727 = !DILocation(line: 685, column: 6, scope: !704)
!728 = !DILocation(line: 697, column: 18, scope: !729)
!729 = distinct !DILexicalBlock(scope: !704, file: !1, line: 697, column: 8)
!730 = !DILocation(line: 697, column: 28, scope: !729)
!731 = !DILocation(line: 697, column: 31, scope: !729)
!732 = !DILocation(line: 697, column: 41, scope: !729)
!733 = !DILocation(line: 698, column: 12, scope: !729)
!734 = !DILocation(line: 698, column: 18, scope: !729)
!735 = !DILocation(line: 698, column: 28, scope: !729)
!736 = !DILocation(line: 698, column: 31, scope: !729)
!737 = !DILocation(line: 698, column: 40, scope: !729)
!738 = !DILocation(line: 699, column: 16, scope: !729)
!739 = !DILocation(line: 699, column: 20, scope: !729)
!740 = !DILocation(line: 699, column: 24, scope: !729)
!741 = !DILocation(line: 699, column: 10, scope: !729)
!742 = !DILocation(line: 699, column: 29, scope: !729)
!743 = !DILocation(line: 699, column: 52, scope: !729)
!744 = !DILocation(line: 699, column: 44, scope: !729)
!745 = !DILocation(line: 699, column: 54, scope: !729)
!746 = !DILocation(line: 699, column: 58, scope: !729)
!747 = !DILocation(line: 699, column: 38, scope: !729)
!748 = !DILocation(line: 699, column: 35, scope: !729)
!749 = !DILocation(line: 697, column: 8, scope: !704)
!750 = !DILocation(line: 705, column: 26, scope: !751)
!751 = distinct !DILexicalBlock(scope: !729, file: !1, line: 704, column: 4)
!752 = !DILocation(line: 705, column: 35, scope: !751)
!753 = !DILocation(line: 705, column: 7, scope: !751)
!754 = !DILocation(line: 707, column: 4, scope: !751)
!755 = !DILocation(line: 718, column: 20, scope: !756)
!756 = distinct !DILexicalBlock(scope: !704, file: !1, line: 718, column: 8)
!757 = !DILocation(line: 718, column: 11, scope: !756)
!758 = !DILocation(line: 718, column: 23, scope: !756)
!759 = !DILocation(line: 718, column: 28, scope: !756)
!760 = !DILocation(line: 718, column: 38, scope: !756)
!761 = !DILocation(line: 718, column: 55, scope: !756)
!762 = !DILocation(line: 718, column: 42, scope: !756)
!763 = !DILocation(line: 718, column: 8, scope: !704)
!764 = !DILocation(line: 719, column: 19, scope: !765)
!765 = distinct !DILexicalBlock(scope: !756, file: !1, line: 718, column: 60)
!766 = !DILocation(line: 719, column: 13, scope: !765)
!767 = !DILocation(line: 719, column: 44, scope: !765)
!768 = !DILocation(line: 719, column: 36, scope: !765)
!769 = !DILocation(line: 719, column: 30, scope: !765)
!770 = !DILocation(line: 719, column: 28, scope: !765)
!771 = !DILocation(line: 720, column: 19, scope: !765)
!772 = !DILocation(line: 720, column: 23, scope: !765)
!773 = !DILocation(line: 720, column: 13, scope: !765)
!774 = !DILocation(line: 720, column: 44, scope: !765)
!775 = !DILocation(line: 720, column: 36, scope: !765)
!776 = !DILocation(line: 720, column: 46, scope: !765)
!777 = !DILocation(line: 720, column: 30, scope: !765)
!778 = !DILocation(line: 720, column: 28, scope: !765)
!779 = !DILocation(line: 721, column: 19, scope: !765)
!780 = !DILocation(line: 721, column: 23, scope: !765)
!781 = !DILocation(line: 721, column: 13, scope: !765)
!782 = !DILocation(line: 721, column: 44, scope: !765)
!783 = !DILocation(line: 721, column: 36, scope: !765)
!784 = !DILocation(line: 721, column: 46, scope: !765)
!785 = !DILocation(line: 721, column: 30, scope: !765)
!786 = !DILocation(line: 721, column: 28, scope: !765)
!787 = !DILocation(line: 722, column: 16, scope: !765)
!788 = !DILocation(line: 722, column: 28, scope: !765)
!789 = !DILocation(line: 722, column: 22, scope: !765)
!790 = !DILocation(line: 722, column: 40, scope: !765)
!791 = !DILocation(line: 722, column: 34, scope: !765)
!792 = !DILocation(line: 723, column: 15, scope: !793)
!793 = distinct !DILexicalBlock(scope: !765, file: !1, line: 723, column: 11)
!794 = !DILocation(line: 723, column: 11, scope: !765)
!795 = !DILocation(line: 724, column: 22, scope: !796)
!796 = distinct !DILexicalBlock(scope: !793, file: !1, line: 723, column: 21)
!797 = !DILocation(line: 724, column: 26, scope: !796)
!798 = !DILocation(line: 724, column: 16, scope: !796)
!799 = !DILocation(line: 724, column: 47, scope: !796)
!800 = !DILocation(line: 724, column: 39, scope: !796)
!801 = !DILocation(line: 724, column: 49, scope: !796)
!802 = !DILocation(line: 724, column: 33, scope: !796)
!803 = !DILocation(line: 724, column: 31, scope: !796)
!804 = !DILocation(line: 725, column: 20, scope: !796)
!805 = !DILocation(line: 725, column: 13, scope: !796)
!806 = !DILocation(line: 726, column: 7, scope: !796)
!807 = !DILocation(line: 0, scope: !765)
!808 = !DILocation(line: 727, column: 14, scope: !809)
!809 = distinct !DILexicalBlock(scope: !765, file: !1, line: 727, column: 11)
!810 = !DILocation(line: 727, column: 11, scope: !765)
!811 = !DILocation(line: 728, column: 20, scope: !812)
!812 = distinct !DILexicalBlock(scope: !813, file: !1, line: 728, column: 14)
!813 = distinct !DILexicalBlock(scope: !809, file: !1, line: 727, column: 22)
!814 = !DILocation(line: 728, column: 22, scope: !812)
!815 = !DILocation(line: 728, column: 14, scope: !813)
!816 = !DILocation(line: 729, column: 43, scope: !817)
!817 = distinct !DILexicalBlock(scope: !812, file: !1, line: 728, column: 27)
!818 = !DILocation(line: 729, column: 24, scope: !817)
!819 = !DILocation(line: 729, column: 13, scope: !817)
!820 = !DILocation(line: 729, column: 35, scope: !817)
!821 = !DILocation(line: 730, column: 24, scope: !817)
!822 = !DILocation(line: 731, column: 10, scope: !817)
!823 = !DILocation(line: 732, column: 43, scope: !824)
!824 = distinct !DILexicalBlock(scope: !812, file: !1, line: 731, column: 17)
!825 = !DILocation(line: 732, column: 24, scope: !824)
!826 = !DILocation(line: 732, column: 13, scope: !824)
!827 = !DILocation(line: 732, column: 35, scope: !824)
!828 = !DILocation(line: 733, column: 24, scope: !824)
!829 = !DILocation(line: 747, column: 18, scope: !830)
!830 = distinct !DILexicalBlock(scope: !704, file: !1, line: 747, column: 8)
!831 = !DILocation(line: 747, column: 28, scope: !830)
!832 = !DILocation(line: 747, column: 31, scope: !830)
!833 = !DILocation(line: 747, column: 41, scope: !830)
!834 = !DILocation(line: 748, column: 12, scope: !830)
!835 = !DILocation(line: 748, column: 18, scope: !830)
!836 = !DILocation(line: 748, column: 28, scope: !830)
!837 = !DILocation(line: 748, column: 31, scope: !830)
!838 = !DILocation(line: 748, column: 40, scope: !830)
!839 = !DILocation(line: 749, column: 16, scope: !830)
!840 = !DILocation(line: 749, column: 20, scope: !830)
!841 = !DILocation(line: 749, column: 24, scope: !830)
!842 = !DILocation(line: 749, column: 10, scope: !830)
!843 = !DILocation(line: 749, column: 29, scope: !830)
!844 = !DILocation(line: 749, column: 51, scope: !830)
!845 = !DILocation(line: 749, column: 43, scope: !830)
!846 = !DILocation(line: 749, column: 53, scope: !830)
!847 = !DILocation(line: 749, column: 57, scope: !830)
!848 = !DILocation(line: 749, column: 37, scope: !830)
!849 = !DILocation(line: 749, column: 35, scope: !830)
!850 = !DILocation(line: 747, column: 8, scope: !704)
!851 = !DILocation(line: 754, column: 26, scope: !852)
!852 = distinct !DILexicalBlock(scope: !830, file: !1, line: 753, column: 4)
!853 = !DILocation(line: 754, column: 35, scope: !852)
!854 = !DILocation(line: 754, column: 7, scope: !852)
!855 = !DILocation(line: 756, column: 4, scope: !852)
!856 = !DILocation(line: 757, column: 1, scope: !704)
!857 = distinct !DISubprogram(name: "heapsort_pairs", scope: !1, file: !1, line: 114, type: !858, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !860)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !21, !7}
!860 = !{!861, !862, !863, !864}
!861 = !DILocalVariable(name: "a", arg: 1, scope: !857, file: !1, line: 114, type: !21)
!862 = !DILocalVariable(name: "n", arg: 2, scope: !857, file: !1, line: 114, type: !7)
!863 = !DILocalVariable(name: "k", scope: !857, file: !1, line: 117, type: !7)
!864 = !DILocalVariable(name: "v", scope: !857, file: !1, line: 117, type: !7)
!865 = !DILocation(line: 0, scope: !857)
!866 = !DILocation(line: 119, column: 15, scope: !867)
!867 = distinct !DILexicalBlock(scope: !857, file: !1, line: 119, column: 4)
!868 = !DILocation(line: 119, column: 22, scope: !869)
!869 = distinct !DILexicalBlock(scope: !867, file: !1, line: 119, column: 4)
!870 = !DILocation(line: 119, column: 4, scope: !867)
!871 = !DILocation(line: 120, column: 7, scope: !869)
!872 = !DILocation(line: 119, column: 29, scope: !869)
!873 = distinct !{!873, !870, !874}
!874 = !DILocation(line: 120, column: 29, scope: !867)
!875 = !DILocation(line: 121, column: 4, scope: !857)
!876 = !DILocation(line: 121, column: 13, scope: !857)
!877 = !DILocation(line: 122, column: 11, scope: !878)
!878 = distinct !DILexicalBlock(scope: !857, file: !1, line: 121, column: 18)
!879 = !DILocation(line: 125, column: 25, scope: !878)
!880 = !DILocation(line: 123, column: 14, scope: !878)
!881 = !DILocation(line: 123, column: 12, scope: !878)
!882 = !DILocation(line: 124, column: 7, scope: !878)
!883 = !DILocation(line: 124, column: 16, scope: !878)
!884 = !DILocation(line: 125, column: 7, scope: !878)
!885 = distinct !{!885, !875, !886}
!886 = !DILocation(line: 126, column: 4, scope: !857)
!887 = !DILocation(line: 127, column: 1, scope: !857)
!888 = distinct !DISubprogram(name: "downheap_index", scope: !1, file: !1, line: 163, type: !889, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !891)
!889 = !DISubroutineType(types: !890)
!890 = !{null, !21, !7, !7, !38, !7, !7}
!891 = !{!892, !893, !894, !895, !896, !897, !898, !899}
!892 = !DILocalVariable(name: "a", arg: 1, scope: !888, file: !1, line: 163, type: !21)
!893 = !DILocalVariable(name: "n", arg: 2, scope: !888, file: !1, line: 163, type: !7)
!894 = !DILocalVariable(name: "k", arg: 3, scope: !888, file: !1, line: 163, type: !7)
!895 = !DILocalVariable(name: "x", arg: 4, scope: !888, file: !1, line: 163, type: !38)
!896 = !DILocalVariable(name: "p", arg: 5, scope: !888, file: !1, line: 163, type: !7)
!897 = !DILocalVariable(name: "dim", arg: 6, scope: !888, file: !1, line: 163, type: !7)
!898 = !DILocalVariable(name: "j", scope: !888, file: !1, line: 166, type: !7)
!899 = !DILocalVariable(name: "v", scope: !888, file: !1, line: 166, type: !7)
!900 = !DILocation(line: 0, scope: !888)
!901 = !DILocation(line: 168, column: 12, scope: !888)
!902 = !DILocation(line: 168, column: 8, scope: !888)
!903 = !DILocation(line: 169, column: 18, scope: !888)
!904 = !DILocation(line: 169, column: 13, scope: !888)
!905 = !DILocation(line: 169, column: 4, scope: !888)
!906 = !DILocation(line: 170, column: 13, scope: !907)
!907 = distinct !DILexicalBlock(scope: !888, file: !1, line: 169, column: 23)
!908 = !DILocation(line: 171, column: 14, scope: !909)
!909 = distinct !DILexicalBlock(scope: !907, file: !1, line: 171, column: 11)
!910 = !DILocation(line: 171, column: 19, scope: !909)
!911 = !DILocation(line: 171, column: 35, scope: !909)
!912 = !DILocation(line: 171, column: 31, scope: !909)
!913 = !DILocation(line: 171, column: 29, scope: !909)
!914 = !DILocation(line: 171, column: 40, scope: !909)
!915 = !DILocation(line: 171, column: 23, scope: !909)
!916 = !DILocation(line: 171, column: 55, scope: !909)
!917 = !DILocation(line: 171, column: 53, scope: !909)
!918 = !DILocation(line: 171, column: 60, scope: !909)
!919 = !DILocation(line: 171, column: 47, scope: !909)
!920 = !DILocation(line: 171, column: 45, scope: !909)
!921 = !DILocation(line: 171, column: 11, scope: !907)
!922 = !DILocation(line: 172, column: 11, scope: !909)
!923 = !DILocation(line: 172, column: 10, scope: !909)
!924 = !DILocation(line: 0, scope: !907)
!925 = !DILocation(line: 173, column: 17, scope: !926)
!926 = distinct !DILexicalBlock(scope: !907, file: !1, line: 173, column: 11)
!927 = !DILocation(line: 173, column: 21, scope: !926)
!928 = !DILocation(line: 173, column: 11, scope: !926)
!929 = !DILocation(line: 173, column: 41, scope: !926)
!930 = !DILocation(line: 173, column: 37, scope: !926)
!931 = !DILocation(line: 173, column: 35, scope: !926)
!932 = !DILocation(line: 173, column: 46, scope: !926)
!933 = !DILocation(line: 173, column: 29, scope: !926)
!934 = !DILocation(line: 173, column: 26, scope: !926)
!935 = !DILocation(line: 173, column: 11, scope: !907)
!936 = !DILocation(line: 175, column: 22, scope: !907)
!937 = !DILocation(line: 175, column: 18, scope: !907)
!938 = !DILocation(line: 175, column: 11, scope: !907)
!939 = !DILocation(line: 175, column: 7, scope: !907)
!940 = !DILocation(line: 175, column: 16, scope: !907)
!941 = distinct !{!941, !905, !942}
!942 = !DILocation(line: 177, column: 4, scope: !888)
!943 = !DILocation(line: 178, column: 8, scope: !888)
!944 = !DILocation(line: 178, column: 4, scope: !888)
!945 = !DILocation(line: 178, column: 13, scope: !888)
!946 = !DILocation(line: 179, column: 1, scope: !888)
!947 = distinct !DISubprogram(name: "downheap_pairs", scope: !1, file: !1, line: 73, type: !23, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !948)
!948 = !{!949, !950, !951, !952, !953}
!949 = !DILocalVariable(name: "a", arg: 1, scope: !947, file: !1, line: 73, type: !21)
!950 = !DILocalVariable(name: "n", arg: 2, scope: !947, file: !1, line: 73, type: !7)
!951 = !DILocalVariable(name: "k", arg: 3, scope: !947, file: !1, line: 73, type: !7)
!952 = !DILocalVariable(name: "j", scope: !947, file: !1, line: 76, type: !7)
!953 = !DILocalVariable(name: "v", scope: !947, file: !1, line: 76, type: !7)
!954 = !DILocation(line: 0, scope: !947)
!955 = !DILocation(line: 78, column: 12, scope: !947)
!956 = !DILocation(line: 78, column: 8, scope: !947)
!957 = !DILocation(line: 79, column: 18, scope: !947)
!958 = !DILocation(line: 79, column: 13, scope: !947)
!959 = !DILocation(line: 79, column: 4, scope: !947)
!960 = !DILocation(line: 80, column: 13, scope: !961)
!961 = distinct !DILexicalBlock(scope: !947, file: !1, line: 79, column: 23)
!962 = !DILocation(line: 81, column: 14, scope: !963)
!963 = distinct !DILexicalBlock(scope: !961, file: !1, line: 81, column: 11)
!964 = !DILocation(line: 81, column: 19, scope: !963)
!965 = !DILocation(line: 81, column: 27, scope: !963)
!966 = !DILocation(line: 81, column: 23, scope: !963)
!967 = !DILocation(line: 81, column: 34, scope: !963)
!968 = !DILocation(line: 81, column: 32, scope: !963)
!969 = !DILocation(line: 81, column: 11, scope: !961)
!970 = !DILocation(line: 0, scope: !961)
!971 = !DILocation(line: 83, column: 20, scope: !972)
!972 = distinct !DILexicalBlock(scope: !961, file: !1, line: 83, column: 11)
!973 = !DILocation(line: 83, column: 16, scope: !972)
!974 = !DILocation(line: 83, column: 13, scope: !972)
!975 = !DILocation(line: 83, column: 11, scope: !961)
!976 = !DILocation(line: 85, column: 22, scope: !961)
!977 = !DILocation(line: 85, column: 18, scope: !961)
!978 = !DILocation(line: 85, column: 11, scope: !961)
!979 = !DILocation(line: 85, column: 7, scope: !961)
!980 = !DILocation(line: 85, column: 16, scope: !961)
!981 = distinct !{!981, !959, !982}
!982 = !DILocation(line: 87, column: 4, scope: !947)
!983 = !DILocation(line: 88, column: 8, scope: !947)
!984 = !DILocation(line: 88, column: 4, scope: !947)
!985 = !DILocation(line: 88, column: 13, scope: !947)
!986 = !DILocation(line: 89, column: 1, scope: !947)
