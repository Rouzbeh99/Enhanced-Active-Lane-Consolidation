; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/544.nab_r/llvm-ir/544.nab_r_bc/src/binpos.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/544.nab_r/src/binpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [40 x i8] c"Couldn't read magic number from BINPOS\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fxyz\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"bad magic number \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"malloc error in binpos\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Could only read %d of %d atoms requested\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @readbinposhdr(ptr nocapture noundef %fp) local_unnamed_addr #0 !dbg !12 {
entry:
  %magic = alloca [10 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %fp, metadata !80, metadata !DIExpression()), !dbg !85
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %magic) #9, !dbg !86
  call void @llvm.dbg.declare(metadata ptr %magic, metadata !81, metadata !DIExpression()), !dbg !87
  %call = call i64 @fread(ptr noundef nonnull %magic, i64 noundef 1, i64 noundef 4, ptr noundef %fp), !dbg !88
  %cmp.not = icmp eq i64 %call, 4, !dbg !90
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !91

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !92, !tbaa !94
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 39, i64 1, ptr %0) #10, !dbg !98
  tail call void @exit(i32 noundef -1) #11, !dbg !99
  unreachable, !dbg !99

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [10 x i8], ptr %magic, i64 0, i64 4, !dbg !100
  store i8 0, ptr %arrayidx, align 1, !dbg !101, !tbaa !102
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %magic, ptr noundef nonnull dereferenceable(5) @.str.1, i64 5), !dbg !103
  %cmp4.not = icmp eq i32 %bcmp, 0, !dbg !105
  br i1 %cmp4.not, label %if.end8, label %if.then5, !dbg !106

if.then5:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8, !dbg !107, !tbaa !94
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef nonnull %magic) #10, !dbg !109
  call void @exit(i32 noundef -1) #11, !dbg !110
  unreachable, !dbg !110

if.end8:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %magic) #9, !dbg !111
  ret i32 0, !dbg !112
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @readbinposfrm(i32 noundef %n_atom, ptr nocapture noundef writeonly %apos, ptr nocapture noundef %fp) local_unnamed_addr #0 !dbg !113 {
entry:
  %n_atom.addr = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %n_atom, metadata !119, metadata !DIExpression()), !dbg !125
  store i32 %n_atom, ptr %n_atom.addr, align 4, !tbaa !126
  call void @llvm.dbg.value(metadata ptr %apos, metadata !120, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.value(metadata ptr %fp, metadata !121, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.value(metadata ptr %n_atom.addr, metadata !119, metadata !DIExpression(DW_OP_deref)), !dbg !125
  %call = call i64 @fread(ptr noundef nonnull %n_atom.addr, i64 noundef 4, i64 noundef 1, ptr noundef %fp), !dbg !128
  %cmp.not = icmp eq i64 %call, 1, !dbg !130
  br i1 %cmp.not, label %if.end, label %cleanup, !dbg !131

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %n_atom.addr, align 4, !dbg !132, !tbaa !126
  call void @llvm.dbg.value(metadata i32 %0, metadata !119, metadata !DIExpression()), !dbg !125
  %mul = mul nsw i32 %0, 3, !dbg !133
  %conv = sext i32 %mul to i64, !dbg !134
  %mul1 = shl nsw i64 %conv, 2, !dbg !135
  %call2 = tail call noalias ptr @malloc(i64 noundef %mul1) #12, !dbg !136
  call void @llvm.dbg.value(metadata ptr %call2, metadata !124, metadata !DIExpression()), !dbg !125
  %tobool.not = icmp eq ptr %call2, null, !dbg !137
  br i1 %tobool.not, label %if.then3, label %if.end5, !dbg !139

if.then3:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !140, !tbaa !94
  %2 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 23, i64 1, ptr %1) #10, !dbg !142
  tail call void @exit(i32 noundef 1) #11, !dbg !143
  unreachable, !dbg !143

if.end5:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 %0, metadata !119, metadata !DIExpression()), !dbg !125
  %call8 = tail call i64 @fread(ptr noundef nonnull %call2, i64 noundef 4, i64 noundef %conv, ptr noundef %fp), !dbg !144
  %conv9 = trunc i64 %call8 to i32, !dbg !144
  call void @llvm.dbg.value(metadata i32 %conv9, metadata !122, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.value(metadata i32 %0, metadata !119, metadata !DIExpression()), !dbg !125
  %cmp11.not = icmp eq i32 %mul, %conv9, !dbg !146
  br i1 %cmp11.not, label %for.cond.preheader, label %if.then13, !dbg !147

for.cond.preheader:                               ; preds = %if.end5
  call void @llvm.dbg.value(metadata i32 0, metadata !123, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.value(metadata i32 %0, metadata !119, metadata !DIExpression()), !dbg !125
  %cmp1731 = icmp sgt i32 %0, 0, !dbg !148
  br i1 %cmp1731, label %for.body.preheader, label %for.end, !dbg !151

for.body.preheader:                               ; preds = %for.cond.preheader
  %smax = call i32 @llvm.smax.i32(i32 %mul, i32 1), !dbg !151
  %wide.trip.count = zext i32 %smax to i64, !dbg !148
  br label %for.body, !dbg !151

if.then13:                                        ; preds = %if.end5
  %3 = load ptr, ptr @stderr, align 8, !dbg !152, !tbaa !94
  %div = sdiv i32 %conv9, 3, !dbg !154
  %call14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %div, i32 noundef %0) #10, !dbg !155
  tail call void @exit(i32 noundef -1) #11, !dbg !156
  unreachable, !dbg !156

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !123, metadata !DIExpression()), !dbg !125
  %arrayidx = getelementptr inbounds float, ptr %call2, i64 %indvars.iv, !dbg !157
  %4 = load float, ptr %arrayidx, align 4, !dbg !157, !tbaa !159
  %conv19 = fpext float %4 to double, !dbg !157
  %arrayidx21 = getelementptr inbounds double, ptr %apos, i64 %indvars.iv, !dbg !161
  store double %conv19, ptr %arrayidx21, align 8, !dbg !162, !tbaa !163
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !165
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !123, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.value(metadata i32 %0, metadata !119, metadata !DIExpression()), !dbg !125
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !148
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !151, !llvm.loop !166

for.end:                                          ; preds = %for.body, %for.cond.preheader
  tail call void @free(ptr noundef nonnull %call2) #9, !dbg !170
  br label %cleanup, !dbg !171

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry ], !dbg !125
  ret i32 %retval.0, !dbg !172
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @writebinposhdr(ptr nocapture noundef %fp) local_unnamed_addr #7 !dbg !173 {
entry:
  call void @llvm.dbg.value(metadata ptr %fp, metadata !175, metadata !DIExpression()), !dbg !176
  %call = tail call i64 @fwrite(ptr noundef nonnull @.str.1, i64 noundef 4, i64 noundef 1, ptr noundef %fp), !dbg !177
  ret i32 0, !dbg !178
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @writebinposfrm(i32 noundef %n_atom, ptr nocapture noundef readonly %apos, ptr nocapture noundef %fp) local_unnamed_addr #0 !dbg !179 {
entry:
  %n_atom.addr = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %n_atom, metadata !181, metadata !DIExpression()), !dbg !186
  store i32 %n_atom, ptr %n_atom.addr, align 4, !tbaa !126
  call void @llvm.dbg.value(metadata ptr %apos, metadata !182, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata ptr %fp, metadata !183, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata ptr %n_atom.addr, metadata !181, metadata !DIExpression(DW_OP_deref)), !dbg !186
  %call = call i64 @fwrite(ptr noundef nonnull %n_atom.addr, i64 noundef 4, i64 noundef 1, ptr noundef %fp), !dbg !187
  %0 = load i32, ptr %n_atom.addr, align 4, !dbg !188, !tbaa !126
  call void @llvm.dbg.value(metadata i32 %0, metadata !181, metadata !DIExpression()), !dbg !186
  %mul = mul nsw i32 %0, 3, !dbg !189
  %conv = sext i32 %mul to i64, !dbg !190
  %mul1 = shl nsw i64 %conv, 2, !dbg !191
  %call2 = tail call noalias ptr @malloc(i64 noundef %mul1) #12, !dbg !192
  call void @llvm.dbg.value(metadata ptr %call2, metadata !184, metadata !DIExpression()), !dbg !186
  %tobool.not = icmp eq ptr %call2, null, !dbg !193
  br i1 %tobool.not, label %if.then, label %for.cond.preheader, !dbg !195

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i32 %0, metadata !181, metadata !DIExpression()), !dbg !186
  %cmp21 = icmp sgt i32 %0, 0, !dbg !196
  br i1 %cmp21, label %for.body.preheader, label %for.end, !dbg !199

for.body.preheader:                               ; preds = %for.cond.preheader
  %smax = call i32 @llvm.smax.i32(i32 %mul, i32 1), !dbg !199
  %wide.trip.count = zext i32 %smax to i64, !dbg !196
  br label %for.body, !dbg !199

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !200, !tbaa !94
  %2 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 23, i64 1, ptr %1) #10, !dbg !202
  tail call void @exit(i32 noundef 1) #11, !dbg !203
  unreachable, !dbg !203

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !185, metadata !DIExpression()), !dbg !186
  %arrayidx = getelementptr inbounds double, ptr %apos, i64 %indvars.iv, !dbg !204
  %3 = load double, ptr %arrayidx, align 8, !dbg !204, !tbaa !163
  %conv6 = fptrunc double %3 to float, !dbg !204
  %arrayidx8 = getelementptr inbounds float, ptr %call2, i64 %indvars.iv, !dbg !206
  store float %conv6, ptr %arrayidx8, align 4, !dbg !207, !tbaa !159
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !208
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i32 %0, metadata !181, metadata !DIExpression()), !dbg !186
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !196
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !199, !llvm.loop !209

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %call11 = tail call i64 @fwrite(ptr noundef nonnull %call2, i64 noundef 4, i64 noundef %conv, ptr noundef %fp), !dbg !211
  tail call void @free(ptr noundef nonnull %call2) #9, !dbg !212
  %call12 = tail call i32 @fflush(ptr noundef %fp), !dbg !213
  ret i32 0, !dbg !214
}

; Function Attrs: nofree nounwind
declare !dbg !215 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/544.nab_r/src/binpos.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/544.nab_r", checksumkind: CSK_MD5, checksum: "3213657abd4dba89e47c762210ec2f39")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !{i32 7, !"Dwarf Version", i32 5}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!12 = distinct !DISubprogram(name: "readbinposhdr", scope: !13, file: !13, line: 6, type: !14, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !79)
!13 = !DIFile(filename: "apps/544.nab_r/src/binpos.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3213657abd4dba89e47c762210ec2f39")
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !17}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !19, line: 7, baseType: !20)
!19 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !22)
!21 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!22 = !{!23, !24, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !40, !42, !43, !44, !48, !50, !52, !56, !59, !61, !64, !67, !68, !70, !74, !75}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !20, file: !21, line: 51, baseType: !16, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !20, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !20, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !20, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !20, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !20, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !20, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !20, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !20, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !20, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !20, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !20, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !20, file: !21, line: 68, baseType: !38, size: 64, offset: 768)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !21, line: 36, flags: DIFlagFwdDecl)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !20, file: !21, line: 70, baseType: !41, size: 64, offset: 832)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !20, file: !21, line: 72, baseType: !16, size: 32, offset: 896)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !20, file: !21, line: 73, baseType: !16, size: 32, offset: 928)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !20, file: !21, line: 74, baseType: !45, size: 64, offset: 960)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !46, line: 152, baseType: !47)
!46 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!47 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !20, file: !21, line: 77, baseType: !49, size: 16, offset: 1024)
!49 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !20, file: !21, line: 78, baseType: !51, size: 8, offset: 1040)
!51 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !20, file: !21, line: 79, baseType: !53, size: 8, offset: 1048)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 1)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !20, file: !21, line: 81, baseType: !57, size: 64, offset: 1088)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !21, line: 43, baseType: null)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !20, file: !21, line: 89, baseType: !60, size: 64, offset: 1152)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !46, line: 153, baseType: !47)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !20, file: !21, line: 91, baseType: !62, size: 64, offset: 1216)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !21, line: 37, flags: DIFlagFwdDecl)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !20, file: !21, line: 92, baseType: !65, size: 64, offset: 1280)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !21, line: 38, flags: DIFlagFwdDecl)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !20, file: !21, line: 93, baseType: !41, size: 64, offset: 1344)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !20, file: !21, line: 94, baseType: !69, size: 64, offset: 1408)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !20, file: !21, line: 95, baseType: !71, size: 64, offset: 1472)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 46, baseType: !73)
!72 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!73 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !20, file: !21, line: 96, baseType: !16, size: 32, offset: 1536)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !20, file: !21, line: 98, baseType: !76, size: 160, offset: 1568)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 160, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 20)
!79 = !{!80, !81}
!80 = !DILocalVariable(name: "fp", arg: 1, scope: !12, file: !13, line: 6, type: !17)
!81 = !DILocalVariable(name: "magic", scope: !12, file: !13, line: 8, type: !82)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 80, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 10)
!85 = !DILocation(line: 0, scope: !12)
!86 = !DILocation(line: 8, column: 2, scope: !12)
!87 = !DILocation(line: 8, column: 7, scope: !12)
!88 = !DILocation(line: 10, column: 6, scope: !89)
!89 = distinct !DILexicalBlock(scope: !12, file: !13, line: 10, column: 6)
!90 = !DILocation(line: 10, column: 31, scope: !89)
!91 = !DILocation(line: 10, column: 6, scope: !12)
!92 = !DILocation(line: 11, column: 12, scope: !93)
!93 = distinct !DILexicalBlock(scope: !89, file: !13, line: 10, column: 37)
!94 = !{!95, !95, i64 0}
!95 = !{!"any pointer", !96, i64 0}
!96 = !{!"omnipotent char", !97, i64 0}
!97 = !{!"Simple C/C++ TBAA"}
!98 = !DILocation(line: 11, column: 3, scope: !93)
!99 = !DILocation(line: 12, column: 3, scope: !93)
!100 = !DILocation(line: 15, column: 2, scope: !12)
!101 = !DILocation(line: 15, column: 13, scope: !12)
!102 = !{!96, !96, i64 0}
!103 = !DILocation(line: 16, column: 6, scope: !104)
!104 = distinct !DILexicalBlock(scope: !12, file: !13, line: 16, column: 6)
!105 = !DILocation(line: 16, column: 30, scope: !104)
!106 = !DILocation(line: 16, column: 6, scope: !12)
!107 = !DILocation(line: 17, column: 12, scope: !108)
!108 = distinct !DILexicalBlock(scope: !104, file: !13, line: 16, column: 36)
!109 = !DILocation(line: 17, column: 3, scope: !108)
!110 = !DILocation(line: 18, column: 3, scope: !108)
!111 = !DILocation(line: 21, column: 1, scope: !12)
!112 = !DILocation(line: 20, column: 2, scope: !12)
!113 = distinct !DISubprogram(name: "readbinposfrm", scope: !13, file: !13, line: 23, type: !114, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !118)
!114 = !DISubroutineType(types: !115)
!115 = !{!16, !16, !116, !17}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!118 = !{!119, !120, !121, !122, !123, !124}
!119 = !DILocalVariable(name: "n_atom", arg: 1, scope: !113, file: !13, line: 23, type: !16)
!120 = !DILocalVariable(name: "apos", arg: 2, scope: !113, file: !13, line: 23, type: !116)
!121 = !DILocalVariable(name: "fp", arg: 3, scope: !113, file: !13, line: 23, type: !17)
!122 = !DILocalVariable(name: "count", scope: !113, file: !13, line: 26, type: !16)
!123 = !DILocalVariable(name: "i", scope: !113, file: !13, line: 26, type: !16)
!124 = !DILocalVariable(name: "aposf", scope: !113, file: !13, line: 27, type: !3)
!125 = !DILocation(line: 0, scope: !113)
!126 = !{!127, !127, i64 0}
!127 = !{!"int", !96, i64 0}
!128 = !DILocation(line: 29, column: 6, scope: !129)
!129 = distinct !DILexicalBlock(scope: !113, file: !13, line: 29, column: 6)
!130 = !DILocation(line: 29, column: 45, scope: !129)
!131 = !DILocation(line: 29, column: 6, scope: !113)
!132 = !DILocation(line: 35, column: 31, scope: !113)
!133 = !DILocation(line: 35, column: 30, scope: !113)
!134 = !DILocation(line: 35, column: 29, scope: !113)
!135 = !DILocation(line: 35, column: 38, scope: !113)
!136 = !DILocation(line: 35, column: 21, scope: !113)
!137 = !DILocation(line: 36, column: 7, scope: !138)
!138 = distinct !DILexicalBlock(scope: !113, file: !13, line: 36, column: 6)
!139 = !DILocation(line: 36, column: 6, scope: !113)
!140 = !DILocation(line: 36, column: 25, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !13, line: 36, column: 14)
!142 = !DILocation(line: 36, column: 16, scope: !141)
!143 = !DILocation(line: 36, column: 63, scope: !141)
!144 = !DILocation(line: 37, column: 16, scope: !145)
!145 = distinct !DILexicalBlock(scope: !113, file: !13, line: 37, column: 6)
!146 = !DILocation(line: 38, column: 3, scope: !145)
!147 = !DILocation(line: 37, column: 6, scope: !113)
!148 = !DILocation(line: 43, column: 13, scope: !149)
!149 = distinct !DILexicalBlock(scope: !150, file: !13, line: 43, column: 2)
!150 = distinct !DILexicalBlock(scope: !113, file: !13, line: 43, column: 2)
!151 = !DILocation(line: 43, column: 2, scope: !150)
!152 = !DILocation(line: 39, column: 12, scope: !153)
!153 = distinct !DILexicalBlock(scope: !145, file: !13, line: 38, column: 18)
!154 = !DILocation(line: 40, column: 10, scope: !153)
!155 = !DILocation(line: 39, column: 3, scope: !153)
!156 = !DILocation(line: 41, column: 3, scope: !153)
!157 = !DILocation(line: 44, column: 13, scope: !158)
!158 = distinct !DILexicalBlock(scope: !149, file: !13, line: 43, column: 29)
!159 = !{!160, !160, i64 0}
!160 = !{!"float", !96, i64 0}
!161 = !DILocation(line: 44, column: 3, scope: !158)
!162 = !DILocation(line: 44, column: 11, scope: !158)
!163 = !{!164, !164, i64 0}
!164 = !{!"double", !96, i64 0}
!165 = !DILocation(line: 43, column: 25, scope: !149)
!166 = distinct !{!166, !151, !167, !168, !169}
!167 = !DILocation(line: 45, column: 2, scope: !150)
!168 = !{!"llvm.loop.mustprogress"}
!169 = !{!"llvm.loop.unroll.disable"}
!170 = !DILocation(line: 46, column: 2, scope: !113)
!171 = !DILocation(line: 55, column: 2, scope: !113)
!172 = !DILocation(line: 56, column: 1, scope: !113)
!173 = distinct !DISubprogram(name: "writebinposhdr", scope: !13, file: !13, line: 58, type: !14, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !174)
!174 = !{!175}
!175 = !DILocalVariable(name: "fp", arg: 1, scope: !173, file: !13, line: 58, type: !17)
!176 = !DILocation(line: 0, scope: !173)
!177 = !DILocation(line: 61, column: 5, scope: !173)
!178 = !DILocation(line: 62, column: 2, scope: !173)
!179 = distinct !DISubprogram(name: "writebinposfrm", scope: !13, file: !13, line: 65, type: !114, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !180)
!180 = !{!181, !182, !183, !184, !185}
!181 = !DILocalVariable(name: "n_atom", arg: 1, scope: !179, file: !13, line: 65, type: !16)
!182 = !DILocalVariable(name: "apos", arg: 2, scope: !179, file: !13, line: 65, type: !116)
!183 = !DILocalVariable(name: "fp", arg: 3, scope: !179, file: !13, line: 65, type: !17)
!184 = !DILocalVariable(name: "aposf", scope: !179, file: !13, line: 67, type: !3)
!185 = !DILocalVariable(name: "i", scope: !179, file: !13, line: 68, type: !16)
!186 = !DILocation(line: 0, scope: !179)
!187 = !DILocation(line: 70, column: 2, scope: !179)
!188 = !DILocation(line: 74, column: 31, scope: !179)
!189 = !DILocation(line: 74, column: 30, scope: !179)
!190 = !DILocation(line: 74, column: 29, scope: !179)
!191 = !DILocation(line: 74, column: 38, scope: !179)
!192 = !DILocation(line: 74, column: 21, scope: !179)
!193 = !DILocation(line: 75, column: 7, scope: !194)
!194 = distinct !DILexicalBlock(scope: !179, file: !13, line: 75, column: 6)
!195 = !DILocation(line: 75, column: 6, scope: !179)
!196 = !DILocation(line: 76, column: 13, scope: !197)
!197 = distinct !DILexicalBlock(scope: !198, file: !13, line: 76, column: 2)
!198 = distinct !DILexicalBlock(scope: !179, file: !13, line: 76, column: 2)
!199 = !DILocation(line: 76, column: 2, scope: !198)
!200 = !DILocation(line: 75, column: 25, scope: !201)
!201 = distinct !DILexicalBlock(scope: !194, file: !13, line: 75, column: 14)
!202 = !DILocation(line: 75, column: 16, scope: !201)
!203 = !DILocation(line: 75, column: 63, scope: !201)
!204 = !DILocation(line: 77, column: 14, scope: !205)
!205 = distinct !DILexicalBlock(scope: !197, file: !13, line: 76, column: 29)
!206 = !DILocation(line: 77, column: 3, scope: !205)
!207 = !DILocation(line: 77, column: 12, scope: !205)
!208 = !DILocation(line: 76, column: 25, scope: !197)
!209 = distinct !{!209, !199, !210, !168, !169}
!210 = !DILocation(line: 78, column: 2, scope: !198)
!211 = !DILocation(line: 79, column: 2, scope: !179)
!212 = !DILocation(line: 80, column: 2, scope: !179)
!213 = !DILocation(line: 84, column: 2, scope: !179)
!214 = !DILocation(line: 85, column: 2, scope: !179)
!215 = !DISubprogram(name: "fflush", scope: !216, file: !216, line: 218, type: !14, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !217)
!216 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!217 = !{}
