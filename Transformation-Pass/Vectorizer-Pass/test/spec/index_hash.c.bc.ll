; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/index_hash.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/index_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_index_hash_s = type { i32, %struct.lzma_index_hash_info, %struct.lzma_index_hash_info, i64, i64, i64, i64, i32 }
%struct.lzma_index_hash_info = type { i64, i64, i64, i64, %struct.lzma_check_state }
%struct.lzma_check_state = type { %union.anon, %union.anon.0 }
%union.anon = type { [8 x i64] }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { [8 x i32], i64 }

; Function Attrs: nounwind uwtable
define dso_local ptr @lzma_index_hash_init(ptr noundef %index_hash, ptr noundef %allocator) local_unnamed_addr #0 !dbg !109 {
entry:
  call void @llvm.dbg.value(metadata ptr %index_hash, metadata !129, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !130, metadata !DIExpression()), !dbg !131
  %cmp = icmp eq ptr %index_hash, null, !dbg !132
  br i1 %cmp, label %if.then, label %if.end3, !dbg !134

if.then:                                          ; preds = %entry
  %call = tail call ptr @lzma_alloc(i64 noundef 320, ptr noundef %allocator) #6, !dbg !135
  call void @llvm.dbg.value(metadata ptr %call, metadata !129, metadata !DIExpression()), !dbg !131
  %cmp1 = icmp eq ptr %call, null, !dbg !137
  br i1 %cmp1, label %return, label %if.end3, !dbg !139

if.end3:                                          ; preds = %if.then, %entry
  %index_hash.addr.0 = phi ptr [ %call, %if.then ], [ %index_hash, %entry ]
  call void @llvm.dbg.value(metadata ptr %index_hash.addr.0, metadata !129, metadata !DIExpression()), !dbg !131
  store i32 0, ptr %index_hash.addr.0, align 8, !dbg !140, !tbaa !141
  %blocks = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash.addr.0, i64 0, i32 1, !dbg !149
  %records = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash.addr.0, i64 0, i32 2, !dbg !150
  %unpadded_size = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash.addr.0, i64 0, i32 4, !dbg !151
  %check = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash.addr.0, i64 0, i32 1, i32 4, !dbg !152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %blocks, i8 0, i64 32, i1 false), !dbg !153
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %records, i8 0, i64 32, i1 false), !dbg !154
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %unpadded_size, i8 0, i64 28, i1 false), !dbg !155
  tail call void @lzma_check_init(ptr noundef nonnull %check, i32 noundef 10) #6, !dbg !156
  %check17 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash.addr.0, i64 0, i32 2, i32 4, !dbg !157
  tail call void @lzma_check_init(ptr noundef nonnull %check17, i32 noundef 10) #6, !dbg !158
  br label %return, !dbg !159

return:                                           ; preds = %if.then, %if.end3
  %retval.0 = phi ptr [ %index_hash.addr.0, %if.end3 ], [ null, %if.then ], !dbg !131
  ret ptr %retval.0, !dbg !160
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !161 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !166 void @lzma_check_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @lzma_index_hash_end(ptr noundef %index_hash, ptr noundef %allocator) local_unnamed_addr #0 !dbg !171 {
entry:
  call void @llvm.dbg.value(metadata ptr %index_hash, metadata !175, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !176, metadata !DIExpression()), !dbg !177
  tail call void @lzma_free(ptr noundef %index_hash, ptr noundef %allocator) #6, !dbg !178
  ret void, !dbg !179
}

declare !dbg !180 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_index_hash_size(ptr nocapture noundef readonly %index_hash) local_unnamed_addr #0 !dbg !183 {
entry:
  call void @llvm.dbg.value(metadata ptr %index_hash, metadata !189, metadata !DIExpression()), !dbg !190
  %count = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash, i64 0, i32 1, i32 2, !dbg !191
  %0 = load i64, ptr %count, align 8, !dbg !191, !tbaa !192
  %index_list_size = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash, i64 0, i32 1, i32 3, !dbg !193
  %1 = load i64, ptr %index_list_size, align 8, !dbg !193, !tbaa !194
  call void @llvm.dbg.value(metadata i64 %0, metadata !195, metadata !DIExpression()) #6, !dbg !202
  call void @llvm.dbg.value(metadata i64 %1, metadata !201, metadata !DIExpression()) #6, !dbg !202
  call void @llvm.dbg.value(metadata i64 %0, metadata !204, metadata !DIExpression()) #6, !dbg !208
  call void @llvm.dbg.value(metadata i64 %1, metadata !207, metadata !DIExpression()) #6, !dbg !208
  %call.i.i = tail call i32 @lzma_vli_size(i64 noundef %0) #6, !dbg !210
  %add.i.i = add i32 %call.i.i, 1, !dbg !211
  %conv.i.i = zext i32 %add.i.i to i64, !dbg !212
  call void @llvm.dbg.value(metadata i64 undef, metadata !213, metadata !DIExpression()) #6, !dbg !218
  %add2.i.i = add i64 %1, 7, !dbg !220
  %add.i2.i = add i64 %add2.i.i, %conv.i.i, !dbg !221
  %and.i.i = and i64 %add.i2.i, -4, !dbg !222
  ret i64 %and.i.i, !dbg !223
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_index_hash_append(ptr noundef %index_hash, i64 noundef %unpadded_size, i64 noundef %uncompressed_size) local_unnamed_addr #0 !dbg !224 {
entry:
  %sizes.i = alloca [2 x i64], align 16
  call void @llvm.dbg.value(metadata ptr %index_hash, metadata !229, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i64 %unpadded_size, metadata !230, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i64 %uncompressed_size, metadata !231, metadata !DIExpression()), !dbg !235
  %0 = load i32, ptr %index_hash, align 8, !dbg !236, !tbaa !141
  %cmp = icmp ne i32 %0, 0, !dbg !238
  %1 = add i64 %unpadded_size, -9223372036854775805, !dbg !239
  %2 = icmp ult i64 %1, -9223372036854775800, !dbg !239
  %3 = or i1 %2, %cmp, !dbg !239
  %cmp5 = icmp slt i64 %uncompressed_size, 0
  %or.cond32 = or i1 %cmp5, %3, !dbg !239
  br i1 %or.cond32, label %return, label %do.body, !dbg !239

do.body:                                          ; preds = %entry
  %blocks = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash, i64 0, i32 1, !dbg !240
  call void @llvm.dbg.value(metadata ptr %blocks, metadata !241, metadata !DIExpression()) #6, !dbg !254
  call void @llvm.dbg.value(metadata i64 %unpadded_size, metadata !247, metadata !DIExpression()) #6, !dbg !254
  call void @llvm.dbg.value(metadata i64 %uncompressed_size, metadata !248, metadata !DIExpression()) #6, !dbg !254
  call void @llvm.dbg.value(metadata i64 %unpadded_size, metadata !213, metadata !DIExpression()) #6, !dbg !256
  %add.i.i = add nuw nsw i64 %unpadded_size, 3, !dbg !258
  %and.i.i = and i64 %add.i.i, -4, !dbg !259
  %4 = load i64, ptr %blocks, align 8, !dbg !260, !tbaa !261
  %add.i = add i64 %4, %and.i.i, !dbg !260
  store i64 %add.i, ptr %blocks, align 8, !dbg !260, !tbaa !261
  %uncompressed_size1.i = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash, i64 0, i32 1, i32 1, !dbg !262
  %5 = load i64, ptr %uncompressed_size1.i, align 8, !dbg !263, !tbaa !264
  %add2.i = add i64 %5, %uncompressed_size, !dbg !263
  store i64 %add2.i, ptr %uncompressed_size1.i, align 8, !dbg !263, !tbaa !264
  %call3.i = tail call i32 @lzma_vli_size(i64 noundef %unpadded_size) #6, !dbg !265
  %call4.i = tail call i32 @lzma_vli_size(i64 noundef %uncompressed_size) #6, !dbg !266
  %add5.i = add i32 %call4.i, %call3.i, !dbg !267
  %conv.i = zext i32 %add5.i to i64, !dbg !265
  %index_list_size.i = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash, i64 0, i32 1, i32 3, !dbg !268
  %6 = load i64, ptr %index_list_size.i, align 8, !dbg !269, !tbaa !270
  %add6.i = add i64 %6, %conv.i, !dbg !269
  store i64 %add6.i, ptr %index_list_size.i, align 8, !dbg !269, !tbaa !270
  %count.i = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash, i64 0, i32 1, i32 2, !dbg !271
  %7 = load i64, ptr %count.i, align 8, !dbg !272, !tbaa !273
  %inc.i = add i64 %7, 1, !dbg !272
  store i64 %inc.i, ptr %count.i, align 8, !dbg !272, !tbaa !273
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sizes.i) #6, !dbg !274
  call void @llvm.dbg.declare(metadata ptr %sizes.i, metadata !249, metadata !DIExpression()) #6, !dbg !275
  store i64 %unpadded_size, ptr %sizes.i, align 16, !dbg !276, !tbaa !277
  %arrayinit.element.i = getelementptr inbounds i64, ptr %sizes.i, i64 1, !dbg !276
  store i64 %uncompressed_size, ptr %arrayinit.element.i, align 8, !dbg !276, !tbaa !277
  %check.i = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash, i64 0, i32 1, i32 4, !dbg !278
  call void @lzma_check_update(ptr noundef nonnull %check.i, i32 noundef 10, ptr noundef nonnull %sizes.i, i64 noundef 16) #6, !dbg !279
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sizes.i) #6, !dbg !280
  call void @llvm.dbg.value(metadata i32 0, metadata !232, metadata !DIExpression()), !dbg !281
  %8 = load i64, ptr %blocks, align 8, !dbg !282, !tbaa !284
  %cmp10 = icmp slt i64 %8, 0, !dbg !285
  br i1 %cmp10, label %return, label %lor.lhs.false11, !dbg !286

lor.lhs.false11:                                  ; preds = %do.body
  %9 = load i64, ptr %uncompressed_size1.i, align 8, !dbg !287, !tbaa !288
  %cmp14 = icmp slt i64 %9, 0, !dbg !289
  br i1 %cmp14, label %return, label %lor.lhs.false15, !dbg !290

lor.lhs.false15:                                  ; preds = %lor.lhs.false11
  %10 = load i64, ptr %count.i, align 8, !dbg !291, !tbaa !192
  %11 = load i64, ptr %index_list_size.i, align 8, !dbg !292, !tbaa !194
  call void @llvm.dbg.value(metadata i64 %10, metadata !195, metadata !DIExpression()) #6, !dbg !293
  call void @llvm.dbg.value(metadata i64 %11, metadata !201, metadata !DIExpression()) #6, !dbg !293
  call void @llvm.dbg.value(metadata i64 %10, metadata !204, metadata !DIExpression()) #6, !dbg !295
  call void @llvm.dbg.value(metadata i64 %11, metadata !207, metadata !DIExpression()) #6, !dbg !295
  %call.i.i = call i32 @lzma_vli_size(i64 noundef %10) #6, !dbg !297
  %add.i.i45 = add i32 %call.i.i, 1, !dbg !298
  %conv.i.i = zext i32 %add.i.i45 to i64, !dbg !299
  call void @llvm.dbg.value(metadata i64 undef, metadata !213, metadata !DIExpression()) #6, !dbg !300
  %add2.i.i = add i64 %11, 7, !dbg !302
  %add.i2.i = add i64 %add2.i.i, %conv.i.i, !dbg !303
  %and.i.i46 = and i64 %add.i2.i, -4, !dbg !304
  %cmp19 = icmp ugt i64 %and.i.i46, 17179869184, !dbg !305
  br i1 %cmp19, label %return, label %lor.lhs.false20, !dbg !306

lor.lhs.false20:                                  ; preds = %lor.lhs.false15
  %12 = load i64, ptr %blocks, align 8, !dbg !307, !tbaa !284
  %13 = load i64, ptr %count.i, align 8, !dbg !308, !tbaa !192
  %14 = load i64, ptr %index_list_size.i, align 8, !dbg !309, !tbaa !194
  call void @llvm.dbg.value(metadata i64 %12, metadata !310, metadata !DIExpression()) #6, !dbg !317
  call void @llvm.dbg.value(metadata i64 %13, metadata !315, metadata !DIExpression()) #6, !dbg !317
  call void @llvm.dbg.value(metadata i64 %14, metadata !316, metadata !DIExpression()) #6, !dbg !317
  call void @llvm.dbg.value(metadata i64 %13, metadata !195, metadata !DIExpression()) #6, !dbg !319
  call void @llvm.dbg.value(metadata i64 %14, metadata !201, metadata !DIExpression()) #6, !dbg !319
  call void @llvm.dbg.value(metadata i64 %13, metadata !204, metadata !DIExpression()) #6, !dbg !321
  call void @llvm.dbg.value(metadata i64 %14, metadata !207, metadata !DIExpression()) #6, !dbg !321
  %call.i.i.i = call i32 @lzma_vli_size(i64 noundef %13) #6, !dbg !323
  %add.i.i.i = add i32 %call.i.i.i, 1, !dbg !324
  %conv.i.i.i = zext i32 %add.i.i.i to i64, !dbg !325
  call void @llvm.dbg.value(metadata i64 undef, metadata !213, metadata !DIExpression()) #6, !dbg !326
  %add2.i.i.i = add i64 %14, 7, !dbg !328
  %add.i2.i.i = add i64 %add2.i.i.i, %conv.i.i.i, !dbg !329
  %and.i.i.i = and i64 %add.i2.i.i, -4, !dbg !330
  %add1.i = add i64 %12, 24, !dbg !331
  %add2.i47 = add i64 %add1.i, %and.i.i.i, !dbg !332
  %cmp28 = icmp slt i64 %add2.i47, 0, !dbg !333
  %spec.select = select i1 %cmp28, i32 9, i32 0, !dbg !334
  br label %return, !dbg !334

return:                                           ; preds = %lor.lhs.false20, %do.body, %lor.lhs.false11, %lor.lhs.false15, %entry
  %retval.1 = phi i32 [ 11, %entry ], [ 9, %lor.lhs.false15 ], [ 9, %lor.lhs.false11 ], [ 9, %do.body ], [ %spec.select, %lor.lhs.false20 ], !dbg !235
  ret i32 %retval.1, !dbg !335
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_index_hash_decode(ptr noundef %index_hash, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size) local_unnamed_addr #0 !dbg !336 {
entry:
  %sizes.i = alloca [2 x i64], align 16
  call void @llvm.dbg.value(metadata ptr %index_hash, metadata !341, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata ptr %in, metadata !342, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !343, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !344, metadata !DIExpression()), !dbg !357
  %0 = load i64, ptr %in_pos, align 8, !dbg !358, !tbaa !277
  %cmp.not = icmp ult i64 %0, %in_size, !dbg !360
  br i1 %cmp.not, label %while.body.lr.ph, label %return, !dbg !361

while.body.lr.ph:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !347, metadata !DIExpression()), !dbg !357
  %uncompressed_size = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash, i64 0, i32 5
  %unpadded_size = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash, i64 0, i32 4
  %pos27 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash, i64 0, i32 6
  %records = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash, i64 0, i32 2
  %uncompressed_size1.i = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash, i64 0, i32 2, i32 1
  %index_list_size.i = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash, i64 0, i32 2, i32 3
  %count.i = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash, i64 0, i32 2, i32 2
  %arrayinit.element.i = getelementptr inbounds i64, ptr %sizes.i, i64 1
  %check.i = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash, i64 0, i32 2, i32 4
  %blocks54 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash, i64 0, i32 1
  %uncompressed_size61 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash, i64 0, i32 1, i32 1
  %index_list_size = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash, i64 0, i32 1, i32 3
  %remaining74 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash, i64 0, i32 3
  %count = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash, i64 0, i32 1, i32 2
  %.pre = load i32, ptr %index_hash, align 8, !dbg !362, !tbaa !141
  br label %while.body, !dbg !363

while.body:                                       ; preds = %while.body.lr.ph, %sw.epilog
  %1 = phi i32 [ %.pre, %while.body.lr.ph ], [ %42, %sw.epilog ], !dbg !362
  %2 = phi i64 [ %0, %while.body.lr.ph ], [ %43, %sw.epilog ]
  switch i32 %1, label %return [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 6, label %sw.bb147
    i32 5, label %while.body.sw.bb90_crit_edge
    i32 4, label %sw.bb82
    i32 2, label %cond.end
    i32 3, label %cond.false
  ], !dbg !364

while.body.sw.bb90_crit_edge:                     ; preds = %while.body
  %.pre275 = load i64, ptr %pos27, align 8, !dbg !365, !tbaa !367
  br label %sw.bb90, !dbg !364

sw.bb:                                            ; preds = %while.body
  %inc = add nuw i64 %2, 1, !dbg !368
  store i64 %inc, ptr %in_pos, align 8, !dbg !368, !tbaa !277
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %2, !dbg !370
  %3 = load i8, ptr %arrayidx, align 1, !dbg !370, !tbaa !371
  %cmp2.not = icmp eq i8 %3, 0, !dbg !372
  br i1 %cmp2.not, label %sw.epilog.sink.split, label %return, !dbg !373

sw.bb7:                                           ; preds = %while.body
  %call = call i32 @lzma_vli_decode(ptr noundef nonnull %remaining74, ptr noundef nonnull %pos27, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size) #6, !dbg !374
  call void @llvm.dbg.value(metadata i32 %call, metadata !347, metadata !DIExpression()), !dbg !357
  %cmp8.not = icmp eq i32 %call, 1, !dbg !376
  br i1 %cmp8.not, label %if.end11, label %out, !dbg !378

if.end11:                                         ; preds = %sw.bb7
  %4 = load i64, ptr %remaining74, align 8, !dbg !379, !tbaa !381
  %5 = load i64, ptr %count, align 8, !dbg !382, !tbaa !192
  %cmp13.not = icmp eq i64 %4, %5, !dbg !383
  br i1 %cmp13.not, label %if.end16, label %return, !dbg !384

if.end16:                                         ; preds = %if.end11
  call void @llvm.dbg.value(metadata i32 0, metadata !347, metadata !DIExpression()), !dbg !357
  store i64 0, ptr %pos27, align 8, !dbg !385, !tbaa !367
  %cmp19 = icmp eq i64 %4, 0, !dbg !386
  %cond = select i1 %cmp19, i32 4, i32 2, !dbg !387
  br label %sw.epilog.sink.split, !dbg !388

cond.false:                                       ; preds = %while.body
  br label %cond.end, !dbg !389

cond.end:                                         ; preds = %while.body, %cond.false
  %cond26 = phi ptr [ %uncompressed_size, %cond.false ], [ %unpadded_size, %while.body ], !dbg !389
  call void @llvm.dbg.value(metadata ptr %cond26, metadata !348, metadata !DIExpression()), !dbg !390
  %call28 = call i32 @lzma_vli_decode(ptr noundef nonnull %cond26, ptr noundef nonnull %pos27, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size) #6, !dbg !391
  call void @llvm.dbg.value(metadata i32 %call28, metadata !347, metadata !DIExpression()), !dbg !357
  %cmp29.not = icmp eq i32 %call28, 1, !dbg !392
  br i1 %cmp29.not, label %if.end32, label %out, !dbg !394

if.end32:                                         ; preds = %cond.end
  call void @llvm.dbg.value(metadata i32 0, metadata !347, metadata !DIExpression()), !dbg !357
  store i64 0, ptr %pos27, align 8, !dbg !395, !tbaa !367
  %6 = load i32, ptr %index_hash, align 8, !dbg !396, !tbaa !141
  %cmp35 = icmp eq i32 %6, 2, !dbg !397
  %7 = load i64, ptr %unpadded_size, align 8, !dbg !398, !tbaa !399
  br i1 %cmp35, label %if.then37, label %do.body, !dbg !400

if.then37:                                        ; preds = %if.end32
  %8 = add i64 %7, -9223372036854775805, !dbg !401
  %9 = icmp ult i64 %8, -9223372036854775800, !dbg !401
  br i1 %9, label %return, label %sw.epilog.sink.split, !dbg !401

do.body:                                          ; preds = %if.end32
  %10 = load i64, ptr %uncompressed_size, align 8, !dbg !404, !tbaa !405
  call void @llvm.dbg.value(metadata ptr %records, metadata !241, metadata !DIExpression()) #6, !dbg !406
  call void @llvm.dbg.value(metadata i64 %7, metadata !247, metadata !DIExpression()) #6, !dbg !406
  call void @llvm.dbg.value(metadata i64 %10, metadata !248, metadata !DIExpression()) #6, !dbg !406
  call void @llvm.dbg.value(metadata i64 %7, metadata !213, metadata !DIExpression()) #6, !dbg !408
  %add.i.i = add i64 %7, 3, !dbg !410
  %and.i.i = and i64 %add.i.i, -4, !dbg !411
  %11 = load i64, ptr %records, align 8, !dbg !412, !tbaa !261
  %add.i = add i64 %11, %and.i.i, !dbg !412
  store i64 %add.i, ptr %records, align 8, !dbg !412, !tbaa !261
  %12 = load i64, ptr %uncompressed_size1.i, align 8, !dbg !413, !tbaa !264
  %add2.i = add i64 %12, %10, !dbg !413
  store i64 %add2.i, ptr %uncompressed_size1.i, align 8, !dbg !413, !tbaa !264
  %call3.i = call i32 @lzma_vli_size(i64 noundef %7) #6, !dbg !414
  %call4.i = call i32 @lzma_vli_size(i64 noundef %10) #6, !dbg !415
  %add5.i = add i32 %call4.i, %call3.i, !dbg !416
  %conv.i = zext i32 %add5.i to i64, !dbg !414
  %13 = load i64, ptr %index_list_size.i, align 8, !dbg !417, !tbaa !270
  %add6.i = add i64 %13, %conv.i, !dbg !417
  store i64 %add6.i, ptr %index_list_size.i, align 8, !dbg !417, !tbaa !270
  %14 = load i64, ptr %count.i, align 8, !dbg !418, !tbaa !273
  %inc.i = add i64 %14, 1, !dbg !418
  store i64 %inc.i, ptr %count.i, align 8, !dbg !418, !tbaa !273
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sizes.i) #6, !dbg !419
  call void @llvm.dbg.declare(metadata ptr %sizes.i, metadata !249, metadata !DIExpression()) #6, !dbg !420
  store i64 %7, ptr %sizes.i, align 16, !dbg !421, !tbaa !277
  store i64 %10, ptr %arrayinit.element.i, align 8, !dbg !421, !tbaa !277
  call void @lzma_check_update(ptr noundef nonnull %check.i, i32 noundef 10, ptr noundef nonnull %sizes.i, i64 noundef 16) #6, !dbg !422
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sizes.i) #6, !dbg !423
  call void @llvm.dbg.value(metadata i32 0, metadata !352, metadata !DIExpression()), !dbg !424
  %15 = load i64, ptr %blocks54, align 8, !dbg !425, !tbaa !284
  %16 = load i64, ptr %records, align 8, !dbg !427, !tbaa !428
  %cmp57 = icmp ult i64 %15, %16, !dbg !429
  br i1 %cmp57, label %return, label %lor.lhs.false59, !dbg !430

lor.lhs.false59:                                  ; preds = %do.body
  %17 = load i64, ptr %uncompressed_size61, align 8, !dbg !431, !tbaa !288
  %18 = load i64, ptr %uncompressed_size1.i, align 8, !dbg !432, !tbaa !433
  %cmp64 = icmp ult i64 %17, %18, !dbg !434
  br i1 %cmp64, label %return, label %lor.lhs.false66, !dbg !435

lor.lhs.false66:                                  ; preds = %lor.lhs.false59
  %19 = load i64, ptr %index_list_size, align 8, !dbg !436, !tbaa !194
  %20 = load i64, ptr %index_list_size.i, align 8, !dbg !437, !tbaa !438
  %cmp70 = icmp ult i64 %19, %20, !dbg !439
  br i1 %cmp70, label %return, label %if.end73, !dbg !440

if.end73:                                         ; preds = %lor.lhs.false66
  %21 = load i64, ptr %remaining74, align 8, !dbg !441, !tbaa !381
  %dec = add i64 %21, -1, !dbg !441
  store i64 %dec, ptr %remaining74, align 8, !dbg !441, !tbaa !381
  %cmp75 = icmp eq i64 %dec, 0, !dbg !442
  %cond77 = select i1 %cmp75, i32 4, i32 2, !dbg !441
  br label %sw.epilog.sink.split

sw.bb82:                                          ; preds = %while.body
  %22 = load i64, ptr %count.i, align 8, !dbg !443, !tbaa !444
  %23 = load i64, ptr %index_list_size.i, align 8, !dbg !445, !tbaa !438
  call void @llvm.dbg.value(metadata i64 %22, metadata !204, metadata !DIExpression()) #6, !dbg !446
  call void @llvm.dbg.value(metadata i64 %23, metadata !207, metadata !DIExpression()) #6, !dbg !446
  %call.i = call i32 @lzma_vli_size(i64 noundef %22) #6, !dbg !448
  %add.i260 = add i32 %call.i, 1, !dbg !449
  %conv.i261 = zext i32 %add.i260 to i64, !dbg !450
  %24 = add i64 %23, %conv.i261, !dbg !451
  %add2.i262.neg = sub i64 0, %24, !dbg !451
  %and = and i64 %add2.i262.neg, 3, !dbg !452
  store i64 %and, ptr %pos27, align 8, !dbg !453, !tbaa !367
  store i32 5, ptr %index_hash, align 8, !dbg !454, !tbaa !141
  br label %sw.bb90, !dbg !455

sw.bb90:                                          ; preds = %while.body.sw.bb90_crit_edge, %sw.bb82
  %25 = phi i64 [ %.pre275, %while.body.sw.bb90_crit_edge ], [ %and, %sw.bb82 ], !dbg !365
  %cmp92.not = icmp eq i64 %25, 0, !dbg !456
  br i1 %cmp92.not, label %if.end104, label %if.then94, !dbg !457

if.then94:                                        ; preds = %sw.bb90
  %dec96 = add i64 %25, -1, !dbg !458
  store i64 %dec96, ptr %pos27, align 8, !dbg !458, !tbaa !367
  %26 = load i64, ptr %in_pos, align 8, !dbg !460, !tbaa !277
  %inc97 = add i64 %26, 1, !dbg !460
  store i64 %inc97, ptr %in_pos, align 8, !dbg !460, !tbaa !277
  %arrayidx98 = getelementptr inbounds i8, ptr %in, i64 %26, !dbg !462
  %27 = load i8, ptr %arrayidx98, align 1, !dbg !462, !tbaa !371
  %cmp100.not = icmp eq i8 %27, 0, !dbg !463
  br i1 %cmp100.not, label %sw.epilog, label %return, !dbg !464

if.end104:                                        ; preds = %sw.bb90
  %28 = load i64, ptr %blocks54, align 8, !dbg !465, !tbaa !284
  %29 = load i64, ptr %records, align 8, !dbg !467, !tbaa !428
  %cmp109.not = icmp eq i64 %28, %29, !dbg !468
  br i1 %cmp109.not, label %lor.lhs.false111, label %return, !dbg !469

lor.lhs.false111:                                 ; preds = %if.end104
  %30 = load i64, ptr %uncompressed_size61, align 8, !dbg !470, !tbaa !288
  %31 = load i64, ptr %uncompressed_size1.i, align 8, !dbg !471, !tbaa !433
  %cmp116.not = icmp eq i64 %30, %31, !dbg !472
  br i1 %cmp116.not, label %lor.lhs.false118, label %return, !dbg !473

lor.lhs.false118:                                 ; preds = %lor.lhs.false111
  %32 = load i64, ptr %index_list_size, align 8, !dbg !474, !tbaa !194
  %33 = load i64, ptr %index_list_size.i, align 8, !dbg !475, !tbaa !438
  %cmp123.not = icmp eq i64 %32, %33, !dbg !476
  br i1 %cmp123.not, label %if.end126, label %return, !dbg !477

if.end126:                                        ; preds = %lor.lhs.false118
  %check = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash, i64 0, i32 1, i32 4, !dbg !478
  call void @lzma_check_finish(ptr noundef nonnull %check, i32 noundef 10) #6, !dbg !479
  call void @lzma_check_finish(ptr noundef nonnull %check.i, i32 noundef 10) #6, !dbg !480
  %call136 = call i32 @lzma_check_size(i32 noundef 10) #6, !dbg !481
  %conv137 = zext i32 %call136 to i64, !dbg !481
  %bcmp = call i32 @bcmp(ptr nonnull %check, ptr nonnull %check.i, i64 %conv137), !dbg !483
  %cmp139.not = icmp eq i32 %bcmp, 0, !dbg !484
  br i1 %cmp139.not, label %if.end142, label %return, !dbg !485

if.end142:                                        ; preds = %if.end126
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 %0, !dbg !486
  %34 = load i64, ptr %in_pos, align 8, !dbg !487, !tbaa !277
  %sub143 = sub i64 %34, %0, !dbg !488
  %crc32 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash, i64 0, i32 7, !dbg !489
  %35 = load i32, ptr %crc32, align 8, !dbg !489, !tbaa !490
  %call144 = call i32 @lzma_crc32(ptr noundef %add.ptr, i64 noundef %sub143, i32 noundef %35) #6, !dbg !491
  store i32 %call144, ptr %crc32, align 8, !dbg !492, !tbaa !490
  store i32 6, ptr %index_hash, align 8, !dbg !493, !tbaa !141
  br label %sw.bb147, !dbg !494

sw.bb147:                                         ; preds = %while.body, %if.end142
  %crc32153 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash, i64 0, i32 7, !dbg !495
  br label %do.body148, !dbg !498

do.body148:                                       ; preds = %do.cond163, %sw.bb147
  %36 = load i64, ptr %in_pos, align 8, !dbg !499, !tbaa !277
  %cmp149 = icmp eq i64 %36, %in_size, !dbg !501
  br i1 %cmp149, label %return, label %if.end152, !dbg !502

if.end152:                                        ; preds = %do.body148
  %37 = load i32, ptr %crc32153, align 8, !dbg !495, !tbaa !490
  %38 = load i64, ptr %pos27, align 8, !dbg !503, !tbaa !367
  %.tr = trunc i64 %38 to i32, !dbg !504
  %sh_prom = shl i32 %.tr, 3, !dbg !504
  %shr = lshr i32 %37, %sh_prom, !dbg !504
  %inc156 = add i64 %36, 1, !dbg !505
  store i64 %inc156, ptr %in_pos, align 8, !dbg !505, !tbaa !277
  %arrayidx157 = getelementptr inbounds i8, ptr %in, i64 %36, !dbg !506
  %39 = load i8, ptr %arrayidx157, align 1, !dbg !506, !tbaa !371
  %40 = trunc i32 %shr to i8, !dbg !507
  %cmp159.not = icmp eq i8 %39, %40, !dbg !507
  br i1 %cmp159.not, label %do.cond163, label %return, !dbg !508

do.cond163:                                       ; preds = %if.end152
  %41 = load i64, ptr %pos27, align 8, !dbg !509, !tbaa !367
  %inc165 = add i64 %41, 1, !dbg !509
  store i64 %inc165, ptr %pos27, align 8, !dbg !509, !tbaa !367
  %cmp166 = icmp ult i64 %inc165, 4, !dbg !510
  br i1 %cmp166, label %do.body148, label %return, !dbg !511, !llvm.loop !512

sw.epilog.sink.split:                             ; preds = %if.then37, %if.end73, %sw.bb, %if.end16
  %storemerge.sink = phi i32 [ %cond, %if.end16 ], [ 1, %sw.bb ], [ %cond77, %if.end73 ], [ 3, %if.then37 ]
  store i32 %storemerge.sink, ptr %index_hash, align 8, !dbg !516, !tbaa !141
  br label %sw.epilog, !dbg !517

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.then94
  %42 = phi i32 [ 5, %if.then94 ], [ %storemerge.sink, %sw.epilog.sink.split ]
  call void @llvm.dbg.value(metadata i32 0, metadata !347, metadata !DIExpression()), !dbg !357
  %43 = load i64, ptr %in_pos, align 8, !dbg !517, !tbaa !277
  %cmp1 = icmp ult i64 %43, %in_size, !dbg !518
  br i1 %cmp1, label %while.body, label %out, !dbg !363, !llvm.loop !519

out:                                              ; preds = %sw.bb7, %sw.epilog, %cond.end
  %ret.3.ph = phi i32 [ %call, %sw.bb7 ], [ 0, %sw.epilog ], [ %call28, %cond.end ]
  %.pre276 = load i64, ptr %in_pos, align 8, !dbg !521, !tbaa !277
  call void @llvm.dbg.value(metadata i32 %ret.3.ph, metadata !347, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.label(metadata !356), !dbg !522
  %add.ptr169 = getelementptr inbounds i8, ptr %in, i64 %0, !dbg !523
  %sub170 = sub i64 %.pre276, %0, !dbg !524
  %crc32171 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %index_hash, i64 0, i32 7, !dbg !525
  %44 = load i32, ptr %crc32171, align 8, !dbg !525, !tbaa !490
  %call172 = call i32 @lzma_crc32(ptr noundef %add.ptr169, i64 noundef %sub170, i32 noundef %44) #6, !dbg !526
  store i32 %call172, ptr %crc32171, align 8, !dbg !527, !tbaa !490
  br label %return, !dbg !528

return:                                           ; preds = %while.body, %do.body, %lor.lhs.false59, %lor.lhs.false66, %if.then37, %sw.bb, %if.end11, %if.then94, %do.body148, %if.end152, %do.cond163, %out, %lor.lhs.false118, %lor.lhs.false111, %if.end104, %if.end126, %entry
  %retval.6 = phi i32 [ 10, %entry ], [ %ret.3.ph, %out ], [ 9, %lor.lhs.false118 ], [ 9, %lor.lhs.false111 ], [ 9, %if.end104 ], [ 9, %if.end126 ], [ 1, %do.cond163 ], [ 9, %if.end152 ], [ 0, %do.body148 ], [ 9, %do.body ], [ 9, %lor.lhs.false59 ], [ 9, %lor.lhs.false66 ], [ 9, %if.then37 ], [ 11, %while.body ], [ 9, %if.then94 ], [ 9, %if.end11 ], [ 9, %sw.bb ], !dbg !357
  ret i32 %retval.6, !dbg !529
}

declare !dbg !530 i32 @lzma_vli_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !533 void @lzma_check_finish(ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !534 i32 @lzma_check_size(i32 noundef) local_unnamed_addr #2

declare !dbg !537 i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare !dbg !540 i32 @lzma_vli_size(i64 noundef) local_unnamed_addr #2

declare !dbg !543 void @lzma_check_update(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !98, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/index_hash.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "5b32f3be9e6ab3427cac2d3fabd9ce41")
!2 = !{!3, !76, !83}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !5, file: !4, line: 38, baseType: !42, size: 32, elements: !68)
!4 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/index_hash.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5b32f3be9e6ab3427cac2d3fabd9ce41")
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_index_hash_s", file: !4, line: 37, size: 2560, elements: !6)
!6 = !{!7, !8, !60, !61, !62, !63, !64, !67}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !5, file: !4, line: 46, baseType: !3, size: 32)
!8 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5, file: !4, line: 49, baseType: !9, size: 1088, offset: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_index_hash_info", file: !4, line: 34, baseType: !10)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 18, size: 1088, elements: !11)
!11 = !{!12, !20, !21, !22, !23}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_size", scope: !10, file: !4, line: 20, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !14, line: 63, baseType: !15)
!14 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !16, line: 27, baseType: !17)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !18, line: 45, baseType: !19)
!18 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!19 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !10, file: !4, line: 23, baseType: !13, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !10, file: !4, line: 26, baseType: !13, size: 64, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "index_list_size", scope: !10, file: !4, line: 29, baseType: !13, size: 64, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !10, file: !4, line: 32, baseType: !24, size: 832, offset: 256)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check_state", file: !25, line: 56, baseType: !26)
!25 = !DIFile(filename: "apps/557.xz_r/src/liblzma/check/check.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "938220df6e0ab33115ef85b0d8c70c5b")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 34, size: 832, elements: !27)
!27 = !{!28, !49}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !26, file: !25, line: 40, baseType: !29, size: 512)
!29 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !26, file: !25, line: 36, size: 512, elements: !30)
!30 = !{!31, !38, !45}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "u8", scope: !29, file: !25, line: 37, baseType: !32, size: 512)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 512, elements: !36)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !16, line: 24, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !18, line: 38, baseType: !35)
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !{!37}
!37 = !DISubrange(count: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "u32", scope: !29, file: !25, line: 38, baseType: !39, size: 512)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 512, elements: !43)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !16, line: 26, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !18, line: 42, baseType: !42)
!42 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!43 = !{!44}
!44 = !DISubrange(count: 16)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !29, file: !25, line: 39, baseType: !46, size: 512)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 512, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 8)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !26, file: !25, line: 54, baseType: !50, size: 320, offset: 512)
!50 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !26, file: !25, line: 43, size: 320, elements: !51)
!51 = !{!52, !53, !54}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !50, file: !25, line: 44, baseType: !40, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "crc64", scope: !50, file: !25, line: 45, baseType: !15, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "sha256", scope: !50, file: !25, line: 53, baseType: !55, size: 320)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !50, file: !25, line: 47, size: 320, elements: !56)
!56 = !{!57, !59}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !55, file: !25, line: 49, baseType: !58, size: 256)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 256, elements: !47)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !55, file: !25, line: 52, baseType: !15, size: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "records", scope: !5, file: !4, line: 52, baseType: !9, size: 1088, offset: 1152)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "remaining", scope: !5, file: !4, line: 55, baseType: !13, size: 64, offset: 2240)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "unpadded_size", scope: !5, file: !4, line: 58, baseType: !13, size: 64, offset: 2304)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !5, file: !4, line: 61, baseType: !13, size: 64, offset: 2368)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !5, file: !4, line: 65, baseType: !65, size: 64, offset: 2432)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !66, line: 46, baseType: !19)
!66 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!67 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !5, file: !4, line: 68, baseType: !40, size: 32, offset: 2496)
!68 = !{!69, !70, !71, !72, !73, !74, !75}
!69 = !DIEnumerator(name: "SEQ_BLOCK", value: 0)
!70 = !DIEnumerator(name: "SEQ_COUNT", value: 1)
!71 = !DIEnumerator(name: "SEQ_UNPADDED", value: 2)
!72 = !DIEnumerator(name: "SEQ_UNCOMPRESSED", value: 3)
!73 = !DIEnumerator(name: "SEQ_PADDING_INIT", value: 4)
!74 = !DIEnumerator(name: "SEQ_PADDING", value: 5)
!75 = !DIEnumerator(name: "SEQ_CRC32", value: 6)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !77, line: 27, baseType: !42, size: 32, elements: !78)
!77 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/check.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!78 = !{!79, !80, !81, !82}
!79 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!80 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!81 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!82 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !84, line: 57, baseType: !42, size: 32, elements: !85)
!84 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/base.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97}
!86 = !DIEnumerator(name: "LZMA_OK", value: 0)
!87 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!88 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!89 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!90 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!91 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!92 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!93 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!94 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!95 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!96 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!97 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!98 = !{!99, !100}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!102 = !{i32 7, !"Dwarf Version", i32 5}
!103 = !{i32 2, !"Debug Info Version", i32 3}
!104 = !{i32 1, !"wchar_size", i32 4}
!105 = !{i32 7, !"PIC Level", i32 2}
!106 = !{i32 7, !"PIE Level", i32 2}
!107 = !{i32 7, !"uwtable", i32 2}
!108 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!109 = distinct !DISubprogram(name: "lzma_index_hash_init", scope: !4, file: !4, line: 73, type: !110, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !128)
!110 = !DISubroutineType(types: !111)
!111 = !{!112, !112, !115}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_index_hash", file: !114, line: 25, baseType: !5)
!114 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/index_hash.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "93f41ec399d5b72fa726dbb2f572cbec")
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !84, line: 403, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !84, line: 341, size: 192, elements: !118)
!118 = !{!119, !123, !127}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !117, file: !84, line: 376, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!99, !99, !65, !65}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !117, file: !84, line: 390, baseType: !124, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !99, !99}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !117, file: !84, line: 401, baseType: !99, size: 64, offset: 128)
!128 = !{!129, !130}
!129 = !DILocalVariable(name: "index_hash", arg: 1, scope: !109, file: !4, line: 73, type: !112)
!130 = !DILocalVariable(name: "allocator", arg: 2, scope: !109, file: !4, line: 73, type: !115)
!131 = !DILocation(line: 0, scope: !109)
!132 = !DILocation(line: 75, column: 17, scope: !133)
!133 = distinct !DILexicalBlock(scope: !109, file: !4, line: 75, column: 6)
!134 = !DILocation(line: 75, column: 6, scope: !109)
!135 = !DILocation(line: 76, column: 16, scope: !136)
!136 = distinct !DILexicalBlock(scope: !133, file: !4, line: 75, column: 26)
!137 = !DILocation(line: 77, column: 18, scope: !138)
!138 = distinct !DILexicalBlock(scope: !136, file: !4, line: 77, column: 7)
!139 = !DILocation(line: 77, column: 7, scope: !136)
!140 = !DILocation(line: 81, column: 23, scope: !109)
!141 = !{!142, !143, i64 0}
!142 = !{!"lzma_index_hash_s", !143, i64 0, !145, i64 8, !145, i64 144, !146, i64 280, !146, i64 288, !146, i64 296, !146, i64 304, !148, i64 312}
!143 = !{!"omnipotent char", !144, i64 0}
!144 = !{!"Simple C/C++ TBAA"}
!145 = !{!"", !146, i64 0, !146, i64 8, !146, i64 16, !146, i64 24, !147, i64 32}
!146 = !{!"long", !143, i64 0}
!147 = !{!"", !143, i64 0, !143, i64 64}
!148 = !{!"int", !143, i64 0}
!149 = !DILocation(line: 82, column: 14, scope: !109)
!150 = !DILocation(line: 86, column: 14, scope: !109)
!151 = !DILocation(line: 90, column: 14, scope: !109)
!152 = !DILocation(line: 96, column: 44, scope: !109)
!153 = !DILocation(line: 82, column: 33, scope: !109)
!154 = !DILocation(line: 86, column: 34, scope: !109)
!155 = !DILocation(line: 90, column: 28, scope: !109)
!156 = !DILocation(line: 96, column: 8, scope: !109)
!157 = !DILocation(line: 97, column: 45, scope: !109)
!158 = !DILocation(line: 97, column: 8, scope: !109)
!159 = !DILocation(line: 99, column: 2, scope: !109)
!160 = !DILocation(line: 100, column: 1, scope: !109)
!161 = !DISubprogram(name: "lzma_alloc", scope: !162, file: !162, line: 211, type: !163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !165)
!162 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!163 = !DISubroutineType(types: !164)
!164 = !{!99, !65, !115}
!165 = !{}
!166 = !DISubprogram(name: "lzma_check_init", scope: !25, file: !25, line: 75, type: !167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !165)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !169, !170}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !77, line: 55, baseType: !76)
!171 = distinct !DISubprogram(name: "lzma_index_hash_end", scope: !4, file: !4, line: 104, type: !172, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !174)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !112, !115}
!174 = !{!175, !176}
!175 = !DILocalVariable(name: "index_hash", arg: 1, scope: !171, file: !4, line: 104, type: !112)
!176 = !DILocalVariable(name: "allocator", arg: 2, scope: !171, file: !4, line: 104, type: !115)
!177 = !DILocation(line: 0, scope: !171)
!178 = !DILocation(line: 106, column: 2, scope: !171)
!179 = !DILocation(line: 107, column: 2, scope: !171)
!180 = !DISubprogram(name: "lzma_free", scope: !162, file: !162, line: 215, type: !181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !165)
!181 = !DISubroutineType(types: !182)
!182 = !{null, !99, !115}
!183 = distinct !DISubprogram(name: "lzma_index_hash_size", scope: !4, file: !4, line: 112, type: !184, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !188)
!184 = !DISubroutineType(types: !185)
!185 = !{!13, !186}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!188 = !{!189}
!189 = !DILocalVariable(name: "index_hash", arg: 1, scope: !183, file: !4, line: 112, type: !186)
!190 = !DILocation(line: 0, scope: !183)
!191 = !DILocation(line: 117, column: 39, scope: !183)
!192 = !{!142, !146, i64 24}
!193 = !DILocation(line: 118, column: 23, scope: !183)
!194 = !{!142, !146, i64 32}
!195 = !DILocalVariable(name: "count", arg: 1, scope: !196, file: !197, line: 57, type: !13)
!196 = distinct !DISubprogram(name: "index_size", scope: !197, file: !197, line: 57, type: !198, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !200)
!197 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/index.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "8c1da33cfb6445c1ed40367774c91b69")
!198 = !DISubroutineType(types: !199)
!199 = !{!13, !13, !13}
!200 = !{!195, !201}
!201 = !DILocalVariable(name: "index_list_size", arg: 2, scope: !196, file: !197, line: 57, type: !13)
!202 = !DILocation(line: 0, scope: !196, inlinedAt: !203)
!203 = distinct !DILocation(line: 117, column: 9, scope: !183)
!204 = !DILocalVariable(name: "count", arg: 1, scope: !205, file: !197, line: 48, type: !13)
!205 = distinct !DISubprogram(name: "index_size_unpadded", scope: !197, file: !197, line: 48, type: !198, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !206)
!206 = !{!204, !207}
!207 = !DILocalVariable(name: "index_list_size", arg: 2, scope: !205, file: !197, line: 48, type: !13)
!208 = !DILocation(line: 0, scope: !205, inlinedAt: !209)
!209 = distinct !DILocation(line: 59, column: 19, scope: !196, inlinedAt: !203)
!210 = !DILocation(line: 51, column: 13, scope: !205, inlinedAt: !209)
!211 = !DILocation(line: 51, column: 11, scope: !205, inlinedAt: !209)
!212 = !DILocation(line: 51, column: 9, scope: !205, inlinedAt: !209)
!213 = !DILocalVariable(name: "vli", arg: 1, scope: !214, file: !197, line: 39, type: !13)
!214 = distinct !DISubprogram(name: "vli_ceil4", scope: !197, file: !197, line: 39, type: !215, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!215 = !DISubroutineType(types: !216)
!216 = !{!13, !13}
!217 = !{!213}
!218 = !DILocation(line: 0, scope: !214, inlinedAt: !219)
!219 = distinct !DILocation(line: 59, column: 9, scope: !196, inlinedAt: !203)
!220 = !DILocation(line: 51, column: 52, scope: !205, inlinedAt: !209)
!221 = !DILocation(line: 42, column: 14, scope: !214, inlinedAt: !219)
!222 = !DILocation(line: 42, column: 19, scope: !214, inlinedAt: !219)
!223 = !DILocation(line: 117, column: 2, scope: !183)
!224 = distinct !DISubprogram(name: "lzma_index_hash_append", scope: !4, file: !4, line: 142, type: !225, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !228)
!225 = !DISubroutineType(types: !226)
!226 = !{!227, !112, !13, !13}
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !84, line: 237, baseType: !83)
!228 = !{!229, !230, !231, !232}
!229 = !DILocalVariable(name: "index_hash", arg: 1, scope: !224, file: !4, line: 142, type: !112)
!230 = !DILocalVariable(name: "unpadded_size", arg: 2, scope: !224, file: !4, line: 142, type: !13)
!231 = !DILocalVariable(name: "uncompressed_size", arg: 3, scope: !224, file: !4, line: 143, type: !13)
!232 = !DILocalVariable(name: "ret_", scope: !233, file: !4, line: 153, type: !234)
!233 = distinct !DILexicalBlock(scope: !224, file: !4, line: 153, column: 2)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!235 = !DILocation(line: 0, scope: !224)
!236 = !DILocation(line: 146, column: 18, scope: !237)
!237 = distinct !DILexicalBlock(scope: !224, file: !4, line: 146, column: 6)
!238 = !DILocation(line: 146, column: 27, scope: !237)
!239 = !DILocation(line: 147, column: 4, scope: !237)
!240 = !DILocation(line: 153, column: 2, scope: !233)
!241 = !DILocalVariable(name: "info", arg: 1, scope: !242, file: !4, line: 124, type: !245)
!242 = distinct !DISubprogram(name: "hash_append", scope: !4, file: !4, line: 124, type: !243, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !246)
!243 = !DISubroutineType(types: !244)
!244 = !{!227, !245, !13, !13}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!246 = !{!241, !247, !248, !249}
!247 = !DILocalVariable(name: "unpadded_size", arg: 2, scope: !242, file: !4, line: 124, type: !13)
!248 = !DILocalVariable(name: "uncompressed_size", arg: 3, scope: !242, file: !4, line: 125, type: !13)
!249 = !DILocalVariable(name: "sizes", scope: !242, file: !4, line: 133, type: !250)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 128, elements: !252)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!252 = !{!253}
!253 = !DISubrange(count: 2)
!254 = !DILocation(line: 0, scope: !242, inlinedAt: !255)
!255 = distinct !DILocation(line: 153, column: 2, scope: !233)
!256 = !DILocation(line: 0, scope: !214, inlinedAt: !257)
!257 = distinct !DILocation(line: 127, column: 23, scope: !242, inlinedAt: !255)
!258 = !DILocation(line: 42, column: 14, scope: !214, inlinedAt: !257)
!259 = !DILocation(line: 42, column: 19, scope: !214, inlinedAt: !257)
!260 = !DILocation(line: 127, column: 20, scope: !242, inlinedAt: !255)
!261 = !{!145, !146, i64 0}
!262 = !DILocation(line: 128, column: 8, scope: !242, inlinedAt: !255)
!263 = !DILocation(line: 128, column: 26, scope: !242, inlinedAt: !255)
!264 = !{!145, !146, i64 8}
!265 = !DILocation(line: 129, column: 27, scope: !242, inlinedAt: !255)
!266 = !DILocation(line: 130, column: 6, scope: !242, inlinedAt: !255)
!267 = !DILocation(line: 130, column: 4, scope: !242, inlinedAt: !255)
!268 = !DILocation(line: 129, column: 8, scope: !242, inlinedAt: !255)
!269 = !DILocation(line: 129, column: 24, scope: !242, inlinedAt: !255)
!270 = !{!145, !146, i64 24}
!271 = !DILocation(line: 131, column: 10, scope: !242, inlinedAt: !255)
!272 = !DILocation(line: 131, column: 2, scope: !242, inlinedAt: !255)
!273 = !{!145, !146, i64 16}
!274 = !DILocation(line: 133, column: 2, scope: !242, inlinedAt: !255)
!275 = !DILocation(line: 133, column: 17, scope: !242, inlinedAt: !255)
!276 = !DILocation(line: 133, column: 28, scope: !242, inlinedAt: !255)
!277 = !{!146, !146, i64 0}
!278 = !DILocation(line: 134, column: 27, scope: !242, inlinedAt: !255)
!279 = !DILocation(line: 134, column: 2, scope: !242, inlinedAt: !255)
!280 = !DILocation(line: 138, column: 1, scope: !242, inlinedAt: !255)
!281 = !DILocation(line: 0, scope: !233)
!282 = !DILocation(line: 157, column: 25, scope: !283)
!283 = distinct !DILexicalBlock(scope: !224, file: !4, line: 157, column: 6)
!284 = !{!142, !146, i64 8}
!285 = !DILocation(line: 157, column: 37, scope: !283)
!286 = !DILocation(line: 158, column: 4, scope: !283)
!287 = !DILocation(line: 158, column: 26, scope: !283)
!288 = !{!142, !146, i64 16}
!289 = !DILocation(line: 158, column: 44, scope: !283)
!290 = !DILocation(line: 159, column: 4, scope: !283)
!291 = !DILocation(line: 159, column: 37, scope: !283)
!292 = !DILocation(line: 160, column: 25, scope: !283)
!293 = !DILocation(line: 0, scope: !196, inlinedAt: !294)
!294 = distinct !DILocation(line: 159, column: 7, scope: !283)
!295 = !DILocation(line: 0, scope: !205, inlinedAt: !296)
!296 = distinct !DILocation(line: 59, column: 19, scope: !196, inlinedAt: !294)
!297 = !DILocation(line: 51, column: 13, scope: !205, inlinedAt: !296)
!298 = !DILocation(line: 51, column: 11, scope: !205, inlinedAt: !296)
!299 = !DILocation(line: 51, column: 9, scope: !205, inlinedAt: !296)
!300 = !DILocation(line: 0, scope: !214, inlinedAt: !301)
!301 = distinct !DILocation(line: 59, column: 9, scope: !196, inlinedAt: !294)
!302 = !DILocation(line: 51, column: 52, scope: !205, inlinedAt: !296)
!303 = !DILocation(line: 42, column: 14, scope: !214, inlinedAt: !301)
!304 = !DILocation(line: 42, column: 19, scope: !214, inlinedAt: !301)
!305 = !DILocation(line: 161, column: 5, scope: !283)
!306 = !DILocation(line: 162, column: 4, scope: !283)
!307 = !DILocation(line: 162, column: 44, scope: !283)
!308 = !DILocation(line: 163, column: 25, scope: !283)
!309 = !DILocation(line: 164, column: 25, scope: !283)
!310 = !DILocalVariable(name: "blocks_size", arg: 1, scope: !311, file: !197, line: 65, type: !13)
!311 = distinct !DISubprogram(name: "index_stream_size", scope: !197, file: !197, line: 65, type: !312, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !314)
!312 = !DISubroutineType(types: !313)
!313 = !{!13, !13, !13, !13}
!314 = !{!310, !315, !316}
!315 = !DILocalVariable(name: "count", arg: 2, scope: !311, file: !197, line: 66, type: !13)
!316 = !DILocalVariable(name: "index_list_size", arg: 3, scope: !311, file: !197, line: 66, type: !13)
!317 = !DILocation(line: 0, scope: !311, inlinedAt: !318)
!318 = distinct !DILocation(line: 162, column: 7, scope: !283)
!319 = !DILocation(line: 0, scope: !196, inlinedAt: !320)
!320 = distinct !DILocation(line: 69, column: 6, scope: !311, inlinedAt: !318)
!321 = !DILocation(line: 0, scope: !205, inlinedAt: !322)
!322 = distinct !DILocation(line: 59, column: 19, scope: !196, inlinedAt: !320)
!323 = !DILocation(line: 51, column: 13, scope: !205, inlinedAt: !322)
!324 = !DILocation(line: 51, column: 11, scope: !205, inlinedAt: !322)
!325 = !DILocation(line: 51, column: 9, scope: !205, inlinedAt: !322)
!326 = !DILocation(line: 0, scope: !214, inlinedAt: !327)
!327 = distinct !DILocation(line: 59, column: 9, scope: !196, inlinedAt: !320)
!328 = !DILocation(line: 51, column: 52, scope: !205, inlinedAt: !322)
!329 = !DILocation(line: 42, column: 14, scope: !214, inlinedAt: !327)
!330 = !DILocation(line: 42, column: 19, scope: !214, inlinedAt: !327)
!331 = !DILocation(line: 69, column: 4, scope: !311, inlinedAt: !318)
!332 = !DILocation(line: 70, column: 4, scope: !311, inlinedAt: !318)
!333 = !DILocation(line: 165, column: 5, scope: !283)
!334 = !DILocation(line: 157, column: 6, scope: !224)
!335 = !DILocation(line: 169, column: 1, scope: !224)
!336 = distinct !DISubprogram(name: "lzma_index_hash_decode", scope: !4, file: !4, line: 173, type: !337, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !340)
!337 = !DISubroutineType(types: !338)
!338 = !{!227, !112, !100, !339, !65}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!340 = !{!341, !342, !343, !344, !345, !347, !348, !352, !356}
!341 = !DILocalVariable(name: "index_hash", arg: 1, scope: !336, file: !4, line: 173, type: !112)
!342 = !DILocalVariable(name: "in", arg: 2, scope: !336, file: !4, line: 173, type: !100)
!343 = !DILocalVariable(name: "in_pos", arg: 3, scope: !336, file: !4, line: 174, type: !339)
!344 = !DILocalVariable(name: "in_size", arg: 4, scope: !336, file: !4, line: 174, type: !65)
!345 = !DILocalVariable(name: "in_start", scope: !336, file: !4, line: 185, type: !346)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!347 = !DILocalVariable(name: "ret", scope: !336, file: !4, line: 186, type: !227)
!348 = !DILocalVariable(name: "size", scope: !349, file: !4, line: 219, type: !351)
!349 = distinct !DILexicalBlock(scope: !350, file: !4, line: 218, column: 25)
!350 = distinct !DILexicalBlock(scope: !336, file: !4, line: 189, column: 32)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!352 = !DILocalVariable(name: "ret_", scope: !353, file: !4, line: 240, type: !234)
!353 = distinct !DILexicalBlock(scope: !354, file: !4, line: 240, column: 4)
!354 = distinct !DILexicalBlock(scope: !355, file: !4, line: 238, column: 10)
!355 = distinct !DILexicalBlock(scope: !349, file: !4, line: 231, column: 7)
!356 = !DILabel(scope: !336, name: "out", file: !4, line: 326)
!357 = !DILocation(line: 0, scope: !336)
!358 = !DILocation(line: 179, column: 6, scope: !359)
!359 = distinct !DILexicalBlock(scope: !336, file: !4, line: 179, column: 6)
!360 = !DILocation(line: 179, column: 14, scope: !359)
!361 = !DILocation(line: 179, column: 6, scope: !336)
!362 = !DILocation(line: 189, column: 22, scope: !336)
!363 = !DILocation(line: 188, column: 2, scope: !336)
!364 = !DILocation(line: 189, column: 2, scope: !336)
!365 = !DILocation(line: 275, column: 19, scope: !366)
!366 = distinct !DILexicalBlock(scope: !350, file: !4, line: 275, column: 7)
!367 = !{!142, !146, i64 304}
!368 = !DILocation(line: 192, column: 19, scope: !369)
!369 = distinct !DILexicalBlock(scope: !350, file: !4, line: 192, column: 7)
!370 = !DILocation(line: 192, column: 7, scope: !369)
!371 = !{!143, !143, i64 0}
!372 = !DILocation(line: 192, column: 23, scope: !369)
!373 = !DILocation(line: 192, column: 7, scope: !350)
!374 = !DILocation(line: 199, column: 9, scope: !375)
!375 = distinct !DILexicalBlock(scope: !350, file: !4, line: 198, column: 18)
!376 = !DILocation(line: 201, column: 11, scope: !377)
!377 = distinct !DILexicalBlock(scope: !375, file: !4, line: 201, column: 7)
!378 = !DILocation(line: 201, column: 7, scope: !375)
!379 = !DILocation(line: 205, column: 19, scope: !380)
!380 = distinct !DILexicalBlock(scope: !375, file: !4, line: 205, column: 7)
!381 = !{!142, !146, i64 280}
!382 = !DILocation(line: 205, column: 51, scope: !380)
!383 = !DILocation(line: 205, column: 29, scope: !380)
!384 = !DILocation(line: 205, column: 7, scope: !375)
!385 = !DILocation(line: 209, column: 19, scope: !375)
!386 = !DILocation(line: 212, column: 48, scope: !375)
!387 = !DILocation(line: 212, column: 26, scope: !375)
!388 = !DILocation(line: 214, column: 3, scope: !375)
!389 = !DILocation(line: 219, column: 20, scope: !349)
!390 = !DILocation(line: 0, scope: !349)
!391 = !DILocation(line: 223, column: 9, scope: !349)
!392 = !DILocation(line: 225, column: 11, scope: !393)
!393 = distinct !DILexicalBlock(scope: !349, file: !4, line: 225, column: 7)
!394 = !DILocation(line: 225, column: 7, scope: !349)
!395 = !DILocation(line: 229, column: 19, scope: !349)
!396 = !DILocation(line: 231, column: 19, scope: !355)
!397 = !DILocation(line: 231, column: 28, scope: !355)
!398 = !DILocation(line: 0, scope: !355)
!399 = !{!142, !146, i64 288}
!400 = !DILocation(line: 231, column: 7, scope: !349)
!401 = !DILocation(line: 233, column: 6, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !4, line: 232, column: 8)
!403 = distinct !DILexicalBlock(scope: !355, file: !4, line: 231, column: 45)
!404 = !DILocation(line: 240, column: 4, scope: !353)
!405 = !{!142, !146, i64 296}
!406 = !DILocation(line: 0, scope: !242, inlinedAt: !407)
!407 = distinct !DILocation(line: 240, column: 4, scope: !353)
!408 = !DILocation(line: 0, scope: !214, inlinedAt: !409)
!409 = distinct !DILocation(line: 127, column: 23, scope: !242, inlinedAt: !407)
!410 = !DILocation(line: 42, column: 14, scope: !214, inlinedAt: !409)
!411 = !DILocation(line: 42, column: 19, scope: !214, inlinedAt: !409)
!412 = !DILocation(line: 127, column: 20, scope: !242, inlinedAt: !407)
!413 = !DILocation(line: 128, column: 26, scope: !242, inlinedAt: !407)
!414 = !DILocation(line: 129, column: 27, scope: !242, inlinedAt: !407)
!415 = !DILocation(line: 130, column: 6, scope: !242, inlinedAt: !407)
!416 = !DILocation(line: 130, column: 4, scope: !242, inlinedAt: !407)
!417 = !DILocation(line: 129, column: 24, scope: !242, inlinedAt: !407)
!418 = !DILocation(line: 131, column: 2, scope: !242, inlinedAt: !407)
!419 = !DILocation(line: 133, column: 2, scope: !242, inlinedAt: !407)
!420 = !DILocation(line: 133, column: 17, scope: !242, inlinedAt: !407)
!421 = !DILocation(line: 133, column: 28, scope: !242, inlinedAt: !407)
!422 = !DILocation(line: 134, column: 2, scope: !242, inlinedAt: !407)
!423 = !DILocation(line: 138, column: 1, scope: !242, inlinedAt: !407)
!424 = !DILocation(line: 0, scope: !353)
!425 = !DILocation(line: 250, column: 27, scope: !426)
!426 = distinct !DILexicalBlock(scope: !354, file: !4, line: 250, column: 8)
!427 = !DILocation(line: 251, column: 28, scope: !426)
!428 = !{!142, !146, i64 144}
!429 = !DILocation(line: 251, column: 6, scope: !426)
!430 = !DILocation(line: 252, column: 6, scope: !426)
!431 = !DILocation(line: 252, column: 28, scope: !426)
!432 = !DILocation(line: 253, column: 28, scope: !426)
!433 = !{!142, !146, i64 152}
!434 = !DILocation(line: 253, column: 6, scope: !426)
!435 = !DILocation(line: 254, column: 6, scope: !426)
!436 = !DILocation(line: 254, column: 28, scope: !426)
!437 = !DILocation(line: 255, column: 28, scope: !426)
!438 = !{!142, !146, i64 168}
!439 = !DILocation(line: 255, column: 6, scope: !426)
!440 = !DILocation(line: 250, column: 8, scope: !354)
!441 = !DILocation(line: 259, column: 27, scope: !354)
!442 = !DILocation(line: 259, column: 51, scope: !354)
!443 = !DILocation(line: 268, column: 25, scope: !350)
!444 = !{!142, !146, i64 160}
!445 = !DILocation(line: 269, column: 25, scope: !350)
!446 = !DILocation(line: 0, scope: !205, inlinedAt: !447)
!447 = distinct !DILocation(line: 267, column: 38, scope: !350)
!448 = !DILocation(line: 51, column: 13, scope: !205, inlinedAt: !447)
!449 = !DILocation(line: 51, column: 11, scope: !205, inlinedAt: !447)
!450 = !DILocation(line: 51, column: 9, scope: !205, inlinedAt: !447)
!451 = !DILocation(line: 51, column: 52, scope: !205, inlinedAt: !447)
!452 = !DILocation(line: 269, column: 43, scope: !350)
!453 = !DILocation(line: 267, column: 19, scope: !350)
!454 = !DILocation(line: 270, column: 24, scope: !350)
!455 = !DILocation(line: 270, column: 3, scope: !350)
!456 = !DILocation(line: 275, column: 23, scope: !366)
!457 = !DILocation(line: 275, column: 7, scope: !350)
!458 = !DILocation(line: 276, column: 4, scope: !459)
!459 = distinct !DILexicalBlock(scope: !366, file: !4, line: 275, column: 28)
!460 = !DILocation(line: 277, column: 20, scope: !461)
!461 = distinct !DILexicalBlock(scope: !459, file: !4, line: 277, column: 8)
!462 = !DILocation(line: 277, column: 8, scope: !461)
!463 = !DILocation(line: 277, column: 24, scope: !461)
!464 = !DILocation(line: 277, column: 8, scope: !459)
!465 = !DILocation(line: 284, column: 26, scope: !466)
!466 = distinct !DILexicalBlock(scope: !350, file: !4, line: 284, column: 7)
!467 = !DILocation(line: 285, column: 28, scope: !466)
!468 = !DILocation(line: 285, column: 5, scope: !466)
!469 = !DILocation(line: 286, column: 5, scope: !466)
!470 = !DILocation(line: 286, column: 27, scope: !466)
!471 = !DILocation(line: 287, column: 28, scope: !466)
!472 = !DILocation(line: 287, column: 5, scope: !466)
!473 = !DILocation(line: 288, column: 5, scope: !466)
!474 = !DILocation(line: 288, column: 27, scope: !466)
!475 = !DILocation(line: 289, column: 28, scope: !466)
!476 = !DILocation(line: 289, column: 5, scope: !466)
!477 = !DILocation(line: 284, column: 7, scope: !350)
!478 = !DILocation(line: 293, column: 41, scope: !350)
!479 = !DILocation(line: 293, column: 3, scope: !350)
!480 = !DILocation(line: 294, column: 3, scope: !350)
!481 = !DILocation(line: 297, column: 5, scope: !482)
!482 = distinct !DILexicalBlock(scope: !350, file: !4, line: 295, column: 7)
!483 = !DILocation(line: 295, column: 7, scope: !482)
!484 = !DILocation(line: 297, column: 39, scope: !482)
!485 = !DILocation(line: 295, column: 7, scope: !350)
!486 = !DILocation(line: 301, column: 37, scope: !350)
!487 = !DILocation(line: 302, column: 5, scope: !350)
!488 = !DILocation(line: 302, column: 13, scope: !350)
!489 = !DILocation(line: 302, column: 37, scope: !350)
!490 = !{!142, !148, i64 312}
!491 = !DILocation(line: 301, column: 23, scope: !350)
!492 = !DILocation(line: 301, column: 21, scope: !350)
!493 = !DILocation(line: 304, column: 24, scope: !350)
!494 = !DILocation(line: 304, column: 3, scope: !350)
!495 = !DILocation(line: 313, column: 22, scope: !496)
!496 = distinct !DILexicalBlock(scope: !497, file: !4, line: 313, column: 8)
!497 = distinct !DILexicalBlock(scope: !350, file: !4, line: 309, column: 6)
!498 = !DILocation(line: 309, column: 3, scope: !350)
!499 = !DILocation(line: 310, column: 8, scope: !500)
!500 = distinct !DILexicalBlock(scope: !497, file: !4, line: 310, column: 8)
!501 = !DILocation(line: 310, column: 16, scope: !500)
!502 = !DILocation(line: 310, column: 8, scope: !497)
!503 = !DILocation(line: 313, column: 44, scope: !496)
!504 = !DILocation(line: 313, column: 28, scope: !496)
!505 = !DILocation(line: 314, column: 29, scope: !496)
!506 = !DILocation(line: 314, column: 17, scope: !496)
!507 = !DILocation(line: 314, column: 14, scope: !496)
!508 = !DILocation(line: 313, column: 8, scope: !497)
!509 = !DILocation(line: 317, column: 12, scope: !350)
!510 = !DILocation(line: 317, column: 30, scope: !350)
!511 = !DILocation(line: 317, column: 3, scope: !497)
!512 = distinct !{!512, !498, !513, !514, !515}
!513 = !DILocation(line: 317, column: 33, scope: !350)
!514 = !{!"llvm.loop.mustprogress"}
!515 = !{!"llvm.loop.unroll.disable"}
!516 = !DILocation(line: 0, scope: !350)
!517 = !DILocation(line: 188, column: 9, scope: !336)
!518 = !DILocation(line: 188, column: 17, scope: !336)
!519 = distinct !{!519, !363, !520, !514, !515}
!520 = !DILocation(line: 324, column: 2, scope: !336)
!521 = !DILocation(line: 329, column: 4, scope: !336)
!522 = !DILocation(line: 326, column: 1, scope: !336)
!523 = !DILocation(line: 328, column: 36, scope: !336)
!524 = !DILocation(line: 329, column: 12, scope: !336)
!525 = !DILocation(line: 329, column: 36, scope: !336)
!526 = !DILocation(line: 328, column: 22, scope: !336)
!527 = !DILocation(line: 328, column: 20, scope: !336)
!528 = !DILocation(line: 331, column: 2, scope: !336)
!529 = !DILocation(line: 332, column: 1, scope: !336)
!530 = !DISubprogram(name: "lzma_vli_decode", scope: !14, file: !14, line: 154, type: !531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !165)
!531 = !DISubroutineType(types: !532)
!532 = !{!227, !351, !339, !100, !339, !65}
!533 = !DISubprogram(name: "lzma_check_finish", scope: !25, file: !25, line: 82, type: !167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !165)
!534 = !DISubprogram(name: "lzma_check_size", scope: !77, file: !77, line: 95, type: !535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !165)
!535 = !DISubroutineType(types: !536)
!536 = !{!40, !170}
!537 = !DISubprogram(name: "lzma_crc32", scope: !77, file: !77, line: 119, type: !538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !165)
!538 = !DISubroutineType(types: !539)
!539 = !{!40, !100, !65, !40}
!540 = !DISubprogram(name: "lzma_vli_size", scope: !14, file: !14, line: 165, type: !541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !165)
!541 = !DISubroutineType(types: !542)
!542 = !{!40, !13}
!543 = !DISubprogram(name: "lzma_check_update", scope: !25, file: !25, line: 78, type: !544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !165)
!544 = !DISubroutineType(types: !545)
!545 = !{null, !169, !170, !100, !65}
