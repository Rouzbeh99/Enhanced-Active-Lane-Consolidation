; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/block_buffer_encoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/block_buffer_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_check_state = type { %union.anon, %union.anon.0 }
%union.anon = type { [8 x i64] }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { [8 x i32], i64 }
%struct.lzma_block = type { i32, i32, i32, i64, i64, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_filter = type { i64, ptr }

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i64 @lzma_block_buffer_bound(i64 noundef %uncompressed_size) local_unnamed_addr #0 !dbg !59 {
entry:
  call void @llvm.dbg.value(metadata i64 %uncompressed_size, metadata !64, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i64 %uncompressed_size, metadata !73, metadata !DIExpression()), !dbg !80
  %cmp.i = icmp ugt i64 %uncompressed_size, 9223372036854774716, !dbg !82
  br i1 %cmp.i, label %cleanup, label %if.end.i, !dbg !84

if.end.i:                                         ; preds = %entry
  %sub.i = add nuw i64 %uncompressed_size, 65535, !dbg !85
  %div11.i = lshr i64 %sub.i, 16, !dbg !86
  %mul.i = mul nuw nsw i64 %div11.i, 3, !dbg !87
  call void @llvm.dbg.value(metadata i64 %mul.i, metadata !78, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !80
  %sub2.i = sub nuw nsw i64 9223372036854774715, %mul.i, !dbg !88
  %cmp3.i = icmp ult i64 %sub2.i, %uncompressed_size, !dbg !90
  br i1 %cmp3.i, label %cleanup, label %lzma2_bound.exit, !dbg !91

lzma2_bound.exit:                                 ; preds = %if.end.i
  call void @llvm.dbg.value(metadata i64 undef, metadata !78, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.value(metadata i64 undef, metadata !65, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i64 undef, metadata !65, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_constu, 18446744073709551612, DW_OP_and, DW_OP_stack_value)), !dbg !72
  %add6.i = add nuw nsw i64 %uncompressed_size, 96, !dbg !92
  %0 = add nuw i64 %add6.i, %mul.i, !dbg !93
  %add1 = and i64 %0, -4, !dbg !93
  br label %cleanup, !dbg !94

cleanup:                                          ; preds = %if.end.i, %entry, %lzma2_bound.exit
  %retval.0 = phi i64 [ %add1, %lzma2_bound.exit ], [ 0, %entry ], [ 0, %if.end.i ], !dbg !72
  ret i64 %retval.0, !dbg !95
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_buffer_encode(ptr noundef %block, ptr noundef %allocator, ptr noundef %in, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) local_unnamed_addr #3 !dbg !96 {
entry:
  %check50 = alloca %struct.lzma_check_state, align 8
  call void @llvm.dbg.value(metadata ptr %block, metadata !171, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !172, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata ptr %in, metadata !173, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !174, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata ptr %out, metadata !175, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !176, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !177, metadata !DIExpression()), !dbg !218
  %cmp = icmp eq ptr %block, null, !dbg !219
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !221

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp eq ptr %in, null, !dbg !222
  %cmp2 = icmp ne i64 %in_size, 0
  %or.cond = and i1 %cmp1, %cmp2, !dbg !223
  %cmp4 = icmp eq ptr %out, null
  %or.cond60 = or i1 %or.cond, %cmp4, !dbg !223
  %cmp6 = icmp eq ptr %out_pos, null
  %or.cond61 = or i1 %or.cond60, %cmp6, !dbg !223
  br i1 %or.cond61, label %return, label %lor.lhs.false7, !dbg !223

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %0 = load i64, ptr %out_pos, align 8, !dbg !224, !tbaa !225
  %cmp8 = icmp ugt i64 %0, %out_size, !dbg !229
  br i1 %cmp8, label %return, label %if.end, !dbg !230

if.end:                                           ; preds = %lor.lhs.false7
  %1 = load i32, ptr %block, align 8, !dbg !231, !tbaa !233
  %cmp9.not = icmp eq i32 %1, 0, !dbg !237
  br i1 %cmp9.not, label %if.end11, label %return, !dbg !238

if.end11:                                         ; preds = %if.end
  %check = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 2, !dbg !239
  %2 = load i32, ptr %check, align 8, !dbg !239, !tbaa !241
  %cmp12 = icmp ugt i32 %2, 15, !dbg !242
  br i1 %cmp12, label %return, label %lor.lhs.false13, !dbg !243

lor.lhs.false13:                                  ; preds = %if.end11
  %filters = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 5, !dbg !244
  %3 = load ptr, ptr %filters, align 8, !dbg !244, !tbaa !245
  %cmp14 = icmp eq ptr %3, null, !dbg !246
  br i1 %cmp14, label %return, label %if.end16, !dbg !247

if.end16:                                         ; preds = %lor.lhs.false13
  %call = tail call zeroext i8 @lzma_check_is_supported(i32 noundef %2) #7, !dbg !248
  %tobool.not = icmp eq i8 %call, 0, !dbg !248
  br i1 %tobool.not, label %return, label %if.end19, !dbg !250

if.end19:                                         ; preds = %if.end16
  %4 = load i64, ptr %out_pos, align 8, !dbg !251, !tbaa !225
  %sub = sub i64 %out_size, %4, !dbg !252
  %and = and i64 %sub, 3, !dbg !253
  %sub20 = sub i64 %out_size, %and, !dbg !254
  call void @llvm.dbg.value(metadata i64 %sub20, metadata !177, metadata !DIExpression()), !dbg !218
  %5 = load i32, ptr %check, align 8, !dbg !255, !tbaa !241
  %call22 = tail call i32 @lzma_check_size(i32 noundef %5) #7, !dbg !256
  %conv = zext i32 %call22 to i64, !dbg !256
  call void @llvm.dbg.value(metadata i64 %conv, metadata !178, metadata !DIExpression()), !dbg !218
  %6 = load i64, ptr %out_pos, align 8, !dbg !257, !tbaa !225
  %sub23 = sub i64 %sub20, %6, !dbg !259
  %cmp24.not = icmp ugt i64 %sub23, %conv, !dbg !260
  br i1 %cmp24.not, label %if.end27, label %return, !dbg !261

if.end27:                                         ; preds = %if.end19
  %sub28 = sub i64 %sub20, %conv, !dbg !262
  call void @llvm.dbg.value(metadata i64 %sub28, metadata !177, metadata !DIExpression()), !dbg !218
  %call29 = tail call fastcc i32 @block_encode_normal(ptr noundef nonnull %block, ptr noundef %allocator, ptr noundef %in, i64 noundef %in_size, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %sub28), !dbg !263
  call void @llvm.dbg.value(metadata i32 %call29, metadata !180, metadata !DIExpression()), !dbg !218
  switch i32 %call29, label %return [
    i32 0, label %if.end42
    i32 10, label %do.body
  ], !dbg !264

do.body:                                          ; preds = %if.end27
  %call37 = tail call fastcc i32 @block_encode_uncompressed(ptr noundef nonnull %block, ptr noundef %in, i64 noundef %in_size, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %sub28), !dbg !265
  call void @llvm.dbg.value(metadata i32 %call37, metadata !182, metadata !DIExpression()), !dbg !266
  %cmp38.not = icmp eq i32 %call37, 0, !dbg !267
  br i1 %cmp38.not, label %if.end42, label %return

if.end42:                                         ; preds = %if.end27, %do.body
  %compressed_size = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 3, !dbg !269
  %7 = load i64, ptr %compressed_size, align 8, !dbg !269, !tbaa !270
  call void @llvm.dbg.value(metadata i64 %7, metadata !186, metadata !DIExpression()), !dbg !271
  %and43107 = and i64 %7, 3, !dbg !272
  %tobool44.not108 = icmp eq i64 %and43107, 0, !dbg !274
  br i1 %tobool44.not108, label %for.cond.cleanup, label %for.body, !dbg !274

for.cond.cleanup:                                 ; preds = %for.body, %if.end42
  %cmp47.not = icmp eq i32 %call22, 0, !dbg !275
  br i1 %cmp47.not, label %return, label %if.then49, !dbg !276

for.body:                                         ; preds = %if.end42, %for.body
  %i.0109 = phi i64 [ %inc45, %for.body ], [ %7, %if.end42 ]
  call void @llvm.dbg.value(metadata i64 %i.0109, metadata !186, metadata !DIExpression()), !dbg !271
  %8 = load i64, ptr %out_pos, align 8, !dbg !277, !tbaa !225
  %inc = add i64 %8, 1, !dbg !277
  store i64 %inc, ptr %out_pos, align 8, !dbg !277, !tbaa !225
  %arrayidx = getelementptr inbounds i8, ptr %out, i64 %8, !dbg !279
  store i8 0, ptr %arrayidx, align 1, !dbg !280, !tbaa !281
  %inc45 = add i64 %i.0109, 1, !dbg !282
  call void @llvm.dbg.value(metadata i64 %inc45, metadata !186, metadata !DIExpression()), !dbg !271
  %and43 = and i64 %inc45, 3, !dbg !272
  %tobool44.not = icmp eq i64 %and43, 0, !dbg !274
  br i1 %tobool44.not, label %for.cond.cleanup, label %for.body, !dbg !274, !llvm.loop !283

if.then49:                                        ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %check50) #7, !dbg !287
  call void @llvm.dbg.declare(metadata ptr %check50, metadata !188, metadata !DIExpression()), !dbg !288
  %9 = load i32, ptr %check, align 8, !dbg !289, !tbaa !241
  call void @lzma_check_init(ptr noundef nonnull %check50, i32 noundef %9) #7, !dbg !290
  %10 = load i32, ptr %check, align 8, !dbg !291, !tbaa !241
  call void @lzma_check_update(ptr noundef nonnull %check50, i32 noundef %10, ptr noundef %in, i64 noundef %in_size) #7, !dbg !292
  %11 = load i32, ptr %check, align 8, !dbg !293, !tbaa !241
  call void @lzma_check_finish(ptr noundef nonnull %check50, i32 noundef %11) #7, !dbg !294
  %raw_check = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 6, !dbg !295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %raw_check, ptr nonnull align 8 %check50, i64 %conv, i1 false), !dbg !296
  %12 = load i64, ptr %out_pos, align 8, !dbg !297, !tbaa !225
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %12, !dbg !298
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr nonnull align 8 %check50, i64 %conv, i1 false), !dbg !299
  %13 = load i64, ptr %out_pos, align 8, !dbg !300, !tbaa !225
  %add = add i64 %13, %conv, !dbg !300
  store i64 %add, ptr %out_pos, align 8, !dbg !300, !tbaa !225
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %check50) #7, !dbg !301
  br label %return, !dbg !302

return:                                           ; preds = %if.end19, %for.cond.cleanup, %if.then49, %if.end27, %do.body, %if.end16, %if.end11, %lor.lhs.false13, %if.end, %entry, %lor.lhs.false7, %lor.lhs.false
  %retval.3 = phi i32 [ 11, %lor.lhs.false ], [ 11, %lor.lhs.false7 ], [ 11, %entry ], [ 8, %if.end ], [ 11, %lor.lhs.false13 ], [ 11, %if.end11 ], [ 3, %if.end16 ], [ 10, %if.end19 ], [ %call37, %do.body ], [ %call29, %if.end27 ], [ 0, %if.then49 ], [ 0, %for.cond.cleanup ], !dbg !218
  ret i32 %retval.3, !dbg !303
}

declare !dbg !304 zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #4

declare !dbg !308 i32 @lzma_check_size(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @block_encode_normal(ptr noundef %block, ptr noundef %allocator, ptr noundef %in, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) unnamed_addr #3 !dbg !311 {
entry:
  %raw_encoder = alloca %struct.lzma_next_coder_s, align 8
  %in_pos = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %block, metadata !313, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !314, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata ptr %in, metadata !315, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !316, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata ptr %out, metadata !317, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !318, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !319, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !73, metadata !DIExpression()), !dbg !371
  %cmp.i = icmp ugt i64 %in_size, 9223372036854774716, !dbg !373
  br i1 %cmp.i, label %lzma2_bound.exit.thread, label %if.end.i, !dbg !374

if.end.i:                                         ; preds = %entry
  %sub.i = add nuw i64 %in_size, 65535, !dbg !375
  %div11.i = lshr i64 %sub.i, 16, !dbg !376
  %mul.i = mul nuw nsw i64 %div11.i, 3, !dbg !377
  call void @llvm.dbg.value(metadata i64 %mul.i, metadata !78, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !371
  %sub2.i = sub nuw nsw i64 9223372036854774715, %mul.i, !dbg !378
  %cmp3.i = icmp ult i64 %sub2.i, %in_size, !dbg !379
  br i1 %cmp3.i, label %lzma2_bound.exit.thread, label %lzma2_bound.exit, !dbg !380

lzma2_bound.exit.thread:                          ; preds = %entry, %if.end.i
  %compressed_size86 = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 3, !dbg !381
  store i64 0, ptr %compressed_size86, align 8, !dbg !382, !tbaa !270
  br label %return, !dbg !383

lzma2_bound.exit:                                 ; preds = %if.end.i
  call void @llvm.dbg.value(metadata i64 undef, metadata !78, metadata !DIExpression()), !dbg !371
  %add1.i = add nuw nsw i64 %in_size, 1, !dbg !384
  %add6.i = add nuw i64 %add1.i, %mul.i, !dbg !385
  %compressed_size = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 3, !dbg !381
  store i64 %add6.i, ptr %compressed_size, align 8, !dbg !382, !tbaa !270
  %uncompressed_size = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 4, !dbg !386
  store i64 %in_size, ptr %uncompressed_size, align 8, !dbg !387, !tbaa !388
  %call2 = tail call i32 @lzma_block_header_size(ptr noundef nonnull %block) #7, !dbg !389
  call void @llvm.dbg.value(metadata i32 %call2, metadata !320, metadata !DIExpression()), !dbg !390
  %cmp3.not = icmp eq i32 %call2, 0, !dbg !391
  br i1 %cmp3.not, label %do.end, label %return

do.end:                                           ; preds = %lzma2_bound.exit
  %0 = load i64, ptr %out_pos, align 8, !dbg !393, !tbaa !225
  %sub = sub i64 %out_size, %0, !dbg !395
  %header_size = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 1, !dbg !396
  %1 = load i32, ptr %header_size, align 4, !dbg !396, !tbaa !397
  %conv = zext i32 %1 to i64, !dbg !398
  %cmp6.not = icmp ugt i64 %sub, %conv, !dbg !399
  br i1 %cmp6.not, label %if.end9, label %return, !dbg !400

if.end9:                                          ; preds = %do.end
  call void @llvm.dbg.value(metadata i64 %0, metadata !322, metadata !DIExpression()), !dbg !370
  %add = add i64 %0, %conv, !dbg !401
  store i64 %add, ptr %out_pos, align 8, !dbg !401, !tbaa !225
  %2 = load i64, ptr %compressed_size, align 8, !dbg !402, !tbaa !270
  call void @llvm.dbg.value(metadata i64 undef, metadata !319, metadata !DIExpression()), !dbg !370
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %raw_encoder) #7, !dbg !404
  call void @llvm.dbg.declare(metadata ptr %raw_encoder, metadata !323, metadata !DIExpression()), !dbg !405
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %raw_encoder, i8 0, i64 64, i1 false), !dbg !405
  %3 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %raw_encoder, i64 0, i32 1, !dbg !405
  store i64 -1, ptr %3, align 8, !dbg !405
  %filters = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 5, !dbg !406
  %4 = load ptr, ptr %filters, align 8, !dbg !406, !tbaa !245
  %call20 = call i32 @lzma_raw_encoder_init(ptr noundef nonnull %raw_encoder, ptr noundef %allocator, ptr noundef %4) #7, !dbg !407
  call void @llvm.dbg.value(metadata i32 %call20, metadata !366, metadata !DIExpression()), !dbg !370
  %cmp21 = icmp eq i32 %call20, 0, !dbg !408
  br i1 %cmp21, label %if.then23, label %if.end25, !dbg !409

if.then23:                                        ; preds = %if.end9
  %sub12 = sub i64 %out_size, %add, !dbg !410
  %cmp14 = icmp ugt i64 %sub12, %2, !dbg !411
  %add18 = add i64 %2, %add
  %spec.select = select i1 %cmp14, i64 %add18, i64 %out_size, !dbg !412
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !319, metadata !DIExpression()), !dbg !370
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in_pos) #7, !dbg !413
  call void @llvm.dbg.value(metadata i64 0, metadata !367, metadata !DIExpression()), !dbg !414
  store i64 0, ptr %in_pos, align 8, !dbg !415, !tbaa !225
  %code = getelementptr inbounds %struct.lzma_next_coder_s, ptr %raw_encoder, i64 0, i32 3, !dbg !416
  %5 = load ptr, ptr %code, align 8, !dbg !416, !tbaa !417
  %6 = load ptr, ptr %raw_encoder, align 8, !dbg !419, !tbaa !420
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !367, metadata !DIExpression(DW_OP_deref)), !dbg !414
  %call24 = call i32 %5(ptr noundef %6, ptr noundef %allocator, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %spec.select, i32 noundef 3) #7, !dbg !421
  call void @llvm.dbg.value(metadata i32 %call24, metadata !366, metadata !DIExpression()), !dbg !370
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in_pos) #7, !dbg !422
  br label %if.end25, !dbg !423

if.end25:                                         ; preds = %if.then23, %if.end9
  %ret.0 = phi i32 [ %call24, %if.then23 ], [ %call20, %if.end9 ], !dbg !370
  call void @llvm.dbg.value(metadata i32 %ret.0, metadata !366, metadata !DIExpression()), !dbg !370
  call void @lzma_next_end(ptr noundef nonnull %raw_encoder, ptr noundef %allocator) #7, !dbg !424
  switch i32 %ret.0, label %if.then46 [
    i32 1, label %if.then28
    i32 0, label %select.unfold88
  ], !dbg !425

if.then28:                                        ; preds = %if.end25
  %7 = load i64, ptr %out_pos, align 8, !dbg !426, !tbaa !225
  %8 = load i32, ptr %header_size, align 4, !dbg !429, !tbaa !397
  %conv30 = zext i32 %8 to i64, !dbg !430
  %9 = add i64 %0, %conv30, !dbg !431
  %sub32 = sub i64 %7, %9, !dbg !431
  store i64 %sub32, ptr %compressed_size, align 8, !dbg !432, !tbaa !270
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %0, !dbg !433
  %call34 = call i32 @lzma_block_header_encode(ptr noundef nonnull %block, ptr noundef %add.ptr) #7, !dbg !434
  call void @llvm.dbg.value(metadata i32 %call34, metadata !366, metadata !DIExpression()), !dbg !370
  %cmp35.not = icmp eq i32 %call34, 0, !dbg !435
  call void @llvm.dbg.value(metadata i32 undef, metadata !366, metadata !DIExpression()), !dbg !370
  br i1 %cmp35.not, label %if.end47, label %if.then46, !dbg !437

select.unfold88:                                  ; preds = %if.end25
  br label %if.then46

if.then46:                                        ; preds = %if.end25, %if.then28, %select.unfold88
  %ret.1.ph = phi i32 [ 10, %select.unfold88 ], [ 11, %if.then28 ], [ %ret.0, %if.end25 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !366, metadata !DIExpression()), !dbg !370
  store i64 %0, ptr %out_pos, align 8, !dbg !438, !tbaa !225
  br label %if.end47, !dbg !440

if.end47:                                         ; preds = %if.then28, %if.then46
  %ret.192 = phi i32 [ %ret.1.ph, %if.then46 ], [ 0, %if.then28 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %raw_encoder) #7, !dbg !441
  br label %return

return:                                           ; preds = %lzma2_bound.exit.thread, %lzma2_bound.exit, %do.end, %if.end47
  %retval.1 = phi i32 [ %call2, %lzma2_bound.exit ], [ %ret.192, %if.end47 ], [ 10, %do.end ], [ 9, %lzma2_bound.exit.thread ], !dbg !370
  ret i32 %retval.1, !dbg !441
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @block_encode_uncompressed(ptr noundef %block, ptr nocapture noundef readonly %in, i64 noundef %in_size, ptr noundef %out, ptr nocapture noundef %out_pos, i64 noundef %out_size) unnamed_addr #3 !dbg !442 {
entry:
  %lzma2 = alloca %struct.lzma_options_lzma, align 8
  %filters = alloca [2 x %struct.lzma_filter], align 16
  call void @llvm.dbg.value(metadata ptr %block, metadata !446, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.value(metadata ptr %in, metadata !447, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !448, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.value(metadata ptr %out, metadata !449, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !450, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !451, metadata !DIExpression()), !dbg !491
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %lzma2) #7, !dbg !492
  call void @llvm.dbg.declare(metadata ptr %lzma2, metadata !452, metadata !DIExpression()), !dbg !493
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %lzma2, i8 0, i64 112, i1 false), !dbg !493
  store i32 4096, ptr %lzma2, align 8, !dbg !493
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %filters) #7, !dbg !494
  call void @llvm.dbg.declare(metadata ptr %filters, metadata !482, metadata !DIExpression()), !dbg !495
  store i64 33, ptr %filters, align 16, !dbg !496, !tbaa !497
  %options = getelementptr inbounds %struct.lzma_filter, ptr %filters, i64 0, i32 1, !dbg !499
  store ptr %lzma2, ptr %options, align 8, !dbg !500, !tbaa !501
  %arrayidx2 = getelementptr inbounds [2 x %struct.lzma_filter], ptr %filters, i64 0, i64 1, !dbg !502
  store i64 -1, ptr %arrayidx2, align 16, !dbg !503, !tbaa !497
  %filters4 = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 5, !dbg !504
  %0 = load ptr, ptr %filters4, align 8, !dbg !504, !tbaa !245
  call void @llvm.dbg.value(metadata ptr %0, metadata !486, metadata !DIExpression()), !dbg !491
  store ptr %filters, ptr %filters4, align 8, !dbg !505, !tbaa !245
  %call = call i32 @lzma_block_header_size(ptr noundef %block) #7, !dbg !506
  %cmp.not = icmp eq i32 %call, 0, !dbg !508
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !509

if.then:                                          ; preds = %entry
  store ptr %0, ptr %filters4, align 8, !dbg !510, !tbaa !245
  br label %cleanup, !dbg !512

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %out_pos, align 8, !dbg !513, !tbaa !225
  %sub = sub i64 %out_size, %1, !dbg !515
  %header_size = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 1, !dbg !516
  %2 = load i32, ptr %header_size, align 4, !dbg !516, !tbaa !397
  %conv = zext i32 %2 to i64, !dbg !517
  %compressed_size = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 3, !dbg !518
  %3 = load i64, ptr %compressed_size, align 8, !dbg !518, !tbaa !270
  %add = add i64 %3, %conv, !dbg !519
  %cmp7 = icmp ult i64 %sub, %add, !dbg !520
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !521

if.then9:                                         ; preds = %if.end
  store ptr %0, ptr %filters4, align 8, !dbg !522, !tbaa !245
  br label %cleanup, !dbg !524

if.end11:                                         ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %1, !dbg !525
  %call12 = call i32 @lzma_block_header_encode(ptr noundef nonnull %block, ptr noundef %add.ptr) #7, !dbg !527
  %cmp13.not = icmp eq i32 %call12, 0, !dbg !528
  store ptr %0, ptr %filters4, align 8, !dbg !491, !tbaa !245
  br i1 %cmp13.not, label %if.end17, label %cleanup, !dbg !529

if.end17:                                         ; preds = %if.end11
  %4 = load i32, ptr %header_size, align 4, !dbg !530, !tbaa !397
  %conv20 = zext i32 %4 to i64, !dbg !531
  %5 = load i64, ptr %out_pos, align 8, !dbg !532, !tbaa !225
  %add21 = add i64 %5, %conv20, !dbg !532
  call void @llvm.dbg.value(metadata i64 0, metadata !487, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.value(metadata i8 1, metadata !488, metadata !DIExpression()), !dbg !491
  %cmp2281.not = icmp eq i64 %in_size, 0, !dbg !533
  br i1 %cmp2281.not, label %while.end, label %while.body, !dbg !534

while.body:                                       ; preds = %if.end17, %while.body
  %control.084 = phi i8 [ 2, %while.body ], [ 1, %if.end17 ]
  %in_pos.083 = phi i64 [ %add39, %while.body ], [ 0, %if.end17 ]
  %storemerge82 = phi i64 [ %add40, %while.body ], [ %add21, %if.end17 ]
  call void @llvm.dbg.value(metadata i8 %control.084, metadata !488, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.value(metadata i64 %in_pos.083, metadata !487, metadata !DIExpression()), !dbg !491
  %inc = add i64 %storemerge82, 1, !dbg !535
  store i64 %inc, ptr %out_pos, align 8, !dbg !535, !tbaa !225
  %arrayidx24 = getelementptr inbounds i8, ptr %out, i64 %storemerge82, !dbg !536
  store i8 %control.084, ptr %arrayidx24, align 1, !dbg !537, !tbaa !281
  call void @llvm.dbg.value(metadata i8 2, metadata !488, metadata !DIExpression()), !dbg !491
  %sub25 = sub i64 %in_size, %in_pos.083, !dbg !538
  %6 = call i64 @llvm.umin.i64(i64 %sub25, i64 65536), !dbg !538
  call void @llvm.dbg.value(metadata i64 %6, metadata !489, metadata !DIExpression()), !dbg !539
  %sub29 = add nsw i64 %6, -1, !dbg !540
  %shr = lshr i64 %sub29, 8, !dbg !541
  %conv30 = trunc i64 %shr to i8, !dbg !542
  %7 = load i64, ptr %out_pos, align 8, !dbg !543, !tbaa !225
  %inc31 = add i64 %7, 1, !dbg !543
  store i64 %inc31, ptr %out_pos, align 8, !dbg !543, !tbaa !225
  %arrayidx32 = getelementptr inbounds i8, ptr %out, i64 %7, !dbg !544
  store i8 %conv30, ptr %arrayidx32, align 1, !dbg !545, !tbaa !281
  %conv34 = trunc i64 %sub29 to i8, !dbg !546
  %8 = load i64, ptr %out_pos, align 8, !dbg !547, !tbaa !225
  %inc35 = add i64 %8, 1, !dbg !547
  store i64 %inc35, ptr %out_pos, align 8, !dbg !547, !tbaa !225
  %arrayidx36 = getelementptr inbounds i8, ptr %out, i64 %8, !dbg !548
  store i8 %conv34, ptr %arrayidx36, align 1, !dbg !549, !tbaa !281
  %9 = load i64, ptr %out_pos, align 8, !dbg !550, !tbaa !225
  %add.ptr37 = getelementptr inbounds i8, ptr %out, i64 %9, !dbg !551
  %add.ptr38 = getelementptr inbounds i8, ptr %in, i64 %in_pos.083, !dbg !552
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr37, ptr align 1 %add.ptr38, i64 %6, i1 false), !dbg !553
  %add39 = add i64 %6, %in_pos.083, !dbg !554
  call void @llvm.dbg.value(metadata i64 %add39, metadata !487, metadata !DIExpression()), !dbg !491
  %10 = load i64, ptr %out_pos, align 8, !dbg !555, !tbaa !225
  %add40 = add i64 %10, %6, !dbg !555
  store i64 %add40, ptr %out_pos, align 8, !dbg !491, !tbaa !225
  %cmp22 = icmp ult i64 %add39, %in_size, !dbg !533
  br i1 %cmp22, label %while.body, label %while.end, !dbg !534, !llvm.loop !556

while.end:                                        ; preds = %while.body, %if.end17
  %storemerge.lcssa = phi i64 [ %add21, %if.end17 ], [ %add40, %while.body ], !dbg !491
  %inc41 = add i64 %storemerge.lcssa, 1, !dbg !558
  store i64 %inc41, ptr %out_pos, align 8, !dbg !558, !tbaa !225
  %arrayidx42 = getelementptr inbounds i8, ptr %out, i64 %storemerge.lcssa, !dbg !559
  store i8 0, ptr %arrayidx42, align 1, !dbg !560, !tbaa !281
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %while.end, %if.then9, %if.then
  %retval.0 = phi i32 [ 11, %if.then ], [ 10, %if.then9 ], [ 0, %while.end ], [ 11, %if.end11 ], !dbg !491
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %filters) #7, !dbg !561
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %lzma2) #7, !dbg !561
  ret i32 %retval.0, !dbg !561
}

declare !dbg !562 void @lzma_check_init(ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !566 void @lzma_check_update(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !569 void @lzma_check_finish(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare !dbg !570 i32 @lzma_block_header_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare !dbg !573 i32 @lzma_raw_encoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !578 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !581 i32 @lzma_block_header_encode(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !47, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/block_buffer_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "898d84ac5cb0ab1b377dfd08911813d3")
!2 = !{!3, !19, !26, !29, !35, !40}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 57, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/base.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!7 = !DIEnumerator(name: "LZMA_OK", value: 0)
!8 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!9 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!10 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!11 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!12 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!13 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!14 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!15 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!16 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!17 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!18 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 27, baseType: !5, size: 32, elements: !21)
!20 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/check.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!23 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!24 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!25 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, baseType: !5, size: 32, elements: !27)
!27 = !{!28}
!28 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 250, baseType: !5, size: 32, elements: !30)
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!32 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!33 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!34 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 138, baseType: !5, size: 32, elements: !37)
!36 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/lzma.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c59c540efa0aff44f03d71331089fff8")
!37 = !{!38, !39}
!38 = !DIEnumerator(name: "LZMA_MODE_FAST", value: 1)
!39 = !DIEnumerator(name: "LZMA_MODE_NORMAL", value: 2)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 58, baseType: !5, size: 32, elements: !41)
!41 = !{!42, !43, !44, !45, !46}
!42 = !DIEnumerator(name: "LZMA_MF_HC3", value: 3)
!43 = !DIEnumerator(name: "LZMA_MF_HC4", value: 4)
!44 = !DIEnumerator(name: "LZMA_MF_BT2", value: 18)
!45 = !DIEnumerator(name: "LZMA_MF_BT3", value: 19)
!46 = !DIEnumerator(name: "LZMA_MF_BT4", value: 20)
!47 = !{!48, !5, !49}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !50, line: 46, baseType: !51)
!50 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !{i32 7, !"Dwarf Version", i32 5}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"wchar_size", i32 4}
!55 = !{i32 7, !"PIC Level", i32 2}
!56 = !{i32 7, !"PIE Level", i32 2}
!57 = !{i32 7, !"uwtable", i32 2}
!58 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!59 = distinct !DISubprogram(name: "lzma_block_buffer_bound", scope: !60, file: !60, line: 55, type: !61, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!60 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/block_buffer_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "898d84ac5cb0ab1b377dfd08911813d3")
!61 = !DISubroutineType(types: !62)
!62 = !{!49, !49}
!63 = !{!64, !65}
!64 = !DILocalVariable(name: "uncompressed_size", arg: 1, scope: !59, file: !60, line: 55, type: !49)
!65 = !DILocalVariable(name: "lzma2_size", scope: !59, file: !60, line: 62, type: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !67, line: 63, baseType: !68)
!67 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !69, line: 27, baseType: !70)
!69 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !71, line: 45, baseType: !51)
!71 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!72 = !DILocation(line: 0, scope: !59)
!73 = !DILocalVariable(name: "uncompressed_size", arg: 1, scope: !74, file: !60, line: 32, type: !66)
!74 = distinct !DISubprogram(name: "lzma2_bound", scope: !60, file: !60, line: 32, type: !75, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!75 = !DISubroutineType(types: !76)
!76 = !{!66, !66}
!77 = !{!73, !78}
!78 = !DILocalVariable(name: "overhead", scope: !74, file: !60, line: 42, type: !79)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!80 = !DILocation(line: 0, scope: !74, inlinedAt: !81)
!81 = distinct !DILocation(line: 62, column: 24, scope: !59)
!82 = !DILocation(line: 35, column: 24, scope: !83, inlinedAt: !81)
!83 = distinct !DILexicalBlock(scope: !74, file: !60, line: 35, column: 6)
!84 = !DILocation(line: 35, column: 6, scope: !74, inlinedAt: !81)
!85 = !DILocation(line: 42, column: 66, scope: !74, inlinedAt: !81)
!86 = !DILocation(line: 43, column: 5, scope: !74, inlinedAt: !81)
!87 = !DILocation(line: 44, column: 4, scope: !74, inlinedAt: !81)
!88 = !DILocation(line: 47, column: 26, scope: !89, inlinedAt: !81)
!89 = distinct !DILexicalBlock(scope: !74, file: !60, line: 47, column: 6)
!90 = !DILocation(line: 47, column: 37, scope: !89, inlinedAt: !81)
!91 = !DILocation(line: 47, column: 6, scope: !74, inlinedAt: !81)
!92 = !DILocation(line: 50, column: 27, scope: !74, inlinedAt: !81)
!93 = !DILocation(line: 77, column: 23, scope: !59)
!94 = !DILocation(line: 77, column: 2, scope: !59)
!95 = !DILocation(line: 78, column: 1, scope: !59)
!96 = distinct !DISubprogram(name: "lzma_block_buffer_encode", scope: !60, file: !60, line: 225, type: !97, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !170)
!97 = !DISubroutineType(types: !98)
!98 = !{!99, !100, !153, !166, !49, !168, !169, !49}
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_block", file: !102, line: 245, baseType: !103)
!102 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/block.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bf8cbafce550217b909c63081e414910")
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !102, line: 30, size: 1664, elements: !104)
!104 = !{!105, !108, !109, !111, !112, !113, !121, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !141, !142, !143, !144, !146, !147, !148, !149, !150, !151, !152}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !103, file: !102, line: 47, baseType: !106, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !69, line: 26, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !71, line: 42, baseType: !5)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !103, file: !102, line: 67, baseType: !106, size: 32, offset: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !103, file: !102, line: 88, baseType: !110, size: 32, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !20, line: 55, baseType: !19)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !103, file: !102, line: 143, baseType: !66, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !103, file: !102, line: 167, baseType: !66, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !103, file: !102, line: 195, baseType: !114, size: 64, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !116, line: 65, baseType: !117)
!116 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !116, line: 43, size: 128, elements: !118)
!118 = !{!119, !120}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !117, file: !116, line: 54, baseType: !66, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !117, file: !116, line: 63, baseType: !48, size: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "raw_check", scope: !103, file: !102, line: 212, baseType: !122, size: 512, offset: 320)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 512, elements: !126)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !69, line: 24, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !71, line: 38, baseType: !125)
!125 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!126 = !{!127}
!127 = !DISubrange(count: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !103, file: !102, line: 221, baseType: !48, size: 64, offset: 832)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !103, file: !102, line: 222, baseType: !48, size: 64, offset: 896)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !103, file: !102, line: 223, baseType: !48, size: 64, offset: 960)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !103, file: !102, line: 224, baseType: !106, size: 32, offset: 1024)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !103, file: !102, line: 225, baseType: !106, size: 32, offset: 1056)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !103, file: !102, line: 226, baseType: !66, size: 64, offset: 1088)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !103, file: !102, line: 227, baseType: !66, size: 64, offset: 1152)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !103, file: !102, line: 228, baseType: !66, size: 64, offset: 1216)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !103, file: !102, line: 229, baseType: !66, size: 64, offset: 1280)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !103, file: !102, line: 230, baseType: !66, size: 64, offset: 1344)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !103, file: !102, line: 231, baseType: !66, size: 64, offset: 1408)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !103, file: !102, line: 232, baseType: !140, size: 32, offset: 1472)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !26)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !103, file: !102, line: 233, baseType: !140, size: 32, offset: 1504)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !103, file: !102, line: 234, baseType: !140, size: 32, offset: 1536)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !103, file: !102, line: 235, baseType: !140, size: 32, offset: 1568)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !103, file: !102, line: 236, baseType: !145, size: 8, offset: 1600)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !4, line: 29, baseType: !125)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !103, file: !102, line: 237, baseType: !145, size: 8, offset: 1608)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !103, file: !102, line: 238, baseType: !145, size: 8, offset: 1616)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !103, file: !102, line: 239, baseType: !145, size: 8, offset: 1624)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !103, file: !102, line: 240, baseType: !145, size: 8, offset: 1632)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !103, file: !102, line: 241, baseType: !145, size: 8, offset: 1640)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !103, file: !102, line: 242, baseType: !145, size: 8, offset: 1648)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !103, file: !102, line: 243, baseType: !145, size: 8, offset: 1656)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !156)
!156 = !{!157, !161, !165}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !155, file: !4, line: 376, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!48, !48, !49, !49}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !155, file: !4, line: 390, baseType: !162, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !48, !48}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !155, file: !4, line: 401, baseType: !48, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !180, !182, !186, !188}
!171 = !DILocalVariable(name: "block", arg: 1, scope: !96, file: !60, line: 225, type: !100)
!172 = !DILocalVariable(name: "allocator", arg: 2, scope: !96, file: !60, line: 225, type: !153)
!173 = !DILocalVariable(name: "in", arg: 3, scope: !96, file: !60, line: 226, type: !166)
!174 = !DILocalVariable(name: "in_size", arg: 4, scope: !96, file: !60, line: 226, type: !49)
!175 = !DILocalVariable(name: "out", arg: 5, scope: !96, file: !60, line: 227, type: !168)
!176 = !DILocalVariable(name: "out_pos", arg: 6, scope: !96, file: !60, line: 227, type: !169)
!177 = !DILocalVariable(name: "out_size", arg: 7, scope: !96, file: !60, line: 227, type: !49)
!178 = !DILocalVariable(name: "check_size", scope: !96, file: !60, line: 252, type: !179)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!180 = !DILocalVariable(name: "ret", scope: !96, file: !60, line: 262, type: !181)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!182 = !DILocalVariable(name: "ret_", scope: !183, file: !60, line: 275, type: !181)
!183 = distinct !DILexicalBlock(scope: !184, file: !60, line: 275, column: 3)
!184 = distinct !DILexicalBlock(scope: !185, file: !60, line: 264, column: 22)
!185 = distinct !DILexicalBlock(scope: !96, file: !60, line: 264, column: 6)
!186 = !DILocalVariable(name: "i", scope: !187, file: !60, line: 284, type: !49)
!187 = distinct !DILexicalBlock(scope: !96, file: !60, line: 284, column: 2)
!188 = !DILocalVariable(name: "check", scope: !189, file: !60, line: 294, type: !191)
!189 = distinct !DILexicalBlock(scope: !190, file: !60, line: 290, column: 22)
!190 = distinct !DILexicalBlock(scope: !96, file: !60, line: 290, column: 6)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check_state", file: !192, line: 56, baseType: !193)
!192 = !DIFile(filename: "apps/557.xz_r/src/liblzma/check/check.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "938220df6e0ab33115ef85b0d8c70c5b")
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !192, line: 34, size: 832, elements: !194)
!194 = !{!195, !207}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !193, file: !192, line: 40, baseType: !196, size: 512)
!196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !193, file: !192, line: 36, size: 512, elements: !197)
!197 = !{!198, !199, !203}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "u8", scope: !196, file: !192, line: 37, baseType: !122, size: 512)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "u32", scope: !196, file: !192, line: 38, baseType: !200, size: 512)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 512, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 16)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !196, file: !192, line: 39, baseType: !204, size: 512)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 512, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 8)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !193, file: !192, line: 54, baseType: !208, size: 320, offset: 512)
!208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !193, file: !192, line: 43, size: 320, elements: !209)
!209 = !{!210, !211, !212}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !208, file: !192, line: 44, baseType: !106, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "crc64", scope: !208, file: !192, line: 45, baseType: !68, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "sha256", scope: !208, file: !192, line: 53, baseType: !213, size: 320)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !208, file: !192, line: 47, size: 320, elements: !214)
!214 = !{!215, !217}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !213, file: !192, line: 49, baseType: !216, size: 256)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 256, elements: !205)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !213, file: !192, line: 52, baseType: !68, size: 64, offset: 256)
!218 = !DILocation(line: 0, scope: !96)
!219 = !DILocation(line: 230, column: 12, scope: !220)
!220 = distinct !DILexicalBlock(scope: !96, file: !60, line: 230, column: 6)
!221 = !DILocation(line: 230, column: 20, scope: !220)
!222 = !DILocation(line: 230, column: 27, scope: !220)
!223 = !DILocation(line: 230, column: 35, scope: !220)
!224 = !DILocation(line: 231, column: 26, scope: !220)
!225 = !{!226, !226, i64 0}
!226 = !{!"long", !227, i64 0}
!227 = !{!"omnipotent char", !228, i64 0}
!228 = !{!"Simple C/C++ TBAA"}
!229 = !DILocation(line: 231, column: 35, scope: !220)
!230 = !DILocation(line: 230, column: 6, scope: !96)
!231 = !DILocation(line: 236, column: 13, scope: !232)
!232 = distinct !DILexicalBlock(scope: !96, file: !60, line: 236, column: 6)
!233 = !{!234, !235, i64 0}
!234 = !{!"", !235, i64 0, !235, i64 4, !227, i64 8, !226, i64 16, !226, i64 24, !236, i64 32, !227, i64 40, !236, i64 104, !236, i64 112, !236, i64 120, !235, i64 128, !235, i64 132, !226, i64 136, !226, i64 144, !226, i64 152, !226, i64 160, !226, i64 168, !226, i64 176, !227, i64 184, !227, i64 188, !227, i64 192, !227, i64 196, !227, i64 200, !227, i64 201, !227, i64 202, !227, i64 203, !227, i64 204, !227, i64 205, !227, i64 206, !227, i64 207}
!235 = !{!"int", !227, i64 0}
!236 = !{!"any pointer", !227, i64 0}
!237 = !DILocation(line: 236, column: 21, scope: !232)
!238 = !DILocation(line: 236, column: 6, scope: !96)
!239 = !DILocation(line: 239, column: 28, scope: !240)
!240 = distinct !DILexicalBlock(scope: !96, file: !60, line: 239, column: 6)
!241 = !{!234, !227, i64 8}
!242 = !DILocation(line: 239, column: 35, scope: !240)
!243 = !DILocation(line: 240, column: 4, scope: !240)
!244 = !DILocation(line: 240, column: 14, scope: !240)
!245 = !{!234, !236, i64 32}
!246 = !DILocation(line: 240, column: 22, scope: !240)
!247 = !DILocation(line: 239, column: 6, scope: !96)
!248 = !DILocation(line: 243, column: 7, scope: !249)
!249 = distinct !DILexicalBlock(scope: !96, file: !60, line: 243, column: 6)
!250 = !DILocation(line: 243, column: 6, scope: !96)
!251 = !DILocation(line: 249, column: 26, scope: !96)
!252 = !DILocation(line: 249, column: 24, scope: !96)
!253 = !DILocation(line: 249, column: 36, scope: !96)
!254 = !DILocation(line: 249, column: 11, scope: !96)
!255 = !DILocation(line: 252, column: 51, scope: !96)
!256 = !DILocation(line: 252, column: 28, scope: !96)
!257 = !DILocation(line: 256, column: 17, scope: !258)
!258 = distinct !DILexicalBlock(scope: !96, file: !60, line: 256, column: 6)
!259 = !DILocation(line: 256, column: 15, scope: !258)
!260 = !DILocation(line: 256, column: 26, scope: !258)
!261 = !DILocation(line: 256, column: 6, scope: !96)
!262 = !DILocation(line: 259, column: 11, scope: !96)
!263 = !DILocation(line: 262, column: 23, scope: !96)
!264 = !DILocation(line: 264, column: 6, scope: !96)
!265 = !DILocation(line: 275, column: 3, scope: !183)
!266 = !DILocation(line: 0, scope: !183)
!267 = !DILocation(line: 275, column: 3, scope: !268)
!268 = distinct !DILexicalBlock(scope: !183, file: !60, line: 275, column: 3)
!269 = !DILocation(line: 284, column: 34, scope: !187)
!270 = !{!234, !226, i64 16}
!271 = !DILocation(line: 0, scope: !187)
!272 = !DILocation(line: 284, column: 54, scope: !273)
!273 = distinct !DILexicalBlock(scope: !187, file: !60, line: 284, column: 2)
!274 = !DILocation(line: 284, column: 2, scope: !187)
!275 = !DILocation(line: 290, column: 17, scope: !190)
!276 = !DILocation(line: 290, column: 6, scope: !96)
!277 = !DILocation(line: 286, column: 17, scope: !278)
!278 = distinct !DILexicalBlock(scope: !273, file: !60, line: 284, column: 64)
!279 = !DILocation(line: 286, column: 3, scope: !278)
!280 = !DILocation(line: 286, column: 21, scope: !278)
!281 = !{!227, !227, i64 0}
!282 = !DILocation(line: 284, column: 59, scope: !273)
!283 = distinct !{!283, !274, !284, !285, !286}
!284 = !DILocation(line: 287, column: 2, scope: !187)
!285 = !{!"llvm.loop.mustprogress"}
!286 = !{!"llvm.loop.unroll.disable"}
!287 = !DILocation(line: 294, column: 3, scope: !189)
!288 = !DILocation(line: 294, column: 20, scope: !189)
!289 = !DILocation(line: 295, column: 34, scope: !189)
!290 = !DILocation(line: 295, column: 3, scope: !189)
!291 = !DILocation(line: 296, column: 36, scope: !189)
!292 = !DILocation(line: 296, column: 3, scope: !189)
!293 = !DILocation(line: 297, column: 36, scope: !189)
!294 = !DILocation(line: 297, column: 3, scope: !189)
!295 = !DILocation(line: 299, column: 17, scope: !189)
!296 = !DILocation(line: 299, column: 3, scope: !189)
!297 = !DILocation(line: 300, column: 16, scope: !189)
!298 = !DILocation(line: 300, column: 14, scope: !189)
!299 = !DILocation(line: 300, column: 3, scope: !189)
!300 = !DILocation(line: 301, column: 12, scope: !189)
!301 = !DILocation(line: 302, column: 2, scope: !190)
!302 = !DILocation(line: 302, column: 2, scope: !189)
!303 = !DILocation(line: 305, column: 1, scope: !96)
!304 = !DISubprogram(name: "lzma_check_is_supported", scope: !20, file: !20, line: 81, type: !305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !307)
!305 = !DISubroutineType(types: !306)
!306 = !{!145, !110}
!307 = !{}
!308 = !DISubprogram(name: "lzma_check_size", scope: !20, file: !20, line: 95, type: !309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !307)
!309 = !DISubroutineType(types: !310)
!310 = !{!106, !110}
!311 = distinct !DISubprogram(name: "block_encode_normal", scope: !60, file: !60, line: 163, type: !97, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !312)
!312 = !{!313, !314, !315, !316, !317, !318, !319, !320, !322, !323, !366, !367}
!313 = !DILocalVariable(name: "block", arg: 1, scope: !311, file: !60, line: 163, type: !100)
!314 = !DILocalVariable(name: "allocator", arg: 2, scope: !311, file: !60, line: 163, type: !153)
!315 = !DILocalVariable(name: "in", arg: 3, scope: !311, file: !60, line: 164, type: !166)
!316 = !DILocalVariable(name: "in_size", arg: 4, scope: !311, file: !60, line: 164, type: !49)
!317 = !DILocalVariable(name: "out", arg: 5, scope: !311, file: !60, line: 165, type: !168)
!318 = !DILocalVariable(name: "out_pos", arg: 6, scope: !311, file: !60, line: 165, type: !169)
!319 = !DILocalVariable(name: "out_size", arg: 7, scope: !311, file: !60, line: 165, type: !49)
!320 = !DILocalVariable(name: "ret_", scope: !321, file: !60, line: 173, type: !181)
!321 = distinct !DILexicalBlock(scope: !311, file: !60, line: 173, column: 2)
!322 = !DILocalVariable(name: "out_start", scope: !311, file: !60, line: 179, type: !179)
!323 = !DILocalVariable(name: "raw_encoder", scope: !311, file: !60, line: 189, type: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !325, line: 80, baseType: !326)
!325 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !325, line: 124, size: 512, elements: !327)
!327 = !{!328, !331, !332, !335, !344, !349, !355, !360}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !326, file: !325, line: 126, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !325, line: 78, baseType: null)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !326, file: !325, line: 130, baseType: !66, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !326, file: !325, line: 136, baseType: !333, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !334, line: 90, baseType: !51)
!334 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!335 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !326, file: !325, line: 139, baseType: !336, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !325, line: 94, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!99, !329, !153, !340, !341, !49, !342, !341, !49, !343}
!340 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !166)
!341 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !169)
!342 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !168)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !29)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !326, file: !325, line: 144, baseType: !345, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !325, line: 102, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !329, !153}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !326, file: !325, line: 148, baseType: !350, size: 64, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!110, !353}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !326, file: !325, line: 152, baseType: !356, size: 64, offset: 384)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!99, !329, !359, !359, !68}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !326, file: !325, line: 157, baseType: !361, size: 64, offset: 448)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!99, !329, !153, !364, !364}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!366 = !DILocalVariable(name: "ret", scope: !311, file: !60, line: 190, type: !99)
!367 = !DILocalVariable(name: "in_pos", scope: !368, file: !60, line: 194, type: !49)
!368 = distinct !DILexicalBlock(scope: !369, file: !60, line: 193, column: 22)
!369 = distinct !DILexicalBlock(scope: !311, file: !60, line: 193, column: 6)
!370 = !DILocation(line: 0, scope: !311)
!371 = !DILocation(line: 0, scope: !74, inlinedAt: !372)
!372 = distinct !DILocation(line: 168, column: 27, scope: !311)
!373 = !DILocation(line: 35, column: 24, scope: !83, inlinedAt: !372)
!374 = !DILocation(line: 35, column: 6, scope: !74, inlinedAt: !372)
!375 = !DILocation(line: 42, column: 66, scope: !74, inlinedAt: !372)
!376 = !DILocation(line: 43, column: 5, scope: !74, inlinedAt: !372)
!377 = !DILocation(line: 44, column: 4, scope: !74, inlinedAt: !372)
!378 = !DILocation(line: 47, column: 26, scope: !89, inlinedAt: !372)
!379 = !DILocation(line: 47, column: 37, scope: !89, inlinedAt: !372)
!380 = !DILocation(line: 47, column: 6, scope: !74, inlinedAt: !372)
!381 = !DILocation(line: 168, column: 9, scope: !311)
!382 = !DILocation(line: 168, column: 25, scope: !311)
!383 = !DILocation(line: 169, column: 6, scope: !311)
!384 = !DILocation(line: 44, column: 32, scope: !74, inlinedAt: !372)
!385 = !DILocation(line: 50, column: 27, scope: !74, inlinedAt: !372)
!386 = !DILocation(line: 172, column: 9, scope: !311)
!387 = !DILocation(line: 172, column: 27, scope: !311)
!388 = !{!234, !226, i64 24}
!389 = !DILocation(line: 173, column: 2, scope: !321)
!390 = !DILocation(line: 0, scope: !321)
!391 = !DILocation(line: 173, column: 2, scope: !392)
!392 = distinct !DILexicalBlock(scope: !321, file: !60, line: 173, column: 2)
!393 = !DILocation(line: 176, column: 17, scope: !394)
!394 = distinct !DILexicalBlock(scope: !311, file: !60, line: 176, column: 6)
!395 = !DILocation(line: 176, column: 15, scope: !394)
!396 = !DILocation(line: 176, column: 36, scope: !394)
!397 = !{!234, !235, i64 4}
!398 = !DILocation(line: 176, column: 29, scope: !394)
!399 = !DILocation(line: 176, column: 26, scope: !394)
!400 = !DILocation(line: 176, column: 6, scope: !311)
!401 = !DILocation(line: 180, column: 11, scope: !311)
!402 = !DILocation(line: 184, column: 35, scope: !403)
!403 = distinct !DILexicalBlock(scope: !311, file: !60, line: 184, column: 6)
!404 = !DILocation(line: 189, column: 2, scope: !311)
!405 = !DILocation(line: 189, column: 18, scope: !311)
!406 = !DILocation(line: 191, column: 36, scope: !311)
!407 = !DILocation(line: 190, column: 17, scope: !311)
!408 = !DILocation(line: 193, column: 10, scope: !369)
!409 = !DILocation(line: 193, column: 6, scope: !311)
!410 = !DILocation(line: 184, column: 15, scope: !403)
!411 = !DILocation(line: 184, column: 26, scope: !403)
!412 = !DILocation(line: 184, column: 6, scope: !311)
!413 = !DILocation(line: 194, column: 3, scope: !368)
!414 = !DILocation(line: 0, scope: !368)
!415 = !DILocation(line: 194, column: 10, scope: !368)
!416 = !DILocation(line: 195, column: 21, scope: !368)
!417 = !{!418, !236, i64 24}
!418 = !{!"lzma_next_coder_s", !236, i64 0, !226, i64 8, !226, i64 16, !236, i64 24, !236, i64 32, !236, i64 40, !236, i64 48, !236, i64 56}
!419 = !DILocation(line: 195, column: 38, scope: !368)
!420 = !{!418, !236, i64 0}
!421 = !DILocation(line: 195, column: 9, scope: !368)
!422 = !DILocation(line: 198, column: 2, scope: !369)
!423 = !DILocation(line: 198, column: 2, scope: !368)
!424 = !DILocation(line: 201, column: 2, scope: !311)
!425 = !DILocation(line: 203, column: 6, scope: !311)
!426 = !DILocation(line: 206, column: 7, scope: !427)
!427 = distinct !DILexicalBlock(scope: !428, file: !60, line: 203, column: 30)
!428 = distinct !DILexicalBlock(scope: !311, file: !60, line: 203, column: 6)
!429 = !DILocation(line: 206, column: 38, scope: !427)
!430 = !DILocation(line: 206, column: 31, scope: !427)
!431 = !DILocation(line: 206, column: 16, scope: !427)
!432 = !DILocation(line: 206, column: 5, scope: !427)
!433 = !DILocation(line: 207, column: 45, scope: !427)
!434 = !DILocation(line: 207, column: 9, scope: !427)
!435 = !DILocation(line: 208, column: 11, scope: !436)
!436 = distinct !DILexicalBlock(scope: !427, file: !60, line: 208, column: 7)
!437 = !DILocation(line: 0, scope: !427)
!438 = !DILocation(line: 218, column: 12, scope: !439)
!439 = distinct !DILexicalBlock(scope: !311, file: !60, line: 217, column: 6)
!440 = !DILocation(line: 218, column: 3, scope: !439)
!441 = !DILocation(line: 221, column: 1, scope: !311)
!442 = distinct !DISubprogram(name: "block_encode_uncompressed", scope: !60, file: !60, line: 82, type: !443, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !445)
!443 = !DISubroutineType(types: !444)
!444 = !{!99, !100, !166, !49, !168, !169, !49}
!445 = !{!446, !447, !448, !449, !450, !451, !452, !482, !486, !487, !488, !489}
!446 = !DILocalVariable(name: "block", arg: 1, scope: !442, file: !60, line: 82, type: !100)
!447 = !DILocalVariable(name: "in", arg: 2, scope: !442, file: !60, line: 82, type: !166)
!448 = !DILocalVariable(name: "in_size", arg: 3, scope: !442, file: !60, line: 82, type: !49)
!449 = !DILocalVariable(name: "out", arg: 4, scope: !442, file: !60, line: 83, type: !168)
!450 = !DILocalVariable(name: "out_pos", arg: 5, scope: !442, file: !60, line: 83, type: !169)
!451 = !DILocalVariable(name: "out_size", arg: 6, scope: !442, file: !60, line: 83, type: !49)
!452 = !DILocalVariable(name: "lzma2", scope: !442, file: !60, line: 91, type: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_lzma", file: !36, line: 399, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 185, size: 896, elements: !455)
!455 = !{!456, !457, !458, !459, !460, !461, !462, !464, !465, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !454, file: !36, line: 217, baseType: !106, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !454, file: !36, line: 240, baseType: !166, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !454, file: !36, line: 254, baseType: !106, size: 32, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "lc", scope: !454, file: !36, line: 281, baseType: !106, size: 32, offset: 160)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !454, file: !36, line: 293, baseType: !106, size: 32, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !454, file: !36, line: 316, baseType: !106, size: 32, offset: 224)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !454, file: !36, line: 322, baseType: !463, size: 32, offset: 256)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mode", file: !36, line: 155, baseType: !35)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !454, file: !36, line: 342, baseType: !106, size: 32, offset: 288)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "mf", scope: !454, file: !36, line: 345, baseType: !466, size: 32, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match_finder", file: !36, line: 111, baseType: !40)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !454, file: !36, line: 375, baseType: !106, size: 32, offset: 352)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !454, file: !36, line: 384, baseType: !106, size: 32, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !454, file: !36, line: 385, baseType: !106, size: 32, offset: 416)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !454, file: !36, line: 386, baseType: !106, size: 32, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !454, file: !36, line: 387, baseType: !106, size: 32, offset: 480)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !454, file: !36, line: 388, baseType: !106, size: 32, offset: 512)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !454, file: !36, line: 389, baseType: !106, size: 32, offset: 544)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !454, file: !36, line: 390, baseType: !106, size: 32, offset: 576)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !454, file: !36, line: 391, baseType: !106, size: 32, offset: 608)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !454, file: !36, line: 392, baseType: !140, size: 32, offset: 640)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !454, file: !36, line: 393, baseType: !140, size: 32, offset: 672)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !454, file: !36, line: 394, baseType: !140, size: 32, offset: 704)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !454, file: !36, line: 395, baseType: !140, size: 32, offset: 736)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !454, file: !36, line: 396, baseType: !48, size: 64, offset: 768)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !454, file: !36, line: 397, baseType: !48, size: 64, offset: 832)
!482 = !DILocalVariable(name: "filters", scope: !442, file: !60, line: 95, type: !483)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 256, elements: !484)
!484 = !{!485}
!485 = !DISubrange(count: 2)
!486 = !DILocalVariable(name: "filters_orig", scope: !442, file: !60, line: 102, type: !114)
!487 = !DILocalVariable(name: "in_pos", scope: !442, file: !60, line: 131, type: !49)
!488 = !DILocalVariable(name: "control", scope: !442, file: !60, line: 132, type: !123)
!489 = !DILocalVariable(name: "copy_size", scope: !490, file: !60, line: 141, type: !179)
!490 = distinct !DILexicalBlock(scope: !442, file: !60, line: 134, column: 27)
!491 = !DILocation(line: 0, scope: !442)
!492 = !DILocation(line: 91, column: 2, scope: !442)
!493 = !DILocation(line: 91, column: 20, scope: !442)
!494 = !DILocation(line: 95, column: 2, scope: !442)
!495 = !DILocation(line: 95, column: 14, scope: !442)
!496 = !DILocation(line: 96, column: 16, scope: !442)
!497 = !{!498, !226, i64 0}
!498 = !{!"", !226, i64 0, !236, i64 8}
!499 = !DILocation(line: 97, column: 13, scope: !442)
!500 = !DILocation(line: 97, column: 21, scope: !442)
!501 = !{!498, !236, i64 8}
!502 = !DILocation(line: 98, column: 2, scope: !442)
!503 = !DILocation(line: 98, column: 16, scope: !442)
!504 = !DILocation(line: 102, column: 37, scope: !442)
!505 = !DILocation(line: 103, column: 17, scope: !442)
!506 = !DILocation(line: 105, column: 6, scope: !507)
!507 = distinct !DILexicalBlock(scope: !442, file: !60, line: 105, column: 6)
!508 = !DILocation(line: 105, column: 36, scope: !507)
!509 = !DILocation(line: 105, column: 6, scope: !442)
!510 = !DILocation(line: 106, column: 18, scope: !511)
!511 = distinct !DILexicalBlock(scope: !507, file: !60, line: 105, column: 48)
!512 = !DILocation(line: 107, column: 3, scope: !511)
!513 = !DILocation(line: 116, column: 17, scope: !514)
!514 = distinct !DILexicalBlock(scope: !442, file: !60, line: 116, column: 6)
!515 = !DILocation(line: 116, column: 15, scope: !514)
!516 = !DILocation(line: 117, column: 13, scope: !514)
!517 = !DILocation(line: 117, column: 6, scope: !514)
!518 = !DILocation(line: 117, column: 34, scope: !514)
!519 = !DILocation(line: 117, column: 25, scope: !514)
!520 = !DILocation(line: 117, column: 4, scope: !514)
!521 = !DILocation(line: 116, column: 6, scope: !442)
!522 = !DILocation(line: 118, column: 18, scope: !523)
!523 = distinct !DILexicalBlock(scope: !514, file: !60, line: 117, column: 51)
!524 = !DILocation(line: 119, column: 3, scope: !523)
!525 = !DILocation(line: 122, column: 42, scope: !526)
!526 = distinct !DILexicalBlock(scope: !442, file: !60, line: 122, column: 6)
!527 = !DILocation(line: 122, column: 6, scope: !526)
!528 = !DILocation(line: 122, column: 54, scope: !526)
!529 = !DILocation(line: 122, column: 6, scope: !442)
!530 = !DILocation(line: 128, column: 21, scope: !442)
!531 = !DILocation(line: 128, column: 14, scope: !442)
!532 = !DILocation(line: 128, column: 11, scope: !442)
!533 = !DILocation(line: 134, column: 16, scope: !442)
!534 = !DILocation(line: 134, column: 2, scope: !442)
!535 = !DILocation(line: 137, column: 17, scope: !490)
!536 = !DILocation(line: 137, column: 3, scope: !490)
!537 = !DILocation(line: 137, column: 21, scope: !490)
!538 = !DILocation(line: 142, column: 7, scope: !490)
!539 = !DILocation(line: 0, scope: !490)
!540 = !DILocation(line: 143, column: 34, scope: !490)
!541 = !DILocation(line: 143, column: 39, scope: !490)
!542 = !DILocation(line: 143, column: 23, scope: !490)
!543 = !DILocation(line: 143, column: 17, scope: !490)
!544 = !DILocation(line: 143, column: 3, scope: !490)
!545 = !DILocation(line: 143, column: 21, scope: !490)
!546 = !DILocation(line: 144, column: 23, scope: !490)
!547 = !DILocation(line: 144, column: 17, scope: !490)
!548 = !DILocation(line: 144, column: 3, scope: !490)
!549 = !DILocation(line: 144, column: 21, scope: !490)
!550 = !DILocation(line: 148, column: 16, scope: !490)
!551 = !DILocation(line: 148, column: 14, scope: !490)
!552 = !DILocation(line: 148, column: 29, scope: !490)
!553 = !DILocation(line: 148, column: 3, scope: !490)
!554 = !DILocation(line: 150, column: 10, scope: !490)
!555 = !DILocation(line: 151, column: 12, scope: !490)
!556 = distinct !{!556, !534, !557, !285, !286}
!557 = !DILocation(line: 152, column: 2, scope: !442)
!558 = !DILocation(line: 155, column: 16, scope: !442)
!559 = !DILocation(line: 155, column: 2, scope: !442)
!560 = !DILocation(line: 155, column: 20, scope: !442)
!561 = !DILocation(line: 159, column: 1, scope: !442)
!562 = !DISubprogram(name: "lzma_check_init", scope: !192, file: !192, line: 75, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !307)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !565, !110}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!566 = !DISubprogram(name: "lzma_check_update", scope: !192, file: !192, line: 78, type: !567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !307)
!567 = !DISubroutineType(types: !568)
!568 = !{null, !565, !110, !166, !49}
!569 = !DISubprogram(name: "lzma_check_finish", scope: !192, file: !192, line: 82, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !307)
!570 = !DISubprogram(name: "lzma_block_header_size", scope: !102, file: !102, line: 283, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !307)
!571 = !DISubroutineType(types: !572)
!572 = !{!99, !100}
!573 = !DISubprogram(name: "lzma_raw_encoder_init", scope: !574, file: !574, line: 23, type: !575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !307)
!574 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/filter_encoder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "ddc4c6a58369644501ee0eefd7b6bf8f")
!575 = !DISubroutineType(types: !576)
!576 = !{!99, !577, !153, !364}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!578 = !DISubprogram(name: "lzma_next_end", scope: !325, file: !325, line: 237, type: !579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !307)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !577, !153}
!581 = !DISubprogram(name: "lzma_block_header_encode", scope: !102, file: !102, line: 305, type: !582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !307)
!582 = !DISubroutineType(types: !583)
!583 = !{!99, !584, !168}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
