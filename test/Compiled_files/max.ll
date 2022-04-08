; ModuleID = 'max.c'
source_filename = "max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@in = dso_local global [1000 x i32] zeroinitializer, align 16, !dbg !0
@out = dso_local local_unnamed_addr global [1000 x i32] zeroinitializer, align 16, !dbg !5

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @max(i32 noundef %n, i32* nocapture noundef readonly %h) local_unnamed_addr #0 !dbg !16 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !21, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata i32* %h, metadata !22, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata i32 0, metadata !23, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata i32 0, metadata !24, metadata !DIExpression()), !dbg !25
  %cmp11 = icmp sgt i32 %n, 0, !dbg !26
  br i1 %cmp11, label %while.body.preheader, label %while.end, !dbg !27

while.body.preheader:                             ; preds = %entry
  %wide.trip.count = zext i32 %n to i64, !dbg !26
  br label %while.body, !dbg !27

while.body:                                       ; preds = %while.body.preheader, %while.body
  %indvars.iv = phi i64 [ 0, %while.body.preheader ], [ %indvars.iv.next, %while.body ]
  %m.013 = phi i32 [ 0, %while.body.preheader ], [ %m.1, %while.body ]
  call void @llvm.dbg.value(metadata i32 %m.013, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !23, metadata !DIExpression()), !dbg !25
  %arrayidx = getelementptr inbounds i32, i32* %h, i64 %indvars.iv, !dbg !28
  %0 = load i32, i32* %arrayidx, align 4, !dbg !28, !tbaa !31
  %cmp1 = icmp sgt i32 %0, %m.013, !dbg !35
  %m.1 = select i1 %cmp1, i32 %0, i32 %m.013, !dbg !36
  call void @llvm.dbg.value(metadata i32 %m.1, metadata !24, metadata !DIExpression()), !dbg !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !37
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !23, metadata !DIExpression()), !dbg !25
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !26
  br i1 %exitcond.not, label %while.end, label %while.body, !dbg !27, !llvm.loop !38

while.end:                                        ; preds = %while.body, %entry
  %m.0.lcssa = phi i32 [ 0, %entry ], [ %m.1, %while.body ], !dbg !25
  ret i32 %m.0.lcssa, !dbg !42
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** nocapture noundef readnone %argv) local_unnamed_addr #2 !dbg !43 {
entry:
  %res = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %argc, metadata !50, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i8** %argv, metadata !51, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i32 0, metadata !52, metadata !DIExpression()), !dbg !56
  br label %for.body, !dbg !57

for.cond.cleanup:                                 ; preds = %for.body
  %0 = bitcast i32* %res to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5, !dbg !58
  call void @llvm.dbg.value(metadata i32 1000, metadata !21, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 0, metadata !23, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 0, metadata !24, metadata !DIExpression()), !dbg !59
  br label %while.body.i, !dbg !61

while.body.i:                                     ; preds = %while.body.i, %for.cond.cleanup
  %indvars.iv.i = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next.i, %while.body.i ]
  %m.013.i = phi i32 [ 0, %for.cond.cleanup ], [ %m.1.i, %while.body.i ]
  call void @llvm.dbg.value(metadata i32 %m.013.i, metadata !24, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !23, metadata !DIExpression()), !dbg !59
  %arrayidx.i = getelementptr inbounds [1000 x i32], [1000 x i32]* @in, i64 0, i64 %indvars.iv.i, !dbg !62
  %1 = load i32, i32* %arrayidx.i, align 4, !dbg !62, !tbaa !31
  %cmp1.i = icmp sgt i32 %1, %m.013.i, !dbg !63
  %m.1.i = select i1 %cmp1.i, i32 %1, i32 %m.013.i, !dbg !64
  call void @llvm.dbg.value(metadata i32 %m.1.i, metadata !24, metadata !DIExpression()), !dbg !59
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !65
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !23, metadata !DIExpression()), !dbg !59
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 1000, !dbg !66
  br i1 %exitcond.not.i, label %max.exit, label %while.body.i, !dbg !61, !llvm.loop !67

max.exit:                                         ; preds = %while.body.i
  call void @llvm.dbg.value(metadata i32 %m.1.i, metadata !54, metadata !DIExpression()), !dbg !55
  store i32 %m.1.i, i32* %res, align 4, !dbg !69, !tbaa !31
  call void @llvm.dbg.value(metadata i32* %res, metadata !54, metadata !DIExpression(DW_OP_deref)), !dbg !55
  %call2 = call i64 @write(i32 noundef 1, i8* noundef nonnull %0, i64 noundef 4) #5, !dbg !70
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5, !dbg !71
  ret i32 0, !dbg !72

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !52, metadata !DIExpression()), !dbg !56
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* @in, i64 0, i64 %indvars.iv, !dbg !73
  %2 = bitcast i32* %arrayidx to i8*, !dbg !76
  %call = tail call i64 @read(i32 noundef 0, i8* noundef nonnull %2, i64 noundef 2) #5, !dbg !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !78
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !52, metadata !DIExpression()), !dbg !56
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1000, !dbg !79
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !57, !llvm.loop !80
}

; Function Attrs: nofree
declare !dbg !82 dso_local noundef i64 @read(i32 noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare !dbg !96 dso_local noundef i64 @write(i32 noundef, i8* nocapture noundef readonly, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "in", scope: !2, file: !3, line: 17, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "max.c", directory: "/home/rouzbeh/Graduate/Research/LLVM/ALC/test/Compiled_files", checksumkind: CSK_MD5, checksum: "6b476563d00e4aa9d35f2c5c2213d692")
!4 = !{!0, !5}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "out", scope: !2, file: !3, line: 18, type: !7, isLocal: false, isDefinition: true)
!7 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32000, elements: !9)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{!10}
!10 = !DISubrange(count: 1000)
!11 = !{i32 7, !"Dwarf Version", i32 5}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)"}
!16 = distinct !DISubprogram(name: "max", scope: !3, file: !3, line: 7, type: !17, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !20)
!17 = !DISubroutineType(types: !18)
!18 = !{!8, !8, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!20 = !{!21, !22, !23, !24}
!21 = !DILocalVariable(name: "n", arg: 1, scope: !16, file: !3, line: 7, type: !8)
!22 = !DILocalVariable(name: "h", arg: 2, scope: !16, file: !3, line: 7, type: !19)
!23 = !DILocalVariable(name: "i", scope: !16, file: !3, line: 8, type: !8)
!24 = !DILocalVariable(name: "m", scope: !16, file: !3, line: 9, type: !8)
!25 = !DILocation(line: 0, scope: !16)
!26 = !DILocation(line: 10, column: 14, scope: !16)
!27 = !DILocation(line: 10, column: 5, scope: !16)
!28 = !DILocation(line: 11, column: 13, scope: !29)
!29 = distinct !DILexicalBlock(scope: !30, file: !3, line: 11, column: 13)
!30 = distinct !DILexicalBlock(scope: !16, file: !3, line: 10, column: 19)
!31 = !{!32, !32, i64 0}
!32 = !{!"int", !33, i64 0}
!33 = !{!"omnipotent char", !34, i64 0}
!34 = !{!"Simple C/C++ TBAA"}
!35 = !DILocation(line: 11, column: 18, scope: !29)
!36 = !DILocation(line: 11, column: 13, scope: !30)
!37 = !DILocation(line: 12, column: 10, scope: !30)
!38 = distinct !{!38, !27, !39, !40, !41}
!39 = !DILocation(line: 13, column: 5, scope: !16)
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !DILocation(line: 14, column: 5, scope: !16)
!43 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 20, type: !44, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !49)
!44 = !DISubroutineType(types: !45)
!45 = !{!8, !8, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!49 = !{!50, !51, !52, !54}
!50 = !DILocalVariable(name: "argc", arg: 1, scope: !43, file: !3, line: 20, type: !8)
!51 = !DILocalVariable(name: "argv", arg: 2, scope: !43, file: !3, line: 20, type: !46)
!52 = !DILocalVariable(name: "i", scope: !53, file: !3, line: 22, type: !8)
!53 = distinct !DILexicalBlock(scope: !43, file: !3, line: 22, column: 5)
!54 = !DILocalVariable(name: "res", scope: !43, file: !3, line: 25, type: !8)
!55 = !DILocation(line: 0, scope: !43)
!56 = !DILocation(line: 0, scope: !53)
!57 = !DILocation(line: 22, column: 5, scope: !53)
!58 = !DILocation(line: 25, column: 5, scope: !43)
!59 = !DILocation(line: 0, scope: !16, inlinedAt: !60)
!60 = distinct !DILocation(line: 25, column: 15, scope: !43)
!61 = !DILocation(line: 10, column: 5, scope: !16, inlinedAt: !60)
!62 = !DILocation(line: 11, column: 13, scope: !29, inlinedAt: !60)
!63 = !DILocation(line: 11, column: 18, scope: !29, inlinedAt: !60)
!64 = !DILocation(line: 11, column: 13, scope: !30, inlinedAt: !60)
!65 = !DILocation(line: 12, column: 10, scope: !30, inlinedAt: !60)
!66 = !DILocation(line: 10, column: 14, scope: !16, inlinedAt: !60)
!67 = distinct !{!67, !61, !68, !40, !41}
!68 = !DILocation(line: 13, column: 5, scope: !16, inlinedAt: !60)
!69 = !DILocation(line: 25, column: 9, scope: !43)
!70 = !DILocation(line: 26, column: 5, scope: !43)
!71 = !DILocation(line: 28, column: 1, scope: !43)
!72 = !DILocation(line: 27, column: 5, scope: !43)
!73 = !DILocation(line: 23, column: 18, scope: !74)
!74 = distinct !DILexicalBlock(scope: !75, file: !3, line: 22, column: 42)
!75 = distinct !DILexicalBlock(scope: !53, file: !3, line: 22, column: 5)
!76 = !DILocation(line: 23, column: 17, scope: !74)
!77 = !DILocation(line: 23, column: 9, scope: !74)
!78 = !DILocation(line: 22, column: 38, scope: !75)
!79 = !DILocation(line: 22, column: 23, scope: !75)
!80 = distinct !{!80, !57, !81, !40, !41}
!81 = !DILocation(line: 24, column: 5, scope: !53)
!82 = !DISubprogram(name: "read", scope: !83, file: !83, line: 360, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !95)
!83 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!84 = !DISubroutineType(types: !85)
!85 = !{!86, !8, !91, !92}
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !87, line: 77, baseType: !88)
!87 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !89, line: 193, baseType: !90)
!89 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!90 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !93, line: 46, baseType: !94)
!93 = !DIFile(filename: "llvm-project/build/lib/clang/14.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/Research/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!94 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!95 = !{}
!96 = !DISubprogram(name: "write", scope: !83, file: !83, line: 366, type: !97, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !95)
!97 = !DISubroutineType(types: !98)
!98 = !{!86, !8, !99, !92}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
