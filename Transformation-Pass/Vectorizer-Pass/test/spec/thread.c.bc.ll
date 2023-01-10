; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r/llvm-ir/525.x264_r_bc/input/thread.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/input/thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_input_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_hnd_t = type { %struct.cli_input_t, ptr, %struct.x264_picture_t, i32, i32, i32, i32, ptr }
%struct.x264_picture_t = type { i32, i32, i32, i32, i64, i64, ptr, %struct.x264_image_t, %struct.x264_hrd_t, ptr }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x ptr] }
%struct.x264_hrd_t = type { double, double, double, double }
%struct.video_info_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_input_arg_t = type { ptr, ptr, i32, i32 }

@thread_input = dso_local local_unnamed_addr global %struct.cli_input_t { ptr @open_file, ptr @get_frame_total, ptr null, ptr @read_frame, ptr @release_frame, ptr null, ptr @close_file }, align 8, !dbg !0
@input = external local_unnamed_addr global %struct.cli_input_t, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [29 x i8] c"x264 [error]: malloc failed\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @open_file(ptr nocapture noundef readnone %psz_filename, ptr nocapture noundef %p_handle, ptr nocapture noundef readonly %info, ptr nocapture noundef readnone %opt) #0 !dbg !288 {
entry:
  call void @llvm.dbg.value(metadata ptr %psz_filename, metadata !290, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata ptr %p_handle, metadata !291, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata ptr %info, metadata !292, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata ptr %opt, metadata !293, metadata !DIExpression()), !dbg !314
  %call = tail call noalias dereferenceable_or_null(224) ptr @malloc(i64 noundef 224) #8, !dbg !315
  call void @llvm.dbg.value(metadata ptr %call, metadata !294, metadata !DIExpression()), !dbg !314
  %tobool.not = icmp eq ptr %call, null, !dbg !316
  br i1 %tobool.not, label %if.then, label %lor.lhs.false, !dbg !318

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 2), align 8, !dbg !319, !tbaa !320
  %pic = getelementptr inbounds %struct.thread_hnd_t, ptr %call, i64 0, i32 2, !dbg !325
  %1 = load i32, ptr %info, align 4, !dbg !326, !tbaa !327
  %width = getelementptr inbounds %struct.video_info_t, ptr %info, i64 0, i32 11, !dbg !330
  %2 = load i32, ptr %width, align 4, !dbg !330, !tbaa !331
  %height = getelementptr inbounds %struct.video_info_t, ptr %info, i64 0, i32 3, !dbg !332
  %3 = load i32, ptr %height, align 4, !dbg !332, !tbaa !333
  %call1 = tail call i32 %0(ptr noundef nonnull %pic, i32 noundef %1, i32 noundef %2, i32 noundef %3) #9, !dbg !334
  %tobool2.not = icmp eq i32 %call1, 0, !dbg !334
  br i1 %tobool2.not, label %if.end, label %if.then, !dbg !335

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr @stderr, align 8, !dbg !336, !tbaa !338
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 28, i64 1, ptr %4) #10, !dbg !339
  br label %cleanup, !dbg !340

if.end:                                           ; preds = %lor.lhs.false
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %call, ptr noundef nonnull align 8 dereferenceable(56) @input, i64 56, i1 false), !dbg !341, !tbaa.struct !342
  %6 = load ptr, ptr %p_handle, align 8, !dbg !343, !tbaa !338
  %p_handle4 = getelementptr inbounds %struct.thread_hnd_t, ptr %call, i64 0, i32 1, !dbg !344
  store ptr %6, ptr %p_handle4, align 8, !dbg !345, !tbaa !346
  %in_progress = getelementptr inbounds %struct.thread_hnd_t, ptr %call, i64 0, i32 6, !dbg !353
  store i32 0, ptr %in_progress, align 4, !dbg !354, !tbaa !355
  %next_frame = getelementptr inbounds %struct.thread_hnd_t, ptr %call, i64 0, i32 4, !dbg !356
  store i32 -1, ptr %next_frame, align 4, !dbg !357, !tbaa !358
  %call5 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #8, !dbg !359
  %next_args = getelementptr inbounds %struct.thread_hnd_t, ptr %call, i64 0, i32 7, !dbg !360
  store ptr %call5, ptr %next_args, align 8, !dbg !361, !tbaa !362
  %tobool7.not = icmp eq ptr %call5, null, !dbg !363
  br i1 %tobool7.not, label %cleanup, label %if.end9, !dbg !365

if.end9:                                          ; preds = %if.end
  store ptr %call, ptr %call5, align 8, !dbg !366, !tbaa !367
  %status = getelementptr inbounds %struct.thread_input_arg_t, ptr %call5, i64 0, i32 3, !dbg !369
  store i32 0, ptr %status, align 4, !dbg !370, !tbaa !371
  %7 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 1), align 8, !dbg !372, !tbaa !373
  %call14 = tail call i32 %7(ptr noundef %6) #9, !dbg !374
  %frame_total = getelementptr inbounds %struct.thread_hnd_t, ptr %call, i64 0, i32 5, !dbg !375
  store i32 %call14, ptr %frame_total, align 8, !dbg !376, !tbaa !377
  %picture_alloc = getelementptr inbounds %struct.cli_input_t, ptr %call, i64 0, i32 2, !dbg !378
  %8 = load ptr, ptr %picture_alloc, align 8, !dbg !378, !tbaa !379
  store ptr %8, ptr getelementptr inbounds (%struct.cli_input_t, ptr @thread_input, i64 0, i32 2), align 8, !dbg !380, !tbaa !320
  %picture_clean = getelementptr inbounds %struct.cli_input_t, ptr %call, i64 0, i32 5, !dbg !381
  %9 = load ptr, ptr %picture_clean, align 8, !dbg !381, !tbaa !382
  store ptr %9, ptr getelementptr inbounds (%struct.cli_input_t, ptr @thread_input, i64 0, i32 5), align 8, !dbg !383, !tbaa !384
  store ptr %call, ptr %p_handle, align 8, !dbg !385, !tbaa !338
  br label %cleanup, !dbg !386

cleanup:                                          ; preds = %if.end, %if.end9, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.end9 ], [ -1, %if.end ], !dbg !314
  ret i32 %retval.0, !dbg !387
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define internal i32 @get_frame_total(ptr nocapture noundef readonly %handle) #1 !dbg !388 {
entry:
  call void @llvm.dbg.value(metadata ptr %handle, metadata !390, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.value(metadata ptr %handle, metadata !391, metadata !DIExpression()), !dbg !392
  %frame_total = getelementptr inbounds %struct.thread_hnd_t, ptr %handle, i64 0, i32 5, !dbg !393
  %0 = load i32, ptr %frame_total, align 8, !dbg !393, !tbaa !377
  ret i32 %0, !dbg !394
}

; Function Attrs: nounwind uwtable
define internal i32 @read_frame(ptr noundef %p_pic, ptr noundef %handle, i32 noundef %i_frame) #0 !dbg !395 {
entry:
  %t = alloca %struct.x264_picture_t, align 8
  call void @llvm.dbg.value(metadata ptr %p_pic, metadata !397, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata ptr %handle, metadata !398, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i32 %i_frame, metadata !399, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata ptr %handle, metadata !400, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i32 0, metadata !401, metadata !DIExpression()), !dbg !405
  %next_frame = getelementptr inbounds %struct.thread_hnd_t, ptr %handle, i64 0, i32 4, !dbg !406
  %0 = load i32, ptr %next_frame, align 4, !dbg !406, !tbaa !358
  %cmp = icmp sgt i32 %0, -1, !dbg !408
  br i1 %cmp, label %if.then, label %if.end, !dbg !409

if.then:                                          ; preds = %entry
  %next_args = getelementptr inbounds %struct.thread_hnd_t, ptr %handle, i64 0, i32 7, !dbg !410
  %1 = load ptr, ptr %next_args, align 8, !dbg !410, !tbaa !362
  %status = getelementptr inbounds %struct.thread_input_arg_t, ptr %1, i64 0, i32 3, !dbg !412
  %2 = load i32, ptr %status, align 4, !dbg !412, !tbaa !371
  call void @llvm.dbg.value(metadata i32 %2, metadata !401, metadata !DIExpression()), !dbg !405
  %in_progress = getelementptr inbounds %struct.thread_hnd_t, ptr %handle, i64 0, i32 6, !dbg !413
  store i32 0, ptr %in_progress, align 4, !dbg !414, !tbaa !355
  br label %if.end, !dbg !415

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %2, %if.then ], [ 0, %entry ], !dbg !405
  call void @llvm.dbg.value(metadata i32 %ret.0, metadata !401, metadata !DIExpression()), !dbg !405
  %cmp2 = icmp eq i32 %0, %i_frame, !dbg !416
  br i1 %cmp2, label %do.body, label %if.else, !dbg !417

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %t), !dbg !418
  call void @llvm.dbg.declare(metadata ptr %t, metadata !402, metadata !DIExpression()), !dbg !418
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %t, ptr noundef nonnull align 8 dereferenceable(136) %p_pic, i64 136, i1 false), !dbg !418, !tbaa.struct !419
  %pic = getelementptr inbounds %struct.thread_hnd_t, ptr %handle, i64 0, i32 2, !dbg !418
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %p_pic, ptr noundef nonnull align 8 dereferenceable(136) %pic, i64 136, i1 false), !dbg !418, !tbaa.struct !419
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %pic, ptr noundef nonnull align 8 dereferenceable(136) %t, i64 136, i1 false), !dbg !418, !tbaa.struct !419
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %t), !dbg !424
  br label %if.end6, !dbg !418

if.else:                                          ; preds = %if.end
  %read_frame = getelementptr inbounds %struct.cli_input_t, ptr %handle, i64 0, i32 3, !dbg !425
  %3 = load ptr, ptr %read_frame, align 8, !dbg !425, !tbaa !426
  %p_handle = getelementptr inbounds %struct.thread_hnd_t, ptr %handle, i64 0, i32 1, !dbg !427
  %4 = load ptr, ptr %p_handle, align 8, !dbg !427, !tbaa !346
  %call = tail call i32 %3(ptr noundef %p_pic, ptr noundef %4, i32 noundef %i_frame) #9, !dbg !428
  %or5 = or i32 %call, %ret.0, !dbg !429
  call void @llvm.dbg.value(metadata i32 %or5, metadata !401, metadata !DIExpression()), !dbg !405
  br label %if.end6

if.end6:                                          ; preds = %if.else, %do.body
  %ret.1 = phi i32 [ %ret.0, %do.body ], [ %or5, %if.else ], !dbg !405
  call void @llvm.dbg.value(metadata i32 %ret.1, metadata !401, metadata !DIExpression()), !dbg !405
  %frame_total = getelementptr inbounds %struct.thread_hnd_t, ptr %handle, i64 0, i32 5, !dbg !430
  %5 = load i32, ptr %frame_total, align 8, !dbg !430, !tbaa !377
  %tobool.not = icmp eq i32 %5, 0, !dbg !432
  %add = add nsw i32 %i_frame, 1
  %cmp8 = icmp slt i32 %add, %5
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp8, !dbg !433
  br i1 %or.cond, label %if.then9, label %if.else18, !dbg !433

if.then9:                                         ; preds = %if.end6
  %next_args11 = getelementptr inbounds %struct.thread_hnd_t, ptr %handle, i64 0, i32 7, !dbg !434
  %6 = load ptr, ptr %next_args11, align 8, !dbg !434, !tbaa !362
  %i_frame12 = getelementptr inbounds %struct.thread_input_arg_t, ptr %6, i64 0, i32 2, !dbg !436
  store i32 %add, ptr %i_frame12, align 8, !dbg !437, !tbaa !438
  store i32 %add, ptr %next_frame, align 4, !dbg !439, !tbaa !358
  %pic14 = getelementptr inbounds %struct.thread_hnd_t, ptr %handle, i64 0, i32 2, !dbg !440
  %pic16 = getelementptr inbounds %struct.thread_input_arg_t, ptr %6, i64 0, i32 1, !dbg !441
  store ptr %pic14, ptr %pic16, align 8, !dbg !442, !tbaa !443
  %in_progress17 = getelementptr inbounds %struct.thread_hnd_t, ptr %handle, i64 0, i32 6, !dbg !444
  store i32 1, ptr %in_progress17, align 4, !dbg !445, !tbaa !355
  br label %if.end20, !dbg !446

if.else18:                                        ; preds = %if.end6
  store i32 -1, ptr %next_frame, align 4, !dbg !447, !tbaa !358
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.then9
  ret i32 %ret.1, !dbg !448
}

; Function Attrs: nounwind uwtable
define internal i32 @release_frame(ptr noundef %pic, ptr nocapture noundef readonly %handle) #0 !dbg !449 {
entry:
  call void @llvm.dbg.value(metadata ptr %pic, metadata !451, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.value(metadata ptr %handle, metadata !452, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.value(metadata ptr %handle, metadata !453, metadata !DIExpression()), !dbg !454
  %release_frame = getelementptr inbounds %struct.cli_input_t, ptr %handle, i64 0, i32 4, !dbg !455
  %0 = load ptr, ptr %release_frame, align 8, !dbg !455, !tbaa !457
  %tobool.not = icmp eq ptr %0, null, !dbg !458
  br i1 %tobool.not, label %cleanup, label %if.then, !dbg !459

if.then:                                          ; preds = %entry
  %p_handle = getelementptr inbounds %struct.thread_hnd_t, ptr %handle, i64 0, i32 1, !dbg !460
  %1 = load ptr, ptr %p_handle, align 8, !dbg !460, !tbaa !346
  %call = tail call i32 %0(ptr noundef %pic, ptr noundef %1) #9, !dbg !461
  br label %cleanup, !dbg !462

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry ], !dbg !454
  ret i32 %retval.0, !dbg !463
}

; Function Attrs: nounwind uwtable
define internal i32 @close_file(ptr noundef %handle) #0 !dbg !464 {
entry:
  call void @llvm.dbg.value(metadata ptr %handle, metadata !466, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata ptr %handle, metadata !467, metadata !DIExpression()), !dbg !468
  %close_file = getelementptr inbounds %struct.cli_input_t, ptr %handle, i64 0, i32 6, !dbg !469
  %0 = load ptr, ptr %close_file, align 8, !dbg !469, !tbaa !470
  %p_handle = getelementptr inbounds %struct.thread_hnd_t, ptr %handle, i64 0, i32 1, !dbg !471
  %1 = load ptr, ptr %p_handle, align 8, !dbg !471, !tbaa !346
  %call = tail call i32 %0(ptr noundef %1) #9, !dbg !472
  %picture_clean = getelementptr inbounds %struct.cli_input_t, ptr %handle, i64 0, i32 5, !dbg !473
  %2 = load ptr, ptr %picture_clean, align 8, !dbg !473, !tbaa !382
  %pic = getelementptr inbounds %struct.thread_hnd_t, ptr %handle, i64 0, i32 2, !dbg !474
  tail call void %2(ptr noundef nonnull %pic) #9, !dbg !475
  %next_args = getelementptr inbounds %struct.thread_hnd_t, ptr %handle, i64 0, i32 7, !dbg !476
  %3 = load ptr, ptr %next_args, align 8, !dbg !476, !tbaa !362
  tail call void @free(ptr noundef %3) #9, !dbg !477
  tail call void @free(ptr noundef %handle) #9, !dbg !478
  ret i32 0, !dbg !479
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }
attributes #10 = { cold }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!281, !282, !283, !284, !285, !286}
!llvm.ident = !{!287}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "thread_input", scope: !2, file: !5, line: 137, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/input/thread.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r", checksumkind: CSK_MD5, checksum: "74a3b61dd0b7a18fcd2cda8c6734464e")
!4 = !{!0}
!5 = !DIFile(filename: "apps/525.x264_r/src/x264_src/input/thread.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "74a3b61dd0b7a18fcd2cda8c6734464e")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_input_t", file: !7, line: 63, baseType: !8)
!7 = !DIFile(filename: "apps/525.x264_r/src/x264_src/input/input.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f28c863d273681dfcaca9779e9fcbd53")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 54, size: 448, elements: !9)
!9 = !{!10, !50, !54, !268, !272, !276, !280}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "open_file", scope: !8, file: !7, line: 56, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15, !17, !21, !42}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "hnd_t", file: !19, line: 30, baseType: !20)
!19 = !DIFile(filename: "apps/525.x264_r/src/x264_src/muxers.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bcea0820748b2dc47392b7f6393a96ff")
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "video_info_t", file: !7, line: 52, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 38, size: 384, elements: !24)
!24 = !{!25, !26, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "csp", scope: !23, file: !7, line: 40, baseType: !14, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "fps_num", scope: !23, file: !7, line: 41, baseType: !27, size: 32, offset: 32)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !28, line: 26, baseType: !29)
!28 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !30, line: 42, baseType: !31)
!30 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!31 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "fps_den", scope: !23, file: !7, line: 42, baseType: !27, size: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !23, file: !7, line: 43, baseType: !14, size: 32, offset: 96)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "interlaced", scope: !23, file: !7, line: 44, baseType: !14, size: 32, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !23, file: !7, line: 45, baseType: !27, size: 32, offset: 160)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !23, file: !7, line: 46, baseType: !27, size: 32, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tff", scope: !23, file: !7, line: 47, baseType: !14, size: 32, offset: 224)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "timebase_num", scope: !23, file: !7, line: 48, baseType: !27, size: 32, offset: 256)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "timebase_den", scope: !23, file: !7, line: 49, baseType: !27, size: 32, offset: 288)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "vfr", scope: !23, file: !7, line: 50, baseType: !14, size: 32, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !23, file: !7, line: 51, baseType: !14, size: 32, offset: 352)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_input_opt_t", file: !7, line: 35, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 29, size: 256, elements: !45)
!45 = !{!46, !47, !48, !49}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !44, file: !7, line: 31, baseType: !15, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !44, file: !7, line: 32, baseType: !15, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "timebase", scope: !44, file: !7, line: 33, baseType: !15, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "seek", scope: !44, file: !7, line: 34, baseType: !14, size: 32, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "get_frame_total", scope: !8, file: !7, line: 57, baseType: !51, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!14, !18}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "picture_alloc", scope: !8, file: !7, line: 58, baseType: !55, size: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!14, !58, !14, !14, !14}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_picture_t", file: !60, line: 549, baseType: !61)
!60 = !DIFile(filename: "apps/525.x264_r/src/x264_src/x264.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !60, line: 513, size: 1088, elements: !62)
!62 = !{!63, !64, !65, !66, !67, !72, !73, !245, !258, !267}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !61, file: !60, line: 521, baseType: !14, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !61, file: !60, line: 523, baseType: !14, size: 32, offset: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !61, file: !60, line: 526, baseType: !14, size: 32, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !61, file: !60, line: 529, baseType: !14, size: 32, offset: 96)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !61, file: !60, line: 531, baseType: !68, size: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !69, line: 27, baseType: !70)
!69 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !30, line: 44, baseType: !71)
!71 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts", scope: !61, file: !60, line: 534, baseType: !68, size: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !61, file: !60, line: 541, baseType: !74, size: 64, offset: 256)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !60, line: 376, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !60, line: 176, size: 5632, elements: !77)
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !126, !127, !128, !129, !133, !134, !148, !149, !150, !151, !152, !183, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !76, file: !60, line: 179, baseType: !31, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !76, file: !60, line: 180, baseType: !14, size: 32, offset: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !76, file: !60, line: 181, baseType: !14, size: 32, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !76, file: !60, line: 182, baseType: !14, size: 32, offset: 96)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !76, file: !60, line: 183, baseType: !14, size: 32, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !76, file: !60, line: 186, baseType: !14, size: 32, offset: 160)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !76, file: !60, line: 187, baseType: !14, size: 32, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !76, file: !60, line: 188, baseType: !14, size: 32, offset: 224)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !76, file: !60, line: 189, baseType: !14, size: 32, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !76, file: !60, line: 190, baseType: !14, size: 32, offset: 288)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !76, file: !60, line: 198, baseType: !14, size: 32, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !76, file: !60, line: 215, baseType: !90, size: 288, offset: 352)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !76, file: !60, line: 200, size: 288, elements: !91)
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !90, file: !60, line: 203, baseType: !14, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !90, file: !60, line: 204, baseType: !14, size: 32, offset: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !90, file: !60, line: 206, baseType: !14, size: 32, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !90, file: !60, line: 209, baseType: !14, size: 32, offset: 96)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !90, file: !60, line: 210, baseType: !14, size: 32, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !90, file: !60, line: 211, baseType: !14, size: 32, offset: 160)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !90, file: !60, line: 212, baseType: !14, size: 32, offset: 192)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !90, file: !60, line: 213, baseType: !14, size: 32, offset: 224)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !90, file: !60, line: 214, baseType: !14, size: 32, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !76, file: !60, line: 218, baseType: !14, size: 32, offset: 640)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !76, file: !60, line: 219, baseType: !14, size: 32, offset: 672)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !76, file: !60, line: 220, baseType: !14, size: 32, offset: 704)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !76, file: !60, line: 221, baseType: !14, size: 32, offset: 736)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !76, file: !60, line: 222, baseType: !14, size: 32, offset: 768)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !76, file: !60, line: 224, baseType: !14, size: 32, offset: 800)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !76, file: !60, line: 225, baseType: !14, size: 32, offset: 832)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !76, file: !60, line: 226, baseType: !14, size: 32, offset: 864)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !76, file: !60, line: 227, baseType: !14, size: 32, offset: 896)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !76, file: !60, line: 229, baseType: !14, size: 32, offset: 928)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !76, file: !60, line: 230, baseType: !14, size: 32, offset: 960)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !76, file: !60, line: 231, baseType: !14, size: 32, offset: 992)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !76, file: !60, line: 233, baseType: !14, size: 32, offset: 1024)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !76, file: !60, line: 234, baseType: !14, size: 32, offset: 1056)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !76, file: !60, line: 236, baseType: !14, size: 32, offset: 1088)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !76, file: !60, line: 237, baseType: !14, size: 32, offset: 1120)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !76, file: !60, line: 239, baseType: !14, size: 32, offset: 1152)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !76, file: !60, line: 240, baseType: !15, size: 64, offset: 1216)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !76, file: !60, line: 241, baseType: !120, size: 128, offset: 1280)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 128, elements: !124)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !28, line: 24, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !30, line: 38, baseType: !123)
!123 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!124 = !{!125}
!125 = !DISubrange(count: 16)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !76, file: !60, line: 242, baseType: !120, size: 128, offset: 1408)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !76, file: !60, line: 243, baseType: !120, size: 128, offset: 1536)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !76, file: !60, line: 244, baseType: !120, size: 128, offset: 1664)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !76, file: !60, line: 245, baseType: !130, size: 512, offset: 1792)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 512, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !76, file: !60, line: 246, baseType: !130, size: 512, offset: 2304)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !76, file: !60, line: 249, baseType: !135, size: 64, offset: 2816)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !20, !14, !138, !140}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !142)
!142 = !{!143, !145, !146, !147}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !141, file: !144, line: 137, baseType: !31, size: 32)
!144 = !DIFile(filename: "apps/525.x264_r/src/x264_src/input/thread.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake")
!145 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !141, file: !144, line: 137, baseType: !31, size: 32, offset: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !141, file: !144, line: 137, baseType: !20, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !141, file: !144, line: 137, baseType: !20, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !76, file: !60, line: 250, baseType: !20, size: 64, offset: 2880)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !76, file: !60, line: 251, baseType: !14, size: 32, offset: 2944)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !76, file: !60, line: 252, baseType: !14, size: 32, offset: 2976)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !76, file: !60, line: 253, baseType: !15, size: 64, offset: 3008)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !76, file: !60, line: 287, baseType: !153, size: 800, offset: 3072)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !76, file: !60, line: 256, size: 800, elements: !154)
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !175, !176, !177, !181, !182}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !153, file: !60, line: 258, baseType: !31, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !153, file: !60, line: 259, baseType: !31, size: 32, offset: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !153, file: !60, line: 261, baseType: !14, size: 32, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !153, file: !60, line: 262, baseType: !14, size: 32, offset: 96)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !153, file: !60, line: 263, baseType: !14, size: 32, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !153, file: !60, line: 264, baseType: !14, size: 32, offset: 160)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !153, file: !60, line: 265, baseType: !14, size: 32, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !153, file: !60, line: 267, baseType: !14, size: 32, offset: 224)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !153, file: !60, line: 268, baseType: !14, size: 32, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !153, file: !60, line: 269, baseType: !14, size: 32, offset: 288)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !153, file: !60, line: 270, baseType: !14, size: 32, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !153, file: !60, line: 271, baseType: !14, size: 32, offset: 352)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !153, file: !60, line: 272, baseType: !14, size: 32, offset: 384)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !153, file: !60, line: 273, baseType: !14, size: 32, offset: 416)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !153, file: !60, line: 274, baseType: !14, size: 32, offset: 448)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !153, file: !60, line: 275, baseType: !14, size: 32, offset: 480)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !153, file: !60, line: 276, baseType: !14, size: 32, offset: 512)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !153, file: !60, line: 277, baseType: !14, size: 32, offset: 544)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !153, file: !60, line: 278, baseType: !174, size: 32, offset: 576)
!174 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !153, file: !60, line: 279, baseType: !174, size: 32, offset: 608)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !153, file: !60, line: 280, baseType: !14, size: 32, offset: 640)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !153, file: !60, line: 283, baseType: !178, size: 64, offset: 672)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 2)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !153, file: !60, line: 285, baseType: !14, size: 32, offset: 736)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !153, file: !60, line: 286, baseType: !14, size: 32, offset: 768)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !76, file: !60, line: 327, baseType: !184, size: 1152, offset: 3904)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !76, file: !60, line: 290, size: 1152, elements: !185)
!185 = !{!186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !223, !224}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !184, file: !60, line: 292, baseType: !14, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !184, file: !60, line: 294, baseType: !14, size: 32, offset: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !184, file: !60, line: 295, baseType: !14, size: 32, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !184, file: !60, line: 296, baseType: !14, size: 32, offset: 96)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !184, file: !60, line: 297, baseType: !14, size: 32, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !184, file: !60, line: 299, baseType: !14, size: 32, offset: 160)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !184, file: !60, line: 300, baseType: !174, size: 32, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !184, file: !60, line: 301, baseType: !174, size: 32, offset: 224)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !184, file: !60, line: 302, baseType: !174, size: 32, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !184, file: !60, line: 303, baseType: !14, size: 32, offset: 288)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !184, file: !60, line: 304, baseType: !14, size: 32, offset: 320)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !184, file: !60, line: 305, baseType: !174, size: 32, offset: 352)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !184, file: !60, line: 306, baseType: !174, size: 32, offset: 384)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !184, file: !60, line: 307, baseType: !174, size: 32, offset: 416)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !184, file: !60, line: 309, baseType: !14, size: 32, offset: 448)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !184, file: !60, line: 310, baseType: !174, size: 32, offset: 480)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !184, file: !60, line: 311, baseType: !14, size: 32, offset: 512)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !184, file: !60, line: 312, baseType: !14, size: 32, offset: 544)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !184, file: !60, line: 315, baseType: !14, size: 32, offset: 576)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !184, file: !60, line: 316, baseType: !15, size: 64, offset: 640)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !184, file: !60, line: 317, baseType: !14, size: 32, offset: 704)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !184, file: !60, line: 318, baseType: !15, size: 64, offset: 768)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !184, file: !60, line: 321, baseType: !174, size: 32, offset: 832)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !184, file: !60, line: 322, baseType: !174, size: 32, offset: 864)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !184, file: !60, line: 323, baseType: !174, size: 32, offset: 896)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !184, file: !60, line: 324, baseType: !212, size: 64, offset: 960)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !60, line: 174, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !60, line: 167, size: 256, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !221}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !214, file: !60, line: 169, baseType: !14, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !214, file: !60, line: 169, baseType: !14, size: 32, offset: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !214, file: !60, line: 170, baseType: !14, size: 32, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !214, file: !60, line: 171, baseType: !14, size: 32, offset: 96)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !214, file: !60, line: 172, baseType: !174, size: 32, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !214, file: !60, line: 173, baseType: !222, size: 64, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !184, file: !60, line: 325, baseType: !14, size: 32, offset: 1024)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !184, file: !60, line: 326, baseType: !15, size: 64, offset: 1088)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !76, file: !60, line: 330, baseType: !14, size: 32, offset: 5056)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !76, file: !60, line: 331, baseType: !14, size: 32, offset: 5088)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !76, file: !60, line: 332, baseType: !14, size: 32, offset: 5120)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !76, file: !60, line: 334, baseType: !14, size: 32, offset: 5152)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !76, file: !60, line: 335, baseType: !14, size: 32, offset: 5184)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !76, file: !60, line: 336, baseType: !27, size: 32, offset: 5216)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !76, file: !60, line: 337, baseType: !27, size: 32, offset: 5248)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !76, file: !60, line: 338, baseType: !27, size: 32, offset: 5280)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !76, file: !60, line: 339, baseType: !27, size: 32, offset: 5312)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !76, file: !60, line: 340, baseType: !14, size: 32, offset: 5344)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !76, file: !60, line: 344, baseType: !14, size: 32, offset: 5376)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !76, file: !60, line: 356, baseType: !14, size: 32, offset: 5408)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !76, file: !60, line: 364, baseType: !14, size: 32, offset: 5440)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !76, file: !60, line: 367, baseType: !14, size: 32, offset: 5472)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !76, file: !60, line: 368, baseType: !14, size: 32, offset: 5504)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !76, file: !60, line: 369, baseType: !14, size: 32, offset: 5536)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !76, file: !60, line: 375, baseType: !242, size: 64, offset: 5568)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !20}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "img", scope: !61, file: !60, line: 543, baseType: !246, size: 448, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_image_t", file: !60, line: 511, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !60, line: 505, size: 448, elements: !248)
!248 = !{!249, !250, !251, !255}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !247, file: !60, line: 507, baseType: !14, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !247, file: !60, line: 508, baseType: !14, size: 32, offset: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !247, file: !60, line: 509, baseType: !252, size: 128, offset: 64)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 4)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !247, file: !60, line: 510, baseType: !256, size: 256, offset: 192)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 256, elements: !253)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !61, file: !60, line: 545, baseType: !259, size: 256, offset: 768)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !60, line: 503, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !60, line: 496, size: 256, elements: !261)
!261 = !{!262, !264, !265, !266}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !260, file: !60, line: 498, baseType: !263, size: 64)
!263 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !260, file: !60, line: 499, baseType: !263, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !260, file: !60, line: 500, baseType: !263, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !260, file: !60, line: 502, baseType: !263, size: 64, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !61, file: !60, line: 548, baseType: !20, size: 64, offset: 1024)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "read_frame", scope: !8, file: !7, line: 59, baseType: !269, size: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!14, !58, !18, !14}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "release_frame", scope: !8, file: !7, line: 60, baseType: !273, size: 64, offset: 256)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!14, !58, !18}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "picture_clean", scope: !8, file: !7, line: 61, baseType: !277, size: 64, offset: 320)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !58}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "close_file", scope: !8, file: !7, line: 62, baseType: !51, size: 64, offset: 384)
!281 = !{i32 7, !"Dwarf Version", i32 5}
!282 = !{i32 2, !"Debug Info Version", i32 3}
!283 = !{i32 1, !"wchar_size", i32 4}
!284 = !{i32 7, !"PIC Level", i32 2}
!285 = !{i32 7, !"PIE Level", i32 2}
!286 = !{i32 7, !"uwtable", i32 2}
!287 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!288 = distinct !DISubprogram(name: "open_file", scope: !5, file: !5, line: 48, type: !12, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !289)
!289 = !{!290, !291, !292, !293, !294}
!290 = !DILocalVariable(name: "psz_filename", arg: 1, scope: !288, file: !5, line: 48, type: !15)
!291 = !DILocalVariable(name: "p_handle", arg: 2, scope: !288, file: !5, line: 48, type: !17)
!292 = !DILocalVariable(name: "info", arg: 3, scope: !288, file: !5, line: 48, type: !21)
!293 = !DILocalVariable(name: "opt", arg: 4, scope: !288, file: !5, line: 48, type: !42)
!294 = !DILocalVariable(name: "h", scope: !288, file: !5, line: 50, type: !295)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_hnd_t", file: !5, line: 38, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5, line: 28, size: 1792, elements: !298)
!298 = !{!299, !300, !301, !302, !303, !304, !305, !306}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !297, file: !5, line: 30, baseType: !6, size: 448)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "p_handle", scope: !297, file: !5, line: 31, baseType: !18, size: 64, offset: 448)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !297, file: !5, line: 32, baseType: !59, size: 1088, offset: 512)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !297, file: !5, line: 33, baseType: !14, size: 32, offset: 1600)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next_frame", scope: !297, file: !5, line: 34, baseType: !14, size: 32, offset: 1632)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "frame_total", scope: !297, file: !5, line: 35, baseType: !14, size: 32, offset: 1664)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "in_progress", scope: !297, file: !5, line: 36, baseType: !14, size: 32, offset: 1696)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "next_args", scope: !297, file: !5, line: 37, baseType: !307, size: 64, offset: 1728)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_input_arg_t", file: !5, line: 40, size: 192, elements: !309)
!309 = !{!310, !311, !312, !313}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !308, file: !5, line: 42, baseType: !295, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !308, file: !5, line: 43, baseType: !58, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !308, file: !5, line: 44, baseType: !14, size: 32, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !308, file: !5, line: 45, baseType: !14, size: 32, offset: 160)
!314 = !DILocation(line: 0, scope: !288)
!315 = !DILocation(line: 50, column: 23, scope: !288)
!316 = !DILocation(line: 51, column: 10, scope: !317)
!317 = distinct !DILexicalBlock(scope: !288, file: !5, line: 51, column: 9)
!318 = !DILocation(line: 51, column: 12, scope: !317)
!319 = !DILocation(line: 51, column: 21, scope: !317)
!320 = !{!321, !322, i64 16}
!321 = !{!"", !322, i64 0, !322, i64 8, !322, i64 16, !322, i64 24, !322, i64 32, !322, i64 40, !322, i64 48}
!322 = !{!"any pointer", !323, i64 0}
!323 = !{!"omnipotent char", !324, i64 0}
!324 = !{!"Simple C/C++ TBAA"}
!325 = !DILocation(line: 51, column: 40, scope: !317)
!326 = !DILocation(line: 51, column: 51, scope: !317)
!327 = !{!328, !329, i64 0}
!328 = !{!"", !329, i64 0, !329, i64 4, !329, i64 8, !329, i64 12, !329, i64 16, !329, i64 20, !329, i64 24, !329, i64 28, !329, i64 32, !329, i64 36, !329, i64 40, !329, i64 44}
!329 = !{!"int", !323, i64 0}
!330 = !DILocation(line: 51, column: 62, scope: !317)
!331 = !{!328, !329, i64 44}
!332 = !DILocation(line: 51, column: 75, scope: !317)
!333 = !{!328, !329, i64 12}
!334 = !DILocation(line: 51, column: 15, scope: !317)
!335 = !DILocation(line: 51, column: 9, scope: !288)
!336 = !DILocation(line: 53, column: 18, scope: !337)
!337 = distinct !DILexicalBlock(scope: !317, file: !5, line: 52, column: 5)
!338 = !{!322, !322, i64 0}
!339 = !DILocation(line: 53, column: 9, scope: !337)
!340 = !DILocation(line: 54, column: 9, scope: !337)
!341 = !DILocation(line: 56, column: 16, scope: !288)
!342 = !{i64 0, i64 8, !338, i64 8, i64 8, !338, i64 16, i64 8, !338, i64 24, i64 8, !338, i64 32, i64 8, !338, i64 40, i64 8, !338, i64 48, i64 8, !338}
!343 = !DILocation(line: 57, column: 19, scope: !288)
!344 = !DILocation(line: 57, column: 8, scope: !288)
!345 = !DILocation(line: 57, column: 17, scope: !288)
!346 = !{!347, !322, i64 56}
!347 = !{!"", !321, i64 0, !322, i64 56, !348, i64 64, !329, i64 200, !329, i64 204, !329, i64 208, !329, i64 212, !322, i64 216}
!348 = !{!"", !329, i64 0, !329, i64 4, !329, i64 8, !329, i64 12, !349, i64 16, !349, i64 24, !322, i64 32, !350, i64 40, !351, i64 96, !322, i64 128}
!349 = !{!"long", !323, i64 0}
!350 = !{!"", !329, i64 0, !329, i64 4, !323, i64 8, !323, i64 24}
!351 = !{!"", !352, i64 0, !352, i64 8, !352, i64 16, !352, i64 24}
!352 = !{!"double", !323, i64 0}
!353 = !DILocation(line: 58, column: 8, scope: !288)
!354 = !DILocation(line: 58, column: 20, scope: !288)
!355 = !{!347, !329, i64 212}
!356 = !DILocation(line: 59, column: 8, scope: !288)
!357 = !DILocation(line: 59, column: 19, scope: !288)
!358 = !{!347, !329, i64 204}
!359 = !DILocation(line: 60, column: 20, scope: !288)
!360 = !DILocation(line: 60, column: 8, scope: !288)
!361 = !DILocation(line: 60, column: 18, scope: !288)
!362 = !{!347, !322, i64 216}
!363 = !DILocation(line: 61, column: 10, scope: !364)
!364 = distinct !DILexicalBlock(scope: !288, file: !5, line: 61, column: 9)
!365 = !DILocation(line: 61, column: 9, scope: !288)
!366 = !DILocation(line: 63, column: 21, scope: !288)
!367 = !{!368, !322, i64 0}
!368 = !{!"thread_input_arg_t", !322, i64 0, !322, i64 8, !329, i64 16, !329, i64 20}
!369 = !DILocation(line: 64, column: 19, scope: !288)
!370 = !DILocation(line: 64, column: 26, scope: !288)
!371 = !{!368, !329, i64 20}
!372 = !DILocation(line: 65, column: 28, scope: !288)
!373 = !{!321, !322, i64 8}
!374 = !DILocation(line: 65, column: 22, scope: !288)
!375 = !DILocation(line: 65, column: 8, scope: !288)
!376 = !DILocation(line: 65, column: 20, scope: !288)
!377 = !{!347, !329, i64 208}
!378 = !DILocation(line: 66, column: 43, scope: !288)
!379 = !{!347, !322, i64 16}
!380 = !DILocation(line: 66, column: 32, scope: !288)
!381 = !DILocation(line: 67, column: 43, scope: !288)
!382 = !{!347, !322, i64 40}
!383 = !DILocation(line: 67, column: 32, scope: !288)
!384 = !{!321, !322, i64 40}
!385 = !DILocation(line: 69, column: 15, scope: !288)
!386 = !DILocation(line: 70, column: 5, scope: !288)
!387 = !DILocation(line: 71, column: 1, scope: !288)
!388 = distinct !DISubprogram(name: "get_frame_total", scope: !5, file: !5, line: 73, type: !52, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !389)
!389 = !{!390, !391}
!390 = !DILocalVariable(name: "handle", arg: 1, scope: !388, file: !5, line: 73, type: !18)
!391 = !DILocalVariable(name: "h", scope: !388, file: !5, line: 75, type: !295)
!392 = !DILocation(line: 0, scope: !388)
!393 = !DILocation(line: 76, column: 15, scope: !388)
!394 = !DILocation(line: 76, column: 5, scope: !388)
!395 = distinct !DISubprogram(name: "read_frame", scope: !5, file: !5, line: 84, type: !270, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !396)
!396 = !{!397, !398, !399, !400, !401, !402}
!397 = !DILocalVariable(name: "p_pic", arg: 1, scope: !395, file: !5, line: 84, type: !58)
!398 = !DILocalVariable(name: "handle", arg: 2, scope: !395, file: !5, line: 84, type: !18)
!399 = !DILocalVariable(name: "i_frame", arg: 3, scope: !395, file: !5, line: 84, type: !14)
!400 = !DILocalVariable(name: "h", scope: !395, file: !5, line: 86, type: !295)
!401 = !DILocalVariable(name: "ret", scope: !395, file: !5, line: 87, type: !14)
!402 = !DILocalVariable(name: "t", scope: !403, file: !5, line: 97, type: !59)
!403 = distinct !DILexicalBlock(scope: !404, file: !5, line: 97, column: 9)
!404 = distinct !DILexicalBlock(scope: !395, file: !5, line: 96, column: 9)
!405 = !DILocation(line: 0, scope: !395)
!406 = !DILocation(line: 89, column: 12, scope: !407)
!407 = distinct !DILexicalBlock(scope: !395, file: !5, line: 89, column: 9)
!408 = !DILocation(line: 89, column: 23, scope: !407)
!409 = !DILocation(line: 89, column: 9, scope: !395)
!410 = !DILocation(line: 92, column: 19, scope: !411)
!411 = distinct !DILexicalBlock(scope: !407, file: !5, line: 90, column: 5)
!412 = !DILocation(line: 92, column: 30, scope: !411)
!413 = !DILocation(line: 93, column: 12, scope: !411)
!414 = !DILocation(line: 93, column: 24, scope: !411)
!415 = !DILocation(line: 94, column: 5, scope: !411)
!416 = !DILocation(line: 96, column: 23, scope: !404)
!417 = !DILocation(line: 96, column: 9, scope: !395)
!418 = !DILocation(line: 97, column: 9, scope: !403)
!419 = !{i64 0, i64 4, !420, i64 4, i64 4, !420, i64 8, i64 4, !420, i64 12, i64 4, !420, i64 16, i64 8, !421, i64 24, i64 8, !421, i64 32, i64 8, !338, i64 40, i64 4, !420, i64 44, i64 4, !420, i64 48, i64 16, !422, i64 64, i64 32, !422, i64 96, i64 8, !423, i64 104, i64 8, !423, i64 112, i64 8, !423, i64 120, i64 8, !423, i64 128, i64 8, !338}
!420 = !{!329, !329, i64 0}
!421 = !{!349, !349, i64 0}
!422 = !{!323, !323, i64 0}
!423 = !{!352, !352, i64 0}
!424 = !DILocation(line: 97, column: 9, scope: !404)
!425 = !DILocation(line: 99, column: 25, scope: !404)
!426 = !{!347, !322, i64 24}
!427 = !DILocation(line: 99, column: 47, scope: !404)
!428 = !DILocation(line: 99, column: 16, scope: !404)
!429 = !DILocation(line: 99, column: 13, scope: !404)
!430 = !DILocation(line: 101, column: 13, scope: !431)
!431 = distinct !DILexicalBlock(scope: !395, file: !5, line: 101, column: 9)
!432 = !DILocation(line: 101, column: 10, scope: !431)
!433 = !DILocation(line: 101, column: 25, scope: !431)
!434 = !DILocation(line: 104, column: 12, scope: !435)
!435 = distinct !DILexicalBlock(scope: !431, file: !5, line: 102, column: 5)
!436 = !DILocation(line: 104, column: 23, scope: !435)
!437 = !DILocation(line: 104, column: 31, scope: !435)
!438 = !{!368, !329, i64 16}
!439 = !DILocation(line: 103, column: 23, scope: !435)
!440 = !DILocation(line: 105, column: 33, scope: !435)
!441 = !DILocation(line: 105, column: 23, scope: !435)
!442 = !DILocation(line: 105, column: 27, scope: !435)
!443 = !{!368, !322, i64 8}
!444 = !DILocation(line: 108, column: 12, scope: !435)
!445 = !DILocation(line: 108, column: 24, scope: !435)
!446 = !DILocation(line: 109, column: 5, scope: !435)
!447 = !DILocation(line: 111, column: 23, scope: !431)
!448 = !DILocation(line: 113, column: 5, scope: !395)
!449 = distinct !DISubprogram(name: "release_frame", scope: !5, file: !5, line: 116, type: !274, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !450)
!450 = !{!451, !452, !453}
!451 = !DILocalVariable(name: "pic", arg: 1, scope: !449, file: !5, line: 116, type: !58)
!452 = !DILocalVariable(name: "handle", arg: 2, scope: !449, file: !5, line: 116, type: !18)
!453 = !DILocalVariable(name: "h", scope: !449, file: !5, line: 118, type: !295)
!454 = !DILocation(line: 0, scope: !449)
!455 = !DILocation(line: 119, column: 18, scope: !456)
!456 = distinct !DILexicalBlock(scope: !449, file: !5, line: 119, column: 9)
!457 = !{!347, !322, i64 32}
!458 = !DILocation(line: 119, column: 9, scope: !456)
!459 = !DILocation(line: 119, column: 9, scope: !449)
!460 = !DILocation(line: 120, column: 48, scope: !456)
!461 = !DILocation(line: 120, column: 16, scope: !456)
!462 = !DILocation(line: 120, column: 9, scope: !456)
!463 = !DILocation(line: 122, column: 1, scope: !449)
!464 = distinct !DISubprogram(name: "close_file", scope: !5, file: !5, line: 124, type: !52, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !465)
!465 = !{!466, !467}
!466 = !DILocalVariable(name: "handle", arg: 1, scope: !464, file: !5, line: 124, type: !18)
!467 = !DILocalVariable(name: "h", scope: !464, file: !5, line: 126, type: !295)
!468 = !DILocation(line: 0, scope: !464)
!469 = !DILocation(line: 130, column: 14, scope: !464)
!470 = !{!347, !322, i64 48}
!471 = !DILocation(line: 130, column: 29, scope: !464)
!472 = !DILocation(line: 130, column: 5, scope: !464)
!473 = !DILocation(line: 131, column: 14, scope: !464)
!474 = !DILocation(line: 131, column: 33, scope: !464)
!475 = !DILocation(line: 131, column: 5, scope: !464)
!476 = !DILocation(line: 132, column: 14, scope: !464)
!477 = !DILocation(line: 132, column: 5, scope: !464)
!478 = !DILocation(line: 133, column: 5, scope: !464)
!479 = !DILocation(line: 134, column: 5, scope: !464)
