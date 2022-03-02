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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readbinposhdr(%struct._IO_FILE* %0) #0 !dbg !10 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca [10 x i8], align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !76, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata [10 x i8]* %3, metadata !78, metadata !DIExpression()), !dbg !82
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0, !dbg !83
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !85
  %6 = call i64 @fread(i8* %4, i64 1, i64 4, %struct._IO_FILE* %5), !dbg !86
  %7 = icmp ne i64 %6, 4, !dbg !87
  br i1 %7, label %8, label %11, !dbg !88

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !89
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0)), !dbg !91
  call void @exit(i32 -1) #6, !dbg !92
  unreachable, !dbg !92

11:                                               ; preds = %1
  %12 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 4, !dbg !93
  store i8 0, i8* %12, align 1, !dbg !94
  %13 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0, !dbg !95
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !97
  %15 = icmp ne i32 %14, 0, !dbg !98
  br i1 %15, label %16, label %20, !dbg !99

16:                                               ; preds = %11
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !100
  %18 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0, !dbg !102
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %18), !dbg !103
  call void @exit(i32 -1) #6, !dbg !104
  unreachable, !dbg !104

20:                                               ; preds = %11
  ret i32 0, !dbg !105
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readbinposfrm(i32 %0, double* %1, %struct._IO_FILE* %2) #0 !dbg !106 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !111, metadata !DIExpression()), !dbg !112
  store double* %1, double** %6, align 8
  call void @llvm.dbg.declare(metadata double** %6, metadata !113, metadata !DIExpression()), !dbg !114
  store %struct._IO_FILE* %2, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !115, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata i32* %8, metadata !117, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata i32* %9, metadata !119, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata float** %10, metadata !121, metadata !DIExpression()), !dbg !122
  %11 = bitcast i32* %5 to i8*, !dbg !123
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !125
  %13 = call i64 @fread(i8* %11, i64 4, i64 1, %struct._IO_FILE* %12), !dbg !126
  %14 = icmp ne i64 %13, 1, !dbg !127
  br i1 %14, label %15, label %16, !dbg !128

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !129
  br label %69, !dbg !129

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4, !dbg !131
  %18 = mul nsw i32 3, %17, !dbg !132
  %19 = sext i32 %18 to i64, !dbg !133
  %20 = mul i64 %19, 4, !dbg !134
  %21 = call noalias i8* @malloc(i64 %20) #8, !dbg !135
  %22 = bitcast i8* %21 to float*, !dbg !136
  store float* %22, float** %10, align 8, !dbg !137
  %23 = load float*, float** %10, align 8, !dbg !138
  %24 = icmp ne float* %23, null, !dbg !138
  br i1 %24, label %28, label %25, !dbg !140

25:                                               ; preds = %16
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !141
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)), !dbg !143
  call void @exit(i32 1) #6, !dbg !144
  unreachable, !dbg !144

28:                                               ; preds = %16
  %29 = load float*, float** %10, align 8, !dbg !145
  %30 = bitcast float* %29 to i8*, !dbg !145
  %31 = load i32, i32* %5, align 4, !dbg !147
  %32 = mul nsw i32 3, %31, !dbg !148
  %33 = sext i32 %32 to i64, !dbg !149
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !150
  %35 = call i64 @fread(i8* %30, i64 4, i64 %33, %struct._IO_FILE* %34), !dbg !151
  %36 = trunc i64 %35 to i32, !dbg !151
  store i32 %36, i32* %8, align 4, !dbg !152
  %37 = load i32, i32* %5, align 4, !dbg !153
  %38 = mul nsw i32 3, %37, !dbg !154
  %39 = icmp ne i32 %36, %38, !dbg !155
  br i1 %39, label %40, label %46, !dbg !156

40:                                               ; preds = %28
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !157
  %42 = load i32, i32* %8, align 4, !dbg !159
  %43 = sdiv i32 %42, 3, !dbg !160
  %44 = load i32, i32* %5, align 4, !dbg !161
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %43, i32 %44), !dbg !162
  call void @exit(i32 -1) #6, !dbg !163
  unreachable, !dbg !163

46:                                               ; preds = %28
  store i32 0, i32* %9, align 4, !dbg !164
  br label %47, !dbg !166

47:                                               ; preds = %63, %46
  %48 = load i32, i32* %9, align 4, !dbg !167
  %49 = load i32, i32* %5, align 4, !dbg !169
  %50 = mul nsw i32 3, %49, !dbg !170
  %51 = icmp slt i32 %48, %50, !dbg !171
  br i1 %51, label %52, label %66, !dbg !172

52:                                               ; preds = %47
  %53 = load float*, float** %10, align 8, !dbg !173
  %54 = load i32, i32* %9, align 4, !dbg !175
  %55 = sext i32 %54 to i64, !dbg !173
  %56 = getelementptr inbounds float, float* %53, i64 %55, !dbg !173
  %57 = load float, float* %56, align 4, !dbg !173
  %58 = fpext float %57 to double, !dbg !173
  %59 = load double*, double** %6, align 8, !dbg !176
  %60 = load i32, i32* %9, align 4, !dbg !177
  %61 = sext i32 %60 to i64, !dbg !176
  %62 = getelementptr inbounds double, double* %59, i64 %61, !dbg !176
  store double %58, double* %62, align 8, !dbg !178
  br label %63, !dbg !179

63:                                               ; preds = %52
  %64 = load i32, i32* %9, align 4, !dbg !180
  %65 = add nsw i32 %64, 1, !dbg !180
  store i32 %65, i32* %9, align 4, !dbg !180
  br label %47, !dbg !181, !llvm.loop !182

66:                                               ; preds = %47
  %67 = load float*, float** %10, align 8, !dbg !184
  %68 = bitcast float* %67 to i8*, !dbg !184
  call void @free(i8* %68) #8, !dbg !185
  store i32 1, i32* %4, align 4, !dbg !186
  br label %69, !dbg !186

69:                                               ; preds = %66, %15
  %70 = load i32, i32* %4, align 4, !dbg !187
  ret i32 %70, !dbg !187
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #5

; Function Attrs: nounwind
declare dso_local void @free(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @writebinposhdr(%struct._IO_FILE* %0) #0 !dbg !188 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !189, metadata !DIExpression()), !dbg !190
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !191
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %3), !dbg !192
  ret i32 0, !dbg !193
}

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @writebinposfrm(i32 %0, double* %1, %struct._IO_FILE* %2) #0 !dbg !194 {
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !195, metadata !DIExpression()), !dbg !196
  store double* %1, double** %5, align 8
  call void @llvm.dbg.declare(metadata double** %5, metadata !197, metadata !DIExpression()), !dbg !198
  store %struct._IO_FILE* %2, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !199, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.declare(metadata float** %7, metadata !201, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.declare(metadata i32* %8, metadata !203, metadata !DIExpression()), !dbg !204
  %9 = bitcast i32* %4 to i8*, !dbg !205
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !206
  %11 = call i64 @fwrite(i8* %9, i64 4, i64 1, %struct._IO_FILE* %10), !dbg !207
  %12 = load i32, i32* %4, align 4, !dbg !208
  %13 = mul nsw i32 3, %12, !dbg !209
  %14 = sext i32 %13 to i64, !dbg !210
  %15 = mul i64 %14, 4, !dbg !211
  %16 = call noalias i8* @malloc(i64 %15) #8, !dbg !212
  %17 = bitcast i8* %16 to float*, !dbg !213
  store float* %17, float** %7, align 8, !dbg !214
  %18 = load float*, float** %7, align 8, !dbg !215
  %19 = icmp ne float* %18, null, !dbg !215
  br i1 %19, label %23, label %20, !dbg !217

20:                                               ; preds = %3
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !218
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)), !dbg !220
  call void @exit(i32 1) #6, !dbg !221
  unreachable, !dbg !221

23:                                               ; preds = %3
  store i32 0, i32* %8, align 4, !dbg !222
  br label %24, !dbg !224

24:                                               ; preds = %40, %23
  %25 = load i32, i32* %8, align 4, !dbg !225
  %26 = load i32, i32* %4, align 4, !dbg !227
  %27 = mul nsw i32 3, %26, !dbg !228
  %28 = icmp slt i32 %25, %27, !dbg !229
  br i1 %28, label %29, label %43, !dbg !230

29:                                               ; preds = %24
  %30 = load double*, double** %5, align 8, !dbg !231
  %31 = load i32, i32* %8, align 4, !dbg !233
  %32 = sext i32 %31 to i64, !dbg !231
  %33 = getelementptr inbounds double, double* %30, i64 %32, !dbg !231
  %34 = load double, double* %33, align 8, !dbg !231
  %35 = fptrunc double %34 to float, !dbg !231
  %36 = load float*, float** %7, align 8, !dbg !234
  %37 = load i32, i32* %8, align 4, !dbg !235
  %38 = sext i32 %37 to i64, !dbg !234
  %39 = getelementptr inbounds float, float* %36, i64 %38, !dbg !234
  store float %35, float* %39, align 4, !dbg !236
  br label %40, !dbg !237

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4, !dbg !238
  %42 = add nsw i32 %41, 1, !dbg !238
  store i32 %42, i32* %8, align 4, !dbg !238
  br label %24, !dbg !239, !llvm.loop !240

43:                                               ; preds = %24
  %44 = load float*, float** %7, align 8, !dbg !242
  %45 = bitcast float* %44 to i8*, !dbg !242
  %46 = load i32, i32* %4, align 4, !dbg !243
  %47 = mul nsw i32 3, %46, !dbg !244
  %48 = sext i32 %47 to i64, !dbg !245
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !246
  %50 = call i64 @fwrite(i8* %45, i64 4, i64 %48, %struct._IO_FILE* %49), !dbg !247
  %51 = load float*, float** %7, align 8, !dbg !248
  %52 = bitcast float* %51 to i8*, !dbg !248
  call void @free(i8* %52) #8, !dbg !249
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !250
  %54 = call i32 @fflush(%struct._IO_FILE* %53), !dbg !251
  ret i32 0, !dbg !252
}

declare dso_local i32 @fflush(%struct._IO_FILE*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "binpos.c", directory: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 10.0.0-4ubuntu1 "}
!10 = distinct !DISubprogram(name: "readbinposhdr", scope: !1, file: !1, line: 6, type: !11, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !16, line: 7, baseType: !17)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !18, line: 49, size: 1728, elements: !19)
!18 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!19 = !{!20, !21, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !37, !39, !40, !41, !45, !47, !49, !53, !56, !58, !61, !64, !65, !67, !71, !72}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !17, file: !18, line: 51, baseType: !13, size: 32)
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
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !17, file: !18, line: 70, baseType: !38, size: 64, offset: 832)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !17, file: !18, line: 72, baseType: !13, size: 32, offset: 896)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !17, file: !18, line: 73, baseType: !13, size: 32, offset: 928)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !17, file: !18, line: 74, baseType: !42, size: 64, offset: 960)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !43, line: 152, baseType: !44)
!43 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!44 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !17, file: !18, line: 77, baseType: !46, size: 16, offset: 1024)
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !17, file: !18, line: 78, baseType: !48, size: 8, offset: 1040)
!48 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !17, file: !18, line: 79, baseType: !50, size: 8, offset: 1048)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 1)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !17, file: !18, line: 81, baseType: !54, size: 64, offset: 1088)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !18, line: 43, baseType: null)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !17, file: !18, line: 89, baseType: !57, size: 64, offset: 1152)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !43, line: 153, baseType: !44)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !17, file: !18, line: 91, baseType: !59, size: 64, offset: 1216)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !18, line: 37, flags: DIFlagFwdDecl)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !17, file: !18, line: 92, baseType: !62, size: 64, offset: 1280)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !18, line: 38, flags: DIFlagFwdDecl)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !17, file: !18, line: 93, baseType: !38, size: 64, offset: 1344)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !17, file: !18, line: 94, baseType: !66, size: 64, offset: 1408)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !17, file: !18, line: 95, baseType: !68, size: 64, offset: 1472)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 46, baseType: !70)
!69 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!70 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !17, file: !18, line: 96, baseType: !13, size: 32, offset: 1536)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !17, file: !18, line: 98, baseType: !73, size: 160, offset: 1568)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 20)
!76 = !DILocalVariable(name: "fp", arg: 1, scope: !10, file: !1, line: 6, type: !14)
!77 = !DILocation(line: 6, column: 26, scope: !10)
!78 = !DILocalVariable(name: "magic", scope: !10, file: !1, line: 8, type: !79)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 80, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 10)
!82 = !DILocation(line: 8, column: 7, scope: !10)
!83 = !DILocation(line: 10, column: 13, scope: !84)
!84 = distinct !DILexicalBlock(scope: !10, file: !1, line: 10, column: 6)
!85 = !DILocation(line: 10, column: 26, scope: !84)
!86 = !DILocation(line: 10, column: 6, scope: !84)
!87 = !DILocation(line: 10, column: 31, scope: !84)
!88 = !DILocation(line: 10, column: 6, scope: !10)
!89 = !DILocation(line: 11, column: 12, scope: !90)
!90 = distinct !DILexicalBlock(scope: !84, file: !1, line: 10, column: 37)
!91 = !DILocation(line: 11, column: 3, scope: !90)
!92 = !DILocation(line: 12, column: 3, scope: !90)
!93 = !DILocation(line: 15, column: 2, scope: !10)
!94 = !DILocation(line: 15, column: 13, scope: !10)
!95 = !DILocation(line: 16, column: 14, scope: !96)
!96 = distinct !DILexicalBlock(scope: !10, file: !1, line: 16, column: 6)
!97 = !DILocation(line: 16, column: 6, scope: !96)
!98 = !DILocation(line: 16, column: 30, scope: !96)
!99 = !DILocation(line: 16, column: 6, scope: !10)
!100 = !DILocation(line: 17, column: 12, scope: !101)
!101 = distinct !DILexicalBlock(scope: !96, file: !1, line: 16, column: 36)
!102 = !DILocation(line: 17, column: 49, scope: !101)
!103 = !DILocation(line: 17, column: 3, scope: !101)
!104 = !DILocation(line: 18, column: 3, scope: !101)
!105 = !DILocation(line: 20, column: 2, scope: !10)
!106 = distinct !DISubprogram(name: "readbinposfrm", scope: !1, file: !1, line: 23, type: !107, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!107 = !DISubroutineType(types: !108)
!108 = !{!13, !13, !109, !14}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!111 = !DILocalVariable(name: "n_atom", arg: 1, scope: !106, file: !1, line: 23, type: !13)
!112 = !DILocation(line: 23, column: 24, scope: !106)
!113 = !DILocalVariable(name: "apos", arg: 2, scope: !106, file: !1, line: 23, type: !109)
!114 = !DILocation(line: 23, column: 39, scope: !106)
!115 = !DILocalVariable(name: "fp", arg: 3, scope: !106, file: !1, line: 23, type: !14)
!116 = !DILocation(line: 23, column: 53, scope: !106)
!117 = !DILocalVariable(name: "count", scope: !106, file: !1, line: 26, type: !13)
!118 = !DILocation(line: 26, column: 6, scope: !106)
!119 = !DILocalVariable(name: "i", scope: !106, file: !1, line: 26, type: !13)
!120 = !DILocation(line: 26, column: 13, scope: !106)
!121 = !DILocalVariable(name: "aposf", scope: !106, file: !1, line: 27, type: !4)
!122 = !DILocation(line: 27, column: 9, scope: !106)
!123 = !DILocation(line: 29, column: 13, scope: !124)
!124 = distinct !DILexicalBlock(scope: !106, file: !1, line: 29, column: 6)
!125 = !DILocation(line: 29, column: 40, scope: !124)
!126 = !DILocation(line: 29, column: 6, scope: !124)
!127 = !DILocation(line: 29, column: 45, scope: !124)
!128 = !DILocation(line: 29, column: 6, scope: !106)
!129 = !DILocation(line: 30, column: 3, scope: !130)
!130 = distinct !DILexicalBlock(scope: !124, file: !1, line: 29, column: 52)
!131 = !DILocation(line: 35, column: 31, scope: !106)
!132 = !DILocation(line: 35, column: 30, scope: !106)
!133 = !DILocation(line: 35, column: 29, scope: !106)
!134 = !DILocation(line: 35, column: 38, scope: !106)
!135 = !DILocation(line: 35, column: 21, scope: !106)
!136 = !DILocation(line: 35, column: 10, scope: !106)
!137 = !DILocation(line: 35, column: 8, scope: !106)
!138 = !DILocation(line: 36, column: 7, scope: !139)
!139 = distinct !DILexicalBlock(scope: !106, file: !1, line: 36, column: 6)
!140 = !DILocation(line: 36, column: 6, scope: !106)
!141 = !DILocation(line: 36, column: 25, scope: !142)
!142 = distinct !DILexicalBlock(scope: !139, file: !1, line: 36, column: 14)
!143 = !DILocation(line: 36, column: 16, scope: !142)
!144 = !DILocation(line: 36, column: 63, scope: !142)
!145 = !DILocation(line: 37, column: 23, scope: !146)
!146 = distinct !DILexicalBlock(scope: !106, file: !1, line: 37, column: 6)
!147 = !DILocation(line: 37, column: 51, scope: !146)
!148 = !DILocation(line: 37, column: 49, scope: !146)
!149 = !DILocation(line: 37, column: 47, scope: !146)
!150 = !DILocation(line: 37, column: 59, scope: !146)
!151 = !DILocation(line: 37, column: 16, scope: !146)
!152 = !DILocation(line: 37, column: 14, scope: !146)
!153 = !DILocation(line: 38, column: 10, scope: !146)
!154 = !DILocation(line: 38, column: 8, scope: !146)
!155 = !DILocation(line: 38, column: 3, scope: !146)
!156 = !DILocation(line: 37, column: 6, scope: !106)
!157 = !DILocation(line: 39, column: 12, scope: !158)
!158 = distinct !DILexicalBlock(scope: !146, file: !1, line: 38, column: 18)
!159 = !DILocation(line: 40, column: 4, scope: !158)
!160 = !DILocation(line: 40, column: 10, scope: !158)
!161 = !DILocation(line: 40, column: 15, scope: !158)
!162 = !DILocation(line: 39, column: 3, scope: !158)
!163 = !DILocation(line: 41, column: 3, scope: !158)
!164 = !DILocation(line: 43, column: 8, scope: !165)
!165 = distinct !DILexicalBlock(scope: !106, file: !1, line: 43, column: 2)
!166 = !DILocation(line: 43, column: 7, scope: !165)
!167 = !DILocation(line: 43, column: 12, scope: !168)
!168 = distinct !DILexicalBlock(scope: !165, file: !1, line: 43, column: 2)
!169 = !DILocation(line: 43, column: 16, scope: !168)
!170 = !DILocation(line: 43, column: 15, scope: !168)
!171 = !DILocation(line: 43, column: 13, scope: !168)
!172 = !DILocation(line: 43, column: 2, scope: !165)
!173 = !DILocation(line: 44, column: 13, scope: !174)
!174 = distinct !DILexicalBlock(scope: !168, file: !1, line: 43, column: 29)
!175 = !DILocation(line: 44, column: 19, scope: !174)
!176 = !DILocation(line: 44, column: 3, scope: !174)
!177 = !DILocation(line: 44, column: 8, scope: !174)
!178 = !DILocation(line: 44, column: 11, scope: !174)
!179 = !DILocation(line: 45, column: 2, scope: !174)
!180 = !DILocation(line: 43, column: 25, scope: !168)
!181 = !DILocation(line: 43, column: 2, scope: !168)
!182 = distinct !{!182, !172, !183}
!183 = !DILocation(line: 45, column: 2, scope: !165)
!184 = !DILocation(line: 46, column: 8, scope: !106)
!185 = !DILocation(line: 46, column: 2, scope: !106)
!186 = !DILocation(line: 55, column: 2, scope: !106)
!187 = !DILocation(line: 56, column: 1, scope: !106)
!188 = distinct !DISubprogram(name: "writebinposhdr", scope: !1, file: !1, line: 58, type: !11, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!189 = !DILocalVariable(name: "fp", arg: 1, scope: !188, file: !1, line: 58, type: !14)
!190 = !DILocation(line: 58, column: 27, scope: !188)
!191 = !DILocation(line: 61, column: 27, scope: !188)
!192 = !DILocation(line: 61, column: 5, scope: !188)
!193 = !DILocation(line: 62, column: 2, scope: !188)
!194 = distinct !DISubprogram(name: "writebinposfrm", scope: !1, file: !1, line: 65, type: !107, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!195 = !DILocalVariable(name: "n_atom", arg: 1, scope: !194, file: !1, line: 65, type: !13)
!196 = !DILocation(line: 65, column: 25, scope: !194)
!197 = !DILocalVariable(name: "apos", arg: 2, scope: !194, file: !1, line: 65, type: !109)
!198 = !DILocation(line: 65, column: 40, scope: !194)
!199 = !DILocalVariable(name: "fp", arg: 3, scope: !194, file: !1, line: 65, type: !14)
!200 = !DILocation(line: 65, column: 54, scope: !194)
!201 = !DILocalVariable(name: "aposf", scope: !194, file: !1, line: 67, type: !4)
!202 = !DILocation(line: 67, column: 9, scope: !194)
!203 = !DILocalVariable(name: "i", scope: !194, file: !1, line: 68, type: !13)
!204 = !DILocation(line: 68, column: 6, scope: !194)
!205 = !DILocation(line: 70, column: 10, scope: !194)
!206 = !DILocation(line: 70, column: 37, scope: !194)
!207 = !DILocation(line: 70, column: 2, scope: !194)
!208 = !DILocation(line: 74, column: 31, scope: !194)
!209 = !DILocation(line: 74, column: 30, scope: !194)
!210 = !DILocation(line: 74, column: 29, scope: !194)
!211 = !DILocation(line: 74, column: 38, scope: !194)
!212 = !DILocation(line: 74, column: 21, scope: !194)
!213 = !DILocation(line: 74, column: 10, scope: !194)
!214 = !DILocation(line: 74, column: 8, scope: !194)
!215 = !DILocation(line: 75, column: 7, scope: !216)
!216 = distinct !DILexicalBlock(scope: !194, file: !1, line: 75, column: 6)
!217 = !DILocation(line: 75, column: 6, scope: !194)
!218 = !DILocation(line: 75, column: 25, scope: !219)
!219 = distinct !DILexicalBlock(scope: !216, file: !1, line: 75, column: 14)
!220 = !DILocation(line: 75, column: 16, scope: !219)
!221 = !DILocation(line: 75, column: 63, scope: !219)
!222 = !DILocation(line: 76, column: 8, scope: !223)
!223 = distinct !DILexicalBlock(scope: !194, file: !1, line: 76, column: 2)
!224 = !DILocation(line: 76, column: 7, scope: !223)
!225 = !DILocation(line: 76, column: 12, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !1, line: 76, column: 2)
!227 = !DILocation(line: 76, column: 16, scope: !226)
!228 = !DILocation(line: 76, column: 15, scope: !226)
!229 = !DILocation(line: 76, column: 13, scope: !226)
!230 = !DILocation(line: 76, column: 2, scope: !223)
!231 = !DILocation(line: 77, column: 14, scope: !232)
!232 = distinct !DILexicalBlock(scope: !226, file: !1, line: 76, column: 29)
!233 = !DILocation(line: 77, column: 19, scope: !232)
!234 = !DILocation(line: 77, column: 3, scope: !232)
!235 = !DILocation(line: 77, column: 9, scope: !232)
!236 = !DILocation(line: 77, column: 12, scope: !232)
!237 = !DILocation(line: 78, column: 2, scope: !232)
!238 = !DILocation(line: 76, column: 25, scope: !226)
!239 = !DILocation(line: 76, column: 2, scope: !226)
!240 = distinct !{!240, !230, !241}
!241 = !DILocation(line: 78, column: 2, scope: !223)
!242 = !DILocation(line: 79, column: 10, scope: !194)
!243 = !DILocation(line: 79, column: 38, scope: !194)
!244 = !DILocation(line: 79, column: 36, scope: !194)
!245 = !DILocation(line: 79, column: 34, scope: !194)
!246 = !DILocation(line: 79, column: 46, scope: !194)
!247 = !DILocation(line: 79, column: 2, scope: !194)
!248 = !DILocation(line: 80, column: 8, scope: !194)
!249 = !DILocation(line: 80, column: 2, scope: !194)
!250 = !DILocation(line: 84, column: 10, scope: !194)
!251 = !DILocation(line: 84, column: 2, scope: !194)
!252 = !DILocation(line: 85, column: 2, scope: !194)
