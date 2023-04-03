; ModuleID = 'map.c'
source_filename = "map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c".den\00", align 1
@map_version = dso_local global i16 0, align 2, !dbg !0
@.str.1 = private unnamed_addr constant [32 x i8] c"    Can't load version %d file\0A\00", align 1
@orig_min = dso_local global [3 x i16] zeroinitializer, align 2, !dbg !13
@orig_max = dso_local global [3 x i16] zeroinitializer, align 2, !dbg !19
@orig_len = dso_local global [3 x i16] zeroinitializer, align 2, !dbg !21
@extr_min = dso_local global [3 x i16] zeroinitializer, align 2, !dbg !23
@extr_max = dso_local global [3 x i16] zeroinitializer, align 2, !dbg !25
@extr_len = dso_local global [3 x i16] zeroinitializer, align 2, !dbg !27
@map_min = dso_local global [3 x i16] zeroinitializer, align 2, !dbg !29
@map_max = dso_local global [3 x i16] zeroinitializer, align 2, !dbg !31
@map_len = dso_local global [3 x i16] zeroinitializer, align 2, !dbg !33
@map_warps = dso_local global i16 0, align 2, !dbg !35
@map_length = dso_local global i32 0, align 4, !dbg !37
@map_address = dso_local global ptr null, align 8, !dbg !40
@.str.3 = private unnamed_addr constant [44 x i8] c"    Allocating density map of %ld bytes...\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"    No space available for map.\0A\00", align 1
@str = private unnamed_addr constant [34 x i8] c"    Loading map from .den file...\00", align 1
@str.6 = private unnamed_addr constant [32 x i8] c"    Deallocating density map...\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Load_Map(ptr nocapture noundef readonly %filename) local_unnamed_addr #0 !dbg !49 {
entry:
  %local_filename = alloca [201 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %filename, metadata !55, metadata !DIExpression()), !dbg !61
  call void @llvm.lifetime.start.p0(i64 201, ptr nonnull %local_filename) #12, !dbg !62
  call void @llvm.dbg.declare(metadata ptr %local_filename, metadata !56, metadata !DIExpression()), !dbg !63
  %call = call ptr @strcpy(ptr noundef nonnull %local_filename, ptr noundef nonnull dereferenceable(1) %filename) #12, !dbg !64
  %strlen = call i64 @strlen(ptr noundef nonnull %local_filename), !dbg !65
  %endptr = getelementptr i8, ptr %local_filename, i64 %strlen, !dbg !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %endptr, ptr noundef nonnull align 1 dereferenceable(5) @.str, i64 5, i1 false), !dbg !65
  %call4 = call i32 @Open_File(ptr noundef nonnull %local_filename) #12, !dbg !66
  call void @llvm.dbg.value(metadata i32 %call4, metadata !60, metadata !DIExpression()), !dbg !61
  call void @Read_Shorts(i32 noundef %call4, ptr noundef nonnull @map_version, i64 noundef 2) #12, !dbg !67
  %0 = load i16, ptr @map_version, align 2, !dbg !68
  %cmp.not = icmp eq i16 %0, 1, !dbg !70
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !71

if.then:                                          ; preds = %entry
  %conv = sext i16 %0 to i32, !dbg !68
  call void (ptr, ...) @Error(ptr noundef nonnull @.str.1, i32 noundef %conv) #12, !dbg !72
  br label %if.end, !dbg !72

if.end:                                           ; preds = %if.then, %entry
  call void @Read_Shorts(i32 noundef %call4, ptr noundef nonnull @orig_min, i64 noundef 6) #12, !dbg !73
  call void @Read_Shorts(i32 noundef %call4, ptr noundef nonnull @orig_max, i64 noundef 6) #12, !dbg !74
  call void @Read_Shorts(i32 noundef %call4, ptr noundef nonnull @orig_len, i64 noundef 6) #12, !dbg !75
  call void @Read_Shorts(i32 noundef %call4, ptr noundef nonnull @extr_min, i64 noundef 6) #12, !dbg !76
  call void @Read_Shorts(i32 noundef %call4, ptr noundef nonnull @extr_max, i64 noundef 6) #12, !dbg !77
  call void @Read_Shorts(i32 noundef %call4, ptr noundef nonnull @extr_len, i64 noundef 6) #12, !dbg !78
  call void @Read_Shorts(i32 noundef %call4, ptr noundef nonnull @map_min, i64 noundef 6) #12, !dbg !79
  call void @Read_Shorts(i32 noundef %call4, ptr noundef nonnull @map_max, i64 noundef 6) #12, !dbg !80
  call void @Read_Shorts(i32 noundef %call4, ptr noundef nonnull @map_len, i64 noundef 6) #12, !dbg !81
  call void @Read_Shorts(i32 noundef %call4, ptr noundef nonnull @map_warps, i64 noundef 2) #12, !dbg !82
  call void @Read_Longs(i32 noundef %call4, ptr noundef nonnull @map_length, i64 noundef 4) #12, !dbg !83
  %1 = load i32, ptr @map_length, align 4, !dbg !84
  %conv7 = sext i32 %1 to i64, !dbg !84
  call void @Allocate_Map(ptr noundef nonnull @map_address, i64 noundef %conv7), !dbg !85
  %puts = call i32 @puts(ptr nonnull @str), !dbg !86
  %2 = load ptr, ptr @map_address, align 8, !dbg !87
  %3 = load i32, ptr @map_length, align 4, !dbg !88
  %conv9 = sext i32 %3 to i64, !dbg !88
  call void @Read_Bytes(i32 noundef %call4, ptr noundef %2, i64 noundef %conv9) #12, !dbg !89
  call void @Close_File(i32 noundef %call4) #12, !dbg !90
  call void @llvm.lifetime.end.p0(i64 201, ptr nonnull %local_filename) #12, !dbg !91
  ret void, !dbg !91
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

declare !dbg !92 i32 @Open_File(ptr noundef) local_unnamed_addr #4

declare !dbg !97 void @Read_Shorts(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !100 void @Error(ptr noundef, ...) local_unnamed_addr #4

declare !dbg !103 void @Read_Longs(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @Allocate_Map(ptr nocapture noundef %address, i64 noundef %length) local_unnamed_addr #0 !dbg !104 {
entry:
  call void @llvm.dbg.value(metadata ptr %address, metadata !109, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i64 %length, metadata !110, metadata !DIExpression()), !dbg !112
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3, i64 noundef %length), !dbg !113
  %call2 = tail call noalias ptr @malloc(i64 noundef %length) #13, !dbg !114
  store ptr %call2, ptr %address, align 8, !dbg !115
  %cmp = icmp eq ptr %call2, null, !dbg !116
  br i1 %cmp, label %if.then, label %for.cond.preheader, !dbg !118

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !111, metadata !DIExpression()), !dbg !112
  %cmp310 = icmp sgt i64 %length, 0, !dbg !119
  br i1 %cmp310, label %for.body.preheader, label %if.end, !dbg !122

for.body.preheader:                               ; preds = %for.cond.preheader
  call void @llvm.dbg.value(metadata i64 0, metadata !111, metadata !DIExpression()), !dbg !112
  store i8 0, ptr %call2, align 1, !dbg !123
  call void @llvm.dbg.value(metadata i64 1, metadata !111, metadata !DIExpression()), !dbg !112
  %exitcond.not12 = icmp eq i64 %length, 1, !dbg !119
  br i1 %exitcond.not12, label %if.end, label %for.body.for.body_crit_edge, !dbg !122, !llvm.loop !124

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @Error(ptr noundef nonnull @.str.4) #12, !dbg !128
  br label %if.end, !dbg !128

for.body.for.body_crit_edge:                      ; preds = %for.body.preheader, %for.body.for.body_crit_edge
  %inc13 = phi i64 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %.pre = load ptr, ptr %address, align 8, !dbg !129
  call void @llvm.dbg.value(metadata i64 %inc13, metadata !111, metadata !DIExpression()), !dbg !112
  %add.ptr = getelementptr inbounds i8, ptr %.pre, i64 %inc13, !dbg !130
  store i8 0, ptr %add.ptr, align 1, !dbg !123
  %inc = add nuw nsw i64 %inc13, 1, !dbg !131
  call void @llvm.dbg.value(metadata i64 %inc, metadata !111, metadata !DIExpression()), !dbg !112
  %exitcond.not = icmp eq i64 %inc, %length, !dbg !119
  br i1 %exitcond.not, label %if.end, label %for.body.for.body_crit_edge, !dbg !122, !llvm.loop !124

if.end:                                           ; preds = %for.body.for.body_crit_edge, %for.body.preheader, %for.cond.preheader, %if.then
  ret void, !dbg !132
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare !dbg !133 void @Read_Bytes(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !134 void @Close_File(i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @Deallocate_Map(ptr nocapture noundef writeonly %address) local_unnamed_addr #7 !dbg !137 {
entry:
  call void @llvm.dbg.value(metadata ptr %address, metadata !141, metadata !DIExpression()), !dbg !142
  %puts = tail call i32 @puts(ptr nonnull @str.6), !dbg !143
  store ptr null, ptr %address, align 8, !dbg !144
  ret void, !dbg !145
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "map_version", scope: !2, file: !3, line: 34, type: !16, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !12, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "map.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "805d0bb4608f35a55e4e2c4d2614b1a8")
!4 = !{!5, !7, !8, !11}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "DENSITY", file: !10, line: 27, baseType: !6)
!10 = !DIFile(filename: "./my_types.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "1c0e36810bc34cd72ba4bfe4a2cdcc97")
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !{!0, !13, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !40}
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "orig_min", scope: !2, file: !3, line: 36, type: !15, isLocal: false, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 48, elements: !17)
!16 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!17 = !{!18}
!18 = !DISubrange(count: 3)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "orig_max", scope: !2, file: !3, line: 37, type: !15, isLocal: false, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "orig_len", scope: !2, file: !3, line: 38, type: !15, isLocal: false, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "extr_min", scope: !2, file: !3, line: 40, type: !15, isLocal: false, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "extr_max", scope: !2, file: !3, line: 41, type: !15, isLocal: false, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "extr_len", scope: !2, file: !3, line: 42, type: !15, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "map_min", scope: !2, file: !3, line: 44, type: !15, isLocal: false, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "map_max", scope: !2, file: !3, line: 45, type: !15, isLocal: false, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "map_len", scope: !2, file: !3, line: 46, type: !15, isLocal: false, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "map_warps", scope: !2, file: !3, line: 48, type: !16, isLocal: false, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "map_length", scope: !2, file: !3, line: 51, type: !39, isLocal: false, isDefinition: true)
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "map_address", scope: !2, file: !3, line: 53, type: !8, isLocal: false, isDefinition: true)
!42 = !{i32 7, !"Dwarf Version", i32 5}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 4}
!45 = !{i32 7, !"PIC Level", i32 2}
!46 = !{i32 7, !"PIE Level", i32 2}
!47 = !{i32 7, !"uwtable", i32 2}
!48 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!49 = distinct !DISubprogram(name: "Load_Map", scope: !3, file: !3, line: 76, type: !50, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !54)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !52}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!54 = !{!55, !56, !60}
!55 = !DILocalVariable(name: "filename", arg: 1, scope: !49, file: !3, line: 77, type: !52)
!56 = !DILocalVariable(name: "local_filename", scope: !49, file: !3, line: 79, type: !57)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 1608, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 201)
!60 = !DILocalVariable(name: "fd", scope: !49, file: !3, line: 80, type: !39)
!61 = !DILocation(line: 0, scope: !49)
!62 = !DILocation(line: 79, column: 3, scope: !49)
!63 = !DILocation(line: 79, column: 8, scope: !49)
!64 = !DILocation(line: 82, column: 3, scope: !49)
!65 = !DILocation(line: 83, column: 3, scope: !49)
!66 = !DILocation(line: 84, column: 8, scope: !49)
!67 = !DILocation(line: 86, column: 3, scope: !49)
!68 = !DILocation(line: 87, column: 7, scope: !69)
!69 = distinct !DILexicalBlock(scope: !49, file: !3, line: 87, column: 7)
!70 = !DILocation(line: 87, column: 19, scope: !69)
!71 = !DILocation(line: 87, column: 7, scope: !49)
!72 = !DILocation(line: 88, column: 5, scope: !69)
!73 = !DILocation(line: 90, column: 3, scope: !49)
!74 = !DILocation(line: 91, column: 3, scope: !49)
!75 = !DILocation(line: 92, column: 3, scope: !49)
!76 = !DILocation(line: 94, column: 3, scope: !49)
!77 = !DILocation(line: 95, column: 3, scope: !49)
!78 = !DILocation(line: 96, column: 3, scope: !49)
!79 = !DILocation(line: 98, column: 3, scope: !49)
!80 = !DILocation(line: 99, column: 3, scope: !49)
!81 = !DILocation(line: 100, column: 3, scope: !49)
!82 = !DILocation(line: 102, column: 3, scope: !49)
!83 = !DILocation(line: 103, column: 3, scope: !49)
!84 = !DILocation(line: 105, column: 29, scope: !49)
!85 = !DILocation(line: 105, column: 3, scope: !49)
!86 = !DILocation(line: 107, column: 3, scope: !49)
!87 = !DILocation(line: 108, column: 34, scope: !49)
!88 = !DILocation(line: 108, column: 53, scope: !49)
!89 = !DILocation(line: 108, column: 3, scope: !49)
!90 = !DILocation(line: 109, column: 3, scope: !49)
!91 = !DILocation(line: 110, column: 1, scope: !49)
!92 = !DISubprogram(name: "Open_File", scope: !93, file: !93, line: 174, type: !94, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !96)
!93 = !DIFile(filename: "./global.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "f049690031a7f12768b0765e4f4983eb")
!94 = !DISubroutineType(types: !95)
!95 = !{!39, !52}
!96 = !{}
!97 = !DISubprogram(name: "Read_Shorts", scope: !93, file: !93, line: 179, type: !98, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !96)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !39, !5, !7}
!100 = !DISubprogram(name: "Error", scope: !93, file: !93, line: 187, type: !101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !96)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !52, null}
!103 = !DISubprogram(name: "Read_Longs", scope: !93, file: !93, line: 180, type: !98, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !96)
!104 = distinct !DISubprogram(name: "Allocate_Map", scope: !3, file: !3, line: 113, type: !105, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !108)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !107, !7}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!108 = !{!109, !110, !111}
!109 = !DILocalVariable(name: "address", arg: 1, scope: !104, file: !3, line: 114, type: !107)
!110 = !DILocalVariable(name: "length", arg: 2, scope: !104, file: !3, line: 115, type: !7)
!111 = !DILocalVariable(name: "i", scope: !104, file: !3, line: 117, type: !7)
!112 = !DILocation(line: 0, scope: !104)
!113 = !DILocation(line: 119, column: 3, scope: !104)
!114 = !DILocation(line: 122, column: 25, scope: !104)
!115 = !DILocation(line: 122, column: 12, scope: !104)
!116 = !DILocation(line: 124, column: 16, scope: !117)
!117 = distinct !DILexicalBlock(scope: !104, file: !3, line: 124, column: 7)
!118 = !DILocation(line: 124, column: 7, scope: !104)
!119 = !DILocation(line: 127, column: 16, scope: !120)
!120 = distinct !DILexicalBlock(scope: !121, file: !3, line: 127, column: 5)
!121 = distinct !DILexicalBlock(scope: !117, file: !3, line: 127, column: 5)
!122 = !DILocation(line: 127, column: 5, scope: !121)
!123 = !DILocation(line: 127, column: 44, scope: !120)
!124 = distinct !{!124, !122, !125, !126, !127}
!125 = !DILocation(line: 127, column: 46, scope: !121)
!126 = !{!"llvm.loop.mustprogress"}
!127 = !{!"llvm.loop.unroll.disable"}
!128 = !DILocation(line: 125, column: 5, scope: !117)
!129 = !DILocation(line: 127, column: 32, scope: !120)
!130 = !DILocation(line: 127, column: 40, scope: !120)
!131 = !DILocation(line: 127, column: 26, scope: !120)
!132 = !DILocation(line: 129, column: 1, scope: !104)
!133 = !DISubprogram(name: "Read_Bytes", scope: !93, file: !93, line: 178, type: !98, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !96)
!134 = !DISubprogram(name: "Close_File", scope: !93, file: !93, line: 181, type: !135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !96)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !39}
!137 = distinct !DISubprogram(name: "Deallocate_Map", scope: !3, file: !3, line: 132, type: !138, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !140)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !107}
!140 = !{!141}
!141 = !DILocalVariable(name: "address", arg: 1, scope: !137, file: !3, line: 133, type: !107)
!142 = !DILocation(line: 0, scope: !137)
!143 = !DILocation(line: 135, column: 3, scope: !137)
!144 = !DILocation(line: 139, column: 12, scope: !137)
!145 = !DILocation(line: 140, column: 1, scope: !137)
