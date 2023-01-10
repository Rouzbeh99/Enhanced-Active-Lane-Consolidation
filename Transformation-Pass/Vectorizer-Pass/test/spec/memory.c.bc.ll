; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/memory.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._MemoryInfo = type { [4096 x i8], i32, i64, ptr, i64 }

@memory_methods.0 = internal unnamed_addr global ptr @malloc, align 8, !dbg !0
@memory_methods.1 = internal unnamed_addr global ptr @realloc, align 8, !dbg !151
@memory_methods.2 = internal unnamed_addr global ptr @free, align 8, !dbg !152
@.str = private unnamed_addr constant [85 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/memory.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1

; Function Attrs: mustprogress nofree nounwind willreturn allocsize(0,1) uwtable
define dso_local ptr @AcquireAlignedMemory(i64 noundef %count, i64 noundef %quantum) local_unnamed_addr #0 !dbg !160 {
entry:
  call void @llvm.dbg.value(metadata i64 %count, metadata !165, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i64 %quantum, metadata !166, metadata !DIExpression()), !dbg !173
  %mul47 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %count, i64 %quantum), !dbg !174
  %mul.val = extractvalue { i64, i1 } %mul47, 0, !dbg !174
  call void @llvm.dbg.value(metadata i64 %mul.val, metadata !169, metadata !DIExpression()), !dbg !173
  %cmp = icmp eq i64 %count, 0, !dbg !175
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !177

lor.lhs.false:                                    ; preds = %entry
  %mul.ov = extractvalue { i64, i1 } %mul47, 1, !dbg !174
  br i1 %mul.ov, label %if.then, label %if.end, !dbg !178

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = tail call ptr @__errno_location() #25, !dbg !179
  store i32 12, ptr %call, align 4, !dbg !181, !tbaa !182
  br label %cleanup, !dbg !186

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata ptr null, metadata !170, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i64 64, metadata !167, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i64 %mul.val, metadata !168, metadata !DIExpression(DW_OP_plus_uconst, 63, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_stack_value)), !dbg !173
  %cmp3 = icmp eq i64 %mul.val, 0, !dbg !187
  br i1 %cmp3, label %cleanup, label %lor.lhs.false6, !dbg !189

lor.lhs.false6:                                   ; preds = %if.end
  %add = add i64 %mul.val, 63, !dbg !190
  call void @llvm.dbg.value(metadata i64 %add, metadata !168, metadata !DIExpression(DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_stack_value)), !dbg !173
  %and = and i64 %add, -64, !dbg !190
  call void @llvm.dbg.value(metadata i64 %and, metadata !168, metadata !DIExpression()), !dbg !173
  %cmp7 = icmp uge i64 %and, %mul.val, !dbg !191
  %cmp13 = icmp ult i64 %mul.val, -71
  %or.cond = and i1 %cmp13, %cmp7, !dbg !192
  call void @llvm.dbg.value(metadata i64 %mul.val, metadata !168, metadata !DIExpression(DW_OP_plus_uconst, 71, DW_OP_stack_value)), !dbg !173
  br i1 %or.cond, label %if.then14, label %cleanup, !dbg !192

if.then14:                                        ; preds = %lor.lhs.false6
  %add12 = add nuw i64 %mul.val, 71, !dbg !193
  call void @llvm.dbg.value(metadata i64 %add12, metadata !168, metadata !DIExpression()), !dbg !173
  %call15 = tail call noalias ptr @malloc(i64 noundef %add12) #26, !dbg !194
  call void @llvm.dbg.value(metadata ptr %call15, metadata !171, metadata !DIExpression()), !dbg !197
  %cmp16.not = icmp eq ptr %call15, null, !dbg !198
  br i1 %cmp16.not, label %cleanup, label %if.then17, !dbg !200

if.then17:                                        ; preds = %if.then14
  %0 = ptrtoint ptr %call15 to i64, !dbg !201
  %add20 = add i64 %0, 71, !dbg !201
  %and23 = and i64 %add20, -64, !dbg !201
  %1 = inttoptr i64 %and23 to ptr, !dbg !203
  call void @llvm.dbg.value(metadata ptr %1, metadata !170, metadata !DIExpression()), !dbg !173
  %add.ptr = getelementptr inbounds ptr, ptr %1, i64 -1, !dbg !204
  store ptr %call15, ptr %add.ptr, align 8, !dbg !205, !tbaa !206
  br label %cleanup, !dbg !208

cleanup:                                          ; preds = %if.then17, %if.then14, %if.end, %lor.lhs.false6, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ null, %lor.lhs.false6 ], [ null, %if.end ], [ %1, %if.then17 ], [ null, %if.then14 ], !dbg !173
  ret ptr %retval.0, !dbg !209
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) #4

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local ptr @AcquireMagickMemory(i64 noundef %size) local_unnamed_addr #5 !dbg !210 {
entry:
  call void @llvm.dbg.value(metadata i64 %size, metadata !214, metadata !DIExpression()), !dbg !216
  %0 = load ptr, ptr @memory_methods.0, align 8, !dbg !217, !tbaa !218
  %cmp = icmp eq i64 %size, 0, !dbg !220
  %spec.select = select i1 %cmp, i64 1, i64 %size, !dbg !221
  %call = tail call ptr %0(i64 noundef %spec.select) #27, !dbg !222
  call void @llvm.dbg.value(metadata ptr %call, metadata !215, metadata !DIExpression()), !dbg !216
  ret ptr %call, !dbg !223
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local ptr @AcquireQuantumMemory(i64 noundef %count, i64 noundef %quantum) local_unnamed_addr #6 !dbg !224 {
entry:
  call void @llvm.dbg.value(metadata i64 %count, metadata !226, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i64 %quantum, metadata !227, metadata !DIExpression()), !dbg !229
  %mul7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %count, i64 %quantum), !dbg !230
  %mul.val = extractvalue { i64, i1 } %mul7, 0, !dbg !230
  call void @llvm.dbg.value(metadata i64 %mul.val, metadata !228, metadata !DIExpression()), !dbg !229
  %cmp = icmp eq i64 %count, 0, !dbg !231
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !233

lor.lhs.false:                                    ; preds = %entry
  %mul.ov = extractvalue { i64, i1 } %mul7, 1, !dbg !230
  br i1 %mul.ov, label %if.then, label %if.end, !dbg !234

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = tail call ptr @__errno_location() #25, !dbg !235
  store i32 12, ptr %call, align 4, !dbg !237, !tbaa !182
  br label %cleanup, !dbg !238

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata i64 %mul.val, metadata !214, metadata !DIExpression()) #27, !dbg !239
  %0 = load ptr, ptr @memory_methods.0, align 8, !dbg !241, !tbaa !218
  %cmp.i = icmp eq i64 %mul.val, 0, !dbg !242
  %spec.select.i = select i1 %cmp.i, i64 1, i64 %mul.val, !dbg !243
  %call.i = tail call ptr %0(i64 noundef %spec.select.i) #27, !dbg !244
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !215, metadata !DIExpression()) #27, !dbg !239
  br label %cleanup, !dbg !245

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %call.i, %if.end ], !dbg !229
  ret ptr %retval.0, !dbg !246
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local ptr @AcquireVirtualMemory(i64 noundef %count, i64 noundef %quantum) local_unnamed_addr #6 !dbg !247 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata i64 %count, metadata !251, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i64 %quantum, metadata !252, metadata !DIExpression()), !dbg !280
  %mul118 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %count, i64 %quantum), !dbg !281
  %mul.val = extractvalue { i64, i1 } %mul118, 0, !dbg !281
  call void @llvm.dbg.value(metadata i64 %mul.val, metadata !254, metadata !DIExpression()), !dbg !280
  %cmp = icmp eq i64 %count, 0, !dbg !282
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !284

lor.lhs.false:                                    ; preds = %entry
  %mul.ov = extractvalue { i64, i1 } %mul118, 1, !dbg !281
  br i1 %mul.ov, label %if.then, label %if.end, !dbg !285

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = tail call ptr @__errno_location() #25, !dbg !286
  store i32 12, ptr %call, align 4, !dbg !288, !tbaa !182
  br label %cleanup, !dbg !289

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata i64 1, metadata !165, metadata !DIExpression()) #27, !dbg !290
  call void @llvm.dbg.value(metadata i64 4128, metadata !166, metadata !DIExpression()) #27, !dbg !290
  call void @llvm.dbg.value(metadata i64 4128, metadata !169, metadata !DIExpression()) #27, !dbg !290
  call void @llvm.dbg.value(metadata ptr null, metadata !170, metadata !DIExpression()) #27, !dbg !290
  call void @llvm.dbg.value(metadata i64 64, metadata !167, metadata !DIExpression()) #27, !dbg !290
  call void @llvm.dbg.value(metadata i64 4128, metadata !168, metadata !DIExpression(DW_OP_plus_uconst, 63, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_stack_value)) #27, !dbg !290
  call void @llvm.dbg.value(metadata i64 4191, metadata !168, metadata !DIExpression(DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_stack_value)) #27, !dbg !290
  call void @llvm.dbg.value(metadata i64 4160, metadata !168, metadata !DIExpression()) #27, !dbg !290
  call void @llvm.dbg.value(metadata i64 4128, metadata !168, metadata !DIExpression(DW_OP_plus_uconst, 71, DW_OP_stack_value)) #27, !dbg !290
  call void @llvm.dbg.value(metadata i64 4199, metadata !168, metadata !DIExpression()) #27, !dbg !290
  %call15.i = tail call noalias dereferenceable_or_null(4199) ptr @malloc(i64 noundef 4199) #26, !dbg !292
  call void @llvm.dbg.value(metadata ptr %call15.i, metadata !171, metadata !DIExpression()) #27, !dbg !293
  %cmp16.not.i = icmp eq ptr %call15.i, null, !dbg !294
  br i1 %cmp16.not.i, label %if.then4, label %AcquireAlignedMemory.exit, !dbg !295

AcquireAlignedMemory.exit:                        ; preds = %if.end
  %0 = ptrtoint ptr %call15.i to i64, !dbg !296
  %add20.i = add i64 %0, 71, !dbg !296
  %and23.i = and i64 %add20.i, -64, !dbg !296
  %1 = inttoptr i64 %and23.i to ptr, !dbg !297
  call void @llvm.dbg.value(metadata ptr %1, metadata !170, metadata !DIExpression()) #27, !dbg !290
  %add.ptr.i = getelementptr inbounds ptr, ptr %1, i64 -1, !dbg !298
  store ptr %call15.i, ptr %add.ptr.i, align 8, !dbg !299, !tbaa !206
  call void @llvm.dbg.value(metadata ptr %1, metadata !253, metadata !DIExpression()), !dbg !280
  %cmp3 = icmp eq i64 %and23.i, 0, !dbg !300
  br i1 %cmp3, label %if.then4, label %if.end10, !dbg !301

if.then4:                                         ; preds = %if.end, %AcquireAlignedMemory.exit
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #27, !dbg !302
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !259, metadata !DIExpression()), !dbg !302
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #27, !dbg !302
  %call5 = tail call ptr @__errno_location() #25, !dbg !302
  %2 = load i32, ptr %call5, align 4, !dbg !302, !tbaa !182
  %call6 = call ptr @GetExceptionMessage(i32 noundef %2) #27, !dbg !302
  call void @llvm.dbg.value(metadata ptr %call6, metadata !255, metadata !DIExpression()), !dbg !303
  %call7 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 586, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call6) #27, !dbg !302
  %call8 = call ptr @DestroyString(ptr noundef %call6) #27, !dbg !302
  call void @llvm.dbg.value(metadata ptr %call8, metadata !255, metadata !DIExpression()), !dbg !303
  call void @CatchException(ptr noundef nonnull %exception) #27, !dbg !302
  %call9 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #27, !dbg !302
  call void @MagickCoreTerminus() #27, !dbg !302
  call void @_exit(i32 noundef 1) #28, !dbg !302
  unreachable, !dbg !302

if.end10:                                         ; preds = %AcquireAlignedMemory.exit
  call void @llvm.dbg.value(metadata ptr %1, metadata !304, metadata !DIExpression()) #27, !dbg !311
  call void @llvm.dbg.value(metadata i32 0, metadata !309, metadata !DIExpression()) #27, !dbg !311
  call void @llvm.dbg.value(metadata i64 4128, metadata !310, metadata !DIExpression()) #27, !dbg !311
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(4128) %1, i8 0, i64 4128, i1 false) #27, !dbg !313
  %length12 = getelementptr inbounds %struct._MemoryInfo, ptr %1, i64 0, i32 2, !dbg !314
  store i64 %mul.val, ptr %length12, align 8, !dbg !315, !tbaa !316
  %signature = getelementptr inbounds %struct._MemoryInfo, ptr %1, i64 0, i32 4, !dbg !319
  store i64 2880220587, ptr %signature, align 8, !dbg !320, !tbaa !321
  %call13 = tail call i32 @AcquireMagickResource(i32 noundef 5, i64 noundef %mul.val) #27, !dbg !322
  %cmp14.not = icmp eq i32 %call13, 0, !dbg !324
  br i1 %cmp14.not, label %if.end21, label %if.end.i, !dbg !325

if.end.i:                                         ; preds = %if.end10
  call void @llvm.dbg.value(metadata i64 1, metadata !165, metadata !DIExpression()) #27, !dbg !326
  call void @llvm.dbg.value(metadata i64 %mul.val, metadata !166, metadata !DIExpression()) #27, !dbg !326
  call void @llvm.dbg.value(metadata i64 %mul.val, metadata !169, metadata !DIExpression()) #27, !dbg !326
  call void @llvm.dbg.value(metadata ptr null, metadata !170, metadata !DIExpression()) #27, !dbg !326
  call void @llvm.dbg.value(metadata i64 64, metadata !167, metadata !DIExpression()) #27, !dbg !326
  call void @llvm.dbg.value(metadata i64 %mul.val, metadata !168, metadata !DIExpression(DW_OP_plus_uconst, 63, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_stack_value)) #27, !dbg !326
  %cmp3.i = icmp eq i64 %mul.val, 0, !dbg !329
  br i1 %cmp3.i, label %AcquireAlignedMemory.exit126.thread, label %lor.lhs.false6.i, !dbg !330

lor.lhs.false6.i:                                 ; preds = %if.end.i
  %add.i = add i64 %mul.val, 63, !dbg !331
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !168, metadata !DIExpression(DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_stack_value)) #27, !dbg !326
  %and.i = and i64 %add.i, -64, !dbg !331
  call void @llvm.dbg.value(metadata i64 %and.i, metadata !168, metadata !DIExpression()) #27, !dbg !326
  %cmp7.i = icmp uge i64 %and.i, %mul.val, !dbg !332
  %cmp13.i = icmp ult i64 %mul.val, -71
  %or.cond.i = and i1 %cmp13.i, %cmp7.i, !dbg !333
  call void @llvm.dbg.value(metadata i64 %mul.val, metadata !168, metadata !DIExpression(DW_OP_plus_uconst, 71, DW_OP_stack_value)) #27, !dbg !326
  br i1 %or.cond.i, label %if.then14.i, label %AcquireAlignedMemory.exit126.thread, !dbg !333

if.then14.i:                                      ; preds = %lor.lhs.false6.i
  %add12.i = add nuw i64 %mul.val, 71, !dbg !334
  call void @llvm.dbg.value(metadata i64 %add12.i, metadata !168, metadata !DIExpression()) #27, !dbg !326
  %call15.i119 = tail call noalias ptr @malloc(i64 noundef %add12.i) #26, !dbg !335
  call void @llvm.dbg.value(metadata ptr %call15.i119, metadata !171, metadata !DIExpression()) #27, !dbg !336
  %cmp16.not.i120 = icmp eq ptr %call15.i119, null, !dbg !337
  br i1 %cmp16.not.i120, label %AcquireAlignedMemory.exit126.thread, label %AcquireAlignedMemory.exit126, !dbg !338

AcquireAlignedMemory.exit126.thread:              ; preds = %lor.lhs.false6.i, %if.end.i, %if.then14.i
  %blob131 = getelementptr inbounds %struct._MemoryInfo, ptr %1, i64 0, i32 3, !dbg !339
  store ptr null, ptr %blob131, align 16, !dbg !340, !tbaa !341
  br label %if.else, !dbg !342

AcquireAlignedMemory.exit126:                     ; preds = %if.then14.i
  %3 = ptrtoint ptr %call15.i119 to i64, !dbg !343
  %add20.i121 = add i64 %3, 71, !dbg !343
  %and23.i122 = and i64 %add20.i121, -64, !dbg !343
  %4 = inttoptr i64 %and23.i122 to ptr, !dbg !344
  call void @llvm.dbg.value(metadata ptr %4, metadata !170, metadata !DIExpression()) #27, !dbg !326
  %add.ptr.i123 = getelementptr inbounds ptr, ptr %4, i64 -1, !dbg !345
  store ptr %call15.i119, ptr %add.ptr.i123, align 8, !dbg !346, !tbaa !206
  %blob = getelementptr inbounds %struct._MemoryInfo, ptr %1, i64 0, i32 3, !dbg !339
  store ptr %4, ptr %blob, align 16, !dbg !340, !tbaa !341
  %cmp18.not = icmp eq i64 %and23.i122, 0, !dbg !347
  br i1 %cmp18.not, label %if.else, label %if.then19, !dbg !342

if.then19:                                        ; preds = %AcquireAlignedMemory.exit126
  %type = getelementptr inbounds %struct._MemoryInfo, ptr %1, i64 0, i32 1, !dbg !349
  store i32 1, ptr %type, align 64, !dbg !350, !tbaa !351
  br label %if.end21, !dbg !352

if.else:                                          ; preds = %AcquireAlignedMemory.exit126.thread, %AcquireAlignedMemory.exit126
  tail call void @RelinquishMagickResource(i32 noundef 5, i64 noundef %mul.val) #27, !dbg !353
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.else, %if.end10
  %blob22 = getelementptr inbounds %struct._MemoryInfo, ptr %1, i64 0, i32 3, !dbg !354
  %5 = load ptr, ptr %blob22, align 16, !dbg !354, !tbaa !341
  %cmp23 = icmp eq ptr %5, null, !dbg !356
  br i1 %cmp23, label %land.lhs.true, label %cleanup, !dbg !357

land.lhs.true:                                    ; preds = %if.end21
  %call24 = tail call i32 @AcquireMagickResource(i32 noundef 4, i64 noundef %mul.val) #27, !dbg !358
  %cmp25.not = icmp eq i32 %call24, 0, !dbg !359
  br i1 %cmp25.not, label %if.end35, label %if.then26, !dbg !360

if.then26:                                        ; preds = %land.lhs.true
  %call27 = tail call ptr @MapBlob(i32 noundef -1, i32 noundef 2, i64 noundef 0, i64 noundef %mul.val) #27, !dbg !361
  store ptr %call27, ptr %blob22, align 16, !dbg !363, !tbaa !341
  %cmp30.not = icmp eq ptr %call27, null, !dbg !364
  br i1 %cmp30.not, label %if.else33, label %if.then31, !dbg !366

if.then31:                                        ; preds = %if.then26
  %type32 = getelementptr inbounds %struct._MemoryInfo, ptr %1, i64 0, i32 1, !dbg !367
  store i32 2, ptr %type32, align 64, !dbg !368, !tbaa !351
  br label %cleanup, !dbg !369

if.else33:                                        ; preds = %if.then26
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %mul.val) #27, !dbg !370
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %land.lhs.true
  %.pr = load ptr, ptr %blob22, align 16, !dbg !371, !tbaa !341
  %cmp37 = icmp eq ptr %.pr, null, !dbg !372
  br i1 %cmp37, label %if.then38, label %cleanup, !dbg !373

if.then38:                                        ; preds = %if.end35
  %call39 = tail call i32 @AcquireUniqueFileResource(ptr noundef nonnull %1) #27, !dbg !374
  call void @llvm.dbg.value(metadata i32 %call39, metadata !277, metadata !DIExpression()), !dbg !375
  %cmp40.not = icmp eq i32 %call39, -1, !dbg !376
  br i1 %cmp40.not, label %if.end59, label %if.then41, !dbg !378

if.then41:                                        ; preds = %if.then38
  %sub = add i64 %mul.val, -1, !dbg !379
  %call42 = tail call i64 @lseek(i32 noundef %call39, i64 noundef %sub, i32 noundef 0) #27, !dbg !382
  %cmp43 = icmp sgt i64 %call42, -1, !dbg !383
  br i1 %cmp43, label %land.lhs.true44, label %if.end56, !dbg !384

land.lhs.true44:                                  ; preds = %if.then41
  %call45 = tail call i64 @write(i32 noundef %call39, ptr noundef nonnull @.str.1, i64 noundef 1) #27, !dbg !385
  %cmp46 = icmp eq i64 %call45, 1, !dbg !386
  br i1 %cmp46, label %if.then47, label %if.end56, !dbg !387

if.then47:                                        ; preds = %land.lhs.true44
  %call48 = tail call ptr @MapBlob(i32 noundef %call39, i32 noundef 2, i64 noundef 0, i64 noundef %mul.val) #27, !dbg !388
  store ptr %call48, ptr %blob22, align 16, !dbg !390, !tbaa !341
  %cmp51.not = icmp eq ptr %call48, null, !dbg !391
  br i1 %cmp51.not, label %if.end56, label %if.then52, !dbg !393

if.then52:                                        ; preds = %if.then47
  %type53 = getelementptr inbounds %struct._MemoryInfo, ptr %1, i64 0, i32 1, !dbg !394
  store i32 2, ptr %type53, align 64, !dbg !396, !tbaa !351
  %call54 = tail call i32 @AcquireMagickResource(i32 noundef 4, i64 noundef %mul.val) #27, !dbg !397
  br label %if.end56, !dbg !398

if.end56:                                         ; preds = %if.then47, %if.then52, %land.lhs.true44, %if.then41
  %call57 = tail call i32 @close(i32 noundef %call39) #27, !dbg !399
  br label %if.end59, !dbg !400

if.end59:                                         ; preds = %if.then38, %if.end56
  %.pr134.pr = load ptr, ptr %blob22, align 16, !dbg !401, !tbaa !341
  %cmp61 = icmp eq ptr %.pr134.pr, null, !dbg !403
  br i1 %cmp61, label %if.then62, label %cleanup, !dbg !404

if.then62:                                        ; preds = %if.end59
  call void @llvm.dbg.value(metadata i64 %mul.val, metadata !214, metadata !DIExpression()) #27, !dbg !405
  %6 = load ptr, ptr @memory_methods.0, align 8, !dbg !408, !tbaa !218
  %cmp.i = icmp eq i64 %mul.val, 0, !dbg !409
  %spec.select.i = select i1 %cmp.i, i64 1, i64 %mul.val, !dbg !410
  %call.i127 = tail call ptr %6(i64 noundef %spec.select.i) #27, !dbg !411
  call void @llvm.dbg.value(metadata ptr %call.i127, metadata !215, metadata !DIExpression()) #27, !dbg !405
  store ptr %call.i127, ptr %blob22, align 16, !dbg !412, !tbaa !341
  %cmp66.not = icmp eq ptr %call.i127, null, !dbg !413
  br i1 %cmp66.not, label %if.then73, label %if.then67, !dbg !415

if.then67:                                        ; preds = %if.then62
  %type68 = getelementptr inbounds %struct._MemoryInfo, ptr %1, i64 0, i32 1, !dbg !416
  store i32 3, ptr %type68, align 64, !dbg !417, !tbaa !351
  br label %cleanup, !dbg !418

if.then73:                                        ; preds = %if.then62
  %call74 = tail call ptr @RelinquishVirtualMemory(ptr noundef nonnull %1), !dbg !419
  call void @llvm.dbg.value(metadata ptr null, metadata !253, metadata !DIExpression()), !dbg !280
  br label %cleanup, !dbg !421

cleanup:                                          ; preds = %if.then31, %if.end21, %if.end35, %if.end59, %if.then67, %if.then73, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ null, %if.then73 ], [ %1, %if.then67 ], [ %1, %if.end59 ], [ %1, %if.end35 ], [ %1, %if.end21 ], [ %1, %if.then31 ], !dbg !280
  ret ptr %retval.0, !dbg !422
}

declare !dbg !423 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #7

declare !dbg !428 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #7

declare !dbg !432 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

declare !dbg !438 ptr @DestroyString(ptr noundef) local_unnamed_addr #7

declare !dbg !442 void @CatchException(ptr noundef) local_unnamed_addr #7

declare !dbg !443 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #7

declare !dbg !446 void @MagickCoreTerminus() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn writeonly uwtable
define dso_local ptr @ResetMagickMemory(ptr noundef returned writeonly %memory, i32 noundef %byte, i64 noundef %size) local_unnamed_addr #9 !dbg !305 {
entry:
  call void @llvm.dbg.value(metadata ptr %memory, metadata !304, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata i32 %byte, metadata !309, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata i64 %size, metadata !310, metadata !DIExpression()), !dbg !450
  %0 = trunc i32 %byte to i8, !dbg !451
  tail call void @llvm.memset.p0.i64(ptr align 1 %memory, i8 %0, i64 %size, i1 false), !dbg !451
  ret ptr %memory, !dbg !452
}

declare !dbg !453 i32 @AcquireMagickResource(i32 noundef, i64 noundef) local_unnamed_addr #7

declare !dbg !461 void @RelinquishMagickResource(i32 noundef, i64 noundef) local_unnamed_addr #7

declare !dbg !464 ptr @MapBlob(i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

declare !dbg !475 i32 @AcquireUniqueFileResource(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !478 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree
declare !dbg !485 noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #11

declare !dbg !493 i32 @close(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @RelinquishVirtualMemory(ptr noundef %memory_info) local_unnamed_addr #12 !dbg !496 {
entry:
  call void @llvm.dbg.value(metadata ptr %memory_info, metadata !500, metadata !DIExpression()), !dbg !501
  %blob = getelementptr inbounds %struct._MemoryInfo, ptr %memory_info, i64 0, i32 3, !dbg !502
  %0 = load ptr, ptr %blob, align 8, !dbg !502, !tbaa !341
  %cmp.not = icmp eq ptr %0, null, !dbg !504
  br i1 %cmp.not, label %RelinquishAlignedMemory.exit41, label %if.then, !dbg !505

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct._MemoryInfo, ptr %memory_info, i64 0, i32 1, !dbg !506
  %1 = load i32, ptr %type, align 8, !dbg !506, !tbaa !351
  switch i32 %1, label %RelinquishMagickMemory.exit [
    i32 1, label %RelinquishAlignedMemory.exit
    i32 2, label %sw.bb3
  ], !dbg !507

RelinquishAlignedMemory.exit:                     ; preds = %if.then
  call void @llvm.dbg.value(metadata ptr %0, metadata !508, metadata !DIExpression()) #27, !dbg !513
  %add.ptr.i = getelementptr inbounds ptr, ptr %0, i64 -1, !dbg !517
  %2 = load ptr, ptr %add.ptr.i, align 8, !dbg !518, !tbaa !206
  tail call void @free(ptr noundef %2) #27, !dbg !519
  store ptr null, ptr %blob, align 8, !dbg !520, !tbaa !341
  %length = getelementptr inbounds %struct._MemoryInfo, ptr %memory_info, i64 0, i32 2, !dbg !521
  %3 = load i64, ptr %length, align 8, !dbg !521, !tbaa !316
  tail call void @RelinquishMagickResource(i32 noundef 5, i64 noundef %3) #27, !dbg !522
  br label %RelinquishAlignedMemory.exit41, !dbg !523

sw.bb3:                                           ; preds = %if.then
  %length5 = getelementptr inbounds %struct._MemoryInfo, ptr %memory_info, i64 0, i32 2, !dbg !524
  %4 = load i64, ptr %length5, align 8, !dbg !524, !tbaa !316
  %call6 = tail call i32 @UnmapBlob(ptr noundef nonnull %0, i64 noundef %4) #27, !dbg !526
  store ptr null, ptr %blob, align 8, !dbg !527, !tbaa !341
  %5 = load i64, ptr %length5, align 8, !dbg !528, !tbaa !316
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %5) #27, !dbg !529
  %6 = load i8, ptr %memory_info, align 8, !dbg !530, !tbaa !532
  %cmp9.not = icmp eq i8 %6, 0, !dbg !533
  br i1 %cmp9.not, label %RelinquishAlignedMemory.exit41, label %if.then11, !dbg !534

if.then11:                                        ; preds = %sw.bb3
  %call14 = tail call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %memory_info) #27, !dbg !535
  br label %RelinquishAlignedMemory.exit41, !dbg !536

RelinquishMagickMemory.exit:                      ; preds = %if.then
  call void @llvm.dbg.value(metadata ptr %0, metadata !537, metadata !DIExpression()) #27, !dbg !540
  %7 = load ptr, ptr @memory_methods.2, align 8, !dbg !543, !tbaa !544
  tail call void %7(ptr noundef nonnull %0) #27, !dbg !545
  store ptr null, ptr %blob, align 8, !dbg !546, !tbaa !341
  br label %RelinquishAlignedMemory.exit41, !dbg !547

RelinquishAlignedMemory.exit41:                   ; preds = %RelinquishAlignedMemory.exit, %RelinquishMagickMemory.exit, %if.then11, %sw.bb3, %entry
  %signature = getelementptr inbounds %struct._MemoryInfo, ptr %memory_info, i64 0, i32 4, !dbg !548
  store i64 -2880220588, ptr %signature, align 8, !dbg !549, !tbaa !321
  call void @llvm.dbg.value(metadata ptr %memory_info, metadata !508, metadata !DIExpression()) #27, !dbg !550
  %add.ptr.i39 = getelementptr inbounds ptr, ptr %memory_info, i64 -1, !dbg !552
  %8 = load ptr, ptr %add.ptr.i39, align 8, !dbg !553, !tbaa !206
  tail call void @free(ptr noundef %8) #27, !dbg !554
  call void @llvm.dbg.value(metadata ptr null, metadata !500, metadata !DIExpression()), !dbg !501
  ret ptr null, !dbg !555
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn uwtable
define dso_local ptr @CopyMagickMemory(ptr noundef returned writeonly %destination, ptr nocapture noundef readonly %source, i64 noundef %size) local_unnamed_addr #13 !dbg !556 {
entry:
  call void @llvm.dbg.value(metadata ptr %destination, metadata !560, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata ptr %source, metadata !561, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i64 %size, metadata !562, metadata !DIExpression()), !dbg !563
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %destination, ptr align 1 %source, i64 %size, i1 false), !dbg !564
  ret ptr %destination, !dbg !565
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @DestroyMagickMemory() local_unnamed_addr #15 !dbg !566 {
entry:
  ret void, !dbg !567
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @GetMagickMemoryMethods(ptr nocapture noundef writeonly %acquire_memory_handler, ptr nocapture noundef writeonly %resize_memory_handler, ptr nocapture noundef writeonly %destroy_memory_handler) local_unnamed_addr #16 !dbg !568 {
entry:
  call void @llvm.dbg.value(metadata ptr %acquire_memory_handler, metadata !575, metadata !DIExpression()), !dbg !578
  call void @llvm.dbg.value(metadata ptr %resize_memory_handler, metadata !576, metadata !DIExpression()), !dbg !578
  call void @llvm.dbg.value(metadata ptr %destroy_memory_handler, metadata !577, metadata !DIExpression()), !dbg !578
  %0 = load ptr, ptr @memory_methods.0, align 8, !dbg !579, !tbaa !218
  store ptr %0, ptr %acquire_memory_handler, align 8, !dbg !580, !tbaa !206
  %1 = load ptr, ptr @memory_methods.1, align 8, !dbg !581, !tbaa !582
  store ptr %1, ptr %resize_memory_handler, align 8, !dbg !583, !tbaa !206
  %2 = load ptr, ptr @memory_methods.2, align 8, !dbg !584, !tbaa !544
  store ptr %2, ptr %destroy_memory_handler, align 8, !dbg !585, !tbaa !206
  ret void, !dbg !586
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local ptr @GetVirtualMemoryBlob(ptr nocapture noundef readonly %memory_info) local_unnamed_addr #17 !dbg !587 {
entry:
  call void @llvm.dbg.value(metadata ptr %memory_info, metadata !593, metadata !DIExpression()), !dbg !594
  %blob = getelementptr inbounds %struct._MemoryInfo, ptr %memory_info, i64 0, i32 3, !dbg !595
  %0 = load ptr, ptr %blob, align 8, !dbg !595, !tbaa !341
  ret ptr %0, !dbg !596
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local noalias ptr @RelinquishAlignedMemory(ptr noundef readonly %memory) local_unnamed_addr #18 !dbg !509 {
entry:
  call void @llvm.dbg.value(metadata ptr %memory, metadata !508, metadata !DIExpression()), !dbg !597
  %cmp = icmp eq ptr %memory, null, !dbg !598
  br i1 %cmp, label %return, label %if.end, !dbg !600

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds ptr, ptr %memory, i64 -1, !dbg !601
  %0 = load ptr, ptr %add.ptr, align 8, !dbg !602, !tbaa !206
  tail call void @free(ptr noundef %0) #27, !dbg !603
  br label %return, !dbg !604

return:                                           ; preds = %entry, %if.end
  ret ptr null, !dbg !605
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) #19

; Function Attrs: nounwind uwtable
define dso_local ptr @RelinquishMagickMemory(ptr noundef %memory) local_unnamed_addr #12 !dbg !538 {
entry:
  call void @llvm.dbg.value(metadata ptr %memory, metadata !537, metadata !DIExpression()), !dbg !606
  %cmp = icmp eq ptr %memory, null, !dbg !607
  br i1 %cmp, label %return, label %if.end, !dbg !609

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @memory_methods.2, align 8, !dbg !610, !tbaa !544
  tail call void %0(ptr noundef nonnull %memory) #27, !dbg !611
  br label %return, !dbg !612

return:                                           ; preds = %entry, %if.end
  ret ptr null, !dbg !613
}

declare !dbg !614 i32 @UnmapBlob(ptr noundef, i64 noundef) local_unnamed_addr #7

declare !dbg !617 i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local ptr @ResizeMagickMemory(ptr noundef %memory, i64 noundef %size) local_unnamed_addr #21 !dbg !620 {
entry:
  call void @llvm.dbg.value(metadata ptr %memory, metadata !624, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.value(metadata i64 %size, metadata !625, metadata !DIExpression()), !dbg !627
  %cmp = icmp eq ptr %memory, null, !dbg !628
  br i1 %cmp, label %if.then, label %if.end, !dbg !630

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i64 %size, metadata !214, metadata !DIExpression()) #27, !dbg !631
  %0 = load ptr, ptr @memory_methods.0, align 8, !dbg !633, !tbaa !218
  %cmp.i = icmp eq i64 %size, 0, !dbg !634
  %spec.select.i = select i1 %cmp.i, i64 1, i64 %size, !dbg !635
  %call.i = tail call ptr %0(i64 noundef %spec.select.i) #27, !dbg !636
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !215, metadata !DIExpression()) #27, !dbg !631
  br label %cleanup, !dbg !637

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @memory_methods.1, align 8, !dbg !638, !tbaa !582
  %cmp1 = icmp eq i64 %size, 0, !dbg !639
  %spec.select = select i1 %cmp1, i64 1, i64 %size, !dbg !640
  %call2 = tail call ptr %1(ptr noundef nonnull %memory, i64 noundef %spec.select) #27, !dbg !641
  call void @llvm.dbg.value(metadata ptr %call2, metadata !626, metadata !DIExpression()), !dbg !627
  %cmp3 = icmp eq ptr %call2, null, !dbg !642
  br i1 %cmp3, label %RelinquishMagickMemory.exit, label %cleanup, !dbg !644

RelinquishMagickMemory.exit:                      ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %memory, metadata !537, metadata !DIExpression()) #27, !dbg !645
  %2 = load ptr, ptr @memory_methods.2, align 8, !dbg !647, !tbaa !544
  tail call void %2(ptr noundef nonnull %memory) #27, !dbg !648
  call void @llvm.dbg.value(metadata ptr null, metadata !624, metadata !DIExpression()), !dbg !627
  br label %cleanup, !dbg !649

cleanup:                                          ; preds = %if.end, %RelinquishMagickMemory.exit, %if.then
  %retval.0 = phi ptr [ %call.i, %if.then ], [ null, %RelinquishMagickMemory.exit ], [ %call2, %if.end ], !dbg !627
  ret ptr %retval.0, !dbg !650
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @ResizeQuantumMemory(ptr noundef %memory, i64 noundef %count, i64 noundef %quantum) local_unnamed_addr #22 !dbg !651 {
entry:
  call void @llvm.dbg.value(metadata ptr %memory, metadata !655, metadata !DIExpression()), !dbg !659
  call void @llvm.dbg.value(metadata i64 %count, metadata !656, metadata !DIExpression()), !dbg !659
  call void @llvm.dbg.value(metadata i64 %quantum, metadata !657, metadata !DIExpression()), !dbg !659
  %mul9 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %count, i64 %quantum), !dbg !660
  %mul.val = extractvalue { i64, i1 } %mul9, 0, !dbg !660
  call void @llvm.dbg.value(metadata i64 %mul.val, metadata !658, metadata !DIExpression()), !dbg !659
  %cmp = icmp eq i64 %count, 0, !dbg !661
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !663

lor.lhs.false:                                    ; preds = %entry
  %mul.ov = extractvalue { i64, i1 } %mul9, 1, !dbg !660
  br i1 %mul.ov, label %if.then, label %if.end, !dbg !664

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.dbg.value(metadata ptr %memory, metadata !537, metadata !DIExpression()) #27, !dbg !665
  %cmp.i = icmp eq ptr %memory, null, !dbg !668
  br i1 %cmp.i, label %RelinquishMagickMemory.exit, label %if.end.i, !dbg !669

if.end.i:                                         ; preds = %if.then
  %0 = load ptr, ptr @memory_methods.2, align 8, !dbg !670, !tbaa !544
  tail call void %0(ptr noundef nonnull %memory) #27, !dbg !671
  br label %RelinquishMagickMemory.exit, !dbg !672

RelinquishMagickMemory.exit:                      ; preds = %if.then, %if.end.i
  call void @llvm.dbg.value(metadata ptr null, metadata !655, metadata !DIExpression()), !dbg !659
  %call2 = tail call ptr @__errno_location() #25, !dbg !673
  store i32 12, ptr %call2, align 4, !dbg !674, !tbaa !182
  br label %cleanup, !dbg !675

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata ptr %memory, metadata !624, metadata !DIExpression()) #27, !dbg !676
  call void @llvm.dbg.value(metadata i64 %mul.val, metadata !625, metadata !DIExpression()) #27, !dbg !676
  %cmp.i10 = icmp eq ptr %memory, null, !dbg !678
  br i1 %cmp.i10, label %if.then.i, label %if.end.i11, !dbg !679

if.then.i:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 %mul.val, metadata !214, metadata !DIExpression()) #27, !dbg !680
  %1 = load ptr, ptr @memory_methods.0, align 8, !dbg !682, !tbaa !218
  %cmp.i.i = icmp eq i64 %mul.val, 0, !dbg !683
  %spec.select.i.i = select i1 %cmp.i.i, i64 1, i64 %mul.val, !dbg !684
  %call.i.i = tail call ptr %1(i64 noundef %spec.select.i.i) #27, !dbg !685
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !215, metadata !DIExpression()) #27, !dbg !680
  br label %cleanup, !dbg !686

if.end.i11:                                       ; preds = %if.end
  %2 = load ptr, ptr @memory_methods.1, align 8, !dbg !687, !tbaa !582
  %cmp1.i = icmp eq i64 %mul.val, 0, !dbg !688
  %spec.select.i = select i1 %cmp1.i, i64 1, i64 %mul.val, !dbg !689
  %call2.i = tail call ptr %2(ptr noundef nonnull %memory, i64 noundef %spec.select.i) #27, !dbg !690
  call void @llvm.dbg.value(metadata ptr %call2.i, metadata !626, metadata !DIExpression()) #27, !dbg !676
  %cmp3.i = icmp eq ptr %call2.i, null, !dbg !691
  br i1 %cmp3.i, label %RelinquishMagickMemory.exit.i, label %cleanup, !dbg !692

RelinquishMagickMemory.exit.i:                    ; preds = %if.end.i11
  call void @llvm.dbg.value(metadata ptr %memory, metadata !537, metadata !DIExpression()) #27, !dbg !693
  %3 = load ptr, ptr @memory_methods.2, align 8, !dbg !695, !tbaa !544
  tail call void %3(ptr noundef nonnull %memory) #27, !dbg !696
  call void @llvm.dbg.value(metadata ptr null, metadata !624, metadata !DIExpression()) #27, !dbg !676
  br label %cleanup, !dbg !697

cleanup:                                          ; preds = %RelinquishMagickMemory.exit.i, %if.end.i11, %if.then.i, %RelinquishMagickMemory.exit
  %retval.0 = phi ptr [ null, %RelinquishMagickMemory.exit ], [ %call.i.i, %if.then.i ], [ null, %RelinquishMagickMemory.exit.i ], [ %call2.i, %if.end.i11 ], !dbg !659
  ret ptr %retval.0, !dbg !698
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @SetMagickMemoryMethods(ptr noundef %acquire_memory_handler, ptr noundef %resize_memory_handler, ptr noundef %destroy_memory_handler) local_unnamed_addr #23 !dbg !699 {
entry:
  call void @llvm.dbg.value(metadata ptr %acquire_memory_handler, metadata !703, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.value(metadata ptr %resize_memory_handler, metadata !704, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.value(metadata ptr %destroy_memory_handler, metadata !705, metadata !DIExpression()), !dbg !706
  %cmp.not = icmp eq ptr %acquire_memory_handler, null, !dbg !707
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !709

if.then:                                          ; preds = %entry
  store ptr %acquire_memory_handler, ptr @memory_methods.0, align 8, !dbg !710, !tbaa !218
  br label %if.end, !dbg !711

if.end:                                           ; preds = %if.then, %entry
  %cmp1.not = icmp eq ptr %resize_memory_handler, null, !dbg !712
  br i1 %cmp1.not, label %if.end3, label %if.then2, !dbg !714

if.then2:                                         ; preds = %if.end
  store ptr %resize_memory_handler, ptr @memory_methods.1, align 8, !dbg !715, !tbaa !582
  br label %if.end3, !dbg !716

if.end3:                                          ; preds = %if.then2, %if.end
  %cmp4.not = icmp eq ptr %destroy_memory_handler, null, !dbg !717
  br i1 %cmp4.not, label %if.end6, label %if.then5, !dbg !719

if.then5:                                         ; preds = %if.end3
  store ptr %destroy_memory_handler, ptr @memory_methods.2, align 8, !dbg !720, !tbaa !544
  br label %if.end6, !dbg !721

if.end6:                                          ; preds = %if.then5, %if.end3
  ret void, !dbg !722
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1)
declare noalias noundef ptr @realloc(ptr nocapture noundef, i64 noundef) #24

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

attributes #0 = { mustprogress nofree nounwind willreturn allocsize(0,1) uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0,1) uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { argmemonly mustprogress nofree nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { argmemonly nofree nounwind willreturn }
attributes #15 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { argmemonly nofree nounwind willreturn writeonly }
attributes #21 = { nounwind allocsize(1) uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nounwind allocsize(1,2) uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nounwind readnone willreturn }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind }
attributes #28 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!153, !154, !155, !156, !157, !158}
!llvm.ident = !{!159}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 0, 64))
!1 = distinct !DIGlobalVariable(name: "memory_methods", scope: !2, file: !6, line: 182, type: !145, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !109, globals: !143, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/memory.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "f5c5e7d4190120fba06deeac0872dd57")
!4 = !{!5, !13, !86, !91, !103}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 92, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f5c5e7d4190120fba06deeac0872dd57")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "UndefinedVirtualMemory", value: 0)
!10 = !DIEnumerator(name: "AlignedVirtualMemory", value: 1)
!11 = !DIEnumerator(name: "MapVirtualMemory", value: 2)
!12 = !DIEnumerator(name: "UnalignedVirtualMemory", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 28, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85}
!16 = !DIEnumerator(name: "UndefinedException", value: 0)
!17 = !DIEnumerator(name: "WarningException", value: 300)
!18 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!19 = !DIEnumerator(name: "TypeWarning", value: 305)
!20 = !DIEnumerator(name: "OptionWarning", value: 310)
!21 = !DIEnumerator(name: "DelegateWarning", value: 315)
!22 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!23 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!24 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!25 = !DIEnumerator(name: "BlobWarning", value: 335)
!26 = !DIEnumerator(name: "StreamWarning", value: 340)
!27 = !DIEnumerator(name: "CacheWarning", value: 345)
!28 = !DIEnumerator(name: "CoderWarning", value: 350)
!29 = !DIEnumerator(name: "FilterWarning", value: 352)
!30 = !DIEnumerator(name: "ModuleWarning", value: 355)
!31 = !DIEnumerator(name: "DrawWarning", value: 360)
!32 = !DIEnumerator(name: "ImageWarning", value: 365)
!33 = !DIEnumerator(name: "WandWarning", value: 370)
!34 = !DIEnumerator(name: "RandomWarning", value: 375)
!35 = !DIEnumerator(name: "XServerWarning", value: 380)
!36 = !DIEnumerator(name: "MonitorWarning", value: 385)
!37 = !DIEnumerator(name: "RegistryWarning", value: 390)
!38 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!39 = !DIEnumerator(name: "PolicyWarning", value: 399)
!40 = !DIEnumerator(name: "ErrorException", value: 400)
!41 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!42 = !DIEnumerator(name: "TypeError", value: 405)
!43 = !DIEnumerator(name: "OptionError", value: 410)
!44 = !DIEnumerator(name: "DelegateError", value: 415)
!45 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!46 = !DIEnumerator(name: "CorruptImageError", value: 425)
!47 = !DIEnumerator(name: "FileOpenError", value: 430)
!48 = !DIEnumerator(name: "BlobError", value: 435)
!49 = !DIEnumerator(name: "StreamError", value: 440)
!50 = !DIEnumerator(name: "CacheError", value: 445)
!51 = !DIEnumerator(name: "CoderError", value: 450)
!52 = !DIEnumerator(name: "FilterError", value: 452)
!53 = !DIEnumerator(name: "ModuleError", value: 455)
!54 = !DIEnumerator(name: "DrawError", value: 460)
!55 = !DIEnumerator(name: "ImageError", value: 465)
!56 = !DIEnumerator(name: "WandError", value: 470)
!57 = !DIEnumerator(name: "RandomError", value: 475)
!58 = !DIEnumerator(name: "XServerError", value: 480)
!59 = !DIEnumerator(name: "MonitorError", value: 485)
!60 = !DIEnumerator(name: "RegistryError", value: 490)
!61 = !DIEnumerator(name: "ConfigureError", value: 495)
!62 = !DIEnumerator(name: "PolicyError", value: 499)
!63 = !DIEnumerator(name: "FatalErrorException", value: 700)
!64 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!65 = !DIEnumerator(name: "TypeFatalError", value: 705)
!66 = !DIEnumerator(name: "OptionFatalError", value: 710)
!67 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!68 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!69 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!70 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!71 = !DIEnumerator(name: "BlobFatalError", value: 735)
!72 = !DIEnumerator(name: "StreamFatalError", value: 740)
!73 = !DIEnumerator(name: "CacheFatalError", value: 745)
!74 = !DIEnumerator(name: "CoderFatalError", value: 750)
!75 = !DIEnumerator(name: "FilterFatalError", value: 752)
!76 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!77 = !DIEnumerator(name: "DrawFatalError", value: 760)
!78 = !DIEnumerator(name: "ImageFatalError", value: 765)
!79 = !DIEnumerator(name: "WandFatalError", value: 770)
!80 = !DIEnumerator(name: "RandomFatalError", value: 775)
!81 = !DIEnumerator(name: "XServerFatalError", value: 780)
!82 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!83 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!84 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!85 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !87, line: 211, baseType: !7, size: 32, elements: !88)
!87 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!88 = !{!89, !90}
!89 = !DIEnumerator(name: "MagickFalse", value: 0)
!90 = !DIEnumerator(name: "MagickTrue", value: 1)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !92, line: 25, baseType: !7, size: 32, elements: !93)
!92 = !DIFile(filename: "apps/538.imagick_r/src/magick/resource_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "933ce0dda2adf2da84827500e98d468e")
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102}
!94 = !DIEnumerator(name: "UndefinedResource", value: 0)
!95 = !DIEnumerator(name: "AreaResource", value: 1)
!96 = !DIEnumerator(name: "DiskResource", value: 2)
!97 = !DIEnumerator(name: "FileResource", value: 3)
!98 = !DIEnumerator(name: "MapResource", value: 4)
!99 = !DIEnumerator(name: "MemoryResource", value: 5)
!100 = !DIEnumerator(name: "ThreadResource", value: 6)
!101 = !DIEnumerator(name: "TimeResource", value: 7)
!102 = !DIEnumerator(name: "ThrottleResource", value: 8)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !104, line: 30, baseType: !7, size: 32, elements: !105)
!104 = !DIFile(filename: "apps/538.imagick_r/src/magick/blob.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "aeac60f5bee0fb1a4f0bd1456ae975f0")
!105 = !{!106, !107, !108}
!106 = !DIEnumerator(name: "ReadMode", value: 0)
!107 = !DIEnumerator(name: "WriteMode", value: 1)
!108 = !DIEnumerator(name: "IOMode", value: 2)
!109 = !{!110, !111, !114, !115, !113, !130, !131, !135, !139}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !112, line: 46, baseType: !113)
!112 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!113 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "MemoryInfo", file: !117, line: 26, baseType: !118)
!117 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MemoryInfo", file: !6, line: 129, size: 33024, elements: !119)
!119 = !{!120, !125, !127, !128, !129}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !118, file: !6, line: 132, baseType: !121, size: 32768)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 32768, elements: !123)
!122 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!123 = !{!124}
!124 = !DISubrange(count: 4096)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !118, file: !6, line: 135, baseType: !126, size: 32, offset: 32768)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "VirtualMemoryType", file: !6, line: 98, baseType: !5)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !118, file: !6, line: 138, baseType: !111, size: 64, offset: 32832)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !118, file: !6, line: 141, baseType: !110, size: 64, offset: 32896)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !118, file: !6, line: 144, baseType: !111, size: 64, offset: 32960)
!130 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "AcquireMemoryHandler", file: !117, line: 29, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!110, !111}
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResizeMemoryHandler", file: !117, line: 31, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!110, !110, !111}
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "DestroyMemoryHandler", file: !117, line: 30, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !110}
!143 = !{!144}
!144 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickMemoryMethods", file: !6, line: 127, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickMemoryMethods", file: !6, line: 117, size: 192, elements: !147)
!147 = !{!148, !149, !150}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_memory_handler", scope: !146, file: !6, line: 120, baseType: !131, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "resize_memory_handler", scope: !146, file: !6, line: 123, baseType: !135, size: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_memory_handler", scope: !146, file: !6, line: 126, baseType: !139, size: 64, offset: 128)
!151 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 64, 64))
!152 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 128, 64))
!153 = !{i32 7, !"Dwarf Version", i32 5}
!154 = !{i32 2, !"Debug Info Version", i32 3}
!155 = !{i32 1, !"wchar_size", i32 4}
!156 = !{i32 7, !"PIC Level", i32 2}
!157 = !{i32 7, !"PIE Level", i32 2}
!158 = !{i32 7, !"uwtable", i32 2}
!159 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!160 = distinct !DISubprogram(name: "AcquireAlignedMemory", scope: !6, file: !6, line: 237, type: !161, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !164)
!161 = !DISubroutineType(types: !162)
!162 = !{!110, !163, !163}
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!164 = !{!165, !166, !167, !168, !169, !170, !171}
!165 = !DILocalVariable(name: "count", arg: 1, scope: !160, file: !6, line: 237, type: !163)
!166 = !DILocalVariable(name: "quantum", arg: 2, scope: !160, file: !6, line: 237, type: !163)
!167 = !DILocalVariable(name: "alignment", scope: !160, file: !6, line: 243, type: !111)
!168 = !DILocalVariable(name: "extent", scope: !160, file: !6, line: 244, type: !111)
!169 = !DILocalVariable(name: "size", scope: !160, file: !6, line: 245, type: !111)
!170 = !DILocalVariable(name: "memory", scope: !160, file: !6, line: 248, type: !110)
!171 = !DILocalVariable(name: "p", scope: !172, file: !6, line: 269, type: !110)
!172 = distinct !DILexicalBlock(scope: !160, file: !6, line: 267, column: 3)
!173 = !DILocation(line: 0, scope: !160)
!174 = !DILocation(line: 250, column: 13, scope: !160)
!175 = !DILocation(line: 251, column: 14, scope: !176)
!176 = distinct !DILexicalBlock(scope: !160, file: !6, line: 251, column: 7)
!177 = !DILocation(line: 251, column: 20, scope: !176)
!178 = !DILocation(line: 251, column: 7, scope: !160)
!179 = !DILocation(line: 253, column: 7, scope: !180)
!180 = distinct !DILexicalBlock(scope: !176, file: !6, line: 252, column: 5)
!181 = !DILocation(line: 253, column: 12, scope: !180)
!182 = !{!183, !183, i64 0}
!183 = !{!"int", !184, i64 0}
!184 = !{!"omnipotent char", !185, i64 0}
!185 = !{!"Simple C/C++ TBAA"}
!186 = !DILocation(line: 254, column: 7, scope: !180)
!187 = !DILocation(line: 259, column: 13, scope: !188)
!188 = distinct !DILexicalBlock(scope: !160, file: !6, line: 259, column: 7)
!189 = !DILocation(line: 259, column: 19, scope: !188)
!190 = !DILocation(line: 258, column: 10, scope: !160)
!191 = !DILocation(line: 259, column: 62, scope: !188)
!192 = !DILocation(line: 259, column: 7, scope: !160)
!193 = !DILocation(line: 271, column: 30, scope: !172)
!194 = !DILocation(line: 274, column: 11, scope: !195)
!195 = distinct !DILexicalBlock(scope: !196, file: !6, line: 273, column: 7)
!196 = distinct !DILexicalBlock(scope: !172, file: !6, line: 272, column: 9)
!197 = !DILocation(line: 0, scope: !172)
!198 = !DILocation(line: 275, column: 15, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !6, line: 275, column: 13)
!200 = !DILocation(line: 275, column: 13, scope: !195)
!201 = !DILocation(line: 277, column: 29, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !6, line: 276, column: 11)
!203 = !DILocation(line: 277, column: 20, scope: !202)
!204 = !DILocation(line: 278, column: 31, scope: !202)
!205 = !DILocation(line: 278, column: 34, scope: !202)
!206 = !{!207, !207, i64 0}
!207 = !{!"any pointer", !184, i64 0}
!208 = !DILocation(line: 279, column: 11, scope: !202)
!209 = !DILocation(line: 284, column: 1, scope: !160)
!210 = distinct !DISubprogram(name: "AcquireMagickMemory", scope: !6, file: !6, line: 458, type: !211, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !213)
!211 = !DISubroutineType(types: !212)
!212 = !{!110, !163}
!213 = !{!214, !215}
!214 = !DILocalVariable(name: "size", arg: 1, scope: !210, file: !6, line: 458, type: !163)
!215 = !DILocalVariable(name: "memory", scope: !210, file: !6, line: 461, type: !110)
!216 = !DILocation(line: 0, scope: !210)
!217 = !DILocation(line: 464, column: 25, scope: !210)
!218 = !{!219, !207, i64 0}
!219 = !{!"_MagickMemoryMethods", !207, i64 0, !207, i64 8, !207, i64 16}
!220 = !DILocation(line: 464, column: 53, scope: !210)
!221 = !DILocation(line: 464, column: 48, scope: !210)
!222 = !DILocation(line: 464, column: 10, scope: !210)
!223 = !DILocation(line: 501, column: 3, scope: !210)
!224 = distinct !DISubprogram(name: "AcquireQuantumMemory", scope: !6, file: !6, line: 529, type: !161, scopeLine: 530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !225)
!225 = !{!226, !227, !228}
!226 = !DILocalVariable(name: "count", arg: 1, scope: !224, file: !6, line: 529, type: !163)
!227 = !DILocalVariable(name: "quantum", arg: 2, scope: !224, file: !6, line: 529, type: !163)
!228 = !DILocalVariable(name: "size", scope: !224, file: !6, line: 532, type: !111)
!229 = !DILocation(line: 0, scope: !224)
!230 = !DILocation(line: 534, column: 13, scope: !224)
!231 = !DILocation(line: 535, column: 14, scope: !232)
!232 = distinct !DILexicalBlock(scope: !224, file: !6, line: 535, column: 7)
!233 = !DILocation(line: 535, column: 20, scope: !232)
!234 = !DILocation(line: 535, column: 7, scope: !224)
!235 = !DILocation(line: 537, column: 7, scope: !236)
!236 = distinct !DILexicalBlock(scope: !232, file: !6, line: 536, column: 5)
!237 = !DILocation(line: 537, column: 12, scope: !236)
!238 = !DILocation(line: 538, column: 7, scope: !236)
!239 = !DILocation(line: 0, scope: !210, inlinedAt: !240)
!240 = distinct !DILocation(line: 540, column: 10, scope: !224)
!241 = !DILocation(line: 464, column: 25, scope: !210, inlinedAt: !240)
!242 = !DILocation(line: 464, column: 53, scope: !210, inlinedAt: !240)
!243 = !DILocation(line: 464, column: 48, scope: !210, inlinedAt: !240)
!244 = !DILocation(line: 464, column: 10, scope: !210, inlinedAt: !240)
!245 = !DILocation(line: 540, column: 3, scope: !224)
!246 = !DILocation(line: 541, column: 1, scope: !224)
!247 = distinct !DISubprogram(name: "AcquireVirtualMemory", scope: !6, file: !6, line: 568, type: !248, scopeLine: 570, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !250)
!248 = !DISubroutineType(types: !249)
!249 = !{!115, !163, !163}
!250 = !{!251, !252, !253, !254, !255, !259, !277}
!251 = !DILocalVariable(name: "count", arg: 1, scope: !247, file: !6, line: 568, type: !163)
!252 = !DILocalVariable(name: "quantum", arg: 2, scope: !247, file: !6, line: 569, type: !163)
!253 = !DILocalVariable(name: "memory_info", scope: !247, file: !6, line: 572, type: !115)
!254 = !DILocalVariable(name: "length", scope: !247, file: !6, line: 575, type: !111)
!255 = !DILocalVariable(name: "message", scope: !256, file: !6, line: 586, type: !258)
!256 = distinct !DILexicalBlock(scope: !257, file: !6, line: 586, column: 5)
!257 = distinct !DILexicalBlock(scope: !247, file: !6, line: 585, column: 7)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!259 = !DILocalVariable(name: "exception", scope: !256, file: !6, line: 586, type: !260)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !87, line: 219, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !14, line: 102, size: 448, elements: !262)
!262 = !{!263, !265, !266, !267, !268, !269, !271, !276}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !261, file: !14, line: 105, baseType: !264, size: 32)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !14, line: 100, baseType: !13)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !261, file: !14, line: 108, baseType: !130, size: 32, offset: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !261, file: !14, line: 111, baseType: !258, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !261, file: !14, line: 112, baseType: !258, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !261, file: !14, line: 115, baseType: !110, size: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !261, file: !14, line: 118, baseType: !270, size: 32, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !87, line: 215, baseType: !86)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !261, file: !14, line: 121, baseType: !272, size: 64, offset: 320)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !274, line: 26, baseType: !275)
!274 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!275 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !274, line: 25, flags: DIFlagFwdDecl)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !261, file: !14, line: 124, baseType: !111, size: 64, offset: 384)
!277 = !DILocalVariable(name: "file", scope: !278, file: !6, line: 613, type: !130)
!278 = distinct !DILexicalBlock(scope: !279, file: !6, line: 611, column: 5)
!279 = distinct !DILexicalBlock(scope: !247, file: !6, line: 610, column: 7)
!280 = !DILocation(line: 0, scope: !247)
!281 = !DILocation(line: 577, column: 15, scope: !247)
!282 = !DILocation(line: 578, column: 14, scope: !283)
!283 = distinct !DILexicalBlock(scope: !247, file: !6, line: 578, column: 7)
!284 = !DILocation(line: 578, column: 20, scope: !283)
!285 = !DILocation(line: 578, column: 7, scope: !247)
!286 = !DILocation(line: 580, column: 7, scope: !287)
!287 = distinct !DILexicalBlock(scope: !283, file: !6, line: 579, column: 5)
!288 = !DILocation(line: 580, column: 12, scope: !287)
!289 = !DILocation(line: 581, column: 7, scope: !287)
!290 = !DILocation(line: 0, scope: !160, inlinedAt: !291)
!291 = distinct !DILocation(line: 583, column: 30, scope: !247)
!292 = !DILocation(line: 274, column: 11, scope: !195, inlinedAt: !291)
!293 = !DILocation(line: 0, scope: !172, inlinedAt: !291)
!294 = !DILocation(line: 275, column: 15, scope: !199, inlinedAt: !291)
!295 = !DILocation(line: 275, column: 13, scope: !195, inlinedAt: !291)
!296 = !DILocation(line: 277, column: 29, scope: !202, inlinedAt: !291)
!297 = !DILocation(line: 277, column: 20, scope: !202, inlinedAt: !291)
!298 = !DILocation(line: 278, column: 31, scope: !202, inlinedAt: !291)
!299 = !DILocation(line: 278, column: 34, scope: !202, inlinedAt: !291)
!300 = !DILocation(line: 585, column: 19, scope: !257)
!301 = !DILocation(line: 585, column: 7, scope: !247)
!302 = !DILocation(line: 586, column: 5, scope: !256)
!303 = !DILocation(line: 0, scope: !256)
!304 = !DILocalVariable(name: "memory", arg: 1, scope: !305, file: !6, line: 1081, type: !110)
!305 = distinct !DISubprogram(name: "ResetMagickMemory", scope: !6, file: !6, line: 1081, type: !306, scopeLine: 1082, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !308)
!306 = !DISubroutineType(types: !307)
!307 = !{!110, !110, !130, !163}
!308 = !{!304, !309, !310}
!309 = !DILocalVariable(name: "byte", arg: 2, scope: !305, file: !6, line: 1081, type: !130)
!310 = !DILocalVariable(name: "size", arg: 3, scope: !305, file: !6, line: 1081, type: !163)
!311 = !DILocation(line: 0, scope: !305, inlinedAt: !312)
!312 = distinct !DILocation(line: 587, column: 10, scope: !247)
!313 = !DILocation(line: 1084, column: 10, scope: !305, inlinedAt: !312)
!314 = !DILocation(line: 588, column: 16, scope: !247)
!315 = !DILocation(line: 588, column: 22, scope: !247)
!316 = !{!317, !318, i64 4104}
!317 = !{!"_MemoryInfo", !184, i64 0, !184, i64 4096, !318, i64 4104, !207, i64 4112, !318, i64 4120}
!318 = !{!"long", !184, i64 0}
!319 = !DILocation(line: 589, column: 16, scope: !247)
!320 = !DILocation(line: 589, column: 25, scope: !247)
!321 = !{!317, !318, i64 4120}
!322 = !DILocation(line: 590, column: 7, scope: !323)
!323 = distinct !DILexicalBlock(scope: !247, file: !6, line: 590, column: 7)
!324 = !DILocation(line: 590, column: 52, scope: !323)
!325 = !DILocation(line: 590, column: 7, scope: !247)
!326 = !DILocation(line: 0, scope: !160, inlinedAt: !327)
!327 = distinct !DILocation(line: 592, column: 25, scope: !328)
!328 = distinct !DILexicalBlock(scope: !323, file: !6, line: 591, column: 5)
!329 = !DILocation(line: 259, column: 13, scope: !188, inlinedAt: !327)
!330 = !DILocation(line: 259, column: 19, scope: !188, inlinedAt: !327)
!331 = !DILocation(line: 258, column: 10, scope: !160, inlinedAt: !327)
!332 = !DILocation(line: 259, column: 62, scope: !188, inlinedAt: !327)
!333 = !DILocation(line: 259, column: 7, scope: !160, inlinedAt: !327)
!334 = !DILocation(line: 271, column: 30, scope: !172, inlinedAt: !327)
!335 = !DILocation(line: 274, column: 11, scope: !195, inlinedAt: !327)
!336 = !DILocation(line: 0, scope: !172, inlinedAt: !327)
!337 = !DILocation(line: 275, column: 15, scope: !199, inlinedAt: !327)
!338 = !DILocation(line: 275, column: 13, scope: !195, inlinedAt: !327)
!339 = !DILocation(line: 592, column: 20, scope: !328)
!340 = !DILocation(line: 592, column: 24, scope: !328)
!341 = !{!317, !207, i64 4112}
!342 = !DILocation(line: 593, column: 11, scope: !328)
!343 = !DILocation(line: 277, column: 29, scope: !202, inlinedAt: !327)
!344 = !DILocation(line: 277, column: 20, scope: !202, inlinedAt: !327)
!345 = !DILocation(line: 278, column: 31, scope: !202, inlinedAt: !327)
!346 = !DILocation(line: 278, column: 34, scope: !202, inlinedAt: !327)
!347 = !DILocation(line: 593, column: 29, scope: !348)
!348 = distinct !DILexicalBlock(scope: !328, file: !6, line: 593, column: 11)
!349 = !DILocation(line: 594, column: 22, scope: !348)
!350 = !DILocation(line: 594, column: 26, scope: !348)
!351 = !{!317, !184, i64 4096}
!352 = !DILocation(line: 594, column: 9, scope: !348)
!353 = !DILocation(line: 596, column: 9, scope: !348)
!354 = !DILocation(line: 598, column: 21, scope: !355)
!355 = distinct !DILexicalBlock(scope: !247, file: !6, line: 598, column: 7)
!356 = !DILocation(line: 598, column: 26, scope: !355)
!357 = !DILocation(line: 598, column: 35, scope: !355)
!358 = !DILocation(line: 599, column: 8, scope: !355)
!359 = !DILocation(line: 599, column: 50, scope: !355)
!360 = !DILocation(line: 598, column: 7, scope: !247)
!361 = !DILocation(line: 604, column: 25, scope: !362)
!362 = distinct !DILexicalBlock(scope: !355, file: !6, line: 600, column: 5)
!363 = !DILocation(line: 604, column: 24, scope: !362)
!364 = !DILocation(line: 605, column: 29, scope: !365)
!365 = distinct !DILexicalBlock(scope: !362, file: !6, line: 605, column: 11)
!366 = !DILocation(line: 605, column: 11, scope: !362)
!367 = !DILocation(line: 606, column: 22, scope: !365)
!368 = !DILocation(line: 606, column: 26, scope: !365)
!369 = !DILocation(line: 606, column: 9, scope: !365)
!370 = !DILocation(line: 608, column: 9, scope: !365)
!371 = !DILocation(line: 610, column: 20, scope: !279)
!372 = !DILocation(line: 610, column: 25, scope: !279)
!373 = !DILocation(line: 610, column: 7, scope: !247)
!374 = !DILocation(line: 618, column: 12, scope: !278)
!375 = !DILocation(line: 0, scope: !278)
!376 = !DILocation(line: 619, column: 16, scope: !377)
!377 = distinct !DILexicalBlock(scope: !278, file: !6, line: 619, column: 11)
!378 = !DILocation(line: 619, column: 11, scope: !278)
!379 = !DILocation(line: 621, column: 33, scope: !380)
!380 = distinct !DILexicalBlock(scope: !381, file: !6, line: 621, column: 15)
!381 = distinct !DILexicalBlock(scope: !377, file: !6, line: 620, column: 9)
!382 = !DILocation(line: 621, column: 16, scope: !380)
!383 = !DILocation(line: 621, column: 46, scope: !380)
!384 = !DILocation(line: 621, column: 52, scope: !380)
!385 = !DILocation(line: 621, column: 56, scope: !380)
!386 = !DILocation(line: 621, column: 73, scope: !380)
!387 = !DILocation(line: 621, column: 15, scope: !381)
!388 = !DILocation(line: 623, column: 33, scope: !389)
!389 = distinct !DILexicalBlock(scope: !380, file: !6, line: 622, column: 13)
!390 = !DILocation(line: 623, column: 32, scope: !389)
!391 = !DILocation(line: 624, column: 37, scope: !392)
!392 = distinct !DILexicalBlock(scope: !389, file: !6, line: 624, column: 19)
!393 = !DILocation(line: 624, column: 19, scope: !389)
!394 = !DILocation(line: 626, column: 32, scope: !395)
!395 = distinct !DILexicalBlock(scope: !392, file: !6, line: 625, column: 17)
!396 = !DILocation(line: 626, column: 36, scope: !395)
!397 = !DILocation(line: 627, column: 26, scope: !395)
!398 = !DILocation(line: 628, column: 17, scope: !395)
!399 = !DILocation(line: 630, column: 18, scope: !381)
!400 = !DILocation(line: 631, column: 9, scope: !381)
!401 = !DILocation(line: 633, column: 20, scope: !402)
!402 = distinct !DILexicalBlock(scope: !247, file: !6, line: 633, column: 7)
!403 = !DILocation(line: 633, column: 25, scope: !402)
!404 = !DILocation(line: 633, column: 7, scope: !247)
!405 = !DILocation(line: 0, scope: !210, inlinedAt: !406)
!406 = distinct !DILocation(line: 635, column: 25, scope: !407)
!407 = distinct !DILexicalBlock(scope: !402, file: !6, line: 634, column: 5)
!408 = !DILocation(line: 464, column: 25, scope: !210, inlinedAt: !406)
!409 = !DILocation(line: 464, column: 53, scope: !210, inlinedAt: !406)
!410 = !DILocation(line: 464, column: 48, scope: !210, inlinedAt: !406)
!411 = !DILocation(line: 464, column: 10, scope: !210, inlinedAt: !406)
!412 = !DILocation(line: 635, column: 24, scope: !407)
!413 = !DILocation(line: 636, column: 29, scope: !414)
!414 = distinct !DILexicalBlock(scope: !407, file: !6, line: 636, column: 11)
!415 = !DILocation(line: 636, column: 11, scope: !407)
!416 = !DILocation(line: 637, column: 22, scope: !414)
!417 = !DILocation(line: 637, column: 26, scope: !414)
!418 = !DILocation(line: 637, column: 9, scope: !414)
!419 = !DILocation(line: 640, column: 17, scope: !420)
!420 = distinct !DILexicalBlock(scope: !247, file: !6, line: 639, column: 7)
!421 = !DILocation(line: 640, column: 5, scope: !420)
!422 = !DILocation(line: 642, column: 1, scope: !247)
!423 = !DISubprogram(name: "GetExceptionInfo", scope: !14, file: !14, line: 166, type: !424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !427)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !426}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!427 = !{}
!428 = !DISubprogram(name: "GetExceptionMessage", scope: !14, file: !14, line: 137, type: !429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !427)
!429 = !DISubroutineType(types: !430)
!430 = !{!258, !431}
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!432 = !DISubprogram(name: "ThrowMagickException", scope: !14, file: !14, line: 156, type: !433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !427)
!433 = !DISubroutineType(types: !434)
!434 = !{!270, !426, !435, !435, !163, !437, !435, !435, null}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!438 = !DISubprogram(name: "DestroyString", scope: !439, file: !439, line: 46, type: !440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !427)
!439 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!440 = !DISubroutineType(types: !441)
!441 = !{!258, !258}
!442 = !DISubprogram(name: "CatchException", scope: !14, file: !14, line: 164, type: !424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !427)
!443 = !DISubprogram(name: "DestroyExceptionInfo", scope: !14, file: !14, line: 148, type: !444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !427)
!444 = !DISubroutineType(types: !445)
!445 = !{!426, !426}
!446 = !DISubprogram(name: "MagickCoreTerminus", scope: !447, file: !447, line: 147, type: !448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !427)
!447 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!448 = !DISubroutineType(types: !449)
!449 = !{null}
!450 = !DILocation(line: 0, scope: !305)
!451 = !DILocation(line: 1084, column: 10, scope: !305)
!452 = !DILocation(line: 1084, column: 3, scope: !305)
!453 = !DISubprogram(name: "AcquireMagickResource", scope: !92, file: !92, line: 44, type: !454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !427)
!454 = !DISubroutineType(types: !455)
!455 = !{!270, !456, !458}
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResourceType", file: !92, line: 36, baseType: !91)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !87, line: 151, baseType: !460)
!460 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!461 = !DISubprogram(name: "RelinquishMagickResource", scope: !92, file: !92, line: 57, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !427)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !456, !458}
!464 = !DISubprogram(name: "MapBlob", scope: !465, file: !465, line: 112, type: !466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !427)
!465 = !DIFile(filename: "apps/538.imagick_r/src/magick/blob-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a66ea2eabdd36512a199f3a0075ea4ad")
!466 = !DISubroutineType(types: !467)
!467 = !{!468, !130, !470, !472, !163}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "MapMode", file: !104, line: 35, baseType: !103)
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !87, line: 150, baseType: !474)
!474 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!475 = !DISubprogram(name: "AcquireUniqueFileResource", scope: !92, file: !92, line: 41, type: !476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !427)
!476 = !DISubroutineType(types: !477)
!477 = !{!130, !258}
!478 = !DISubprogram(name: "lseek", scope: !479, file: !479, line: 334, type: !480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !427)
!479 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!480 = !DISubroutineType(types: !481)
!481 = !{!482, !130, !482, !130}
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !483, line: 152, baseType: !484)
!483 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!484 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!485 = !DISubprogram(name: "write", scope: !479, file: !479, line: 366, type: !486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !427)
!486 = !DISubroutineType(types: !487)
!487 = !{!488, !130, !491, !111}
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !489, line: 77, baseType: !490)
!489 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !483, line: 193, baseType: !484)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!493 = !DISubprogram(name: "close", scope: !479, file: !479, line: 353, type: !494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !427)
!494 = !DISubroutineType(types: !495)
!495 = !{!130, !130}
!496 = distinct !DISubprogram(name: "RelinquishVirtualMemory", scope: !6, file: !6, line: 1020, type: !497, scopeLine: 1021, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !499)
!497 = !DISubroutineType(types: !498)
!498 = !{!115, !115}
!499 = !{!500}
!500 = !DILocalVariable(name: "memory_info", arg: 1, scope: !496, file: !6, line: 1020, type: !115)
!501 = !DILocation(line: 0, scope: !496)
!502 = !DILocation(line: 1024, column: 20, scope: !503)
!503 = distinct !DILexicalBlock(scope: !496, file: !6, line: 1024, column: 7)
!504 = !DILocation(line: 1024, column: 25, scope: !503)
!505 = !DILocation(line: 1024, column: 7, scope: !496)
!506 = !DILocation(line: 1025, column: 26, scope: !503)
!507 = !DILocation(line: 1025, column: 5, scope: !503)
!508 = !DILocalVariable(name: "memory", arg: 1, scope: !509, file: !6, line: 916, type: !110)
!509 = distinct !DISubprogram(name: "RelinquishAlignedMemory", scope: !6, file: !6, line: 916, type: !510, scopeLine: 917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !512)
!510 = !DISubroutineType(types: !511)
!511 = !{!110, !110}
!512 = !{!508}
!513 = !DILocation(line: 0, scope: !509, inlinedAt: !514)
!514 = distinct !DILocation(line: 1029, column: 27, scope: !515)
!515 = distinct !DILexicalBlock(scope: !516, file: !6, line: 1028, column: 7)
!516 = distinct !DILexicalBlock(scope: !503, file: !6, line: 1026, column: 5)
!517 = !DILocation(line: 925, column: 26, scope: !509, inlinedAt: !514)
!518 = !DILocation(line: 925, column: 8, scope: !509, inlinedAt: !514)
!519 = !DILocation(line: 925, column: 3, scope: !509, inlinedAt: !514)
!520 = !DILocation(line: 1029, column: 26, scope: !515)
!521 = !DILocation(line: 1030, column: 62, scope: !515)
!522 = !DILocation(line: 1030, column: 9, scope: !515)
!523 = !DILocation(line: 1031, column: 9, scope: !515)
!524 = !DILocation(line: 1035, column: 57, scope: !525)
!525 = distinct !DILexicalBlock(scope: !516, file: !6, line: 1034, column: 7)
!526 = !DILocation(line: 1035, column: 16, scope: !525)
!527 = !DILocation(line: 1036, column: 26, scope: !525)
!528 = !DILocation(line: 1037, column: 59, scope: !525)
!529 = !DILocation(line: 1037, column: 9, scope: !525)
!530 = !DILocation(line: 1038, column: 13, scope: !531)
!531 = distinct !DILexicalBlock(scope: !525, file: !6, line: 1038, column: 13)
!532 = !{!184, !184, i64 0}
!533 = !DILocation(line: 1038, column: 36, scope: !531)
!534 = !DILocation(line: 1038, column: 13, scope: !525)
!535 = !DILocation(line: 1039, column: 18, scope: !531)
!536 = !DILocation(line: 1039, column: 11, scope: !531)
!537 = !DILocalVariable(name: "memory", arg: 1, scope: !538, file: !6, line: 953, type: !110)
!538 = distinct !DISubprogram(name: "RelinquishMagickMemory", scope: !6, file: !6, line: 953, type: !510, scopeLine: 954, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !539)
!539 = !{!537}
!540 = !DILocation(line: 0, scope: !538, inlinedAt: !541)
!541 = distinct !DILocation(line: 1045, column: 27, scope: !542)
!542 = distinct !DILexicalBlock(scope: !516, file: !6, line: 1044, column: 7)
!543 = !DILocation(line: 958, column: 18, scope: !538, inlinedAt: !541)
!544 = !{!219, !207, i64 16}
!545 = !DILocation(line: 958, column: 3, scope: !538, inlinedAt: !541)
!546 = !DILocation(line: 1045, column: 26, scope: !542)
!547 = !DILocation(line: 1046, column: 9, scope: !542)
!548 = !DILocation(line: 1049, column: 16, scope: !496)
!549 = !DILocation(line: 1049, column: 25, scope: !496)
!550 = !DILocation(line: 0, scope: !509, inlinedAt: !551)
!551 = distinct !DILocation(line: 1050, column: 30, scope: !496)
!552 = !DILocation(line: 925, column: 26, scope: !509, inlinedAt: !551)
!553 = !DILocation(line: 925, column: 8, scope: !509, inlinedAt: !551)
!554 = !DILocation(line: 925, column: 3, scope: !509, inlinedAt: !551)
!555 = !DILocation(line: 1051, column: 3, scope: !496)
!556 = distinct !DISubprogram(name: "CopyMagickMemory", scope: !6, file: !6, line: 673, type: !557, scopeLine: 675, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !559)
!557 = !DISubroutineType(types: !558)
!558 = !{!110, !110, !491, !163}
!559 = !{!560, !561, !562}
!560 = !DILocalVariable(name: "destination", arg: 1, scope: !556, file: !6, line: 673, type: !110)
!561 = !DILocalVariable(name: "source", arg: 2, scope: !556, file: !6, line: 673, type: !491)
!562 = !DILocalVariable(name: "size", arg: 3, scope: !556, file: !6, line: 674, type: !163)
!563 = !DILocation(line: 0, scope: !556)
!564 = !DILocation(line: 702, column: 10, scope: !556)
!565 = !DILocation(line: 702, column: 3, scope: !556)
!566 = distinct !DISubprogram(name: "DestroyMagickMemory", scope: !6, file: !6, line: 723, type: !448, scopeLine: 724, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !427)
!567 = !DILocation(line: 744, column: 1, scope: !566)
!568 = distinct !DISubprogram(name: "GetMagickMemoryMethods", scope: !6, file: !6, line: 851, type: !569, scopeLine: 855, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !574)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !571, !572, !573}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!574 = !{!575, !576, !577}
!575 = !DILocalVariable(name: "acquire_memory_handler", arg: 1, scope: !568, file: !6, line: 852, type: !571)
!576 = !DILocalVariable(name: "resize_memory_handler", arg: 2, scope: !568, file: !6, line: 853, type: !572)
!577 = !DILocalVariable(name: "destroy_memory_handler", arg: 3, scope: !568, file: !6, line: 854, type: !573)
!578 = !DILocation(line: 0, scope: !568)
!579 = !DILocation(line: 859, column: 42, scope: !568)
!580 = !DILocation(line: 859, column: 26, scope: !568)
!581 = !DILocation(line: 860, column: 41, scope: !568)
!582 = !{!219, !207, i64 8}
!583 = !DILocation(line: 860, column: 25, scope: !568)
!584 = !DILocation(line: 861, column: 42, scope: !568)
!585 = !DILocation(line: 861, column: 26, scope: !568)
!586 = !DILocation(line: 862, column: 1, scope: !568)
!587 = distinct !DISubprogram(name: "GetVirtualMemoryBlob", scope: !6, file: !6, line: 886, type: !588, scopeLine: 887, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !592)
!588 = !DISubroutineType(types: !589)
!589 = !{!110, !590}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!592 = !{!593}
!593 = !DILocalVariable(name: "memory_info", arg: 1, scope: !587, file: !6, line: 886, type: !590)
!594 = !DILocation(line: 0, scope: !587)
!595 = !DILocation(line: 890, column: 23, scope: !587)
!596 = !DILocation(line: 890, column: 3, scope: !587)
!597 = !DILocation(line: 0, scope: !509)
!598 = !DILocation(line: 918, column: 14, scope: !599)
!599 = distinct !DILexicalBlock(scope: !509, file: !6, line: 918, column: 7)
!600 = !DILocation(line: 918, column: 7, scope: !509)
!601 = !DILocation(line: 925, column: 26, scope: !509)
!602 = !DILocation(line: 925, column: 8, scope: !509)
!603 = !DILocation(line: 925, column: 3, scope: !509)
!604 = !DILocation(line: 927, column: 3, scope: !509)
!605 = !DILocation(line: 928, column: 1, scope: !509)
!606 = !DILocation(line: 0, scope: !538)
!607 = !DILocation(line: 955, column: 14, scope: !608)
!608 = distinct !DILexicalBlock(scope: !538, file: !6, line: 955, column: 7)
!609 = !DILocation(line: 955, column: 7, scope: !538)
!610 = !DILocation(line: 958, column: 18, scope: !538)
!611 = !DILocation(line: 958, column: 3, scope: !538)
!612 = !DILocation(line: 995, column: 3, scope: !538)
!613 = !DILocation(line: 996, column: 1, scope: !538)
!614 = !DISubprogram(name: "UnmapBlob", scope: !465, file: !465, line: 86, type: !615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !427)
!615 = !DISubroutineType(types: !616)
!616 = !{!270, !110, !163}
!617 = !DISubprogram(name: "RelinquishUniqueFileResource", scope: !92, file: !92, line: 47, type: !618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !427)
!618 = !DISubroutineType(types: !619)
!619 = !{!270, !435}
!620 = distinct !DISubprogram(name: "ResizeMagickMemory", scope: !6, file: !6, line: 1134, type: !621, scopeLine: 1135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !623)
!621 = !DISubroutineType(types: !622)
!622 = !{!110, !110, !163}
!623 = !{!624, !625, !626}
!624 = !DILocalVariable(name: "memory", arg: 1, scope: !620, file: !6, line: 1134, type: !110)
!625 = !DILocalVariable(name: "size", arg: 2, scope: !620, file: !6, line: 1134, type: !163)
!626 = !DILocalVariable(name: "block", scope: !620, file: !6, line: 1137, type: !110)
!627 = !DILocation(line: 0, scope: !620)
!628 = !DILocation(line: 1139, column: 14, scope: !629)
!629 = distinct !DILexicalBlock(scope: !620, file: !6, line: 1139, column: 7)
!630 = !DILocation(line: 1139, column: 7, scope: !620)
!631 = !DILocation(line: 0, scope: !210, inlinedAt: !632)
!632 = distinct !DILocation(line: 1140, column: 12, scope: !629)
!633 = !DILocation(line: 464, column: 25, scope: !210, inlinedAt: !632)
!634 = !DILocation(line: 464, column: 53, scope: !210, inlinedAt: !632)
!635 = !DILocation(line: 464, column: 48, scope: !210, inlinedAt: !632)
!636 = !DILocation(line: 464, column: 10, scope: !210, inlinedAt: !632)
!637 = !DILocation(line: 1140, column: 5, scope: !629)
!638 = !DILocation(line: 1142, column: 24, scope: !620)
!639 = !DILocation(line: 1142, column: 58, scope: !620)
!640 = !DILocation(line: 1142, column: 53, scope: !620)
!641 = !DILocation(line: 1142, column: 9, scope: !620)
!642 = !DILocation(line: 1143, column: 13, scope: !643)
!643 = distinct !DILexicalBlock(scope: !620, file: !6, line: 1143, column: 7)
!644 = !DILocation(line: 1143, column: 7, scope: !620)
!645 = !DILocation(line: 0, scope: !538, inlinedAt: !646)
!646 = distinct !DILocation(line: 1144, column: 12, scope: !643)
!647 = !DILocation(line: 958, column: 18, scope: !538, inlinedAt: !646)
!648 = !DILocation(line: 958, column: 3, scope: !538, inlinedAt: !646)
!649 = !DILocation(line: 1144, column: 5, scope: !643)
!650 = !DILocation(line: 1163, column: 1, scope: !620)
!651 = distinct !DISubprogram(name: "ResizeQuantumMemory", scope: !6, file: !6, line: 1194, type: !652, scopeLine: 1196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !654)
!652 = !DISubroutineType(types: !653)
!653 = !{!110, !110, !163, !163}
!654 = !{!655, !656, !657, !658}
!655 = !DILocalVariable(name: "memory", arg: 1, scope: !651, file: !6, line: 1194, type: !110)
!656 = !DILocalVariable(name: "count", arg: 2, scope: !651, file: !6, line: 1194, type: !163)
!657 = !DILocalVariable(name: "quantum", arg: 3, scope: !651, file: !6, line: 1195, type: !163)
!658 = !DILocalVariable(name: "size", scope: !651, file: !6, line: 1198, type: !111)
!659 = !DILocation(line: 0, scope: !651)
!660 = !DILocation(line: 1200, column: 13, scope: !651)
!661 = !DILocation(line: 1201, column: 14, scope: !662)
!662 = distinct !DILexicalBlock(scope: !651, file: !6, line: 1201, column: 7)
!663 = !DILocation(line: 1201, column: 20, scope: !662)
!664 = !DILocation(line: 1201, column: 7, scope: !651)
!665 = !DILocation(line: 0, scope: !538, inlinedAt: !666)
!666 = distinct !DILocation(line: 1203, column: 14, scope: !667)
!667 = distinct !DILexicalBlock(scope: !662, file: !6, line: 1202, column: 5)
!668 = !DILocation(line: 955, column: 14, scope: !608, inlinedAt: !666)
!669 = !DILocation(line: 955, column: 7, scope: !538, inlinedAt: !666)
!670 = !DILocation(line: 958, column: 18, scope: !538, inlinedAt: !666)
!671 = !DILocation(line: 958, column: 3, scope: !538, inlinedAt: !666)
!672 = !DILocation(line: 995, column: 3, scope: !538, inlinedAt: !666)
!673 = !DILocation(line: 1204, column: 7, scope: !667)
!674 = !DILocation(line: 1204, column: 12, scope: !667)
!675 = !DILocation(line: 1205, column: 7, scope: !667)
!676 = !DILocation(line: 0, scope: !620, inlinedAt: !677)
!677 = distinct !DILocation(line: 1207, column: 10, scope: !651)
!678 = !DILocation(line: 1139, column: 14, scope: !629, inlinedAt: !677)
!679 = !DILocation(line: 1139, column: 7, scope: !620, inlinedAt: !677)
!680 = !DILocation(line: 0, scope: !210, inlinedAt: !681)
!681 = distinct !DILocation(line: 1140, column: 12, scope: !629, inlinedAt: !677)
!682 = !DILocation(line: 464, column: 25, scope: !210, inlinedAt: !681)
!683 = !DILocation(line: 464, column: 53, scope: !210, inlinedAt: !681)
!684 = !DILocation(line: 464, column: 48, scope: !210, inlinedAt: !681)
!685 = !DILocation(line: 464, column: 10, scope: !210, inlinedAt: !681)
!686 = !DILocation(line: 1140, column: 5, scope: !629, inlinedAt: !677)
!687 = !DILocation(line: 1142, column: 24, scope: !620, inlinedAt: !677)
!688 = !DILocation(line: 1142, column: 58, scope: !620, inlinedAt: !677)
!689 = !DILocation(line: 1142, column: 53, scope: !620, inlinedAt: !677)
!690 = !DILocation(line: 1142, column: 9, scope: !620, inlinedAt: !677)
!691 = !DILocation(line: 1143, column: 13, scope: !643, inlinedAt: !677)
!692 = !DILocation(line: 1143, column: 7, scope: !620, inlinedAt: !677)
!693 = !DILocation(line: 0, scope: !538, inlinedAt: !694)
!694 = distinct !DILocation(line: 1144, column: 12, scope: !643, inlinedAt: !677)
!695 = !DILocation(line: 958, column: 18, scope: !538, inlinedAt: !694)
!696 = !DILocation(line: 958, column: 3, scope: !538, inlinedAt: !694)
!697 = !DILocation(line: 1144, column: 5, scope: !643, inlinedAt: !677)
!698 = !DILocation(line: 1208, column: 1, scope: !651)
!699 = distinct !DISubprogram(name: "SetMagickMemoryMethods", scope: !6, file: !6, line: 1240, type: !700, scopeLine: 1244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !702)
!700 = !DISubroutineType(types: !701)
!701 = !{null, !131, !135, !139}
!702 = !{!703, !704, !705}
!703 = !DILocalVariable(name: "acquire_memory_handler", arg: 1, scope: !699, file: !6, line: 1241, type: !131)
!704 = !DILocalVariable(name: "resize_memory_handler", arg: 2, scope: !699, file: !6, line: 1242, type: !135)
!705 = !DILocalVariable(name: "destroy_memory_handler", arg: 3, scope: !699, file: !6, line: 1243, type: !139)
!706 = !DILocation(line: 0, scope: !699)
!707 = !DILocation(line: 1248, column: 30, scope: !708)
!708 = distinct !DILexicalBlock(scope: !699, file: !6, line: 1248, column: 7)
!709 = !DILocation(line: 1248, column: 7, scope: !699)
!710 = !DILocation(line: 1249, column: 42, scope: !708)
!711 = !DILocation(line: 1249, column: 5, scope: !708)
!712 = !DILocation(line: 1250, column: 29, scope: !713)
!713 = distinct !DILexicalBlock(scope: !699, file: !6, line: 1250, column: 7)
!714 = !DILocation(line: 1250, column: 7, scope: !699)
!715 = !DILocation(line: 1251, column: 41, scope: !713)
!716 = !DILocation(line: 1251, column: 5, scope: !713)
!717 = !DILocation(line: 1252, column: 30, scope: !718)
!718 = distinct !DILexicalBlock(scope: !699, file: !6, line: 1252, column: 7)
!719 = !DILocation(line: 1252, column: 7, scope: !699)
!720 = !DILocation(line: 1253, column: 42, scope: !718)
!721 = !DILocation(line: 1253, column: 5, scope: !718)
!722 = !DILocation(line: 1254, column: 1, scope: !699)
