; ModuleID = '/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/chirvol.c'
source_filename = "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/chirvol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @chirvol(i32 noundef %dim, i32 noundef %i0, i32 noundef %i1, i32 noundef %i2, i32 noundef %i3, double* nocapture noundef readonly %pos, double* nocapture noundef %d, double* nocapture noundef %vol) local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 %dim, metadata !15, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i32 %i0, metadata !16, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i32 %i1, metadata !17, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i32 %i2, metadata !18, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i32 %i3, metadata !19, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata double* %pos, metadata !20, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata double* %d, metadata !21, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata double* %vol, metadata !22, metadata !DIExpression()), !dbg !48
  %mul = mul nsw i32 %i0, %dim, !dbg !49
  %idxprom = sext i32 %mul to i64, !dbg !50
  %arrayidx = getelementptr inbounds double, double* %pos, i64 %idxprom, !dbg !50
  %0 = load double, double* %arrayidx, align 8, !dbg !50, !tbaa !51
  call void @llvm.dbg.value(metadata double %0, metadata !23, metadata !DIExpression()), !dbg !48
  %add2 = add nsw i32 %mul, 1, !dbg !55
  %idxprom3 = sext i32 %add2 to i64, !dbg !56
  %arrayidx4 = getelementptr inbounds double, double* %pos, i64 %idxprom3, !dbg !56
  call void @llvm.dbg.value(metadata double undef, metadata !24, metadata !DIExpression()), !dbg !48
  %1 = bitcast double* %arrayidx4 to <2 x double>*, !dbg !56
  %2 = load <2 x double>, <2 x double>* %1, align 8, !dbg !56, !tbaa !51
  call void @llvm.dbg.value(metadata double undef, metadata !25, metadata !DIExpression()), !dbg !48
  %mul9 = mul nsw i32 %i1, %dim, !dbg !57
  %idxprom11 = sext i32 %mul9 to i64, !dbg !58
  %arrayidx12 = getelementptr inbounds double, double* %pos, i64 %idxprom11, !dbg !58
  %3 = load double, double* %arrayidx12, align 8, !dbg !58, !tbaa !51
  call void @llvm.dbg.value(metadata double %3, metadata !26, metadata !DIExpression()), !dbg !48
  %add14 = add nsw i32 %mul9, 1, !dbg !59
  %idxprom15 = sext i32 %add14 to i64, !dbg !60
  %arrayidx16 = getelementptr inbounds double, double* %pos, i64 %idxprom15, !dbg !60
  %4 = load double, double* %arrayidx16, align 8, !dbg !60, !tbaa !51
  call void @llvm.dbg.value(metadata double %4, metadata !27, metadata !DIExpression()), !dbg !48
  %add18 = add nsw i32 %mul9, 2, !dbg !61
  %idxprom19 = sext i32 %add18 to i64, !dbg !62
  %arrayidx20 = getelementptr inbounds double, double* %pos, i64 %idxprom19, !dbg !62
  %5 = load double, double* %arrayidx20, align 8, !dbg !62, !tbaa !51
  call void @llvm.dbg.value(metadata double %5, metadata !28, metadata !DIExpression()), !dbg !48
  %mul21 = mul nsw i32 %i2, %dim, !dbg !63
  %idxprom23 = sext i32 %mul21 to i64, !dbg !64
  %arrayidx24 = getelementptr inbounds double, double* %pos, i64 %idxprom23, !dbg !64
  %6 = load double, double* %arrayidx24, align 8, !dbg !64, !tbaa !51
  call void @llvm.dbg.value(metadata double %6, metadata !29, metadata !DIExpression()), !dbg !48
  %add26 = add nsw i32 %mul21, 1, !dbg !65
  %idxprom27 = sext i32 %add26 to i64, !dbg !66
  %arrayidx28 = getelementptr inbounds double, double* %pos, i64 %idxprom27, !dbg !66
  %7 = load double, double* %arrayidx28, align 8, !dbg !66, !tbaa !51
  call void @llvm.dbg.value(metadata double %7, metadata !30, metadata !DIExpression()), !dbg !48
  %add30 = add nsw i32 %mul21, 2, !dbg !67
  %idxprom31 = sext i32 %add30 to i64, !dbg !68
  %arrayidx32 = getelementptr inbounds double, double* %pos, i64 %idxprom31, !dbg !68
  %8 = load double, double* %arrayidx32, align 8, !dbg !68, !tbaa !51
  call void @llvm.dbg.value(metadata double %8, metadata !31, metadata !DIExpression()), !dbg !48
  %mul33 = mul nsw i32 %i3, %dim, !dbg !69
  %idxprom35 = sext i32 %mul33 to i64, !dbg !70
  %arrayidx36 = getelementptr inbounds double, double* %pos, i64 %idxprom35, !dbg !70
  %9 = load double, double* %arrayidx36, align 8, !dbg !70, !tbaa !51
  call void @llvm.dbg.value(metadata double %9, metadata !32, metadata !DIExpression()), !dbg !48
  %add38 = add nsw i32 %mul33, 1, !dbg !71
  %idxprom39 = sext i32 %add38 to i64, !dbg !72
  %arrayidx40 = getelementptr inbounds double, double* %pos, i64 %idxprom39, !dbg !72
  %10 = load double, double* %arrayidx40, align 8, !dbg !72, !tbaa !51
  call void @llvm.dbg.value(metadata double %10, metadata !33, metadata !DIExpression()), !dbg !48
  %add42 = add nsw i32 %mul33, 2, !dbg !73
  %idxprom43 = sext i32 %add42 to i64, !dbg !74
  %arrayidx44 = getelementptr inbounds double, double* %pos, i64 %idxprom43, !dbg !74
  %11 = load double, double* %arrayidx44, align 8, !dbg !74, !tbaa !51
  call void @llvm.dbg.value(metadata double %11, metadata !34, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata double undef, metadata !35, metadata !DIExpression()), !dbg !48
  %12 = extractelement <2 x double> %2, i64 0, !dbg !75
  %sub45 = fsub double %4, %12, !dbg !75
  call void @llvm.dbg.value(metadata double %sub45, metadata !36, metadata !DIExpression()), !dbg !48
  %13 = insertelement <2 x double> poison, double %5, i64 0, !dbg !76
  %14 = insertelement <2 x double> %13, double %3, i64 1, !dbg !76
  %15 = extractelement <2 x double> %2, i64 1, !dbg !76
  %16 = insertelement <2 x double> poison, double %15, i64 0, !dbg !76
  %17 = insertelement <2 x double> %16, double %0, i64 1, !dbg !76
  %18 = fsub <2 x double> %14, %17, !dbg !76
  call void @llvm.dbg.value(metadata double undef, metadata !37, metadata !DIExpression()), !dbg !48
  %sub47 = fsub double %6, %0, !dbg !77
  call void @llvm.dbg.value(metadata double %sub47, metadata !38, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata double undef, metadata !39, metadata !DIExpression()), !dbg !48
  %19 = insertelement <2 x double> poison, double %7, i64 0, !dbg !78
  %20 = insertelement <2 x double> %19, double %8, i64 1, !dbg !78
  %21 = fsub <2 x double> %20, %2, !dbg !78
  call void @llvm.dbg.value(metadata double undef, metadata !40, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata double undef, metadata !41, metadata !DIExpression()), !dbg !48
  %sub51 = fsub double %10, %12, !dbg !79
  call void @llvm.dbg.value(metadata double %sub51, metadata !42, metadata !DIExpression()), !dbg !48
  %22 = insertelement <2 x double> poison, double %11, i64 0, !dbg !80
  %23 = insertelement <2 x double> %22, double %9, i64 1, !dbg !80
  %24 = fsub <2 x double> %23, %17, !dbg !80
  call void @llvm.dbg.value(metadata double undef, metadata !43, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata double undef, metadata !44, metadata !DIExpression()), !dbg !48
  %25 = extractelement <2 x double> %21, i64 1, !dbg !81
  %26 = insertelement <2 x double> poison, double %25, i64 0, !dbg !81
  %27 = insertelement <2 x double> %26, double %sub47, i64 1, !dbg !81
  %28 = fneg <2 x double> %27, !dbg !81
  %29 = insertelement <2 x double> poison, double %sub51, i64 0, !dbg !81
  %30 = shufflevector <2 x double> %29, <2 x double> %24, <2 x i32> <i32 0, i32 2>, !dbg !81
  %31 = fmul <2 x double> %30, %28, !dbg !81
  %32 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %21, <2 x double> %24, <2 x double> %31), !dbg !81
  call void @llvm.dbg.value(metadata double undef, metadata !45, metadata !DIExpression()), !dbg !48
  %33 = extractelement <2 x double> %21, i64 0, !dbg !82
  %34 = fneg double %33, !dbg !82
  %35 = extractelement <2 x double> %24, i64 1, !dbg !82
  %neg60 = fmul double %35, %34, !dbg !82
  %36 = tail call double @llvm.fmuladd.f64(double %sub47, double %sub51, double %neg60), !dbg !82
  call void @llvm.dbg.value(metadata double %36, metadata !46, metadata !DIExpression()), !dbg !48
  %37 = extractelement <2 x double> %32, i64 1, !dbg !83
  %mul62 = fmul double %sub45, %37, !dbg !83
  %38 = extractelement <2 x double> %32, i64 0, !dbg !84
  %39 = extractelement <2 x double> %18, i64 1, !dbg !84
  %40 = tail call double @llvm.fmuladd.f64(double %39, double %38, double %mul62), !dbg !84
  %41 = extractelement <2 x double> %18, i64 0, !dbg !85
  %42 = tail call double @llvm.fmuladd.f64(double %41, double %36, double %40), !dbg !85
  store double %42, double* %vol, align 8, !dbg !86, !tbaa !51
  %arrayidx64 = getelementptr inbounds double, double* %d, i64 3, !dbg !87
  %arrayidx65 = getelementptr inbounds double, double* %d, i64 4, !dbg !88
  %43 = bitcast double* %arrayidx64 to <2 x double>*, !dbg !89
  store <2 x double> %32, <2 x double>* %43, align 8, !dbg !89, !tbaa !51
  %arrayidx66 = getelementptr inbounds double, double* %d, i64 5, !dbg !90
  store double %36, double* %arrayidx66, align 8, !dbg !91, !tbaa !51
  %44 = fneg <2 x double> %32, !dbg !92
  %fneg70 = fneg double %36, !dbg !93
  %arrayidx71 = getelementptr inbounds double, double* %d, i64 2, !dbg !94
  call void @llvm.dbg.value(metadata double undef, metadata !44, metadata !DIExpression()), !dbg !48
  %45 = fneg <2 x double> %24, !dbg !95
  %46 = insertelement <2 x double> poison, double %sub45, i64 0, !dbg !95
  %47 = shufflevector <2 x double> %46, <2 x double> %18, <2 x i32> <i32 0, i32 2>, !dbg !95
  %48 = fmul <2 x double> %47, %45, !dbg !95
  %49 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %30, <2 x double> %18, <2 x double> %48), !dbg !95
  call void @llvm.dbg.value(metadata double undef, metadata !45, metadata !DIExpression()), !dbg !48
  %50 = fneg double %sub51, !dbg !96
  %neg80 = fmul double %39, %50, !dbg !96
  %51 = tail call double @llvm.fmuladd.f64(double %35, double %sub45, double %neg80), !dbg !96
  call void @llvm.dbg.value(metadata double %51, metadata !46, metadata !DIExpression()), !dbg !48
  %arrayidx81 = getelementptr inbounds double, double* %d, i64 6, !dbg !97
  %52 = bitcast double* %arrayidx81 to <2 x double>*, !dbg !98
  store <2 x double> %49, <2 x double>* %52, align 8, !dbg !98, !tbaa !51
  %arrayidx83 = getelementptr inbounds double, double* %d, i64 8, !dbg !99
  store double %51, double* %arrayidx83, align 8, !dbg !100, !tbaa !51
  %53 = fsub <2 x double> %44, %49, !dbg !101
  %add92 = fsub double %fneg70, %51, !dbg !102
  call void @llvm.dbg.value(metadata double undef, metadata !44, metadata !DIExpression()), !dbg !48
  %54 = fneg <2 x double> %18, !dbg !103
  %55 = fmul <2 x double> %21, %54, !dbg !103
  %56 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %47, <2 x double> %27, <2 x double> %55), !dbg !103
  call void @llvm.dbg.value(metadata double undef, metadata !45, metadata !DIExpression()), !dbg !48
  %57 = fneg double %sub45, !dbg !104
  %neg101 = fmul double %sub47, %57, !dbg !104
  %58 = tail call double @llvm.fmuladd.f64(double %39, double %33, double %neg101), !dbg !104
  call void @llvm.dbg.value(metadata double %58, metadata !46, metadata !DIExpression()), !dbg !48
  %arrayidx102 = getelementptr inbounds double, double* %d, i64 9, !dbg !105
  %arrayidx103 = getelementptr inbounds double, double* %d, i64 10, !dbg !106
  %59 = bitcast double* %arrayidx102 to <2 x double>*, !dbg !107
  store <2 x double> %56, <2 x double>* %59, align 8, !dbg !107, !tbaa !51
  %arrayidx104 = getelementptr inbounds double, double* %d, i64 11, !dbg !108
  store double %58, double* %arrayidx104, align 8, !dbg !109, !tbaa !51
  %60 = fsub <2 x double> %53, %56, !dbg !110
  %61 = bitcast double* %d to <2 x double>*, !dbg !110
  store <2 x double> %60, <2 x double>* %61, align 8, !dbg !110, !tbaa !51
  %add113 = fsub double %add92, %58, !dbg !111
  store double %add113, double* %arrayidx71, align 8, !dbg !111, !tbaa !51
  %62 = load double, double* %vol, align 8, !dbg !112, !tbaa !51
  %mul114 = fmul double %62, 0x3FC555555567A895, !dbg !112
  store double %mul114, double* %vol, align 8, !dbg !112, !tbaa !51
  call void @llvm.dbg.value(metadata i32 0, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i64 0, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i64 1, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i64 1, metadata !47, metadata !DIExpression()), !dbg !48
  %63 = bitcast double* %d to <2 x double>*, !dbg !113
  %64 = load <2 x double>, <2 x double>* %63, align 8, !dbg !113, !tbaa !51
  %65 = fmul <2 x double> %64, <double 0x3FC555555567A895, double 0x3FC555555567A895>, !dbg !113
  %66 = bitcast double* %d to <2 x double>*, !dbg !113
  store <2 x double> %65, <2 x double>* %66, align 8, !dbg !113, !tbaa !51
  call void @llvm.dbg.value(metadata i64 2, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i64 2, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i64 3, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i64 3, metadata !47, metadata !DIExpression()), !dbg !48
  %67 = bitcast double* %arrayidx71 to <2 x double>*, !dbg !113
  %68 = load <2 x double>, <2 x double>* %67, align 8, !dbg !113, !tbaa !51
  %69 = fmul <2 x double> %68, <double 0x3FC555555567A895, double 0x3FC555555567A895>, !dbg !113
  %70 = bitcast double* %arrayidx71 to <2 x double>*, !dbg !113
  store <2 x double> %69, <2 x double>* %70, align 8, !dbg !113, !tbaa !51
  call void @llvm.dbg.value(metadata i64 4, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i64 4, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i64 5, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i64 5, metadata !47, metadata !DIExpression()), !dbg !48
  %71 = bitcast double* %arrayidx65 to <2 x double>*, !dbg !113
  %72 = load <2 x double>, <2 x double>* %71, align 8, !dbg !113, !tbaa !51
  %73 = fmul <2 x double> %72, <double 0x3FC555555567A895, double 0x3FC555555567A895>, !dbg !113
  %74 = bitcast double* %arrayidx65 to <2 x double>*, !dbg !113
  store <2 x double> %73, <2 x double>* %74, align 8, !dbg !113, !tbaa !51
  call void @llvm.dbg.value(metadata i64 6, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i64 6, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i64 7, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i64 7, metadata !47, metadata !DIExpression()), !dbg !48
  %75 = bitcast double* %arrayidx81 to <2 x double>*, !dbg !113
  %76 = load <2 x double>, <2 x double>* %75, align 8, !dbg !113, !tbaa !51
  %77 = fmul <2 x double> %76, <double 0x3FC555555567A895, double 0x3FC555555567A895>, !dbg !113
  %78 = bitcast double* %arrayidx81 to <2 x double>*, !dbg !113
  store <2 x double> %77, <2 x double>* %78, align 8, !dbg !113, !tbaa !51
  call void @llvm.dbg.value(metadata i64 8, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i64 8, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i64 9, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i64 9, metadata !47, metadata !DIExpression()), !dbg !48
  %79 = bitcast double* %arrayidx83 to <2 x double>*, !dbg !113
  %80 = load <2 x double>, <2 x double>* %79, align 8, !dbg !113, !tbaa !51
  %81 = fmul <2 x double> %80, <double 0x3FC555555567A895, double 0x3FC555555567A895>, !dbg !113
  %82 = bitcast double* %arrayidx83 to <2 x double>*, !dbg !113
  store <2 x double> %81, <2 x double>* %82, align 8, !dbg !113, !tbaa !51
  call void @llvm.dbg.value(metadata i64 10, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i64 10, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i64 11, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i64 11, metadata !47, metadata !DIExpression()), !dbg !48
  %83 = bitcast double* %arrayidx103 to <2 x double>*, !dbg !113
  %84 = load <2 x double>, <2 x double>* %83, align 8, !dbg !113, !tbaa !51
  %85 = fmul <2 x double> %84, <double 0x3FC555555567A895, double 0x3FC555555567A895>, !dbg !113
  %86 = bitcast double* %arrayidx103 to <2 x double>*, !dbg !113
  store <2 x double> %85, <2 x double>* %86, align 8, !dbg !113, !tbaa !51
  call void @llvm.dbg.value(metadata i64 12, metadata !47, metadata !DIExpression()), !dbg !48
  ret void, !dbg !116
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

attributes #0 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/chirvol.c", directory: "/home/rouzbeh/Graduate/Research/LLVM/Active-Lane-Conslidation/test", checksumkind: CSK_MD5, checksum: "3b47146c7eedfb534b9c24973d60161b")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)"}
!7 = distinct !DISubprogram(name: "chirvol", scope: !8, file: !8, line: 9, type: !9, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!8 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/chirvol.c", directory: "/home/rouzbeh/Graduate/Research", checksumkind: CSK_MD5, checksum: "3b47146c7eedfb534b9c24973d60161b")
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !11, !11, !11, !11, !12, !12, !12}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!15 = !DILocalVariable(name: "dim", arg: 1, scope: !7, file: !8, line: 9, type: !11)
!16 = !DILocalVariable(name: "i0", arg: 2, scope: !7, file: !8, line: 9, type: !11)
!17 = !DILocalVariable(name: "i1", arg: 3, scope: !7, file: !8, line: 9, type: !11)
!18 = !DILocalVariable(name: "i2", arg: 4, scope: !7, file: !8, line: 9, type: !11)
!19 = !DILocalVariable(name: "i3", arg: 5, scope: !7, file: !8, line: 9, type: !11)
!20 = !DILocalVariable(name: "pos", arg: 6, scope: !7, file: !8, line: 10, type: !12)
!21 = !DILocalVariable(name: "d", arg: 7, scope: !7, file: !8, line: 10, type: !12)
!22 = !DILocalVariable(name: "vol", arg: 8, scope: !7, file: !8, line: 10, type: !12)
!23 = !DILocalVariable(name: "x0", scope: !7, file: !8, line: 13, type: !13)
!24 = !DILocalVariable(name: "y0", scope: !7, file: !8, line: 13, type: !13)
!25 = !DILocalVariable(name: "z0", scope: !7, file: !8, line: 13, type: !13)
!26 = !DILocalVariable(name: "x1", scope: !7, file: !8, line: 14, type: !13)
!27 = !DILocalVariable(name: "y1", scope: !7, file: !8, line: 14, type: !13)
!28 = !DILocalVariable(name: "z1", scope: !7, file: !8, line: 14, type: !13)
!29 = !DILocalVariable(name: "x2", scope: !7, file: !8, line: 15, type: !13)
!30 = !DILocalVariable(name: "y2", scope: !7, file: !8, line: 15, type: !13)
!31 = !DILocalVariable(name: "z2", scope: !7, file: !8, line: 15, type: !13)
!32 = !DILocalVariable(name: "x3", scope: !7, file: !8, line: 16, type: !13)
!33 = !DILocalVariable(name: "y3", scope: !7, file: !8, line: 16, type: !13)
!34 = !DILocalVariable(name: "z3", scope: !7, file: !8, line: 16, type: !13)
!35 = !DILocalVariable(name: "a1", scope: !7, file: !8, line: 17, type: !13)
!36 = !DILocalVariable(name: "a2", scope: !7, file: !8, line: 17, type: !13)
!37 = !DILocalVariable(name: "a3", scope: !7, file: !8, line: 17, type: !13)
!38 = !DILocalVariable(name: "b1", scope: !7, file: !8, line: 17, type: !13)
!39 = !DILocalVariable(name: "b2", scope: !7, file: !8, line: 17, type: !13)
!40 = !DILocalVariable(name: "b3", scope: !7, file: !8, line: 17, type: !13)
!41 = !DILocalVariable(name: "c1", scope: !7, file: !8, line: 17, type: !13)
!42 = !DILocalVariable(name: "c2", scope: !7, file: !8, line: 17, type: !13)
!43 = !DILocalVariable(name: "c3", scope: !7, file: !8, line: 17, type: !13)
!44 = !DILocalVariable(name: "gq1", scope: !7, file: !8, line: 18, type: !13)
!45 = !DILocalVariable(name: "gq2", scope: !7, file: !8, line: 18, type: !13)
!46 = !DILocalVariable(name: "gq3", scope: !7, file: !8, line: 18, type: !13)
!47 = !DILocalVariable(name: "i", scope: !7, file: !8, line: 19, type: !11)
!48 = !DILocation(line: 0, scope: !7)
!49 = !DILocation(line: 21, column: 15, scope: !7)
!50 = !DILocation(line: 21, column: 7, scope: !7)
!51 = !{!52, !52, i64 0}
!52 = !{!"double", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !DILocation(line: 22, column: 18, scope: !7)
!56 = !DILocation(line: 22, column: 7, scope: !7)
!57 = !DILocation(line: 24, column: 15, scope: !7)
!58 = !DILocation(line: 24, column: 7, scope: !7)
!59 = !DILocation(line: 25, column: 18, scope: !7)
!60 = !DILocation(line: 25, column: 7, scope: !7)
!61 = !DILocation(line: 26, column: 18, scope: !7)
!62 = !DILocation(line: 26, column: 7, scope: !7)
!63 = !DILocation(line: 27, column: 15, scope: !7)
!64 = !DILocation(line: 27, column: 7, scope: !7)
!65 = !DILocation(line: 28, column: 18, scope: !7)
!66 = !DILocation(line: 28, column: 7, scope: !7)
!67 = !DILocation(line: 29, column: 18, scope: !7)
!68 = !DILocation(line: 29, column: 7, scope: !7)
!69 = !DILocation(line: 30, column: 15, scope: !7)
!70 = !DILocation(line: 30, column: 7, scope: !7)
!71 = !DILocation(line: 31, column: 18, scope: !7)
!72 = !DILocation(line: 31, column: 7, scope: !7)
!73 = !DILocation(line: 32, column: 18, scope: !7)
!74 = !DILocation(line: 32, column: 7, scope: !7)
!75 = !DILocation(line: 34, column: 24, scope: !7)
!76 = !DILocation(line: 34, column: 38, scope: !7)
!77 = !DILocation(line: 35, column: 10, scope: !7)
!78 = !DILocation(line: 35, column: 24, scope: !7)
!79 = !DILocation(line: 36, column: 24, scope: !7)
!80 = !DILocation(line: 36, column: 38, scope: !7)
!81 = !DILocation(line: 38, column: 14, scope: !7)
!82 = !DILocation(line: 40, column: 14, scope: !7)
!83 = !DILocation(line: 41, column: 20, scope: !7)
!84 = !DILocation(line: 41, column: 16, scope: !7)
!85 = !DILocation(line: 41, column: 25, scope: !7)
!86 = !DILocation(line: 41, column: 7, scope: !7)
!87 = !DILocation(line: 43, column: 2, scope: !7)
!88 = !DILocation(line: 43, column: 15, scope: !7)
!89 = !DILocation(line: 43, column: 7, scope: !7)
!90 = !DILocation(line: 43, column: 28, scope: !7)
!91 = !DILocation(line: 43, column: 33, scope: !7)
!92 = !DILocation(line: 44, column: 9, scope: !7)
!93 = !DILocation(line: 44, column: 35, scope: !7)
!94 = !DILocation(line: 44, column: 28, scope: !7)
!95 = !DILocation(line: 46, column: 14, scope: !7)
!96 = !DILocation(line: 48, column: 14, scope: !7)
!97 = !DILocation(line: 50, column: 2, scope: !7)
!98 = !DILocation(line: 50, column: 7, scope: !7)
!99 = !DILocation(line: 50, column: 28, scope: !7)
!100 = !DILocation(line: 50, column: 33, scope: !7)
!101 = !DILocation(line: 51, column: 7, scope: !7)
!102 = !DILocation(line: 51, column: 35, scope: !7)
!103 = !DILocation(line: 53, column: 14, scope: !7)
!104 = !DILocation(line: 55, column: 14, scope: !7)
!105 = !DILocation(line: 57, column: 2, scope: !7)
!106 = !DILocation(line: 57, column: 15, scope: !7)
!107 = !DILocation(line: 57, column: 7, scope: !7)
!108 = !DILocation(line: 57, column: 29, scope: !7)
!109 = !DILocation(line: 57, column: 35, scope: !7)
!110 = !DILocation(line: 58, column: 7, scope: !7)
!111 = !DILocation(line: 58, column: 35, scope: !7)
!112 = !DILocation(line: 62, column: 7, scope: !7)
!113 = !DILocation(line: 63, column: 29, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !8, line: 63, column: 2)
!115 = distinct !DILexicalBlock(scope: !7, file: !8, line: 63, column: 2)
!116 = !DILocation(line: 65, column: 1, scope: !7)
