; ModuleID = '/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/rand2.c'
source_filename = "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/rand2.c"
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
@iv = internal unnamed_addr global [32 x i32] zeroinitializer, align 16, !dbg !26
@iy = internal unnamed_addr global i32 0, align 4, !dbg !31

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local double @rand2() local_unnamed_addr #0 !dbg !37 {
  %1 = tail call fastcc double @rand2a(), !dbg !41
  ret double %1, !dbg !42
}

; Function Attrs: nofree norecurse nounwind uwtable
define internal fastcc double @rand2a() unnamed_addr #0 !dbg !43 {
  call void @llvm.dbg.value(metadata i32* @seed3, metadata !48, metadata !DIExpression()), !dbg !52
  %1 = load i32, i32* @seed3, align 4, !dbg !53, !tbaa !55
  %2 = icmp slt i32 %1, 1, !dbg !59
  br i1 %2, label %6, label %3, !dbg !60

3:                                                ; preds = %0
  %4 = load i32, i32* @seed2, align 4, !dbg !61, !tbaa !55
  %5 = load i32, i32* @iy, align 4, !dbg !62, !tbaa !55
  br label %30, !dbg !60

6:                                                ; preds = %0
  %7 = icmp eq i32 %1, 0, !dbg !63
  %8 = sub nsw i32 0, %1, !dbg !66
  %9 = select i1 %7, i32 1, i32 %8, !dbg !66
  store i32 %9, i32* @seed3, align 4, !dbg !67, !tbaa !55
  store i32 %9, i32* @seed2, align 4, !dbg !68, !tbaa !55
  call void @llvm.dbg.value(metadata i32 39, metadata !49, metadata !DIExpression()), !dbg !52
  br label %10, !dbg !69

10:                                               ; preds = %25, %6
  %11 = phi i64 [ 39, %6 ], [ %26, %25 ], !dbg !52
  %12 = phi i32 [ %9, %6 ], [ %21, %25 ], !dbg !52
  call void @llvm.dbg.value(metadata i64 %11, metadata !49, metadata !DIExpression()), !dbg !52
  %13 = sdiv i32 %12, 53668, !dbg !71
  call void @llvm.dbg.value(metadata i32 %13, metadata !50, metadata !DIExpression()), !dbg !52
  %14 = mul nsw i32 %13, -53668, !dbg !74
  %15 = add i32 %14, %12, !dbg !74
  %16 = mul nsw i32 %15, 40014, !dbg !75
  %17 = mul nsw i32 %13, -12211, !dbg !76
  %18 = add i32 %16, %17, !dbg !76
  %19 = icmp slt i32 %18, 0, !dbg !77
  %20 = add nsw i32 %18, 2147483563, !dbg !79
  %21 = select i1 %19, i32 %20, i32 %18, !dbg !80
  %22 = icmp ult i64 %11, 32, !dbg !81
  br i1 %22, label %23, label %25, !dbg !83

23:                                               ; preds = %10
  %24 = getelementptr inbounds [32 x i32], [32 x i32]* @iv, i64 0, i64 %11, !dbg !84
  store i32 %21, i32* %24, align 4, !dbg !85, !tbaa !55
  br label %25, !dbg !84

25:                                               ; preds = %10, %23
  %26 = add nsw i64 %11, -1, !dbg !86
  call void @llvm.dbg.value(metadata i64 %26, metadata !49, metadata !DIExpression()), !dbg !52
  %27 = icmp eq i64 %11, 0, !dbg !87
  br i1 %27, label %28, label %10, !dbg !69, !llvm.loop !88

28:                                               ; preds = %25
  store i32 %21, i32* @seed3, align 4, !dbg !90, !tbaa !55
  %29 = load i32, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @iv, i64 0, i64 0), align 16, !dbg !91, !tbaa !55
  store i32 %29, i32* @iy, align 4, !dbg !92, !tbaa !55
  br label %30, !dbg !93

30:                                               ; preds = %3, %28
  %31 = phi i32 [ %29, %28 ], [ %5, %3 ], !dbg !62
  %32 = phi i32 [ %9, %28 ], [ %4, %3 ], !dbg !61
  %33 = phi i32 [ %21, %28 ], [ %1, %3 ], !dbg !94
  %34 = sdiv i32 %33, 53668, !dbg !95
  call void @llvm.dbg.value(metadata i32 %34, metadata !50, metadata !DIExpression()), !dbg !52
  %35 = mul nsw i32 %34, -53668, !dbg !96
  %36 = add nsw i32 %35, %33, !dbg !96
  %37 = mul nsw i32 %36, 40014, !dbg !97
  %38 = mul nsw i32 %34, -12211, !dbg !98
  %39 = add i32 %37, %38, !dbg !98
  %40 = icmp slt i32 %39, 0, !dbg !99
  %41 = add nsw i32 %39, 2147483563, !dbg !101
  %42 = select i1 %40, i32 %41, i32 %39, !dbg !102
  store i32 %42, i32* @seed3, align 4, !dbg !52, !tbaa !55
  %43 = sdiv i32 %32, 52774, !dbg !103
  call void @llvm.dbg.value(metadata i32 %43, metadata !50, metadata !DIExpression()), !dbg !52
  %44 = mul nsw i32 %43, -52774, !dbg !104
  %45 = add i32 %44, %32, !dbg !104
  %46 = mul nsw i32 %45, 40692, !dbg !105
  %47 = mul nsw i32 %43, -3791, !dbg !106
  %48 = add i32 %46, %47, !dbg !106
  %49 = icmp slt i32 %48, 0, !dbg !107
  %50 = add nsw i32 %48, 2147483399, !dbg !109
  %51 = select i1 %49, i32 %50, i32 %48, !dbg !109
  store i32 %51, i32* @seed2, align 4, !dbg !52, !tbaa !55
  %52 = sdiv i32 %31, 67108862, !dbg !110
  call void @llvm.dbg.value(metadata i32 %52, metadata !49, metadata !DIExpression()), !dbg !52
  %53 = sext i32 %52 to i64, !dbg !111
  %54 = getelementptr inbounds [32 x i32], [32 x i32]* @iv, i64 0, i64 %53, !dbg !111
  %55 = load i32, i32* %54, align 4, !dbg !111, !tbaa !55
  %56 = sub nsw i32 %55, %51, !dbg !112
  store i32 %56, i32* @iy, align 4, !dbg !113, !tbaa !55
  store i32 %42, i32* %54, align 4, !dbg !114, !tbaa !55
  %57 = icmp slt i32 %56, 1, !dbg !115
  br i1 %57, label %58, label %60, !dbg !117

58:                                               ; preds = %30
  %59 = add nsw i32 %56, 2147483562, !dbg !118
  store i32 %59, i32* @iy, align 4, !dbg !118, !tbaa !55
  br label %60, !dbg !119

60:                                               ; preds = %58, %30
  %61 = phi i32 [ %59, %58 ], [ %56, %30 ], !dbg !120
  %62 = sitofp i32 %61 to double, !dbg !120
  %63 = fmul double %62, 0x3E0000000AA00007, !dbg !122
  call void @llvm.dbg.value(metadata double %63, metadata !51, metadata !DIExpression()), !dbg !52
  %64 = fcmp ogt double %63, 0x3FEFFFFFFFFFFBC7, !dbg !123
  %65 = select i1 %64, double 0x3FEFFFFFFFFFFBC7, double %63, !dbg !124
  ret double %65, !dbg !125
}

; Function Attrs: nofree nounwind uwtable
define dso_local double @gauss(double* nocapture readonly %0, double* nocapture readonly %1) local_unnamed_addr #1 !dbg !126 {
  call void @llvm.dbg.value(metadata double* %0, metadata !131, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double* %1, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata double* %0, metadata !134, metadata !DIExpression()) #7, !dbg !146
  call void @llvm.dbg.value(metadata double* %1, metadata !139, metadata !DIExpression()) #7, !dbg !146
  call void @llvm.dbg.value(metadata i32* @seed3, metadata !140, metadata !DIExpression()) #7, !dbg !146
  br label %3, !dbg !148

3:                                                ; preds = %3, %2
  %4 = tail call fastcc double @rand2a() #7, !dbg !149
  %5 = tail call fastcc double @rand2a() #7, !dbg !151
  %6 = insertelement <2 x double> undef, double %4, i32 0, !dbg !152
  %7 = insertelement <2 x double> %6, double %5, i32 1, !dbg !152
  %8 = fmul <2 x double> %7, <double 2.000000e+00, double 2.000000e+00>, !dbg !152
  %9 = fadd <2 x double> %8, <double -1.000000e+00, double -1.000000e+00>, !dbg !153
  %10 = fmul <2 x double> %9, %9, !dbg !154
  %11 = extractelement <2 x double> %10, i32 0, !dbg !155
  %12 = extractelement <2 x double> %10, i32 1, !dbg !155
  %13 = fadd double %11, %12, !dbg !155
  call void @llvm.dbg.value(metadata double %13, metadata !143, metadata !DIExpression()) #7, !dbg !146
  %14 = fcmp oge double %13, 1.000000e+00, !dbg !156
  %15 = fcmp oeq double %13, 0.000000e+00, !dbg !157
  %16 = or i1 %14, %15, !dbg !157
  br i1 %16, label %3, label %17, !dbg !158, !llvm.loop !159

17:                                               ; preds = %3
  %18 = tail call double @log(double %13) #7, !dbg !161
  %19 = fmul double %18, -2.000000e+00, !dbg !162
  %20 = fdiv double %19, %13, !dbg !163
  %21 = tail call double @sqrt(double %20) #7, !dbg !164
  call void @llvm.dbg.value(metadata double %21, metadata !141, metadata !DIExpression()) #7, !dbg !146
  %22 = extractelement <2 x double> %9, i32 0, !dbg !165
  %23 = fmul double %22, %21, !dbg !165
  call void @llvm.dbg.value(metadata double %23, metadata !142, metadata !DIExpression()) #7, !dbg !146
  %24 = load double, double* %1, align 8, !dbg !166, !tbaa !167
  %25 = fmul double %24, %23, !dbg !169
  %26 = load double, double* %0, align 8, !dbg !170, !tbaa !167
  %27 = fadd double %25, %26, !dbg !171
  ret double %27, !dbg !172
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @setseed(i32* nocapture readonly %0) local_unnamed_addr #1 !dbg !173 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !177, metadata !DIExpression()), !dbg !178
  %2 = load i32, i32* %0, align 4, !dbg !179, !tbaa !55
  %3 = icmp sgt i32 %2, -1, !dbg !181
  br i1 %3, label %4, label %7, !dbg !182

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !183, !tbaa !185
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %5) #8, !dbg !187
  br label %8, !dbg !188

7:                                                ; preds = %1
  store i32 %2, i32* @seed3, align 4, !dbg !189, !tbaa !55
  br label %8, !dbg !191

8:                                                ; preds = %7, %4
  %9 = phi i32 [ 1, %4 ], [ 0, %7 ], !dbg !192
  ret i32 %9, !dbg !193
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rseed() local_unnamed_addr #3 !dbg !194 {
  %1 = alloca %struct.timeval, align 8
  %2 = bitcast %struct.timeval* %1 to i8*, !dbg !199
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !199
  call void @llvm.dbg.declare(metadata %struct.timeval* %1, metadata !198, metadata !DIExpression()), !dbg !200
  %3 = call i32 @gettimeofday(%struct.timeval* nonnull %1, i8* null) #7, !dbg !201
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 0, !dbg !202
  %5 = load i64, i64* %4, align 8, !dbg !202, !tbaa !203
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 1, !dbg !206
  %7 = load i64, i64* %6, align 8, !dbg !206, !tbaa !207
  %8 = xor i64 %7, %5, !dbg !208
  %9 = trunc i64 %8 to i32, !dbg !209
  %10 = sub nsw i32 0, %9, !dbg !210
  store i32 %10, i32* @seed3, align 4, !dbg !211, !tbaa !55
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !212
  ret i32 %10, !dbg !213
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nofree nounwind
declare !dbg !7 dso_local i32 @gettimeofday(%struct.timeval* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nofree nounwind
declare dso_local double @sqrt(double) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local double @log(double) local_unnamed_addr #5

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #6

attributes #0 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { cold }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!33, !34, !35}
!llvm.ident = !{!36}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "seed3", scope: !2, file: !25, line: 73, type: !11, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !22, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/rand2.c", directory: "/home/rouzbeh/Graduate/Research/LLVM/ALC/test/Compiled_files")
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
!22 = !{!23, !26, !31, !0}
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "seed2", scope: !2, file: !25, line: 72, type: !11, isLocal: true, isDefinition: true)
!25 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/rand2.c", directory: "/home/rouzbeh/Graduate/Research")
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "iv", scope: !2, file: !25, line: 75, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1024, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 32)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "iy", scope: !2, file: !25, line: 74, type: !11, isLocal: true, isDefinition: true)
!33 = !{i32 7, !"Dwarf Version", i32 4}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{i32 1, !"wchar_size", i32 4}
!36 = !{!"clang version 10.0.0-4ubuntu1 "}
!37 = distinct !DISubprogram(name: "rand2", scope: !25, file: !25, line: 169, type: !38, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!38 = !DISubroutineType(types: !39)
!39 = !{!40}
!40 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!41 = !DILocation(line: 172, column: 9, scope: !37)
!42 = !DILocation(line: 172, column: 2, scope: !37)
!43 = distinct !DISubprogram(name: "rand2a", scope: !25, file: !25, line: 99, type: !44, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !47)
!44 = !DISubroutineType(types: !45)
!45 = !{!40, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!47 = !{!48, !49, !50, !51}
!48 = !DILocalVariable(name: "seed", arg: 1, scope: !43, file: !25, line: 99, type: !46)
!49 = !DILocalVariable(name: "j", scope: !43, file: !25, line: 101, type: !11)
!50 = !DILocalVariable(name: "k", scope: !43, file: !25, line: 101, type: !11)
!51 = !DILocalVariable(name: "temp", scope: !43, file: !25, line: 102, type: !40)
!52 = !DILocation(line: 0, scope: !43)
!53 = !DILocation(line: 104, column: 6, scope: !54)
!54 = distinct !DILexicalBlock(scope: !43, file: !25, line: 104, column: 6)
!55 = !{!56, !56, i64 0}
!56 = !{!"int", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !DILocation(line: 104, column: 12, scope: !54)
!60 = !DILocation(line: 104, column: 6, scope: !43)
!61 = !DILocation(line: 124, column: 6, scope: !43)
!62 = !DILocation(line: 128, column: 6, scope: !43)
!63 = !DILocation(line: 105, column: 14, scope: !64)
!64 = distinct !DILexicalBlock(scope: !65, file: !25, line: 105, column: 7)
!65 = distinct !DILexicalBlock(scope: !54, file: !25, line: 104, column: 18)
!66 = !DILocation(line: 105, column: 7, scope: !65)
!67 = !DILocation(line: 0, scope: !64)
!68 = !DILocation(line: 109, column: 9, scope: !65)
!69 = !DILocation(line: 110, column: 3, scope: !70)
!70 = distinct !DILexicalBlock(scope: !65, file: !25, line: 110, column: 3)
!71 = !DILocation(line: 111, column: 14, scope: !72)
!72 = distinct !DILexicalBlock(scope: !73, file: !25, line: 110, column: 35)
!73 = distinct !DILexicalBlock(scope: !70, file: !25, line: 110, column: 3)
!74 = !DILocation(line: 112, column: 26, scope: !72)
!75 = !DILocation(line: 112, column: 16, scope: !72)
!76 = !DILocation(line: 112, column: 38, scope: !72)
!77 = !DILocation(line: 113, column: 14, scope: !78)
!78 = distinct !DILexicalBlock(scope: !72, file: !25, line: 113, column: 8)
!79 = !DILocation(line: 114, column: 11, scope: !78)
!80 = !DILocation(line: 113, column: 8, scope: !72)
!81 = !DILocation(line: 115, column: 10, scope: !82)
!82 = distinct !DILexicalBlock(scope: !72, file: !25, line: 115, column: 8)
!83 = !DILocation(line: 115, column: 8, scope: !72)
!84 = !DILocation(line: 116, column: 5, scope: !82)
!85 = !DILocation(line: 116, column: 13, scope: !82)
!86 = !DILocation(line: 110, column: 31, scope: !73)
!87 = !DILocation(line: 110, column: 24, scope: !73)
!88 = distinct !{!88, !69, !89}
!89 = !DILocation(line: 117, column: 3, scope: !70)
!90 = !DILocation(line: 0, scope: !72)
!91 = !DILocation(line: 118, column: 8, scope: !65)
!92 = !DILocation(line: 118, column: 6, scope: !65)
!93 = !DILocation(line: 119, column: 2, scope: !65)
!94 = !DILocation(line: 120, column: 6, scope: !43)
!95 = !DILocation(line: 120, column: 12, scope: !43)
!96 = !DILocation(line: 121, column: 24, scope: !43)
!97 = !DILocation(line: 121, column: 14, scope: !43)
!98 = !DILocation(line: 121, column: 36, scope: !43)
!99 = !DILocation(line: 122, column: 12, scope: !100)
!100 = distinct !DILexicalBlock(scope: !43, file: !25, line: 122, column: 6)
!101 = !DILocation(line: 123, column: 9, scope: !100)
!102 = !DILocation(line: 122, column: 6, scope: !43)
!103 = !DILocation(line: 124, column: 12, scope: !43)
!104 = !DILocation(line: 125, column: 24, scope: !43)
!105 = !DILocation(line: 125, column: 14, scope: !43)
!106 = !DILocation(line: 125, column: 36, scope: !43)
!107 = !DILocation(line: 126, column: 12, scope: !108)
!108 = distinct !DILexicalBlock(scope: !43, file: !25, line: 126, column: 6)
!109 = !DILocation(line: 126, column: 6, scope: !43)
!110 = !DILocation(line: 128, column: 9, scope: !43)
!111 = !DILocation(line: 129, column: 7, scope: !43)
!112 = !DILocation(line: 129, column: 15, scope: !43)
!113 = !DILocation(line: 129, column: 5, scope: !43)
!114 = !DILocation(line: 130, column: 10, scope: !43)
!115 = !DILocation(line: 131, column: 9, scope: !116)
!116 = distinct !DILexicalBlock(scope: !43, file: !25, line: 131, column: 6)
!117 = !DILocation(line: 131, column: 6, scope: !43)
!118 = !DILocation(line: 132, column: 6, scope: !116)
!119 = !DILocation(line: 132, column: 3, scope: !116)
!120 = !DILocation(line: 133, column: 20, scope: !121)
!121 = distinct !DILexicalBlock(scope: !43, file: !25, line: 133, column: 6)
!122 = !DILocation(line: 133, column: 18, scope: !121)
!123 = !DILocation(line: 133, column: 25, scope: !121)
!124 = !DILocation(line: 0, scope: !121)
!125 = !DILocation(line: 137, column: 1, scope: !43)
!126 = distinct !DISubprogram(name: "gauss", scope: !25, file: !25, line: 175, type: !127, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !130)
!127 = !DISubroutineType(types: !128)
!128 = !{!40, !129, !129}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!130 = !{!131, !132}
!131 = !DILocalVariable(name: "mean", arg: 1, scope: !126, file: !25, line: 175, type: !129)
!132 = !DILocalVariable(name: "sd", arg: 2, scope: !126, file: !25, line: 175, type: !129)
!133 = !DILocation(line: 0, scope: !126)
!134 = !DILocalVariable(name: "mean", arg: 1, scope: !135, file: !25, line: 147, type: !129)
!135 = distinct !DISubprogram(name: "gaussa", scope: !25, file: !25, line: 147, type: !136, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !138)
!136 = !DISubroutineType(types: !137)
!137 = !{!40, !129, !129, !46}
!138 = !{!134, !139, !140, !141, !142, !143, !144, !145}
!139 = !DILocalVariable(name: "sd", arg: 2, scope: !135, file: !25, line: 147, type: !129)
!140 = !DILocalVariable(name: "seed", arg: 3, scope: !135, file: !25, line: 147, type: !46)
!141 = !DILocalVariable(name: "fac", scope: !135, file: !25, line: 149, type: !40)
!142 = !DILocalVariable(name: "gdev1", scope: !135, file: !25, line: 149, type: !40)
!143 = !DILocalVariable(name: "rsq", scope: !135, file: !25, line: 149, type: !40)
!144 = !DILocalVariable(name: "s1", scope: !135, file: !25, line: 149, type: !40)
!145 = !DILocalVariable(name: "s2", scope: !135, file: !25, line: 149, type: !40)
!146 = !DILocation(line: 0, scope: !135, inlinedAt: !147)
!147 = distinct !DILocation(line: 177, column: 9, scope: !126)
!148 = !DILocation(line: 151, column: 3, scope: !135, inlinedAt: !147)
!149 = !DILocation(line: 152, column: 12, scope: !150, inlinedAt: !147)
!150 = distinct !DILexicalBlock(scope: !135, file: !25, line: 151, column: 6)
!151 = !DILocation(line: 153, column: 12, scope: !150, inlinedAt: !147)
!152 = !DILocation(line: 152, column: 11, scope: !150, inlinedAt: !147)
!153 = !DILocation(line: 152, column: 25, scope: !150, inlinedAt: !147)
!154 = !DILocation(line: 154, column: 12, scope: !150, inlinedAt: !147)
!155 = !DILocation(line: 154, column: 16, scope: !150, inlinedAt: !147)
!156 = !DILocation(line: 155, column: 17, scope: !135, inlinedAt: !147)
!157 = !DILocation(line: 155, column: 23, scope: !135, inlinedAt: !147)
!158 = !DILocation(line: 155, column: 3, scope: !150, inlinedAt: !147)
!159 = distinct !{!159, !148, !160}
!160 = !DILocation(line: 155, column: 37, scope: !135, inlinedAt: !147)
!161 = !DILocation(line: 156, column: 18, scope: !135, inlinedAt: !147)
!162 = !DILocation(line: 156, column: 17, scope: !135, inlinedAt: !147)
!163 = !DILocation(line: 156, column: 26, scope: !135, inlinedAt: !147)
!164 = !DILocation(line: 156, column: 9, scope: !135, inlinedAt: !147)
!165 = !DILocation(line: 157, column: 13, scope: !135, inlinedAt: !147)
!166 = !DILocation(line: 159, column: 11, scope: !135, inlinedAt: !147)
!167 = !{!168, !168, i64 0}
!168 = !{!"double", !57, i64 0}
!169 = !DILocation(line: 159, column: 14, scope: !135, inlinedAt: !147)
!170 = !DILocation(line: 159, column: 23, scope: !135, inlinedAt: !147)
!171 = !DILocation(line: 159, column: 21, scope: !135, inlinedAt: !147)
!172 = !DILocation(line: 177, column: 2, scope: !126)
!173 = distinct !DISubprogram(name: "setseed", scope: !25, file: !25, line: 184, type: !174, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !176)
!174 = !DISubroutineType(types: !175)
!175 = !{!11, !46}
!176 = !{!177}
!177 = !DILocalVariable(name: "seed4", arg: 1, scope: !173, file: !25, line: 184, type: !46)
!178 = !DILocation(line: 0, scope: !173)
!179 = !DILocation(line: 186, column: 6, scope: !180)
!180 = distinct !DILexicalBlock(scope: !173, file: !25, line: 186, column: 6)
!181 = !DILocation(line: 186, column: 13, scope: !180)
!182 = !DILocation(line: 186, column: 6, scope: !173)
!183 = !DILocation(line: 187, column: 12, scope: !184)
!184 = distinct !DILexicalBlock(scope: !180, file: !25, line: 186, column: 19)
!185 = !{!186, !186, i64 0}
!186 = !{!"any pointer", !57, i64 0}
!187 = !DILocation(line: 187, column: 3, scope: !184)
!188 = !DILocation(line: 188, column: 3, scope: !184)
!189 = !DILocation(line: 190, column: 9, scope: !190)
!190 = distinct !DILexicalBlock(scope: !180, file: !25, line: 189, column: 9)
!191 = !DILocation(line: 191, column: 3, scope: !190)
!192 = !DILocation(line: 0, scope: !180)
!193 = !DILocation(line: 193, column: 1, scope: !173)
!194 = distinct !DISubprogram(name: "rseed", scope: !25, file: !25, line: 200, type: !195, scopeLine: 201, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !197)
!195 = !DISubroutineType(types: !196)
!196 = !{!11}
!197 = !{!198}
!198 = !DILocalVariable(name: "tv", scope: !194, file: !25, line: 202, type: !13)
!199 = !DILocation(line: 202, column: 2, scope: !194)
!200 = !DILocation(line: 202, column: 17, scope: !194)
!201 = !DILocation(line: 203, column: 2, scope: !194)
!202 = !DILocation(line: 204, column: 21, scope: !194)
!203 = !{!204, !205, i64 0}
!204 = !{!"timeval", !205, i64 0, !205, i64 8}
!205 = !{!"long", !57, i64 0}
!206 = !DILocation(line: 204, column: 33, scope: !194)
!207 = !{!204, !205, i64 8}
!208 = !DILocation(line: 204, column: 28, scope: !194)
!209 = !DILocation(line: 204, column: 12, scope: !194)
!210 = !DILocation(line: 204, column: 10, scope: !194)
!211 = !DILocation(line: 204, column: 8, scope: !194)
!212 = !DILocation(line: 206, column: 1, scope: !194)
!213 = !DILocation(line: 205, column: 2, scope: !194)
