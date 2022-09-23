; ModuleID = '/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/binpos.c'
source_filename = "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/binpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
define dso_local i32 @readbinposhdr(%struct._IO_FILE* nocapture noundef %fp) local_unnamed_addr #0 !dbg !10 {
entry:
  %magic = alloca [10 x i8], align 1
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, metadata !78, metadata !DIExpression()), !dbg !83
  %0 = getelementptr inbounds [10 x i8], [10 x i8]* %magic, i64 0, i64 0, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %0) #10, !dbg !84
  call void @llvm.dbg.declare(metadata [10 x i8]* %magic, metadata !79, metadata !DIExpression()), !dbg !85
  %call = call i64 @fread(i8* noundef nonnull %0, i64 noundef 1, i64 noundef 4, %struct._IO_FILE* noundef %fp), !dbg !86
  %cmp.not = icmp eq i64 %call, 4, !dbg !88
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !89

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !90, !tbaa !92
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %1) #11, !dbg !96
  tail call void @exit(i32 noundef -1) #12, !dbg !97
  unreachable, !dbg !97

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [10 x i8], [10 x i8]* %magic, i64 0, i64 4, !dbg !98
  store i8 0, i8* %arrayidx, align 1, !dbg !99, !tbaa !100
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 5), !dbg !101
  %cmp4.not = icmp eq i32 %bcmp, 0, !dbg !103
  br i1 %cmp4.not, label %if.end8, label %if.then5, !dbg !104

if.then5:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !105, !tbaa !92
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %0) #11, !dbg !107
  call void @exit(i32 noundef -1) #12, !dbg !108
  unreachable, !dbg !108

if.end8:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %0) #10, !dbg !109
  ret i32 0, !dbg !110
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fread(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @readbinposfrm(i32 noundef %n_atom, double* nocapture noundef writeonly %apos, %struct._IO_FILE* nocapture noundef %fp) local_unnamed_addr #0 !dbg !111 {
entry:
  %n_atom.addr = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %n_atom, metadata !117, metadata !DIExpression()), !dbg !123
  store i32 %n_atom, i32* %n_atom.addr, align 4, !tbaa !124
  call void @llvm.dbg.value(metadata double* %apos, metadata !118, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, metadata !119, metadata !DIExpression()), !dbg !123
  %0 = bitcast i32* %n_atom.addr to i8*, !dbg !126
  call void @llvm.dbg.value(metadata i32* %n_atom.addr, metadata !117, metadata !DIExpression(DW_OP_deref)), !dbg !123
  %call = call i64 @fread(i8* noundef nonnull %0, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %fp), !dbg !128
  %cmp.not = icmp eq i64 %call, 1, !dbg !129
  br i1 %cmp.not, label %if.end, label %cleanup, !dbg !130

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %n_atom.addr, align 4, !dbg !131, !tbaa !124
  call void @llvm.dbg.value(metadata i32 %1, metadata !117, metadata !DIExpression()), !dbg !123
  %mul = mul nsw i32 %1, 3, !dbg !132
  %conv = sext i32 %mul to i64, !dbg !133
  %mul1 = shl nsw i64 %conv, 2, !dbg !134
  %call2 = tail call noalias i8* @malloc(i64 noundef %mul1) #10, !dbg !135
  %2 = bitcast i8* %call2 to float*, !dbg !136
  call void @llvm.dbg.value(metadata float* %2, metadata !122, metadata !DIExpression()), !dbg !123
  %tobool.not = icmp eq i8* %call2, null, !dbg !137
  br i1 %tobool.not, label %if.then3, label %if.end5, !dbg !139

if.then3:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !140, !tbaa !92
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %3) #11, !dbg !142
  tail call void @exit(i32 noundef 1) #12, !dbg !143
  unreachable, !dbg !143

if.end5:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 %1, metadata !117, metadata !DIExpression()), !dbg !123
  %call8 = tail call i64 @fread(i8* noundef nonnull %call2, i64 noundef 4, i64 noundef %conv, %struct._IO_FILE* noundef %fp), !dbg !144
  %conv9 = trunc i64 %call8 to i32, !dbg !144
  call void @llvm.dbg.value(metadata i32 %conv9, metadata !120, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i32 %1, metadata !117, metadata !DIExpression()), !dbg !123
  %cmp11.not = icmp eq i32 %mul, %conv9, !dbg !146
  br i1 %cmp11.not, label %for.cond.preheader, label %if.then13, !dbg !147

for.cond.preheader:                               ; preds = %if.end5
  call void @llvm.dbg.value(metadata i32 0, metadata !121, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i32 %1, metadata !117, metadata !DIExpression()), !dbg !123
  %cmp1734 = icmp sgt i32 %1, 0, !dbg !148
  br i1 %cmp1734, label %for.body.preheader, label %for.end, !dbg !151

for.body.preheader:                               ; preds = %for.cond.preheader
  %smax = call i32 @llvm.smax.i32(i32 %mul, i32 1), !dbg !151
  %wide.trip.count = zext i32 %smax to i64, !dbg !148
  br label %for.body, !dbg !151

if.then13:                                        ; preds = %if.end5
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !152, !tbaa !92
  %div = sdiv i32 %conv9, 3, !dbg !154
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 noundef %div, i32 noundef %1) #11, !dbg !155
  tail call void @exit(i32 noundef -1) #12, !dbg !156
  unreachable, !dbg !156

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !121, metadata !DIExpression()), !dbg !123
  %arrayidx = getelementptr inbounds float, float* %2, i64 %indvars.iv, !dbg !157
  %6 = load float, float* %arrayidx, align 4, !dbg !157, !tbaa !159
  %conv19 = fpext float %6 to double, !dbg !157
  %arrayidx21 = getelementptr inbounds double, double* %apos, i64 %indvars.iv, !dbg !161
  store double %conv19, double* %arrayidx21, align 8, !dbg !162, !tbaa !163
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !165
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !121, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i32 %1, metadata !117, metadata !DIExpression()), !dbg !123
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !148
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !151, !llvm.loop !166

for.end:                                          ; preds = %for.body, %for.cond.preheader
  tail call void @free(i8* noundef nonnull %call2) #10, !dbg !170
  br label %cleanup, !dbg !171

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry ], !dbg !123
  ret i32 %retval.0, !dbg !172
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @writebinposhdr(%struct._IO_FILE* nocapture noundef %fp) local_unnamed_addr #7 !dbg !173 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, metadata !175, metadata !DIExpression()), !dbg !176
  %call = tail call i64 @fwrite(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %fp), !dbg !177
  ret i32 0, !dbg !178
}

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @writebinposfrm(i32 noundef %n_atom, double* nocapture noundef readonly %apos, %struct._IO_FILE* nocapture noundef %fp) local_unnamed_addr #0 !dbg !179 {
entry:
  %n_atom.addr = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %n_atom, metadata !181, metadata !DIExpression()), !dbg !186
  store i32 %n_atom, i32* %n_atom.addr, align 4, !tbaa !124
  call void @llvm.dbg.value(metadata double* %apos, metadata !182, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, metadata !183, metadata !DIExpression()), !dbg !186
  %0 = bitcast i32* %n_atom.addr to i8*, !dbg !187
  call void @llvm.dbg.value(metadata i32* %n_atom.addr, metadata !181, metadata !DIExpression(DW_OP_deref)), !dbg !186
  %call = call i64 @fwrite(i8* noundef nonnull %0, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %fp), !dbg !188
  %1 = load i32, i32* %n_atom.addr, align 4, !dbg !189, !tbaa !124
  call void @llvm.dbg.value(metadata i32 %1, metadata !181, metadata !DIExpression()), !dbg !186
  %mul = mul nsw i32 %1, 3, !dbg !190
  %conv = sext i32 %mul to i64, !dbg !191
  %mul1 = shl nsw i64 %conv, 2, !dbg !192
  %call2 = tail call noalias i8* @malloc(i64 noundef %mul1) #10, !dbg !193
  %2 = bitcast i8* %call2 to float*, !dbg !194
  call void @llvm.dbg.value(metadata float* %2, metadata !184, metadata !DIExpression()), !dbg !186
  %tobool.not = icmp eq i8* %call2, null, !dbg !195
  br i1 %tobool.not, label %if.then, label %for.cond.preheader, !dbg !197

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i32 %1, metadata !181, metadata !DIExpression()), !dbg !186
  %cmp23 = icmp sgt i32 %1, 0, !dbg !198
  br i1 %cmp23, label %for.body.preheader, label %for.end, !dbg !201

for.body.preheader:                               ; preds = %for.cond.preheader
  %smax = call i32 @llvm.smax.i32(i32 %mul, i32 1), !dbg !201
  %wide.trip.count = zext i32 %smax to i64, !dbg !198
  br label %for.body, !dbg !201

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !202, !tbaa !92
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %3) #11, !dbg !204
  tail call void @exit(i32 noundef 1) #12, !dbg !205
  unreachable, !dbg !205

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !185, metadata !DIExpression()), !dbg !186
  %arrayidx = getelementptr inbounds double, double* %apos, i64 %indvars.iv, !dbg !206
  %5 = load double, double* %arrayidx, align 8, !dbg !206, !tbaa !163
  %conv6 = fptrunc double %5 to float, !dbg !206
  %arrayidx8 = getelementptr inbounds float, float* %2, i64 %indvars.iv, !dbg !208
  store float %conv6, float* %arrayidx8, align 4, !dbg !209, !tbaa !159
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !210
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i32 %1, metadata !181, metadata !DIExpression()), !dbg !186
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !198
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !201, !llvm.loop !211

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %call11 = tail call i64 @fwrite(i8* noundef nonnull %call2, i64 noundef 4, i64 noundef %conv, %struct._IO_FILE* noundef %fp), !dbg !213
  tail call void @free(i8* noundef nonnull %call2) #10, !dbg !214
  %call12 = tail call i32 @fflush(%struct._IO_FILE* noundef %fp), !dbg !215
  ret i32 0, !dbg !216
}

; Function Attrs: nofree nounwind
declare !dbg !217 dso_local noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold }
attributes #12 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/binpos.c", directory: "/home/rouzbeh/Graduate/Research/LLVM/Active-Lane-Conslidation/test", checksumkind: CSK_MD5, checksum: "3213657abd4dba89e47c762210ec2f39")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !{i32 7, !"Dwarf Version", i32 5}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)"}
!10 = distinct !DISubprogram(name: "readbinposhdr", scope: !11, file: !11, line: 6, type: !12, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!11 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/binpos.c", directory: "/home/rouzbeh/Graduate/Research", checksumkind: CSK_MD5, checksum: "3213657abd4dba89e47c762210ec2f39")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 7, baseType: !18)
!17 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !19, line: 49, size: 1728, elements: !20)
!19 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!20 = !{!21, !22, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !38, !40, !41, !42, !46, !48, !50, !54, !57, !59, !62, !65, !66, !68, !72, !73}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !18, file: !19, line: 51, baseType: !14, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !18, file: !19, line: 54, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !18, file: !19, line: 55, baseType: !23, size: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !18, file: !19, line: 56, baseType: !23, size: 64, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !18, file: !19, line: 57, baseType: !23, size: 64, offset: 256)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !18, file: !19, line: 58, baseType: !23, size: 64, offset: 320)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !18, file: !19, line: 59, baseType: !23, size: 64, offset: 384)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !18, file: !19, line: 60, baseType: !23, size: 64, offset: 448)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !18, file: !19, line: 61, baseType: !23, size: 64, offset: 512)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !18, file: !19, line: 64, baseType: !23, size: 64, offset: 576)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !18, file: !19, line: 65, baseType: !23, size: 64, offset: 640)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !18, file: !19, line: 66, baseType: !23, size: 64, offset: 704)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !18, file: !19, line: 68, baseType: !36, size: 64, offset: 768)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !19, line: 36, flags: DIFlagFwdDecl)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !18, file: !19, line: 70, baseType: !39, size: 64, offset: 832)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !18, file: !19, line: 72, baseType: !14, size: 32, offset: 896)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !18, file: !19, line: 73, baseType: !14, size: 32, offset: 928)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !18, file: !19, line: 74, baseType: !43, size: 64, offset: 960)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !44, line: 152, baseType: !45)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!45 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !18, file: !19, line: 77, baseType: !47, size: 16, offset: 1024)
!47 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !18, file: !19, line: 78, baseType: !49, size: 8, offset: 1040)
!49 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !18, file: !19, line: 79, baseType: !51, size: 8, offset: 1048)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 8, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 1)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !18, file: !19, line: 81, baseType: !55, size: 64, offset: 1088)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !19, line: 43, baseType: null)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !18, file: !19, line: 89, baseType: !58, size: 64, offset: 1152)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !44, line: 153, baseType: !45)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !18, file: !19, line: 91, baseType: !60, size: 64, offset: 1216)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !19, line: 37, flags: DIFlagFwdDecl)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !18, file: !19, line: 92, baseType: !63, size: 64, offset: 1280)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !19, line: 38, flags: DIFlagFwdDecl)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !18, file: !19, line: 93, baseType: !39, size: 64, offset: 1344)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !18, file: !19, line: 94, baseType: !67, size: 64, offset: 1408)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !18, file: !19, line: 95, baseType: !69, size: 64, offset: 1472)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !71)
!70 = !DIFile(filename: "llvm-project/build/lib/clang/14.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/Research/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!71 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !18, file: !19, line: 96, baseType: !14, size: 32, offset: 1536)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !18, file: !19, line: 98, baseType: !74, size: 160, offset: 1568)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 160, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 20)
!77 = !{!78, !79}
!78 = !DILocalVariable(name: "fp", arg: 1, scope: !10, file: !11, line: 6, type: !15)
!79 = !DILocalVariable(name: "magic", scope: !10, file: !11, line: 8, type: !80)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 80, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 10)
!83 = !DILocation(line: 0, scope: !10)
!84 = !DILocation(line: 8, column: 2, scope: !10)
!85 = !DILocation(line: 8, column: 7, scope: !10)
!86 = !DILocation(line: 10, column: 6, scope: !87)
!87 = distinct !DILexicalBlock(scope: !10, file: !11, line: 10, column: 6)
!88 = !DILocation(line: 10, column: 31, scope: !87)
!89 = !DILocation(line: 10, column: 6, scope: !10)
!90 = !DILocation(line: 11, column: 12, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !11, line: 10, column: 37)
!92 = !{!93, !93, i64 0}
!93 = !{!"any pointer", !94, i64 0}
!94 = !{!"omnipotent char", !95, i64 0}
!95 = !{!"Simple C/C++ TBAA"}
!96 = !DILocation(line: 11, column: 3, scope: !91)
!97 = !DILocation(line: 12, column: 3, scope: !91)
!98 = !DILocation(line: 15, column: 2, scope: !10)
!99 = !DILocation(line: 15, column: 13, scope: !10)
!100 = !{!94, !94, i64 0}
!101 = !DILocation(line: 16, column: 6, scope: !102)
!102 = distinct !DILexicalBlock(scope: !10, file: !11, line: 16, column: 6)
!103 = !DILocation(line: 16, column: 30, scope: !102)
!104 = !DILocation(line: 16, column: 6, scope: !10)
!105 = !DILocation(line: 17, column: 12, scope: !106)
!106 = distinct !DILexicalBlock(scope: !102, file: !11, line: 16, column: 36)
!107 = !DILocation(line: 17, column: 3, scope: !106)
!108 = !DILocation(line: 18, column: 3, scope: !106)
!109 = !DILocation(line: 21, column: 1, scope: !10)
!110 = !DILocation(line: 20, column: 2, scope: !10)
!111 = distinct !DISubprogram(name: "readbinposfrm", scope: !11, file: !11, line: 23, type: !112, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !116)
!112 = !DISubroutineType(types: !113)
!113 = !{!14, !14, !114, !15}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!116 = !{!117, !118, !119, !120, !121, !122}
!117 = !DILocalVariable(name: "n_atom", arg: 1, scope: !111, file: !11, line: 23, type: !14)
!118 = !DILocalVariable(name: "apos", arg: 2, scope: !111, file: !11, line: 23, type: !114)
!119 = !DILocalVariable(name: "fp", arg: 3, scope: !111, file: !11, line: 23, type: !15)
!120 = !DILocalVariable(name: "count", scope: !111, file: !11, line: 26, type: !14)
!121 = !DILocalVariable(name: "i", scope: !111, file: !11, line: 26, type: !14)
!122 = !DILocalVariable(name: "aposf", scope: !111, file: !11, line: 27, type: !3)
!123 = !DILocation(line: 0, scope: !111)
!124 = !{!125, !125, i64 0}
!125 = !{!"int", !94, i64 0}
!126 = !DILocation(line: 29, column: 13, scope: !127)
!127 = distinct !DILexicalBlock(scope: !111, file: !11, line: 29, column: 6)
!128 = !DILocation(line: 29, column: 6, scope: !127)
!129 = !DILocation(line: 29, column: 45, scope: !127)
!130 = !DILocation(line: 29, column: 6, scope: !111)
!131 = !DILocation(line: 35, column: 31, scope: !111)
!132 = !DILocation(line: 35, column: 30, scope: !111)
!133 = !DILocation(line: 35, column: 29, scope: !111)
!134 = !DILocation(line: 35, column: 38, scope: !111)
!135 = !DILocation(line: 35, column: 21, scope: !111)
!136 = !DILocation(line: 35, column: 10, scope: !111)
!137 = !DILocation(line: 36, column: 7, scope: !138)
!138 = distinct !DILexicalBlock(scope: !111, file: !11, line: 36, column: 6)
!139 = !DILocation(line: 36, column: 6, scope: !111)
!140 = !DILocation(line: 36, column: 25, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !11, line: 36, column: 14)
!142 = !DILocation(line: 36, column: 16, scope: !141)
!143 = !DILocation(line: 36, column: 63, scope: !141)
!144 = !DILocation(line: 37, column: 16, scope: !145)
!145 = distinct !DILexicalBlock(scope: !111, file: !11, line: 37, column: 6)
!146 = !DILocation(line: 38, column: 3, scope: !145)
!147 = !DILocation(line: 37, column: 6, scope: !111)
!148 = !DILocation(line: 43, column: 13, scope: !149)
!149 = distinct !DILexicalBlock(scope: !150, file: !11, line: 43, column: 2)
!150 = distinct !DILexicalBlock(scope: !111, file: !11, line: 43, column: 2)
!151 = !DILocation(line: 43, column: 2, scope: !150)
!152 = !DILocation(line: 39, column: 12, scope: !153)
!153 = distinct !DILexicalBlock(scope: !145, file: !11, line: 38, column: 18)
!154 = !DILocation(line: 40, column: 10, scope: !153)
!155 = !DILocation(line: 39, column: 3, scope: !153)
!156 = !DILocation(line: 41, column: 3, scope: !153)
!157 = !DILocation(line: 44, column: 13, scope: !158)
!158 = distinct !DILexicalBlock(scope: !149, file: !11, line: 43, column: 29)
!159 = !{!160, !160, i64 0}
!160 = !{!"float", !94, i64 0}
!161 = !DILocation(line: 44, column: 3, scope: !158)
!162 = !DILocation(line: 44, column: 11, scope: !158)
!163 = !{!164, !164, i64 0}
!164 = !{!"double", !94, i64 0}
!165 = !DILocation(line: 43, column: 25, scope: !149)
!166 = distinct !{!166, !151, !167, !168, !169}
!167 = !DILocation(line: 45, column: 2, scope: !150)
!168 = !{!"llvm.loop.mustprogress"}
!169 = !{!"llvm.loop.unroll.disable"}
!170 = !DILocation(line: 46, column: 2, scope: !111)
!171 = !DILocation(line: 55, column: 2, scope: !111)
!172 = !DILocation(line: 56, column: 1, scope: !111)
!173 = distinct !DISubprogram(name: "writebinposhdr", scope: !11, file: !11, line: 58, type: !12, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !174)
!174 = !{!175}
!175 = !DILocalVariable(name: "fp", arg: 1, scope: !173, file: !11, line: 58, type: !15)
!176 = !DILocation(line: 0, scope: !173)
!177 = !DILocation(line: 61, column: 5, scope: !173)
!178 = !DILocation(line: 62, column: 2, scope: !173)
!179 = distinct !DISubprogram(name: "writebinposfrm", scope: !11, file: !11, line: 65, type: !112, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !180)
!180 = !{!181, !182, !183, !184, !185}
!181 = !DILocalVariable(name: "n_atom", arg: 1, scope: !179, file: !11, line: 65, type: !14)
!182 = !DILocalVariable(name: "apos", arg: 2, scope: !179, file: !11, line: 65, type: !114)
!183 = !DILocalVariable(name: "fp", arg: 3, scope: !179, file: !11, line: 65, type: !15)
!184 = !DILocalVariable(name: "aposf", scope: !179, file: !11, line: 67, type: !3)
!185 = !DILocalVariable(name: "i", scope: !179, file: !11, line: 68, type: !14)
!186 = !DILocation(line: 0, scope: !179)
!187 = !DILocation(line: 70, column: 10, scope: !179)
!188 = !DILocation(line: 70, column: 2, scope: !179)
!189 = !DILocation(line: 74, column: 31, scope: !179)
!190 = !DILocation(line: 74, column: 30, scope: !179)
!191 = !DILocation(line: 74, column: 29, scope: !179)
!192 = !DILocation(line: 74, column: 38, scope: !179)
!193 = !DILocation(line: 74, column: 21, scope: !179)
!194 = !DILocation(line: 74, column: 10, scope: !179)
!195 = !DILocation(line: 75, column: 7, scope: !196)
!196 = distinct !DILexicalBlock(scope: !179, file: !11, line: 75, column: 6)
!197 = !DILocation(line: 75, column: 6, scope: !179)
!198 = !DILocation(line: 76, column: 13, scope: !199)
!199 = distinct !DILexicalBlock(scope: !200, file: !11, line: 76, column: 2)
!200 = distinct !DILexicalBlock(scope: !179, file: !11, line: 76, column: 2)
!201 = !DILocation(line: 76, column: 2, scope: !200)
!202 = !DILocation(line: 75, column: 25, scope: !203)
!203 = distinct !DILexicalBlock(scope: !196, file: !11, line: 75, column: 14)
!204 = !DILocation(line: 75, column: 16, scope: !203)
!205 = !DILocation(line: 75, column: 63, scope: !203)
!206 = !DILocation(line: 77, column: 14, scope: !207)
!207 = distinct !DILexicalBlock(scope: !199, file: !11, line: 76, column: 29)
!208 = !DILocation(line: 77, column: 3, scope: !207)
!209 = !DILocation(line: 77, column: 12, scope: !207)
!210 = !DILocation(line: 76, column: 25, scope: !199)
!211 = distinct !{!211, !201, !212, !168, !169}
!212 = !DILocation(line: 78, column: 2, scope: !200)
!213 = !DILocation(line: 79, column: 2, scope: !179)
!214 = !DILocation(line: 80, column: 2, scope: !179)
!215 = !DILocation(line: 84, column: 2, scope: !179)
!216 = !DILocation(line: 85, column: 2, scope: !179)
!217 = !DISubprogram(name: "fflush", scope: !218, file: !218, line: 218, type: !12, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !219)
!218 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!219 = !{}
