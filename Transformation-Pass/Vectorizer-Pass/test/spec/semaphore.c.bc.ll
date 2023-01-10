; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/semaphore.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct.SemaphoreInfo = type { i64, i32, i64, i64 }

@.str = private unnamed_addr constant [88 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/semaphore.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ActivateSemaphoreInfo(ptr nocapture noundef %semaphore_info) local_unnamed_addr #0 !dbg !123 {
entry:
  call void @llvm.dbg.value(metadata ptr %semaphore_info, metadata !128, metadata !DIExpression()), !dbg !129
  %0 = load ptr, ptr %semaphore_info, align 8, !dbg !130, !tbaa !132
  %cmp = icmp eq ptr %0, null, !dbg !136
  br i1 %cmp, label %if.end, label %if.end3, !dbg !137

if.end:                                           ; preds = %entry
  %call = tail call ptr @AllocateSemaphoreInfo(), !dbg !138
  store ptr %call, ptr %semaphore_info, align 8, !dbg !141, !tbaa !132
  br label %if.end3, !dbg !142

if.end3:                                          ; preds = %if.end, %entry
  ret void, !dbg !143
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @AllocateSemaphoreInfo() local_unnamed_addr #0 !dbg !144 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata i64 1, metadata !167, metadata !DIExpression()) #11, !dbg !180
  call void @llvm.dbg.value(metadata i64 32, metadata !173, metadata !DIExpression()) #11, !dbg !180
  call void @llvm.dbg.value(metadata i64 32, metadata !176, metadata !DIExpression()) #11, !dbg !180
  call void @llvm.dbg.value(metadata ptr null, metadata !177, metadata !DIExpression()) #11, !dbg !180
  call void @llvm.dbg.value(metadata i64 64, metadata !174, metadata !DIExpression()) #11, !dbg !180
  call void @llvm.dbg.value(metadata i64 64, metadata !175, metadata !DIExpression()) #11, !dbg !180
  call void @llvm.dbg.value(metadata i64 103, metadata !175, metadata !DIExpression()) #11, !dbg !180
  %call15.i = tail call noalias dereferenceable_or_null(103) ptr @malloc(i64 noundef 103) #12, !dbg !182
  call void @llvm.dbg.value(metadata ptr %call15.i, metadata !178, metadata !DIExpression()) #11, !dbg !185
  %cmp16.not.i = icmp eq ptr %call15.i, null, !dbg !186
  br i1 %cmp16.not.i, label %if.then, label %AcquireSemaphoreMemory.exit, !dbg !188

AcquireSemaphoreMemory.exit:                      ; preds = %entry
  %0 = ptrtoint ptr %call15.i to i64, !dbg !189
  %add20.i = add i64 %0, 71, !dbg !189
  %and23.i = and i64 %add20.i, -64, !dbg !189
  %1 = inttoptr i64 %and23.i to ptr, !dbg !191
  call void @llvm.dbg.value(metadata ptr %1, metadata !177, metadata !DIExpression()) #11, !dbg !180
  %add.ptr.i = getelementptr inbounds ptr, ptr %1, i64 -1, !dbg !192
  store ptr %call15.i, ptr %add.ptr.i, align 8, !dbg !193, !tbaa !132
  call void @llvm.dbg.value(metadata ptr %1, metadata !148, metadata !DIExpression()), !dbg !194
  %cmp = icmp eq i64 %and23.i, 0, !dbg !195
  br i1 %cmp, label %if.then, label %if.end, !dbg !196

if.then:                                          ; preds = %entry, %AcquireSemaphoreMemory.exit
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #11, !dbg !197
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !154, metadata !DIExpression()), !dbg !197
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #11, !dbg !197
  %call1 = tail call ptr @__errno_location() #13, !dbg !197
  %2 = load i32, ptr %call1, align 4, !dbg !197, !tbaa !198
  %call2 = call ptr @GetExceptionMessage(i32 noundef %2) #11, !dbg !197
  call void @llvm.dbg.value(metadata ptr %call2, metadata !149, metadata !DIExpression()), !dbg !200
  %call3 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 202, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call2) #11, !dbg !197
  %call4 = call ptr @DestroyString(ptr noundef %call2) #11, !dbg !197
  call void @llvm.dbg.value(metadata ptr %call4, metadata !149, metadata !DIExpression()), !dbg !200
  call void @CatchException(ptr noundef nonnull %exception) #11, !dbg !197
  %call5 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #11, !dbg !197
  call void @MagickCoreTerminus() #11, !dbg !197
  call void @_exit(i32 noundef 1) #14, !dbg !197
  unreachable, !dbg !197

if.end:                                           ; preds = %AcquireSemaphoreMemory.exit
  %call6 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %1, i32 noundef 0, i64 noundef 32) #11, !dbg !201
  %call.i = tail call i32 @getpid() #11, !dbg !202
  %id = getelementptr inbounds %struct.SemaphoreInfo, ptr %1, i64 0, i32 1, !dbg !208
  store i32 %call.i, ptr %id, align 8, !dbg !209, !tbaa !210
  %reference_count = getelementptr inbounds %struct.SemaphoreInfo, ptr %1, i64 0, i32 2, !dbg !213
  store i64 0, ptr %reference_count, align 16, !dbg !214, !tbaa !215
  %signature = getelementptr inbounds %struct.SemaphoreInfo, ptr %1, i64 0, i32 3, !dbg !216
  store i64 2880220587, ptr %signature, align 8, !dbg !217, !tbaa !218
  ret ptr %1, !dbg !219
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !220 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !224 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #4

declare !dbg !228 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !234 ptr @DestroyString(ptr noundef) local_unnamed_addr #3

declare !dbg !238 void @CatchException(ptr noundef) local_unnamed_addr #3

declare !dbg !239 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !242 void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #5

declare !dbg !246 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @DestroySemaphoreInfo(ptr nocapture noundef %semaphore_info) local_unnamed_addr #6 !dbg !250 {
RelinquishSemaphoreMemory.exit:
  call void @llvm.dbg.value(metadata ptr %semaphore_info, metadata !252, metadata !DIExpression()), !dbg !253
  %0 = load ptr, ptr %semaphore_info, align 8, !dbg !254, !tbaa !132
  %signature = getelementptr inbounds %struct.SemaphoreInfo, ptr %0, i64 0, i32 3, !dbg !255
  store i64 -2880220588, ptr %signature, align 8, !dbg !256, !tbaa !218
  call void @llvm.dbg.value(metadata ptr %0, metadata !257, metadata !DIExpression()) #11, !dbg !262
  %add.ptr.i = getelementptr inbounds ptr, ptr %0, i64 -1, !dbg !264
  %1 = load ptr, ptr %add.ptr.i, align 8, !dbg !265, !tbaa !132
  tail call void @free(ptr noundef %1) #11, !dbg !266
  store ptr null, ptr %semaphore_info, align 8, !dbg !267, !tbaa !132
  ret void, !dbg !268
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @LockSemaphoreInfo(ptr nocapture noundef %semaphore_info) local_unnamed_addr #7 !dbg !269 {
entry:
  call void @llvm.dbg.value(metadata ptr %semaphore_info, metadata !273, metadata !DIExpression()), !dbg !274
  ret void, !dbg !275
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @SemaphoreComponentGenesis() local_unnamed_addr #7 !dbg !276 {
entry:
  ret i32 1, !dbg !279
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @SemaphoreComponentTerminus() local_unnamed_addr #7 !dbg !280 {
entry:
  ret void, !dbg !281
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @UnlockSemaphoreInfo(ptr nocapture noundef %semaphore_info) local_unnamed_addr #7 !dbg !282 {
entry:
  call void @llvm.dbg.value(metadata ptr %semaphore_info, metadata !284, metadata !DIExpression()), !dbg !285
  ret void, !dbg !286
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !287 i32 @getpid() local_unnamed_addr #9

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readnone willreturn }
attributes #14 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !82, globals: !111, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/semaphore.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "506eee4fdc3b70a7f417dd8d759572ba")
!2 = !{!3, !77}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 28, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76}
!7 = !DIEnumerator(name: "UndefinedException", value: 0)
!8 = !DIEnumerator(name: "WarningException", value: 300)
!9 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!10 = !DIEnumerator(name: "TypeWarning", value: 305)
!11 = !DIEnumerator(name: "OptionWarning", value: 310)
!12 = !DIEnumerator(name: "DelegateWarning", value: 315)
!13 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!14 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!15 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!16 = !DIEnumerator(name: "BlobWarning", value: 335)
!17 = !DIEnumerator(name: "StreamWarning", value: 340)
!18 = !DIEnumerator(name: "CacheWarning", value: 345)
!19 = !DIEnumerator(name: "CoderWarning", value: 350)
!20 = !DIEnumerator(name: "FilterWarning", value: 352)
!21 = !DIEnumerator(name: "ModuleWarning", value: 355)
!22 = !DIEnumerator(name: "DrawWarning", value: 360)
!23 = !DIEnumerator(name: "ImageWarning", value: 365)
!24 = !DIEnumerator(name: "WandWarning", value: 370)
!25 = !DIEnumerator(name: "RandomWarning", value: 375)
!26 = !DIEnumerator(name: "XServerWarning", value: 380)
!27 = !DIEnumerator(name: "MonitorWarning", value: 385)
!28 = !DIEnumerator(name: "RegistryWarning", value: 390)
!29 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!30 = !DIEnumerator(name: "PolicyWarning", value: 399)
!31 = !DIEnumerator(name: "ErrorException", value: 400)
!32 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!33 = !DIEnumerator(name: "TypeError", value: 405)
!34 = !DIEnumerator(name: "OptionError", value: 410)
!35 = !DIEnumerator(name: "DelegateError", value: 415)
!36 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!37 = !DIEnumerator(name: "CorruptImageError", value: 425)
!38 = !DIEnumerator(name: "FileOpenError", value: 430)
!39 = !DIEnumerator(name: "BlobError", value: 435)
!40 = !DIEnumerator(name: "StreamError", value: 440)
!41 = !DIEnumerator(name: "CacheError", value: 445)
!42 = !DIEnumerator(name: "CoderError", value: 450)
!43 = !DIEnumerator(name: "FilterError", value: 452)
!44 = !DIEnumerator(name: "ModuleError", value: 455)
!45 = !DIEnumerator(name: "DrawError", value: 460)
!46 = !DIEnumerator(name: "ImageError", value: 465)
!47 = !DIEnumerator(name: "WandError", value: 470)
!48 = !DIEnumerator(name: "RandomError", value: 475)
!49 = !DIEnumerator(name: "XServerError", value: 480)
!50 = !DIEnumerator(name: "MonitorError", value: 485)
!51 = !DIEnumerator(name: "RegistryError", value: 490)
!52 = !DIEnumerator(name: "ConfigureError", value: 495)
!53 = !DIEnumerator(name: "PolicyError", value: 499)
!54 = !DIEnumerator(name: "FatalErrorException", value: 700)
!55 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!56 = !DIEnumerator(name: "TypeFatalError", value: 705)
!57 = !DIEnumerator(name: "OptionFatalError", value: 710)
!58 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!59 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!60 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!61 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!62 = !DIEnumerator(name: "BlobFatalError", value: 735)
!63 = !DIEnumerator(name: "StreamFatalError", value: 740)
!64 = !DIEnumerator(name: "CacheFatalError", value: 745)
!65 = !DIEnumerator(name: "CoderFatalError", value: 750)
!66 = !DIEnumerator(name: "FilterFatalError", value: 752)
!67 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!68 = !DIEnumerator(name: "DrawFatalError", value: 760)
!69 = !DIEnumerator(name: "ImageFatalError", value: 765)
!70 = !DIEnumerator(name: "WandFatalError", value: 770)
!71 = !DIEnumerator(name: "RandomFatalError", value: 775)
!72 = !DIEnumerator(name: "XServerFatalError", value: 780)
!73 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!74 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!75 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!76 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !78, line: 211, baseType: !5, size: 32, elements: !79)
!78 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!79 = !{!80, !81}
!80 = !DIEnumerator(name: "MagickFalse", value: 0)
!81 = !DIEnumerator(name: "MagickTrue", value: 1)
!82 = !{!83, !109, !94, !102, !92, !110}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !85, line: 26, baseType: !86)
!85 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !87, line: 58, size: 256, elements: !88)
!87 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "506eee4fdc3b70a7f417dd8d759572ba")
!88 = !{!89, !95, !103, !108}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !86, file: !87, line: 61, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickMutexType", file: !91, line: 52, baseType: !92)
!91 = !DIFile(filename: "apps/538.imagick_r/src/magick/thread-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "39ddb4e596128be27607023dd7e0ab15")
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !93, line: 46, baseType: !94)
!93 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!94 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !86, file: !87, line: 64, baseType: !96, size: 32, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickThreadType", file: !97, line: 30, baseType: !98)
!97 = !DIFile(filename: "apps/538.imagick_r/src/magick/thread_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c99214db95297b06bb439184c535bbc9")
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !99, line: 97, baseType: !100)
!99 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !101, line: 154, baseType: !102)
!101 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!102 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !86, file: !87, line: 67, baseType: !104, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !105, line: 77, baseType: !106)
!105 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !101, line: 193, baseType: !107)
!107 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !86, file: !87, line: 70, baseType: !92, size: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!111 = !{!112}
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "active_mutex", scope: !0, file: !114, line: 40, type: !115, isLocal: true, isDefinition: true)
!114 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "25c836cd0948f430546708db695ca37c")
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !78, line: 215, baseType: !77)
!116 = !{i32 7, !"Dwarf Version", i32 5}
!117 = !{i32 2, !"Debug Info Version", i32 3}
!118 = !{i32 1, !"wchar_size", i32 4}
!119 = !{i32 7, !"PIC Level", i32 2}
!120 = !{i32 7, !"PIE Level", i32 2}
!121 = !{i32 7, !"uwtable", i32 2}
!122 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!123 = distinct !DISubprogram(name: "ActivateSemaphoreInfo", scope: !87, file: !87, line: 96, type: !124, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !127)
!124 = !DISubroutineType(types: !125)
!125 = !{null, !126}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!127 = !{!128}
!128 = !DILocalVariable(name: "semaphore_info", arg: 1, scope: !123, file: !87, line: 96, type: !126)
!129 = !DILocation(line: 0, scope: !123)
!130 = !DILocation(line: 99, column: 7, scope: !131)
!131 = distinct !DILexicalBlock(scope: !123, file: !87, line: 99, column: 7)
!132 = !{!133, !133, i64 0}
!133 = !{!"any pointer", !134, i64 0}
!134 = !{!"omnipotent char", !135, i64 0}
!135 = !{!"Simple C/C++ TBAA"}
!136 = !DILocation(line: 99, column: 23, scope: !131)
!137 = !DILocation(line: 99, column: 7, scope: !123)
!138 = !DILocation(line: 104, column: 25, scope: !139)
!139 = distinct !DILexicalBlock(scope: !140, file: !87, line: 103, column: 11)
!140 = distinct !DILexicalBlock(scope: !131, file: !87, line: 100, column: 5)
!141 = !DILocation(line: 104, column: 24, scope: !139)
!142 = !DILocation(line: 106, column: 5, scope: !140)
!143 = !DILocation(line: 107, column: 1, scope: !123)
!144 = distinct !DISubprogram(name: "AllocateSemaphoreInfo", scope: !87, file: !87, line: 191, type: !145, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !147)
!145 = !DISubroutineType(types: !146)
!146 = !{!83}
!147 = !{!148, !149, !154}
!148 = !DILocalVariable(name: "semaphore_info", scope: !144, file: !87, line: 194, type: !83)
!149 = !DILocalVariable(name: "message", scope: !150, file: !87, line: 202, type: !152)
!150 = distinct !DILexicalBlock(scope: !151, file: !87, line: 202, column: 5)
!151 = distinct !DILexicalBlock(scope: !144, file: !87, line: 201, column: 7)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!154 = !DILocalVariable(name: "exception", scope: !150, file: !87, line: 202, type: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !78, line: 219, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !4, line: 102, size: 448, elements: !157)
!157 = !{!158, !160, !161, !162, !163, !164, !165, !166}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !156, file: !4, line: 105, baseType: !159, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !4, line: 100, baseType: !3)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !156, file: !4, line: 108, baseType: !102, size: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !156, file: !4, line: 111, baseType: !152, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !156, file: !4, line: 112, baseType: !152, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !156, file: !4, line: 115, baseType: !109, size: 64, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !156, file: !4, line: 118, baseType: !115, size: 32, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !156, file: !4, line: 121, baseType: !83, size: 64, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !156, file: !4, line: 124, baseType: !92, size: 64, offset: 384)
!167 = !DILocalVariable(name: "count", arg: 1, scope: !168, file: !87, line: 128, type: !171)
!168 = distinct !DISubprogram(name: "AcquireSemaphoreMemory", scope: !87, file: !87, line: 128, type: !169, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !172)
!169 = !DISubroutineType(types: !170)
!170 = !{!109, !171, !171}
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!172 = !{!167, !173, !174, !175, !176, !177, !178}
!173 = !DILocalVariable(name: "quantum", arg: 2, scope: !168, file: !87, line: 128, type: !171)
!174 = !DILocalVariable(name: "alignment", scope: !168, file: !87, line: 134, type: !92)
!175 = !DILocalVariable(name: "extent", scope: !168, file: !87, line: 135, type: !92)
!176 = !DILocalVariable(name: "size", scope: !168, file: !87, line: 136, type: !92)
!177 = !DILocalVariable(name: "memory", scope: !168, file: !87, line: 139, type: !109)
!178 = !DILocalVariable(name: "p", scope: !179, file: !87, line: 160, type: !109)
!179 = distinct !DILexicalBlock(scope: !168, file: !87, line: 158, column: 3)
!180 = !DILocation(line: 0, scope: !168, inlinedAt: !181)
!181 = distinct !DILocation(line: 199, column: 36, scope: !144)
!182 = !DILocation(line: 165, column: 11, scope: !183, inlinedAt: !181)
!183 = distinct !DILexicalBlock(scope: !184, file: !87, line: 164, column: 7)
!184 = distinct !DILexicalBlock(scope: !179, file: !87, line: 163, column: 9)
!185 = !DILocation(line: 0, scope: !179, inlinedAt: !181)
!186 = !DILocation(line: 166, column: 15, scope: !187, inlinedAt: !181)
!187 = distinct !DILexicalBlock(scope: !183, file: !87, line: 166, column: 13)
!188 = !DILocation(line: 166, column: 13, scope: !183, inlinedAt: !181)
!189 = !DILocation(line: 168, column: 29, scope: !190, inlinedAt: !181)
!190 = distinct !DILexicalBlock(scope: !187, file: !87, line: 167, column: 11)
!191 = !DILocation(line: 168, column: 20, scope: !190, inlinedAt: !181)
!192 = !DILocation(line: 169, column: 31, scope: !190, inlinedAt: !181)
!193 = !DILocation(line: 169, column: 34, scope: !190, inlinedAt: !181)
!194 = !DILocation(line: 0, scope: !144)
!195 = !DILocation(line: 201, column: 22, scope: !151)
!196 = !DILocation(line: 201, column: 7, scope: !144)
!197 = !DILocation(line: 202, column: 5, scope: !150)
!198 = !{!199, !199, i64 0}
!199 = !{!"int", !134, i64 0}
!200 = !DILocation(line: 0, scope: !150)
!201 = !DILocation(line: 203, column: 10, scope: !144)
!202 = !DILocation(line: 62, column: 10, scope: !203, inlinedAt: !207)
!203 = distinct !DISubprogram(name: "GetMagickThreadId", scope: !91, file: !91, line: 55, type: !204, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !206)
!204 = !DISubroutineType(types: !205)
!205 = !{!96}
!206 = !{}
!207 = distinct !DILocation(line: 264, column: 22, scope: !144)
!208 = !DILocation(line: 264, column: 19, scope: !144)
!209 = !DILocation(line: 264, column: 21, scope: !144)
!210 = !{!211, !199, i64 8}
!211 = !{!"SemaphoreInfo", !212, i64 0, !199, i64 8, !212, i64 16, !212, i64 24}
!212 = !{!"long", !134, i64 0}
!213 = !DILocation(line: 265, column: 19, scope: !144)
!214 = !DILocation(line: 265, column: 34, scope: !144)
!215 = !{!211, !212, i64 16}
!216 = !DILocation(line: 266, column: 19, scope: !144)
!217 = !DILocation(line: 266, column: 28, scope: !144)
!218 = !{!211, !212, i64 24}
!219 = !DILocation(line: 267, column: 3, scope: !144)
!220 = !DISubprogram(name: "GetExceptionInfo", scope: !4, file: !4, line: 166, type: !221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !206)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !223}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!224 = !DISubprogram(name: "GetExceptionMessage", scope: !4, file: !4, line: 137, type: !225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !206)
!225 = !DISubroutineType(types: !226)
!226 = !{!152, !227}
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!228 = !DISubprogram(name: "ThrowMagickException", scope: !4, file: !4, line: 156, type: !229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !206)
!229 = !DISubroutineType(types: !230)
!230 = !{!115, !223, !231, !231, !171, !233, !231, !231, null}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!234 = !DISubprogram(name: "DestroyString", scope: !235, file: !235, line: 46, type: !236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !206)
!235 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!236 = !DISubroutineType(types: !237)
!237 = !{!152, !152}
!238 = !DISubprogram(name: "CatchException", scope: !4, file: !4, line: 164, type: !221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !206)
!239 = !DISubprogram(name: "DestroyExceptionInfo", scope: !4, file: !4, line: 148, type: !240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !206)
!240 = !DISubroutineType(types: !241)
!241 = !{!223, !223}
!242 = !DISubprogram(name: "MagickCoreTerminus", scope: !243, file: !243, line: 147, type: !244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !206)
!243 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!244 = !DISubroutineType(types: !245)
!245 = !{null}
!246 = !DISubprogram(name: "ResetMagickMemory", scope: !247, file: !247, line: 52, type: !248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !206)
!247 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!248 = !DISubroutineType(types: !249)
!249 = !{!109, !109, !102, !171}
!250 = distinct !DISubprogram(name: "DestroySemaphoreInfo", scope: !87, file: !87, line: 292, type: !124, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !251)
!251 = !{!252}
!252 = !DILocalVariable(name: "semaphore_info", arg: 1, scope: !250, file: !87, line: 292, type: !126)
!253 = !DILocation(line: 0, scope: !250)
!254 = !DILocation(line: 317, column: 4, scope: !250)
!255 = !DILocation(line: 317, column: 22, scope: !250)
!256 = !DILocation(line: 317, column: 31, scope: !250)
!257 = !DILocalVariable(name: "memory", arg: 1, scope: !258, file: !87, line: 177, type: !109)
!258 = distinct !DISubprogram(name: "RelinquishSemaphoreMemory", scope: !87, file: !87, line: 177, type: !259, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !261)
!259 = !DISubroutineType(types: !260)
!260 = !{!109, !109}
!261 = !{!257}
!262 = !DILocation(line: 0, scope: !258, inlinedAt: !263)
!263 = distinct !DILocation(line: 318, column: 37, scope: !250)
!264 = !DILocation(line: 186, column: 26, scope: !258, inlinedAt: !263)
!265 = !DILocation(line: 186, column: 8, scope: !258, inlinedAt: !263)
!266 = !DILocation(line: 186, column: 3, scope: !258, inlinedAt: !263)
!267 = !DILocation(line: 318, column: 18, scope: !250)
!268 = !DILocation(line: 320, column: 1, scope: !250)
!269 = distinct !DISubprogram(name: "LockSemaphoreInfo", scope: !87, file: !87, line: 344, type: !270, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !272)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !83}
!272 = !{!273}
!273 = !DILocalVariable(name: "semaphore_info", arg: 1, scope: !269, file: !87, line: 344, type: !83)
!274 = !DILocation(line: 0, scope: !269)
!275 = !DILocation(line: 378, column: 1, scope: !269)
!276 = distinct !DISubprogram(name: "SemaphoreComponentGenesis", scope: !87, file: !87, line: 398, type: !277, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !206)
!277 = !DISubroutineType(types: !278)
!278 = !{!115}
!279 = !DILocation(line: 401, column: 3, scope: !276)
!280 = distinct !DISubprogram(name: "SemaphoreComponentTerminus", scope: !87, file: !87, line: 422, type: !244, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !206)
!281 = !DILocation(line: 425, column: 1, scope: !280)
!282 = distinct !DISubprogram(name: "UnlockSemaphoreInfo", scope: !87, file: !87, line: 449, type: !270, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !283)
!283 = !{!284}
!284 = !DILocalVariable(name: "semaphore_info", arg: 1, scope: !282, file: !87, line: 449, type: !83)
!285 = !DILocation(line: 0, scope: !282)
!286 = !DILocation(line: 482, column: 1, scope: !282)
!287 = !DISubprogram(name: "getpid", scope: !288, file: !288, line: 628, type: !289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !206)
!288 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!289 = !DISubroutineType(types: !290)
!290 = !{!100}
