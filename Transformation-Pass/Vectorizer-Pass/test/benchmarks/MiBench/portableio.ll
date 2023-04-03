; ModuleID = 'portableio.c'
source_filename = "portableio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @ReadByte(ptr nocapture noundef %fp) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @getc(ptr noundef %fp)
  %and = and i32 %call, 255
  %and1 = and i32 %call, 128
  %tobool.not = icmp eq i32 %and1, 0
  %masksel = select i1 %tobool.not, i32 0, i32 -256
  %spec.select = or i32 %masksel, %and
  ret i32 %spec.select
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @Read16BitsLowHigh(ptr nocapture noundef %fp) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @getc(ptr noundef %fp)
  %and = and i32 %call, 255
  %call1 = tail call i32 @getc(ptr noundef %fp)
  %and2 = shl i32 %call1, 8
  %shl = and i32 %and2, 65280
  %add = or i32 %shl, %and
  %0 = and i32 %call1, 128
  %tobool.not = icmp eq i32 %0, 0
  %sub = or i32 %add, -65536
  %spec.select = select i1 %tobool.not, i32 %add, i32 %sub
  ret i32 %spec.select
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @Read16BitsHighLow(ptr nocapture noundef %fp) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @getc(ptr noundef %fp)
  %call1 = tail call i32 @getc(ptr noundef %fp)
  %and2 = and i32 %call1, 255
  %and = shl i32 %call, 8
  %shl = and i32 %and, 65280
  %add = or i32 %shl, %and2
  %0 = and i32 %call, 128
  %tobool.not = icmp eq i32 %0, 0
  %sub = or i32 %add, -65536
  %spec.select = select i1 %tobool.not, i32 %add, i32 %sub
  ret i32 %spec.select
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @Write8Bits(ptr nocapture noundef %fp, i32 noundef %i) local_unnamed_addr #0 {
entry:
  %and = and i32 %i, 255
  %call = tail call i32 @putc(i32 noundef %and, ptr noundef %fp)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @Write16BitsLowHigh(ptr nocapture noundef %fp, i32 noundef %i) local_unnamed_addr #0 {
entry:
  %and = and i32 %i, 255
  %call = tail call i32 @putc(i32 noundef %and, ptr noundef %fp)
  %0 = lshr i32 %i, 8
  %and1 = and i32 %0, 255
  %call2 = tail call i32 @putc(i32 noundef %and1, ptr noundef %fp)
  ret void
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @Write16BitsHighLow(ptr nocapture noundef %fp, i32 noundef %i) local_unnamed_addr #0 {
entry:
  %0 = lshr i32 %i, 8
  %and = and i32 %0, 255
  %call = tail call i32 @putc(i32 noundef %and, ptr noundef %fp)
  %and1 = and i32 %i, 255
  %call2 = tail call i32 @putc(i32 noundef %and1, ptr noundef %fp)
  ret void
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @Read24BitsHighLow(ptr nocapture noundef %fp) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @getc(ptr noundef %fp)
  %call1 = tail call i32 @getc(ptr noundef %fp)
  %call3 = tail call i32 @getc(ptr noundef %fp)
  %and4 = and i32 %call3, 255
  %and = shl i32 %call, 16
  %shl = and i32 %and, 16711680
  %and2 = shl i32 %call1, 8
  %shl5 = and i32 %and2, 65280
  %add = or i32 %shl5, %shl
  %add6 = or i32 %add, %and4
  %0 = and i32 %call, 128
  %tobool.not = icmp eq i32 %0, 0
  %sub = or i32 %add6, -16777216
  %spec.select = select i1 %tobool.not, i32 %add6, i32 %sub
  ret i32 %spec.select
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @Read32Bits(ptr nocapture noundef %fp) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @Read16BitsLowHigh(ptr noundef %fp)
  %and = and i32 %call, 65535
  %call1 = tail call i32 @Read16BitsLowHigh(ptr noundef %fp)
  %shl = shl i32 %call1, 16
  %add = or i32 %shl, %and
  ret i32 %add
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @Read32BitsHighLow(ptr nocapture noundef %fp) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @Read16BitsHighLow(ptr noundef %fp)
  %call1 = tail call i32 @Read16BitsHighLow(ptr noundef %fp)
  %and2 = and i32 %call1, 65535
  %shl = shl i32 %call, 16
  %add = or i32 %and2, %shl
  ret i32 %add
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @Write32Bits(ptr nocapture noundef %fp, i32 noundef %i) local_unnamed_addr #0 {
entry:
  %0 = and i32 %i, 65535
  tail call void @Write16BitsLowHigh(ptr noundef %fp, i32 noundef %0)
  %1 = lshr i32 %i, 16
  tail call void @Write16BitsLowHigh(ptr noundef %fp, i32 noundef %1)
  ret void
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @Write32BitsLowHigh(ptr nocapture noundef %fp, i32 noundef %i) local_unnamed_addr #0 {
entry:
  %0 = and i32 %i, 65535
  tail call void @Write16BitsLowHigh(ptr noundef %fp, i32 noundef %0)
  %1 = lshr i32 %i, 16
  tail call void @Write16BitsLowHigh(ptr noundef %fp, i32 noundef %1)
  ret void
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @Write32BitsHighLow(ptr nocapture noundef %fp, i32 noundef %i) local_unnamed_addr #0 {
entry:
  %0 = lshr i32 %i, 16
  tail call void @Write16BitsHighLow(ptr noundef %fp, i32 noundef %0)
  %1 = and i32 %i, 65535
  tail call void @Write16BitsHighLow(ptr noundef %fp, i32 noundef %1)
  ret void
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @ReadBytes(ptr nocapture noundef %fp, ptr nocapture noundef writeonly %p, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %call6 = tail call i32 @feof(ptr noundef %fp) #5
  %tobool.not7 = icmp eq i32 %call6, 0
  %cmp8 = icmp sgt i32 %n, 0
  %and59 = and i1 %cmp8, %tobool.not7
  br i1 %and59, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %n.addr.011 = phi i32 [ %dec, %while.body ], [ %n, %entry ]
  %p.addr.010 = phi ptr [ %incdec.ptr, %while.body ], [ %p, %entry ]
  %dec = add nsw i32 %n.addr.011, -1
  %call2 = tail call i32 @getc(ptr noundef %fp)
  %conv3 = trunc i32 %call2 to i8
  %incdec.ptr = getelementptr inbounds i8, ptr %p.addr.010, i64 1
  store i8 %conv3, ptr %p.addr.010, align 1, !tbaa !5
  %call = tail call i32 @feof(ptr noundef %fp) #5
  %tobool.not = icmp eq i32 %call, 0
  %cmp = icmp ugt i32 %n.addr.011, 1
  %and5 = and i1 %cmp, %tobool.not
  br i1 %and5, label %while.body, label %while.end, !llvm.loop !8

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @ReadBytesSwapped(ptr nocapture noundef %fp, ptr noundef %p, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %call23 = tail call i32 @feof(ptr noundef %fp) #5
  %tobool.not24 = icmp eq i32 %call23, 0
  %cmp25 = icmp sgt i32 %n, 0
  %and2226 = and i1 %cmp25, %tobool.not24
  br i1 %and2226, label %while.body, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.body, %entry
  %q.0.lcssa = phi ptr [ %p, %entry ], [ %incdec.ptr, %while.body ]
  %q.129 = getelementptr inbounds i8, ptr %q.0.lcssa, i64 -1
  %cmp530 = icmp ugt ptr %q.129, %p
  br i1 %cmp530, label %for.body, label %for.end

while.body:                                       ; preds = %entry, %while.body
  %q.028 = phi ptr [ %incdec.ptr, %while.body ], [ %p, %entry ]
  %n.addr.027 = phi i32 [ %dec, %while.body ], [ %n, %entry ]
  %dec = add nsw i32 %n.addr.027, -1
  %call2 = tail call i32 @getc(ptr noundef %fp)
  %conv3 = trunc i32 %call2 to i8
  %incdec.ptr = getelementptr inbounds i8, ptr %q.028, i64 1
  store i8 %conv3, ptr %q.028, align 1, !tbaa !5
  %call = tail call i32 @feof(ptr noundef %fp) #5
  %tobool.not = icmp eq i32 %call, 0
  %cmp = icmp ugt i32 %n.addr.027, 1
  %and22 = and i1 %cmp, %tobool.not
  br i1 %and22, label %while.body, label %for.cond.preheader, !llvm.loop !11

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %q.132 = phi ptr [ %q.1, %for.body ], [ %q.129, %for.cond.preheader ]
  %p.addr.031 = phi ptr [ %incdec.ptr9, %for.body ], [ %p, %for.cond.preheader ]
  %0 = load i8, ptr %p.addr.031, align 1, !tbaa !5
  %1 = load i8, ptr %q.132, align 1, !tbaa !5
  store i8 %1, ptr %p.addr.031, align 1, !tbaa !5
  store i8 %0, ptr %q.132, align 1, !tbaa !5
  %incdec.ptr9 = getelementptr inbounds i8, ptr %p.addr.031, i64 1
  %q.1 = getelementptr inbounds i8, ptr %q.132, i64 -1
  %cmp5 = icmp ult ptr %incdec.ptr9, %q.1
  br i1 %cmp5, label %for.body, label %for.end, !llvm.loop !12

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @WriteBytes(ptr nocapture noundef %fp, ptr nocapture noundef readonly %p, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp1 = icmp sgt i32 %n, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %n.addr.03 = phi i32 [ %dec, %while.body ], [ %n, %entry ]
  %p.addr.02 = phi ptr [ %incdec.ptr, %while.body ], [ %p, %entry ]
  %dec = add nsw i32 %n.addr.03, -1
  %incdec.ptr = getelementptr inbounds i8, ptr %p.addr.02, i64 1
  %0 = load i8, ptr %p.addr.02, align 1, !tbaa !5
  %conv = sext i8 %0 to i32
  %call = tail call i32 @putc(i32 noundef %conv, ptr noundef %fp)
  %cmp = icmp ugt i32 %n.addr.03, 1
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !13

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @WriteBytesSwapped(ptr nocapture noundef %fp, ptr nocapture noundef readonly %p, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp3 = icmp sgt i32 %n, 0
  br i1 %cmp3, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %entry
  %sub = add nsw i32 %n, -1
  %idx.ext6 = zext i32 %sub to i64
  %add.ptr = getelementptr inbounds i8, ptr %p, i64 %idx.ext6
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %n.addr.05 = phi i32 [ %dec, %while.body ], [ %n, %while.body.preheader ]
  %p.addr.04 = phi ptr [ %incdec.ptr, %while.body ], [ %add.ptr, %while.body.preheader ]
  %dec = add nsw i32 %n.addr.05, -1
  %incdec.ptr = getelementptr inbounds i8, ptr %p.addr.04, i64 -1
  %0 = load i8, ptr %p.addr.04, align 1, !tbaa !5
  %conv = sext i8 %0 to i32
  %call = tail call i32 @putc(i32 noundef %conv, ptr noundef %fp)
  %cmp = icmp ugt i32 %n.addr.05, 1
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !14

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @ReadIeeeFloatHighLow(ptr nocapture noundef %fp) local_unnamed_addr #3 {
entry:
  %bits = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #5
  call void @ReadBytes(ptr noundef %fp, ptr noundef nonnull %bits, i32 noundef 4)
  %call = call fast double @ConvertFromIeeeSingle(ptr noundef nonnull %bits) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #5
  ret double %call
}

declare double @ConvertFromIeeeSingle(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local double @ReadIeeeFloatLowHigh(ptr nocapture noundef %fp) local_unnamed_addr #3 {
entry:
  %bits = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #5
  call void @ReadBytesSwapped(ptr noundef %fp, ptr noundef nonnull %bits, i32 noundef 4)
  %call = call fast double @ConvertFromIeeeSingle(ptr noundef nonnull %bits) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #5
  ret double %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @ReadIeeeDoubleHighLow(ptr nocapture noundef %fp) local_unnamed_addr #3 {
entry:
  %bits = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bits) #5
  call void @ReadBytes(ptr noundef %fp, ptr noundef nonnull %bits, i32 noundef 8)
  %call = call fast double @ConvertFromIeeeDouble(ptr noundef nonnull %bits) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bits) #5
  ret double %call
}

declare double @ConvertFromIeeeDouble(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local double @ReadIeeeDoubleLowHigh(ptr nocapture noundef %fp) local_unnamed_addr #3 {
entry:
  %bits = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bits) #5
  call void @ReadBytesSwapped(ptr noundef %fp, ptr noundef nonnull %bits, i32 noundef 8)
  %call = call fast double @ConvertFromIeeeDouble(ptr noundef nonnull %bits) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bits) #5
  ret double %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @ReadIeeeExtendedHighLow(ptr nocapture noundef %fp) local_unnamed_addr #3 {
entry:
  %bits = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %bits) #5
  call void @ReadBytes(ptr noundef %fp, ptr noundef nonnull %bits, i32 noundef 10)
  %call = call fast double @ConvertFromIeeeExtended(ptr noundef nonnull %bits) #5
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %bits) #5
  ret double %call
}

declare double @ConvertFromIeeeExtended(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local double @ReadIeeeExtendedLowHigh(ptr nocapture noundef %fp) local_unnamed_addr #3 {
entry:
  %bits = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %bits) #5
  call void @ReadBytesSwapped(ptr noundef %fp, ptr noundef nonnull %bits, i32 noundef 10)
  %call = call fast double @ConvertFromIeeeExtended(ptr noundef nonnull %bits) #5
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %bits) #5
  ret double %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @WriteIeeeFloatLowHigh(ptr nocapture noundef %fp, double noundef %num) local_unnamed_addr #3 {
entry:
  %bits = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #5
  call void @ConvertToIeeeSingle(double noundef %num, ptr noundef nonnull %bits) #5
  call void @WriteBytesSwapped(ptr noundef %fp, ptr noundef nonnull %bits, i32 noundef 4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #5
  ret void
}

declare void @ConvertToIeeeSingle(double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @WriteIeeeFloatHighLow(ptr nocapture noundef %fp, double noundef %num) local_unnamed_addr #3 {
entry:
  %bits = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #5
  call void @ConvertToIeeeSingle(double noundef %num, ptr noundef nonnull %bits) #5
  call void @WriteBytes(ptr noundef %fp, ptr noundef nonnull %bits, i32 noundef 4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @WriteIeeeDoubleLowHigh(ptr nocapture noundef %fp, double noundef %num) local_unnamed_addr #3 {
entry:
  %bits = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bits) #5
  call void @ConvertToIeeeDouble(double noundef %num, ptr noundef nonnull %bits) #5
  call void @WriteBytesSwapped(ptr noundef %fp, ptr noundef nonnull %bits, i32 noundef 8)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bits) #5
  ret void
}

declare void @ConvertToIeeeDouble(double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @WriteIeeeDoubleHighLow(ptr nocapture noundef %fp, double noundef %num) local_unnamed_addr #3 {
entry:
  %bits = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bits) #5
  call void @ConvertToIeeeDouble(double noundef %num, ptr noundef nonnull %bits) #5
  call void @WriteBytes(ptr noundef %fp, ptr noundef nonnull %bits, i32 noundef 8)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bits) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @WriteIeeeExtendedLowHigh(ptr nocapture noundef %fp, double noundef %num) local_unnamed_addr #3 {
entry:
  %bits = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %bits) #5
  call void @ConvertToIeeeExtended(double noundef %num, ptr noundef nonnull %bits) #5
  call void @WriteBytesSwapped(ptr noundef %fp, ptr noundef nonnull %bits, i32 noundef 10)
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %bits) #5
  ret void
}

declare void @ConvertToIeeeExtended(double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @WriteIeeeExtendedHighLow(ptr nocapture noundef %fp, double noundef %num) local_unnamed_addr #3 {
entry:
  %bits = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %bits) #5
  call void @ConvertToIeeeExtended(double noundef %num, ptr noundef nonnull %bits) #5
  call void @WriteBytes(ptr noundef %fp, ptr noundef nonnull %bits, i32 noundef 10)
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %bits) #5
  ret void
}

attributes #0 = { nofree noinline nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #3 = { noinline nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
!13 = distinct !{!13, !9, !10}
!14 = distinct !{!14, !9, !10}
