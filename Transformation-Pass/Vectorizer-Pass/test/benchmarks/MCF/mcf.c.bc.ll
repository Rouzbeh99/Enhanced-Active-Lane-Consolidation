; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/505.mcf_r/llvm-ir/505.mcf_r_bc/src/mcf.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/505.mcf_r/src/mcf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [34 x i8] c"active arcs                : %ld\0A\00", align 1
@net = dso_local global %struct.network zeroinitializer, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [34 x i8] c"simplex iterations         : %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"objective value            : %0.0f\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"erased arcs                : %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"new implicit arcs          : %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"checksum                   : %0.0f\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"mcf.%d.out\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"nodes                      : %ld\0A\00", align 1
@str.18 = private unnamed_addr constant [28 x i8] c"not enough memory, exit(-1)\00", align 1
@str.19 = private unnamed_addr constant [27 x i8] c"\0AMCF SPEC CPU version 1.11\00", align 1
@str.20 = private unnamed_addr constant [51 x i8] c"Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)\00", align 1
@str.21 = private unnamed_addr constant [45 x i8] c"Copyright (c) 2000-2002 Andreas Loebel & ZIB\00", align 1
@str.22 = private unnamed_addr constant [39 x i8] c"Copyright (c) 2003-2005 Andreas Loebel\00", align 1
@str.23 = private unnamed_addr constant [69 x i8] c"Copyright (c) 2006-2010 Dres. Loebel, Borndoerfer & Weider GbR (LBW)\00", align 1
@str.24 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@str.25 = private unnamed_addr constant [17 x i8] c"read error, exit\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i64 @global_opt() local_unnamed_addr #0 !dbg !102 {
entry:
  call void @llvm.dbg.value(metadata i64 1, metadata !107, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 -1, metadata !106, metadata !DIExpression()), !dbg !108
  br label %while.cond, !dbg !109

while.cond:                                       ; preds = %if.end19, %entry
  %new_arcs.0 = phi i64 [ -1, %entry ], [ %call15, %if.end19 ], !dbg !108
  call void @llvm.dbg.value(metadata i64 poison, metadata !107, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 %new_arcs.0, metadata !106, metadata !DIExpression()), !dbg !108
  %tobool.not = icmp eq i64 %new_arcs.0, 0, !dbg !109
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !109

while.body:                                       ; preds = %while.cond
  %0 = load i64, ptr getelementptr inbounds (%struct.network, ptr @net, i64 0, i32 5), align 8, !dbg !110, !tbaa !112
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i64 noundef %0), !dbg !119
  %call1 = tail call i64 @primal_net_simplex(ptr noundef nonnull @net) #10, !dbg !120
  %1 = load i64, ptr getelementptr inbounds (%struct.network, ptr @net, i64 0, i32 28), align 8, !dbg !121, !tbaa !122
  %call2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i64 noundef %1), !dbg !123
  %call3 = tail call double @flow_cost(ptr noundef nonnull @net) #10, !dbg !124
  %call4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, double noundef %call3), !dbg !125
  %2 = load i64, ptr getelementptr inbounds (%struct.network, ptr @net, i64 0, i32 7), align 8, !dbg !126, !tbaa !128
  %tobool5.not = icmp eq i64 %2, 0, !dbg !129
  br i1 %tobool5.not, label %if.else, label %if.then, !dbg !130

if.then:                                          ; preds = %while.body
  %call6 = tail call i64 @suspend_impl(ptr noundef nonnull @net, i64 noundef -1, i64 noundef 0) #10, !dbg !131
  call void @llvm.dbg.value(metadata i64 %call6, metadata !106, metadata !DIExpression()), !dbg !108
  %cmp = icmp slt i64 %call6, 0, !dbg !133
  br i1 %cmp, label %if.then7, label %if.end, !dbg !135

if.then7:                                         ; preds = %if.then
  %puts32 = tail call i32 @puts(ptr nonnull @str.18), !dbg !136
  tail call void @exit(i32 noundef -1) #11, !dbg !138
  unreachable, !dbg !138

if.end:                                           ; preds = %if.then
  %tobool9.not = icmp eq i64 %call6, 0, !dbg !139
  br i1 %tobool9.not, label %if.end14, label %if.then10, !dbg !141

if.then10:                                        ; preds = %if.end
  %call11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i64 noundef %call6), !dbg !142
  br label %if.end14, !dbg !142

if.else:                                          ; preds = %while.body
  %3 = load i64, ptr getelementptr inbounds (%struct.network, ptr @net, i64 0, i32 5), align 8, !dbg !143, !tbaa !112
  %call13 = tail call i64 @refreshPositions(ptr noundef nonnull @net, ptr noundef nonnull @getOriginalArcPosition, i64 noundef %3) #10, !dbg !145
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then10, %if.else
  %call15 = tail call i64 @price_out_impl(ptr noundef nonnull @net) #10, !dbg !146
  call void @llvm.dbg.value(metadata i64 %call15, metadata !106, metadata !DIExpression()), !dbg !108
  %tobool16.not = icmp eq i64 %call15, 0, !dbg !147
  br i1 %tobool16.not, label %if.end19, label %if.then17, !dbg !149

if.then17:                                        ; preds = %if.end14
  %call18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i64 noundef %call15), !dbg !150
  br label %if.end19, !dbg !150

if.end19:                                         ; preds = %if.then17, %if.end14
  %cmp20 = icmp slt i64 %call15, 0, !dbg !151
  br i1 %cmp20, label %if.then21, label %while.cond, !dbg !153, !llvm.loop !154

if.then21:                                        ; preds = %if.end19
  %puts = tail call i32 @puts(ptr nonnull @str.18), !dbg !158
  tail call void @exit(i32 noundef -1) #11, !dbg !160
  unreachable, !dbg !160

while.end:                                        ; preds = %while.cond
  %call24 = tail call double @flow_cost(ptr noundef nonnull @net) #10, !dbg !161
  store double %call24, ptr getelementptr inbounds (%struct.network, ptr @net, i64 0, i32 19), align 8, !dbg !162, !tbaa !163
  %call25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, double noundef %call24), !dbg !164
  ret i64 0, !dbg !165
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare !dbg !166 i64 @primal_net_simplex(ptr noundef) local_unnamed_addr #4

declare !dbg !172 double @flow_cost(ptr noundef) local_unnamed_addr #4

declare !dbg !176 i64 @suspend_impl(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

declare !dbg !180 i64 @refreshPositions(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @getOriginalArcPosition(ptr noundef, i64 noundef) #4

declare !dbg !186 i64 @price_out_impl(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readonly %argv) local_unnamed_addr #0 !dbg !187 {
entry:
  %outfile = alloca [80 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %argc, metadata !191, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.value(metadata ptr %argv, metadata !192, metadata !DIExpression()), !dbg !198
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %outfile) #10, !dbg !199
  call void @llvm.dbg.declare(metadata ptr %outfile, metadata !194, metadata !DIExpression()), !dbg !200
  %cmp = icmp slt i32 %argc, 2, !dbg !201
  br i1 %cmp, label %cleanup, label %if.end, !dbg !203

if.end:                                           ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.19), !dbg !204
  %puts34 = tail call i32 @puts(ptr nonnull @str.20), !dbg !205
  %puts35 = tail call i32 @puts(ptr nonnull @str.21), !dbg !206
  %puts36 = tail call i32 @puts(ptr nonnull @str.22), !dbg !207
  %puts37 = tail call i32 @puts(ptr nonnull @str.23), !dbg !208
  %putchar = tail call i32 @putchar(i32 10), !dbg !209
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(648) @net, i8 0, i64 648, i1 false), !dbg !210
  store i64 10000000, ptr getelementptr inbounds (%struct.network, ptr @net, i64 0, i32 18), align 8, !dbg !211, !tbaa !212
  %arrayidx = getelementptr inbounds ptr, ptr %argv, i64 1, !dbg !213
  %0 = load ptr, ptr %arrayidx, align 8, !dbg !213, !tbaa !214
  %call6 = tail call ptr @strcpy(ptr noundef nonnull @net, ptr noundef nonnull dereferenceable(1) %0) #10, !dbg !215
  %cmp7 = icmp eq i32 %argc, 3, !dbg !216
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !218

if.then8:                                         ; preds = %if.end
  %arrayidx9 = getelementptr inbounds ptr, ptr %argv, i64 2, !dbg !219
  %1 = load ptr, ptr %arrayidx9, align 8, !dbg !219, !tbaa !214
  call void @llvm.dbg.value(metadata ptr %1, metadata !221, metadata !DIExpression()) #10, !dbg !229
  %call.i = tail call i64 @strtol(ptr nocapture noundef nonnull %1, ptr noundef null, i32 noundef 10) #10, !dbg !231
  %conv.i = trunc i64 %call.i to i32, !dbg !232
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !193, metadata !DIExpression()), !dbg !198
  %call11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %outfile, ptr noundef nonnull @.str.13, i32 noundef %conv.i) #10, !dbg !233
  br label %if.end14, !dbg !234

if.else:                                          ; preds = %if.end
  store i64 32780217678717805, ptr %outfile, align 16, !dbg !235
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then8
  %call15 = tail call i64 @read_min(ptr noundef nonnull @net) #10, !dbg !237
  %tobool.not = icmp eq i64 %call15, 0, !dbg !237
  br i1 %tobool.not, label %if.end19, label %if.then16, !dbg !239

if.then16:                                        ; preds = %if.end14
  %puts39 = tail call i32 @puts(ptr nonnull @str.25), !dbg !240
  %call18 = tail call i64 @getfree(ptr noundef nonnull @net) #10, !dbg !242
  br label %cleanup, !dbg !243

if.end19:                                         ; preds = %if.end14
  %2 = load i64, ptr getelementptr inbounds (%struct.network, ptr @net, i64 0, i32 3), align 8, !dbg !244, !tbaa !245
  %call20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.16, i64 noundef %2), !dbg !246
  %call21 = tail call i64 @primal_start_artificial(ptr noundef nonnull @net) #10, !dbg !247
  %call22 = tail call i64 @global_opt(), !dbg !248
  %call24 = call i64 @write_objective_value(ptr noundef nonnull %outfile, ptr noundef nonnull @net) #10, !dbg !249
  %tobool25.not = icmp eq i64 %call24, 0, !dbg !249
  %call29 = call i64 @getfree(ptr noundef nonnull @net) #10, !dbg !198
  br i1 %tobool25.not, label %if.end28, label %cleanup, !dbg !251

if.end28:                                         ; preds = %if.end19
  %puts38 = call i32 @puts(ptr nonnull @str.24), !dbg !252
  br label %cleanup, !dbg !253

cleanup:                                          ; preds = %if.end19, %entry, %if.end28, %if.then16
  %retval.0 = phi i32 [ -1, %if.then16 ], [ 0, %if.end28 ], [ -1, %entry ], [ -1, %if.end19 ], !dbg !198
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %outfile) #10, !dbg !254
  ret i32 %retval.0, !dbg !254
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare !dbg !255 i64 @read_min(ptr noundef) local_unnamed_addr #4

declare !dbg !257 i64 @getfree(ptr noundef) local_unnamed_addr #4

declare !dbg !258 i64 @primal_start_artificial(ptr noundef) local_unnamed_addr #4

declare !dbg !260 i64 @write_objective_value(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #9

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "net", scope: !2, file: !21, line: 30, type: !22, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !20, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/505.mcf_r/src/mcf.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/505.mcf_r", checksumkind: CSK_MD5, checksum: "68421b99eaebf895bf4140b53f89af68")
!4 = !{!5, !12, !13, !7, !16, !17}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "cost_t", file: !6, line: 98, baseType: !7)
!6 = !DIFile(filename: "apps/505.mcf_r/src/defines.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "05eeb7bba098b08025cbe048b289d372")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !8, line: 27, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !10, line: 44, baseType: !11)
!10 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!11 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 46, baseType: !15)
!14 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!15 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!0}
!21 = !DIFile(filename: "apps/505.mcf_r/src/mcf.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "68421b99eaebf895bf4140b53f89af68")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "network_t", file: !6, line: 206, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "network", file: !6, line: 181, size: 5184, elements: !24)
!24 = !{!25, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !49, !50, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "inputfile", scope: !23, file: !6, line: 183, baseType: !26, size: 1600)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 1600, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 200)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "clustfile", scope: !23, file: !6, line: 184, baseType: !26, size: 1600, offset: 1600)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !23, file: !6, line: 185, baseType: !7, size: 64, offset: 3200)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "n_trips", scope: !23, file: !6, line: 185, baseType: !7, size: 64, offset: 3264)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "max_m", scope: !23, file: !6, line: 186, baseType: !7, size: 64, offset: 3328)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !23, file: !6, line: 186, baseType: !7, size: 64, offset: 3392)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "m_org", scope: !23, file: !6, line: 186, baseType: !7, size: 64, offset: 3456)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "m_impl", scope: !23, file: !6, line: 186, baseType: !7, size: 64, offset: 3520)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "max_residual_new_m", scope: !23, file: !6, line: 187, baseType: !7, size: 64, offset: 3584)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "max_new_m", scope: !23, file: !6, line: 187, baseType: !7, size: 64, offset: 3648)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "primal_unbounded", scope: !23, file: !6, line: 189, baseType: !7, size: 64, offset: 3712)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "dual_unbounded", scope: !23, file: !6, line: 190, baseType: !7, size: 64, offset: 3776)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "perturbed", scope: !23, file: !6, line: 191, baseType: !7, size: 64, offset: 3840)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "feasible", scope: !23, file: !6, line: 192, baseType: !7, size: 64, offset: 3904)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "eps", scope: !23, file: !6, line: 193, baseType: !7, size: 64, offset: 3968)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "opt_tol", scope: !23, file: !6, line: 194, baseType: !7, size: 64, offset: 4032)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "feas_tol", scope: !23, file: !6, line: 195, baseType: !7, size: 64, offset: 4096)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "pert_val", scope: !23, file: !6, line: 196, baseType: !7, size: 64, offset: 4160)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "bigM", scope: !23, file: !6, line: 197, baseType: !7, size: 64, offset: 4224)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "optcost", scope: !23, file: !6, line: 198, baseType: !48, size: 64, offset: 4288)
!48 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_impl", scope: !23, file: !6, line: 199, baseType: !5, size: 64, offset: 4352)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !23, file: !6, line: 200, baseType: !51, size: 64, offset: 4416)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_p", file: !6, line: 135, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "node", file: !6, line: 149, size: 832, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60, !61, !77, !78, !79, !80, !81, !82, !83}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "potential", scope: !53, file: !6, line: 151, baseType: !5, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !53, file: !6, line: 152, baseType: !16, size: 32, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !53, file: !6, line: 153, baseType: !51, size: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "pred", scope: !53, file: !6, line: 154, baseType: !51, size: 64, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !53, file: !6, line: 155, baseType: !51, size: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_prev", scope: !53, file: !6, line: 156, baseType: !51, size: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "basic_arc", scope: !53, file: !6, line: 157, baseType: !62, size: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc_p", file: !6, line: 138, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arc", file: !6, line: 168, size: 576, elements: !65)
!65 = !{!66, !67, !68, !69, !70, !72, !73, !74, !76}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !64, file: !6, line: 170, baseType: !16, size: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !64, file: !6, line: 171, baseType: !5, size: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !64, file: !6, line: 172, baseType: !51, size: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !64, file: !6, line: 172, baseType: !51, size: 64, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !64, file: !6, line: 173, baseType: !71, size: 16, offset: 256)
!71 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "nextout", scope: !64, file: !6, line: 174, baseType: !62, size: 64, offset: 320)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "nextin", scope: !64, file: !6, line: 174, baseType: !62, size: 64, offset: 384)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !64, file: !6, line: 175, baseType: !75, size: 64, offset: 448)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "flow_t", file: !6, line: 97, baseType: !7)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "org_cost", scope: !64, file: !6, line: 176, baseType: !5, size: 64, offset: 512)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "firstout", scope: !53, file: !6, line: 158, baseType: !62, size: 64, offset: 448)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "firstin", scope: !53, file: !6, line: 158, baseType: !62, size: 64, offset: 512)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "arc_tmp", scope: !53, file: !6, line: 159, baseType: !62, size: 64, offset: 576)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !53, file: !6, line: 160, baseType: !75, size: 64, offset: 640)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !53, file: !6, line: 161, baseType: !7, size: 64, offset: 704)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !53, file: !6, line: 162, baseType: !16, size: 32, offset: 768)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !53, file: !6, line: 163, baseType: !16, size: 32, offset: 800)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "stop_nodes", scope: !23, file: !6, line: 200, baseType: !51, size: 64, offset: 4480)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "arcs", scope: !23, file: !6, line: 201, baseType: !62, size: 64, offset: 4544)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arcs", scope: !23, file: !6, line: 201, baseType: !62, size: 64, offset: 4608)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "sorted_arcs", scope: !23, file: !6, line: 201, baseType: !62, size: 64, offset: 4672)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_arcs", scope: !23, file: !6, line: 202, baseType: !62, size: 64, offset: 4736)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "stop_dummy", scope: !23, file: !6, line: 202, baseType: !62, size: 64, offset: 4800)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !23, file: !6, line: 203, baseType: !7, size: 64, offset: 4864)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "bound_exchanges", scope: !23, file: !6, line: 204, baseType: !7, size: 64, offset: 4928)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "nr_group", scope: !23, file: !6, line: 205, baseType: !7, size: 64, offset: 4992)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "full_groups", scope: !23, file: !6, line: 205, baseType: !7, size: 64, offset: 5056)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "max_elems", scope: !23, file: !6, line: 205, baseType: !7, size: 64, offset: 5120)
!95 = !{i32 7, !"Dwarf Version", i32 5}
!96 = !{i32 2, !"Debug Info Version", i32 3}
!97 = !{i32 1, !"wchar_size", i32 4}
!98 = !{i32 7, !"PIC Level", i32 2}
!99 = !{i32 7, !"PIE Level", i32 2}
!100 = !{i32 7, !"uwtable", i32 2}
!101 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!102 = distinct !DISubprogram(name: "global_opt", scope: !21, file: !21, line: 37, type: !103, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !105)
!103 = !DISubroutineType(types: !104)
!104 = !{!7}
!105 = !{!106, !107}
!106 = !DILocalVariable(name: "new_arcs", scope: !102, file: !21, line: 42, type: !7)
!107 = !DILocalVariable(name: "residual_nb_it", scope: !102, file: !21, line: 43, type: !7)
!108 = !DILocation(line: 0, scope: !102)
!109 = !DILocation(line: 48, column: 3, scope: !102)
!110 = !DILocation(line: 51, column: 63, scope: !111)
!111 = distinct !DILexicalBlock(scope: !102, file: !21, line: 49, column: 3)
!112 = !{!113, !116, i64 424}
!113 = !{!"network", !114, i64 0, !114, i64 200, !116, i64 400, !116, i64 408, !116, i64 416, !116, i64 424, !116, i64 432, !116, i64 440, !116, i64 448, !116, i64 456, !116, i64 464, !116, i64 472, !116, i64 480, !116, i64 488, !116, i64 496, !116, i64 504, !116, i64 512, !116, i64 520, !116, i64 528, !117, i64 536, !116, i64 544, !118, i64 552, !118, i64 560, !118, i64 568, !118, i64 576, !118, i64 584, !118, i64 592, !118, i64 600, !116, i64 608, !116, i64 616, !116, i64 624, !116, i64 632, !116, i64 640}
!114 = !{!"omnipotent char", !115, i64 0}
!115 = !{!"Simple C/C++ TBAA"}
!116 = !{!"long", !114, i64 0}
!117 = !{!"double", !114, i64 0}
!118 = !{!"any pointer", !114, i64 0}
!119 = !DILocation(line: 51, column: 5, scope: !111)
!120 = !DILocation(line: 54, column: 5, scope: !111)
!121 = !DILocation(line: 57, column: 63, scope: !111)
!122 = !{!113, !116, i64 608}
!123 = !DILocation(line: 57, column: 5, scope: !111)
!124 = !DILocation(line: 58, column: 53, scope: !111)
!125 = !DILocation(line: 58, column: 5, scope: !111)
!126 = !DILocation(line: 67, column: 13, scope: !127)
!127 = distinct !DILexicalBlock(scope: !111, file: !21, line: 67, column: 9)
!128 = !{!113, !116, i64 440}
!129 = !DILocation(line: 67, column: 9, scope: !127)
!130 = !DILocation(line: 67, column: 9, scope: !111)
!131 = !DILocation(line: 69, column: 18, scope: !132)
!132 = distinct !DILexicalBlock(scope: !127, file: !21, line: 68, column: 5)
!133 = !DILocation(line: 71, column: 21, scope: !134)
!134 = distinct !DILexicalBlock(scope: !132, file: !21, line: 71, column: 12)
!135 = !DILocation(line: 71, column: 12, scope: !132)
!136 = !DILocation(line: 74, column: 9, scope: !137)
!137 = distinct !DILexicalBlock(scope: !134, file: !21, line: 72, column: 7)
!138 = !DILocation(line: 77, column: 9, scope: !137)
!139 = !DILocation(line: 80, column: 11, scope: !140)
!140 = distinct !DILexicalBlock(scope: !132, file: !21, line: 80, column: 11)
!141 = !DILocation(line: 80, column: 11, scope: !132)
!142 = !DILocation(line: 81, column: 9, scope: !140)
!143 = !DILocation(line: 86, column: 58, scope: !144)
!144 = distinct !DILexicalBlock(scope: !127, file: !21, line: 85, column: 5)
!145 = !DILocation(line: 86, column: 7, scope: !144)
!146 = !DILocation(line: 90, column: 16, scope: !111)
!147 = !DILocation(line: 93, column: 9, scope: !148)
!148 = distinct !DILexicalBlock(scope: !111, file: !21, line: 93, column: 9)
!149 = !DILocation(line: 93, column: 9, scope: !111)
!150 = !DILocation(line: 94, column: 7, scope: !148)
!151 = !DILocation(line: 97, column: 18, scope: !152)
!152 = distinct !DILexicalBlock(scope: !111, file: !21, line: 97, column: 9)
!153 = !DILocation(line: 97, column: 9, scope: !111)
!154 = distinct !{!154, !109, !155, !156, !157}
!155 = !DILocation(line: 111, column: 3, scope: !102)
!156 = !{!"llvm.loop.mustprogress"}
!157 = !{!"llvm.loop.unroll.disable"}
!158 = !DILocation(line: 100, column: 7, scope: !159)
!159 = distinct !DILexicalBlock(scope: !152, file: !21, line: 98, column: 5)
!160 = !DILocation(line: 103, column: 7, scope: !159)
!161 = !DILocation(line: 113, column: 17, scope: !102)
!162 = !DILocation(line: 113, column: 15, scope: !102)
!163 = !{!113, !117, i64 536}
!164 = !DILocation(line: 114, column: 3, scope: !102)
!165 = !DILocation(line: 116, column: 3, scope: !102)
!166 = !DISubprogram(name: "primal_net_simplex", scope: !167, file: !167, line: 36, type: !168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !171)
!167 = !DIFile(filename: "apps/505.mcf_r/src/psimplex.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "745ee7cb19ce89d901037506075f905c")
!168 = !DISubroutineType(types: !169)
!169 = !{!7, !170}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!171 = !{}
!172 = !DISubprogram(name: "flow_cost", scope: !173, file: !173, line: 32, type: !174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !171)
!173 = !DIFile(filename: "apps/505.mcf_r/src/mcfutil.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "6fade418d230c2d9d39deb67b05e3ee3")
!174 = !DISubroutineType(types: !175)
!175 = !{!48, !170}
!176 = !DISubprogram(name: "suspend_impl", scope: !177, file: !177, line: 32, type: !178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !171)
!177 = !DIFile(filename: "apps/505.mcf_r/src/implicit.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5612859f236a25e12307af79fe099a50")
!178 = !DISubroutineType(types: !179)
!179 = !{!7, !170, !5, !7}
!180 = !DISubprogram(name: "refreshPositions", scope: !177, file: !177, line: 30, type: !181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !171)
!181 = !DISubroutineType(types: !182)
!182 = !{!7, !170, !183, !7}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!7, !170, !7}
!186 = !DISubprogram(name: "price_out_impl", scope: !177, file: !177, line: 31, type: !168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !171)
!187 = distinct !DISubprogram(name: "main", scope: !21, file: !21, line: 125, type: !188, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !190)
!188 = !DISubroutineType(types: !189)
!189 = !{!16, !16, !17}
!190 = !{!191, !192, !193, !194}
!191 = !DILocalVariable(name: "argc", arg: 1, scope: !187, file: !21, line: 125, type: !16)
!192 = !DILocalVariable(name: "argv", arg: 2, scope: !187, file: !21, line: 125, type: !17)
!193 = !DILocalVariable(name: "outnum", scope: !187, file: !21, line: 132, type: !16)
!194 = !DILocalVariable(name: "outfile", scope: !187, file: !21, line: 133, type: !195)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 640, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 80)
!198 = !DILocation(line: 0, scope: !187)
!199 = !DILocation(line: 133, column: 3, scope: !187)
!200 = !DILocation(line: 133, column: 8, scope: !187)
!201 = !DILocation(line: 134, column: 12, scope: !202)
!202 = distinct !DILexicalBlock(scope: !187, file: !21, line: 134, column: 7)
!203 = !DILocation(line: 134, column: 7, scope: !187)
!204 = !DILocation(line: 142, column: 3, scope: !187)
!205 = !DILocation(line: 143, column: 3, scope: !187)
!206 = !DILocation(line: 144, column: 3, scope: !187)
!207 = !DILocation(line: 145, column: 3, scope: !187)
!208 = !DILocation(line: 146, column: 3, scope: !187)
!209 = !DILocation(line: 148, column: 3, scope: !187)
!210 = !DILocation(line: 152, column: 3, scope: !187)
!211 = !DILocation(line: 153, column: 12, scope: !187)
!212 = !{!113, !116, i64 528}
!213 = !DILocation(line: 156, column: 26, scope: !187)
!214 = !{!118, !118, i64 0}
!215 = !DILocation(line: 156, column: 3, scope: !187)
!216 = !DILocation(line: 157, column: 12, scope: !217)
!217 = distinct !DILexicalBlock(scope: !187, file: !21, line: 157, column: 7)
!218 = !DILocation(line: 157, column: 7, scope: !187)
!219 = !DILocation(line: 158, column: 20, scope: !220)
!220 = distinct !DILexicalBlock(scope: !217, file: !21, line: 157, column: 18)
!221 = !DILocalVariable(name: "__nptr", arg: 1, scope: !222, file: !223, line: 361, type: !226)
!222 = distinct !DISubprogram(name: "atoi", scope: !223, file: !223, line: 361, type: !224, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !228)
!223 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!224 = !DISubroutineType(types: !225)
!225 = !{!16, !226}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!228 = !{!221}
!229 = !DILocation(line: 0, scope: !222, inlinedAt: !230)
!230 = distinct !DILocation(line: 158, column: 15, scope: !220)
!231 = !DILocation(line: 363, column: 16, scope: !222, inlinedAt: !230)
!232 = !DILocation(line: 363, column: 10, scope: !222, inlinedAt: !230)
!233 = !DILocation(line: 159, column: 6, scope: !220)
!234 = !DILocation(line: 160, column: 3, scope: !220)
!235 = !DILocation(line: 161, column: 6, scope: !236)
!236 = distinct !DILexicalBlock(scope: !217, file: !21, line: 160, column: 10)
!237 = !DILocation(line: 164, column: 7, scope: !238)
!238 = distinct !DILexicalBlock(scope: !187, file: !21, line: 164, column: 7)
!239 = !DILocation(line: 164, column: 7, scope: !187)
!240 = !DILocation(line: 166, column: 5, scope: !241)
!241 = distinct !DILexicalBlock(scope: !238, file: !21, line: 165, column: 3)
!242 = !DILocation(line: 167, column: 5, scope: !241)
!243 = !DILocation(line: 168, column: 5, scope: !241)
!244 = !DILocation(line: 180, column: 61, scope: !187)
!245 = !{!113, !116, i64 408}
!246 = !DILocation(line: 180, column: 3, scope: !187)
!247 = !DILocation(line: 184, column: 3, scope: !187)
!248 = !DILocation(line: 185, column: 3, scope: !187)
!249 = !DILocation(line: 189, column: 7, scope: !250)
!250 = distinct !DILexicalBlock(scope: !187, file: !21, line: 189, column: 7)
!251 = !DILocation(line: 189, column: 7, scope: !187)
!252 = !DILocation(line: 204, column: 3, scope: !187)
!253 = !DILocation(line: 208, column: 3, scope: !187)
!254 = !DILocation(line: 209, column: 1, scope: !187)
!255 = !DISubprogram(name: "read_min", scope: !256, file: !256, line: 33, type: !168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !171)
!256 = !DIFile(filename: "apps/505.mcf_r/src/readmin.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7c21be367e731778ae84db94d37fd903")
!257 = !DISubprogram(name: "getfree", scope: !173, file: !173, line: 36, type: !168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !171)
!258 = !DISubprogram(name: "primal_start_artificial", scope: !259, file: !259, line: 31, type: !168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !171)
!259 = !DIFile(filename: "apps/505.mcf_r/src/pstart.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b1af2461a1c27a9e55e023c7a76cec50")
!260 = !DISubprogram(name: "write_objective_value", scope: !261, file: !261, line: 32, type: !262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !171)
!261 = !DIFile(filename: "apps/505.mcf_r/src/output.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "837859e3b3b78c7463e9bfaac237d8b5")
!262 = !DISubroutineType(types: !263)
!263 = !{!7, !18, !170}
