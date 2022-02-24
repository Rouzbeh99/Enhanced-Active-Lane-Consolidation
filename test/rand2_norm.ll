; ModuleID = 'rand2.ll'
source_filename = "rand2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.timeval = type { i64, i64 }

@seed3 = internal global i32 -1, align 4, !dbg !0
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"argument to setseed must be negative!\0A\00", align 1
@seed2 = internal global i32 0, align 4, !dbg !23
@iv = internal global [32 x i32] zeroinitializer, align 16, !dbg !25
@iy = internal global i32 0, align 4, !dbg !30

; Function Attrs: nounwind uwtable
define dso_local double @rand2() #0 !dbg !36 {
  %1 = call double @rand2a(i32* @seed3), !dbg !40
  ret double %1, !dbg !41
}

; Function Attrs: nounwind uwtable
define internal double @rand2a(i32* %0) #0 !dbg !42 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !47, metadata !DIExpression()), !dbg !51
  %2 = load i32, i32* %0, align 4, !dbg !52, !tbaa !54
  %3 = icmp sle i32 %2, 0, !dbg !58
  br i1 %3, label %4, label %38, !dbg !59

4:                                                ; preds = %1
  %5 = load i32, i32* %0, align 4, !dbg !60, !tbaa !54
  %6 = sub nsw i32 0, %5, !dbg !63
  %7 = icmp slt i32 %6, 1, !dbg !64
  br i1 %7, label %8, label %9, !dbg !65

8:                                                ; preds = %4
  store i32 1, i32* %0, align 4, !dbg !66, !tbaa !54
  br label %12, !dbg !67

9:                                                ; preds = %4
  %10 = load i32, i32* %0, align 4, !dbg !68, !tbaa !54
  %11 = sub nsw i32 0, %10, !dbg !69
  store i32 %11, i32* %0, align 4, !dbg !70, !tbaa !54
  br label %12

12:                                               ; preds = %9, %8
  %13 = load i32, i32* %0, align 4, !dbg !71, !tbaa !54
  store i32 %13, i32* @seed2, align 4, !dbg !72, !tbaa !54
  call void @llvm.dbg.value(metadata i32 39, metadata !48, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.value(metadata i64 39, metadata !48, metadata !DIExpression()), !dbg !51
  br label %14, !dbg !73

14:                                               ; preds = %12, %34
  %indvars.iv2 = phi i64 [ 39, %12 ], [ %indvars.iv.next, %34 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !48, metadata !DIExpression()), !dbg !51
  %15 = load i32, i32* %0, align 4, !dbg !75, !tbaa !54
  %16 = sdiv i32 %15, 53668, !dbg !78
  call void @llvm.dbg.value(metadata i32 %16, metadata !49, metadata !DIExpression()), !dbg !51
  %17 = load i32, i32* %0, align 4, !dbg !79, !tbaa !54
  %18 = mul nsw i32 %16, 53668, !dbg !80
  %19 = sub nsw i32 %17, %18, !dbg !81
  %20 = mul nsw i32 40014, %19, !dbg !82
  %21 = mul nsw i32 %16, 12211, !dbg !83
  %22 = sub nsw i32 %20, %21, !dbg !84
  store i32 %22, i32* %0, align 4, !dbg !85, !tbaa !54
  %23 = load i32, i32* %0, align 4, !dbg !86, !tbaa !54
  %24 = icmp slt i32 %23, 0, !dbg !88
  br i1 %24, label %25, label %28, !dbg !89

25:                                               ; preds = %14
  %26 = load i32, i32* %0, align 4, !dbg !90, !tbaa !54
  %27 = add nsw i32 %26, 2147483563, !dbg !90
  store i32 %27, i32* %0, align 4, !dbg !90, !tbaa !54
  br label %28, !dbg !91

28:                                               ; preds = %25, %14
  %29 = icmp slt i64 %indvars.iv2, 32, !dbg !92
  br i1 %29, label %30, label %33, !dbg !94

30:                                               ; preds = %28
  %31 = load i32, i32* %0, align 4, !dbg !95, !tbaa !54
  %32 = getelementptr inbounds [32 x i32], [32 x i32]* @iv, i64 0, i64 %indvars.iv2, !dbg !96
  store i32 %31, i32* %32, align 4, !dbg !97, !tbaa !54
  br label %33, !dbg !96

33:                                               ; preds = %30, %28
  %indvars.iv3 = phi i64 [ %indvars.iv2, %30 ], [ %indvars.iv2, %28 ]
  br label %34, !dbg !98

34:                                               ; preds = %33
  %indvars.iv.next = add nsw i64 %indvars.iv3, -1, !dbg !99
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !48, metadata !DIExpression()), !dbg !51
  %35 = icmp sge i64 %indvars.iv.next, 0, !dbg !100
  br i1 %35, label %14, label %36, !dbg !73, !llvm.loop !101

36:                                               ; preds = %34
  %37 = load i32, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @iv, i64 0, i64 0), align 16, !dbg !103, !tbaa !54
  store i32 %37, i32* @iy, align 4, !dbg !104, !tbaa !54
  br label %38, !dbg !105

38:                                               ; preds = %36, %1
  %39 = load i32, i32* %0, align 4, !dbg !106, !tbaa !54
  %40 = sdiv i32 %39, 53668, !dbg !107
  call void @llvm.dbg.value(metadata i32 %40, metadata !49, metadata !DIExpression()), !dbg !51
  %41 = load i32, i32* %0, align 4, !dbg !108, !tbaa !54
  %42 = mul nsw i32 %40, 53668, !dbg !109
  %43 = sub nsw i32 %41, %42, !dbg !110
  %44 = mul nsw i32 40014, %43, !dbg !111
  %45 = mul nsw i32 %40, 12211, !dbg !112
  %46 = sub nsw i32 %44, %45, !dbg !113
  store i32 %46, i32* %0, align 4, !dbg !114, !tbaa !54
  %47 = load i32, i32* %0, align 4, !dbg !115, !tbaa !54
  %48 = icmp slt i32 %47, 0, !dbg !117
  br i1 %48, label %49, label %52, !dbg !118

49:                                               ; preds = %38
  %50 = load i32, i32* %0, align 4, !dbg !119, !tbaa !54
  %51 = add nsw i32 %50, 2147483563, !dbg !119
  store i32 %51, i32* %0, align 4, !dbg !119, !tbaa !54
  br label %52, !dbg !120

52:                                               ; preds = %49, %38
  %53 = load i32, i32* @seed2, align 4, !dbg !121, !tbaa !54
  %54 = sdiv i32 %53, 52774, !dbg !122
  call void @llvm.dbg.value(metadata i32 %54, metadata !49, metadata !DIExpression()), !dbg !51
  %55 = load i32, i32* @seed2, align 4, !dbg !123, !tbaa !54
  %56 = mul nsw i32 %54, 52774, !dbg !124
  %57 = sub nsw i32 %55, %56, !dbg !125
  %58 = mul nsw i32 40692, %57, !dbg !126
  %59 = mul nsw i32 %54, 3791, !dbg !127
  %60 = sub nsw i32 %58, %59, !dbg !128
  store i32 %60, i32* @seed2, align 4, !dbg !129, !tbaa !54
  %61 = load i32, i32* @seed2, align 4, !dbg !130, !tbaa !54
  %62 = icmp slt i32 %61, 0, !dbg !132
  br i1 %62, label %63, label %66, !dbg !133

63:                                               ; preds = %52
  %64 = load i32, i32* @seed2, align 4, !dbg !134, !tbaa !54
  %65 = add nsw i32 %64, 2147483399, !dbg !134
  store i32 %65, i32* @seed2, align 4, !dbg !134, !tbaa !54
  br label %66, !dbg !135

66:                                               ; preds = %63, %52
  %67 = load i32, i32* @iy, align 4, !dbg !136, !tbaa !54
  %68 = sdiv i32 %67, 67108862, !dbg !137
  call void @llvm.dbg.value(metadata i32 %68, metadata !48, metadata !DIExpression()), !dbg !51
  %69 = sext i32 %68 to i64, !dbg !138
  %70 = getelementptr inbounds [32 x i32], [32 x i32]* @iv, i64 0, i64 %69, !dbg !138
  %71 = load i32, i32* %70, align 4, !dbg !138, !tbaa !54
  %72 = load i32, i32* @seed2, align 4, !dbg !139, !tbaa !54
  %73 = sub nsw i32 %71, %72, !dbg !140
  store i32 %73, i32* @iy, align 4, !dbg !141, !tbaa !54
  %74 = load i32, i32* %0, align 4, !dbg !142, !tbaa !54
  %75 = sext i32 %68 to i64, !dbg !143
  %76 = getelementptr inbounds [32 x i32], [32 x i32]* @iv, i64 0, i64 %75, !dbg !143
  store i32 %74, i32* %76, align 4, !dbg !144, !tbaa !54
  %77 = load i32, i32* @iy, align 4, !dbg !145, !tbaa !54
  %78 = icmp slt i32 %77, 1, !dbg !147
  br i1 %78, label %79, label %82, !dbg !148

79:                                               ; preds = %66
  %80 = load i32, i32* @iy, align 4, !dbg !149, !tbaa !54
  %81 = add nsw i32 %80, 2147483562, !dbg !149
  store i32 %81, i32* @iy, align 4, !dbg !149, !tbaa !54
  br label %82, !dbg !150

82:                                               ; preds = %79, %66
  %83 = load i32, i32* @iy, align 4, !dbg !151, !tbaa !54
  %84 = sitofp i32 %83 to double, !dbg !151
  %85 = fmul double 0x3E0000000AA00007, %84, !dbg !153
  call void @llvm.dbg.value(metadata double %85, metadata !50, metadata !DIExpression()), !dbg !51
  %86 = fcmp ogt double %85, 0x3FEFFFFFFFFFFBC7, !dbg !154
  br i1 %86, label %87, label %88, !dbg !155

87:                                               ; preds = %82
  br label %89, !dbg !156

88:                                               ; preds = %82
  br label %89, !dbg !157

89:                                               ; preds = %88, %87
  %.0 = phi double [ 0x3FEFFFFFFFFFFBC7, %87 ], [ %85, %88 ], !dbg !158
  ret double %.0, !dbg !159
}

; Function Attrs: nounwind uwtable
define dso_local double @gauss(double* %0, double* %1) #0 !dbg !160 {
  call void @llvm.dbg.value(metadata double* %0, metadata !165, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.value(metadata double* %1, metadata !166, metadata !DIExpression()), !dbg !167
  %3 = call double @gaussa(double* %0, double* %1, i32* @seed3), !dbg !168
  ret double %3, !dbg !169
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal double @gaussa(double* %0, double* %1, i32* %2) #0 !dbg !170 {
  call void @llvm.dbg.value(metadata double* %0, metadata !174, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.value(metadata double* %1, metadata !175, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.value(metadata i32* %2, metadata !176, metadata !DIExpression()), !dbg !182
  br label %4, !dbg !183

4:                                                ; preds = %18, %3
  %5 = call double @rand2a(i32* %2), !dbg !184
  %6 = fmul double 2.000000e+00, %5, !dbg !186
  %7 = fsub double %6, 1.000000e+00, !dbg !187
  call void @llvm.dbg.value(metadata double %7, metadata !180, metadata !DIExpression()), !dbg !182
  %8 = call double @rand2a(i32* %2), !dbg !188
  %9 = fmul double 2.000000e+00, %8, !dbg !189
  %10 = fsub double %9, 1.000000e+00, !dbg !190
  call void @llvm.dbg.value(metadata double %10, metadata !181, metadata !DIExpression()), !dbg !182
  %11 = fmul double %7, %7, !dbg !191
  %12 = fmul double %10, %10, !dbg !192
  %13 = fadd double %11, %12, !dbg !193
  call void @llvm.dbg.value(metadata double %13, metadata !179, metadata !DIExpression()), !dbg !182
  br label %14, !dbg !194

14:                                               ; preds = %4
  %15 = fcmp oge double %13, 1.000000e+00, !dbg !195
  br i1 %15, label %18, label %16, !dbg !196

16:                                               ; preds = %14
  %17 = fcmp oeq double %13, 0.000000e+00, !dbg !197
  br label %18, !dbg !196

18:                                               ; preds = %16, %14
  %19 = phi i1 [ true, %14 ], [ %17, %16 ]
  br i1 %19, label %4, label %20, !dbg !194, !llvm.loop !198

20:                                               ; preds = %18
  %.lcssa1 = phi double [ %7, %18 ], !dbg !187
  %.lcssa = phi double [ %13, %18 ], !dbg !193
  %21 = call double @log(double %.lcssa) #5, !dbg !200
  %22 = fmul double -2.000000e+00, %21, !dbg !201
  %23 = fdiv double %22, %.lcssa, !dbg !202
  %24 = call double @sqrt(double %23) #5, !dbg !203
  call void @llvm.dbg.value(metadata double %24, metadata !177, metadata !DIExpression()), !dbg !182
  %25 = fmul double %.lcssa1, %24, !dbg !204
  call void @llvm.dbg.value(metadata double %25, metadata !178, metadata !DIExpression()), !dbg !182
  %26 = load double, double* %1, align 8, !dbg !205, !tbaa !206
  %27 = fmul double %26, %25, !dbg !208
  %28 = load double, double* %0, align 8, !dbg !209, !tbaa !206
  %29 = fadd double %27, %28, !dbg !210
  ret double %29, !dbg !211
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setseed(i32* %0) #0 !dbg !212 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !216, metadata !DIExpression()), !dbg !217
  %2 = load i32, i32* %0, align 4, !dbg !218, !tbaa !54
  %3 = icmp sge i32 %2, 0, !dbg !220
  br i1 %3, label %4, label %7, !dbg !221

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !222, !tbaa !224
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)), !dbg !226
  br label %9, !dbg !227

7:                                                ; preds = %1
  %8 = load i32, i32* %0, align 4, !dbg !228, !tbaa !54
  store i32 %8, i32* @seed3, align 4, !dbg !230, !tbaa !54
  br label %9, !dbg !231

9:                                                ; preds = %7, %4
  %.0 = phi i32 [ 1, %4 ], [ 0, %7 ], !dbg !232
  ret i32 %.0, !dbg !233
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rseed() #0 !dbg !234 {
  %1 = alloca %struct.timeval, align 8
  %2 = bitcast %struct.timeval* %1 to i8*, !dbg !239
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %2) #5, !dbg !239
  call void @llvm.dbg.declare(metadata %struct.timeval* %1, metadata !238, metadata !DIExpression()), !dbg !240
  %3 = call i32 @gettimeofday(%struct.timeval* %1, i8* null) #5, !dbg !241
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0, !dbg !242
  %5 = load i64, i64* %4, align 8, !dbg !242, !tbaa !243
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1, !dbg !246
  %7 = load i64, i64* %6, align 8, !dbg !246, !tbaa !247
  %8 = xor i64 %5, %7, !dbg !248
  %9 = trunc i64 %8 to i32, !dbg !249
  %10 = sub nsw i32 0, %9, !dbg !250
  store i32 %10, i32* @seed3, align 4, !dbg !251, !tbaa !54
  %11 = load i32, i32* @seed3, align 4, !dbg !252, !tbaa !54
  %12 = bitcast %struct.timeval* %1 to i8*, !dbg !253
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %12) #5, !dbg !253
  ret i32 %11, !dbg !254
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind
declare !dbg !7 dso_local i32 @gettimeofday(%struct.timeval*, i8*) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #4

; Function Attrs: nounwind
declare dso_local double @log(double) #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!32, !33, !34}
!llvm.ident = !{!35}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "seed3", scope: !2, file: !3, line: 73, type: !11, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !22, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "rand2.c", directory: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src")
!4 = !{}
!5 = !{!6, !7, !11}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DISubprogram(name: "gettimeofday", scope: !8, file: !8, line: 66, type: !9, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/time.h", directory: "")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !12, !6}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !14, line: 8, size: 128, elements: !15)
!14 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "")
!15 = !{!16, !20}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !13, file: !14, line: 10, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !18, line: 160, baseType: !19)
!18 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!19 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !13, file: !14, line: 11, baseType: !21, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !18, line: 162, baseType: !19)
!22 = !{!23, !25, !30, !0}
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "seed2", scope: !2, file: !3, line: 72, type: !11, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "iv", scope: !2, file: !3, line: 75, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1024, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 32)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "iy", scope: !2, file: !3, line: 74, type: !11, isLocal: true, isDefinition: true)
!32 = !{i32 7, !"Dwarf Version", i32 4}
!33 = !{i32 2, !"Debug Info Version", i32 3}
!34 = !{i32 1, !"wchar_size", i32 4}
!35 = !{!"clang version 10.0.0-4ubuntu1 "}
!36 = distinct !DISubprogram(name: "rand2", scope: !3, file: !3, line: 169, type: !37, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!37 = !DISubroutineType(types: !38)
!38 = !{!39}
!39 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!40 = !DILocation(line: 172, column: 9, scope: !36)
!41 = !DILocation(line: 172, column: 2, scope: !36)
!42 = distinct !DISubprogram(name: "rand2a", scope: !3, file: !3, line: 99, type: !43, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !46)
!43 = !DISubroutineType(types: !44)
!44 = !{!39, !45}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!46 = !{!47, !48, !49, !50}
!47 = !DILocalVariable(name: "seed", arg: 1, scope: !42, file: !3, line: 99, type: !45)
!48 = !DILocalVariable(name: "j", scope: !42, file: !3, line: 101, type: !11)
!49 = !DILocalVariable(name: "k", scope: !42, file: !3, line: 101, type: !11)
!50 = !DILocalVariable(name: "temp", scope: !42, file: !3, line: 102, type: !39)
!51 = !DILocation(line: 0, scope: !42)
!52 = !DILocation(line: 104, column: 6, scope: !53)
!53 = distinct !DILexicalBlock(scope: !42, file: !3, line: 104, column: 6)
!54 = !{!55, !55, i64 0}
!55 = !{!"int", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C/C++ TBAA"}
!58 = !DILocation(line: 104, column: 12, scope: !53)
!59 = !DILocation(line: 104, column: 6, scope: !42)
!60 = !DILocation(line: 105, column: 8, scope: !61)
!61 = distinct !DILexicalBlock(scope: !62, file: !3, line: 105, column: 7)
!62 = distinct !DILexicalBlock(scope: !53, file: !3, line: 104, column: 18)
!63 = !DILocation(line: 105, column: 7, scope: !61)
!64 = !DILocation(line: 105, column: 14, scope: !61)
!65 = !DILocation(line: 105, column: 7, scope: !62)
!66 = !DILocation(line: 106, column: 10, scope: !61)
!67 = !DILocation(line: 106, column: 4, scope: !61)
!68 = !DILocation(line: 108, column: 13, scope: !61)
!69 = !DILocation(line: 108, column: 12, scope: !61)
!70 = !DILocation(line: 108, column: 10, scope: !61)
!71 = !DILocation(line: 109, column: 11, scope: !62)
!72 = !DILocation(line: 109, column: 9, scope: !62)
!73 = !DILocation(line: 110, column: 3, scope: !74)
!74 = distinct !DILexicalBlock(scope: !62, file: !3, line: 110, column: 3)
!75 = !DILocation(line: 111, column: 8, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !3, line: 110, column: 35)
!77 = distinct !DILexicalBlock(scope: !74, file: !3, line: 110, column: 3)
!78 = !DILocation(line: 111, column: 14, scope: !76)
!79 = !DILocation(line: 112, column: 20, scope: !76)
!80 = !DILocation(line: 112, column: 30, scope: !76)
!81 = !DILocation(line: 112, column: 26, scope: !76)
!82 = !DILocation(line: 112, column: 16, scope: !76)
!83 = !DILocation(line: 112, column: 42, scope: !76)
!84 = !DILocation(line: 112, column: 38, scope: !76)
!85 = !DILocation(line: 112, column: 10, scope: !76)
!86 = !DILocation(line: 113, column: 8, scope: !87)
!87 = distinct !DILexicalBlock(scope: !76, file: !3, line: 113, column: 8)
!88 = !DILocation(line: 113, column: 14, scope: !87)
!89 = !DILocation(line: 113, column: 8, scope: !76)
!90 = !DILocation(line: 114, column: 11, scope: !87)
!91 = !DILocation(line: 114, column: 5, scope: !87)
!92 = !DILocation(line: 115, column: 10, scope: !93)
!93 = distinct !DILexicalBlock(scope: !76, file: !3, line: 115, column: 8)
!94 = !DILocation(line: 115, column: 8, scope: !76)
!95 = !DILocation(line: 116, column: 15, scope: !93)
!96 = !DILocation(line: 116, column: 5, scope: !93)
!97 = !DILocation(line: 116, column: 13, scope: !93)
!98 = !DILocation(line: 117, column: 3, scope: !76)
!99 = !DILocation(line: 110, column: 31, scope: !77)
!100 = !DILocation(line: 110, column: 24, scope: !77)
!101 = distinct !{!101, !73, !102}
!102 = !DILocation(line: 117, column: 3, scope: !74)
!103 = !DILocation(line: 118, column: 8, scope: !62)
!104 = !DILocation(line: 118, column: 6, scope: !62)
!105 = !DILocation(line: 119, column: 2, scope: !62)
!106 = !DILocation(line: 120, column: 6, scope: !42)
!107 = !DILocation(line: 120, column: 12, scope: !42)
!108 = !DILocation(line: 121, column: 18, scope: !42)
!109 = !DILocation(line: 121, column: 28, scope: !42)
!110 = !DILocation(line: 121, column: 24, scope: !42)
!111 = !DILocation(line: 121, column: 14, scope: !42)
!112 = !DILocation(line: 121, column: 40, scope: !42)
!113 = !DILocation(line: 121, column: 36, scope: !42)
!114 = !DILocation(line: 121, column: 8, scope: !42)
!115 = !DILocation(line: 122, column: 6, scope: !116)
!116 = distinct !DILexicalBlock(scope: !42, file: !3, line: 122, column: 6)
!117 = !DILocation(line: 122, column: 12, scope: !116)
!118 = !DILocation(line: 122, column: 6, scope: !42)
!119 = !DILocation(line: 123, column: 9, scope: !116)
!120 = !DILocation(line: 123, column: 3, scope: !116)
!121 = !DILocation(line: 124, column: 6, scope: !42)
!122 = !DILocation(line: 124, column: 12, scope: !42)
!123 = !DILocation(line: 125, column: 18, scope: !42)
!124 = !DILocation(line: 125, column: 28, scope: !42)
!125 = !DILocation(line: 125, column: 24, scope: !42)
!126 = !DILocation(line: 125, column: 14, scope: !42)
!127 = !DILocation(line: 125, column: 40, scope: !42)
!128 = !DILocation(line: 125, column: 36, scope: !42)
!129 = !DILocation(line: 125, column: 8, scope: !42)
!130 = !DILocation(line: 126, column: 6, scope: !131)
!131 = distinct !DILexicalBlock(scope: !42, file: !3, line: 126, column: 6)
!132 = !DILocation(line: 126, column: 12, scope: !131)
!133 = !DILocation(line: 126, column: 6, scope: !42)
!134 = !DILocation(line: 127, column: 9, scope: !131)
!135 = !DILocation(line: 127, column: 3, scope: !131)
!136 = !DILocation(line: 128, column: 6, scope: !42)
!137 = !DILocation(line: 128, column: 9, scope: !42)
!138 = !DILocation(line: 129, column: 7, scope: !42)
!139 = !DILocation(line: 129, column: 17, scope: !42)
!140 = !DILocation(line: 129, column: 15, scope: !42)
!141 = !DILocation(line: 129, column: 5, scope: !42)
!142 = !DILocation(line: 130, column: 12, scope: !42)
!143 = !DILocation(line: 130, column: 2, scope: !42)
!144 = !DILocation(line: 130, column: 10, scope: !42)
!145 = !DILocation(line: 131, column: 6, scope: !146)
!146 = distinct !DILexicalBlock(scope: !42, file: !3, line: 131, column: 6)
!147 = !DILocation(line: 131, column: 9, scope: !146)
!148 = !DILocation(line: 131, column: 6, scope: !42)
!149 = !DILocation(line: 132, column: 6, scope: !146)
!150 = !DILocation(line: 132, column: 3, scope: !146)
!151 = !DILocation(line: 133, column: 20, scope: !152)
!152 = distinct !DILexicalBlock(scope: !42, file: !3, line: 133, column: 6)
!153 = !DILocation(line: 133, column: 18, scope: !152)
!154 = !DILocation(line: 133, column: 25, scope: !152)
!155 = !DILocation(line: 133, column: 6, scope: !42)
!156 = !DILocation(line: 134, column: 3, scope: !152)
!157 = !DILocation(line: 136, column: 3, scope: !152)
!158 = !DILocation(line: 0, scope: !152)
!159 = !DILocation(line: 137, column: 1, scope: !42)
!160 = distinct !DISubprogram(name: "gauss", scope: !3, file: !3, line: 175, type: !161, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !164)
!161 = !DISubroutineType(types: !162)
!162 = !{!39, !163, !163}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!164 = !{!165, !166}
!165 = !DILocalVariable(name: "mean", arg: 1, scope: !160, file: !3, line: 175, type: !163)
!166 = !DILocalVariable(name: "sd", arg: 2, scope: !160, file: !3, line: 175, type: !163)
!167 = !DILocation(line: 0, scope: !160)
!168 = !DILocation(line: 177, column: 9, scope: !160)
!169 = !DILocation(line: 177, column: 2, scope: !160)
!170 = distinct !DISubprogram(name: "gaussa", scope: !3, file: !3, line: 147, type: !171, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !173)
!171 = !DISubroutineType(types: !172)
!172 = !{!39, !163, !163, !45}
!173 = !{!174, !175, !176, !177, !178, !179, !180, !181}
!174 = !DILocalVariable(name: "mean", arg: 1, scope: !170, file: !3, line: 147, type: !163)
!175 = !DILocalVariable(name: "sd", arg: 2, scope: !170, file: !3, line: 147, type: !163)
!176 = !DILocalVariable(name: "seed", arg: 3, scope: !170, file: !3, line: 147, type: !45)
!177 = !DILocalVariable(name: "fac", scope: !170, file: !3, line: 149, type: !39)
!178 = !DILocalVariable(name: "gdev1", scope: !170, file: !3, line: 149, type: !39)
!179 = !DILocalVariable(name: "rsq", scope: !170, file: !3, line: 149, type: !39)
!180 = !DILocalVariable(name: "s1", scope: !170, file: !3, line: 149, type: !39)
!181 = !DILocalVariable(name: "s2", scope: !170, file: !3, line: 149, type: !39)
!182 = !DILocation(line: 0, scope: !170)
!183 = !DILocation(line: 151, column: 3, scope: !170)
!184 = !DILocation(line: 152, column: 12, scope: !185)
!185 = distinct !DILexicalBlock(scope: !170, file: !3, line: 151, column: 6)
!186 = !DILocation(line: 152, column: 11, scope: !185)
!187 = !DILocation(line: 152, column: 25, scope: !185)
!188 = !DILocation(line: 153, column: 12, scope: !185)
!189 = !DILocation(line: 153, column: 11, scope: !185)
!190 = !DILocation(line: 153, column: 25, scope: !185)
!191 = !DILocation(line: 154, column: 12, scope: !185)
!192 = !DILocation(line: 154, column: 20, scope: !185)
!193 = !DILocation(line: 154, column: 16, scope: !185)
!194 = !DILocation(line: 155, column: 3, scope: !185)
!195 = !DILocation(line: 155, column: 17, scope: !170)
!196 = !DILocation(line: 155, column: 23, scope: !170)
!197 = !DILocation(line: 155, column: 30, scope: !170)
!198 = distinct !{!198, !183, !199}
!199 = !DILocation(line: 155, column: 37, scope: !170)
!200 = !DILocation(line: 156, column: 18, scope: !170)
!201 = !DILocation(line: 156, column: 17, scope: !170)
!202 = !DILocation(line: 156, column: 26, scope: !170)
!203 = !DILocation(line: 156, column: 9, scope: !170)
!204 = !DILocation(line: 157, column: 13, scope: !170)
!205 = !DILocation(line: 159, column: 11, scope: !170)
!206 = !{!207, !207, i64 0}
!207 = !{!"double", !56, i64 0}
!208 = !DILocation(line: 159, column: 14, scope: !170)
!209 = !DILocation(line: 159, column: 23, scope: !170)
!210 = !DILocation(line: 159, column: 21, scope: !170)
!211 = !DILocation(line: 159, column: 3, scope: !170)
!212 = distinct !DISubprogram(name: "setseed", scope: !3, file: !3, line: 184, type: !213, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !215)
!213 = !DISubroutineType(types: !214)
!214 = !{!11, !45}
!215 = !{!216}
!216 = !DILocalVariable(name: "seed4", arg: 1, scope: !212, file: !3, line: 184, type: !45)
!217 = !DILocation(line: 0, scope: !212)
!218 = !DILocation(line: 186, column: 6, scope: !219)
!219 = distinct !DILexicalBlock(scope: !212, file: !3, line: 186, column: 6)
!220 = !DILocation(line: 186, column: 13, scope: !219)
!221 = !DILocation(line: 186, column: 6, scope: !212)
!222 = !DILocation(line: 187, column: 12, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !3, line: 186, column: 19)
!224 = !{!225, !225, i64 0}
!225 = !{!"any pointer", !56, i64 0}
!226 = !DILocation(line: 187, column: 3, scope: !223)
!227 = !DILocation(line: 188, column: 3, scope: !223)
!228 = !DILocation(line: 190, column: 11, scope: !229)
!229 = distinct !DILexicalBlock(scope: !219, file: !3, line: 189, column: 9)
!230 = !DILocation(line: 190, column: 9, scope: !229)
!231 = !DILocation(line: 191, column: 3, scope: !229)
!232 = !DILocation(line: 0, scope: !219)
!233 = !DILocation(line: 193, column: 1, scope: !212)
!234 = distinct !DISubprogram(name: "rseed", scope: !3, file: !3, line: 200, type: !235, scopeLine: 201, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !237)
!235 = !DISubroutineType(types: !236)
!236 = !{!11}
!237 = !{!238}
!238 = !DILocalVariable(name: "tv", scope: !234, file: !3, line: 202, type: !13)
!239 = !DILocation(line: 202, column: 2, scope: !234)
!240 = !DILocation(line: 202, column: 17, scope: !234)
!241 = !DILocation(line: 203, column: 2, scope: !234)
!242 = !DILocation(line: 204, column: 21, scope: !234)
!243 = !{!244, !245, i64 0}
!244 = !{!"timeval", !245, i64 0, !245, i64 8}
!245 = !{!"long", !56, i64 0}
!246 = !DILocation(line: 204, column: 33, scope: !234)
!247 = !{!244, !245, i64 8}
!248 = !DILocation(line: 204, column: 28, scope: !234)
!249 = !DILocation(line: 204, column: 12, scope: !234)
!250 = !DILocation(line: 204, column: 10, scope: !234)
!251 = !DILocation(line: 204, column: 8, scope: !234)
!252 = !DILocation(line: 205, column: 9, scope: !234)
!253 = !DILocation(line: 206, column: 1, scope: !234)
!254 = !DILocation(line: 205, column: 2, scope: !234)
