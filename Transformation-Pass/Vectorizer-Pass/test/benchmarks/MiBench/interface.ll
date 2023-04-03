; ModuleID = 'mpglib/interface.c'
source_filename = "mpglib/interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpstr = type { ptr, ptr, i32, i32, i32, %struct.frame, [2 x [2304 x i8]], [2 x [2 x [576 x double]]], [2 x i32], i64, i32, [2 x [2 x [272 x double]]], i32 }
%struct.frame = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.buf = type { ptr, i64, i64, ptr, ptr }

@gmp = dso_local local_unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [19 x i8] c"To less out space\0A\00", align 1
@wordpointer = external local_unnamed_addr global ptr, align 8
@bitindex = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Can't step back %ld!\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Out of memory!\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Fatal error!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @InitMP3(ptr nocapture noundef writeonly %mp) local_unnamed_addr #0 {
entry:
  %fsizeold = getelementptr inbounds %struct.mpstr, ptr %mp, i64 0, i32 4
  %0 = getelementptr inbounds i8, ptr %mp, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(31864) %0, i8 0, i64 31864, i1 false)
  store i32 -1, ptr %fsizeold, align 8, !tbaa !5
  %single = getelementptr inbounds %struct.mpstr, ptr %mp, i64 0, i32 5, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %mp, i8 0, i64 20, i1 false)
  store i32 -1, ptr %single, align 4, !tbaa !13
  %synth_bo = getelementptr inbounds %struct.mpstr, ptr %mp, i64 0, i32 12
  store i32 1, ptr %synth_bo, align 8, !tbaa !14
  tail call void @make_decode_tables(i64 noundef 32767) #12
  tail call void @init_layer3(i32 noundef 32) #12
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare void @make_decode_tables(i64 noundef) local_unnamed_addr #2

declare void @init_layer3(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @ExitMP3(ptr nocapture noundef readonly %mp) local_unnamed_addr #0 {
entry:
  %tail = getelementptr inbounds %struct.mpstr, ptr %mp, i64 0, i32 1
  %0 = load ptr, ptr %tail, align 8, !tbaa !15
  %tobool.not4 = icmp eq ptr %0, null
  br i1 %tobool.not4, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %b.05 = phi ptr [ %2, %while.body ], [ %0, %entry ]
  %1 = load ptr, ptr %b.05, align 8, !tbaa !16
  tail call void @free(ptr noundef %1) #12
  %next = getelementptr inbounds %struct.buf, ptr %b.05, i64 0, i32 3
  %2 = load ptr, ptr %next, align 8, !tbaa !18
  tail call void @free(ptr noundef nonnull %b.05) #12
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !19

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @decodeMP3(ptr noundef %mp, ptr noundef readonly %in, i32 noundef %isize, ptr noundef %out, i32 noundef %osize, ptr noundef %done) local_unnamed_addr #0 {
entry:
  store ptr %mp, ptr @gmp, align 8, !tbaa !22
  %cmp = icmp slt i32 %osize, 4608
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !22
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %0) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %in, null
  br i1 %tobool.not, label %if.end6, label %if.then1

if.then1:                                         ; preds = %if.end
  %call2 = tail call fastcc ptr @addbuf(ptr noundef %mp, ptr noundef nonnull %in, i32 noundef %isize)
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.then1, %if.end
  %framesize = getelementptr inbounds %struct.mpstr, ptr %mp, i64 0, i32 3
  %2 = load i32, ptr %framesize, align 4, !tbaa !23
  %cmp7 = icmp eq i32 %2, 0
  br i1 %cmp7, label %if.then8, label %if.end6.if.end16_crit_edge

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  %framesize18.phi.trans.insert = getelementptr inbounds %struct.mpstr, ptr %mp, i64 0, i32 5, i32 17
  %.pre = load i32, ptr %framesize18.phi.trans.insert, align 4, !tbaa !24
  br label %if.end16

if.then8:                                         ; preds = %if.end6
  %bsize = getelementptr inbounds %struct.mpstr, ptr %mp, i64 0, i32 2
  %3 = load i32, ptr %bsize, align 8, !tbaa !25
  %cmp9 = icmp slt i32 %3, 4
  br i1 %cmp9, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.then8
  tail call fastcc void @read_head(ptr noundef nonnull %mp)
  %fr = getelementptr inbounds %struct.mpstr, ptr %mp, i64 0, i32 5
  %header = getelementptr inbounds %struct.mpstr, ptr %mp, i64 0, i32 9
  %4 = load i64, ptr %header, align 8, !tbaa !26
  %call12 = tail call i32 @decode_header(ptr noundef nonnull %fr, i64 noundef %4) #12
  %framesize14 = getelementptr inbounds %struct.mpstr, ptr %mp, i64 0, i32 5, i32 17
  %5 = load i32, ptr %framesize14, align 4, !tbaa !24
  store i32 %5, ptr %framesize, align 4, !tbaa !23
  br label %if.end16

if.end16:                                         ; preds = %if.end6.if.end16_crit_edge, %if.end11
  %6 = phi i32 [ %2, %if.end6.if.end16_crit_edge ], [ %5, %if.end11 ]
  %7 = phi i32 [ %.pre, %if.end6.if.end16_crit_edge ], [ %5, %if.end11 ]
  %fr17 = getelementptr inbounds %struct.mpstr, ptr %mp, i64 0, i32 5
  %bsize19 = getelementptr inbounds %struct.mpstr, ptr %mp, i64 0, i32 2
  %8 = load i32, ptr %bsize19, align 8, !tbaa !25
  %cmp20 = icmp sgt i32 %7, %8
  br i1 %cmp20, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.end16
  %bsnum = getelementptr inbounds %struct.mpstr, ptr %mp, i64 0, i32 10
  %9 = load i32, ptr %bsnum, align 8, !tbaa !27
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds %struct.mpstr, ptr %mp, i64 0, i32 6, i64 %idxprom
  %add.ptr = getelementptr inbounds i8, ptr %arrayidx, i64 512
  store ptr %add.ptr, ptr @wordpointer, align 8, !tbaa !22
  %10 = and i32 %9, 1
  %and = xor i32 %10, 1
  store i32 %and, ptr %bsnum, align 8, !tbaa !27
  store i32 0, ptr @bitindex, align 4, !tbaa !28
  %cmp26107 = icmp sgt i32 %6, 0
  br i1 %cmp26107, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end22
  %tail = getelementptr inbounds %struct.mpstr, ptr %mp, i64 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end56.while.body_crit_edge, %while.body.lr.ph
  %11 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %.pre109, %if.end56.while.body_crit_edge ]
  %12 = phi i32 [ %6, %while.body.lr.ph ], [ %22, %if.end56.while.body_crit_edge ]
  %len.0108 = phi i32 [ 0, %while.body.lr.ph ], [ %add42, %if.end56.while.body_crit_edge ]
  %13 = load ptr, ptr %tail, align 8, !tbaa !15
  %size = getelementptr inbounds %struct.buf, ptr %13, i64 0, i32 1
  %14 = load i64, ptr %size, align 8, !tbaa !29
  %pos = getelementptr inbounds %struct.buf, ptr %13, i64 0, i32 2
  %15 = load i64, ptr %pos, align 8, !tbaa !30
  %sub = sub nsw i64 %14, %15
  %conv = trunc i64 %sub to i32
  %sub29 = sub nsw i32 %12, %len.0108
  %16 = tail call i32 @llvm.smin.i32(i32 %sub29, i32 %conv)
  %idx.ext = sext i32 %len.0108 to i64
  %add.ptr36 = getelementptr inbounds i8, ptr %11, i64 %idx.ext
  %17 = load ptr, ptr %13, align 8, !tbaa !16
  %add.ptr40 = getelementptr inbounds i8, ptr %17, i64 %15
  %conv41 = sext i32 %16 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr36, ptr align 1 %add.ptr40, i64 %conv41, i1 false)
  %add42 = add nsw i32 %16, %len.0108
  %18 = load ptr, ptr %tail, align 8, !tbaa !15
  %pos45 = getelementptr inbounds %struct.buf, ptr %18, i64 0, i32 2
  %19 = load i64, ptr %pos45, align 8, !tbaa !30
  %add46 = add nsw i64 %19, %conv41
  store i64 %add46, ptr %pos45, align 8, !tbaa !30
  %20 = load i32, ptr %bsize19, align 8, !tbaa !25
  %sub48 = sub nsw i32 %20, %16
  store i32 %sub48, ptr %bsize19, align 8, !tbaa !25
  %size52 = getelementptr inbounds %struct.buf, ptr %18, i64 0, i32 1
  %21 = load i64, ptr %size52, align 8, !tbaa !29
  %cmp53 = icmp eq i64 %add46, %21
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %while.body
  tail call fastcc void @remove_buf(ptr noundef nonnull %mp)
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %while.body
  %22 = load i32, ptr %framesize, align 4, !tbaa !23
  %cmp26 = icmp sgt i32 %22, %add42
  br i1 %cmp26, label %if.end56.while.body_crit_edge, label %while.end, !llvm.loop !31

if.end56.while.body_crit_edge:                    ; preds = %if.end56
  %.pre109 = load ptr, ptr @wordpointer, align 8, !tbaa !22
  br label %while.body

while.end:                                        ; preds = %if.end56, %if.end22
  store i32 0, ptr %done, align 4, !tbaa !28
  %error_protection = getelementptr inbounds %struct.mpstr, ptr %mp, i64 0, i32 5, i32 7
  %23 = load i32, ptr %error_protection, align 4, !tbaa !32
  %tobool58.not = icmp eq i32 %23, 0
  br i1 %tobool58.not, label %if.end61, label %if.then59

if.then59:                                        ; preds = %while.end
  %call60 = tail call i32 @getbits(i32 noundef 16) #12
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %while.end
  %call63 = tail call i32 @do_layer3(ptr noundef nonnull %fr17, ptr noundef %out, ptr noundef nonnull %done) #12
  %24 = load i32, ptr %framesize, align 4, !tbaa !23
  %fsizeold = getelementptr inbounds %struct.mpstr, ptr %mp, i64 0, i32 4
  store i32 %24, ptr %fsizeold, align 8, !tbaa !5
  store i32 0, ptr %framesize, align 4, !tbaa !23
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then8, %if.then1, %if.end61, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.end61 ], [ -1, %if.then1 ], [ 1, %if.then8 ], [ 1, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @addbuf(ptr nocapture noundef %mp, ptr nocapture noundef readonly %buf, i32 noundef %size) unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !22
  %1 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %0) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = sext i32 %size to i64
  %call2 = tail call noalias ptr @malloc(i64 noundef %conv) #14
  store ptr %call2, ptr %call, align 8, !tbaa !16
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @free(ptr noundef nonnull %call) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %size8 = getelementptr inbounds %struct.buf, ptr %call, i64 0, i32 1
  store i64 %conv, ptr %size8, align 8, !tbaa !29
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call2, ptr align 1 %buf, i64 %conv, i1 false)
  %next = getelementptr inbounds %struct.buf, ptr %call, i64 0, i32 3
  store ptr null, ptr %next, align 8, !tbaa !18
  %2 = load ptr, ptr %mp, align 8, !tbaa !33
  %prev = getelementptr inbounds %struct.buf, ptr %call, i64 0, i32 4
  store ptr %2, ptr %prev, align 8, !tbaa !34
  %pos = getelementptr inbounds %struct.buf, ptr %call, i64 0, i32 2
  store i64 0, ptr %pos, align 8, !tbaa !30
  %tail = getelementptr inbounds %struct.mpstr, ptr %mp, i64 0, i32 1
  %3 = load ptr, ptr %tail, align 8, !tbaa !15
  %tobool11.not = icmp eq ptr %3, null
  %next15 = getelementptr inbounds %struct.buf, ptr %2, i64 0, i32 3
  %spec.select = select i1 %tobool11.not, ptr %tail, ptr %next15
  store ptr %call, ptr %spec.select, align 8, !tbaa !22
  store ptr %call, ptr %mp, align 8, !tbaa !33
  %bsize = getelementptr inbounds %struct.mpstr, ptr %mp, i64 0, i32 2
  %4 = load i32, ptr %bsize, align 8, !tbaa !25
  %add = add nsw i32 %4, %size
  store i32 %add, ptr %bsize, align 8, !tbaa !25
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  %retval.0 = phi ptr [ %call, %if.end6 ], [ null, %if.then5 ], [ null, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @read_head(ptr nocapture noundef %mp) unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @read_buf_byte(ptr noundef %mp)
  %0 = zext i32 %call to i64
  %call1 = tail call fastcc i32 @read_buf_byte(ptr noundef %mp)
  %1 = zext i32 %call1 to i64
  %2 = shl nuw nsw i64 %0, 16
  %3 = shl nuw nsw i64 %1, 8
  %shl3 = or i64 %3, %2
  %call4 = tail call fastcc i32 @read_buf_byte(ptr noundef %mp)
  %4 = zext i32 %call4 to i64
  %or6 = or i64 %shl3, %4
  %shl7 = shl nuw nsw i64 %or6, 8
  %call8 = tail call fastcc i32 @read_buf_byte(ptr noundef %mp)
  %5 = zext i32 %call8 to i64
  %or10 = or i64 %shl7, %5
  %header = getelementptr inbounds %struct.mpstr, ptr %mp, i64 0, i32 9
  store i64 %or10, ptr %header, align 8, !tbaa !26
  ret void
}

declare i32 @decode_header(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline nounwind willreturn uwtable
define internal fastcc void @remove_buf(ptr nocapture noundef %mp) unnamed_addr #6 {
entry:
  %tail = getelementptr inbounds %struct.mpstr, ptr %mp, i64 0, i32 1
  %0 = load ptr, ptr %tail, align 8, !tbaa !15
  %next = getelementptr inbounds %struct.buf, ptr %0, i64 0, i32 3
  %1 = load ptr, ptr %next, align 8, !tbaa !18
  store ptr %1, ptr %tail, align 8, !tbaa !15
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %prev = getelementptr inbounds %struct.buf, ptr %1, i64 0, i32 4
  store ptr null, ptr %prev, align 8, !tbaa !34
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %mp, i8 0, i64 16, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load ptr, ptr %0, align 8, !tbaa !16
  tail call void @free(ptr noundef %2) #12
  tail call void @free(ptr noundef nonnull %0) #12
  ret void
}

declare i32 @getbits(i32 noundef) local_unnamed_addr #2

declare i32 @do_layer3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @set_pointer(i64 noundef %backstep) local_unnamed_addr #7 {
entry:
  %0 = load ptr, ptr @gmp, align 8, !tbaa !22
  %fsizeold = getelementptr inbounds %struct.mpstr, ptr %0, i64 0, i32 4
  %1 = load i32, ptr %fsizeold, align 8, !tbaa !5
  %cmp = icmp slt i32 %1, 0
  %cmp1 = icmp sgt i64 %backstep, 0
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !tbaa !22
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.1, i64 noundef %backstep) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %bsnum = getelementptr inbounds %struct.mpstr, ptr %0, i64 0, i32 10
  %3 = load i32, ptr %bsnum, align 8, !tbaa !27
  %4 = load ptr, ptr @wordpointer, align 8, !tbaa !22
  %idx.neg = sub i64 0, %backstep
  %add.ptr2 = getelementptr inbounds i8, ptr %4, i64 %idx.neg
  store ptr %add.ptr2, ptr @wordpointer, align 8, !tbaa !22
  %tobool.not = icmp eq i64 %backstep, 0
  br i1 %tobool.not, label %if.end8, label %if.then3

if.then3:                                         ; preds = %if.end
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.mpstr, ptr %0, i64 0, i32 6, i64 %idxprom
  %add.ptr = getelementptr inbounds i8, ptr %arrayidx, i64 512
  %idx.ext = sext i32 %1 to i64
  %add.ptr5 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext
  %add.ptr7 = getelementptr inbounds i8, ptr %add.ptr5, i64 %idx.neg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr2, ptr nonnull align 1 %add.ptr7, i64 %backstep, i1 false)
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end
  store i32 0, ptr @bitindex, align 4, !tbaa !28
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @read_buf_byte(ptr nocapture noundef %mp) unnamed_addr #0 {
entry:
  %tail = getelementptr inbounds %struct.mpstr, ptr %mp, i64 0, i32 1
  %0 = load ptr, ptr %tail, align 8, !tbaa !15
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = phi ptr [ %0, %entry ], [ %3, %while.body ]
  %pos.0.in.in = getelementptr inbounds %struct.buf, ptr %1, i64 0, i32 2
  %pos.0.in = load i64, ptr %pos.0.in.in, align 8, !tbaa !30
  %sext = shl i64 %pos.0.in, 32
  %conv2 = ashr exact i64 %sext, 32
  %size = getelementptr inbounds %struct.buf, ptr %1, i64 0, i32 1
  %2 = load i64, ptr %size, align 8, !tbaa !29
  %cmp.not = icmp slt i64 %conv2, %2
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  tail call fastcc void @remove_buf(ptr noundef nonnull %mp)
  %3 = load ptr, ptr %tail, align 8, !tbaa !15
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %while.cond, !llvm.loop !35

if.then:                                          ; preds = %while.body
  %4 = load ptr, ptr @stderr, align 8, !tbaa !22
  %5 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 13, i64 1, ptr %4) #13
  tail call void @exit(i32 noundef 1) #15
  unreachable

while.end:                                        ; preds = %while.cond
  %pos.0.in.in.le = getelementptr inbounds %struct.buf, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %1, align 8, !tbaa !16
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %conv2
  %7 = load i8, ptr %arrayidx, align 1, !tbaa !36
  %conv10 = zext i8 %7 to i32
  %bsize = getelementptr inbounds %struct.mpstr, ptr %mp, i64 0, i32 2
  %8 = load i32, ptr %bsize, align 8, !tbaa !25
  %dec = add nsw i32 %8, -1
  store i32 %dec, ptr %bsize, align 8, !tbaa !25
  %inc = add nsw i64 %pos.0.in, 1
  store i64 %inc, ptr %pos.0.in.in.le, align 8, !tbaa !30
  ret i32 %conv10
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { noinline nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { nofree nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { mustprogress noinline nounwind willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #7 = { nofree noinline nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #8 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #9 = { noreturn nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !10, i64 24}
!6 = !{!"mpstr", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !11, i64 28, !8, i64 100, !8, i64 4712, !8, i64 23144, !12, i64 23152, !10, i64 23160, !8, i64 23168, !10, i64 31872}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"frame", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68}
!12 = !{!"long", !8, i64 0}
!13 = !{!6, !10, i64 36}
!14 = !{!6, !10, i64 31872}
!15 = !{!6, !7, i64 8}
!16 = !{!17, !7, i64 0}
!17 = !{!"buf", !7, i64 0, !12, i64 8, !12, i64 16, !7, i64 24, !7, i64 32}
!18 = !{!17, !7, i64 24}
!19 = distinct !{!19, !20, !21}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = !{!7, !7, i64 0}
!23 = !{!6, !10, i64 20}
!24 = !{!6, !10, i64 96}
!25 = !{!6, !10, i64 16}
!26 = !{!6, !12, i64 23152}
!27 = !{!6, !10, i64 23160}
!28 = !{!10, !10, i64 0}
!29 = !{!17, !12, i64 8}
!30 = !{!17, !12, i64 16}
!31 = distinct !{!31, !20, !21}
!32 = !{!6, !10, i64 56}
!33 = !{!6, !7, i64 0}
!34 = !{!17, !7, i64 32}
!35 = distinct !{!35, !20, !21}
!36 = !{!8, !8, i64 0}
