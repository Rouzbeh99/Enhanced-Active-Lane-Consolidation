; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/common.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_allocator = type { ptr, ptr, ptr }
%struct.lzma_filter_info_s = type { i64, ptr, ptr }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_internal_s = type { %struct.lzma_next_coder_s, i32, i64, [4 x i8], i8 }

@.str = private unnamed_addr constant [22 x i8] c"5.0.5benchmarkcpu2017\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @lzma_version_number() local_unnamed_addr #0 !dbg !142 {
entry:
  ret i32 50000056, !dbg !149
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local nonnull ptr @lzma_version_string() local_unnamed_addr #0 !dbg !150 {
entry:
  ret ptr @.str, !dbg !156
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lzma_alloc(i64 noundef %size, ptr noundef readonly %allocator) local_unnamed_addr #1 !dbg !157 {
entry:
  call void @llvm.dbg.value(metadata i64 %size, metadata !161, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !162, metadata !DIExpression()), !dbg !164
  %cmp = icmp eq i64 %size, 0, !dbg !165
  %spec.store.select = select i1 %cmp, i64 1, i64 %size, !dbg !167
  call void @llvm.dbg.value(metadata i64 %spec.store.select, metadata !161, metadata !DIExpression()), !dbg !164
  %cmp1.not = icmp eq ptr %allocator, null, !dbg !168
  br i1 %cmp1.not, label %if.else, label %land.lhs.true, !dbg !170

land.lhs.true:                                    ; preds = %entry
  %0 = load ptr, ptr %allocator, align 8, !dbg !171, !tbaa !172
  %cmp2.not = icmp eq ptr %0, null, !dbg !177
  br i1 %cmp2.not, label %if.else, label %if.then3, !dbg !178

if.then3:                                         ; preds = %land.lhs.true
  %opaque = getelementptr inbounds %struct.lzma_allocator, ptr %allocator, i64 0, i32 2, !dbg !179
  %1 = load ptr, ptr %opaque, align 8, !dbg !179, !tbaa !180
  %call = tail call ptr %0(ptr noundef %1, i64 noundef 1, i64 noundef %spec.store.select) #9, !dbg !181
  call void @llvm.dbg.value(metadata ptr %call, metadata !163, metadata !DIExpression()), !dbg !164
  br label %if.end6, !dbg !182

if.else:                                          ; preds = %land.lhs.true, %entry
  %call5 = tail call noalias ptr @malloc(i64 noundef %spec.store.select) #10, !dbg !183
  call void @llvm.dbg.value(metadata ptr %call5, metadata !163, metadata !DIExpression()), !dbg !164
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %ptr.0 = phi ptr [ %call, %if.then3 ], [ %call5, %if.else ], !dbg !184
  call void @llvm.dbg.value(metadata ptr %ptr.0, metadata !163, metadata !DIExpression()), !dbg !164
  ret ptr %ptr.0, !dbg !185
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @lzma_free(ptr noundef %ptr, ptr noundef readonly %allocator) local_unnamed_addr #1 !dbg !186 {
entry:
  call void @llvm.dbg.value(metadata ptr %ptr, metadata !190, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !191, metadata !DIExpression()), !dbg !192
  %cmp.not = icmp eq ptr %allocator, null, !dbg !193
  br i1 %cmp.not, label %if.else, label %land.lhs.true, !dbg !195

land.lhs.true:                                    ; preds = %entry
  %free = getelementptr inbounds %struct.lzma_allocator, ptr %allocator, i64 0, i32 1, !dbg !196
  %0 = load ptr, ptr %free, align 8, !dbg !196, !tbaa !197
  %cmp1.not = icmp eq ptr %0, null, !dbg !198
  br i1 %cmp1.not, label %if.else, label %if.then, !dbg !199

if.then:                                          ; preds = %land.lhs.true
  %opaque = getelementptr inbounds %struct.lzma_allocator, ptr %allocator, i64 0, i32 2, !dbg !200
  %1 = load ptr, ptr %opaque, align 8, !dbg !200, !tbaa !180
  tail call void %0(ptr noundef %1, ptr noundef %ptr) #9, !dbg !201
  br label %if.end, !dbg !201

if.else:                                          ; preds = %land.lhs.true, %entry
  tail call void @free(ptr noundef %ptr) #9, !dbg !202
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !203
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn uwtable
define dso_local i64 @lzma_bufcpy(ptr noalias nocapture noundef readonly %in, ptr noalias nocapture noundef %in_pos, i64 noundef %in_size, ptr noalias nocapture noundef writeonly %out, ptr noalias nocapture noundef %out_pos, i64 noundef %out_size) local_unnamed_addr #5 !dbg !204 {
entry:
  call void @llvm.dbg.value(metadata ptr %in, metadata !208, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !209, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !210, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata ptr %out, metadata !211, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !212, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !213, metadata !DIExpression()), !dbg !218
  %0 = load i64, ptr %in_pos, align 8, !dbg !219, !tbaa !220
  %sub = sub i64 %in_size, %0, !dbg !222
  call void @llvm.dbg.value(metadata i64 %sub, metadata !214, metadata !DIExpression()), !dbg !218
  %1 = load i64, ptr %out_pos, align 8, !dbg !223, !tbaa !220
  %sub1 = sub i64 %out_size, %1, !dbg !224
  call void @llvm.dbg.value(metadata i64 %sub1, metadata !216, metadata !DIExpression()), !dbg !218
  %2 = tail call i64 @llvm.umin.i64(i64 %sub, i64 %sub1), !dbg !225
  call void @llvm.dbg.value(metadata i64 %2, metadata !217, metadata !DIExpression()), !dbg !218
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %1, !dbg !226
  %add.ptr2 = getelementptr inbounds i8, ptr %in, i64 %0, !dbg !227
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %add.ptr2, i64 %2, i1 false), !dbg !228
  %add = add i64 %2, %0, !dbg !229
  store i64 %add, ptr %in_pos, align 8, !dbg !229, !tbaa !220
  %add3 = add i64 %2, %1, !dbg !230
  store i64 %add3, ptr %out_pos, align 8, !dbg !230, !tbaa !220
  ret i64 %2, !dbg !231
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_next_filter_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #1 !dbg !232 {
entry:
  call void @llvm.dbg.value(metadata ptr %next, metadata !247, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !248, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata ptr %filters, metadata !249, metadata !DIExpression()), !dbg !250
  %init = getelementptr inbounds %struct.lzma_filter_info_s, ptr %filters, i64 0, i32 1, !dbg !251
  %0 = load ptr, ptr %init, align 8, !dbg !251, !tbaa !254
  %1 = ptrtoint ptr %0 to i64, !dbg !251
  %init1 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 2, !dbg !251
  %2 = load i64, ptr %init1, align 8, !dbg !251, !tbaa !256
  %cmp.not = icmp eq i64 %2, %1, !dbg !251
  %cmp.not.i = icmp eq i64 %2, 0
  %or.cond = or i1 %cmp.not, %cmp.not.i, !dbg !258
  call void @llvm.dbg.value(metadata ptr %next, metadata !259, metadata !DIExpression()) #9, !dbg !265
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !264, metadata !DIExpression()) #9, !dbg !265
  br i1 %or.cond, label %if.end, label %if.then.i, !dbg !258

if.then.i:                                        ; preds = %entry
  %end.i = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 4, !dbg !267
  %3 = load ptr, ptr %end.i, align 8, !dbg !267, !tbaa !271
  %cmp1.not.i = icmp eq ptr %3, null, !dbg !272
  %4 = load ptr, ptr %next, align 8, !dbg !273, !tbaa !274
  br i1 %cmp1.not.i, label %if.else.i, label %if.then2.i, !dbg !275

if.then2.i:                                       ; preds = %if.then.i
  tail call void %3(ptr noundef %4, ptr noundef %allocator) #9, !dbg !276
  br label %if.end.i, !dbg !276

if.else.i:                                        ; preds = %if.then.i
  call void @llvm.dbg.value(metadata ptr %4, metadata !190, metadata !DIExpression()) #9, !dbg !277
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !191, metadata !DIExpression()) #9, !dbg !277
  %cmp.not.i.i = icmp eq ptr %allocator, null, !dbg !279
  br i1 %cmp.not.i.i, label %if.else.i.i, label %land.lhs.true.i.i, !dbg !280

land.lhs.true.i.i:                                ; preds = %if.else.i
  %free.i.i = getelementptr inbounds %struct.lzma_allocator, ptr %allocator, i64 0, i32 1, !dbg !281
  %5 = load ptr, ptr %free.i.i, align 8, !dbg !281, !tbaa !197
  %cmp1.not.i.i = icmp eq ptr %5, null, !dbg !282
  br i1 %cmp1.not.i.i, label %if.else.i.i, label %if.then.i.i, !dbg !283

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %opaque.i.i = getelementptr inbounds %struct.lzma_allocator, ptr %allocator, i64 0, i32 2, !dbg !284
  %6 = load ptr, ptr %opaque.i.i, align 8, !dbg !284, !tbaa !180
  tail call void %5(ptr noundef %6, ptr noundef %4) #9, !dbg !285
  br label %if.end.i, !dbg !285

if.else.i.i:                                      ; preds = %land.lhs.true.i.i, %if.else.i
  tail call void @free(ptr noundef %4) #9, !dbg !286
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i.i, %if.then.i.i, %if.then2.i
  store ptr null, ptr %next, align 8, !dbg !287, !tbaa.struct !288
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %next, i64 8, !dbg !287
  store i64 -1, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8, !dbg !287, !tbaa.struct !290
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %next, i64 16, !dbg !287
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0..sroa_idx.i, i8 0, i64 48, i1 false) #9, !dbg !287
  %.pr.pre = load ptr, ptr %init, align 8, !dbg !258, !tbaa !254
  %.pre23 = ptrtoint ptr %.pr.pre to i64, !dbg !258
  br label %if.end, !dbg !291

if.end:                                           ; preds = %if.end.i, %entry
  %.pre-phi = phi i64 [ %1, %entry ], [ %.pre23, %if.end.i ], !dbg !258
  %7 = phi ptr [ %0, %entry ], [ %.pr.pre, %if.end.i ], !dbg !258
  store i64 %.pre-phi, ptr %init1, align 8, !dbg !258, !tbaa !256
  %8 = load i64, ptr %filters, align 8, !dbg !292, !tbaa !293
  %id6 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 1, !dbg !294
  store i64 %8, ptr %id6, align 8, !dbg !295, !tbaa !296
  %cmp9 = icmp eq ptr %7, null, !dbg !297
  br i1 %cmp9, label %cond.end, label %cond.false, !dbg !298

cond.false:                                       ; preds = %if.end
  %call = tail call i32 %7(ptr noundef nonnull %next, ptr noundef %allocator, ptr noundef nonnull %filters) #9, !dbg !299
  br label %cond.end, !dbg !298

cond.end:                                         ; preds = %if.end, %cond.false
  %cond = phi i32 [ %call, %cond.false ], [ 0, %if.end ], !dbg !298
  ret i32 %cond, !dbg !300
}

; Function Attrs: nounwind uwtable
define dso_local void @lzma_next_end(ptr nocapture noundef %next, ptr noundef %allocator) local_unnamed_addr #1 !dbg !260 {
entry:
  call void @llvm.dbg.value(metadata ptr %next, metadata !259, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !264, metadata !DIExpression()), !dbg !301
  %init = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 2, !dbg !302
  %0 = load i64, ptr %init, align 8, !dbg !302, !tbaa !256
  %cmp.not = icmp eq i64 %0, 0, !dbg !303
  br i1 %cmp.not, label %if.end8, label %if.then, !dbg !304

if.then:                                          ; preds = %entry
  %end = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 4, !dbg !305
  %1 = load ptr, ptr %end, align 8, !dbg !305, !tbaa !271
  %cmp1.not = icmp eq ptr %1, null, !dbg !306
  %2 = load ptr, ptr %next, align 8, !dbg !307, !tbaa !274
  br i1 %cmp1.not, label %if.else, label %if.then2, !dbg !308

if.then2:                                         ; preds = %if.then
  tail call void %1(ptr noundef %2, ptr noundef %allocator) #9, !dbg !309
  br label %if.end, !dbg !309

if.else:                                          ; preds = %if.then
  call void @llvm.dbg.value(metadata ptr %2, metadata !190, metadata !DIExpression()) #9, !dbg !310
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !191, metadata !DIExpression()) #9, !dbg !310
  %cmp.not.i = icmp eq ptr %allocator, null, !dbg !312
  br i1 %cmp.not.i, label %if.else.i, label %land.lhs.true.i, !dbg !313

land.lhs.true.i:                                  ; preds = %if.else
  %free.i = getelementptr inbounds %struct.lzma_allocator, ptr %allocator, i64 0, i32 1, !dbg !314
  %3 = load ptr, ptr %free.i, align 8, !dbg !314, !tbaa !197
  %cmp1.not.i = icmp eq ptr %3, null, !dbg !315
  br i1 %cmp1.not.i, label %if.else.i, label %if.then.i, !dbg !316

if.then.i:                                        ; preds = %land.lhs.true.i
  %opaque.i = getelementptr inbounds %struct.lzma_allocator, ptr %allocator, i64 0, i32 2, !dbg !317
  %4 = load ptr, ptr %opaque.i, align 8, !dbg !317, !tbaa !180
  tail call void %3(ptr noundef %4, ptr noundef %2) #9, !dbg !318
  br label %if.end, !dbg !318

if.else.i:                                        ; preds = %land.lhs.true.i, %if.else
  tail call void @free(ptr noundef %2) #9, !dbg !319
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then.i, %if.then2
  store ptr null, ptr %next, align 8, !dbg !320, !tbaa.struct !288
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %next, i64 8, !dbg !320
  store i64 -1, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 8, !dbg !320, !tbaa.struct !290
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %next, i64 16, !dbg !320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0..sroa_idx, i8 0, i64 48, i1 false), !dbg !320
  br label %if.end8, !dbg !321

if.end8:                                          ; preds = %if.end, %entry
  ret void, !dbg !322
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_next_filter_update(ptr nocapture noundef readonly %next, ptr noundef %allocator, ptr noundef %reversed_filters) local_unnamed_addr #1 !dbg !323 {
entry:
  call void @llvm.dbg.value(metadata ptr %next, metadata !327, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !328, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata ptr %reversed_filters, metadata !329, metadata !DIExpression()), !dbg !330
  %0 = load i64, ptr %reversed_filters, align 8, !dbg !331, !tbaa !333
  %id1 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 1, !dbg !335
  %1 = load i64, ptr %id1, align 8, !dbg !335, !tbaa !296
  %cmp.not = icmp eq i64 %0, %1, !dbg !336
  br i1 %cmp.not, label %if.end, label %return, !dbg !337

if.end:                                           ; preds = %entry
  %cmp4 = icmp eq i64 %0, -1, !dbg !338
  br i1 %cmp4, label %return, label %if.end6, !dbg !340

if.end6:                                          ; preds = %if.end
  %update = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 7, !dbg !341
  %2 = load ptr, ptr %update, align 8, !dbg !341, !tbaa !342
  %3 = load ptr, ptr %next, align 8, !dbg !343, !tbaa !274
  %call = tail call i32 %2(ptr noundef %3, ptr noundef %allocator, ptr noundef null, ptr noundef nonnull %reversed_filters) #9, !dbg !344
  br label %return, !dbg !345

return:                                           ; preds = %if.end, %entry, %if.end6
  %retval.0 = phi i32 [ %call, %if.end6 ], [ 11, %entry ], [ 0, %if.end ], !dbg !330
  ret i32 %retval.0, !dbg !346
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_strm_init(ptr noundef %strm) local_unnamed_addr #1 !dbg !347 {
entry:
  call void @llvm.dbg.value(metadata ptr %strm, metadata !376, metadata !DIExpression()), !dbg !377
  %cmp = icmp eq ptr %strm, null, !dbg !378
  br i1 %cmp, label %return, label %if.end, !dbg !380

if.end:                                           ; preds = %entry
  %internal = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 7, !dbg !381
  %0 = load ptr, ptr %internal, align 8, !dbg !381, !tbaa !383
  %cmp1 = icmp eq ptr %0, null, !dbg !385
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !386

if.then2:                                         ; preds = %if.end
  %allocator = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 6, !dbg !387
  %1 = load ptr, ptr %allocator, align 8, !dbg !387, !tbaa !389
  call void @llvm.dbg.value(metadata i64 88, metadata !161, metadata !DIExpression()) #9, !dbg !390
  call void @llvm.dbg.value(metadata ptr %1, metadata !162, metadata !DIExpression()) #9, !dbg !390
  call void @llvm.dbg.value(metadata i64 88, metadata !161, metadata !DIExpression()) #9, !dbg !390
  %cmp1.not.i = icmp eq ptr %1, null, !dbg !392
  br i1 %cmp1.not.i, label %if.else.i, label %land.lhs.true.i, !dbg !393

land.lhs.true.i:                                  ; preds = %if.then2
  %2 = load ptr, ptr %1, align 8, !dbg !394, !tbaa !172
  %cmp2.not.i = icmp eq ptr %2, null, !dbg !395
  br i1 %cmp2.not.i, label %if.else.i, label %if.then3.i, !dbg !396

if.then3.i:                                       ; preds = %land.lhs.true.i
  %opaque.i = getelementptr inbounds %struct.lzma_allocator, ptr %1, i64 0, i32 2, !dbg !397
  %3 = load ptr, ptr %opaque.i, align 8, !dbg !397, !tbaa !180
  %call.i = tail call ptr %2(ptr noundef %3, i64 noundef 1, i64 noundef 88) #9, !dbg !398
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !163, metadata !DIExpression()) #9, !dbg !390
  br label %lzma_alloc.exit, !dbg !399

if.else.i:                                        ; preds = %land.lhs.true.i, %if.then2
  %call5.i = tail call noalias dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #10, !dbg !400
  call void @llvm.dbg.value(metadata ptr %call5.i, metadata !163, metadata !DIExpression()) #9, !dbg !390
  br label %lzma_alloc.exit

lzma_alloc.exit:                                  ; preds = %if.then3.i, %if.else.i
  %ptr.0.i = phi ptr [ %call.i, %if.then3.i ], [ %call5.i, %if.else.i ], !dbg !401
  call void @llvm.dbg.value(metadata ptr %ptr.0.i, metadata !163, metadata !DIExpression()) #9, !dbg !390
  store ptr %ptr.0.i, ptr %internal, align 8, !dbg !402, !tbaa !383
  %cmp5 = icmp eq ptr %ptr.0.i, null, !dbg !403
  br i1 %cmp5, label %return, label %if.end7, !dbg !405

if.end7:                                          ; preds = %lzma_alloc.exit
  store ptr null, ptr %ptr.0.i, align 8, !dbg !406, !tbaa.struct !288
  %.compoundliteral.sroa.2.0.next.sroa_idx = getelementptr inbounds i8, ptr %ptr.0.i, i64 8, !dbg !406
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next.sroa_idx, align 8, !dbg !406, !tbaa.struct !290
  %.compoundliteral.sroa.3.0.next.sroa_idx = getelementptr inbounds i8, ptr %ptr.0.i, i64 16, !dbg !406
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next.sroa_idx, i8 0, i64 48, i1 false), !dbg !406
  %.pre = load ptr, ptr %internal, align 8, !dbg !407, !tbaa !383
  br label %if.end9, !dbg !408

if.end9:                                          ; preds = %if.end7, %if.end
  %4 = phi ptr [ %.pre, %if.end7 ], [ %0, %if.end ], !dbg !407
  %supported_actions = getelementptr inbounds %struct.lzma_internal_s, ptr %4, i64 0, i32 3, !dbg !409
  %sequence = getelementptr inbounds %struct.lzma_internal_s, ptr %4, i64 0, i32 1, !dbg !410
  store i32 0, ptr %sequence, align 8, !dbg !411, !tbaa !412
  %total_in = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 2, !dbg !415
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %supported_actions, i8 0, i64 5, i1 false), !dbg !416
  store i64 0, ptr %total_in, align 8, !dbg !417, !tbaa !418
  %total_out = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 5, !dbg !419
  store i64 0, ptr %total_out, align 8, !dbg !420, !tbaa !421
  br label %return, !dbg !422

return:                                           ; preds = %lzma_alloc.exit, %entry, %if.end9
  %retval.0 = phi i32 [ 0, %if.end9 ], [ 11, %entry ], [ 5, %lzma_alloc.exit ], !dbg !377
  ret i32 %retval.0, !dbg !423
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_code(ptr noundef %strm, i32 noundef %action) local_unnamed_addr #1 !dbg !424 {
entry:
  %in_pos = alloca i64, align 8
  %out_pos = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %strm, metadata !428, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata i32 %action, metadata !429, metadata !DIExpression()), !dbg !433
  %0 = load ptr, ptr %strm, align 8, !dbg !434, !tbaa !436
  %cmp = icmp eq ptr %0, null, !dbg !437
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !438

land.lhs.true:                                    ; preds = %entry
  %avail_in = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 1, !dbg !439
  %1 = load i64, ptr %avail_in, align 8, !dbg !439, !tbaa !440
  %cmp1.not = icmp eq i64 %1, 0, !dbg !441
  br i1 %cmp1.not, label %lor.lhs.false, label %return, !dbg !442

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %next_out = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 3, !dbg !443
  %2 = load ptr, ptr %next_out, align 8, !dbg !443, !tbaa !444
  %cmp2 = icmp eq ptr %2, null, !dbg !445
  br i1 %cmp2, label %land.lhs.true3, label %lor.lhs.false5, !dbg !446

land.lhs.true3:                                   ; preds = %lor.lhs.false
  %avail_out = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 4, !dbg !447
  %3 = load i64, ptr %avail_out, align 8, !dbg !447, !tbaa !448
  %cmp4.not = icmp eq i64 %3, 0, !dbg !449
  br i1 %cmp4.not, label %lor.lhs.false5, label %return, !dbg !450

lor.lhs.false5:                                   ; preds = %land.lhs.true3, %lor.lhs.false
  %internal = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 7, !dbg !451
  %4 = load ptr, ptr %internal, align 8, !dbg !451, !tbaa !383
  %cmp6 = icmp eq ptr %4, null, !dbg !452
  br i1 %cmp6, label %return, label %lor.lhs.false7, !dbg !453

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %code = getelementptr inbounds %struct.lzma_next_coder_s, ptr %4, i64 0, i32 3, !dbg !454
  %5 = load ptr, ptr %code, align 8, !dbg !454, !tbaa !455
  %cmp9 = icmp eq ptr %5, null, !dbg !456
  %cmp11 = icmp ugt i32 %action, 3
  %or.cond = or i1 %cmp11, %cmp9, !dbg !457
  br i1 %or.cond, label %return, label %lor.lhs.false12, !dbg !457

lor.lhs.false12:                                  ; preds = %lor.lhs.false7
  %idxprom = zext i32 %action to i64, !dbg !458
  %arrayidx = getelementptr inbounds %struct.lzma_internal_s, ptr %4, i64 0, i32 3, i64 %idxprom, !dbg !458
  %6 = load i8, ptr %arrayidx, align 1, !dbg !458, !tbaa !459, !range !460
  %tobool.not = icmp eq i8 %6, 0, !dbg !458
  br i1 %tobool.not, label %return, label %if.end, !dbg !461

if.end:                                           ; preds = %lor.lhs.false12
  %reserved_ptr1 = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 8, !dbg !462
  %7 = load ptr, ptr %reserved_ptr1, align 8, !dbg !462, !tbaa !464
  %cmp14.not = icmp eq ptr %7, null, !dbg !465
  br i1 %cmp14.not, label %lor.lhs.false15, label %return, !dbg !466

lor.lhs.false15:                                  ; preds = %if.end
  %reserved_ptr2 = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 9, !dbg !467
  %8 = load ptr, ptr %reserved_ptr2, align 8, !dbg !467, !tbaa !468
  %cmp16.not = icmp eq ptr %8, null, !dbg !469
  br i1 %cmp16.not, label %lor.lhs.false17, label %return, !dbg !470

lor.lhs.false17:                                  ; preds = %lor.lhs.false15
  %reserved_ptr3 = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 10, !dbg !471
  %9 = load ptr, ptr %reserved_ptr3, align 8, !dbg !471, !tbaa !472
  %cmp18.not = icmp eq ptr %9, null, !dbg !473
  br i1 %cmp18.not, label %lor.lhs.false19, label %return, !dbg !474

lor.lhs.false19:                                  ; preds = %lor.lhs.false17
  %reserved_ptr4 = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 11, !dbg !475
  %10 = load ptr, ptr %reserved_ptr4, align 8, !dbg !475, !tbaa !476
  %cmp20.not = icmp eq ptr %10, null, !dbg !477
  br i1 %cmp20.not, label %lor.lhs.false21, label %return, !dbg !478

lor.lhs.false21:                                  ; preds = %lor.lhs.false19
  %reserved_int1 = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 12, !dbg !479
  %11 = load i64, ptr %reserved_int1, align 8, !dbg !479, !tbaa !480
  %cmp22.not = icmp eq i64 %11, 0, !dbg !481
  br i1 %cmp22.not, label %lor.lhs.false23, label %return, !dbg !482

lor.lhs.false23:                                  ; preds = %lor.lhs.false21
  %reserved_int2 = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 13, !dbg !483
  %12 = load i64, ptr %reserved_int2, align 8, !dbg !483, !tbaa !484
  %cmp24.not = icmp eq i64 %12, 0, !dbg !485
  br i1 %cmp24.not, label %lor.lhs.false25, label %return, !dbg !486

lor.lhs.false25:                                  ; preds = %lor.lhs.false23
  %reserved_int3 = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 14, !dbg !487
  %13 = load i64, ptr %reserved_int3, align 8, !dbg !487, !tbaa !488
  %cmp26.not = icmp eq i64 %13, 0, !dbg !489
  br i1 %cmp26.not, label %lor.lhs.false27, label %return, !dbg !490

lor.lhs.false27:                                  ; preds = %lor.lhs.false25
  %reserved_int4 = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 15, !dbg !491
  %14 = load i64, ptr %reserved_int4, align 8, !dbg !491, !tbaa !492
  %cmp28.not = icmp eq i64 %14, 0, !dbg !493
  br i1 %cmp28.not, label %lor.lhs.false29, label %return, !dbg !494

lor.lhs.false29:                                  ; preds = %lor.lhs.false27
  %reserved_enum1 = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 16, !dbg !495
  %15 = load i32, ptr %reserved_enum1, align 8, !dbg !495, !tbaa !496
  %cmp30.not = icmp eq i32 %15, 0, !dbg !497
  br i1 %cmp30.not, label %lor.lhs.false31, label %return, !dbg !498

lor.lhs.false31:                                  ; preds = %lor.lhs.false29
  %reserved_enum2 = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 17, !dbg !499
  %16 = load i32, ptr %reserved_enum2, align 4, !dbg !499, !tbaa !500
  %cmp32.not = icmp eq i32 %16, 0, !dbg !501
  br i1 %cmp32.not, label %if.end34, label %return, !dbg !502

if.end34:                                         ; preds = %lor.lhs.false31
  %sequence = getelementptr inbounds %struct.lzma_internal_s, ptr %4, i64 0, i32 1, !dbg !503
  %17 = load i32, ptr %sequence, align 8, !dbg !503, !tbaa !412
  switch i32 %17, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb45
    i32 2, label %sw.bb54
    i32 3, label %sw.bb63
    i32 4, label %return
  ], !dbg !504

sw.bb:                                            ; preds = %if.end34
  %action.off = add i32 %action, -1, !dbg !505
  %switch191 = icmp ult i32 %action.off, 3, !dbg !505
  br i1 %switch191, label %sw.epilog74.sink.split, label %sw.epilog74, !dbg !505

sw.bb45:                                          ; preds = %if.end34
  %cmp46.not = icmp eq i32 %action, 1, !dbg !507
  br i1 %cmp46.not, label %lor.lhs.false47, label %return, !dbg !509

lor.lhs.false47:                                  ; preds = %sw.bb45
  %avail_in49 = getelementptr inbounds %struct.lzma_internal_s, ptr %4, i64 0, i32 2, !dbg !510
  %18 = load i64, ptr %avail_in49, align 8, !dbg !510, !tbaa !511
  %avail_in50 = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 1, !dbg !512
  %19 = load i64, ptr %avail_in50, align 8, !dbg !512, !tbaa !440
  %cmp51.not = icmp eq i64 %18, %19, !dbg !513
  br i1 %cmp51.not, label %sw.epilog74, label %return, !dbg !514

sw.bb54:                                          ; preds = %if.end34
  %cmp55.not = icmp eq i32 %action, 2, !dbg !515
  br i1 %cmp55.not, label %lor.lhs.false56, label %return, !dbg !517

lor.lhs.false56:                                  ; preds = %sw.bb54
  %avail_in58 = getelementptr inbounds %struct.lzma_internal_s, ptr %4, i64 0, i32 2, !dbg !518
  %20 = load i64, ptr %avail_in58, align 8, !dbg !518, !tbaa !511
  %avail_in59 = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 1, !dbg !519
  %21 = load i64, ptr %avail_in59, align 8, !dbg !519, !tbaa !440
  %cmp60.not = icmp eq i64 %20, %21, !dbg !520
  br i1 %cmp60.not, label %sw.epilog74, label %return, !dbg !521

sw.bb63:                                          ; preds = %if.end34
  %cmp64.not = icmp eq i32 %action, 3, !dbg !522
  br i1 %cmp64.not, label %lor.lhs.false65, label %return, !dbg !524

lor.lhs.false65:                                  ; preds = %sw.bb63
  %avail_in67 = getelementptr inbounds %struct.lzma_internal_s, ptr %4, i64 0, i32 2, !dbg !525
  %22 = load i64, ptr %avail_in67, align 8, !dbg !525, !tbaa !511
  %avail_in68 = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 1, !dbg !526
  %23 = load i64, ptr %avail_in68, align 8, !dbg !526, !tbaa !440
  %cmp69.not = icmp eq i64 %22, %23, !dbg !527
  br i1 %cmp69.not, label %sw.epilog74, label %return, !dbg !528

sw.default:                                       ; preds = %if.end34
  br label %return, !dbg !529

sw.epilog74.sink.split:                           ; preds = %sw.bb
  store i32 %action, ptr %sequence, align 8, !dbg !530, !tbaa !412
  br label %sw.epilog74, !dbg !532

sw.epilog74:                                      ; preds = %sw.bb, %sw.epilog74.sink.split, %lor.lhs.false65, %lor.lhs.false56, %lor.lhs.false47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in_pos) #9, !dbg !532
  call void @llvm.dbg.value(metadata i64 0, metadata !430, metadata !DIExpression()), !dbg !433
  store i64 0, ptr %in_pos, align 8, !dbg !533, !tbaa !220
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_pos) #9, !dbg !534
  call void @llvm.dbg.value(metadata i64 0, metadata !431, metadata !DIExpression()), !dbg !433
  store i64 0, ptr %out_pos, align 8, !dbg !535, !tbaa !220
  %24 = load ptr, ptr %4, align 8, !dbg !536, !tbaa !537
  %allocator = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 6, !dbg !538
  %25 = load ptr, ptr %allocator, align 8, !dbg !538, !tbaa !389
  %avail_in81 = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 1, !dbg !539
  %26 = load i64, ptr %avail_in81, align 8, !dbg !539, !tbaa !440
  %avail_out83 = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 4, !dbg !540
  %27 = load i64, ptr %avail_out83, align 8, !dbg !540, !tbaa !448
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !430, metadata !DIExpression(DW_OP_deref)), !dbg !433
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !431, metadata !DIExpression(DW_OP_deref)), !dbg !433
  %call = call i32 %5(ptr noundef %24, ptr noundef %25, ptr noundef %0, ptr noundef nonnull %in_pos, i64 noundef %26, ptr noundef %2, ptr noundef nonnull %out_pos, i64 noundef %27, i32 noundef %action) #9, !dbg !541
  call void @llvm.dbg.value(metadata i32 %call, metadata !432, metadata !DIExpression()), !dbg !433
  %28 = load i64, ptr %in_pos, align 8, !dbg !542, !tbaa !220
  call void @llvm.dbg.value(metadata i64 %28, metadata !430, metadata !DIExpression()), !dbg !433
  %29 = load ptr, ptr %strm, align 8, !dbg !543, !tbaa !436
  %add.ptr = getelementptr inbounds i8, ptr %29, i64 %28, !dbg !543
  store ptr %add.ptr, ptr %strm, align 8, !dbg !543, !tbaa !436
  call void @llvm.dbg.value(metadata i64 %28, metadata !430, metadata !DIExpression()), !dbg !433
  %30 = load i64, ptr %avail_in81, align 8, !dbg !544, !tbaa !440
  %sub = sub i64 %30, %28, !dbg !544
  store i64 %sub, ptr %avail_in81, align 8, !dbg !544, !tbaa !440
  call void @llvm.dbg.value(metadata i64 %28, metadata !430, metadata !DIExpression()), !dbg !433
  %total_in = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 2, !dbg !545
  %31 = load i64, ptr %total_in, align 8, !dbg !546, !tbaa !418
  %add = add i64 %31, %28, !dbg !546
  store i64 %add, ptr %total_in, align 8, !dbg !546, !tbaa !418
  %32 = load i64, ptr %out_pos, align 8, !dbg !547, !tbaa !220
  call void @llvm.dbg.value(metadata i64 %32, metadata !431, metadata !DIExpression()), !dbg !433
  %33 = load ptr, ptr %next_out, align 8, !dbg !548, !tbaa !444
  %add.ptr87 = getelementptr inbounds i8, ptr %33, i64 %32, !dbg !548
  store ptr %add.ptr87, ptr %next_out, align 8, !dbg !548, !tbaa !444
  call void @llvm.dbg.value(metadata i64 %32, metadata !431, metadata !DIExpression()), !dbg !433
  %34 = load i64, ptr %avail_out83, align 8, !dbg !549, !tbaa !448
  %sub89 = sub i64 %34, %32, !dbg !549
  store i64 %sub89, ptr %avail_out83, align 8, !dbg !549, !tbaa !448
  call void @llvm.dbg.value(metadata i64 %32, metadata !431, metadata !DIExpression()), !dbg !433
  %total_out = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 5, !dbg !550
  %35 = load i64, ptr %total_out, align 8, !dbg !551, !tbaa !421
  %add90 = add i64 %35, %32, !dbg !551
  store i64 %add90, ptr %total_out, align 8, !dbg !551, !tbaa !421
  %36 = load ptr, ptr %internal, align 8, !dbg !552, !tbaa !383
  %avail_in93 = getelementptr inbounds %struct.lzma_internal_s, ptr %36, i64 0, i32 2, !dbg !553
  store i64 %sub, ptr %avail_in93, align 8, !dbg !554, !tbaa !511
  switch i32 %call, label %sw.default127 [
    i32 0, label %sw.bb94
    i32 1, label %sw.bb109
    i32 2, label %sw.bb124
    i32 3, label %sw.bb124
    i32 4, label %sw.bb124
    i32 6, label %sw.bb124
  ], !dbg !555

sw.bb94:                                          ; preds = %sw.epilog74
  call void @llvm.dbg.value(metadata i64 %32, metadata !431, metadata !DIExpression()), !dbg !433
  %cmp95 = icmp eq i64 %32, 0, !dbg !556
  call void @llvm.dbg.value(metadata i64 %28, metadata !430, metadata !DIExpression()), !dbg !433
  %cmp97 = icmp eq i64 %28, 0
  %or.cond131 = select i1 %cmp95, i1 %cmp97, i1 false, !dbg !559
  %allow_buf_error = getelementptr inbounds %struct.lzma_internal_s, ptr %36, i64 0, i32 4, !dbg !560
  br i1 %or.cond131, label %if.then98, label %if.else105, !dbg !559

if.then98:                                        ; preds = %sw.bb94
  %37 = load i8, ptr %allow_buf_error, align 4, !dbg !561, !tbaa !564, !range !460
  %tobool100.not = icmp eq i8 %37, 0, !dbg !561
  br i1 %tobool100.not, label %if.else, label %sw.epilog130, !dbg !565

if.else:                                          ; preds = %if.then98
  store i8 1, ptr %allow_buf_error, align 4, !dbg !566, !tbaa !564
  br label %sw.epilog130

if.else105:                                       ; preds = %sw.bb94
  store i8 0, ptr %allow_buf_error, align 4, !dbg !567, !tbaa !564
  br label %sw.epilog130

sw.bb109:                                         ; preds = %sw.epilog74
  %sequence111 = getelementptr inbounds %struct.lzma_internal_s, ptr %36, i64 0, i32 1, !dbg !569
  %38 = load i32, ptr %sequence111, align 8, !dbg !569, !tbaa !412
  %.off = add i32 %38, -1, !dbg !571
  %switch = icmp ult i32 %.off, 2, !dbg !571
  %. = select i1 %switch, i32 0, i32 4
  store i32 %., ptr %sequence111, align 8, !dbg !572, !tbaa !412
  br label %sw.bb124, !dbg !573

sw.bb124:                                         ; preds = %sw.bb109, %sw.epilog74, %sw.epilog74, %sw.epilog74, %sw.epilog74
  %allow_buf_error126 = getelementptr inbounds %struct.lzma_internal_s, ptr %36, i64 0, i32 4, !dbg !573
  store i8 0, ptr %allow_buf_error126, align 4, !dbg !574, !tbaa !564
  br label %sw.epilog130, !dbg !575

sw.default127:                                    ; preds = %sw.epilog74
  %sequence129 = getelementptr inbounds %struct.lzma_internal_s, ptr %36, i64 0, i32 1, !dbg !576
  store i32 5, ptr %sequence129, align 8, !dbg !577, !tbaa !412
  br label %sw.epilog130, !dbg !578

sw.epilog130:                                     ; preds = %if.then98, %if.else105, %if.else, %sw.default127, %sw.bb124
  %ret.0 = phi i32 [ %call, %sw.default127 ], [ %call, %sw.bb124 ], [ 0, %if.else ], [ 0, %if.else105 ], [ 10, %if.then98 ], !dbg !433
  call void @llvm.dbg.value(metadata i32 %ret.0, metadata !432, metadata !DIExpression()), !dbg !433
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_pos) #9, !dbg !579
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in_pos) #9, !dbg !579
  br label %return

return:                                           ; preds = %if.end34, %sw.bb63, %lor.lhs.false65, %sw.bb54, %lor.lhs.false56, %sw.bb45, %lor.lhs.false47, %if.end, %lor.lhs.false15, %lor.lhs.false17, %lor.lhs.false19, %lor.lhs.false21, %lor.lhs.false23, %lor.lhs.false25, %lor.lhs.false27, %lor.lhs.false29, %lor.lhs.false31, %land.lhs.true, %land.lhs.true3, %lor.lhs.false5, %lor.lhs.false7, %lor.lhs.false12, %sw.epilog130, %sw.default
  %retval.0 = phi i32 [ 11, %sw.default ], [ %ret.0, %sw.epilog130 ], [ 11, %lor.lhs.false12 ], [ 11, %lor.lhs.false7 ], [ 11, %lor.lhs.false5 ], [ 11, %land.lhs.true3 ], [ 11, %land.lhs.true ], [ 8, %lor.lhs.false31 ], [ 8, %lor.lhs.false29 ], [ 8, %lor.lhs.false27 ], [ 8, %lor.lhs.false25 ], [ 8, %lor.lhs.false23 ], [ 8, %lor.lhs.false21 ], [ 8, %lor.lhs.false19 ], [ 8, %lor.lhs.false17 ], [ 8, %lor.lhs.false15 ], [ 8, %if.end ], [ 11, %lor.lhs.false47 ], [ 11, %sw.bb45 ], [ 11, %lor.lhs.false56 ], [ 11, %sw.bb54 ], [ 11, %lor.lhs.false65 ], [ 11, %sw.bb63 ], [ 1, %if.end34 ], !dbg !433
  ret i32 %retval.0, !dbg !579
}

; Function Attrs: nounwind uwtable
define dso_local void @lzma_end(ptr noundef %strm) local_unnamed_addr #1 !dbg !580 {
entry:
  call void @llvm.dbg.value(metadata ptr %strm, metadata !584, metadata !DIExpression()), !dbg !585
  %cmp.not = icmp eq ptr %strm, null, !dbg !586
  br i1 %cmp.not, label %if.end, label %land.lhs.true, !dbg !588

land.lhs.true:                                    ; preds = %entry
  %internal = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 7, !dbg !589
  %0 = load ptr, ptr %internal, align 8, !dbg !589, !tbaa !383
  %cmp1.not = icmp eq ptr %0, null, !dbg !590
  br i1 %cmp1.not, label %if.end, label %if.then, !dbg !591

if.then:                                          ; preds = %land.lhs.true
  %allocator = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 6, !dbg !592
  %1 = load ptr, ptr %allocator, align 8, !dbg !592, !tbaa !389
  call void @llvm.dbg.value(metadata ptr %0, metadata !259, metadata !DIExpression()) #9, !dbg !594
  call void @llvm.dbg.value(metadata ptr %1, metadata !264, metadata !DIExpression()) #9, !dbg !594
  %init.i = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2, !dbg !596
  %2 = load i64, ptr %init.i, align 8, !dbg !596, !tbaa !256
  %cmp.not.i = icmp eq i64 %2, 0, !dbg !597
  br i1 %cmp.not.i, label %lzma_next_end.exit, label %if.then.i, !dbg !598

if.then.i:                                        ; preds = %if.then
  %end.i = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4, !dbg !599
  %3 = load ptr, ptr %end.i, align 8, !dbg !599, !tbaa !271
  %cmp1.not.i = icmp eq ptr %3, null, !dbg !600
  %4 = load ptr, ptr %0, align 8, !dbg !601, !tbaa !274
  br i1 %cmp1.not.i, label %if.else.i, label %if.then2.i, !dbg !602

if.then2.i:                                       ; preds = %if.then.i
  tail call void %3(ptr noundef %4, ptr noundef %1) #9, !dbg !603
  br label %if.end.i, !dbg !603

if.else.i:                                        ; preds = %if.then.i
  call void @llvm.dbg.value(metadata ptr %4, metadata !190, metadata !DIExpression()) #9, !dbg !604
  call void @llvm.dbg.value(metadata ptr %1, metadata !191, metadata !DIExpression()) #9, !dbg !604
  %cmp.not.i.i = icmp eq ptr %1, null, !dbg !606
  br i1 %cmp.not.i.i, label %if.else.i.i, label %land.lhs.true.i.i, !dbg !607

land.lhs.true.i.i:                                ; preds = %if.else.i
  %free.i.i = getelementptr inbounds %struct.lzma_allocator, ptr %1, i64 0, i32 1, !dbg !608
  %5 = load ptr, ptr %free.i.i, align 8, !dbg !608, !tbaa !197
  %cmp1.not.i.i = icmp eq ptr %5, null, !dbg !609
  br i1 %cmp1.not.i.i, label %if.else.i.i, label %if.then.i.i, !dbg !610

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %opaque.i.i = getelementptr inbounds %struct.lzma_allocator, ptr %1, i64 0, i32 2, !dbg !611
  %6 = load ptr, ptr %opaque.i.i, align 8, !dbg !611, !tbaa !180
  tail call void %5(ptr noundef %6, ptr noundef %4) #9, !dbg !612
  br label %if.end.i, !dbg !612

if.else.i.i:                                      ; preds = %land.lhs.true.i.i, %if.else.i
  tail call void @free(ptr noundef %4) #9, !dbg !613
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i.i, %if.then.i.i, %if.then2.i
  store ptr null, ptr %0, align 8, !dbg !614, !tbaa.struct !288
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %0, i64 8, !dbg !614
  store i64 -1, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8, !dbg !614, !tbaa.struct !290
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %0, i64 16, !dbg !614
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0..sroa_idx.i, i8 0, i64 48, i1 false) #9, !dbg !614
  %.pr = load ptr, ptr %allocator, align 8, !dbg !615, !tbaa !389
  %.pre = load ptr, ptr %internal, align 8, !dbg !616, !tbaa !383
  br label %lzma_next_end.exit, !dbg !617

lzma_next_end.exit:                               ; preds = %if.then, %if.end.i
  %7 = phi ptr [ %0, %if.then ], [ %.pre, %if.end.i ], !dbg !616
  %8 = phi ptr [ %1, %if.then ], [ %.pr, %if.end.i ], !dbg !615
  call void @llvm.dbg.value(metadata ptr %7, metadata !190, metadata !DIExpression()) #9, !dbg !618
  call void @llvm.dbg.value(metadata ptr %8, metadata !191, metadata !DIExpression()) #9, !dbg !618
  %cmp.not.i12 = icmp eq ptr %8, null, !dbg !620
  br i1 %cmp.not.i12, label %if.else.i15, label %land.lhs.true.i, !dbg !621

land.lhs.true.i:                                  ; preds = %lzma_next_end.exit
  %free.i = getelementptr inbounds %struct.lzma_allocator, ptr %8, i64 0, i32 1, !dbg !622
  %9 = load ptr, ptr %free.i, align 8, !dbg !622, !tbaa !197
  %cmp1.not.i13 = icmp eq ptr %9, null, !dbg !623
  br i1 %cmp1.not.i13, label %if.else.i15, label %if.then.i14, !dbg !624

if.then.i14:                                      ; preds = %land.lhs.true.i
  %opaque.i = getelementptr inbounds %struct.lzma_allocator, ptr %8, i64 0, i32 2, !dbg !625
  %10 = load ptr, ptr %opaque.i, align 8, !dbg !625, !tbaa !180
  tail call void %9(ptr noundef %10, ptr noundef %7) #9, !dbg !626
  br label %lzma_free.exit, !dbg !626

if.else.i15:                                      ; preds = %land.lhs.true.i, %lzma_next_end.exit
  tail call void @free(ptr noundef %7) #9, !dbg !627
  br label %lzma_free.exit

lzma_free.exit:                                   ; preds = %if.then.i14, %if.else.i15
  store ptr null, ptr %internal, align 8, !dbg !628, !tbaa !383
  br label %if.end, !dbg !629

if.end:                                           ; preds = %lzma_free.exit, %land.lhs.true, %entry
  ret void, !dbg !630
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_get_check(ptr nocapture noundef readonly %strm) local_unnamed_addr #1 !dbg !631 {
entry:
  call void @llvm.dbg.value(metadata ptr %strm, metadata !637, metadata !DIExpression()), !dbg !638
  %internal = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 7, !dbg !639
  %0 = load ptr, ptr %internal, align 8, !dbg !639, !tbaa !383
  %get_check = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 5, !dbg !641
  %1 = load ptr, ptr %get_check, align 8, !dbg !641, !tbaa !642
  %cmp = icmp eq ptr %1, null, !dbg !643
  br i1 %cmp, label %return, label %if.end, !dbg !644

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %0, align 8, !dbg !645, !tbaa !537
  %call = tail call i32 %1(ptr noundef %2) #9, !dbg !646
  br label %return, !dbg !647

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ], !dbg !638
  ret i32 %retval.0, !dbg !648
}

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_memusage(ptr noundef readonly %strm) local_unnamed_addr #1 !dbg !649 {
entry:
  %memusage = alloca i64, align 8
  %old_memlimit = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %strm, metadata !653, metadata !DIExpression()), !dbg !656
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %memusage) #9, !dbg !657
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old_memlimit) #9, !dbg !658
  %cmp = icmp eq ptr %strm, null, !dbg !659
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !661

lor.lhs.false:                                    ; preds = %entry
  %internal = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 7, !dbg !662
  %0 = load ptr, ptr %internal, align 8, !dbg !662, !tbaa !383
  %cmp1 = icmp eq ptr %0, null, !dbg !663
  br i1 %cmp1, label %cleanup, label %lor.lhs.false2, !dbg !664

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %memconfig = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 6, !dbg !665
  %1 = load ptr, ptr %memconfig, align 8, !dbg !665, !tbaa !666
  %cmp4 = icmp eq ptr %1, null, !dbg !667
  br i1 %cmp4, label %cleanup, label %lor.lhs.false5, !dbg !668

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %2 = load ptr, ptr %0, align 8, !dbg !669, !tbaa !537
  call void @llvm.dbg.value(metadata ptr %memusage, metadata !654, metadata !DIExpression(DW_OP_deref)), !dbg !656
  call void @llvm.dbg.value(metadata ptr %old_memlimit, metadata !655, metadata !DIExpression(DW_OP_deref)), !dbg !656
  %call = call i32 %1(ptr noundef %2, ptr noundef nonnull %memusage, ptr noundef nonnull %old_memlimit, i64 noundef 0) #9, !dbg !670
  %cmp11.not = icmp eq i32 %call, 0, !dbg !671
  %3 = load i64, ptr %memusage, align 8
  %spec.select = select i1 %cmp11.not, i64 %3, i64 0, !dbg !672
  br label %cleanup, !dbg !672

cleanup:                                          ; preds = %lor.lhs.false5, %entry, %lor.lhs.false, %lor.lhs.false2
  %retval.0 = phi i64 [ 0, %lor.lhs.false2 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false5 ], !dbg !656
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_memlimit) #9, !dbg !673
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %memusage) #9, !dbg !673
  ret i64 %retval.0, !dbg !673
}

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_memlimit_get(ptr noundef readonly %strm) local_unnamed_addr #1 !dbg !674 {
entry:
  %old_memlimit = alloca i64, align 8
  %memusage = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %strm, metadata !676, metadata !DIExpression()), !dbg !679
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old_memlimit) #9, !dbg !680
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %memusage) #9, !dbg !681
  %cmp = icmp eq ptr %strm, null, !dbg !682
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !684

lor.lhs.false:                                    ; preds = %entry
  %internal = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 7, !dbg !685
  %0 = load ptr, ptr %internal, align 8, !dbg !685, !tbaa !383
  %cmp1 = icmp eq ptr %0, null, !dbg !686
  br i1 %cmp1, label %cleanup, label %lor.lhs.false2, !dbg !687

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %memconfig = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 6, !dbg !688
  %1 = load ptr, ptr %memconfig, align 8, !dbg !688, !tbaa !666
  %cmp4 = icmp eq ptr %1, null, !dbg !689
  br i1 %cmp4, label %cleanup, label %lor.lhs.false5, !dbg !690

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %2 = load ptr, ptr %0, align 8, !dbg !691, !tbaa !537
  call void @llvm.dbg.value(metadata ptr %old_memlimit, metadata !677, metadata !DIExpression(DW_OP_deref)), !dbg !679
  call void @llvm.dbg.value(metadata ptr %memusage, metadata !678, metadata !DIExpression(DW_OP_deref)), !dbg !679
  %call = call i32 %1(ptr noundef %2, ptr noundef nonnull %memusage, ptr noundef nonnull %old_memlimit, i64 noundef 0) #9, !dbg !692
  %cmp11.not = icmp eq i32 %call, 0, !dbg !693
  %3 = load i64, ptr %old_memlimit, align 8
  %spec.select = select i1 %cmp11.not, i64 %3, i64 0, !dbg !694
  br label %cleanup, !dbg !694

cleanup:                                          ; preds = %lor.lhs.false5, %entry, %lor.lhs.false, %lor.lhs.false2
  %retval.0 = phi i64 [ 0, %lor.lhs.false2 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false5 ], !dbg !679
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %memusage) #9, !dbg !695
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_memlimit) #9, !dbg !695
  ret i64 %retval.0, !dbg !695
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_memlimit_set(ptr noundef readonly %strm, i64 noundef %new_memlimit) local_unnamed_addr #1 !dbg !696 {
entry:
  %old_memlimit = alloca i64, align 8
  %memusage = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %strm, metadata !700, metadata !DIExpression()), !dbg !704
  call void @llvm.dbg.value(metadata i64 %new_memlimit, metadata !701, metadata !DIExpression()), !dbg !704
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old_memlimit) #9, !dbg !705
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %memusage) #9, !dbg !706
  %cmp = icmp eq ptr %strm, null, !dbg !707
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !709

lor.lhs.false:                                    ; preds = %entry
  %internal = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 7, !dbg !710
  %0 = load ptr, ptr %internal, align 8, !dbg !710, !tbaa !383
  %cmp1 = icmp eq ptr %0, null, !dbg !711
  br i1 %cmp1, label %cleanup, label %lor.lhs.false2, !dbg !712

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %memconfig = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 6, !dbg !713
  %1 = load ptr, ptr %memconfig, align 8, !dbg !713, !tbaa !666
  %cmp4 = icmp eq ptr %1, null, !dbg !714
  br i1 %cmp4, label %cleanup, label %if.end, !dbg !715

if.end:                                           ; preds = %lor.lhs.false2
  %2 = add i64 %new_memlimit, -1, !dbg !716
  %3 = icmp ult i64 %2, 32767, !dbg !716
  br i1 %3, label %cleanup, label %if.end8, !dbg !716

if.end8:                                          ; preds = %if.end
  %4 = load ptr, ptr %0, align 8, !dbg !718, !tbaa !537
  call void @llvm.dbg.value(metadata ptr %old_memlimit, metadata !702, metadata !DIExpression(DW_OP_deref)), !dbg !704
  call void @llvm.dbg.value(metadata ptr %memusage, metadata !703, metadata !DIExpression(DW_OP_deref)), !dbg !704
  %call = call i32 %1(ptr noundef %4, ptr noundef nonnull %memusage, ptr noundef nonnull %old_memlimit, i64 noundef %new_memlimit) #9, !dbg !719
  br label %cleanup, !dbg !720

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false, %lor.lhs.false2, %if.end8
  %retval.0 = phi i32 [ %call, %if.end8 ], [ 11, %lor.lhs.false2 ], [ 11, %lor.lhs.false ], [ 11, %entry ], [ 6, %if.end ], !dbg !704
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %memusage) #9, !dbg !721
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_memlimit) #9, !dbg !721
  ret i32 %retval.0, !dbg !721
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !134, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/common.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "4324f888732c15afaa7e948651790b3b")
!2 = !{!3, !19, !25, !32, !131}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 250, baseType: !5, size: 32, elements: !20)
!20 = !{!21, !22, !23, !24}
!21 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!22 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!23 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!24 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 27, baseType: !5, size: 32, elements: !27)
!26 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/check.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!29 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!30 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!31 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !34, file: !33, line: 187, baseType: !5, size: 32, elements: !124)
!33 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_internal_s", file: !33, line: 179, size: 704, elements: !35)
!35 = !{!36, !116, !117, !118, !123}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !34, file: !33, line: 181, baseType: !37, size: 512)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !33, line: 80, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !33, line: 124, size: 512, elements: !39)
!39 = !{!40, !43, !51, !54, !87, !92, !99, !104}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !38, file: !33, line: 126, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !33, line: 78, baseType: null)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !38, file: !33, line: 130, baseType: !44, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !45, line: 63, baseType: !46)
!45 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !47, line: 27, baseType: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !49, line: 45, baseType: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!50 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !38, file: !33, line: 136, baseType: !52, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !53, line: 90, baseType: !50)
!53 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!54 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !38, file: !33, line: 139, baseType: !55, size: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !33, line: 94, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!59, !41, !60, !76, !82, !69, !84, !82, !69, !86}
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !63)
!63 = !{!64, !71, !75}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !62, file: !4, line: 376, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!68, !68, !69, !69}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !50)
!70 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!71 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !62, file: !4, line: 390, baseType: !72, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !68, !68}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !62, file: !4, line: 401, baseType: !68, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !47, line: 24, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !49, line: 38, baseType: !81)
!81 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !38, file: !33, line: 144, baseType: !88, size: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !33, line: 102, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !41, !60}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !38, file: !33, line: 148, baseType: !93, size: 64, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !38, file: !33, line: 152, baseType: !100, size: 64, offset: 384)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{!59, !41, !103, !103, !46}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !38, file: !33, line: 157, baseType: !105, size: 64, offset: 448)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!59, !41, !60, !108, !108}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !111, line: 65, baseType: !112)
!111 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !111, line: 43, size: 128, elements: !113)
!113 = !{!114, !115}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !112, file: !111, line: 54, baseType: !44, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !112, file: !111, line: 63, baseType: !68, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !34, file: !33, line: 194, baseType: !32, size: 32, offset: 512)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !34, file: !33, line: 199, baseType: !69, size: 64, offset: 576)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "supported_actions", scope: !34, file: !33, line: 202, baseType: !119, size: 32, offset: 640)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 32, elements: !121)
!120 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!121 = !{!122}
!122 = !DISubrange(count: 4)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "allow_buf_error", scope: !34, file: !33, line: 206, baseType: !120, size: 8, offset: 672)
!124 = !{!125, !126, !127, !128, !129, !130}
!125 = !DIEnumerator(name: "ISEQ_RUN", value: 0)
!126 = !DIEnumerator(name: "ISEQ_SYNC_FLUSH", value: 1)
!127 = !DIEnumerator(name: "ISEQ_FULL_FLUSH", value: 2)
!128 = !DIEnumerator(name: "ISEQ_FINISH", value: 3)
!129 = !DIEnumerator(name: "ISEQ_END", value: 4)
!130 = !DIEnumerator(name: "ISEQ_ERROR", value: 5)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, baseType: !5, size: 32, elements: !132)
!132 = !{!133}
!133 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!134 = !{!68, !52, !5}
!135 = !{i32 7, !"Dwarf Version", i32 5}
!136 = !{i32 2, !"Debug Info Version", i32 3}
!137 = !{i32 1, !"wchar_size", i32 4}
!138 = !{i32 7, !"PIC Level", i32 2}
!139 = !{i32 7, !"PIE Level", i32 2}
!140 = !{i32 7, !"uwtable", i32 2}
!141 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!142 = distinct !DISubprogram(name: "lzma_version_number", scope: !143, file: !143, line: 21, type: !144, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !148)
!143 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4324f888732c15afaa7e948651790b3b")
!144 = !DISubroutineType(types: !145)
!145 = !{!146}
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !47, line: 26, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !49, line: 42, baseType: !5)
!148 = !{}
!149 = !DILocation(line: 23, column: 2, scope: !142)
!150 = distinct !DISubprogram(name: "lzma_version_string", scope: !143, file: !143, line: 28, type: !151, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !148)
!151 = !DISubroutineType(types: !152)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!155 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!156 = !DILocation(line: 30, column: 2, scope: !150)
!157 = distinct !DISubprogram(name: "lzma_alloc", scope: !143, file: !143, line: 39, type: !158, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !160)
!158 = !DISubroutineType(types: !159)
!159 = !{!68, !69, !60}
!160 = !{!161, !162, !163}
!161 = !DILocalVariable(name: "size", arg: 1, scope: !157, file: !143, line: 39, type: !69)
!162 = !DILocalVariable(name: "allocator", arg: 2, scope: !157, file: !143, line: 39, type: !60)
!163 = !DILocalVariable(name: "ptr", scope: !157, file: !143, line: 45, type: !68)
!164 = !DILocation(line: 0, scope: !157)
!165 = !DILocation(line: 42, column: 11, scope: !166)
!166 = distinct !DILexicalBlock(scope: !157, file: !143, line: 42, column: 6)
!167 = !DILocation(line: 42, column: 6, scope: !157)
!168 = !DILocation(line: 47, column: 16, scope: !169)
!169 = distinct !DILexicalBlock(scope: !157, file: !143, line: 47, column: 6)
!170 = !DILocation(line: 47, column: 24, scope: !169)
!171 = !DILocation(line: 47, column: 38, scope: !169)
!172 = !{!173, !174, i64 0}
!173 = !{!"", !174, i64 0, !174, i64 8, !174, i64 16}
!174 = !{!"any pointer", !175, i64 0}
!175 = !{!"omnipotent char", !176, i64 0}
!176 = !{!"Simple C/C++ TBAA"}
!177 = !DILocation(line: 47, column: 44, scope: !169)
!178 = !DILocation(line: 47, column: 6, scope: !157)
!179 = !DILocation(line: 48, column: 37, scope: !169)
!180 = !{!173, !174, i64 16}
!181 = !DILocation(line: 48, column: 9, scope: !169)
!182 = !DILocation(line: 48, column: 3, scope: !169)
!183 = !DILocation(line: 50, column: 9, scope: !169)
!184 = !DILocation(line: 0, scope: !169)
!185 = !DILocation(line: 52, column: 2, scope: !157)
!186 = distinct !DISubprogram(name: "lzma_free", scope: !143, file: !143, line: 57, type: !187, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !189)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !68, !60}
!189 = !{!190, !191}
!190 = !DILocalVariable(name: "ptr", arg: 1, scope: !186, file: !143, line: 57, type: !68)
!191 = !DILocalVariable(name: "allocator", arg: 2, scope: !186, file: !143, line: 57, type: !60)
!192 = !DILocation(line: 0, scope: !186)
!193 = !DILocation(line: 59, column: 16, scope: !194)
!194 = distinct !DILexicalBlock(scope: !186, file: !143, line: 59, column: 6)
!195 = !DILocation(line: 59, column: 24, scope: !194)
!196 = !DILocation(line: 59, column: 38, scope: !194)
!197 = !{!173, !174, i64 8}
!198 = !DILocation(line: 59, column: 43, scope: !194)
!199 = !DILocation(line: 59, column: 6, scope: !186)
!200 = !DILocation(line: 60, column: 30, scope: !194)
!201 = !DILocation(line: 60, column: 3, scope: !194)
!202 = !DILocation(line: 62, column: 3, scope: !194)
!203 = !DILocation(line: 64, column: 2, scope: !186)
!204 = distinct !DISubprogram(name: "lzma_bufcpy", scope: !143, file: !143, line: 73, type: !205, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !207)
!205 = !DISubroutineType(types: !206)
!206 = !{!69, !76, !82, !69, !84, !82, !69}
!207 = !{!208, !209, !210, !211, !212, !213, !214, !216, !217}
!208 = !DILocalVariable(name: "in", arg: 1, scope: !204, file: !143, line: 73, type: !76)
!209 = !DILocalVariable(name: "in_pos", arg: 2, scope: !204, file: !143, line: 73, type: !82)
!210 = !DILocalVariable(name: "in_size", arg: 3, scope: !204, file: !143, line: 74, type: !69)
!211 = !DILocalVariable(name: "out", arg: 4, scope: !204, file: !143, line: 74, type: !84)
!212 = !DILocalVariable(name: "out_pos", arg: 5, scope: !204, file: !143, line: 75, type: !82)
!213 = !DILocalVariable(name: "out_size", arg: 6, scope: !204, file: !143, line: 75, type: !69)
!214 = !DILocalVariable(name: "in_avail", scope: !204, file: !143, line: 77, type: !215)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!216 = !DILocalVariable(name: "out_avail", scope: !204, file: !143, line: 78, type: !215)
!217 = !DILocalVariable(name: "copy_size", scope: !204, file: !143, line: 79, type: !215)
!218 = !DILocation(line: 0, scope: !204)
!219 = !DILocation(line: 77, column: 36, scope: !204)
!220 = !{!221, !221, i64 0}
!221 = !{!"long", !175, i64 0}
!222 = !DILocation(line: 77, column: 34, scope: !204)
!223 = !DILocation(line: 78, column: 38, scope: !204)
!224 = !DILocation(line: 78, column: 36, scope: !204)
!225 = !DILocation(line: 79, column: 27, scope: !204)
!226 = !DILocation(line: 81, column: 13, scope: !204)
!227 = !DILocation(line: 81, column: 28, scope: !204)
!228 = !DILocation(line: 81, column: 2, scope: !204)
!229 = !DILocation(line: 83, column: 10, scope: !204)
!230 = !DILocation(line: 84, column: 11, scope: !204)
!231 = !DILocation(line: 86, column: 2, scope: !204)
!232 = distinct !DISubprogram(name: "lzma_next_filter_init", scope: !143, file: !143, line: 91, type: !233, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !246)
!233 = !DISubroutineType(types: !234)
!234 = !{!59, !235, !60, !236}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !33, line: 82, baseType: !239)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !33, line: 109, size: 192, elements: !240)
!240 = !{!241, !242, !245}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !239, file: !33, line: 112, baseType: !44, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !239, file: !33, line: 116, baseType: !243, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !33, line: 86, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !239, file: !33, line: 119, baseType: !68, size: 64, offset: 128)
!246 = !{!247, !248, !249}
!247 = !DILocalVariable(name: "next", arg: 1, scope: !232, file: !143, line: 91, type: !235)
!248 = !DILocalVariable(name: "allocator", arg: 2, scope: !232, file: !143, line: 91, type: !60)
!249 = !DILocalVariable(name: "filters", arg: 3, scope: !232, file: !143, line: 92, type: !236)
!250 = !DILocation(line: 0, scope: !232)
!251 = !DILocation(line: 94, column: 2, scope: !252)
!252 = distinct !DILexicalBlock(scope: !253, file: !143, line: 94, column: 2)
!253 = distinct !DILexicalBlock(scope: !232, file: !143, line: 94, column: 2)
!254 = !{!255, !174, i64 8}
!255 = !{!"lzma_filter_info_s", !221, i64 0, !174, i64 8, !174, i64 16}
!256 = !{!257, !221, i64 16}
!257 = !{!"lzma_next_coder_s", !174, i64 0, !221, i64 8, !221, i64 16, !174, i64 24, !174, i64 32, !174, i64 40, !174, i64 48, !174, i64 56}
!258 = !DILocation(line: 94, column: 2, scope: !253)
!259 = !DILocalVariable(name: "next", arg: 1, scope: !260, file: !143, line: 120, type: !235)
!260 = distinct !DISubprogram(name: "lzma_next_end", scope: !143, file: !143, line: 120, type: !261, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !263)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !235, !60}
!263 = !{!259, !264}
!264 = !DILocalVariable(name: "allocator", arg: 2, scope: !260, file: !143, line: 120, type: !60)
!265 = !DILocation(line: 0, scope: !260, inlinedAt: !266)
!266 = distinct !DILocation(line: 94, column: 2, scope: !252)
!267 = !DILocation(line: 126, column: 13, scope: !268, inlinedAt: !266)
!268 = distinct !DILexicalBlock(scope: !269, file: !143, line: 126, column: 7)
!269 = distinct !DILexicalBlock(scope: !270, file: !143, line: 122, column: 39)
!270 = distinct !DILexicalBlock(scope: !260, file: !143, line: 122, column: 6)
!271 = !{!257, !174, i64 32}
!272 = !DILocation(line: 126, column: 17, scope: !268, inlinedAt: !266)
!273 = !DILocation(line: 0, scope: !268, inlinedAt: !266)
!274 = !{!257, !174, i64 0}
!275 = !DILocation(line: 126, column: 7, scope: !269, inlinedAt: !266)
!276 = !DILocation(line: 127, column: 4, scope: !268, inlinedAt: !266)
!277 = !DILocation(line: 0, scope: !186, inlinedAt: !278)
!278 = distinct !DILocation(line: 129, column: 4, scope: !268, inlinedAt: !266)
!279 = !DILocation(line: 59, column: 16, scope: !194, inlinedAt: !278)
!280 = !DILocation(line: 59, column: 24, scope: !194, inlinedAt: !278)
!281 = !DILocation(line: 59, column: 38, scope: !194, inlinedAt: !278)
!282 = !DILocation(line: 59, column: 43, scope: !194, inlinedAt: !278)
!283 = !DILocation(line: 59, column: 6, scope: !186, inlinedAt: !278)
!284 = !DILocation(line: 60, column: 30, scope: !194, inlinedAt: !278)
!285 = !DILocation(line: 60, column: 3, scope: !194, inlinedAt: !278)
!286 = !DILocation(line: 62, column: 3, scope: !194, inlinedAt: !278)
!287 = !DILocation(line: 133, column: 11, scope: !269, inlinedAt: !266)
!288 = !{i64 0, i64 8, !289, i64 8, i64 8, !220, i64 16, i64 8, !220, i64 24, i64 8, !289, i64 32, i64 8, !289, i64 40, i64 8, !289, i64 48, i64 8, !289, i64 56, i64 8, !289}
!289 = !{!174, !174, i64 0}
!290 = !{i64 0, i64 8, !220, i64 8, i64 8, !220, i64 16, i64 8, !289, i64 24, i64 8, !289, i64 32, i64 8, !289, i64 40, i64 8, !289, i64 48, i64 8, !289}
!291 = !DILocation(line: 134, column: 2, scope: !269, inlinedAt: !266)
!292 = !DILocation(line: 95, column: 24, scope: !232)
!293 = !{!255, !221, i64 0}
!294 = !DILocation(line: 95, column: 8, scope: !232)
!295 = !DILocation(line: 95, column: 11, scope: !232)
!296 = !{!257, !221, i64 8}
!297 = !DILocation(line: 96, column: 25, scope: !232)
!298 = !DILocation(line: 96, column: 9, scope: !232)
!299 = !DILocation(line: 97, column: 16, scope: !232)
!300 = !DILocation(line: 96, column: 2, scope: !232)
!301 = !DILocation(line: 0, scope: !260)
!302 = !DILocation(line: 122, column: 12, scope: !270)
!303 = !DILocation(line: 122, column: 17, scope: !270)
!304 = !DILocation(line: 122, column: 6, scope: !260)
!305 = !DILocation(line: 126, column: 13, scope: !268)
!306 = !DILocation(line: 126, column: 17, scope: !268)
!307 = !DILocation(line: 0, scope: !268)
!308 = !DILocation(line: 126, column: 7, scope: !269)
!309 = !DILocation(line: 127, column: 4, scope: !268)
!310 = !DILocation(line: 0, scope: !186, inlinedAt: !311)
!311 = distinct !DILocation(line: 129, column: 4, scope: !268)
!312 = !DILocation(line: 59, column: 16, scope: !194, inlinedAt: !311)
!313 = !DILocation(line: 59, column: 24, scope: !194, inlinedAt: !311)
!314 = !DILocation(line: 59, column: 38, scope: !194, inlinedAt: !311)
!315 = !DILocation(line: 59, column: 43, scope: !194, inlinedAt: !311)
!316 = !DILocation(line: 59, column: 6, scope: !186, inlinedAt: !311)
!317 = !DILocation(line: 60, column: 30, scope: !194, inlinedAt: !311)
!318 = !DILocation(line: 60, column: 3, scope: !194, inlinedAt: !311)
!319 = !DILocation(line: 62, column: 3, scope: !194, inlinedAt: !311)
!320 = !DILocation(line: 133, column: 11, scope: !269)
!321 = !DILocation(line: 134, column: 2, scope: !269)
!322 = !DILocation(line: 136, column: 2, scope: !260)
!323 = distinct !DISubprogram(name: "lzma_next_filter_update", scope: !143, file: !143, line: 102, type: !324, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !326)
!324 = !DISubroutineType(types: !325)
!325 = !{!59, !235, !60, !108}
!326 = !{!327, !328, !329}
!327 = !DILocalVariable(name: "next", arg: 1, scope: !323, file: !143, line: 102, type: !235)
!328 = !DILocalVariable(name: "allocator", arg: 2, scope: !323, file: !143, line: 102, type: !60)
!329 = !DILocalVariable(name: "reversed_filters", arg: 3, scope: !323, file: !143, line: 103, type: !108)
!330 = !DILocation(line: 0, scope: !323)
!331 = !DILocation(line: 108, column: 26, scope: !332)
!332 = distinct !DILexicalBlock(scope: !323, file: !143, line: 108, column: 6)
!333 = !{!334, !221, i64 0}
!334 = !{!"", !221, i64 0, !174, i64 8}
!335 = !DILocation(line: 108, column: 38, scope: !332)
!336 = !DILocation(line: 108, column: 29, scope: !332)
!337 = !DILocation(line: 108, column: 6, scope: !323)
!338 = !DILocation(line: 111, column: 29, scope: !339)
!339 = distinct !DILexicalBlock(scope: !323, file: !143, line: 111, column: 6)
!340 = !DILocation(line: 111, column: 6, scope: !323)
!341 = !DILocation(line: 115, column: 15, scope: !323)
!342 = !{!257, !174, i64 56}
!343 = !DILocation(line: 115, column: 28, scope: !323)
!344 = !DILocation(line: 115, column: 9, scope: !323)
!345 = !DILocation(line: 115, column: 2, scope: !323)
!346 = !DILocation(line: 116, column: 1, scope: !323)
!347 = distinct !DISubprogram(name: "lzma_strm_init", scope: !143, file: !143, line: 145, type: !348, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !375)
!348 = !DISubroutineType(types: !349)
!349 = !{!59, !350}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !4, line: 490, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 453, size: 1088, elements: !353)
!353 = !{!354, !355, !356, !357, !358, !359, !360, !361, !364, !365, !366, !367, !368, !369, !370, !371, !372, !374}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !352, file: !4, line: 454, baseType: !77, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !352, file: !4, line: 455, baseType: !69, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !352, file: !4, line: 456, baseType: !46, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !352, file: !4, line: 458, baseType: !85, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !352, file: !4, line: 459, baseType: !69, size: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !352, file: !4, line: 460, baseType: !46, size: 64, offset: 320)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !352, file: !4, line: 468, baseType: !60, size: 64, offset: 384)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !352, file: !4, line: 471, baseType: !362, size: 64, offset: 448)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !4, line: 411, baseType: !34)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !352, file: !4, line: 479, baseType: !68, size: 64, offset: 512)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !352, file: !4, line: 480, baseType: !68, size: 64, offset: 576)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !352, file: !4, line: 481, baseType: !68, size: 64, offset: 640)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !352, file: !4, line: 482, baseType: !68, size: 64, offset: 704)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !352, file: !4, line: 483, baseType: !46, size: 64, offset: 768)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !352, file: !4, line: 484, baseType: !46, size: 64, offset: 832)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !352, file: !4, line: 485, baseType: !69, size: 64, offset: 896)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !352, file: !4, line: 486, baseType: !69, size: 64, offset: 960)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !352, file: !4, line: 487, baseType: !373, size: 32, offset: 1024)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !131)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !352, file: !4, line: 488, baseType: !373, size: 32, offset: 1056)
!375 = !{!376}
!376 = !DILocalVariable(name: "strm", arg: 1, scope: !347, file: !143, line: 145, type: !350)
!377 = !DILocation(line: 0, scope: !347)
!378 = !DILocation(line: 147, column: 11, scope: !379)
!379 = distinct !DILexicalBlock(scope: !347, file: !143, line: 147, column: 6)
!380 = !DILocation(line: 147, column: 6, scope: !347)
!381 = !DILocation(line: 150, column: 12, scope: !382)
!382 = distinct !DILexicalBlock(scope: !347, file: !143, line: 150, column: 6)
!383 = !{!384, !174, i64 56}
!384 = !{!"", !174, i64 0, !221, i64 8, !221, i64 16, !174, i64 24, !221, i64 32, !221, i64 40, !174, i64 48, !174, i64 56, !174, i64 64, !174, i64 72, !174, i64 80, !174, i64 88, !221, i64 96, !221, i64 104, !221, i64 112, !221, i64 120, !175, i64 128, !175, i64 132}
!385 = !DILocation(line: 150, column: 21, scope: !382)
!386 = !DILocation(line: 150, column: 6, scope: !347)
!387 = !DILocation(line: 152, column: 11, scope: !388)
!388 = distinct !DILexicalBlock(scope: !382, file: !143, line: 150, column: 30)
!389 = !{!384, !174, i64 48}
!390 = !DILocation(line: 0, scope: !157, inlinedAt: !391)
!391 = distinct !DILocation(line: 151, column: 20, scope: !388)
!392 = !DILocation(line: 47, column: 16, scope: !169, inlinedAt: !391)
!393 = !DILocation(line: 47, column: 24, scope: !169, inlinedAt: !391)
!394 = !DILocation(line: 47, column: 38, scope: !169, inlinedAt: !391)
!395 = !DILocation(line: 47, column: 44, scope: !169, inlinedAt: !391)
!396 = !DILocation(line: 47, column: 6, scope: !157, inlinedAt: !391)
!397 = !DILocation(line: 48, column: 37, scope: !169, inlinedAt: !391)
!398 = !DILocation(line: 48, column: 9, scope: !169, inlinedAt: !391)
!399 = !DILocation(line: 48, column: 3, scope: !169, inlinedAt: !391)
!400 = !DILocation(line: 50, column: 9, scope: !169, inlinedAt: !391)
!401 = !DILocation(line: 0, scope: !169, inlinedAt: !391)
!402 = !DILocation(line: 151, column: 18, scope: !388)
!403 = !DILocation(line: 153, column: 22, scope: !404)
!404 = distinct !DILexicalBlock(scope: !388, file: !143, line: 153, column: 7)
!405 = !DILocation(line: 153, column: 7, scope: !388)
!406 = !DILocation(line: 156, column: 26, scope: !388)
!407 = !DILocation(line: 159, column: 8, scope: !347)
!408 = !DILocation(line: 157, column: 2, scope: !388)
!409 = !DILocation(line: 159, column: 18, scope: !347)
!410 = !DILocation(line: 163, column: 18, scope: !347)
!411 = !DILocation(line: 163, column: 27, scope: !347)
!412 = !{!413, !175, i64 64}
!413 = !{!"lzma_internal_s", !257, i64 0, !175, i64 64, !221, i64 72, !175, i64 80, !414, i64 84}
!414 = !{!"_Bool", !175, i64 0}
!415 = !DILocation(line: 166, column: 8, scope: !347)
!416 = !DILocation(line: 160, column: 53, scope: !347)
!417 = !DILocation(line: 166, column: 17, scope: !347)
!418 = !{!384, !221, i64 16}
!419 = !DILocation(line: 167, column: 8, scope: !347)
!420 = !DILocation(line: 167, column: 18, scope: !347)
!421 = !{!384, !221, i64 40}
!422 = !DILocation(line: 169, column: 2, scope: !347)
!423 = !DILocation(line: 170, column: 1, scope: !347)
!424 = distinct !DISubprogram(name: "lzma_code", scope: !143, file: !143, line: 174, type: !425, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !427)
!425 = !DISubroutineType(types: !426)
!426 = !{!59, !350, !86}
!427 = !{!428, !429, !430, !431, !432}
!428 = !DILocalVariable(name: "strm", arg: 1, scope: !424, file: !143, line: 174, type: !350)
!429 = !DILocalVariable(name: "action", arg: 2, scope: !424, file: !143, line: 174, type: !86)
!430 = !DILocalVariable(name: "in_pos", scope: !424, file: !143, line: 251, type: !69)
!431 = !DILocalVariable(name: "out_pos", scope: !424, file: !143, line: 252, type: !69)
!432 = !DILocalVariable(name: "ret", scope: !424, file: !143, line: 253, type: !59)
!433 = !DILocation(line: 0, scope: !424)
!434 = !DILocation(line: 177, column: 13, scope: !435)
!435 = distinct !DILexicalBlock(scope: !424, file: !143, line: 177, column: 6)
!436 = !{!384, !174, i64 0}
!437 = !DILocation(line: 177, column: 21, scope: !435)
!438 = !DILocation(line: 177, column: 29, scope: !435)
!439 = !DILocation(line: 177, column: 38, scope: !435)
!440 = !{!384, !221, i64 8}
!441 = !DILocation(line: 177, column: 47, scope: !435)
!442 = !DILocation(line: 178, column: 4, scope: !435)
!443 = !DILocation(line: 178, column: 14, scope: !435)
!444 = !{!384, !174, i64 24}
!445 = !DILocation(line: 178, column: 23, scope: !435)
!446 = !DILocation(line: 178, column: 31, scope: !435)
!447 = !DILocation(line: 178, column: 40, scope: !435)
!448 = !{!384, !221, i64 32}
!449 = !DILocation(line: 178, column: 50, scope: !435)
!450 = !DILocation(line: 179, column: 4, scope: !435)
!451 = !DILocation(line: 179, column: 13, scope: !435)
!452 = !DILocation(line: 179, column: 22, scope: !435)
!453 = !DILocation(line: 180, column: 4, scope: !435)
!454 = !DILocation(line: 180, column: 28, scope: !435)
!455 = !{!413, !174, i64 24}
!456 = !DILocation(line: 180, column: 33, scope: !435)
!457 = !DILocation(line: 181, column: 4, scope: !435)
!458 = !DILocation(line: 182, column: 8, scope: !435)
!459 = !{!414, !414, i64 0}
!460 = !{i8 0, i8 2}
!461 = !DILocation(line: 177, column: 6, scope: !424)
!462 = !DILocation(line: 187, column: 12, scope: !463)
!463 = distinct !DILexicalBlock(scope: !424, file: !143, line: 187, column: 6)
!464 = !{!384, !174, i64 64}
!465 = !DILocation(line: 187, column: 26, scope: !463)
!466 = !DILocation(line: 188, column: 4, scope: !463)
!467 = !DILocation(line: 188, column: 13, scope: !463)
!468 = !{!384, !174, i64 72}
!469 = !DILocation(line: 188, column: 27, scope: !463)
!470 = !DILocation(line: 189, column: 4, scope: !463)
!471 = !DILocation(line: 189, column: 13, scope: !463)
!472 = !{!384, !174, i64 80}
!473 = !DILocation(line: 189, column: 27, scope: !463)
!474 = !DILocation(line: 190, column: 4, scope: !463)
!475 = !DILocation(line: 190, column: 13, scope: !463)
!476 = !{!384, !174, i64 88}
!477 = !DILocation(line: 190, column: 27, scope: !463)
!478 = !DILocation(line: 191, column: 4, scope: !463)
!479 = !DILocation(line: 191, column: 13, scope: !463)
!480 = !{!384, !221, i64 96}
!481 = !DILocation(line: 191, column: 27, scope: !463)
!482 = !DILocation(line: 192, column: 4, scope: !463)
!483 = !DILocation(line: 192, column: 13, scope: !463)
!484 = !{!384, !221, i64 104}
!485 = !DILocation(line: 192, column: 27, scope: !463)
!486 = !DILocation(line: 193, column: 4, scope: !463)
!487 = !DILocation(line: 193, column: 13, scope: !463)
!488 = !{!384, !221, i64 112}
!489 = !DILocation(line: 193, column: 27, scope: !463)
!490 = !DILocation(line: 194, column: 4, scope: !463)
!491 = !DILocation(line: 194, column: 13, scope: !463)
!492 = !{!384, !221, i64 120}
!493 = !DILocation(line: 194, column: 27, scope: !463)
!494 = !DILocation(line: 195, column: 4, scope: !463)
!495 = !DILocation(line: 195, column: 13, scope: !463)
!496 = !{!384, !175, i64 128}
!497 = !DILocation(line: 195, column: 28, scope: !463)
!498 = !DILocation(line: 196, column: 4, scope: !463)
!499 = !DILocation(line: 196, column: 13, scope: !463)
!500 = !{!384, !175, i64 132}
!501 = !DILocation(line: 196, column: 28, scope: !463)
!502 = !DILocation(line: 187, column: 6, scope: !424)
!503 = !DILocation(line: 199, column: 26, scope: !424)
!504 = !DILocation(line: 199, column: 2, scope: !424)
!505 = !DILocation(line: 201, column: 3, scope: !506)
!506 = distinct !DILexicalBlock(scope: !424, file: !143, line: 199, column: 36)
!507 = !DILocation(line: 223, column: 14, scope: !508)
!508 = distinct !DILexicalBlock(scope: !506, file: !143, line: 223, column: 7)
!509 = !DILocation(line: 224, column: 5, scope: !508)
!510 = !DILocation(line: 224, column: 24, scope: !508)
!511 = !{!413, !221, i64 72}
!512 = !DILocation(line: 224, column: 42, scope: !508)
!513 = !DILocation(line: 224, column: 33, scope: !508)
!514 = !DILocation(line: 223, column: 7, scope: !506)
!515 = !DILocation(line: 230, column: 14, scope: !516)
!516 = distinct !DILexicalBlock(scope: !506, file: !143, line: 230, column: 7)
!517 = !DILocation(line: 231, column: 5, scope: !516)
!518 = !DILocation(line: 231, column: 24, scope: !516)
!519 = !DILocation(line: 231, column: 42, scope: !516)
!520 = !DILocation(line: 231, column: 33, scope: !516)
!521 = !DILocation(line: 230, column: 7, scope: !506)
!522 = !DILocation(line: 237, column: 14, scope: !523)
!523 = distinct !DILexicalBlock(scope: !506, file: !143, line: 237, column: 7)
!524 = !DILocation(line: 238, column: 5, scope: !523)
!525 = !DILocation(line: 238, column: 24, scope: !523)
!526 = !DILocation(line: 238, column: 42, scope: !523)
!527 = !DILocation(line: 238, column: 33, scope: !523)
!528 = !DILocation(line: 237, column: 7, scope: !506)
!529 = !DILocation(line: 248, column: 3, scope: !506)
!530 = !DILocation(line: 0, scope: !531)
!531 = distinct !DILexicalBlock(scope: !506, file: !143, line: 201, column: 19)
!532 = !DILocation(line: 251, column: 2, scope: !424)
!533 = !DILocation(line: 251, column: 9, scope: !424)
!534 = !DILocation(line: 252, column: 2, scope: !424)
!535 = !DILocation(line: 252, column: 9, scope: !424)
!536 = !DILocation(line: 254, column: 25, scope: !424)
!537 = !{!413, !174, i64 0}
!538 = !DILocation(line: 254, column: 38, scope: !424)
!539 = !DILocation(line: 255, column: 34, scope: !424)
!540 = !DILocation(line: 256, column: 36, scope: !424)
!541 = !DILocation(line: 253, column: 17, scope: !424)
!542 = !DILocation(line: 258, column: 19, scope: !424)
!543 = !DILocation(line: 258, column: 16, scope: !424)
!544 = !DILocation(line: 259, column: 17, scope: !424)
!545 = !DILocation(line: 260, column: 8, scope: !424)
!546 = !DILocation(line: 260, column: 17, scope: !424)
!547 = !DILocation(line: 262, column: 20, scope: !424)
!548 = !DILocation(line: 262, column: 17, scope: !424)
!549 = !DILocation(line: 263, column: 18, scope: !424)
!550 = !DILocation(line: 264, column: 8, scope: !424)
!551 = !DILocation(line: 264, column: 18, scope: !424)
!552 = !DILocation(line: 266, column: 8, scope: !424)
!553 = !DILocation(line: 266, column: 18, scope: !424)
!554 = !DILocation(line: 266, column: 27, scope: !424)
!555 = !DILocation(line: 268, column: 2, scope: !424)
!556 = !DILocation(line: 274, column: 15, scope: !557)
!557 = distinct !DILexicalBlock(scope: !558, file: !143, line: 274, column: 7)
!558 = distinct !DILexicalBlock(scope: !424, file: !143, line: 268, column: 15)
!559 = !DILocation(line: 274, column: 20, scope: !557)
!560 = !DILocation(line: 0, scope: !557)
!561 = !DILocation(line: 275, column: 24, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !143, line: 275, column: 8)
!563 = distinct !DILexicalBlock(scope: !557, file: !143, line: 274, column: 36)
!564 = !{!413, !414, i64 84}
!565 = !DILocation(line: 275, column: 8, scope: !563)
!566 = !DILocation(line: 278, column: 37, scope: !562)
!567 = !DILocation(line: 280, column: 36, scope: !568)
!568 = distinct !DILexicalBlock(scope: !557, file: !143, line: 279, column: 10)
!569 = !DILocation(line: 285, column: 23, scope: !570)
!570 = distinct !DILexicalBlock(scope: !558, file: !143, line: 285, column: 7)
!571 = !DILocation(line: 286, column: 5, scope: !570)
!572 = !DILocation(line: 0, scope: !570)
!573 = !DILocation(line: 299, column: 19, scope: !558)
!574 = !DILocation(line: 299, column: 35, scope: !558)
!575 = !DILocation(line: 300, column: 3, scope: !558)
!576 = !DILocation(line: 305, column: 19, scope: !558)
!577 = !DILocation(line: 305, column: 28, scope: !558)
!578 = !DILocation(line: 306, column: 3, scope: !558)
!579 = !DILocation(line: 310, column: 1, scope: !424)
!580 = distinct !DISubprogram(name: "lzma_end", scope: !143, file: !143, line: 314, type: !581, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !583)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !350}
!583 = !{!584}
!584 = !DILocalVariable(name: "strm", arg: 1, scope: !580, file: !143, line: 314, type: !350)
!585 = !DILocation(line: 0, scope: !580)
!586 = !DILocation(line: 316, column: 11, scope: !587)
!587 = distinct !DILexicalBlock(scope: !580, file: !143, line: 316, column: 6)
!588 = !DILocation(line: 316, column: 19, scope: !587)
!589 = !DILocation(line: 316, column: 28, scope: !587)
!590 = !DILocation(line: 316, column: 37, scope: !587)
!591 = !DILocation(line: 316, column: 6, scope: !580)
!592 = !DILocation(line: 317, column: 46, scope: !593)
!593 = distinct !DILexicalBlock(scope: !587, file: !143, line: 316, column: 46)
!594 = !DILocation(line: 0, scope: !260, inlinedAt: !595)
!595 = distinct !DILocation(line: 317, column: 3, scope: !593)
!596 = !DILocation(line: 122, column: 12, scope: !270, inlinedAt: !595)
!597 = !DILocation(line: 122, column: 17, scope: !270, inlinedAt: !595)
!598 = !DILocation(line: 122, column: 6, scope: !260, inlinedAt: !595)
!599 = !DILocation(line: 126, column: 13, scope: !268, inlinedAt: !595)
!600 = !DILocation(line: 126, column: 17, scope: !268, inlinedAt: !595)
!601 = !DILocation(line: 0, scope: !268, inlinedAt: !595)
!602 = !DILocation(line: 126, column: 7, scope: !269, inlinedAt: !595)
!603 = !DILocation(line: 127, column: 4, scope: !268, inlinedAt: !595)
!604 = !DILocation(line: 0, scope: !186, inlinedAt: !605)
!605 = distinct !DILocation(line: 129, column: 4, scope: !268, inlinedAt: !595)
!606 = !DILocation(line: 59, column: 16, scope: !194, inlinedAt: !605)
!607 = !DILocation(line: 59, column: 24, scope: !194, inlinedAt: !605)
!608 = !DILocation(line: 59, column: 38, scope: !194, inlinedAt: !605)
!609 = !DILocation(line: 59, column: 43, scope: !194, inlinedAt: !605)
!610 = !DILocation(line: 59, column: 6, scope: !186, inlinedAt: !605)
!611 = !DILocation(line: 60, column: 30, scope: !194, inlinedAt: !605)
!612 = !DILocation(line: 60, column: 3, scope: !194, inlinedAt: !605)
!613 = !DILocation(line: 62, column: 3, scope: !194, inlinedAt: !605)
!614 = !DILocation(line: 133, column: 11, scope: !269, inlinedAt: !595)
!615 = !DILocation(line: 318, column: 35, scope: !593)
!616 = !DILocation(line: 318, column: 19, scope: !593)
!617 = !DILocation(line: 134, column: 2, scope: !269, inlinedAt: !595)
!618 = !DILocation(line: 0, scope: !186, inlinedAt: !619)
!619 = distinct !DILocation(line: 318, column: 3, scope: !593)
!620 = !DILocation(line: 59, column: 16, scope: !194, inlinedAt: !619)
!621 = !DILocation(line: 59, column: 24, scope: !194, inlinedAt: !619)
!622 = !DILocation(line: 59, column: 38, scope: !194, inlinedAt: !619)
!623 = !DILocation(line: 59, column: 43, scope: !194, inlinedAt: !619)
!624 = !DILocation(line: 59, column: 6, scope: !186, inlinedAt: !619)
!625 = !DILocation(line: 60, column: 30, scope: !194, inlinedAt: !619)
!626 = !DILocation(line: 60, column: 3, scope: !194, inlinedAt: !619)
!627 = !DILocation(line: 62, column: 3, scope: !194, inlinedAt: !619)
!628 = !DILocation(line: 319, column: 18, scope: !593)
!629 = !DILocation(line: 320, column: 2, scope: !593)
!630 = !DILocation(line: 322, column: 2, scope: !580)
!631 = distinct !DISubprogram(name: "lzma_get_check", scope: !143, file: !143, line: 327, type: !632, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !636)
!632 = !DISubroutineType(types: !633)
!633 = !{!96, !634}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!636 = !{!637}
!637 = !DILocalVariable(name: "strm", arg: 1, scope: !631, file: !143, line: 327, type: !634)
!638 = !DILocation(line: 0, scope: !631)
!639 = !DILocation(line: 331, column: 12, scope: !640)
!640 = distinct !DILexicalBlock(scope: !631, file: !143, line: 331, column: 6)
!641 = !DILocation(line: 331, column: 27, scope: !640)
!642 = !{!413, !174, i64 40}
!643 = !DILocation(line: 331, column: 37, scope: !640)
!644 = !DILocation(line: 331, column: 6, scope: !631)
!645 = !DILocation(line: 334, column: 61, scope: !631)
!646 = !DILocation(line: 334, column: 9, scope: !631)
!647 = !DILocation(line: 334, column: 2, scope: !631)
!648 = !DILocation(line: 335, column: 1, scope: !631)
!649 = distinct !DISubprogram(name: "lzma_memusage", scope: !143, file: !143, line: 339, type: !650, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !652)
!650 = !DISubroutineType(types: !651)
!651 = !{!46, !634}
!652 = !{!653, !654, !655}
!653 = !DILocalVariable(name: "strm", arg: 1, scope: !649, file: !143, line: 339, type: !634)
!654 = !DILocalVariable(name: "memusage", scope: !649, file: !143, line: 341, type: !46)
!655 = !DILocalVariable(name: "old_memlimit", scope: !649, file: !143, line: 342, type: !46)
!656 = !DILocation(line: 0, scope: !649)
!657 = !DILocation(line: 341, column: 2, scope: !649)
!658 = !DILocation(line: 342, column: 2, scope: !649)
!659 = !DILocation(line: 344, column: 11, scope: !660)
!660 = distinct !DILexicalBlock(scope: !649, file: !143, line: 344, column: 6)
!661 = !DILocation(line: 344, column: 19, scope: !660)
!662 = !DILocation(line: 344, column: 28, scope: !660)
!663 = !DILocation(line: 344, column: 37, scope: !660)
!664 = !DILocation(line: 345, column: 4, scope: !660)
!665 = !DILocation(line: 345, column: 28, scope: !660)
!666 = !{!413, !174, i64 48}
!667 = !DILocation(line: 345, column: 38, scope: !660)
!668 = !DILocation(line: 346, column: 4, scope: !660)
!669 = !DILocation(line: 347, column: 26, scope: !660)
!670 = !DILocation(line: 346, column: 7, scope: !660)
!671 = !DILocation(line: 348, column: 34, scope: !660)
!672 = !DILocation(line: 344, column: 6, scope: !649)
!673 = !DILocation(line: 352, column: 1, scope: !649)
!674 = distinct !DISubprogram(name: "lzma_memlimit_get", scope: !143, file: !143, line: 356, type: !650, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !675)
!675 = !{!676, !677, !678}
!676 = !DILocalVariable(name: "strm", arg: 1, scope: !674, file: !143, line: 356, type: !634)
!677 = !DILocalVariable(name: "old_memlimit", scope: !674, file: !143, line: 358, type: !46)
!678 = !DILocalVariable(name: "memusage", scope: !674, file: !143, line: 359, type: !46)
!679 = !DILocation(line: 0, scope: !674)
!680 = !DILocation(line: 358, column: 2, scope: !674)
!681 = !DILocation(line: 359, column: 2, scope: !674)
!682 = !DILocation(line: 361, column: 11, scope: !683)
!683 = distinct !DILexicalBlock(scope: !674, file: !143, line: 361, column: 6)
!684 = !DILocation(line: 361, column: 19, scope: !683)
!685 = !DILocation(line: 361, column: 28, scope: !683)
!686 = !DILocation(line: 361, column: 37, scope: !683)
!687 = !DILocation(line: 362, column: 4, scope: !683)
!688 = !DILocation(line: 362, column: 28, scope: !683)
!689 = !DILocation(line: 362, column: 38, scope: !683)
!690 = !DILocation(line: 363, column: 4, scope: !683)
!691 = !DILocation(line: 364, column: 26, scope: !683)
!692 = !DILocation(line: 363, column: 7, scope: !683)
!693 = !DILocation(line: 365, column: 34, scope: !683)
!694 = !DILocation(line: 361, column: 6, scope: !674)
!695 = !DILocation(line: 369, column: 1, scope: !674)
!696 = distinct !DISubprogram(name: "lzma_memlimit_set", scope: !143, file: !143, line: 373, type: !697, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !699)
!697 = !DISubroutineType(types: !698)
!698 = !{!59, !350, !46}
!699 = !{!700, !701, !702, !703}
!700 = !DILocalVariable(name: "strm", arg: 1, scope: !696, file: !143, line: 373, type: !350)
!701 = !DILocalVariable(name: "new_memlimit", arg: 2, scope: !696, file: !143, line: 373, type: !46)
!702 = !DILocalVariable(name: "old_memlimit", scope: !696, file: !143, line: 376, type: !46)
!703 = !DILocalVariable(name: "memusage", scope: !696, file: !143, line: 377, type: !46)
!704 = !DILocation(line: 0, scope: !696)
!705 = !DILocation(line: 376, column: 2, scope: !696)
!706 = !DILocation(line: 377, column: 2, scope: !696)
!707 = !DILocation(line: 379, column: 11, scope: !708)
!708 = distinct !DILexicalBlock(scope: !696, file: !143, line: 379, column: 6)
!709 = !DILocation(line: 379, column: 19, scope: !708)
!710 = !DILocation(line: 379, column: 28, scope: !708)
!711 = !DILocation(line: 379, column: 37, scope: !708)
!712 = !DILocation(line: 380, column: 4, scope: !708)
!713 = !DILocation(line: 380, column: 28, scope: !708)
!714 = !DILocation(line: 380, column: 38, scope: !708)
!715 = !DILocation(line: 379, column: 6, scope: !696)
!716 = !DILocation(line: 383, column: 24, scope: !717)
!717 = distinct !DILexicalBlock(scope: !696, file: !143, line: 383, column: 6)
!718 = !DILocation(line: 386, column: 61, scope: !696)
!719 = !DILocation(line: 386, column: 9, scope: !696)
!720 = !DILocation(line: 386, column: 2, scope: !696)
!721 = !DILocation(line: 388, column: 1, scope: !696)
