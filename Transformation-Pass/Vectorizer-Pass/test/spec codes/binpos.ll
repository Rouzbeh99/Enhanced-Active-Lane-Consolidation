; ModuleID = '/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Benchmarks/SPEC/benchspec/CPU/544.nab_r/src/binpos.c'
source_filename = "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Benchmarks/SPEC/benchspec/CPU/544.nab_r/src/binpos.c"
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
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !86, metadata !DIExpression()), !dbg !91
  %3 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !92
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %3) #8, !dbg !92
  call void @llvm.dbg.declare(metadata [10 x i8]* %2, metadata !87, metadata !DIExpression()), !dbg !93
  %4 = call i64 @fread(i8* nonnull %3, i64 1, i64 4, %struct._IO_FILE* %0), !dbg !94
  %5 = icmp eq i64 %4, 4, !dbg !96
  br i1 %5, label %9, label %6, !dbg !97

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !98, !tbaa !100
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %7) #9, !dbg !104
  tail call void @exit(i32 -1) #10, !dbg !105
  unreachable, !dbg !105

9:                                                ; preds = %1
  %10 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 4, !dbg !106
  store i8 0, i8* %10, align 1, !dbg !107, !tbaa !108
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(5) %3, i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 5), !dbg !109
  %12 = icmp eq i32 %11, 0, !dbg !111
  br i1 %12, label %16, label %13, !dbg !112

13:                                               ; preds = %9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !113, !tbaa !100
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* nonnull %3) #9, !dbg !115
  call void @exit(i32 -1) #10, !dbg !116
  unreachable, !dbg !116

16:                                               ; preds = %9
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %3) #8, !dbg !117
  ret i32 0, !dbg !118
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
define dso_local i32 @readbinposfrm(i32 %0, double* nocapture %1, %struct._IO_FILE* nocapture %2) local_unnamed_addr #0 !dbg !119 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !125, metadata !DIExpression()), !dbg !131
  store i32 %0, i32* %4, align 4, !tbaa !132
  call void @llvm.dbg.value(metadata double* %1, metadata !126, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !127, metadata !DIExpression()), !dbg !131
  %5 = bitcast i32* %4 to i8*, !dbg !134
  call void @llvm.dbg.value(metadata i32* %4, metadata !125, metadata !DIExpression(DW_OP_deref)), !dbg !131
  %6 = call i64 @fread(i8* nonnull %5, i64 4, i64 1, %struct._IO_FILE* %2), !dbg !136
  %7 = icmp eq i64 %6, 1, !dbg !137
  br i1 %7, label %8, label %38, !dbg !138

8:                                                ; preds = %3
  %9 = load i32, i32* %4, align 4, !dbg !139, !tbaa !132
  call void @llvm.dbg.value(metadata i32 %9, metadata !125, metadata !DIExpression()), !dbg !131
  %10 = mul nsw i32 %9, 3, !dbg !140
  %11 = sext i32 %10 to i64, !dbg !141
  %12 = shl nsw i64 %11, 2, !dbg !142
  %13 = tail call noalias i8* @malloc(i64 %12) #8, !dbg !143
  %14 = bitcast i8* %13 to float*, !dbg !144
  call void @llvm.dbg.value(metadata float* %14, metadata !130, metadata !DIExpression()), !dbg !131
  %15 = icmp eq i8* %13, null, !dbg !145
  br i1 %15, label %16, label %19, !dbg !147

16:                                               ; preds = %8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !148, !tbaa !100
  %18 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %17) #9, !dbg !150
  tail call void @exit(i32 1) #10, !dbg !151
  unreachable, !dbg !151

19:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i32 %9, metadata !125, metadata !DIExpression()), !dbg !131
  %20 = tail call i64 @fread(i8* nonnull %13, i64 4, i64 %11, %struct._IO_FILE* %2), !dbg !152
  %21 = trunc i64 %20 to i32, !dbg !152
  call void @llvm.dbg.value(metadata i32 %21, metadata !128, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata i32 %9, metadata !125, metadata !DIExpression()), !dbg !131
  %22 = icmp eq i32 %10, %21, !dbg !154
  br i1 %22, label %23, label %25, !dbg !155

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 0, metadata !129, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata i32 %9, metadata !125, metadata !DIExpression()), !dbg !131
  %24 = icmp sgt i32 %9, 0, !dbg !156
  br i1 %24, label %29, label %37, !dbg !159

25:                                               ; preds = %19
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !160, !tbaa !100
  %27 = sdiv i32 %21, 3, !dbg !162
  %28 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %27, i32 %9) #9, !dbg !163
  tail call void @exit(i32 -1) #10, !dbg !164
  unreachable, !dbg !164

29:                                               ; preds = %23, %29
  %30 = phi i64 [ %35, %29 ], [ 0, %23 ]
  call void @llvm.dbg.value(metadata i64 %30, metadata !129, metadata !DIExpression()), !dbg !131
  %31 = getelementptr inbounds float, float* %14, i64 %30, !dbg !165
  %32 = load float, float* %31, align 4, !dbg !165, !tbaa !167
  %33 = fpext float %32 to double, !dbg !165
  %34 = getelementptr inbounds double, double* %1, i64 %30, !dbg !169
  store double %33, double* %34, align 8, !dbg !170, !tbaa !171
  %35 = add nuw nsw i64 %30, 1, !dbg !173
  call void @llvm.dbg.value(metadata i64 %35, metadata !129, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata i32 %9, metadata !125, metadata !DIExpression()), !dbg !131
  %36 = icmp slt i64 %35, %11, !dbg !156
  br i1 %36, label %29, label %37, !dbg !159, !llvm.loop !174

37:                                               ; preds = %29, %23
  tail call void @free(i8* nonnull %13) #8, !dbg !176
  br label %38, !dbg !177

38:                                               ; preds = %3, %37
  %39 = phi i32 [ 1, %37 ], [ 0, %3 ], !dbg !131
  ret i32 %39, !dbg !178
}

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !6 dso_local void @free(i8* nocapture) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @writebinposhdr(%struct._IO_FILE* nocapture %0) local_unnamed_addr #6 !dbg !179 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !181, metadata !DIExpression()), !dbg !182
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %0), !dbg !183
  ret i32 0, !dbg !184
}

; Function Attrs: nofree nounwind
declare dso_local i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @writebinposfrm(i32 %0, double* nocapture readonly %1, %struct._IO_FILE* nocapture %2) local_unnamed_addr #0 !dbg !185 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !187, metadata !DIExpression()), !dbg !192
  store i32 %0, i32* %4, align 4, !tbaa !132
  call void @llvm.dbg.value(metadata double* %1, metadata !188, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !189, metadata !DIExpression()), !dbg !192
  %5 = bitcast i32* %4 to i8*, !dbg !193
  call void @llvm.dbg.value(metadata i32* %4, metadata !187, metadata !DIExpression(DW_OP_deref)), !dbg !192
  %6 = call i64 @fwrite(i8* nonnull %5, i64 4, i64 1, %struct._IO_FILE* %2), !dbg !194
  %7 = load i32, i32* %4, align 4, !dbg !195, !tbaa !132
  call void @llvm.dbg.value(metadata i32 %7, metadata !187, metadata !DIExpression()), !dbg !192
  %8 = mul nsw i32 %7, 3, !dbg !196
  %9 = sext i32 %8 to i64, !dbg !197
  %10 = shl nsw i64 %9, 2, !dbg !198
  %11 = tail call noalias i8* @malloc(i64 %10) #8, !dbg !199
  %12 = bitcast i8* %11 to float*, !dbg !200
  call void @llvm.dbg.value(metadata float* %12, metadata !190, metadata !DIExpression()), !dbg !192
  %13 = icmp eq i8* %11, null, !dbg !201
  br i1 %13, label %16, label %14, !dbg !203

14:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 0, metadata !191, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i32 %7, metadata !187, metadata !DIExpression()), !dbg !192
  %15 = icmp sgt i32 %7, 0, !dbg !204
  br i1 %15, label %19, label %27, !dbg !207

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !208, !tbaa !100
  %18 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %17) #9, !dbg !210
  tail call void @exit(i32 1) #10, !dbg !211
  unreachable, !dbg !211

19:                                               ; preds = %14, %19
  %20 = phi i64 [ %25, %19 ], [ 0, %14 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !191, metadata !DIExpression()), !dbg !192
  %21 = getelementptr inbounds double, double* %1, i64 %20, !dbg !212
  %22 = load double, double* %21, align 8, !dbg !212, !tbaa !171
  %23 = fptrunc double %22 to float, !dbg !212
  %24 = getelementptr inbounds float, float* %12, i64 %20, !dbg !214
  store float %23, float* %24, align 4, !dbg !215, !tbaa !167
  %25 = add nuw nsw i64 %20, 1, !dbg !216
  call void @llvm.dbg.value(metadata i64 %25, metadata !191, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i32 %7, metadata !187, metadata !DIExpression()), !dbg !192
  %26 = icmp slt i64 %25, %9, !dbg !204
  br i1 %26, label %19, label %27, !dbg !207, !llvm.loop !217

27:                                               ; preds = %19, %14
  %28 = tail call i64 @fwrite(i8* nonnull %11, i64 4, i64 %9, %struct._IO_FILE* %2), !dbg !219
  tail call void @free(i8* nonnull %11) #8, !dbg !220
  %29 = tail call i32 @fflush(%struct._IO_FILE* %2), !dbg !221
  ret i32 0, !dbg !222
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
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Benchmarks/SPEC/benchspec/CPU/544.nab_r/src/binpos.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test/spec codes")
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
!78 = distinct !DISubprogram(name: "readbinposhdr", scope: !79, file: !79, line: 6, type: !80, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !85)
!79 = !DIFile(filename: "Benchmarks/SPEC/benchspec/CPU/544.nab_r/src/binpos.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation")
!80 = !DISubroutineType(types: !81)
!81 = !{!15, !82}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !84, line: 7, baseType: !17)
!84 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!85 = !{!86, !87}
!86 = !DILocalVariable(name: "fp", arg: 1, scope: !78, file: !79, line: 6, type: !82)
!87 = !DILocalVariable(name: "magic", scope: !78, file: !79, line: 8, type: !88)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 80, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 10)
!91 = !DILocation(line: 0, scope: !78)
!92 = !DILocation(line: 8, column: 2, scope: !78)
!93 = !DILocation(line: 8, column: 7, scope: !78)
!94 = !DILocation(line: 10, column: 6, scope: !95)
!95 = distinct !DILexicalBlock(scope: !78, file: !79, line: 10, column: 6)
!96 = !DILocation(line: 10, column: 31, scope: !95)
!97 = !DILocation(line: 10, column: 6, scope: !78)
!98 = !DILocation(line: 11, column: 12, scope: !99)
!99 = distinct !DILexicalBlock(scope: !95, file: !79, line: 10, column: 37)
!100 = !{!101, !101, i64 0}
!101 = !{!"any pointer", !102, i64 0}
!102 = !{!"omnipotent char", !103, i64 0}
!103 = !{!"Simple C/C++ TBAA"}
!104 = !DILocation(line: 11, column: 3, scope: !99)
!105 = !DILocation(line: 12, column: 3, scope: !99)
!106 = !DILocation(line: 15, column: 2, scope: !78)
!107 = !DILocation(line: 15, column: 13, scope: !78)
!108 = !{!102, !102, i64 0}
!109 = !DILocation(line: 16, column: 6, scope: !110)
!110 = distinct !DILexicalBlock(scope: !78, file: !79, line: 16, column: 6)
!111 = !DILocation(line: 16, column: 30, scope: !110)
!112 = !DILocation(line: 16, column: 6, scope: !78)
!113 = !DILocation(line: 17, column: 12, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !79, line: 16, column: 36)
!115 = !DILocation(line: 17, column: 3, scope: !114)
!116 = !DILocation(line: 18, column: 3, scope: !114)
!117 = !DILocation(line: 21, column: 1, scope: !78)
!118 = !DILocation(line: 20, column: 2, scope: !78)
!119 = distinct !DISubprogram(name: "readbinposfrm", scope: !79, file: !79, line: 23, type: !120, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !124)
!120 = !DISubroutineType(types: !121)
!121 = !{!15, !15, !122, !82}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!124 = !{!125, !126, !127, !128, !129, !130}
!125 = !DILocalVariable(name: "n_atom", arg: 1, scope: !119, file: !79, line: 23, type: !15)
!126 = !DILocalVariable(name: "apos", arg: 2, scope: !119, file: !79, line: 23, type: !122)
!127 = !DILocalVariable(name: "fp", arg: 3, scope: !119, file: !79, line: 23, type: !82)
!128 = !DILocalVariable(name: "count", scope: !119, file: !79, line: 26, type: !15)
!129 = !DILocalVariable(name: "i", scope: !119, file: !79, line: 26, type: !15)
!130 = !DILocalVariable(name: "aposf", scope: !119, file: !79, line: 27, type: !4)
!131 = !DILocation(line: 0, scope: !119)
!132 = !{!133, !133, i64 0}
!133 = !{!"int", !102, i64 0}
!134 = !DILocation(line: 29, column: 13, scope: !135)
!135 = distinct !DILexicalBlock(scope: !119, file: !79, line: 29, column: 6)
!136 = !DILocation(line: 29, column: 6, scope: !135)
!137 = !DILocation(line: 29, column: 45, scope: !135)
!138 = !DILocation(line: 29, column: 6, scope: !119)
!139 = !DILocation(line: 35, column: 31, scope: !119)
!140 = !DILocation(line: 35, column: 30, scope: !119)
!141 = !DILocation(line: 35, column: 29, scope: !119)
!142 = !DILocation(line: 35, column: 38, scope: !119)
!143 = !DILocation(line: 35, column: 21, scope: !119)
!144 = !DILocation(line: 35, column: 10, scope: !119)
!145 = !DILocation(line: 36, column: 7, scope: !146)
!146 = distinct !DILexicalBlock(scope: !119, file: !79, line: 36, column: 6)
!147 = !DILocation(line: 36, column: 6, scope: !119)
!148 = !DILocation(line: 36, column: 25, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !79, line: 36, column: 14)
!150 = !DILocation(line: 36, column: 16, scope: !149)
!151 = !DILocation(line: 36, column: 63, scope: !149)
!152 = !DILocation(line: 37, column: 16, scope: !153)
!153 = distinct !DILexicalBlock(scope: !119, file: !79, line: 37, column: 6)
!154 = !DILocation(line: 38, column: 3, scope: !153)
!155 = !DILocation(line: 37, column: 6, scope: !119)
!156 = !DILocation(line: 43, column: 13, scope: !157)
!157 = distinct !DILexicalBlock(scope: !158, file: !79, line: 43, column: 2)
!158 = distinct !DILexicalBlock(scope: !119, file: !79, line: 43, column: 2)
!159 = !DILocation(line: 43, column: 2, scope: !158)
!160 = !DILocation(line: 39, column: 12, scope: !161)
!161 = distinct !DILexicalBlock(scope: !153, file: !79, line: 38, column: 18)
!162 = !DILocation(line: 40, column: 10, scope: !161)
!163 = !DILocation(line: 39, column: 3, scope: !161)
!164 = !DILocation(line: 41, column: 3, scope: !161)
!165 = !DILocation(line: 44, column: 13, scope: !166)
!166 = distinct !DILexicalBlock(scope: !157, file: !79, line: 43, column: 29)
!167 = !{!168, !168, i64 0}
!168 = !{!"float", !102, i64 0}
!169 = !DILocation(line: 44, column: 3, scope: !166)
!170 = !DILocation(line: 44, column: 11, scope: !166)
!171 = !{!172, !172, i64 0}
!172 = !{!"double", !102, i64 0}
!173 = !DILocation(line: 43, column: 25, scope: !157)
!174 = distinct !{!174, !159, !175}
!175 = !DILocation(line: 45, column: 2, scope: !158)
!176 = !DILocation(line: 46, column: 2, scope: !119)
!177 = !DILocation(line: 55, column: 2, scope: !119)
!178 = !DILocation(line: 56, column: 1, scope: !119)
!179 = distinct !DISubprogram(name: "writebinposhdr", scope: !79, file: !79, line: 58, type: !80, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !180)
!180 = !{!181}
!181 = !DILocalVariable(name: "fp", arg: 1, scope: !179, file: !79, line: 58, type: !82)
!182 = !DILocation(line: 0, scope: !179)
!183 = !DILocation(line: 61, column: 5, scope: !179)
!184 = !DILocation(line: 62, column: 2, scope: !179)
!185 = distinct !DISubprogram(name: "writebinposfrm", scope: !79, file: !79, line: 65, type: !120, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !186)
!186 = !{!187, !188, !189, !190, !191}
!187 = !DILocalVariable(name: "n_atom", arg: 1, scope: !185, file: !79, line: 65, type: !15)
!188 = !DILocalVariable(name: "apos", arg: 2, scope: !185, file: !79, line: 65, type: !122)
!189 = !DILocalVariable(name: "fp", arg: 3, scope: !185, file: !79, line: 65, type: !82)
!190 = !DILocalVariable(name: "aposf", scope: !185, file: !79, line: 67, type: !4)
!191 = !DILocalVariable(name: "i", scope: !185, file: !79, line: 68, type: !15)
!192 = !DILocation(line: 0, scope: !185)
!193 = !DILocation(line: 70, column: 10, scope: !185)
!194 = !DILocation(line: 70, column: 2, scope: !185)
!195 = !DILocation(line: 74, column: 31, scope: !185)
!196 = !DILocation(line: 74, column: 30, scope: !185)
!197 = !DILocation(line: 74, column: 29, scope: !185)
!198 = !DILocation(line: 74, column: 38, scope: !185)
!199 = !DILocation(line: 74, column: 21, scope: !185)
!200 = !DILocation(line: 74, column: 10, scope: !185)
!201 = !DILocation(line: 75, column: 7, scope: !202)
!202 = distinct !DILexicalBlock(scope: !185, file: !79, line: 75, column: 6)
!203 = !DILocation(line: 75, column: 6, scope: !185)
!204 = !DILocation(line: 76, column: 13, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !79, line: 76, column: 2)
!206 = distinct !DILexicalBlock(scope: !185, file: !79, line: 76, column: 2)
!207 = !DILocation(line: 76, column: 2, scope: !206)
!208 = !DILocation(line: 75, column: 25, scope: !209)
!209 = distinct !DILexicalBlock(scope: !202, file: !79, line: 75, column: 14)
!210 = !DILocation(line: 75, column: 16, scope: !209)
!211 = !DILocation(line: 75, column: 63, scope: !209)
!212 = !DILocation(line: 77, column: 14, scope: !213)
!213 = distinct !DILexicalBlock(scope: !205, file: !79, line: 76, column: 29)
!214 = !DILocation(line: 77, column: 3, scope: !213)
!215 = !DILocation(line: 77, column: 12, scope: !213)
!216 = !DILocation(line: 76, column: 25, scope: !205)
!217 = distinct !{!217, !207, !218}
!218 = !DILocation(line: 78, column: 2, scope: !206)
!219 = !DILocation(line: 79, column: 2, scope: !185)
!220 = !DILocation(line: 80, column: 2, scope: !185)
!221 = !DILocation(line: 84, column: 2, scope: !185)
!222 = !DILocation(line: 85, column: 2, scope: !185)
