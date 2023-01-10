; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r/llvm-ir/525.x264_r_bc/output/raw.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/output/raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_output_t = type { ptr, ptr, ptr, ptr, ptr }
%struct.x264_nal_t = type { i32, i32, i32, ptr }

@raw_output = dso_local local_unnamed_addr constant %struct.cli_output_t { ptr @open_file, ptr @set_param, ptr @write_headers, ptr @write_frame, ptr @close_file }, align 8, !dbg !0
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1

; Function Attrs: nofree nounwind uwtable
define internal i32 @open_file(ptr nocapture noundef readonly %psz_filename, ptr nocapture noundef writeonly %p_handle) #0 !dbg !326 {
entry:
  call void @llvm.dbg.value(metadata ptr %psz_filename, metadata !328, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata ptr %p_handle, metadata !329, metadata !DIExpression()), !dbg !330
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %psz_filename, ptr noundef nonnull dereferenceable(2) @.str) #5, !dbg !331
  %tobool.not = icmp eq i32 %call, 0, !dbg !331
  br i1 %tobool.not, label %if.then, label %if.else, !dbg !333

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stdout, align 8, !dbg !334, !tbaa !335
  store ptr %0, ptr %p_handle, align 8, !dbg !339, !tbaa !335
  br label %if.end4, !dbg !340

if.else:                                          ; preds = %entry
  %call1 = tail call ptr @fopen64(ptr noundef %psz_filename, ptr noundef nonnull @.str.1), !dbg !341
  store ptr %call1, ptr %p_handle, align 8, !dbg !343, !tbaa !335
  %tobool2.not = icmp eq ptr %call1, null, !dbg !343
  br i1 %tobool2.not, label %return, label %if.end4, !dbg !344

if.end4:                                          ; preds = %if.else, %if.then
  br label %return, !dbg !345

return:                                           ; preds = %if.else, %if.end4
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -1, %if.else ], !dbg !330
  ret i32 %retval.0, !dbg !346
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define internal i32 @set_param(ptr nocapture noundef readnone %handle, ptr nocapture noundef readnone %p_param) #1 !dbg !347 {
entry:
  call void @llvm.dbg.value(metadata ptr %handle, metadata !349, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata ptr %p_param, metadata !350, metadata !DIExpression()), !dbg !351
  ret i32 0, !dbg !352
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @write_headers(ptr nocapture noundef %handle, ptr nocapture noundef readonly %p_nal) #0 !dbg !353 {
entry:
  call void @llvm.dbg.value(metadata ptr %handle, metadata !355, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata ptr %p_nal, metadata !356, metadata !DIExpression()), !dbg !358
  %i_payload = getelementptr inbounds %struct.x264_nal_t, ptr %p_nal, i64 0, i32 2, !dbg !359
  %0 = load i32, ptr %i_payload, align 8, !dbg !359, !tbaa !360
  %i_payload2 = getelementptr inbounds %struct.x264_nal_t, ptr %p_nal, i64 1, i32 2, !dbg !363
  %1 = load i32, ptr %i_payload2, align 8, !dbg !363, !tbaa !360
  %add = add nsw i32 %1, %0, !dbg !364
  %i_payload4 = getelementptr inbounds %struct.x264_nal_t, ptr %p_nal, i64 2, i32 2, !dbg !365
  %2 = load i32, ptr %i_payload4, align 8, !dbg !365, !tbaa !360
  %add5 = add nsw i32 %add, %2, !dbg !366
  call void @llvm.dbg.value(metadata i32 %add5, metadata !357, metadata !DIExpression()), !dbg !358
  %p_payload = getelementptr inbounds %struct.x264_nal_t, ptr %p_nal, i64 0, i32 3, !dbg !367
  %3 = load ptr, ptr %p_payload, align 8, !dbg !367, !tbaa !369
  %conv = sext i32 %add5 to i64, !dbg !370
  %call = tail call i64 @fwrite(ptr noundef %3, i64 noundef %conv, i64 noundef 1, ptr noundef %handle), !dbg !371
  %tobool.not = icmp eq i64 %call, 0, !dbg !371
  %.add5 = select i1 %tobool.not, i32 -1, i32 %add5, !dbg !358
  ret i32 %.add5, !dbg !372
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @write_frame(ptr nocapture noundef %handle, ptr nocapture noundef %p_nalu, i32 noundef %i_size, ptr nocapture noundef readnone %p_picture) #0 !dbg !373 {
entry:
  call void @llvm.dbg.value(metadata ptr %handle, metadata !375, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.value(metadata ptr %p_nalu, metadata !376, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.value(metadata i32 %i_size, metadata !377, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.value(metadata ptr %p_picture, metadata !378, metadata !DIExpression()), !dbg !379
  %conv = sext i32 %i_size to i64, !dbg !380
  %call = tail call i64 @fwrite(ptr noundef %p_nalu, i64 noundef %conv, i64 noundef 1, ptr noundef %handle), !dbg !382
  %tobool.not = icmp eq i64 %call, 0, !dbg !382
  %.i_size = select i1 %tobool.not, i32 -1, i32 %i_size, !dbg !379
  ret i32 %.i_size, !dbg !383
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @close_file(ptr noundef %handle, i64 noundef %largest_pts, i64 noundef %second_largest_pts) #0 !dbg !384 {
entry:
  call void @llvm.dbg.value(metadata ptr %handle, metadata !386, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 %largest_pts, metadata !387, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 %second_largest_pts, metadata !388, metadata !DIExpression()), !dbg !389
  %tobool.not = icmp eq ptr %handle, null, !dbg !390
  %0 = load ptr, ptr @stdout, align 8
  %cmp = icmp eq ptr %0, %handle
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp, !dbg !392
  br i1 %or.cond, label %return, label %if.end, !dbg !392

if.end:                                           ; preds = %entry
  %call = tail call i32 @fclose(ptr noundef nonnull %handle), !dbg !393
  br label %return, !dbg !394

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ], !dbg !389
  ret i32 %retval.0, !dbg !395
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !396 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!319, !320, !321, !322, !323, !324}
!llvm.ident = !{!325}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "raw_output", scope: !2, file: !69, line: 65, type: !70, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !68, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/output/raw.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r", checksumkind: CSK_MD5, checksum: "3437bfa7a26315063d340ddac405260f")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !7, line: 7, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !9, line: 49, size: 1728, elements: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!10 = !{!11, !13, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !29, !31, !32, !33, !37, !39, !41, !45, !48, !50, !53, !56, !57, !59, !63, !64}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !8, file: !9, line: 51, baseType: !12, size: 32)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !8, file: !9, line: 54, baseType: !14, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !8, file: !9, line: 55, baseType: !14, size: 64, offset: 128)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !8, file: !9, line: 56, baseType: !14, size: 64, offset: 192)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !8, file: !9, line: 57, baseType: !14, size: 64, offset: 256)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !8, file: !9, line: 58, baseType: !14, size: 64, offset: 320)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !8, file: !9, line: 59, baseType: !14, size: 64, offset: 384)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !8, file: !9, line: 60, baseType: !14, size: 64, offset: 448)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !8, file: !9, line: 61, baseType: !14, size: 64, offset: 512)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !8, file: !9, line: 64, baseType: !14, size: 64, offset: 576)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !8, file: !9, line: 65, baseType: !14, size: 64, offset: 640)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !8, file: !9, line: 66, baseType: !14, size: 64, offset: 704)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !8, file: !9, line: 68, baseType: !27, size: 64, offset: 768)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !9, line: 36, flags: DIFlagFwdDecl)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !8, file: !9, line: 70, baseType: !30, size: 64, offset: 832)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !8, file: !9, line: 72, baseType: !12, size: 32, offset: 896)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !8, file: !9, line: 73, baseType: !12, size: 32, offset: 928)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !8, file: !9, line: 74, baseType: !34, size: 64, offset: 960)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !35, line: 152, baseType: !36)
!35 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!36 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !8, file: !9, line: 77, baseType: !38, size: 16, offset: 1024)
!38 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !8, file: !9, line: 78, baseType: !40, size: 8, offset: 1040)
!40 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !8, file: !9, line: 79, baseType: !42, size: 8, offset: 1048)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 1)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !8, file: !9, line: 81, baseType: !46, size: 64, offset: 1088)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !9, line: 43, baseType: null)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !8, file: !9, line: 89, baseType: !49, size: 64, offset: 1152)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !35, line: 153, baseType: !36)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !8, file: !9, line: 91, baseType: !51, size: 64, offset: 1216)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !9, line: 37, flags: DIFlagFwdDecl)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !8, file: !9, line: 92, baseType: !54, size: 64, offset: 1280)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !9, line: 38, flags: DIFlagFwdDecl)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !8, file: !9, line: 93, baseType: !30, size: 64, offset: 1344)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !8, file: !9, line: 94, baseType: !58, size: 64, offset: 1408)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !8, file: !9, line: 95, baseType: !60, size: 64, offset: 1472)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !61, line: 46, baseType: !62)
!61 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!62 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !8, file: !9, line: 96, baseType: !12, size: 32, offset: 1536)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !8, file: !9, line: 98, baseType: !65, size: 160, offset: 1568)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 20)
!68 = !{!0}
!69 = !DIFile(filename: "apps/525.x264_r/src/x264_src/output/raw.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3437bfa7a26315063d340ddac405260f")
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_output_t", file: !72, line: 34, baseType: !73)
!72 = !DIFile(filename: "apps/525.x264_r/src/x264_src/output/output.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2609bd03b72b40b15579de35b2e5f690")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !72, line: 27, size: 320, elements: !74)
!74 = !{!75, !82, !262, !275, !315}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "open_file", scope: !73, file: !72, line: 29, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!12, !14, !79}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "hnd_t", file: !81, line: 30, baseType: !58)
!81 = !DIFile(filename: "apps/525.x264_r/src/x264_src/muxers.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bcea0820748b2dc47392b7f6393a96ff")
!82 = !DIDerivedType(tag: DW_TAG_member, name: "set_param", scope: !73, file: !72, line: 30, baseType: !83, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!12, !80, !86}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !88, line: 376, baseType: !89)
!88 = !DIFile(filename: "apps/525.x264_r/src/x264_src/x264.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !88, line: 176, size: 5632, elements: !90)
!90 = !{!91, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !141, !142, !143, !144, !148, !149, !163, !164, !165, !166, !167, !198, !240, !241, !242, !243, !244, !245, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !89, file: !88, line: 179, baseType: !92, size: 32)
!92 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !89, file: !88, line: 180, baseType: !12, size: 32, offset: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !89, file: !88, line: 181, baseType: !12, size: 32, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !89, file: !88, line: 182, baseType: !12, size: 32, offset: 96)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !89, file: !88, line: 183, baseType: !12, size: 32, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !89, file: !88, line: 186, baseType: !12, size: 32, offset: 160)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !89, file: !88, line: 187, baseType: !12, size: 32, offset: 192)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !89, file: !88, line: 188, baseType: !12, size: 32, offset: 224)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !89, file: !88, line: 189, baseType: !12, size: 32, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !89, file: !88, line: 190, baseType: !12, size: 32, offset: 288)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !89, file: !88, line: 198, baseType: !12, size: 32, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !89, file: !88, line: 215, baseType: !104, size: 288, offset: 352)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !88, line: 200, size: 288, elements: !105)
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113, !114}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !104, file: !88, line: 203, baseType: !12, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !104, file: !88, line: 204, baseType: !12, size: 32, offset: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !104, file: !88, line: 206, baseType: !12, size: 32, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !104, file: !88, line: 209, baseType: !12, size: 32, offset: 96)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !104, file: !88, line: 210, baseType: !12, size: 32, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !104, file: !88, line: 211, baseType: !12, size: 32, offset: 160)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !104, file: !88, line: 212, baseType: !12, size: 32, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !104, file: !88, line: 213, baseType: !12, size: 32, offset: 224)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !104, file: !88, line: 214, baseType: !12, size: 32, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !89, file: !88, line: 218, baseType: !12, size: 32, offset: 640)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !89, file: !88, line: 219, baseType: !12, size: 32, offset: 672)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !89, file: !88, line: 220, baseType: !12, size: 32, offset: 704)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !89, file: !88, line: 221, baseType: !12, size: 32, offset: 736)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !89, file: !88, line: 222, baseType: !12, size: 32, offset: 768)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !89, file: !88, line: 224, baseType: !12, size: 32, offset: 800)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !89, file: !88, line: 225, baseType: !12, size: 32, offset: 832)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !89, file: !88, line: 226, baseType: !12, size: 32, offset: 864)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !89, file: !88, line: 227, baseType: !12, size: 32, offset: 896)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !89, file: !88, line: 229, baseType: !12, size: 32, offset: 928)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !89, file: !88, line: 230, baseType: !12, size: 32, offset: 960)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !89, file: !88, line: 231, baseType: !12, size: 32, offset: 992)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !89, file: !88, line: 233, baseType: !12, size: 32, offset: 1024)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !89, file: !88, line: 234, baseType: !12, size: 32, offset: 1056)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !89, file: !88, line: 236, baseType: !12, size: 32, offset: 1088)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !89, file: !88, line: 237, baseType: !12, size: 32, offset: 1120)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !89, file: !88, line: 239, baseType: !12, size: 32, offset: 1152)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !89, file: !88, line: 240, baseType: !14, size: 64, offset: 1216)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !89, file: !88, line: 241, baseType: !134, size: 128, offset: 1280)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 128, elements: !139)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !136, line: 24, baseType: !137)
!136 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !35, line: 38, baseType: !138)
!138 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!139 = !{!140}
!140 = !DISubrange(count: 16)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !89, file: !88, line: 242, baseType: !134, size: 128, offset: 1408)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !89, file: !88, line: 243, baseType: !134, size: 128, offset: 1536)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !89, file: !88, line: 244, baseType: !134, size: 128, offset: 1664)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !89, file: !88, line: 245, baseType: !145, size: 512, offset: 1792)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 512, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !89, file: !88, line: 246, baseType: !145, size: 512, offset: 2304)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !89, file: !88, line: 249, baseType: !150, size: 64, offset: 2816)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{null, !58, !12, !153, !155}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !157)
!157 = !{!158, !160, !161, !162}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !156, file: !159, line: 65, baseType: !92, size: 32)
!159 = !DIFile(filename: "apps/525.x264_r/src/x264_src/output/raw.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake")
!160 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !156, file: !159, line: 65, baseType: !92, size: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !156, file: !159, line: 65, baseType: !58, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !156, file: !159, line: 65, baseType: !58, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !89, file: !88, line: 250, baseType: !58, size: 64, offset: 2880)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !89, file: !88, line: 251, baseType: !12, size: 32, offset: 2944)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !89, file: !88, line: 252, baseType: !12, size: 32, offset: 2976)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !89, file: !88, line: 253, baseType: !14, size: 64, offset: 3008)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !89, file: !88, line: 287, baseType: !168, size: 800, offset: 3072)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !88, line: 256, size: 800, elements: !169)
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !190, !191, !192, !196, !197}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !168, file: !88, line: 258, baseType: !92, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !168, file: !88, line: 259, baseType: !92, size: 32, offset: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !168, file: !88, line: 261, baseType: !12, size: 32, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !168, file: !88, line: 262, baseType: !12, size: 32, offset: 96)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !168, file: !88, line: 263, baseType: !12, size: 32, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !168, file: !88, line: 264, baseType: !12, size: 32, offset: 160)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !168, file: !88, line: 265, baseType: !12, size: 32, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !168, file: !88, line: 267, baseType: !12, size: 32, offset: 224)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !168, file: !88, line: 268, baseType: !12, size: 32, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !168, file: !88, line: 269, baseType: !12, size: 32, offset: 288)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !168, file: !88, line: 270, baseType: !12, size: 32, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !168, file: !88, line: 271, baseType: !12, size: 32, offset: 352)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !168, file: !88, line: 272, baseType: !12, size: 32, offset: 384)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !168, file: !88, line: 273, baseType: !12, size: 32, offset: 416)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !168, file: !88, line: 274, baseType: !12, size: 32, offset: 448)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !168, file: !88, line: 275, baseType: !12, size: 32, offset: 480)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !168, file: !88, line: 276, baseType: !12, size: 32, offset: 512)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !168, file: !88, line: 277, baseType: !12, size: 32, offset: 544)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !168, file: !88, line: 278, baseType: !189, size: 32, offset: 576)
!189 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !168, file: !88, line: 279, baseType: !189, size: 32, offset: 608)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !168, file: !88, line: 280, baseType: !12, size: 32, offset: 640)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !168, file: !88, line: 283, baseType: !193, size: 64, offset: 672)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 2)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !168, file: !88, line: 285, baseType: !12, size: 32, offset: 736)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !168, file: !88, line: 286, baseType: !12, size: 32, offset: 768)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !89, file: !88, line: 327, baseType: !199, size: 1152, offset: 3904)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !88, line: 290, size: 1152, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !238, !239}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !199, file: !88, line: 292, baseType: !12, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !199, file: !88, line: 294, baseType: !12, size: 32, offset: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !199, file: !88, line: 295, baseType: !12, size: 32, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !199, file: !88, line: 296, baseType: !12, size: 32, offset: 96)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !199, file: !88, line: 297, baseType: !12, size: 32, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !199, file: !88, line: 299, baseType: !12, size: 32, offset: 160)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !199, file: !88, line: 300, baseType: !189, size: 32, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !199, file: !88, line: 301, baseType: !189, size: 32, offset: 224)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !199, file: !88, line: 302, baseType: !189, size: 32, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !199, file: !88, line: 303, baseType: !12, size: 32, offset: 288)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !199, file: !88, line: 304, baseType: !12, size: 32, offset: 320)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !199, file: !88, line: 305, baseType: !189, size: 32, offset: 352)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !199, file: !88, line: 306, baseType: !189, size: 32, offset: 384)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !199, file: !88, line: 307, baseType: !189, size: 32, offset: 416)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !199, file: !88, line: 309, baseType: !12, size: 32, offset: 448)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !199, file: !88, line: 310, baseType: !189, size: 32, offset: 480)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !199, file: !88, line: 311, baseType: !12, size: 32, offset: 512)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !199, file: !88, line: 312, baseType: !12, size: 32, offset: 544)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !199, file: !88, line: 315, baseType: !12, size: 32, offset: 576)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !199, file: !88, line: 316, baseType: !14, size: 64, offset: 640)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !199, file: !88, line: 317, baseType: !12, size: 32, offset: 704)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !199, file: !88, line: 318, baseType: !14, size: 64, offset: 768)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !199, file: !88, line: 321, baseType: !189, size: 32, offset: 832)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !199, file: !88, line: 322, baseType: !189, size: 32, offset: 864)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !199, file: !88, line: 323, baseType: !189, size: 32, offset: 896)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !199, file: !88, line: 324, baseType: !227, size: 64, offset: 960)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !88, line: 174, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 167, size: 256, elements: !230)
!230 = !{!231, !232, !233, !234, !235, !236}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !229, file: !88, line: 169, baseType: !12, size: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !229, file: !88, line: 169, baseType: !12, size: 32, offset: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !229, file: !88, line: 170, baseType: !12, size: 32, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !229, file: !88, line: 171, baseType: !12, size: 32, offset: 96)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !229, file: !88, line: 172, baseType: !189, size: 32, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !229, file: !88, line: 173, baseType: !237, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !199, file: !88, line: 325, baseType: !12, size: 32, offset: 1024)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !199, file: !88, line: 326, baseType: !14, size: 64, offset: 1088)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !89, file: !88, line: 330, baseType: !12, size: 32, offset: 5056)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !89, file: !88, line: 331, baseType: !12, size: 32, offset: 5088)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !89, file: !88, line: 332, baseType: !12, size: 32, offset: 5120)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !89, file: !88, line: 334, baseType: !12, size: 32, offset: 5152)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !89, file: !88, line: 335, baseType: !12, size: 32, offset: 5184)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !89, file: !88, line: 336, baseType: !246, size: 32, offset: 5216)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !136, line: 26, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !35, line: 42, baseType: !92)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !89, file: !88, line: 337, baseType: !246, size: 32, offset: 5248)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !89, file: !88, line: 338, baseType: !246, size: 32, offset: 5280)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !89, file: !88, line: 339, baseType: !246, size: 32, offset: 5312)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !89, file: !88, line: 340, baseType: !12, size: 32, offset: 5344)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !89, file: !88, line: 344, baseType: !12, size: 32, offset: 5376)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !89, file: !88, line: 356, baseType: !12, size: 32, offset: 5408)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !89, file: !88, line: 364, baseType: !12, size: 32, offset: 5440)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !89, file: !88, line: 367, baseType: !12, size: 32, offset: 5472)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !89, file: !88, line: 368, baseType: !12, size: 32, offset: 5504)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !89, file: !88, line: 369, baseType: !12, size: 32, offset: 5536)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !89, file: !88, line: 375, baseType: !259, size: 64, offset: 5568)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !58}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "write_headers", scope: !73, file: !72, line: 31, baseType: !263, size: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!12, !80, !266}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !88, line: 604, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 593, size: 192, elements: !269)
!269 = !{!270, !271, !272, !273}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !268, file: !88, line: 595, baseType: !12, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !268, file: !88, line: 596, baseType: !12, size: 32, offset: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !268, file: !88, line: 599, baseType: !12, size: 32, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !268, file: !88, line: 603, baseType: !274, size: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "write_frame", scope: !73, file: !72, line: 32, baseType: !276, size: 64, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!12, !80, !274, !12, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_picture_t", file: !88, line: 549, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 513, size: 1088, elements: !282)
!282 = !{!283, !284, !285, !286, !287, !291, !292, !293, !305, !314}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !281, file: !88, line: 521, baseType: !12, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !281, file: !88, line: 523, baseType: !12, size: 32, offset: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !281, file: !88, line: 526, baseType: !12, size: 32, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !281, file: !88, line: 529, baseType: !12, size: 32, offset: 96)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !281, file: !88, line: 531, baseType: !288, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !289, line: 27, baseType: !290)
!289 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !35, line: 44, baseType: !36)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts", scope: !281, file: !88, line: 534, baseType: !288, size: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !281, file: !88, line: 541, baseType: !86, size: 64, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "img", scope: !281, file: !88, line: 543, baseType: !294, size: 448, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_image_t", file: !88, line: 511, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 505, size: 448, elements: !296)
!296 = !{!297, !298, !299, !303}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !295, file: !88, line: 507, baseType: !12, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !295, file: !88, line: 508, baseType: !12, size: 32, offset: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !295, file: !88, line: 509, baseType: !300, size: 128, offset: 64)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 4)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !295, file: !88, line: 510, baseType: !304, size: 256, offset: 192)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 256, elements: !301)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !281, file: !88, line: 545, baseType: !306, size: 256, offset: 768)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !88, line: 503, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 496, size: 256, elements: !308)
!308 = !{!309, !311, !312, !313}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !307, file: !88, line: 498, baseType: !310, size: 64)
!310 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !307, file: !88, line: 499, baseType: !310, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !307, file: !88, line: 500, baseType: !310, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !307, file: !88, line: 502, baseType: !310, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !281, file: !88, line: 548, baseType: !58, size: 64, offset: 1024)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "close_file", scope: !73, file: !72, line: 33, baseType: !316, size: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!12, !80, !288, !288}
!319 = !{i32 7, !"Dwarf Version", i32 5}
!320 = !{i32 2, !"Debug Info Version", i32 3}
!321 = !{i32 1, !"wchar_size", i32 4}
!322 = !{i32 7, !"PIC Level", i32 2}
!323 = !{i32 7, !"PIE Level", i32 2}
!324 = !{i32 7, !"uwtable", i32 2}
!325 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!326 = distinct !DISubprogram(name: "open_file", scope: !69, file: !69, line: 26, type: !77, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !327)
!327 = !{!328, !329}
!328 = !DILocalVariable(name: "psz_filename", arg: 1, scope: !326, file: !69, line: 26, type: !14)
!329 = !DILocalVariable(name: "p_handle", arg: 2, scope: !326, file: !69, line: 26, type: !79)
!330 = !DILocation(line: 0, scope: !326)
!331 = !DILocation(line: 28, column: 10, scope: !332)
!332 = distinct !DILexicalBlock(scope: !326, file: !69, line: 28, column: 9)
!333 = !DILocation(line: 28, column: 9, scope: !326)
!334 = !DILocation(line: 29, column: 21, scope: !332)
!335 = !{!336, !336, i64 0}
!336 = !{!"any pointer", !337, i64 0}
!337 = !{!"omnipotent char", !338, i64 0}
!338 = !{!"Simple C/C++ TBAA"}
!339 = !DILocation(line: 29, column: 19, scope: !332)
!340 = !DILocation(line: 29, column: 9, scope: !332)
!341 = !DILocation(line: 30, column: 28, scope: !342)
!342 = distinct !DILexicalBlock(scope: !332, file: !69, line: 30, column: 14)
!343 = !DILocation(line: 30, column: 26, scope: !342)
!344 = !DILocation(line: 30, column: 14, scope: !332)
!345 = !DILocation(line: 33, column: 5, scope: !326)
!346 = !DILocation(line: 34, column: 1, scope: !326)
!347 = distinct !DISubprogram(name: "set_param", scope: !69, file: !69, line: 36, type: !84, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !348)
!348 = !{!349, !350}
!349 = !DILocalVariable(name: "handle", arg: 1, scope: !347, file: !69, line: 36, type: !80)
!350 = !DILocalVariable(name: "p_param", arg: 2, scope: !347, file: !69, line: 36, type: !86)
!351 = !DILocation(line: 0, scope: !347)
!352 = !DILocation(line: 38, column: 5, scope: !347)
!353 = distinct !DISubprogram(name: "write_headers", scope: !69, file: !69, line: 41, type: !264, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !354)
!354 = !{!355, !356, !357}
!355 = !DILocalVariable(name: "handle", arg: 1, scope: !353, file: !69, line: 41, type: !80)
!356 = !DILocalVariable(name: "p_nal", arg: 2, scope: !353, file: !69, line: 41, type: !266)
!357 = !DILocalVariable(name: "size", scope: !353, file: !69, line: 43, type: !12)
!358 = !DILocation(line: 0, scope: !353)
!359 = !DILocation(line: 43, column: 25, scope: !353)
!360 = !{!361, !362, i64 8}
!361 = !{!"", !362, i64 0, !362, i64 4, !362, i64 8, !336, i64 16}
!362 = !{!"int", !337, i64 0}
!363 = !DILocation(line: 43, column: 46, scope: !353)
!364 = !DILocation(line: 43, column: 35, scope: !353)
!365 = !DILocation(line: 43, column: 67, scope: !353)
!366 = !DILocation(line: 43, column: 56, scope: !353)
!367 = !DILocation(line: 45, column: 26, scope: !368)
!368 = distinct !DILexicalBlock(scope: !353, file: !69, line: 45, column: 9)
!369 = !{!361, !336, i64 16}
!370 = !DILocation(line: 45, column: 37, scope: !368)
!371 = !DILocation(line: 45, column: 9, scope: !368)
!372 = !DILocation(line: 48, column: 1, scope: !353)
!373 = distinct !DISubprogram(name: "write_frame", scope: !69, file: !69, line: 50, type: !277, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !374)
!374 = !{!375, !376, !377, !378}
!375 = !DILocalVariable(name: "handle", arg: 1, scope: !373, file: !69, line: 50, type: !80)
!376 = !DILocalVariable(name: "p_nalu", arg: 2, scope: !373, file: !69, line: 50, type: !274)
!377 = !DILocalVariable(name: "i_size", arg: 3, scope: !373, file: !69, line: 50, type: !12)
!378 = !DILocalVariable(name: "p_picture", arg: 4, scope: !373, file: !69, line: 50, type: !279)
!379 = !DILocation(line: 0, scope: !373)
!380 = !DILocation(line: 52, column: 25, scope: !381)
!381 = distinct !DILexicalBlock(scope: !373, file: !69, line: 52, column: 9)
!382 = !DILocation(line: 52, column: 9, scope: !381)
!383 = !DILocation(line: 55, column: 1, scope: !373)
!384 = distinct !DISubprogram(name: "close_file", scope: !69, file: !69, line: 57, type: !317, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !385)
!385 = !{!386, !387, !388}
!386 = !DILocalVariable(name: "handle", arg: 1, scope: !384, file: !69, line: 57, type: !80)
!387 = !DILocalVariable(name: "largest_pts", arg: 2, scope: !384, file: !69, line: 57, type: !288)
!388 = !DILocalVariable(name: "second_largest_pts", arg: 3, scope: !384, file: !69, line: 57, type: !288)
!389 = !DILocation(line: 0, scope: !384)
!390 = !DILocation(line: 59, column: 10, scope: !391)
!391 = distinct !DILexicalBlock(scope: !384, file: !69, line: 59, column: 9)
!392 = !DILocation(line: 59, column: 17, scope: !391)
!393 = !DILocation(line: 62, column: 12, scope: !384)
!394 = !DILocation(line: 62, column: 5, scope: !384)
!395 = !DILocation(line: 63, column: 1, scope: !384)
!396 = !DISubprogram(name: "fclose", scope: !397, file: !397, line: 213, type: !398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !400)
!397 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!398 = !DISubroutineType(types: !399)
!399 = !{!12, !5}
!400 = !{}
