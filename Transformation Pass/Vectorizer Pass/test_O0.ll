; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.a = private unnamed_addr constant [8 x float] [float 1.000000e+00, float -1.000000e+00, float 2.000000e+00, float -2.000000e+00, float 3.000000e+00, float -3.000000e+00, float 4.000000e+00, float -4.000000e+00], align 16
@__const.main.b = private unnamed_addr constant [8 x float] [float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00], align 16
@.str = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(ptr noalias noundef %a, ptr noalias noundef %b, ptr noalias noundef %c, i32 noundef %n) #0 !dbg !10 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !18, metadata !DIExpression()), !dbg !19
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !20, metadata !DIExpression()), !dbg !21
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !22, metadata !DIExpression()), !dbg !23
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata ptr %i, metadata !26, metadata !DIExpression()), !dbg !28
  store i32 0, ptr %i, align 4, !dbg !28
  br label %for.cond, !dbg !29

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !30
  %1 = load i32, ptr %n.addr, align 4, !dbg !32
  %cmp = icmp slt i32 %0, %1, !dbg !33
  br i1 %cmp, label %for.body, label %for.end, !dbg !34

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !dbg !35
  %rem = srem i32 %2, 2, !dbg !38
  %cmp1 = icmp eq i32 %rem, 1, !dbg !39
  br i1 %cmp1, label %if.then, label %if.end, !dbg !40

if.then:                                          ; preds = %for.body
  %3 = load ptr, ptr %a.addr, align 8, !dbg !41
  %4 = load i32, ptr %i, align 4, !dbg !43
  %idxprom = sext i32 %4 to i64, !dbg !41
  %arrayidx = getelementptr inbounds float, ptr %3, i64 %idxprom, !dbg !41
  %5 = load float, ptr %arrayidx, align 4, !dbg !41
  %6 = load ptr, ptr %b.addr, align 8, !dbg !44
  %7 = load i32, ptr %i, align 4, !dbg !45
  %idxprom2 = sext i32 %7 to i64, !dbg !44
  %arrayidx3 = getelementptr inbounds float, ptr %6, i64 %idxprom2, !dbg !44
  %8 = load float, ptr %arrayidx3, align 4, !dbg !44
  %mul = fmul float %5, %8, !dbg !46
  %9 = load ptr, ptr %c.addr, align 8, !dbg !47
  %10 = load i32, ptr %i, align 4, !dbg !48
  %idxprom4 = sext i32 %10 to i64, !dbg !47
  %arrayidx5 = getelementptr inbounds float, ptr %9, i64 %idxprom4, !dbg !47
  store float %mul, ptr %arrayidx5, align 4, !dbg !49
  br label %if.end, !dbg !50

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !51

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %i, align 4, !dbg !52
  %inc = add nsw i32 %11, 1, !dbg !52
  store i32 %inc, ptr %i, align 4, !dbg !52
  br label %for.cond, !dbg !53, !llvm.loop !54

for.end:                                          ; preds = %for.cond
  ret void, !dbg !57
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !58 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca [8 x float], align 16
  %b = alloca [8 x float], align 16
  %c = alloca [8 x float], align 16
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.dbg.declare(metadata ptr %n, metadata !61, metadata !DIExpression()), !dbg !62
  store i32 8, ptr %n, align 4, !dbg !62
  call void @llvm.dbg.declare(metadata ptr %a, metadata !63, metadata !DIExpression()), !dbg !67
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %a, ptr align 16 @__const.main.a, i64 32, i1 false), !dbg !67
  call void @llvm.dbg.declare(metadata ptr %b, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %b, ptr align 16 @__const.main.b, i64 32, i1 false), !dbg !69
  call void @llvm.dbg.declare(metadata ptr %c, metadata !70, metadata !DIExpression()), !dbg !71
  call void @llvm.memset.p0.i64(ptr align 16 %c, i8 0, i64 32, i1 false), !dbg !71
  %arraydecay = getelementptr inbounds [8 x float], ptr %a, i64 0, i64 0, !dbg !72
  %arraydecay1 = getelementptr inbounds [8 x float], ptr %b, i64 0, i64 0, !dbg !73
  %arraydecay2 = getelementptr inbounds [8 x float], ptr %c, i64 0, i64 0, !dbg !74
  %0 = load i32, ptr %n, align 4, !dbg !75
  call void @foo(ptr noundef %arraydecay, ptr noundef %arraydecay1, ptr noundef %arraydecay2, i32 noundef %0), !dbg !76
  call void @llvm.dbg.declare(metadata ptr %i, metadata !77, metadata !DIExpression()), !dbg !79
  store i32 0, ptr %i, align 4, !dbg !79
  br label %for.cond, !dbg !80

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !81
  %2 = load i32, ptr %n, align 4, !dbg !83
  %cmp = icmp slt i32 %1, %2, !dbg !84
  br i1 %cmp, label %for.body, label %for.end, !dbg !85

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !dbg !86
  %idxprom = sext i32 %3 to i64, !dbg !88
  %arrayidx = getelementptr inbounds [8 x float], ptr %c, i64 0, i64 %idxprom, !dbg !88
  %4 = load float, ptr %arrayidx, align 4, !dbg !88
  %conv = fpext float %4 to double, !dbg !88
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %conv), !dbg !89
  br label %for.inc, !dbg !90

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !dbg !91
  %inc = add nsw i32 %5, 1, !dbg !91
  store i32 %inc, ptr %i, align 4, !dbg !91
  br label %for.cond, !dbg !92, !llvm.loop !93

for.end:                                          ; preds = %for.cond
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1), !dbg !95
  ret i32 0, !dbg !96
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare i32 @printf(ptr noundef, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation Pass/Vectorizer Pass/test", checksumkind: CSK_MD5, checksum: "e5dead4aea263858af7c7072de3a41f5")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!10 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 3, type: !11, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !13, !13, !16}
!13 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !{}
!18 = !DILocalVariable(name: "a", arg: 1, scope: !10, file: !1, line: 3, type: !13)
!19 = !DILocation(line: 3, column: 30, scope: !10)
!20 = !DILocalVariable(name: "b", arg: 2, scope: !10, file: !1, line: 3, type: !13)
!21 = !DILocation(line: 3, column: 53, scope: !10)
!22 = !DILocalVariable(name: "c", arg: 3, scope: !10, file: !1, line: 3, type: !13)
!23 = !DILocation(line: 3, column: 76, scope: !10)
!24 = !DILocalVariable(name: "n", arg: 4, scope: !10, file: !1, line: 3, type: !16)
!25 = !DILocation(line: 3, column: 83, scope: !10)
!26 = !DILocalVariable(name: "i", scope: !27, file: !1, line: 4, type: !16)
!27 = distinct !DILexicalBlock(scope: !10, file: !1, line: 4, column: 5)
!28 = !DILocation(line: 4, column: 14, scope: !27)
!29 = !DILocation(line: 4, column: 10, scope: !27)
!30 = !DILocation(line: 4, column: 21, scope: !31)
!31 = distinct !DILexicalBlock(scope: !27, file: !1, line: 4, column: 5)
!32 = !DILocation(line: 4, column: 25, scope: !31)
!33 = !DILocation(line: 4, column: 23, scope: !31)
!34 = !DILocation(line: 4, column: 5, scope: !27)
!35 = !DILocation(line: 5, column: 13, scope: !36)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 5, column: 13)
!37 = distinct !DILexicalBlock(scope: !31, file: !1, line: 4, column: 33)
!38 = !DILocation(line: 5, column: 15, scope: !36)
!39 = !DILocation(line: 5, column: 19, scope: !36)
!40 = !DILocation(line: 5, column: 13, scope: !37)
!41 = !DILocation(line: 6, column: 20, scope: !42)
!42 = distinct !DILexicalBlock(scope: !36, file: !1, line: 5, column: 25)
!43 = !DILocation(line: 6, column: 22, scope: !42)
!44 = !DILocation(line: 6, column: 27, scope: !42)
!45 = !DILocation(line: 6, column: 29, scope: !42)
!46 = !DILocation(line: 6, column: 25, scope: !42)
!47 = !DILocation(line: 6, column: 13, scope: !42)
!48 = !DILocation(line: 6, column: 15, scope: !42)
!49 = !DILocation(line: 6, column: 18, scope: !42)
!50 = !DILocation(line: 7, column: 9, scope: !42)
!51 = !DILocation(line: 8, column: 5, scope: !37)
!52 = !DILocation(line: 4, column: 28, scope: !31)
!53 = !DILocation(line: 4, column: 5, scope: !31)
!54 = distinct !{!54, !34, !55, !56}
!55 = !DILocation(line: 8, column: 5, scope: !27)
!56 = !{!"llvm.loop.mustprogress"}
!57 = !DILocation(line: 9, column: 1, scope: !10)
!58 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 11, type: !59, scopeLine: 11, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!59 = !DISubroutineType(types: !60)
!60 = !{!16}
!61 = !DILocalVariable(name: "n", scope: !58, file: !1, line: 12, type: !16)
!62 = !DILocation(line: 12, column: 9, scope: !58)
!63 = !DILocalVariable(name: "a", scope: !58, file: !1, line: 13, type: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 256, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 8)
!67 = !DILocation(line: 13, column: 11, scope: !58)
!68 = !DILocalVariable(name: "b", scope: !58, file: !1, line: 14, type: !64)
!69 = !DILocation(line: 14, column: 11, scope: !58)
!70 = !DILocalVariable(name: "c", scope: !58, file: !1, line: 15, type: !64)
!71 = !DILocation(line: 15, column: 11, scope: !58)
!72 = !DILocation(line: 17, column: 9, scope: !58)
!73 = !DILocation(line: 17, column: 12, scope: !58)
!74 = !DILocation(line: 17, column: 15, scope: !58)
!75 = !DILocation(line: 17, column: 18, scope: !58)
!76 = !DILocation(line: 17, column: 5, scope: !58)
!77 = !DILocalVariable(name: "i", scope: !78, file: !1, line: 19, type: !16)
!78 = distinct !DILexicalBlock(scope: !58, file: !1, line: 19, column: 5)
!79 = !DILocation(line: 19, column: 14, scope: !78)
!80 = !DILocation(line: 19, column: 10, scope: !78)
!81 = !DILocation(line: 19, column: 21, scope: !82)
!82 = distinct !DILexicalBlock(scope: !78, file: !1, line: 19, column: 5)
!83 = !DILocation(line: 19, column: 25, scope: !82)
!84 = !DILocation(line: 19, column: 23, scope: !82)
!85 = !DILocation(line: 19, column: 5, scope: !78)
!86 = !DILocation(line: 20, column: 25, scope: !87)
!87 = distinct !DILexicalBlock(scope: !82, file: !1, line: 19, column: 33)
!88 = !DILocation(line: 20, column: 23, scope: !87)
!89 = !DILocation(line: 20, column: 9, scope: !87)
!90 = !DILocation(line: 21, column: 5, scope: !87)
!91 = !DILocation(line: 19, column: 28, scope: !82)
!92 = !DILocation(line: 19, column: 5, scope: !82)
!93 = distinct !{!93, !85, !94, !56}
!94 = !DILocation(line: 21, column: 5, scope: !78)
!95 = !DILocation(line: 22, column: 5, scope: !58)
!96 = !DILocation(line: 23, column: 5, scope: !58)
