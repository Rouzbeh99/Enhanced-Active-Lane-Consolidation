; ModuleID = 'binpos.ll'
source_filename = "binpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [40 x i8] c"Couldn't read magic number from BINPOS\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fxyz\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"bad magic number \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"malloc error in binpos\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Could only read %d of %d atoms requested\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @readbinposhdr(%struct._IO_FILE* %0) #0 !dbg !78 {
  %2 = alloca [10 x i8], align 1
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !85, metadata !DIExpression()), !dbg !90
  %3 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !91
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %3) #9, !dbg !91
  call void @llvm.dbg.declare(metadata [10 x i8]* %2, metadata !86, metadata !DIExpression()), !dbg !92
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !93
  %5 = call i64 @fread(i8* nonnull %4, i64 1, i64 4, %struct._IO_FILE* %0) #9, !dbg !95
  %.not = icmp eq i64 %5, 4, !dbg !96
  br i1 %.not, label %9, label %6, !dbg !97

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !98, !tbaa !100
  %8 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %7) #10, !dbg !104
  call void @exit(i32 -1) #11, !dbg !105
  unreachable, !dbg !105

9:                                                ; preds = %1
  %10 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 4, !dbg !106
  store i8 0, i8* %10, align 1, !dbg !107, !tbaa !108
  %11 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !109
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %11, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 5), !dbg !111
  %.not1 = icmp eq i32 %bcmp, 0, !dbg !112
  br i1 %.not1, label %16, label %12, !dbg !113

12:                                               ; preds = %9
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !114, !tbaa !100
  %14 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !116
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* nonnull %14) #12, !dbg !117
  call void @exit(i32 -1) #11, !dbg !118
  unreachable, !dbg !118

16:                                               ; preds = %9
  %17 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !119
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %17) #9, !dbg !119
  ret i32 0, !dbg !120
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @readbinposfrm(i32 %0, double* %1, %struct._IO_FILE* %2) #0 !dbg !121 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !127, metadata !DIExpression()), !dbg !133
  store i32 %0, i32* %4, align 4, !tbaa !134
  call void @llvm.dbg.value(metadata double* %1, metadata !128, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !129, metadata !DIExpression()), !dbg !133
  %5 = bitcast i32* %4 to i8*, !dbg !136
  call void @llvm.dbg.value(metadata i32* %4, metadata !127, metadata !DIExpression(DW_OP_deref)), !dbg !133
  %6 = call i64 @fread(i8* nonnull %5, i64 4, i64 1, %struct._IO_FILE* %2) #9, !dbg !138
  %.not = icmp eq i64 %6, 1, !dbg !139
  br i1 %.not, label %7, label %41, !dbg !140

7:                                                ; preds = %3
  %8 = load i32, i32* %4, align 4, !dbg !141, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %8, metadata !127, metadata !DIExpression()), !dbg !133
  %9 = mul nsw i32 %8, 3, !dbg !142
  %10 = sext i32 %9 to i64, !dbg !143
  %11 = shl nsw i64 %10, 2, !dbg !144
  %12 = call noalias i8* @malloc(i64 %11) #9, !dbg !145
  %13 = bitcast i8* %12 to float*, !dbg !146
  call void @llvm.dbg.value(metadata float* %13, metadata !132, metadata !DIExpression()), !dbg !133
  %.not4 = icmp eq i8* %12, null, !dbg !147
  br i1 %.not4, label %14, label %17, !dbg !149

14:                                               ; preds = %7
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !150, !tbaa !100
  %16 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %15) #10, !dbg !152
  call void @exit(i32 1) #11, !dbg !153
  unreachable, !dbg !153

17:                                               ; preds = %7
  %18 = load i32, i32* %4, align 4, !dbg !154, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %18, metadata !127, metadata !DIExpression()), !dbg !133
  %19 = mul nsw i32 %18, 3, !dbg !156
  %20 = sext i32 %19 to i64, !dbg !157
  %21 = call i64 @fread(i8* nonnull %12, i64 4, i64 %20, %struct._IO_FILE* %2) #9, !dbg !158
  %22 = trunc i64 %21 to i32, !dbg !158
  call void @llvm.dbg.value(metadata i32 %22, metadata !130, metadata !DIExpression()), !dbg !133
  %23 = load i32, i32* %4, align 4, !dbg !159, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %23, metadata !127, metadata !DIExpression()), !dbg !133
  %24 = mul nsw i32 %23, 3, !dbg !160
  %.not5 = icmp eq i32 %24, %22, !dbg !161
  br i1 %.not5, label %30, label %25, !dbg !162

25:                                               ; preds = %17
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !163, !tbaa !100
  %27 = sdiv i32 %22, 3, !dbg !165
  %28 = load i32, i32* %4, align 4, !dbg !166, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %28, metadata !127, metadata !DIExpression()), !dbg !133
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %27, i32 %28) #12, !dbg !167
  call void @exit(i32 -1) #11, !dbg !168
  unreachable, !dbg !168

30:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i64 0, metadata !131, metadata !DIExpression()), !dbg !133
  %31 = load i32, i32* %4, align 4, !dbg !169, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %31, metadata !127, metadata !DIExpression()), !dbg !133
  %32 = icmp sgt i32 %31, 0, !dbg !172
  br i1 %32, label %.lr.ph, label %._crit_edge, !dbg !173

.lr.ph:                                           ; preds = %30, %.lr.ph
  %indvars.iv3 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %30 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !131, metadata !DIExpression()), !dbg !133
  %33 = getelementptr inbounds float, float* %13, i64 %indvars.iv3, !dbg !174
  %34 = load float, float* %33, align 4, !dbg !174, !tbaa !176
  %35 = fpext float %34 to double, !dbg !174
  %36 = getelementptr inbounds double, double* %1, i64 %indvars.iv3, !dbg !178
  store double %35, double* %36, align 8, !dbg !179, !tbaa !180
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1, !dbg !182
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !131, metadata !DIExpression()), !dbg !133
  %37 = load i32, i32* %4, align 4, !dbg !169, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %37, metadata !127, metadata !DIExpression()), !dbg !133
  %38 = mul nsw i32 %37, 3, !dbg !183
  %39 = sext i32 %38 to i64, !dbg !172
  %40 = icmp slt i64 %indvars.iv.next, %39, !dbg !172
  br i1 %40, label %.lr.ph, label %._crit_edge, !dbg !173, !llvm.loop !184

._crit_edge:                                      ; preds = %.lr.ph, %30
  call void @free(i8* %12) #9, !dbg !186
  br label %41, !dbg !187

41:                                               ; preds = %3, %._crit_edge
  %.0 = phi i32 [ 1, %._crit_edge ], [ 0, %3 ], !dbg !133
  ret i32 %.0, !dbg !188
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #6

; Function Attrs: nounwind
declare !dbg !6 dso_local void @free(i8*) #6

; Function Attrs: nounwind uwtable
define dso_local i32 @writebinposhdr(%struct._IO_FILE* %0) #0 !dbg !189 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !191, metadata !DIExpression()), !dbg !192
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %0), !dbg !193
  ret i32 0, !dbg !194
}

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #7

; Function Attrs: nounwind uwtable
define dso_local i32 @writebinposfrm(i32 %0, double* %1, %struct._IO_FILE* %2) #0 !dbg !195 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !197, metadata !DIExpression()), !dbg !202
  store i32 %0, i32* %4, align 4, !tbaa !134
  call void @llvm.dbg.value(metadata double* %1, metadata !198, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !199, metadata !DIExpression()), !dbg !202
  %5 = bitcast i32* %4 to i8*, !dbg !203
  call void @llvm.dbg.value(metadata i32* %4, metadata !197, metadata !DIExpression(DW_OP_deref)), !dbg !202
  %6 = call i64 @fwrite(i8* nonnull %5, i64 4, i64 1, %struct._IO_FILE* %2), !dbg !204
  %7 = load i32, i32* %4, align 4, !dbg !205, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %7, metadata !197, metadata !DIExpression()), !dbg !202
  %8 = mul nsw i32 %7, 3, !dbg !206
  %9 = sext i32 %8 to i64, !dbg !207
  %10 = shl nsw i64 %9, 2, !dbg !208
  %11 = call noalias i8* @malloc(i64 %10) #9, !dbg !209
  %12 = bitcast i8* %11 to float*, !dbg !210
  call void @llvm.dbg.value(metadata float* %12, metadata !200, metadata !DIExpression()), !dbg !202
  %.not = icmp eq i8* %11, null, !dbg !211
  br i1 %.not, label %13, label %16, !dbg !213

13:                                               ; preds = %3
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !214, !tbaa !100
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %14) #10, !dbg !216
  call void @exit(i32 1) #11, !dbg !217
  unreachable, !dbg !217

16:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i64 0, metadata !201, metadata !DIExpression()), !dbg !202
  %17 = load i32, i32* %4, align 4, !dbg !218, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %17, metadata !197, metadata !DIExpression()), !dbg !202
  %18 = icmp sgt i32 %17, 0, !dbg !221
  br i1 %18, label %.lr.ph, label %._crit_edge, !dbg !222

.lr.ph:                                           ; preds = %16, %.lr.ph
  %indvars.iv2 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %16 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !201, metadata !DIExpression()), !dbg !202
  %19 = getelementptr inbounds double, double* %1, i64 %indvars.iv2, !dbg !223
  %20 = load double, double* %19, align 8, !dbg !223, !tbaa !180
  %21 = fptrunc double %20 to float, !dbg !223
  %22 = getelementptr inbounds float, float* %12, i64 %indvars.iv2, !dbg !225
  store float %21, float* %22, align 4, !dbg !226, !tbaa !176
  %indvars.iv.next = add nuw nsw i64 %indvars.iv2, 1, !dbg !227
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !201, metadata !DIExpression()), !dbg !202
  %23 = load i32, i32* %4, align 4, !dbg !218, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %23, metadata !197, metadata !DIExpression()), !dbg !202
  %24 = mul nsw i32 %23, 3, !dbg !228
  %25 = sext i32 %24 to i64, !dbg !221
  %26 = icmp slt i64 %indvars.iv.next, %25, !dbg !221
  br i1 %26, label %.lr.ph, label %._crit_edge, !dbg !222, !llvm.loop !229

._crit_edge:                                      ; preds = %.lr.ph, %16
  %27 = load i32, i32* %4, align 4, !dbg !231, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %27, metadata !197, metadata !DIExpression()), !dbg !202
  %28 = mul nsw i32 %27, 3, !dbg !232
  %29 = sext i32 %28 to i64, !dbg !233
  %30 = call i64 @fwrite(i8* nonnull %11, i64 4, i64 %29, %struct._IO_FILE* %2), !dbg !234
  call void @free(i8* %11) #9, !dbg !235
  %31 = call i32 @fflush(%struct._IO_FILE* %2) #9, !dbg !236
  ret i32 0, !dbg !237
}

declare !dbg !11 dso_local i32 @fflush(%struct._IO_FILE*) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #8

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold }
attributes #11 = { noreturn nounwind }
attributes #12 = { cold nounwind }

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
!93 = !DILocation(line: 10, column: 13, scope: !94)
!94 = distinct !DILexicalBlock(scope: !78, file: !1, line: 10, column: 6)
!95 = !DILocation(line: 10, column: 6, scope: !94)
!96 = !DILocation(line: 10, column: 31, scope: !94)
!97 = !DILocation(line: 10, column: 6, scope: !78)
!98 = !DILocation(line: 11, column: 12, scope: !99)
!99 = distinct !DILexicalBlock(scope: !94, file: !1, line: 10, column: 37)
!100 = !{!101, !101, i64 0}
!101 = !{!"any pointer", !102, i64 0}
!102 = !{!"omnipotent char", !103, i64 0}
!103 = !{!"Simple C/C++ TBAA"}
!104 = !DILocation(line: 11, column: 3, scope: !99)
!105 = !DILocation(line: 12, column: 3, scope: !99)
!106 = !DILocation(line: 15, column: 2, scope: !78)
!107 = !DILocation(line: 15, column: 13, scope: !78)
!108 = !{!102, !102, i64 0}
!109 = !DILocation(line: 16, column: 14, scope: !110)
!110 = distinct !DILexicalBlock(scope: !78, file: !1, line: 16, column: 6)
!111 = !DILocation(line: 16, column: 6, scope: !110)
!112 = !DILocation(line: 16, column: 30, scope: !110)
!113 = !DILocation(line: 16, column: 6, scope: !78)
!114 = !DILocation(line: 17, column: 12, scope: !115)
!115 = distinct !DILexicalBlock(scope: !110, file: !1, line: 16, column: 36)
!116 = !DILocation(line: 17, column: 49, scope: !115)
!117 = !DILocation(line: 17, column: 3, scope: !115)
!118 = !DILocation(line: 18, column: 3, scope: !115)
!119 = !DILocation(line: 21, column: 1, scope: !78)
!120 = !DILocation(line: 20, column: 2, scope: !78)
!121 = distinct !DISubprogram(name: "readbinposfrm", scope: !1, file: !1, line: 23, type: !122, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !126)
!122 = !DISubroutineType(types: !123)
!123 = !{!15, !15, !124, !81}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!126 = !{!127, !128, !129, !130, !131, !132}
!127 = !DILocalVariable(name: "n_atom", arg: 1, scope: !121, file: !1, line: 23, type: !15)
!128 = !DILocalVariable(name: "apos", arg: 2, scope: !121, file: !1, line: 23, type: !124)
!129 = !DILocalVariable(name: "fp", arg: 3, scope: !121, file: !1, line: 23, type: !81)
!130 = !DILocalVariable(name: "count", scope: !121, file: !1, line: 26, type: !15)
!131 = !DILocalVariable(name: "i", scope: !121, file: !1, line: 26, type: !15)
!132 = !DILocalVariable(name: "aposf", scope: !121, file: !1, line: 27, type: !4)
!133 = !DILocation(line: 0, scope: !121)
!134 = !{!135, !135, i64 0}
!135 = !{!"int", !102, i64 0}
!136 = !DILocation(line: 29, column: 13, scope: !137)
!137 = distinct !DILexicalBlock(scope: !121, file: !1, line: 29, column: 6)
!138 = !DILocation(line: 29, column: 6, scope: !137)
!139 = !DILocation(line: 29, column: 45, scope: !137)
!140 = !DILocation(line: 29, column: 6, scope: !121)
!141 = !DILocation(line: 35, column: 31, scope: !121)
!142 = !DILocation(line: 35, column: 30, scope: !121)
!143 = !DILocation(line: 35, column: 29, scope: !121)
!144 = !DILocation(line: 35, column: 38, scope: !121)
!145 = !DILocation(line: 35, column: 21, scope: !121)
!146 = !DILocation(line: 35, column: 10, scope: !121)
!147 = !DILocation(line: 36, column: 7, scope: !148)
!148 = distinct !DILexicalBlock(scope: !121, file: !1, line: 36, column: 6)
!149 = !DILocation(line: 36, column: 6, scope: !121)
!150 = !DILocation(line: 36, column: 25, scope: !151)
!151 = distinct !DILexicalBlock(scope: !148, file: !1, line: 36, column: 14)
!152 = !DILocation(line: 36, column: 16, scope: !151)
!153 = !DILocation(line: 36, column: 63, scope: !151)
!154 = !DILocation(line: 37, column: 51, scope: !155)
!155 = distinct !DILexicalBlock(scope: !121, file: !1, line: 37, column: 6)
!156 = !DILocation(line: 37, column: 49, scope: !155)
!157 = !DILocation(line: 37, column: 47, scope: !155)
!158 = !DILocation(line: 37, column: 16, scope: !155)
!159 = !DILocation(line: 38, column: 10, scope: !155)
!160 = !DILocation(line: 38, column: 8, scope: !155)
!161 = !DILocation(line: 38, column: 3, scope: !155)
!162 = !DILocation(line: 37, column: 6, scope: !121)
!163 = !DILocation(line: 39, column: 12, scope: !164)
!164 = distinct !DILexicalBlock(scope: !155, file: !1, line: 38, column: 18)
!165 = !DILocation(line: 40, column: 10, scope: !164)
!166 = !DILocation(line: 40, column: 15, scope: !164)
!167 = !DILocation(line: 39, column: 3, scope: !164)
!168 = !DILocation(line: 41, column: 3, scope: !164)
!169 = !DILocation(line: 43, column: 16, scope: !170)
!170 = distinct !DILexicalBlock(scope: !171, file: !1, line: 43, column: 2)
!171 = distinct !DILexicalBlock(scope: !121, file: !1, line: 43, column: 2)
!172 = !DILocation(line: 43, column: 13, scope: !170)
!173 = !DILocation(line: 43, column: 2, scope: !171)
!174 = !DILocation(line: 44, column: 13, scope: !175)
!175 = distinct !DILexicalBlock(scope: !170, file: !1, line: 43, column: 29)
!176 = !{!177, !177, i64 0}
!177 = !{!"float", !102, i64 0}
!178 = !DILocation(line: 44, column: 3, scope: !175)
!179 = !DILocation(line: 44, column: 11, scope: !175)
!180 = !{!181, !181, i64 0}
!181 = !{!"double", !102, i64 0}
!182 = !DILocation(line: 43, column: 25, scope: !170)
!183 = !DILocation(line: 43, column: 15, scope: !170)
!184 = distinct !{!184, !173, !185}
!185 = !DILocation(line: 45, column: 2, scope: !171)
!186 = !DILocation(line: 46, column: 2, scope: !121)
!187 = !DILocation(line: 55, column: 2, scope: !121)
!188 = !DILocation(line: 56, column: 1, scope: !121)
!189 = distinct !DISubprogram(name: "writebinposhdr", scope: !1, file: !1, line: 58, type: !79, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !190)
!190 = !{!191}
!191 = !DILocalVariable(name: "fp", arg: 1, scope: !189, file: !1, line: 58, type: !81)
!192 = !DILocation(line: 0, scope: !189)
!193 = !DILocation(line: 61, column: 5, scope: !189)
!194 = !DILocation(line: 62, column: 2, scope: !189)
!195 = distinct !DISubprogram(name: "writebinposfrm", scope: !1, file: !1, line: 65, type: !122, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !196)
!196 = !{!197, !198, !199, !200, !201}
!197 = !DILocalVariable(name: "n_atom", arg: 1, scope: !195, file: !1, line: 65, type: !15)
!198 = !DILocalVariable(name: "apos", arg: 2, scope: !195, file: !1, line: 65, type: !124)
!199 = !DILocalVariable(name: "fp", arg: 3, scope: !195, file: !1, line: 65, type: !81)
!200 = !DILocalVariable(name: "aposf", scope: !195, file: !1, line: 67, type: !4)
!201 = !DILocalVariable(name: "i", scope: !195, file: !1, line: 68, type: !15)
!202 = !DILocation(line: 0, scope: !195)
!203 = !DILocation(line: 70, column: 10, scope: !195)
!204 = !DILocation(line: 70, column: 2, scope: !195)
!205 = !DILocation(line: 74, column: 31, scope: !195)
!206 = !DILocation(line: 74, column: 30, scope: !195)
!207 = !DILocation(line: 74, column: 29, scope: !195)
!208 = !DILocation(line: 74, column: 38, scope: !195)
!209 = !DILocation(line: 74, column: 21, scope: !195)
!210 = !DILocation(line: 74, column: 10, scope: !195)
!211 = !DILocation(line: 75, column: 7, scope: !212)
!212 = distinct !DILexicalBlock(scope: !195, file: !1, line: 75, column: 6)
!213 = !DILocation(line: 75, column: 6, scope: !195)
!214 = !DILocation(line: 75, column: 25, scope: !215)
!215 = distinct !DILexicalBlock(scope: !212, file: !1, line: 75, column: 14)
!216 = !DILocation(line: 75, column: 16, scope: !215)
!217 = !DILocation(line: 75, column: 63, scope: !215)
!218 = !DILocation(line: 76, column: 16, scope: !219)
!219 = distinct !DILexicalBlock(scope: !220, file: !1, line: 76, column: 2)
!220 = distinct !DILexicalBlock(scope: !195, file: !1, line: 76, column: 2)
!221 = !DILocation(line: 76, column: 13, scope: !219)
!222 = !DILocation(line: 76, column: 2, scope: !220)
!223 = !DILocation(line: 77, column: 14, scope: !224)
!224 = distinct !DILexicalBlock(scope: !219, file: !1, line: 76, column: 29)
!225 = !DILocation(line: 77, column: 3, scope: !224)
!226 = !DILocation(line: 77, column: 12, scope: !224)
!227 = !DILocation(line: 76, column: 25, scope: !219)
!228 = !DILocation(line: 76, column: 15, scope: !219)
!229 = distinct !{!229, !222, !230}
!230 = !DILocation(line: 78, column: 2, scope: !220)
!231 = !DILocation(line: 79, column: 38, scope: !195)
!232 = !DILocation(line: 79, column: 36, scope: !195)
!233 = !DILocation(line: 79, column: 34, scope: !195)
!234 = !DILocation(line: 79, column: 2, scope: !195)
!235 = !DILocation(line: 80, column: 2, scope: !195)
!236 = !DILocation(line: 84, column: 2, scope: !195)
!237 = !DILocation(line: 85, column: 2, scope: !195)
