; ModuleID = 'syscons.c'
source_filename = "syscons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TSTEP = external local_unnamed_addr global double, align 8
@UNITT = external local_unnamed_addr global double, align 8
@NATOMS = external local_unnamed_addr global i64, align 8
@NMOL = external local_unnamed_addr global i64, align 8
@NATMO = external local_unnamed_addr global i64, align 8
@NATMO3 = external local_unnamed_addr global i64, align 8
@UNITM = external local_unnamed_addr global double, align 8
@UNITL = external local_unnamed_addr global double, align 8
@BOLTZ = external local_unnamed_addr global double, align 8
@TEMP = external local_unnamed_addr global double, align 8
@FPOT = external local_unnamed_addr global double, align 8
@FKIN = external local_unnamed_addr global double, align 8
@WTMOL = external local_unnamed_addr global double, align 8
@RHO = external local_unnamed_addr global double, align 8
@BOXL = external local_unnamed_addr global double, align 8
@BOXH = external local_unnamed_addr global double, align 8
@CUTOFF = external local_unnamed_addr global double, align 8
@BOX_PER_SIDE = external local_unnamed_addr global i64, align 8
@BOX_LENGTH = external local_unnamed_addr global double, align 8
@BPS_SQRD = external local_unnamed_addr global i64, align 8
@NumBoxes = external local_unnamed_addr global i64, align 8
@QQ = external local_unnamed_addr global double, align 8
@REF1 = external local_unnamed_addr global double, align 8
@REF2 = external local_unnamed_addr global double, align 8
@REF4 = external local_unnamed_addr global double, align 8
@CUT2 = external local_unnamed_addr global double, align 8
@HMAS = external local_unnamed_addr global double, align 8
@FHM = external local_unnamed_addr global double, align 8
@OMAS = external local_unnamed_addr global double, align 8
@FOM = external local_unnamed_addr global double, align 8
@NMOL1 = external local_unnamed_addr global i64, align 8

; Function Attrs: mustprogress nofree noinline nounwind willreturn uwtable
define dso_local void @SYSCNS() local_unnamed_addr #0 !dbg !11 {
entry:
  %0 = load double, ptr @TSTEP, align 8, !dbg !15
  %1 = load double, ptr @UNITT, align 8, !dbg !16
  %div = fdiv double %0, %1, !dbg !17
  store double %div, ptr @TSTEP, align 8, !dbg !18
  %2 = load i64, ptr @NATOMS, align 8, !dbg !19
  %3 = load i64, ptr @NMOL, align 8, !dbg !20
  %mul = mul nsw i64 %3, %2, !dbg !21
  store i64 %mul, ptr @NATMO, align 8, !dbg !22
  %mul1 = mul nsw i64 %mul, 3, !dbg !23
  store i64 %mul1, ptr @NATMO3, align 8, !dbg !24
  %4 = load double, ptr @UNITM, align 8, !dbg !25
  %5 = load double, ptr @UNITL, align 8, !dbg !26
  %div2 = fdiv double %5, %1, !dbg !27
  %square = fmul double %div2, %div2, !dbg !28
  %mul3 = fmul double %4, %square, !dbg !29
  %6 = load double, ptr @BOLTZ, align 8, !dbg !30
  %7 = load double, ptr @TEMP, align 8, !dbg !31
  %mul4 = fmul double %6, %7, !dbg !32
  %conv = sitofp i64 %mul to double, !dbg !33
  %mul5 = fmul double %mul4, %conv, !dbg !34
  %div6 = fdiv double %mul3, %mul5, !dbg !35
  store double %div6, ptr @FPOT, align 8, !dbg !36
  %mul7 = fmul double %div6, 5.000000e-01, !dbg !37
  %mul8 = fmul double %div, %div, !dbg !38
  %div9 = fdiv double %mul7, %mul8, !dbg !39
  store double %div9, ptr @FKIN, align 8, !dbg !40
  %conv10 = sitofp i64 %3 to double, !dbg !41
  %8 = load double, ptr @WTMOL, align 8, !dbg !42
  %mul11 = fmul double %8, %conv10, !dbg !43
  %mul12 = fmul double %4, %mul11, !dbg !44
  %9 = load double, ptr @RHO, align 8, !dbg !45
  %div13 = fdiv double %mul12, %9, !dbg !46
  %call14 = tail call double @pow(double noundef %div13, double noundef 0x3FD5555555555555) #2, !dbg !47
  %10 = load double, ptr @UNITL, align 8, !dbg !48
  %div15 = fdiv double %call14, %10, !dbg !49
  store double %div15, ptr @BOXL, align 8, !dbg !50
  %mul16 = fmul double %div15, 5.000000e-01, !dbg !51
  store double %mul16, ptr @BOXH, align 8, !dbg !52
  %11 = load double, ptr @CUTOFF, align 8, !dbg !53
  %cmp = fcmp oeq double %11, 0.000000e+00, !dbg !55
  br i1 %cmp, label %if.then, label %if.end, !dbg !56

if.then:                                          ; preds = %entry
  %cmp18 = fcmp olt double %mul16, %11, !dbg !57
  %.mul16 = select i1 %cmp18, double %11, double %mul16, !dbg !57
  store double %.mul16, ptr @CUTOFF, align 8, !dbg !59
  br label %if.end, !dbg !60

if.end:                                           ; preds = %if.then, %entry
  %12 = phi double [ %.mul16, %if.then ], [ %11, %entry ], !dbg !61
  %cmp20 = fcmp ogt double %12, 1.100000e+01, !dbg !63
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !64

if.then22:                                        ; preds = %if.end
  store double 1.100000e+01, ptr @CUTOFF, align 8, !dbg !65
  br label %if.end23, !dbg !66

if.end23:                                         ; preds = %if.then22, %if.end
  %13 = phi double [ 1.100000e+01, %if.then22 ], [ %12, %if.end ], !dbg !67
  %div24 = fdiv double %div15, %13, !dbg !68
  %conv25 = fptosi double %div24 to i64, !dbg !69
  %tobool.not = icmp eq i64 %conv25, 0, !dbg !70
  %spec.store.select = select i1 %tobool.not, i64 1, i64 %conv25, !dbg !72
  store i64 %spec.store.select, ptr @BOX_PER_SIDE, align 8, !dbg !73
  %conv28 = sitofp i64 %spec.store.select to double, !dbg !74
  %div29 = fdiv double %div15, %conv28, !dbg !75
  store double %div29, ptr @BOX_LENGTH, align 8, !dbg !76
  %mul30 = mul nsw i64 %spec.store.select, %spec.store.select, !dbg !77
  store i64 %mul30, ptr @BPS_SQRD, align 8, !dbg !78
  %mul32 = mul nsw i64 %mul30, %spec.store.select, !dbg !79
  store i64 %mul32, ptr @NumBoxes, align 8, !dbg !80
  %14 = load double, ptr @QQ, align 8, !dbg !81
  %fneg = fneg double %14, !dbg !82
  %mul33 = fmul double %13, %13, !dbg !83
  %mul34 = fmul double %13, %mul33, !dbg !84
  %div35 = fdiv double %fneg, %mul34, !dbg !85
  store double %div35, ptr @REF1, align 8, !dbg !86
  %mul36 = fmul double %div35, 2.000000e+00, !dbg !87
  store double %mul36, ptr @REF2, align 8, !dbg !88
  %mul37 = fmul double %mul36, 2.000000e+00, !dbg !89
  store double %mul37, ptr @REF4, align 8, !dbg !90
  store double %mul33, ptr @CUT2, align 8, !dbg !91
  %15 = load double, ptr @TSTEP, align 8, !dbg !92
  %mul39 = fmul double %15, %15, !dbg !93
  %mul40 = fmul double %mul39, 5.000000e-01, !dbg !94
  %16 = load double, ptr @HMAS, align 8, !dbg !95
  %div41 = fdiv double %mul40, %16, !dbg !96
  store double %div41, ptr @FHM, align 8, !dbg !97
  %17 = load double, ptr @OMAS, align 8, !dbg !98
  %div44 = fdiv double %mul40, %17, !dbg !99
  store double %div44, ptr @FOM, align 8, !dbg !100
  %18 = load i64, ptr @NMOL, align 8, !dbg !101
  %sub = add nsw i64 %18, -1, !dbg !102
  store i64 %sub, ptr @NMOL1, align 8, !dbg !103
  ret void, !dbg !104
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @pow(double noundef, double noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nofree noinline nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "syscons.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/water-spatial", checksumkind: CSK_MD5, checksum: "b0473421285db88526b79b942952672b")
!2 = !{!3}
!3 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!11 = distinct !DISubprogram(name: "SYSCNS", scope: !1, file: !1, line: 48, type: !12, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!12 = !DISubroutineType(types: !13)
!13 = !{null}
!14 = !{}
!15 = !DILocation(line: 50, column: 11, scope: !11)
!16 = !DILocation(line: 50, column: 17, scope: !11)
!17 = !DILocation(line: 50, column: 16, scope: !11)
!18 = !DILocation(line: 50, column: 10, scope: !11)
!19 = !DILocation(line: 51, column: 11, scope: !11)
!20 = !DILocation(line: 51, column: 18, scope: !11)
!21 = !DILocation(line: 51, column: 17, scope: !11)
!22 = !DILocation(line: 51, column: 10, scope: !11)
!23 = !DILocation(line: 52, column: 17, scope: !11)
!24 = !DILocation(line: 52, column: 11, scope: !11)
!25 = !DILocation(line: 53, column: 11, scope: !11)
!26 = !DILocation(line: 53, column: 24, scope: !11)
!27 = !DILocation(line: 53, column: 29, scope: !11)
!28 = !DILocation(line: 53, column: 19, scope: !11)
!29 = !DILocation(line: 53, column: 17, scope: !11)
!30 = !DILocation(line: 53, column: 45, scope: !11)
!31 = !DILocation(line: 53, column: 51, scope: !11)
!32 = !DILocation(line: 53, column: 50, scope: !11)
!33 = !DILocation(line: 53, column: 56, scope: !11)
!34 = !DILocation(line: 53, column: 55, scope: !11)
!35 = !DILocation(line: 53, column: 42, scope: !11)
!36 = !DILocation(line: 53, column: 9, scope: !11)
!37 = !DILocation(line: 54, column: 14, scope: !11)
!38 = !DILocation(line: 54, column: 26, scope: !11)
!39 = !DILocation(line: 54, column: 19, scope: !11)
!40 = !DILocation(line: 54, column: 9, scope: !11)
!41 = !DILocation(line: 61, column: 17, scope: !11)
!42 = !DILocation(line: 61, column: 22, scope: !11)
!43 = !DILocation(line: 61, column: 21, scope: !11)
!44 = !DILocation(line: 61, column: 27, scope: !11)
!45 = !DILocation(line: 61, column: 34, scope: !11)
!46 = !DILocation(line: 61, column: 33, scope: !11)
!47 = !DILocation(line: 61, column: 11, scope: !11)
!48 = !DILocation(line: 65, column: 15, scope: !11)
!49 = !DILocation(line: 65, column: 14, scope: !11)
!50 = !DILocation(line: 65, column: 9, scope: !11)
!51 = !DILocation(line: 69, column: 16, scope: !11)
!52 = !DILocation(line: 69, column: 10, scope: !11)
!53 = !DILocation(line: 75, column: 9, scope: !54)
!54 = distinct !DILexicalBlock(scope: !11, file: !1, line: 75, column: 9)
!55 = !DILocation(line: 75, column: 16, scope: !54)
!56 = !DILocation(line: 75, column: 9, scope: !11)
!57 = !DILocation(line: 76, column: 16, scope: !58)
!58 = distinct !DILexicalBlock(scope: !54, file: !1, line: 75, column: 24)
!59 = !DILocation(line: 76, column: 15, scope: !58)
!60 = !DILocation(line: 80, column: 5, scope: !58)
!61 = !DILocation(line: 82, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !11, file: !1, line: 82, column: 9)
!63 = !DILocation(line: 82, column: 16, scope: !62)
!64 = !DILocation(line: 82, column: 9, scope: !11)
!65 = !DILocation(line: 82, column: 31, scope: !62)
!66 = !DILocation(line: 82, column: 24, scope: !62)
!67 = !DILocation(line: 85, column: 29, scope: !11)
!68 = !DILocation(line: 85, column: 27, scope: !11)
!69 = !DILocation(line: 85, column: 20, scope: !11)
!70 = !DILocation(line: 88, column: 10, scope: !71)
!71 = distinct !DILexicalBlock(scope: !11, file: !1, line: 88, column: 9)
!72 = !DILocation(line: 88, column: 9, scope: !11)
!73 = !DILocation(line: 0, scope: !11)
!74 = !DILocation(line: 92, column: 27, scope: !11)
!75 = !DILocation(line: 92, column: 23, scope: !11)
!76 = !DILocation(line: 92, column: 16, scope: !11)
!77 = !DILocation(line: 94, column: 29, scope: !11)
!78 = !DILocation(line: 94, column: 14, scope: !11)
!79 = !DILocation(line: 96, column: 44, scope: !11)
!80 = !DILocation(line: 96, column: 14, scope: !11)
!81 = !DILocation(line: 98, column: 12, scope: !11)
!82 = !DILocation(line: 98, column: 11, scope: !11)
!83 = !DILocation(line: 98, column: 22, scope: !11)
!84 = !DILocation(line: 98, column: 29, scope: !11)
!85 = !DILocation(line: 98, column: 14, scope: !11)
!86 = !DILocation(line: 98, column: 9, scope: !11)
!87 = !DILocation(line: 99, column: 14, scope: !11)
!88 = !DILocation(line: 99, column: 9, scope: !11)
!89 = !DILocation(line: 100, column: 14, scope: !11)
!90 = !DILocation(line: 100, column: 9, scope: !11)
!91 = !DILocation(line: 101, column: 9, scope: !11)
!92 = !DILocation(line: 106, column: 10, scope: !11)
!93 = !DILocation(line: 106, column: 15, scope: !11)
!94 = !DILocation(line: 106, column: 21, scope: !11)
!95 = !DILocation(line: 106, column: 28, scope: !11)
!96 = !DILocation(line: 106, column: 27, scope: !11)
!97 = !DILocation(line: 106, column: 8, scope: !11)
!98 = !DILocation(line: 107, column: 28, scope: !11)
!99 = !DILocation(line: 107, column: 27, scope: !11)
!100 = !DILocation(line: 107, column: 8, scope: !11)
!101 = !DILocation(line: 108, column: 11, scope: !11)
!102 = !DILocation(line: 108, column: 15, scope: !11)
!103 = !DILocation(line: 108, column: 10, scope: !11)
!104 = !DILocation(line: 110, column: 1, scope: !11)
