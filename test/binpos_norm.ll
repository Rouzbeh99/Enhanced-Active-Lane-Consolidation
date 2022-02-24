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
  %3 = bitcast [10 x i8]* %2 to i8*, !dbg !91
  call void @llvm.lifetime.start.p0i8(i64 10, i8* %3) #7, !dbg !91
  call void @llvm.dbg.declare(metadata [10 x i8]* %2, metadata !86, metadata !DIExpression()), !dbg !92
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !93
  %5 = call i64 @fread(i8* %4, i64 1, i64 4, %struct._IO_FILE* %0), !dbg !95
  %6 = icmp ne i64 %5, 4, !dbg !96
  br i1 %6, label %7, label %10, !dbg !97

7:                                                ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !98, !tbaa !100
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0)), !dbg !104
  call void @exit(i32 -1) #8, !dbg !105
  unreachable, !dbg !105

10:                                               ; preds = %1
  %11 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 4, !dbg !106
  store i8 0, i8* %11, align 1, !dbg !107, !tbaa !108
  %12 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !109
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !111
  %14 = icmp ne i32 %13, 0, !dbg !112
  br i1 %14, label %15, label %19, !dbg !113

15:                                               ; preds = %10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !114, !tbaa !100
  %17 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !116
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %17), !dbg !117
  call void @exit(i32 -1) #8, !dbg !118
  unreachable, !dbg !118

19:                                               ; preds = %10
  %20 = bitcast [10 x i8]* %2 to i8*, !dbg !119
  call void @llvm.lifetime.end.p0i8(i64 10, i8* %20) #7, !dbg !119
  ret i32 0, !dbg !120
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @readbinposfrm(i32 %0, double* %1, %struct._IO_FILE* %2) #0 !dbg !121 {
  %4 = alloca i32, align 4
  store i32 %0, i32* %4, align 4, !tbaa !133
  call void @llvm.dbg.declare(metadata i32* %4, metadata !127, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.value(metadata double* %1, metadata !128, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !129, metadata !DIExpression()), !dbg !136
  %5 = bitcast i32* %4 to i8*, !dbg !137
  %6 = call i64 @fread(i8* %5, i64 4, i64 1, %struct._IO_FILE* %2), !dbg !139
  %7 = icmp ne i64 %6, 1, !dbg !140
  br i1 %7, label %8, label %9, !dbg !141

8:                                                ; preds = %3
  br label %52, !dbg !142

9:                                                ; preds = %3
  %10 = load i32, i32* %4, align 4, !dbg !144, !tbaa !133
  %11 = mul nsw i32 3, %10, !dbg !145
  %12 = sext i32 %11 to i64, !dbg !146
  %13 = mul i64 %12, 4, !dbg !147
  %14 = call noalias i8* @malloc(i64 %13) #7, !dbg !148
  %15 = bitcast i8* %14 to float*, !dbg !149
  call void @llvm.dbg.value(metadata float* %15, metadata !132, metadata !DIExpression()), !dbg !136
  %16 = icmp ne float* %15, null, !dbg !150
  br i1 %16, label %20, label %17, !dbg !152

17:                                               ; preds = %9
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !153, !tbaa !100
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)), !dbg !155
  call void @exit(i32 1) #8, !dbg !156
  unreachable, !dbg !156

20:                                               ; preds = %9
  %21 = bitcast float* %15 to i8*, !dbg !157
  %22 = load i32, i32* %4, align 4, !dbg !159, !tbaa !133
  %23 = mul nsw i32 3, %22, !dbg !160
  %24 = sext i32 %23 to i64, !dbg !161
  %25 = call i64 @fread(i8* %21, i64 4, i64 %24, %struct._IO_FILE* %2), !dbg !162
  %26 = trunc i64 %25 to i32, !dbg !162
  call void @llvm.dbg.value(metadata i32 %26, metadata !130, metadata !DIExpression()), !dbg !136
  %27 = load i32, i32* %4, align 4, !dbg !163, !tbaa !133
  %28 = mul nsw i32 3, %27, !dbg !164
  %29 = icmp ne i32 %26, %28, !dbg !165
  br i1 %29, label %30, label %35, !dbg !166

30:                                               ; preds = %20
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !167, !tbaa !100
  %32 = sdiv i32 %26, 3, !dbg !169
  %33 = load i32, i32* %4, align 4, !dbg !170, !tbaa !133
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %32, i32 %33), !dbg !171
  call void @exit(i32 -1) #8, !dbg !172
  unreachable, !dbg !172

35:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i32 0, metadata !131, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.value(metadata i64 0, metadata !131, metadata !DIExpression()), !dbg !136
  %36 = load i32, i32* %4, align 4, !dbg !173, !tbaa !133
  %37 = mul nsw i32 3, %36, !dbg !176
  %38 = sext i32 %37 to i64, !dbg !177
  %39 = icmp slt i64 0, %38, !dbg !177
  br i1 %39, label %.lr.ph, label %50, !dbg !178

.lr.ph:                                           ; preds = %35
  br label %40, !dbg !178

40:                                               ; preds = %.lr.ph, %45
  %indvars.iv2 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %45 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !131, metadata !DIExpression()), !dbg !136
  %41 = getelementptr inbounds float, float* %15, i64 %indvars.iv2, !dbg !179
  %42 = load float, float* %41, align 4, !dbg !179, !tbaa !181
  %43 = fpext float %42 to double, !dbg !179
  %44 = getelementptr inbounds double, double* %1, i64 %indvars.iv2, !dbg !183
  store double %43, double* %44, align 8, !dbg !184, !tbaa !185
  br label %45, !dbg !187

45:                                               ; preds = %40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv2, 1, !dbg !188
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !131, metadata !DIExpression()), !dbg !136
  %46 = load i32, i32* %4, align 4, !dbg !173, !tbaa !133
  %47 = mul nsw i32 3, %46, !dbg !176
  %48 = sext i32 %47 to i64, !dbg !177
  %49 = icmp slt i64 %indvars.iv.next, %48, !dbg !177
  br i1 %49, label %40, label %._crit_edge, !dbg !178, !llvm.loop !189

._crit_edge:                                      ; preds = %45
  br label %50, !dbg !178

50:                                               ; preds = %._crit_edge, %35
  %51 = bitcast float* %15 to i8*, !dbg !191
  call void @free(i8* %51) #7, !dbg !192
  br label %52, !dbg !193

52:                                               ; preds = %50, %8
  %.0 = phi i32 [ 0, %8 ], [ 1, %50 ], !dbg !136
  ret i32 %.0, !dbg !194
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #6

; Function Attrs: nounwind
declare !dbg !6 dso_local void @free(i8*) #6

; Function Attrs: nounwind uwtable
define dso_local i32 @writebinposhdr(%struct._IO_FILE* %0) #0 !dbg !195 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !197, metadata !DIExpression()), !dbg !198
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %0), !dbg !199
  ret i32 0, !dbg !200
}

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @writebinposfrm(i32 %0, double* %1, %struct._IO_FILE* %2) #0 !dbg !201 {
  %4 = alloca i32, align 4
  store i32 %0, i32* %4, align 4, !tbaa !133
  call void @llvm.dbg.declare(metadata i32* %4, metadata !203, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double* %1, metadata !204, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !205, metadata !DIExpression()), !dbg !209
  %5 = bitcast i32* %4 to i8*, !dbg !210
  %6 = call i64 @fwrite(i8* %5, i64 4, i64 1, %struct._IO_FILE* %2), !dbg !211
  %7 = load i32, i32* %4, align 4, !dbg !212, !tbaa !133
  %8 = mul nsw i32 3, %7, !dbg !213
  %9 = sext i32 %8 to i64, !dbg !214
  %10 = mul i64 %9, 4, !dbg !215
  %11 = call noalias i8* @malloc(i64 %10) #7, !dbg !216
  %12 = bitcast i8* %11 to float*, !dbg !217
  call void @llvm.dbg.value(metadata float* %12, metadata !206, metadata !DIExpression()), !dbg !209
  %13 = icmp ne float* %12, null, !dbg !218
  br i1 %13, label %17, label %14, !dbg !220

14:                                               ; preds = %3
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !221, !tbaa !100
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)), !dbg !223
  call void @exit(i32 1) #8, !dbg !224
  unreachable, !dbg !224

17:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 0, metadata !207, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata i64 0, metadata !207, metadata !DIExpression()), !dbg !209
  %18 = load i32, i32* %4, align 4, !dbg !225, !tbaa !133
  %19 = mul nsw i32 3, %18, !dbg !228
  %20 = sext i32 %19 to i64, !dbg !229
  %21 = icmp slt i64 0, %20, !dbg !229
  br i1 %21, label %.lr.ph, label %32, !dbg !230

.lr.ph:                                           ; preds = %17
  br label %22, !dbg !230

22:                                               ; preds = %.lr.ph, %27
  %indvars.iv1 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %27 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !207, metadata !DIExpression()), !dbg !209
  %23 = getelementptr inbounds double, double* %1, i64 %indvars.iv1, !dbg !231
  %24 = load double, double* %23, align 8, !dbg !231, !tbaa !185
  %25 = fptrunc double %24 to float, !dbg !231
  %26 = getelementptr inbounds float, float* %12, i64 %indvars.iv1, !dbg !233
  store float %25, float* %26, align 4, !dbg !234, !tbaa !181
  br label %27, !dbg !235

27:                                               ; preds = %22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv1, 1, !dbg !236
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !207, metadata !DIExpression()), !dbg !209
  %28 = load i32, i32* %4, align 4, !dbg !225, !tbaa !133
  %29 = mul nsw i32 3, %28, !dbg !228
  %30 = sext i32 %29 to i64, !dbg !229
  %31 = icmp slt i64 %indvars.iv.next, %30, !dbg !229
  br i1 %31, label %22, label %._crit_edge, !dbg !230, !llvm.loop !237

._crit_edge:                                      ; preds = %27
  br label %32, !dbg !230

32:                                               ; preds = %._crit_edge, %17
  %33 = bitcast float* %12 to i8*, !dbg !239
  %34 = load i32, i32* %4, align 4, !dbg !240, !tbaa !133
  %35 = mul nsw i32 3, %34, !dbg !241
  %36 = sext i32 %35 to i64, !dbg !242
  %37 = call i64 @fwrite(i8* %33, i64 4, i64 %36, %struct._IO_FILE* %2), !dbg !243
  %38 = bitcast float* %12 to i8*, !dbg !244
  call void @free(i8* %38) #7, !dbg !245
  %39 = call i32 @fflush(%struct._IO_FILE* %2), !dbg !246
  ret i32 0, !dbg !247
}

declare !dbg !11 dso_local i32 @fflush(%struct._IO_FILE*) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

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
!133 = !{!134, !134, i64 0}
!134 = !{!"int", !102, i64 0}
!135 = !DILocation(line: 23, column: 24, scope: !121)
!136 = !DILocation(line: 0, scope: !121)
!137 = !DILocation(line: 29, column: 13, scope: !138)
!138 = distinct !DILexicalBlock(scope: !121, file: !1, line: 29, column: 6)
!139 = !DILocation(line: 29, column: 6, scope: !138)
!140 = !DILocation(line: 29, column: 45, scope: !138)
!141 = !DILocation(line: 29, column: 6, scope: !121)
!142 = !DILocation(line: 30, column: 3, scope: !143)
!143 = distinct !DILexicalBlock(scope: !138, file: !1, line: 29, column: 52)
!144 = !DILocation(line: 35, column: 31, scope: !121)
!145 = !DILocation(line: 35, column: 30, scope: !121)
!146 = !DILocation(line: 35, column: 29, scope: !121)
!147 = !DILocation(line: 35, column: 38, scope: !121)
!148 = !DILocation(line: 35, column: 21, scope: !121)
!149 = !DILocation(line: 35, column: 10, scope: !121)
!150 = !DILocation(line: 36, column: 7, scope: !151)
!151 = distinct !DILexicalBlock(scope: !121, file: !1, line: 36, column: 6)
!152 = !DILocation(line: 36, column: 6, scope: !121)
!153 = !DILocation(line: 36, column: 25, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !1, line: 36, column: 14)
!155 = !DILocation(line: 36, column: 16, scope: !154)
!156 = !DILocation(line: 36, column: 63, scope: !154)
!157 = !DILocation(line: 37, column: 23, scope: !158)
!158 = distinct !DILexicalBlock(scope: !121, file: !1, line: 37, column: 6)
!159 = !DILocation(line: 37, column: 51, scope: !158)
!160 = !DILocation(line: 37, column: 49, scope: !158)
!161 = !DILocation(line: 37, column: 47, scope: !158)
!162 = !DILocation(line: 37, column: 16, scope: !158)
!163 = !DILocation(line: 38, column: 10, scope: !158)
!164 = !DILocation(line: 38, column: 8, scope: !158)
!165 = !DILocation(line: 38, column: 3, scope: !158)
!166 = !DILocation(line: 37, column: 6, scope: !121)
!167 = !DILocation(line: 39, column: 12, scope: !168)
!168 = distinct !DILexicalBlock(scope: !158, file: !1, line: 38, column: 18)
!169 = !DILocation(line: 40, column: 10, scope: !168)
!170 = !DILocation(line: 40, column: 15, scope: !168)
!171 = !DILocation(line: 39, column: 3, scope: !168)
!172 = !DILocation(line: 41, column: 3, scope: !168)
!173 = !DILocation(line: 43, column: 16, scope: !174)
!174 = distinct !DILexicalBlock(scope: !175, file: !1, line: 43, column: 2)
!175 = distinct !DILexicalBlock(scope: !121, file: !1, line: 43, column: 2)
!176 = !DILocation(line: 43, column: 15, scope: !174)
!177 = !DILocation(line: 43, column: 13, scope: !174)
!178 = !DILocation(line: 43, column: 2, scope: !175)
!179 = !DILocation(line: 44, column: 13, scope: !180)
!180 = distinct !DILexicalBlock(scope: !174, file: !1, line: 43, column: 29)
!181 = !{!182, !182, i64 0}
!182 = !{!"float", !102, i64 0}
!183 = !DILocation(line: 44, column: 3, scope: !180)
!184 = !DILocation(line: 44, column: 11, scope: !180)
!185 = !{!186, !186, i64 0}
!186 = !{!"double", !102, i64 0}
!187 = !DILocation(line: 45, column: 2, scope: !180)
!188 = !DILocation(line: 43, column: 25, scope: !174)
!189 = distinct !{!189, !178, !190}
!190 = !DILocation(line: 45, column: 2, scope: !175)
!191 = !DILocation(line: 46, column: 8, scope: !121)
!192 = !DILocation(line: 46, column: 2, scope: !121)
!193 = !DILocation(line: 55, column: 2, scope: !121)
!194 = !DILocation(line: 56, column: 1, scope: !121)
!195 = distinct !DISubprogram(name: "writebinposhdr", scope: !1, file: !1, line: 58, type: !79, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !196)
!196 = !{!197}
!197 = !DILocalVariable(name: "fp", arg: 1, scope: !195, file: !1, line: 58, type: !81)
!198 = !DILocation(line: 0, scope: !195)
!199 = !DILocation(line: 61, column: 5, scope: !195)
!200 = !DILocation(line: 62, column: 2, scope: !195)
!201 = distinct !DISubprogram(name: "writebinposfrm", scope: !1, file: !1, line: 65, type: !122, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!202 = !{!203, !204, !205, !206, !207}
!203 = !DILocalVariable(name: "n_atom", arg: 1, scope: !201, file: !1, line: 65, type: !15)
!204 = !DILocalVariable(name: "apos", arg: 2, scope: !201, file: !1, line: 65, type: !124)
!205 = !DILocalVariable(name: "fp", arg: 3, scope: !201, file: !1, line: 65, type: !81)
!206 = !DILocalVariable(name: "aposf", scope: !201, file: !1, line: 67, type: !4)
!207 = !DILocalVariable(name: "i", scope: !201, file: !1, line: 68, type: !15)
!208 = !DILocation(line: 65, column: 25, scope: !201)
!209 = !DILocation(line: 0, scope: !201)
!210 = !DILocation(line: 70, column: 10, scope: !201)
!211 = !DILocation(line: 70, column: 2, scope: !201)
!212 = !DILocation(line: 74, column: 31, scope: !201)
!213 = !DILocation(line: 74, column: 30, scope: !201)
!214 = !DILocation(line: 74, column: 29, scope: !201)
!215 = !DILocation(line: 74, column: 38, scope: !201)
!216 = !DILocation(line: 74, column: 21, scope: !201)
!217 = !DILocation(line: 74, column: 10, scope: !201)
!218 = !DILocation(line: 75, column: 7, scope: !219)
!219 = distinct !DILexicalBlock(scope: !201, file: !1, line: 75, column: 6)
!220 = !DILocation(line: 75, column: 6, scope: !201)
!221 = !DILocation(line: 75, column: 25, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !1, line: 75, column: 14)
!223 = !DILocation(line: 75, column: 16, scope: !222)
!224 = !DILocation(line: 75, column: 63, scope: !222)
!225 = !DILocation(line: 76, column: 16, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !1, line: 76, column: 2)
!227 = distinct !DILexicalBlock(scope: !201, file: !1, line: 76, column: 2)
!228 = !DILocation(line: 76, column: 15, scope: !226)
!229 = !DILocation(line: 76, column: 13, scope: !226)
!230 = !DILocation(line: 76, column: 2, scope: !227)
!231 = !DILocation(line: 77, column: 14, scope: !232)
!232 = distinct !DILexicalBlock(scope: !226, file: !1, line: 76, column: 29)
!233 = !DILocation(line: 77, column: 3, scope: !232)
!234 = !DILocation(line: 77, column: 12, scope: !232)
!235 = !DILocation(line: 78, column: 2, scope: !232)
!236 = !DILocation(line: 76, column: 25, scope: !226)
!237 = distinct !{!237, !230, !238}
!238 = !DILocation(line: 78, column: 2, scope: !227)
!239 = !DILocation(line: 79, column: 10, scope: !201)
!240 = !DILocation(line: 79, column: 38, scope: !201)
!241 = !DILocation(line: 79, column: 36, scope: !201)
!242 = !DILocation(line: 79, column: 34, scope: !201)
!243 = !DILocation(line: 79, column: 2, scope: !201)
!244 = !DILocation(line: 80, column: 8, scope: !201)
!245 = !DILocation(line: 80, column: 2, scope: !201)
!246 = !DILocation(line: 84, column: 2, scope: !201)
!247 = !DILocation(line: 85, column: 2, scope: !201)
