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
  %1 = call double @rand2a(i32* nonnull @seed3), !dbg !40
  ret double %1, !dbg !41
}

; Function Attrs: nounwind uwtable
define internal double @rand2a(i32* %0) #0 !dbg !42 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !47, metadata !DIExpression()), !dbg !51
  %2 = load i32, i32* %0, align 4, !dbg !52, !tbaa !54
  %3 = icmp slt i32 %2, 1, !dbg !58
  br i1 %3, label %4, label %31, !dbg !59

4:                                                ; preds = %1
  %5 = load i32, i32* %0, align 4, !dbg !60, !tbaa !54
  %6 = icmp sgt i32 %5, -1, !dbg !63
  br i1 %6, label %7, label %8, !dbg !64

7:                                                ; preds = %4
  br label %11, !dbg !65

8:                                                ; preds = %4
  %9 = load i32, i32* %0, align 4, !dbg !66, !tbaa !54
  %10 = sub nsw i32 0, %9, !dbg !67
  br label %11

11:                                               ; preds = %8, %7
  %storemerge = phi i32 [ %10, %8 ], [ 1, %7 ], !dbg !68
  store i32 %storemerge, i32* %0, align 4, !dbg !68, !tbaa !54
  store i32 %storemerge, i32* @seed2, align 4, !dbg !69, !tbaa !54
  call void @llvm.dbg.value(metadata i32 39, metadata !48, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.value(metadata i64 39, metadata !48, metadata !DIExpression()), !dbg !51
  br label %12, !dbg !70

12:                                               ; preds = %11, %27
  %indvars.iv3 = phi i64 [ 39, %11 ], [ %indvars.iv.next, %27 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !48, metadata !DIExpression()), !dbg !51
  %13 = load i32, i32* %0, align 4, !dbg !72, !tbaa !54
  %14 = sdiv i32 %13, 53668, !dbg !75
  call void @llvm.dbg.value(metadata i32 %14, metadata !49, metadata !DIExpression()), !dbg !51
  %.neg8 = mul i32 %14, -53668, !dbg !76
  %15 = add i32 %.neg8, %13, !dbg !77
  %16 = mul nsw i32 %15, 40014, !dbg !78
  %.neg9 = mul nsw i32 %14, -12211, !dbg !79
  %17 = add i32 %.neg9, %16, !dbg !80
  store i32 %17, i32* %0, align 4, !dbg !81, !tbaa !54
  %18 = icmp slt i32 %17, 0, !dbg !82
  br i1 %18, label %19, label %22, !dbg !84

19:                                               ; preds = %12
  %20 = load i32, i32* %0, align 4, !dbg !85, !tbaa !54
  %21 = add nsw i32 %20, 2147483563, !dbg !85
  store i32 %21, i32* %0, align 4, !dbg !85, !tbaa !54
  br label %22, !dbg !86

22:                                               ; preds = %19, %12
  %23 = icmp slt i64 %indvars.iv3, 32, !dbg !87
  br i1 %23, label %24, label %27, !dbg !89

24:                                               ; preds = %22
  %25 = load i32, i32* %0, align 4, !dbg !90, !tbaa !54
  %26 = getelementptr inbounds [32 x i32], [32 x i32]* @iv, i64 0, i64 %indvars.iv3, !dbg !91
  store i32 %25, i32* %26, align 4, !dbg !92, !tbaa !54
  br label %27, !dbg !91

27:                                               ; preds = %24, %22
  %indvars.iv.next = add nsw i64 %indvars.iv3, -1, !dbg !93
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !48, metadata !DIExpression()), !dbg !51
  %28 = icmp sgt i64 %indvars.iv3, 0, !dbg !94
  br i1 %28, label %12, label %29, !dbg !70, !llvm.loop !95

29:                                               ; preds = %27
  %30 = load i32, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @iv, i64 0, i64 0), align 16, !dbg !97, !tbaa !54
  store i32 %30, i32* @iy, align 4, !dbg !98, !tbaa !54
  br label %31, !dbg !99

31:                                               ; preds = %29, %1
  %32 = load i32, i32* %0, align 4, !dbg !100, !tbaa !54
  %33 = sdiv i32 %32, 53668, !dbg !101
  call void @llvm.dbg.value(metadata i32 %33, metadata !49, metadata !DIExpression()), !dbg !51
  %.neg = mul i32 %33, -53668, !dbg !102
  %34 = add i32 %.neg, %32, !dbg !103
  %35 = mul nsw i32 %34, 40014, !dbg !104
  %.neg5 = mul nsw i32 %33, -12211, !dbg !105
  %36 = add i32 %.neg5, %35, !dbg !106
  store i32 %36, i32* %0, align 4, !dbg !107, !tbaa !54
  %37 = icmp slt i32 %36, 0, !dbg !108
  br i1 %37, label %38, label %41, !dbg !110

38:                                               ; preds = %31
  %39 = load i32, i32* %0, align 4, !dbg !111, !tbaa !54
  %40 = add nsw i32 %39, 2147483563, !dbg !111
  store i32 %40, i32* %0, align 4, !dbg !111, !tbaa !54
  br label %41, !dbg !112

41:                                               ; preds = %38, %31
  %42 = load i32, i32* @seed2, align 4, !dbg !113, !tbaa !54
  %43 = sdiv i32 %42, 52774, !dbg !114
  call void @llvm.dbg.value(metadata i32 %43, metadata !49, metadata !DIExpression()), !dbg !51
  %.neg6 = mul i32 %43, -52774, !dbg !115
  %44 = add i32 %.neg6, %42, !dbg !116
  %45 = mul nsw i32 %44, 40692, !dbg !117
  %.neg7 = mul nsw i32 %43, -3791, !dbg !118
  %46 = add i32 %.neg7, %45, !dbg !119
  store i32 %46, i32* @seed2, align 4, !dbg !120, !tbaa !54
  %47 = icmp slt i32 %46, 0, !dbg !121
  br i1 %47, label %48, label %51, !dbg !123

48:                                               ; preds = %41
  %49 = load i32, i32* @seed2, align 4, !dbg !124, !tbaa !54
  %50 = add nsw i32 %49, 2147483399, !dbg !124
  store i32 %50, i32* @seed2, align 4, !dbg !124, !tbaa !54
  br label %51, !dbg !125

51:                                               ; preds = %48, %41
  %52 = load i32, i32* @iy, align 4, !dbg !126, !tbaa !54
  %53 = sdiv i32 %52, 67108862, !dbg !127
  call void @llvm.dbg.value(metadata i32 %53, metadata !48, metadata !DIExpression()), !dbg !51
  %54 = sext i32 %53 to i64, !dbg !128
  %55 = getelementptr inbounds [32 x i32], [32 x i32]* @iv, i64 0, i64 %54, !dbg !128
  %56 = load i32, i32* %55, align 4, !dbg !128, !tbaa !54
  %57 = load i32, i32* @seed2, align 4, !dbg !129, !tbaa !54
  %58 = sub nsw i32 %56, %57, !dbg !130
  store i32 %58, i32* @iy, align 4, !dbg !131, !tbaa !54
  %59 = load i32, i32* %0, align 4, !dbg !132, !tbaa !54
  %60 = sext i32 %53 to i64, !dbg !133
  %61 = getelementptr inbounds [32 x i32], [32 x i32]* @iv, i64 0, i64 %60, !dbg !133
  store i32 %59, i32* %61, align 4, !dbg !134, !tbaa !54
  %62 = icmp slt i32 %58, 1, !dbg !135
  br i1 %62, label %63, label %66, !dbg !137

63:                                               ; preds = %51
  %64 = load i32, i32* @iy, align 4, !dbg !138, !tbaa !54
  %65 = add nsw i32 %64, 2147483562, !dbg !138
  store i32 %65, i32* @iy, align 4, !dbg !138, !tbaa !54
  br label %66, !dbg !139

66:                                               ; preds = %63, %51
  %67 = load i32, i32* @iy, align 4, !dbg !140, !tbaa !54
  %68 = sitofp i32 %67 to double, !dbg !140
  %69 = fmul double %68, 0x3E0000000AA00007, !dbg !142
  call void @llvm.dbg.value(metadata double %69, metadata !50, metadata !DIExpression()), !dbg !51
  %70 = fcmp ogt double %69, 0x3FEFFFFFFFFFFBC7, !dbg !143
  %. = select i1 %70, double 0x3FEFFFFFFFFFFBC7, double %69, !dbg !144
  ret double %., !dbg !145
}

; Function Attrs: nounwind uwtable
define dso_local double @gauss(double* %0, double* %1) #0 !dbg !146 {
  call void @llvm.dbg.value(metadata double* %0, metadata !151, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata double* %1, metadata !152, metadata !DIExpression()), !dbg !153
  %3 = call double @gaussa(double* %0, double* %1, i32* nonnull @seed3), !dbg !154
  ret double %3, !dbg !155
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal double @gaussa(double* %0, double* %1, i32* %2) #0 !dbg !156 {
  call void @llvm.dbg.value(metadata double* %0, metadata !160, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.value(metadata double* %1, metadata !161, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.value(metadata i32* %2, metadata !162, metadata !DIExpression()), !dbg !168
  br label %4, !dbg !169

4:                                                ; preds = %4, %3
  %5 = call double @rand2a(i32* %2), !dbg !170
  %6 = fmul double %5, 2.000000e+00, !dbg !172
  %7 = fadd double %6, -1.000000e+00, !dbg !173
  call void @llvm.dbg.value(metadata double %7, metadata !166, metadata !DIExpression()), !dbg !168
  %8 = call double @rand2a(i32* %2), !dbg !174
  %9 = fmul double %8, 2.000000e+00, !dbg !175
  %10 = fadd double %9, -1.000000e+00, !dbg !176
  call void @llvm.dbg.value(metadata double %10, metadata !167, metadata !DIExpression()), !dbg !168
  %11 = fmul double %7, %7, !dbg !177
  %12 = fmul double %10, %10, !dbg !178
  %13 = fadd double %11, %12, !dbg !179
  call void @llvm.dbg.value(metadata double %13, metadata !165, metadata !DIExpression()), !dbg !168
  %14 = fcmp oge double %13, 1.000000e+00, !dbg !180
  %15 = fcmp oeq double %13, 0.000000e+00, !dbg !181
  %16 = or i1 %14, %15, !dbg !181
  br i1 %16, label %4, label %17, !dbg !182, !llvm.loop !183

17:                                               ; preds = %4
  %18 = call double @log(double %13) #6, !dbg !185
  %19 = fmul double %18, -2.000000e+00, !dbg !186
  %20 = fdiv double %19, %13, !dbg !187
  %21 = call double @sqrt(double %20) #6, !dbg !188
  call void @llvm.dbg.value(metadata double %21, metadata !163, metadata !DIExpression()), !dbg !168
  %22 = fmul double %7, %21, !dbg !189
  call void @llvm.dbg.value(metadata double %22, metadata !164, metadata !DIExpression()), !dbg !168
  %23 = load double, double* %1, align 8, !dbg !190, !tbaa !191
  %24 = fmul double %23, %22, !dbg !193
  %25 = load double, double* %0, align 8, !dbg !194, !tbaa !191
  %26 = fadd double %24, %25, !dbg !195
  ret double %26, !dbg !196
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setseed(i32* %0) #0 !dbg !197 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !201, metadata !DIExpression()), !dbg !202
  %2 = load i32, i32* %0, align 4, !dbg !203, !tbaa !54
  %3 = icmp sgt i32 %2, -1, !dbg !205
  br i1 %3, label %4, label %7, !dbg !206

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !207, !tbaa !209
  %6 = call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %5) #7, !dbg !211
  br label %9, !dbg !212

7:                                                ; preds = %1
  %8 = load i32, i32* %0, align 4, !dbg !213, !tbaa !54
  store i32 %8, i32* @seed3, align 4, !dbg !215, !tbaa !54
  br label %9, !dbg !216

9:                                                ; preds = %7, %4
  %.0 = phi i32 [ 1, %4 ], [ 0, %7 ], !dbg !217
  ret i32 %.0, !dbg !218
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rseed() #0 !dbg !219 {
  %1 = alloca %struct.timeval, align 8
  %2 = bitcast %struct.timeval* %1 to i8*, !dbg !224
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #6, !dbg !224
  call void @llvm.dbg.declare(metadata %struct.timeval* %1, metadata !223, metadata !DIExpression()), !dbg !225
  %3 = call i32 @gettimeofday(%struct.timeval* nonnull %1, i8* null) #6, !dbg !226
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 0, !dbg !227
  %5 = load i64, i64* %4, align 8, !dbg !227, !tbaa !228
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 1, !dbg !231
  %7 = load i64, i64* %6, align 8, !dbg !231, !tbaa !232
  %8 = xor i64 %5, %7, !dbg !233
  %9 = trunc i64 %8 to i32, !dbg !234
  %10 = sub nsw i32 0, %9, !dbg !235
  store i32 %10, i32* @seed3, align 4, !dbg !236, !tbaa !54
  %11 = bitcast %struct.timeval* %1 to i8*, !dbg !237
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #6, !dbg !237
  ret i32 %10, !dbg !238
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind
declare !dbg !7 dso_local i32 @gettimeofday(%struct.timeval*, i8*) #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #4

; Function Attrs: nounwind
declare dso_local double @log(double) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #5

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { cold }

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
!63 = !DILocation(line: 105, column: 14, scope: !61)
!64 = !DILocation(line: 105, column: 7, scope: !62)
!65 = !DILocation(line: 106, column: 4, scope: !61)
!66 = !DILocation(line: 108, column: 13, scope: !61)
!67 = !DILocation(line: 108, column: 12, scope: !61)
!68 = !DILocation(line: 0, scope: !61)
!69 = !DILocation(line: 109, column: 9, scope: !62)
!70 = !DILocation(line: 110, column: 3, scope: !71)
!71 = distinct !DILexicalBlock(scope: !62, file: !3, line: 110, column: 3)
!72 = !DILocation(line: 111, column: 8, scope: !73)
!73 = distinct !DILexicalBlock(scope: !74, file: !3, line: 110, column: 35)
!74 = distinct !DILexicalBlock(scope: !71, file: !3, line: 110, column: 3)
!75 = !DILocation(line: 111, column: 14, scope: !73)
!76 = !DILocation(line: 112, column: 30, scope: !73)
!77 = !DILocation(line: 112, column: 26, scope: !73)
!78 = !DILocation(line: 112, column: 16, scope: !73)
!79 = !DILocation(line: 112, column: 42, scope: !73)
!80 = !DILocation(line: 112, column: 38, scope: !73)
!81 = !DILocation(line: 112, column: 10, scope: !73)
!82 = !DILocation(line: 113, column: 14, scope: !83)
!83 = distinct !DILexicalBlock(scope: !73, file: !3, line: 113, column: 8)
!84 = !DILocation(line: 113, column: 8, scope: !73)
!85 = !DILocation(line: 114, column: 11, scope: !83)
!86 = !DILocation(line: 114, column: 5, scope: !83)
!87 = !DILocation(line: 115, column: 10, scope: !88)
!88 = distinct !DILexicalBlock(scope: !73, file: !3, line: 115, column: 8)
!89 = !DILocation(line: 115, column: 8, scope: !73)
!90 = !DILocation(line: 116, column: 15, scope: !88)
!91 = !DILocation(line: 116, column: 5, scope: !88)
!92 = !DILocation(line: 116, column: 13, scope: !88)
!93 = !DILocation(line: 110, column: 31, scope: !74)
!94 = !DILocation(line: 110, column: 24, scope: !74)
!95 = distinct !{!95, !70, !96}
!96 = !DILocation(line: 117, column: 3, scope: !71)
!97 = !DILocation(line: 118, column: 8, scope: !62)
!98 = !DILocation(line: 118, column: 6, scope: !62)
!99 = !DILocation(line: 119, column: 2, scope: !62)
!100 = !DILocation(line: 120, column: 6, scope: !42)
!101 = !DILocation(line: 120, column: 12, scope: !42)
!102 = !DILocation(line: 121, column: 28, scope: !42)
!103 = !DILocation(line: 121, column: 24, scope: !42)
!104 = !DILocation(line: 121, column: 14, scope: !42)
!105 = !DILocation(line: 121, column: 40, scope: !42)
!106 = !DILocation(line: 121, column: 36, scope: !42)
!107 = !DILocation(line: 121, column: 8, scope: !42)
!108 = !DILocation(line: 122, column: 12, scope: !109)
!109 = distinct !DILexicalBlock(scope: !42, file: !3, line: 122, column: 6)
!110 = !DILocation(line: 122, column: 6, scope: !42)
!111 = !DILocation(line: 123, column: 9, scope: !109)
!112 = !DILocation(line: 123, column: 3, scope: !109)
!113 = !DILocation(line: 124, column: 6, scope: !42)
!114 = !DILocation(line: 124, column: 12, scope: !42)
!115 = !DILocation(line: 125, column: 28, scope: !42)
!116 = !DILocation(line: 125, column: 24, scope: !42)
!117 = !DILocation(line: 125, column: 14, scope: !42)
!118 = !DILocation(line: 125, column: 40, scope: !42)
!119 = !DILocation(line: 125, column: 36, scope: !42)
!120 = !DILocation(line: 125, column: 8, scope: !42)
!121 = !DILocation(line: 126, column: 12, scope: !122)
!122 = distinct !DILexicalBlock(scope: !42, file: !3, line: 126, column: 6)
!123 = !DILocation(line: 126, column: 6, scope: !42)
!124 = !DILocation(line: 127, column: 9, scope: !122)
!125 = !DILocation(line: 127, column: 3, scope: !122)
!126 = !DILocation(line: 128, column: 6, scope: !42)
!127 = !DILocation(line: 128, column: 9, scope: !42)
!128 = !DILocation(line: 129, column: 7, scope: !42)
!129 = !DILocation(line: 129, column: 17, scope: !42)
!130 = !DILocation(line: 129, column: 15, scope: !42)
!131 = !DILocation(line: 129, column: 5, scope: !42)
!132 = !DILocation(line: 130, column: 12, scope: !42)
!133 = !DILocation(line: 130, column: 2, scope: !42)
!134 = !DILocation(line: 130, column: 10, scope: !42)
!135 = !DILocation(line: 131, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !42, file: !3, line: 131, column: 6)
!137 = !DILocation(line: 131, column: 6, scope: !42)
!138 = !DILocation(line: 132, column: 6, scope: !136)
!139 = !DILocation(line: 132, column: 3, scope: !136)
!140 = !DILocation(line: 133, column: 20, scope: !141)
!141 = distinct !DILexicalBlock(scope: !42, file: !3, line: 133, column: 6)
!142 = !DILocation(line: 133, column: 18, scope: !141)
!143 = !DILocation(line: 133, column: 25, scope: !141)
!144 = !DILocation(line: 0, scope: !141)
!145 = !DILocation(line: 137, column: 1, scope: !42)
!146 = distinct !DISubprogram(name: "gauss", scope: !3, file: !3, line: 175, type: !147, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !150)
!147 = !DISubroutineType(types: !148)
!148 = !{!39, !149, !149}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!150 = !{!151, !152}
!151 = !DILocalVariable(name: "mean", arg: 1, scope: !146, file: !3, line: 175, type: !149)
!152 = !DILocalVariable(name: "sd", arg: 2, scope: !146, file: !3, line: 175, type: !149)
!153 = !DILocation(line: 0, scope: !146)
!154 = !DILocation(line: 177, column: 9, scope: !146)
!155 = !DILocation(line: 177, column: 2, scope: !146)
!156 = distinct !DISubprogram(name: "gaussa", scope: !3, file: !3, line: 147, type: !157, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !159)
!157 = !DISubroutineType(types: !158)
!158 = !{!39, !149, !149, !45}
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167}
!160 = !DILocalVariable(name: "mean", arg: 1, scope: !156, file: !3, line: 147, type: !149)
!161 = !DILocalVariable(name: "sd", arg: 2, scope: !156, file: !3, line: 147, type: !149)
!162 = !DILocalVariable(name: "seed", arg: 3, scope: !156, file: !3, line: 147, type: !45)
!163 = !DILocalVariable(name: "fac", scope: !156, file: !3, line: 149, type: !39)
!164 = !DILocalVariable(name: "gdev1", scope: !156, file: !3, line: 149, type: !39)
!165 = !DILocalVariable(name: "rsq", scope: !156, file: !3, line: 149, type: !39)
!166 = !DILocalVariable(name: "s1", scope: !156, file: !3, line: 149, type: !39)
!167 = !DILocalVariable(name: "s2", scope: !156, file: !3, line: 149, type: !39)
!168 = !DILocation(line: 0, scope: !156)
!169 = !DILocation(line: 151, column: 3, scope: !156)
!170 = !DILocation(line: 152, column: 12, scope: !171)
!171 = distinct !DILexicalBlock(scope: !156, file: !3, line: 151, column: 6)
!172 = !DILocation(line: 152, column: 11, scope: !171)
!173 = !DILocation(line: 152, column: 25, scope: !171)
!174 = !DILocation(line: 153, column: 12, scope: !171)
!175 = !DILocation(line: 153, column: 11, scope: !171)
!176 = !DILocation(line: 153, column: 25, scope: !171)
!177 = !DILocation(line: 154, column: 12, scope: !171)
!178 = !DILocation(line: 154, column: 20, scope: !171)
!179 = !DILocation(line: 154, column: 16, scope: !171)
!180 = !DILocation(line: 155, column: 17, scope: !156)
!181 = !DILocation(line: 155, column: 23, scope: !156)
!182 = !DILocation(line: 155, column: 3, scope: !171)
!183 = distinct !{!183, !169, !184}
!184 = !DILocation(line: 155, column: 37, scope: !156)
!185 = !DILocation(line: 156, column: 18, scope: !156)
!186 = !DILocation(line: 156, column: 17, scope: !156)
!187 = !DILocation(line: 156, column: 26, scope: !156)
!188 = !DILocation(line: 156, column: 9, scope: !156)
!189 = !DILocation(line: 157, column: 13, scope: !156)
!190 = !DILocation(line: 159, column: 11, scope: !156)
!191 = !{!192, !192, i64 0}
!192 = !{!"double", !56, i64 0}
!193 = !DILocation(line: 159, column: 14, scope: !156)
!194 = !DILocation(line: 159, column: 23, scope: !156)
!195 = !DILocation(line: 159, column: 21, scope: !156)
!196 = !DILocation(line: 159, column: 3, scope: !156)
!197 = distinct !DISubprogram(name: "setseed", scope: !3, file: !3, line: 184, type: !198, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !200)
!198 = !DISubroutineType(types: !199)
!199 = !{!11, !45}
!200 = !{!201}
!201 = !DILocalVariable(name: "seed4", arg: 1, scope: !197, file: !3, line: 184, type: !45)
!202 = !DILocation(line: 0, scope: !197)
!203 = !DILocation(line: 186, column: 6, scope: !204)
!204 = distinct !DILexicalBlock(scope: !197, file: !3, line: 186, column: 6)
!205 = !DILocation(line: 186, column: 13, scope: !204)
!206 = !DILocation(line: 186, column: 6, scope: !197)
!207 = !DILocation(line: 187, column: 12, scope: !208)
!208 = distinct !DILexicalBlock(scope: !204, file: !3, line: 186, column: 19)
!209 = !{!210, !210, i64 0}
!210 = !{!"any pointer", !56, i64 0}
!211 = !DILocation(line: 187, column: 3, scope: !208)
!212 = !DILocation(line: 188, column: 3, scope: !208)
!213 = !DILocation(line: 190, column: 11, scope: !214)
!214 = distinct !DILexicalBlock(scope: !204, file: !3, line: 189, column: 9)
!215 = !DILocation(line: 190, column: 9, scope: !214)
!216 = !DILocation(line: 191, column: 3, scope: !214)
!217 = !DILocation(line: 0, scope: !204)
!218 = !DILocation(line: 193, column: 1, scope: !197)
!219 = distinct !DISubprogram(name: "rseed", scope: !3, file: !3, line: 200, type: !220, scopeLine: 201, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !222)
!220 = !DISubroutineType(types: !221)
!221 = !{!11}
!222 = !{!223}
!223 = !DILocalVariable(name: "tv", scope: !219, file: !3, line: 202, type: !13)
!224 = !DILocation(line: 202, column: 2, scope: !219)
!225 = !DILocation(line: 202, column: 17, scope: !219)
!226 = !DILocation(line: 203, column: 2, scope: !219)
!227 = !DILocation(line: 204, column: 21, scope: !219)
!228 = !{!229, !230, i64 0}
!229 = !{!"timeval", !230, i64 0, !230, i64 8}
!230 = !{!"long", !56, i64 0}
!231 = !DILocation(line: 204, column: 33, scope: !219)
!232 = !{!229, !230, i64 8}
!233 = !DILocation(line: 204, column: 28, scope: !219)
!234 = !DILocation(line: 204, column: 12, scope: !219)
!235 = !DILocation(line: 204, column: 10, scope: !219)
!236 = !DILocation(line: 204, column: 8, scope: !219)
!237 = !DILocation(line: 206, column: 1, scope: !219)
!238 = !DILocation(line: 205, column: 2, scope: !219)
