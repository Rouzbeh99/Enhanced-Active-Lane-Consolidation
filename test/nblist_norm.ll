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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #6, !dbg !72
  call void @llvm.dbg.declare(metadata i32* %11, metadata !53, metadata !DIExpression()), !dbg !73
  %15 = bitcast i32* %12 to i8*, !dbg !72
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #6, !dbg !72
  call void @llvm.dbg.declare(metadata i32* %12, metadata !54, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata !2, metadata !56, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata !2, metadata !57, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.value(metadata i32* null, metadata !62, metadata !DIExpression()), !dbg !71
  %16 = bitcast %struct.kdnode** %13 to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %16) #6, !dbg !77
  call void @llvm.dbg.declare(metadata %struct.kdnode** %13, metadata !69, metadata !DIExpression()), !dbg !78
  %17 = fmul double %6, %6, !dbg !79
  call void @llvm.dbg.value(metadata double %17, metadata !67, metadata !DIExpression()), !dbg !71
  %18 = call i32 @get_blocksize(), !dbg !80
  call void @llvm.dbg.value(metadata i32 %18, metadata !58, metadata !DIExpression()), !dbg !71
  %19 = sext i32 %7 to i64, !dbg !81
  %20 = mul i64 %19, 24, !dbg !83
  %21 = call noalias i8* @malloc(i64 %20) #6, !dbg !84
  %22 = bitcast i8* %21 to %struct.kdnode*, !dbg !85
  call void @llvm.dbg.value(metadata %struct.kdnode* %22, metadata !68, metadata !DIExpression()), !dbg !71
  %23 = icmp eq %struct.kdnode* %22, null, !dbg !86
  br i1 %23, label %24, label %27, !dbg !87

24:                                               ; preds = %10
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !88, !tbaa !90
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0)), !dbg !94
  call void @exit(i32 1) #7, !dbg !95
  unreachable, !dbg !95

27:                                               ; preds = %10
  %28 = call i32* @ivector(i32 0, i32 %7), !dbg !96
  call void @llvm.dbg.value(metadata i32* %28, metadata !59, metadata !DIExpression()), !dbg !71
  %29 = call i32* @ivector(i32 0, i32 %7), !dbg !97
  call void @llvm.dbg.value(metadata i32* %29, metadata !60, metadata !DIExpression()), !dbg !71
  %30 = call i32* @ivector(i32 0, i32 %7), !dbg !98
  call void @llvm.dbg.value(metadata i32* %30, metadata !61, metadata !DIExpression()), !dbg !71
  %31 = call i32* @ivector(i32 0, i32 %7), !dbg !99
  call void @llvm.dbg.value(metadata i32* %31, metadata !64, metadata !DIExpression()), !dbg !71
  %32 = icmp eq i32 %8, 4, !dbg !100
  br i1 %32, label %33, label %35, !dbg !102

33:                                               ; preds = %27
  %34 = call i32* @ivector(i32 0, i32 %7), !dbg !103
  call void @llvm.dbg.value(metadata i32* %34, metadata !62, metadata !DIExpression()), !dbg !71
  br label %35, !dbg !105

35:                                               ; preds = %33, %27
  %.0 = phi i32* [ %34, %33 ], [ null, %27 ], !dbg !71
  call void @llvm.dbg.value(metadata i32* %.0, metadata !62, metadata !DIExpression()), !dbg !71
  %36 = call i32* @ivector(i32 0, i32 %7), !dbg !106
  call void @llvm.dbg.value(metadata i32* %36, metadata !63, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i32 0, metadata !51, metadata !DIExpression()), !dbg !71
  %37 = sext i32 %7 to i64, !dbg !107
  call void @llvm.dbg.value(metadata i64 0, metadata !51, metadata !DIExpression()), !dbg !71
  %38 = icmp slt i64 0, %37, !dbg !109
  br i1 %38, label %.lr.ph, label %55, !dbg !111

.lr.ph:                                           ; preds = %35
  br label %39, !dbg !111

39:                                               ; preds = %.lr.ph, %53
  %indvars.iv11 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %53 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv11, metadata !51, metadata !DIExpression()), !dbg !71
  %40 = getelementptr inbounds i32, i32* %30, i64 %indvars.iv11, !dbg !112
  %41 = trunc i64 %indvars.iv11 to i32, !dbg !114
  store i32 %41, i32* %40, align 4, !dbg !114, !tbaa !115
  %42 = getelementptr inbounds i32, i32* %29, i64 %indvars.iv11, !dbg !117
  %43 = trunc i64 %indvars.iv11 to i32, !dbg !118
  store i32 %43, i32* %42, align 4, !dbg !118, !tbaa !115
  %44 = getelementptr inbounds i32, i32* %28, i64 %indvars.iv11, !dbg !119
  %45 = trunc i64 %indvars.iv11 to i32, !dbg !120
  store i32 %45, i32* %44, align 4, !dbg !120, !tbaa !115
  %46 = icmp eq i32 %8, 4, !dbg !121
  br i1 %46, label %47, label %50, !dbg !123

47:                                               ; preds = %39
  %48 = getelementptr inbounds i32, i32* %.0, i64 %indvars.iv11, !dbg !124
  %49 = trunc i64 %indvars.iv11 to i32, !dbg !126
  store i32 %49, i32* %48, align 4, !dbg !126, !tbaa !115
  br label %50, !dbg !127

50:                                               ; preds = %47, %39
  %51 = getelementptr inbounds i32, i32* %36, i64 %indvars.iv11, !dbg !128
  %52 = trunc i64 %indvars.iv11 to i32, !dbg !129
  store i32 %52, i32* %51, align 4, !dbg !129, !tbaa !115
  br label %53, !dbg !130

53:                                               ; preds = %50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv11, 1, !dbg !131
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !51, metadata !DIExpression()), !dbg !71
  %54 = icmp slt i64 %indvars.iv.next, %37, !dbg !109
  br i1 %54, label %39, label %._crit_edge, !dbg !111, !llvm.loop !132

._crit_edge:                                      ; preds = %53
  br label %55, !dbg !111

55:                                               ; preds = %._crit_edge, %35
  call void @heapsort_index(i32* %28, i32 %7, double* %3, i32 0, i32 %8), !dbg !134
  call void @heapsort_index(i32* %29, i32 %7, double* %3, i32 1, i32 %8), !dbg !135
  call void @heapsort_index(i32* %30, i32 %7, double* %3, i32 2, i32 %8), !dbg !136
  %56 = icmp eq i32 %8, 4, !dbg !137
  br i1 %56, label %57, label %58, !dbg !139

57:                                               ; preds = %55
  call void @heapsort_index(i32* %.0, i32 %7, double* %3, i32 3, i32 %8), !dbg !140
  br label %58, !dbg !142

58:                                               ; preds = %57, %55
  store %struct.kdnode* %22, %struct.kdnode** %13, align 8, !dbg !143, !tbaa !90
  %59 = load %struct.kdnode*, %struct.kdnode** %13, align 8, !dbg !144, !tbaa !90
  %60 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %59, i32 1, !dbg !144
  store %struct.kdnode* %60, %struct.kdnode** %13, align 8, !dbg !144, !tbaa !90
  call void @llvm.dbg.value(metadata %struct.kdnode* %59, metadata !70, metadata !DIExpression()), !dbg !71
  %61 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %59, i32 0, i32 1, !dbg !145
  store %struct.kdnode* null, %struct.kdnode** %61, align 8, !dbg !146, !tbaa !147
  %62 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %59, i32 0, i32 2, !dbg !149
  store %struct.kdnode* null, %struct.kdnode** %62, align 8, !dbg !150, !tbaa !151
  %63 = sub nsw i32 %7, 1, !dbg !152
  call void @buildkdtree(i32* %36, i32* %28, i32* %29, i32* %30, i32* %.0, i32* %31, i32 0, i32 %63, %struct.kdnode** %13, %struct.kdnode* %59, double* %3, i32 0, i32 %8), !dbg !153
  call void @llvm.dbg.value(metadata i32 0, metadata !55, metadata !DIExpression()), !dbg !71
  %64 = call i32* @ivector(i32 0, i32 %7), !dbg !154
  call void @llvm.dbg.value(metadata i32* %64, metadata !65, metadata !DIExpression()), !dbg !71
  %65 = call i32* @ivector(i32 0, i32 %7), !dbg !156
  call void @llvm.dbg.value(metadata i32* %65, metadata !66, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i32 0, metadata !51, metadata !DIExpression()), !dbg !71
  %66 = sext i32 %7 to i64, !dbg !157
  call void @llvm.dbg.value(metadata i32 0, metadata !55, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i64 0, metadata !51, metadata !DIExpression()), !dbg !71
  %67 = icmp slt i64 0, %66, !dbg !159
  br i1 %67, label %.lr.ph27, label %168, !dbg !161

.lr.ph27:                                         ; preds = %58
  br label %68, !dbg !161

68:                                               ; preds = %.lr.ph27, %166
  %.0125 = phi i32 [ 0, %.lr.ph27 ], [ %165, %166 ]
  %indvars.iv920 = phi i64 [ 0, %.lr.ph27 ], [ %indvars.iv.next10, %166 ]
  call void @llvm.dbg.value(metadata i32 %.0125, metadata !55, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i64 %indvars.iv920, metadata !51, metadata !DIExpression()), !dbg !71
  store i32 0, i32* %12, align 4, !dbg !162, !tbaa !115
  store i32 0, i32* %11, align 4, !dbg !164, !tbaa !115
  %69 = trunc i64 %indvars.iv920 to i32, !dbg !165
  call void @searchkdtree(%struct.kdnode* %59, double* %3, i32 0, i32 %69, i32* %11, i32* %12, i32* %64, i32* %65, double %6, double %17, i32 %8, i32* %9), !dbg !165
  %70 = load i32, i32* %11, align 4, !dbg !166, !tbaa !115
  call void @heapsort_pairs(i32* %64, i32 %70), !dbg !167
  %71 = load i32, i32* %12, align 4, !dbg !168, !tbaa !115
  call void @heapsort_pairs(i32* %65, i32 %71), !dbg !169
  %72 = getelementptr inbounds i32*, i32** %2, i64 %indvars.iv920, !dbg !170
  %73 = load i32*, i32** %72, align 8, !dbg !170, !tbaa !90
  %74 = icmp eq i32* %73, null, !dbg !172
  br i1 %74, label %75, label %86, !dbg !173

75:                                               ; preds = %68
  %76 = load i32, i32* %11, align 4, !dbg !174, !tbaa !115
  %77 = load i32, i32* %12, align 4, !dbg !175, !tbaa !115
  %78 = add nsw i32 %76, %77, !dbg !176
  %79 = icmp sgt i32 %78, 0, !dbg !177
  br i1 %79, label %80, label %86, !dbg !178

80:                                               ; preds = %75
  %81 = load i32, i32* %11, align 4, !dbg !179, !tbaa !115
  %82 = load i32, i32* %12, align 4, !dbg !181, !tbaa !115
  %83 = add nsw i32 %81, %82, !dbg !182
  %84 = call i32* @ivector(i32 0, i32 %83), !dbg !183
  %85 = getelementptr inbounds i32*, i32** %2, i64 %indvars.iv920, !dbg !184
  store i32* %84, i32** %85, align 8, !dbg !185, !tbaa !90
  br label %126, !dbg !186

86:                                               ; preds = %75, %68
  %87 = getelementptr inbounds i32*, i32** %2, i64 %indvars.iv920, !dbg !187
  %88 = load i32*, i32** %87, align 8, !dbg !187, !tbaa !90
  %89 = icmp ne i32* %88, null, !dbg !189
  br i1 %89, label %90, label %125, !dbg !190

90:                                               ; preds = %86
  %91 = load i32, i32* %11, align 4, !dbg !191, !tbaa !115
  %92 = load i32, i32* %12, align 4, !dbg !192, !tbaa !115
  %93 = add nsw i32 %91, %92, !dbg !193
  %94 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv920, !dbg !194
  %95 = load i32, i32* %94, align 4, !dbg !194, !tbaa !115
  %96 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv920, !dbg !195
  %97 = load i32, i32* %96, align 4, !dbg !195, !tbaa !115
  %98 = add nsw i32 %95, %97, !dbg !196
  %99 = icmp sgt i32 %93, %98, !dbg !197
  br i1 %99, label %112, label %100, !dbg !198

100:                                              ; preds = %90
  %101 = load i32, i32* %11, align 4, !dbg !199, !tbaa !115
  %102 = load i32, i32* %12, align 4, !dbg !200, !tbaa !115
  %103 = add nsw i32 %101, %102, !dbg !201
  %104 = mul nsw i32 4, %103, !dbg !202
  %105 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv920, !dbg !203
  %106 = load i32, i32* %105, align 4, !dbg !203, !tbaa !115
  %107 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv920, !dbg !204
  %108 = load i32, i32* %107, align 4, !dbg !204, !tbaa !115
  %109 = add nsw i32 %106, %108, !dbg !205
  %110 = mul nsw i32 3, %109, !dbg !206
  %111 = icmp slt i32 %104, %110, !dbg !207
  br i1 %111, label %112, label %125, !dbg !208

112:                                              ; preds = %100, %90
  %indvars.iv921 = phi i64 [ %indvars.iv920, %100 ], [ %indvars.iv920, %90 ]
  %113 = getelementptr inbounds i32*, i32** %2, i64 %indvars.iv920, !dbg !209
  %114 = load i32*, i32** %113, align 8, !dbg !209, !tbaa !90
  %115 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv920, !dbg !211
  %116 = load i32, i32* %115, align 4, !dbg !211, !tbaa !115
  %117 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv920, !dbg !212
  %118 = load i32, i32* %117, align 4, !dbg !212, !tbaa !115
  %119 = add nsw i32 %116, %118, !dbg !213
  call void @free_ivector(i32* %114, i32 0, i32 %119), !dbg !214
  %120 = load i32, i32* %11, align 4, !dbg !215, !tbaa !115
  %121 = load i32, i32* %12, align 4, !dbg !216, !tbaa !115
  %122 = add nsw i32 %120, %121, !dbg !217
  %123 = call i32* @ivector(i32 0, i32 %122), !dbg !218
  %124 = getelementptr inbounds i32*, i32** %2, i64 %indvars.iv921, !dbg !219
  store i32* %123, i32** %124, align 8, !dbg !220, !tbaa !90
  br label %125, !dbg !221

125:                                              ; preds = %112, %100, %86
  %indvars.iv923 = phi i64 [ %indvars.iv921, %112 ], [ %indvars.iv920, %100 ], [ %indvars.iv920, %86 ]
  br label %126

126:                                              ; preds = %125, %80
  %indvars.iv922 = phi i64 [ %indvars.iv923, %125 ], [ %indvars.iv920, %80 ]
  %127 = load i32, i32* %11, align 4, !dbg !222, !tbaa !115
  %128 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv922, !dbg !223
  store i32 %127, i32* %128, align 4, !dbg !224, !tbaa !115
  %129 = load i32, i32* %12, align 4, !dbg !225, !tbaa !115
  %130 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv922, !dbg !226
  store i32 %129, i32* %130, align 4, !dbg !227, !tbaa !115
  call void @llvm.dbg.value(metadata i32 0, metadata !52, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i64 0, metadata !52, metadata !DIExpression()), !dbg !71
  %131 = load i32, i32* %11, align 4, !dbg !228, !tbaa !115
  %132 = sext i32 %131 to i64, !dbg !231
  %133 = icmp slt i64 0, %132, !dbg !231
  br i1 %133, label %.lr.ph14, label %144, !dbg !232

.lr.ph14:                                         ; preds = %126
  br label %134, !dbg !232

134:                                              ; preds = %.lr.ph14, %140
  %indvars.iv512 = phi i64 [ 0, %.lr.ph14 ], [ %indvars.iv.next6, %140 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv512, metadata !52, metadata !DIExpression()), !dbg !71
  %135 = getelementptr inbounds i32, i32* %64, i64 %indvars.iv512, !dbg !233
  %136 = load i32, i32* %135, align 4, !dbg !233, !tbaa !115
  %137 = getelementptr inbounds i32*, i32** %2, i64 %indvars.iv922, !dbg !235
  %138 = load i32*, i32** %137, align 8, !dbg !235, !tbaa !90
  %139 = getelementptr inbounds i32, i32* %138, i64 %indvars.iv512, !dbg !235
  store i32 %136, i32* %139, align 4, !dbg !236, !tbaa !115
  br label %140, !dbg !237

140:                                              ; preds = %134
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv512, 1, !dbg !238
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6, metadata !52, metadata !DIExpression()), !dbg !71
  %141 = load i32, i32* %11, align 4, !dbg !228, !tbaa !115
  %142 = sext i32 %141 to i64, !dbg !231
  %143 = icmp slt i64 %indvars.iv.next6, %142, !dbg !231
  br i1 %143, label %134, label %._crit_edge15, !dbg !232, !llvm.loop !239

._crit_edge15:                                    ; preds = %140
  br label %144, !dbg !232

144:                                              ; preds = %._crit_edge15, %126
  call void @llvm.dbg.value(metadata i32 0, metadata !52, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i64 0, metadata !52, metadata !DIExpression()), !dbg !71
  %145 = load i32, i32* %12, align 4, !dbg !241, !tbaa !115
  %146 = sext i32 %145 to i64, !dbg !244
  %147 = icmp slt i64 0, %146, !dbg !244
  br i1 %147, label %.lr.ph18, label %161, !dbg !245

.lr.ph18:                                         ; preds = %144
  br label %148, !dbg !245

148:                                              ; preds = %.lr.ph18, %157
  %indvars.iv716 = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next8, %157 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv716, metadata !52, metadata !DIExpression()), !dbg !71
  %149 = getelementptr inbounds i32, i32* %65, i64 %indvars.iv716, !dbg !246
  %150 = load i32, i32* %149, align 4, !dbg !246, !tbaa !115
  %151 = getelementptr inbounds i32*, i32** %2, i64 %indvars.iv922, !dbg !248
  %152 = load i32*, i32** %151, align 8, !dbg !248, !tbaa !90
  %153 = load i32, i32* %11, align 4, !dbg !249, !tbaa !115
  %154 = sext i32 %153 to i64, !dbg !250
  %155 = add nsw i64 %154, %indvars.iv716, !dbg !250
  %156 = getelementptr inbounds i32, i32* %152, i64 %155, !dbg !248
  store i32 %150, i32* %156, align 4, !dbg !251, !tbaa !115
  br label %157, !dbg !252

157:                                              ; preds = %148
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv716, 1, !dbg !253
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next8, metadata !52, metadata !DIExpression()), !dbg !71
  %158 = load i32, i32* %12, align 4, !dbg !241, !tbaa !115
  %159 = sext i32 %158 to i64, !dbg !244
  %160 = icmp slt i64 %indvars.iv.next8, %159, !dbg !244
  br i1 %160, label %148, label %._crit_edge19, !dbg !245, !llvm.loop !254

._crit_edge19:                                    ; preds = %157
  br label %161, !dbg !245

161:                                              ; preds = %._crit_edge19, %144
  %indvars.iv924 = phi i64 [ %indvars.iv922, %._crit_edge19 ], [ %indvars.iv922, %144 ]
  %162 = load i32, i32* %11, align 4, !dbg !256, !tbaa !115
  %163 = load i32, i32* %12, align 4, !dbg !257, !tbaa !115
  %164 = add nsw i32 %162, %163, !dbg !258
  %165 = add nsw i32 %.0125, %164, !dbg !259
  call void @llvm.dbg.value(metadata i32 %165, metadata !55, metadata !DIExpression()), !dbg !71
  br label %166, !dbg !260

166:                                              ; preds = %161
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv924, 1, !dbg !261
  call void @llvm.dbg.value(metadata i32 %165, metadata !55, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next10, metadata !51, metadata !DIExpression()), !dbg !71
  %167 = icmp slt i64 %indvars.iv.next10, %66, !dbg !159
  br i1 %167, label %68, label %._crit_edge28, !dbg !161, !llvm.loop !262

._crit_edge28:                                    ; preds = %166
  %split = phi i32 [ %165, %166 ]
  br label %168, !dbg !161

168:                                              ; preds = %._crit_edge28, %58
  %.01.lcssa = phi i32 [ %split, %._crit_edge28 ], [ 0, %58 ], !dbg !71
  call void @llvm.dbg.value(metadata i32 %.01.lcssa, metadata !55, metadata !DIExpression()), !dbg !71
  call void @free_ivector(i32* %64, i32 0, i32 %7), !dbg !264
  call void @free_ivector(i32* %65, i32 0, i32 %7), !dbg !265
  %169 = bitcast %struct.kdnode* %22 to i8*, !dbg !266
  call void @free(i8* %169) #6, !dbg !267
  call void @free_ivector(i32* %28, i32 0, i32 %7), !dbg !268
  call void @free_ivector(i32* %29, i32 0, i32 %7), !dbg !269
  call void @free_ivector(i32* %30, i32 0, i32 %7), !dbg !270
  call void @free_ivector(i32* %31, i32 0, i32 %7), !dbg !271
  %170 = icmp eq i32 %8, 4, !dbg !272
  br i1 %170, label %171, label %172, !dbg !274

171:                                              ; preds = %168
  call void @free_ivector(i32* %.0, i32 0, i32 %7), !dbg !275
  br label %172, !dbg !277

172:                                              ; preds = %171, %168
  call void @free_ivector(i32* %36, i32 0, i32 %7), !dbg !278
  %173 = bitcast %struct.kdnode** %13 to i8*, !dbg !279
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %173) #6, !dbg !279
  %174 = bitcast i32* %12 to i8*, !dbg !279
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %174) #6, !dbg !279
  %175 = bitcast i32* %11 to i8*, !dbg !279
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %175) #6, !dbg !279
  ret i32 %.01.lcssa, !dbg !280
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !4 dso_local i32 @get_blocksize() #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #4

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

declare !dbg !18 dso_local i32* @ivector(i32, i32) #3

; Function Attrs: nounwind uwtable
define internal void @heapsort_index(i32* %0, i32 %1, double* %2, i32 %3, i32 %4) #0 !dbg !281 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !285, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i32 %1, metadata !286, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata double* %2, metadata !287, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i32 %3, metadata !288, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i32 %4, metadata !289, metadata !DIExpression()), !dbg !292
  %6 = sdiv i32 %1, 2, !dbg !293
  call void @llvm.dbg.value(metadata i32 %6, metadata !290, metadata !DIExpression()), !dbg !292
  %7 = icmp sge i32 %6, 1, !dbg !295
  br i1 %7, label %.lr.ph, label %12, !dbg !297

.lr.ph:                                           ; preds = %5
  br label %8, !dbg !297

8:                                                ; preds = %.lr.ph, %9
  %.02 = phi i32 [ %6, %.lr.ph ], [ %10, %9 ]
  call void @llvm.dbg.value(metadata i32 %.02, metadata !290, metadata !DIExpression()), !dbg !292
  call void @downheap_index(i32* %0, i32 %1, i32 %.02, double* %2, i32 %3, i32 %4), !dbg !298
  br label %9, !dbg !298

9:                                                ; preds = %8
  %10 = add nsw i32 %.02, -1, !dbg !299
  call void @llvm.dbg.value(metadata i32 %10, metadata !290, metadata !DIExpression()), !dbg !292
  %11 = icmp sge i32 %10, 1, !dbg !295
  br i1 %11, label %8, label %._crit_edge, !dbg !297, !llvm.loop !300

._crit_edge:                                      ; preds = %9
  br label %12, !dbg !297

12:                                               ; preds = %._crit_edge, %5
  %13 = sext i32 %1 to i64, !dbg !302
  call void @llvm.dbg.value(metadata i64 %13, metadata !286, metadata !DIExpression()), !dbg !292
  %14 = icmp sgt i64 %13, 1, !dbg !303
  br i1 %14, label %.lr.ph5, label %24, !dbg !302

.lr.ph5:                                          ; preds = %12
  br label %15, !dbg !302

15:                                               ; preds = %.lr.ph5, %15
  %indvars.iv3 = phi i64 [ %13, %.lr.ph5 ], [ %indvars.iv.next, %15 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !286, metadata !DIExpression()), !dbg !292
  %16 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !304
  %17 = load i32, i32* %16, align 4, !dbg !304, !tbaa !115
  call void @llvm.dbg.value(metadata i32 %17, metadata !291, metadata !DIExpression()), !dbg !292
  %indvars.iv.next = add nsw i64 %indvars.iv3, -1, !dbg !306
  %18 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next, !dbg !307
  %19 = load i32, i32* %18, align 4, !dbg !307, !tbaa !115
  %20 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !308
  store i32 %19, i32* %20, align 4, !dbg !309, !tbaa !115
  %21 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next, !dbg !310
  store i32 %17, i32* %21, align 4, !dbg !311, !tbaa !115
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !286, metadata !DIExpression()), !dbg !292
  %22 = trunc i64 %indvars.iv.next to i32, !dbg !312
  call void @downheap_index(i32* %0, i32 %22, i32 1, double* %2, i32 %3, i32 %4), !dbg !312
  %23 = icmp sgt i64 %indvars.iv.next, 1, !dbg !303
  br i1 %23, label %15, label %._crit_edge6, !dbg !302, !llvm.loop !313

._crit_edge6:                                     ; preds = %15
  br label %24, !dbg !302

24:                                               ; preds = %._crit_edge6, %12
  ret void, !dbg !315
}

; Function Attrs: nounwind uwtable
define internal void @buildkdtree(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6, i32 %7, %struct.kdnode** %8, %struct.kdnode* %9, double* %10, i32 %11, i32 %12) #0 !dbg !316 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !321, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32* %1, metadata !322, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32* %2, metadata !323, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32* %3, metadata !324, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32* %4, metadata !325, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32* %5, metadata !326, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %6, metadata !327, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %7, metadata !328, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata %struct.kdnode** %8, metadata !329, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata %struct.kdnode* %9, metadata !330, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata double* %10, metadata !331, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %11, metadata !332, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %12, metadata !333, metadata !DIExpression()), !dbg !340
  %14 = add nsw i32 %12, 1, !dbg !341
  %15 = srem i32 %11, %14, !dbg !342
  call void @llvm.dbg.value(metadata i32 %15, metadata !332, metadata !DIExpression()), !dbg !340
  %16 = icmp eq i32 %7, %6, !dbg !343
  br i1 %16, label %17, label %22, !dbg !345

17:                                               ; preds = %13
  %18 = sext i32 %6 to i64, !dbg !346
  %19 = getelementptr inbounds i32, i32* %0, i64 %18, !dbg !346
  %20 = load i32, i32* %19, align 4, !dbg !346, !tbaa !115
  %21 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i32 0, i32 0, !dbg !348
  store i32 %20, i32* %21, align 8, !dbg !349, !tbaa !350
  br label %414, !dbg !351

22:                                               ; preds = %13
  %23 = add nsw i32 %6, 1, !dbg !352
  %24 = icmp eq i32 %7, %23, !dbg !354
  br i1 %24, label %25, label %142, !dbg !355

25:                                               ; preds = %22
  %26 = icmp eq i32 %15, 0, !dbg !356
  br i1 %26, label %27, label %35, !dbg !359

27:                                               ; preds = %25
  %28 = sext i32 %6 to i64, !dbg !360
  %29 = getelementptr inbounds i32, i32* %0, i64 %28, !dbg !360
  %30 = load i32, i32* %29, align 4, !dbg !360, !tbaa !115
  %31 = sext i32 %7 to i64, !dbg !361
  %32 = getelementptr inbounds i32, i32* %0, i64 %31, !dbg !361
  %33 = load i32, i32* %32, align 4, !dbg !361, !tbaa !115
  %34 = icmp slt i32 %30, %33, !dbg !362
  br i1 %34, label %57, label %35, !dbg !363

35:                                               ; preds = %27, %25
  %36 = icmp ne i32 %15, 0, !dbg !364
  br i1 %36, label %37, label %74, !dbg !365

37:                                               ; preds = %35
  %38 = sext i32 %6 to i64, !dbg !366
  %39 = getelementptr inbounds i32, i32* %0, i64 %38, !dbg !366
  %40 = load i32, i32* %39, align 4, !dbg !366, !tbaa !115
  %41 = mul nsw i32 %12, %40, !dbg !367
  %42 = add nsw i32 %41, %15, !dbg !368
  %43 = sub nsw i32 %42, 1, !dbg !369
  %44 = sext i32 %43 to i64, !dbg !370
  %45 = getelementptr inbounds double, double* %10, i64 %44, !dbg !370
  %46 = load double, double* %45, align 8, !dbg !370, !tbaa !371
  %47 = sext i32 %7 to i64, !dbg !373
  %48 = getelementptr inbounds i32, i32* %0, i64 %47, !dbg !373
  %49 = load i32, i32* %48, align 4, !dbg !373, !tbaa !115
  %50 = mul nsw i32 %12, %49, !dbg !374
  %51 = add nsw i32 %50, %15, !dbg !375
  %52 = sub nsw i32 %51, 1, !dbg !376
  %53 = sext i32 %52 to i64, !dbg !377
  %54 = getelementptr inbounds double, double* %10, i64 %53, !dbg !377
  %55 = load double, double* %54, align 8, !dbg !377, !tbaa !371
  %56 = fcmp olt double %46, %55, !dbg !378
  br i1 %56, label %57, label %74, !dbg !379

57:                                               ; preds = %37, %27
  %58 = sext i32 %7 to i64, !dbg !380
  %59 = getelementptr inbounds i32, i32* %0, i64 %58, !dbg !380
  %60 = load i32, i32* %59, align 4, !dbg !380, !tbaa !115
  %61 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i32 0, i32 0, !dbg !382
  store i32 %60, i32* %61, align 8, !dbg !383, !tbaa !350
  %62 = sext i32 %6 to i64, !dbg !384
  %63 = getelementptr inbounds i32, i32* %0, i64 %62, !dbg !384
  %64 = load i32, i32* %63, align 4, !dbg !384, !tbaa !115
  %65 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !385, !tbaa !90
  %66 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %65, i32 0, i32 0, !dbg !386
  store i32 %64, i32* %66, align 8, !dbg !387, !tbaa !350
  %67 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !388, !tbaa !90
  %68 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %67, i32 0, i32 1, !dbg !389
  store %struct.kdnode* null, %struct.kdnode** %68, align 8, !dbg !390, !tbaa !147
  %69 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !391, !tbaa !90
  %70 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %69, i32 0, i32 2, !dbg !392
  store %struct.kdnode* null, %struct.kdnode** %70, align 8, !dbg !393, !tbaa !151
  %71 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !394, !tbaa !90
  %72 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %71, i32 1, !dbg !394
  store %struct.kdnode* %72, %struct.kdnode** %8, align 8, !dbg !394, !tbaa !90
  %73 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i32 0, i32 1, !dbg !395
  store %struct.kdnode* %71, %struct.kdnode** %73, align 8, !dbg !396, !tbaa !147
  br label %141, !dbg !397

74:                                               ; preds = %37, %35
  %75 = icmp eq i32 %15, 0, !dbg !398
  br i1 %75, label %76, label %84, !dbg !400

76:                                               ; preds = %74
  %77 = sext i32 %6 to i64, !dbg !401
  %78 = getelementptr inbounds i32, i32* %0, i64 %77, !dbg !401
  %79 = load i32, i32* %78, align 4, !dbg !401, !tbaa !115
  %80 = sext i32 %7 to i64, !dbg !402
  %81 = getelementptr inbounds i32, i32* %0, i64 %80, !dbg !402
  %82 = load i32, i32* %81, align 4, !dbg !402, !tbaa !115
  %83 = icmp sgt i32 %79, %82, !dbg !403
  br i1 %83, label %106, label %84, !dbg !404

84:                                               ; preds = %76, %74
  %85 = icmp ne i32 %15, 0, !dbg !405
  br i1 %85, label %86, label %123, !dbg !406

86:                                               ; preds = %84
  %87 = sext i32 %6 to i64, !dbg !407
  %88 = getelementptr inbounds i32, i32* %0, i64 %87, !dbg !407
  %89 = load i32, i32* %88, align 4, !dbg !407, !tbaa !115
  %90 = mul nsw i32 %12, %89, !dbg !408
  %91 = add nsw i32 %90, %15, !dbg !409
  %92 = sub nsw i32 %91, 1, !dbg !410
  %93 = sext i32 %92 to i64, !dbg !411
  %94 = getelementptr inbounds double, double* %10, i64 %93, !dbg !411
  %95 = load double, double* %94, align 8, !dbg !411, !tbaa !371
  %96 = sext i32 %7 to i64, !dbg !412
  %97 = getelementptr inbounds i32, i32* %0, i64 %96, !dbg !412
  %98 = load i32, i32* %97, align 4, !dbg !412, !tbaa !115
  %99 = mul nsw i32 %12, %98, !dbg !413
  %100 = add nsw i32 %99, %15, !dbg !414
  %101 = sub nsw i32 %100, 1, !dbg !415
  %102 = sext i32 %101 to i64, !dbg !416
  %103 = getelementptr inbounds double, double* %10, i64 %102, !dbg !416
  %104 = load double, double* %103, align 8, !dbg !416, !tbaa !371
  %105 = fcmp ogt double %95, %104, !dbg !417
  br i1 %105, label %106, label %123, !dbg !418

106:                                              ; preds = %86, %76
  %107 = sext i32 %6 to i64, !dbg !419
  %108 = getelementptr inbounds i32, i32* %0, i64 %107, !dbg !419
  %109 = load i32, i32* %108, align 4, !dbg !419, !tbaa !115
  %110 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i32 0, i32 0, !dbg !421
  store i32 %109, i32* %110, align 8, !dbg !422, !tbaa !350
  %111 = sext i32 %7 to i64, !dbg !423
  %112 = getelementptr inbounds i32, i32* %0, i64 %111, !dbg !423
  %113 = load i32, i32* %112, align 4, !dbg !423, !tbaa !115
  %114 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !424, !tbaa !90
  %115 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %114, i32 0, i32 0, !dbg !425
  store i32 %113, i32* %115, align 8, !dbg !426, !tbaa !350
  %116 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !427, !tbaa !90
  %117 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %116, i32 0, i32 1, !dbg !428
  store %struct.kdnode* null, %struct.kdnode** %117, align 8, !dbg !429, !tbaa !147
  %118 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !430, !tbaa !90
  %119 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %118, i32 0, i32 2, !dbg !431
  store %struct.kdnode* null, %struct.kdnode** %119, align 8, !dbg !432, !tbaa !151
  %120 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !433, !tbaa !90
  %121 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %120, i32 1, !dbg !433
  store %struct.kdnode* %121, %struct.kdnode** %8, align 8, !dbg !433, !tbaa !90
  %122 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i32 0, i32 1, !dbg !434
  store %struct.kdnode* %120, %struct.kdnode** %122, align 8, !dbg !435, !tbaa !147
  br label %140, !dbg !436

123:                                              ; preds = %86, %84
  %124 = sext i32 %6 to i64, !dbg !437
  %125 = getelementptr inbounds i32, i32* %0, i64 %124, !dbg !437
  %126 = load i32, i32* %125, align 4, !dbg !437, !tbaa !115
  %127 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i32 0, i32 0, !dbg !439
  store i32 %126, i32* %127, align 8, !dbg !440, !tbaa !350
  %128 = sext i32 %7 to i64, !dbg !441
  %129 = getelementptr inbounds i32, i32* %0, i64 %128, !dbg !441
  %130 = load i32, i32* %129, align 4, !dbg !441, !tbaa !115
  %131 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !442, !tbaa !90
  %132 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %131, i32 0, i32 0, !dbg !443
  store i32 %130, i32* %132, align 8, !dbg !444, !tbaa !350
  %133 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !445, !tbaa !90
  %134 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %133, i32 0, i32 1, !dbg !446
  store %struct.kdnode* null, %struct.kdnode** %134, align 8, !dbg !447, !tbaa !147
  %135 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !448, !tbaa !90
  %136 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %135, i32 0, i32 2, !dbg !449
  store %struct.kdnode* null, %struct.kdnode** %136, align 8, !dbg !450, !tbaa !151
  %137 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !451, !tbaa !90
  %138 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %137, i32 1, !dbg !451
  store %struct.kdnode* %138, %struct.kdnode** %8, align 8, !dbg !451, !tbaa !90
  %139 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i32 0, i32 2, !dbg !452
  store %struct.kdnode* %137, %struct.kdnode** %139, align 8, !dbg !453, !tbaa !151
  br label %140

140:                                              ; preds = %123, %106
  br label %141

141:                                              ; preds = %140, %57
  br label %413, !dbg !454

142:                                              ; preds = %22
  %143 = add nsw i32 %6, %7, !dbg !455
  %144 = sdiv i32 %143, 2, !dbg !457
  call void @llvm.dbg.value(metadata i32 %144, metadata !335, metadata !DIExpression()), !dbg !340
  %145 = icmp eq i32 %15, 0, !dbg !458
  br i1 %145, label %146, label %150, !dbg !460

146:                                              ; preds = %142
  %147 = sext i32 %144 to i64, !dbg !461
  %148 = getelementptr inbounds i32, i32* %0, i64 %147, !dbg !461
  %149 = load i32, i32* %148, align 4, !dbg !461, !tbaa !115
  call void @llvm.dbg.value(metadata i32 %149, metadata !336, metadata !DIExpression()), !dbg !340
  br label %182, !dbg !463

150:                                              ; preds = %142
  %151 = sext i32 %144 to i64, !dbg !464
  %152 = getelementptr inbounds i32, i32* %0, i64 %151, !dbg !464
  %153 = load i32, i32* %152, align 4, !dbg !464, !tbaa !115
  %154 = mul nsw i32 %12, %153, !dbg !466
  %155 = add nsw i32 %154, %15, !dbg !467
  %156 = sub nsw i32 %155, 1, !dbg !468
  %157 = sext i32 %156 to i64, !dbg !469
  %158 = getelementptr inbounds double, double* %10, i64 %157, !dbg !469
  %159 = load double, double* %158, align 8, !dbg !469, !tbaa !371
  call void @llvm.dbg.value(metadata double %159, metadata !339, metadata !DIExpression()), !dbg !340
  %160 = sub nsw i32 %144, 1, !dbg !470
  call void @llvm.dbg.value(metadata i32 %160, metadata !334, metadata !DIExpression()), !dbg !340
  %161 = sext i32 %144 to i64, !dbg !472
  %162 = add nsw i64 %161, -1, !dbg !472
  %163 = sext i32 %6 to i64, !dbg !472
  call void @llvm.dbg.value(metadata i32 %144, metadata !335, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i64 %162, metadata !334, metadata !DIExpression()), !dbg !340
  %164 = icmp sge i64 %162, %163, !dbg !473
  br i1 %164, label %.lr.ph, label %.loopexit, !dbg !475

.lr.ph:                                           ; preds = %150
  br label %165, !dbg !475

165:                                              ; preds = %.lr.ph, %178
  %.01635 = phi i32 [ %144, %.lr.ph ], [ %.01834, %178 ]
  %.01834 = phi i32 [ %160, %.lr.ph ], [ %179, %178 ]
  %indvars.iv33 = phi i64 [ %162, %.lr.ph ], [ %indvars.iv.next, %178 ]
  call void @llvm.dbg.value(metadata i32 %.01635, metadata !335, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i64 %indvars.iv33, metadata !334, metadata !DIExpression()), !dbg !340
  %166 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv33, !dbg !476
  %167 = load i32, i32* %166, align 4, !dbg !476, !tbaa !115
  %168 = mul nsw i32 %12, %167, !dbg !479
  %169 = add nsw i32 %168, %15, !dbg !480
  %170 = sub nsw i32 %169, 1, !dbg !481
  %171 = sext i32 %170 to i64, !dbg !482
  %172 = getelementptr inbounds double, double* %10, i64 %171, !dbg !482
  %173 = load double, double* %172, align 8, !dbg !482, !tbaa !371
  %174 = fcmp olt double %173, %159, !dbg !483
  br i1 %174, label %175, label %176, !dbg !484

175:                                              ; preds = %165
  %.016.lcssa23 = phi i32 [ %.01635, %165 ], !dbg !485
  call void @llvm.dbg.value(metadata i32 %.016.lcssa23, metadata !335, metadata !DIExpression()), !dbg !340
  br label %181, !dbg !486

176:                                              ; preds = %165
  call void @llvm.dbg.value(metadata i64 %indvars.iv33, metadata !335, metadata !DIExpression()), !dbg !340
  br label %177

177:                                              ; preds = %176
  br label %178, !dbg !488

178:                                              ; preds = %177
  %indvars.iv.next = add i64 %indvars.iv33, -1, !dbg !489
  %179 = add nsw i32 %.01834, -1, !dbg !489
  call void @llvm.dbg.value(metadata i32 %.01834, metadata !335, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !334, metadata !DIExpression()), !dbg !340
  %180 = icmp sge i64 %indvars.iv.next, %163, !dbg !473
  br i1 %180, label %165, label %..loopexit_crit_edge, !dbg !475, !llvm.loop !490

..loopexit_crit_edge:                             ; preds = %178
  %split = phi i32 [ %.01834, %178 ]
  br label %.loopexit, !dbg !475

.loopexit:                                        ; preds = %..loopexit_crit_edge, %150
  %.016.lcssa = phi i32 [ %split, %..loopexit_crit_edge ], [ %144, %150 ], !dbg !485
  call void @llvm.dbg.value(metadata i32 %.016.lcssa, metadata !335, metadata !DIExpression()), !dbg !340
  br label %181

181:                                              ; preds = %.loopexit, %175
  %.01624 = phi i32 [ %.016.lcssa, %.loopexit ], [ %.016.lcssa23, %175 ]
  br label %182

182:                                              ; preds = %181, %146
  %.117 = phi i32 [ %144, %146 ], [ %.01624, %181 ], !dbg !492
  %.015 = phi i32 [ %149, %146 ], [ undef, %181 ]
  %.0 = phi double [ undef, %146 ], [ %159, %181 ]
  call void @llvm.dbg.value(metadata double %.0, metadata !339, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %.015, metadata !336, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %.117, metadata !335, metadata !DIExpression()), !dbg !340
  %183 = sext i32 %.117 to i64, !dbg !493
  %184 = getelementptr inbounds i32, i32* %0, i64 %183, !dbg !493
  %185 = load i32, i32* %184, align 4, !dbg !493, !tbaa !115
  %186 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i32 0, i32 0, !dbg !494
  store i32 %185, i32* %186, align 8, !dbg !495, !tbaa !350
  %187 = sub nsw i32 %6, 1, !dbg !496
  call void @llvm.dbg.value(metadata i32 %187, metadata !337, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %.117, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %6, metadata !334, metadata !DIExpression()), !dbg !340
  %188 = sext i32 %6 to i64, !dbg !497
  %189 = sext i32 %7 to i64, !dbg !497
  call void @llvm.dbg.value(metadata i32 %.117, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %187, metadata !337, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i64 %188, metadata !334, metadata !DIExpression()), !dbg !340
  %190 = icmp sle i64 %188, %189, !dbg !499
  br i1 %190, label %.lr.ph44, label %232, !dbg !501

.lr.ph44:                                         ; preds = %182
  br label %191, !dbg !501

191:                                              ; preds = %.lr.ph44, %230
  %.0142 = phi i32 [ %.117, %.lr.ph44 ], [ %.2, %230 ]
  %.0240 = phi i32 [ %187, %.lr.ph44 ], [ %.24, %230 ]
  %indvars.iv2536 = phi i64 [ %188, %.lr.ph44 ], [ %indvars.iv.next26, %230 ]
  call void @llvm.dbg.value(metadata i32 %.0142, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %.0240, metadata !337, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i64 %indvars.iv2536, metadata !334, metadata !DIExpression()), !dbg !340
  %192 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv2536, !dbg !502
  %193 = load i32, i32* %192, align 4, !dbg !502, !tbaa !115
  %194 = sext i32 %.117 to i64, !dbg !505
  %195 = getelementptr inbounds i32, i32* %0, i64 %194, !dbg !505
  %196 = load i32, i32* %195, align 4, !dbg !505, !tbaa !115
  %197 = icmp ne i32 %193, %196, !dbg !506
  br i1 %197, label %198, label %229, !dbg !507

198:                                              ; preds = %191
  %199 = icmp eq i32 %15, 0, !dbg !508
  br i1 %199, label %200, label %204, !dbg !511

200:                                              ; preds = %198
  %201 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv2536, !dbg !512
  %202 = load i32, i32* %201, align 4, !dbg !512, !tbaa !115
  %203 = icmp slt i32 %202, %.015, !dbg !513
  br i1 %203, label %216, label %204, !dbg !514

204:                                              ; preds = %200, %198
  %205 = icmp ne i32 %15, 0, !dbg !515
  br i1 %205, label %206, label %222, !dbg !516

206:                                              ; preds = %204
  %207 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv2536, !dbg !517
  %208 = load i32, i32* %207, align 4, !dbg !517, !tbaa !115
  %209 = mul nsw i32 %12, %208, !dbg !518
  %210 = add nsw i32 %209, %15, !dbg !519
  %211 = sub nsw i32 %210, 1, !dbg !520
  %212 = sext i32 %211 to i64, !dbg !521
  %213 = getelementptr inbounds double, double* %10, i64 %212, !dbg !521
  %214 = load double, double* %213, align 8, !dbg !521, !tbaa !371
  %215 = fcmp olt double %214, %.0, !dbg !522
  br i1 %215, label %216, label %222, !dbg !523

216:                                              ; preds = %206, %200
  %.0143 = phi i32 [ %.0142, %206 ], [ %.0142, %200 ]
  %.0241 = phi i32 [ %.0240, %206 ], [ %.0240, %200 ]
  %indvars.iv2537 = phi i64 [ %indvars.iv2536, %206 ], [ %indvars.iv2536, %200 ]
  %217 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv2537, !dbg !524
  %218 = load i32, i32* %217, align 4, !dbg !524, !tbaa !115
  %219 = add nsw i32 %.0241, 1, !dbg !526
  call void @llvm.dbg.value(metadata i32 %219, metadata !337, metadata !DIExpression()), !dbg !340
  %220 = sext i32 %219 to i64, !dbg !527
  %221 = getelementptr inbounds i32, i32* %5, i64 %220, !dbg !527
  store i32 %218, i32* %221, align 4, !dbg !528, !tbaa !115
  br label %228, !dbg !529

222:                                              ; preds = %206, %204
  %223 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv2536, !dbg !530
  %224 = load i32, i32* %223, align 4, !dbg !530, !tbaa !115
  %225 = add nsw i32 %.0142, 1, !dbg !532
  call void @llvm.dbg.value(metadata i32 %225, metadata !338, metadata !DIExpression()), !dbg !340
  %226 = sext i32 %225 to i64, !dbg !533
  %227 = getelementptr inbounds i32, i32* %5, i64 %226, !dbg !533
  store i32 %224, i32* %227, align 4, !dbg !534, !tbaa !115
  br label %228

228:                                              ; preds = %222, %216
  %indvars.iv2539 = phi i64 [ %indvars.iv2537, %216 ], [ %indvars.iv2536, %222 ]
  %.13 = phi i32 [ %219, %216 ], [ %.0240, %222 ], !dbg !485
  %.1 = phi i32 [ %.0143, %216 ], [ %225, %222 ], !dbg !485
  call void @llvm.dbg.value(metadata i32 %.1, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %.13, metadata !337, metadata !DIExpression()), !dbg !340
  br label %229, !dbg !535

229:                                              ; preds = %228, %191
  %indvars.iv2538 = phi i64 [ %indvars.iv2539, %228 ], [ %indvars.iv2536, %191 ]
  %.24 = phi i32 [ %.13, %228 ], [ %.0240, %191 ], !dbg !485
  %.2 = phi i32 [ %.1, %228 ], [ %.0142, %191 ], !dbg !536
  call void @llvm.dbg.value(metadata i32 %.2, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %.24, metadata !337, metadata !DIExpression()), !dbg !340
  br label %230, !dbg !537

230:                                              ; preds = %229
  %indvars.iv.next26 = add i64 %indvars.iv2538, 1, !dbg !538
  call void @llvm.dbg.value(metadata i32 %.2, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %.24, metadata !337, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next26, metadata !334, metadata !DIExpression()), !dbg !340
  %231 = icmp sle i64 %indvars.iv.next26, %189, !dbg !499
  br i1 %231, label %191, label %._crit_edge, !dbg !501, !llvm.loop !539

._crit_edge:                                      ; preds = %230
  br label %232, !dbg !501

232:                                              ; preds = %._crit_edge, %182
  %233 = sub nsw i32 %6, 1, !dbg !541
  call void @llvm.dbg.value(metadata i32 %233, metadata !337, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %.117, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %6, metadata !334, metadata !DIExpression()), !dbg !340
  %234 = sext i32 %7 to i64, !dbg !542
  call void @llvm.dbg.value(metadata i32 %.117, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %233, metadata !337, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i64 %188, metadata !334, metadata !DIExpression()), !dbg !340
  %235 = icmp sle i64 %188, %234, !dbg !544
  br i1 %235, label %.lr.ph54, label %277, !dbg !546

.lr.ph54:                                         ; preds = %232
  br label %236, !dbg !546

236:                                              ; preds = %.lr.ph54, %275
  %.351 = phi i32 [ %.117, %.lr.ph54 ], [ %.5, %275 ]
  %.3549 = phi i32 [ %233, %.lr.ph54 ], [ %.57, %275 ]
  %indvars.iv2745 = phi i64 [ %188, %.lr.ph54 ], [ %indvars.iv.next28, %275 ]
  call void @llvm.dbg.value(metadata i32 %.351, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %.3549, metadata !337, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i64 %indvars.iv2745, metadata !334, metadata !DIExpression()), !dbg !340
  %237 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv2745, !dbg !547
  %238 = load i32, i32* %237, align 4, !dbg !547, !tbaa !115
  %239 = sext i32 %.117 to i64, !dbg !550
  %240 = getelementptr inbounds i32, i32* %0, i64 %239, !dbg !550
  %241 = load i32, i32* %240, align 4, !dbg !550, !tbaa !115
  %242 = icmp ne i32 %238, %241, !dbg !551
  br i1 %242, label %243, label %274, !dbg !552

243:                                              ; preds = %236
  %244 = icmp eq i32 %15, 0, !dbg !553
  br i1 %244, label %245, label %249, !dbg !556

245:                                              ; preds = %243
  %246 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv2745, !dbg !557
  %247 = load i32, i32* %246, align 4, !dbg !557, !tbaa !115
  %248 = icmp slt i32 %247, %.015, !dbg !558
  br i1 %248, label %261, label %249, !dbg !559

249:                                              ; preds = %245, %243
  %250 = icmp ne i32 %15, 0, !dbg !560
  br i1 %250, label %251, label %267, !dbg !561

251:                                              ; preds = %249
  %252 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv2745, !dbg !562
  %253 = load i32, i32* %252, align 4, !dbg !562, !tbaa !115
  %254 = mul nsw i32 %12, %253, !dbg !563
  %255 = add nsw i32 %254, %15, !dbg !564
  %256 = sub nsw i32 %255, 1, !dbg !565
  %257 = sext i32 %256 to i64, !dbg !566
  %258 = getelementptr inbounds double, double* %10, i64 %257, !dbg !566
  %259 = load double, double* %258, align 8, !dbg !566, !tbaa !371
  %260 = fcmp olt double %259, %.0, !dbg !567
  br i1 %260, label %261, label %267, !dbg !568

261:                                              ; preds = %251, %245
  %.352 = phi i32 [ %.351, %251 ], [ %.351, %245 ]
  %.3550 = phi i32 [ %.3549, %251 ], [ %.3549, %245 ]
  %indvars.iv2746 = phi i64 [ %indvars.iv2745, %251 ], [ %indvars.iv2745, %245 ]
  %262 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv2746, !dbg !569
  %263 = load i32, i32* %262, align 4, !dbg !569, !tbaa !115
  %264 = add nsw i32 %.3550, 1, !dbg !571
  call void @llvm.dbg.value(metadata i32 %264, metadata !337, metadata !DIExpression()), !dbg !340
  %265 = sext i32 %264 to i64, !dbg !572
  %266 = getelementptr inbounds i32, i32* %1, i64 %265, !dbg !572
  store i32 %263, i32* %266, align 4, !dbg !573, !tbaa !115
  br label %273, !dbg !574

267:                                              ; preds = %251, %249
  %268 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv2745, !dbg !575
  %269 = load i32, i32* %268, align 4, !dbg !575, !tbaa !115
  %270 = add nsw i32 %.351, 1, !dbg !577
  call void @llvm.dbg.value(metadata i32 %270, metadata !338, metadata !DIExpression()), !dbg !340
  %271 = sext i32 %270 to i64, !dbg !578
  %272 = getelementptr inbounds i32, i32* %1, i64 %271, !dbg !578
  store i32 %269, i32* %272, align 4, !dbg !579, !tbaa !115
  br label %273

273:                                              ; preds = %267, %261
  %indvars.iv2748 = phi i64 [ %indvars.iv2746, %261 ], [ %indvars.iv2745, %267 ]
  %.46 = phi i32 [ %264, %261 ], [ %.3549, %267 ], !dbg !485
  %.4 = phi i32 [ %.352, %261 ], [ %270, %267 ], !dbg !485
  call void @llvm.dbg.value(metadata i32 %.4, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %.46, metadata !337, metadata !DIExpression()), !dbg !340
  br label %274, !dbg !580

274:                                              ; preds = %273, %236
  %indvars.iv2747 = phi i64 [ %indvars.iv2748, %273 ], [ %indvars.iv2745, %236 ]
  %.57 = phi i32 [ %.46, %273 ], [ %.3549, %236 ], !dbg !485
  %.5 = phi i32 [ %.4, %273 ], [ %.351, %236 ], !dbg !581
  call void @llvm.dbg.value(metadata i32 %.5, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %.57, metadata !337, metadata !DIExpression()), !dbg !340
  br label %275, !dbg !582

275:                                              ; preds = %274
  %indvars.iv.next28 = add i64 %indvars.iv2747, 1, !dbg !583
  call void @llvm.dbg.value(metadata i32 %.5, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %.57, metadata !337, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next28, metadata !334, metadata !DIExpression()), !dbg !340
  %276 = icmp sle i64 %indvars.iv.next28, %234, !dbg !544
  br i1 %276, label %236, label %._crit_edge55, !dbg !546, !llvm.loop !584

._crit_edge55:                                    ; preds = %275
  br label %277, !dbg !546

277:                                              ; preds = %._crit_edge55, %232
  %278 = sub nsw i32 %6, 1, !dbg !586
  call void @llvm.dbg.value(metadata i32 %278, metadata !337, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %.117, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %6, metadata !334, metadata !DIExpression()), !dbg !340
  %279 = sext i32 %7 to i64, !dbg !588
  call void @llvm.dbg.value(metadata i32 %.117, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %278, metadata !337, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i64 %188, metadata !334, metadata !DIExpression()), !dbg !340
  %280 = icmp sle i64 %188, %279, !dbg !590
  br i1 %280, label %.lr.ph65, label %322, !dbg !592

.lr.ph65:                                         ; preds = %277
  br label %281, !dbg !592

281:                                              ; preds = %.lr.ph65, %320
  %.662 = phi i32 [ %.117, %.lr.ph65 ], [ %.8, %320 ]
  %.6860 = phi i32 [ %278, %.lr.ph65 ], [ %.810, %320 ]
  %indvars.iv2956 = phi i64 [ %188, %.lr.ph65 ], [ %indvars.iv.next30, %320 ]
  call void @llvm.dbg.value(metadata i32 %.662, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %.6860, metadata !337, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i64 %indvars.iv2956, metadata !334, metadata !DIExpression()), !dbg !340
  %282 = getelementptr inbounds i32, i32* %3, i64 %indvars.iv2956, !dbg !593
  %283 = load i32, i32* %282, align 4, !dbg !593, !tbaa !115
  %284 = sext i32 %.117 to i64, !dbg !596
  %285 = getelementptr inbounds i32, i32* %0, i64 %284, !dbg !596
  %286 = load i32, i32* %285, align 4, !dbg !596, !tbaa !115
  %287 = icmp ne i32 %283, %286, !dbg !597
  br i1 %287, label %288, label %319, !dbg !598

288:                                              ; preds = %281
  %289 = icmp eq i32 %15, 0, !dbg !599
  br i1 %289, label %290, label %294, !dbg !602

290:                                              ; preds = %288
  %291 = getelementptr inbounds i32, i32* %3, i64 %indvars.iv2956, !dbg !603
  %292 = load i32, i32* %291, align 4, !dbg !603, !tbaa !115
  %293 = icmp slt i32 %292, %.015, !dbg !604
  br i1 %293, label %306, label %294, !dbg !605

294:                                              ; preds = %290, %288
  %295 = icmp ne i32 %15, 0, !dbg !606
  br i1 %295, label %296, label %312, !dbg !607

296:                                              ; preds = %294
  %297 = getelementptr inbounds i32, i32* %3, i64 %indvars.iv2956, !dbg !608
  %298 = load i32, i32* %297, align 4, !dbg !608, !tbaa !115
  %299 = mul nsw i32 %12, %298, !dbg !609
  %300 = add nsw i32 %299, %15, !dbg !610
  %301 = sub nsw i32 %300, 1, !dbg !611
  %302 = sext i32 %301 to i64, !dbg !612
  %303 = getelementptr inbounds double, double* %10, i64 %302, !dbg !612
  %304 = load double, double* %303, align 8, !dbg !612, !tbaa !371
  %305 = fcmp olt double %304, %.0, !dbg !613
  br i1 %305, label %306, label %312, !dbg !614

306:                                              ; preds = %296, %290
  %.663 = phi i32 [ %.662, %296 ], [ %.662, %290 ]
  %.6861 = phi i32 [ %.6860, %296 ], [ %.6860, %290 ]
  %indvars.iv2957 = phi i64 [ %indvars.iv2956, %296 ], [ %indvars.iv2956, %290 ]
  %307 = getelementptr inbounds i32, i32* %3, i64 %indvars.iv2957, !dbg !615
  %308 = load i32, i32* %307, align 4, !dbg !615, !tbaa !115
  %309 = add nsw i32 %.6861, 1, !dbg !617
  call void @llvm.dbg.value(metadata i32 %309, metadata !337, metadata !DIExpression()), !dbg !340
  %310 = sext i32 %309 to i64, !dbg !618
  %311 = getelementptr inbounds i32, i32* %2, i64 %310, !dbg !618
  store i32 %308, i32* %311, align 4, !dbg !619, !tbaa !115
  br label %318, !dbg !620

312:                                              ; preds = %296, %294
  %313 = getelementptr inbounds i32, i32* %3, i64 %indvars.iv2956, !dbg !621
  %314 = load i32, i32* %313, align 4, !dbg !621, !tbaa !115
  %315 = add nsw i32 %.662, 1, !dbg !623
  call void @llvm.dbg.value(metadata i32 %315, metadata !338, metadata !DIExpression()), !dbg !340
  %316 = sext i32 %315 to i64, !dbg !624
  %317 = getelementptr inbounds i32, i32* %2, i64 %316, !dbg !624
  store i32 %314, i32* %317, align 4, !dbg !625, !tbaa !115
  br label %318

318:                                              ; preds = %312, %306
  %indvars.iv2959 = phi i64 [ %indvars.iv2957, %306 ], [ %indvars.iv2956, %312 ]
  %.79 = phi i32 [ %309, %306 ], [ %.6860, %312 ], !dbg !626
  %.7 = phi i32 [ %.663, %306 ], [ %315, %312 ], !dbg !626
  call void @llvm.dbg.value(metadata i32 %.7, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %.79, metadata !337, metadata !DIExpression()), !dbg !340
  br label %319, !dbg !627

319:                                              ; preds = %318, %281
  %indvars.iv2958 = phi i64 [ %indvars.iv2959, %318 ], [ %indvars.iv2956, %281 ]
  %.810 = phi i32 [ %.79, %318 ], [ %.6860, %281 ], !dbg !626
  %.8 = phi i32 [ %.7, %318 ], [ %.662, %281 ], !dbg !628
  call void @llvm.dbg.value(metadata i32 %.8, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %.810, metadata !337, metadata !DIExpression()), !dbg !340
  br label %320, !dbg !629

320:                                              ; preds = %319
  %indvars.iv.next30 = add i64 %indvars.iv2958, 1, !dbg !630
  call void @llvm.dbg.value(metadata i32 %.8, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %.810, metadata !337, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next30, metadata !334, metadata !DIExpression()), !dbg !340
  %321 = icmp sle i64 %indvars.iv.next30, %279, !dbg !590
  br i1 %321, label %281, label %._crit_edge66, !dbg !592, !llvm.loop !631

._crit_edge66:                                    ; preds = %320
  %split67 = phi i32 [ %.810, %320 ]
  %split68 = phi i32 [ %.8, %320 ]
  br label %322, !dbg !592

322:                                              ; preds = %._crit_edge66, %277
  %.68.lcssa = phi i32 [ %split67, %._crit_edge66 ], [ %278, %277 ], !dbg !626
  %.6.lcssa = phi i32 [ %split68, %._crit_edge66 ], [ %.117, %277 ], !dbg !628
  call void @llvm.dbg.value(metadata i32 %.68.lcssa, metadata !337, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %.6.lcssa, metadata !338, metadata !DIExpression()), !dbg !340
  %323 = icmp eq i32 %12, 4, !dbg !633
  br i1 %323, label %324, label %370, !dbg !635

324:                                              ; preds = %322
  %325 = sub nsw i32 %6, 1, !dbg !636
  call void @llvm.dbg.value(metadata i32 %325, metadata !337, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %.117, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %6, metadata !334, metadata !DIExpression()), !dbg !340
  %326 = sext i32 %7 to i64, !dbg !638
  call void @llvm.dbg.value(metadata i32 %.117, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %325, metadata !337, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i64 %188, metadata !334, metadata !DIExpression()), !dbg !340
  %327 = icmp sle i64 %188, %326, !dbg !640
  br i1 %327, label %.lr.ph78, label %369, !dbg !642

.lr.ph78:                                         ; preds = %324
  br label %328, !dbg !642

328:                                              ; preds = %.lr.ph78, %367
  %.975 = phi i32 [ %.117, %.lr.ph78 ], [ %.11, %367 ]
  %.91173 = phi i32 [ %325, %.lr.ph78 ], [ %.1113, %367 ]
  %indvars.iv3169 = phi i64 [ %188, %.lr.ph78 ], [ %indvars.iv.next32, %367 ]
  call void @llvm.dbg.value(metadata i32 %.975, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %.91173, metadata !337, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i64 %indvars.iv3169, metadata !334, metadata !DIExpression()), !dbg !340
  %329 = getelementptr inbounds i32, i32* %4, i64 %indvars.iv3169, !dbg !643
  %330 = load i32, i32* %329, align 4, !dbg !643, !tbaa !115
  %331 = sext i32 %.117 to i64, !dbg !646
  %332 = getelementptr inbounds i32, i32* %0, i64 %331, !dbg !646
  %333 = load i32, i32* %332, align 4, !dbg !646, !tbaa !115
  %334 = icmp ne i32 %330, %333, !dbg !647
  br i1 %334, label %335, label %366, !dbg !648

335:                                              ; preds = %328
  %336 = icmp eq i32 %15, 0, !dbg !649
  br i1 %336, label %337, label %341, !dbg !652

337:                                              ; preds = %335
  %338 = getelementptr inbounds i32, i32* %4, i64 %indvars.iv3169, !dbg !653
  %339 = load i32, i32* %338, align 4, !dbg !653, !tbaa !115
  %340 = icmp slt i32 %339, %.015, !dbg !654
  br i1 %340, label %353, label %341, !dbg !655

341:                                              ; preds = %337, %335
  %342 = icmp ne i32 %15, 0, !dbg !656
  br i1 %342, label %343, label %359, !dbg !657

343:                                              ; preds = %341
  %344 = getelementptr inbounds i32, i32* %4, i64 %indvars.iv3169, !dbg !658
  %345 = load i32, i32* %344, align 4, !dbg !658, !tbaa !115
  %346 = mul nsw i32 %12, %345, !dbg !659
  %347 = add nsw i32 %346, %15, !dbg !660
  %348 = sub nsw i32 %347, 1, !dbg !661
  %349 = sext i32 %348 to i64, !dbg !662
  %350 = getelementptr inbounds double, double* %10, i64 %349, !dbg !662
  %351 = load double, double* %350, align 8, !dbg !662, !tbaa !371
  %352 = fcmp olt double %351, %.0, !dbg !663
  br i1 %352, label %353, label %359, !dbg !664

353:                                              ; preds = %343, %337
  %.976 = phi i32 [ %.975, %343 ], [ %.975, %337 ]
  %.91174 = phi i32 [ %.91173, %343 ], [ %.91173, %337 ]
  %indvars.iv3170 = phi i64 [ %indvars.iv3169, %343 ], [ %indvars.iv3169, %337 ]
  %354 = getelementptr inbounds i32, i32* %4, i64 %indvars.iv3170, !dbg !665
  %355 = load i32, i32* %354, align 4, !dbg !665, !tbaa !115
  %356 = add nsw i32 %.91174, 1, !dbg !667
  call void @llvm.dbg.value(metadata i32 %356, metadata !337, metadata !DIExpression()), !dbg !340
  %357 = sext i32 %356 to i64, !dbg !668
  %358 = getelementptr inbounds i32, i32* %3, i64 %357, !dbg !668
  store i32 %355, i32* %358, align 4, !dbg !669, !tbaa !115
  br label %365, !dbg !670

359:                                              ; preds = %343, %341
  %360 = getelementptr inbounds i32, i32* %4, i64 %indvars.iv3169, !dbg !671
  %361 = load i32, i32* %360, align 4, !dbg !671, !tbaa !115
  %362 = add nsw i32 %.975, 1, !dbg !673
  call void @llvm.dbg.value(metadata i32 %362, metadata !338, metadata !DIExpression()), !dbg !340
  %363 = sext i32 %362 to i64, !dbg !674
  %364 = getelementptr inbounds i32, i32* %3, i64 %363, !dbg !674
  store i32 %361, i32* %364, align 4, !dbg !675, !tbaa !115
  br label %365

365:                                              ; preds = %359, %353
  %indvars.iv3172 = phi i64 [ %indvars.iv3170, %353 ], [ %indvars.iv3169, %359 ]
  %.1012 = phi i32 [ %356, %353 ], [ %.91173, %359 ], !dbg !676
  %.10 = phi i32 [ %.976, %353 ], [ %362, %359 ], !dbg !676
  call void @llvm.dbg.value(metadata i32 %.10, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %.1012, metadata !337, metadata !DIExpression()), !dbg !340
  br label %366, !dbg !677

366:                                              ; preds = %365, %328
  %indvars.iv3171 = phi i64 [ %indvars.iv3172, %365 ], [ %indvars.iv3169, %328 ]
  %.1113 = phi i32 [ %.1012, %365 ], [ %.91173, %328 ], !dbg !676
  %.11 = phi i32 [ %.10, %365 ], [ %.975, %328 ], !dbg !678
  call void @llvm.dbg.value(metadata i32 %.11, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %.1113, metadata !337, metadata !DIExpression()), !dbg !340
  br label %367, !dbg !679

367:                                              ; preds = %366
  %indvars.iv.next32 = add i64 %indvars.iv3171, 1, !dbg !680
  call void @llvm.dbg.value(metadata i32 %.11, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %.1113, metadata !337, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next32, metadata !334, metadata !DIExpression()), !dbg !340
  %368 = icmp sle i64 %indvars.iv.next32, %326, !dbg !640
  br i1 %368, label %328, label %._crit_edge79, !dbg !642, !llvm.loop !681

._crit_edge79:                                    ; preds = %367
  %split80 = phi i32 [ %.1113, %367 ]
  %split81 = phi i32 [ %.11, %367 ]
  br label %369, !dbg !642

369:                                              ; preds = %._crit_edge79, %324
  %.911.lcssa = phi i32 [ %split80, %._crit_edge79 ], [ %325, %324 ], !dbg !676
  %.9.lcssa = phi i32 [ %split81, %._crit_edge79 ], [ %.117, %324 ], !dbg !678
  call void @llvm.dbg.value(metadata i32 %.911.lcssa, metadata !337, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %.9.lcssa, metadata !338, metadata !DIExpression()), !dbg !340
  br label %370, !dbg !683

370:                                              ; preds = %369, %322
  %.1214 = phi i32 [ %.911.lcssa, %369 ], [ %.68.lcssa, %322 ], !dbg !485
  %.12 = phi i32 [ %.9.lcssa, %369 ], [ %.6.lcssa, %322 ], !dbg !485
  call void @llvm.dbg.value(metadata i32 %.12, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %.1214, metadata !337, metadata !DIExpression()), !dbg !340
  %371 = icmp sge i32 %.1214, %6, !dbg !684
  br i1 %371, label %372, label %390, !dbg !686

372:                                              ; preds = %370
  %373 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !687, !tbaa !90
  %374 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %373, i32 0, i32 1, !dbg !689
  store %struct.kdnode* null, %struct.kdnode** %374, align 8, !dbg !690, !tbaa !147
  %375 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !691, !tbaa !90
  %376 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %375, i32 0, i32 2, !dbg !692
  store %struct.kdnode* null, %struct.kdnode** %376, align 8, !dbg !693, !tbaa !151
  %377 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !694, !tbaa !90
  %378 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %377, i32 1, !dbg !694
  store %struct.kdnode* %378, %struct.kdnode** %8, align 8, !dbg !694, !tbaa !90
  %379 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i32 0, i32 1, !dbg !695
  store %struct.kdnode* %377, %struct.kdnode** %379, align 8, !dbg !696, !tbaa !147
  %380 = icmp eq i32 %12, 4, !dbg !697
  br i1 %380, label %381, label %385, !dbg !699

381:                                              ; preds = %372
  %382 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i32 0, i32 1, !dbg !700
  %383 = load %struct.kdnode*, %struct.kdnode** %382, align 8, !dbg !700, !tbaa !147
  %384 = add nsw i32 %15, 1, !dbg !702
  call void @buildkdtree(i32* %5, i32* %1, i32* %2, i32* %3, i32* %0, i32* %4, i32 %6, i32 %.1214, %struct.kdnode** %8, %struct.kdnode* %383, double* %10, i32 %384, i32 %12), !dbg !703
  br label %389, !dbg !704

385:                                              ; preds = %372
  %386 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i32 0, i32 1, !dbg !705
  %387 = load %struct.kdnode*, %struct.kdnode** %386, align 8, !dbg !705, !tbaa !147
  %388 = add nsw i32 %15, 1, !dbg !707
  call void @buildkdtree(i32* %5, i32* %1, i32* %2, i32* %0, i32* %4, i32* %3, i32 %6, i32 %.1214, %struct.kdnode** %8, %struct.kdnode* %387, double* %10, i32 %388, i32 %12), !dbg !708
  br label %389

389:                                              ; preds = %385, %381
  br label %390, !dbg !709

390:                                              ; preds = %389, %370
  %391 = icmp sgt i32 %.12, %.117, !dbg !710
  br i1 %391, label %392, label %412, !dbg !712

392:                                              ; preds = %390
  %393 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !713, !tbaa !90
  %394 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %393, i32 0, i32 1, !dbg !715
  store %struct.kdnode* null, %struct.kdnode** %394, align 8, !dbg !716, !tbaa !147
  %395 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !717, !tbaa !90
  %396 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %395, i32 0, i32 2, !dbg !718
  store %struct.kdnode* null, %struct.kdnode** %396, align 8, !dbg !719, !tbaa !151
  %397 = load %struct.kdnode*, %struct.kdnode** %8, align 8, !dbg !720, !tbaa !90
  %398 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %397, i32 1, !dbg !720
  store %struct.kdnode* %398, %struct.kdnode** %8, align 8, !dbg !720, !tbaa !90
  %399 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i32 0, i32 2, !dbg !721
  store %struct.kdnode* %397, %struct.kdnode** %399, align 8, !dbg !722, !tbaa !151
  %400 = icmp eq i32 %12, 4, !dbg !723
  br i1 %400, label %401, label %406, !dbg !725

401:                                              ; preds = %392
  %402 = add nsw i32 %.117, 1, !dbg !726
  %403 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i32 0, i32 2, !dbg !728
  %404 = load %struct.kdnode*, %struct.kdnode** %403, align 8, !dbg !728, !tbaa !151
  %405 = add nsw i32 %15, 1, !dbg !729
  call void @buildkdtree(i32* %5, i32* %1, i32* %2, i32* %3, i32* %0, i32* %4, i32 %402, i32 %7, %struct.kdnode** %8, %struct.kdnode* %404, double* %10, i32 %405, i32 %12), !dbg !730
  br label %411, !dbg !731

406:                                              ; preds = %392
  %407 = add nsw i32 %.117, 1, !dbg !732
  %408 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i32 0, i32 2, !dbg !734
  %409 = load %struct.kdnode*, %struct.kdnode** %408, align 8, !dbg !734, !tbaa !151
  %410 = add nsw i32 %15, 1, !dbg !735
  call void @buildkdtree(i32* %5, i32* %1, i32* %2, i32* %0, i32* %4, i32* %3, i32 %407, i32 %7, %struct.kdnode** %8, %struct.kdnode* %409, double* %10, i32 %410, i32 %12), !dbg !736
  br label %411

411:                                              ; preds = %406, %401
  br label %412, !dbg !737

412:                                              ; preds = %411, %390
  br label %413

413:                                              ; preds = %412, %141
  br label %414

414:                                              ; preds = %413, %17
  ret void, !dbg !738
}

; Function Attrs: nounwind uwtable
define internal void @searchkdtree(%struct.kdnode* %0, double* %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7, double %8, double %9, i32 %10, i32* %11) #0 !dbg !739 {
  call void @llvm.dbg.value(metadata %struct.kdnode* %0, metadata !743, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata double* %1, metadata !744, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata i32 %2, metadata !745, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata i32 %3, metadata !746, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata i32* %4, metadata !747, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata i32* %5, metadata !748, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata i32* %6, metadata !749, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata i32* %7, metadata !750, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata double %8, metadata !751, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata double %9, metadata !752, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata i32 %10, metadata !753, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata i32* %11, metadata !754, metadata !DIExpression()), !dbg !760
  %13 = add nsw i32 %10, 1, !dbg !761
  %14 = srem i32 %2, %13, !dbg !762
  call void @llvm.dbg.value(metadata i32 %14, metadata !745, metadata !DIExpression()), !dbg !760
  %15 = icmp eq i32 %14, 0, !dbg !763
  br i1 %15, label %16, label %20, !dbg !765

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 2, !dbg !766
  %18 = load %struct.kdnode*, %struct.kdnode** %17, align 8, !dbg !766, !tbaa !151
  %19 = icmp ne %struct.kdnode* %18, null, !dbg !767
  br i1 %19, label %43, label %20, !dbg !768

20:                                               ; preds = %16, %12
  %21 = icmp ne i32 %14, 0, !dbg !769
  br i1 %21, label %22, label %47, !dbg !770

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 2, !dbg !771
  %24 = load %struct.kdnode*, %struct.kdnode** %23, align 8, !dbg !771, !tbaa !151
  %25 = icmp ne %struct.kdnode* %24, null, !dbg !772
  br i1 %25, label %26, label %47, !dbg !773

26:                                               ; preds = %22
  %27 = mul nsw i32 %10, %3, !dbg !774
  %28 = add nsw i32 %27, %14, !dbg !775
  %29 = sub nsw i32 %28, 1, !dbg !776
  %30 = sext i32 %29 to i64, !dbg !777
  %31 = getelementptr inbounds double, double* %1, i64 %30, !dbg !777
  %32 = load double, double* %31, align 8, !dbg !777, !tbaa !371
  %33 = fadd double %32, %8, !dbg !778
  %34 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 0, !dbg !779
  %35 = load i32, i32* %34, align 8, !dbg !779, !tbaa !350
  %36 = mul nsw i32 %10, %35, !dbg !780
  %37 = add nsw i32 %36, %14, !dbg !781
  %38 = sub nsw i32 %37, 1, !dbg !782
  %39 = sext i32 %38 to i64, !dbg !783
  %40 = getelementptr inbounds double, double* %1, i64 %39, !dbg !783
  %41 = load double, double* %40, align 8, !dbg !783, !tbaa !371
  %42 = fcmp oge double %33, %41, !dbg !784
  br i1 %42, label %43, label %47, !dbg !785

43:                                               ; preds = %26, %16
  %44 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 2, !dbg !786
  %45 = load %struct.kdnode*, %struct.kdnode** %44, align 8, !dbg !786, !tbaa !151
  %46 = add nsw i32 %14, 1, !dbg !788
  call void @searchkdtree(%struct.kdnode* %45, double* %1, i32 %46, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7, double %8, double %9, i32 %10, i32* %11), !dbg !789
  br label %47, !dbg !790

47:                                               ; preds = %43, %26, %22, %20
  %48 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 0, !dbg !791
  %49 = load i32, i32* %48, align 8, !dbg !791, !tbaa !350
  %50 = icmp ne i32 %3, %49, !dbg !793
  br i1 %50, label %51, label %149, !dbg !794

51:                                               ; preds = %47
  %52 = sext i32 %3 to i64, !dbg !795
  %53 = getelementptr inbounds i32, i32* %11, i64 %52, !dbg !795
  %54 = load i32, i32* %53, align 4, !dbg !795, !tbaa !115
  %55 = icmp ne i32 %54, 0, !dbg !795
  br i1 %55, label %56, label %63, !dbg !796

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 0, !dbg !797
  %58 = load i32, i32* %57, align 8, !dbg !797, !tbaa !350
  %59 = sext i32 %58 to i64, !dbg !798
  %60 = getelementptr inbounds i32, i32* %11, i64 %59, !dbg !798
  %61 = load i32, i32* %60, align 4, !dbg !798, !tbaa !115
  %62 = icmp ne i32 %61, 0, !dbg !798
  br i1 %62, label %149, label %63, !dbg !799

63:                                               ; preds = %56, %51
  %64 = mul nsw i32 %10, %3, !dbg !800
  %65 = add nsw i32 %64, 0, !dbg !802
  %66 = sext i32 %65 to i64, !dbg !803
  %67 = getelementptr inbounds double, double* %1, i64 %66, !dbg !803
  %68 = load double, double* %67, align 8, !dbg !803, !tbaa !371
  %69 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 0, !dbg !804
  %70 = load i32, i32* %69, align 8, !dbg !804, !tbaa !350
  %71 = mul nsw i32 %10, %70, !dbg !805
  %72 = add nsw i32 %71, 0, !dbg !806
  %73 = sext i32 %72 to i64, !dbg !807
  %74 = getelementptr inbounds double, double* %1, i64 %73, !dbg !807
  %75 = load double, double* %74, align 8, !dbg !807, !tbaa !371
  %76 = fsub double %68, %75, !dbg !808
  call void @llvm.dbg.value(metadata double %76, metadata !755, metadata !DIExpression()), !dbg !760
  %77 = mul nsw i32 %10, %3, !dbg !809
  %78 = add nsw i32 %77, 1, !dbg !810
  %79 = sext i32 %78 to i64, !dbg !811
  %80 = getelementptr inbounds double, double* %1, i64 %79, !dbg !811
  %81 = load double, double* %80, align 8, !dbg !811, !tbaa !371
  %82 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 0, !dbg !812
  %83 = load i32, i32* %82, align 8, !dbg !812, !tbaa !350
  %84 = mul nsw i32 %10, %83, !dbg !813
  %85 = add nsw i32 %84, 1, !dbg !814
  %86 = sext i32 %85 to i64, !dbg !815
  %87 = getelementptr inbounds double, double* %1, i64 %86, !dbg !815
  %88 = load double, double* %87, align 8, !dbg !815, !tbaa !371
  %89 = fsub double %81, %88, !dbg !816
  call void @llvm.dbg.value(metadata double %89, metadata !756, metadata !DIExpression()), !dbg !760
  %90 = mul nsw i32 %10, %3, !dbg !817
  %91 = add nsw i32 %90, 2, !dbg !818
  %92 = sext i32 %91 to i64, !dbg !819
  %93 = getelementptr inbounds double, double* %1, i64 %92, !dbg !819
  %94 = load double, double* %93, align 8, !dbg !819, !tbaa !371
  %95 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 0, !dbg !820
  %96 = load i32, i32* %95, align 8, !dbg !820, !tbaa !350
  %97 = mul nsw i32 %10, %96, !dbg !821
  %98 = add nsw i32 %97, 2, !dbg !822
  %99 = sext i32 %98 to i64, !dbg !823
  %100 = getelementptr inbounds double, double* %1, i64 %99, !dbg !823
  %101 = load double, double* %100, align 8, !dbg !823, !tbaa !371
  %102 = fsub double %94, %101, !dbg !824
  call void @llvm.dbg.value(metadata double %102, metadata !757, metadata !DIExpression()), !dbg !760
  %103 = fmul double %76, %76, !dbg !825
  %104 = fmul double %89, %89, !dbg !826
  %105 = fadd double %103, %104, !dbg !827
  %106 = fmul double %102, %102, !dbg !828
  %107 = fadd double %105, %106, !dbg !829
  call void @llvm.dbg.value(metadata double %107, metadata !759, metadata !DIExpression()), !dbg !760
  %108 = icmp eq i32 %10, 4, !dbg !830
  br i1 %108, label %109, label %125, !dbg !832

109:                                              ; preds = %63
  %110 = mul nsw i32 %10, %3, !dbg !833
  %111 = add nsw i32 %110, 3, !dbg !835
  %112 = sext i32 %111 to i64, !dbg !836
  %113 = getelementptr inbounds double, double* %1, i64 %112, !dbg !836
  %114 = load double, double* %113, align 8, !dbg !836, !tbaa !371
  %115 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 0, !dbg !837
  %116 = load i32, i32* %115, align 8, !dbg !837, !tbaa !350
  %117 = mul nsw i32 %10, %116, !dbg !838
  %118 = add nsw i32 %117, 3, !dbg !839
  %119 = sext i32 %118 to i64, !dbg !840
  %120 = getelementptr inbounds double, double* %1, i64 %119, !dbg !840
  %121 = load double, double* %120, align 8, !dbg !840, !tbaa !371
  %122 = fsub double %114, %121, !dbg !841
  call void @llvm.dbg.value(metadata double %122, metadata !758, metadata !DIExpression()), !dbg !760
  %123 = fmul double %122, %122, !dbg !842
  %124 = fadd double %107, %123, !dbg !843
  call void @llvm.dbg.value(metadata double %124, metadata !759, metadata !DIExpression()), !dbg !760
  br label %125, !dbg !844

125:                                              ; preds = %109, %63
  %.0 = phi double [ %124, %109 ], [ %107, %63 ], !dbg !845
  call void @llvm.dbg.value(metadata double %.0, metadata !759, metadata !DIExpression()), !dbg !760
  %126 = fcmp olt double %.0, %9, !dbg !846
  br i1 %126, label %127, label %148, !dbg !848

127:                                              ; preds = %125
  %128 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 0, !dbg !849
  %129 = load i32, i32* %128, align 8, !dbg !849, !tbaa !350
  %130 = icmp slt i32 %129, %3, !dbg !852
  br i1 %130, label %131, label %139, !dbg !853

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 0, !dbg !854
  %133 = load i32, i32* %132, align 8, !dbg !854, !tbaa !350
  %134 = load i32, i32* %4, align 4, !dbg !856, !tbaa !115
  %135 = sext i32 %134 to i64, !dbg !857
  %136 = getelementptr inbounds i32, i32* %6, i64 %135, !dbg !857
  store i32 %133, i32* %136, align 4, !dbg !858, !tbaa !115
  %137 = load i32, i32* %4, align 4, !dbg !859, !tbaa !115
  %138 = add nsw i32 %137, 1, !dbg !859
  store i32 %138, i32* %4, align 4, !dbg !859, !tbaa !115
  br label %147, !dbg !860

139:                                              ; preds = %127
  %140 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 0, !dbg !861
  %141 = load i32, i32* %140, align 8, !dbg !861, !tbaa !350
  %142 = load i32, i32* %5, align 4, !dbg !863, !tbaa !115
  %143 = sext i32 %142 to i64, !dbg !864
  %144 = getelementptr inbounds i32, i32* %7, i64 %143, !dbg !864
  store i32 %141, i32* %144, align 4, !dbg !865, !tbaa !115
  %145 = load i32, i32* %5, align 4, !dbg !866, !tbaa !115
  %146 = add nsw i32 %145, 1, !dbg !866
  store i32 %146, i32* %5, align 4, !dbg !866, !tbaa !115
  br label %147

147:                                              ; preds = %139, %131
  br label %148, !dbg !867

148:                                              ; preds = %147, %125
  br label %149, !dbg !868

149:                                              ; preds = %148, %56, %47
  %150 = icmp eq i32 %14, 0, !dbg !869
  br i1 %150, label %151, label %155, !dbg !871

151:                                              ; preds = %149
  %152 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 1, !dbg !872
  %153 = load %struct.kdnode*, %struct.kdnode** %152, align 8, !dbg !872, !tbaa !147
  %154 = icmp ne %struct.kdnode* %153, null, !dbg !873
  br i1 %154, label %178, label %155, !dbg !874

155:                                              ; preds = %151, %149
  %156 = icmp ne i32 %14, 0, !dbg !875
  br i1 %156, label %157, label %182, !dbg !876

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 1, !dbg !877
  %159 = load %struct.kdnode*, %struct.kdnode** %158, align 8, !dbg !877, !tbaa !147
  %160 = icmp ne %struct.kdnode* %159, null, !dbg !878
  br i1 %160, label %161, label %182, !dbg !879

161:                                              ; preds = %157
  %162 = mul nsw i32 %10, %3, !dbg !880
  %163 = add nsw i32 %162, %14, !dbg !881
  %164 = sub nsw i32 %163, 1, !dbg !882
  %165 = sext i32 %164 to i64, !dbg !883
  %166 = getelementptr inbounds double, double* %1, i64 %165, !dbg !883
  %167 = load double, double* %166, align 8, !dbg !883, !tbaa !371
  %168 = fsub double %167, %8, !dbg !884
  %169 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 0, !dbg !885
  %170 = load i32, i32* %169, align 8, !dbg !885, !tbaa !350
  %171 = mul nsw i32 %10, %170, !dbg !886
  %172 = add nsw i32 %171, %14, !dbg !887
  %173 = sub nsw i32 %172, 1, !dbg !888
  %174 = sext i32 %173 to i64, !dbg !889
  %175 = getelementptr inbounds double, double* %1, i64 %174, !dbg !889
  %176 = load double, double* %175, align 8, !dbg !889, !tbaa !371
  %177 = fcmp olt double %168, %176, !dbg !890
  br i1 %177, label %178, label %182, !dbg !891

178:                                              ; preds = %161, %151
  %179 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 1, !dbg !892
  %180 = load %struct.kdnode*, %struct.kdnode** %179, align 8, !dbg !892, !tbaa !147
  %181 = add nsw i32 %14, 1, !dbg !894
  call void @searchkdtree(%struct.kdnode* %180, double* %1, i32 %181, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7, double %8, double %9, i32 %10, i32* %11), !dbg !895
  br label %182, !dbg !896

182:                                              ; preds = %178, %161, %157, %155
  ret void, !dbg !897
}

; Function Attrs: nounwind uwtable
define internal void @heapsort_pairs(i32* %0, i32 %1) #0 !dbg !898 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !902, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i32 %1, metadata !903, metadata !DIExpression()), !dbg !906
  %3 = sdiv i32 %1, 2, !dbg !907
  call void @llvm.dbg.value(metadata i32 %3, metadata !904, metadata !DIExpression()), !dbg !906
  %4 = icmp sge i32 %3, 1, !dbg !909
  br i1 %4, label %.lr.ph, label %9, !dbg !911

.lr.ph:                                           ; preds = %2
  br label %5, !dbg !911

5:                                                ; preds = %.lr.ph, %6
  %.02 = phi i32 [ %3, %.lr.ph ], [ %7, %6 ]
  call void @llvm.dbg.value(metadata i32 %.02, metadata !904, metadata !DIExpression()), !dbg !906
  call void @downheap_pairs(i32* %0, i32 %1, i32 %.02), !dbg !912
  br label %6, !dbg !912

6:                                                ; preds = %5
  %7 = add nsw i32 %.02, -1, !dbg !913
  call void @llvm.dbg.value(metadata i32 %7, metadata !904, metadata !DIExpression()), !dbg !906
  %8 = icmp sge i32 %7, 1, !dbg !909
  br i1 %8, label %5, label %._crit_edge, !dbg !911, !llvm.loop !914

._crit_edge:                                      ; preds = %6
  br label %9, !dbg !911

9:                                                ; preds = %._crit_edge, %2
  %10 = sext i32 %1 to i64, !dbg !916
  call void @llvm.dbg.value(metadata i64 %10, metadata !903, metadata !DIExpression()), !dbg !906
  %11 = icmp sgt i64 %10, 1, !dbg !917
  br i1 %11, label %.lr.ph5, label %21, !dbg !916

.lr.ph5:                                          ; preds = %9
  br label %12, !dbg !916

12:                                               ; preds = %.lr.ph5, %12
  %indvars.iv3 = phi i64 [ %10, %.lr.ph5 ], [ %indvars.iv.next, %12 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !903, metadata !DIExpression()), !dbg !906
  %13 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !918
  %14 = load i32, i32* %13, align 4, !dbg !918, !tbaa !115
  call void @llvm.dbg.value(metadata i32 %14, metadata !905, metadata !DIExpression()), !dbg !906
  %indvars.iv.next = add nsw i64 %indvars.iv3, -1, !dbg !920
  %15 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next, !dbg !921
  %16 = load i32, i32* %15, align 4, !dbg !921, !tbaa !115
  %17 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !922
  store i32 %16, i32* %17, align 4, !dbg !923, !tbaa !115
  %18 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next, !dbg !924
  store i32 %14, i32* %18, align 4, !dbg !925, !tbaa !115
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !903, metadata !DIExpression()), !dbg !906
  %19 = trunc i64 %indvars.iv.next to i32, !dbg !926
  call void @downheap_pairs(i32* %0, i32 %19, i32 1), !dbg !926
  %20 = icmp sgt i64 %indvars.iv.next, 1, !dbg !917
  br i1 %20, label %12, label %._crit_edge6, !dbg !916, !llvm.loop !927

._crit_edge6:                                     ; preds = %12
  br label %21, !dbg !916

21:                                               ; preds = %._crit_edge6, %9
  ret void, !dbg !929
}

declare !dbg !22 dso_local void @free_ivector(i32*, i32, i32) #3

; Function Attrs: nounwind
declare !dbg !25 dso_local void @free(i8*) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal void @downheap_index(i32* %0, i32 %1, i32 %2, double* %3, i32 %4, i32 %5) #0 !dbg !930 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !934, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata i32 %1, metadata !935, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata i32 %2, metadata !936, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata double* %3, metadata !937, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata i32 %4, metadata !938, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata i32 %5, metadata !939, metadata !DIExpression()), !dbg !942
  %7 = sub nsw i32 %2, 1, !dbg !943
  %8 = sext i32 %7 to i64, !dbg !944
  %9 = getelementptr inbounds i32, i32* %0, i64 %8, !dbg !944
  %10 = load i32, i32* %9, align 4, !dbg !944, !tbaa !115
  call void @llvm.dbg.value(metadata i32 %10, metadata !941, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata i32 %2, metadata !936, metadata !DIExpression()), !dbg !942
  %11 = sdiv i32 %1, 2, !dbg !945
  %12 = icmp sle i32 %2, %11, !dbg !946
  br i1 %12, label %.lr.ph, label %.loopexit, !dbg !947

.lr.ph:                                           ; preds = %6
  br label %13, !dbg !947

13:                                               ; preds = %.lr.ph, %54
  %.014 = phi i32 [ %2, %.lr.ph ], [ %.0, %54 ]
  call void @llvm.dbg.value(metadata i32 %.014, metadata !936, metadata !DIExpression()), !dbg !942
  %14 = add nsw i32 %.014, %.014, !dbg !948
  call void @llvm.dbg.value(metadata i32 %14, metadata !940, metadata !DIExpression()), !dbg !942
  %15 = icmp slt i32 %14, %1, !dbg !950
  br i1 %15, label %16, label %37, !dbg !952

16:                                               ; preds = %13
  %17 = sub nsw i32 %14, 1, !dbg !953
  %18 = sext i32 %17 to i64, !dbg !954
  %19 = getelementptr inbounds i32, i32* %0, i64 %18, !dbg !954
  %20 = load i32, i32* %19, align 4, !dbg !954, !tbaa !115
  %21 = mul nsw i32 %5, %20, !dbg !955
  %22 = add nsw i32 %21, %4, !dbg !956
  %23 = sext i32 %22 to i64, !dbg !957
  %24 = getelementptr inbounds double, double* %3, i64 %23, !dbg !957
  %25 = load double, double* %24, align 8, !dbg !957, !tbaa !371
  %26 = sext i32 %14 to i64, !dbg !958
  %27 = getelementptr inbounds i32, i32* %0, i64 %26, !dbg !958
  %28 = load i32, i32* %27, align 4, !dbg !958, !tbaa !115
  %29 = mul nsw i32 %5, %28, !dbg !959
  %30 = add nsw i32 %29, %4, !dbg !960
  %31 = sext i32 %30 to i64, !dbg !961
  %32 = getelementptr inbounds double, double* %3, i64 %31, !dbg !961
  %33 = load double, double* %32, align 8, !dbg !961, !tbaa !371
  %34 = fcmp olt double %25, %33, !dbg !962
  br i1 %34, label %35, label %37, !dbg !963

35:                                               ; preds = %16
  %36 = add nsw i32 %14, 1, !dbg !964
  call void @llvm.dbg.value(metadata i32 %36, metadata !940, metadata !DIExpression()), !dbg !942
  br label %37, !dbg !965

37:                                               ; preds = %35, %16, %13
  %.0 = phi i32 [ %36, %35 ], [ %14, %16 ], [ %14, %13 ], !dbg !966
  call void @llvm.dbg.value(metadata i32 %.0, metadata !940, metadata !DIExpression()), !dbg !942
  %38 = mul nsw i32 %5, %10, !dbg !967
  %39 = add nsw i32 %38, %4, !dbg !969
  %40 = sext i32 %39 to i64, !dbg !970
  %41 = getelementptr inbounds double, double* %3, i64 %40, !dbg !970
  %42 = load double, double* %41, align 8, !dbg !970, !tbaa !371
  %43 = sub nsw i32 %.0, 1, !dbg !971
  %44 = sext i32 %43 to i64, !dbg !972
  %45 = getelementptr inbounds i32, i32* %0, i64 %44, !dbg !972
  %46 = load i32, i32* %45, align 4, !dbg !972, !tbaa !115
  %47 = mul nsw i32 %5, %46, !dbg !973
  %48 = add nsw i32 %47, %4, !dbg !974
  %49 = sext i32 %48 to i64, !dbg !975
  %50 = getelementptr inbounds double, double* %3, i64 %49, !dbg !975
  %51 = load double, double* %50, align 8, !dbg !975, !tbaa !371
  %52 = fcmp oge double %42, %51, !dbg !976
  br i1 %52, label %53, label %54, !dbg !977

53:                                               ; preds = %37
  %.01.lcssa2 = phi i32 [ %.014, %37 ]
  call void @llvm.dbg.value(metadata i32 %.01.lcssa2, metadata !936, metadata !DIExpression()), !dbg !942
  br label %63, !dbg !978

54:                                               ; preds = %37
  %55 = sub nsw i32 %.0, 1, !dbg !979
  %56 = sext i32 %55 to i64, !dbg !980
  %57 = getelementptr inbounds i32, i32* %0, i64 %56, !dbg !980
  %58 = load i32, i32* %57, align 4, !dbg !980, !tbaa !115
  %59 = sub nsw i32 %.014, 1, !dbg !981
  %60 = sext i32 %59 to i64, !dbg !982
  %61 = getelementptr inbounds i32, i32* %0, i64 %60, !dbg !982
  store i32 %58, i32* %61, align 4, !dbg !983, !tbaa !115
  call void @llvm.dbg.value(metadata i32 %.0, metadata !936, metadata !DIExpression()), !dbg !942
  %62 = icmp sle i32 %.0, %11, !dbg !946
  br i1 %62, label %13, label %..loopexit_crit_edge, !dbg !947, !llvm.loop !984

..loopexit_crit_edge:                             ; preds = %54
  %split = phi i32 [ %.0, %54 ]
  br label %.loopexit, !dbg !947

.loopexit:                                        ; preds = %..loopexit_crit_edge, %6
  %.01.lcssa = phi i32 [ %split, %..loopexit_crit_edge ], [ %2, %6 ]
  call void @llvm.dbg.value(metadata i32 %.01.lcssa, metadata !936, metadata !DIExpression()), !dbg !942
  br label %63, !dbg !986

63:                                               ; preds = %.loopexit, %53
  %.013 = phi i32 [ %.01.lcssa, %.loopexit ], [ %.01.lcssa2, %53 ]
  %64 = sub nsw i32 %.013, 1, !dbg !986
  %65 = sext i32 %64 to i64, !dbg !987
  %66 = getelementptr inbounds i32, i32* %0, i64 %65, !dbg !987
  store i32 %10, i32* %66, align 4, !dbg !988, !tbaa !115
  ret void, !dbg !989
}

; Function Attrs: nounwind uwtable
define internal void @downheap_pairs(i32* %0, i32 %1, i32 %2) #0 !dbg !990 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !992, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i32 %1, metadata !993, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i32 %2, metadata !994, metadata !DIExpression()), !dbg !997
  %4 = sub nsw i32 %2, 1, !dbg !998
  %5 = sext i32 %4 to i64, !dbg !999
  %6 = getelementptr inbounds i32, i32* %0, i64 %5, !dbg !999
  %7 = load i32, i32* %6, align 4, !dbg !999, !tbaa !115
  call void @llvm.dbg.value(metadata i32 %7, metadata !996, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i32 %2, metadata !994, metadata !DIExpression()), !dbg !997
  %8 = sdiv i32 %1, 2, !dbg !1000
  %9 = icmp sle i32 %2, %8, !dbg !1001
  br i1 %9, label %.lr.ph, label %.loopexit, !dbg !1002

.lr.ph:                                           ; preds = %3
  br label %10, !dbg !1002

10:                                               ; preds = %.lr.ph, %31
  %.014 = phi i32 [ %2, %.lr.ph ], [ %.0, %31 ]
  call void @llvm.dbg.value(metadata i32 %.014, metadata !994, metadata !DIExpression()), !dbg !997
  %11 = add nsw i32 %.014, %.014, !dbg !1003
  call void @llvm.dbg.value(metadata i32 %11, metadata !995, metadata !DIExpression()), !dbg !997
  %12 = icmp slt i32 %11, %1, !dbg !1005
  br i1 %12, label %13, label %24, !dbg !1007

13:                                               ; preds = %10
  %14 = sub nsw i32 %11, 1, !dbg !1008
  %15 = sext i32 %14 to i64, !dbg !1009
  %16 = getelementptr inbounds i32, i32* %0, i64 %15, !dbg !1009
  %17 = load i32, i32* %16, align 4, !dbg !1009, !tbaa !115
  %18 = sext i32 %11 to i64, !dbg !1010
  %19 = getelementptr inbounds i32, i32* %0, i64 %18, !dbg !1010
  %20 = load i32, i32* %19, align 4, !dbg !1010, !tbaa !115
  %21 = icmp slt i32 %17, %20, !dbg !1011
  br i1 %21, label %22, label %24, !dbg !1012

22:                                               ; preds = %13
  %23 = add nsw i32 %11, 1, !dbg !1013
  call void @llvm.dbg.value(metadata i32 %23, metadata !995, metadata !DIExpression()), !dbg !997
  br label %24, !dbg !1014

24:                                               ; preds = %22, %13, %10
  %.0 = phi i32 [ %23, %22 ], [ %11, %13 ], [ %11, %10 ], !dbg !1015
  call void @llvm.dbg.value(metadata i32 %.0, metadata !995, metadata !DIExpression()), !dbg !997
  %25 = sub nsw i32 %.0, 1, !dbg !1016
  %26 = sext i32 %25 to i64, !dbg !1018
  %27 = getelementptr inbounds i32, i32* %0, i64 %26, !dbg !1018
  %28 = load i32, i32* %27, align 4, !dbg !1018, !tbaa !115
  %29 = icmp sge i32 %7, %28, !dbg !1019
  br i1 %29, label %30, label %31, !dbg !1020

30:                                               ; preds = %24
  %.01.lcssa2 = phi i32 [ %.014, %24 ]
  call void @llvm.dbg.value(metadata i32 %.01.lcssa2, metadata !994, metadata !DIExpression()), !dbg !997
  br label %40, !dbg !1021

31:                                               ; preds = %24
  %32 = sub nsw i32 %.0, 1, !dbg !1022
  %33 = sext i32 %32 to i64, !dbg !1023
  %34 = getelementptr inbounds i32, i32* %0, i64 %33, !dbg !1023
  %35 = load i32, i32* %34, align 4, !dbg !1023, !tbaa !115
  %36 = sub nsw i32 %.014, 1, !dbg !1024
  %37 = sext i32 %36 to i64, !dbg !1025
  %38 = getelementptr inbounds i32, i32* %0, i64 %37, !dbg !1025
  store i32 %35, i32* %38, align 4, !dbg !1026, !tbaa !115
  call void @llvm.dbg.value(metadata i32 %.0, metadata !994, metadata !DIExpression()), !dbg !997
  %39 = icmp sle i32 %.0, %8, !dbg !1001
  br i1 %39, label %10, label %..loopexit_crit_edge, !dbg !1002, !llvm.loop !1027

..loopexit_crit_edge:                             ; preds = %31
  %split = phi i32 [ %.0, %31 ]
  br label %.loopexit, !dbg !1002

.loopexit:                                        ; preds = %..loopexit_crit_edge, %3
  %.01.lcssa = phi i32 [ %split, %..loopexit_crit_edge ], [ %2, %3 ]
  call void @llvm.dbg.value(metadata i32 %.01.lcssa, metadata !994, metadata !DIExpression()), !dbg !997
  br label %40, !dbg !1029

40:                                               ; preds = %.loopexit, %30
  %.013 = phi i32 [ %.01.lcssa, %.loopexit ], [ %.01.lcssa2, %30 ]
  %41 = sub nsw i32 %.013, 1, !dbg !1029
  %42 = sext i32 %41 to i64, !dbg !1030
  %43 = getelementptr inbounds i32, i32* %0, i64 %42, !dbg !1030
  store i32 %7, i32* %43, align 4, !dbg !1031, !tbaa !115
  ret void, !dbg !1032
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

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
!73 = !DILocation(line: 787, column: 14, scope: !33)
!74 = !DILocation(line: 787, column: 21, scope: !33)
!75 = !DILocation(line: 787, column: 37, scope: !33)
!76 = !DILocation(line: 787, column: 49, scope: !33)
!77 = !DILocation(line: 790, column: 4, scope: !33)
!78 = !DILocation(line: 790, column: 23, scope: !33)
!79 = !DILocation(line: 799, column: 21, scope: !33)
!80 = !DILocation(line: 803, column: 16, scope: !33)
!81 = !DILocation(line: 807, column: 38, scope: !82)
!82 = distinct !DILexicalBlock(scope: !33, file: !1, line: 807, column: 8)
!83 = !DILocation(line: 807, column: 44, scope: !82)
!84 = !DILocation(line: 807, column: 31, scope: !82)
!85 = !DILocation(line: 807, column: 18, scope: !82)
!86 = !DILocation(line: 807, column: 65, scope: !82)
!87 = !DILocation(line: 807, column: 8, scope: !33)
!88 = !DILocation(line: 808, column: 15, scope: !89)
!89 = distinct !DILexicalBlock(scope: !82, file: !1, line: 807, column: 74)
!90 = !{!91, !91, i64 0}
!91 = !{!"any pointer", !92, i64 0}
!92 = !{!"omnipotent char", !93, i64 0}
!93 = !{!"Simple C/C++ TBAA"}
!94 = !DILocation(line: 808, column: 7, scope: !89)
!95 = !DILocation(line: 809, column: 7, scope: !89)
!96 = !DILocation(line: 824, column: 9, scope: !33)
!97 = !DILocation(line: 825, column: 9, scope: !33)
!98 = !DILocation(line: 826, column: 9, scope: !33)
!99 = !DILocation(line: 827, column: 9, scope: !33)
!100 = !DILocation(line: 829, column: 12, scope: !101)
!101 = distinct !DILexicalBlock(scope: !33, file: !1, line: 829, column: 8)
!102 = !DILocation(line: 829, column: 8, scope: !33)
!103 = !DILocation(line: 830, column: 12, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !1, line: 829, column: 18)
!105 = !DILocation(line: 831, column: 4, scope: !104)
!106 = !DILocation(line: 833, column: 9, scope: !33)
!107 = !DILocation(line: 836, column: 9, scope: !108)
!108 = distinct !DILexicalBlock(scope: !33, file: !1, line: 836, column: 4)
!109 = !DILocation(line: 836, column: 18, scope: !110)
!110 = distinct !DILexicalBlock(scope: !108, file: !1, line: 836, column: 4)
!111 = !DILocation(line: 836, column: 4, scope: !108)
!112 = !DILocation(line: 837, column: 23, scope: !113)
!113 = distinct !DILexicalBlock(scope: !110, file: !1, line: 836, column: 32)
!114 = !DILocation(line: 837, column: 29, scope: !113)
!115 = !{!116, !116, i64 0}
!116 = !{!"int", !92, i64 0}
!117 = !DILocation(line: 837, column: 15, scope: !113)
!118 = !DILocation(line: 837, column: 21, scope: !113)
!119 = !DILocation(line: 837, column: 7, scope: !113)
!120 = !DILocation(line: 837, column: 13, scope: !113)
!121 = !DILocation(line: 838, column: 15, scope: !122)
!122 = distinct !DILexicalBlock(scope: !113, file: !1, line: 838, column: 11)
!123 = !DILocation(line: 838, column: 11, scope: !113)
!124 = !DILocation(line: 839, column: 10, scope: !125)
!125 = distinct !DILexicalBlock(scope: !122, file: !1, line: 838, column: 21)
!126 = !DILocation(line: 839, column: 16, scope: !125)
!127 = !DILocation(line: 840, column: 7, scope: !125)
!128 = !DILocation(line: 842, column: 7, scope: !113)
!129 = !DILocation(line: 842, column: 13, scope: !113)
!130 = !DILocation(line: 845, column: 4, scope: !113)
!131 = !DILocation(line: 836, column: 28, scope: !110)
!132 = distinct !{!132, !111, !133}
!133 = !DILocation(line: 845, column: 4, scope: !108)
!134 = !DILocation(line: 847, column: 4, scope: !33)
!135 = !DILocation(line: 848, column: 4, scope: !33)
!136 = !DILocation(line: 849, column: 4, scope: !33)
!137 = !DILocation(line: 851, column: 12, scope: !138)
!138 = distinct !DILexicalBlock(scope: !33, file: !1, line: 851, column: 8)
!139 = !DILocation(line: 851, column: 8, scope: !33)
!140 = !DILocation(line: 852, column: 7, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !1, line: 851, column: 18)
!142 = !DILocation(line: 853, column: 4, scope: !141)
!143 = !DILocation(line: 869, column: 10, scope: !33)
!144 = !DILocation(line: 870, column: 16, scope: !33)
!145 = !DILocation(line: 871, column: 10, scope: !33)
!146 = !DILocation(line: 871, column: 13, scope: !33)
!147 = !{!148, !91, i64 8}
!148 = !{!"kdnode", !116, i64 0, !91, i64 8, !91, i64 16}
!149 = !DILocation(line: 872, column: 10, scope: !33)
!150 = !DILocation(line: 872, column: 13, scope: !33)
!151 = !{!148, !91, i64 16}
!152 = !DILocation(line: 881, column: 49, scope: !33)
!153 = !DILocation(line: 881, column: 4, scope: !33)
!154 = !DILocation(line: 1009, column: 20, scope: !155)
!155 = distinct !DILexicalBlock(scope: !33, file: !1, line: 903, column: 4)
!156 = !DILocation(line: 1010, column: 20, scope: !155)
!157 = !DILocation(line: 1057, column: 12, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !1, line: 1057, column: 7)
!159 = !DILocation(line: 1057, column: 21, scope: !160)
!160 = distinct !DILexicalBlock(scope: !158, file: !1, line: 1057, column: 7)
!161 = !DILocation(line: 1057, column: 7, scope: !158)
!162 = !DILocation(line: 1082, column: 24, scope: !163)
!163 = distinct !DILexicalBlock(scope: !160, file: !1, line: 1057, column: 35)
!164 = !DILocation(line: 1082, column: 16, scope: !163)
!165 = !DILocation(line: 1083, column: 10, scope: !163)
!166 = !DILocation(line: 1117, column: 37, scope: !163)
!167 = !DILocation(line: 1117, column: 10, scope: !163)
!168 = !DILocation(line: 1118, column: 37, scope: !163)
!169 = !DILocation(line: 1118, column: 10, scope: !163)
!170 = !DILocation(line: 1151, column: 15, scope: !171)
!171 = distinct !DILexicalBlock(scope: !163, file: !1, line: 1151, column: 14)
!172 = !DILocation(line: 1151, column: 27, scope: !171)
!173 = !DILocation(line: 1151, column: 36, scope: !171)
!174 = !DILocation(line: 1151, column: 40, scope: !171)
!175 = !DILocation(line: 1151, column: 48, scope: !171)
!176 = !DILocation(line: 1151, column: 46, scope: !171)
!177 = !DILocation(line: 1151, column: 54, scope: !171)
!178 = !DILocation(line: 1151, column: 14, scope: !163)
!179 = !DILocation(line: 1152, column: 38, scope: !180)
!180 = distinct !DILexicalBlock(scope: !171, file: !1, line: 1151, column: 60)
!181 = !DILocation(line: 1152, column: 46, scope: !180)
!182 = !DILocation(line: 1152, column: 44, scope: !180)
!183 = !DILocation(line: 1152, column: 27, scope: !180)
!184 = !DILocation(line: 1152, column: 13, scope: !180)
!185 = !DILocation(line: 1152, column: 25, scope: !180)
!186 = !DILocation(line: 1153, column: 10, scope: !180)
!187 = !DILocation(line: 1153, column: 22, scope: !188)
!188 = distinct !DILexicalBlock(scope: !171, file: !1, line: 1153, column: 21)
!189 = !DILocation(line: 1153, column: 34, scope: !188)
!190 = !DILocation(line: 1153, column: 43, scope: !188)
!191 = !DILocation(line: 1154, column: 23, scope: !188)
!192 = !DILocation(line: 1154, column: 31, scope: !188)
!193 = !DILocation(line: 1154, column: 29, scope: !188)
!194 = !DILocation(line: 1154, column: 39, scope: !188)
!195 = !DILocation(line: 1154, column: 51, scope: !188)
!196 = !DILocation(line: 1154, column: 49, scope: !188)
!197 = !DILocation(line: 1154, column: 37, scope: !188)
!198 = !DILocation(line: 1154, column: 62, scope: !188)
!199 = !DILocation(line: 1155, column: 28, scope: !188)
!200 = !DILocation(line: 1155, column: 36, scope: !188)
!201 = !DILocation(line: 1155, column: 34, scope: !188)
!202 = !DILocation(line: 1155, column: 25, scope: !188)
!203 = !DILocation(line: 1156, column: 28, scope: !188)
!204 = !DILocation(line: 1156, column: 40, scope: !188)
!205 = !DILocation(line: 1156, column: 38, scope: !188)
!206 = !DILocation(line: 1156, column: 25, scope: !188)
!207 = !DILocation(line: 1155, column: 43, scope: !188)
!208 = !DILocation(line: 1153, column: 21, scope: !171)
!209 = !DILocation(line: 1157, column: 26, scope: !210)
!210 = distinct !DILexicalBlock(scope: !188, file: !1, line: 1156, column: 54)
!211 = !DILocation(line: 1157, column: 42, scope: !210)
!212 = !DILocation(line: 1157, column: 54, scope: !210)
!213 = !DILocation(line: 1157, column: 52, scope: !210)
!214 = !DILocation(line: 1157, column: 13, scope: !210)
!215 = !DILocation(line: 1158, column: 38, scope: !210)
!216 = !DILocation(line: 1158, column: 46, scope: !210)
!217 = !DILocation(line: 1158, column: 44, scope: !210)
!218 = !DILocation(line: 1158, column: 27, scope: !210)
!219 = !DILocation(line: 1158, column: 13, scope: !210)
!220 = !DILocation(line: 1158, column: 25, scope: !210)
!221 = !DILocation(line: 1159, column: 10, scope: !210)
!222 = !DILocation(line: 1160, column: 22, scope: !163)
!223 = !DILocation(line: 1160, column: 10, scope: !163)
!224 = !DILocation(line: 1160, column: 20, scope: !163)
!225 = !DILocation(line: 1161, column: 22, scope: !163)
!226 = !DILocation(line: 1161, column: 10, scope: !163)
!227 = !DILocation(line: 1161, column: 20, scope: !163)
!228 = !DILocation(line: 1162, column: 26, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !1, line: 1162, column: 10)
!230 = distinct !DILexicalBlock(scope: !163, file: !1, line: 1162, column: 10)
!231 = !DILocation(line: 1162, column: 24, scope: !229)
!232 = !DILocation(line: 1162, column: 10, scope: !230)
!233 = !DILocation(line: 1163, column: 30, scope: !234)
!234 = distinct !DILexicalBlock(scope: !229, file: !1, line: 1162, column: 38)
!235 = !DILocation(line: 1163, column: 13, scope: !234)
!236 = !DILocation(line: 1163, column: 28, scope: !234)
!237 = !DILocation(line: 1164, column: 10, scope: !234)
!238 = !DILocation(line: 1162, column: 34, scope: !229)
!239 = distinct !{!239, !232, !240}
!240 = !DILocation(line: 1164, column: 10, scope: !230)
!241 = !DILocation(line: 1165, column: 26, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !1, line: 1165, column: 10)
!243 = distinct !DILexicalBlock(scope: !163, file: !1, line: 1165, column: 10)
!244 = !DILocation(line: 1165, column: 24, scope: !242)
!245 = !DILocation(line: 1165, column: 10, scope: !243)
!246 = !DILocation(line: 1166, column: 38, scope: !247)
!247 = distinct !DILexicalBlock(scope: !242, file: !1, line: 1165, column: 38)
!248 = !DILocation(line: 1166, column: 13, scope: !247)
!249 = !DILocation(line: 1166, column: 25, scope: !247)
!250 = !DILocation(line: 1166, column: 31, scope: !247)
!251 = !DILocation(line: 1166, column: 36, scope: !247)
!252 = !DILocation(line: 1167, column: 10, scope: !247)
!253 = !DILocation(line: 1165, column: 34, scope: !242)
!254 = distinct !{!254, !245, !255}
!255 = !DILocation(line: 1167, column: 10, scope: !243)
!256 = !DILocation(line: 1168, column: 21, scope: !163)
!257 = !DILocation(line: 1168, column: 29, scope: !163)
!258 = !DILocation(line: 1168, column: 27, scope: !163)
!259 = !DILocation(line: 1168, column: 18, scope: !163)
!260 = !DILocation(line: 1169, column: 7, scope: !163)
!261 = !DILocation(line: 1057, column: 31, scope: !160)
!262 = distinct !{!262, !161, !263}
!263 = !DILocation(line: 1169, column: 7, scope: !158)
!264 = !DILocation(line: 1177, column: 7, scope: !155)
!265 = !DILocation(line: 1178, column: 7, scope: !155)
!266 = !DILocation(line: 1195, column: 9, scope: !33)
!267 = !DILocation(line: 1195, column: 4, scope: !33)
!268 = !DILocation(line: 1196, column: 4, scope: !33)
!269 = !DILocation(line: 1197, column: 4, scope: !33)
!270 = !DILocation(line: 1198, column: 4, scope: !33)
!271 = !DILocation(line: 1199, column: 4, scope: !33)
!272 = !DILocation(line: 1201, column: 12, scope: !273)
!273 = distinct !DILexicalBlock(scope: !33, file: !1, line: 1201, column: 8)
!274 = !DILocation(line: 1201, column: 8, scope: !33)
!275 = !DILocation(line: 1202, column: 7, scope: !276)
!276 = distinct !DILexicalBlock(scope: !273, file: !1, line: 1201, column: 18)
!277 = !DILocation(line: 1203, column: 4, scope: !276)
!278 = !DILocation(line: 1206, column: 4, scope: !33)
!279 = !DILocation(line: 1211, column: 1, scope: !33)
!280 = !DILocation(line: 1210, column: 4, scope: !33)
!281 = distinct !DISubprogram(name: "heapsort_index", scope: !1, file: !1, line: 207, type: !282, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !284)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !21, !7, !38, !7, !7}
!284 = !{!285, !286, !287, !288, !289, !290, !291}
!285 = !DILocalVariable(name: "a", arg: 1, scope: !281, file: !1, line: 207, type: !21)
!286 = !DILocalVariable(name: "n", arg: 2, scope: !281, file: !1, line: 207, type: !7)
!287 = !DILocalVariable(name: "x", arg: 3, scope: !281, file: !1, line: 207, type: !38)
!288 = !DILocalVariable(name: "p", arg: 4, scope: !281, file: !1, line: 207, type: !7)
!289 = !DILocalVariable(name: "dim", arg: 5, scope: !281, file: !1, line: 207, type: !7)
!290 = !DILocalVariable(name: "k", scope: !281, file: !1, line: 210, type: !7)
!291 = !DILocalVariable(name: "v", scope: !281, file: !1, line: 210, type: !7)
!292 = !DILocation(line: 0, scope: !281)
!293 = !DILocation(line: 212, column: 15, scope: !294)
!294 = distinct !DILexicalBlock(scope: !281, file: !1, line: 212, column: 4)
!295 = !DILocation(line: 212, column: 22, scope: !296)
!296 = distinct !DILexicalBlock(scope: !294, file: !1, line: 212, column: 4)
!297 = !DILocation(line: 212, column: 4, scope: !294)
!298 = !DILocation(line: 213, column: 7, scope: !296)
!299 = !DILocation(line: 212, column: 29, scope: !296)
!300 = distinct !{!300, !297, !301}
!301 = !DILocation(line: 213, column: 40, scope: !294)
!302 = !DILocation(line: 214, column: 4, scope: !281)
!303 = !DILocation(line: 214, column: 13, scope: !281)
!304 = !DILocation(line: 215, column: 11, scope: !305)
!305 = distinct !DILexicalBlock(scope: !281, file: !1, line: 214, column: 18)
!306 = !DILocation(line: 218, column: 25, scope: !305)
!307 = !DILocation(line: 216, column: 14, scope: !305)
!308 = !DILocation(line: 216, column: 7, scope: !305)
!309 = !DILocation(line: 216, column: 12, scope: !305)
!310 = !DILocation(line: 217, column: 7, scope: !305)
!311 = !DILocation(line: 217, column: 16, scope: !305)
!312 = !DILocation(line: 218, column: 7, scope: !305)
!313 = distinct !{!313, !302, !314}
!314 = !DILocation(line: 219, column: 4, scope: !281)
!315 = !DILocation(line: 220, column: 1, scope: !281)
!316 = distinct !DISubprogram(name: "buildkdtree", scope: !1, file: !1, line: 255, type: !317, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !320)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !21, !21, !21, !21, !21, !21, !7, !7, !319, !8, !38, !7, !7}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339}
!321 = !DILocalVariable(name: "xn", arg: 1, scope: !316, file: !1, line: 255, type: !21)
!322 = !DILocalVariable(name: "yn", arg: 2, scope: !316, file: !1, line: 255, type: !21)
!323 = !DILocalVariable(name: "zn", arg: 3, scope: !316, file: !1, line: 255, type: !21)
!324 = !DILocalVariable(name: "wn", arg: 4, scope: !316, file: !1, line: 255, type: !21)
!325 = !DILocalVariable(name: "on", arg: 5, scope: !316, file: !1, line: 255, type: !21)
!326 = !DILocalVariable(name: "tn", arg: 6, scope: !316, file: !1, line: 255, type: !21)
!327 = !DILocalVariable(name: "start", arg: 7, scope: !316, file: !1, line: 256, type: !7)
!328 = !DILocalVariable(name: "end", arg: 8, scope: !316, file: !1, line: 256, type: !7)
!329 = !DILocalVariable(name: "kdpptr", arg: 9, scope: !316, file: !1, line: 256, type: !319)
!330 = !DILocalVariable(name: "that", arg: 10, scope: !316, file: !1, line: 256, type: !8)
!331 = !DILocalVariable(name: "x", arg: 11, scope: !316, file: !1, line: 257, type: !38)
!332 = !DILocalVariable(name: "p", arg: 12, scope: !316, file: !1, line: 257, type: !7)
!333 = !DILocalVariable(name: "dim", arg: 13, scope: !316, file: !1, line: 257, type: !7)
!334 = !DILocalVariable(name: "i", scope: !316, file: !1, line: 259, type: !7)
!335 = !DILocalVariable(name: "middle", scope: !316, file: !1, line: 259, type: !7)
!336 = !DILocalVariable(name: "imedian", scope: !316, file: !1, line: 259, type: !7)
!337 = !DILocalVariable(name: "lower", scope: !316, file: !1, line: 259, type: !7)
!338 = !DILocalVariable(name: "upper", scope: !316, file: !1, line: 259, type: !7)
!339 = !DILocalVariable(name: "median", scope: !316, file: !1, line: 260, type: !39)
!340 = !DILocation(line: 0, scope: !316)
!341 = !DILocation(line: 276, column: 14, scope: !316)
!342 = !DILocation(line: 276, column: 6, scope: !316)
!343 = !DILocation(line: 281, column: 12, scope: !344)
!344 = distinct !DILexicalBlock(scope: !316, file: !1, line: 281, column: 8)
!345 = !DILocation(line: 281, column: 8, scope: !316)
!346 = !DILocation(line: 282, column: 17, scope: !347)
!347 = distinct !DILexicalBlock(scope: !344, file: !1, line: 281, column: 22)
!348 = !DILocation(line: 282, column: 13, scope: !347)
!349 = !DILocation(line: 282, column: 15, scope: !347)
!350 = !{!148, !116, i64 0}
!351 = !DILocation(line: 283, column: 4, scope: !347)
!352 = !DILocation(line: 293, column: 26, scope: !353)
!353 = distinct !DILexicalBlock(scope: !344, file: !1, line: 293, column: 13)
!354 = !DILocation(line: 293, column: 17, scope: !353)
!355 = !DILocation(line: 293, column: 13, scope: !344)
!356 = !DILocation(line: 298, column: 15, scope: !357)
!357 = distinct !DILexicalBlock(scope: !358, file: !1, line: 298, column: 11)
!358 = distinct !DILexicalBlock(scope: !353, file: !1, line: 293, column: 31)
!359 = !DILocation(line: 298, column: 21, scope: !357)
!360 = !DILocation(line: 298, column: 25, scope: !357)
!361 = !DILocation(line: 298, column: 37, scope: !357)
!362 = !DILocation(line: 298, column: 35, scope: !357)
!363 = !DILocation(line: 298, column: 47, scope: !357)
!364 = !DILocation(line: 299, column: 15, scope: !357)
!365 = !DILocation(line: 299, column: 21, scope: !357)
!366 = !DILocation(line: 299, column: 33, scope: !357)
!367 = !DILocation(line: 299, column: 31, scope: !357)
!368 = !DILocation(line: 299, column: 43, scope: !357)
!369 = !DILocation(line: 299, column: 47, scope: !357)
!370 = !DILocation(line: 299, column: 25, scope: !357)
!371 = !{!372, !372, i64 0}
!372 = !{!"double", !92, i64 0}
!373 = !DILocation(line: 300, column: 33, scope: !357)
!374 = !DILocation(line: 300, column: 31, scope: !357)
!375 = !DILocation(line: 300, column: 41, scope: !357)
!376 = !DILocation(line: 300, column: 45, scope: !357)
!377 = !DILocation(line: 300, column: 25, scope: !357)
!378 = !DILocation(line: 299, column: 52, scope: !357)
!379 = !DILocation(line: 298, column: 11, scope: !358)
!380 = !DILocation(line: 305, column: 20, scope: !381)
!381 = distinct !DILexicalBlock(scope: !357, file: !1, line: 304, column: 7)
!382 = !DILocation(line: 305, column: 16, scope: !381)
!383 = !DILocation(line: 305, column: 18, scope: !381)
!384 = !DILocation(line: 306, column: 25, scope: !381)
!385 = !DILocation(line: 306, column: 11, scope: !381)
!386 = !DILocation(line: 306, column: 21, scope: !381)
!387 = !DILocation(line: 306, column: 23, scope: !381)
!388 = !DILocation(line: 307, column: 11, scope: !381)
!389 = !DILocation(line: 307, column: 21, scope: !381)
!390 = !DILocation(line: 307, column: 24, scope: !381)
!391 = !DILocation(line: 308, column: 11, scope: !381)
!392 = !DILocation(line: 308, column: 21, scope: !381)
!393 = !DILocation(line: 308, column: 24, scope: !381)
!394 = !DILocation(line: 309, column: 30, scope: !381)
!395 = !DILocation(line: 309, column: 16, scope: !381)
!396 = !DILocation(line: 309, column: 19, scope: !381)
!397 = !DILocation(line: 310, column: 7, scope: !381)
!398 = !DILocation(line: 315, column: 20, scope: !399)
!399 = distinct !DILexicalBlock(scope: !357, file: !1, line: 315, column: 16)
!400 = !DILocation(line: 315, column: 26, scope: !399)
!401 = !DILocation(line: 315, column: 30, scope: !399)
!402 = !DILocation(line: 315, column: 42, scope: !399)
!403 = !DILocation(line: 315, column: 40, scope: !399)
!404 = !DILocation(line: 315, column: 52, scope: !399)
!405 = !DILocation(line: 316, column: 20, scope: !399)
!406 = !DILocation(line: 316, column: 26, scope: !399)
!407 = !DILocation(line: 316, column: 38, scope: !399)
!408 = !DILocation(line: 316, column: 36, scope: !399)
!409 = !DILocation(line: 316, column: 48, scope: !399)
!410 = !DILocation(line: 316, column: 52, scope: !399)
!411 = !DILocation(line: 316, column: 30, scope: !399)
!412 = !DILocation(line: 317, column: 38, scope: !399)
!413 = !DILocation(line: 317, column: 36, scope: !399)
!414 = !DILocation(line: 317, column: 46, scope: !399)
!415 = !DILocation(line: 317, column: 50, scope: !399)
!416 = !DILocation(line: 317, column: 30, scope: !399)
!417 = !DILocation(line: 316, column: 57, scope: !399)
!418 = !DILocation(line: 315, column: 16, scope: !357)
!419 = !DILocation(line: 322, column: 20, scope: !420)
!420 = distinct !DILexicalBlock(scope: !399, file: !1, line: 321, column: 7)
!421 = !DILocation(line: 322, column: 16, scope: !420)
!422 = !DILocation(line: 322, column: 18, scope: !420)
!423 = !DILocation(line: 323, column: 25, scope: !420)
!424 = !DILocation(line: 323, column: 11, scope: !420)
!425 = !DILocation(line: 323, column: 21, scope: !420)
!426 = !DILocation(line: 323, column: 23, scope: !420)
!427 = !DILocation(line: 324, column: 11, scope: !420)
!428 = !DILocation(line: 324, column: 21, scope: !420)
!429 = !DILocation(line: 324, column: 24, scope: !420)
!430 = !DILocation(line: 325, column: 11, scope: !420)
!431 = !DILocation(line: 325, column: 21, scope: !420)
!432 = !DILocation(line: 325, column: 24, scope: !420)
!433 = !DILocation(line: 326, column: 30, scope: !420)
!434 = !DILocation(line: 326, column: 16, scope: !420)
!435 = !DILocation(line: 326, column: 19, scope: !420)
!436 = !DILocation(line: 327, column: 7, scope: !420)
!437 = !DILocation(line: 332, column: 20, scope: !438)
!438 = distinct !DILexicalBlock(scope: !399, file: !1, line: 331, column: 12)
!439 = !DILocation(line: 332, column: 16, scope: !438)
!440 = !DILocation(line: 332, column: 18, scope: !438)
!441 = !DILocation(line: 333, column: 25, scope: !438)
!442 = !DILocation(line: 333, column: 11, scope: !438)
!443 = !DILocation(line: 333, column: 21, scope: !438)
!444 = !DILocation(line: 333, column: 23, scope: !438)
!445 = !DILocation(line: 334, column: 11, scope: !438)
!446 = !DILocation(line: 334, column: 21, scope: !438)
!447 = !DILocation(line: 334, column: 24, scope: !438)
!448 = !DILocation(line: 335, column: 11, scope: !438)
!449 = !DILocation(line: 335, column: 21, scope: !438)
!450 = !DILocation(line: 335, column: 24, scope: !438)
!451 = !DILocation(line: 336, column: 30, scope: !438)
!452 = !DILocation(line: 336, column: 16, scope: !438)
!453 = !DILocation(line: 336, column: 19, scope: !438)
!454 = !DILocation(line: 338, column: 4, scope: !358)
!455 = !DILocation(line: 358, column: 23, scope: !456)
!456 = distinct !DILexicalBlock(scope: !353, file: !1, line: 342, column: 9)
!457 = !DILocation(line: 358, column: 30, scope: !456)
!458 = !DILocation(line: 360, column: 13, scope: !459)
!459 = distinct !DILexicalBlock(scope: !456, file: !1, line: 360, column: 11)
!460 = !DILocation(line: 360, column: 11, scope: !456)
!461 = !DILocation(line: 361, column: 20, scope: !462)
!462 = distinct !DILexicalBlock(scope: !459, file: !1, line: 360, column: 19)
!463 = !DILocation(line: 362, column: 7, scope: !462)
!464 = !DILocation(line: 363, column: 27, scope: !465)
!465 = distinct !DILexicalBlock(scope: !459, file: !1, line: 362, column: 14)
!466 = !DILocation(line: 363, column: 25, scope: !465)
!467 = !DILocation(line: 363, column: 38, scope: !465)
!468 = !DILocation(line: 363, column: 42, scope: !465)
!469 = !DILocation(line: 363, column: 19, scope: !465)
!470 = !DILocation(line: 364, column: 26, scope: !471)
!471 = distinct !DILexicalBlock(scope: !465, file: !1, line: 364, column: 10)
!472 = !DILocation(line: 364, column: 15, scope: !471)
!473 = !DILocation(line: 364, column: 33, scope: !474)
!474 = distinct !DILexicalBlock(scope: !471, file: !1, line: 364, column: 10)
!475 = !DILocation(line: 364, column: 10, scope: !471)
!476 = !DILocation(line: 365, column: 25, scope: !477)
!477 = distinct !DILexicalBlock(scope: !478, file: !1, line: 365, column: 17)
!478 = distinct !DILexicalBlock(scope: !474, file: !1, line: 364, column: 48)
!479 = !DILocation(line: 365, column: 23, scope: !477)
!480 = !DILocation(line: 365, column: 31, scope: !477)
!481 = !DILocation(line: 365, column: 35, scope: !477)
!482 = !DILocation(line: 365, column: 17, scope: !477)
!483 = !DILocation(line: 365, column: 40, scope: !477)
!484 = !DILocation(line: 365, column: 17, scope: !478)
!485 = !DILocation(line: 0, scope: !456)
!486 = !DILocation(line: 366, column: 16, scope: !487)
!487 = distinct !DILexicalBlock(scope: !477, file: !1, line: 365, column: 50)
!488 = !DILocation(line: 370, column: 10, scope: !478)
!489 = !DILocation(line: 364, column: 44, scope: !474)
!490 = distinct !{!490, !475, !491}
!491 = !DILocation(line: 370, column: 10, scope: !471)
!492 = !DILocation(line: 358, column: 14, scope: !456)
!493 = !DILocation(line: 385, column: 17, scope: !456)
!494 = !DILocation(line: 385, column: 13, scope: !456)
!495 = !DILocation(line: 385, column: 15, scope: !456)
!496 = !DILocation(line: 414, column: 21, scope: !456)
!497 = !DILocation(line: 416, column: 12, scope: !498)
!498 = distinct !DILexicalBlock(scope: !456, file: !1, line: 416, column: 7)
!499 = !DILocation(line: 416, column: 25, scope: !500)
!500 = distinct !DILexicalBlock(scope: !498, file: !1, line: 416, column: 7)
!501 = !DILocation(line: 416, column: 7, scope: !498)
!502 = !DILocation(line: 417, column: 14, scope: !503)
!503 = distinct !DILexicalBlock(scope: !504, file: !1, line: 417, column: 14)
!504 = distinct !DILexicalBlock(scope: !500, file: !1, line: 416, column: 38)
!505 = !DILocation(line: 417, column: 23, scope: !503)
!506 = !DILocation(line: 417, column: 20, scope: !503)
!507 = !DILocation(line: 417, column: 14, scope: !504)
!508 = !DILocation(line: 420, column: 21, scope: !509)
!509 = distinct !DILexicalBlock(scope: !510, file: !1, line: 420, column: 17)
!510 = distinct !DILexicalBlock(scope: !503, file: !1, line: 417, column: 35)
!511 = !DILocation(line: 420, column: 27, scope: !509)
!512 = !DILocation(line: 420, column: 31, scope: !509)
!513 = !DILocation(line: 420, column: 37, scope: !509)
!514 = !DILocation(line: 420, column: 49, scope: !509)
!515 = !DILocation(line: 421, column: 21, scope: !509)
!516 = !DILocation(line: 421, column: 27, scope: !509)
!517 = !DILocation(line: 421, column: 39, scope: !509)
!518 = !DILocation(line: 421, column: 37, scope: !509)
!519 = !DILocation(line: 421, column: 45, scope: !509)
!520 = !DILocation(line: 421, column: 49, scope: !509)
!521 = !DILocation(line: 421, column: 31, scope: !509)
!522 = !DILocation(line: 421, column: 54, scope: !509)
!523 = !DILocation(line: 420, column: 17, scope: !510)
!524 = !DILocation(line: 426, column: 30, scope: !525)
!525 = distinct !DILexicalBlock(scope: !509, file: !1, line: 425, column: 13)
!526 = !DILocation(line: 426, column: 19, scope: !525)
!527 = !DILocation(line: 426, column: 16, scope: !525)
!528 = !DILocation(line: 426, column: 28, scope: !525)
!529 = !DILocation(line: 427, column: 13, scope: !525)
!530 = !DILocation(line: 428, column: 30, scope: !531)
!531 = distinct !DILexicalBlock(scope: !509, file: !1, line: 427, column: 20)
!532 = !DILocation(line: 428, column: 19, scope: !531)
!533 = !DILocation(line: 428, column: 16, scope: !531)
!534 = !DILocation(line: 428, column: 28, scope: !531)
!535 = !DILocation(line: 430, column: 10, scope: !510)
!536 = !DILocation(line: 415, column: 13, scope: !456)
!537 = !DILocation(line: 431, column: 7, scope: !504)
!538 = !DILocation(line: 416, column: 34, scope: !500)
!539 = distinct !{!539, !501, !540}
!540 = !DILocation(line: 431, column: 7, scope: !498)
!541 = !DILocation(line: 449, column: 21, scope: !456)
!542 = !DILocation(line: 451, column: 12, scope: !543)
!543 = distinct !DILexicalBlock(scope: !456, file: !1, line: 451, column: 7)
!544 = !DILocation(line: 451, column: 25, scope: !545)
!545 = distinct !DILexicalBlock(scope: !543, file: !1, line: 451, column: 7)
!546 = !DILocation(line: 451, column: 7, scope: !543)
!547 = !DILocation(line: 452, column: 14, scope: !548)
!548 = distinct !DILexicalBlock(scope: !549, file: !1, line: 452, column: 14)
!549 = distinct !DILexicalBlock(scope: !545, file: !1, line: 451, column: 38)
!550 = !DILocation(line: 452, column: 23, scope: !548)
!551 = !DILocation(line: 452, column: 20, scope: !548)
!552 = !DILocation(line: 452, column: 14, scope: !549)
!553 = !DILocation(line: 455, column: 21, scope: !554)
!554 = distinct !DILexicalBlock(scope: !555, file: !1, line: 455, column: 17)
!555 = distinct !DILexicalBlock(scope: !548, file: !1, line: 452, column: 35)
!556 = !DILocation(line: 455, column: 27, scope: !554)
!557 = !DILocation(line: 455, column: 31, scope: !554)
!558 = !DILocation(line: 455, column: 37, scope: !554)
!559 = !DILocation(line: 455, column: 49, scope: !554)
!560 = !DILocation(line: 456, column: 21, scope: !554)
!561 = !DILocation(line: 456, column: 27, scope: !554)
!562 = !DILocation(line: 456, column: 39, scope: !554)
!563 = !DILocation(line: 456, column: 37, scope: !554)
!564 = !DILocation(line: 456, column: 45, scope: !554)
!565 = !DILocation(line: 456, column: 49, scope: !554)
!566 = !DILocation(line: 456, column: 31, scope: !554)
!567 = !DILocation(line: 456, column: 54, scope: !554)
!568 = !DILocation(line: 455, column: 17, scope: !555)
!569 = !DILocation(line: 461, column: 30, scope: !570)
!570 = distinct !DILexicalBlock(scope: !554, file: !1, line: 460, column: 13)
!571 = !DILocation(line: 461, column: 19, scope: !570)
!572 = !DILocation(line: 461, column: 16, scope: !570)
!573 = !DILocation(line: 461, column: 28, scope: !570)
!574 = !DILocation(line: 462, column: 13, scope: !570)
!575 = !DILocation(line: 463, column: 30, scope: !576)
!576 = distinct !DILexicalBlock(scope: !554, file: !1, line: 462, column: 20)
!577 = !DILocation(line: 463, column: 19, scope: !576)
!578 = !DILocation(line: 463, column: 16, scope: !576)
!579 = !DILocation(line: 463, column: 28, scope: !576)
!580 = !DILocation(line: 465, column: 10, scope: !555)
!581 = !DILocation(line: 450, column: 13, scope: !456)
!582 = !DILocation(line: 466, column: 7, scope: !549)
!583 = !DILocation(line: 451, column: 34, scope: !545)
!584 = distinct !{!584, !546, !585}
!585 = !DILocation(line: 466, column: 7, scope: !543)
!586 = !DILocation(line: 495, column: 24, scope: !587)
!587 = distinct !DILexicalBlock(scope: !456, file: !1, line: 477, column: 7)
!588 = !DILocation(line: 497, column: 15, scope: !589)
!589 = distinct !DILexicalBlock(scope: !587, file: !1, line: 497, column: 10)
!590 = !DILocation(line: 497, column: 28, scope: !591)
!591 = distinct !DILexicalBlock(scope: !589, file: !1, line: 497, column: 10)
!592 = !DILocation(line: 497, column: 10, scope: !589)
!593 = !DILocation(line: 498, column: 17, scope: !594)
!594 = distinct !DILexicalBlock(scope: !595, file: !1, line: 498, column: 17)
!595 = distinct !DILexicalBlock(scope: !591, file: !1, line: 497, column: 41)
!596 = !DILocation(line: 498, column: 26, scope: !594)
!597 = !DILocation(line: 498, column: 23, scope: !594)
!598 = !DILocation(line: 498, column: 17, scope: !595)
!599 = !DILocation(line: 501, column: 24, scope: !600)
!600 = distinct !DILexicalBlock(scope: !601, file: !1, line: 501, column: 20)
!601 = distinct !DILexicalBlock(scope: !594, file: !1, line: 498, column: 38)
!602 = !DILocation(line: 501, column: 30, scope: !600)
!603 = !DILocation(line: 501, column: 34, scope: !600)
!604 = !DILocation(line: 501, column: 40, scope: !600)
!605 = !DILocation(line: 501, column: 52, scope: !600)
!606 = !DILocation(line: 502, column: 24, scope: !600)
!607 = !DILocation(line: 502, column: 30, scope: !600)
!608 = !DILocation(line: 502, column: 42, scope: !600)
!609 = !DILocation(line: 502, column: 40, scope: !600)
!610 = !DILocation(line: 502, column: 48, scope: !600)
!611 = !DILocation(line: 502, column: 52, scope: !600)
!612 = !DILocation(line: 502, column: 34, scope: !600)
!613 = !DILocation(line: 502, column: 57, scope: !600)
!614 = !DILocation(line: 501, column: 20, scope: !601)
!615 = !DILocation(line: 507, column: 33, scope: !616)
!616 = distinct !DILexicalBlock(scope: !600, file: !1, line: 506, column: 16)
!617 = !DILocation(line: 507, column: 22, scope: !616)
!618 = !DILocation(line: 507, column: 19, scope: !616)
!619 = !DILocation(line: 507, column: 31, scope: !616)
!620 = !DILocation(line: 508, column: 16, scope: !616)
!621 = !DILocation(line: 509, column: 33, scope: !622)
!622 = distinct !DILexicalBlock(scope: !600, file: !1, line: 508, column: 23)
!623 = !DILocation(line: 509, column: 22, scope: !622)
!624 = !DILocation(line: 509, column: 19, scope: !622)
!625 = !DILocation(line: 509, column: 31, scope: !622)
!626 = !DILocation(line: 0, scope: !587)
!627 = !DILocation(line: 511, column: 13, scope: !601)
!628 = !DILocation(line: 496, column: 16, scope: !587)
!629 = !DILocation(line: 512, column: 10, scope: !595)
!630 = !DILocation(line: 497, column: 37, scope: !591)
!631 = distinct !{!631, !592, !632}
!632 = !DILocation(line: 512, column: 10, scope: !589)
!633 = !DILocation(line: 522, column: 15, scope: !634)
!634 = distinct !DILexicalBlock(scope: !456, file: !1, line: 522, column: 11)
!635 = !DILocation(line: 522, column: 11, scope: !456)
!636 = !DILocation(line: 540, column: 24, scope: !637)
!637 = distinct !DILexicalBlock(scope: !634, file: !1, line: 522, column: 21)
!638 = !DILocation(line: 542, column: 15, scope: !639)
!639 = distinct !DILexicalBlock(scope: !637, file: !1, line: 542, column: 10)
!640 = !DILocation(line: 542, column: 28, scope: !641)
!641 = distinct !DILexicalBlock(scope: !639, file: !1, line: 542, column: 10)
!642 = !DILocation(line: 542, column: 10, scope: !639)
!643 = !DILocation(line: 543, column: 17, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !1, line: 543, column: 17)
!645 = distinct !DILexicalBlock(scope: !641, file: !1, line: 542, column: 41)
!646 = !DILocation(line: 543, column: 26, scope: !644)
!647 = !DILocation(line: 543, column: 23, scope: !644)
!648 = !DILocation(line: 543, column: 17, scope: !645)
!649 = !DILocation(line: 544, column: 24, scope: !650)
!650 = distinct !DILexicalBlock(scope: !651, file: !1, line: 544, column: 20)
!651 = distinct !DILexicalBlock(scope: !644, file: !1, line: 543, column: 38)
!652 = !DILocation(line: 544, column: 30, scope: !650)
!653 = !DILocation(line: 544, column: 34, scope: !650)
!654 = !DILocation(line: 544, column: 40, scope: !650)
!655 = !DILocation(line: 544, column: 52, scope: !650)
!656 = !DILocation(line: 545, column: 24, scope: !650)
!657 = !DILocation(line: 545, column: 30, scope: !650)
!658 = !DILocation(line: 545, column: 42, scope: !650)
!659 = !DILocation(line: 545, column: 40, scope: !650)
!660 = !DILocation(line: 545, column: 48, scope: !650)
!661 = !DILocation(line: 545, column: 52, scope: !650)
!662 = !DILocation(line: 545, column: 34, scope: !650)
!663 = !DILocation(line: 545, column: 57, scope: !650)
!664 = !DILocation(line: 544, column: 20, scope: !651)
!665 = !DILocation(line: 546, column: 33, scope: !666)
!666 = distinct !DILexicalBlock(scope: !650, file: !1, line: 545, column: 69)
!667 = !DILocation(line: 546, column: 22, scope: !666)
!668 = !DILocation(line: 546, column: 19, scope: !666)
!669 = !DILocation(line: 546, column: 31, scope: !666)
!670 = !DILocation(line: 547, column: 16, scope: !666)
!671 = !DILocation(line: 548, column: 33, scope: !672)
!672 = distinct !DILexicalBlock(scope: !650, file: !1, line: 547, column: 23)
!673 = !DILocation(line: 548, column: 22, scope: !672)
!674 = !DILocation(line: 548, column: 19, scope: !672)
!675 = !DILocation(line: 548, column: 31, scope: !672)
!676 = !DILocation(line: 0, scope: !637)
!677 = !DILocation(line: 550, column: 13, scope: !651)
!678 = !DILocation(line: 541, column: 16, scope: !637)
!679 = !DILocation(line: 551, column: 10, scope: !645)
!680 = !DILocation(line: 542, column: 37, scope: !641)
!681 = distinct !{!681, !642, !682}
!682 = !DILocation(line: 551, column: 10, scope: !639)
!683 = !DILocation(line: 552, column: 7, scope: !637)
!684 = !DILocation(line: 576, column: 17, scope: !685)
!685 = distinct !DILexicalBlock(scope: !456, file: !1, line: 576, column: 11)
!686 = !DILocation(line: 576, column: 11, scope: !456)
!687 = !DILocation(line: 577, column: 11, scope: !688)
!688 = distinct !DILexicalBlock(scope: !685, file: !1, line: 576, column: 27)
!689 = !DILocation(line: 577, column: 21, scope: !688)
!690 = !DILocation(line: 577, column: 24, scope: !688)
!691 = !DILocation(line: 578, column: 11, scope: !688)
!692 = !DILocation(line: 578, column: 21, scope: !688)
!693 = !DILocation(line: 578, column: 24, scope: !688)
!694 = !DILocation(line: 579, column: 30, scope: !688)
!695 = !DILocation(line: 579, column: 16, scope: !688)
!696 = !DILocation(line: 579, column: 19, scope: !688)
!697 = !DILocation(line: 590, column: 18, scope: !698)
!698 = distinct !DILexicalBlock(scope: !688, file: !1, line: 590, column: 14)
!699 = !DILocation(line: 590, column: 14, scope: !688)
!700 = !DILocation(line: 592, column: 53, scope: !701)
!701 = distinct !DILexicalBlock(scope: !698, file: !1, line: 590, column: 24)
!702 = !DILocation(line: 592, column: 62, scope: !701)
!703 = !DILocation(line: 591, column: 13, scope: !701)
!704 = !DILocation(line: 593, column: 10, scope: !701)
!705 = !DILocation(line: 595, column: 53, scope: !706)
!706 = distinct !DILexicalBlock(scope: !698, file: !1, line: 593, column: 17)
!707 = !DILocation(line: 595, column: 62, scope: !706)
!708 = !DILocation(line: 594, column: 13, scope: !706)
!709 = !DILocation(line: 599, column: 7, scope: !688)
!710 = !DILocation(line: 614, column: 17, scope: !711)
!711 = distinct !DILexicalBlock(scope: !456, file: !1, line: 614, column: 11)
!712 = !DILocation(line: 614, column: 11, scope: !456)
!713 = !DILocation(line: 615, column: 11, scope: !714)
!714 = distinct !DILexicalBlock(scope: !711, file: !1, line: 614, column: 27)
!715 = !DILocation(line: 615, column: 21, scope: !714)
!716 = !DILocation(line: 615, column: 24, scope: !714)
!717 = !DILocation(line: 616, column: 11, scope: !714)
!718 = !DILocation(line: 616, column: 21, scope: !714)
!719 = !DILocation(line: 616, column: 24, scope: !714)
!720 = !DILocation(line: 617, column: 30, scope: !714)
!721 = !DILocation(line: 617, column: 16, scope: !714)
!722 = !DILocation(line: 617, column: 19, scope: !714)
!723 = !DILocation(line: 628, column: 18, scope: !724)
!724 = distinct !DILexicalBlock(scope: !714, file: !1, line: 628, column: 14)
!725 = !DILocation(line: 628, column: 14, scope: !714)
!726 = !DILocation(line: 630, column: 32, scope: !727)
!727 = distinct !DILexicalBlock(scope: !724, file: !1, line: 628, column: 24)
!728 = !DILocation(line: 630, column: 56, scope: !727)
!729 = !DILocation(line: 630, column: 65, scope: !727)
!730 = !DILocation(line: 629, column: 13, scope: !727)
!731 = !DILocation(line: 631, column: 10, scope: !727)
!732 = !DILocation(line: 633, column: 32, scope: !733)
!733 = distinct !DILexicalBlock(scope: !724, file: !1, line: 631, column: 17)
!734 = !DILocation(line: 633, column: 56, scope: !733)
!735 = !DILocation(line: 633, column: 65, scope: !733)
!736 = !DILocation(line: 632, column: 13, scope: !733)
!737 = !DILocation(line: 637, column: 7, scope: !714)
!738 = !DILocation(line: 639, column: 1, scope: !316)
!739 = distinct !DISubprogram(name: "searchkdtree", scope: !1, file: !1, line: 667, type: !740, scopeLine: 671, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !742)
!740 = !DISubroutineType(types: !741)
!741 = !{null, !8, !38, !13, !13, !36, !36, !36, !36, !39, !39, !7, !21}
!742 = !{!743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759}
!743 = !DILocalVariable(name: "that", arg: 1, scope: !739, file: !1, line: 667, type: !8)
!744 = !DILocalVariable(name: "x", arg: 2, scope: !739, file: !1, line: 667, type: !38)
!745 = !DILocalVariable(name: "p", arg: 3, scope: !739, file: !1, line: 667, type: !13)
!746 = !DILocalVariable(name: "q", arg: 4, scope: !739, file: !1, line: 667, type: !13)
!747 = !DILocalVariable(name: "loindexp", arg: 5, scope: !739, file: !1, line: 668, type: !36)
!748 = !DILocalVariable(name: "upindexp", arg: 6, scope: !739, file: !1, line: 668, type: !36)
!749 = !DILocalVariable(name: "lopairlist", arg: 7, scope: !739, file: !1, line: 669, type: !36)
!750 = !DILocalVariable(name: "uppairlist", arg: 8, scope: !739, file: !1, line: 669, type: !36)
!751 = !DILocalVariable(name: "cut", arg: 9, scope: !739, file: !1, line: 670, type: !39)
!752 = !DILocalVariable(name: "cut2", arg: 10, scope: !739, file: !1, line: 670, type: !39)
!753 = !DILocalVariable(name: "dim", arg: 11, scope: !739, file: !1, line: 670, type: !7)
!754 = !DILocalVariable(name: "frozen", arg: 12, scope: !739, file: !1, line: 670, type: !21)
!755 = !DILocalVariable(name: "xij", scope: !739, file: !1, line: 672, type: !39)
!756 = !DILocalVariable(name: "yij", scope: !739, file: !1, line: 672, type: !39)
!757 = !DILocalVariable(name: "zij", scope: !739, file: !1, line: 672, type: !39)
!758 = !DILocalVariable(name: "wij", scope: !739, file: !1, line: 672, type: !39)
!759 = !DILocalVariable(name: "r2", scope: !739, file: !1, line: 672, type: !39)
!760 = !DILocation(line: 0, scope: !739)
!761 = !DILocation(line: 685, column: 14, scope: !739)
!762 = !DILocation(line: 685, column: 6, scope: !739)
!763 = !DILocation(line: 697, column: 12, scope: !764)
!764 = distinct !DILexicalBlock(scope: !739, file: !1, line: 697, column: 8)
!765 = !DILocation(line: 697, column: 18, scope: !764)
!766 = !DILocation(line: 697, column: 28, scope: !764)
!767 = !DILocation(line: 697, column: 31, scope: !764)
!768 = !DILocation(line: 697, column: 41, scope: !764)
!769 = !DILocation(line: 698, column: 12, scope: !764)
!770 = !DILocation(line: 698, column: 18, scope: !764)
!771 = !DILocation(line: 698, column: 28, scope: !764)
!772 = !DILocation(line: 698, column: 31, scope: !764)
!773 = !DILocation(line: 698, column: 40, scope: !764)
!774 = !DILocation(line: 699, column: 16, scope: !764)
!775 = !DILocation(line: 699, column: 20, scope: !764)
!776 = !DILocation(line: 699, column: 24, scope: !764)
!777 = !DILocation(line: 699, column: 10, scope: !764)
!778 = !DILocation(line: 699, column: 29, scope: !764)
!779 = !DILocation(line: 699, column: 52, scope: !764)
!780 = !DILocation(line: 699, column: 44, scope: !764)
!781 = !DILocation(line: 699, column: 54, scope: !764)
!782 = !DILocation(line: 699, column: 58, scope: !764)
!783 = !DILocation(line: 699, column: 38, scope: !764)
!784 = !DILocation(line: 699, column: 35, scope: !764)
!785 = !DILocation(line: 697, column: 8, scope: !739)
!786 = !DILocation(line: 705, column: 26, scope: !787)
!787 = distinct !DILexicalBlock(scope: !764, file: !1, line: 704, column: 4)
!788 = !DILocation(line: 705, column: 35, scope: !787)
!789 = !DILocation(line: 705, column: 7, scope: !787)
!790 = !DILocation(line: 707, column: 4, scope: !787)
!791 = !DILocation(line: 718, column: 20, scope: !792)
!792 = distinct !DILexicalBlock(scope: !739, file: !1, line: 718, column: 8)
!793 = !DILocation(line: 718, column: 11, scope: !792)
!794 = !DILocation(line: 718, column: 23, scope: !792)
!795 = !DILocation(line: 718, column: 28, scope: !792)
!796 = !DILocation(line: 718, column: 38, scope: !792)
!797 = !DILocation(line: 718, column: 55, scope: !792)
!798 = !DILocation(line: 718, column: 42, scope: !792)
!799 = !DILocation(line: 718, column: 8, scope: !739)
!800 = !DILocation(line: 719, column: 19, scope: !801)
!801 = distinct !DILexicalBlock(scope: !792, file: !1, line: 718, column: 60)
!802 = !DILocation(line: 719, column: 23, scope: !801)
!803 = !DILocation(line: 719, column: 13, scope: !801)
!804 = !DILocation(line: 719, column: 44, scope: !801)
!805 = !DILocation(line: 719, column: 36, scope: !801)
!806 = !DILocation(line: 719, column: 46, scope: !801)
!807 = !DILocation(line: 719, column: 30, scope: !801)
!808 = !DILocation(line: 719, column: 28, scope: !801)
!809 = !DILocation(line: 720, column: 19, scope: !801)
!810 = !DILocation(line: 720, column: 23, scope: !801)
!811 = !DILocation(line: 720, column: 13, scope: !801)
!812 = !DILocation(line: 720, column: 44, scope: !801)
!813 = !DILocation(line: 720, column: 36, scope: !801)
!814 = !DILocation(line: 720, column: 46, scope: !801)
!815 = !DILocation(line: 720, column: 30, scope: !801)
!816 = !DILocation(line: 720, column: 28, scope: !801)
!817 = !DILocation(line: 721, column: 19, scope: !801)
!818 = !DILocation(line: 721, column: 23, scope: !801)
!819 = !DILocation(line: 721, column: 13, scope: !801)
!820 = !DILocation(line: 721, column: 44, scope: !801)
!821 = !DILocation(line: 721, column: 36, scope: !801)
!822 = !DILocation(line: 721, column: 46, scope: !801)
!823 = !DILocation(line: 721, column: 30, scope: !801)
!824 = !DILocation(line: 721, column: 28, scope: !801)
!825 = !DILocation(line: 722, column: 16, scope: !801)
!826 = !DILocation(line: 722, column: 28, scope: !801)
!827 = !DILocation(line: 722, column: 22, scope: !801)
!828 = !DILocation(line: 722, column: 40, scope: !801)
!829 = !DILocation(line: 722, column: 34, scope: !801)
!830 = !DILocation(line: 723, column: 15, scope: !831)
!831 = distinct !DILexicalBlock(scope: !801, file: !1, line: 723, column: 11)
!832 = !DILocation(line: 723, column: 11, scope: !801)
!833 = !DILocation(line: 724, column: 22, scope: !834)
!834 = distinct !DILexicalBlock(scope: !831, file: !1, line: 723, column: 21)
!835 = !DILocation(line: 724, column: 26, scope: !834)
!836 = !DILocation(line: 724, column: 16, scope: !834)
!837 = !DILocation(line: 724, column: 47, scope: !834)
!838 = !DILocation(line: 724, column: 39, scope: !834)
!839 = !DILocation(line: 724, column: 49, scope: !834)
!840 = !DILocation(line: 724, column: 33, scope: !834)
!841 = !DILocation(line: 724, column: 31, scope: !834)
!842 = !DILocation(line: 725, column: 20, scope: !834)
!843 = !DILocation(line: 725, column: 13, scope: !834)
!844 = !DILocation(line: 726, column: 7, scope: !834)
!845 = !DILocation(line: 0, scope: !801)
!846 = !DILocation(line: 727, column: 14, scope: !847)
!847 = distinct !DILexicalBlock(scope: !801, file: !1, line: 727, column: 11)
!848 = !DILocation(line: 727, column: 11, scope: !801)
!849 = !DILocation(line: 728, column: 20, scope: !850)
!850 = distinct !DILexicalBlock(scope: !851, file: !1, line: 728, column: 14)
!851 = distinct !DILexicalBlock(scope: !847, file: !1, line: 727, column: 22)
!852 = !DILocation(line: 728, column: 22, scope: !850)
!853 = !DILocation(line: 728, column: 14, scope: !851)
!854 = !DILocation(line: 729, column: 43, scope: !855)
!855 = distinct !DILexicalBlock(scope: !850, file: !1, line: 728, column: 27)
!856 = !DILocation(line: 729, column: 24, scope: !855)
!857 = !DILocation(line: 729, column: 13, scope: !855)
!858 = !DILocation(line: 729, column: 35, scope: !855)
!859 = !DILocation(line: 730, column: 24, scope: !855)
!860 = !DILocation(line: 731, column: 10, scope: !855)
!861 = !DILocation(line: 732, column: 43, scope: !862)
!862 = distinct !DILexicalBlock(scope: !850, file: !1, line: 731, column: 17)
!863 = !DILocation(line: 732, column: 24, scope: !862)
!864 = !DILocation(line: 732, column: 13, scope: !862)
!865 = !DILocation(line: 732, column: 35, scope: !862)
!866 = !DILocation(line: 733, column: 24, scope: !862)
!867 = !DILocation(line: 735, column: 7, scope: !851)
!868 = !DILocation(line: 736, column: 4, scope: !801)
!869 = !DILocation(line: 747, column: 12, scope: !870)
!870 = distinct !DILexicalBlock(scope: !739, file: !1, line: 747, column: 8)
!871 = !DILocation(line: 747, column: 18, scope: !870)
!872 = !DILocation(line: 747, column: 28, scope: !870)
!873 = !DILocation(line: 747, column: 31, scope: !870)
!874 = !DILocation(line: 747, column: 41, scope: !870)
!875 = !DILocation(line: 748, column: 12, scope: !870)
!876 = !DILocation(line: 748, column: 18, scope: !870)
!877 = !DILocation(line: 748, column: 28, scope: !870)
!878 = !DILocation(line: 748, column: 31, scope: !870)
!879 = !DILocation(line: 748, column: 40, scope: !870)
!880 = !DILocation(line: 749, column: 16, scope: !870)
!881 = !DILocation(line: 749, column: 20, scope: !870)
!882 = !DILocation(line: 749, column: 24, scope: !870)
!883 = !DILocation(line: 749, column: 10, scope: !870)
!884 = !DILocation(line: 749, column: 29, scope: !870)
!885 = !DILocation(line: 749, column: 51, scope: !870)
!886 = !DILocation(line: 749, column: 43, scope: !870)
!887 = !DILocation(line: 749, column: 53, scope: !870)
!888 = !DILocation(line: 749, column: 57, scope: !870)
!889 = !DILocation(line: 749, column: 37, scope: !870)
!890 = !DILocation(line: 749, column: 35, scope: !870)
!891 = !DILocation(line: 747, column: 8, scope: !739)
!892 = !DILocation(line: 754, column: 26, scope: !893)
!893 = distinct !DILexicalBlock(scope: !870, file: !1, line: 753, column: 4)
!894 = !DILocation(line: 754, column: 35, scope: !893)
!895 = !DILocation(line: 754, column: 7, scope: !893)
!896 = !DILocation(line: 756, column: 4, scope: !893)
!897 = !DILocation(line: 757, column: 1, scope: !739)
!898 = distinct !DISubprogram(name: "heapsort_pairs", scope: !1, file: !1, line: 114, type: !899, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !901)
!899 = !DISubroutineType(types: !900)
!900 = !{null, !21, !7}
!901 = !{!902, !903, !904, !905}
!902 = !DILocalVariable(name: "a", arg: 1, scope: !898, file: !1, line: 114, type: !21)
!903 = !DILocalVariable(name: "n", arg: 2, scope: !898, file: !1, line: 114, type: !7)
!904 = !DILocalVariable(name: "k", scope: !898, file: !1, line: 117, type: !7)
!905 = !DILocalVariable(name: "v", scope: !898, file: !1, line: 117, type: !7)
!906 = !DILocation(line: 0, scope: !898)
!907 = !DILocation(line: 119, column: 15, scope: !908)
!908 = distinct !DILexicalBlock(scope: !898, file: !1, line: 119, column: 4)
!909 = !DILocation(line: 119, column: 22, scope: !910)
!910 = distinct !DILexicalBlock(scope: !908, file: !1, line: 119, column: 4)
!911 = !DILocation(line: 119, column: 4, scope: !908)
!912 = !DILocation(line: 120, column: 7, scope: !910)
!913 = !DILocation(line: 119, column: 29, scope: !910)
!914 = distinct !{!914, !911, !915}
!915 = !DILocation(line: 120, column: 29, scope: !908)
!916 = !DILocation(line: 121, column: 4, scope: !898)
!917 = !DILocation(line: 121, column: 13, scope: !898)
!918 = !DILocation(line: 122, column: 11, scope: !919)
!919 = distinct !DILexicalBlock(scope: !898, file: !1, line: 121, column: 18)
!920 = !DILocation(line: 125, column: 25, scope: !919)
!921 = !DILocation(line: 123, column: 14, scope: !919)
!922 = !DILocation(line: 123, column: 7, scope: !919)
!923 = !DILocation(line: 123, column: 12, scope: !919)
!924 = !DILocation(line: 124, column: 7, scope: !919)
!925 = !DILocation(line: 124, column: 16, scope: !919)
!926 = !DILocation(line: 125, column: 7, scope: !919)
!927 = distinct !{!927, !916, !928}
!928 = !DILocation(line: 126, column: 4, scope: !898)
!929 = !DILocation(line: 127, column: 1, scope: !898)
!930 = distinct !DISubprogram(name: "downheap_index", scope: !1, file: !1, line: 163, type: !931, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !933)
!931 = !DISubroutineType(types: !932)
!932 = !{null, !21, !7, !7, !38, !7, !7}
!933 = !{!934, !935, !936, !937, !938, !939, !940, !941}
!934 = !DILocalVariable(name: "a", arg: 1, scope: !930, file: !1, line: 163, type: !21)
!935 = !DILocalVariable(name: "n", arg: 2, scope: !930, file: !1, line: 163, type: !7)
!936 = !DILocalVariable(name: "k", arg: 3, scope: !930, file: !1, line: 163, type: !7)
!937 = !DILocalVariable(name: "x", arg: 4, scope: !930, file: !1, line: 163, type: !38)
!938 = !DILocalVariable(name: "p", arg: 5, scope: !930, file: !1, line: 163, type: !7)
!939 = !DILocalVariable(name: "dim", arg: 6, scope: !930, file: !1, line: 163, type: !7)
!940 = !DILocalVariable(name: "j", scope: !930, file: !1, line: 166, type: !7)
!941 = !DILocalVariable(name: "v", scope: !930, file: !1, line: 166, type: !7)
!942 = !DILocation(line: 0, scope: !930)
!943 = !DILocation(line: 168, column: 12, scope: !930)
!944 = !DILocation(line: 168, column: 8, scope: !930)
!945 = !DILocation(line: 169, column: 18, scope: !930)
!946 = !DILocation(line: 169, column: 13, scope: !930)
!947 = !DILocation(line: 169, column: 4, scope: !930)
!948 = !DILocation(line: 170, column: 13, scope: !949)
!949 = distinct !DILexicalBlock(scope: !930, file: !1, line: 169, column: 23)
!950 = !DILocation(line: 171, column: 14, scope: !951)
!951 = distinct !DILexicalBlock(scope: !949, file: !1, line: 171, column: 11)
!952 = !DILocation(line: 171, column: 19, scope: !951)
!953 = !DILocation(line: 171, column: 35, scope: !951)
!954 = !DILocation(line: 171, column: 31, scope: !951)
!955 = !DILocation(line: 171, column: 29, scope: !951)
!956 = !DILocation(line: 171, column: 40, scope: !951)
!957 = !DILocation(line: 171, column: 23, scope: !951)
!958 = !DILocation(line: 171, column: 55, scope: !951)
!959 = !DILocation(line: 171, column: 53, scope: !951)
!960 = !DILocation(line: 171, column: 60, scope: !951)
!961 = !DILocation(line: 171, column: 47, scope: !951)
!962 = !DILocation(line: 171, column: 45, scope: !951)
!963 = !DILocation(line: 171, column: 11, scope: !949)
!964 = !DILocation(line: 172, column: 11, scope: !951)
!965 = !DILocation(line: 172, column: 10, scope: !951)
!966 = !DILocation(line: 0, scope: !949)
!967 = !DILocation(line: 173, column: 17, scope: !968)
!968 = distinct !DILexicalBlock(scope: !949, file: !1, line: 173, column: 11)
!969 = !DILocation(line: 173, column: 21, scope: !968)
!970 = !DILocation(line: 173, column: 11, scope: !968)
!971 = !DILocation(line: 173, column: 41, scope: !968)
!972 = !DILocation(line: 173, column: 37, scope: !968)
!973 = !DILocation(line: 173, column: 35, scope: !968)
!974 = !DILocation(line: 173, column: 46, scope: !968)
!975 = !DILocation(line: 173, column: 29, scope: !968)
!976 = !DILocation(line: 173, column: 26, scope: !968)
!977 = !DILocation(line: 173, column: 11, scope: !949)
!978 = !DILocation(line: 174, column: 10, scope: !968)
!979 = !DILocation(line: 175, column: 22, scope: !949)
!980 = !DILocation(line: 175, column: 18, scope: !949)
!981 = !DILocation(line: 175, column: 11, scope: !949)
!982 = !DILocation(line: 175, column: 7, scope: !949)
!983 = !DILocation(line: 175, column: 16, scope: !949)
!984 = distinct !{!984, !947, !985}
!985 = !DILocation(line: 177, column: 4, scope: !930)
!986 = !DILocation(line: 178, column: 8, scope: !930)
!987 = !DILocation(line: 178, column: 4, scope: !930)
!988 = !DILocation(line: 178, column: 13, scope: !930)
!989 = !DILocation(line: 179, column: 1, scope: !930)
!990 = distinct !DISubprogram(name: "downheap_pairs", scope: !1, file: !1, line: 73, type: !23, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !991)
!991 = !{!992, !993, !994, !995, !996}
!992 = !DILocalVariable(name: "a", arg: 1, scope: !990, file: !1, line: 73, type: !21)
!993 = !DILocalVariable(name: "n", arg: 2, scope: !990, file: !1, line: 73, type: !7)
!994 = !DILocalVariable(name: "k", arg: 3, scope: !990, file: !1, line: 73, type: !7)
!995 = !DILocalVariable(name: "j", scope: !990, file: !1, line: 76, type: !7)
!996 = !DILocalVariable(name: "v", scope: !990, file: !1, line: 76, type: !7)
!997 = !DILocation(line: 0, scope: !990)
!998 = !DILocation(line: 78, column: 12, scope: !990)
!999 = !DILocation(line: 78, column: 8, scope: !990)
!1000 = !DILocation(line: 79, column: 18, scope: !990)
!1001 = !DILocation(line: 79, column: 13, scope: !990)
!1002 = !DILocation(line: 79, column: 4, scope: !990)
!1003 = !DILocation(line: 80, column: 13, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !990, file: !1, line: 79, column: 23)
!1005 = !DILocation(line: 81, column: 14, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 81, column: 11)
!1007 = !DILocation(line: 81, column: 19, scope: !1006)
!1008 = !DILocation(line: 81, column: 27, scope: !1006)
!1009 = !DILocation(line: 81, column: 23, scope: !1006)
!1010 = !DILocation(line: 81, column: 34, scope: !1006)
!1011 = !DILocation(line: 81, column: 32, scope: !1006)
!1012 = !DILocation(line: 81, column: 11, scope: !1004)
!1013 = !DILocation(line: 82, column: 11, scope: !1006)
!1014 = !DILocation(line: 82, column: 10, scope: !1006)
!1015 = !DILocation(line: 0, scope: !1004)
!1016 = !DILocation(line: 83, column: 20, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 83, column: 11)
!1018 = !DILocation(line: 83, column: 16, scope: !1017)
!1019 = !DILocation(line: 83, column: 13, scope: !1017)
!1020 = !DILocation(line: 83, column: 11, scope: !1004)
!1021 = !DILocation(line: 84, column: 10, scope: !1017)
!1022 = !DILocation(line: 85, column: 22, scope: !1004)
!1023 = !DILocation(line: 85, column: 18, scope: !1004)
!1024 = !DILocation(line: 85, column: 11, scope: !1004)
!1025 = !DILocation(line: 85, column: 7, scope: !1004)
!1026 = !DILocation(line: 85, column: 16, scope: !1004)
!1027 = distinct !{!1027, !1002, !1028}
!1028 = !DILocation(line: 87, column: 4, scope: !990)
!1029 = !DILocation(line: 88, column: 8, scope: !990)
!1030 = !DILocation(line: 88, column: 4, scope: !990)
!1031 = !DILocation(line: 88, column: 13, scope: !990)
!1032 = !DILocation(line: 89, column: 1, scope: !990)
