; ModuleID = 'option.c'
source_filename = "option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@norm_address = external local_unnamed_addr global ptr, align 8
@opc_address = external local_unnamed_addr global ptr, align 8
@pyr_address = external local_unnamed_addr global [10 x ptr], align 16
@background = dso_local local_unnamed_addr global i8 0, align 1, !dbg !0
@angle = dso_local local_unnamed_addr global [3 x float] zeroinitializer, align 4, !dbg !64
@opacity_epsilon = dso_local local_unnamed_addr global float 0.000000e+00, align 4, !dbg !50
@opacity_cutoff = dso_local local_unnamed_addr global float 0.000000e+00, align 4, !dbg !52
@highest_sampling_boxlen = dso_local local_unnamed_addr global i64 0, align 8, !dbg !54
@lowest_volume_boxlen = dso_local local_unnamed_addr global i64 0, align 8, !dbg !56
@volume_color_difference = dso_local local_unnamed_addr global i64 0, align 8, !dbg !58
@pyr_highest_level = dso_local local_unnamed_addr global i64 0, align 8, !dbg !60
@pyr_lowest_level = dso_local local_unnamed_addr global i64 0, align 8, !dbg !62
@density_epsilon = dso_local local_unnamed_addr global i64 0, align 8, !dbg !17
@magnitude_epsilon = dso_local local_unnamed_addr global i64 0, align 8, !dbg !19
@density_opacity = dso_local local_unnamed_addr global [256 x float] zeroinitializer, align 16, !dbg !21
@magnitude_opacity = dso_local local_unnamed_addr global [443 x float] zeroinitializer, align 16, !dbg !26
@light = dso_local local_unnamed_addr global [3 x float] zeroinitializer, align 4, !dbg !31
@ambient_color = dso_local local_unnamed_addr global float 0.000000e+00, align 4, !dbg !36
@diffuse_color = dso_local local_unnamed_addr global float 0.000000e+00, align 4, !dbg !38
@specular_color = dso_local local_unnamed_addr global float 0.000000e+00, align 4, !dbg !40
@specular_exponent = dso_local local_unnamed_addr global float 0.000000e+00, align 4, !dbg !42
@depth_hither = dso_local local_unnamed_addr global float 0.000000e+00, align 4, !dbg !44
@depth_yon = dso_local local_unnamed_addr global float 0.000000e+00, align 4, !dbg !46
@depth_exponent = dso_local local_unnamed_addr global float 0.000000e+00, align 4, !dbg !48
@block_xlen = dso_local local_unnamed_addr global i64 0, align 8, !dbg !7
@block_ylen = dso_local local_unnamed_addr global i64 0, align 8, !dbg !10
@.str.3 = private unnamed_addr constant [16 x i8] c"\09%ld processes\0A\00", align 1
@num_nodes = external local_unnamed_addr global i64, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"\09%ldx%ld image block size\0A\00", align 1
@adaptive = dso_local local_unnamed_addr global i16 0, align 2, !dbg !12
@.str.9 = private unnamed_addr constant [64 x i8] c"\09starting angle at (%.1f, %.1f, %.1f) with rotation step of %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"rotating %d steps in each of the three Cartesian directions\0A\00", align 1
@ROTATE_STEPS = external local_unnamed_addr global i32, align 4
@str = private unnamed_addr constant [91 x i8] c"Both computing normals, opacities and octree as well as rendering: starting from .den file\00", align 1
@str.12 = private unnamed_addr constant [101 x i8] c"NOTE: Preprocessing (computing normals, opacities and octree) is done serially by only one processor\00", align 1
@str.13 = private unnamed_addr constant [40 x i8] c"Gouraud shading from lookup tables used\00", align 1
@str.14 = private unnamed_addr constant [29 x i8] c"\09doing nonadaptive rendering\00", align 1
@str.15 = private unnamed_addr constant [59 x i8] c"\09using precomputed normals and opacities in separate array\00", align 1
@str.16 = private unnamed_addr constant [22 x i8] c"\09using opacity octree\00", align 1
@str.17 = private unnamed_addr constant [26 x i8] c"\09doing adaptive rendering\00", align 1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @Init_Options() local_unnamed_addr #0 !dbg !75 {
entry:
  store ptr null, ptr @norm_address, align 8, !dbg !79
  store ptr null, ptr @opc_address, align 8, !dbg !80
  store ptr null, ptr @pyr_address, align 16, !dbg !81
  store i8 0, ptr @background, align 1, !dbg !82
  tail call void @Init_Opacity(), !dbg !83
  tail call void @Init_Lighting(), !dbg !84
  store float 9.000000e+01, ptr @angle, align 4, !dbg !85
  store float -3.600000e+01, ptr getelementptr inbounds ([3 x float], ptr @angle, i64 0, i64 1), align 4, !dbg !86
  store float 0.000000e+00, ptr getelementptr inbounds ([3 x float], ptr @angle, i64 0, i64 2), align 4, !dbg !87
  tail call void @Init_Parallelization(), !dbg !88
  store float 0.000000e+00, ptr @opacity_epsilon, align 4, !dbg !89
  store float 0x3FEE666660000000, ptr @opacity_cutoff, align 4, !dbg !90
  store i64 4, ptr @highest_sampling_boxlen, align 8, !dbg !91
  store i64 1, ptr @lowest_volume_boxlen, align 8, !dbg !92
  store i64 16, ptr @volume_color_difference, align 8, !dbg !93
  store i64 5, ptr @pyr_highest_level, align 8, !dbg !94
  store i64 2, ptr @pyr_lowest_level, align 8, !dbg !95
  ret void, !dbg !96
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @Init_Opacity() local_unnamed_addr #1 !dbg !97 {
entry:
  store i64 96, ptr @density_epsilon, align 8, !dbg !101
  store i64 1, ptr @magnitude_epsilon, align 8, !dbg !102
  store float 0.000000e+00, ptr getelementptr inbounds ([256 x float], ptr @density_opacity, i64 0, i64 95), align 4, !dbg !103
  store float 1.000000e+00, ptr getelementptr inbounds ([256 x float], ptr @density_opacity, i64 0, i64 135), align 4, !dbg !104
  store float 1.000000e+00, ptr getelementptr inbounds ([256 x float], ptr @density_opacity, i64 0, i64 255), align 4, !dbg !105
  call void @llvm.dbg.value(metadata i64 0, metadata !99, metadata !DIExpression()), !dbg !106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(380) @density_opacity, i8 0, i64 380, i1 false), !dbg !107
  call void @llvm.dbg.value(metadata i32 undef, metadata !99, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.value(metadata i32 undef, metadata !99, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !106
  br label %for.body3, !dbg !110

for.body3:                                        ; preds = %entry, %for.body3
  %0 = phi float [ %add, %for.body3 ], [ 0.000000e+00, %entry ], !dbg !112
  %i.152 = phi i64 [ %add5, %for.body3 ], [ 95, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.152, metadata !99, metadata !DIExpression()), !dbg !106
  %add = fadd float %0, 0x3F999999A0000000, !dbg !114
  %add5 = add nuw nsw i64 %i.152, 1, !dbg !115
  %arrayidx6 = getelementptr inbounds [256 x float], ptr @density_opacity, i64 0, i64 %add5, !dbg !116
  store float %add, ptr %arrayidx6, align 4, !dbg !117
  call void @llvm.dbg.value(metadata i64 %add5, metadata !99, metadata !DIExpression()), !dbg !106
  %exitcond.not = icmp eq i64 %add5, 134, !dbg !118
  br i1 %exitcond.not, label %for.body12, label %for.body3, !dbg !110, !llvm.loop !119

for.body12:                                       ; preds = %for.body3, %for.body12
  %i.253 = phi i64 [ %inc15, %for.body12 ], [ 135, %for.body3 ]
  call void @llvm.dbg.value(metadata i64 %i.253, metadata !99, metadata !DIExpression()), !dbg !106
  %arrayidx13 = getelementptr inbounds [256 x float], ptr @density_opacity, i64 0, i64 %i.253, !dbg !123
  store float 1.000000e+00, ptr %arrayidx13, align 4, !dbg !126
  %inc15 = add nuw nsw i64 %i.253, 1, !dbg !127
  call void @llvm.dbg.value(metadata i64 %inc15, metadata !99, metadata !DIExpression()), !dbg !106
  %exitcond56.not = icmp eq i64 %inc15, 255, !dbg !128
  br i1 %exitcond56.not, label %for.end16, label %for.body12, !dbg !129, !llvm.loop !130

for.end16:                                        ; preds = %for.body12
  store float 0.000000e+00, ptr @magnitude_opacity, align 16, !dbg !132
  store float 1.000000e+00, ptr getelementptr inbounds ([443 x float], ptr @magnitude_opacity, i64 0, i64 70), align 8, !dbg !133
  store float 1.000000e+00, ptr getelementptr inbounds ([443 x float], ptr @magnitude_opacity, i64 0, i64 442), align 8, !dbg !134
  call void @llvm.dbg.value(metadata float 0x3F8D41D420000000, metadata !100, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.value(metadata i64 0, metadata !99, metadata !DIExpression()), !dbg !106
  br label %for.body19, !dbg !135

for.body19:                                       ; preds = %for.end16, %for.body19
  %1 = phi float [ 0.000000e+00, %for.end16 ], [ %add21, %for.body19 ], !dbg !137
  %i.354 = phi i64 [ 0, %for.end16 ], [ %add22, %for.body19 ]
  call void @llvm.dbg.value(metadata i64 %i.354, metadata !99, metadata !DIExpression()), !dbg !106
  %add21 = fadd float %1, 0x3F8D41D420000000, !dbg !139
  %add22 = add nuw nsw i64 %i.354, 1, !dbg !140
  %arrayidx23 = getelementptr inbounds [443 x float], ptr @magnitude_opacity, i64 0, i64 %add22, !dbg !141
  store float %add21, ptr %arrayidx23, align 4, !dbg !142
  call void @llvm.dbg.value(metadata i64 %add22, metadata !99, metadata !DIExpression()), !dbg !106
  %exitcond57.not = icmp eq i64 %add22, 69, !dbg !143
  br i1 %exitcond57.not, label %for.body29, label %for.body19, !dbg !135, !llvm.loop !144

for.body29:                                       ; preds = %for.body19, %for.body29
  %i.455 = phi i64 [ %inc32, %for.body29 ], [ 70, %for.body19 ]
  call void @llvm.dbg.value(metadata i64 %i.455, metadata !99, metadata !DIExpression()), !dbg !106
  %arrayidx30 = getelementptr inbounds [443 x float], ptr @magnitude_opacity, i64 0, i64 %i.455, !dbg !146
  store float 1.000000e+00, ptr %arrayidx30, align 4, !dbg !149
  %inc32 = add nuw nsw i64 %i.455, 1, !dbg !150
  call void @llvm.dbg.value(metadata i64 %inc32, metadata !99, metadata !DIExpression()), !dbg !106
  %exitcond58.not = icmp eq i64 %inc32, 441, !dbg !151
  br i1 %exitcond58.not, label %for.end33, label %for.body29, !dbg !152, !llvm.loop !153

for.end33:                                        ; preds = %for.body29
  ret void, !dbg !155
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @Init_Lighting() local_unnamed_addr #2 !dbg !156 {
entry:
  call void @llvm.dbg.value(metadata float 0x3FE84256E0000000, metadata !158, metadata !DIExpression()), !dbg !159
  store float 0x3FD84256E0000000, ptr @light, align 4, !dbg !160
  store float 0x3FE0FB3CC0000000, ptr getelementptr inbounds ([3 x float], ptr @light, i64 0, i64 1), align 4, !dbg !161
  store float 0xBFE84256E0000000, ptr getelementptr inbounds ([3 x float], ptr @light, i64 0, i64 2), align 4, !dbg !162
  store float 3.000000e+01, ptr @ambient_color, align 4, !dbg !163
  store float 1.000000e+02, ptr @diffuse_color, align 4, !dbg !164
  store float 1.300000e+02, ptr @specular_color, align 4, !dbg !165
  store float 1.000000e+01, ptr @specular_exponent, align 4, !dbg !166
  store float 1.000000e+00, ptr @depth_hither, align 4, !dbg !167
  store float 0x3FD99999A0000000, ptr @depth_yon, align 4, !dbg !168
  store float 1.000000e+00, ptr @depth_exponent, align 4, !dbg !169
  ret void, !dbg !170
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @Init_Parallelization() local_unnamed_addr #0 !dbg !171 {
entry:
  store i64 4, ptr @block_xlen, align 8, !dbg !172
  store i64 4, ptr @block_ylen, align 8, !dbg !173
  %puts = tail call i32 @puts(ptr nonnull @str), !dbg !174
  %puts14 = tail call i32 @puts(ptr nonnull @str.12), !dbg !175
  %puts15 = tail call i32 @puts(ptr nonnull @str.13), !dbg !176
  %0 = load i64, ptr @num_nodes, align 8, !dbg !177
  %call3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3, i64 noundef %0), !dbg !178
  %1 = load i64, ptr @block_xlen, align 8, !dbg !179
  %2 = load i64, ptr @block_ylen, align 8, !dbg !180
  %call4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i64 noundef %1, i64 noundef %2), !dbg !181
  %3 = load i16, ptr @adaptive, align 2, !dbg !182
  %tobool.not = icmp eq i16 %3, 0, !dbg !182
  %str.14.str.17 = select i1 %tobool.not, ptr @str.14, ptr @str.17
  %puts16 = tail call i32 @puts(ptr nonnull %str.14.str.17), !dbg !184
  %puts17 = tail call i32 @puts(ptr nonnull @str.15), !dbg !185
  %puts18 = tail call i32 @puts(ptr nonnull @str.16), !dbg !186
  %4 = load float, ptr @angle, align 4, !dbg !187
  %conv = fpext float %4 to double, !dbg !187
  %5 = load float, ptr getelementptr inbounds ([3 x float], ptr @angle, i64 0, i64 1), align 4, !dbg !188
  %conv9 = fpext float %5 to double, !dbg !188
  %6 = load float, ptr getelementptr inbounds ([3 x float], ptr @angle, i64 0, i64 2), align 4, !dbg !189
  %conv10 = fpext float %6 to double, !dbg !189
  %call11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, double noundef %conv, double noundef %conv9, double noundef %conv10, i32 noundef 3), !dbg !190
  %7 = load i32, ptr @ROTATE_STEPS, align 4, !dbg !191
  %call12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, i32 noundef %7), !dbg !192
  %putchar = tail call i32 @putchar(i32 10), !dbg !193
  ret void, !dbg !194
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "background", scope: !2, file: !3, line: 41, type: !66, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "option.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "066172c9f6cf8cd707b54dd31e19a7b3")
!4 = !{!5}
!5 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!6 = !{!7, !10, !12, !17, !19, !21, !26, !0, !31, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "block_xlen", scope: !2, file: !3, line: 27, type: !9, isLocal: false, isDefinition: true)
!9 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "block_ylen", scope: !2, file: !3, line: 27, type: !9, isLocal: false, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "adaptive", scope: !2, file: !3, line: 28, type: !14, isLocal: false, isDefinition: true)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOOLEAN", file: !15, line: 34, baseType: !16)
!15 = !DIFile(filename: "./my_types.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "1c0e36810bc34cd72ba4bfe4a2cdcc97")
!16 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "density_epsilon", scope: !2, file: !3, line: 31, type: !9, isLocal: false, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "magnitude_epsilon", scope: !2, file: !3, line: 33, type: !9, isLocal: false, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "density_opacity", scope: !2, file: !3, line: 37, type: !23, isLocal: false, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8192, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 256)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "magnitude_opacity", scope: !2, file: !3, line: 38, type: !28, isLocal: false, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 14176, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 443)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "light", scope: !2, file: !3, line: 44, type: !33, isLocal: false, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 96, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 3)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "ambient_color", scope: !2, file: !3, line: 47, type: !5, isLocal: false, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "diffuse_color", scope: !2, file: !3, line: 48, type: !5, isLocal: false, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "specular_color", scope: !2, file: !3, line: 49, type: !5, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "specular_exponent", scope: !2, file: !3, line: 50, type: !5, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "depth_hither", scope: !2, file: !3, line: 53, type: !5, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "depth_yon", scope: !2, file: !3, line: 54, type: !5, isLocal: false, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "depth_exponent", scope: !2, file: !3, line: 55, type: !5, isLocal: false, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "opacity_epsilon", scope: !2, file: !3, line: 58, type: !5, isLocal: false, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "opacity_cutoff", scope: !2, file: !3, line: 64, type: !5, isLocal: false, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "highest_sampling_boxlen", scope: !2, file: !3, line: 68, type: !9, isLocal: false, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "lowest_volume_boxlen", scope: !2, file: !3, line: 70, type: !9, isLocal: false, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "volume_color_difference", scope: !2, file: !3, line: 72, type: !9, isLocal: false, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "pyr_highest_level", scope: !2, file: !3, line: 74, type: !9, isLocal: false, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "pyr_lowest_level", scope: !2, file: !3, line: 76, type: !9, isLocal: false, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "angle", scope: !2, file: !3, line: 78, type: !33, isLocal: false, isDefinition: true)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "PIXEL", file: !15, line: 30, baseType: !67)
!67 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!68 = !{i32 7, !"Dwarf Version", i32 5}
!69 = !{i32 2, !"Debug Info Version", i32 3}
!70 = !{i32 1, !"wchar_size", i32 4}
!71 = !{i32 7, !"PIC Level", i32 2}
!72 = !{i32 7, !"PIE Level", i32 2}
!73 = !{i32 7, !"uwtable", i32 2}
!74 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!75 = distinct !DISubprogram(name: "Init_Options", scope: !3, file: !3, line: 99, type: !76, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !78)
!76 = !DISubroutineType(types: !77)
!77 = !{null}
!78 = !{}
!79 = !DILocation(line: 102, column: 16, scope: !75)
!80 = !DILocation(line: 103, column: 15, scope: !75)
!81 = !DILocation(line: 104, column: 18, scope: !75)
!82 = !DILocation(line: 106, column: 14, scope: !75)
!83 = !DILocation(line: 108, column: 3, scope: !75)
!84 = !DILocation(line: 109, column: 3, scope: !75)
!85 = !DILocation(line: 111, column: 12, scope: !75)
!86 = !DILocation(line: 112, column: 12, scope: !75)
!87 = !DILocation(line: 113, column: 12, scope: !75)
!88 = !DILocation(line: 114, column: 3, scope: !75)
!89 = !DILocation(line: 116, column: 19, scope: !75)
!90 = !DILocation(line: 117, column: 18, scope: !75)
!91 = !DILocation(line: 118, column: 27, scope: !75)
!92 = !DILocation(line: 121, column: 24, scope: !75)
!93 = !DILocation(line: 123, column: 27, scope: !75)
!94 = !DILocation(line: 124, column: 21, scope: !75)
!95 = !DILocation(line: 125, column: 20, scope: !75)
!96 = !DILocation(line: 126, column: 1, scope: !75)
!97 = distinct !DISubprogram(name: "Init_Opacity", scope: !3, file: !3, line: 129, type: !76, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !98)
!98 = !{!99, !100}
!99 = !DILocalVariable(name: "i", scope: !97, file: !3, line: 131, type: !9)
!100 = !DILocalVariable(name: "increment", scope: !97, file: !3, line: 132, type: !5)
!101 = !DILocation(line: 134, column: 19, scope: !97)
!102 = !DILocation(line: 135, column: 21, scope: !97)
!103 = !DILocation(line: 139, column: 23, scope: !97)
!104 = !DILocation(line: 140, column: 24, scope: !97)
!105 = !DILocation(line: 141, column: 32, scope: !97)
!106 = !DILocation(line: 0, scope: !97)
!107 = !DILocation(line: 142, column: 53, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !3, line: 142, column: 3)
!109 = distinct !DILexicalBlock(scope: !97, file: !3, line: 142, column: 3)
!110 = !DILocation(line: 144, column: 3, scope: !111)
!111 = distinct !DILexicalBlock(scope: !97, file: !3, line: 144, column: 3)
!112 = !DILocation(line: 145, column: 28, scope: !113)
!113 = distinct !DILexicalBlock(scope: !111, file: !3, line: 144, column: 3)
!114 = !DILocation(line: 145, column: 46, scope: !113)
!115 = !DILocation(line: 145, column: 22, scope: !113)
!116 = !DILocation(line: 145, column: 5, scope: !113)
!117 = !DILocation(line: 145, column: 26, scope: !113)
!118 = !DILocation(line: 144, column: 15, scope: !113)
!119 = distinct !{!119, !110, !120, !121, !122}
!120 = !DILocation(line: 145, column: 47, scope: !111)
!121 = !{!"llvm.loop.mustprogress"}
!122 = !{!"llvm.loop.unroll.disable"}
!123 = !DILocation(line: 146, column: 35, scope: !124)
!124 = distinct !DILexicalBlock(scope: !125, file: !3, line: 146, column: 3)
!125 = distinct !DILexicalBlock(scope: !97, file: !3, line: 146, column: 3)
!126 = !DILocation(line: 146, column: 54, scope: !124)
!127 = !DILocation(line: 146, column: 31, scope: !124)
!128 = !DILocation(line: 146, column: 16, scope: !124)
!129 = !DILocation(line: 146, column: 3, scope: !125)
!130 = distinct !{!130, !129, !131, !121, !122}
!131 = !DILocation(line: 146, column: 56, scope: !125)
!132 = !DILocation(line: 147, column: 36, scope: !97)
!133 = !DILocation(line: 148, column: 25, scope: !97)
!134 = !DILocation(line: 149, column: 36, scope: !97)
!135 = !DILocation(line: 151, column: 3, scope: !136)
!136 = distinct !DILexicalBlock(scope: !97, file: !3, line: 151, column: 3)
!137 = !DILocation(line: 152, column: 30, scope: !138)
!138 = distinct !DILexicalBlock(scope: !136, file: !3, line: 151, column: 3)
!139 = !DILocation(line: 152, column: 50, scope: !138)
!140 = !DILocation(line: 152, column: 24, scope: !138)
!141 = !DILocation(line: 152, column: 5, scope: !138)
!142 = !DILocation(line: 152, column: 28, scope: !138)
!143 = !DILocation(line: 151, column: 26, scope: !138)
!144 = distinct !{!144, !135, !145, !121, !122}
!145 = !DILocation(line: 152, column: 51, scope: !136)
!146 = !DILocation(line: 153, column: 38, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !3, line: 153, column: 3)
!148 = distinct !DILexicalBlock(scope: !97, file: !3, line: 153, column: 3)
!149 = !DILocation(line: 153, column: 59, scope: !147)
!150 = !DILocation(line: 153, column: 34, scope: !147)
!151 = !DILocation(line: 153, column: 15, scope: !147)
!152 = !DILocation(line: 153, column: 3, scope: !148)
!153 = distinct !{!153, !152, !154, !121, !122}
!154 = !DILocation(line: 153, column: 61, scope: !148)
!155 = !DILocation(line: 154, column: 1, scope: !97)
!156 = distinct !DISubprogram(name: "Init_Lighting", scope: !3, file: !3, line: 157, type: !76, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !157)
!157 = !{!158}
!158 = !DILocalVariable(name: "inv_magnitude", scope: !156, file: !3, line: 159, type: !5)
!159 = !DILocation(line: 0, scope: !156)
!160 = !DILocation(line: 168, column: 12, scope: !156)
!161 = !DILocation(line: 169, column: 12, scope: !156)
!162 = !DILocation(line: 170, column: 12, scope: !156)
!163 = !DILocation(line: 172, column: 17, scope: !156)
!164 = !DILocation(line: 173, column: 17, scope: !156)
!165 = !DILocation(line: 174, column: 18, scope: !156)
!166 = !DILocation(line: 175, column: 21, scope: !156)
!167 = !DILocation(line: 177, column: 16, scope: !156)
!168 = !DILocation(line: 178, column: 13, scope: !156)
!169 = !DILocation(line: 179, column: 18, scope: !156)
!170 = !DILocation(line: 180, column: 1, scope: !156)
!171 = distinct !DISubprogram(name: "Init_Parallelization", scope: !3, file: !3, line: 183, type: !76, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !78)
!172 = !DILocation(line: 185, column: 14, scope: !171)
!173 = !DILocation(line: 186, column: 14, scope: !171)
!174 = !DILocation(line: 193, column: 3, scope: !171)
!175 = !DILocation(line: 196, column: 3, scope: !171)
!176 = !DILocation(line: 200, column: 3, scope: !171)
!177 = !DILocation(line: 201, column: 30, scope: !171)
!178 = !DILocation(line: 201, column: 3, scope: !171)
!179 = !DILocation(line: 202, column: 41, scope: !171)
!180 = !DILocation(line: 202, column: 52, scope: !171)
!181 = !DILocation(line: 202, column: 3, scope: !171)
!182 = !DILocation(line: 204, column: 7, scope: !183)
!183 = distinct !DILexicalBlock(scope: !171, file: !3, line: 204, column: 7)
!184 = !DILocation(line: 0, scope: !183)
!185 = !DILocation(line: 210, column: 3, scope: !171)
!186 = !DILocation(line: 212, column: 3, scope: !171)
!187 = !DILocation(line: 215, column: 1, scope: !171)
!188 = !DILocation(line: 215, column: 10, scope: !171)
!189 = !DILocation(line: 215, column: 19, scope: !171)
!190 = !DILocation(line: 214, column: 3, scope: !171)
!191 = !DILocation(line: 217, column: 74, scope: !171)
!192 = !DILocation(line: 217, column: 3, scope: !171)
!193 = !DILocation(line: 222, column: 3, scope: !171)
!194 = !DILocation(line: 223, column: 1, scope: !171)
