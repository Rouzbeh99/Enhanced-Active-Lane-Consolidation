; ModuleID = 'xxhash.c'
source_filename = "xxhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.XXH32_state_s = type { i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32 }
%struct.XXH64_state_s = type { i64, i64, i64, i64, i64, [4 x i64], i32, [2 x i32] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @XXH_versionNumber() local_unnamed_addr #0 {
entry:
  ret i32 602
}

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i32 @XXH32(ptr noundef readonly %input, i64 noundef %len, i32 noundef %seed) local_unnamed_addr #1 {
entry:
  %input6 = ptrtoint ptr %input to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %input, i64 %len
  %cmp.i = icmp ugt i64 %len, 15
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %add.ptr1.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 -16
  %add2.i = add i32 %seed, 606290984
  %add3.i = add i32 %seed, -2048144777
  %sub.i = add i32 %seed, 1640531535
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %if.then.i
  %p.0.i = phi ptr [ %input, %if.then.i ], [ %add.ptr15.i, %do.body.i ]
  %v1.0.i = phi i32 [ %add2.i, %if.then.i ], [ %mul1.i.i, %do.body.i ]
  %v2.0.i = phi i32 [ %add3.i, %if.then.i ], [ %mul1.i4.i, %do.body.i ]
  %v3.0.i = phi i32 [ %seed, %if.then.i ], [ %mul1.i8.i, %do.body.i ]
  %v4.0.i = phi i32 [ %sub.i, %if.then.i ], [ %mul1.i12.i, %do.body.i ]
  %p.0.val.i = load i32, ptr %p.0.i, align 1
  %mul.i.i = mul i32 %p.0.val.i, -2048144777
  %add.i.i = add i32 %mul.i.i, %v1.0.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add.i.i, i32 %add.i.i, i32 13) #14
  %mul1.i.i = mul i32 %or.i.i, -1640531535
  %add.ptr6.i = getelementptr inbounds i8, ptr %p.0.i, i64 4
  %add.ptr6.val.i = load i32, ptr %add.ptr6.i, align 1
  %mul.i1.i = mul i32 %add.ptr6.val.i, -2048144777
  %add.i2.i = add i32 %mul.i1.i, %v2.0.i
  %or.i3.i = tail call i32 @llvm.fshl.i32(i32 %add.i2.i, i32 %add.i2.i, i32 13) #14
  %mul1.i4.i = mul i32 %or.i3.i, -1640531535
  %add.ptr9.i = getelementptr inbounds i8, ptr %p.0.i, i64 8
  %add.ptr9.val.i = load i32, ptr %add.ptr9.i, align 1
  %mul.i5.i = mul i32 %add.ptr9.val.i, -2048144777
  %add.i6.i = add i32 %mul.i5.i, %v3.0.i
  %or.i7.i = tail call i32 @llvm.fshl.i32(i32 %add.i6.i, i32 %add.i6.i, i32 13) #14
  %mul1.i8.i = mul i32 %or.i7.i, -1640531535
  %add.ptr12.i = getelementptr inbounds i8, ptr %p.0.i, i64 12
  %add.ptr12.val.i = load i32, ptr %add.ptr12.i, align 1
  %mul.i9.i = mul i32 %add.ptr12.val.i, -2048144777
  %add.i10.i = add i32 %mul.i9.i, %v4.0.i
  %or.i11.i = tail call i32 @llvm.fshl.i32(i32 %add.i10.i, i32 %add.i10.i, i32 13) #14
  %mul1.i12.i = mul i32 %or.i11.i, -1640531535
  %add.ptr15.i = getelementptr inbounds i8, ptr %p.0.i, i64 16
  %cmp16.not.i = icmp ugt ptr %add.ptr15.i, %add.ptr1.i
  br i1 %cmp16.not.i, label %do.end.i, label %do.body.i, !llvm.loop !5

do.end.i:                                         ; preds = %do.body.i
  %or.i = tail call i32 @llvm.fshl.i32(i32 %mul1.i.i, i32 %mul1.i.i, i32 1) #14
  %or19.i = tail call i32 @llvm.fshl.i32(i32 %mul1.i4.i, i32 %mul1.i4.i, i32 7) #14
  %add20.i = add i32 %or19.i, %or.i
  %or23.i = tail call i32 @llvm.fshl.i32(i32 %mul1.i8.i, i32 %mul1.i8.i, i32 12) #14
  %add24.i = add i32 %add20.i, %or23.i
  %or27.i = tail call i32 @llvm.fshl.i32(i32 %mul1.i12.i, i32 %mul1.i12.i, i32 18) #14
  %add28.i = add i32 %add24.i, %or27.i
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  %add29.i = add i32 %seed, 374761393
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %do.end.i
  %h32.0.i = phi i32 [ %add28.i, %do.end.i ], [ %add29.i, %if.else.i ]
  %p.1.i = phi ptr [ %add.ptr15.i, %do.end.i ], [ %input, %if.else.i ]
  %conv.i = trunc i64 %len to i32
  %add30.i = add i32 %h32.0.i, %conv.i
  %add.ptr3113.i = getelementptr inbounds i8, ptr %p.1.i, i64 4
  %cmp32.not14.i = icmp ugt ptr %add.ptr3113.i, %add.ptr.i
  br i1 %cmp32.not14.i, label %while.cond41.preheader.i, label %while.body.i

while.cond41.preheader.i:                         ; preds = %while.body.i, %if.end.i
  %h32.1.lcssa.i = phi i32 [ %add30.i, %if.end.i ], [ %mul39.i, %while.body.i ]
  %p.2.lcssa.i = phi ptr [ %p.1.i, %if.end.i ], [ %add.ptr3117.i, %while.body.i ]
  %cmp4219.i = icmp ult ptr %p.2.lcssa.i, %add.ptr.i
  br i1 %cmp4219.i, label %while.body44.i.preheader, label %XXH32_endian_align.exit

while.body44.i.preheader:                         ; preds = %while.cond41.preheader.i
  %p.2.lcssa.i7 = ptrtoint ptr %p.2.lcssa.i to i64
  %0 = add i64 %input6, %len
  %1 = sub i64 %0, %p.2.lcssa.i7
  %2 = xor i64 %p.2.lcssa.i7, -1
  %3 = add i64 %0, %2
  %xtraiter = and i64 %1, 3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %while.body44.i.prol.loopexit, label %while.body44.i.prol

while.body44.i.prol:                              ; preds = %while.body44.i.preheader, %while.body44.i.prol
  %p.321.i.prol = phi ptr [ %incdec.ptr.i.prol, %while.body44.i.prol ], [ %p.2.lcssa.i, %while.body44.i.preheader ]
  %h32.220.i.prol = phi i32 [ %mul51.i.prol, %while.body44.i.prol ], [ %h32.1.lcssa.i, %while.body44.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %while.body44.i.prol ], [ 0, %while.body44.i.preheader ]
  %4 = load i8, ptr %p.321.i.prol, align 1, !tbaa !7
  %conv45.i.prol = zext i8 %4 to i32
  %mul46.i.prol = mul i32 %conv45.i.prol, 374761393
  %add47.i.prol = add i32 %mul46.i.prol, %h32.220.i.prol
  %or50.i.prol = tail call i32 @llvm.fshl.i32(i32 %add47.i.prol, i32 %add47.i.prol, i32 11) #14
  %mul51.i.prol = mul i32 %or50.i.prol, -1640531535
  %incdec.ptr.i.prol = getelementptr inbounds i8, ptr %p.321.i.prol, i64 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %while.body44.i.prol.loopexit, label %while.body44.i.prol, !llvm.loop !10

while.body44.i.prol.loopexit:                     ; preds = %while.body44.i.prol, %while.body44.i.preheader
  %p.321.i.unr = phi ptr [ %p.2.lcssa.i, %while.body44.i.preheader ], [ %incdec.ptr.i.prol, %while.body44.i.prol ]
  %h32.220.i.unr = phi i32 [ %h32.1.lcssa.i, %while.body44.i.preheader ], [ %mul51.i.prol, %while.body44.i.prol ]
  %mul51.i.lcssa.unr = phi i32 [ undef, %while.body44.i.preheader ], [ %mul51.i.prol, %while.body44.i.prol ]
  %5 = icmp ult i64 %3, 3
  br i1 %5, label %XXH32_endian_align.exit, label %while.body44.i

while.body.i:                                     ; preds = %if.end.i, %while.body.i
  %add.ptr3117.i = phi ptr [ %add.ptr31.i, %while.body.i ], [ %add.ptr3113.i, %if.end.i ]
  %p.216.i = phi ptr [ %add.ptr3117.i, %while.body.i ], [ %p.1.i, %if.end.i ]
  %h32.115.i = phi i32 [ %mul39.i, %while.body.i ], [ %add30.i, %if.end.i ]
  %p.2.val.i = load i32, ptr %p.216.i, align 1
  %mul.i = mul i32 %p.2.val.i, -1028477379
  %add35.i = add i32 %mul.i, %h32.115.i
  %or38.i = tail call i32 @llvm.fshl.i32(i32 %add35.i, i32 %add35.i, i32 17) #14
  %mul39.i = mul i32 %or38.i, 668265263
  %add.ptr31.i = getelementptr inbounds i8, ptr %add.ptr3117.i, i64 4
  %cmp32.not.i = icmp ugt ptr %add.ptr31.i, %add.ptr.i
  br i1 %cmp32.not.i, label %while.cond41.preheader.i, label %while.body.i, !llvm.loop !12

while.body44.i:                                   ; preds = %while.body44.i.prol.loopexit, %while.body44.i
  %p.321.i = phi ptr [ %incdec.ptr.i.3, %while.body44.i ], [ %p.321.i.unr, %while.body44.i.prol.loopexit ]
  %h32.220.i = phi i32 [ %mul51.i.3, %while.body44.i ], [ %h32.220.i.unr, %while.body44.i.prol.loopexit ]
  %6 = load i8, ptr %p.321.i, align 1, !tbaa !7
  %conv45.i = zext i8 %6 to i32
  %mul46.i = mul i32 %conv45.i, 374761393
  %add47.i = add i32 %mul46.i, %h32.220.i
  %or50.i = tail call i32 @llvm.fshl.i32(i32 %add47.i, i32 %add47.i, i32 11) #14
  %mul51.i = mul i32 %or50.i, -1640531535
  %incdec.ptr.i = getelementptr inbounds i8, ptr %p.321.i, i64 1
  %7 = load i8, ptr %incdec.ptr.i, align 1, !tbaa !7
  %conv45.i.1 = zext i8 %7 to i32
  %mul46.i.1 = mul i32 %conv45.i.1, 374761393
  %add47.i.1 = add i32 %mul46.i.1, %mul51.i
  %or50.i.1 = tail call i32 @llvm.fshl.i32(i32 %add47.i.1, i32 %add47.i.1, i32 11) #14
  %mul51.i.1 = mul i32 %or50.i.1, -1640531535
  %incdec.ptr.i.1 = getelementptr inbounds i8, ptr %p.321.i, i64 2
  %8 = load i8, ptr %incdec.ptr.i.1, align 1, !tbaa !7
  %conv45.i.2 = zext i8 %8 to i32
  %mul46.i.2 = mul i32 %conv45.i.2, 374761393
  %add47.i.2 = add i32 %mul46.i.2, %mul51.i.1
  %or50.i.2 = tail call i32 @llvm.fshl.i32(i32 %add47.i.2, i32 %add47.i.2, i32 11) #14
  %mul51.i.2 = mul i32 %or50.i.2, -1640531535
  %incdec.ptr.i.2 = getelementptr inbounds i8, ptr %p.321.i, i64 3
  %9 = load i8, ptr %incdec.ptr.i.2, align 1, !tbaa !7
  %conv45.i.3 = zext i8 %9 to i32
  %mul46.i.3 = mul i32 %conv45.i.3, 374761393
  %add47.i.3 = add i32 %mul46.i.3, %mul51.i.2
  %or50.i.3 = tail call i32 @llvm.fshl.i32(i32 %add47.i.3, i32 %add47.i.3, i32 11) #14
  %mul51.i.3 = mul i32 %or50.i.3, -1640531535
  %incdec.ptr.i.3 = getelementptr inbounds i8, ptr %p.321.i, i64 4
  %cmp42.i.3 = icmp ult ptr %incdec.ptr.i.3, %add.ptr.i
  br i1 %cmp42.i.3, label %while.body44.i, label %XXH32_endian_align.exit, !llvm.loop !13

XXH32_endian_align.exit:                          ; preds = %while.body44.i.prol.loopexit, %while.body44.i, %while.cond41.preheader.i
  %h32.2.lcssa.i = phi i32 [ %h32.1.lcssa.i, %while.cond41.preheader.i ], [ %mul51.i.lcssa.unr, %while.body44.i.prol.loopexit ], [ %mul51.i.3, %while.body44.i ]
  %shr53.i = lshr i32 %h32.2.lcssa.i, 15
  %xor.i = xor i32 %shr53.i, %h32.2.lcssa.i
  %mul54.i = mul i32 %xor.i, -2048144777
  %shr55.i = lshr i32 %mul54.i, 13
  %xor56.i = xor i32 %shr55.i, %mul54.i
  %mul57.i = mul i32 %xor56.i, -1028477379
  %shr58.i = lshr i32 %mul57.i, 16
  %xor59.i = xor i32 %shr58.i, %mul57.i
  ret i32 %xor59.i
}

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local noalias ptr @XXH32_createState() local_unnamed_addr #2 {
entry:
  %call.i = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #15
  ret ptr %call.i
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local i32 @XXH32_freeState(ptr nocapture noundef %statePtr) local_unnamed_addr #3 {
entry:
  tail call void @free(ptr noundef %statePtr) #14
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn uwtable
define dso_local void @XXH32_copyState(ptr nocapture noundef writeonly %dstState, ptr nocapture noundef readonly %srcState) local_unnamed_addr #4 {
entry:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %dstState, ptr noundef nonnull align 4 dereferenceable(48) %srcState, i64 48, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn uwtable
define dso_local i32 @XXH32_reset(ptr nocapture noundef writeonly %statePtr, i32 noundef %seed) local_unnamed_addr #4 {
entry:
  %add1 = add i32 %seed, 606290984
  %add2 = add i32 %seed, -2048144777
  %sub = add i32 %seed, 1640531535
  store i64 0, ptr %statePtr, align 4
  %state.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %statePtr, i64 8
  store i32 %add1, ptr %state.sroa.4.0..sroa_idx, align 4
  %state.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %statePtr, i64 12
  store i32 %add2, ptr %state.sroa.5.0..sroa_idx, align 4
  %state.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %statePtr, i64 16
  store i32 %seed, ptr %state.sroa.6.0..sroa_idx, align 4
  %state.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %statePtr, i64 20
  store i32 %sub, ptr %state.sroa.7.0..sroa_idx, align 4
  %state.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %statePtr, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %state.sroa.8.0..sroa_idx, i8 0, i64 20, i1 false)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @XXH32_update(ptr nocapture noundef %state_in, ptr noundef %input, i64 noundef %len) local_unnamed_addr #7 {
entry:
  %add.ptr.i = getelementptr inbounds i8, ptr %input, i64 %len
  %conv.i = trunc i64 %len to i32
  %0 = load i32, ptr %state_in, align 4, !tbaa !14
  %add.i = add i32 %0, %conv.i
  store i32 %add.i, ptr %state_in, align 4, !tbaa !14
  %cmp.i = icmp ugt i64 %len, 15
  %cmp3.i = icmp ugt i32 %add.i, 15
  %or1.i = or i1 %cmp.i, %cmp3.i
  %or.i = zext i1 %or1.i to i32
  %large_len.i = getelementptr inbounds %struct.XXH32_state_s, ptr %state_in, i64 0, i32 1
  %1 = load i32, ptr %large_len.i, align 4, !tbaa !17
  %or5.i = or i32 %1, %or.i
  store i32 %or5.i, ptr %large_len.i, align 4, !tbaa !17
  %memsize.i = getelementptr inbounds %struct.XXH32_state_s, ptr %state_in, i64 0, i32 7
  %2 = load i32, ptr %memsize.i, align 4, !tbaa !18
  %conv6.i = zext i32 %2 to i64
  %add7.i = add i64 %conv6.i, %len
  %cmp8.i = icmp ult i64 %add7.i, 16
  br i1 %cmp8.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %mem32.i = getelementptr inbounds %struct.XXH32_state_s, ptr %state_in, i64 0, i32 6
  %add.ptr11.i = getelementptr inbounds i8, ptr %mem32.i, i64 %conv6.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr11.i, ptr align 1 %input, i64 %len, i1 false) #14
  %3 = load i32, ptr %memsize.i, align 4, !tbaa !18
  %add14.i = add i32 %3, %conv.i
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %entry
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end46.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end.i
  %mem3217.i = getelementptr inbounds %struct.XXH32_state_s, ptr %state_in, i64 0, i32 6
  %add.ptr21.i = getelementptr inbounds i8, ptr %mem3217.i, i64 %conv6.i
  %sub.i = sub i32 16, %2
  %conv23.i = zext i32 %sub.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr21.i, ptr align 1 %input, i64 %conv23.i, i1 false) #14
  %v1.i = getelementptr inbounds %struct.XXH32_state_s, ptr %state_in, i64 0, i32 2
  %4 = load <4 x i32>, ptr %v1.i, align 4, !tbaa !19
  %5 = load <4 x i32>, ptr %mem3217.i, align 1
  %6 = mul <4 x i32> %5, <i32 -2048144777, i32 -2048144777, i32 -2048144777, i32 -2048144777>
  %7 = add <4 x i32> %6, %4
  %8 = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %7, <4 x i32> %7, <4 x i32> <i32 13, i32 13, i32 13, i32 13>)
  %9 = mul <4 x i32> %8, <i32 -1640531535, i32 -1640531535, i32 -1640531535, i32 -1640531535>
  store <4 x i32> %9, ptr %v1.i, align 4, !tbaa !19
  %10 = load i32, ptr %memsize.i, align 4, !tbaa !18
  %sub42.i = sub i32 16, %10
  %idx.ext43.i = zext i32 %sub42.i to i64
  %add.ptr44.i = getelementptr inbounds i8, ptr %input, i64 %idx.ext43.i
  store i32 0, ptr %memsize.i, align 4, !tbaa !18
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then16.i, %if.end.i
  %p.0.i = phi ptr [ %add.ptr44.i, %if.then16.i ], [ %input, %if.end.i ]
  %add.ptr47.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 -16
  %cmp48.not.i = icmp ugt ptr %p.0.i, %add.ptr47.i
  br i1 %cmp48.not.i, label %if.end78.i, label %if.then50.i

if.then50.i:                                      ; preds = %if.end46.i
  %v153.i = getelementptr inbounds %struct.XXH32_state_s, ptr %state_in, i64 0, i32 2
  %11 = load <4 x i32>, ptr %v153.i, align 4, !tbaa !19
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %if.then50.i
  %p.1.i = phi ptr [ %p.0.i, %if.then50.i ], [ %add.ptr71.i, %do.body.i ]
  %12 = phi <4 x i32> [ %11, %if.then50.i ], [ %17, %do.body.i ]
  %13 = load <4 x i32>, ptr %p.1.i, align 1
  %14 = mul <4 x i32> %13, <i32 -2048144777, i32 -2048144777, i32 -2048144777, i32 -2048144777>
  %15 = add <4 x i32> %14, %12
  %16 = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %15, <4 x i32> %15, <4 x i32> <i32 13, i32 13, i32 13, i32 13>)
  %17 = mul <4 x i32> %16, <i32 -1640531535, i32 -1640531535, i32 -1640531535, i32 -1640531535>
  %add.ptr71.i = getelementptr inbounds i8, ptr %p.1.i, i64 16
  %cmp72.not.i = icmp ugt ptr %add.ptr71.i, %add.ptr47.i
  br i1 %cmp72.not.i, label %do.end.i, label %do.body.i, !llvm.loop !20

do.end.i:                                         ; preds = %do.body.i
  store <4 x i32> %17, ptr %v153.i, align 4, !tbaa !19
  br label %if.end78.i

if.end78.i:                                       ; preds = %do.end.i, %if.end46.i
  %p.2.i = phi ptr [ %add.ptr71.i, %do.end.i ], [ %p.0.i, %if.end46.i ]
  %cmp79.i = icmp ult ptr %p.2.i, %add.ptr.i
  br i1 %cmp79.i, label %if.then81.i, label %XXH32_update_endian.exit

if.then81.i:                                      ; preds = %if.end78.i
  %mem3282.i = getelementptr inbounds %struct.XXH32_state_s, ptr %state_in, i64 0, i32 6
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %p.2.i to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %mem3282.i, ptr align 1 %p.2.i, i64 %sub.ptr.sub.i, i1 false) #14
  %conv88.i = trunc i64 %sub.ptr.sub.i to i32
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then81.i, %if.then.i
  %conv88.sink.i = phi i32 [ %conv88.i, %if.then81.i ], [ %add14.i, %if.then.i ]
  store i32 %conv88.sink.i, ptr %memsize.i, align 4, !tbaa !18
  br label %XXH32_update_endian.exit

XXH32_update_endian.exit:                         ; preds = %if.end78.i, %cleanup.sink.split.i
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i32 @XXH32_digest(ptr noundef readonly %state_in) local_unnamed_addr #1 {
entry:
  %mem32.i = getelementptr inbounds %struct.XXH32_state_s, ptr %state_in, i64 0, i32 6
  %memsize.i = getelementptr inbounds %struct.XXH32_state_s, ptr %state_in, i64 0, i32 7
  %0 = load i32, ptr %memsize.i, align 4, !tbaa !18
  %idx.ext.i = zext i32 %0 to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %mem32.i, i64 %idx.ext.i
  %large_len.i = getelementptr inbounds %struct.XXH32_state_s, ptr %state_in, i64 0, i32 1
  %1 = load i32, ptr %large_len.i, align 4, !tbaa !17
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %v1.i = getelementptr inbounds %struct.XXH32_state_s, ptr %state_in, i64 0, i32 2
  %2 = load <4 x i32>, ptr %v1.i, align 4, !tbaa !19
  %3 = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %2, <4 x i32> %2, <4 x i32> <i32 1, i32 7, i32 12, i32 18>)
  %4 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %3)
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  %v318.i = getelementptr inbounds %struct.XXH32_state_s, ptr %state_in, i64 0, i32 4
  %5 = load i32, ptr %v318.i, align 4, !tbaa !21
  %add19.i = add i32 %5, 374761393
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %h32.0.i = phi i32 [ %4, %if.then.i ], [ %add19.i, %if.else.i ]
  %6 = load i32, ptr %state_in, align 4, !tbaa !14
  %add20.i = add i32 %6, %h32.0.i
  %cmp.not2.i = icmp ult i32 %0, 4
  br i1 %cmp.not2.i, label %while.cond28.preheader.i, label %while.body.preheader.i

while.body.preheader.i:                           ; preds = %if.end.i
  %add.ptr211.i = getelementptr inbounds i8, ptr %mem32.i, i64 4
  br label %while.body.i

while.cond28.preheader.i:                         ; preds = %while.body.i, %if.end.i
  %p.0.lcssa.i = phi ptr [ %mem32.i, %if.end.i ], [ %add.ptr215.i, %while.body.i ]
  %h32.1.lcssa.i = phi i32 [ %add20.i, %if.end.i ], [ %mul26.i, %while.body.i ]
  %cmp297.i = icmp ult ptr %p.0.lcssa.i, %add.ptr.i
  br i1 %cmp297.i, label %while.body30.i, label %XXH32_digest_endian.exit

while.body.i:                                     ; preds = %while.body.i, %while.body.preheader.i
  %add.ptr215.i = phi ptr [ %add.ptr21.i, %while.body.i ], [ %add.ptr211.i, %while.body.preheader.i ]
  %h32.14.i = phi i32 [ %mul26.i, %while.body.i ], [ %add20.i, %while.body.preheader.i ]
  %p.03.i = phi ptr [ %add.ptr215.i, %while.body.i ], [ %mem32.i, %while.body.preheader.i ]
  %p.0.val.i = load i32, ptr %p.03.i, align 1
  %mul.i = mul i32 %p.0.val.i, -1028477379
  %add22.i = add i32 %mul.i, %h32.14.i
  %or25.i = tail call i32 @llvm.fshl.i32(i32 %add22.i, i32 %add22.i, i32 17) #14
  %mul26.i = mul i32 %or25.i, 668265263
  %add.ptr21.i = getelementptr inbounds i8, ptr %add.ptr215.i, i64 4
  %cmp.not.i = icmp ugt ptr %add.ptr21.i, %add.ptr.i
  br i1 %cmp.not.i, label %while.cond28.preheader.i, label %while.body.i, !llvm.loop !22

while.body30.i:                                   ; preds = %while.cond28.preheader.i, %while.body30.i
  %h32.29.i = phi i32 [ %mul36.i, %while.body30.i ], [ %h32.1.lcssa.i, %while.cond28.preheader.i ]
  %p.18.i = phi ptr [ %incdec.ptr.i, %while.body30.i ], [ %p.0.lcssa.i, %while.cond28.preheader.i ]
  %7 = load i8, ptr %p.18.i, align 1, !tbaa !7
  %conv.i = zext i8 %7 to i32
  %mul31.i = mul i32 %conv.i, 374761393
  %add32.i = add i32 %mul31.i, %h32.29.i
  %or35.i = tail call i32 @llvm.fshl.i32(i32 %add32.i, i32 %add32.i, i32 11) #14
  %mul36.i = mul i32 %or35.i, -1640531535
  %incdec.ptr.i = getelementptr inbounds i8, ptr %p.18.i, i64 1
  %cmp29.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp29.i, label %while.body30.i, label %XXH32_digest_endian.exit, !llvm.loop !23

XXH32_digest_endian.exit:                         ; preds = %while.body30.i, %while.cond28.preheader.i
  %h32.2.lcssa.i = phi i32 [ %h32.1.lcssa.i, %while.cond28.preheader.i ], [ %mul36.i, %while.body30.i ]
  %shr38.i = lshr i32 %h32.2.lcssa.i, 15
  %xor.i = xor i32 %shr38.i, %h32.2.lcssa.i
  %mul39.i = mul i32 %xor.i, -2048144777
  %shr40.i = lshr i32 %mul39.i, 13
  %xor41.i = xor i32 %shr40.i, %mul39.i
  %mul42.i = mul i32 %xor41.i, -1028477379
  %shr43.i = lshr i32 %mul42.i, 16
  %xor44.i = xor i32 %shr43.i, %mul42.i
  ret i32 %xor44.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn writeonly uwtable
define dso_local void @XXH32_canonicalFromHash(ptr nocapture noundef writeonly %dst, i32 noundef %hash) local_unnamed_addr #8 {
entry:
  %or7.i = tail call i32 @llvm.bswap.i32(i32 %hash) #14
  store i32 %or7.i, ptr %dst, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind readonly willreturn uwtable
define dso_local i32 @XXH32_hashFromCanonical(ptr nocapture noundef readonly %src) local_unnamed_addr #9 {
entry:
  %src.val = load i32, ptr %src, align 1
  %or7.i.i = tail call i32 @llvm.bswap.i32(i32 %src.val) #14
  ret i32 %or7.i.i
}

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i64 @XXH64(ptr noundef readonly %input, i64 noundef %len, i64 noundef %seed) local_unnamed_addr #1 {
entry:
  %input6 = ptrtoint ptr %input to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %input, i64 %len
  %cmp.i = icmp ugt i64 %len, 31
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %add.ptr1.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 -32
  %add2.i = add i64 %seed, 6983438078262162902
  %add3.i = add i64 %seed, -4417276706812531889
  %sub.i = add i64 %seed, 7046029288634856825
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %if.then.i
  %v1.0.i = phi i64 [ %add2.i, %if.then.i ], [ %mul1.i.i, %do.body.i ]
  %v2.0.i = phi i64 [ %add3.i, %if.then.i ], [ %mul1.i5.i, %do.body.i ]
  %v3.0.i = phi i64 [ %seed, %if.then.i ], [ %mul1.i9.i, %do.body.i ]
  %v4.0.i = phi i64 [ %sub.i, %if.then.i ], [ %mul1.i13.i, %do.body.i ]
  %p.0.i = phi ptr [ %input, %if.then.i ], [ %add.ptr15.i, %do.body.i ]
  %p.0.val.i = load i64, ptr %p.0.i, align 1
  %mul.i.i = mul i64 %p.0.val.i, -4417276706812531889
  %add.i.i = add i64 %mul.i.i, %v1.0.i
  %or.i.i = tail call i64 @llvm.fshl.i64(i64 %add.i.i, i64 %add.i.i, i64 31) #14
  %mul1.i.i = mul i64 %or.i.i, -7046029288634856825
  %add.ptr6.i = getelementptr inbounds i8, ptr %p.0.i, i64 8
  %add.ptr6.val.i = load i64, ptr %add.ptr6.i, align 1
  %mul.i2.i = mul i64 %add.ptr6.val.i, -4417276706812531889
  %add.i3.i = add i64 %mul.i2.i, %v2.0.i
  %or.i4.i = tail call i64 @llvm.fshl.i64(i64 %add.i3.i, i64 %add.i3.i, i64 31) #14
  %mul1.i5.i = mul i64 %or.i4.i, -7046029288634856825
  %add.ptr9.i = getelementptr inbounds i8, ptr %p.0.i, i64 16
  %add.ptr9.val.i = load i64, ptr %add.ptr9.i, align 1
  %mul.i6.i = mul i64 %add.ptr9.val.i, -4417276706812531889
  %add.i7.i = add i64 %mul.i6.i, %v3.0.i
  %or.i8.i = tail call i64 @llvm.fshl.i64(i64 %add.i7.i, i64 %add.i7.i, i64 31) #14
  %mul1.i9.i = mul i64 %or.i8.i, -7046029288634856825
  %add.ptr12.i = getelementptr inbounds i8, ptr %p.0.i, i64 24
  %add.ptr12.val.i = load i64, ptr %add.ptr12.i, align 1
  %mul.i10.i = mul i64 %add.ptr12.val.i, -4417276706812531889
  %add.i11.i = add i64 %mul.i10.i, %v4.0.i
  %or.i12.i = tail call i64 @llvm.fshl.i64(i64 %add.i11.i, i64 %add.i11.i, i64 31) #14
  %mul1.i13.i = mul i64 %or.i12.i, -7046029288634856825
  %add.ptr15.i = getelementptr inbounds i8, ptr %p.0.i, i64 32
  %cmp16.not.i = icmp ugt ptr %add.ptr15.i, %add.ptr1.i
  br i1 %cmp16.not.i, label %do.end.i, label %do.body.i, !llvm.loop !24

do.end.i:                                         ; preds = %do.body.i
  %or.i = tail call i64 @llvm.fshl.i64(i64 %mul1.i.i, i64 %mul1.i.i, i64 1) #14
  %or19.i = tail call i64 @llvm.fshl.i64(i64 %mul1.i5.i, i64 %mul1.i5.i, i64 7) #14
  %add20.i = add i64 %or19.i, %or.i
  %or23.i = tail call i64 @llvm.fshl.i64(i64 %mul1.i9.i, i64 %mul1.i9.i, i64 12) #14
  %add24.i = add i64 %add20.i, %or23.i
  %or27.i = tail call i64 @llvm.fshl.i64(i64 %mul1.i13.i, i64 %mul1.i13.i, i64 18) #14
  %add28.i = add i64 %add24.i, %or27.i
  %mul.i.i.i = mul i64 %or.i.i, -2381459717836149591
  %or.i.i.i = tail call i64 @llvm.fshl.i64(i64 %mul.i.i.i, i64 %mul.i.i.i, i64 31) #14
  %mul1.i.i.i = mul i64 %or.i.i.i, -7046029288634856825
  %xor.i.i = xor i64 %add28.i, %mul1.i.i.i
  %mul.i14.i = mul i64 %xor.i.i, -7046029288634856825
  %add.i15.i = add i64 %mul.i14.i, -8796714831421723037
  %mul.i.i16.i = mul i64 %or.i4.i, -2381459717836149591
  %or.i.i17.i = tail call i64 @llvm.fshl.i64(i64 %mul.i.i16.i, i64 %mul.i.i16.i, i64 31) #14
  %mul1.i.i18.i = mul i64 %or.i.i17.i, -7046029288634856825
  %xor.i19.i = xor i64 %add.i15.i, %mul1.i.i18.i
  %mul.i20.i = mul i64 %xor.i19.i, -7046029288634856825
  %add.i21.i = add i64 %mul.i20.i, -8796714831421723037
  %mul.i.i22.i = mul i64 %or.i8.i, -2381459717836149591
  %or.i.i23.i = tail call i64 @llvm.fshl.i64(i64 %mul.i.i22.i, i64 %mul.i.i22.i, i64 31) #14
  %mul1.i.i24.i = mul i64 %or.i.i23.i, -7046029288634856825
  %xor.i25.i = xor i64 %add.i21.i, %mul1.i.i24.i
  %mul.i26.i = mul i64 %xor.i25.i, -7046029288634856825
  %add.i27.i = add i64 %mul.i26.i, -8796714831421723037
  %mul.i.i28.i = mul i64 %or.i12.i, -2381459717836149591
  %or.i.i29.i = tail call i64 @llvm.fshl.i64(i64 %mul.i.i28.i, i64 %mul.i.i28.i, i64 31) #14
  %mul1.i.i30.i = mul i64 %or.i.i29.i, -7046029288634856825
  %xor.i31.i = xor i64 %add.i27.i, %mul1.i.i30.i
  %mul.i32.i = mul i64 %xor.i31.i, -7046029288634856825
  %add.i33.i = add i64 %mul.i32.i, -8796714831421723037
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  %add33.i = add i64 %seed, 2870177450012600261
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %do.end.i
  %h64.0.i = phi i64 [ %add.i33.i, %do.end.i ], [ %add33.i, %if.else.i ]
  %p.1.i = phi ptr [ %add.ptr15.i, %do.end.i ], [ %input, %if.else.i ]
  %add34.i = add i64 %h64.0.i, %len
  %add.ptr3537.i = getelementptr inbounds i8, ptr %p.1.i, i64 8
  %cmp36.not38.i = icmp ugt ptr %add.ptr3537.i, %add.ptr.i
  br i1 %cmp36.not38.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %if.end.i, %while.body.i
  %add.ptr3541.i = phi ptr [ %add.ptr35.i, %while.body.i ], [ %add.ptr3537.i, %if.end.i ]
  %p.240.i = phi ptr [ %add.ptr3541.i, %while.body.i ], [ %p.1.i, %if.end.i ]
  %h64.139.i = phi i64 [ %add42.i, %while.body.i ], [ %add34.i, %if.end.i ]
  %p.2.val1.i = load i64, ptr %p.240.i, align 1
  %mul.i34.i = mul i64 %p.2.val1.i, -4417276706812531889
  %or.i35.i = tail call i64 @llvm.fshl.i64(i64 %mul.i34.i, i64 %mul.i34.i, i64 31) #14
  %mul1.i36.i = mul i64 %or.i35.i, -7046029288634856825
  %xor.i = xor i64 %mul1.i36.i, %h64.139.i
  %or41.i = tail call i64 @llvm.fshl.i64(i64 %xor.i, i64 %xor.i, i64 27) #14
  %mul.i = mul i64 %or41.i, -7046029288634856825
  %add42.i = add i64 %mul.i, -8796714831421723037
  %add.ptr35.i = getelementptr inbounds i8, ptr %add.ptr3541.i, i64 8
  %cmp36.not.i = icmp ugt ptr %add.ptr35.i, %add.ptr.i
  br i1 %cmp36.not.i, label %while.end.i, label %while.body.i, !llvm.loop !25

while.end.i:                                      ; preds = %while.body.i, %if.end.i
  %h64.1.lcssa.i = phi i64 [ %add34.i, %if.end.i ], [ %add42.i, %while.body.i ]
  %p.2.lcssa.i = phi ptr [ %p.1.i, %if.end.i ], [ %add.ptr3541.i, %while.body.i ]
  %add.ptr44.i = getelementptr inbounds i8, ptr %p.2.lcssa.i, i64 4
  %cmp45.not.i = icmp ugt ptr %add.ptr44.i, %add.ptr.i
  br i1 %cmp45.not.i, label %if.end56.i, label %if.then46.i

if.then46.i:                                      ; preds = %while.end.i
  %p.2.val.i = load i32, ptr %p.2.lcssa.i, align 1
  %conv.i = zext i32 %p.2.val.i to i64
  %mul48.i = mul i64 %conv.i, -7046029288634856825
  %xor49.i = xor i64 %mul48.i, %h64.1.lcssa.i
  %or52.i = tail call i64 @llvm.fshl.i64(i64 %xor49.i, i64 %xor49.i, i64 23) #14
  %mul53.i = mul i64 %or52.i, -4417276706812531889
  %add54.i = add i64 %mul53.i, 1609587929392839161
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then46.i, %while.end.i
  %h64.2.i = phi i64 [ %add54.i, %if.then46.i ], [ %h64.1.lcssa.i, %while.end.i ]
  %p.3.i = phi ptr [ %add.ptr44.i, %if.then46.i ], [ %p.2.lcssa.i, %while.end.i ]
  %cmp5843.i = icmp ult ptr %p.3.i, %add.ptr.i
  br i1 %cmp5843.i, label %while.body60.i.preheader, label %XXH64_endian_align.exit

while.body60.i.preheader:                         ; preds = %if.end56.i
  %p.3.i7 = ptrtoint ptr %p.3.i to i64
  %0 = add i64 %input6, %len
  %1 = sub i64 %0, %p.3.i7
  %2 = xor i64 %p.3.i7, -1
  %3 = add i64 %0, %2
  %xtraiter = and i64 %1, 3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %while.body60.i.prol.loopexit, label %while.body60.i.prol

while.body60.i.prol:                              ; preds = %while.body60.i.preheader, %while.body60.i.prol
  %p.445.i.prol = phi ptr [ %incdec.ptr.i.prol, %while.body60.i.prol ], [ %p.3.i, %while.body60.i.preheader ]
  %h64.344.i.prol = phi i64 [ %mul67.i.prol, %while.body60.i.prol ], [ %h64.2.i, %while.body60.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %while.body60.i.prol ], [ 0, %while.body60.i.preheader ]
  %4 = load i8, ptr %p.445.i.prol, align 1, !tbaa !7
  %conv61.i.prol = zext i8 %4 to i64
  %mul62.i.prol = mul i64 %conv61.i.prol, 2870177450012600261
  %xor63.i.prol = xor i64 %mul62.i.prol, %h64.344.i.prol
  %or66.i.prol = tail call i64 @llvm.fshl.i64(i64 %xor63.i.prol, i64 %xor63.i.prol, i64 11) #14
  %mul67.i.prol = mul i64 %or66.i.prol, -7046029288634856825
  %incdec.ptr.i.prol = getelementptr inbounds i8, ptr %p.445.i.prol, i64 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %while.body60.i.prol.loopexit, label %while.body60.i.prol, !llvm.loop !26

while.body60.i.prol.loopexit:                     ; preds = %while.body60.i.prol, %while.body60.i.preheader
  %p.445.i.unr = phi ptr [ %p.3.i, %while.body60.i.preheader ], [ %incdec.ptr.i.prol, %while.body60.i.prol ]
  %h64.344.i.unr = phi i64 [ %h64.2.i, %while.body60.i.preheader ], [ %mul67.i.prol, %while.body60.i.prol ]
  %mul67.i.lcssa.unr = phi i64 [ undef, %while.body60.i.preheader ], [ %mul67.i.prol, %while.body60.i.prol ]
  %5 = icmp ult i64 %3, 3
  br i1 %5, label %XXH64_endian_align.exit, label %while.body60.i

while.body60.i:                                   ; preds = %while.body60.i.prol.loopexit, %while.body60.i
  %p.445.i = phi ptr [ %incdec.ptr.i.3, %while.body60.i ], [ %p.445.i.unr, %while.body60.i.prol.loopexit ]
  %h64.344.i = phi i64 [ %mul67.i.3, %while.body60.i ], [ %h64.344.i.unr, %while.body60.i.prol.loopexit ]
  %6 = load i8, ptr %p.445.i, align 1, !tbaa !7
  %conv61.i = zext i8 %6 to i64
  %mul62.i = mul i64 %conv61.i, 2870177450012600261
  %xor63.i = xor i64 %mul62.i, %h64.344.i
  %or66.i = tail call i64 @llvm.fshl.i64(i64 %xor63.i, i64 %xor63.i, i64 11) #14
  %mul67.i = mul i64 %or66.i, -7046029288634856825
  %incdec.ptr.i = getelementptr inbounds i8, ptr %p.445.i, i64 1
  %7 = load i8, ptr %incdec.ptr.i, align 1, !tbaa !7
  %conv61.i.1 = zext i8 %7 to i64
  %mul62.i.1 = mul i64 %conv61.i.1, 2870177450012600261
  %xor63.i.1 = xor i64 %mul62.i.1, %mul67.i
  %or66.i.1 = tail call i64 @llvm.fshl.i64(i64 %xor63.i.1, i64 %xor63.i.1, i64 11) #14
  %mul67.i.1 = mul i64 %or66.i.1, -7046029288634856825
  %incdec.ptr.i.1 = getelementptr inbounds i8, ptr %p.445.i, i64 2
  %8 = load i8, ptr %incdec.ptr.i.1, align 1, !tbaa !7
  %conv61.i.2 = zext i8 %8 to i64
  %mul62.i.2 = mul i64 %conv61.i.2, 2870177450012600261
  %xor63.i.2 = xor i64 %mul62.i.2, %mul67.i.1
  %or66.i.2 = tail call i64 @llvm.fshl.i64(i64 %xor63.i.2, i64 %xor63.i.2, i64 11) #14
  %mul67.i.2 = mul i64 %or66.i.2, -7046029288634856825
  %incdec.ptr.i.2 = getelementptr inbounds i8, ptr %p.445.i, i64 3
  %9 = load i8, ptr %incdec.ptr.i.2, align 1, !tbaa !7
  %conv61.i.3 = zext i8 %9 to i64
  %mul62.i.3 = mul i64 %conv61.i.3, 2870177450012600261
  %xor63.i.3 = xor i64 %mul62.i.3, %mul67.i.2
  %or66.i.3 = tail call i64 @llvm.fshl.i64(i64 %xor63.i.3, i64 %xor63.i.3, i64 11) #14
  %mul67.i.3 = mul i64 %or66.i.3, -7046029288634856825
  %incdec.ptr.i.3 = getelementptr inbounds i8, ptr %p.445.i, i64 4
  %cmp58.i.3 = icmp ult ptr %incdec.ptr.i.3, %add.ptr.i
  br i1 %cmp58.i.3, label %while.body60.i, label %XXH64_endian_align.exit, !llvm.loop !27

XXH64_endian_align.exit:                          ; preds = %while.body60.i.prol.loopexit, %while.body60.i, %if.end56.i
  %h64.3.lcssa.i = phi i64 [ %h64.2.i, %if.end56.i ], [ %mul67.i.lcssa.unr, %while.body60.i.prol.loopexit ], [ %mul67.i.3, %while.body60.i ]
  %shr69.i = lshr i64 %h64.3.lcssa.i, 33
  %xor70.i = xor i64 %shr69.i, %h64.3.lcssa.i
  %mul71.i = mul i64 %xor70.i, -4417276706812531889
  %shr72.i = lshr i64 %mul71.i, 29
  %xor73.i = xor i64 %shr72.i, %mul71.i
  %mul74.i = mul i64 %xor73.i, 1609587929392839161
  %shr75.i = lshr i64 %mul74.i, 32
  %xor76.i = xor i64 %shr75.i, %mul74.i
  ret i64 %xor76.i
}

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local noalias ptr @XXH64_createState() local_unnamed_addr #2 {
entry:
  %call.i = tail call noalias dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #15
  ret ptr %call.i
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local i32 @XXH64_freeState(ptr nocapture noundef %statePtr) local_unnamed_addr #3 {
entry:
  tail call void @free(ptr noundef %statePtr) #14
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn uwtable
define dso_local void @XXH64_copyState(ptr nocapture noundef writeonly %dstState, ptr nocapture noundef readonly %srcState) local_unnamed_addr #4 {
entry:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %dstState, ptr noundef nonnull align 8 dereferenceable(88) %srcState, i64 88, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn uwtable
define dso_local i32 @XXH64_reset(ptr nocapture noundef writeonly %statePtr, i64 noundef %seed) local_unnamed_addr #4 {
entry:
  %0 = insertelement <2 x i64> poison, i64 %seed, i64 0
  %1 = shufflevector <2 x i64> %0, <2 x i64> poison, <2 x i32> zeroinitializer
  %2 = add <2 x i64> %1, <i64 6983438078262162902, i64 -4417276706812531889>
  %sub = add i64 %seed, 7046029288634856825
  store i64 0, ptr %statePtr, align 8
  %state.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %statePtr, i64 8
  store <2 x i64> %2, ptr %state.sroa.4.0..sroa_idx, align 8
  %state.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %statePtr, i64 24
  store i64 %seed, ptr %state.sroa.6.0..sroa_idx, align 8
  %state.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %statePtr, i64 32
  store i64 %sub, ptr %state.sroa.7.0..sroa_idx, align 8
  %state.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %statePtr, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %state.sroa.8.0..sroa_idx, i8 0, i64 40, i1 false)
  ret i32 0
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @XXH64_update(ptr nocapture noundef %state_in, ptr noundef %input, i64 noundef %len) local_unnamed_addr #7 {
entry:
  %add.ptr.i = getelementptr inbounds i8, ptr %input, i64 %len
  %0 = load i64, ptr %state_in, align 8, !tbaa !28
  %add.i = add i64 %0, %len
  store i64 %add.i, ptr %state_in, align 8, !tbaa !28
  %memsize.i = getelementptr inbounds %struct.XXH64_state_s, ptr %state_in, i64 0, i32 6
  %1 = load i32, ptr %memsize.i, align 8, !tbaa !31
  %conv.i = zext i32 %1 to i64
  %add1.i = add i64 %conv.i, %len
  %cmp.i = icmp ult i64 %add1.i, 32
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %mem64.i = getelementptr inbounds %struct.XXH64_state_s, ptr %state_in, i64 0, i32 5
  %add.ptr4.i = getelementptr inbounds i8, ptr %mem64.i, i64 %conv.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr4.i, ptr align 1 %input, i64 %len, i1 false) #14
  %conv5.i = trunc i64 %len to i32
  %2 = load i32, ptr %memsize.i, align 8, !tbaa !31
  %add7.i = add i32 %2, %conv5.i
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %entry
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.end47.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i
  %mem6410.i = getelementptr inbounds %struct.XXH64_state_s, ptr %state_in, i64 0, i32 5
  %add.ptr14.i = getelementptr inbounds i8, ptr %mem6410.i, i64 %conv.i
  %sub.i = sub i32 32, %1
  %conv16.i = zext i32 %sub.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr14.i, ptr align 1 %input, i64 %conv16.i, i1 false) #14
  %v1.i = getelementptr inbounds %struct.XXH64_state_s, ptr %state_in, i64 0, i32 1
  %3 = load i64, ptr %v1.i, align 8, !tbaa !32
  %mem6410.val.i = load i64, ptr %mem6410.i, align 1
  %mul.i.i = mul i64 %mem6410.val.i, -4417276706812531889
  %add.i.i = add i64 %mul.i.i, %3
  %or.i.i = tail call i64 @llvm.fshl.i64(i64 %add.i.i, i64 %add.i.i, i64 31) #14
  %mul1.i.i = mul i64 %or.i.i, -7046029288634856825
  store i64 %mul1.i.i, ptr %v1.i, align 8, !tbaa !32
  %v2.i = getelementptr inbounds %struct.XXH64_state_s, ptr %state_in, i64 0, i32 2
  %4 = load i64, ptr %v2.i, align 8, !tbaa !33
  %add.ptr26.i = getelementptr inbounds i64, ptr %mem6410.i, i64 1
  %add.ptr26.val.i = load i64, ptr %add.ptr26.i, align 1
  %mul.i1.i = mul i64 %add.ptr26.val.i, -4417276706812531889
  %add.i2.i = add i64 %mul.i1.i, %4
  %or.i3.i = tail call i64 @llvm.fshl.i64(i64 %add.i2.i, i64 %add.i2.i, i64 31) #14
  %mul1.i4.i = mul i64 %or.i3.i, -7046029288634856825
  store i64 %mul1.i4.i, ptr %v2.i, align 8, !tbaa !33
  %v3.i = getelementptr inbounds %struct.XXH64_state_s, ptr %state_in, i64 0, i32 3
  %5 = load i64, ptr %v3.i, align 8, !tbaa !34
  %add.ptr32.i = getelementptr inbounds i64, ptr %mem6410.i, i64 2
  %add.ptr32.val.i = load i64, ptr %add.ptr32.i, align 1
  %mul.i5.i = mul i64 %add.ptr32.val.i, -4417276706812531889
  %add.i6.i = add i64 %mul.i5.i, %5
  %or.i7.i = tail call i64 @llvm.fshl.i64(i64 %add.i6.i, i64 %add.i6.i, i64 31) #14
  %mul1.i8.i = mul i64 %or.i7.i, -7046029288634856825
  store i64 %mul1.i8.i, ptr %v3.i, align 8, !tbaa !34
  %v4.i = getelementptr inbounds %struct.XXH64_state_s, ptr %state_in, i64 0, i32 4
  %6 = load i64, ptr %v4.i, align 8, !tbaa !35
  %add.ptr38.i = getelementptr inbounds i64, ptr %mem6410.i, i64 3
  %add.ptr38.val.i = load i64, ptr %add.ptr38.i, align 1
  %mul.i9.i = mul i64 %add.ptr38.val.i, -4417276706812531889
  %add.i10.i = add i64 %mul.i9.i, %6
  %or.i11.i = tail call i64 @llvm.fshl.i64(i64 %add.i10.i, i64 %add.i10.i, i64 31) #14
  %mul1.i12.i = mul i64 %or.i11.i, -7046029288634856825
  store i64 %mul1.i12.i, ptr %v4.i, align 8, !tbaa !35
  %7 = load i32, ptr %memsize.i, align 8, !tbaa !31
  %sub43.i = sub i32 32, %7
  %idx.ext44.i = zext i32 %sub43.i to i64
  %add.ptr45.i = getelementptr inbounds i8, ptr %input, i64 %idx.ext44.i
  store i32 0, ptr %memsize.i, align 8, !tbaa !31
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then9.i, %if.end.i
  %p.0.i = phi ptr [ %add.ptr45.i, %if.then9.i ], [ %input, %if.end.i ]
  %add.ptr48.i = getelementptr inbounds i8, ptr %p.0.i, i64 32
  %cmp49.not.i = icmp ugt ptr %add.ptr48.i, %add.ptr.i
  br i1 %cmp49.not.i, label %if.end79.i, label %if.then51.i

if.then51.i:                                      ; preds = %if.end47.i
  %add.ptr52.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 -32
  %v154.i = getelementptr inbounds %struct.XXH64_state_s, ptr %state_in, i64 0, i32 1
  %8 = load i64, ptr %v154.i, align 8, !tbaa !32
  %v256.i = getelementptr inbounds %struct.XXH64_state_s, ptr %state_in, i64 0, i32 2
  %9 = load i64, ptr %v256.i, align 8, !tbaa !33
  %v358.i = getelementptr inbounds %struct.XXH64_state_s, ptr %state_in, i64 0, i32 3
  %10 = load i64, ptr %v358.i, align 8, !tbaa !34
  %v460.i = getelementptr inbounds %struct.XXH64_state_s, ptr %state_in, i64 0, i32 4
  %11 = load i64, ptr %v460.i, align 8, !tbaa !35
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %if.then51.i
  %p.1.i = phi ptr [ %p.0.i, %if.then51.i ], [ %add.ptr72.i, %do.body.i ]
  %v153.0.i = phi i64 [ %8, %if.then51.i ], [ %mul1.i16.i, %do.body.i ]
  %v255.0.i = phi i64 [ %9, %if.then51.i ], [ %mul1.i20.i, %do.body.i ]
  %v357.0.i = phi i64 [ %10, %if.then51.i ], [ %mul1.i24.i, %do.body.i ]
  %v459.0.i = phi i64 [ %11, %if.then51.i ], [ %mul1.i28.i, %do.body.i ]
  %p.1.val.i = load i64, ptr %p.1.i, align 1
  %mul.i13.i = mul i64 %p.1.val.i, -4417276706812531889
  %add.i14.i = add i64 %mul.i13.i, %v153.0.i
  %or.i15.i = tail call i64 @llvm.fshl.i64(i64 %add.i14.i, i64 %add.i14.i, i64 31) #14
  %mul1.i16.i = mul i64 %or.i15.i, -7046029288634856825
  %add.ptr63.i = getelementptr inbounds i8, ptr %p.1.i, i64 8
  %add.ptr63.val.i = load i64, ptr %add.ptr63.i, align 1
  %mul.i17.i = mul i64 %add.ptr63.val.i, -4417276706812531889
  %add.i18.i = add i64 %mul.i17.i, %v255.0.i
  %or.i19.i = tail call i64 @llvm.fshl.i64(i64 %add.i18.i, i64 %add.i18.i, i64 31) #14
  %mul1.i20.i = mul i64 %or.i19.i, -7046029288634856825
  %add.ptr66.i = getelementptr inbounds i8, ptr %p.1.i, i64 16
  %add.ptr66.val.i = load i64, ptr %add.ptr66.i, align 1
  %mul.i21.i = mul i64 %add.ptr66.val.i, -4417276706812531889
  %add.i22.i = add i64 %mul.i21.i, %v357.0.i
  %or.i23.i = tail call i64 @llvm.fshl.i64(i64 %add.i22.i, i64 %add.i22.i, i64 31) #14
  %mul1.i24.i = mul i64 %or.i23.i, -7046029288634856825
  %add.ptr69.i = getelementptr inbounds i8, ptr %p.1.i, i64 24
  %add.ptr69.val.i = load i64, ptr %add.ptr69.i, align 1
  %mul.i25.i = mul i64 %add.ptr69.val.i, -4417276706812531889
  %add.i26.i = add i64 %mul.i25.i, %v459.0.i
  %or.i27.i = tail call i64 @llvm.fshl.i64(i64 %add.i26.i, i64 %add.i26.i, i64 31) #14
  %mul1.i28.i = mul i64 %or.i27.i, -7046029288634856825
  %add.ptr72.i = getelementptr inbounds i8, ptr %p.1.i, i64 32
  %cmp73.not.i = icmp ugt ptr %add.ptr72.i, %add.ptr52.i
  br i1 %cmp73.not.i, label %do.end.i, label %do.body.i, !llvm.loop !36

do.end.i:                                         ; preds = %do.body.i
  store i64 %mul1.i16.i, ptr %v154.i, align 8, !tbaa !32
  store i64 %mul1.i20.i, ptr %v256.i, align 8, !tbaa !33
  store i64 %mul1.i24.i, ptr %v358.i, align 8, !tbaa !34
  store i64 %mul1.i28.i, ptr %v460.i, align 8, !tbaa !35
  br label %if.end79.i

if.end79.i:                                       ; preds = %do.end.i, %if.end47.i
  %p.2.i = phi ptr [ %add.ptr72.i, %do.end.i ], [ %p.0.i, %if.end47.i ]
  %cmp80.i = icmp ult ptr %p.2.i, %add.ptr.i
  br i1 %cmp80.i, label %if.then82.i, label %XXH64_update_endian.exit

if.then82.i:                                      ; preds = %if.end79.i
  %mem6483.i = getelementptr inbounds %struct.XXH64_state_s, ptr %state_in, i64 0, i32 5
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %p.2.i to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %mem6483.i, ptr align 1 %p.2.i, i64 %sub.ptr.sub.i, i1 false) #14
  %conv89.i = trunc i64 %sub.ptr.sub.i to i32
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then82.i, %if.then.i
  %conv89.sink.i = phi i32 [ %conv89.i, %if.then82.i ], [ %add7.i, %if.then.i ]
  store i32 %conv89.sink.i, ptr %memsize.i, align 8, !tbaa !31
  br label %XXH64_update_endian.exit

XXH64_update_endian.exit:                         ; preds = %if.end79.i, %cleanup.sink.split.i
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i64 @XXH64_digest(ptr noundef readonly %state_in) local_unnamed_addr #1 {
entry:
  %mem64.i = getelementptr inbounds %struct.XXH64_state_s, ptr %state_in, i64 0, i32 5
  %memsize.i = getelementptr inbounds %struct.XXH64_state_s, ptr %state_in, i64 0, i32 6
  %0 = load i32, ptr %memsize.i, align 8, !tbaa !31
  %idx.ext.i = zext i32 %0 to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %mem64.i, i64 %idx.ext.i
  %1 = load i64, ptr %state_in, align 8, !tbaa !28
  %cmp.i = icmp ugt i64 %1, 31
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %v13.i = getelementptr inbounds %struct.XXH64_state_s, ptr %state_in, i64 0, i32 1
  %2 = load i64, ptr %v13.i, align 8, !tbaa !32
  %v24.i = getelementptr inbounds %struct.XXH64_state_s, ptr %state_in, i64 0, i32 2
  %3 = load i64, ptr %v24.i, align 8, !tbaa !33
  %v35.i = getelementptr inbounds %struct.XXH64_state_s, ptr %state_in, i64 0, i32 3
  %4 = load i64, ptr %v35.i, align 8, !tbaa !34
  %v46.i = getelementptr inbounds %struct.XXH64_state_s, ptr %state_in, i64 0, i32 4
  %5 = load i64, ptr %v46.i, align 8, !tbaa !35
  %or.i = tail call i64 @llvm.fshl.i64(i64 %2, i64 %2, i64 1) #14
  %or9.i = tail call i64 @llvm.fshl.i64(i64 %3, i64 %3, i64 7) #14
  %add.i = add i64 %or9.i, %or.i
  %or12.i = tail call i64 @llvm.fshl.i64(i64 %4, i64 %4, i64 12) #14
  %add13.i = add i64 %add.i, %or12.i
  %or16.i = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 18) #14
  %add17.i = add i64 %add13.i, %or16.i
  %mul.i.i.i = mul i64 %2, -4417276706812531889
  %or.i.i.i = tail call i64 @llvm.fshl.i64(i64 %mul.i.i.i, i64 %mul.i.i.i, i64 31) #14
  %mul1.i.i.i = mul i64 %or.i.i.i, -7046029288634856825
  %xor.i.i = xor i64 %add17.i, %mul1.i.i.i
  %mul.i.i = mul i64 %xor.i.i, -7046029288634856825
  %add.i.i = add i64 %mul.i.i, -8796714831421723037
  %mul.i.i2.i = mul i64 %3, -4417276706812531889
  %or.i.i3.i = tail call i64 @llvm.fshl.i64(i64 %mul.i.i2.i, i64 %mul.i.i2.i, i64 31) #14
  %mul1.i.i4.i = mul i64 %or.i.i3.i, -7046029288634856825
  %xor.i5.i = xor i64 %add.i.i, %mul1.i.i4.i
  %mul.i6.i = mul i64 %xor.i5.i, -7046029288634856825
  %add.i7.i = add i64 %mul.i6.i, -8796714831421723037
  %mul.i.i8.i = mul i64 %4, -4417276706812531889
  %or.i.i9.i = tail call i64 @llvm.fshl.i64(i64 %mul.i.i8.i, i64 %mul.i.i8.i, i64 31) #14
  %mul1.i.i10.i = mul i64 %or.i.i9.i, -7046029288634856825
  %xor.i11.i = xor i64 %add.i7.i, %mul1.i.i10.i
  %mul.i12.i = mul i64 %xor.i11.i, -7046029288634856825
  %add.i13.i = add i64 %mul.i12.i, -8796714831421723037
  %mul.i.i14.i = mul i64 %5, -4417276706812531889
  %or.i.i15.i = tail call i64 @llvm.fshl.i64(i64 %mul.i.i14.i, i64 %mul.i.i14.i, i64 31) #14
  %mul1.i.i16.i = mul i64 %or.i.i15.i, -7046029288634856825
  %xor.i17.i = xor i64 %add.i13.i, %mul1.i.i16.i
  %mul.i18.i = mul i64 %xor.i17.i, -7046029288634856825
  %add.i19.i = add i64 %mul.i18.i, -8796714831421723037
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  %v321.i = getelementptr inbounds %struct.XXH64_state_s, ptr %state_in, i64 0, i32 3
  %6 = load i64, ptr %v321.i, align 8, !tbaa !34
  %add22.i = add i64 %6, 2870177450012600261
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %h64.0.i = phi i64 [ %add.i19.i, %if.then.i ], [ %add22.i, %if.else.i ]
  %add24.i = add i64 %h64.0.i, %1
  %cmp26.not22.i = icmp ult i32 %0, 8
  br i1 %cmp26.not22.i, label %while.end.i, label %while.body.preheader.i

while.body.preheader.i:                           ; preds = %if.end.i
  %add.ptr2521.i = getelementptr inbounds i8, ptr %mem64.i, i64 8
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.preheader.i
  %add.ptr2525.i = phi ptr [ %add.ptr25.i, %while.body.i ], [ %add.ptr2521.i, %while.body.preheader.i ]
  %p.024.i = phi ptr [ %add.ptr2525.i, %while.body.i ], [ %mem64.i, %while.body.preheader.i ]
  %h64.123.i = phi i64 [ %add32.i, %while.body.i ], [ %add24.i, %while.body.preheader.i ]
  %p.0.val1.i = load i64, ptr %p.024.i, align 1
  %mul.i20.i = mul i64 %p.0.val1.i, -4417276706812531889
  %or.i.i = tail call i64 @llvm.fshl.i64(i64 %mul.i20.i, i64 %mul.i20.i, i64 31) #14
  %mul1.i.i = mul i64 %or.i.i, -7046029288634856825
  %xor.i = xor i64 %mul1.i.i, %h64.123.i
  %or31.i = tail call i64 @llvm.fshl.i64(i64 %xor.i, i64 %xor.i, i64 27) #14
  %mul.i = mul i64 %or31.i, -7046029288634856825
  %add32.i = add i64 %mul.i, -8796714831421723037
  %add.ptr25.i = getelementptr inbounds i8, ptr %add.ptr2525.i, i64 8
  %cmp26.not.i = icmp ugt ptr %add.ptr25.i, %add.ptr.i
  br i1 %cmp26.not.i, label %while.end.i, label %while.body.i, !llvm.loop !37

while.end.i:                                      ; preds = %while.body.i, %if.end.i
  %h64.1.lcssa.i = phi i64 [ %add24.i, %if.end.i ], [ %add32.i, %while.body.i ]
  %p.0.lcssa.i = phi ptr [ %mem64.i, %if.end.i ], [ %add.ptr2525.i, %while.body.i ]
  %add.ptr34.i = getelementptr inbounds i8, ptr %p.0.lcssa.i, i64 4
  %cmp35.not.i = icmp ugt ptr %add.ptr34.i, %add.ptr.i
  br i1 %cmp35.not.i, label %if.end46.i, label %if.then36.i

if.then36.i:                                      ; preds = %while.end.i
  %p.0.val.i = load i32, ptr %p.0.lcssa.i, align 1
  %conv.i = zext i32 %p.0.val.i to i64
  %mul38.i = mul i64 %conv.i, -7046029288634856825
  %xor39.i = xor i64 %mul38.i, %h64.1.lcssa.i
  %or42.i = tail call i64 @llvm.fshl.i64(i64 %xor39.i, i64 %xor39.i, i64 23) #14
  %mul43.i = mul i64 %or42.i, -4417276706812531889
  %add44.i = add i64 %mul43.i, 1609587929392839161
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then36.i, %while.end.i
  %h64.2.i = phi i64 [ %add44.i, %if.then36.i ], [ %h64.1.lcssa.i, %while.end.i ]
  %p.1.i = phi ptr [ %add.ptr34.i, %if.then36.i ], [ %p.0.lcssa.i, %while.end.i ]
  %cmp4827.i = icmp ult ptr %p.1.i, %add.ptr.i
  br i1 %cmp4827.i, label %while.body50.i, label %XXH64_digest_endian.exit

while.body50.i:                                   ; preds = %if.end46.i, %while.body50.i
  %p.229.i = phi ptr [ %incdec.ptr.i, %while.body50.i ], [ %p.1.i, %if.end46.i ]
  %h64.328.i = phi i64 [ %mul57.i, %while.body50.i ], [ %h64.2.i, %if.end46.i ]
  %7 = load i8, ptr %p.229.i, align 1, !tbaa !7
  %conv51.i = zext i8 %7 to i64
  %mul52.i = mul i64 %conv51.i, 2870177450012600261
  %xor53.i = xor i64 %mul52.i, %h64.328.i
  %or56.i = tail call i64 @llvm.fshl.i64(i64 %xor53.i, i64 %xor53.i, i64 11) #14
  %mul57.i = mul i64 %or56.i, -7046029288634856825
  %incdec.ptr.i = getelementptr inbounds i8, ptr %p.229.i, i64 1
  %cmp48.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp48.i, label %while.body50.i, label %XXH64_digest_endian.exit, !llvm.loop !38

XXH64_digest_endian.exit:                         ; preds = %while.body50.i, %if.end46.i
  %h64.3.lcssa.i = phi i64 [ %h64.2.i, %if.end46.i ], [ %mul57.i, %while.body50.i ]
  %shr59.i = lshr i64 %h64.3.lcssa.i, 33
  %xor60.i = xor i64 %shr59.i, %h64.3.lcssa.i
  %mul61.i = mul i64 %xor60.i, -4417276706812531889
  %shr62.i = lshr i64 %mul61.i, 29
  %xor63.i = xor i64 %shr62.i, %mul61.i
  %mul64.i = mul i64 %xor63.i, 1609587929392839161
  %shr65.i = lshr i64 %mul64.i, 32
  %xor66.i = xor i64 %shr65.i, %mul64.i
  ret i64 %xor66.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn writeonly uwtable
define dso_local void @XXH64_canonicalFromHash(ptr nocapture noundef writeonly %dst, i64 noundef %hash) local_unnamed_addr #8 {
entry:
  %or19.i = tail call i64 @llvm.bswap.i64(i64 %hash) #14
  store i64 %or19.i, ptr %dst, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind readonly willreturn uwtable
define dso_local i64 @XXH64_hashFromCanonical(ptr nocapture noundef readonly %src) local_unnamed_addr #9 {
entry:
  %src.val = load i64, ptr %src, align 1
  %or19.i.i = tail call i64 @llvm.bswap.i64(i64 %src.val) #14
  ret i64 %or19.i.i
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8, !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = !{!15, !16, i64 0}
!15 = !{!"XXH32_state_s", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !8, i64 24, !16, i64 40, !16, i64 44}
!16 = !{!"int", !8, i64 0}
!17 = !{!15, !16, i64 4}
!18 = !{!15, !16, i64 40}
!19 = !{!16, !16, i64 0}
!20 = distinct !{!20, !6}
!21 = !{!15, !16, i64 16}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !6}
!28 = !{!29, !30, i64 0}
!29 = !{!"XXH64_state_s", !30, i64 0, !30, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !8, i64 40, !16, i64 72, !8, i64 76}
!30 = !{!"long long", !8, i64 0}
!31 = !{!29, !16, i64 72}
!32 = !{!29, !30, i64 8}
!33 = !{!29, !30, i64 16}
!34 = !{!29, !30, i64 24}
!35 = !{!29, !30, i64 32}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6}
