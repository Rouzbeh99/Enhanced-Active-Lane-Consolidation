; ModuleID = 'rand2.ll'
source_filename = "rand2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.timeval = type { i64, i64 }

@seed3 = internal unnamed_addr global i32 -1, align 4, !dbg !0
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"argument to setseed must be negative!\0A\00", align 1
@seed2 = internal unnamed_addr global i32 0, align 4, !dbg !23
@iv = internal unnamed_addr global [32 x i32] zeroinitializer, align 16, !dbg !25
@iy = internal unnamed_addr global i32 0, align 4, !dbg !30

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local double @rand2() local_unnamed_addr #0 !dbg !36 {
  %1 = tail call fastcc double @rand2a(), !dbg !40
  ret double %1, !dbg !41
}

; Function Attrs: nofree norecurse nounwind uwtable
define internal fastcc double @rand2a() unnamed_addr #0 !dbg !42 {
  call void @llvm.dbg.value(metadata i32* @seed3, metadata !47, metadata !DIExpression()), !dbg !51
  %1 = load i32, i32* @seed3, align 4, !dbg !52, !tbaa !54
  %2 = icmp slt i32 %1, 1, !dbg !58
  br i1 %2, label %6, label %3, !dbg !59

3:                                                ; preds = %0
  %4 = load i32, i32* @seed2, align 4, !dbg !60, !tbaa !54
  %5 = load i32, i32* @iy, align 4, !dbg !61, !tbaa !54
  br label %30, !dbg !59

6:                                                ; preds = %0
  %7 = icmp eq i32 %1, 0, !dbg !62
  %8 = sub nsw i32 0, %1, !dbg !65
  %9 = select i1 %7, i32 1, i32 %8, !dbg !65
  store i32 %9, i32* @seed3, align 4, !dbg !66, !tbaa !54
  store i32 %9, i32* @seed2, align 4, !dbg !67, !tbaa !54
  call void @llvm.dbg.value(metadata i32 39, metadata !48, metadata !DIExpression()), !dbg !51
  br label %10, !dbg !68

10:                                               ; preds = %25, %6
  %11 = phi i64 [ 39, %6 ], [ %26, %25 ], !dbg !51
  %12 = phi i32 [ %9, %6 ], [ %21, %25 ], !dbg !51
  call void @llvm.dbg.value(metadata i64 %11, metadata !48, metadata !DIExpression()), !dbg !51
  %13 = sdiv i32 %12, 53668, !dbg !70
  call void @llvm.dbg.value(metadata i32 %13, metadata !49, metadata !DIExpression()), !dbg !51
  %14 = mul nsw i32 %13, -53668, !dbg !73
  %15 = add i32 %14, %12, !dbg !73
  %16 = mul nsw i32 %15, 40014, !dbg !74
  %17 = mul nsw i32 %13, -12211, !dbg !75
  %18 = add i32 %16, %17, !dbg !75
  %19 = icmp slt i32 %18, 0, !dbg !76
  %20 = add nsw i32 %18, 2147483563, !dbg !78
  %21 = select i1 %19, i32 %20, i32 %18, !dbg !79
  %22 = icmp ult i64 %11, 32, !dbg !80
  br i1 %22, label %23, label %25, !dbg !82

23:                                               ; preds = %10
  %24 = getelementptr inbounds [32 x i32], [32 x i32]* @iv, i64 0, i64 %11, !dbg !83
  store i32 %21, i32* %24, align 4, !dbg !84, !tbaa !54
  br label %25, !dbg !83

25:                                               ; preds = %23, %10
  %26 = add nsw i64 %11, -1, !dbg !85
  call void @llvm.dbg.value(metadata i64 %26, metadata !48, metadata !DIExpression()), !dbg !51
  %27 = icmp eq i64 %11, 0, !dbg !86
  br i1 %27, label %28, label %10, !dbg !68, !llvm.loop !87

28:                                               ; preds = %25
  store i32 %21, i32* @seed3, align 4, !dbg !89, !tbaa !54
  %29 = load i32, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @iv, i64 0, i64 0), align 16, !dbg !90, !tbaa !54
  store i32 %29, i32* @iy, align 4, !dbg !91, !tbaa !54
  br label %30, !dbg !92

30:                                               ; preds = %28, %3
  %31 = phi i32 [ %29, %28 ], [ %5, %3 ], !dbg !61
  %32 = phi i32 [ %9, %28 ], [ %4, %3 ], !dbg !60
  %33 = phi i32 [ %21, %28 ], [ %1, %3 ], !dbg !93
  %34 = sdiv i32 %33, 53668, !dbg !94
  call void @llvm.dbg.value(metadata i32 %34, metadata !49, metadata !DIExpression()), !dbg !51
  %35 = mul nsw i32 %34, -53668, !dbg !95
  %36 = add nsw i32 %35, %33, !dbg !95
  %37 = mul nsw i32 %36, 40014, !dbg !96
  %38 = mul nsw i32 %34, -12211, !dbg !97
  %39 = add i32 %37, %38, !dbg !97
  %40 = icmp slt i32 %39, 0, !dbg !98
  %41 = add nsw i32 %39, 2147483563, !dbg !100
  %42 = select i1 %40, i32 %41, i32 %39, !dbg !101
  store i32 %42, i32* @seed3, align 4, !dbg !51, !tbaa !54
  %43 = sdiv i32 %32, 52774, !dbg !102
  call void @llvm.dbg.value(metadata i32 %43, metadata !49, metadata !DIExpression()), !dbg !51
  %44 = mul nsw i32 %43, -52774, !dbg !103
  %45 = add i32 %44, %32, !dbg !103
  %46 = mul nsw i32 %45, 40692, !dbg !104
  %47 = mul nsw i32 %43, -3791, !dbg !105
  %48 = add i32 %46, %47, !dbg !105
  %49 = icmp slt i32 %48, 0, !dbg !106
  %50 = add nsw i32 %48, 2147483399, !dbg !108
  %51 = select i1 %49, i32 %50, i32 %48, !dbg !108
  store i32 %51, i32* @seed2, align 4, !dbg !51, !tbaa !54
  %52 = sdiv i32 %31, 67108862, !dbg !109
  call void @llvm.dbg.value(metadata i32 %52, metadata !48, metadata !DIExpression()), !dbg !51
  %53 = sext i32 %52 to i64, !dbg !110
  %54 = getelementptr inbounds [32 x i32], [32 x i32]* @iv, i64 0, i64 %53, !dbg !110
  %55 = load i32, i32* %54, align 4, !dbg !110, !tbaa !54
  %56 = sub nsw i32 %55, %51, !dbg !111
  store i32 %56, i32* @iy, align 4, !dbg !112, !tbaa !54
  store i32 %42, i32* %54, align 4, !dbg !113, !tbaa !54
  %57 = icmp slt i32 %56, 1, !dbg !114
  br i1 %57, label %58, label %60, !dbg !116

58:                                               ; preds = %30
  %59 = add nsw i32 %56, 2147483562, !dbg !117
  store i32 %59, i32* @iy, align 4, !dbg !117, !tbaa !54
  br label %60, !dbg !118

60:                                               ; preds = %58, %30
  %61 = phi i32 [ %59, %58 ], [ %56, %30 ], !dbg !119
  %62 = sitofp i32 %61 to double, !dbg !119
  %63 = fmul double %62, 0x3E0000000AA00007, !dbg !121
  call void @llvm.dbg.value(metadata double %63, metadata !50, metadata !DIExpression()), !dbg !51
  %64 = fcmp ogt double %63, 0x3FEFFFFFFFFFFBC7, !dbg !122
  %65 = select i1 %64, double 0x3FEFFFFFFFFFFBC7, double %63, !dbg !123
  ret double %65, !dbg !124
}

; Function Attrs: nofree nounwind uwtable
define dso_local double @gauss(double* nocapture readonly %0, double* nocapture readonly %1) local_unnamed_addr #1 !dbg !125 {
  call void @llvm.dbg.value(metadata double* %0, metadata !130, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata double* %1, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata double* %0, metadata !133, metadata !DIExpression()) #7, !dbg !145
  call void @llvm.dbg.value(metadata double* %1, metadata !138, metadata !DIExpression()) #7, !dbg !145
  call void @llvm.dbg.value(metadata i32* @seed3, metadata !139, metadata !DIExpression()) #7, !dbg !145
  br label %3, !dbg !147

3:                                                ; preds = %3, %2
  %4 = tail call fastcc double @rand2a() #7, !dbg !148
  %5 = fmul double %4, 2.000000e+00, !dbg !150
  %6 = fadd double %5, -1.000000e+00, !dbg !151
  call void @llvm.dbg.value(metadata double %6, metadata !143, metadata !DIExpression()) #7, !dbg !145
  %7 = tail call fastcc double @rand2a() #7, !dbg !152
  %8 = fmul double %7, 2.000000e+00, !dbg !153
  %9 = fadd double %8, -1.000000e+00, !dbg !154
  call void @llvm.dbg.value(metadata double %9, metadata !144, metadata !DIExpression()) #7, !dbg !145
  %10 = fmul double %6, %6, !dbg !155
  %11 = fmul double %9, %9, !dbg !156
  %12 = fadd double %10, %11, !dbg !157
  call void @llvm.dbg.value(metadata double %12, metadata !142, metadata !DIExpression()) #7, !dbg !145
  %13 = fcmp oge double %12, 1.000000e+00, !dbg !158
  %14 = fcmp oeq double %12, 0.000000e+00, !dbg !159
  %15 = or i1 %13, %14, !dbg !159
  br i1 %15, label %3, label %16, !dbg !160, !llvm.loop !161

16:                                               ; preds = %3
  %17 = tail call double @log(double %12) #7, !dbg !163
  %18 = fmul double %17, -2.000000e+00, !dbg !164
  %19 = fdiv double %18, %12, !dbg !165
  %20 = tail call double @sqrt(double %19) #7, !dbg !166
  call void @llvm.dbg.value(metadata double %20, metadata !140, metadata !DIExpression()) #7, !dbg !145
  %21 = fmul double %6, %20, !dbg !167
  call void @llvm.dbg.value(metadata double %21, metadata !141, metadata !DIExpression()) #7, !dbg !145
  %22 = load double, double* %1, align 8, !dbg !168, !tbaa !169
  %23 = fmul double %22, %21, !dbg !171
  %24 = load double, double* %0, align 8, !dbg !172, !tbaa !169
  %25 = fadd double %23, %24, !dbg !173
  ret double %25, !dbg !174
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @setseed(i32* nocapture readonly %0) local_unnamed_addr #1 !dbg !175 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !179, metadata !DIExpression()), !dbg !180
  %2 = load i32, i32* %0, align 4, !dbg !181, !tbaa !54
  %3 = icmp sgt i32 %2, -1, !dbg !183
  br i1 %3, label %4, label %7, !dbg !184

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !185, !tbaa !187
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %5) #8, !dbg !189
  br label %8, !dbg !190

7:                                                ; preds = %1
  store i32 %2, i32* @seed3, align 4, !dbg !191, !tbaa !54
  br label %8, !dbg !193

8:                                                ; preds = %7, %4
  %9 = phi i32 [ 1, %4 ], [ 0, %7 ], !dbg !194
  ret i32 %9, !dbg !195
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rseed() local_unnamed_addr #3 !dbg !196 {
  %1 = alloca %struct.timeval, align 8
  %2 = bitcast %struct.timeval* %1 to i8*, !dbg !201
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !201
  call void @llvm.dbg.declare(metadata %struct.timeval* %1, metadata !200, metadata !DIExpression()), !dbg !202
  %3 = call i32 @gettimeofday(%struct.timeval* nonnull %1, i8* null) #7, !dbg !203
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 0, !dbg !204
  %5 = load i64, i64* %4, align 8, !dbg !204, !tbaa !205
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 1, !dbg !208
  %7 = load i64, i64* %6, align 8, !dbg !208, !tbaa !209
  %8 = xor i64 %7, %5, !dbg !210
  %9 = trunc i64 %8 to i32, !dbg !211
  %10 = sub nsw i32 0, %9, !dbg !212
  store i32 %10, i32* @seed3, align 4, !dbg !213, !tbaa !54
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !214
  ret i32 %10, !dbg !215
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nofree nounwind
declare !dbg !7 dso_local i32 @gettimeofday(%struct.timeval* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nofree nounwind
declare dso_local double @sqrt(double) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local double @log(double) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #6

attributes #0 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { cold }

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
!60 = !DILocation(line: 124, column: 6, scope: !42)
!61 = !DILocation(line: 128, column: 6, scope: !42)
!62 = !DILocation(line: 105, column: 14, scope: !63)
!63 = distinct !DILexicalBlock(scope: !64, file: !3, line: 105, column: 7)
!64 = distinct !DILexicalBlock(scope: !53, file: !3, line: 104, column: 18)
!65 = !DILocation(line: 105, column: 7, scope: !64)
!66 = !DILocation(line: 0, scope: !63)
!67 = !DILocation(line: 109, column: 9, scope: !64)
!68 = !DILocation(line: 110, column: 3, scope: !69)
!69 = distinct !DILexicalBlock(scope: !64, file: !3, line: 110, column: 3)
!70 = !DILocation(line: 111, column: 14, scope: !71)
!71 = distinct !DILexicalBlock(scope: !72, file: !3, line: 110, column: 35)
!72 = distinct !DILexicalBlock(scope: !69, file: !3, line: 110, column: 3)
!73 = !DILocation(line: 112, column: 26, scope: !71)
!74 = !DILocation(line: 112, column: 16, scope: !71)
!75 = !DILocation(line: 112, column: 38, scope: !71)
!76 = !DILocation(line: 113, column: 14, scope: !77)
!77 = distinct !DILexicalBlock(scope: !71, file: !3, line: 113, column: 8)
!78 = !DILocation(line: 114, column: 11, scope: !77)
!79 = !DILocation(line: 113, column: 8, scope: !71)
!80 = !DILocation(line: 115, column: 10, scope: !81)
!81 = distinct !DILexicalBlock(scope: !71, file: !3, line: 115, column: 8)
!82 = !DILocation(line: 115, column: 8, scope: !71)
!83 = !DILocation(line: 116, column: 5, scope: !81)
!84 = !DILocation(line: 116, column: 13, scope: !81)
!85 = !DILocation(line: 110, column: 31, scope: !72)
!86 = !DILocation(line: 110, column: 24, scope: !72)
!87 = distinct !{!87, !68, !88}
!88 = !DILocation(line: 117, column: 3, scope: !69)
!89 = !DILocation(line: 0, scope: !71)
!90 = !DILocation(line: 118, column: 8, scope: !64)
!91 = !DILocation(line: 118, column: 6, scope: !64)
!92 = !DILocation(line: 119, column: 2, scope: !64)
!93 = !DILocation(line: 120, column: 6, scope: !42)
!94 = !DILocation(line: 120, column: 12, scope: !42)
!95 = !DILocation(line: 121, column: 24, scope: !42)
!96 = !DILocation(line: 121, column: 14, scope: !42)
!97 = !DILocation(line: 121, column: 36, scope: !42)
!98 = !DILocation(line: 122, column: 12, scope: !99)
!99 = distinct !DILexicalBlock(scope: !42, file: !3, line: 122, column: 6)
!100 = !DILocation(line: 123, column: 9, scope: !99)
!101 = !DILocation(line: 122, column: 6, scope: !42)
!102 = !DILocation(line: 124, column: 12, scope: !42)
!103 = !DILocation(line: 125, column: 24, scope: !42)
!104 = !DILocation(line: 125, column: 14, scope: !42)
!105 = !DILocation(line: 125, column: 36, scope: !42)
!106 = !DILocation(line: 126, column: 12, scope: !107)
!107 = distinct !DILexicalBlock(scope: !42, file: !3, line: 126, column: 6)
!108 = !DILocation(line: 126, column: 6, scope: !42)
!109 = !DILocation(line: 128, column: 9, scope: !42)
!110 = !DILocation(line: 129, column: 7, scope: !42)
!111 = !DILocation(line: 129, column: 15, scope: !42)
!112 = !DILocation(line: 129, column: 5, scope: !42)
!113 = !DILocation(line: 130, column: 10, scope: !42)
!114 = !DILocation(line: 131, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !42, file: !3, line: 131, column: 6)
!116 = !DILocation(line: 131, column: 6, scope: !42)
!117 = !DILocation(line: 132, column: 6, scope: !115)
!118 = !DILocation(line: 132, column: 3, scope: !115)
!119 = !DILocation(line: 133, column: 20, scope: !120)
!120 = distinct !DILexicalBlock(scope: !42, file: !3, line: 133, column: 6)
!121 = !DILocation(line: 133, column: 18, scope: !120)
!122 = !DILocation(line: 133, column: 25, scope: !120)
!123 = !DILocation(line: 0, scope: !120)
!124 = !DILocation(line: 137, column: 1, scope: !42)
!125 = distinct !DISubprogram(name: "gauss", scope: !3, file: !3, line: 175, type: !126, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !129)
!126 = !DISubroutineType(types: !127)
!127 = !{!39, !128, !128}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!129 = !{!130, !131}
!130 = !DILocalVariable(name: "mean", arg: 1, scope: !125, file: !3, line: 175, type: !128)
!131 = !DILocalVariable(name: "sd", arg: 2, scope: !125, file: !3, line: 175, type: !128)
!132 = !DILocation(line: 0, scope: !125)
!133 = !DILocalVariable(name: "mean", arg: 1, scope: !134, file: !3, line: 147, type: !128)
!134 = distinct !DISubprogram(name: "gaussa", scope: !3, file: !3, line: 147, type: !135, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !137)
!135 = !DISubroutineType(types: !136)
!136 = !{!39, !128, !128, !45}
!137 = !{!133, !138, !139, !140, !141, !142, !143, !144}
!138 = !DILocalVariable(name: "sd", arg: 2, scope: !134, file: !3, line: 147, type: !128)
!139 = !DILocalVariable(name: "seed", arg: 3, scope: !134, file: !3, line: 147, type: !45)
!140 = !DILocalVariable(name: "fac", scope: !134, file: !3, line: 149, type: !39)
!141 = !DILocalVariable(name: "gdev1", scope: !134, file: !3, line: 149, type: !39)
!142 = !DILocalVariable(name: "rsq", scope: !134, file: !3, line: 149, type: !39)
!143 = !DILocalVariable(name: "s1", scope: !134, file: !3, line: 149, type: !39)
!144 = !DILocalVariable(name: "s2", scope: !134, file: !3, line: 149, type: !39)
!145 = !DILocation(line: 0, scope: !134, inlinedAt: !146)
!146 = distinct !DILocation(line: 177, column: 9, scope: !125)
!147 = !DILocation(line: 151, column: 3, scope: !134, inlinedAt: !146)
!148 = !DILocation(line: 152, column: 12, scope: !149, inlinedAt: !146)
!149 = distinct !DILexicalBlock(scope: !134, file: !3, line: 151, column: 6)
!150 = !DILocation(line: 152, column: 11, scope: !149, inlinedAt: !146)
!151 = !DILocation(line: 152, column: 25, scope: !149, inlinedAt: !146)
!152 = !DILocation(line: 153, column: 12, scope: !149, inlinedAt: !146)
!153 = !DILocation(line: 153, column: 11, scope: !149, inlinedAt: !146)
!154 = !DILocation(line: 153, column: 25, scope: !149, inlinedAt: !146)
!155 = !DILocation(line: 154, column: 12, scope: !149, inlinedAt: !146)
!156 = !DILocation(line: 154, column: 20, scope: !149, inlinedAt: !146)
!157 = !DILocation(line: 154, column: 16, scope: !149, inlinedAt: !146)
!158 = !DILocation(line: 155, column: 17, scope: !134, inlinedAt: !146)
!159 = !DILocation(line: 155, column: 23, scope: !134, inlinedAt: !146)
!160 = !DILocation(line: 155, column: 3, scope: !149, inlinedAt: !146)
!161 = distinct !{!161, !147, !162}
!162 = !DILocation(line: 155, column: 37, scope: !134, inlinedAt: !146)
!163 = !DILocation(line: 156, column: 18, scope: !134, inlinedAt: !146)
!164 = !DILocation(line: 156, column: 17, scope: !134, inlinedAt: !146)
!165 = !DILocation(line: 156, column: 26, scope: !134, inlinedAt: !146)
!166 = !DILocation(line: 156, column: 9, scope: !134, inlinedAt: !146)
!167 = !DILocation(line: 157, column: 13, scope: !134, inlinedAt: !146)
!168 = !DILocation(line: 159, column: 11, scope: !134, inlinedAt: !146)
!169 = !{!170, !170, i64 0}
!170 = !{!"double", !56, i64 0}
!171 = !DILocation(line: 159, column: 14, scope: !134, inlinedAt: !146)
!172 = !DILocation(line: 159, column: 23, scope: !134, inlinedAt: !146)
!173 = !DILocation(line: 159, column: 21, scope: !134, inlinedAt: !146)
!174 = !DILocation(line: 177, column: 2, scope: !125)
!175 = distinct !DISubprogram(name: "setseed", scope: !3, file: !3, line: 184, type: !176, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !178)
!176 = !DISubroutineType(types: !177)
!177 = !{!11, !45}
!178 = !{!179}
!179 = !DILocalVariable(name: "seed4", arg: 1, scope: !175, file: !3, line: 184, type: !45)
!180 = !DILocation(line: 0, scope: !175)
!181 = !DILocation(line: 186, column: 6, scope: !182)
!182 = distinct !DILexicalBlock(scope: !175, file: !3, line: 186, column: 6)
!183 = !DILocation(line: 186, column: 13, scope: !182)
!184 = !DILocation(line: 186, column: 6, scope: !175)
!185 = !DILocation(line: 187, column: 12, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !3, line: 186, column: 19)
!187 = !{!188, !188, i64 0}
!188 = !{!"any pointer", !56, i64 0}
!189 = !DILocation(line: 187, column: 3, scope: !186)
!190 = !DILocation(line: 188, column: 3, scope: !186)
!191 = !DILocation(line: 190, column: 9, scope: !192)
!192 = distinct !DILexicalBlock(scope: !182, file: !3, line: 189, column: 9)
!193 = !DILocation(line: 191, column: 3, scope: !192)
!194 = !DILocation(line: 0, scope: !182)
!195 = !DILocation(line: 193, column: 1, scope: !175)
!196 = distinct !DISubprogram(name: "rseed", scope: !3, file: !3, line: 200, type: !197, scopeLine: 201, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !199)
!197 = !DISubroutineType(types: !198)
!198 = !{!11}
!199 = !{!200}
!200 = !DILocalVariable(name: "tv", scope: !196, file: !3, line: 202, type: !13)
!201 = !DILocation(line: 202, column: 2, scope: !196)
!202 = !DILocation(line: 202, column: 17, scope: !196)
!203 = !DILocation(line: 203, column: 2, scope: !196)
!204 = !DILocation(line: 204, column: 21, scope: !196)
!205 = !{!206, !207, i64 0}
!206 = !{!"timeval", !207, i64 0, !207, i64 8}
!207 = !{!"long", !56, i64 0}
!208 = !DILocation(line: 204, column: 33, scope: !196)
!209 = !{!206, !207, i64 8}
!210 = !DILocation(line: 204, column: 28, scope: !196)
!211 = !DILocation(line: 204, column: 12, scope: !196)
!212 = !DILocation(line: 204, column: 10, scope: !196)
!213 = !DILocation(line: 204, column: 8, scope: !196)
!214 = !DILocation(line: 206, column: 1, scope: !196)
!215 = !DILocation(line: 205, column: 2, scope: !196)
