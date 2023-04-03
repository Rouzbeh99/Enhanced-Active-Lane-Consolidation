; ModuleID = 'getparam.c'
source_filename = "getparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@defaults = internal unnamed_addr global ptr null, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [22 x i8] c"getparam: %s unknown\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"tTyY1\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"fFnN0\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"getbparam: %s=%s not bool\0A\00", align 1
@str = private unnamed_addr constant [34 x i8] c"getparam: called before initparam\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @initparam(ptr noundef %defv) local_unnamed_addr #0 !dbg !19 {
entry:
  call void @llvm.dbg.value(metadata ptr %defv, metadata !23, metadata !DIExpression()), !dbg !24
  store ptr %defv, ptr @defaults, align 8, !dbg !25
  ret void, !dbg !26
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local ptr @getparam(ptr noundef %name) local_unnamed_addr #2 !dbg !27 {
entry:
  %buf = alloca [128 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %name, metadata !31, metadata !DIExpression()), !dbg !40
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf) #13, !dbg !41
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !36, metadata !DIExpression()), !dbg !42
  %0 = load ptr, ptr @defaults, align 8, !dbg !43
  %cmp = icmp eq ptr %0, null, !dbg !45
  br i1 %cmp, label %if.then, label %if.end, !dbg !46

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str), !dbg !47
  %.pre = load ptr, ptr @defaults, align 8, !dbg !48
  br label %if.end, !dbg !47

if.end:                                           ; preds = %if.then, %entry
  %1 = phi ptr [ %.pre, %if.then ], [ %0, %entry ], !dbg !48
  %call1 = tail call i64 @scanbind(ptr noundef %1, ptr noundef %name), !dbg !49
  call void @llvm.dbg.value(metadata i64 %call1, metadata !32, metadata !DIExpression()), !dbg !40
  %cmp2 = icmp slt i64 %call1, 0, !dbg !50
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !52

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, ptr noundef %name), !dbg !53
  %.pre24 = load ptr, ptr @defaults, align 8, !dbg !54
  br label %if.end5, !dbg !53

if.end5:                                          ; preds = %if.then3, %if.end
  %2 = phi ptr [ %.pre24, %if.then3 ], [ %1, %if.end ], !dbg !54
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %call1, !dbg !54
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !54
  %call6 = tail call ptr @extrvalue(ptr noundef %3), !dbg !55
  call void @llvm.dbg.value(metadata ptr %call6, metadata !35, metadata !DIExpression()), !dbg !40
  %4 = load ptr, ptr @stdin, align 8, !dbg !56
  %call7 = call ptr @fgets(ptr noundef nonnull %buf, i32 noundef 128, ptr noundef %4), !dbg !57
  %call9 = call i64 @strlen(ptr noundef nonnull %buf) #14, !dbg !58
  call void @llvm.dbg.value(metadata i64 %call9, metadata !34, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !40
  %arrayidx10 = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 %call9, !dbg !59
  store i8 0, ptr %arrayidx10, align 1, !dbg !60
  call void @llvm.dbg.value(metadata i64 %call9, metadata !34, metadata !DIExpression()), !dbg !40
  %cmp11 = icmp sgt i64 %call9, 1, !dbg !61
  br i1 %cmp11, label %if.then12, label %cleanup, !dbg !63

if.then12:                                        ; preds = %if.end5
  %call13 = call noalias ptr @malloc(i64 noundef %call9) #15, !dbg !64
  %call15 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %call13, ptr noundef nonnull %buf) #13, !dbg !66
  br label %cleanup, !dbg !67

cleanup:                                          ; preds = %if.end5, %if.then12
  %retval.0 = phi ptr [ %call13, %if.then12 ], [ %call6, %if.end5 ], !dbg !68
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #13, !dbg !69
  ret ptr %retval.0, !dbg !69
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i64 @scanbind(ptr nocapture noundef readonly %bvec, ptr nocapture noundef readonly %name) local_unnamed_addr #5 !dbg !70 {
entry:
  call void @llvm.dbg.value(metadata ptr %bvec, metadata !74, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.value(metadata ptr %name, metadata !75, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.value(metadata i64 0, metadata !76, metadata !DIExpression()), !dbg !77
  %0 = load ptr, ptr %bvec, align 8, !dbg !78
  %cmp.not6 = icmp eq ptr %0, null, !dbg !81
  br i1 %cmp.not6, label %cleanup, label %for.body, !dbg !82

for.body:                                         ; preds = %entry, %for.inc
  %1 = phi ptr [ %2, %for.inc ], [ %0, %entry ]
  %i.07 = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.07, metadata !76, metadata !DIExpression()), !dbg !77
  %call = tail call i64 @matchname(ptr noundef nonnull %1, ptr noundef %name), !dbg !83
  %tobool.not = icmp eq i64 %call, 0, !dbg !83
  br i1 %tobool.not, label %for.inc, label %cleanup, !dbg !85

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i64 %i.07, 1, !dbg !86
  call void @llvm.dbg.value(metadata i64 %inc, metadata !76, metadata !DIExpression()), !dbg !77
  %arrayidx = getelementptr inbounds ptr, ptr %bvec, i64 %inc, !dbg !78
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !78
  %cmp.not = icmp eq ptr %2, null, !dbg !81
  br i1 %cmp.not, label %cleanup, label %for.body, !dbg !82, !llvm.loop !87

cleanup:                                          ; preds = %for.body, %for.inc, %entry
  %retval.0 = phi i64 [ -1, %entry ], [ -1, %for.inc ], [ %i.07, %for.body ], !dbg !77
  ret i64 %retval.0, !dbg !91
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local ptr @extrvalue(ptr noundef readonly %arg) local_unnamed_addr #5 !dbg !92 {
entry:
  call void @llvm.dbg.value(metadata ptr %arg, metadata !94, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata ptr %arg, metadata !95, metadata !DIExpression()), !dbg !96
  br label %while.cond, !dbg !97

while.cond:                                       ; preds = %while.body, %entry
  %ap.0 = phi ptr [ %arg, %entry ], [ %incdec.ptr, %while.body ], !dbg !96
  call void @llvm.dbg.value(metadata ptr %ap.0, metadata !95, metadata !DIExpression()), !dbg !96
  %0 = load i8, ptr %ap.0, align 1, !dbg !98
  %cmp.not = icmp eq i8 %0, 0, !dbg !99
  br i1 %cmp.not, label %cleanup, label %while.body, !dbg !97

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8, ptr %ap.0, i64 1, !dbg !100
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !95, metadata !DIExpression()), !dbg !96
  %cmp3 = icmp eq i8 %0, 61, !dbg !102
  br i1 %cmp3, label %cleanup, label %while.cond, !dbg !103, !llvm.loop !104

cleanup:                                          ; preds = %while.cond, %while.body
  %retval.0 = phi ptr [ %incdec.ptr, %while.body ], [ null, %while.cond ], !dbg !96
  ret ptr %retval.0, !dbg !106
}

; Function Attrs: nofree nounwind
declare !dbg !107 noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i64 @getiparam(ptr noundef %name) local_unnamed_addr #2 !dbg !173 {
entry:
  call void @llvm.dbg.value(metadata ptr %name, metadata !177, metadata !DIExpression()), !dbg !179
  br label %for.body, !dbg !180

for.body:                                         ; preds = %entry, %for.body
  %call = tail call ptr @getparam(ptr noundef %name), !dbg !182
  call void @llvm.dbg.value(metadata ptr %call, metadata !178, metadata !DIExpression()), !dbg !179
  %0 = load i8, ptr %call, align 1, !dbg !185
  %cmp = icmp eq i8 %0, 0, !dbg !186
  br i1 %cmp, label %for.body, label %for.end, !dbg !180, !llvm.loop !187

for.end:                                          ; preds = %for.body
  %call2 = tail call i32 @atoi(ptr noundef nonnull %call) #14, !dbg !189
  %conv3 = sext i32 %call2 to i64, !dbg !190
  ret i64 %conv3, !dbg !191
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !192 i32 @atoi(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i64 @getlparam(ptr noundef %name) local_unnamed_addr #2 !dbg !198 {
entry:
  call void @llvm.dbg.value(metadata ptr %name, metadata !200, metadata !DIExpression()), !dbg !202
  br label %for.body, !dbg !203

for.body:                                         ; preds = %entry, %for.body
  %call = tail call ptr @getparam(ptr noundef %name), !dbg !205
  call void @llvm.dbg.value(metadata ptr %call, metadata !201, metadata !DIExpression()), !dbg !202
  %0 = load i8, ptr %call, align 1, !dbg !207
  %cmp = icmp eq i8 %0, 0, !dbg !208
  br i1 %cmp, label %for.body, label %for.end, !dbg !203, !llvm.loop !209

for.end:                                          ; preds = %for.body
  %call2 = tail call i64 @atol(ptr noundef nonnull %call) #14, !dbg !211
  ret i64 %call2, !dbg !212
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !213 i64 @atol(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i64 @getbparam(ptr noundef %name) local_unnamed_addr #2 !dbg !216 {
entry:
  call void @llvm.dbg.value(metadata ptr %name, metadata !221, metadata !DIExpression()), !dbg !223
  br label %for.body, !dbg !224

for.body:                                         ; preds = %entry, %for.body
  %call = tail call ptr @getparam(ptr noundef %name), !dbg !226
  call void @llvm.dbg.value(metadata ptr %call, metadata !222, metadata !DIExpression()), !dbg !223
  %0 = load i8, ptr %call, align 1, !dbg !228
  %cmp = icmp eq i8 %0, 0, !dbg !229
  br i1 %cmp, label %for.body, label %for.end, !dbg !224, !llvm.loop !230

for.end:                                          ; preds = %for.body
  %conv.le = sext i8 %0 to i32, !dbg !228
  %memchr = tail call ptr @memchr(ptr noundef nonnull @.str.3, i32 %conv.le, i64 6), !dbg !232
  %cmp4.not = icmp eq ptr %memchr, null, !dbg !234
  br i1 %cmp4.not, label %if.end, label %cleanup, !dbg !235

if.end:                                           ; preds = %for.end
  %memchr17 = tail call ptr @memchr(ptr noundef nonnull @.str.4, i32 %conv.le, i64 6), !dbg !236
  %cmp8.not = icmp eq ptr %memchr17, null, !dbg !238
  br i1 %cmp8.not, label %if.end11, label %cleanup, !dbg !239

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, ptr noundef %name, ptr noundef nonnull %call), !dbg !240
  br label %cleanup, !dbg !241

cleanup:                                          ; preds = %if.end, %for.end, %if.end11
  %retval.0 = phi i64 [ undef, %if.end11 ], [ 1, %for.end ], [ 0, %if.end ]
  ret i64 %retval.0, !dbg !241
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local double @getdparam(ptr noundef %name) local_unnamed_addr #2 !dbg !242 {
entry:
  call void @llvm.dbg.value(metadata ptr %name, metadata !247, metadata !DIExpression()), !dbg !249
  br label %for.body, !dbg !250

for.body:                                         ; preds = %entry, %for.body
  %call = tail call ptr @getparam(ptr noundef %name), !dbg !252
  call void @llvm.dbg.value(metadata ptr %call, metadata !248, metadata !DIExpression()), !dbg !249
  %0 = load i8, ptr %call, align 1, !dbg !255
  %cmp = icmp eq i8 %0, 0, !dbg !256
  br i1 %cmp, label %for.body, label %for.end, !dbg !250, !llvm.loop !257

for.end:                                          ; preds = %for.body
  %call2 = tail call double @atof(ptr noundef nonnull %call) #14, !dbg !259
  ret double %call2, !dbg !260
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !261 double @atof(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i64 @matchname(ptr nocapture noundef readonly %bind, ptr nocapture noundef readonly %name) local_unnamed_addr #5 !dbg !264 {
entry:
  call void @llvm.dbg.value(metadata ptr %bind, metadata !268, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata ptr %name, metadata !269, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata ptr %bind, metadata !270, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata ptr %name, metadata !271, metadata !DIExpression()), !dbg !272
  %0 = load i8, ptr %bind, align 1, !dbg !273
  %1 = load i8, ptr %name, align 1, !dbg !274
  %cmp17 = icmp eq i8 %0, %1, !dbg !275
  br i1 %cmp17, label %while.body, label %while.end, !dbg !276

while.body:                                       ; preds = %entry, %while.body
  %np.019 = phi ptr [ %incdec.ptr3, %while.body ], [ %name, %entry ]
  %bp.018 = phi ptr [ %incdec.ptr, %while.body ], [ %bind, %entry ]
  call void @llvm.dbg.value(metadata ptr %np.019, metadata !271, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata ptr %bp.018, metadata !270, metadata !DIExpression()), !dbg !272
  %incdec.ptr = getelementptr inbounds i8, ptr %bp.018, i64 1, !dbg !277
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !270, metadata !DIExpression()), !dbg !272
  %incdec.ptr3 = getelementptr inbounds i8, ptr %np.019, i64 1, !dbg !279
  call void @llvm.dbg.value(metadata ptr %incdec.ptr3, metadata !271, metadata !DIExpression()), !dbg !272
  %2 = load i8, ptr %incdec.ptr, align 1, !dbg !273
  %3 = load i8, ptr %incdec.ptr3, align 1, !dbg !274
  %cmp = icmp eq i8 %2, %3, !dbg !275
  br i1 %cmp, label %while.body, label %while.end, !dbg !276, !llvm.loop !280

while.end:                                        ; preds = %while.body, %entry
  %.lcssa16 = phi i8 [ %0, %entry ], [ %2, %while.body ], !dbg !273
  %.lcssa = phi i8 [ %1, %entry ], [ %3, %while.body ], !dbg !274
  %cmp5 = icmp eq i8 %.lcssa16, 61, !dbg !282
  br i1 %cmp5, label %land.rhs, label %land.end, !dbg !283

land.rhs:                                         ; preds = %while.end
  %cmp8 = icmp eq i8 %.lcssa, 0, !dbg !284
  %phi.cast15 = zext i1 %cmp8 to i64
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.end
  %4 = phi i64 [ 0, %while.end ], [ %phi.cast15, %land.rhs ]
  ret i64 %4, !dbg !285
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #12

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nofree nounwind }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "defaults", scope: !2, file: !3, line: 43, type: !11, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "getparam.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/barnes", checksumkind: CSK_MD5, checksum: "7cdd35be476ac654f0533d65cfee2bb6")
!4 = !{!5, !6, !8}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "string", file: !9, line: 64, baseType: !6)
!9 = !DIFile(filename: "./stdinc.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/barnes", checksumkind: CSK_MD5, checksum: "7e5b049cdc5bbb3d00ff9fe2a55bf64e")
!10 = !{!0}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 2}
!18 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!19 = distinct !DISubprogram(name: "initparam", scope: !3, file: !3, line: 49, type: !20, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !22)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !11}
!22 = !{!23}
!23 = !DILocalVariable(name: "defv", arg: 1, scope: !19, file: !3, line: 49, type: !11)
!24 = !DILocation(line: 0, scope: !19)
!25 = !DILocation(line: 51, column: 13, scope: !19)
!26 = !DILocation(line: 52, column: 1, scope: !19)
!27 = distinct !DISubprogram(name: "getparam", scope: !3, file: !3, line: 58, type: !28, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !30)
!28 = !DISubroutineType(types: !29)
!29 = !{!8, !8}
!30 = !{!31, !32, !34, !35, !36}
!31 = !DILocalVariable(name: "name", arg: 1, scope: !27, file: !3, line: 58, type: !8)
!32 = !DILocalVariable(name: "i", scope: !27, file: !3, line: 60, type: !33)
!33 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!34 = !DILocalVariable(name: "leng", scope: !27, file: !3, line: 60, type: !33)
!35 = !DILocalVariable(name: "def", scope: !27, file: !3, line: 61, type: !8)
!36 = !DILocalVariable(name: "buf", scope: !27, file: !3, line: 62, type: !37)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 128)
!40 = !DILocation(line: 0, scope: !27)
!41 = !DILocation(line: 62, column: 4, scope: !27)
!42 = !DILocation(line: 62, column: 9, scope: !27)
!43 = !DILocation(line: 64, column: 8, scope: !44)
!44 = distinct !DILexicalBlock(scope: !27, file: !3, line: 64, column: 8)
!45 = !DILocation(line: 64, column: 17, scope: !44)
!46 = !DILocation(line: 64, column: 8, scope: !27)
!47 = !DILocation(line: 65, column: 7, scope: !44)
!48 = !DILocation(line: 66, column: 17, scope: !27)
!49 = !DILocation(line: 66, column: 8, scope: !27)
!50 = !DILocation(line: 67, column: 10, scope: !51)
!51 = distinct !DILexicalBlock(scope: !27, file: !3, line: 67, column: 8)
!52 = !DILocation(line: 67, column: 8, scope: !27)
!53 = !DILocation(line: 68, column: 7, scope: !51)
!54 = !DILocation(line: 69, column: 20, scope: !27)
!55 = !DILocation(line: 69, column: 10, scope: !27)
!56 = !DILocation(line: 70, column: 20, scope: !27)
!57 = !DILocation(line: 70, column: 4, scope: !27)
!58 = !DILocation(line: 71, column: 11, scope: !27)
!59 = !DILocation(line: 72, column: 4, scope: !27)
!60 = !DILocation(line: 72, column: 16, scope: !27)
!61 = !DILocation(line: 74, column: 13, scope: !62)
!62 = distinct !DILexicalBlock(scope: !27, file: !3, line: 74, column: 8)
!63 = !DILocation(line: 74, column: 8, scope: !27)
!64 = !DILocation(line: 75, column: 22, scope: !65)
!65 = distinct !DILexicalBlock(scope: !62, file: !3, line: 74, column: 18)
!66 = !DILocation(line: 75, column: 15, scope: !65)
!67 = !DILocation(line: 75, column: 7, scope: !65)
!68 = !DILocation(line: 0, scope: !62)
!69 = !DILocation(line: 80, column: 1, scope: !27)
!70 = distinct !DISubprogram(name: "scanbind", scope: !3, file: !3, line: 136, type: !71, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !73)
!71 = !DISubroutineType(types: !72)
!72 = !{!33, !11, !8}
!73 = !{!74, !75, !76}
!74 = !DILocalVariable(name: "bvec", arg: 1, scope: !70, file: !3, line: 136, type: !11)
!75 = !DILocalVariable(name: "name", arg: 2, scope: !70, file: !3, line: 136, type: !8)
!76 = !DILocalVariable(name: "i", scope: !70, file: !3, line: 138, type: !33)
!77 = !DILocation(line: 0, scope: !70)
!78 = !DILocation(line: 140, column: 16, scope: !79)
!79 = distinct !DILexicalBlock(scope: !80, file: !3, line: 140, column: 4)
!80 = distinct !DILexicalBlock(scope: !70, file: !3, line: 140, column: 4)
!81 = !DILocation(line: 140, column: 24, scope: !79)
!82 = !DILocation(line: 140, column: 4, scope: !80)
!83 = !DILocation(line: 141, column: 11, scope: !84)
!84 = distinct !DILexicalBlock(scope: !79, file: !3, line: 141, column: 11)
!85 = !DILocation(line: 141, column: 11, scope: !79)
!86 = !DILocation(line: 140, column: 34, scope: !79)
!87 = distinct !{!87, !82, !88, !89, !90}
!88 = !DILocation(line: 142, column: 12, scope: !80)
!89 = !{!"llvm.loop.mustprogress"}
!90 = !{!"llvm.loop.unroll.disable"}
!91 = !DILocation(line: 144, column: 1, scope: !70)
!92 = distinct !DISubprogram(name: "extrvalue", scope: !3, file: !3, line: 167, type: !28, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !93)
!93 = !{!94, !95}
!94 = !DILocalVariable(name: "arg", arg: 1, scope: !92, file: !3, line: 167, type: !8)
!95 = !DILocalVariable(name: "ap", scope: !92, file: !3, line: 169, type: !6)
!96 = !DILocation(line: 0, scope: !92)
!97 = !DILocation(line: 172, column: 4, scope: !92)
!98 = !DILocation(line: 172, column: 11, scope: !92)
!99 = !DILocation(line: 172, column: 15, scope: !92)
!100 = !DILocation(line: 173, column: 14, scope: !101)
!101 = distinct !DILexicalBlock(scope: !92, file: !3, line: 173, column: 11)
!102 = !DILocation(line: 173, column: 17, scope: !101)
!103 = !DILocation(line: 173, column: 11, scope: !92)
!104 = distinct !{!104, !97, !105, !89, !90}
!105 = !DILocation(line: 174, column: 22, scope: !92)
!106 = !DILocation(line: 176, column: 1, scope: !92)
!107 = !DISubprogram(name: "fgets", scope: !108, file: !108, line: 564, type: !109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !172)
!108 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!109 = !DISubroutineType(types: !110)
!110 = !{!6, !111, !112, !113}
!111 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!112 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!113 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !116, line: 7, baseType: !117)
!116 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !118, line: 49, size: 1728, elements: !119)
!118 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!119 = !{!120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !135, !137, !138, !139, !142, !144, !146, !150, !153, !155, !158, !161, !162, !163, !167, !168}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !117, file: !118, line: 51, baseType: !112, size: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !117, file: !118, line: 54, baseType: !6, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !117, file: !118, line: 55, baseType: !6, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !117, file: !118, line: 56, baseType: !6, size: 64, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !117, file: !118, line: 57, baseType: !6, size: 64, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !117, file: !118, line: 58, baseType: !6, size: 64, offset: 320)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !117, file: !118, line: 59, baseType: !6, size: 64, offset: 384)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !117, file: !118, line: 60, baseType: !6, size: 64, offset: 448)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !117, file: !118, line: 61, baseType: !6, size: 64, offset: 512)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !117, file: !118, line: 64, baseType: !6, size: 64, offset: 576)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !117, file: !118, line: 65, baseType: !6, size: 64, offset: 640)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !117, file: !118, line: 66, baseType: !6, size: 64, offset: 704)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !117, file: !118, line: 68, baseType: !133, size: 64, offset: 768)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !118, line: 36, flags: DIFlagFwdDecl)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !117, file: !118, line: 70, baseType: !136, size: 64, offset: 832)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !117, file: !118, line: 72, baseType: !112, size: 32, offset: 896)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !117, file: !118, line: 73, baseType: !112, size: 32, offset: 928)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !117, file: !118, line: 74, baseType: !140, size: 64, offset: 960)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !141, line: 152, baseType: !33)
!141 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !117, file: !118, line: 77, baseType: !143, size: 16, offset: 1024)
!143 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !117, file: !118, line: 78, baseType: !145, size: 8, offset: 1040)
!145 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !117, file: !118, line: 79, baseType: !147, size: 8, offset: 1048)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 1)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !117, file: !118, line: 81, baseType: !151, size: 64, offset: 1088)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !118, line: 43, baseType: null)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !117, file: !118, line: 89, baseType: !154, size: 64, offset: 1152)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !141, line: 153, baseType: !33)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !117, file: !118, line: 91, baseType: !156, size: 64, offset: 1216)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !118, line: 37, flags: DIFlagFwdDecl)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !117, file: !118, line: 92, baseType: !159, size: 64, offset: 1280)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !118, line: 38, flags: DIFlagFwdDecl)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !117, file: !118, line: 93, baseType: !136, size: 64, offset: 1344)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !117, file: !118, line: 94, baseType: !5, size: 64, offset: 1408)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !117, file: !118, line: 95, baseType: !164, size: 64, offset: 1472)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !165, line: 46, baseType: !166)
!165 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!166 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !117, file: !118, line: 96, baseType: !112, size: 32, offset: 1536)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !117, file: !118, line: 98, baseType: !169, size: 160, offset: 1568)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 20)
!172 = !{}
!173 = distinct !DISubprogram(name: "getiparam", scope: !3, file: !3, line: 86, type: !174, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !176)
!174 = !DISubroutineType(types: !175)
!175 = !{!33, !8}
!176 = !{!177, !178}
!177 = !DILocalVariable(name: "name", arg: 1, scope: !173, file: !3, line: 86, type: !8)
!178 = !DILocalVariable(name: "val", scope: !173, file: !3, line: 88, type: !8)
!179 = !DILocation(line: 0, scope: !173)
!180 = !DILocation(line: 90, column: 4, scope: !181)
!181 = distinct !DILexicalBlock(scope: !173, file: !3, line: 90, column: 4)
!182 = !DILocation(line: 91, column: 13, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !3, line: 90, column: 34)
!184 = distinct !DILexicalBlock(scope: !181, file: !3, line: 90, column: 4)
!185 = !DILocation(line: 90, column: 19, scope: !184)
!186 = !DILocation(line: 90, column: 24, scope: !184)
!187 = distinct !{!187, !180, !188, !89, !90}
!188 = !DILocation(line: 92, column: 4, scope: !181)
!189 = !DILocation(line: 93, column: 12, scope: !173)
!190 = !DILocation(line: 93, column: 11, scope: !173)
!191 = !DILocation(line: 93, column: 4, scope: !173)
!192 = !DISubprogram(name: "atoi", scope: !193, file: !193, line: 104, type: !194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !172)
!193 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!194 = !DISubroutineType(types: !195)
!195 = !{!112, !196}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!198 = distinct !DISubprogram(name: "getlparam", scope: !3, file: !3, line: 96, type: !174, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !199)
!199 = !{!200, !201}
!200 = !DILocalVariable(name: "name", arg: 1, scope: !198, file: !3, line: 96, type: !8)
!201 = !DILocalVariable(name: "val", scope: !198, file: !3, line: 98, type: !8)
!202 = !DILocation(line: 0, scope: !198)
!203 = !DILocation(line: 100, column: 4, scope: !204)
!204 = distinct !DILexicalBlock(scope: !198, file: !3, line: 100, column: 4)
!205 = !DILocation(line: 101, column: 13, scope: !206)
!206 = distinct !DILexicalBlock(scope: !204, file: !3, line: 100, column: 4)
!207 = !DILocation(line: 100, column: 19, scope: !206)
!208 = !DILocation(line: 100, column: 24, scope: !206)
!209 = distinct !{!209, !203, !210, !89, !90}
!210 = !DILocation(line: 101, column: 26, scope: !204)
!211 = !DILocation(line: 102, column: 12, scope: !198)
!212 = !DILocation(line: 102, column: 4, scope: !198)
!213 = !DISubprogram(name: "atol", scope: !193, file: !193, line: 107, type: !214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !172)
!214 = !DISubroutineType(types: !215)
!215 = !{!33, !196}
!216 = distinct !DISubprogram(name: "getbparam", scope: !3, file: !3, line: 105, type: !217, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !220)
!217 = !DISubroutineType(types: !218)
!218 = !{!219, !8}
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !9, line: 45, baseType: !33)
!220 = !{!221, !222}
!221 = !DILocalVariable(name: "name", arg: 1, scope: !216, file: !3, line: 105, type: !8)
!222 = !DILocalVariable(name: "val", scope: !216, file: !3, line: 107, type: !8)
!223 = !DILocation(line: 0, scope: !216)
!224 = !DILocation(line: 109, column: 4, scope: !225)
!225 = distinct !DILexicalBlock(scope: !216, file: !3, line: 109, column: 4)
!226 = !DILocation(line: 110, column: 13, scope: !227)
!227 = distinct !DILexicalBlock(scope: !225, file: !3, line: 109, column: 4)
!228 = !DILocation(line: 109, column: 19, scope: !227)
!229 = !DILocation(line: 109, column: 24, scope: !227)
!230 = distinct !{!230, !224, !231, !89, !90}
!231 = !DILocation(line: 110, column: 26, scope: !225)
!232 = !DILocation(line: 111, column: 8, scope: !233)
!233 = distinct !DILexicalBlock(scope: !216, file: !3, line: 111, column: 8)
!234 = !DILocation(line: 111, column: 30, scope: !233)
!235 = !DILocation(line: 111, column: 8, scope: !216)
!236 = !DILocation(line: 114, column: 8, scope: !237)
!237 = distinct !DILexicalBlock(scope: !216, file: !3, line: 114, column: 8)
!238 = !DILocation(line: 114, column: 30, scope: !237)
!239 = !DILocation(line: 114, column: 8, scope: !216)
!240 = !DILocation(line: 117, column: 4, scope: !216)
!241 = !DILocation(line: 118, column: 1, scope: !216)
!242 = distinct !DISubprogram(name: "getdparam", scope: !3, file: !3, line: 120, type: !243, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !246)
!243 = !DISubroutineType(types: !244)
!244 = !{!245, !8}
!245 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!246 = !{!247, !248}
!247 = !DILocalVariable(name: "name", arg: 1, scope: !242, file: !3, line: 120, type: !8)
!248 = !DILocalVariable(name: "val", scope: !242, file: !3, line: 122, type: !8)
!249 = !DILocation(line: 0, scope: !242)
!250 = !DILocation(line: 124, column: 4, scope: !251)
!251 = distinct !DILexicalBlock(scope: !242, file: !3, line: 124, column: 4)
!252 = !DILocation(line: 125, column: 13, scope: !253)
!253 = distinct !DILexicalBlock(scope: !254, file: !3, line: 124, column: 35)
!254 = distinct !DILexicalBlock(scope: !251, file: !3, line: 124, column: 4)
!255 = !DILocation(line: 124, column: 19, scope: !254)
!256 = !DILocation(line: 124, column: 24, scope: !254)
!257 = distinct !{!257, !250, !258, !89, !90}
!258 = !DILocation(line: 126, column: 4, scope: !251)
!259 = !DILocation(line: 127, column: 12, scope: !242)
!260 = !DILocation(line: 127, column: 4, scope: !242)
!261 = !DISubprogram(name: "atof", scope: !193, file: !193, line: 101, type: !262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !172)
!262 = !DISubroutineType(types: !263)
!263 = !{!245, !196}
!264 = distinct !DISubprogram(name: "matchname", scope: !3, file: !3, line: 150, type: !265, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !267)
!265 = !DISubroutineType(types: !266)
!266 = !{!219, !8, !8}
!267 = !{!268, !269, !270, !271}
!268 = !DILocalVariable(name: "bind", arg: 1, scope: !264, file: !3, line: 150, type: !8)
!269 = !DILocalVariable(name: "name", arg: 2, scope: !264, file: !3, line: 150, type: !8)
!270 = !DILocalVariable(name: "bp", scope: !264, file: !3, line: 152, type: !6)
!271 = !DILocalVariable(name: "np", scope: !264, file: !3, line: 152, type: !6)
!272 = !DILocation(line: 0, scope: !264)
!273 = !DILocation(line: 156, column: 11, scope: !264)
!274 = !DILocation(line: 156, column: 18, scope: !264)
!275 = !DILocation(line: 156, column: 15, scope: !264)
!276 = !DILocation(line: 156, column: 4, scope: !264)
!277 = !DILocation(line: 157, column: 9, scope: !278)
!278 = distinct !DILexicalBlock(scope: !264, file: !3, line: 156, column: 23)
!279 = !DILocation(line: 158, column: 9, scope: !278)
!280 = distinct !{!280, !276, !281, !89, !90}
!281 = !DILocation(line: 159, column: 4, scope: !264)
!282 = !DILocation(line: 160, column: 16, scope: !264)
!283 = !DILocation(line: 160, column: 23, scope: !264)
!284 = !DILocation(line: 160, column: 30, scope: !264)
!285 = !DILocation(line: 160, column: 4, scope: !264)
