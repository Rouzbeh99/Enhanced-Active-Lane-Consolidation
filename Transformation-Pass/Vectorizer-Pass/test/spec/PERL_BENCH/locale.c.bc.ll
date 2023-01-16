; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r/llvm-ir/500.perlbench_r_bc/src/locale.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/locale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.17, %union._xivu }
%union._xmgu = type { ptr }
%union.anon.17 = type { i64 }
%union._xivu = type { i64 }

@PL_compiling = external local_unnamed_addr global %struct.cop, align 8
@PL_curcop = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@PL_sv_placeholder = external global %struct.sv, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @Perl_new_numeric(ptr nocapture noundef %newnum) local_unnamed_addr #0 !dbg !608 {
entry:
  call void @llvm.dbg.value(metadata ptr %newnum, metadata !613, metadata !DIExpression()), !dbg !614
  ret void, !dbg !615
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @Perl_set_numeric_standard() local_unnamed_addr #0 !dbg !616 {
entry:
  ret void, !dbg !620
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @Perl_set_numeric_local() local_unnamed_addr #0 !dbg !621 {
entry:
  ret void, !dbg !622
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @Perl_new_ctype(ptr nocapture noundef %newctype) local_unnamed_addr #0 !dbg !623 {
entry:
  call void @llvm.dbg.value(metadata ptr %newctype, metadata !625, metadata !DIExpression()), !dbg !626
  ret void, !dbg !627
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @Perl__warn_problematic_locale() local_unnamed_addr #0 !dbg !628 {
entry:
  ret void, !dbg !629
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @Perl_new_collate(ptr nocapture noundef %newcoll) local_unnamed_addr #0 !dbg !630 {
entry:
  call void @llvm.dbg.value(metadata ptr %newcoll, metadata !632, metadata !DIExpression()), !dbg !633
  ret void, !dbg !634
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @Perl_init_i18nl10n(i32 noundef %printwarn) local_unnamed_addr #0 !dbg !635 {
entry:
  call void @llvm.dbg.value(metadata i32 %printwarn, metadata !639, metadata !DIExpression()), !dbg !641
  call void @llvm.dbg.value(metadata i32 1, metadata !640, metadata !DIExpression()), !dbg !641
  ret i32 1, !dbg !642
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl__is_in_locale_category(i1 noundef zeroext %compiling, i32 noundef %category) local_unnamed_addr #1 !dbg !643 {
entry:
  call void @llvm.dbg.value(metadata i1 %compiling, metadata !649, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !682
  call void @llvm.dbg.value(metadata i32 %category, metadata !650, metadata !DIExpression()), !dbg !682
  %0 = load ptr, ptr @PL_curcop, align 8
  %spec.select = select i1 %compiling, ptr @PL_compiling, ptr %0, !dbg !683
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !651, metadata !DIExpression()), !dbg !682
  %cop_hints_hash = getelementptr inbounds %struct.cop, ptr %spec.select, i64 0, i32 13, !dbg !684
  %1 = load ptr, ptr %cop_hints_hash, align 8, !dbg !684
  %call = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %1, ptr noundef nonnull @.str, i64 noundef 6, i32 noundef 0, i32 noundef 0) #5, !dbg !684
  call void @llvm.dbg.value(metadata ptr %call, metadata !681, metadata !DIExpression()), !dbg !682
  %tobool1 = icmp eq ptr %call, null, !dbg !685
  %cmp = icmp eq ptr %call, @PL_sv_placeholder
  %or.cond = or i1 %tobool1, %cmp, !dbg !687
  br i1 %or.cond, label %cleanup, label %if.end, !dbg !687

if.end:                                           ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv, ptr %call, i64 0, i32 2, !dbg !688
  %2 = load i32, ptr %sv_flags, align 4, !dbg !688
  %and = and i32 %2, -2145386240, !dbg !688
  %cmp2 = icmp eq i32 %and, -2147483392, !dbg !688
  br i1 %cmp2, label %cond.true3, label %cond.false4, !dbg !688

cond.true3:                                       ; preds = %if.end
  %3 = load ptr, ptr %call, align 8, !dbg !688
  %xuv_u = getelementptr inbounds %struct.xpvuv, ptr %3, i64 0, i32 4, !dbg !688
  %4 = load i64, ptr %xuv_u, align 8, !dbg !688
  br label %cond.end6, !dbg !688

cond.false4:                                      ; preds = %if.end
  %call5 = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %call, i32 noundef 2) #5, !dbg !688
  br label %cond.end6, !dbg !688

cond.end6:                                        ; preds = %cond.false4, %cond.true3
  %cond7 = phi i64 [ %4, %cond.true3 ], [ %call5, %cond.false4 ], !dbg !688
  %add = add nsw i32 %category, 1, !dbg !688
  %shl = shl nuw i32 1, %add, !dbg !688
  %conv = zext i32 %shl to i64, !dbg !688
  %and8 = and i64 %cond7, %conv, !dbg !688
  %tobool9 = icmp ne i64 %and8, 0, !dbg !688
  br label %cleanup, !dbg !689

cleanup:                                          ; preds = %entry, %cond.end6
  %retval.0 = phi i1 [ %tobool9, %cond.end6 ], [ false, %entry ], !dbg !682
  ret i1 %retval.0, !dbg !690
}

declare !dbg !691 ptr @Perl_refcounted_he_fetch_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !697 i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_my_strerror(i32 noundef %errnum) local_unnamed_addr #1 !dbg !700 {
entry:
  call void @llvm.dbg.value(metadata i32 %errnum, metadata !704, metadata !DIExpression()), !dbg !705
  %call = tail call ptr @strerror(i32 noundef %errnum) #5, !dbg !706
  ret ptr %call, !dbg !707
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @Perl_sync_locale() local_unnamed_addr #0 !dbg !708 {
entry:
  ret void, !dbg !709
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!601, !602, !603, !604, !605, !606}
!llvm.ident = !{!607}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/locale.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r", checksumkind: CSK_MD5, checksum: "1255bd9fadcfd06ca7bdd2917c339af3")
!2 = !{!3, !47, !328}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "COPHH", file: !5, line: 170, baseType: !6)
!5 = !DIFile(filename: "apps/500.perlbench_r/src/cop.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "64d4f81e93be43c58d053d27101a3a5e")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcounted_he", file: !7, line: 523, size: 256, elements: !8)
!7 = !DIFile(filename: "apps/500.perlbench_r/src/hv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "27f8e9a41fdec76d9a4a382c2975f411")
!8 = !{!9, !11, !29, !45, !46}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_next", scope: !6, file: !7, line: 524, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_hek", scope: !6, file: !7, line: 529, baseType: !12, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "HEK", file: !14, line: 187, baseType: !15)
!14 = !DIFile(filename: "apps/500.perlbench_r/src/sv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e8ddee5f0a5032210b880c8e95bcea58")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hek", file: !7, line: 45, size: 96, elements: !16)
!16 = !{!17, !21, !24}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "hek_hash", scope: !15, file: !7, line: 46, baseType: !18, size: 32)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "U32", file: !19, line: 175, baseType: !20)
!19 = !DIFile(filename: "apps/500.perlbench_r/src/handy.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c8309d47b4ac9e3aa493b22b0023a43d")
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "hek_len", scope: !15, file: !7, line: 47, baseType: !22, size: 32, offset: 32)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "I32", file: !19, line: 174, baseType: !23)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "hek_key", scope: !15, file: !7, line: 48, baseType: !25, size: 8, offset: 64)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8, elements: !27)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !{!28}
!28 = !DISubrange(count: 1)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_val", scope: !6, file: !7, line: 536, baseType: !30, size: 64, offset: 128)
!30 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6, file: !7, line: 531, size: 64, elements: !31)
!31 = !{!32, !36, !39, !43}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_u_iv", scope: !30, file: !7, line: 532, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !34, line: 1670, baseType: !35)
!34 = !DIFile(filename: "apps/500.perlbench_r/src/perl.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d6cbd7c2824e8e37adbd28e0286c9085")
!35 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_u_uv", scope: !30, file: !7, line: 533, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "UV", file: !34, line: 1671, baseType: !38)
!38 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_u_len", scope: !30, file: !7, line: 534, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRLEN", file: !34, line: 2615, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !42, line: 46, baseType: !38)
!42 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!43 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_u_ptr", scope: !30, file: !7, line: 535, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_refcnt", scope: !6, file: !7, line: 537, baseType: !18, size: 32, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_data", scope: !6, file: !7, line: 540, baseType: !25, size: 8, offset: 224)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVUV", file: !34, line: 2661, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvuv", file: !14, line: 510, size: 320, elements: !50)
!50 = !{!51, !593, !594, !595, !600}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !49, file: !14, line: 511, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "HV", file: !34, line: 2649, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv", file: !14, line: 246, size: 192, elements: !55)
!55 = !{!56, !578, !579, !580}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !54, file: !14, line: 247, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVHV", file: !34, line: 2667, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvhv", file: !7, line: 130, size: 256, elements: !60)
!60 = !{!61, !62, !576, !577}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !59, file: !7, line: 131, baseType: !52, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !59, file: !7, line: 132, baseType: !63, size: 64, offset: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xmgu", file: !14, line: 494, size: 64, elements: !64)
!64 = !{!65, !575}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_magic", scope: !63, file: !14, line: 495, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAGIC", file: !34, line: 2658, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "magic", file: !69, line: 23, size: 384, elements: !70)
!69 = !DIFile(filename: "apps/500.perlbench_r/src/mg.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4fa2ae981502c39a9854b719090d263f")
!70 = !{!71, !72, !567, !570, !571, !572, !573, !574}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "mg_moremagic", scope: !68, file: !69, line: 24, baseType: !66, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "mg_virtual", scope: !68, file: !69, line: 25, baseType: !73, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "MGVTBL", file: !34, line: 2673, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mgvtbl", file: !69, line: 11, size: 512, elements: !76)
!76 = !{!77, !537, !538, !542, !543, !544, !548, !566}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "svt_get", scope: !75, file: !69, line: 12, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{!23, !81, !66}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "SV", file: !34, line: 2647, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sv", file: !14, line: 218, size: 192, elements: !84)
!84 = !{!85, !86, !87, !88}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !83, file: !14, line: 219, baseType: !44, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !83, file: !14, line: 219, baseType: !18, size: 32, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !83, file: !14, line: 219, baseType: !18, size: 32, offset: 96)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !83, file: !14, line: 220, baseType: !89, size: 64, offset: 128)
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !83, file: !14, line: 220, size: 64, elements: !90)
!90 = !{!91, !93, !94, !95, !98, !99, !533, !534, !535, !536}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !89, file: !14, line: 220, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !89, file: !14, line: 220, baseType: !33, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !89, file: !14, line: 220, baseType: !37, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !89, file: !14, line: 220, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "NV", file: !34, line: 1877, baseType: !97)
!97 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !89, file: !14, line: 220, baseType: !81, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !89, file: !14, line: 220, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp", file: !102, line: 140, size: 1536, elements: !103)
!102 = !DIFile(filename: "apps/500.perlbench_r/src/regexp.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "83285f03b848d0cf5e30c9354282eae6")
!103 = !{!104, !105, !106, !107, !112, !489, !490, !491, !492, !493, !494, !495, !511, !512, !513, !514, !515, !516, !524, !525, !526, !527, !528, !529, !530, !531, !532}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !101, file: !102, line: 141, baseType: !52, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !101, file: !102, line: 141, baseType: !63, size: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !101, file: !102, line: 141, baseType: !40, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !101, file: !102, line: 141, baseType: !108, size: 64, offset: 192)
!108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !101, file: !102, line: 141, size: 64, elements: !109)
!109 = !{!110, !111}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !108, file: !102, line: 141, baseType: !40, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !108, file: !102, line: 141, baseType: !92, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !101, file: !102, line: 142, baseType: !113, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp_engine", file: !102, line: 157, size: 768, elements: !116)
!116 = !{!117, !429, !434, !450, !454, !458, !463, !470, !474, !478, !482, !483}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !115, file: !102, line: 158, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!121, !428, !18}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "REGEXP", file: !34, line: 2651, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p5rx", file: !14, line: 256, size: 192, elements: !124)
!124 = !{!125, !126, !127, !128}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !123, file: !14, line: 257, baseType: !100, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !123, file: !14, line: 257, baseType: !18, size: 32, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !123, file: !14, line: 257, baseType: !18, size: 32, offset: 96)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !123, file: !14, line: 258, baseType: !129, size: 64, offset: 128)
!129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !123, file: !14, line: 258, size: 64, elements: !130)
!130 = !{!131, !132, !133, !134, !135, !136, !137, !139, !152, !427}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !129, file: !14, line: 258, baseType: !92, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !129, file: !14, line: 258, baseType: !33, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !129, file: !14, line: 258, baseType: !37, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !129, file: !14, line: 258, baseType: !96, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !129, file: !14, line: 258, baseType: !81, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !129, file: !14, line: 258, baseType: !100, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !129, file: !14, line: 258, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !129, file: !14, line: 258, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "HE", file: !14, line: 186, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "he", file: !7, line: 32, size: 192, elements: !144)
!144 = !{!145, !146, !147}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "hent_next", scope: !143, file: !7, line: 36, baseType: !141, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "hent_hek", scope: !143, file: !7, line: 37, baseType: !12, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "he_valu", scope: !143, file: !7, line: 41, baseType: !148, size: 64, offset: 128)
!148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !143, file: !7, line: 38, size: 64, elements: !149)
!149 = !{!150, !151}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "hent_val", scope: !148, file: !7, line: 39, baseType: !81, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "hent_refcount", scope: !148, file: !7, line: 40, baseType: !41, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !129, file: !14, line: 258, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "GP", file: !34, line: 2652, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gp", file: !156, line: 11, size: 640, elements: !157)
!156 = !DIFile(filename: "apps/500.perlbench_r/src/gv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9bb5d31ae54fd87680f22708385557b3")
!157 = !{!158, !159, !269, !417, !418, !419, !420, !422, !423, !424, !425, !426}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "gp_sv", scope: !155, file: !156, line: 12, baseType: !81, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "gp_io", scope: !155, file: !156, line: 13, baseType: !160, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io", file: !14, line: 251, size: 192, elements: !162)
!162 = !{!163, !254, !255, !256}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !161, file: !14, line: 252, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVIO", file: !34, line: 2672, baseType: !166)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvio", file: !14, line: 603, size: 1088, elements: !167)
!167 = !{!168, !169, !170, !171, !176, !182, !189, !198, !199, !200, !201, !202, !246, !247, !248, !249, !250, !251}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !166, file: !14, line: 604, baseType: !52, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !166, file: !14, line: 604, baseType: !63, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !166, file: !14, line: 604, baseType: !40, size: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !166, file: !14, line: 604, baseType: !172, size: 64, offset: 192)
!172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !166, file: !14, line: 604, size: 64, elements: !173)
!173 = !{!174, !175}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !172, file: !14, line: 604, baseType: !40, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !172, file: !14, line: 604, baseType: !92, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !166, file: !14, line: 605, baseType: !177, size: 64, offset: 256)
!177 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xivu", file: !14, line: 488, size: 64, elements: !178)
!178 = !{!179, !180, !181}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_iv", scope: !177, file: !14, line: 489, baseType: !33, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_uv", scope: !177, file: !14, line: 490, baseType: !37, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_namehek", scope: !177, file: !14, line: 491, baseType: !12, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "xio_ofp", scope: !166, file: !14, line: 607, baseType: !183, size: 64, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIO", file: !185, line: 85, baseType: !186)
!185 = !DIFile(filename: "apps/500.perlbench_r/src/perlio.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "97551467ae05102ac1f9e2f28362d918")
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIOl", file: !185, line: 83, baseType: !188)
!188 = !DICompositeType(tag: DW_TAG_structure_type, name: "_PerlIO", file: !185, line: 83, flags: DIFlagFwdDecl)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "xio_dirpu", scope: !166, file: !14, line: 620, baseType: !190, size: 64, offset: 384)
!190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !166, file: !14, line: 617, size: 64, elements: !191)
!191 = !{!192, !197}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "xiou_dirp", scope: !190, file: !14, line: 618, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !195, line: 127, baseType: !196)
!195 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "33c45a2c20a17fc93667c8d9aa922ab0")
!196 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !195, line: 127, flags: DIFlagFwdDecl)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "xiou_any", scope: !190, file: !14, line: 619, baseType: !44, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "xio_page", scope: !166, file: !14, line: 622, baseType: !33, size: 64, offset: 448)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "xio_page_len", scope: !166, file: !14, line: 623, baseType: !33, size: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "xio_lines_left", scope: !166, file: !14, line: 624, baseType: !33, size: 64, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "xio_top_name", scope: !166, file: !14, line: 625, baseType: !92, size: 64, offset: 640)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "xio_top_gv", scope: !166, file: !14, line: 626, baseType: !203, size: 64, offset: 704)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "GV", file: !34, line: 2653, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gv", file: !14, line: 231, size: 192, elements: !206)
!206 = !{!207, !231, !232, !233}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !205, file: !14, line: 232, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVGV", file: !34, line: 2668, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvgv", file: !14, line: 561, size: 384, elements: !211)
!211 = !{!212, !213, !214, !215, !220, !221}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !210, file: !14, line: 562, baseType: !52, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !210, file: !14, line: 562, baseType: !63, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !210, file: !14, line: 562, baseType: !40, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !210, file: !14, line: 562, baseType: !216, size: 64, offset: 192)
!216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !210, file: !14, line: 562, size: 64, elements: !217)
!217 = !{!218, !219}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !216, file: !14, line: 562, baseType: !40, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !216, file: !14, line: 562, baseType: !92, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !210, file: !14, line: 563, baseType: !177, size: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_u", scope: !210, file: !14, line: 564, baseType: !222, size: 64, offset: 320)
!222 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xnvu", file: !14, line: 479, size: 64, elements: !223)
!223 = !{!224, !225, !226}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_nv", scope: !222, file: !14, line: 480, baseType: !96, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "xgv_stash", scope: !222, file: !14, line: 481, baseType: !52, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "xpad_cop_seq", scope: !222, file: !14, line: 485, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !222, file: !14, line: 482, size: 64, elements: !228)
!228 = !{!229, !230}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "xlow", scope: !227, file: !14, line: 483, baseType: !18, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "xhigh", scope: !227, file: !14, line: 484, baseType: !18, size: 32, offset: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !205, file: !14, line: 232, baseType: !18, size: 32, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !205, file: !14, line: 232, baseType: !18, size: 32, offset: 96)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !205, file: !14, line: 233, baseType: !234, size: 64, offset: 128)
!234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !205, file: !14, line: 233, size: 64, elements: !235)
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !244, !245}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !234, file: !14, line: 233, baseType: !92, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !234, file: !14, line: 233, baseType: !33, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !234, file: !14, line: 233, baseType: !37, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !234, file: !14, line: 233, baseType: !96, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !234, file: !14, line: 233, baseType: !81, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !234, file: !14, line: 233, baseType: !100, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !234, file: !14, line: 233, baseType: !138, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !234, file: !14, line: 233, baseType: !140, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !234, file: !14, line: 233, baseType: !153, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !234, file: !14, line: 233, baseType: !183, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "xio_fmt_name", scope: !166, file: !14, line: 627, baseType: !92, size: 64, offset: 768)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "xio_fmt_gv", scope: !166, file: !14, line: 628, baseType: !203, size: 64, offset: 832)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "xio_bottom_name", scope: !166, file: !14, line: 629, baseType: !92, size: 64, offset: 896)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "xio_bottom_gv", scope: !166, file: !14, line: 630, baseType: !203, size: 64, offset: 960)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "xio_type", scope: !166, file: !14, line: 631, baseType: !26, size: 8, offset: 1024)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "xio_flags", scope: !166, file: !14, line: 632, baseType: !252, size: 8, offset: 1032)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "U8", file: !19, line: 171, baseType: !253)
!253 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !161, file: !14, line: 252, baseType: !18, size: 32, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !161, file: !14, line: 252, baseType: !18, size: 32, offset: 96)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !161, file: !14, line: 253, baseType: !257, size: 64, offset: 128)
!257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !161, file: !14, line: 253, size: 64, elements: !258)
!258 = !{!259, !260, !261, !262, !263, !264, !265, !266, !267, !268}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !257, file: !14, line: 253, baseType: !92, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !257, file: !14, line: 253, baseType: !33, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !257, file: !14, line: 253, baseType: !37, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !257, file: !14, line: 253, baseType: !96, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !257, file: !14, line: 253, baseType: !81, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !257, file: !14, line: 253, baseType: !100, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !257, file: !14, line: 253, baseType: !138, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !257, file: !14, line: 253, baseType: !140, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !257, file: !14, line: 253, baseType: !153, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !257, file: !14, line: 253, baseType: !183, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "gp_cv", scope: !155, file: !156, line: 14, baseType: !270, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "CV", file: !34, line: 2650, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cv", file: !14, line: 236, size: 192, elements: !273)
!273 = !{!274, !402, !403, !404}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !272, file: !14, line: 237, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVCV", file: !34, line: 2669, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvcv", file: !278, line: 13, size: 832, elements: !279)
!278 = !DIFile(filename: "apps/500.perlbench_r/src/cv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b8f33b415055b936fc8991c908273806")
!279 = !{!280, !281, !282, !283, !288, !289, !334, !342, !347, !348, !397, !398, !399, !401}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !277, file: !278, line: 14, baseType: !52, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !277, file: !278, line: 14, baseType: !63, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !277, file: !278, line: 14, baseType: !40, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !277, file: !278, line: 14, baseType: !284, size: 64, offset: 192)
!284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !277, file: !278, line: 14, size: 64, elements: !285)
!285 = !{!286, !287}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !284, file: !278, line: 14, baseType: !40, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !284, file: !278, line: 14, baseType: !92, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_stash", scope: !277, file: !278, line: 15, baseType: !52, size: 64, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_start_u", scope: !277, file: !278, line: 15, baseType: !290, size: 64, offset: 320)
!290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !277, file: !278, line: 15, size: 64, elements: !291)
!291 = !{!292, !317}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_start", scope: !290, file: !278, line: 15, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "OP", file: !34, line: 2617, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "op", file: !296, line: 202, size: 320, elements: !297)
!296 = !DIFile(filename: "apps/500.perlbench_r/src/op.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b88d747a6f3149f06a4a1e8e725e6800")
!297 = !{!298, !299, !300, !304, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !295, file: !296, line: 203, baseType: !293, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !295, file: !296, line: 203, baseType: !293, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !295, file: !296, line: 203, baseType: !301, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!293}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !295, file: !296, line: 203, baseType: !305, size: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADOFFSET", file: !306, line: 25, baseType: !38)
!306 = !DIFile(filename: "apps/500.perlbench_r/src/pad.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07d0fc40568e154e930466504379a358")
!307 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !295, file: !296, line: 203, baseType: !20, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !295, file: !296, line: 203, baseType: !20, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !295, file: !296, line: 203, baseType: !20, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !295, file: !296, line: 203, baseType: !20, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !295, file: !296, line: 203, baseType: !20, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !295, file: !296, line: 203, baseType: !20, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !295, file: !296, line: 203, baseType: !20, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !295, file: !296, line: 203, baseType: !20, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !295, file: !296, line: 203, baseType: !252, size: 8, offset: 272)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !295, file: !296, line: 203, baseType: !252, size: 8, offset: 280)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_xsubany", scope: !290, file: !278, line: 15, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "ANY", file: !34, line: 2674, baseType: !319)
!319 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "any", file: !34, line: 3691, size: 64, elements: !320)
!320 = !{!321, !322, !323, !324, !325, !326, !327, !329, !333}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "any_ptr", scope: !319, file: !34, line: 3692, baseType: !44, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "any_i32", scope: !319, file: !34, line: 3693, baseType: !22, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "any_u32", scope: !319, file: !34, line: 3694, baseType: !18, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "any_iv", scope: !319, file: !34, line: 3695, baseType: !33, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "any_uv", scope: !319, file: !34, line: 3696, baseType: !37, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "any_long", scope: !319, file: !34, line: 3697, baseType: !35, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "any_bool", scope: !319, file: !34, line: 3698, baseType: !328, size: 8)
!328 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "any_dptr", scope: !319, file: !34, line: 3699, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !44}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "any_dxptr", scope: !319, file: !34, line: 3700, baseType: !330, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_root_u", scope: !277, file: !278, line: 15, baseType: !335, size: 64, offset: 384)
!335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !277, file: !278, line: 15, size: 64, elements: !336)
!336 = !{!337, !338}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_root", scope: !335, file: !278, line: 15, baseType: !293, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_xsub", scope: !335, file: !278, line: 15, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !270}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_gv_u", scope: !277, file: !278, line: 15, baseType: !343, size: 64, offset: 448)
!343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !277, file: !278, line: 15, size: 64, elements: !344)
!344 = !{!345, !346}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_gv", scope: !343, file: !278, line: 15, baseType: !203, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_hek", scope: !343, file: !278, line: 15, baseType: !12, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_file", scope: !277, file: !278, line: 15, baseType: !92, size: 64, offset: 512)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_padlist_u", scope: !277, file: !278, line: 15, baseType: !349, size: 64, offset: 576)
!349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !277, file: !278, line: 15, size: 64, elements: !350)
!350 = !{!351, !396}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_padlist", scope: !349, file: !278, line: 15, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADLIST", file: !34, line: 2681, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "padlist", file: !306, line: 34, size: 192, elements: !355)
!355 = !{!356, !361, !394, !395}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_max", scope: !354, file: !306, line: 35, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !358, line: 108, baseType: !359)
!358 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !360, line: 193, baseType: !35)
!360 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!361 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_alloc", scope: !354, file: !306, line: 36, baseType: !362, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "PAD", file: !34, line: 2682, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "AV", file: !34, line: 2648, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "av", file: !14, line: 241, size: 192, elements: !367)
!367 = !{!368, !379, !380, !381}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !366, file: !14, line: 242, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVAV", file: !34, line: 2666, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvav", file: !372, line: 11, size: 320, elements: !373)
!372 = !DIFile(filename: "apps/500.perlbench_r/src/av.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3a1f05c53eedc93ff5262833cf63fc72")
!373 = !{!374, !375, !376, !377, !378}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !371, file: !372, line: 12, baseType: !52, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !371, file: !372, line: 13, baseType: !63, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "xav_fill", scope: !371, file: !372, line: 14, baseType: !357, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "xav_max", scope: !371, file: !372, line: 15, baseType: !357, size: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "xav_alloc", scope: !371, file: !372, line: 16, baseType: !138, size: 64, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !366, file: !14, line: 242, baseType: !18, size: 32, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !366, file: !14, line: 242, baseType: !18, size: 32, offset: 96)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !366, file: !14, line: 243, baseType: !382, size: 64, offset: 128)
!382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !366, file: !14, line: 243, size: 64, elements: !383)
!383 = !{!384, !385, !386, !387, !388, !389, !390, !391, !392, !393}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !382, file: !14, line: 243, baseType: !92, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !382, file: !14, line: 243, baseType: !33, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !382, file: !14, line: 243, baseType: !37, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !382, file: !14, line: 243, baseType: !96, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !382, file: !14, line: 243, baseType: !81, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !382, file: !14, line: 243, baseType: !100, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !382, file: !14, line: 243, baseType: !138, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !382, file: !14, line: 243, baseType: !140, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !382, file: !14, line: 243, baseType: !153, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !382, file: !14, line: 243, baseType: !183, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_id", scope: !354, file: !306, line: 37, baseType: !18, size: 32, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_outid", scope: !354, file: !306, line: 38, baseType: !18, size: 32, offset: 160)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_hscxt", scope: !349, file: !278, line: 15, baseType: !44, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_outside", scope: !277, file: !278, line: 15, baseType: !270, size: 64, offset: 640)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_outside_seq", scope: !277, file: !278, line: 15, baseType: !18, size: 32, offset: 704)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_flags", scope: !277, file: !278, line: 15, baseType: !400, size: 32, offset: 736)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "cv_flags_t", file: !14, line: 567, baseType: !18)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_depth", scope: !277, file: !278, line: 15, baseType: !22, size: 32, offset: 768)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !272, file: !14, line: 237, baseType: !18, size: 32, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !272, file: !14, line: 237, baseType: !18, size: 32, offset: 96)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !272, file: !14, line: 238, baseType: !405, size: 64, offset: 128)
!405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !272, file: !14, line: 238, size: 64, elements: !406)
!406 = !{!407, !408, !409, !410, !411, !412, !413, !414, !415, !416}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !405, file: !14, line: 238, baseType: !92, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !405, file: !14, line: 238, baseType: !33, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !405, file: !14, line: 238, baseType: !37, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !405, file: !14, line: 238, baseType: !96, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !405, file: !14, line: 238, baseType: !81, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !405, file: !14, line: 238, baseType: !100, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !405, file: !14, line: 238, baseType: !138, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !405, file: !14, line: 238, baseType: !140, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !405, file: !14, line: 238, baseType: !153, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !405, file: !14, line: 238, baseType: !183, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "gp_cvgen", scope: !155, file: !156, line: 15, baseType: !18, size: 32, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "gp_refcnt", scope: !155, file: !156, line: 16, baseType: !18, size: 32, offset: 224)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "gp_hv", scope: !155, file: !156, line: 17, baseType: !52, size: 64, offset: 256)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "gp_av", scope: !155, file: !156, line: 18, baseType: !421, size: 64, offset: 320)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "gp_form", scope: !155, file: !156, line: 19, baseType: !270, size: 64, offset: 384)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "gp_egv", scope: !155, file: !156, line: 20, baseType: !203, size: 64, offset: 448)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "gp_line", scope: !155, file: !156, line: 21, baseType: !20, size: 31, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "gp_flags", scope: !155, file: !156, line: 22, baseType: !20, size: 1, offset: 543, flags: DIFlagBitField, extraData: i64 512)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "gp_file_hek", scope: !155, file: !156, line: 23, baseType: !12, size: 64, offset: 576)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !129, file: !14, line: 258, baseType: !183, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "exec", scope: !115, file: !102, line: 159, baseType: !430, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!22, !433, !92, !92, !92, !357, !81, !44, !18}
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "intuit", scope: !115, file: !102, line: 162, baseType: !435, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!92, !433, !81, !438, !92, !92, !441, !442}
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "re_scream_pos_data", file: !102, line: 152, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_scream_pos_data_s", file: !102, line: 148, size: 128, elements: !445)
!445 = !{!446, !448}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "scream_olds", scope: !444, file: !102, line: 150, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "scream_pos", scope: !444, file: !102, line: 151, baseType: !449, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "checkstr", scope: !115, file: !102, line: 170, baseType: !451, size: 64, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!81, !433}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !115, file: !102, line: 171, baseType: !455, size: 64, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !433}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_FETCH", scope: !115, file: !102, line: 172, baseType: !459, size: 64, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !433, !462, !428}
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_STORE", scope: !115, file: !102, line: 174, baseType: !464, size: 64, offset: 384)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !433, !462, !467}
!467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_LENGTH", scope: !115, file: !102, line: 176, baseType: !471, size: 64, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!22, !433, !467, !462}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "named_buff", scope: !115, file: !102, line: 178, baseType: !475, size: 64, offset: 512)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!81, !433, !428, !428, !441}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "named_buff_iter", scope: !115, file: !102, line: 180, baseType: !479, size: 64, offset: 576)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!81, !433, !467, !441}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "qr_package", scope: !115, file: !102, line: 182, baseType: !451, size: 64, offset: 640)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "op_comp", scope: !115, file: !102, line: 186, baseType: !484, size: 64, offset: 704)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!121, !487, !23, !293, !113, !121, !488, !18, !18}
!487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "mother_re", scope: !101, file: !102, line: 142, baseType: !121, size: 64, offset: 320)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "paren_names", scope: !101, file: !102, line: 142, baseType: !52, size: 64, offset: 384)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "extflags", scope: !101, file: !102, line: 142, baseType: !18, size: 32, offset: 448)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "minlen", scope: !101, file: !102, line: 142, baseType: !357, size: 64, offset: 512)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "minlenret", scope: !101, file: !102, line: 142, baseType: !357, size: 64, offset: 576)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "gofs", scope: !101, file: !102, line: 142, baseType: !40, size: 64, offset: 640)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "substrs", scope: !101, file: !102, line: 142, baseType: !496, size: 64, offset: 704)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_substr_data", file: !102, line: 45, size: 1024, elements: !498)
!498 = !{!499, !500}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "check_ix", scope: !497, file: !102, line: 46, baseType: !252, size: 8)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !497, file: !102, line: 47, baseType: !501, size: 960, offset: 64)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 960, elements: !509)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_substr_datum", file: !102, line: 38, size: 320, elements: !503)
!503 = !{!504, !505, !506, !507, !508}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "min_offset", scope: !502, file: !102, line: 39, baseType: !357, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "max_offset", scope: !502, file: !102, line: 40, baseType: !357, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !502, file: !102, line: 41, baseType: !81, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_substr", scope: !502, file: !102, line: 42, baseType: !81, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "end_shift", scope: !502, file: !102, line: 43, baseType: !357, size: 64, offset: 256)
!509 = !{!510}
!510 = !DISubrange(count: 3)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "nparens", scope: !101, file: !102, line: 142, baseType: !18, size: 32, offset: 768)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "intflags", scope: !101, file: !102, line: 142, baseType: !18, size: 32, offset: 800)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "pprivate", scope: !101, file: !102, line: 142, baseType: !44, size: 64, offset: 832)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "lastparen", scope: !101, file: !102, line: 142, baseType: !18, size: 32, offset: 896)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "lastcloseparen", scope: !101, file: !102, line: 142, baseType: !18, size: 32, offset: 928)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !101, file: !102, line: 142, baseType: !517, size: 64, offset: 960)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "regexp_paren_pair", file: !102, line: 68, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp_paren_pair", file: !102, line: 58, size: 192, elements: !520)
!520 = !{!521, !522, !523}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !519, file: !102, line: 59, baseType: !357, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !519, file: !102, line: 60, baseType: !357, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "start_tmp", scope: !519, file: !102, line: 67, baseType: !357, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "subbeg", scope: !101, file: !102, line: 142, baseType: !92, size: 64, offset: 1024)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "saved_copy", scope: !101, file: !102, line: 142, baseType: !81, size: 64, offset: 1088)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "sublen", scope: !101, file: !102, line: 142, baseType: !357, size: 64, offset: 1152)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "suboffset", scope: !101, file: !102, line: 142, baseType: !357, size: 64, offset: 1216)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "subcoffset", scope: !101, file: !102, line: 142, baseType: !357, size: 64, offset: 1280)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !101, file: !102, line: 142, baseType: !357, size: 64, offset: 1344)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "pre_prefix", scope: !101, file: !102, line: 142, baseType: !20, size: 4, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "compflags", scope: !101, file: !102, line: 142, baseType: !20, size: 9, offset: 1412, flags: DIFlagBitField, extraData: i64 1408)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "qr_anoncv", scope: !101, file: !102, line: 142, baseType: !270, size: 64, offset: 1472)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !89, file: !14, line: 220, baseType: !138, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !89, file: !14, line: 220, baseType: !140, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !89, file: !14, line: 220, baseType: !153, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !89, file: !14, line: 220, baseType: !183, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "svt_set", scope: !75, file: !69, line: 13, baseType: !78, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "svt_len", scope: !75, file: !69, line: 14, baseType: !539, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!18, !81, !66}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "svt_clear", scope: !75, file: !69, line: 15, baseType: !78, size: 64, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "svt_free", scope: !75, file: !69, line: 16, baseType: !78, size: 64, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "svt_copy", scope: !75, file: !69, line: 17, baseType: !545, size: 64, offset: 320)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!23, !81, !66, !81, !439, !22}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "svt_dup", scope: !75, file: !69, line: 19, baseType: !549, size: 64, offset: 384)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!23, !66, !552}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "CLONE_PARAMS", file: !34, line: 2677, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clone_params", file: !14, line: 2150, size: 320, elements: !555)
!555 = !{!556, !557, !558, !564, !565}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "stashes", scope: !554, file: !14, line: 2151, baseType: !421, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !554, file: !14, line: 2152, baseType: !37, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "proto_perl", scope: !554, file: !14, line: 2153, baseType: !559, size: 64, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlInterpreter", file: !34, line: 2639, baseType: !561)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "interpreter", file: !34, line: 5434, size: 8, elements: !562)
!562 = !{!563}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "broiled", scope: !561, file: !34, line: 5435, baseType: !26, size: 8)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "new_perl", scope: !554, file: !14, line: 2154, baseType: !559, size: 64, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "unreferenced", scope: !554, file: !14, line: 2155, baseType: !421, size: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "svt_local", scope: !75, file: !69, line: 20, baseType: !78, size: 64, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "mg_private", scope: !68, file: !69, line: 26, baseType: !568, size: 16, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "U16", file: !19, line: 173, baseType: !569)
!569 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "mg_type", scope: !68, file: !69, line: 27, baseType: !26, size: 8, offset: 144)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "mg_flags", scope: !68, file: !69, line: 28, baseType: !252, size: 8, offset: 152)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "mg_len", scope: !68, file: !69, line: 29, baseType: !357, size: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "mg_obj", scope: !68, file: !69, line: 30, baseType: !81, size: 64, offset: 256)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mg_ptr", scope: !68, file: !69, line: 31, baseType: !92, size: 64, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_hash_index", scope: !63, file: !14, line: 496, baseType: !40, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_keys", scope: !59, file: !7, line: 133, baseType: !40, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_max", scope: !59, file: !7, line: 134, baseType: !40, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !54, file: !14, line: 247, baseType: !18, size: 32, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !54, file: !14, line: 247, baseType: !18, size: 32, offset: 96)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !54, file: !14, line: 248, baseType: !581, size: 64, offset: 128)
!581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !54, file: !14, line: 248, size: 64, elements: !582)
!582 = !{!583, !584, !585, !586, !587, !588, !589, !590, !591, !592}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !581, file: !14, line: 248, baseType: !92, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !581, file: !14, line: 248, baseType: !33, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !581, file: !14, line: 248, baseType: !37, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !581, file: !14, line: 248, baseType: !96, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !581, file: !14, line: 248, baseType: !81, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !581, file: !14, line: 248, baseType: !100, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !581, file: !14, line: 248, baseType: !138, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !581, file: !14, line: 248, baseType: !140, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !581, file: !14, line: 248, baseType: !153, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !581, file: !14, line: 248, baseType: !183, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !49, file: !14, line: 511, baseType: !63, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !49, file: !14, line: 511, baseType: !40, size: 64, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !49, file: !14, line: 511, baseType: !596, size: 64, offset: 192)
!596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !49, file: !14, line: 511, size: 64, elements: !597)
!597 = !{!598, !599}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !596, file: !14, line: 511, baseType: !40, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !596, file: !14, line: 511, baseType: !92, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "xuv_u", scope: !49, file: !14, line: 512, baseType: !177, size: 64, offset: 256)
!601 = !{i32 7, !"Dwarf Version", i32 5}
!602 = !{i32 2, !"Debug Info Version", i32 3}
!603 = !{i32 1, !"wchar_size", i32 4}
!604 = !{i32 7, !"PIC Level", i32 2}
!605 = !{i32 7, !"PIE Level", i32 2}
!606 = !{i32 7, !"uwtable", i32 2}
!607 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!608 = distinct !DISubprogram(name: "Perl_new_numeric", scope: !609, file: !609, line: 146, type: !610, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !612)
!609 = !DIFile(filename: "apps/500.perlbench_r/src/locale.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1255bd9fadcfd06ca7bdd2917c339af3")
!610 = !DISubroutineType(types: !611)
!611 = !{null, !439}
!612 = !{!613}
!613 = !DILocalVariable(name: "newnum", arg: 1, scope: !608, file: !609, line: 146, type: !439)
!614 = !DILocation(line: 0, scope: !608)
!615 = !DILocation(line: 210, column: 1, scope: !608)
!616 = distinct !DISubprogram(name: "Perl_set_numeric_standard", scope: !609, file: !609, line: 213, type: !617, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !619)
!617 = !DISubroutineType(types: !618)
!618 = !{null}
!619 = !{}
!620 = !DILocation(line: 230, column: 1, scope: !616)
!621 = distinct !DISubprogram(name: "Perl_set_numeric_local", scope: !609, file: !609, line: 233, type: !617, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !619)
!622 = !DILocation(line: 251, column: 1, scope: !621)
!623 = distinct !DISubprogram(name: "Perl_new_ctype", scope: !609, file: !609, line: 257, type: !610, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !624)
!624 = !{!625}
!625 = !DILocalVariable(name: "newctype", arg: 1, scope: !623, file: !609, line: 257, type: !439)
!626 = !DILocation(line: 0, scope: !623)
!627 = !DILocation(line: 416, column: 1, scope: !623)
!628 = distinct !DISubprogram(name: "Perl__warn_problematic_locale", scope: !609, file: !609, line: 419, type: !617, scopeLine: 420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !619)
!629 = !DILocation(line: 442, column: 1, scope: !628)
!630 = distinct !DISubprogram(name: "Perl_new_collate", scope: !609, file: !609, line: 445, type: !610, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !631)
!631 = !{!632}
!632 = !DILocalVariable(name: "newcoll", arg: 1, scope: !630, file: !609, line: 445, type: !439)
!633 = !DILocation(line: 0, scope: !630)
!634 = !DILocation(line: 494, column: 1, scope: !630)
!635 = distinct !DISubprogram(name: "Perl_init_i18nl10n", scope: !609, file: !609, line: 634, type: !636, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !638)
!636 = !DISubroutineType(types: !637)
!637 = !{!23, !23}
!638 = !{!639, !640}
!639 = !DILocalVariable(name: "printwarn", arg: 1, scope: !635, file: !609, line: 634, type: !23)
!640 = !DILocalVariable(name: "ok", scope: !635, file: !609, line: 648, type: !23)
!641 = !DILocation(line: 0, scope: !635)
!642 = !DILocation(line: 1101, column: 5, scope: !635)
!643 = distinct !DISubprogram(name: "Perl__is_in_locale_category", scope: !609, file: !609, line: 1673, type: !644, scopeLine: 1674, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !648)
!644 = !DISubroutineType(types: !645)
!645 = !{!328, !646, !647}
!646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!648 = !{!649, !650, !651, !681}
!649 = !DILocalVariable(name: "compiling", arg: 1, scope: !643, file: !609, line: 1673, type: !646)
!650 = !DILocalVariable(name: "category", arg: 2, scope: !643, file: !609, line: 1673, type: !647)
!651 = !DILocalVariable(name: "cop", scope: !643, file: !609, line: 1680, type: !652)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !653)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "COP", file: !34, line: 2618, baseType: !656)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cop", file: !5, line: 393, size: 640, elements: !657)
!657 = !{!658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !674, !675, !676, !677, !678, !680}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !656, file: !5, line: 394, baseType: !293, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !656, file: !5, line: 394, baseType: !293, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !656, file: !5, line: 394, baseType: !301, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !656, file: !5, line: 394, baseType: !305, size: 64, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !656, file: !5, line: 394, baseType: !20, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !656, file: !5, line: 394, baseType: !20, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !656, file: !5, line: 394, baseType: !20, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !656, file: !5, line: 394, baseType: !20, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !656, file: !5, line: 394, baseType: !20, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !656, file: !5, line: 394, baseType: !20, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !656, file: !5, line: 394, baseType: !20, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !656, file: !5, line: 394, baseType: !20, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !656, file: !5, line: 394, baseType: !252, size: 8, offset: 272)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !656, file: !5, line: 394, baseType: !252, size: 8, offset: 280)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "cop_line", scope: !656, file: !5, line: 397, baseType: !673, size: 32, offset: 288)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "line_t", file: !19, line: 1734, baseType: !18)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "cop_stash", scope: !656, file: !5, line: 404, baseType: !52, size: 64, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "cop_filegv", scope: !656, file: !5, line: 405, baseType: !203, size: 64, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "cop_hints", scope: !656, file: !5, line: 407, baseType: !18, size: 32, offset: 448)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "cop_seq", scope: !656, file: !5, line: 408, baseType: !18, size: 32, offset: 480)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "cop_warnings", scope: !656, file: !5, line: 410, baseType: !679, size: 64, offset: 512)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "cop_hints_hash", scope: !656, file: !5, line: 413, baseType: !3, size: 64, offset: 576)
!681 = !DILocalVariable(name: "categories", scope: !643, file: !609, line: 1682, type: !81)
!682 = !DILocation(line: 0, scope: !643)
!683 = !DILocation(line: 1680, column: 29, scope: !643)
!684 = !DILocation(line: 1682, column: 22, scope: !643)
!685 = !DILocation(line: 1683, column: 11, scope: !686)
!686 = distinct !DILexicalBlock(scope: !643, file: !609, line: 1683, column: 9)
!687 = !DILocation(line: 1683, column: 22, scope: !686)
!688 = !DILocation(line: 1690, column: 12, scope: !643)
!689 = !DILocation(line: 1690, column: 5, scope: !643)
!690 = !DILocation(line: 1691, column: 1, scope: !643)
!691 = !DISubprogram(name: "Perl_refcounted_he_fetch_pvn", scope: !692, file: !692, line: 3578, type: !693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !619)
!692 = !DIFile(filename: "apps/500.perlbench_r/src/proto.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "86c1c4cb1b6333bdae0149184d61a8ce")
!693 = !DISubroutineType(types: !694)
!694 = !{!81, !695, !439, !40, !18, !18}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!697 = !DISubprogram(name: "Perl_sv_2uv_flags", scope: !692, file: !692, line: 4168, type: !698, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !619)
!698 = !DISubroutineType(types: !699)
!699 = !{!37, !428, !462}
!700 = distinct !DISubprogram(name: "Perl_my_strerror", scope: !609, file: !609, line: 1694, type: !701, scopeLine: 1694, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !703)
!701 = !DISubroutineType(types: !702)
!702 = !{!92, !647}
!703 = !{!704}
!704 = !DILocalVariable(name: "errnum", arg: 1, scope: !700, file: !609, line: 1694, type: !647)
!705 = !DILocation(line: 0, scope: !700)
!706 = !DILocation(line: 1721, column: 12, scope: !700)
!707 = !DILocation(line: 1721, column: 5, scope: !700)
!708 = distinct !DISubprogram(name: "Perl_sync_locale", scope: !609, file: !609, line: 1739, type: !617, scopeLine: 1740, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !619)
!709 = !DILocation(line: 1755, column: 1, scope: !708)
