; ModuleID = 'loop.c'
source_filename = "loop.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv6kz-unknown-linux-gnueabihf"

; Function Attrs: argmemonly nofree nosync nounwind readonly
define dso_local i32 @dijkstra(i32 noundef %n, i32 noundef %s, ptr nocapture noundef readonly %e) local_unnamed_addr #0 !dbg !13 {
entry:
  %dis = alloca [512 x i32], align 4
  call void @llvm.dbg.value(metadata i32 %n, metadata !22, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.value(metadata i32 %s, metadata !23, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.value(metadata ptr %e, metadata !24, metadata !DIExpression()), !dbg !30
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %dis) #6, !dbg !31
  call void @llvm.dbg.declare(metadata ptr %dis, metadata !26, metadata !DIExpression()), !dbg !32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(2048) %dis, i8 0, i32 2048, i1 false), !dbg !32
  call void @llvm.dbg.value(metadata i32 1000000, metadata !27, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.value(metadata i32 undef, metadata !25, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.value(metadata i32 0, metadata !28, metadata !DIExpression()), !dbg !33
  %cmp18 = icmp sgt i32 %n, 0, !dbg !34
  br i1 %cmp18, label %for.body, label %for.cond.cleanup, !dbg !36

for.cond.cleanup:                                 ; preds = %for.body, %entry
  %sub = add nsw i32 %n, -1, !dbg !37
  %arrayidx8 = getelementptr inbounds [512 x i32], ptr %dis, i32 0, i32 %sub, !dbg !38
  %0 = load i32, ptr %arrayidx8, align 4, !dbg !38, !tbaa !39
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %dis) #6, !dbg !43
  ret i32 %0, !dbg !44

for.body:                                         ; preds = %entry, %for.body
  %i.019 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i32 %i.019, metadata !28, metadata !DIExpression()), !dbg !33
  %arrayidx2 = getelementptr inbounds [512 x i32], ptr %e, i32 %s, i32 %i.019, !dbg !45
  %1 = load i32, ptr %arrayidx2, align 4, !dbg !45, !tbaa !39
  %cmp3 = icmp eq i32 %1, 0, !dbg !48
  %spec.select = select i1 %cmp3, i32 1000000, i32 %1, !dbg !49
  %2 = getelementptr inbounds [512 x i32], ptr %dis, i32 0, i32 %i.019, !dbg !50
  store i32 %spec.select, ptr %2, align 4, !dbg !52
  %inc = add nuw nsw i32 %i.019, 1, !dbg !53
  call void @llvm.dbg.value(metadata i32 %inc, metadata !28, metadata !DIExpression()), !dbg !33
  %exitcond.not = icmp eq i32 %inc, %n, !dbg !34
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !36, !llvm.loop !54
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn
define dso_local i32 @main() local_unnamed_addr #4 !dbg !58 {
entry:
  ret i32 0, !dbg !62
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { argmemonly nofree nosync nounwind readonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1176jzf-s" "target-features"="+armv6kz,+dsp,+fp64,+strict-align,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree norecurse nosync nounwind readnone willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1176jzf-s" "target-features"="+armv6kz,+dsp,+fp64,+strict-align,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "loop.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/test", checksumkind: CSK_MD5, checksum: "2dc758b34530a7da2189a085b7920e62")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!13 = distinct !DISubprogram(name: "dijkstra", scope: !1, file: !1, line: 22, type: !14, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !21)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !16, !16, !17}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 32)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 16384, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 512)
!21 = !{!22, !23, !24, !25, !26, !27, !28}
!22 = !DILocalVariable(name: "n", arg: 1, scope: !13, file: !1, line: 22, type: !16)
!23 = !DILocalVariable(name: "s", arg: 2, scope: !13, file: !1, line: 22, type: !16)
!24 = !DILocalVariable(name: "e", arg: 3, scope: !13, file: !1, line: 22, type: !17)
!25 = !DILocalVariable(name: "vis", scope: !13, file: !1, line: 23, type: !18)
!26 = !DILocalVariable(name: "dis", scope: !13, file: !1, line: 24, type: !18)
!27 = !DILocalVariable(name: "max", scope: !13, file: !1, line: 25, type: !16)
!28 = !DILocalVariable(name: "i", scope: !29, file: !1, line: 27, type: !16)
!29 = distinct !DILexicalBlock(scope: !13, file: !1, line: 27, column: 5)
!30 = !DILocation(line: 0, scope: !13)
!31 = !DILocation(line: 24, column: 5, scope: !13)
!32 = !DILocation(line: 24, column: 9, scope: !13)
!33 = !DILocation(line: 0, scope: !29)
!34 = !DILocation(line: 27, column: 23, scope: !35)
!35 = distinct !DILexicalBlock(scope: !29, file: !1, line: 27, column: 5)
!36 = !DILocation(line: 27, column: 5, scope: !29)
!37 = !DILocation(line: 34, column: 17, scope: !13)
!38 = !DILocation(line: 34, column: 12, scope: !13)
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !DILocation(line: 35, column: 1, scope: !13)
!44 = !DILocation(line: 34, column: 5, scope: !13)
!45 = !DILocation(line: 28, column: 13, scope: !46)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 28, column: 13)
!47 = distinct !DILexicalBlock(scope: !35, file: !1, line: 27, column: 33)
!48 = !DILocation(line: 28, column: 21, scope: !46)
!49 = !DILocation(line: 28, column: 13, scope: !47)
!50 = !DILocation(line: 29, column: 13, scope: !51)
!51 = distinct !DILexicalBlock(scope: !46, file: !1, line: 28, column: 27)
!52 = !DILocation(line: 29, column: 20, scope: !51)
!53 = !DILocation(line: 27, column: 28, scope: !35)
!54 = distinct !{!54, !36, !55, !56, !57}
!55 = !DILocation(line: 33, column: 5, scope: !29)
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 37, type: !59, scopeLine: 37, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !61)
!59 = !DISubroutineType(types: !60)
!60 = !{!16}
!61 = !{}
!62 = !DILocation(line: 43, column: 1, scope: !58)
