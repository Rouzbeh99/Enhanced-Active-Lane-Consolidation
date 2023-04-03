; ModuleID = 'susan.c'
source_filename = "susan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32, i32, i32, i32, i32 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [26 x i8] c"Image %s not binary PGM.\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Can't input image %s.\0A\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"Image %s does not have binary PGM header.\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Image %s is wrong size.\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"Can't output image%s.\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"P5\0A\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"255\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"Can't write image %s.\0A\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"Distance_thresh (%f) too big for integer arithmetic.\0A\00", align 1
@.str.28 = private unnamed_addr constant [65 x i8] c"Mask size (1.5*distance_thresh+1=%d) too big for image (%dx%d).\0A\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"Too many corners.\0A\00", align 1
@str = private unnamed_addr constant [43 x i8] c"Usage: susan <in.pgm> <out.pgm> [options]\0A\00", align 1
@str.32 = private unnamed_addr constant [30 x i8] c"-s : Smoothing mode (default)\00", align 1
@str.33 = private unnamed_addr constant [16 x i8] c"-e : Edges mode\00", align 1
@str.34 = private unnamed_addr constant [19 x i8] c"-c : Corners mode\0A\00", align 1
@str.35 = private unnamed_addr constant [66 x i8] c"See source code for more information about setting the thresholds\00", align 1
@str.36 = private unnamed_addr constant [59 x i8] c"-t <thresh> : Brightness threshold, all modes (default=20)\00", align 1
@str.37 = private unnamed_addr constant [106 x i8] c"-d <thresh> : Distance threshold, smoothing mode, (default=4) (use next option instead for flat 3x3 mask)\00", align 1
@str.38 = private unnamed_addr constant [48 x i8] c"-3 : Use flat 3x3 mask, edges or smoothing mode\00", align 1
@str.39 = private unnamed_addr constant [78 x i8] c"-n : No post-processing on the binary edge map (runs much faster); edges mode\00", align 1
@str.40 = private unnamed_addr constant [110 x i8] c"-q : Use faster (and usually stabler) corner mode; edge-like corner suppression not carried out; corners mode\00", align 1
@str.41 = private unnamed_addr constant [107 x i8] c"-b : Mark corners/edges with single black points instead of black with white border; corners or edges mode\00", align 1
@str.42 = private unnamed_addr constant [90 x i8] c"-p : Output initial enhancement image only; corners or edges mode (default is edges mode)\00", align 1
@str.43 = private unnamed_addr constant [76 x i8] c"\0ASUSAN Version 2l (C) 1995-1997 Stephen Smith, DRA UK. steve@fmrib.ox.ac.uk\00", align 1
@str.44 = private unnamed_addr constant [60 x i8] c"Either reduce it to <=15 or recompile with variable \22total\22\00", align 1
@str.45 = private unnamed_addr constant [39 x i8] c"as a float: see top \22defines\22 section.\00", align 1
@str.46 = private unnamed_addr constant [25 x i8] c"No argument following -t\00", align 1
@str.47 = private unnamed_addr constant [25 x i8] c"No argument following -d\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @usage() local_unnamed_addr #0 {
entry:
  %puts = tail call i32 @puts(ptr nonnull @str)
  %puts13 = tail call i32 @puts(ptr nonnull @str.32)
  %puts14 = tail call i32 @puts(ptr nonnull @str.33)
  %puts15 = tail call i32 @puts(ptr nonnull @str.34)
  %puts16 = tail call i32 @puts(ptr nonnull @str.35)
  %puts17 = tail call i32 @puts(ptr nonnull @str.36)
  %puts18 = tail call i32 @puts(ptr nonnull @str.37)
  %puts19 = tail call i32 @puts(ptr nonnull @str.38)
  %puts20 = tail call i32 @puts(ptr nonnull @str.39)
  %puts21 = tail call i32 @puts(ptr nonnull @str.40)
  %puts22 = tail call i32 @puts(ptr nonnull @str.41)
  %puts23 = tail call i32 @puts(ptr nonnull @str.42)
  %puts24 = tail call i32 @puts(ptr nonnull @str.43)
  tail call void @exit(i32 noundef 0) #20
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getint(ptr nocapture noundef %fd) local_unnamed_addr #3 {
entry:
  %dummy = alloca [10000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 10000, ptr nonnull %dummy) #21
  %call = tail call i32 @getc(ptr noundef %fd)
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %entry
  %c.0 = phi i32 [ %call, %entry ], [ %call10, %if.end9 ]
  switch i32 %c.0, label %if.end5 [
    i32 35, label %if.end5.thread
    i32 -1, label %if.then3
  ]

if.end5.thread:                                   ; preds = %while.cond
  %call1 = call ptr @fgets(ptr noundef nonnull %dummy, i32 noundef 9000, ptr noundef %fd)
  br label %if.end9

if.then3:                                         ; preds = %while.cond
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #22
  call void @exit(i32 noundef 0) #20
  unreachable

if.end5:                                          ; preds = %while.cond
  %1 = add i32 %c.0, -48
  %2 = icmp ult i32 %1, 10
  br i1 %2, label %while.cond11, label %if.end9

if.end9:                                          ; preds = %if.end5.thread, %if.end5
  %call10 = call i32 @getc(ptr noundef %fd)
  br label %while.cond, !llvm.loop !9

while.cond11:                                     ; preds = %if.end5, %while.cond11
  %c.1 = phi i32 [ %call13, %while.cond11 ], [ %c.0, %if.end5 ]
  %i.0 = phi i32 [ %add, %while.cond11 ], [ 0, %if.end5 ]
  %mul = mul nsw i32 %i.0, 10
  %sub = add nsw i32 %c.1, -48
  %add = add nsw i32 %sub, %mul
  %call13 = call i32 @getc(ptr noundef %fd)
  %3 = add i32 %call13, -58
  %4 = icmp ult i32 %3, -10
  br i1 %4, label %cleanup, label %while.cond11, !llvm.loop !11

cleanup:                                          ; preds = %while.cond11
  call void @llvm.lifetime.end.p0(i64 10000, ptr nonnull %dummy) #21
  ret i32 %add
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @get_image(ptr noundef %filename, ptr nocapture noundef writeonly %in, ptr nocapture noundef %x_size, ptr nocapture noundef %y_size) local_unnamed_addr #3 {
entry:
  %call = tail call ptr @fopen(ptr noundef %filename, ptr noundef nonnull @.str.15)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef %filename) #22
  tail call void @exit(i32 noundef 0) #20
  unreachable

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @fgetc(ptr noundef nonnull %call)
  %call3 = tail call i32 @fgetc(ptr noundef nonnull %call)
  %sext.mask = and i32 %call2, 255
  %cmp8 = icmp eq i32 %sext.mask, 80
  %sext.mask45 = and i32 %call3, 255
  %cmp12 = icmp eq i32 %sext.mask45, 53
  %or.cond = and i1 %cmp8, %cmp12
  br i1 %or.cond, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef %filename) #22
  tail call void @exit(i32 noundef 0) #20
  unreachable

if.end16:                                         ; preds = %if.end
  %call17 = tail call i32 @getint(ptr noundef nonnull %call)
  store i32 %call17, ptr %x_size, align 4, !tbaa !12
  %call18 = tail call i32 @getint(ptr noundef nonnull %call)
  store i32 %call18, ptr %y_size, align 4, !tbaa !12
  %call19 = tail call i32 @getint(ptr noundef nonnull %call)
  %2 = load i32, ptr %x_size, align 4, !tbaa !12
  %3 = load i32, ptr %y_size, align 4, !tbaa !12
  %mul = mul nsw i32 %3, %2
  %conv20 = sext i32 %mul to i64
  %call21 = tail call noalias ptr @malloc(i64 noundef %conv20) #23
  store ptr %call21, ptr %in, align 8, !tbaa !5
  %call24 = tail call i64 @fread(ptr noundef %call21, i64 noundef 1, i64 noundef %conv20, ptr noundef nonnull %call)
  %cmp25 = icmp eq i64 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end16
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.18, ptr noundef %filename) #22
  tail call void @exit(i32 noundef 0) #20
  unreachable

if.end29:                                         ; preds = %if.end16
  %call30 = tail call i32 @fclose(ptr noundef nonnull %call)
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @put_image(ptr noundef %filename, ptr nocapture noundef %in, i32 noundef %x_size, i32 noundef %y_size) local_unnamed_addr #3 {
entry:
  %call = tail call ptr @fopen(ptr noundef %filename, ptr noundef nonnull @.str.19)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %filename) #22
  tail call void @exit(i32 noundef 0) #20
  unreachable

if.end:                                           ; preds = %entry
  %1 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 3, i64 1, ptr nonnull %call)
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call, ptr noundef nonnull @.str.22, i32 noundef %x_size, i32 noundef %y_size)
  %2 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 4, i64 1, ptr nonnull %call)
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %call5 = tail call i64 @fwrite(ptr noundef %in, i64 noundef %conv, i64 noundef 1, ptr noundef nonnull %call)
  %cmp6.not = icmp eq i64 %call5, 1
  br i1 %cmp6.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.24, ptr noundef %filename) #22
  tail call void @exit(i32 noundef 0) #20
  unreachable

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @fclose(ptr noundef nonnull %call)
  ret i32 undef
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @int_to_uchar(ptr nocapture noundef readonly %r, ptr nocapture noundef writeonly %in, i32 noundef %size) local_unnamed_addr #6 {
entry:
  %0 = load i32, ptr %r, align 4, !tbaa !12
  %cmp46 = icmp sgt i32 %size, 0
  br i1 %cmp46, label %for.body.preheader, label %for.end23

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %size to i64
  %exitcond.not66 = icmp eq i32 %size, 1
  br i1 %exitcond.not66, label %for.end, label %for.body.for.body_crit_edge.lr.ph, !llvm.loop !14

for.body.for.body_crit_edge.lr.ph:                ; preds = %for.body.preheader
  %1 = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %for.body.for.body_crit_edge.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.for.body_crit_edge.lr.ph
  %n.vec = and i64 %1, -4
  %ind.end = or i64 %n.vec, 1
  %minmax.ident.splatinsert = insertelement <4 x i32> poison, i32 %0, i64 0
  %minmax.ident.splat = shufflevector <4 x i32> %minmax.ident.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %minmax.ident.splatinsert76 = insertelement <4 x i32> poison, i32 %0, i64 0
  %minmax.ident.splat77 = shufflevector <4 x i32> %minmax.ident.splatinsert76, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %minmax.ident.splat, %vector.ph ], [ %4, %vector.body ]
  %vec.phi75 = phi <4 x i32> [ %minmax.ident.splat77, %vector.ph ], [ %3, %vector.body ]
  %offset.idx = or i64 %index, 1
  %2 = getelementptr inbounds i32, ptr %r, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %2, align 4, !tbaa !12
  %3 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi75)
  %4 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi)
  %index.next = add nuw i64 %index, 4
  %5 = icmp eq i64 %index.next, %n.vec
  br i1 %5, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %6 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %3)
  %7 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %4)
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body.for.body_crit_edge.preheader

for.body.for.body_crit_edge.preheader:            ; preds = %for.body.for.body_crit_edge.lr.ph, %middle.block
  %indvars.iv.next67.ph = phi i64 [ 1, %for.body.for.body_crit_edge.lr.ph ], [ %ind.end, %middle.block ]
  %.ph = phi i32 [ %0, %for.body.for.body_crit_edge.lr.ph ], [ %7, %middle.block ]
  %.ph79 = phi i32 [ %0, %for.body.for.body_crit_edge.lr.ph ], [ %6, %middle.block ]
  br label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body.for.body_crit_edge.preheader, %for.body.for.body_crit_edge
  %indvars.iv.next67 = phi i64 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ %indvars.iv.next67.ph, %for.body.for.body_crit_edge.preheader ]
  %8 = phi i32 [ %11, %for.body.for.body_crit_edge ], [ %.ph, %for.body.for.body_crit_edge.preheader ]
  %9 = phi i32 [ %10, %for.body.for.body_crit_edge ], [ %.ph79, %for.body.for.body_crit_edge.preheader ]
  %arrayidx2.phi.trans.insert = getelementptr inbounds i32, ptr %r, i64 %indvars.iv.next67
  %.pre = load i32, ptr %arrayidx2.phi.trans.insert, align 4, !tbaa !12
  %10 = tail call i32 @llvm.smax.i32(i32 %.pre, i32 %9)
  %11 = tail call i32 @llvm.smin.i32(i32 %.pre, i32 %8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next67, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge, !llvm.loop !18

for.end:                                          ; preds = %for.body.for.body_crit_edge, %middle.block, %for.body.preheader
  %.lcssa65 = phi i32 [ %0, %for.body.preheader ], [ %6, %middle.block ], [ %10, %for.body.for.body_crit_edge ]
  %.lcssa = phi i32 [ %0, %for.body.preheader ], [ %7, %middle.block ], [ %11, %for.body.for.body_crit_edge ]
  %sub = sub nsw i32 %.lcssa65, %.lcssa
  br i1 %cmp46, label %for.body15.preheader, label %for.end23

for.body15.preheader:                             ; preds = %for.end
  %wide.trip.count58 = zext i32 %size to i64
  %sub1869 = sub nsw i32 %0, %.lcssa
  %mul70 = mul nsw i32 %sub1869, 255
  %div71 = sdiv i32 %mul70, %sub
  %conv72 = trunc i32 %div71 to i8
  store i8 %conv72, ptr %in, align 1, !tbaa !19
  %exitcond59.not73 = icmp eq i32 %size, 1
  br i1 %exitcond59.not73, label %for.end23, label %for.body15.for.body15_crit_edge, !llvm.loop !20

for.body15.for.body15_crit_edge:                  ; preds = %for.body15.preheader, %for.body15.for.body15_crit_edge
  %indvars.iv.next5674 = phi i64 [ %indvars.iv.next56, %for.body15.for.body15_crit_edge ], [ 1, %for.body15.preheader ]
  %arrayidx17.phi.trans.insert = getelementptr inbounds i32, ptr %r, i64 %indvars.iv.next5674
  %.pre60 = load i32, ptr %arrayidx17.phi.trans.insert, align 4, !tbaa !12
  %sub18 = sub nsw i32 %.pre60, %.lcssa
  %mul = mul nsw i32 %sub18, 255
  %div = sdiv i32 %mul, %sub
  %conv = trunc i32 %div to i8
  %arrayidx20 = getelementptr inbounds i8, ptr %in, i64 %indvars.iv.next5674
  store i8 %conv, ptr %arrayidx20, align 1, !tbaa !19
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv.next5674, 1
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58
  br i1 %exitcond59.not, label %for.end23, label %for.body15.for.body15_crit_edge, !llvm.loop !20

for.end23:                                        ; preds = %for.body15.for.body15_crit_edge, %for.body15.preheader, %entry, %for.end
  ret i32 undef
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @setup_brightness_lut(ptr nocapture noundef %bp, i32 noundef %thresh, i32 noundef %form) local_unnamed_addr #7 {
entry:
  %call = tail call noalias dereferenceable_or_null(516) ptr @malloc(i64 noundef 516) #23
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 258
  store ptr %add.ptr, ptr %bp, align 8, !tbaa !5
  %conv1 = sitofp i32 %thresh to float
  %cmp2 = icmp eq i32 %form, 6
  br i1 %cmp2, label %for.body.us, label %for.body

for.body.us:                                      ; preds = %entry, %for.body.us
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.body.us ], [ -256, %entry ]
  %0 = trunc i64 %indvars.iv27 to i32
  %conv.us = sitofp i32 %0 to float
  %div.us = fdiv float %conv.us, %conv1
  %mul.us = fmul float %div.us, %div.us
  %mul4.us = fmul float %mul.us, %mul.us
  %1 = fneg float %mul.us
  %fneg.us = fmul float %mul4.us, %1
  %conv6.us = fpext float %fneg.us to double
  %call7.us = tail call double @exp(double noundef %conv6.us) #21
  %mul8.us = fmul double %call7.us, 1.000000e+02
  %conv9.us = fptrunc double %mul8.us to float
  %conv10.us = fptoui float %conv9.us to i8
  %2 = load ptr, ptr %bp, align 8, !tbaa !5
  %add.ptr11.us = getelementptr inbounds i8, ptr %2, i64 %indvars.iv27
  store i8 %conv10.us, ptr %add.ptr11.us, align 1, !tbaa !19
  %indvars.iv.next28 = add nsw i64 %indvars.iv27, 1
  %exitcond30.not = icmp eq i64 %indvars.iv.next28, 257
  br i1 %exitcond30.not, label %for.end, label %for.body.us, !llvm.loop !21

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ -256, %entry ]
  %3 = trunc i64 %indvars.iv to i32
  %conv = sitofp i32 %3 to float
  %div = fdiv float %conv, %conv1
  %4 = fneg float %div
  %fneg = fmul float %div, %4
  %conv6 = fpext float %fneg to double
  %call7 = tail call double @exp(double noundef %conv6) #21
  %mul8 = fmul double %call7, 1.000000e+02
  %conv9 = fptrunc double %mul8 to float
  %conv10 = fptoui float %conv9 to i8
  %5 = load ptr, ptr %bp, align 8, !tbaa !5
  %add.ptr11 = getelementptr inbounds i8, ptr %5, i64 %indvars.iv
  store i8 %conv10, ptr %add.ptr11, align 1, !tbaa !19
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 257
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !21

for.end:                                          ; preds = %for.body, %for.body.us
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @exp(double noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @susan_principle(ptr nocapture noundef readonly %in, ptr nocapture noundef writeonly %r, ptr noundef readonly %bp, i32 noundef %max_no, i32 noundef %x_size, i32 noundef %y_size) local_unnamed_addr #9 {
entry:
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %r, i8 0, i64 %mul1, i1 false)
  %sub = add i32 %y_size, -3
  %cmp426 = icmp sgt i32 %y_size, 6
  br i1 %cmp426, label %for.cond3.preheader.lr.ph, label %for.end287

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %sub4 = add i32 %x_size, -3
  %cmp5424 = icmp sgt i32 %x_size, 6
  %idx.ext36 = sext i32 %sub4 to i64
  %sub72 = add nsw i32 %x_size, -5
  %idx.ext73 = sext i32 %sub72 to i64
  %sub123 = add nsw i32 %x_size, -6
  %idx.ext124 = sext i32 %sub123 to i64
  br i1 %cmp5424, label %for.cond3.preheader.us.preheader, label %for.end287

for.cond3.preheader.us.preheader:                 ; preds = %for.cond3.preheader.lr.ph
  %0 = zext i32 %x_size to i64
  %wide.trip.count438 = zext i32 %sub to i64
  %wide.trip.count = zext i32 %sub4 to i64
  %add.ptr.us = getelementptr inbounds i8, ptr %in, i64 -1
  br label %for.cond3.preheader.us

for.cond3.preheader.us:                           ; preds = %for.cond3.preheader.us.preheader, %for.cond3.for.inc285_crit_edge.us
  %indvars.iv432 = phi i64 [ 3, %for.cond3.preheader.us.preheader ], [ %indvars.iv.next433, %for.cond3.for.inc285_crit_edge.us ]
  %1 = add nsw i64 %indvars.iv432, -3
  %2 = mul nsw i64 %1, %0
  %3 = mul nsw i64 %indvars.iv432, %0
  %add.ptr11.us = getelementptr inbounds i8, ptr %add.ptr.us, i64 %2
  br label %for.body7.us

for.body7.us:                                     ; preds = %for.cond3.preheader.us, %for.inc.us
  %indvars.iv = phi i64 [ 3, %for.cond3.preheader.us ], [ %indvars.iv.next, %for.inc.us ]
  %add.ptr12.us = getelementptr inbounds i8, ptr %add.ptr11.us, i64 %indvars.iv
  %4 = add nuw nsw i64 %indvars.iv, %3
  %arrayidx.us = getelementptr inbounds i8, ptr %in, i64 %4
  %5 = load i8, ptr %arrayidx.us, align 1, !tbaa !19
  %6 = zext i8 %5 to i64
  %add.ptr16.us = getelementptr inbounds i8, ptr %bp, i64 %6
  %incdec.ptr.us = getelementptr inbounds i8, ptr %add.ptr12.us, i64 1
  %7 = load i8, ptr %add.ptr12.us, align 1, !tbaa !19
  %8 = zext i8 %7 to i64
  %idx.neg.us = sub nsw i64 0, %8
  %add.ptr19.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg.us
  %9 = load i8, ptr %add.ptr19.us, align 1, !tbaa !19
  %conv20.us = zext i8 %9 to i32
  %add21.us = add nuw nsw i32 %conv20.us, 100
  %incdec.ptr22.us = getelementptr inbounds i8, ptr %incdec.ptr.us, i64 1
  %10 = load i8, ptr %incdec.ptr.us, align 1, !tbaa !19
  %11 = zext i8 %10 to i64
  %idx.neg25.us = sub nsw i64 0, %11
  %add.ptr26.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg25.us
  %12 = load i8, ptr %add.ptr26.us, align 1, !tbaa !19
  %conv27.us = zext i8 %12 to i32
  %add28.us = add nuw nsw i32 %add21.us, %conv27.us
  %13 = load i8, ptr %incdec.ptr22.us, align 1, !tbaa !19
  %14 = zext i8 %13 to i64
  %idx.neg31.us = sub nsw i64 0, %14
  %add.ptr32.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg31.us
  %15 = load i8, ptr %add.ptr32.us, align 1, !tbaa !19
  %conv33.us = zext i8 %15 to i32
  %add34.us = add nuw nsw i32 %add28.us, %conv33.us
  %add.ptr37.us = getelementptr inbounds i8, ptr %incdec.ptr22.us, i64 %idx.ext36
  %incdec.ptr38.us = getelementptr inbounds i8, ptr %add.ptr37.us, i64 1
  %16 = load i8, ptr %add.ptr37.us, align 1, !tbaa !19
  %17 = zext i8 %16 to i64
  %idx.neg41.us = sub nsw i64 0, %17
  %add.ptr42.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg41.us
  %18 = load i8, ptr %add.ptr42.us, align 1, !tbaa !19
  %conv43.us = zext i8 %18 to i32
  %add44.us = add nuw nsw i32 %add34.us, %conv43.us
  %incdec.ptr45.us = getelementptr inbounds i8, ptr %incdec.ptr38.us, i64 1
  %19 = load i8, ptr %incdec.ptr38.us, align 1, !tbaa !19
  %20 = zext i8 %19 to i64
  %idx.neg48.us = sub nsw i64 0, %20
  %add.ptr49.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg48.us
  %21 = load i8, ptr %add.ptr49.us, align 1, !tbaa !19
  %conv50.us = zext i8 %21 to i32
  %add51.us = add nuw nsw i32 %add44.us, %conv50.us
  %incdec.ptr52.us = getelementptr inbounds i8, ptr %incdec.ptr45.us, i64 1
  %22 = load i8, ptr %incdec.ptr45.us, align 1, !tbaa !19
  %23 = zext i8 %22 to i64
  %idx.neg55.us = sub nsw i64 0, %23
  %add.ptr56.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg55.us
  %24 = load i8, ptr %add.ptr56.us, align 1, !tbaa !19
  %conv57.us = zext i8 %24 to i32
  %add58.us = add nuw nsw i32 %add51.us, %conv57.us
  %incdec.ptr59.us = getelementptr inbounds i8, ptr %incdec.ptr52.us, i64 1
  %25 = load i8, ptr %incdec.ptr52.us, align 1, !tbaa !19
  %26 = zext i8 %25 to i64
  %idx.neg62.us = sub nsw i64 0, %26
  %add.ptr63.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg62.us
  %27 = load i8, ptr %add.ptr63.us, align 1, !tbaa !19
  %conv64.us = zext i8 %27 to i32
  %add65.us = add nuw nsw i32 %add58.us, %conv64.us
  %28 = load i8, ptr %incdec.ptr59.us, align 1, !tbaa !19
  %29 = zext i8 %28 to i64
  %idx.neg68.us = sub nsw i64 0, %29
  %add.ptr69.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg68.us
  %30 = load i8, ptr %add.ptr69.us, align 1, !tbaa !19
  %conv70.us = zext i8 %30 to i32
  %add71.us = add nuw nsw i32 %add65.us, %conv70.us
  %add.ptr74.us = getelementptr inbounds i8, ptr %incdec.ptr59.us, i64 %idx.ext73
  %incdec.ptr75.us = getelementptr inbounds i8, ptr %add.ptr74.us, i64 1
  %31 = load i8, ptr %add.ptr74.us, align 1, !tbaa !19
  %32 = zext i8 %31 to i64
  %idx.neg78.us = sub nsw i64 0, %32
  %add.ptr79.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg78.us
  %33 = load i8, ptr %add.ptr79.us, align 1, !tbaa !19
  %conv80.us = zext i8 %33 to i32
  %add81.us = add nuw nsw i32 %add71.us, %conv80.us
  %incdec.ptr82.us = getelementptr inbounds i8, ptr %incdec.ptr75.us, i64 1
  %34 = load i8, ptr %incdec.ptr75.us, align 1, !tbaa !19
  %35 = zext i8 %34 to i64
  %idx.neg85.us = sub nsw i64 0, %35
  %add.ptr86.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg85.us
  %36 = load i8, ptr %add.ptr86.us, align 1, !tbaa !19
  %conv87.us = zext i8 %36 to i32
  %add88.us = add nuw nsw i32 %add81.us, %conv87.us
  %incdec.ptr89.us = getelementptr inbounds i8, ptr %incdec.ptr82.us, i64 1
  %37 = load i8, ptr %incdec.ptr82.us, align 1, !tbaa !19
  %38 = zext i8 %37 to i64
  %idx.neg92.us = sub nsw i64 0, %38
  %add.ptr93.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg92.us
  %39 = load i8, ptr %add.ptr93.us, align 1, !tbaa !19
  %conv94.us = zext i8 %39 to i32
  %add95.us = add nuw nsw i32 %add88.us, %conv94.us
  %incdec.ptr96.us = getelementptr inbounds i8, ptr %incdec.ptr89.us, i64 1
  %40 = load i8, ptr %incdec.ptr89.us, align 1, !tbaa !19
  %41 = zext i8 %40 to i64
  %idx.neg99.us = sub nsw i64 0, %41
  %add.ptr100.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg99.us
  %42 = load i8, ptr %add.ptr100.us, align 1, !tbaa !19
  %conv101.us = zext i8 %42 to i32
  %add102.us = add nuw nsw i32 %add95.us, %conv101.us
  %incdec.ptr103.us = getelementptr inbounds i8, ptr %incdec.ptr96.us, i64 1
  %43 = load i8, ptr %incdec.ptr96.us, align 1, !tbaa !19
  %44 = zext i8 %43 to i64
  %idx.neg106.us = sub nsw i64 0, %44
  %add.ptr107.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg106.us
  %45 = load i8, ptr %add.ptr107.us, align 1, !tbaa !19
  %conv108.us = zext i8 %45 to i32
  %add109.us = add nuw nsw i32 %add102.us, %conv108.us
  %incdec.ptr110.us = getelementptr inbounds i8, ptr %incdec.ptr103.us, i64 1
  %46 = load i8, ptr %incdec.ptr103.us, align 1, !tbaa !19
  %47 = zext i8 %46 to i64
  %idx.neg113.us = sub nsw i64 0, %47
  %add.ptr114.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg113.us
  %48 = load i8, ptr %add.ptr114.us, align 1, !tbaa !19
  %conv115.us = zext i8 %48 to i32
  %add116.us = add nuw nsw i32 %add109.us, %conv115.us
  %49 = load i8, ptr %incdec.ptr110.us, align 1, !tbaa !19
  %50 = zext i8 %49 to i64
  %idx.neg119.us = sub nsw i64 0, %50
  %add.ptr120.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg119.us
  %51 = load i8, ptr %add.ptr120.us, align 1, !tbaa !19
  %conv121.us = zext i8 %51 to i32
  %add122.us = add nuw nsw i32 %add116.us, %conv121.us
  %add.ptr125.us = getelementptr inbounds i8, ptr %incdec.ptr110.us, i64 %idx.ext124
  %incdec.ptr126.us = getelementptr inbounds i8, ptr %add.ptr125.us, i64 1
  %52 = load i8, ptr %add.ptr125.us, align 1, !tbaa !19
  %53 = zext i8 %52 to i64
  %idx.neg129.us = sub nsw i64 0, %53
  %add.ptr130.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg129.us
  %54 = load i8, ptr %add.ptr130.us, align 1, !tbaa !19
  %conv131.us = zext i8 %54 to i32
  %add132.us = add nuw nsw i32 %add122.us, %conv131.us
  %incdec.ptr133.us = getelementptr inbounds i8, ptr %incdec.ptr126.us, i64 1
  %55 = load i8, ptr %incdec.ptr126.us, align 1, !tbaa !19
  %56 = zext i8 %55 to i64
  %idx.neg136.us = sub nsw i64 0, %56
  %add.ptr137.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg136.us
  %57 = load i8, ptr %add.ptr137.us, align 1, !tbaa !19
  %conv138.us = zext i8 %57 to i32
  %add139.us = add nuw nsw i32 %add132.us, %conv138.us
  %58 = load i8, ptr %incdec.ptr133.us, align 1, !tbaa !19
  %59 = zext i8 %58 to i64
  %idx.neg142.us = sub nsw i64 0, %59
  %add.ptr143.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg142.us
  %60 = load i8, ptr %add.ptr143.us, align 1, !tbaa !19
  %conv144.us = zext i8 %60 to i32
  %add145.us = add nuw nsw i32 %add139.us, %conv144.us
  %add.ptr146.us = getelementptr inbounds i8, ptr %incdec.ptr133.us, i64 2
  %incdec.ptr147.us = getelementptr inbounds i8, ptr %add.ptr146.us, i64 1
  %61 = load i8, ptr %add.ptr146.us, align 1, !tbaa !19
  %62 = zext i8 %61 to i64
  %idx.neg150.us = sub nsw i64 0, %62
  %add.ptr151.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg150.us
  %63 = load i8, ptr %add.ptr151.us, align 1, !tbaa !19
  %conv152.us = zext i8 %63 to i32
  %add153.us = add nuw nsw i32 %add145.us, %conv152.us
  %incdec.ptr154.us = getelementptr inbounds i8, ptr %incdec.ptr147.us, i64 1
  %64 = load i8, ptr %incdec.ptr147.us, align 1, !tbaa !19
  %65 = zext i8 %64 to i64
  %idx.neg157.us = sub nsw i64 0, %65
  %add.ptr158.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg157.us
  %66 = load i8, ptr %add.ptr158.us, align 1, !tbaa !19
  %conv159.us = zext i8 %66 to i32
  %add160.us = add nuw nsw i32 %add153.us, %conv159.us
  %67 = load i8, ptr %incdec.ptr154.us, align 1, !tbaa !19
  %68 = zext i8 %67 to i64
  %idx.neg163.us = sub nsw i64 0, %68
  %add.ptr164.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg163.us
  %69 = load i8, ptr %add.ptr164.us, align 1, !tbaa !19
  %conv165.us = zext i8 %69 to i32
  %add166.us = add nuw nsw i32 %add160.us, %conv165.us
  %add.ptr169.us = getelementptr inbounds i8, ptr %incdec.ptr154.us, i64 %idx.ext124
  %incdec.ptr170.us = getelementptr inbounds i8, ptr %add.ptr169.us, i64 1
  %70 = load i8, ptr %add.ptr169.us, align 1, !tbaa !19
  %71 = zext i8 %70 to i64
  %idx.neg173.us = sub nsw i64 0, %71
  %add.ptr174.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg173.us
  %72 = load i8, ptr %add.ptr174.us, align 1, !tbaa !19
  %conv175.us = zext i8 %72 to i32
  %add176.us = add nuw nsw i32 %add166.us, %conv175.us
  %incdec.ptr177.us = getelementptr inbounds i8, ptr %incdec.ptr170.us, i64 1
  %73 = load i8, ptr %incdec.ptr170.us, align 1, !tbaa !19
  %74 = zext i8 %73 to i64
  %idx.neg180.us = sub nsw i64 0, %74
  %add.ptr181.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg180.us
  %75 = load i8, ptr %add.ptr181.us, align 1, !tbaa !19
  %conv182.us = zext i8 %75 to i32
  %add183.us = add nuw nsw i32 %add176.us, %conv182.us
  %incdec.ptr184.us = getelementptr inbounds i8, ptr %incdec.ptr177.us, i64 1
  %76 = load i8, ptr %incdec.ptr177.us, align 1, !tbaa !19
  %77 = zext i8 %76 to i64
  %idx.neg187.us = sub nsw i64 0, %77
  %add.ptr188.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg187.us
  %78 = load i8, ptr %add.ptr188.us, align 1, !tbaa !19
  %conv189.us = zext i8 %78 to i32
  %add190.us = add nuw nsw i32 %add183.us, %conv189.us
  %incdec.ptr191.us = getelementptr inbounds i8, ptr %incdec.ptr184.us, i64 1
  %79 = load i8, ptr %incdec.ptr184.us, align 1, !tbaa !19
  %80 = zext i8 %79 to i64
  %idx.neg194.us = sub nsw i64 0, %80
  %add.ptr195.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg194.us
  %81 = load i8, ptr %add.ptr195.us, align 1, !tbaa !19
  %conv196.us = zext i8 %81 to i32
  %add197.us = add nuw nsw i32 %add190.us, %conv196.us
  %incdec.ptr198.us = getelementptr inbounds i8, ptr %incdec.ptr191.us, i64 1
  %82 = load i8, ptr %incdec.ptr191.us, align 1, !tbaa !19
  %83 = zext i8 %82 to i64
  %idx.neg201.us = sub nsw i64 0, %83
  %add.ptr202.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg201.us
  %84 = load i8, ptr %add.ptr202.us, align 1, !tbaa !19
  %conv203.us = zext i8 %84 to i32
  %add204.us = add nuw nsw i32 %add197.us, %conv203.us
  %incdec.ptr205.us = getelementptr inbounds i8, ptr %incdec.ptr198.us, i64 1
  %85 = load i8, ptr %incdec.ptr198.us, align 1, !tbaa !19
  %86 = zext i8 %85 to i64
  %idx.neg208.us = sub nsw i64 0, %86
  %add.ptr209.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg208.us
  %87 = load i8, ptr %add.ptr209.us, align 1, !tbaa !19
  %conv210.us = zext i8 %87 to i32
  %add211.us = add nuw nsw i32 %add204.us, %conv210.us
  %88 = load i8, ptr %incdec.ptr205.us, align 1, !tbaa !19
  %89 = zext i8 %88 to i64
  %idx.neg214.us = sub nsw i64 0, %89
  %add.ptr215.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg214.us
  %90 = load i8, ptr %add.ptr215.us, align 1, !tbaa !19
  %conv216.us = zext i8 %90 to i32
  %add217.us = add nuw nsw i32 %add211.us, %conv216.us
  %add.ptr220.us = getelementptr inbounds i8, ptr %incdec.ptr205.us, i64 %idx.ext73
  %incdec.ptr221.us = getelementptr inbounds i8, ptr %add.ptr220.us, i64 1
  %91 = load i8, ptr %add.ptr220.us, align 1, !tbaa !19
  %92 = zext i8 %91 to i64
  %idx.neg224.us = sub nsw i64 0, %92
  %add.ptr225.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg224.us
  %93 = load i8, ptr %add.ptr225.us, align 1, !tbaa !19
  %conv226.us = zext i8 %93 to i32
  %add227.us = add nuw nsw i32 %add217.us, %conv226.us
  %incdec.ptr228.us = getelementptr inbounds i8, ptr %incdec.ptr221.us, i64 1
  %94 = load i8, ptr %incdec.ptr221.us, align 1, !tbaa !19
  %95 = zext i8 %94 to i64
  %idx.neg231.us = sub nsw i64 0, %95
  %add.ptr232.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg231.us
  %96 = load i8, ptr %add.ptr232.us, align 1, !tbaa !19
  %conv233.us = zext i8 %96 to i32
  %add234.us = add nuw nsw i32 %add227.us, %conv233.us
  %incdec.ptr235.us = getelementptr inbounds i8, ptr %incdec.ptr228.us, i64 1
  %97 = load i8, ptr %incdec.ptr228.us, align 1, !tbaa !19
  %98 = zext i8 %97 to i64
  %idx.neg238.us = sub nsw i64 0, %98
  %add.ptr239.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg238.us
  %99 = load i8, ptr %add.ptr239.us, align 1, !tbaa !19
  %conv240.us = zext i8 %99 to i32
  %add241.us = add nuw nsw i32 %add234.us, %conv240.us
  %incdec.ptr242.us = getelementptr inbounds i8, ptr %incdec.ptr235.us, i64 1
  %100 = load i8, ptr %incdec.ptr235.us, align 1, !tbaa !19
  %101 = zext i8 %100 to i64
  %idx.neg245.us = sub nsw i64 0, %101
  %add.ptr246.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg245.us
  %102 = load i8, ptr %add.ptr246.us, align 1, !tbaa !19
  %conv247.us = zext i8 %102 to i32
  %add248.us = add nuw nsw i32 %add241.us, %conv247.us
  %103 = load i8, ptr %incdec.ptr242.us, align 1, !tbaa !19
  %104 = zext i8 %103 to i64
  %idx.neg251.us = sub nsw i64 0, %104
  %add.ptr252.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg251.us
  %105 = load i8, ptr %add.ptr252.us, align 1, !tbaa !19
  %conv253.us = zext i8 %105 to i32
  %add254.us = add nuw nsw i32 %add248.us, %conv253.us
  %add.ptr257.us = getelementptr inbounds i8, ptr %incdec.ptr242.us, i64 %idx.ext36
  %incdec.ptr258.us = getelementptr inbounds i8, ptr %add.ptr257.us, i64 1
  %106 = load i8, ptr %add.ptr257.us, align 1, !tbaa !19
  %107 = zext i8 %106 to i64
  %idx.neg261.us = sub nsw i64 0, %107
  %add.ptr262.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg261.us
  %108 = load i8, ptr %add.ptr262.us, align 1, !tbaa !19
  %conv263.us = zext i8 %108 to i32
  %add264.us = add nuw nsw i32 %add254.us, %conv263.us
  %incdec.ptr265.us = getelementptr inbounds i8, ptr %incdec.ptr258.us, i64 1
  %109 = load i8, ptr %incdec.ptr258.us, align 1, !tbaa !19
  %110 = zext i8 %109 to i64
  %idx.neg268.us = sub nsw i64 0, %110
  %add.ptr269.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg268.us
  %111 = load i8, ptr %add.ptr269.us, align 1, !tbaa !19
  %conv270.us = zext i8 %111 to i32
  %add271.us = add nuw nsw i32 %add264.us, %conv270.us
  %112 = load i8, ptr %incdec.ptr265.us, align 1, !tbaa !19
  %113 = zext i8 %112 to i64
  %idx.neg274.us = sub nsw i64 0, %113
  %add.ptr275.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg274.us
  %114 = load i8, ptr %add.ptr275.us, align 1, !tbaa !19
  %conv276.us = zext i8 %114 to i32
  %add277.us = add nuw nsw i32 %add271.us, %conv276.us
  %cmp278.not.us = icmp sgt i32 %add277.us, %max_no
  br i1 %cmp278.not.us, label %for.inc.us, label %if.then.us

if.then.us:                                       ; preds = %for.body7.us
  %sub280.us = sub nsw i32 %max_no, %add277.us
  %arrayidx284.us = getelementptr inbounds i32, ptr %r, i64 %4
  store i32 %sub280.us, ptr %arrayidx284.us, align 4, !tbaa !12
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.then.us, %for.body7.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond3.for.inc285_crit_edge.us, label %for.body7.us, !llvm.loop !22

for.cond3.for.inc285_crit_edge.us:                ; preds = %for.inc.us
  %indvars.iv.next433 = add nuw nsw i64 %indvars.iv432, 1
  %exitcond439.not = icmp eq i64 %indvars.iv.next433, %wide.trip.count438
  br i1 %exitcond439.not, label %for.end287, label %for.cond3.preheader.us, !llvm.loop !23

for.end287:                                       ; preds = %for.cond3.for.inc285_crit_edge.us, %for.cond3.preheader.lr.ph, %entry
  ret i32 undef
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @susan_principle_small(ptr nocapture noundef readonly %in, ptr nocapture noundef writeonly %r, ptr nocapture noundef readonly %bp, i32 %max_no, i32 noundef %x_size, i32 noundef %y_size) local_unnamed_addr #9 {
entry:
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %r, i8 0, i64 %mul1, i1 false)
  %sub = add i32 %y_size, -1
  %cmp130 = icmp sgt i32 %y_size, 2
  br i1 %cmp130, label %for.cond3.preheader.lr.ph, label %for.end83

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %cmp5128 = icmp sgt i32 %x_size, 2
  %sub35 = add nsw i32 %x_size, -2
  %idx.ext36 = sext i32 %sub35 to i64
  br i1 %cmp5128, label %for.cond3.preheader.us.preheader, label %for.end83

for.cond3.preheader.us.preheader:                 ; preds = %for.cond3.preheader.lr.ph
  %sub4 = add i32 %x_size, -1
  %0 = zext i32 %x_size to i64
  %wide.trip.count142 = zext i32 %sub to i64
  %wide.trip.count = zext i32 %sub4 to i64
  %add.ptr.us = getelementptr inbounds i8, ptr %in, i64 -1
  br label %for.cond3.preheader.us

for.cond3.preheader.us:                           ; preds = %for.cond3.preheader.us.preheader, %for.cond3.for.inc81_crit_edge.us
  %indvars.iv136 = phi i64 [ 1, %for.cond3.preheader.us.preheader ], [ %indvars.iv.next137, %for.cond3.for.inc81_crit_edge.us ]
  %1 = add nsw i64 %indvars.iv136, -1
  %2 = mul nsw i64 %1, %0
  %3 = mul nsw i64 %indvars.iv136, %0
  %add.ptr11.us = getelementptr inbounds i8, ptr %add.ptr.us, i64 %2
  br label %for.body7.us

for.body7.us:                                     ; preds = %for.cond3.preheader.us, %for.inc.us
  %indvars.iv = phi i64 [ 1, %for.cond3.preheader.us ], [ %indvars.iv.next, %for.inc.us ]
  %add.ptr12.us = getelementptr inbounds i8, ptr %add.ptr11.us, i64 %indvars.iv
  %4 = add nuw nsw i64 %indvars.iv, %3
  %arrayidx.us = getelementptr inbounds i8, ptr %in, i64 %4
  %5 = load i8, ptr %arrayidx.us, align 1, !tbaa !19
  %6 = zext i8 %5 to i64
  %add.ptr16.us = getelementptr inbounds i8, ptr %bp, i64 %6
  %incdec.ptr.us = getelementptr inbounds i8, ptr %add.ptr12.us, i64 1
  %7 = load i8, ptr %add.ptr12.us, align 1, !tbaa !19
  %8 = zext i8 %7 to i64
  %idx.neg.us = sub nsw i64 0, %8
  %add.ptr19.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg.us
  %9 = load i8, ptr %add.ptr19.us, align 1, !tbaa !19
  %conv20.us = zext i8 %9 to i32
  %add21.us = add nuw nsw i32 %conv20.us, 100
  %incdec.ptr22.us = getelementptr inbounds i8, ptr %incdec.ptr.us, i64 1
  %10 = load i8, ptr %incdec.ptr.us, align 1, !tbaa !19
  %11 = zext i8 %10 to i64
  %idx.neg25.us = sub nsw i64 0, %11
  %add.ptr26.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg25.us
  %12 = load i8, ptr %add.ptr26.us, align 1, !tbaa !19
  %conv27.us = zext i8 %12 to i32
  %add28.us = add nuw nsw i32 %add21.us, %conv27.us
  %13 = load i8, ptr %incdec.ptr22.us, align 1, !tbaa !19
  %14 = zext i8 %13 to i64
  %idx.neg31.us = sub nsw i64 0, %14
  %add.ptr32.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg31.us
  %15 = load i8, ptr %add.ptr32.us, align 1, !tbaa !19
  %conv33.us = zext i8 %15 to i32
  %add34.us = add nuw nsw i32 %add28.us, %conv33.us
  %add.ptr37.us = getelementptr inbounds i8, ptr %incdec.ptr22.us, i64 %idx.ext36
  %16 = load i8, ptr %add.ptr37.us, align 1, !tbaa !19
  %17 = zext i8 %16 to i64
  %idx.neg40.us = sub nsw i64 0, %17
  %add.ptr41.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg40.us
  %18 = load i8, ptr %add.ptr41.us, align 1, !tbaa !19
  %conv42.us = zext i8 %18 to i32
  %add43.us = add nuw nsw i32 %add34.us, %conv42.us
  %add.ptr44.us = getelementptr inbounds i8, ptr %add.ptr37.us, i64 2
  %19 = load i8, ptr %add.ptr44.us, align 1, !tbaa !19
  %20 = zext i8 %19 to i64
  %idx.neg47.us = sub nsw i64 0, %20
  %add.ptr48.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg47.us
  %21 = load i8, ptr %add.ptr48.us, align 1, !tbaa !19
  %conv49.us = zext i8 %21 to i32
  %add50.us = add nuw nsw i32 %add43.us, %conv49.us
  %add.ptr53.us = getelementptr inbounds i8, ptr %add.ptr44.us, i64 %idx.ext36
  %incdec.ptr54.us = getelementptr inbounds i8, ptr %add.ptr53.us, i64 1
  %22 = load i8, ptr %add.ptr53.us, align 1, !tbaa !19
  %23 = zext i8 %22 to i64
  %idx.neg57.us = sub nsw i64 0, %23
  %add.ptr58.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg57.us
  %24 = load i8, ptr %add.ptr58.us, align 1, !tbaa !19
  %conv59.us = zext i8 %24 to i32
  %add60.us = add nuw nsw i32 %add50.us, %conv59.us
  %incdec.ptr61.us = getelementptr inbounds i8, ptr %incdec.ptr54.us, i64 1
  %25 = load i8, ptr %incdec.ptr54.us, align 1, !tbaa !19
  %26 = zext i8 %25 to i64
  %idx.neg64.us = sub nsw i64 0, %26
  %add.ptr65.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg64.us
  %27 = load i8, ptr %add.ptr65.us, align 1, !tbaa !19
  %conv66.us = zext i8 %27 to i32
  %add67.us = add nuw nsw i32 %add60.us, %conv66.us
  %28 = load i8, ptr %incdec.ptr61.us, align 1, !tbaa !19
  %29 = zext i8 %28 to i64
  %idx.neg70.us = sub nsw i64 0, %29
  %add.ptr71.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg70.us
  %30 = load i8, ptr %add.ptr71.us, align 1, !tbaa !19
  %conv72.us = zext i8 %30 to i32
  %add73.us = add nuw nsw i32 %add67.us, %conv72.us
  %cmp74.us = icmp ult i32 %add73.us, 731
  br i1 %cmp74.us, label %if.then.us, label %for.inc.us

if.then.us:                                       ; preds = %for.body7.us
  %sub76.us = sub nuw nsw i32 730, %add73.us
  %arrayidx80.us = getelementptr inbounds i32, ptr %r, i64 %4
  store i32 %sub76.us, ptr %arrayidx80.us, align 4, !tbaa !12
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.then.us, %for.body7.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond3.for.inc81_crit_edge.us, label %for.body7.us, !llvm.loop !24

for.cond3.for.inc81_crit_edge.us:                 ; preds = %for.inc.us
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1
  %exitcond143.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count142
  br i1 %exitcond143.not, label %for.end83, label %for.cond3.preheader.us, !llvm.loop !25

for.end83:                                        ; preds = %for.cond3.for.inc81_crit_edge.us, %for.cond3.preheader.lr.ph, %entry
  ret i32 undef
}

; Function Attrs: argmemonly nofree noinline nosync nounwind readonly uwtable
define dso_local zeroext i8 @median(ptr nocapture noundef readonly %in, i32 noundef %i, i32 noundef %j, i32 noundef %x_size) local_unnamed_addr #11 {
entry:
  %p = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %p) #21
  %sub = add nsw i32 %i, -1
  %mul = mul nsw i32 %sub, %x_size
  %add = add nsw i32 %mul, %j
  %sub1 = add nsw i32 %add, -1
  %idxprom = sext i32 %sub1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %0 to i32
  store i32 %conv, ptr %p, align 16, !tbaa !12
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %in, i64 %idxprom6
  %1 = load i8, ptr %arrayidx7, align 1, !tbaa !19
  %conv8 = zext i8 %1 to i32
  %arrayidx9 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 1
  store i32 %conv8, ptr %arrayidx9, align 4, !tbaa !12
  %add13 = add nsw i32 %add, 1
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds i8, ptr %in, i64 %idxprom14
  %2 = load i8, ptr %arrayidx15, align 1, !tbaa !19
  %conv16 = zext i8 %2 to i32
  %arrayidx17 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 2
  store i32 %conv16, ptr %arrayidx17, align 8, !tbaa !12
  %mul18 = mul nsw i32 %x_size, %i
  %add19 = add nsw i32 %mul18, %j
  %sub20 = add nsw i32 %add19, -1
  %idxprom21 = sext i32 %sub20 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %in, i64 %idxprom21
  %3 = load i8, ptr %arrayidx22, align 1, !tbaa !19
  %conv23 = zext i8 %3 to i32
  %arrayidx24 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 3
  store i32 %conv23, ptr %arrayidx24, align 4, !tbaa !12
  %add27 = add nsw i32 %add19, 1
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %in, i64 %idxprom28
  %4 = load i8, ptr %arrayidx29, align 1, !tbaa !19
  %conv30 = zext i8 %4 to i32
  %arrayidx31 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 4
  store i32 %conv30, ptr %arrayidx31, align 16, !tbaa !12
  %add32 = add nsw i32 %i, 1
  %mul33 = mul nsw i32 %add32, %x_size
  %add34 = add nsw i32 %mul33, %j
  %sub35 = add nsw i32 %add34, -1
  %idxprom36 = sext i32 %sub35 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %in, i64 %idxprom36
  %5 = load i8, ptr %arrayidx37, align 1, !tbaa !19
  %conv38 = zext i8 %5 to i32
  %arrayidx39 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 5
  store i32 %conv38, ptr %arrayidx39, align 4, !tbaa !12
  %idxprom43 = sext i32 %add34 to i64
  %arrayidx44 = getelementptr inbounds i8, ptr %in, i64 %idxprom43
  %6 = load i8, ptr %arrayidx44, align 1, !tbaa !19
  %conv45 = zext i8 %6 to i32
  %arrayidx46 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 6
  store i32 %conv45, ptr %arrayidx46, align 8, !tbaa !12
  %add50 = add nsw i32 %add34, 1
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds i8, ptr %in, i64 %idxprom51
  %7 = load i8, ptr %arrayidx52, align 1, !tbaa !19
  %conv53 = zext i8 %7 to i32
  %arrayidx54 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 7
  store i32 %conv53, ptr %arrayidx54, align 4, !tbaa !12
  br label %for.body60.preheader

for.body60.preheader:                             ; preds = %for.inc78, %entry
  %indvars.iv129 = phi i64 [ 7, %entry ], [ %indvars.iv.next130, %for.inc78 ]
  %k.0125 = phi i32 [ 0, %entry ], [ %inc79, %for.inc78 ]
  %.pre = load i32, ptr %p, align 16, !tbaa !12
  br label %for.body60

for.body60:                                       ; preds = %for.body60.preheader, %for.inc
  %8 = phi i32 [ %.pre, %for.body60.preheader ], [ %10, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body60.preheader ], [ %indvars.iv.next, %for.inc ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx65 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 %indvars.iv.next
  %9 = load i32, ptr %arrayidx65, align 4, !tbaa !12
  %cmp66 = icmp sgt i32 %8, %9
  br i1 %cmp66, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body60
  %arrayidx62 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 %indvars.iv
  store i32 %9, ptr %arrayidx62, align 4, !tbaa !12
  store i32 %8, ptr %arrayidx65, align 4, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body60, %if.then
  %10 = phi i32 [ %9, %for.body60 ], [ %8, %if.then ]
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv129
  br i1 %exitcond.not, label %for.inc78, label %for.body60, !llvm.loop !26

for.inc78:                                        ; preds = %for.inc
  %inc79 = add nuw nsw i32 %k.0125, 1
  %indvars.iv.next130 = add nsw i64 %indvars.iv129, -1
  %exitcond132.not = icmp eq i32 %inc79, 7
  br i1 %exitcond132.not, label %for.end80, label %for.body60.preheader, !llvm.loop !27

for.end80:                                        ; preds = %for.inc78
  %11 = load i32, ptr %arrayidx24, align 4, !tbaa !12
  %12 = load i32, ptr %arrayidx31, align 16, !tbaa !12
  %add83 = add nsw i32 %12, %11
  %div = sdiv i32 %add83, 2
  %conv84 = trunc i32 %div to i8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %p) #21
  ret i8 %conv84
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @enlarge(ptr nocapture noundef %in, ptr noundef %tmp_image, ptr nocapture noundef %x_size, ptr nocapture noundef %y_size, i32 noundef %border) local_unnamed_addr #9 {
entry:
  %0 = load i32, ptr %y_size, align 4, !tbaa !12
  %cmp162 = icmp sgt i32 %0, 0
  br i1 %cmp162, label %for.body.lr.ph, label %for.cond8.preheader

for.body.lr.ph:                                   ; preds = %entry
  %mul = shl nsw i32 %border, 1
  %idx.ext3 = sext i32 %border to i64
  %add.ptr = getelementptr inbounds i8, ptr %tmp_image, i64 %idx.ext3
  br label %for.body

for.cond8.preheader:                              ; preds = %for.body, %entry
  %cmp9164 = icmp sgt i32 %border, 0
  br i1 %cmp9164, label %for.body11.lr.ph, label %for.cond42.preheader.for.end87_crit_edge

for.body11.lr.ph:                                 ; preds = %for.cond8.preheader
  %mul13 = shl nuw nsw i32 %border, 1
  %idx.ext18174 = zext i32 %border to i64
  %add.ptr17 = getelementptr inbounds i8, ptr %tmp_image, i64 %idx.ext18174
  %add.ptr30 = getelementptr inbounds i8, ptr %tmp_image, i64 %idx.ext18174
  br label %for.body11

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.0163 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %add = add nsw i32 %i.0163, %border
  %1 = load i32, ptr %x_size, align 4, !tbaa !12
  %add1 = add nsw i32 %1, %mul
  %mul2 = mul nsw i32 %add1, %add
  %idx.ext = sext i32 %mul2 to i64
  %add.ptr4 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext
  %2 = load ptr, ptr %in, align 8, !tbaa !5
  %mul5 = mul nsw i32 %1, %i.0163
  %idx.ext6 = sext i32 %mul5 to i64
  %add.ptr7 = getelementptr inbounds i8, ptr %2, i64 %idx.ext6
  %conv = sext i32 %1 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr4, ptr align 1 %add.ptr7, i64 %conv, i1 false)
  %inc = add nuw nsw i32 %i.0163, 1
  %3 = load i32, ptr %y_size, align 4, !tbaa !12
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.body, label %for.cond8.preheader, !llvm.loop !28

for.cond42.preheader:                             ; preds = %for.body11
  br i1 %cmp9164, label %for.cond46.preheader.lr.ph, label %for.cond42.preheader.for.end87_crit_edge

for.cond42.preheader.for.end87_crit_edge:         ; preds = %for.cond8.preheader, %for.cond42.preheader
  %.pre173 = shl nsw i32 %border, 1
  br label %for.end87

for.cond46.preheader.lr.ph:                       ; preds = %for.cond42.preheader
  %mul47 = shl nuw nsw i32 %border, 1
  %.pre = load i32, ptr %y_size, align 4, !tbaa !12
  br label %for.cond46.preheader

for.body11:                                       ; preds = %for.body11.lr.ph, %for.body11
  %i.1165 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc40, %for.body11 ]
  %4 = xor i32 %i.1165, -1
  %sub12 = add i32 %4, %border
  %5 = load i32, ptr %x_size, align 4, !tbaa !12
  %add14 = add nsw i32 %5, %mul13
  %mul15 = mul nsw i32 %add14, %sub12
  %idx.ext16 = sext i32 %mul15 to i64
  %add.ptr19 = getelementptr inbounds i8, ptr %add.ptr17, i64 %idx.ext16
  %6 = load ptr, ptr %in, align 8, !tbaa !5
  %mul20 = mul nsw i32 %5, %i.1165
  %idx.ext21 = sext i32 %mul20 to i64
  %add.ptr22 = getelementptr inbounds i8, ptr %6, i64 %idx.ext21
  %conv23 = sext i32 %5 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr19, ptr align 1 %add.ptr22, i64 %conv23, i1 false)
  %7 = load i32, ptr %y_size, align 4, !tbaa !12
  %add24 = add i32 %i.1165, %border
  %add25 = add i32 %add24, %7
  %8 = load i32, ptr %x_size, align 4, !tbaa !12
  %add27 = add nsw i32 %8, %mul13
  %mul28 = mul nsw i32 %add25, %add27
  %idx.ext29 = sext i32 %mul28 to i64
  %add.ptr32 = getelementptr inbounds i8, ptr %add.ptr30, i64 %idx.ext29
  %9 = load ptr, ptr %in, align 8, !tbaa !5
  %sub34 = add i32 %7, %4
  %mul35 = mul nsw i32 %sub34, %8
  %idx.ext36 = sext i32 %mul35 to i64
  %add.ptr37 = getelementptr inbounds i8, ptr %9, i64 %idx.ext36
  %conv38 = sext i32 %8 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr32, ptr align 1 %add.ptr37, i64 %conv38, i1 false)
  %inc40 = add nuw nsw i32 %i.1165, 1
  %exitcond.not = icmp eq i32 %inc40, %border
  br i1 %exitcond.not, label %for.cond42.preheader, label %for.body11, !llvm.loop !29

for.cond46.preheader:                             ; preds = %for.cond46.preheader.lr.ph, %for.inc85
  %10 = phi i32 [ %.pre, %for.cond46.preheader.lr.ph ], [ %17, %for.inc85 ]
  %i.2170 = phi i32 [ 0, %for.cond46.preheader.lr.ph ], [ %inc86, %for.inc85 ]
  %add48166 = add nsw i32 %10, %mul47
  %cmp49167 = icmp sgt i32 %add48166, 0
  br i1 %cmp49167, label %for.body51.lr.ph, label %for.inc85

for.body51.lr.ph:                                 ; preds = %for.cond46.preheader
  %11 = xor i32 %i.2170, -1
  br label %for.body51

for.body51:                                       ; preds = %for.body51.lr.ph, %for.body51
  %j.0168 = phi i32 [ 0, %for.body51.lr.ph ], [ %inc83, %for.body51 ]
  %12 = load i32, ptr %x_size, align 4, !tbaa !12
  %add53 = add nsw i32 %12, %mul47
  %mul54 = mul nsw i32 %add53, %j.0168
  %add55 = add nsw i32 %mul54, %border
  %add56 = add nsw i32 %add55, %i.2170
  %idxprom = sext i32 %add56 to i64
  %arrayidx = getelementptr inbounds i8, ptr %tmp_image, i64 %idxprom
  %13 = load i8, ptr %arrayidx, align 1, !tbaa !19
  %sub62 = add i32 %add55, %11
  %idxprom63 = sext i32 %sub62 to i64
  %arrayidx64 = getelementptr inbounds i8, ptr %tmp_image, i64 %idxprom63
  store i8 %13, ptr %arrayidx64, align 1, !tbaa !19
  %14 = load i32, ptr %x_size, align 4, !tbaa !12
  %add66 = add nsw i32 %14, %mul47
  %mul67 = mul nsw i32 %add66, %j.0168
  %add68 = add i32 %14, %border
  %add69 = add i32 %add68, %mul67
  %sub71 = add i32 %add69, %11
  %idxprom72 = sext i32 %sub71 to i64
  %arrayidx73 = getelementptr inbounds i8, ptr %tmp_image, i64 %idxprom72
  %15 = load i8, ptr %arrayidx73, align 1, !tbaa !19
  %add79 = add nsw i32 %add69, %i.2170
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds i8, ptr %tmp_image, i64 %idxprom80
  store i8 %15, ptr %arrayidx81, align 1, !tbaa !19
  %inc83 = add nuw nsw i32 %j.0168, 1
  %16 = load i32, ptr %y_size, align 4, !tbaa !12
  %add48 = add nsw i32 %16, %mul47
  %cmp49 = icmp slt i32 %inc83, %add48
  br i1 %cmp49, label %for.body51, label %for.inc85, !llvm.loop !30

for.inc85:                                        ; preds = %for.body51, %for.cond46.preheader
  %17 = phi i32 [ %10, %for.cond46.preheader ], [ %16, %for.body51 ]
  %inc86 = add nuw nsw i32 %i.2170, 1
  %exitcond172.not = icmp eq i32 %inc86, %border
  br i1 %exitcond172.not, label %for.end87, label %for.cond46.preheader, !llvm.loop !31

for.end87:                                        ; preds = %for.inc85, %for.cond42.preheader.for.end87_crit_edge
  %mul88.pre-phi = phi i32 [ %.pre173, %for.cond42.preheader.for.end87_crit_edge ], [ %mul47, %for.inc85 ]
  %18 = load i32, ptr %x_size, align 4, !tbaa !12
  %add89 = add nsw i32 %18, %mul88.pre-phi
  store i32 %add89, ptr %x_size, align 4, !tbaa !12
  %19 = load i32, ptr %y_size, align 4, !tbaa !12
  %add91 = add nsw i32 %19, %mul88.pre-phi
  store i32 %add91, ptr %y_size, align 4, !tbaa !12
  store ptr %tmp_image, ptr %in, align 8, !tbaa !5
  ret i32 undef
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: noinline nounwind uwtable
define dso_local void @susan_smoothing(i32 noundef %three_by_three, ptr noundef %in, double noundef %0, i32 noundef %x_size, i32 noundef %y_size, ptr nocapture noundef readonly %bp) local_unnamed_addr #3 {
entry:
  %in.addr = alloca ptr, align 8
  %x_size.addr = alloca i32, align 4
  %y_size.addr = alloca i32, align 4
  %dt = fptrunc double %0 to float
  store ptr %in, ptr %in.addr, align 8, !tbaa !5
  store i32 %x_size, ptr %x_size.addr, align 4, !tbaa !12
  store i32 %y_size, ptr %y_size.addr, align 4, !tbaa !12
  %cmp = icmp eq i32 %three_by_three, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv = fpext float %dt to double
  %mul = fmul double %conv, 1.500000e+00
  %conv1 = fptosi double %mul to i32
  %add = add nsw i32 %conv1, 1
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %mask_size.0 = phi i32 [ %add, %if.then ], [ 1, %entry ]
  %cmp2 = fcmp ogt float %dt, 1.500000e+01
  br i1 %cmp2, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  %conv7 = fpext float %dt to double
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.25, double noundef %conv7)
  %puts = tail call i32 @puts(ptr nonnull @str.44)
  %puts411 = tail call i32 @puts(ptr nonnull @str.45)
  tail call void @exit(i32 noundef 0) #20
  unreachable

if.end10:                                         ; preds = %if.end
  %mul11 = shl nsw i32 %mask_size.0, 1
  %add12 = or i32 %mul11, 1
  %cmp13 = icmp sgt i32 %add12, %x_size
  %cmp17 = icmp sgt i32 %add12, %y_size
  %or.cond = or i1 %cmp13, %cmp17
  br i1 %or.cond, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end10
  %call20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.28, i32 noundef %mask_size.0, i32 noundef %x_size, i32 noundef %y_size)
  tail call void @exit(i32 noundef 0) #20
  unreachable

if.end21:                                         ; preds = %if.end10
  %add23 = add nsw i32 %mul11, %x_size
  %add25 = add nsw i32 %mul11, %y_size
  %mul26 = mul nsw i32 %add23, %add25
  %conv27 = sext i32 %mul26 to i64
  %call28 = tail call noalias ptr @malloc(i64 noundef %conv27) #23
  %call29 = call i32 @enlarge(ptr noundef nonnull %in.addr, ptr noundef %call28, ptr noundef nonnull %x_size.addr, ptr noundef nonnull %y_size.addr, i32 noundef %mask_size.0)
  br i1 %cmp, label %if.then32, label %for.cond130.preheader

for.cond130.preheader:                            ; preds = %if.end21
  %1 = load i32, ptr %y_size.addr, align 4, !tbaa !12
  %cmp132419 = icmp sgt i32 %1, 2
  br i1 %cmp132419, label %for.cond135.preheader.preheader, label %if.end257

for.cond135.preheader.preheader:                  ; preds = %for.cond130.preheader
  %.pre = load i32, ptr %x_size.addr, align 4, !tbaa !12
  br label %for.cond135.preheader

if.then32:                                        ; preds = %if.end21
  %2 = load i32, ptr %x_size.addr, align 4, !tbaa !12
  %sub = sub nsw i32 %2, %add12
  %mul35 = mul nsw i32 %add12, %add12
  %conv36 = zext i32 %mul35 to i64
  %call37 = tail call noalias ptr @malloc(i64 noundef %conv36) #23
  %3 = fneg float %dt
  %fneg = fmul float %3, %dt
  %sub39 = sub nsw i32 0, %mask_size.0
  %cmp40.not427 = icmp slt i32 %mask_size.0, 0
  br i1 %cmp40.not427, label %for.cond59.preheader.thread, label %for.cond43.preheader

for.cond43.preheader:                             ; preds = %if.then32, %for.cond43.for.inc56_crit_edge
  %dpt.0430 = phi ptr [ %incdec.ptr, %for.cond43.for.inc56_crit_edge ], [ %call37, %if.then32 ]
  %i.0428 = phi i32 [ %inc57, %for.cond43.for.inc56_crit_edge ], [ %sub39, %if.then32 ]
  %mul47 = mul nsw i32 %i.0428, %i.0428
  br label %for.body46

for.cond59.preheader:                             ; preds = %for.cond43.for.inc56_crit_edge
  %4 = load i32, ptr %y_size.addr, align 4, !tbaa !12
  %sub60457 = sub nsw i32 %4, %mask_size.0
  %cmp61458 = icmp slt i32 %mask_size.0, %sub60457
  br i1 %cmp61458, label %for.cond64.preheader.lr.ph, label %if.end257

for.cond59.preheader.thread:                      ; preds = %if.then32
  %5 = load i32, ptr %y_size.addr, align 4, !tbaa !12
  %sub60457480 = sub nsw i32 %5, %mask_size.0
  %cmp61458481 = icmp slt i32 %mask_size.0, %sub60457480
  br i1 %cmp61458481, label %for.cond64.preheader.us.preheader, label %if.end257

for.cond64.preheader.lr.ph:                       ; preds = %for.cond59.preheader
  %idx.ext73 = sext i32 %mask_size.0 to i64
  %idx.neg = sub nsw i64 0, %idx.ext73
  %idx.ext105 = sext i32 %sub to i64
  br i1 %cmp40.not427, label %for.cond64.preheader.us.preheader, label %for.cond64.preheader.preheader

for.cond64.preheader.preheader:                   ; preds = %for.cond64.preheader.lr.ph
  %.pre476 = load i32, ptr %x_size.addr, align 4, !tbaa !12
  br label %for.cond64.preheader

for.cond64.preheader.us.preheader:                ; preds = %for.cond59.preheader.thread, %for.cond64.preheader.lr.ph
  %6 = phi i32 [ %4, %for.cond64.preheader.lr.ph ], [ %5, %for.cond59.preheader.thread ]
  %.pre478 = load i32, ptr %x_size.addr, align 4, !tbaa !12
  br label %for.cond64.preheader.us

for.cond64.preheader.us:                          ; preds = %for.cond64.preheader.us.preheader, %for.inc126.us
  %7 = phi i32 [ %9, %for.inc126.us ], [ %6, %for.cond64.preheader.us.preheader ]
  %8 = phi i32 [ %10, %for.inc126.us ], [ %.pre478, %for.cond64.preheader.us.preheader ]
  %out.0462.us = phi ptr [ %out.1.lcssa.us, %for.inc126.us ], [ %in, %for.cond64.preheader.us.preheader ]
  %i.1459.us = phi i32 [ %inc127.us, %for.inc126.us ], [ %mask_size.0, %for.cond64.preheader.us.preheader ]
  %sub65450.us = sub nsw i32 %8, %mask_size.0
  %cmp66451.us = icmp slt i32 %mask_size.0, %sub65450.us
  br i1 %cmp66451.us, label %for.body68.us.us, label %for.inc126.us

for.inc126.us.loopexit:                           ; preds = %for.body68.us.us
  %.pre479 = load i32, ptr %y_size.addr, align 4, !tbaa !12
  br label %for.inc126.us

for.inc126.us:                                    ; preds = %for.inc126.us.loopexit, %for.cond64.preheader.us
  %9 = phi i32 [ %7, %for.cond64.preheader.us ], [ %.pre479, %for.inc126.us.loopexit ]
  %10 = phi i32 [ %8, %for.cond64.preheader.us ], [ %14, %for.inc126.us.loopexit ]
  %out.1.lcssa.us = phi ptr [ %out.0462.us, %for.cond64.preheader.us ], [ %out.2.us.us, %for.inc126.us.loopexit ]
  %inc127.us = add nsw i32 %i.1459.us, 1
  %sub60.us = sub nsw i32 %9, %mask_size.0
  %cmp61.us = icmp slt i32 %inc127.us, %sub60.us
  br i1 %cmp61.us, label %for.cond64.preheader.us, label %if.end257, !llvm.loop !32

for.body68.us.us:                                 ; preds = %for.cond64.preheader.us, %for.body68.us.us
  %11 = phi i32 [ %14, %for.body68.us.us ], [ %8, %for.cond64.preheader.us ]
  %out.1454.us.us = phi ptr [ %out.2.us.us, %for.body68.us.us ], [ %out.0462.us, %for.cond64.preheader.us ]
  %j.1452.us.us = phi i32 [ %inc124.us.us, %for.body68.us.us ], [ %mask_size.0, %for.cond64.preheader.us ]
  %12 = load ptr, ptr %in.addr, align 8, !tbaa !5
  %mul75.us.us = mul nsw i32 %11, %i.1459.us
  %add76.us.us = add nsw i32 %mul75.us.us, %j.1452.us.us
  %idxprom.us.us = sext i32 %add76.us.us to i64
  %arrayidx.us.us = getelementptr inbounds i8, ptr %12, i64 %idxprom.us.us
  %13 = load i8, ptr %arrayidx.us.us, align 1, !tbaa !19
  %out.2.us.us = getelementptr inbounds i8, ptr %out.1454.us.us, i64 1
  store i8 %13, ptr %out.1454.us.us, align 1, !tbaa !19
  %inc124.us.us = add nsw i32 %j.1452.us.us, 1
  %14 = load i32, ptr %x_size.addr, align 4, !tbaa !12
  %sub65.us.us = sub nsw i32 %14, %mask_size.0
  %cmp66.us.us = icmp slt i32 %inc124.us.us, %sub65.us.us
  br i1 %cmp66.us.us, label %for.body68.us.us, label %for.inc126.us.loopexit, !llvm.loop !33

for.body46:                                       ; preds = %for.cond43.preheader, %for.body46
  %dpt.1425 = phi ptr [ %dpt.0430, %for.cond43.preheader ], [ %incdec.ptr, %for.body46 ]
  %j.0424 = phi i32 [ %sub39, %for.cond43.preheader ], [ %inc, %for.body46 ]
  %mul48 = mul nsw i32 %j.0424, %j.0424
  %add49 = add nuw nsw i32 %mul48, %mul47
  %conv50 = sitofp i32 %add49 to float
  %div = fdiv float %conv50, %fneg
  %conv51 = fpext float %div to double
  %call52 = tail call double @exp(double noundef %conv51) #21
  %mul53 = fmul double %call52, 1.000000e+02
  %conv54 = fptosi double %mul53 to i32
  %conv55 = trunc i32 %conv54 to i8
  %incdec.ptr = getelementptr inbounds i8, ptr %dpt.1425, i64 1
  store i8 %conv55, ptr %dpt.1425, align 1, !tbaa !19
  %inc = add i32 %j.0424, 1
  %exitcond.not = icmp eq i32 %j.0424, %mask_size.0
  br i1 %exitcond.not, label %for.cond43.for.inc56_crit_edge, label %for.body46, !llvm.loop !34

for.cond43.for.inc56_crit_edge:                   ; preds = %for.body46
  %inc57 = add i32 %i.0428, 1
  %exitcond467.not = icmp eq i32 %i.0428, %mask_size.0
  br i1 %exitcond467.not, label %for.cond59.preheader, label %for.cond43.preheader, !llvm.loop !35

for.cond64.preheader:                             ; preds = %for.cond64.preheader.preheader, %for.inc126
  %15 = phi i32 [ %30, %for.inc126 ], [ %4, %for.cond64.preheader.preheader ]
  %16 = phi i32 [ %31, %for.inc126 ], [ %.pre476, %for.cond64.preheader.preheader ]
  %out.0462 = phi ptr [ %out.1.lcssa, %for.inc126 ], [ %in, %for.cond64.preheader.preheader ]
  %i.1459 = phi i32 [ %inc127, %for.inc126 ], [ %mask_size.0, %for.cond64.preheader.preheader ]
  %sub65450 = sub nsw i32 %16, %mask_size.0
  %cmp66451 = icmp slt i32 %mask_size.0, %sub65450
  br i1 %cmp66451, label %for.body68.lr.ph, label %for.inc126

for.body68.lr.ph:                                 ; preds = %for.cond64.preheader
  %sub69 = sub nsw i32 %i.1459, %mask_size.0
  br label %for.cond86.preheader.preheader

for.cond86.preheader.preheader:                   ; preds = %for.inc123, %for.body68.lr.ph
  %indvars.iv471 = phi i64 [ %idx.ext73, %for.body68.lr.ph ], [ %indvars.iv.next472, %for.inc123 ]
  %17 = phi i32 [ %16, %for.body68.lr.ph ], [ %28, %for.inc123 ]
  %out.1454 = phi ptr [ %out.0462, %for.body68.lr.ph ], [ %out.2, %for.inc123 ]
  %18 = load ptr, ptr %in.addr, align 8, !tbaa !5
  %mul75 = mul nsw i32 %17, %i.1459
  %19 = sext i32 %mul75 to i64
  %20 = add nsw i64 %indvars.iv471, %19
  %arrayidx = getelementptr inbounds i8, ptr %18, i64 %20
  %21 = load i8, ptr %arrayidx, align 1, !tbaa !19
  %conv77 = zext i8 %21 to i32
  %22 = zext i8 %21 to i64
  %add.ptr79 = getelementptr inbounds i8, ptr %bp, i64 %22
  %mul70 = mul nsw i32 %17, %sub69
  %idx.ext = sext i32 %mul70 to i64
  %add.ptr = getelementptr inbounds i8, ptr %18, i64 %idx.neg
  %add.ptr72 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext
  %add.ptr74 = getelementptr inbounds i8, ptr %add.ptr72, i64 %indvars.iv471
  br label %for.cond86.preheader

for.cond86.preheader:                             ; preds = %for.cond86.preheader.preheader, %for.cond86.for.end104_crit_edge
  %total.0446 = phi i32 [ %add101, %for.cond86.for.end104_crit_edge ], [ 0, %for.cond86.preheader.preheader ]
  %dpt.2445 = phi ptr [ %incdec.ptr92, %for.cond86.for.end104_crit_edge ], [ %call37, %for.cond86.preheader.preheader ]
  %ip.0444 = phi ptr [ %add.ptr106, %for.cond86.for.end104_crit_edge ], [ %add.ptr74, %for.cond86.preheader.preheader ]
  %area.0443 = phi i32 [ %add99, %for.cond86.for.end104_crit_edge ], [ 0, %for.cond86.preheader.preheader ]
  %y.0442 = phi i32 [ %inc108, %for.cond86.for.end104_crit_edge ], [ %sub39, %for.cond86.preheader.preheader ]
  br label %for.body89

for.body89:                                       ; preds = %for.cond86.preheader, %for.body89
  %total.1436 = phi i32 [ %total.0446, %for.cond86.preheader ], [ %add101, %for.body89 ]
  %dpt.3435 = phi ptr [ %dpt.2445, %for.cond86.preheader ], [ %incdec.ptr92, %for.body89 ]
  %ip.1434 = phi ptr [ %ip.0444, %for.cond86.preheader ], [ %incdec.ptr90, %for.body89 ]
  %area.1433 = phi i32 [ %area.0443, %for.cond86.preheader ], [ %add99, %for.body89 ]
  %x.0432 = phi i32 [ %sub39, %for.cond86.preheader ], [ %inc103, %for.body89 ]
  %incdec.ptr90 = getelementptr inbounds i8, ptr %ip.1434, i64 1
  %23 = load i8, ptr %ip.1434, align 1, !tbaa !19
  %conv91 = zext i8 %23 to i32
  %incdec.ptr92 = getelementptr inbounds i8, ptr %dpt.3435, i64 1
  %24 = load i8, ptr %dpt.3435, align 1, !tbaa !19
  %conv93 = zext i8 %24 to i32
  %25 = zext i8 %23 to i64
  %idx.neg95 = sub nsw i64 0, %25
  %add.ptr96 = getelementptr inbounds i8, ptr %add.ptr79, i64 %idx.neg95
  %26 = load i8, ptr %add.ptr96, align 1, !tbaa !19
  %conv97 = zext i8 %26 to i32
  %mul98 = mul nuw nsw i32 %conv97, %conv93
  %add99 = add nsw i32 %mul98, %area.1433
  %mul100 = mul nuw nsw i32 %mul98, %conv91
  %add101 = add nsw i32 %mul100, %total.1436
  %inc103 = add i32 %x.0432, 1
  %exitcond469.not = icmp eq i32 %x.0432, %mask_size.0
  br i1 %exitcond469.not, label %for.cond86.for.end104_crit_edge, label %for.body89, !llvm.loop !36

for.cond86.for.end104_crit_edge:                  ; preds = %for.body89
  %add.ptr106 = getelementptr inbounds i8, ptr %incdec.ptr90, i64 %idx.ext105
  %inc108 = add i32 %y.0442, 1
  %exitcond470.not = icmp eq i32 %y.0442, %mask_size.0
  br i1 %exitcond470.not, label %for.cond81.for.end109_crit_edge, label %for.cond86.preheader, !llvm.loop !37

for.cond81.for.end109_crit_edge:                  ; preds = %for.cond86.for.end104_crit_edge
  %sub110 = add nsw i32 %add99, -10000
  %cmp111 = icmp eq i32 %sub110, 0
  br i1 %cmp111, label %if.then113, label %if.else116

if.then113:                                       ; preds = %for.cond81.for.end109_crit_edge
  %27 = trunc i64 %indvars.iv471 to i32
  %call114 = tail call zeroext i8 @median(ptr noundef %18, i32 noundef %i.1459, i32 noundef %27, i32 noundef %17)
  br label %for.inc123

if.else116:                                       ; preds = %for.cond81.for.end109_crit_edge
  %mul117.neg = mul nsw i32 %conv77, -10000
  %sub118 = add i32 %add101, %mul117.neg
  %div119 = sdiv i32 %sub118, %sub110
  %conv120 = trunc i32 %div119 to i8
  br label %for.inc123

for.inc123:                                       ; preds = %if.then113, %if.else116
  %storemerge410 = phi i8 [ %conv120, %if.else116 ], [ %call114, %if.then113 ]
  %out.2 = getelementptr inbounds i8, ptr %out.1454, i64 1
  store i8 %storemerge410, ptr %out.1454, align 1, !tbaa !19
  %indvars.iv.next472 = add nsw i64 %indvars.iv471, 1
  %28 = load i32, ptr %x_size.addr, align 4, !tbaa !12
  %sub65 = sub nsw i32 %28, %mask_size.0
  %29 = sext i32 %sub65 to i64
  %cmp66 = icmp slt i64 %indvars.iv.next472, %29
  br i1 %cmp66, label %for.cond86.preheader.preheader, label %for.inc126.loopexit, !llvm.loop !33

for.inc126.loopexit:                              ; preds = %for.inc123
  %.pre477 = load i32, ptr %y_size.addr, align 4, !tbaa !12
  br label %for.inc126

for.inc126:                                       ; preds = %for.inc126.loopexit, %for.cond64.preheader
  %30 = phi i32 [ %15, %for.cond64.preheader ], [ %.pre477, %for.inc126.loopexit ]
  %31 = phi i32 [ %16, %for.cond64.preheader ], [ %28, %for.inc126.loopexit ]
  %out.1.lcssa = phi ptr [ %out.0462, %for.cond64.preheader ], [ %out.2, %for.inc126.loopexit ]
  %inc127 = add nsw i32 %i.1459, 1
  %sub60 = sub nsw i32 %30, %mask_size.0
  %cmp61 = icmp slt i32 %inc127, %sub60
  br i1 %cmp61, label %for.cond64.preheader, label %if.end257, !llvm.loop !32

for.cond135.preheader:                            ; preds = %for.cond135.preheader.preheader, %for.inc254
  %32 = phi i32 [ %68, %for.inc254 ], [ %1, %for.cond135.preheader.preheader ]
  %33 = phi i32 [ %69, %for.inc254 ], [ %.pre, %for.cond135.preheader.preheader ]
  %out.3422 = phi ptr [ %out.4.lcssa, %for.inc254 ], [ %in, %for.cond135.preheader.preheader ]
  %i.2420 = phi i32 [ %inc255, %for.inc254 ], [ 1, %for.cond135.preheader.preheader ]
  %cmp137414 = icmp sgt i32 %33, 2
  br i1 %cmp137414, label %for.body139.lr.ph, label %for.inc254

for.body139.lr.ph:                                ; preds = %for.cond135.preheader
  %sub140 = add nsw i32 %i.2420, -1
  br label %for.body139

for.body139:                                      ; preds = %for.body139.lr.ph, %for.inc251
  %indvars.iv = phi i64 [ 1, %for.body139.lr.ph ], [ %indvars.iv.next, %for.inc251 ]
  %34 = phi i32 [ %33, %for.body139.lr.ph ], [ %66, %for.inc251 ]
  %out.4417 = phi ptr [ %out.3422, %for.body139.lr.ph ], [ %out.5, %for.inc251 ]
  %35 = load ptr, ptr %in.addr, align 8, !tbaa !5
  %mul141 = mul nsw i32 %34, %sub140
  %idx.ext142 = sext i32 %mul141 to i64
  %add.ptr143 = getelementptr inbounds i8, ptr %35, i64 -1
  %add.ptr145 = getelementptr inbounds i8, ptr %add.ptr143, i64 %idx.ext142
  %add.ptr146 = getelementptr inbounds i8, ptr %add.ptr145, i64 %indvars.iv
  %mul147 = mul nsw i32 %34, %i.2420
  %36 = trunc i64 %indvars.iv to i32
  %add148 = add nsw i32 %mul147, %36
  %idxprom149 = sext i32 %add148 to i64
  %arrayidx150 = getelementptr inbounds i8, ptr %35, i64 %idxprom149
  %37 = load i8, ptr %arrayidx150, align 1, !tbaa !19
  %38 = zext i8 %37 to i64
  %add.ptr153 = getelementptr inbounds i8, ptr %bp, i64 %38
  %incdec.ptr154 = getelementptr inbounds i8, ptr %add.ptr146, i64 1
  %39 = load i8, ptr %add.ptr146, align 1, !tbaa !19
  %40 = zext i8 %39 to i64
  %idx.neg157 = sub nsw i64 0, %40
  %add.ptr158 = getelementptr inbounds i8, ptr %add.ptr153, i64 %idx.neg157
  %41 = load i8, ptr %add.ptr158, align 1, !tbaa !19
  %conv159 = zext i8 %41 to i32
  %incdec.ptr163 = getelementptr inbounds i8, ptr %incdec.ptr154, i64 1
  %42 = load i8, ptr %incdec.ptr154, align 1, !tbaa !19
  %43 = zext i8 %42 to i64
  %idx.neg166 = sub nsw i64 0, %43
  %add.ptr167 = getelementptr inbounds i8, ptr %add.ptr153, i64 %idx.neg166
  %44 = load i8, ptr %add.ptr167, align 1, !tbaa !19
  %conv168 = zext i8 %44 to i32
  %45 = load i8, ptr %incdec.ptr163, align 1, !tbaa !19
  %46 = zext i8 %45 to i64
  %idx.neg174 = sub nsw i64 0, %46
  %add.ptr175 = getelementptr inbounds i8, ptr %add.ptr153, i64 %idx.neg174
  %47 = load i8, ptr %add.ptr175, align 1, !tbaa !19
  %conv176 = zext i8 %47 to i32
  %sub180 = add nsw i32 %34, -2
  %idx.ext181 = sext i32 %sub180 to i64
  %add.ptr182 = getelementptr inbounds i8, ptr %incdec.ptr163, i64 %idx.ext181
  %incdec.ptr183 = getelementptr inbounds i8, ptr %add.ptr182, i64 1
  %48 = load i8, ptr %add.ptr182, align 1, !tbaa !19
  %49 = zext i8 %48 to i64
  %idx.neg186 = sub nsw i64 0, %49
  %add.ptr187 = getelementptr inbounds i8, ptr %add.ptr153, i64 %idx.neg186
  %50 = load i8, ptr %add.ptr187, align 1, !tbaa !19
  %conv188 = zext i8 %50 to i32
  %incdec.ptr192 = getelementptr inbounds i8, ptr %incdec.ptr183, i64 1
  %51 = load i8, ptr %incdec.ptr183, align 1, !tbaa !19
  %52 = zext i8 %51 to i64
  %idx.neg195 = sub nsw i64 0, %52
  %add.ptr196 = getelementptr inbounds i8, ptr %add.ptr153, i64 %idx.neg195
  %53 = load i8, ptr %add.ptr196, align 1, !tbaa !19
  %conv197 = zext i8 %53 to i32
  %54 = load i8, ptr %incdec.ptr192, align 1, !tbaa !19
  %55 = zext i8 %54 to i64
  %idx.neg203 = sub nsw i64 0, %55
  %add.ptr204 = getelementptr inbounds i8, ptr %add.ptr153, i64 %idx.neg203
  %56 = load i8, ptr %add.ptr204, align 1, !tbaa !19
  %conv205 = zext i8 %56 to i32
  %add.ptr211 = getelementptr inbounds i8, ptr %incdec.ptr192, i64 %idx.ext181
  %incdec.ptr212 = getelementptr inbounds i8, ptr %add.ptr211, i64 1
  %57 = load i8, ptr %add.ptr211, align 1, !tbaa !19
  %58 = zext i8 %57 to i64
  %idx.neg215 = sub nsw i64 0, %58
  %add.ptr216 = getelementptr inbounds i8, ptr %add.ptr153, i64 %idx.neg215
  %59 = load i8, ptr %add.ptr216, align 1, !tbaa !19
  %conv217 = zext i8 %59 to i32
  %incdec.ptr221 = getelementptr inbounds i8, ptr %incdec.ptr212, i64 1
  %60 = load i8, ptr %incdec.ptr212, align 1, !tbaa !19
  %61 = zext i8 %60 to i64
  %idx.neg224 = sub nsw i64 0, %61
  %add.ptr225 = getelementptr inbounds i8, ptr %add.ptr153, i64 %idx.neg224
  %62 = load i8, ptr %add.ptr225, align 1, !tbaa !19
  %conv226 = zext i8 %62 to i32
  %63 = load i8, ptr %incdec.ptr221, align 1, !tbaa !19
  %64 = zext i8 %63 to i64
  %idx.neg232 = sub nsw i64 0, %64
  %add.ptr233 = getelementptr inbounds i8, ptr %add.ptr153, i64 %idx.neg232
  %65 = load i8, ptr %add.ptr233, align 1, !tbaa !19
  %conv234 = zext i8 %65 to i32
  %add169 = add nsw i32 %conv159, -100
  %add177 = add nsw i32 %add169, %conv168
  %add189 = add nsw i32 %add177, %conv176
  %add198 = add nsw i32 %add189, %conv188
  %add206 = add nsw i32 %add198, %conv197
  %add218 = add nsw i32 %add206, %conv205
  %add227 = add nsw i32 %add218, %conv217
  %add235 = add nsw i32 %add227, %conv226
  %sub238 = add nsw i32 %add235, %conv234
  %cmp239 = icmp eq i32 %sub238, 0
  br i1 %cmp239, label %if.then241, label %if.else244

if.then241:                                       ; preds = %for.body139
  %call242 = tail call zeroext i8 @median(ptr noundef nonnull %35, i32 noundef %i.2420, i32 noundef %36, i32 noundef %34)
  br label %for.inc251

if.else244:                                       ; preds = %for.body139
  %conv155 = zext i8 %39 to i32
  %mul161 = mul nuw nsw i32 %conv159, %conv155
  %conv164 = zext i8 %42 to i32
  %mul170 = mul nuw nsw i32 %conv168, %conv164
  %conv172 = zext i8 %45 to i32
  %mul178 = mul nuw nsw i32 %conv176, %conv172
  %conv184 = zext i8 %48 to i32
  %mul190 = mul nuw nsw i32 %conv188, %conv184
  %conv193 = zext i8 %51 to i32
  %mul199 = mul nuw nsw i32 %conv197, %conv193
  %conv201 = zext i8 %54 to i32
  %mul207 = mul nuw nsw i32 %conv205, %conv201
  %conv213 = zext i8 %57 to i32
  %mul219 = mul nuw nsw i32 %conv217, %conv213
  %conv222 = zext i8 %60 to i32
  %mul228 = mul nuw nsw i32 %conv226, %conv222
  %conv230 = zext i8 %63 to i32
  %mul236 = mul nuw nsw i32 %conv234, %conv230
  %conv151 = zext i8 %37 to i32
  %mul245.neg = mul nsw i32 %conv151, -100
  %add171 = add nsw i32 %mul161, %mul245.neg
  %add179 = add nsw i32 %add171, %mul170
  %add191 = add nsw i32 %add179, %mul178
  %add200 = add nsw i32 %add191, %mul190
  %add208 = add nsw i32 %add200, %mul199
  %add220 = add nsw i32 %add208, %mul207
  %add229 = add nsw i32 %add220, %mul219
  %add237 = add nsw i32 %add229, %mul228
  %sub246 = add nsw i32 %add237, %mul236
  %div247 = sdiv i32 %sub246, %sub238
  %conv248 = trunc i32 %div247 to i8
  br label %for.inc251

for.inc251:                                       ; preds = %if.then241, %if.else244
  %storemerge = phi i8 [ %conv248, %if.else244 ], [ %call242, %if.then241 ]
  %out.5 = getelementptr inbounds i8, ptr %out.4417, i64 1
  store i8 %storemerge, ptr %out.4417, align 1, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %66 = load i32, ptr %x_size.addr, align 4, !tbaa !12
  %sub136 = add nsw i32 %66, -1
  %67 = sext i32 %sub136 to i64
  %cmp137 = icmp slt i64 %indvars.iv.next, %67
  br i1 %cmp137, label %for.body139, label %for.inc254.loopexit, !llvm.loop !38

for.inc254.loopexit:                              ; preds = %for.inc251
  %.pre475 = load i32, ptr %y_size.addr, align 4, !tbaa !12
  br label %for.inc254

for.inc254:                                       ; preds = %for.inc254.loopexit, %for.cond135.preheader
  %68 = phi i32 [ %32, %for.cond135.preheader ], [ %.pre475, %for.inc254.loopexit ]
  %69 = phi i32 [ %33, %for.cond135.preheader ], [ %66, %for.inc254.loopexit ]
  %out.4.lcssa = phi ptr [ %out.3422, %for.cond135.preheader ], [ %out.5, %for.inc254.loopexit ]
  %inc255 = add nuw nsw i32 %i.2420, 1
  %sub131 = add nsw i32 %68, -1
  %cmp132 = icmp slt i32 %inc255, %sub131
  br i1 %cmp132, label %for.cond135.preheader, label %if.end257, !llvm.loop !39

if.end257:                                        ; preds = %for.inc254, %for.inc126, %for.inc126.us, %for.cond59.preheader.thread, %for.cond130.preheader, %for.cond59.preheader
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @edge_draw(ptr nocapture noundef writeonly %in, ptr noundef %mid, i32 noundef %x_size, i32 noundef %y_size, i32 noundef %drawing_mode) local_unnamed_addr #13 {
entry:
  %cmp = icmp eq i32 %drawing_mode, 0
  %mul = mul i32 %y_size, %x_size
  br i1 %cmp, label %for.cond.preheader, label %if.end18

for.cond.preheader:                               ; preds = %entry
  %cmp164 = icmp sgt i32 %mul, 0
  br i1 %cmp164, label %for.body.lr.ph, label %for.end36

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub.ptr.rhs.cast = ptrtoint ptr %mid to i64
  %idx.ext = sext i32 %x_size to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %sub = add nsw i32 %x_size, -2
  %idx.ext8 = sext i32 %sub to i64
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 %idx.neg
  %add.ptr5 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %midp.066 = phi ptr [ %mid, %for.body.lr.ph ], [ %incdec.ptr17, %if.end ]
  %i.065 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end ]
  %0 = load i8, ptr %midp.066, align 1, !tbaa !19
  %cmp2 = icmp ult i8 %0, 8
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %for.body
  %sub.ptr.lhs.cast = ptrtoint ptr %midp.066 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr6 = getelementptr inbounds i8, ptr %add.ptr5, i64 %sub.ptr.sub
  %incdec.ptr = getelementptr inbounds i8, ptr %add.ptr6, i64 1
  store i8 -1, ptr %add.ptr6, align 1, !tbaa !19
  %incdec.ptr7 = getelementptr inbounds i8, ptr %incdec.ptr, i64 1
  store i8 -1, ptr %incdec.ptr, align 1, !tbaa !19
  store i8 -1, ptr %incdec.ptr7, align 1, !tbaa !19
  %add.ptr9 = getelementptr inbounds i8, ptr %incdec.ptr7, i64 %idx.ext8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %add.ptr9, i64 1
  store i8 -1, ptr %add.ptr9, align 1, !tbaa !19
  %incdec.ptr11 = getelementptr inbounds i8, ptr %incdec.ptr10, i64 1
  store i8 -1, ptr %incdec.ptr11, align 1, !tbaa !19
  %add.ptr14 = getelementptr inbounds i8, ptr %incdec.ptr11, i64 %idx.ext8
  %incdec.ptr15 = getelementptr inbounds i8, ptr %add.ptr14, i64 1
  store i8 -1, ptr %add.ptr14, align 1, !tbaa !19
  %incdec.ptr16 = getelementptr inbounds i8, ptr %incdec.ptr15, i64 1
  store i8 -1, ptr %incdec.ptr15, align 1, !tbaa !19
  store i8 -1, ptr %incdec.ptr16, align 1, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.then4, %for.body
  %incdec.ptr17 = getelementptr inbounds i8, ptr %midp.066, i64 1
  %inc = add nuw nsw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, %mul
  br i1 %exitcond.not, label %if.end18, label %for.body, !llvm.loop !40

if.end18:                                         ; preds = %if.end, %entry
  %cmp2167 = icmp sgt i32 %mul, 0
  br i1 %cmp2167, label %iter.check, label %for.end36

iter.check:                                       ; preds = %if.end18
  %sub.ptr.rhs.cast29 = ptrtoint ptr %mid to i64
  %1 = add i32 %mul, -1
  %2 = zext i32 %1 to i64
  %3 = add nuw nsw i64 %2, 1
  %min.iters.check = icmp ult i32 %1, 7
  br i1 %min.iters.check, label %for.body23.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %4 = add i32 %mul, -1
  %5 = zext i32 %4 to i64
  %6 = add nuw nsw i64 %5, 1
  %uglygep = getelementptr i8, ptr %in, i64 %6
  %uglygep73 = getelementptr i8, ptr %mid, i64 %6
  %bound0 = icmp ugt ptr %uglygep73, %in
  %bound1 = icmp ugt ptr %uglygep, %mid
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body23.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check74 = icmp ult i32 %1, 15
  br i1 %min.iters.check74, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %3, 8589934576
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue119, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue119 ]
  %next.gep = getelementptr i8, ptr %mid, i64 %index
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !19, !alias.scope !41
  %7 = icmp ult <16 x i8> %wide.load, <i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8>
  %8 = extractelement <16 x i1> %7, i64 0
  br i1 %8, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %9 = getelementptr inbounds i8, ptr %in, i64 %index
  store i8 0, ptr %9, align 1, !tbaa !19, !alias.scope !44, !noalias !41
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %10 = extractelement <16 x i1> %7, i64 1
  br i1 %10, label %pred.store.if90, label %pred.store.continue91

pred.store.if90:                                  ; preds = %pred.store.continue
  %11 = or i64 %index, 1
  %12 = getelementptr inbounds i8, ptr %in, i64 %11
  store i8 0, ptr %12, align 1, !tbaa !19, !alias.scope !44, !noalias !41
  br label %pred.store.continue91

pred.store.continue91:                            ; preds = %pred.store.if90, %pred.store.continue
  %13 = extractelement <16 x i1> %7, i64 2
  br i1 %13, label %pred.store.if92, label %pred.store.continue93

pred.store.if92:                                  ; preds = %pred.store.continue91
  %14 = or i64 %index, 2
  %15 = getelementptr inbounds i8, ptr %in, i64 %14
  store i8 0, ptr %15, align 1, !tbaa !19, !alias.scope !44, !noalias !41
  br label %pred.store.continue93

pred.store.continue93:                            ; preds = %pred.store.if92, %pred.store.continue91
  %16 = extractelement <16 x i1> %7, i64 3
  br i1 %16, label %pred.store.if94, label %pred.store.continue95

pred.store.if94:                                  ; preds = %pred.store.continue93
  %17 = or i64 %index, 3
  %18 = getelementptr inbounds i8, ptr %in, i64 %17
  store i8 0, ptr %18, align 1, !tbaa !19, !alias.scope !44, !noalias !41
  br label %pred.store.continue95

pred.store.continue95:                            ; preds = %pred.store.if94, %pred.store.continue93
  %19 = extractelement <16 x i1> %7, i64 4
  br i1 %19, label %pred.store.if96, label %pred.store.continue97

pred.store.if96:                                  ; preds = %pred.store.continue95
  %20 = or i64 %index, 4
  %21 = getelementptr inbounds i8, ptr %in, i64 %20
  store i8 0, ptr %21, align 1, !tbaa !19, !alias.scope !44, !noalias !41
  br label %pred.store.continue97

pred.store.continue97:                            ; preds = %pred.store.if96, %pred.store.continue95
  %22 = extractelement <16 x i1> %7, i64 5
  br i1 %22, label %pred.store.if98, label %pred.store.continue99

pred.store.if98:                                  ; preds = %pred.store.continue97
  %23 = or i64 %index, 5
  %24 = getelementptr inbounds i8, ptr %in, i64 %23
  store i8 0, ptr %24, align 1, !tbaa !19, !alias.scope !44, !noalias !41
  br label %pred.store.continue99

pred.store.continue99:                            ; preds = %pred.store.if98, %pred.store.continue97
  %25 = extractelement <16 x i1> %7, i64 6
  br i1 %25, label %pred.store.if100, label %pred.store.continue101

pred.store.if100:                                 ; preds = %pred.store.continue99
  %26 = or i64 %index, 6
  %27 = getelementptr inbounds i8, ptr %in, i64 %26
  store i8 0, ptr %27, align 1, !tbaa !19, !alias.scope !44, !noalias !41
  br label %pred.store.continue101

pred.store.continue101:                           ; preds = %pred.store.if100, %pred.store.continue99
  %28 = extractelement <16 x i1> %7, i64 7
  br i1 %28, label %pred.store.if102, label %pred.store.continue103

pred.store.if102:                                 ; preds = %pred.store.continue101
  %29 = or i64 %index, 7
  %30 = getelementptr inbounds i8, ptr %in, i64 %29
  store i8 0, ptr %30, align 1, !tbaa !19, !alias.scope !44, !noalias !41
  br label %pred.store.continue103

pred.store.continue103:                           ; preds = %pred.store.if102, %pred.store.continue101
  %31 = extractelement <16 x i1> %7, i64 8
  br i1 %31, label %pred.store.if104, label %pred.store.continue105

pred.store.if104:                                 ; preds = %pred.store.continue103
  %32 = or i64 %index, 8
  %33 = getelementptr inbounds i8, ptr %in, i64 %32
  store i8 0, ptr %33, align 1, !tbaa !19, !alias.scope !44, !noalias !41
  br label %pred.store.continue105

pred.store.continue105:                           ; preds = %pred.store.if104, %pred.store.continue103
  %34 = extractelement <16 x i1> %7, i64 9
  br i1 %34, label %pred.store.if106, label %pred.store.continue107

pred.store.if106:                                 ; preds = %pred.store.continue105
  %35 = or i64 %index, 9
  %36 = getelementptr inbounds i8, ptr %in, i64 %35
  store i8 0, ptr %36, align 1, !tbaa !19, !alias.scope !44, !noalias !41
  br label %pred.store.continue107

pred.store.continue107:                           ; preds = %pred.store.if106, %pred.store.continue105
  %37 = extractelement <16 x i1> %7, i64 10
  br i1 %37, label %pred.store.if108, label %pred.store.continue109

pred.store.if108:                                 ; preds = %pred.store.continue107
  %38 = or i64 %index, 10
  %39 = getelementptr inbounds i8, ptr %in, i64 %38
  store i8 0, ptr %39, align 1, !tbaa !19, !alias.scope !44, !noalias !41
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.if108, %pred.store.continue107
  %40 = extractelement <16 x i1> %7, i64 11
  br i1 %40, label %pred.store.if110, label %pred.store.continue111

pred.store.if110:                                 ; preds = %pred.store.continue109
  %41 = or i64 %index, 11
  %42 = getelementptr inbounds i8, ptr %in, i64 %41
  store i8 0, ptr %42, align 1, !tbaa !19, !alias.scope !44, !noalias !41
  br label %pred.store.continue111

pred.store.continue111:                           ; preds = %pred.store.if110, %pred.store.continue109
  %43 = extractelement <16 x i1> %7, i64 12
  br i1 %43, label %pred.store.if112, label %pred.store.continue113

pred.store.if112:                                 ; preds = %pred.store.continue111
  %44 = or i64 %index, 12
  %45 = getelementptr inbounds i8, ptr %in, i64 %44
  store i8 0, ptr %45, align 1, !tbaa !19, !alias.scope !44, !noalias !41
  br label %pred.store.continue113

pred.store.continue113:                           ; preds = %pred.store.if112, %pred.store.continue111
  %46 = extractelement <16 x i1> %7, i64 13
  br i1 %46, label %pred.store.if114, label %pred.store.continue115

pred.store.if114:                                 ; preds = %pred.store.continue113
  %47 = or i64 %index, 13
  %48 = getelementptr inbounds i8, ptr %in, i64 %47
  store i8 0, ptr %48, align 1, !tbaa !19, !alias.scope !44, !noalias !41
  br label %pred.store.continue115

pred.store.continue115:                           ; preds = %pred.store.if114, %pred.store.continue113
  %49 = extractelement <16 x i1> %7, i64 14
  br i1 %49, label %pred.store.if116, label %pred.store.continue117

pred.store.if116:                                 ; preds = %pred.store.continue115
  %50 = or i64 %index, 14
  %51 = getelementptr inbounds i8, ptr %in, i64 %50
  store i8 0, ptr %51, align 1, !tbaa !19, !alias.scope !44, !noalias !41
  br label %pred.store.continue117

pred.store.continue117:                           ; preds = %pred.store.if116, %pred.store.continue115
  %52 = extractelement <16 x i1> %7, i64 15
  br i1 %52, label %pred.store.if118, label %pred.store.continue119

pred.store.if118:                                 ; preds = %pred.store.continue117
  %53 = or i64 %index, 15
  %54 = getelementptr inbounds i8, ptr %in, i64 %53
  store i8 0, ptr %54, align 1, !tbaa !19, !alias.scope !44, !noalias !41
  br label %pred.store.continue119

pred.store.continue119:                           ; preds = %pred.store.if118, %pred.store.continue117
  %index.next = add nuw i64 %index, 16
  %55 = icmp eq i64 %index.next, %n.vec
  br i1 %55, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %pred.store.continue119
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %for.end36, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end125 = trunc i64 %n.vec to i32
  %ind.end122 = getelementptr i8, ptr %mid, i64 %n.vec
  %n.vec.remaining = and i64 %3, 8
  %min.epilog.iters.check.not.not = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check.not.not, label %for.body23.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec121 = and i64 %3, 8589934584
  %ind.end = getelementptr i8, ptr %mid, i64 %n.vec121
  %ind.end124 = trunc i64 %n.vec121 to i32
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue152, %vec.epilog.ph
  %index127 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next153, %pred.store.continue152 ]
  %next.gep128 = getelementptr i8, ptr %mid, i64 %index127
  %wide.load136 = load <8 x i8>, ptr %next.gep128, align 1, !tbaa !19
  %56 = icmp ult <8 x i8> %wide.load136, <i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8>
  %57 = extractelement <8 x i1> %56, i64 0
  br i1 %57, label %pred.store.if137, label %pred.store.continue138

pred.store.if137:                                 ; preds = %vec.epilog.vector.body
  %58 = getelementptr inbounds i8, ptr %in, i64 %index127
  store i8 0, ptr %58, align 1, !tbaa !19
  br label %pred.store.continue138

pred.store.continue138:                           ; preds = %pred.store.if137, %vec.epilog.vector.body
  %59 = extractelement <8 x i1> %56, i64 1
  br i1 %59, label %pred.store.if139, label %pred.store.continue140

pred.store.if139:                                 ; preds = %pred.store.continue138
  %60 = or i64 %index127, 1
  %61 = getelementptr inbounds i8, ptr %in, i64 %60
  store i8 0, ptr %61, align 1, !tbaa !19
  br label %pred.store.continue140

pred.store.continue140:                           ; preds = %pred.store.if139, %pred.store.continue138
  %62 = extractelement <8 x i1> %56, i64 2
  br i1 %62, label %pred.store.if141, label %pred.store.continue142

pred.store.if141:                                 ; preds = %pred.store.continue140
  %63 = or i64 %index127, 2
  %64 = getelementptr inbounds i8, ptr %in, i64 %63
  store i8 0, ptr %64, align 1, !tbaa !19
  br label %pred.store.continue142

pred.store.continue142:                           ; preds = %pred.store.if141, %pred.store.continue140
  %65 = extractelement <8 x i1> %56, i64 3
  br i1 %65, label %pred.store.if143, label %pred.store.continue144

pred.store.if143:                                 ; preds = %pred.store.continue142
  %66 = or i64 %index127, 3
  %67 = getelementptr inbounds i8, ptr %in, i64 %66
  store i8 0, ptr %67, align 1, !tbaa !19
  br label %pred.store.continue144

pred.store.continue144:                           ; preds = %pred.store.if143, %pred.store.continue142
  %68 = extractelement <8 x i1> %56, i64 4
  br i1 %68, label %pred.store.if145, label %pred.store.continue146

pred.store.if145:                                 ; preds = %pred.store.continue144
  %69 = or i64 %index127, 4
  %70 = getelementptr inbounds i8, ptr %in, i64 %69
  store i8 0, ptr %70, align 1, !tbaa !19
  br label %pred.store.continue146

pred.store.continue146:                           ; preds = %pred.store.if145, %pred.store.continue144
  %71 = extractelement <8 x i1> %56, i64 5
  br i1 %71, label %pred.store.if147, label %pred.store.continue148

pred.store.if147:                                 ; preds = %pred.store.continue146
  %72 = or i64 %index127, 5
  %73 = getelementptr inbounds i8, ptr %in, i64 %72
  store i8 0, ptr %73, align 1, !tbaa !19
  br label %pred.store.continue148

pred.store.continue148:                           ; preds = %pred.store.if147, %pred.store.continue146
  %74 = extractelement <8 x i1> %56, i64 6
  br i1 %74, label %pred.store.if149, label %pred.store.continue150

pred.store.if149:                                 ; preds = %pred.store.continue148
  %75 = or i64 %index127, 6
  %76 = getelementptr inbounds i8, ptr %in, i64 %75
  store i8 0, ptr %76, align 1, !tbaa !19
  br label %pred.store.continue150

pred.store.continue150:                           ; preds = %pred.store.if149, %pred.store.continue148
  %77 = extractelement <8 x i1> %56, i64 7
  br i1 %77, label %pred.store.if151, label %pred.store.continue152

pred.store.if151:                                 ; preds = %pred.store.continue150
  %78 = or i64 %index127, 7
  %79 = getelementptr inbounds i8, ptr %in, i64 %78
  store i8 0, ptr %79, align 1, !tbaa !19
  br label %pred.store.continue152

pred.store.continue152:                           ; preds = %pred.store.if151, %pred.store.continue150
  %index.next153 = add nuw i64 %index127, 8
  %80 = icmp eq i64 %index.next153, %n.vec121
  br i1 %80, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !47

vec.epilog.middle.block:                          ; preds = %pred.store.continue152
  %cmp.n126 = icmp eq i64 %3, %n.vec121
  br i1 %cmp.n126, label %for.end36, label %for.body23.preheader

for.body23.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %midp.169.ph = phi ptr [ %mid, %iter.check ], [ %mid, %vector.memcheck ], [ %ind.end122, %vec.epilog.iter.check ], [ %ind.end, %vec.epilog.middle.block ]
  %i.168.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %ind.end125, %vec.epilog.iter.check ], [ %ind.end124, %vec.epilog.middle.block ]
  br label %for.body23

for.body23:                                       ; preds = %for.body23.preheader, %if.end32
  %midp.169 = phi ptr [ %incdec.ptr33, %if.end32 ], [ %midp.169.ph, %for.body23.preheader ]
  %i.168 = phi i32 [ %inc35, %if.end32 ], [ %i.168.ph, %for.body23.preheader ]
  %81 = load i8, ptr %midp.169, align 1, !tbaa !19
  %cmp25 = icmp ult i8 %81, 8
  br i1 %cmp25, label %if.then27, label %if.end32

if.then27:                                        ; preds = %for.body23
  %sub.ptr.lhs.cast28 = ptrtoint ptr %midp.169 to i64
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  %add.ptr31 = getelementptr inbounds i8, ptr %in, i64 %sub.ptr.sub30
  store i8 0, ptr %add.ptr31, align 1, !tbaa !19
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %for.body23
  %incdec.ptr33 = getelementptr inbounds i8, ptr %midp.169, i64 1
  %inc35 = add nuw nsw i32 %i.168, 1
  %exitcond70.not = icmp eq i32 %inc35, %mul
  br i1 %exitcond70.not, label %for.end36, label %for.body23, !llvm.loop !49

for.end36:                                        ; preds = %if.end32, %middle.block, %vec.epilog.middle.block, %for.cond.preheader, %if.end18
  ret i32 undef
}

; Function Attrs: argmemonly nofree noinline nosync nounwind uwtable
define dso_local i32 @susan_thin(ptr nocapture noundef readonly %r, ptr noundef %mid, i32 noundef %x_size, i32 noundef %y_size) local_unnamed_addr #14 {
entry:
  %l = alloca [9 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %l) #21
  %sub = add nsw i32 %y_size, -4
  %cmp1240 = icmp sgt i32 %y_size, 8
  br i1 %cmp1240, label %for.cond1.preheader.lr.ph, label %for.end828

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %sub2 = add nsw i32 %x_size, -4
  %cmp31233 = icmp sgt i32 %x_size, 8
  %idx.ext29 = sext i32 %x_size to i64
  %arrayidx97 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 1
  %arrayidx104 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 2
  %arrayidx110 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 3
  %arrayidx111 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 4
  %arrayidx117 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 5
  %arrayidx124 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 6
  %arrayidx130 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 7
  %arrayidx137 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 8
  br i1 %cmp31233, label %for.cond1.preheader.us.preheader, label %for.end828

for.cond1.preheader.us.preheader:                 ; preds = %for.cond1.preheader.lr.ph
  %add.ptr.us = getelementptr inbounds i8, ptr %mid, i64 -1
  br label %for.body4.us

for.body4.us:                                     ; preds = %for.body4.us.backedge, %for.cond1.preheader.us.preheader
  %j.01237.us = phi i32 [ 4, %for.cond1.preheader.us.preheader ], [ %j.01237.us.be, %for.body4.us.backedge ]
  %i.11236.us = phi i32 [ 4, %for.cond1.preheader.us.preheader ], [ %i.11236.us.be, %for.body4.us.backedge ]
  %b.11235.us = phi i32 [ undef, %for.cond1.preheader.us.preheader ], [ %b.6.us, %for.body4.us.backedge ]
  %a.11234.us = phi i32 [ undef, %for.cond1.preheader.us.preheader ], [ %a.6.us, %for.body4.us.backedge ]
  %mul.us = mul nsw i32 %i.11236.us, %x_size
  %add.us = add nsw i32 %mul.us, %j.01237.us
  %idxprom.us = sext i32 %add.us to i64
  %arrayidx.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom.us
  %0 = load i8, ptr %arrayidx.us, align 1, !tbaa !19
  %cmp5.us = icmp ult i8 %0, 8
  br i1 %cmp5.us, label %if.then.us, label %for.inc823.us

if.then.us:                                       ; preds = %for.body4.us
  %arrayidx10.us = getelementptr inbounds i32, ptr %r, i64 %idxprom.us
  %1 = load i32, ptr %arrayidx10.us, align 4, !tbaa !12
  %sub11.us = add i32 %i.11236.us, -1
  %mul12.us = mul nsw i32 %sub11.us, %x_size
  %idx.ext.us = sext i32 %mul12.us to i64
  %idx.ext13.us = sext i32 %j.01237.us to i64
  %add.ptr14.us = getelementptr inbounds i8, ptr %add.ptr.us, i64 %idx.ext.us
  %add.ptr15.us = getelementptr inbounds i8, ptr %add.ptr14.us, i64 %idx.ext13.us
  %2 = load i8, ptr %add.ptr15.us, align 1, !tbaa !19
  %cmp17.us = icmp ult i8 %2, 8
  %conv18.us = zext i1 %cmp17.us to i32
  %add.ptr19.us = getelementptr inbounds i8, ptr %add.ptr15.us, i64 1
  %3 = load i8, ptr %add.ptr19.us, align 1, !tbaa !19
  %cmp21.us = icmp ult i8 %3, 8
  %conv22.us = zext i1 %cmp21.us to i32
  %add23.us = add nuw nsw i32 %conv22.us, %conv18.us
  %add.ptr24.us = getelementptr inbounds i8, ptr %add.ptr15.us, i64 2
  %4 = load i8, ptr %add.ptr24.us, align 1, !tbaa !19
  %cmp26.us = icmp ult i8 %4, 8
  %conv27.us = zext i1 %cmp26.us to i32
  %add28.us = add nuw nsw i32 %add23.us, %conv27.us
  %add.ptr30.us = getelementptr inbounds i8, ptr %add.ptr15.us, i64 %idx.ext29
  %5 = load i8, ptr %add.ptr30.us, align 1, !tbaa !19
  %cmp32.us = icmp ult i8 %5, 8
  %conv33.us = zext i1 %cmp32.us to i32
  %add34.us = add nuw nsw i32 %add28.us, %conv33.us
  %add.ptr37.us = getelementptr inbounds i8, ptr %add.ptr30.us, i64 2
  %6 = load i8, ptr %add.ptr37.us, align 1, !tbaa !19
  %cmp39.us = icmp ult i8 %6, 8
  %conv40.us = zext i1 %cmp39.us to i32
  %add41.us = add nuw nsw i32 %add34.us, %conv40.us
  %add.ptr45.us = getelementptr inbounds i8, ptr %add.ptr30.us, i64 %idx.ext29
  %7 = load i8, ptr %add.ptr45.us, align 1, !tbaa !19
  %cmp47.us = icmp ult i8 %7, 8
  %conv48.us = zext i1 %cmp47.us to i32
  %add49.us = add nuw nsw i32 %add41.us, %conv48.us
  %add.ptr54.us = getelementptr inbounds i8, ptr %add.ptr45.us, i64 1
  %8 = load i8, ptr %add.ptr54.us, align 1, !tbaa !19
  %cmp56.us = icmp ult i8 %8, 8
  %conv57.us = zext i1 %cmp56.us to i32
  %add58.us = add nuw nsw i32 %add49.us, %conv57.us
  %add.ptr63.us = getelementptr inbounds i8, ptr %add.ptr45.us, i64 2
  %9 = load i8, ptr %add.ptr63.us, align 1, !tbaa !19
  %cmp65.us = icmp ult i8 %9, 8
  %conv66.us = zext i1 %cmp65.us to i32
  %add67.us = add nuw nsw i32 %add58.us, %conv66.us
  switch i32 %add67.us, label %if.end412.us [
    i32 0, label %if.then70.us
    i32 1, label %land.lhs.true.us
  ]

land.lhs.true.us:                                 ; preds = %if.then.us
  %cmp82.us = icmp ult i8 %0, 6
  br i1 %cmp82.us, label %if.then84.us, label %for.inc823.us

if.then84.us:                                     ; preds = %land.lhs.true.us
  %add87.us = add nsw i32 %mul12.us, %j.01237.us
  %sub88.us = add nsw i32 %add87.us, -1
  %idxprom89.us = sext i32 %sub88.us to i64
  %arrayidx90.us = getelementptr inbounds i32, ptr %r, i64 %idxprom89.us
  %10 = load i32, ptr %arrayidx90.us, align 4, !tbaa !12
  store i32 %10, ptr %l, align 16, !tbaa !12
  %idxprom95.us = sext i32 %add87.us to i64
  %arrayidx96.us = getelementptr inbounds i32, ptr %r, i64 %idxprom95.us
  %11 = load i32, ptr %arrayidx96.us, align 4, !tbaa !12
  store i32 %11, ptr %arrayidx97, align 4, !tbaa !12
  %add101.us = add nsw i32 %add87.us, 1
  %idxprom102.us = sext i32 %add101.us to i64
  %arrayidx103.us = getelementptr inbounds i32, ptr %r, i64 %idxprom102.us
  %12 = load i32, ptr %arrayidx103.us, align 4, !tbaa !12
  store i32 %12, ptr %arrayidx104, align 8, !tbaa !12
  %sub107.us = add nsw i32 %add.us, -1
  %idxprom108.us = sext i32 %sub107.us to i64
  %arrayidx109.us = getelementptr inbounds i32, ptr %r, i64 %idxprom108.us
  %13 = load i32, ptr %arrayidx109.us, align 4, !tbaa !12
  store i32 %13, ptr %arrayidx110, align 4, !tbaa !12
  store i32 0, ptr %arrayidx111, align 16, !tbaa !12
  %add114.us = add nsw i32 %add.us, 1
  %idxprom115.us = sext i32 %add114.us to i64
  %arrayidx116.us = getelementptr inbounds i32, ptr %r, i64 %idxprom115.us
  %14 = load i32, ptr %arrayidx116.us, align 4, !tbaa !12
  store i32 %14, ptr %arrayidx117, align 4, !tbaa !12
  %add118.us = add nsw i32 %i.11236.us, 1
  %mul119.us = mul nsw i32 %add118.us, %x_size
  %add120.us = add nsw i32 %mul119.us, %j.01237.us
  %sub121.us = add nsw i32 %add120.us, -1
  %idxprom122.us = sext i32 %sub121.us to i64
  %arrayidx123.us = getelementptr inbounds i32, ptr %r, i64 %idxprom122.us
  %15 = load i32, ptr %arrayidx123.us, align 4, !tbaa !12
  store i32 %15, ptr %arrayidx124, align 8, !tbaa !12
  %idxprom128.us = sext i32 %add120.us to i64
  %arrayidx129.us = getelementptr inbounds i32, ptr %r, i64 %idxprom128.us
  %16 = load i32, ptr %arrayidx129.us, align 4, !tbaa !12
  store i32 %16, ptr %arrayidx130, align 4, !tbaa !12
  %add134.us = add nsw i32 %add120.us, 1
  %idxprom135.us = sext i32 %add134.us to i64
  %arrayidx136.us = getelementptr inbounds i32, ptr %r, i64 %idxprom135.us
  %17 = load i32, ptr %arrayidx136.us, align 4, !tbaa !12
  store i32 %17, ptr %arrayidx137, align 16, !tbaa !12
  %arrayidx143.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom89.us
  %18 = load i8, ptr %arrayidx143.us, align 1, !tbaa !19
  %cmp145.us = icmp ult i8 %18, 8
  br i1 %cmp145.us, label %if.then147.us, label %if.else.us

if.else.us:                                       ; preds = %if.then84.us
  %arrayidx165.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom95.us
  %19 = load i8, ptr %arrayidx165.us, align 1, !tbaa !19
  %cmp167.us = icmp ult i8 %19, 8
  br i1 %cmp167.us, label %if.then169.us, label %if.else183.us

if.else183.us:                                    ; preds = %if.else.us
  %arrayidx189.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom102.us
  %20 = load i8, ptr %arrayidx189.us, align 1, !tbaa !19
  %cmp191.us = icmp ult i8 %20, 8
  br i1 %cmp191.us, label %if.then193.us, label %if.else207.us

if.else207.us:                                    ; preds = %if.else183.us
  %arrayidx212.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom108.us
  %21 = load i8, ptr %arrayidx212.us, align 1, !tbaa !19
  %cmp214.us = icmp ult i8 %21, 8
  br i1 %cmp214.us, label %if.then216.us, label %if.else230.us

if.else230.us:                                    ; preds = %if.else207.us
  %arrayidx235.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom115.us
  %22 = load i8, ptr %arrayidx235.us, align 1, !tbaa !19
  %cmp237.us = icmp ult i8 %22, 8
  br i1 %cmp237.us, label %if.then239.us, label %if.else253.us

if.else253.us:                                    ; preds = %if.else230.us
  %arrayidx259.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom122.us
  %23 = load i8, ptr %arrayidx259.us, align 1, !tbaa !19
  %cmp261.us = icmp ult i8 %23, 8
  br i1 %cmp261.us, label %if.then263.us, label %if.else277.us

if.else277.us:                                    ; preds = %if.else253.us
  %arrayidx282.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom128.us
  %24 = load i8, ptr %arrayidx282.us, align 1, !tbaa !19
  %cmp284.us = icmp ult i8 %24, 8
  br i1 %cmp284.us, label %if.then286.us, label %if.else300.us

if.else300.us:                                    ; preds = %if.else277.us
  %arrayidx306.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom135.us
  %25 = load i8, ptr %arrayidx306.us, align 1, !tbaa !19
  %cmp308.us = icmp ult i8 %25, 8
  br i1 %cmp308.us, label %if.then310.us, label %for.cond336.preheader.us.preheader

for.cond336.preheader.us.preheader:               ; preds = %if.then147.us, %if.then169.us, %if.then193.us, %if.then216.us, %if.then239.us, %if.then263.us, %if.then286.us, %if.then310.us, %if.else300.us
  br label %for.cond336.preheader.us

if.then310.us:                                    ; preds = %if.else300.us
  store i32 0, ptr %arrayidx137, align 16, !tbaa !12
  store i32 0, ptr %arrayidx117, align 4, !tbaa !12
  store i32 0, ptr %arrayidx130, align 4, !tbaa !12
  %mul315.us = shl nsw i32 %15, 1
  store i32 %mul315.us, ptr %arrayidx124, align 8, !tbaa !12
  %mul317.us = shl nsw i32 %12, 1
  store i32 %mul317.us, ptr %arrayidx104, align 8, !tbaa !12
  %mul319.us = mul nsw i32 %11, 3
  store i32 %mul319.us, ptr %arrayidx97, align 4, !tbaa !12
  %mul321.us = mul nsw i32 %13, 3
  store i32 %mul321.us, ptr %arrayidx110, align 4, !tbaa !12
  %mul323.us = shl nsw i32 %10, 2
  store i32 %mul323.us, ptr %l, align 16, !tbaa !12
  br label %for.cond336.preheader.us.preheader

if.then286.us:                                    ; preds = %if.else277.us
  store i32 0, ptr %arrayidx130, align 4, !tbaa !12
  store i32 0, ptr %arrayidx124, align 8, !tbaa !12
  store i32 0, ptr %arrayidx137, align 16, !tbaa !12
  %mul291.us = shl nsw i32 %13, 1
  store i32 %mul291.us, ptr %arrayidx110, align 4, !tbaa !12
  %mul293.us = shl nsw i32 %14, 1
  store i32 %mul293.us, ptr %arrayidx117, align 4, !tbaa !12
  %mul295.us = mul nsw i32 %10, 3
  store i32 %mul295.us, ptr %l, align 16, !tbaa !12
  %mul297.us = mul nsw i32 %12, 3
  store i32 %mul297.us, ptr %arrayidx104, align 8, !tbaa !12
  %mul299.us = shl nsw i32 %11, 2
  store i32 %mul299.us, ptr %arrayidx97, align 4, !tbaa !12
  br label %for.cond336.preheader.us.preheader

if.then263.us:                                    ; preds = %if.else253.us
  store i32 0, ptr %arrayidx124, align 8, !tbaa !12
  store i32 0, ptr %arrayidx110, align 4, !tbaa !12
  store i32 0, ptr %arrayidx130, align 4, !tbaa !12
  %mul268.us = shl nsw i32 %10, 1
  store i32 %mul268.us, ptr %l, align 16, !tbaa !12
  %mul270.us = shl nsw i32 %17, 1
  store i32 %mul270.us, ptr %arrayidx137, align 16, !tbaa !12
  %mul272.us = mul nsw i32 %11, 3
  store i32 %mul272.us, ptr %arrayidx97, align 4, !tbaa !12
  %mul274.us = mul nsw i32 %14, 3
  store i32 %mul274.us, ptr %arrayidx117, align 4, !tbaa !12
  %mul276.us = shl nsw i32 %12, 2
  store i32 %mul276.us, ptr %arrayidx104, align 8, !tbaa !12
  br label %for.cond336.preheader.us.preheader

if.then239.us:                                    ; preds = %if.else230.us
  store i32 0, ptr %arrayidx117, align 4, !tbaa !12
  store i32 0, ptr %arrayidx104, align 8, !tbaa !12
  store i32 0, ptr %arrayidx137, align 16, !tbaa !12
  %mul244.us = shl nsw i32 %11, 1
  store i32 %mul244.us, ptr %arrayidx97, align 4, !tbaa !12
  %mul246.us = shl nsw i32 %16, 1
  store i32 %mul246.us, ptr %arrayidx130, align 4, !tbaa !12
  %mul248.us = mul nsw i32 %10, 3
  store i32 %mul248.us, ptr %l, align 16, !tbaa !12
  %mul250.us = mul nsw i32 %15, 3
  store i32 %mul250.us, ptr %arrayidx124, align 8, !tbaa !12
  %mul252.us = shl nsw i32 %13, 2
  store i32 %mul252.us, ptr %arrayidx110, align 4, !tbaa !12
  br label %for.cond336.preheader.us.preheader

if.then216.us:                                    ; preds = %if.else207.us
  store i32 0, ptr %arrayidx110, align 4, !tbaa !12
  store i32 0, ptr %l, align 16, !tbaa !12
  store i32 0, ptr %arrayidx124, align 8, !tbaa !12
  %mul221.us = shl nsw i32 %11, 1
  store i32 %mul221.us, ptr %arrayidx97, align 4, !tbaa !12
  %mul223.us = shl nsw i32 %16, 1
  store i32 %mul223.us, ptr %arrayidx130, align 4, !tbaa !12
  %mul225.us = mul nsw i32 %12, 3
  store i32 %mul225.us, ptr %arrayidx104, align 8, !tbaa !12
  %mul227.us = mul nsw i32 %17, 3
  store i32 %mul227.us, ptr %arrayidx137, align 16, !tbaa !12
  %mul229.us = shl nsw i32 %14, 2
  store i32 %mul229.us, ptr %arrayidx117, align 4, !tbaa !12
  br label %for.cond336.preheader.us.preheader

if.then193.us:                                    ; preds = %if.else183.us
  store i32 0, ptr %arrayidx104, align 8, !tbaa !12
  store i32 0, ptr %arrayidx97, align 4, !tbaa !12
  store i32 0, ptr %arrayidx117, align 4, !tbaa !12
  %mul198.us = shl nsw i32 %10, 1
  store i32 %mul198.us, ptr %l, align 16, !tbaa !12
  %mul200.us = shl nsw i32 %17, 1
  store i32 %mul200.us, ptr %arrayidx137, align 16, !tbaa !12
  %mul202.us = mul nsw i32 %13, 3
  store i32 %mul202.us, ptr %arrayidx110, align 4, !tbaa !12
  %mul204.us = mul nsw i32 %16, 3
  store i32 %mul204.us, ptr %arrayidx130, align 4, !tbaa !12
  %mul206.us = shl nsw i32 %15, 2
  store i32 %mul206.us, ptr %arrayidx124, align 8, !tbaa !12
  br label %for.cond336.preheader.us.preheader

if.then169.us:                                    ; preds = %if.else.us
  store i32 0, ptr %arrayidx97, align 4, !tbaa !12
  store i32 0, ptr %l, align 16, !tbaa !12
  store i32 0, ptr %arrayidx104, align 8, !tbaa !12
  %mul174.us = shl nsw i32 %13, 1
  store i32 %mul174.us, ptr %arrayidx110, align 4, !tbaa !12
  %mul176.us = shl nsw i32 %14, 1
  store i32 %mul176.us, ptr %arrayidx117, align 4, !tbaa !12
  %mul178.us = mul nsw i32 %15, 3
  store i32 %mul178.us, ptr %arrayidx124, align 8, !tbaa !12
  %mul180.us = mul nsw i32 %17, 3
  store i32 %mul180.us, ptr %arrayidx137, align 16, !tbaa !12
  %mul182.us = shl nsw i32 %16, 2
  store i32 %mul182.us, ptr %arrayidx130, align 4, !tbaa !12
  br label %for.cond336.preheader.us.preheader

if.then147.us:                                    ; preds = %if.then84.us
  store i32 0, ptr %l, align 16, !tbaa !12
  store i32 0, ptr %arrayidx97, align 4, !tbaa !12
  store i32 0, ptr %arrayidx110, align 4, !tbaa !12
  %mul152.us = shl nsw i32 %12, 1
  store i32 %mul152.us, ptr %arrayidx104, align 8, !tbaa !12
  %mul154.us = shl nsw i32 %15, 1
  store i32 %mul154.us, ptr %arrayidx124, align 8, !tbaa !12
  %mul156.us = mul nsw i32 %14, 3
  store i32 %mul156.us, ptr %arrayidx117, align 4, !tbaa !12
  %mul158.us = mul nsw i32 %16, 3
  store i32 %mul158.us, ptr %arrayidx130, align 4, !tbaa !12
  %mul160.us = shl nsw i32 %17, 2
  store i32 %mul160.us, ptr %arrayidx137, align 16, !tbaa !12
  br label %for.cond336.preheader.us.preheader

for.end356.us:                                    ; preds = %for.inc354.us
  %cmp357.us = icmp sgt i32 %m.2.us, 0
  br i1 %cmp357.us, label %if.then359.us, label %if.end412.us

if.then359.us:                                    ; preds = %for.end356.us
  %cmp365.us = icmp ult i8 %0, 4
  %add382.us = add i8 %0, 1
  %spec.select = select i1 %cmp365.us, i8 4, i8 %add382.us
  %sub369.us = add i32 %sub11.us, %a.4.us
  %mul370.us = mul nsw i32 %sub369.us, %x_size
  %add371.us = add i32 %b.4.us, %j.01237.us
  %add372.us = add i32 %add371.us, -1
  %sub373.us = add i32 %add372.us, %mul370.us
  %idxprom374.us = sext i32 %sub373.us to i64
  %arrayidx375.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom374.us
  store i8 %spec.select, ptr %arrayidx375.us, align 1, !tbaa !19
  %add393.us = shl nsw i32 %a.4.us, 1
  %add394.us = add nsw i32 %add393.us, %b.4.us
  %cmp395.us = icmp slt i32 %add394.us, 3
  br i1 %cmp395.us, label %if.then397.us, label %if.end412.us

if.then397.us:                                    ; preds = %if.then359.us
  %add399.us = add i32 %sub11.us, %a.4.us
  %sub400.us = add i32 %b.4.us, %j.01237.us
  %add401.us = add i32 %sub400.us, -2
  %26 = tail call i32 @llvm.smax.i32(i32 %add399.us, i32 4)
  %27 = tail call i32 @llvm.smax.i32(i32 %add401.us, i32 4)
  br label %if.end412.us

for.inc354.us:                                    ; preds = %for.inc.us
  %indvars.iv.next1248 = add nuw nsw i64 %indvars.iv1247, 1
  %exitcond1251.not = icmp eq i64 %indvars.iv.next1248, 3
  br i1 %exitcond1251.not, label %for.end356.us, label %for.cond336.preheader.us, !llvm.loop !50

for.body339.us:                                   ; preds = %for.cond336.preheader.us, %for.inc.us
  %indvars.iv = phi i64 [ 0, %for.cond336.preheader.us ], [ %indvars.iv.next, %for.inc.us ]
  %b.31226.us = phi i32 [ %b.21231.us, %for.cond336.preheader.us ], [ %b.4.us, %for.inc.us ]
  %a.31225.us = phi i32 [ %a.21230.us, %for.cond336.preheader.us ], [ %a.4.us, %for.inc.us ]
  %m.11224.us = phi i32 [ %m.01229.us, %for.cond336.preheader.us ], [ %m.2.us, %for.inc.us ]
  %28 = add nuw nsw i64 %indvars.iv, %62
  %arrayidx344.us = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 %28
  %29 = load i32, ptr %arrayidx344.us, align 4, !tbaa !12
  %cmp345.us = icmp sgt i32 %29, %m.11224.us
  br i1 %cmp345.us, label %if.then347.us, label %for.inc.us

if.then347.us:                                    ; preds = %for.body339.us
  %30 = trunc i64 %indvars.iv to i32
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.then347.us, %for.body339.us
  %m.2.us = phi i32 [ %29, %if.then347.us ], [ %m.11224.us, %for.body339.us ]
  %a.4.us = phi i32 [ %63, %if.then347.us ], [ %a.31225.us, %for.body339.us ]
  %b.4.us = phi i32 [ %30, %if.then347.us ], [ %b.31226.us, %for.body339.us ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %for.inc354.us, label %for.body339.us, !llvm.loop !51

if.then70.us:                                     ; preds = %if.then.us
  store i8 100, ptr %arrayidx.us, align 1, !tbaa !19
  br label %for.inc823.us

if.end412.us:                                     ; preds = %if.then397.us, %if.then359.us, %for.end356.us, %if.then.us
  %a.5.us = phi i32 [ %a.4.us, %if.then359.us ], [ %a.4.us, %for.end356.us ], [ %a.11234.us, %if.then.us ], [ %a.4.us, %if.then397.us ]
  %b.5.us = phi i32 [ %b.4.us, %if.then359.us ], [ %b.4.us, %for.end356.us ], [ %b.11235.us, %if.then.us ], [ %b.4.us, %if.then397.us ]
  %i.3.us = phi i32 [ %i.11236.us, %if.then359.us ], [ %i.11236.us, %for.end356.us ], [ %i.11236.us, %if.then.us ], [ %26, %if.then397.us ]
  %j.1.us = phi i32 [ %j.01237.us, %if.then359.us ], [ %j.01237.us, %for.end356.us ], [ %j.01237.us, %if.then.us ], [ %27, %if.then397.us ]
  %cmp413.us = icmp eq i32 %add67.us, 2
  br i1 %cmp413.us, label %if.then415.us, label %if.end709.us

if.end709.us:                                     ; preds = %if.end412.us
  %cmp710.us = icmp sgt i32 %add67.us, 2
  br i1 %cmp710.us, label %if.then712.us, label %for.inc823.us

if.then712.us:                                    ; preds = %if.end709.us
  %sub713.us = add nsw i32 %i.3.us, -1
  %mul714.us = mul nsw i32 %sub713.us, %x_size
  %add715.us = add nsw i32 %mul714.us, %j.1.us
  %idxprom716.us = sext i32 %add715.us to i64
  %arrayidx717.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom716.us
  %31 = load i8, ptr %arrayidx717.us, align 1, !tbaa !19
  %cmp719.us = icmp ult i8 %31, 8
  %conv720.us = zext i1 %cmp719.us to i32
  %mul721.us = mul nsw i32 %i.3.us, %x_size
  %add722.us = add nsw i32 %mul721.us, %j.1.us
  %add723.us = add nsw i32 %add722.us, 1
  %idxprom724.us = sext i32 %add723.us to i64
  %arrayidx725.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom724.us
  %32 = load i8, ptr %arrayidx725.us, align 1, !tbaa !19
  %cmp727.us = icmp ult i8 %32, 8
  %conv728.us = zext i1 %cmp727.us to i32
  %add729.us = add nsw i32 %i.3.us, 1
  %mul730.us = mul nsw i32 %add729.us, %x_size
  %add731.us = add nsw i32 %mul730.us, %j.1.us
  %idxprom732.us = sext i32 %add731.us to i64
  %arrayidx733.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom732.us
  %33 = load i8, ptr %arrayidx733.us, align 1, !tbaa !19
  %cmp735.us = icmp ult i8 %33, 8
  %conv736.us = zext i1 %cmp735.us to i32
  %sub739.us = add nsw i32 %add722.us, -1
  %idxprom740.us = sext i32 %sub739.us to i64
  %arrayidx741.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom740.us
  %34 = load i8, ptr %arrayidx741.us, align 1, !tbaa !19
  %cmp743.us = icmp ult i8 %34, 8
  %conv744.us = zext i1 %cmp743.us to i32
  %add745.us = add nuw nsw i32 %conv728.us, %conv720.us
  %add746.us = add nuw nsw i32 %add745.us, %conv736.us
  %add747.us = add nuw nsw i32 %add746.us, %conv744.us
  %cmp748.us = icmp ugt i32 %add747.us, 1
  br i1 %cmp748.us, label %if.then750.us, label %for.inc823.us

if.then750.us:                                    ; preds = %if.then712.us
  %sub754.us = add nsw i32 %add715.us, -1
  %idxprom755.us = sext i32 %sub754.us to i64
  %arrayidx756.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom755.us
  %35 = load i8, ptr %arrayidx756.us, align 1, !tbaa !19
  %cmp758.us = icmp ult i8 %35, 8
  %add763.us = add nsw i32 %add715.us, 1
  %idxprom764.us = sext i32 %add763.us to i64
  %arrayidx765.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom764.us
  %36 = load i8, ptr %arrayidx765.us, align 1, !tbaa !19
  %cmp767.us = icmp ult i8 %36, 8
  %sub772.us = add nsw i32 %add731.us, -1
  %idxprom773.us = sext i32 %sub772.us to i64
  %arrayidx774.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom773.us
  %37 = load i8, ptr %arrayidx774.us, align 1, !tbaa !19
  %cmp776.us = icmp ult i8 %37, 8
  %add781.us = add nsw i32 %add731.us, 1
  %idxprom782.us = sext i32 %add781.us to i64
  %arrayidx783.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom782.us
  %38 = load i8, ptr %arrayidx783.us, align 1, !tbaa !19
  %cmp785.us = icmp ult i8 %38, 8
  %or7871166.us = or i1 %cmp719.us, %cmp758.us
  %or787.us = zext i1 %or7871166.us to i32
  %or7881167.us = or i1 %cmp727.us, %cmp767.us
  %or788.us = zext i1 %or7881167.us to i32
  %or7891168.us = or i1 %cmp735.us, %cmp785.us
  %or789.us = zext i1 %or7891168.us to i32
  %or7901169.us = or i1 %cmp743.us, %cmp776.us
  %or790.us = zext i1 %or7901169.us to i32
  %and7941170.us = and i1 %cmp719.us, %or7881167.us
  %and794.neg.us = sext i1 %and7941170.us to i32
  %and7951171.us = and i1 %cmp727.us, %or7891168.us
  %and795.neg.us = sext i1 %and7951171.us to i32
  %and7971172.us = and i1 %cmp735.us, %or7901169.us
  %and797.neg.us = sext i1 %and7971172.us to i32
  %and7991173.us = and i1 %cmp743.us, %or7871166.us
  %and799.neg.us = sext i1 %and7991173.us to i32
  %add796.neg.us = add nuw nsw i32 %or788.us, %or787.us
  %add798.neg.us = add nsw i32 %add796.neg.us, %and799.neg.us
  %add800.neg.us = add nsw i32 %add798.neg.us, %or790.us
  %add791.us = add nsw i32 %add800.neg.us, %and794.neg.us
  %add792.us = add nsw i32 %add791.us, %or789.us
  %add793.us = add nsw i32 %add792.us, %and797.neg.us
  %sub801.us = add nsw i32 %add793.us, %and795.neg.us
  %cmp802.us = icmp slt i32 %sub801.us, 2
  br i1 %cmp802.us, label %if.then804.us, label %for.inc823.us

if.then804.us:                                    ; preds = %if.then750.us
  %idxprom807.us = sext i32 %add722.us to i64
  %arrayidx808.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom807.us
  store i8 100, ptr %arrayidx808.us, align 1, !tbaa !19
  %sub810.us = add nsw i32 %j.1.us, -2
  %cmp811.inv.us = icmp sgt i32 %i.3.us, 4
  %spec.select1199.us = select i1 %cmp811.inv.us, i32 %sub713.us, i32 4
  %cmp815.us = icmp slt i32 %j.1.us, 6
  %spec.select1202.us = select i1 %cmp815.us, i32 4, i32 %sub810.us
  br label %for.inc823.us

if.then415.us:                                    ; preds = %if.end412.us
  %sub416.us = add nsw i32 %i.3.us, -1
  %mul417.us = mul nsw i32 %sub416.us, %x_size
  %add418.us = add nsw i32 %mul417.us, %j.1.us
  %sub419.us = add nsw i32 %add418.us, -1
  %idxprom420.us = sext i32 %sub419.us to i64
  %arrayidx421.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom420.us
  %39 = load i8, ptr %arrayidx421.us, align 1, !tbaa !19
  %cmp423.us = icmp ult i8 %39, 8
  %conv424.us = zext i1 %cmp423.us to i32
  %add428.us = add nsw i32 %add418.us, 1
  %idxprom429.us = sext i32 %add428.us to i64
  %arrayidx430.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom429.us
  %40 = load i8, ptr %arrayidx430.us, align 1, !tbaa !19
  %cmp432.us = icmp ult i8 %40, 8
  %conv433.us = zext i1 %cmp432.us to i32
  %add434.us = add nsw i32 %i.3.us, 1
  %mul435.us = mul nsw i32 %add434.us, %x_size
  %add436.us = add nsw i32 %mul435.us, %j.1.us
  %sub437.us = add nsw i32 %add436.us, -1
  %idxprom438.us = sext i32 %sub437.us to i64
  %arrayidx439.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom438.us
  %41 = load i8, ptr %arrayidx439.us, align 1, !tbaa !19
  %cmp441.us = icmp ult i8 %41, 8
  %conv442.us = zext i1 %cmp441.us to i32
  %add446.us = add nsw i32 %add436.us, 1
  %idxprom447.us = sext i32 %add446.us to i64
  %arrayidx448.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom447.us
  %42 = load i8, ptr %arrayidx448.us, align 1, !tbaa !19
  %cmp450.us = icmp ult i8 %42, 8
  %conv451.us = zext i1 %cmp450.us to i32
  %add452.us = add nuw nsw i32 %conv433.us, %conv424.us
  %add453.us = add nuw nsw i32 %add452.us, %conv442.us
  %add454.us = add nuw nsw i32 %add453.us, %conv451.us
  %cmp455.us = icmp eq i32 %add454.us, 2
  br i1 %cmp455.us, label %land.lhs.true457.us, label %if.else565.us

land.lhs.true457.us:                              ; preds = %if.then415.us
  %or1188.us = or i1 %cmp423.us, %cmp450.us
  %or4581189.us = or i1 %cmp432.us, %cmp441.us
  %and1190.us = and i1 %or4581189.us, %or1188.us
  br i1 %and1190.us, label %if.then459.us, label %if.else565.us

if.else565.us:                                    ; preds = %land.lhs.true457.us, %if.then415.us
  %idxprom569.us = sext i32 %add418.us to i64
  %arrayidx570.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom569.us
  %43 = load i8, ptr %arrayidx570.us, align 1, !tbaa !19
  %cmp572.us = icmp ult i8 %43, 8
  %conv573.us = zext i1 %cmp572.us to i32
  %mul574.us = mul nsw i32 %i.3.us, %x_size
  %add575.us = add nsw i32 %mul574.us, %j.1.us
  %add576.us = add nsw i32 %add575.us, 1
  %idxprom577.us = sext i32 %add576.us to i64
  %arrayidx578.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom577.us
  %44 = load i8, ptr %arrayidx578.us, align 1, !tbaa !19
  %cmp580.us = icmp ult i8 %44, 8
  %conv581.us = zext i1 %cmp580.us to i32
  %idxprom585.us = sext i32 %add436.us to i64
  %arrayidx586.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom585.us
  %45 = load i8, ptr %arrayidx586.us, align 1, !tbaa !19
  %cmp588.us = icmp ult i8 %45, 8
  %conv589.us = zext i1 %cmp588.us to i32
  %sub592.us = add nsw i32 %add575.us, -1
  %idxprom593.us = sext i32 %sub592.us to i64
  %arrayidx594.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom593.us
  %46 = load i8, ptr %arrayidx594.us, align 1, !tbaa !19
  %cmp596.us = icmp ult i8 %46, 8
  %conv597.us = zext i1 %cmp596.us to i32
  %add598.us = add nuw nsw i32 %conv581.us, %conv573.us
  %add599.us = add nuw nsw i32 %add598.us, %conv589.us
  %add600.us = add nuw nsw i32 %add599.us, %conv597.us
  %cmp601.us = icmp eq i32 %add600.us, 2
  br i1 %cmp601.us, label %land.lhs.true603.us, label %for.inc823.us

land.lhs.true603.us:                              ; preds = %if.else565.us
  %or6041174.us = or i1 %cmp580.us, %cmp596.us
  %or6051175.us = or i1 %cmp572.us, %cmp588.us
  %and6061176.us = and i1 %or6051175.us, %or6041174.us
  br i1 %and6061176.us, label %land.lhs.true608.us, label %for.inc823.us

land.lhs.true608.us:                              ; preds = %land.lhs.true603.us
  %sub609.us = add nsw i32 %i.3.us, -2
  %mul610.us = mul nsw i32 %sub609.us, %x_size
  %add611.us = add nsw i32 %mul610.us, %j.1.us
  %sub612.us = add nsw i32 %add611.us, -1
  %idxprom613.us = sext i32 %sub612.us to i64
  %arrayidx614.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom613.us
  %47 = load i8, ptr %arrayidx614.us, align 1, !tbaa !19
  %cmp616.us = icmp ult i8 %47, 8
  %add621.us = add nsw i32 %add611.us, 1
  %idxprom622.us = sext i32 %add621.us to i64
  %arrayidx623.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom622.us
  %48 = load i8, ptr %arrayidx623.us, align 1, !tbaa !19
  %cmp625.us = icmp ult i8 %48, 8
  %or6271177.us = or i1 %cmp616.us, %cmp625.us
  %and6281178.us = and i1 %cmp572.us, %or6271177.us
  %sub632.us = add nsw i32 %add418.us, -2
  %idxprom633.us = sext i32 %sub632.us to i64
  %arrayidx634.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom633.us
  %49 = load i8, ptr %arrayidx634.us, align 1, !tbaa !19
  %cmp636.us = icmp ult i8 %49, 8
  %sub641.us = add nsw i32 %add436.us, -2
  %idxprom642.us = sext i32 %sub641.us to i64
  %arrayidx643.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom642.us
  %50 = load i8, ptr %arrayidx643.us, align 1, !tbaa !19
  %cmp645.us = icmp ult i8 %50, 8
  %or6471179.us = or i1 %cmp636.us, %cmp645.us
  %and6481180.us = and i1 %cmp596.us, %or6471179.us
  %or6491181.us = or i1 %and6281178.us, %and6481180.us
  %add653.us = add nsw i32 %add418.us, 2
  %idxprom654.us = sext i32 %add653.us to i64
  %arrayidx655.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom654.us
  %51 = load i8, ptr %arrayidx655.us, align 1, !tbaa !19
  %cmp657.us = icmp ult i8 %51, 8
  %add662.us = add nsw i32 %add436.us, 2
  %idxprom663.us = sext i32 %add662.us to i64
  %arrayidx664.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom663.us
  %52 = load i8, ptr %arrayidx664.us, align 1, !tbaa !19
  %cmp666.us = icmp ult i8 %52, 8
  %or6681182.us = or i1 %cmp657.us, %cmp666.us
  %and6691183.us = and i1 %cmp580.us, %or6681182.us
  %or6701184.us = or i1 %or6491181.us, %and6691183.us
  %add671.us = add nsw i32 %i.3.us, 2
  %mul672.us = mul nsw i32 %add671.us, %x_size
  %add673.us = add nsw i32 %mul672.us, %j.1.us
  %sub674.us = add nsw i32 %add673.us, -1
  %idxprom675.us = sext i32 %sub674.us to i64
  %arrayidx676.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom675.us
  %53 = load i8, ptr %arrayidx676.us, align 1, !tbaa !19
  %cmp678.us = icmp ult i8 %53, 8
  %add683.us = add nsw i32 %add673.us, 1
  %idxprom684.us = sext i32 %add683.us to i64
  %arrayidx685.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom684.us
  %54 = load i8, ptr %arrayidx685.us, align 1, !tbaa !19
  %cmp687.us = icmp ult i8 %54, 8
  %or6891185.us = or i1 %cmp678.us, %cmp687.us
  %and6901186.us = and i1 %cmp588.us, %or6891185.us
  %or6911187.us = or i1 %or6701184.us, %and6901186.us
  br i1 %or6911187.us, label %if.then693.us, label %for.inc823.us

if.then693.us:                                    ; preds = %land.lhs.true608.us
  %idxprom696.us = sext i32 %add575.us to i64
  %arrayidx697.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom696.us
  store i8 100, ptr %arrayidx697.us, align 1, !tbaa !19
  %sub698.us = add nsw i32 %j.1.us, -2
  %cmp699.inv.us = icmp sgt i32 %i.3.us, 4
  %spec.select1198.us = select i1 %cmp699.inv.us, i32 %sub416.us, i32 4
  %cmp703.us = icmp slt i32 %j.1.us, 6
  %spec.select1201.us = select i1 %cmp703.us, i32 4, i32 %sub698.us
  br label %for.inc823.us

if.then459.us:                                    ; preds = %land.lhs.true457.us
  %not.cmp4321222.us = xor i1 %cmp432.us, true
  br i1 %cmp423.us, label %if.then461.us, label %if.else466.us

if.else466.us:                                    ; preds = %if.then459.us
  %.1197.us = zext i1 %not.cmp4321222.us to i32
  br label %if.end471.us

if.then461.us:                                    ; preds = %if.then459.us
  %.1191.us = sext i1 %not.cmp4321222.us to i32
  %.1193.us = sext i1 %cmp432.us to i32
  br label %if.end471.us

if.end471.us:                                     ; preds = %if.then461.us, %if.else466.us
  %cmp484.us = phi i1 [ %cmp432.us, %if.then461.us ], [ %not.cmp4321222.us, %if.else466.us ]
  %x.1.us = phi i32 [ %.1191.us, %if.then461.us ], [ %conv433.us, %if.else466.us ]
  %cmp518.us = phi i1 [ %not.cmp4321222.us, %if.then461.us ], [ %cmp432.us, %if.else466.us ]
  %y.1.us = phi i32 [ %.1193.us, %if.then461.us ], [ %.1197.us, %if.else466.us ]
  %add472.us = add nsw i32 %y.1.us, %i.3.us
  %mul473.us = mul nsw i32 %add472.us, %x_size
  %add474.us = add i32 %x.1.us, %j.1.us
  %add475.us = add i32 %add474.us, %mul473.us
  %idxprom476.us = sext i32 %add475.us to i64
  %arrayidx477.us = getelementptr inbounds i32, ptr %r, i64 %idxprom476.us
  %55 = load i32, ptr %arrayidx477.us, align 4, !tbaa !12
  %conv478.us = sitofp i32 %55 to float
  %conv479.us = sitofp i32 %1 to float
  %div.us = fdiv float %conv478.us, %conv479.us
  %conv480.us = fpext float %div.us to double
  %cmp481.us = fcmp ogt double %conv480.us, 0x3FE6666666666666
  br i1 %cmp481.us, label %if.then483.us, label %for.inc823.us

if.then483.us:                                    ; preds = %if.end471.us
  br i1 %cmp484.us, label %land.lhs.true486.us, label %lor.lhs.false.us

land.lhs.true486.us:                              ; preds = %if.then483.us
  %mul487.us = shl nsw i32 %y.1.us, 1
  %add488.us = add nsw i32 %mul487.us, %i.3.us
  %mul489.us = mul nsw i32 %add488.us, %x_size
  %add490.us = add nsw i32 %mul489.us, %j.1.us
  %idxprom491.us = sext i32 %add490.us to i64
  %arrayidx492.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom491.us
  %56 = load i8, ptr %arrayidx492.us, align 1, !tbaa !19
  %cmp494.us = icmp ugt i8 %56, 7
  br i1 %cmp494.us, label %land.lhs.true496.us, label %lor.lhs.false.us

land.lhs.true496.us:                              ; preds = %land.lhs.true486.us
  %sub501.us = add nsw i32 %add490.us, -1
  %idxprom502.us = sext i32 %sub501.us to i64
  %arrayidx503.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom502.us
  %57 = load i8, ptr %arrayidx503.us, align 1, !tbaa !19
  %cmp505.us = icmp ugt i8 %57, 7
  br i1 %cmp505.us, label %land.lhs.true507.us, label %lor.lhs.false.us

land.lhs.true507.us:                              ; preds = %land.lhs.true496.us
  %add512.us = add nsw i32 %add490.us, 1
  %idxprom513.us = sext i32 %add512.us to i64
  %arrayidx514.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom513.us
  %58 = load i8, ptr %arrayidx514.us, align 1, !tbaa !19
  %cmp516.us = icmp ugt i8 %58, 7
  br i1 %cmp516.us, label %land.lhs.true507.us.if.then552.us_crit_edge, label %lor.lhs.false.us

land.lhs.true507.us.if.then552.us_crit_edge:      ; preds = %land.lhs.true507.us
  %.pre = mul nsw i32 %i.3.us, %x_size
  %.pre1252 = add nsw i32 %.pre, %j.1.us
  br label %if.then552.us

lor.lhs.false.us:                                 ; preds = %land.lhs.true507.us, %land.lhs.true496.us, %land.lhs.true486.us, %if.then483.us
  br i1 %cmp518.us, label %land.lhs.true520.us, label %for.inc823.us

land.lhs.true520.us:                              ; preds = %lor.lhs.false.us
  %mul521.us = mul nsw i32 %i.3.us, %x_size
  %add522.us = add nsw i32 %mul521.us, %j.1.us
  %mul523.us = shl nsw i32 %x.1.us, 1
  %add524.us = add nsw i32 %add522.us, %mul523.us
  %idxprom525.us = sext i32 %add524.us to i64
  %arrayidx526.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom525.us
  %59 = load i8, ptr %arrayidx526.us, align 1, !tbaa !19
  %cmp528.us = icmp ugt i8 %59, 7
  br i1 %cmp528.us, label %land.lhs.true530.us, label %for.inc823.us

land.lhs.true530.us:                              ; preds = %land.lhs.true520.us
  %add535.us = add nsw i32 %mul523.us, %add436.us
  %idxprom536.us = sext i32 %add535.us to i64
  %arrayidx537.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom536.us
  %60 = load i8, ptr %arrayidx537.us, align 1, !tbaa !19
  %cmp539.us = icmp ugt i8 %60, 7
  br i1 %cmp539.us, label %land.lhs.true541.us, label %for.inc823.us

land.lhs.true541.us:                              ; preds = %land.lhs.true530.us
  %add546.us = add nsw i32 %mul523.us, %add418.us
  %idxprom547.us = sext i32 %add546.us to i64
  %arrayidx548.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom547.us
  %61 = load i8, ptr %arrayidx548.us, align 1, !tbaa !19
  %cmp550.us = icmp ugt i8 %61, 7
  br i1 %cmp550.us, label %if.then552.us, label %for.inc823.us

if.then552.us:                                    ; preds = %land.lhs.true507.us.if.then552.us_crit_edge, %land.lhs.true541.us
  %add554.us.pre-phi = phi i32 [ %.pre1252, %land.lhs.true507.us.if.then552.us_crit_edge ], [ %add522.us, %land.lhs.true541.us ]
  %idxprom555.us = sext i32 %add554.us.pre-phi to i64
  %arrayidx556.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom555.us
  store i8 100, ptr %arrayidx556.us, align 1, !tbaa !19
  %arrayidx562.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom476.us
  store i8 3, ptr %arrayidx562.us, align 1, !tbaa !19
  br label %for.inc823.us

for.inc823.us:                                    ; preds = %if.then552.us, %land.lhs.true541.us, %land.lhs.true530.us, %land.lhs.true520.us, %lor.lhs.false.us, %if.end471.us, %if.then693.us, %land.lhs.true608.us, %land.lhs.true603.us, %if.else565.us, %if.then804.us, %if.then750.us, %if.then712.us, %if.end709.us, %if.then70.us, %land.lhs.true.us, %for.body4.us
  %a.6.us = phi i32 [ %a.5.us, %if.then750.us ], [ %a.5.us, %if.then712.us ], [ %a.5.us, %if.end709.us ], [ %a.11234.us, %for.body4.us ], [ %a.5.us, %if.then804.us ], [ %a.5.us, %if.then693.us ], [ %a.5.us, %if.else565.us ], [ %a.5.us, %land.lhs.true603.us ], [ %a.5.us, %land.lhs.true608.us ], [ %a.5.us, %if.end471.us ], [ %a.5.us, %lor.lhs.false.us ], [ %a.5.us, %land.lhs.true520.us ], [ %a.5.us, %land.lhs.true530.us ], [ %a.5.us, %land.lhs.true541.us ], [ %a.5.us, %if.then552.us ], [ %a.11234.us, %if.then70.us ], [ %a.11234.us, %land.lhs.true.us ]
  %b.6.us = phi i32 [ %b.5.us, %if.then750.us ], [ %b.5.us, %if.then712.us ], [ %b.5.us, %if.end709.us ], [ %b.11235.us, %for.body4.us ], [ %b.5.us, %if.then804.us ], [ %b.5.us, %if.then693.us ], [ %b.5.us, %if.else565.us ], [ %b.5.us, %land.lhs.true603.us ], [ %b.5.us, %land.lhs.true608.us ], [ %b.5.us, %if.end471.us ], [ %b.5.us, %lor.lhs.false.us ], [ %b.5.us, %land.lhs.true520.us ], [ %b.5.us, %land.lhs.true530.us ], [ %b.5.us, %land.lhs.true541.us ], [ %b.5.us, %if.then552.us ], [ %b.11235.us, %if.then70.us ], [ %b.11235.us, %land.lhs.true.us ]
  %i.7.us = phi i32 [ %i.3.us, %if.then750.us ], [ %i.3.us, %if.then712.us ], [ %i.3.us, %if.end709.us ], [ %i.11236.us, %for.body4.us ], [ %spec.select1199.us, %if.then804.us ], [ %spec.select1198.us, %if.then693.us ], [ %i.3.us, %if.else565.us ], [ %i.3.us, %land.lhs.true603.us ], [ %i.3.us, %land.lhs.true608.us ], [ %i.3.us, %if.end471.us ], [ %i.3.us, %lor.lhs.false.us ], [ %i.3.us, %land.lhs.true520.us ], [ %i.3.us, %land.lhs.true530.us ], [ %i.3.us, %land.lhs.true541.us ], [ %i.3.us, %if.then552.us ], [ %i.11236.us, %if.then70.us ], [ %i.11236.us, %land.lhs.true.us ]
  %j.3.us = phi i32 [ %j.1.us, %if.then750.us ], [ %j.1.us, %if.then712.us ], [ %j.1.us, %if.end709.us ], [ %j.01237.us, %for.body4.us ], [ %spec.select1202.us, %if.then804.us ], [ %spec.select1201.us, %if.then693.us ], [ %j.1.us, %if.else565.us ], [ %j.1.us, %land.lhs.true603.us ], [ %j.1.us, %land.lhs.true608.us ], [ %j.1.us, %if.end471.us ], [ %j.1.us, %lor.lhs.false.us ], [ %j.1.us, %land.lhs.true520.us ], [ %j.1.us, %land.lhs.true530.us ], [ %j.1.us, %land.lhs.true541.us ], [ %j.1.us, %if.then552.us ], [ %j.01237.us, %if.then70.us ], [ %j.01237.us, %land.lhs.true.us ]
  %inc824.us = add nsw i32 %j.3.us, 1
  %cmp3.us = icmp slt i32 %inc824.us, %sub2
  br i1 %cmp3.us, label %for.body4.us.backedge, label %for.cond1.for.inc826_crit_edge.us

for.body4.us.backedge:                            ; preds = %for.inc823.us, %for.cond1.for.inc826_crit_edge.us
  %j.01237.us.be = phi i32 [ %inc824.us, %for.inc823.us ], [ 4, %for.cond1.for.inc826_crit_edge.us ]
  %i.11236.us.be = phi i32 [ %i.7.us, %for.inc823.us ], [ %inc827.us, %for.cond1.for.inc826_crit_edge.us ]
  br label %for.body4.us, !llvm.loop !52

for.cond336.preheader.us:                         ; preds = %for.cond336.preheader.us.preheader, %for.inc354.us
  %indvars.iv1247 = phi i64 [ %indvars.iv.next1248, %for.inc354.us ], [ 0, %for.cond336.preheader.us.preheader ]
  %b.21231.us = phi i32 [ %b.4.us, %for.inc354.us ], [ %b.11235.us, %for.cond336.preheader.us.preheader ]
  %a.21230.us = phi i32 [ %a.4.us, %for.inc354.us ], [ %a.11234.us, %for.cond336.preheader.us.preheader ]
  %m.01229.us = phi i32 [ %m.2.us, %for.inc354.us ], [ 0, %for.cond336.preheader.us.preheader ]
  %62 = mul nuw nsw i64 %indvars.iv1247, 3
  %63 = trunc i64 %indvars.iv1247 to i32
  br label %for.body339.us

for.cond1.for.inc826_crit_edge.us:                ; preds = %for.inc823.us
  %inc827.us = add nsw i32 %i.7.us, 1
  %cmp.us = icmp slt i32 %inc827.us, %sub
  br i1 %cmp.us, label %for.body4.us.backedge, label %for.end828

for.end828:                                       ; preds = %for.cond1.for.inc826_crit_edge.us, %for.cond1.preheader.lr.ph, %entry
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %l) #21
  ret i32 undef
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @susan_edges(ptr nocapture noundef readonly %in, ptr nocapture noundef %r, ptr nocapture noundef writeonly %mid, ptr noundef readonly %bp, i32 noundef %max_no, i32 noundef %x_size, i32 noundef %y_size) local_unnamed_addr #7 {
entry:
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %r, i8 0, i64 %mul1, i1 false)
  %sub = add i32 %y_size, -3
  %cmp2068 = icmp sgt i32 %y_size, 6
  br i1 %cmp2068, label %for.cond3.preheader.lr.ph, label %for.end1257

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %sub4 = add i32 %x_size, -3
  %cmp52066 = icmp sgt i32 %x_size, 6
  %idx.ext36 = sext i32 %sub4 to i64
  %sub72 = add nsw i32 %x_size, -5
  %idx.ext73 = sext i32 %sub72 to i64
  %sub123 = add nsw i32 %x_size, -6
  %idx.ext124 = sext i32 %sub123 to i64
  br i1 %cmp52066, label %for.cond3.preheader.us.preheader, label %for.cond288.preheader

for.cond3.preheader.us.preheader:                 ; preds = %for.cond3.preheader.lr.ph
  %0 = zext i32 %x_size to i64
  %wide.trip.count2088 = zext i32 %sub to i64
  %wide.trip.count = zext i32 %sub4 to i64
  %add.ptr.us = getelementptr inbounds i8, ptr %in, i64 -1
  br label %for.cond3.preheader.us

for.cond3.preheader.us:                           ; preds = %for.cond3.preheader.us.preheader, %for.cond3.for.inc285_crit_edge.us
  %indvars.iv2082 = phi i64 [ 3, %for.cond3.preheader.us.preheader ], [ %indvars.iv.next2083, %for.cond3.for.inc285_crit_edge.us ]
  %1 = add nsw i64 %indvars.iv2082, -3
  %2 = mul nsw i64 %1, %0
  %3 = mul nsw i64 %indvars.iv2082, %0
  %add.ptr11.us = getelementptr inbounds i8, ptr %add.ptr.us, i64 %2
  br label %for.body7.us

for.body7.us:                                     ; preds = %for.cond3.preheader.us, %for.inc.us
  %indvars.iv = phi i64 [ 3, %for.cond3.preheader.us ], [ %indvars.iv.next, %for.inc.us ]
  %add.ptr12.us = getelementptr inbounds i8, ptr %add.ptr11.us, i64 %indvars.iv
  %4 = add nuw nsw i64 %indvars.iv, %3
  %arrayidx.us = getelementptr inbounds i8, ptr %in, i64 %4
  %5 = load i8, ptr %arrayidx.us, align 1, !tbaa !19
  %6 = zext i8 %5 to i64
  %add.ptr16.us = getelementptr inbounds i8, ptr %bp, i64 %6
  %incdec.ptr.us = getelementptr inbounds i8, ptr %add.ptr12.us, i64 1
  %7 = load i8, ptr %add.ptr12.us, align 1, !tbaa !19
  %8 = zext i8 %7 to i64
  %idx.neg.us = sub nsw i64 0, %8
  %add.ptr19.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg.us
  %9 = load i8, ptr %add.ptr19.us, align 1, !tbaa !19
  %conv20.us = zext i8 %9 to i32
  %add21.us = add nuw nsw i32 %conv20.us, 100
  %incdec.ptr22.us = getelementptr inbounds i8, ptr %incdec.ptr.us, i64 1
  %10 = load i8, ptr %incdec.ptr.us, align 1, !tbaa !19
  %11 = zext i8 %10 to i64
  %idx.neg25.us = sub nsw i64 0, %11
  %add.ptr26.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg25.us
  %12 = load i8, ptr %add.ptr26.us, align 1, !tbaa !19
  %conv27.us = zext i8 %12 to i32
  %add28.us = add nuw nsw i32 %add21.us, %conv27.us
  %13 = load i8, ptr %incdec.ptr22.us, align 1, !tbaa !19
  %14 = zext i8 %13 to i64
  %idx.neg31.us = sub nsw i64 0, %14
  %add.ptr32.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg31.us
  %15 = load i8, ptr %add.ptr32.us, align 1, !tbaa !19
  %conv33.us = zext i8 %15 to i32
  %add34.us = add nuw nsw i32 %add28.us, %conv33.us
  %add.ptr37.us = getelementptr inbounds i8, ptr %incdec.ptr22.us, i64 %idx.ext36
  %incdec.ptr38.us = getelementptr inbounds i8, ptr %add.ptr37.us, i64 1
  %16 = load i8, ptr %add.ptr37.us, align 1, !tbaa !19
  %17 = zext i8 %16 to i64
  %idx.neg41.us = sub nsw i64 0, %17
  %add.ptr42.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg41.us
  %18 = load i8, ptr %add.ptr42.us, align 1, !tbaa !19
  %conv43.us = zext i8 %18 to i32
  %add44.us = add nuw nsw i32 %add34.us, %conv43.us
  %incdec.ptr45.us = getelementptr inbounds i8, ptr %incdec.ptr38.us, i64 1
  %19 = load i8, ptr %incdec.ptr38.us, align 1, !tbaa !19
  %20 = zext i8 %19 to i64
  %idx.neg48.us = sub nsw i64 0, %20
  %add.ptr49.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg48.us
  %21 = load i8, ptr %add.ptr49.us, align 1, !tbaa !19
  %conv50.us = zext i8 %21 to i32
  %add51.us = add nuw nsw i32 %add44.us, %conv50.us
  %incdec.ptr52.us = getelementptr inbounds i8, ptr %incdec.ptr45.us, i64 1
  %22 = load i8, ptr %incdec.ptr45.us, align 1, !tbaa !19
  %23 = zext i8 %22 to i64
  %idx.neg55.us = sub nsw i64 0, %23
  %add.ptr56.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg55.us
  %24 = load i8, ptr %add.ptr56.us, align 1, !tbaa !19
  %conv57.us = zext i8 %24 to i32
  %add58.us = add nuw nsw i32 %add51.us, %conv57.us
  %incdec.ptr59.us = getelementptr inbounds i8, ptr %incdec.ptr52.us, i64 1
  %25 = load i8, ptr %incdec.ptr52.us, align 1, !tbaa !19
  %26 = zext i8 %25 to i64
  %idx.neg62.us = sub nsw i64 0, %26
  %add.ptr63.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg62.us
  %27 = load i8, ptr %add.ptr63.us, align 1, !tbaa !19
  %conv64.us = zext i8 %27 to i32
  %add65.us = add nuw nsw i32 %add58.us, %conv64.us
  %28 = load i8, ptr %incdec.ptr59.us, align 1, !tbaa !19
  %29 = zext i8 %28 to i64
  %idx.neg68.us = sub nsw i64 0, %29
  %add.ptr69.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg68.us
  %30 = load i8, ptr %add.ptr69.us, align 1, !tbaa !19
  %conv70.us = zext i8 %30 to i32
  %add71.us = add nuw nsw i32 %add65.us, %conv70.us
  %add.ptr74.us = getelementptr inbounds i8, ptr %incdec.ptr59.us, i64 %idx.ext73
  %incdec.ptr75.us = getelementptr inbounds i8, ptr %add.ptr74.us, i64 1
  %31 = load i8, ptr %add.ptr74.us, align 1, !tbaa !19
  %32 = zext i8 %31 to i64
  %idx.neg78.us = sub nsw i64 0, %32
  %add.ptr79.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg78.us
  %33 = load i8, ptr %add.ptr79.us, align 1, !tbaa !19
  %conv80.us = zext i8 %33 to i32
  %add81.us = add nuw nsw i32 %add71.us, %conv80.us
  %incdec.ptr82.us = getelementptr inbounds i8, ptr %incdec.ptr75.us, i64 1
  %34 = load i8, ptr %incdec.ptr75.us, align 1, !tbaa !19
  %35 = zext i8 %34 to i64
  %idx.neg85.us = sub nsw i64 0, %35
  %add.ptr86.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg85.us
  %36 = load i8, ptr %add.ptr86.us, align 1, !tbaa !19
  %conv87.us = zext i8 %36 to i32
  %add88.us = add nuw nsw i32 %add81.us, %conv87.us
  %incdec.ptr89.us = getelementptr inbounds i8, ptr %incdec.ptr82.us, i64 1
  %37 = load i8, ptr %incdec.ptr82.us, align 1, !tbaa !19
  %38 = zext i8 %37 to i64
  %idx.neg92.us = sub nsw i64 0, %38
  %add.ptr93.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg92.us
  %39 = load i8, ptr %add.ptr93.us, align 1, !tbaa !19
  %conv94.us = zext i8 %39 to i32
  %add95.us = add nuw nsw i32 %add88.us, %conv94.us
  %incdec.ptr96.us = getelementptr inbounds i8, ptr %incdec.ptr89.us, i64 1
  %40 = load i8, ptr %incdec.ptr89.us, align 1, !tbaa !19
  %41 = zext i8 %40 to i64
  %idx.neg99.us = sub nsw i64 0, %41
  %add.ptr100.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg99.us
  %42 = load i8, ptr %add.ptr100.us, align 1, !tbaa !19
  %conv101.us = zext i8 %42 to i32
  %add102.us = add nuw nsw i32 %add95.us, %conv101.us
  %incdec.ptr103.us = getelementptr inbounds i8, ptr %incdec.ptr96.us, i64 1
  %43 = load i8, ptr %incdec.ptr96.us, align 1, !tbaa !19
  %44 = zext i8 %43 to i64
  %idx.neg106.us = sub nsw i64 0, %44
  %add.ptr107.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg106.us
  %45 = load i8, ptr %add.ptr107.us, align 1, !tbaa !19
  %conv108.us = zext i8 %45 to i32
  %add109.us = add nuw nsw i32 %add102.us, %conv108.us
  %incdec.ptr110.us = getelementptr inbounds i8, ptr %incdec.ptr103.us, i64 1
  %46 = load i8, ptr %incdec.ptr103.us, align 1, !tbaa !19
  %47 = zext i8 %46 to i64
  %idx.neg113.us = sub nsw i64 0, %47
  %add.ptr114.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg113.us
  %48 = load i8, ptr %add.ptr114.us, align 1, !tbaa !19
  %conv115.us = zext i8 %48 to i32
  %add116.us = add nuw nsw i32 %add109.us, %conv115.us
  %49 = load i8, ptr %incdec.ptr110.us, align 1, !tbaa !19
  %50 = zext i8 %49 to i64
  %idx.neg119.us = sub nsw i64 0, %50
  %add.ptr120.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg119.us
  %51 = load i8, ptr %add.ptr120.us, align 1, !tbaa !19
  %conv121.us = zext i8 %51 to i32
  %add122.us = add nuw nsw i32 %add116.us, %conv121.us
  %add.ptr125.us = getelementptr inbounds i8, ptr %incdec.ptr110.us, i64 %idx.ext124
  %incdec.ptr126.us = getelementptr inbounds i8, ptr %add.ptr125.us, i64 1
  %52 = load i8, ptr %add.ptr125.us, align 1, !tbaa !19
  %53 = zext i8 %52 to i64
  %idx.neg129.us = sub nsw i64 0, %53
  %add.ptr130.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg129.us
  %54 = load i8, ptr %add.ptr130.us, align 1, !tbaa !19
  %conv131.us = zext i8 %54 to i32
  %add132.us = add nuw nsw i32 %add122.us, %conv131.us
  %incdec.ptr133.us = getelementptr inbounds i8, ptr %incdec.ptr126.us, i64 1
  %55 = load i8, ptr %incdec.ptr126.us, align 1, !tbaa !19
  %56 = zext i8 %55 to i64
  %idx.neg136.us = sub nsw i64 0, %56
  %add.ptr137.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg136.us
  %57 = load i8, ptr %add.ptr137.us, align 1, !tbaa !19
  %conv138.us = zext i8 %57 to i32
  %add139.us = add nuw nsw i32 %add132.us, %conv138.us
  %58 = load i8, ptr %incdec.ptr133.us, align 1, !tbaa !19
  %59 = zext i8 %58 to i64
  %idx.neg142.us = sub nsw i64 0, %59
  %add.ptr143.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg142.us
  %60 = load i8, ptr %add.ptr143.us, align 1, !tbaa !19
  %conv144.us = zext i8 %60 to i32
  %add145.us = add nuw nsw i32 %add139.us, %conv144.us
  %add.ptr146.us = getelementptr inbounds i8, ptr %incdec.ptr133.us, i64 2
  %incdec.ptr147.us = getelementptr inbounds i8, ptr %add.ptr146.us, i64 1
  %61 = load i8, ptr %add.ptr146.us, align 1, !tbaa !19
  %62 = zext i8 %61 to i64
  %idx.neg150.us = sub nsw i64 0, %62
  %add.ptr151.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg150.us
  %63 = load i8, ptr %add.ptr151.us, align 1, !tbaa !19
  %conv152.us = zext i8 %63 to i32
  %add153.us = add nuw nsw i32 %add145.us, %conv152.us
  %incdec.ptr154.us = getelementptr inbounds i8, ptr %incdec.ptr147.us, i64 1
  %64 = load i8, ptr %incdec.ptr147.us, align 1, !tbaa !19
  %65 = zext i8 %64 to i64
  %idx.neg157.us = sub nsw i64 0, %65
  %add.ptr158.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg157.us
  %66 = load i8, ptr %add.ptr158.us, align 1, !tbaa !19
  %conv159.us = zext i8 %66 to i32
  %add160.us = add nuw nsw i32 %add153.us, %conv159.us
  %67 = load i8, ptr %incdec.ptr154.us, align 1, !tbaa !19
  %68 = zext i8 %67 to i64
  %idx.neg163.us = sub nsw i64 0, %68
  %add.ptr164.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg163.us
  %69 = load i8, ptr %add.ptr164.us, align 1, !tbaa !19
  %conv165.us = zext i8 %69 to i32
  %add166.us = add nuw nsw i32 %add160.us, %conv165.us
  %add.ptr169.us = getelementptr inbounds i8, ptr %incdec.ptr154.us, i64 %idx.ext124
  %incdec.ptr170.us = getelementptr inbounds i8, ptr %add.ptr169.us, i64 1
  %70 = load i8, ptr %add.ptr169.us, align 1, !tbaa !19
  %71 = zext i8 %70 to i64
  %idx.neg173.us = sub nsw i64 0, %71
  %add.ptr174.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg173.us
  %72 = load i8, ptr %add.ptr174.us, align 1, !tbaa !19
  %conv175.us = zext i8 %72 to i32
  %add176.us = add nuw nsw i32 %add166.us, %conv175.us
  %incdec.ptr177.us = getelementptr inbounds i8, ptr %incdec.ptr170.us, i64 1
  %73 = load i8, ptr %incdec.ptr170.us, align 1, !tbaa !19
  %74 = zext i8 %73 to i64
  %idx.neg180.us = sub nsw i64 0, %74
  %add.ptr181.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg180.us
  %75 = load i8, ptr %add.ptr181.us, align 1, !tbaa !19
  %conv182.us = zext i8 %75 to i32
  %add183.us = add nuw nsw i32 %add176.us, %conv182.us
  %incdec.ptr184.us = getelementptr inbounds i8, ptr %incdec.ptr177.us, i64 1
  %76 = load i8, ptr %incdec.ptr177.us, align 1, !tbaa !19
  %77 = zext i8 %76 to i64
  %idx.neg187.us = sub nsw i64 0, %77
  %add.ptr188.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg187.us
  %78 = load i8, ptr %add.ptr188.us, align 1, !tbaa !19
  %conv189.us = zext i8 %78 to i32
  %add190.us = add nuw nsw i32 %add183.us, %conv189.us
  %incdec.ptr191.us = getelementptr inbounds i8, ptr %incdec.ptr184.us, i64 1
  %79 = load i8, ptr %incdec.ptr184.us, align 1, !tbaa !19
  %80 = zext i8 %79 to i64
  %idx.neg194.us = sub nsw i64 0, %80
  %add.ptr195.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg194.us
  %81 = load i8, ptr %add.ptr195.us, align 1, !tbaa !19
  %conv196.us = zext i8 %81 to i32
  %add197.us = add nuw nsw i32 %add190.us, %conv196.us
  %incdec.ptr198.us = getelementptr inbounds i8, ptr %incdec.ptr191.us, i64 1
  %82 = load i8, ptr %incdec.ptr191.us, align 1, !tbaa !19
  %83 = zext i8 %82 to i64
  %idx.neg201.us = sub nsw i64 0, %83
  %add.ptr202.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg201.us
  %84 = load i8, ptr %add.ptr202.us, align 1, !tbaa !19
  %conv203.us = zext i8 %84 to i32
  %add204.us = add nuw nsw i32 %add197.us, %conv203.us
  %incdec.ptr205.us = getelementptr inbounds i8, ptr %incdec.ptr198.us, i64 1
  %85 = load i8, ptr %incdec.ptr198.us, align 1, !tbaa !19
  %86 = zext i8 %85 to i64
  %idx.neg208.us = sub nsw i64 0, %86
  %add.ptr209.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg208.us
  %87 = load i8, ptr %add.ptr209.us, align 1, !tbaa !19
  %conv210.us = zext i8 %87 to i32
  %add211.us = add nuw nsw i32 %add204.us, %conv210.us
  %88 = load i8, ptr %incdec.ptr205.us, align 1, !tbaa !19
  %89 = zext i8 %88 to i64
  %idx.neg214.us = sub nsw i64 0, %89
  %add.ptr215.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg214.us
  %90 = load i8, ptr %add.ptr215.us, align 1, !tbaa !19
  %conv216.us = zext i8 %90 to i32
  %add217.us = add nuw nsw i32 %add211.us, %conv216.us
  %add.ptr220.us = getelementptr inbounds i8, ptr %incdec.ptr205.us, i64 %idx.ext73
  %incdec.ptr221.us = getelementptr inbounds i8, ptr %add.ptr220.us, i64 1
  %91 = load i8, ptr %add.ptr220.us, align 1, !tbaa !19
  %92 = zext i8 %91 to i64
  %idx.neg224.us = sub nsw i64 0, %92
  %add.ptr225.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg224.us
  %93 = load i8, ptr %add.ptr225.us, align 1, !tbaa !19
  %conv226.us = zext i8 %93 to i32
  %add227.us = add nuw nsw i32 %add217.us, %conv226.us
  %incdec.ptr228.us = getelementptr inbounds i8, ptr %incdec.ptr221.us, i64 1
  %94 = load i8, ptr %incdec.ptr221.us, align 1, !tbaa !19
  %95 = zext i8 %94 to i64
  %idx.neg231.us = sub nsw i64 0, %95
  %add.ptr232.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg231.us
  %96 = load i8, ptr %add.ptr232.us, align 1, !tbaa !19
  %conv233.us = zext i8 %96 to i32
  %add234.us = add nuw nsw i32 %add227.us, %conv233.us
  %incdec.ptr235.us = getelementptr inbounds i8, ptr %incdec.ptr228.us, i64 1
  %97 = load i8, ptr %incdec.ptr228.us, align 1, !tbaa !19
  %98 = zext i8 %97 to i64
  %idx.neg238.us = sub nsw i64 0, %98
  %add.ptr239.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg238.us
  %99 = load i8, ptr %add.ptr239.us, align 1, !tbaa !19
  %conv240.us = zext i8 %99 to i32
  %add241.us = add nuw nsw i32 %add234.us, %conv240.us
  %incdec.ptr242.us = getelementptr inbounds i8, ptr %incdec.ptr235.us, i64 1
  %100 = load i8, ptr %incdec.ptr235.us, align 1, !tbaa !19
  %101 = zext i8 %100 to i64
  %idx.neg245.us = sub nsw i64 0, %101
  %add.ptr246.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg245.us
  %102 = load i8, ptr %add.ptr246.us, align 1, !tbaa !19
  %conv247.us = zext i8 %102 to i32
  %add248.us = add nuw nsw i32 %add241.us, %conv247.us
  %103 = load i8, ptr %incdec.ptr242.us, align 1, !tbaa !19
  %104 = zext i8 %103 to i64
  %idx.neg251.us = sub nsw i64 0, %104
  %add.ptr252.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg251.us
  %105 = load i8, ptr %add.ptr252.us, align 1, !tbaa !19
  %conv253.us = zext i8 %105 to i32
  %add254.us = add nuw nsw i32 %add248.us, %conv253.us
  %add.ptr257.us = getelementptr inbounds i8, ptr %incdec.ptr242.us, i64 %idx.ext36
  %incdec.ptr258.us = getelementptr inbounds i8, ptr %add.ptr257.us, i64 1
  %106 = load i8, ptr %add.ptr257.us, align 1, !tbaa !19
  %107 = zext i8 %106 to i64
  %idx.neg261.us = sub nsw i64 0, %107
  %add.ptr262.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg261.us
  %108 = load i8, ptr %add.ptr262.us, align 1, !tbaa !19
  %conv263.us = zext i8 %108 to i32
  %add264.us = add nuw nsw i32 %add254.us, %conv263.us
  %incdec.ptr265.us = getelementptr inbounds i8, ptr %incdec.ptr258.us, i64 1
  %109 = load i8, ptr %incdec.ptr258.us, align 1, !tbaa !19
  %110 = zext i8 %109 to i64
  %idx.neg268.us = sub nsw i64 0, %110
  %add.ptr269.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg268.us
  %111 = load i8, ptr %add.ptr269.us, align 1, !tbaa !19
  %conv270.us = zext i8 %111 to i32
  %add271.us = add nuw nsw i32 %add264.us, %conv270.us
  %112 = load i8, ptr %incdec.ptr265.us, align 1, !tbaa !19
  %113 = zext i8 %112 to i64
  %idx.neg274.us = sub nsw i64 0, %113
  %add.ptr275.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg274.us
  %114 = load i8, ptr %add.ptr275.us, align 1, !tbaa !19
  %conv276.us = zext i8 %114 to i32
  %add277.us = add nuw nsw i32 %add271.us, %conv276.us
  %cmp278.not.us = icmp sgt i32 %add277.us, %max_no
  br i1 %cmp278.not.us, label %for.inc.us, label %if.then.us

if.then.us:                                       ; preds = %for.body7.us
  %sub280.us = sub nsw i32 %max_no, %add277.us
  %arrayidx284.us = getelementptr inbounds i32, ptr %r, i64 %4
  store i32 %sub280.us, ptr %arrayidx284.us, align 4, !tbaa !12
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.then.us, %for.body7.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond3.for.inc285_crit_edge.us, label %for.body7.us, !llvm.loop !53

for.cond3.for.inc285_crit_edge.us:                ; preds = %for.inc.us
  %indvars.iv.next2083 = add nuw nsw i64 %indvars.iv2082, 1
  %exitcond2089.not = icmp eq i64 %indvars.iv.next2083, %wide.trip.count2088
  br i1 %exitcond2089.not, label %for.cond288.preheader, label %for.cond3.preheader.us, !llvm.loop !54

for.cond288.preheader:                            ; preds = %for.cond3.for.inc285_crit_edge.us, %for.cond3.preheader.lr.ph
  %sub289 = add i32 %y_size, -4
  %cmp2902075 = icmp sgt i32 %y_size, 8
  br i1 %cmp2902075, label %for.cond293.preheader.lr.ph, label %for.end1257

for.cond293.preheader.lr.ph:                      ; preds = %for.cond288.preheader
  %cmp2952071 = icmp sgt i32 %x_size, 8
  %sub354 = add nsw i32 %x_size, -3
  %idx.ext355 = sext i32 %sub354 to i64
  %sub406 = add nsw i32 %x_size, -5
  %idx.ext407 = sext i32 %sub406 to i64
  %sub473 = add nsw i32 %x_size, -6
  %idx.ext474 = sext i32 %sub473 to i64
  br i1 %cmp2952071, label %for.cond293.preheader.us.preheader, label %for.end1257

for.cond293.preheader.us.preheader:               ; preds = %for.cond293.preheader.lr.ph
  %sub294 = add i32 %x_size, -4
  %115 = zext i32 %x_size to i64
  %wide.trip.count2104 = zext i32 %sub289 to i64
  %wide.trip.count2094 = zext i32 %sub294 to i64
  br label %for.cond293.preheader.us

for.cond293.preheader.us:                         ; preds = %for.cond293.preheader.us.preheader, %for.cond293.for.inc1255_crit_edge.us
  %indvars.iv2096 = phi i64 [ 4, %for.cond293.preheader.us.preheader ], [ %indvars.iv.next2097, %for.cond293.for.inc1255_crit_edge.us ]
  %116 = mul nsw i64 %indvars.iv2096, %115
  %117 = add nsw i64 %indvars.iv2096, -3
  %118 = mul nsw i64 %117, %115
  %add.ptr323.us = getelementptr inbounds i8, ptr %in, i64 %118
  %add.ptr325.us = getelementptr inbounds i8, ptr %add.ptr323.us, i64 -1
  %add.ptr767.us = getelementptr inbounds i8, ptr %add.ptr323.us, i64 -1
  %119 = trunc i64 %indvars.iv2096 to i32
  %120 = trunc i64 %indvars.iv2096 to i32
  br label %for.body297.us

for.body297.us:                                   ; preds = %for.cond293.preheader.us, %for.inc1252.us
  %indvars.iv2090 = phi i64 [ 4, %for.cond293.preheader.us ], [ %indvars.iv.next2091, %for.inc1252.us ]
  %121 = add nuw nsw i64 %indvars.iv2090, %116
  %arrayidx301.us = getelementptr inbounds i32, ptr %r, i64 %121
  %122 = load i32, ptr %arrayidx301.us, align 4, !tbaa !12
  %cmp302.us = icmp sgt i32 %122, 0
  br i1 %cmp302.us, label %if.then304.us, label %for.inc1252.us

if.then304.us:                                    ; preds = %for.body297.us
  %sub309.us = sub nsw i32 %max_no, %122
  %arrayidx313.us = getelementptr inbounds i8, ptr %in, i64 %121
  %123 = load i8, ptr %arrayidx313.us, align 1, !tbaa !19
  %124 = zext i8 %123 to i64
  %add.ptr316.us = getelementptr inbounds i8, ptr %bp, i64 %124
  %cmp317.us = icmp sgt i32 %sub309.us, 600
  br i1 %cmp317.us, label %if.then319.us, label %if.then761.us

if.then319.us:                                    ; preds = %if.then304.us
  %add.ptr326.us = getelementptr inbounds i8, ptr %add.ptr325.us, i64 %indvars.iv2090
  %incdec.ptr327.us = getelementptr inbounds i8, ptr %add.ptr326.us, i64 1
  %125 = load i8, ptr %add.ptr326.us, align 1, !tbaa !19
  %126 = zext i8 %125 to i64
  %idx.neg330.us = sub nsw i64 0, %126
  %add.ptr331.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg330.us
  %127 = load i8, ptr %add.ptr331.us, align 1, !tbaa !19
  %conv332.us = zext i8 %127 to i32
  %incdec.ptr337.us = getelementptr inbounds i8, ptr %incdec.ptr327.us, i64 1
  %128 = load i8, ptr %incdec.ptr327.us, align 1, !tbaa !19
  %129 = zext i8 %128 to i64
  %idx.neg340.us = sub nsw i64 0, %129
  %add.ptr341.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg340.us
  %130 = load i8, ptr %add.ptr341.us, align 1, !tbaa !19
  %conv342.us = zext i8 %130 to i32
  %mul343.neg1959.us = add nuw nsw i32 %conv342.us, %conv332.us
  %131 = load i8, ptr %incdec.ptr337.us, align 1, !tbaa !19
  %132 = zext i8 %131 to i64
  %idx.neg347.us = sub nsw i64 0, %132
  %add.ptr348.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg347.us
  %133 = load i8, ptr %add.ptr348.us, align 1, !tbaa !19
  %conv349.us = zext i8 %133 to i32
  %mul352.neg1960.us = add nuw nsw i32 %mul343.neg1959.us, %conv349.us
  %add.ptr356.us = getelementptr inbounds i8, ptr %incdec.ptr337.us, i64 %idx.ext355
  %incdec.ptr357.us = getelementptr inbounds i8, ptr %add.ptr356.us, i64 1
  %134 = load i8, ptr %add.ptr356.us, align 1, !tbaa !19
  %135 = zext i8 %134 to i64
  %idx.neg360.us = sub nsw i64 0, %135
  %add.ptr361.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg360.us
  %136 = load i8, ptr %add.ptr361.us, align 1, !tbaa !19
  %conv362.us = zext i8 %136 to i32
  %mul363.us.neg = mul nsw i32 %conv362.us, -2
  %incdec.ptr368.us = getelementptr inbounds i8, ptr %incdec.ptr357.us, i64 1
  %137 = load i8, ptr %incdec.ptr357.us, align 1, !tbaa !19
  %138 = zext i8 %137 to i64
  %idx.neg371.us = sub nsw i64 0, %138
  %add.ptr372.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg371.us
  %139 = load i8, ptr %add.ptr372.us, align 1, !tbaa !19
  %conv373.us = zext i8 %139 to i32
  %incdec.ptr378.us = getelementptr inbounds i8, ptr %incdec.ptr368.us, i64 1
  %140 = load i8, ptr %incdec.ptr368.us, align 1, !tbaa !19
  %141 = zext i8 %140 to i64
  %idx.neg381.us = sub nsw i64 0, %141
  %add.ptr382.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg381.us
  %142 = load i8, ptr %add.ptr382.us, align 1, !tbaa !19
  %conv383.us = zext i8 %142 to i32
  %incdec.ptr386.us = getelementptr inbounds i8, ptr %incdec.ptr378.us, i64 1
  %143 = load i8, ptr %incdec.ptr378.us, align 1, !tbaa !19
  %144 = zext i8 %143 to i64
  %idx.neg389.us = sub nsw i64 0, %144
  %add.ptr390.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg389.us
  %145 = load i8, ptr %add.ptr390.us, align 1, !tbaa !19
  %conv391.us = zext i8 %145 to i32
  %146 = load i8, ptr %incdec.ptr386.us, align 1, !tbaa !19
  %147 = zext i8 %146 to i64
  %idx.neg398.us = sub nsw i64 0, %147
  %add.ptr399.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg398.us
  %148 = load i8, ptr %add.ptr399.us, align 1, !tbaa !19
  %conv400.us = zext i8 %148 to i32
  %mul401.us = shl nuw nsw i32 %conv400.us, 1
  %add.ptr408.us = getelementptr inbounds i8, ptr %incdec.ptr386.us, i64 %idx.ext407
  %incdec.ptr409.us = getelementptr inbounds i8, ptr %add.ptr408.us, i64 1
  %149 = load i8, ptr %add.ptr408.us, align 1, !tbaa !19
  %150 = zext i8 %149 to i64
  %idx.neg412.us = sub nsw i64 0, %150
  %add.ptr413.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg412.us
  %151 = load i8, ptr %add.ptr413.us, align 1, !tbaa !19
  %conv414.us = zext i8 %151 to i32
  %incdec.ptr419.us = getelementptr inbounds i8, ptr %incdec.ptr409.us, i64 1
  %152 = load i8, ptr %incdec.ptr409.us, align 1, !tbaa !19
  %153 = zext i8 %152 to i64
  %idx.neg422.us = sub nsw i64 0, %153
  %add.ptr423.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg422.us
  %154 = load i8, ptr %add.ptr423.us, align 1, !tbaa !19
  %conv424.us = zext i8 %154 to i32
  %incdec.ptr429.us = getelementptr inbounds i8, ptr %incdec.ptr419.us, i64 1
  %155 = load i8, ptr %incdec.ptr419.us, align 1, !tbaa !19
  %156 = zext i8 %155 to i64
  %idx.neg432.us = sub nsw i64 0, %156
  %add.ptr433.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg432.us
  %157 = load i8, ptr %add.ptr433.us, align 1, !tbaa !19
  %conv434.us = zext i8 %157 to i32
  %incdec.ptr438.us = getelementptr inbounds i8, ptr %incdec.ptr429.us, i64 1
  %158 = load i8, ptr %incdec.ptr429.us, align 1, !tbaa !19
  %159 = zext i8 %158 to i64
  %idx.neg441.us = sub nsw i64 0, %159
  %add.ptr442.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg441.us
  %160 = load i8, ptr %add.ptr442.us, align 1, !tbaa !19
  %conv443.us = zext i8 %160 to i32
  %incdec.ptr445.us = getelementptr inbounds i8, ptr %incdec.ptr438.us, i64 1
  %161 = load i8, ptr %incdec.ptr438.us, align 1, !tbaa !19
  %162 = zext i8 %161 to i64
  %idx.neg448.us = sub nsw i64 0, %162
  %add.ptr449.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg448.us
  %163 = load i8, ptr %add.ptr449.us, align 1, !tbaa !19
  %conv450.us = zext i8 %163 to i32
  %incdec.ptr454.us = getelementptr inbounds i8, ptr %incdec.ptr445.us, i64 1
  %164 = load i8, ptr %incdec.ptr445.us, align 1, !tbaa !19
  %165 = zext i8 %164 to i64
  %idx.neg457.us = sub nsw i64 0, %165
  %add.ptr458.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg457.us
  %166 = load i8, ptr %add.ptr458.us, align 1, !tbaa !19
  %conv459.us = zext i8 %166 to i32
  %167 = load i8, ptr %incdec.ptr454.us, align 1, !tbaa !19
  %168 = zext i8 %167 to i64
  %idx.neg466.us = sub nsw i64 0, %168
  %add.ptr467.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg466.us
  %169 = load i8, ptr %add.ptr467.us, align 1, !tbaa !19
  %conv468.us = zext i8 %169 to i32
  %add.ptr475.us = getelementptr inbounds i8, ptr %incdec.ptr454.us, i64 %idx.ext474
  %incdec.ptr476.us = getelementptr inbounds i8, ptr %add.ptr475.us, i64 1
  %170 = load i8, ptr %add.ptr475.us, align 1, !tbaa !19
  %171 = zext i8 %170 to i64
  %idx.neg479.us = sub nsw i64 0, %171
  %add.ptr480.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg479.us
  %172 = load i8, ptr %add.ptr480.us, align 1, !tbaa !19
  %conv481.us = zext i8 %172 to i32
  %incdec.ptr484.us = getelementptr inbounds i8, ptr %incdec.ptr476.us, i64 1
  %173 = load i8, ptr %incdec.ptr476.us, align 1, !tbaa !19
  %174 = zext i8 %173 to i64
  %idx.neg487.us = sub nsw i64 0, %174
  %add.ptr488.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg487.us
  %175 = load i8, ptr %add.ptr488.us, align 1, !tbaa !19
  %conv489.us = zext i8 %175 to i32
  %176 = load i8, ptr %incdec.ptr484.us, align 1, !tbaa !19
  %177 = zext i8 %176 to i64
  %idx.neg494.us = sub nsw i64 0, %177
  %add.ptr495.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg494.us
  %178 = load i8, ptr %add.ptr495.us, align 1, !tbaa !19
  %conv496.us = zext i8 %178 to i32
  %add.ptr498.us = getelementptr inbounds i8, ptr %incdec.ptr484.us, i64 2
  %incdec.ptr499.us = getelementptr inbounds i8, ptr %add.ptr498.us, i64 1
  %179 = load i8, ptr %add.ptr498.us, align 1, !tbaa !19
  %180 = zext i8 %179 to i64
  %idx.neg502.us = sub nsw i64 0, %180
  %add.ptr503.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg502.us
  %181 = load i8, ptr %add.ptr503.us, align 1, !tbaa !19
  %conv504.us = zext i8 %181 to i32
  %incdec.ptr506.us = getelementptr inbounds i8, ptr %incdec.ptr499.us, i64 1
  %182 = load i8, ptr %incdec.ptr499.us, align 1, !tbaa !19
  %183 = zext i8 %182 to i64
  %idx.neg509.us = sub nsw i64 0, %183
  %add.ptr510.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg509.us
  %184 = load i8, ptr %add.ptr510.us, align 1, !tbaa !19
  %conv511.us = zext i8 %184 to i32
  %185 = load i8, ptr %incdec.ptr506.us, align 1, !tbaa !19
  %186 = zext i8 %185 to i64
  %idx.neg516.us = sub nsw i64 0, %186
  %add.ptr517.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg516.us
  %187 = load i8, ptr %add.ptr517.us, align 1, !tbaa !19
  %conv518.us = zext i8 %187 to i32
  %add.ptr523.us = getelementptr inbounds i8, ptr %incdec.ptr506.us, i64 %idx.ext474
  %incdec.ptr524.us = getelementptr inbounds i8, ptr %add.ptr523.us, i64 1
  %188 = load i8, ptr %add.ptr523.us, align 1, !tbaa !19
  %189 = zext i8 %188 to i64
  %idx.neg527.us = sub nsw i64 0, %189
  %add.ptr528.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg527.us
  %190 = load i8, ptr %add.ptr528.us, align 1, !tbaa !19
  %conv529.us = zext i8 %190 to i32
  %incdec.ptr534.us = getelementptr inbounds i8, ptr %incdec.ptr524.us, i64 1
  %191 = load i8, ptr %incdec.ptr524.us, align 1, !tbaa !19
  %192 = zext i8 %191 to i64
  %idx.neg537.us = sub nsw i64 0, %192
  %add.ptr538.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg537.us
  %193 = load i8, ptr %add.ptr538.us, align 1, !tbaa !19
  %conv539.us = zext i8 %193 to i32
  %incdec.ptr544.us = getelementptr inbounds i8, ptr %incdec.ptr534.us, i64 1
  %194 = load i8, ptr %incdec.ptr534.us, align 1, !tbaa !19
  %195 = zext i8 %194 to i64
  %idx.neg547.us = sub nsw i64 0, %195
  %add.ptr548.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg547.us
  %196 = load i8, ptr %add.ptr548.us, align 1, !tbaa !19
  %conv549.us = zext i8 %196 to i32
  %incdec.ptr553.us = getelementptr inbounds i8, ptr %incdec.ptr544.us, i64 1
  %197 = load i8, ptr %incdec.ptr544.us, align 1, !tbaa !19
  %198 = zext i8 %197 to i64
  %idx.neg556.us = sub nsw i64 0, %198
  %add.ptr557.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg556.us
  %199 = load i8, ptr %add.ptr557.us, align 1, !tbaa !19
  %conv558.us = zext i8 %199 to i32
  %incdec.ptr560.us = getelementptr inbounds i8, ptr %incdec.ptr553.us, i64 1
  %200 = load i8, ptr %incdec.ptr553.us, align 1, !tbaa !19
  %201 = zext i8 %200 to i64
  %idx.neg563.us = sub nsw i64 0, %201
  %add.ptr564.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg563.us
  %202 = load i8, ptr %add.ptr564.us, align 1, !tbaa !19
  %conv565.us = zext i8 %202 to i32
  %incdec.ptr569.us = getelementptr inbounds i8, ptr %incdec.ptr560.us, i64 1
  %203 = load i8, ptr %incdec.ptr560.us, align 1, !tbaa !19
  %204 = zext i8 %203 to i64
  %idx.neg572.us = sub nsw i64 0, %204
  %add.ptr573.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg572.us
  %205 = load i8, ptr %add.ptr573.us, align 1, !tbaa !19
  %conv574.us = zext i8 %205 to i32
  %206 = load i8, ptr %incdec.ptr569.us, align 1, !tbaa !19
  %207 = zext i8 %206 to i64
  %idx.neg581.us = sub nsw i64 0, %207
  %add.ptr582.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg581.us
  %208 = load i8, ptr %add.ptr582.us, align 1, !tbaa !19
  %conv583.us = zext i8 %208 to i32
  %add.ptr590.us = getelementptr inbounds i8, ptr %incdec.ptr569.us, i64 %idx.ext407
  %incdec.ptr591.us = getelementptr inbounds i8, ptr %add.ptr590.us, i64 1
  %209 = load i8, ptr %add.ptr590.us, align 1, !tbaa !19
  %210 = zext i8 %209 to i64
  %idx.neg594.us = sub nsw i64 0, %210
  %add.ptr595.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg594.us
  %211 = load i8, ptr %add.ptr595.us, align 1, !tbaa !19
  %conv596.us = zext i8 %211 to i32
  %mul597.us = shl nuw nsw i32 %conv596.us, 1
  %incdec.ptr602.us = getelementptr inbounds i8, ptr %incdec.ptr591.us, i64 1
  %212 = load i8, ptr %incdec.ptr591.us, align 1, !tbaa !19
  %213 = zext i8 %212 to i64
  %idx.neg605.us = sub nsw i64 0, %213
  %add.ptr606.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg605.us
  %214 = load i8, ptr %add.ptr606.us, align 1, !tbaa !19
  %conv607.us = zext i8 %214 to i32
  %incdec.ptr612.us = getelementptr inbounds i8, ptr %incdec.ptr602.us, i64 1
  %215 = load i8, ptr %incdec.ptr602.us, align 1, !tbaa !19
  %216 = zext i8 %215 to i64
  %idx.neg615.us = sub nsw i64 0, %216
  %add.ptr616.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg615.us
  %217 = load i8, ptr %add.ptr616.us, align 1, !tbaa !19
  %conv617.us = zext i8 %217 to i32
  %incdec.ptr620.us = getelementptr inbounds i8, ptr %incdec.ptr612.us, i64 1
  %218 = load i8, ptr %incdec.ptr612.us, align 1, !tbaa !19
  %219 = zext i8 %218 to i64
  %idx.neg623.us = sub nsw i64 0, %219
  %add.ptr624.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg623.us
  %220 = load i8, ptr %add.ptr624.us, align 1, !tbaa !19
  %conv625.us = zext i8 %220 to i32
  %221 = load i8, ptr %incdec.ptr620.us, align 1, !tbaa !19
  %222 = zext i8 %221 to i64
  %idx.neg632.us = sub nsw i64 0, %222
  %add.ptr633.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg632.us
  %223 = load i8, ptr %add.ptr633.us, align 1, !tbaa !19
  %conv634.us = zext i8 %223 to i32
  %mul635.us = shl nuw nsw i32 %conv634.us, 1
  %add.ptr642.us = getelementptr inbounds i8, ptr %incdec.ptr620.us, i64 %idx.ext355
  %incdec.ptr643.us = getelementptr inbounds i8, ptr %add.ptr642.us, i64 1
  %224 = load i8, ptr %add.ptr642.us, align 1, !tbaa !19
  %225 = zext i8 %224 to i64
  %idx.neg646.us = sub nsw i64 0, %225
  %add.ptr647.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg646.us
  %226 = load i8, ptr %add.ptr647.us, align 1, !tbaa !19
  %conv648.us = zext i8 %226 to i32
  %incdec.ptr653.us = getelementptr inbounds i8, ptr %incdec.ptr643.us, i64 1
  %227 = load i8, ptr %incdec.ptr643.us, align 1, !tbaa !19
  %228 = zext i8 %227 to i64
  %idx.neg656.us = sub nsw i64 0, %228
  %add.ptr657.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg656.us
  %229 = load i8, ptr %add.ptr657.us, align 1, !tbaa !19
  %conv658.us = zext i8 %229 to i32
  %230 = load i8, ptr %incdec.ptr653.us, align 1, !tbaa !19
  %231 = zext i8 %230 to i64
  %idx.neg663.us = sub nsw i64 0, %231
  %add.ptr664.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg663.us
  %232 = load i8, ptr %add.ptr664.us, align 1, !tbaa !19
  %conv665.us = zext i8 %232 to i32
  %233 = add nuw nsw i32 %conv424.us, %conv489.us
  %234 = add nuw nsw i32 %conv459.us, %conv511.us
  %235 = add nuw nsw i32 %233, %conv539.us
  %reass.add1995.us = sub nsw i32 %234, %235
  %reass.add1996.us = add nsw i32 %reass.add1995.us, %conv574.us
  %reass.mul.us = shl nsw i32 %reass.add1996.us, 1
  %236 = add nuw nsw i32 %conv414.us, %conv481.us
  %237 = add nuw nsw i32 %conv468.us, %conv518.us
  %238 = add nuw nsw i32 %236, %conv529.us
  %reass.add2003.us = sub nsw i32 %237, %238
  %reass.add2004.us = add nsw i32 %reass.add2003.us, %conv583.us
  %reass.mul2005.us = mul nsw i32 %reass.add2004.us, 3
  %239 = add nsw i32 %mul363.us.neg, %conv349.us
  %240 = add nuw nsw i32 %conv332.us, %conv373.us
  %sub483.us = sub nsw i32 %239, %240
  %sub491.us = add nsw i32 %sub483.us, %conv391.us
  %sub497.us = add nsw i32 %sub491.us, %mul401.us
  %241 = add nsw i32 %sub497.us, %conv450.us
  %242 = add nuw nsw i32 %conv434.us, %conv496.us
  %243 = add nsw i32 %241, %conv504.us
  %244 = add nuw nsw i32 %242, %conv549.us
  %245 = add nsw i32 %243, %conv565.us
  %246 = add nuw nsw i32 %244, %mul597.us
  %247 = add nuw nsw i32 %246, %conv607.us
  %add576.us = sub nsw i32 %245, %247
  %add585.us = add i32 %add576.us, %reass.mul.us
  %sub608.us = add i32 %add585.us, %reass.mul2005.us
  %add626.us = add i32 %sub608.us, %conv625.us
  %add636.us = add i32 %add626.us, %mul635.us
  %sub649.us = sub i32 %add636.us, %conv648.us
  %add666.us = add i32 %sub649.us, %conv665.us
  %248 = add nuw nsw i32 %conv383.us, %conv373.us
  %249 = add nuw nsw i32 %248, %conv391.us
  %reass.add2011.us = sub nsw i32 %conv607.us, %249
  %reass.add2012.us = add nsw i32 %reass.add2011.us, %conv617.us
  %reass.add2013.us = add nsw i32 %reass.add2012.us, %conv625.us
  %reass.mul2014.us = shl nsw i32 %reass.add2013.us, 1
  %reass.add2016.us = sub nsw i32 %conv648.us, %mul352.neg1960.us
  %reass.add2017.us = add nsw i32 %reass.add2016.us, %conv658.us
  %reass.add2018.us = add nsw i32 %reass.add2017.us, %conv665.us
  %reass.mul2019.us = mul nsw i32 %reass.add2018.us, 3
  %250 = add nuw nsw i32 %mul401.us, %conv414.us
  %251 = add nuw nsw i32 %250, %conv424.us
  %252 = add nuw nsw i32 %251, %conv434.us
  %253 = add nuw nsw i32 %252, %conv443.us
  %254 = add nuw nsw i32 %253, %conv450.us
  %255 = add nuw nsw i32 %254, %conv459.us
  %256 = add nuw nsw i32 %255, %conv468.us
  %add559.us = sub nsw i32 %mul363.us.neg, %256
  %add568.us = add nsw i32 %add559.us, %conv529.us
  %add578.us = add nsw i32 %add568.us, %conv539.us
  %add587.us = add nsw i32 %add578.us, %conv549.us
  %add601.us = add nsw i32 %add587.us, %conv558.us
  %add611.us = add nsw i32 %add601.us, %conv565.us
  %add619.us = add nsw i32 %add611.us, %conv574.us
  %add629.us = add nsw i32 %add619.us, %conv583.us
  %add639.us = add nsw i32 %add629.us, %mul597.us
  %add652.us = add nsw i32 %add639.us, %mul635.us
  %add660.us = add i32 %add652.us, %reass.mul2014.us
  %add669.us = add i32 %add660.us, %reass.mul2019.us
  %mul670.us = mul nsw i32 %add666.us, %add666.us
  %mul671.us = mul nsw i32 %add669.us, %add669.us
  %add672.us = add nuw nsw i32 %mul671.us, %mul670.us
  %conv673.us = sitofp i32 %add672.us to float
  %sqrtf.us = tail call float @sqrtf(float noundef %conv673.us) #8
  %conv676.us = fpext float %sqrtf.us to double
  %conv677.us = sitofp i32 %sub309.us to float
  %conv678.us = fpext float %conv677.us to double
  %mul679.us = fmul double %conv678.us, 9.000000e-01
  %cmp680.us = fcmp olt double %mul679.us, %conv676.us
  br i1 %cmp680.us, label %if.then682.us, label %if.then761.us

if.then761.us:                                    ; preds = %if.then319.us, %if.then304.us
  %add.ptr768.us = getelementptr inbounds i8, ptr %add.ptr767.us, i64 %indvars.iv2090
  %incdec.ptr769.us = getelementptr inbounds i8, ptr %add.ptr768.us, i64 1
  %257 = load i8, ptr %add.ptr768.us, align 1, !tbaa !19
  %258 = zext i8 %257 to i64
  %idx.neg772.us = sub nsw i64 0, %258
  %add.ptr773.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg772.us
  %259 = load i8, ptr %add.ptr773.us, align 1, !tbaa !19
  %conv774.us = zext i8 %259 to i32
  %incdec.ptr782.us = getelementptr inbounds i8, ptr %incdec.ptr769.us, i64 1
  %260 = load i8, ptr %incdec.ptr769.us, align 1, !tbaa !19
  %261 = zext i8 %260 to i64
  %idx.neg785.us = sub nsw i64 0, %261
  %add.ptr786.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg785.us
  %262 = load i8, ptr %add.ptr786.us, align 1, !tbaa !19
  %conv787.us = zext i8 %262 to i32
  %263 = load i8, ptr %incdec.ptr782.us, align 1, !tbaa !19
  %264 = zext i8 %263 to i64
  %idx.neg792.us = sub nsw i64 0, %264
  %add.ptr793.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg792.us
  %265 = load i8, ptr %add.ptr793.us, align 1, !tbaa !19
  %conv794.us = zext i8 %265 to i32
  %add.ptr804.us = getelementptr inbounds i8, ptr %incdec.ptr782.us, i64 %idx.ext355
  %incdec.ptr805.us = getelementptr inbounds i8, ptr %add.ptr804.us, i64 1
  %266 = load i8, ptr %add.ptr804.us, align 1, !tbaa !19
  %267 = zext i8 %266 to i64
  %idx.neg808.us = sub nsw i64 0, %267
  %add.ptr809.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg808.us
  %268 = load i8, ptr %add.ptr809.us, align 1, !tbaa !19
  %conv810.us = zext i8 %268 to i32
  %mul811.us = shl nuw nsw i32 %conv810.us, 2
  %incdec.ptr819.us = getelementptr inbounds i8, ptr %incdec.ptr805.us, i64 1
  %269 = load i8, ptr %incdec.ptr805.us, align 1, !tbaa !19
  %270 = zext i8 %269 to i64
  %idx.neg822.us = sub nsw i64 0, %270
  %add.ptr823.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg822.us
  %271 = load i8, ptr %add.ptr823.us, align 1, !tbaa !19
  %conv824.us = zext i8 %271 to i32
  %incdec.ptr832.us = getelementptr inbounds i8, ptr %incdec.ptr819.us, i64 1
  %272 = load i8, ptr %incdec.ptr819.us, align 1, !tbaa !19
  %273 = zext i8 %272 to i64
  %idx.neg835.us = sub nsw i64 0, %273
  %add.ptr836.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg835.us
  %274 = load i8, ptr %add.ptr836.us, align 1, !tbaa !19
  %conv837.us = zext i8 %274 to i32
  %incdec.ptr840.us = getelementptr inbounds i8, ptr %incdec.ptr832.us, i64 1
  %275 = load i8, ptr %incdec.ptr832.us, align 1, !tbaa !19
  %276 = zext i8 %275 to i64
  %idx.neg843.us = sub nsw i64 0, %276
  %add.ptr844.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg843.us
  %277 = load i8, ptr %add.ptr844.us, align 1, !tbaa !19
  %conv845.us = zext i8 %277 to i32
  %278 = load i8, ptr %incdec.ptr840.us, align 1, !tbaa !19
  %279 = zext i8 %278 to i64
  %idx.neg855.us = sub nsw i64 0, %279
  %add.ptr856.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg855.us
  %280 = load i8, ptr %add.ptr856.us, align 1, !tbaa !19
  %conv857.us = zext i8 %280 to i32
  %mul858.us = shl nuw nsw i32 %conv857.us, 2
  %add.ptr868.us = getelementptr inbounds i8, ptr %incdec.ptr840.us, i64 %idx.ext407
  %incdec.ptr869.us = getelementptr inbounds i8, ptr %add.ptr868.us, i64 1
  %281 = load i8, ptr %add.ptr868.us, align 1, !tbaa !19
  %282 = zext i8 %281 to i64
  %idx.neg872.us = sub nsw i64 0, %282
  %add.ptr873.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg872.us
  %283 = load i8, ptr %add.ptr873.us, align 1, !tbaa !19
  %conv874.us = zext i8 %283 to i32
  %incdec.ptr882.us = getelementptr inbounds i8, ptr %incdec.ptr869.us, i64 1
  %284 = load i8, ptr %incdec.ptr869.us, align 1, !tbaa !19
  %285 = zext i8 %284 to i64
  %idx.neg885.us = sub nsw i64 0, %285
  %add.ptr886.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg885.us
  %286 = load i8, ptr %add.ptr886.us, align 1, !tbaa !19
  %conv887.us = zext i8 %286 to i32
  %incdec.ptr895.us = getelementptr inbounds i8, ptr %incdec.ptr882.us, i64 1
  %287 = load i8, ptr %incdec.ptr882.us, align 1, !tbaa !19
  %288 = zext i8 %287 to i64
  %idx.neg898.us = sub nsw i64 0, %288
  %add.ptr899.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg898.us
  %289 = load i8, ptr %add.ptr899.us, align 1, !tbaa !19
  %conv900.us = zext i8 %289 to i32
  %incdec.ptr906.us = getelementptr inbounds i8, ptr %incdec.ptr895.us, i64 1
  %290 = load i8, ptr %incdec.ptr895.us, align 1, !tbaa !19
  %291 = zext i8 %290 to i64
  %idx.neg909.us = sub nsw i64 0, %291
  %add.ptr910.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg909.us
  %292 = load i8, ptr %add.ptr910.us, align 1, !tbaa !19
  %conv911.us = zext i8 %292 to i32
  %incdec.ptr913.us = getelementptr inbounds i8, ptr %incdec.ptr906.us, i64 1
  %293 = load i8, ptr %incdec.ptr906.us, align 1, !tbaa !19
  %294 = zext i8 %293 to i64
  %idx.neg916.us = sub nsw i64 0, %294
  %add.ptr917.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg916.us
  %295 = load i8, ptr %add.ptr917.us, align 1, !tbaa !19
  %conv918.us = zext i8 %295 to i32
  %incdec.ptr924.us = getelementptr inbounds i8, ptr %incdec.ptr913.us, i64 1
  %296 = load i8, ptr %incdec.ptr913.us, align 1, !tbaa !19
  %297 = zext i8 %296 to i64
  %idx.neg927.us = sub nsw i64 0, %297
  %add.ptr928.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg927.us
  %298 = load i8, ptr %add.ptr928.us, align 1, !tbaa !19
  %conv929.us = zext i8 %298 to i32
  %299 = load i8, ptr %incdec.ptr924.us, align 1, !tbaa !19
  %300 = zext i8 %299 to i64
  %idx.neg939.us = sub nsw i64 0, %300
  %add.ptr940.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg939.us
  %301 = load i8, ptr %add.ptr940.us, align 1, !tbaa !19
  %conv941.us = zext i8 %301 to i32
  %add.ptr951.us = getelementptr inbounds i8, ptr %incdec.ptr924.us, i64 %idx.ext474
  %incdec.ptr952.us = getelementptr inbounds i8, ptr %add.ptr951.us, i64 1
  %incdec.ptr960.us = getelementptr inbounds i8, ptr %incdec.ptr952.us, i64 1
  %add.ptr974.us = getelementptr inbounds i8, ptr %incdec.ptr960.us, i64 2
  %incdec.ptr975.us = getelementptr inbounds i8, ptr %add.ptr974.us, i64 1
  %incdec.ptr982.us = getelementptr inbounds i8, ptr %incdec.ptr975.us, i64 1
  %add.ptr999.us = getelementptr inbounds i8, ptr %incdec.ptr982.us, i64 %idx.ext474
  %incdec.ptr1000.us = getelementptr inbounds i8, ptr %add.ptr999.us, i64 1
  %302 = load i8, ptr %add.ptr999.us, align 1, !tbaa !19
  %303 = zext i8 %302 to i64
  %idx.neg1003.us = sub nsw i64 0, %303
  %add.ptr1004.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1003.us
  %304 = load i8, ptr %add.ptr1004.us, align 1, !tbaa !19
  %conv1005.us = zext i8 %304 to i32
  %incdec.ptr1013.us = getelementptr inbounds i8, ptr %incdec.ptr1000.us, i64 1
  %305 = load i8, ptr %incdec.ptr1000.us, align 1, !tbaa !19
  %306 = zext i8 %305 to i64
  %idx.neg1016.us = sub nsw i64 0, %306
  %add.ptr1017.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1016.us
  %307 = load i8, ptr %add.ptr1017.us, align 1, !tbaa !19
  %conv1018.us = zext i8 %307 to i32
  %incdec.ptr1026.us = getelementptr inbounds i8, ptr %incdec.ptr1013.us, i64 1
  %308 = load i8, ptr %incdec.ptr1013.us, align 1, !tbaa !19
  %309 = zext i8 %308 to i64
  %idx.neg1029.us = sub nsw i64 0, %309
  %add.ptr1030.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1029.us
  %310 = load i8, ptr %add.ptr1030.us, align 1, !tbaa !19
  %conv1031.us = zext i8 %310 to i32
  %incdec.ptr1037.us = getelementptr inbounds i8, ptr %incdec.ptr1026.us, i64 1
  %311 = load i8, ptr %incdec.ptr1026.us, align 1, !tbaa !19
  %312 = zext i8 %311 to i64
  %idx.neg1040.us = sub nsw i64 0, %312
  %add.ptr1041.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1040.us
  %313 = load i8, ptr %add.ptr1041.us, align 1, !tbaa !19
  %conv1042.us = zext i8 %313 to i32
  %incdec.ptr1044.us = getelementptr inbounds i8, ptr %incdec.ptr1037.us, i64 1
  %314 = load i8, ptr %incdec.ptr1037.us, align 1, !tbaa !19
  %315 = zext i8 %314 to i64
  %idx.neg1047.us = sub nsw i64 0, %315
  %add.ptr1048.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1047.us
  %316 = load i8, ptr %add.ptr1048.us, align 1, !tbaa !19
  %conv1049.us = zext i8 %316 to i32
  %incdec.ptr1055.us = getelementptr inbounds i8, ptr %incdec.ptr1044.us, i64 1
  %317 = load i8, ptr %incdec.ptr1044.us, align 1, !tbaa !19
  %318 = zext i8 %317 to i64
  %idx.neg1058.us = sub nsw i64 0, %318
  %add.ptr1059.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1058.us
  %319 = load i8, ptr %add.ptr1059.us, align 1, !tbaa !19
  %conv1060.us = zext i8 %319 to i32
  %320 = load i8, ptr %incdec.ptr1055.us, align 1, !tbaa !19
  %321 = zext i8 %320 to i64
  %idx.neg1070.us = sub nsw i64 0, %321
  %add.ptr1071.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1070.us
  %322 = load i8, ptr %add.ptr1071.us, align 1, !tbaa !19
  %conv1072.us = zext i8 %322 to i32
  %add.ptr1082.us = getelementptr inbounds i8, ptr %incdec.ptr1055.us, i64 %idx.ext407
  %incdec.ptr1083.us = getelementptr inbounds i8, ptr %add.ptr1082.us, i64 1
  %323 = load i8, ptr %add.ptr1082.us, align 1, !tbaa !19
  %324 = zext i8 %323 to i64
  %idx.neg1086.us = sub nsw i64 0, %324
  %add.ptr1087.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1086.us
  %325 = load i8, ptr %add.ptr1087.us, align 1, !tbaa !19
  %conv1088.us = zext i8 %325 to i32
  %mul1089.us = shl nuw nsw i32 %conv1088.us, 2
  %incdec.ptr1097.us = getelementptr inbounds i8, ptr %incdec.ptr1083.us, i64 1
  %326 = load i8, ptr %incdec.ptr1083.us, align 1, !tbaa !19
  %327 = zext i8 %326 to i64
  %idx.neg1100.us = sub nsw i64 0, %327
  %add.ptr1101.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1100.us
  %328 = load i8, ptr %add.ptr1101.us, align 1, !tbaa !19
  %conv1102.us = zext i8 %328 to i32
  %incdec.ptr1110.us = getelementptr inbounds i8, ptr %incdec.ptr1097.us, i64 1
  %329 = load i8, ptr %incdec.ptr1097.us, align 1, !tbaa !19
  %330 = zext i8 %329 to i64
  %idx.neg1113.us = sub nsw i64 0, %330
  %add.ptr1114.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1113.us
  %331 = load i8, ptr %add.ptr1114.us, align 1, !tbaa !19
  %conv1115.us = zext i8 %331 to i32
  %incdec.ptr1118.us = getelementptr inbounds i8, ptr %incdec.ptr1110.us, i64 1
  %332 = load i8, ptr %incdec.ptr1110.us, align 1, !tbaa !19
  %333 = zext i8 %332 to i64
  %idx.neg1121.us = sub nsw i64 0, %333
  %add.ptr1122.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1121.us
  %334 = load i8, ptr %add.ptr1122.us, align 1, !tbaa !19
  %conv1123.us = zext i8 %334 to i32
  %335 = load i8, ptr %incdec.ptr1118.us, align 1, !tbaa !19
  %336 = zext i8 %335 to i64
  %idx.neg1133.us = sub nsw i64 0, %336
  %add.ptr1134.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1133.us
  %337 = load i8, ptr %add.ptr1134.us, align 1, !tbaa !19
  %conv1135.us = zext i8 %337 to i32
  %mul1136.us = shl nuw nsw i32 %conv1135.us, 2
  %add.ptr1146.us = getelementptr inbounds i8, ptr %incdec.ptr1118.us, i64 %idx.ext355
  %incdec.ptr1147.us = getelementptr inbounds i8, ptr %add.ptr1146.us, i64 1
  %338 = load i8, ptr %add.ptr1146.us, align 1, !tbaa !19
  %339 = zext i8 %338 to i64
  %idx.neg1150.us = sub nsw i64 0, %339
  %add.ptr1151.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1150.us
  %340 = load i8, ptr %add.ptr1151.us, align 1, !tbaa !19
  %conv1152.us = zext i8 %340 to i32
  %incdec.ptr1160.us = getelementptr inbounds i8, ptr %incdec.ptr1147.us, i64 1
  %341 = load i8, ptr %incdec.ptr1147.us, align 1, !tbaa !19
  %342 = zext i8 %341 to i64
  %idx.neg1163.us = sub nsw i64 0, %342
  %add.ptr1164.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1163.us
  %343 = load i8, ptr %add.ptr1164.us, align 1, !tbaa !19
  %conv1165.us = zext i8 %343 to i32
  %344 = load i8, ptr %incdec.ptr1160.us, align 1, !tbaa !19
  %345 = zext i8 %344 to i64
  %idx.neg1170.us = sub nsw i64 0, %345
  %add.ptr1171.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1170.us
  %346 = load i8, ptr %add.ptr1171.us, align 1, !tbaa !19
  %conv1172.us = zext i8 %346 to i32
  %reass.add2020.us = add nuw nsw i32 %conv837.us, %conv824.us
  %reass.add2021.us = add nuw nsw i32 %reass.add2020.us, %conv845.us
  %reass.add2022.us = add nuw nsw i32 %reass.add2021.us, %conv1102.us
  %reass.add2023.us = add nuw nsw i32 %reass.add2022.us, %conv1115.us
  %reass.add2024.us = add nuw nsw i32 %reass.add2023.us, %conv1123.us
  %reass.mul2025.us = shl nuw nsw i32 %reass.add2024.us, 2
  %reass.add2026.us = add nuw nsw i32 %conv787.us, %conv774.us
  %reass.add2027.us = add nuw nsw i32 %reass.add2026.us, %conv794.us
  %mul7771957.us = add nuw nsw i32 %reass.add2027.us, %conv1152.us
  %add7891958.us = add nuw nsw i32 %mul7771957.us, %conv1165.us
  %reass.add2028.us = add nuw nsw i32 %add7891958.us, %conv1172.us
  %reass.mul2029.us = mul nuw nsw i32 %reass.add2028.us, 9
  %add912.us = add nuw nsw i32 %mul858.us, %mul811.us
  %add921.us = add nuw nsw i32 %add912.us, %conv874.us
  %add933.us = add nuw nsw i32 %add921.us, %conv887.us
  %add945.us = add nuw nsw i32 %add933.us, %conv900.us
  %add1009.us = add nuw nsw i32 %add945.us, %conv911.us
  %add1022.us = add nuw nsw i32 %add1009.us, %conv918.us
  %add1034.us = add nuw nsw i32 %add1022.us, %conv929.us
  %add1043.us = add nuw nsw i32 %add1034.us, %conv941.us
  %add1052.us = add nuw nsw i32 %add1043.us, %conv1005.us
  %add1064.us = add nuw nsw i32 %add1052.us, %conv1018.us
  %add1076.us = add nuw nsw i32 %add1064.us, %conv1031.us
  %add1093.us = add nuw nsw i32 %add1076.us, %conv1042.us
  %add1106.us = add nuw nsw i32 %add1093.us, %conv1049.us
  %add1117.us = add nuw nsw i32 %add1106.us, %conv1060.us
  %add1127.us = add nuw nsw i32 %add1117.us, %conv1072.us
  %add1140.us = add nuw nsw i32 %add1127.us, %mul1089.us
  %add1156.us = add nuw nsw i32 %add1140.us, %mul1136.us
  %add1167.us = add nuw nsw i32 %add1156.us, %reass.mul2025.us
  %add1176.us = add nuw nsw i32 %add1167.us, %reass.mul2029.us
  %347 = add nuw nsw i32 %conv824.us, %conv887.us
  %348 = add nuw nsw i32 %conv845.us, %conv929.us
  %349 = add nuw nsw i32 %348, %conv1018.us
  %350 = add nuw nsw i32 %347, %conv1060.us
  %351 = add nuw nsw i32 %349, %conv1102.us
  %reass.add2039.us = sub nsw i32 %350, %351
  %reass.add2040.us = add nsw i32 %reass.add2039.us, %conv1123.us
  %reass.mul2041.us = shl nsw i32 %reass.add2040.us, 1
  %352 = add nuw nsw i32 %conv774.us, %conv874.us
  %353 = add nuw nsw i32 %conv794.us, %conv941.us
  %354 = add nuw nsw i32 %353, %conv1005.us
  %355 = add nuw nsw i32 %352, %conv1072.us
  %356 = add nuw nsw i32 %354, %conv1152.us
  %reass.add2051.us = sub nsw i32 %355, %356
  %reass.add2052.us = add nsw i32 %reass.add2051.us, %conv1172.us
  %reass.mul2053.us = mul nsw i32 %reass.add2052.us, 3
  %357 = add nuw nsw i32 %mul811.us, %conv900.us
  %358 = add nuw nsw i32 %mul858.us, %conv918.us
  %359 = add nuw nsw i32 %358, %conv1031.us
  %360 = add nuw nsw i32 %357, %conv1049.us
  %361 = add nuw nsw i32 %359, %mul1089.us
  %add1130.us = sub nsw i32 %360, %361
  %add1143.us = add nsw i32 %add1130.us, %mul1136.us
  %sub1159.us = add i32 %add1143.us, %reass.mul2041.us
  %add1179.us = add i32 %sub1159.us, %reass.mul2053.us
  %cmp1180.us = icmp eq i32 %add1176.us, 0
  br i1 %cmp1180.us, label %if.end1204.us, label %if.end1187.us

if.end1187.us:                                    ; preds = %if.then761.us
  %362 = load i8, ptr %add.ptr951.us, align 1, !tbaa !19
  %363 = zext i8 %362 to i64
  %idx.neg955.us = sub nsw i64 0, %363
  %add.ptr956.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg955.us
  %364 = load i8, ptr %add.ptr956.us, align 1, !tbaa !19
  %conv957.us = zext i8 %364 to i32
  %365 = load i8, ptr %incdec.ptr952.us, align 1, !tbaa !19
  %366 = zext i8 %365 to i64
  %idx.neg963.us = sub nsw i64 0, %366
  %add.ptr964.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg963.us
  %367 = load i8, ptr %add.ptr964.us, align 1, !tbaa !19
  %conv965.us = zext i8 %367 to i32
  %368 = load i8, ptr %incdec.ptr960.us, align 1, !tbaa !19
  %369 = zext i8 %368 to i64
  %idx.neg970.us = sub nsw i64 0, %369
  %add.ptr971.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg970.us
  %370 = load i8, ptr %add.ptr971.us, align 1, !tbaa !19
  %conv972.us = zext i8 %370 to i32
  %371 = load i8, ptr %add.ptr974.us, align 1, !tbaa !19
  %372 = zext i8 %371 to i64
  %idx.neg978.us = sub nsw i64 0, %372
  %add.ptr979.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg978.us
  %373 = load i8, ptr %add.ptr979.us, align 1, !tbaa !19
  %conv980.us = zext i8 %373 to i32
  %374 = load i8, ptr %incdec.ptr975.us, align 1, !tbaa !19
  %375 = zext i8 %374 to i64
  %idx.neg985.us = sub nsw i64 0, %375
  %add.ptr986.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg985.us
  %376 = load i8, ptr %add.ptr986.us, align 1, !tbaa !19
  %conv987.us = zext i8 %376 to i32
  %377 = load i8, ptr %incdec.ptr982.us, align 1, !tbaa !19
  %378 = zext i8 %377 to i64
  %idx.neg992.us = sub nsw i64 0, %378
  %add.ptr993.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg992.us
  %379 = load i8, ptr %add.ptr993.us, align 1, !tbaa !19
  %conv994.us = zext i8 %379 to i32
  %reass.add2054.us = add nuw nsw i32 %conv929.us, %conv887.us
  %reass.add2055.us = add nuw nsw i32 %reass.add2054.us, %conv1018.us
  %reass.add2056.us = add nuw nsw i32 %reass.add2055.us, %conv1060.us
  %reass.add2057.us = add nuw nsw i32 %reass.add2056.us, %conv965.us
  %reass.add2058.us = add nuw nsw i32 %reass.add2057.us, %conv987.us
  %reass.mul2059.us = shl nuw nsw i32 %reass.add2058.us, 2
  %reass.add2060.us = add nuw nsw i32 %conv941.us, %conv874.us
  %reass.add2061.us = add nuw nsw i32 %reass.add2060.us, %conv1005.us
  %reass.add2062.us = add nuw nsw i32 %reass.add2061.us, %conv1072.us
  %reass.add2063.us = add nuw nsw i32 %reass.add2062.us, %conv957.us
  %reass.add2064.us = add nuw nsw i32 %reass.add2063.us, %conv994.us
  %reass.mul2065.us = mul nuw nsw i32 %reass.add2064.us, 9
  %add943.us = add nuw nsw i32 %conv794.us, %conv774.us
  %add959.us = add nuw nsw i32 %add943.us, %mul811.us
  %add967.us = add nuw nsw i32 %add959.us, %conv824.us
  %add973.us = add nuw nsw i32 %add967.us, %conv845.us
  %add981.us = add nuw nsw i32 %add973.us, %mul858.us
  %add989.us = add nuw nsw i32 %add981.us, %conv900.us
  %add996.us = add nuw nsw i32 %add989.us, %conv918.us
  %add1007.us = add nuw nsw i32 %add996.us, %conv1031.us
  %add1020.us = add nuw nsw i32 %add1007.us, %conv1049.us
  %add1032.us = add nuw nsw i32 %add1020.us, %mul1089.us
  %add1050.us = add nuw nsw i32 %add1032.us, %conv1102.us
  %add1062.us = add nuw nsw i32 %add1050.us, %conv1123.us
  %add1074.us = add nuw nsw i32 %add1062.us, %mul1136.us
  %add1090.us = add nuw nsw i32 %add1074.us, %conv1152.us
  %add1103.us = add nuw nsw i32 %add1090.us, %conv1172.us
  %add1124.us = add nuw nsw i32 %add1103.us, %conv972.us
  %add1137.us = add nuw nsw i32 %add1124.us, %conv980.us
  %add1153.us = add nuw nsw i32 %add1137.us, %reass.mul2059.us
  %add1173.us = add nuw nsw i32 %add1153.us, %reass.mul2065.us
  %conv1184.us = sitofp i32 %add1173.us to float
  %conv1185.us = sitofp i32 %add1176.us to float
  %div1186.us = fdiv float %conv1184.us, %conv1185.us
  %cmp1189.us = fcmp olt float %div1186.us, 5.000000e-01
  br i1 %cmp1189.us, label %if.end1204.us, label %if.else1192.us

if.else1192.us:                                   ; preds = %if.end1187.us
  %cmp1194.us = fcmp ogt float %div1186.us, 2.000000e+00
  br i1 %cmp1194.us, label %if.end1204.us, label %if.else1197.us

if.else1197.us:                                   ; preds = %if.else1192.us
  %cmp1198.inv.us = icmp slt i32 %add1179.us, 1
  %.1965.us = select i1 %cmp1198.inv.us, i32 1, i32 -1
  br label %if.end1204.us

if.end1204.us:                                    ; preds = %if.else1197.us, %if.else1192.us, %if.end1187.us, %if.then761.us
  %a.1.us = phi i32 [ 0, %if.end1187.us ], [ 1, %if.else1192.us ], [ %.1965.us, %if.else1197.us ], [ 1, %if.then761.us ]
  %b.1.us = phi i32 [ 1, %if.end1187.us ], [ 0, %if.else1192.us ], [ 1, %if.else1197.us ], [ 0, %if.then761.us ]
  %add1205.us = add nsw i32 %a.1.us, %119
  %mul1206.us = mul nsw i32 %add1205.us, %x_size
  %380 = trunc i64 %indvars.iv2090 to i32
  %add1207.us = add nuw nsw i32 %b.1.us, %380
  %add1208.us = add i32 %add1207.us, %mul1206.us
  %idxprom1209.us = sext i32 %add1208.us to i64
  %arrayidx1210.us = getelementptr inbounds i32, ptr %r, i64 %idxprom1209.us
  %381 = load i32, ptr %arrayidx1210.us, align 4, !tbaa !12
  %cmp1211.us = icmp sgt i32 %122, %381
  br i1 %cmp1211.us, label %land.lhs.true1213.us, label %for.inc1252.us

land.lhs.true1213.us:                             ; preds = %if.end1204.us
  %sub1214.us = sub nsw i32 %119, %a.1.us
  %mul1215.us = mul nsw i32 %sub1214.us, %x_size
  %add1216.us = sub nsw i32 %380, %b.1.us
  %sub1217.us = add i32 %add1216.us, %mul1215.us
  %idxprom1218.us = sext i32 %sub1217.us to i64
  %arrayidx1219.us = getelementptr inbounds i32, ptr %r, i64 %idxprom1218.us
  %382 = load i32, ptr %arrayidx1219.us, align 4, !tbaa !12
  %cmp1220.not.us = icmp slt i32 %122, %382
  br i1 %cmp1220.not.us, label %for.inc1252.us, label %land.lhs.true1222.us

land.lhs.true1222.us:                             ; preds = %land.lhs.true1213.us
  %mul1223.us = shl nsw i32 %a.1.us, 1
  %add1224.us = add nsw i32 %mul1223.us, %119
  %mul1225.us = mul nsw i32 %add1224.us, %x_size
  %mul1227.us = shl nuw nsw i32 %b.1.us, 1
  %add1226.us = add nuw i32 %mul1227.us, %380
  %add1228.us = add i32 %add1226.us, %mul1225.us
  %idxprom1229.us = sext i32 %add1228.us to i64
  %arrayidx1230.us = getelementptr inbounds i32, ptr %r, i64 %idxprom1229.us
  %383 = load i32, ptr %arrayidx1230.us, align 4, !tbaa !12
  %cmp1231.us = icmp sgt i32 %122, %383
  br i1 %cmp1231.us, label %land.lhs.true1233.us, label %for.inc1252.us

land.lhs.true1233.us:                             ; preds = %land.lhs.true1222.us
  %sub1235.us = sub nsw i32 %119, %mul1223.us
  %mul1236.us = mul nsw i32 %sub1235.us, %x_size
  %add1237.us = sub nsw i32 %380, %mul1227.us
  %sub1239.us = add i32 %add1237.us, %mul1236.us
  %idxprom1240.us = sext i32 %sub1239.us to i64
  %arrayidx1241.us = getelementptr inbounds i32, ptr %r, i64 %idxprom1240.us
  %384 = load i32, ptr %arrayidx1241.us, align 4, !tbaa !12
  %cmp1242.not.us = icmp slt i32 %122, %384
  br i1 %cmp1242.not.us, label %for.inc1252.us, label %for.inc1252.us.sink.split

if.then682.us:                                    ; preds = %if.then319.us
  %cmp683.us = icmp eq i32 %add666.us, 0
  br i1 %cmp683.us, label %if.end710.us, label %if.end688.us

if.end688.us:                                     ; preds = %if.then682.us
  %conv686.us = sitofp i32 %add669.us to float
  %conv687.us = sitofp i32 %add666.us to float
  %div.us = fdiv float %conv686.us, %conv687.us
  %cmp689.us = fcmp olt float %div.us, 0.000000e+00
  br i1 %cmp689.us, label %if.then691.us, label %if.end693.us

if.then691.us:                                    ; preds = %if.end688.us
  %fneg.us = fneg float %div.us
  br label %if.end693.us

if.end693.us:                                     ; preds = %if.then691.us, %if.end688.us
  %z.1.us = phi float [ %fneg.us, %if.then691.us ], [ %div.us, %if.end688.us ]
  %cmp695.us = fcmp olt float %z.1.us, 5.000000e-01
  br i1 %cmp695.us, label %if.end710.us, label %if.else698.us

if.else698.us:                                    ; preds = %if.end693.us
  %cmp700.us = fcmp ogt float %z.1.us, 2.000000e+00
  br i1 %cmp700.us, label %if.end710.us, label %if.else703.us

if.else703.us:                                    ; preds = %if.else698.us
  %..us = select i1 %cmp689.us, i32 -1, i32 1
  br label %if.end710.us

if.end710.us:                                     ; preds = %if.else703.us, %if.else698.us, %if.end693.us, %if.then682.us
  %a.0.us = phi i32 [ 0, %if.end693.us ], [ 1, %if.else698.us ], [ %..us, %if.else703.us ], [ 1, %if.then682.us ]
  %b.0.us = phi i32 [ 1, %if.end693.us ], [ 0, %if.else698.us ], [ 1, %if.else703.us ], [ 0, %if.then682.us ]
  %add711.us = add nsw i32 %a.0.us, %120
  %mul712.us = mul nsw i32 %add711.us, %x_size
  %385 = trunc i64 %indvars.iv2090 to i32
  %add713.us = add nuw nsw i32 %b.0.us, %385
  %add714.us = add i32 %add713.us, %mul712.us
  %idxprom715.us = sext i32 %add714.us to i64
  %arrayidx716.us = getelementptr inbounds i32, ptr %r, i64 %idxprom715.us
  %386 = load i32, ptr %arrayidx716.us, align 4, !tbaa !12
  %cmp717.us = icmp sgt i32 %122, %386
  br i1 %cmp717.us, label %land.lhs.true.us, label %for.inc1252.us

land.lhs.true.us:                                 ; preds = %if.end710.us
  %sub719.us = sub nsw i32 %120, %a.0.us
  %mul720.us = mul nsw i32 %sub719.us, %x_size
  %add721.us = sub nsw i32 %385, %b.0.us
  %sub722.us = add i32 %add721.us, %mul720.us
  %idxprom723.us = sext i32 %sub722.us to i64
  %arrayidx724.us = getelementptr inbounds i32, ptr %r, i64 %idxprom723.us
  %387 = load i32, ptr %arrayidx724.us, align 4, !tbaa !12
  %cmp725.not.us = icmp slt i32 %122, %387
  br i1 %cmp725.not.us, label %for.inc1252.us, label %land.lhs.true727.us

land.lhs.true727.us:                              ; preds = %land.lhs.true.us
  %mul728.us = shl nsw i32 %a.0.us, 1
  %add729.us = add nsw i32 %mul728.us, %120
  %mul730.us = mul nsw i32 %add729.us, %x_size
  %mul732.us = shl nuw nsw i32 %b.0.us, 1
  %add731.us = add nuw i32 %mul732.us, %385
  %add733.us = add i32 %add731.us, %mul730.us
  %idxprom734.us = sext i32 %add733.us to i64
  %arrayidx735.us = getelementptr inbounds i32, ptr %r, i64 %idxprom734.us
  %388 = load i32, ptr %arrayidx735.us, align 4, !tbaa !12
  %cmp736.us = icmp sgt i32 %122, %388
  br i1 %cmp736.us, label %land.lhs.true738.us, label %for.inc1252.us

land.lhs.true738.us:                              ; preds = %land.lhs.true727.us
  %sub740.us = sub nsw i32 %120, %mul728.us
  %mul741.us = mul nsw i32 %sub740.us, %x_size
  %add742.us = sub nsw i32 %385, %mul732.us
  %sub744.us = add i32 %add742.us, %mul741.us
  %idxprom745.us = sext i32 %sub744.us to i64
  %arrayidx746.us = getelementptr inbounds i32, ptr %r, i64 %idxprom745.us
  %389 = load i32, ptr %arrayidx746.us, align 4, !tbaa !12
  %cmp747.not.us = icmp slt i32 %122, %389
  br i1 %cmp747.not.us, label %for.inc1252.us, label %for.inc1252.us.sink.split

for.inc1252.us.sink.split:                        ; preds = %land.lhs.true738.us, %land.lhs.true1233.us
  %.sink = phi i8 [ 2, %land.lhs.true1233.us ], [ 1, %land.lhs.true738.us ]
  %arrayidx753.us = getelementptr inbounds i8, ptr %mid, i64 %121
  store i8 %.sink, ptr %arrayidx753.us, align 1, !tbaa !19
  br label %for.inc1252.us

for.inc1252.us:                                   ; preds = %for.inc1252.us.sink.split, %land.lhs.true738.us, %land.lhs.true727.us, %land.lhs.true.us, %if.end710.us, %land.lhs.true1233.us, %land.lhs.true1222.us, %land.lhs.true1213.us, %if.end1204.us, %for.body297.us
  %indvars.iv.next2091 = add nuw nsw i64 %indvars.iv2090, 1
  %exitcond2095.not = icmp eq i64 %indvars.iv.next2091, %wide.trip.count2094
  br i1 %exitcond2095.not, label %for.cond293.for.inc1255_crit_edge.us, label %for.body297.us, !llvm.loop !55

for.cond293.for.inc1255_crit_edge.us:             ; preds = %for.inc1252.us
  %indvars.iv.next2097 = add nuw nsw i64 %indvars.iv2096, 1
  %exitcond2105.not = icmp eq i64 %indvars.iv.next2097, %wide.trip.count2104
  br i1 %exitcond2105.not, label %for.end1257, label %for.cond293.preheader.us, !llvm.loop !56

for.end1257:                                      ; preds = %for.cond293.for.inc1255_crit_edge.us, %entry, %for.cond293.preheader.lr.ph, %for.cond288.preheader
  ret i32 undef
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @susan_edges_small(ptr nocapture noundef readonly %in, ptr nocapture noundef %r, ptr nocapture noundef writeonly %mid, ptr nocapture noundef readonly %bp, i32 %max_no, i32 noundef %x_size, i32 noundef %y_size) local_unnamed_addr #7 {
entry:
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %r, i8 0, i64 %mul1, i1 false)
  %sub = add i32 %y_size, -1
  %cmp642 = icmp sgt i32 %y_size, 2
  br i1 %cmp642, label %for.cond3.preheader.lr.ph, label %for.end397

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %cmp5640 = icmp sgt i32 %x_size, 2
  %sub35 = add nsw i32 %x_size, -2
  %idx.ext36 = sext i32 %sub35 to i64
  br i1 %cmp5640, label %for.cond3.preheader.us.preheader, label %for.cond84.preheader

for.cond3.preheader.us.preheader:                 ; preds = %for.cond3.preheader.lr.ph
  %sub4 = add i32 %x_size, -1
  %0 = zext i32 %x_size to i64
  %wide.trip.count662 = zext i32 %sub to i64
  %wide.trip.count = zext i32 %sub4 to i64
  %add.ptr.us = getelementptr inbounds i8, ptr %in, i64 -1
  br label %for.cond3.preheader.us

for.cond3.preheader.us:                           ; preds = %for.cond3.preheader.us.preheader, %for.cond3.for.inc81_crit_edge.us
  %indvars.iv656 = phi i64 [ 1, %for.cond3.preheader.us.preheader ], [ %indvars.iv.next657, %for.cond3.for.inc81_crit_edge.us ]
  %1 = add nsw i64 %indvars.iv656, -1
  %2 = mul nsw i64 %1, %0
  %3 = mul nsw i64 %indvars.iv656, %0
  %add.ptr11.us = getelementptr inbounds i8, ptr %add.ptr.us, i64 %2
  br label %for.body7.us

for.body7.us:                                     ; preds = %for.cond3.preheader.us, %for.inc.us
  %indvars.iv = phi i64 [ 1, %for.cond3.preheader.us ], [ %indvars.iv.next, %for.inc.us ]
  %add.ptr12.us = getelementptr inbounds i8, ptr %add.ptr11.us, i64 %indvars.iv
  %4 = add nuw nsw i64 %indvars.iv, %3
  %arrayidx.us = getelementptr inbounds i8, ptr %in, i64 %4
  %5 = load i8, ptr %arrayidx.us, align 1, !tbaa !19
  %6 = zext i8 %5 to i64
  %add.ptr16.us = getelementptr inbounds i8, ptr %bp, i64 %6
  %incdec.ptr.us = getelementptr inbounds i8, ptr %add.ptr12.us, i64 1
  %7 = load i8, ptr %add.ptr12.us, align 1, !tbaa !19
  %8 = zext i8 %7 to i64
  %idx.neg.us = sub nsw i64 0, %8
  %add.ptr19.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg.us
  %9 = load i8, ptr %add.ptr19.us, align 1, !tbaa !19
  %conv20.us = zext i8 %9 to i32
  %add21.us = add nuw nsw i32 %conv20.us, 100
  %incdec.ptr22.us = getelementptr inbounds i8, ptr %incdec.ptr.us, i64 1
  %10 = load i8, ptr %incdec.ptr.us, align 1, !tbaa !19
  %11 = zext i8 %10 to i64
  %idx.neg25.us = sub nsw i64 0, %11
  %add.ptr26.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg25.us
  %12 = load i8, ptr %add.ptr26.us, align 1, !tbaa !19
  %conv27.us = zext i8 %12 to i32
  %add28.us = add nuw nsw i32 %add21.us, %conv27.us
  %13 = load i8, ptr %incdec.ptr22.us, align 1, !tbaa !19
  %14 = zext i8 %13 to i64
  %idx.neg31.us = sub nsw i64 0, %14
  %add.ptr32.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg31.us
  %15 = load i8, ptr %add.ptr32.us, align 1, !tbaa !19
  %conv33.us = zext i8 %15 to i32
  %add34.us = add nuw nsw i32 %add28.us, %conv33.us
  %add.ptr37.us = getelementptr inbounds i8, ptr %incdec.ptr22.us, i64 %idx.ext36
  %16 = load i8, ptr %add.ptr37.us, align 1, !tbaa !19
  %17 = zext i8 %16 to i64
  %idx.neg40.us = sub nsw i64 0, %17
  %add.ptr41.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg40.us
  %18 = load i8, ptr %add.ptr41.us, align 1, !tbaa !19
  %conv42.us = zext i8 %18 to i32
  %add43.us = add nuw nsw i32 %add34.us, %conv42.us
  %add.ptr44.us = getelementptr inbounds i8, ptr %add.ptr37.us, i64 2
  %19 = load i8, ptr %add.ptr44.us, align 1, !tbaa !19
  %20 = zext i8 %19 to i64
  %idx.neg47.us = sub nsw i64 0, %20
  %add.ptr48.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg47.us
  %21 = load i8, ptr %add.ptr48.us, align 1, !tbaa !19
  %conv49.us = zext i8 %21 to i32
  %add50.us = add nuw nsw i32 %add43.us, %conv49.us
  %add.ptr53.us = getelementptr inbounds i8, ptr %add.ptr44.us, i64 %idx.ext36
  %incdec.ptr54.us = getelementptr inbounds i8, ptr %add.ptr53.us, i64 1
  %22 = load i8, ptr %add.ptr53.us, align 1, !tbaa !19
  %23 = zext i8 %22 to i64
  %idx.neg57.us = sub nsw i64 0, %23
  %add.ptr58.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg57.us
  %24 = load i8, ptr %add.ptr58.us, align 1, !tbaa !19
  %conv59.us = zext i8 %24 to i32
  %add60.us = add nuw nsw i32 %add50.us, %conv59.us
  %incdec.ptr61.us = getelementptr inbounds i8, ptr %incdec.ptr54.us, i64 1
  %25 = load i8, ptr %incdec.ptr54.us, align 1, !tbaa !19
  %26 = zext i8 %25 to i64
  %idx.neg64.us = sub nsw i64 0, %26
  %add.ptr65.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg64.us
  %27 = load i8, ptr %add.ptr65.us, align 1, !tbaa !19
  %conv66.us = zext i8 %27 to i32
  %add67.us = add nuw nsw i32 %add60.us, %conv66.us
  %28 = load i8, ptr %incdec.ptr61.us, align 1, !tbaa !19
  %29 = zext i8 %28 to i64
  %idx.neg70.us = sub nsw i64 0, %29
  %add.ptr71.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg70.us
  %30 = load i8, ptr %add.ptr71.us, align 1, !tbaa !19
  %conv72.us = zext i8 %30 to i32
  %add73.us = add nuw nsw i32 %add67.us, %conv72.us
  %cmp74.us = icmp ult i32 %add73.us, 731
  br i1 %cmp74.us, label %if.then.us, label %for.inc.us

if.then.us:                                       ; preds = %for.body7.us
  %sub76.us = sub nuw nsw i32 730, %add73.us
  %arrayidx80.us = getelementptr inbounds i32, ptr %r, i64 %4
  store i32 %sub76.us, ptr %arrayidx80.us, align 4, !tbaa !12
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.then.us, %for.body7.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond3.for.inc81_crit_edge.us, label %for.body7.us, !llvm.loop !57

for.cond3.for.inc81_crit_edge.us:                 ; preds = %for.inc.us
  %indvars.iv.next657 = add nuw nsw i64 %indvars.iv656, 1
  %exitcond663.not = icmp eq i64 %indvars.iv.next657, %wide.trip.count662
  br i1 %exitcond663.not, label %for.cond84.preheader, label %for.cond3.preheader.us, !llvm.loop !58

for.cond84.preheader:                             ; preds = %for.cond3.for.inc81_crit_edge.us, %for.cond3.preheader.lr.ph
  %sub85 = add i32 %y_size, -2
  %cmp86649 = icmp sgt i32 %y_size, 4
  br i1 %cmp86649, label %for.cond89.preheader.lr.ph, label %for.end397

for.cond89.preheader.lr.ph:                       ; preds = %for.cond84.preheader
  %sub90 = add i32 %x_size, -2
  %cmp91645 = icmp sgt i32 %x_size, 4
  %idx.ext148 = sext i32 %sub90 to i64
  br i1 %cmp91645, label %for.cond89.preheader.us.preheader, label %for.end397

for.cond89.preheader.us.preheader:                ; preds = %for.cond89.preheader.lr.ph
  %31 = zext i32 %x_size to i64
  %wide.trip.count678 = zext i32 %sub85 to i64
  %wide.trip.count668 = zext i32 %sub90 to i64
  br label %for.cond89.preheader.us

for.cond89.preheader.us:                          ; preds = %for.cond89.preheader.us.preheader, %for.cond89.for.inc395_crit_edge.us
  %indvars.iv670 = phi i64 [ 2, %for.cond89.preheader.us.preheader ], [ %indvars.iv.next671, %for.cond89.for.inc395_crit_edge.us ]
  %32 = mul nsw i64 %indvars.iv670, %31
  %33 = add nsw i64 %indvars.iv670, -1
  %34 = mul nsw i64 %33, %31
  %add.ptr119.us = getelementptr inbounds i8, ptr %in, i64 %34
  %add.ptr121.us = getelementptr inbounds i8, ptr %add.ptr119.us, i64 -1
  %add.ptr265.us = getelementptr inbounds i8, ptr %add.ptr119.us, i64 -1
  %35 = trunc i64 %indvars.iv670 to i32
  %36 = trunc i64 %indvars.iv670 to i32
  br label %for.body93.us

for.body93.us:                                    ; preds = %for.cond89.preheader.us, %for.inc392.us
  %indvars.iv664 = phi i64 [ 2, %for.cond89.preheader.us ], [ %indvars.iv.next665, %for.inc392.us ]
  %37 = add nuw nsw i64 %indvars.iv664, %32
  %arrayidx97.us = getelementptr inbounds i32, ptr %r, i64 %37
  %38 = load i32, ptr %arrayidx97.us, align 4, !tbaa !12
  %cmp98.us = icmp sgt i32 %38, 0
  br i1 %cmp98.us, label %if.then100.us, label %for.inc392.us

if.then100.us:                                    ; preds = %for.body93.us
  %arrayidx109.us = getelementptr inbounds i8, ptr %in, i64 %37
  %39 = load i8, ptr %arrayidx109.us, align 1, !tbaa !19
  %40 = zext i8 %39 to i64
  %add.ptr112.us = getelementptr inbounds i8, ptr %bp, i64 %40
  %cmp113.us = icmp ult i32 %38, 480
  br i1 %cmp113.us, label %if.then115.us, label %if.then259.us

if.then115.us:                                    ; preds = %if.then100.us
  %sub105.us = sub nuw nsw i32 730, %38
  %add.ptr122.us = getelementptr inbounds i8, ptr %add.ptr121.us, i64 %indvars.iv664
  %incdec.ptr123.us = getelementptr inbounds i8, ptr %add.ptr122.us, i64 1
  %41 = load i8, ptr %add.ptr122.us, align 1, !tbaa !19
  %42 = zext i8 %41 to i64
  %idx.neg126.us = sub nsw i64 0, %42
  %add.ptr127.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg126.us
  %43 = load i8, ptr %add.ptr127.us, align 1, !tbaa !19
  %conv128.us = zext i8 %43 to i32
  %incdec.ptr132.us = getelementptr inbounds i8, ptr %incdec.ptr123.us, i64 1
  %44 = load i8, ptr %incdec.ptr123.us, align 1, !tbaa !19
  %45 = zext i8 %44 to i64
  %idx.neg135.us = sub nsw i64 0, %45
  %add.ptr136.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg135.us
  %46 = load i8, ptr %add.ptr136.us, align 1, !tbaa !19
  %conv137.us = zext i8 %46 to i32
  %47 = load i8, ptr %incdec.ptr132.us, align 1, !tbaa !19
  %48 = zext i8 %47 to i64
  %idx.neg141.us = sub nsw i64 0, %48
  %add.ptr142.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg141.us
  %49 = load i8, ptr %add.ptr142.us, align 1, !tbaa !19
  %conv143.us = zext i8 %49 to i32
  %add.ptr149.us = getelementptr inbounds i8, ptr %incdec.ptr132.us, i64 %idx.ext148
  %50 = load i8, ptr %add.ptr149.us, align 1, !tbaa !19
  %51 = zext i8 %50 to i64
  %idx.neg152.us = sub nsw i64 0, %51
  %add.ptr153.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg152.us
  %52 = load i8, ptr %add.ptr153.us, align 1, !tbaa !19
  %conv154.us = zext i8 %52 to i32
  %add.ptr156.us = getelementptr inbounds i8, ptr %add.ptr149.us, i64 2
  %53 = load i8, ptr %add.ptr156.us, align 1, !tbaa !19
  %54 = zext i8 %53 to i64
  %idx.neg159.us = sub nsw i64 0, %54
  %add.ptr160.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg159.us
  %55 = load i8, ptr %add.ptr160.us, align 1, !tbaa !19
  %conv161.us = zext i8 %55 to i32
  %add.ptr165.us = getelementptr inbounds i8, ptr %add.ptr156.us, i64 %idx.ext148
  %incdec.ptr166.us = getelementptr inbounds i8, ptr %add.ptr165.us, i64 1
  %56 = load i8, ptr %add.ptr165.us, align 1, !tbaa !19
  %57 = zext i8 %56 to i64
  %idx.neg169.us = sub nsw i64 0, %57
  %add.ptr170.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg169.us
  %58 = load i8, ptr %add.ptr170.us, align 1, !tbaa !19
  %conv171.us = zext i8 %58 to i32
  %incdec.ptr175.us = getelementptr inbounds i8, ptr %incdec.ptr166.us, i64 1
  %59 = load i8, ptr %incdec.ptr166.us, align 1, !tbaa !19
  %60 = zext i8 %59 to i64
  %idx.neg178.us = sub nsw i64 0, %60
  %add.ptr179.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg178.us
  %61 = load i8, ptr %add.ptr179.us, align 1, !tbaa !19
  %conv180.us = zext i8 %61 to i32
  %62 = load i8, ptr %incdec.ptr175.us, align 1, !tbaa !19
  %63 = zext i8 %62 to i64
  %idx.neg184.us = sub nsw i64 0, %63
  %add.ptr185.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg184.us
  %64 = load i8, ptr %add.ptr185.us, align 1, !tbaa !19
  %conv186.us = zext i8 %64 to i32
  %65 = add nuw nsw i32 %conv128.us, %conv154.us
  %66 = add nuw nsw i32 %conv143.us, %conv161.us
  %67 = add nuw nsw i32 %65, %conv171.us
  %sub172.us = sub nsw i32 %66, %67
  %add187.us = add nsw i32 %sub172.us, %conv186.us
  %68 = add nuw nsw i32 %conv137.us, %conv128.us
  %69 = add nuw nsw i32 %68, %conv143.us
  %add174.us = sub nsw i32 %conv171.us, %69
  %add181.us = add nsw i32 %add174.us, %conv180.us
  %add189.us = add nsw i32 %add181.us, %conv186.us
  %mul190.us = mul nsw i32 %add187.us, %add187.us
  %mul191.us = mul nsw i32 %add189.us, %add189.us
  %add192.us = add nuw nsw i32 %mul190.us, %mul191.us
  %conv193.us = sitofp i32 %add192.us to float
  %sqrtf.us = tail call float @sqrtf(float noundef %conv193.us) #8
  %conv196.us = fpext float %sqrtf.us to double
  %conv197.us = sitofp i32 %sub105.us to float
  %conv198.us = fpext float %conv197.us to double
  %mul199.us = fmul double %conv198.us, 4.000000e-01
  %cmp200.us = fcmp olt double %mul199.us, %conv196.us
  br i1 %cmp200.us, label %if.then202.us, label %if.then259.us

if.then259.us:                                    ; preds = %if.then115.us, %if.then100.us
  %add.ptr266.us = getelementptr inbounds i8, ptr %add.ptr265.us, i64 %indvars.iv664
  %incdec.ptr267.us = getelementptr inbounds i8, ptr %add.ptr266.us, i64 1
  %70 = load i8, ptr %add.ptr266.us, align 1, !tbaa !19
  %71 = zext i8 %70 to i64
  %idx.neg270.us = sub nsw i64 0, %71
  %add.ptr271.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg270.us
  %72 = load i8, ptr %add.ptr271.us, align 1, !tbaa !19
  %conv272.us = zext i8 %72 to i32
  %incdec.ptr278.us = getelementptr inbounds i8, ptr %incdec.ptr267.us, i64 1
  %73 = load i8, ptr %incdec.ptr267.us, align 1, !tbaa !19
  %74 = zext i8 %73 to i64
  %idx.neg281.us = sub nsw i64 0, %74
  %add.ptr282.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg281.us
  %75 = load i8, ptr %add.ptr282.us, align 1, !tbaa !19
  %conv283.us = zext i8 %75 to i32
  %76 = load i8, ptr %incdec.ptr278.us, align 1, !tbaa !19
  %77 = zext i8 %76 to i64
  %idx.neg287.us = sub nsw i64 0, %77
  %add.ptr288.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg287.us
  %78 = load i8, ptr %add.ptr288.us, align 1, !tbaa !19
  %conv289.us = zext i8 %78 to i32
  %add.ptr297.us = getelementptr inbounds i8, ptr %incdec.ptr278.us, i64 %idx.ext148
  %add.ptr304.us = getelementptr inbounds i8, ptr %add.ptr297.us, i64 2
  %add.ptr313.us = getelementptr inbounds i8, ptr %add.ptr304.us, i64 %idx.ext148
  %incdec.ptr314.us = getelementptr inbounds i8, ptr %add.ptr313.us, i64 1
  %79 = load i8, ptr %add.ptr313.us, align 1, !tbaa !19
  %80 = zext i8 %79 to i64
  %idx.neg317.us = sub nsw i64 0, %80
  %add.ptr318.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg317.us
  %81 = load i8, ptr %add.ptr318.us, align 1, !tbaa !19
  %conv319.us = zext i8 %81 to i32
  %incdec.ptr325.us = getelementptr inbounds i8, ptr %incdec.ptr314.us, i64 1
  %82 = load i8, ptr %incdec.ptr314.us, align 1, !tbaa !19
  %83 = zext i8 %82 to i64
  %idx.neg328.us = sub nsw i64 0, %83
  %add.ptr329.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg328.us
  %84 = load i8, ptr %add.ptr329.us, align 1, !tbaa !19
  %conv330.us = zext i8 %84 to i32
  %85 = load i8, ptr %incdec.ptr325.us, align 1, !tbaa !19
  %86 = zext i8 %85 to i64
  %idx.neg334.us = sub nsw i64 0, %86
  %add.ptr335.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg334.us
  %87 = load i8, ptr %add.ptr335.us, align 1, !tbaa !19
  %conv336.us = zext i8 %87 to i32
  %add284.us = add nuw nsw i32 %conv319.us, %conv289.us
  %add292.us = add nuw nsw i32 %add284.us, %conv272.us
  %add322.us = add nuw nsw i32 %add292.us, %conv283.us
  %add331.us = add nuw nsw i32 %add322.us, %conv330.us
  %add339.us = add nuw nsw i32 %add331.us, %conv336.us
  %.neg639.us = add nuw nsw i32 %conv336.us, %conv272.us
  %cmp342.us = icmp eq i32 %add339.us, 0
  br i1 %cmp342.us, label %if.end366.us, label %if.end349.us

if.end349.us:                                     ; preds = %if.then259.us
  %88 = load i8, ptr %add.ptr297.us, align 1, !tbaa !19
  %89 = zext i8 %88 to i64
  %idx.neg300.us = sub nsw i64 0, %89
  %add.ptr301.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg300.us
  %90 = load i8, ptr %add.ptr301.us, align 1, !tbaa !19
  %conv302.us = zext i8 %90 to i32
  %91 = load i8, ptr %add.ptr304.us, align 1, !tbaa !19
  %92 = zext i8 %91 to i64
  %idx.neg307.us = sub nsw i64 0, %92
  %add.ptr308.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg307.us
  %93 = load i8, ptr %add.ptr308.us, align 1, !tbaa !19
  %conv309.us = zext i8 %93 to i32
  %add310.us = add nuw nsw i32 %add292.us, %conv336.us
  %add320.us = add nuw nsw i32 %add310.us, %conv302.us
  %add337.us = add nuw nsw i32 %add320.us, %conv309.us
  %conv346.us = sitofp i32 %add337.us to float
  %conv347.us = sitofp i32 %add339.us to float
  %div348.us = fdiv float %conv346.us, %conv347.us
  %cmp351.us = fcmp olt float %div348.us, 5.000000e-01
  br i1 %cmp351.us, label %if.end366.us, label %if.else354.us

if.else354.us:                                    ; preds = %if.end349.us
  %cmp356.us = fcmp ogt float %div348.us, 2.000000e+00
  br i1 %cmp356.us, label %if.end366.us, label %if.else359.us

if.else359.us:                                    ; preds = %if.else354.us
  %cmp360.inv.us.not = icmp ugt i32 %.neg639.us, %add284.us
  %.619.us = select i1 %cmp360.inv.us.not, i32 -1, i32 1
  br label %if.end366.us

if.end366.us:                                     ; preds = %if.else359.us, %if.else354.us, %if.end349.us, %if.then259.us
  %a.1.us = phi i32 [ 0, %if.end349.us ], [ 1, %if.else354.us ], [ %.619.us, %if.else359.us ], [ 1, %if.then259.us ]
  %b.1.us = phi i32 [ 1, %if.end349.us ], [ 0, %if.else354.us ], [ 1, %if.else359.us ], [ 0, %if.then259.us ]
  %add367.us = add nsw i32 %a.1.us, %35
  %mul368.us = mul nsw i32 %add367.us, %x_size
  %94 = trunc i64 %indvars.iv664 to i32
  %add369.us = add nuw nsw i32 %b.1.us, %94
  %add370.us = add i32 %add369.us, %mul368.us
  %idxprom371.us = sext i32 %add370.us to i64
  %arrayidx372.us = getelementptr inbounds i32, ptr %r, i64 %idxprom371.us
  %95 = load i32, ptr %arrayidx372.us, align 4, !tbaa !12
  %cmp373.us = icmp sgt i32 %38, %95
  br i1 %cmp373.us, label %land.lhs.true375.us, label %for.inc392.us

land.lhs.true375.us:                              ; preds = %if.end366.us
  %sub376.us = sub nsw i32 %35, %a.1.us
  %mul377.us = mul nsw i32 %sub376.us, %x_size
  %add378.us = sub nsw i32 %94, %b.1.us
  %sub379.us = add i32 %add378.us, %mul377.us
  %idxprom380.us = sext i32 %sub379.us to i64
  %arrayidx381.us = getelementptr inbounds i32, ptr %r, i64 %idxprom380.us
  %96 = load i32, ptr %arrayidx381.us, align 4, !tbaa !12
  %cmp382.not.us = icmp slt i32 %38, %96
  br i1 %cmp382.not.us, label %for.inc392.us, label %for.inc392.us.sink.split

if.then202.us:                                    ; preds = %if.then115.us
  %cmp203.us = icmp eq i32 %add187.us, 0
  br i1 %cmp203.us, label %if.end230.us, label %if.end208.us

if.end208.us:                                     ; preds = %if.then202.us
  %conv206.us = sitofp i32 %add189.us to float
  %conv207.us = sitofp i32 %add187.us to float
  %div.us = fdiv float %conv206.us, %conv207.us
  %cmp209.us = fcmp olt float %div.us, 0.000000e+00
  br i1 %cmp209.us, label %if.then211.us, label %if.end213.us

if.then211.us:                                    ; preds = %if.end208.us
  %fneg.us = fneg float %div.us
  br label %if.end213.us

if.end213.us:                                     ; preds = %if.then211.us, %if.end208.us
  %z.1.us = phi float [ %fneg.us, %if.then211.us ], [ %div.us, %if.end208.us ]
  %cmp215.us = fcmp olt float %z.1.us, 5.000000e-01
  br i1 %cmp215.us, label %if.end230.us, label %if.else218.us

if.else218.us:                                    ; preds = %if.end213.us
  %cmp220.us = fcmp ogt float %z.1.us, 2.000000e+00
  br i1 %cmp220.us, label %if.end230.us, label %if.else223.us

if.else223.us:                                    ; preds = %if.else218.us
  %..us = select i1 %cmp209.us, i32 -1, i32 1
  br label %if.end230.us

if.end230.us:                                     ; preds = %if.else223.us, %if.else218.us, %if.end213.us, %if.then202.us
  %a.0.us = phi i32 [ 0, %if.end213.us ], [ 1, %if.else218.us ], [ %..us, %if.else223.us ], [ 1, %if.then202.us ]
  %b.0.us = phi i32 [ 1, %if.end213.us ], [ 0, %if.else218.us ], [ 1, %if.else223.us ], [ 0, %if.then202.us ]
  %add231.us = add nsw i32 %a.0.us, %36
  %mul232.us = mul nsw i32 %add231.us, %x_size
  %97 = trunc i64 %indvars.iv664 to i32
  %add233.us = add nuw nsw i32 %b.0.us, %97
  %add234.us = add i32 %add233.us, %mul232.us
  %idxprom235.us = sext i32 %add234.us to i64
  %arrayidx236.us = getelementptr inbounds i32, ptr %r, i64 %idxprom235.us
  %98 = load i32, ptr %arrayidx236.us, align 4, !tbaa !12
  %cmp237.us = icmp sgt i32 %38, %98
  br i1 %cmp237.us, label %land.lhs.true.us, label %for.inc392.us

land.lhs.true.us:                                 ; preds = %if.end230.us
  %sub239.us = sub nsw i32 %36, %a.0.us
  %mul240.us = mul nsw i32 %sub239.us, %x_size
  %add241.us = sub nsw i32 %97, %b.0.us
  %sub242.us = add i32 %add241.us, %mul240.us
  %idxprom243.us = sext i32 %sub242.us to i64
  %arrayidx244.us = getelementptr inbounds i32, ptr %r, i64 %idxprom243.us
  %99 = load i32, ptr %arrayidx244.us, align 4, !tbaa !12
  %cmp245.not.us = icmp slt i32 %38, %99
  br i1 %cmp245.not.us, label %for.inc392.us, label %for.inc392.us.sink.split

for.inc392.us.sink.split:                         ; preds = %land.lhs.true.us, %land.lhs.true375.us
  %.sink = phi i8 [ 2, %land.lhs.true375.us ], [ 1, %land.lhs.true.us ]
  %arrayidx251.us = getelementptr inbounds i8, ptr %mid, i64 %37
  store i8 %.sink, ptr %arrayidx251.us, align 1, !tbaa !19
  br label %for.inc392.us

for.inc392.us:                                    ; preds = %for.inc392.us.sink.split, %land.lhs.true.us, %if.end230.us, %land.lhs.true375.us, %if.end366.us, %for.body93.us
  %indvars.iv.next665 = add nuw nsw i64 %indvars.iv664, 1
  %exitcond669.not = icmp eq i64 %indvars.iv.next665, %wide.trip.count668
  br i1 %exitcond669.not, label %for.cond89.for.inc395_crit_edge.us, label %for.body93.us, !llvm.loop !59

for.cond89.for.inc395_crit_edge.us:               ; preds = %for.inc392.us
  %indvars.iv.next671 = add nuw nsw i64 %indvars.iv670, 1
  %exitcond679.not = icmp eq i64 %indvars.iv.next671, %wide.trip.count678
  br i1 %exitcond679.not, label %for.end397, label %for.cond89.preheader.us, !llvm.loop !60

for.end397:                                       ; preds = %for.cond89.for.inc395_crit_edge.us, %entry, %for.cond89.preheader.lr.ph, %for.cond84.preheader
  ret i32 undef
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @corner_draw(ptr nocapture noundef writeonly %in, ptr nocapture noundef readonly %corner_list, i32 noundef %x_size, i32 noundef %drawing_mode) local_unnamed_addr #13 {
entry:
  %info57 = getelementptr inbounds %struct.anon, ptr %corner_list, i64 0, i32 2
  %0 = load i32, ptr %info57, align 4, !tbaa !61
  %cmp.not58 = icmp eq i32 %0, 7
  br i1 %cmp.not58, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %cmp1 = icmp eq i32 %drawing_mode, 0
  %sub10 = add nsw i32 %x_size, -2
  %idx.ext11 = sext i32 %sub10 to i64
  br i1 %cmp1, label %while.body.us.preheader, label %while.body

while.body.us.preheader:                          ; preds = %while.body.lr.ph
  %add.ptr.us = getelementptr inbounds i8, ptr %in, i64 -1
  br label %while.body.us

while.body.us:                                    ; preds = %while.body.us.preheader, %while.body.us
  %indvars.iv64 = phi i64 [ 0, %while.body.us.preheader ], [ %indvars.iv.next65, %while.body.us ]
  %arrayidx61.us = phi ptr [ %corner_list, %while.body.us.preheader ], [ %arrayidx.us, %while.body.us ]
  %y.us = getelementptr inbounds %struct.anon, ptr %corner_list, i64 %indvars.iv64, i32 1
  %1 = load i32, ptr %y.us, align 4, !tbaa !63
  %sub.us = add nsw i32 %1, -1
  %mul.us = mul nsw i32 %sub.us, %x_size
  %idx.ext.us = sext i32 %mul.us to i64
  %2 = load i32, ptr %arrayidx61.us, align 4, !tbaa !64
  %idx.ext6.us = sext i32 %2 to i64
  %add.ptr7.us = getelementptr inbounds i8, ptr %add.ptr.us, i64 %idx.ext.us
  %add.ptr8.us = getelementptr inbounds i8, ptr %add.ptr7.us, i64 %idx.ext6.us
  %incdec.ptr.us = getelementptr inbounds i8, ptr %add.ptr8.us, i64 1
  store i8 -1, ptr %add.ptr8.us, align 1, !tbaa !19
  %incdec.ptr9.us = getelementptr inbounds i8, ptr %incdec.ptr.us, i64 1
  store i8 -1, ptr %incdec.ptr.us, align 1, !tbaa !19
  store i8 -1, ptr %incdec.ptr9.us, align 1, !tbaa !19
  %add.ptr12.us = getelementptr inbounds i8, ptr %incdec.ptr9.us, i64 %idx.ext11
  %incdec.ptr13.us = getelementptr inbounds i8, ptr %add.ptr12.us, i64 1
  store i8 -1, ptr %add.ptr12.us, align 1, !tbaa !19
  %incdec.ptr14.us = getelementptr inbounds i8, ptr %incdec.ptr13.us, i64 1
  store i8 0, ptr %incdec.ptr13.us, align 1, !tbaa !19
  store i8 -1, ptr %incdec.ptr14.us, align 1, !tbaa !19
  %add.ptr17.us = getelementptr inbounds i8, ptr %incdec.ptr14.us, i64 %idx.ext11
  %incdec.ptr18.us = getelementptr inbounds i8, ptr %add.ptr17.us, i64 1
  store i8 -1, ptr %add.ptr17.us, align 1, !tbaa !19
  %incdec.ptr19.us = getelementptr inbounds i8, ptr %incdec.ptr18.us, i64 1
  store i8 -1, ptr %incdec.ptr18.us, align 1, !tbaa !19
  store i8 -1, ptr %incdec.ptr19.us, align 1, !tbaa !19
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %arrayidx.us = getelementptr inbounds %struct.anon, ptr %corner_list, i64 %indvars.iv.next65
  %info.us = getelementptr inbounds %struct.anon, ptr %corner_list, i64 %indvars.iv.next65, i32 2
  %3 = load i32, ptr %info.us, align 4, !tbaa !61
  %cmp.not.us = icmp eq i32 %3, 7
  br i1 %cmp.not.us, label %while.end, label %while.body.us, !llvm.loop !65

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ 0, %while.body.lr.ph ]
  %arrayidx61 = phi ptr [ %arrayidx, %while.body ], [ %corner_list, %while.body.lr.ph ]
  %y22 = getelementptr inbounds %struct.anon, ptr %corner_list, i64 %indvars.iv, i32 1
  %4 = load i32, ptr %y22, align 4, !tbaa !63
  %mul23 = mul nsw i32 %4, %x_size
  %idx.ext24 = sext i32 %mul23 to i64
  %add.ptr25 = getelementptr inbounds i8, ptr %in, i64 %idx.ext24
  %5 = load i32, ptr %arrayidx61, align 4, !tbaa !64
  %idx.ext29 = sext i32 %5 to i64
  %add.ptr30 = getelementptr inbounds i8, ptr %add.ptr25, i64 %idx.ext29
  store i8 0, ptr %add.ptr30, align 1, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds %struct.anon, ptr %corner_list, i64 %indvars.iv.next
  %info = getelementptr inbounds %struct.anon, ptr %corner_list, i64 %indvars.iv.next, i32 2
  %6 = load i32, ptr %info, align 4, !tbaa !61
  %cmp.not = icmp eq i32 %6, 7
  br i1 %cmp.not, label %while.end, label %while.body, !llvm.loop !65

while.end:                                        ; preds = %while.body, %while.body.us, %entry
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @susan_corners(ptr nocapture noundef readonly %in, ptr noundef %r, ptr noundef readonly %bp, i32 noundef %max_no, ptr nocapture noundef writeonly %corner_list, i32 noundef %x_size, i32 noundef %y_size) local_unnamed_addr #3 {
entry:
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %r, i8 0, i64 %mul1, i1 false)
  %call = tail call noalias ptr @malloc(i64 noundef %mul1) #23
  %call8 = tail call noalias ptr @malloc(i64 noundef %mul1) #23
  %sub = add i32 %y_size, -5
  %cmp2184 = icmp sgt i32 %y_size, 10
  br i1 %cmp2184, label %for.cond10.preheader.lr.ph, label %for.end1387

for.cond10.preheader.lr.ph:                       ; preds = %entry
  %sub11 = add i32 %x_size, -5
  %cmp122180 = icmp sgt i32 %x_size, 10
  %sub42 = add nsw i32 %x_size, -3
  %idx.ext43 = sext i32 %sub42 to i64
  %idx.ext80 = sext i32 %sub11 to i64
  %sub130 = add nsw i32 %x_size, -6
  %idx.ext131 = sext i32 %sub130 to i64
  br i1 %cmp122180, label %for.cond10.preheader.us.preheader, label %for.end1387

for.cond10.preheader.us.preheader:                ; preds = %for.cond10.preheader.lr.ph
  %0 = zext i32 %x_size to i64
  %wide.trip.count2208 = zext i32 %sub to i64
  %wide.trip.count = zext i32 %sub11 to i64
  %add.ptr.us = getelementptr inbounds i8, ptr %in, i64 -1
  br label %for.cond10.preheader.us

for.cond10.preheader.us:                          ; preds = %for.cond10.preheader.us.preheader, %for.cond10.for.inc908_crit_edge.us
  %indvars.iv2202 = phi i64 [ 5, %for.cond10.preheader.us.preheader ], [ %indvars.iv.next2203, %for.cond10.for.inc908_crit_edge.us ]
  %1 = add nsw i64 %indvars.iv2202, -3
  %2 = mul nsw i64 %1, %0
  %3 = mul nsw i64 %indvars.iv2202, %0
  %add.ptr18.us = getelementptr inbounds i8, ptr %add.ptr.us, i64 %2
  %4 = trunc i64 %indvars.iv2202 to i32
  %5 = trunc i64 %indvars.iv2202 to i32
  br label %for.body14.us

for.body14.us:                                    ; preds = %for.cond10.preheader.us, %for.inc.us
  %indvars.iv = phi i64 [ 5, %for.cond10.preheader.us ], [ %indvars.iv.next, %for.inc.us ]
  %add.ptr19.us = getelementptr inbounds i8, ptr %add.ptr18.us, i64 %indvars.iv
  %6 = add nuw nsw i64 %indvars.iv, %3
  %arrayidx.us = getelementptr inbounds i8, ptr %in, i64 %6
  %7 = load i8, ptr %arrayidx.us, align 1, !tbaa !19
  %8 = zext i8 %7 to i64
  %add.ptr23.us = getelementptr inbounds i8, ptr %bp, i64 %8
  %incdec.ptr.us = getelementptr inbounds i8, ptr %add.ptr19.us, i64 1
  %9 = load i8, ptr %add.ptr19.us, align 1, !tbaa !19
  %10 = zext i8 %9 to i64
  %idx.neg.us = sub nsw i64 0, %10
  %add.ptr26.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg.us
  %11 = load i8, ptr %add.ptr26.us, align 1, !tbaa !19
  %conv27.us = zext i8 %11 to i32
  %add28.us = add nuw nsw i32 %conv27.us, 100
  %incdec.ptr29.us = getelementptr inbounds i8, ptr %incdec.ptr.us, i64 1
  %12 = load i8, ptr %incdec.ptr.us, align 1, !tbaa !19
  %13 = zext i8 %12 to i64
  %idx.neg32.us = sub nsw i64 0, %13
  %add.ptr33.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg32.us
  %14 = load i8, ptr %add.ptr33.us, align 1, !tbaa !19
  %conv34.us = zext i8 %14 to i32
  %add35.us = add nuw nsw i32 %add28.us, %conv34.us
  %15 = load i8, ptr %incdec.ptr29.us, align 1, !tbaa !19
  %16 = zext i8 %15 to i64
  %idx.neg38.us = sub nsw i64 0, %16
  %add.ptr39.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg38.us
  %17 = load i8, ptr %add.ptr39.us, align 1, !tbaa !19
  %conv40.us = zext i8 %17 to i32
  %add41.us = add nuw nsw i32 %add35.us, %conv40.us
  %add.ptr44.us = getelementptr inbounds i8, ptr %incdec.ptr29.us, i64 %idx.ext43
  %incdec.ptr45.us = getelementptr inbounds i8, ptr %add.ptr44.us, i64 1
  %18 = load i8, ptr %add.ptr44.us, align 1, !tbaa !19
  %19 = zext i8 %18 to i64
  %idx.neg48.us = sub nsw i64 0, %19
  %add.ptr49.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg48.us
  %20 = load i8, ptr %add.ptr49.us, align 1, !tbaa !19
  %conv50.us = zext i8 %20 to i32
  %add51.us = add nuw nsw i32 %add41.us, %conv50.us
  %incdec.ptr52.us = getelementptr inbounds i8, ptr %incdec.ptr45.us, i64 1
  %21 = load i8, ptr %incdec.ptr45.us, align 1, !tbaa !19
  %22 = zext i8 %21 to i64
  %idx.neg55.us = sub nsw i64 0, %22
  %add.ptr56.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg55.us
  %23 = load i8, ptr %add.ptr56.us, align 1, !tbaa !19
  %conv57.us = zext i8 %23 to i32
  %add58.us = add nuw nsw i32 %add51.us, %conv57.us
  %incdec.ptr59.us = getelementptr inbounds i8, ptr %incdec.ptr52.us, i64 1
  %24 = load i8, ptr %incdec.ptr52.us, align 1, !tbaa !19
  %25 = zext i8 %24 to i64
  %idx.neg62.us = sub nsw i64 0, %25
  %add.ptr63.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg62.us
  %26 = load i8, ptr %add.ptr63.us, align 1, !tbaa !19
  %conv64.us = zext i8 %26 to i32
  %add65.us = add nuw nsw i32 %add58.us, %conv64.us
  %incdec.ptr66.us = getelementptr inbounds i8, ptr %incdec.ptr59.us, i64 1
  %27 = load i8, ptr %incdec.ptr59.us, align 1, !tbaa !19
  %28 = zext i8 %27 to i64
  %idx.neg69.us = sub nsw i64 0, %28
  %add.ptr70.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg69.us
  %29 = load i8, ptr %add.ptr70.us, align 1, !tbaa !19
  %conv71.us = zext i8 %29 to i32
  %add72.us = add nuw nsw i32 %add65.us, %conv71.us
  %30 = load i8, ptr %incdec.ptr66.us, align 1, !tbaa !19
  %31 = zext i8 %30 to i64
  %idx.neg75.us = sub nsw i64 0, %31
  %add.ptr76.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg75.us
  %32 = load i8, ptr %add.ptr76.us, align 1, !tbaa !19
  %conv77.us = zext i8 %32 to i32
  %add78.us = add nuw nsw i32 %add72.us, %conv77.us
  %add.ptr81.us = getelementptr inbounds i8, ptr %incdec.ptr66.us, i64 %idx.ext80
  %incdec.ptr82.us = getelementptr inbounds i8, ptr %add.ptr81.us, i64 1
  %33 = load i8, ptr %add.ptr81.us, align 1, !tbaa !19
  %34 = zext i8 %33 to i64
  %idx.neg85.us = sub nsw i64 0, %34
  %add.ptr86.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg85.us
  %35 = load i8, ptr %add.ptr86.us, align 1, !tbaa !19
  %conv87.us = zext i8 %35 to i32
  %add88.us = add nuw nsw i32 %add78.us, %conv87.us
  %incdec.ptr89.us = getelementptr inbounds i8, ptr %incdec.ptr82.us, i64 1
  %36 = load i8, ptr %incdec.ptr82.us, align 1, !tbaa !19
  %37 = zext i8 %36 to i64
  %idx.neg92.us = sub nsw i64 0, %37
  %add.ptr93.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg92.us
  %38 = load i8, ptr %add.ptr93.us, align 1, !tbaa !19
  %conv94.us = zext i8 %38 to i32
  %add95.us = add nuw nsw i32 %add88.us, %conv94.us
  %incdec.ptr96.us = getelementptr inbounds i8, ptr %incdec.ptr89.us, i64 1
  %39 = load i8, ptr %incdec.ptr89.us, align 1, !tbaa !19
  %40 = zext i8 %39 to i64
  %idx.neg99.us = sub nsw i64 0, %40
  %add.ptr100.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg99.us
  %41 = load i8, ptr %add.ptr100.us, align 1, !tbaa !19
  %conv101.us = zext i8 %41 to i32
  %add102.us = add nuw nsw i32 %add95.us, %conv101.us
  %incdec.ptr103.us = getelementptr inbounds i8, ptr %incdec.ptr96.us, i64 1
  %42 = load i8, ptr %incdec.ptr96.us, align 1, !tbaa !19
  %43 = zext i8 %42 to i64
  %idx.neg106.us = sub nsw i64 0, %43
  %add.ptr107.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg106.us
  %44 = load i8, ptr %add.ptr107.us, align 1, !tbaa !19
  %conv108.us = zext i8 %44 to i32
  %add109.us = add nuw nsw i32 %add102.us, %conv108.us
  %incdec.ptr110.us = getelementptr inbounds i8, ptr %incdec.ptr103.us, i64 1
  %45 = load i8, ptr %incdec.ptr103.us, align 1, !tbaa !19
  %46 = zext i8 %45 to i64
  %idx.neg113.us = sub nsw i64 0, %46
  %add.ptr114.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg113.us
  %47 = load i8, ptr %add.ptr114.us, align 1, !tbaa !19
  %conv115.us = zext i8 %47 to i32
  %add116.us = add nuw nsw i32 %add109.us, %conv115.us
  %incdec.ptr117.us = getelementptr inbounds i8, ptr %incdec.ptr110.us, i64 1
  %48 = load i8, ptr %incdec.ptr110.us, align 1, !tbaa !19
  %49 = zext i8 %48 to i64
  %idx.neg120.us = sub nsw i64 0, %49
  %add.ptr121.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg120.us
  %50 = load i8, ptr %add.ptr121.us, align 1, !tbaa !19
  %conv122.us = zext i8 %50 to i32
  %add123.us = add nuw nsw i32 %add116.us, %conv122.us
  %51 = load i8, ptr %incdec.ptr117.us, align 1, !tbaa !19
  %52 = zext i8 %51 to i64
  %idx.neg126.us = sub nsw i64 0, %52
  %add.ptr127.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg126.us
  %53 = load i8, ptr %add.ptr127.us, align 1, !tbaa !19
  %conv128.us = zext i8 %53 to i32
  %add129.us = add nuw nsw i32 %add123.us, %conv128.us
  %add.ptr132.us = getelementptr inbounds i8, ptr %incdec.ptr117.us, i64 %idx.ext131
  %incdec.ptr133.us = getelementptr inbounds i8, ptr %add.ptr132.us, i64 1
  %54 = load i8, ptr %add.ptr132.us, align 1, !tbaa !19
  %55 = zext i8 %54 to i64
  %idx.neg136.us = sub nsw i64 0, %55
  %add.ptr137.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg136.us
  %56 = load i8, ptr %add.ptr137.us, align 1, !tbaa !19
  %conv138.us = zext i8 %56 to i32
  %add139.us = add nuw nsw i32 %add129.us, %conv138.us
  %incdec.ptr140.us = getelementptr inbounds i8, ptr %incdec.ptr133.us, i64 1
  %57 = load i8, ptr %incdec.ptr133.us, align 1, !tbaa !19
  %58 = zext i8 %57 to i64
  %idx.neg143.us = sub nsw i64 0, %58
  %add.ptr144.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg143.us
  %59 = load i8, ptr %add.ptr144.us, align 1, !tbaa !19
  %conv145.us = zext i8 %59 to i32
  %add146.us = add nuw nsw i32 %add139.us, %conv145.us
  %60 = load i8, ptr %incdec.ptr140.us, align 1, !tbaa !19
  %61 = zext i8 %60 to i64
  %idx.neg149.us = sub nsw i64 0, %61
  %add.ptr150.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg149.us
  %62 = load i8, ptr %add.ptr150.us, align 1, !tbaa !19
  %conv151.us = zext i8 %62 to i32
  %add152.us = add nuw nsw i32 %add146.us, %conv151.us
  %cmp153.us = icmp slt i32 %add152.us, %max_no
  br i1 %cmp153.us, label %if.then.us, label %for.inc.us

if.then.us:                                       ; preds = %for.body14.us
  %add.ptr155.us = getelementptr inbounds i8, ptr %incdec.ptr140.us, i64 2
  %63 = load i8, ptr %add.ptr155.us, align 1, !tbaa !19
  %64 = zext i8 %63 to i64
  %idx.neg159.us = sub nsw i64 0, %64
  %add.ptr160.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg159.us
  %65 = load i8, ptr %add.ptr160.us, align 1, !tbaa !19
  %conv161.us = zext i8 %65 to i32
  %add162.us = add nuw nsw i32 %add152.us, %conv161.us
  %cmp163.us = icmp slt i32 %add162.us, %max_no
  br i1 %cmp163.us, label %if.then165.us, label %for.inc.us

if.then165.us:                                    ; preds = %if.then.us
  %incdec.ptr156.us = getelementptr inbounds i8, ptr %add.ptr155.us, i64 1
  %incdec.ptr166.us = getelementptr inbounds i8, ptr %incdec.ptr156.us, i64 1
  %66 = load i8, ptr %incdec.ptr156.us, align 1, !tbaa !19
  %67 = zext i8 %66 to i64
  %idx.neg169.us = sub nsw i64 0, %67
  %add.ptr170.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg169.us
  %68 = load i8, ptr %add.ptr170.us, align 1, !tbaa !19
  %conv171.us = zext i8 %68 to i32
  %add172.us = add nuw nsw i32 %add162.us, %conv171.us
  %cmp173.us = icmp slt i32 %add172.us, %max_no
  br i1 %cmp173.us, label %if.then175.us, label %for.inc.us

if.then175.us:                                    ; preds = %if.then165.us
  %69 = load i8, ptr %incdec.ptr166.us, align 1, !tbaa !19
  %70 = zext i8 %69 to i64
  %idx.neg178.us = sub nsw i64 0, %70
  %add.ptr179.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg178.us
  %71 = load i8, ptr %add.ptr179.us, align 1, !tbaa !19
  %conv180.us = zext i8 %71 to i32
  %add181.us = add nuw nsw i32 %add172.us, %conv180.us
  %cmp182.us = icmp slt i32 %add181.us, %max_no
  br i1 %cmp182.us, label %if.then184.us, label %for.inc.us

if.then184.us:                                    ; preds = %if.then175.us
  %add.ptr187.us = getelementptr inbounds i8, ptr %incdec.ptr166.us, i64 %idx.ext131
  %72 = load i8, ptr %add.ptr187.us, align 1, !tbaa !19
  %73 = zext i8 %72 to i64
  %idx.neg191.us = sub nsw i64 0, %73
  %add.ptr192.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg191.us
  %74 = load i8, ptr %add.ptr192.us, align 1, !tbaa !19
  %conv193.us = zext i8 %74 to i32
  %add194.us = add nuw nsw i32 %add181.us, %conv193.us
  %cmp195.us = icmp slt i32 %add194.us, %max_no
  br i1 %cmp195.us, label %if.then197.us, label %for.inc.us

if.then197.us:                                    ; preds = %if.then184.us
  %incdec.ptr188.us = getelementptr inbounds i8, ptr %add.ptr187.us, i64 1
  %75 = load i8, ptr %incdec.ptr188.us, align 1, !tbaa !19
  %76 = zext i8 %75 to i64
  %idx.neg201.us = sub nsw i64 0, %76
  %add.ptr202.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg201.us
  %77 = load i8, ptr %add.ptr202.us, align 1, !tbaa !19
  %conv203.us = zext i8 %77 to i32
  %add204.us = add nuw nsw i32 %add194.us, %conv203.us
  %cmp205.us = icmp slt i32 %add204.us, %max_no
  br i1 %cmp205.us, label %if.then207.us, label %for.inc.us

if.then207.us:                                    ; preds = %if.then197.us
  %incdec.ptr198.us = getelementptr inbounds i8, ptr %incdec.ptr188.us, i64 1
  %78 = load i8, ptr %incdec.ptr198.us, align 1, !tbaa !19
  %79 = zext i8 %78 to i64
  %idx.neg211.us = sub nsw i64 0, %79
  %add.ptr212.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg211.us
  %80 = load i8, ptr %add.ptr212.us, align 1, !tbaa !19
  %conv213.us = zext i8 %80 to i32
  %add214.us = add nuw nsw i32 %add204.us, %conv213.us
  %cmp215.us = icmp slt i32 %add214.us, %max_no
  br i1 %cmp215.us, label %if.then217.us, label %for.inc.us

if.then217.us:                                    ; preds = %if.then207.us
  %incdec.ptr208.us = getelementptr inbounds i8, ptr %incdec.ptr198.us, i64 1
  %81 = load i8, ptr %incdec.ptr208.us, align 1, !tbaa !19
  %82 = zext i8 %81 to i64
  %idx.neg221.us = sub nsw i64 0, %82
  %add.ptr222.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg221.us
  %83 = load i8, ptr %add.ptr222.us, align 1, !tbaa !19
  %conv223.us = zext i8 %83 to i32
  %add224.us = add nuw nsw i32 %add214.us, %conv223.us
  %cmp225.us = icmp slt i32 %add224.us, %max_no
  br i1 %cmp225.us, label %if.then227.us, label %for.inc.us

if.then227.us:                                    ; preds = %if.then217.us
  %incdec.ptr218.us = getelementptr inbounds i8, ptr %incdec.ptr208.us, i64 1
  %84 = load i8, ptr %incdec.ptr218.us, align 1, !tbaa !19
  %85 = zext i8 %84 to i64
  %idx.neg231.us = sub nsw i64 0, %85
  %add.ptr232.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg231.us
  %86 = load i8, ptr %add.ptr232.us, align 1, !tbaa !19
  %conv233.us = zext i8 %86 to i32
  %add234.us = add nuw nsw i32 %add224.us, %conv233.us
  %cmp235.us = icmp slt i32 %add234.us, %max_no
  br i1 %cmp235.us, label %if.then237.us, label %for.inc.us

if.then237.us:                                    ; preds = %if.then227.us
  %incdec.ptr228.us = getelementptr inbounds i8, ptr %incdec.ptr218.us, i64 1
  %incdec.ptr238.us = getelementptr inbounds i8, ptr %incdec.ptr228.us, i64 1
  %87 = load i8, ptr %incdec.ptr228.us, align 1, !tbaa !19
  %88 = zext i8 %87 to i64
  %idx.neg241.us = sub nsw i64 0, %88
  %add.ptr242.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg241.us
  %89 = load i8, ptr %add.ptr242.us, align 1, !tbaa !19
  %conv243.us = zext i8 %89 to i32
  %add244.us = add nuw nsw i32 %add234.us, %conv243.us
  %cmp245.us = icmp slt i32 %add244.us, %max_no
  br i1 %cmp245.us, label %if.then247.us, label %for.inc.us

if.then247.us:                                    ; preds = %if.then237.us
  %90 = load i8, ptr %incdec.ptr238.us, align 1, !tbaa !19
  %91 = zext i8 %90 to i64
  %idx.neg250.us = sub nsw i64 0, %91
  %add.ptr251.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg250.us
  %92 = load i8, ptr %add.ptr251.us, align 1, !tbaa !19
  %conv252.us = zext i8 %92 to i32
  %add253.us = add nuw nsw i32 %add244.us, %conv252.us
  %cmp254.us = icmp slt i32 %add253.us, %max_no
  br i1 %cmp254.us, label %if.then256.us, label %for.inc.us

if.then256.us:                                    ; preds = %if.then247.us
  %add.ptr259.us = getelementptr inbounds i8, ptr %incdec.ptr238.us, i64 %idx.ext80
  %93 = load i8, ptr %add.ptr259.us, align 1, !tbaa !19
  %94 = zext i8 %93 to i64
  %idx.neg263.us = sub nsw i64 0, %94
  %add.ptr264.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg263.us
  %95 = load i8, ptr %add.ptr264.us, align 1, !tbaa !19
  %conv265.us = zext i8 %95 to i32
  %add266.us = add nuw nsw i32 %add253.us, %conv265.us
  %cmp267.us = icmp slt i32 %add266.us, %max_no
  br i1 %cmp267.us, label %if.then269.us, label %for.inc.us

if.then269.us:                                    ; preds = %if.then256.us
  %incdec.ptr260.us = getelementptr inbounds i8, ptr %add.ptr259.us, i64 1
  %96 = load i8, ptr %incdec.ptr260.us, align 1, !tbaa !19
  %97 = zext i8 %96 to i64
  %idx.neg273.us = sub nsw i64 0, %97
  %add.ptr274.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg273.us
  %98 = load i8, ptr %add.ptr274.us, align 1, !tbaa !19
  %conv275.us = zext i8 %98 to i32
  %add276.us = add nuw nsw i32 %add266.us, %conv275.us
  %cmp277.us = icmp slt i32 %add276.us, %max_no
  br i1 %cmp277.us, label %if.then279.us, label %for.inc.us

if.then279.us:                                    ; preds = %if.then269.us
  %incdec.ptr270.us = getelementptr inbounds i8, ptr %incdec.ptr260.us, i64 1
  %99 = load i8, ptr %incdec.ptr270.us, align 1, !tbaa !19
  %100 = zext i8 %99 to i64
  %idx.neg283.us = sub nsw i64 0, %100
  %add.ptr284.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg283.us
  %101 = load i8, ptr %add.ptr284.us, align 1, !tbaa !19
  %conv285.us = zext i8 %101 to i32
  %add286.us = add nuw nsw i32 %add276.us, %conv285.us
  %cmp287.us = icmp slt i32 %add286.us, %max_no
  br i1 %cmp287.us, label %if.then289.us, label %for.inc.us

if.then289.us:                                    ; preds = %if.then279.us
  %incdec.ptr280.us = getelementptr inbounds i8, ptr %incdec.ptr270.us, i64 1
  %incdec.ptr290.us = getelementptr inbounds i8, ptr %incdec.ptr280.us, i64 1
  %102 = load i8, ptr %incdec.ptr280.us, align 1, !tbaa !19
  %103 = zext i8 %102 to i64
  %idx.neg293.us = sub nsw i64 0, %103
  %add.ptr294.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg293.us
  %104 = load i8, ptr %add.ptr294.us, align 1, !tbaa !19
  %conv295.us = zext i8 %104 to i32
  %add296.us = add nuw nsw i32 %add286.us, %conv295.us
  %cmp297.us = icmp slt i32 %add296.us, %max_no
  br i1 %cmp297.us, label %if.then299.us, label %for.inc.us

if.then299.us:                                    ; preds = %if.then289.us
  %105 = load i8, ptr %incdec.ptr290.us, align 1, !tbaa !19
  %106 = zext i8 %105 to i64
  %idx.neg302.us = sub nsw i64 0, %106
  %add.ptr303.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg302.us
  %107 = load i8, ptr %add.ptr303.us, align 1, !tbaa !19
  %conv304.us = zext i8 %107 to i32
  %add305.us = add nuw nsw i32 %add296.us, %conv304.us
  %cmp306.us = icmp slt i32 %add305.us, %max_no
  br i1 %cmp306.us, label %if.then308.us, label %for.inc.us

if.then308.us:                                    ; preds = %if.then299.us
  %add.ptr311.us = getelementptr inbounds i8, ptr %incdec.ptr290.us, i64 %idx.ext43
  %108 = load i8, ptr %add.ptr311.us, align 1, !tbaa !19
  %109 = zext i8 %108 to i64
  %idx.neg315.us = sub nsw i64 0, %109
  %add.ptr316.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg315.us
  %110 = load i8, ptr %add.ptr316.us, align 1, !tbaa !19
  %conv317.us = zext i8 %110 to i32
  %add318.us = add nuw nsw i32 %add305.us, %conv317.us
  %cmp319.us = icmp slt i32 %add318.us, %max_no
  br i1 %cmp319.us, label %if.then321.us, label %for.inc.us

if.then321.us:                                    ; preds = %if.then308.us
  %incdec.ptr312.us = getelementptr inbounds i8, ptr %add.ptr311.us, i64 1
  %111 = load i8, ptr %incdec.ptr312.us, align 1, !tbaa !19
  %112 = zext i8 %111 to i64
  %idx.neg325.us = sub nsw i64 0, %112
  %add.ptr326.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg325.us
  %113 = load i8, ptr %add.ptr326.us, align 1, !tbaa !19
  %conv327.us = zext i8 %113 to i32
  %add328.us = add nuw nsw i32 %add318.us, %conv327.us
  %cmp329.us = icmp slt i32 %add328.us, %max_no
  br i1 %cmp329.us, label %if.then331.us, label %for.inc.us

if.then331.us:                                    ; preds = %if.then321.us
  %incdec.ptr322.us = getelementptr inbounds i8, ptr %incdec.ptr312.us, i64 1
  %114 = load i8, ptr %incdec.ptr322.us, align 1, !tbaa !19
  %115 = zext i8 %114 to i64
  %idx.neg334.us = sub nsw i64 0, %115
  %add.ptr335.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg334.us
  %116 = load i8, ptr %add.ptr335.us, align 1, !tbaa !19
  %conv336.us = zext i8 %116 to i32
  %add337.us = add nuw nsw i32 %add328.us, %conv336.us
  %cmp338.us = icmp slt i32 %add337.us, %max_no
  br i1 %cmp338.us, label %if.then340.us, label %for.inc.us

if.then340.us:                                    ; preds = %if.then331.us
  %mul364.neg2135.us = add nuw nsw i32 %conv34.us, %conv27.us
  %mul373.neg2136.us = add nuw nsw i32 %mul364.neg2135.us, %conv40.us
  %mul384.us.neg = mul nsw i32 %conv50.us, -2
  %mul422.us = shl nuw nsw i32 %conv77.us, 1
  %mul618.us = shl nuw nsw i32 %conv265.us, 1
  %mul656.us = shl nuw nsw i32 %conv304.us, 1
  %117 = add nuw nsw i32 %conv94.us, %conv145.us
  %118 = add nuw nsw i32 %conv122.us, %conv171.us
  %119 = add nuw nsw i32 %117, %conv203.us
  %reass.add2153.us = sub nsw i32 %118, %119
  %reass.add2154.us = add nsw i32 %reass.add2153.us, %conv243.us
  %reass.mul.us = shl nsw i32 %reass.add2154.us, 1
  %120 = add nuw nsw i32 %conv87.us, %conv138.us
  %121 = add nuw nsw i32 %conv128.us, %conv180.us
  %122 = add nuw nsw i32 %120, %conv193.us
  %reass.add2161.us = sub nsw i32 %121, %122
  %reass.add2162.us = add nsw i32 %reass.add2161.us, %conv252.us
  %reass.mul2163.us = mul nsw i32 %reass.add2162.us, 3
  %123 = add nsw i32 %mul384.us.neg, %conv40.us
  %124 = add nuw nsw i32 %conv27.us, %conv57.us
  %sub504.us = sub nsw i32 %123, %124
  %sub512.us = add nsw i32 %sub504.us, %conv71.us
  %sub518.us = add nsw i32 %sub512.us, %mul422.us
  %125 = add nsw i32 %sub518.us, %conv115.us
  %126 = add nuw nsw i32 %conv101.us, %conv151.us
  %127 = add nsw i32 %125, %conv161.us
  %128 = add nuw nsw i32 %126, %conv213.us
  %sub562.us = sub nsw i32 %127, %128
  %sub571.us = add nsw i32 %sub562.us, %conv233.us
  %add587.us = add i32 %sub571.us, %reass.mul.us
  %add597.us = add i32 %add587.us, %reass.mul2163.us
  %129 = add nuw nsw i32 %mul618.us, %conv275.us
  %sub629.us = sub i32 %add597.us, %129
  %add647.us = add i32 %sub629.us, %conv295.us
  %add657.us = add i32 %add647.us, %mul656.us
  %sub670.us = sub i32 %add657.us, %conv317.us
  %add687.us = add i32 %sub670.us, %conv336.us
  %130 = add nuw nsw i32 %conv64.us, %conv57.us
  %131 = add nuw nsw i32 %130, %conv71.us
  %reass.add2169.us = sub nsw i32 %conv275.us, %131
  %reass.add2170.us = add nsw i32 %reass.add2169.us, %conv285.us
  %reass.add2171.us = add nsw i32 %reass.add2170.us, %conv295.us
  %reass.mul2172.us = shl nsw i32 %reass.add2171.us, 1
  %reass.add2174.us = sub nsw i32 %conv317.us, %mul373.neg2136.us
  %reass.add2175.us = add nsw i32 %reass.add2174.us, %conv327.us
  %reass.add2176.us = add nsw i32 %reass.add2175.us, %conv336.us
  %reass.mul2177.us = mul nsw i32 %reass.add2176.us, 3
  %132 = add nuw nsw i32 %mul422.us, %conv87.us
  %133 = add nuw nsw i32 %132, %conv94.us
  %134 = add nuw nsw i32 %133, %conv101.us
  %135 = add nuw nsw i32 %134, %conv108.us
  %136 = add nuw nsw i32 %135, %conv115.us
  %137 = add nuw nsw i32 %136, %conv122.us
  %138 = add nuw nsw i32 %137, %conv128.us
  %add580.us = sub nsw i32 %mul384.us.neg, %138
  %add589.us = add nsw i32 %add580.us, %conv193.us
  %add599.us = add nsw i32 %add589.us, %conv203.us
  %add608.us = add nsw i32 %add599.us, %conv213.us
  %add622.us = add nsw i32 %add608.us, %conv223.us
  %add632.us = add nsw i32 %add622.us, %conv233.us
  %add640.us = add nsw i32 %add632.us, %conv243.us
  %add650.us = add nsw i32 %add640.us, %conv252.us
  %add660.us = add nsw i32 %add650.us, %mul618.us
  %add673.us = add i32 %add660.us, %reass.mul2172.us
  %add681.us = add i32 %add673.us, %mul656.us
  %add690.us = add i32 %add681.us, %reass.mul2177.us
  %mul691.us = mul nsw i32 %add687.us, %add687.us
  %mul692.us = mul nsw i32 %add690.us, %add690.us
  %add693.us = add nuw nsw i32 %mul692.us, %mul691.us
  %mul694.us = mul nuw nsw i32 %add337.us, %add337.us
  %div2137.us = lshr i32 %mul694.us, 1
  %cmp695.us = icmp ugt i32 %add693.us, %div2137.us
  br i1 %cmp695.us, label %if.then697.us, label %for.inc.us

if.then697.us:                                    ; preds = %if.then340.us
  %cmp698.us = icmp ult i32 %mul692.us, %mul691.us
  br i1 %cmp698.us, label %if.then700.us, label %if.else.us

if.else.us:                                       ; preds = %if.then697.us
  %conv782.us = sitofp i32 %add687.us to float
  %139 = tail call i32 @llvm.abs.i32(i32 %add690.us, i1 true)
  %conv784.us = sitofp i32 %139 to float
  %div785.us = fdiv float %conv782.us, %conv784.us
  %div787.lhs.trunc.us = trunc i32 %139 to i16
  %div787.rhs.trunc.us = trunc i32 %add690.us to i16
  %div7872139.us = sdiv i16 %div787.lhs.trunc.us, %div787.rhs.trunc.us
  %div787.sext.us = sext i16 %div7872139.us to i32
  %add788.us = add nsw i32 %4, %div787.sext.us
  %mul789.us = mul nsw i32 %add788.us, %x_size
  %140 = trunc i64 %indvars.iv to i32
  %add790.us = add nsw i32 %mul789.us, %140
  %cmp791.us = fcmp olt float %div785.us, 0.000000e+00
  %conv794.us = fpext float %div785.us to double
  %. = select i1 %cmp791.us, double -5.000000e-01, double 5.000000e-01
  %sub795.us = fadd double %., %conv794.us
  %cond802.us = fptosi double %sub795.us to i32
  %add803.us = add nsw i32 %add790.us, %cond802.us
  %idxprom804.us = sext i32 %add803.us to i64
  %arrayidx805.us = getelementptr inbounds i8, ptr %in, i64 %idxprom804.us
  %141 = load i8, ptr %arrayidx805.us, align 1, !tbaa !19
  %142 = zext i8 %141 to i64
  %idx.neg808.us = sub nsw i64 0, %142
  %add.ptr809.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg808.us
  %143 = load i8, ptr %add.ptr809.us, align 1, !tbaa !19
  %conv810.us = zext i8 %143 to i32
  %mul811.us = shl nsw i32 %div787.sext.us, 1
  %add812.us = add nsw i32 %mul811.us, %4
  %mul813.us = mul nsw i32 %add812.us, %x_size
  %add814.us = add nsw i32 %mul813.us, %140
  %mul815.us = fmul float %div785.us, 2.000000e+00
  %cmp816.us = fcmp olt float %mul815.us, 0.000000e+00
  br i1 %cmp816.us, label %cond.true818.us, label %cond.end828.us

cond.true818.us:                                  ; preds = %if.else.us
  br label %cond.end828.us

cond.end828.us:                                   ; preds = %if.else.us, %cond.true818.us
  %.sink2284 = phi double [ -5.000000e-01, %cond.true818.us ], [ 5.000000e-01, %if.else.us ]
  %conv820.us = fpext float %mul815.us to double
  %sub821.us = fadd double %.sink2284, %conv820.us
  %cond829.us = fptosi double %sub821.us to i32
  %add830.us = add nsw i32 %add814.us, %cond829.us
  %idxprom831.us = sext i32 %add830.us to i64
  %arrayidx832.us = getelementptr inbounds i8, ptr %in, i64 %idxprom831.us
  %144 = load i8, ptr %arrayidx832.us, align 1, !tbaa !19
  %145 = zext i8 %144 to i64
  %idx.neg835.us = sub nsw i64 0, %145
  %add.ptr836.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg835.us
  %146 = load i8, ptr %add.ptr836.us, align 1, !tbaa !19
  %conv837.us = zext i8 %146 to i32
  %add838.us = add nuw nsw i32 %conv837.us, %conv810.us
  %mul839.us = mul nsw i32 %div787.sext.us, 3
  %add840.us = add nsw i32 %mul839.us, %4
  %mul841.us = mul nsw i32 %add840.us, %x_size
  %add842.us = add nsw i32 %mul841.us, %140
  %mul843.us = fmul float %div785.us, 3.000000e+00
  %cmp844.us = fcmp olt float %mul843.us, 0.000000e+00
  %.2292 = select i1 %cmp844.us, double -5.000000e-01, double 5.000000e-01
  %conv848.us = fpext float %mul843.us to double
  %sub849.us = fadd double %.2292, %conv848.us
  %cond857.us = fptosi double %sub849.us to i32
  %add858.us = add nsw i32 %add842.us, %cond857.us
  br label %if.end.us

if.then700.us:                                    ; preds = %if.then697.us
  %conv701.us = sitofp i32 %add690.us to float
  %147 = tail call i32 @llvm.abs.i32(i32 %add687.us, i1 true)
  %conv703.us = sitofp i32 %147 to float
  %div704.us = fdiv float %conv701.us, %conv703.us
  %div706.lhs.trunc.us = trunc i32 %147 to i16
  %div706.rhs.trunc.us = trunc i32 %add687.us to i16
  %div7062138.us = sdiv i16 %div706.lhs.trunc.us, %div706.rhs.trunc.us
  %div706.sext.us = sext i16 %div7062138.us to i32
  %cmp707.us = fcmp olt float %div704.us, 0.000000e+00
  %conv709.us = fpext float %div704.us to double
  %.2293 = select i1 %cmp707.us, double -5.000000e-01, double 5.000000e-01
  %sub710.us = fadd double %.2293, %conv709.us
  %cond.us = fptosi double %sub710.us to i32
  %add715.us = add nsw i32 %5, %cond.us
  %mul716.us = mul nsw i32 %add715.us, %x_size
  %148 = trunc i64 %indvars.iv to i32
  %add717.us = add i32 %148, %div706.sext.us
  %add718.us = add i32 %add717.us, %mul716.us
  %idxprom719.us = sext i32 %add718.us to i64
  %arrayidx720.us = getelementptr inbounds i8, ptr %in, i64 %idxprom719.us
  %149 = load i8, ptr %arrayidx720.us, align 1, !tbaa !19
  %150 = zext i8 %149 to i64
  %idx.neg723.us = sub nsw i64 0, %150
  %add.ptr724.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg723.us
  %151 = load i8, ptr %add.ptr724.us, align 1, !tbaa !19
  %conv725.us = zext i8 %151 to i32
  %mul726.us = fmul float %div704.us, 2.000000e+00
  %cmp727.us = fcmp olt float %mul726.us, 0.000000e+00
  br i1 %cmp727.us, label %cond.true729.us, label %cond.end739.us

cond.true729.us:                                  ; preds = %if.then700.us
  br label %cond.end739.us

cond.end739.us:                                   ; preds = %if.then700.us, %cond.true729.us
  %.sink2287 = phi double [ -5.000000e-01, %cond.true729.us ], [ 5.000000e-01, %if.then700.us ]
  %conv731.us = fpext float %mul726.us to double
  %sub732.us = fadd double %.sink2287, %conv731.us
  %cond740.us = fptosi double %sub732.us to i32
  %add741.us = add nsw i32 %5, %cond740.us
  %mul742.us = mul nsw i32 %add741.us, %x_size
  %mul744.us = shl nsw i32 %div706.sext.us, 1
  %add743.us = add i32 %mul744.us, %148
  %add745.us = add i32 %add743.us, %mul742.us
  %idxprom746.us = sext i32 %add745.us to i64
  %arrayidx747.us = getelementptr inbounds i8, ptr %in, i64 %idxprom746.us
  %152 = load i8, ptr %arrayidx747.us, align 1, !tbaa !19
  %153 = zext i8 %152 to i64
  %idx.neg750.us = sub nsw i64 0, %153
  %add.ptr751.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg750.us
  %154 = load i8, ptr %add.ptr751.us, align 1, !tbaa !19
  %conv752.us = zext i8 %154 to i32
  %add753.us = add nuw nsw i32 %conv752.us, %conv725.us
  %mul754.us = fmul float %div704.us, 3.000000e+00
  %cmp755.us = fcmp olt float %mul754.us, 0.000000e+00
  %.2294 = select i1 %cmp755.us, double -5.000000e-01, double 5.000000e-01
  %conv759.us = fpext float %mul754.us to double
  %sub760.us = fadd double %.2294, %conv759.us
  %cond768.us = fptosi double %sub760.us to i32
  %add769.us = add nsw i32 %5, %cond768.us
  %mul770.us = mul nsw i32 %add769.us, %x_size
  %mul772.us = mul nsw i32 %div706.sext.us, 3
  %add771.us = add i32 %mul772.us, %148
  %add773.us = add i32 %add771.us, %mul770.us
  br label %if.end.us

if.end.us:                                        ; preds = %cond.end739.us, %cond.end828.us
  %add773.us.sink = phi i32 [ %add773.us, %cond.end739.us ], [ %add858.us, %cond.end828.us ]
  %add753.us.sink = phi i32 [ %add753.us, %cond.end739.us ], [ %add838.us, %cond.end828.us ]
  %idxprom774.us = sext i32 %add773.us.sink to i64
  %arrayidx775.us = getelementptr inbounds i8, ptr %in, i64 %idxprom774.us
  %155 = load i8, ptr %arrayidx775.us, align 1, !tbaa !19
  %156 = zext i8 %155 to i64
  %idx.neg778.us = sub nsw i64 0, %156
  %add.ptr779.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg778.us
  %157 = load i8, ptr %add.ptr779.us, align 1, !tbaa !19
  %conv780.us = zext i8 %157 to i32
  %add781.us = add nuw nsw i32 %add753.us.sink, %conv780.us
  %cmp867.us = icmp ugt i32 %add781.us, 290
  br i1 %cmp867.us, label %if.then869.us, label %for.inc.us

if.then869.us:                                    ; preds = %if.end.us
  %sub870.us = sub nsw i32 %max_no, %add337.us
  %arrayidx874.us = getelementptr inbounds i32, ptr %r, i64 %6
  store i32 %sub870.us, ptr %arrayidx874.us, align 4, !tbaa !12
  %mul875.us = mul nsw i32 %add687.us, 51
  %div876.us = sdiv i32 %mul875.us, %add337.us
  %arrayidx880.us = getelementptr inbounds i32, ptr %call, i64 %6
  store i32 %div876.us, ptr %arrayidx880.us, align 4, !tbaa !12
  %mul881.us = mul nsw i32 %add690.us, 51
  %div882.us = sdiv i32 %mul881.us, %add337.us
  %arrayidx886.us = getelementptr inbounds i32, ptr %call8, i64 %6
  store i32 %div882.us, ptr %arrayidx886.us, align 4, !tbaa !12
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.then869.us, %if.end.us, %if.then340.us, %if.then331.us, %if.then321.us, %if.then308.us, %if.then299.us, %if.then289.us, %if.then279.us, %if.then269.us, %if.then256.us, %if.then247.us, %if.then237.us, %if.then227.us, %if.then217.us, %if.then207.us, %if.then197.us, %if.then184.us, %if.then175.us, %if.then165.us, %if.then.us, %for.body14.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond10.for.inc908_crit_edge.us, label %for.body14.us, !llvm.loop !66

for.cond10.for.inc908_crit_edge.us:               ; preds = %for.inc.us
  %indvars.iv.next2203 = add nuw nsw i64 %indvars.iv2202, 1
  %exitcond2209.not = icmp eq i64 %indvars.iv.next2203, %wide.trip.count2208
  br i1 %exitcond2209.not, label %for.cond911.preheader, label %for.cond10.preheader.us, !llvm.loop !67

for.cond911.preheader:                            ; preds = %for.cond10.for.inc908_crit_edge.us
  %cmp9182187 = icmp sgt i32 %x_size, 10
  %or.cond = and i1 %cmp2184, %cmp9182187
  br i1 %or.cond, label %for.cond916.preheader.us.preheader, label %for.end1387

for.cond916.preheader.us.preheader:               ; preds = %for.cond911.preheader
  %sub917 = add i32 %x_size, -5
  %158 = zext i32 %x_size to i64
  %wide.trip.count2279 = zext i32 %sub to i64
  %wide.trip.count2262 = zext i32 %sub917 to i64
  br label %for.cond916.preheader.us

for.cond916.preheader.us:                         ; preds = %for.cond916.preheader.us.preheader, %for.cond916.for.inc1385_crit_edge.us
  %indvars.iv2264 = phi i64 [ 5, %for.cond916.preheader.us.preheader ], [ %indvars.iv.next2265, %for.cond916.for.inc1385_crit_edge.us ]
  %n.02195.us = phi i32 [ 0, %for.cond916.preheader.us.preheader ], [ %n.2.us, %for.cond916.for.inc1385_crit_edge.us ]
  %159 = mul nsw i64 %indvars.iv2264, %158
  %160 = add nsw i64 %indvars.iv2264, -3
  %161 = mul nsw i64 %160, %158
  %162 = add nsw i64 %indvars.iv2264, -2
  %163 = mul nsw i64 %162, %158
  %164 = add nsw i64 %indvars.iv2264, -1
  %165 = mul nsw i64 %164, %158
  %indvars.iv.next2265 = add nuw nsw i64 %indvars.iv2264, 1
  %166 = mul nsw i64 %indvars.iv.next2265, %158
  %167 = add nuw nsw i64 %indvars.iv2264, 2
  %168 = mul nsw i64 %167, %158
  %169 = add nuw nsw i64 %indvars.iv2264, 3
  %170 = mul nsw i64 %169, %158
  %171 = trunc i64 %indvars.iv2264 to i32
  br label %for.body920.us

for.body920.us:                                   ; preds = %for.cond916.preheader.us, %for.inc1382.us
  %indvars.iv2210 = phi i64 [ 5, %for.cond916.preheader.us ], [ %indvars.iv.next2211, %for.inc1382.us ]
  %n.12190.us = phi i32 [ %n.02195.us, %for.cond916.preheader.us ], [ %n.2.us, %for.inc1382.us ]
  %172 = add nuw nsw i64 %indvars.iv2210, %159
  %arrayidx924.us = getelementptr inbounds i32, ptr %r, i64 %172
  %173 = load i32, ptr %arrayidx924.us, align 4, !tbaa !12
  %cmp925.us = icmp sgt i32 %173, 0
  br i1 %cmp925.us, label %if.then927.us, label %for.inc1382.us

if.then927.us:                                    ; preds = %for.body920.us
  %174 = add nsw i64 %indvars.iv2210, %161
  %175 = add nsw i64 %174, -3
  %arrayidx933.us = getelementptr inbounds i32, ptr %r, i64 %175
  %176 = load i32, ptr %arrayidx933.us, align 4, !tbaa !12
  %cmp934.us = icmp sgt i32 %173, %176
  br i1 %cmp934.us, label %land.lhs.true.us, label %for.inc1382.us

land.lhs.true.us:                                 ; preds = %if.then927.us
  %177 = add nsw i64 %174, -2
  %arrayidx941.us = getelementptr inbounds i32, ptr %r, i64 %177
  %178 = load i32, ptr %arrayidx941.us, align 4, !tbaa !12
  %cmp942.us = icmp sgt i32 %173, %178
  br i1 %cmp942.us, label %land.lhs.true944.us, label %for.inc1382.us

land.lhs.true944.us:                              ; preds = %land.lhs.true.us
  %179 = add nsw i64 %174, -1
  %arrayidx950.us = getelementptr inbounds i32, ptr %r, i64 %179
  %180 = load i32, ptr %arrayidx950.us, align 4, !tbaa !12
  %cmp951.us = icmp sgt i32 %173, %180
  br i1 %cmp951.us, label %land.lhs.true953.us, label %for.inc1382.us

land.lhs.true953.us:                              ; preds = %land.lhs.true944.us
  %arrayidx958.us = getelementptr inbounds i32, ptr %r, i64 %174
  %181 = load i32, ptr %arrayidx958.us, align 4, !tbaa !12
  %cmp959.us = icmp sgt i32 %173, %181
  br i1 %cmp959.us, label %land.lhs.true961.us, label %for.inc1382.us

land.lhs.true961.us:                              ; preds = %land.lhs.true953.us
  %182 = add nsw i64 %174, 1
  %arrayidx967.us = getelementptr inbounds i32, ptr %r, i64 %182
  %183 = load i32, ptr %arrayidx967.us, align 4, !tbaa !12
  %cmp968.us = icmp sgt i32 %173, %183
  br i1 %cmp968.us, label %land.lhs.true970.us, label %for.inc1382.us

land.lhs.true970.us:                              ; preds = %land.lhs.true961.us
  %184 = add nsw i64 %174, 2
  %arrayidx976.us = getelementptr inbounds i32, ptr %r, i64 %184
  %185 = load i32, ptr %arrayidx976.us, align 4, !tbaa !12
  %cmp977.us = icmp sgt i32 %173, %185
  br i1 %cmp977.us, label %land.lhs.true979.us, label %for.inc1382.us

land.lhs.true979.us:                              ; preds = %land.lhs.true970.us
  %186 = add nsw i64 %174, 3
  %arrayidx985.us = getelementptr inbounds i32, ptr %r, i64 %186
  %187 = load i32, ptr %arrayidx985.us, align 4, !tbaa !12
  %cmp986.us = icmp sgt i32 %173, %187
  br i1 %cmp986.us, label %land.lhs.true988.us, label %for.inc1382.us

land.lhs.true988.us:                              ; preds = %land.lhs.true979.us
  %188 = add nsw i64 %indvars.iv2210, %163
  %189 = add nsw i64 %188, -3
  %arrayidx994.us = getelementptr inbounds i32, ptr %r, i64 %189
  %190 = load i32, ptr %arrayidx994.us, align 4, !tbaa !12
  %cmp995.us = icmp sgt i32 %173, %190
  br i1 %cmp995.us, label %land.lhs.true997.us, label %for.inc1382.us

land.lhs.true997.us:                              ; preds = %land.lhs.true988.us
  %191 = add nsw i64 %188, -2
  %arrayidx1003.us = getelementptr inbounds i32, ptr %r, i64 %191
  %192 = load i32, ptr %arrayidx1003.us, align 4, !tbaa !12
  %cmp1004.us = icmp sgt i32 %173, %192
  br i1 %cmp1004.us, label %land.lhs.true1006.us, label %for.inc1382.us

land.lhs.true1006.us:                             ; preds = %land.lhs.true997.us
  %193 = add nsw i64 %188, -1
  %arrayidx1012.us = getelementptr inbounds i32, ptr %r, i64 %193
  %194 = load i32, ptr %arrayidx1012.us, align 4, !tbaa !12
  %cmp1013.us = icmp sgt i32 %173, %194
  br i1 %cmp1013.us, label %land.lhs.true1015.us, label %for.inc1382.us

land.lhs.true1015.us:                             ; preds = %land.lhs.true1006.us
  %arrayidx1020.us = getelementptr inbounds i32, ptr %r, i64 %188
  %195 = load i32, ptr %arrayidx1020.us, align 4, !tbaa !12
  %cmp1021.us = icmp sgt i32 %173, %195
  br i1 %cmp1021.us, label %land.lhs.true1023.us, label %for.inc1382.us

land.lhs.true1023.us:                             ; preds = %land.lhs.true1015.us
  %196 = add nsw i64 %188, 1
  %arrayidx1029.us = getelementptr inbounds i32, ptr %r, i64 %196
  %197 = load i32, ptr %arrayidx1029.us, align 4, !tbaa !12
  %cmp1030.us = icmp sgt i32 %173, %197
  br i1 %cmp1030.us, label %land.lhs.true1032.us, label %for.inc1382.us

land.lhs.true1032.us:                             ; preds = %land.lhs.true1023.us
  %198 = add nsw i64 %188, 2
  %arrayidx1038.us = getelementptr inbounds i32, ptr %r, i64 %198
  %199 = load i32, ptr %arrayidx1038.us, align 4, !tbaa !12
  %cmp1039.us = icmp sgt i32 %173, %199
  br i1 %cmp1039.us, label %land.lhs.true1041.us, label %for.inc1382.us

land.lhs.true1041.us:                             ; preds = %land.lhs.true1032.us
  %200 = add nsw i64 %188, 3
  %arrayidx1047.us = getelementptr inbounds i32, ptr %r, i64 %200
  %201 = load i32, ptr %arrayidx1047.us, align 4, !tbaa !12
  %cmp1048.us = icmp sgt i32 %173, %201
  br i1 %cmp1048.us, label %land.lhs.true1050.us, label %for.inc1382.us

land.lhs.true1050.us:                             ; preds = %land.lhs.true1041.us
  %202 = add nsw i64 %indvars.iv2210, %165
  %203 = add nsw i64 %202, -3
  %arrayidx1056.us = getelementptr inbounds i32, ptr %r, i64 %203
  %204 = load i32, ptr %arrayidx1056.us, align 4, !tbaa !12
  %cmp1057.us = icmp sgt i32 %173, %204
  br i1 %cmp1057.us, label %land.lhs.true1059.us, label %for.inc1382.us

land.lhs.true1059.us:                             ; preds = %land.lhs.true1050.us
  %205 = add nsw i64 %202, -2
  %arrayidx1065.us = getelementptr inbounds i32, ptr %r, i64 %205
  %206 = load i32, ptr %arrayidx1065.us, align 4, !tbaa !12
  %cmp1066.us = icmp sgt i32 %173, %206
  br i1 %cmp1066.us, label %land.lhs.true1068.us, label %for.inc1382.us

land.lhs.true1068.us:                             ; preds = %land.lhs.true1059.us
  %207 = add nsw i64 %202, -1
  %arrayidx1074.us = getelementptr inbounds i32, ptr %r, i64 %207
  %208 = load i32, ptr %arrayidx1074.us, align 4, !tbaa !12
  %cmp1075.us = icmp sgt i32 %173, %208
  br i1 %cmp1075.us, label %land.lhs.true1077.us, label %for.inc1382.us

land.lhs.true1077.us:                             ; preds = %land.lhs.true1068.us
  %arrayidx1082.us = getelementptr inbounds i32, ptr %r, i64 %202
  %209 = load i32, ptr %arrayidx1082.us, align 4, !tbaa !12
  %cmp1083.us = icmp sgt i32 %173, %209
  br i1 %cmp1083.us, label %land.lhs.true1085.us, label %for.inc1382.us

land.lhs.true1085.us:                             ; preds = %land.lhs.true1077.us
  %210 = add nsw i64 %202, 1
  %arrayidx1091.us = getelementptr inbounds i32, ptr %r, i64 %210
  %211 = load i32, ptr %arrayidx1091.us, align 4, !tbaa !12
  %cmp1092.us = icmp sgt i32 %173, %211
  br i1 %cmp1092.us, label %land.lhs.true1094.us, label %for.inc1382.us

land.lhs.true1094.us:                             ; preds = %land.lhs.true1085.us
  %212 = add nsw i64 %202, 2
  %arrayidx1100.us = getelementptr inbounds i32, ptr %r, i64 %212
  %213 = load i32, ptr %arrayidx1100.us, align 4, !tbaa !12
  %cmp1101.us = icmp sgt i32 %173, %213
  br i1 %cmp1101.us, label %land.lhs.true1103.us, label %for.inc1382.us

land.lhs.true1103.us:                             ; preds = %land.lhs.true1094.us
  %214 = add nsw i64 %202, 3
  %arrayidx1109.us = getelementptr inbounds i32, ptr %r, i64 %214
  %215 = load i32, ptr %arrayidx1109.us, align 4, !tbaa !12
  %cmp1110.us = icmp sgt i32 %173, %215
  br i1 %cmp1110.us, label %land.lhs.true1112.us, label %for.inc1382.us

land.lhs.true1112.us:                             ; preds = %land.lhs.true1103.us
  %216 = add nsw i64 %172, -3
  %arrayidx1117.us = getelementptr inbounds i32, ptr %r, i64 %216
  %217 = load i32, ptr %arrayidx1117.us, align 4, !tbaa !12
  %cmp1118.us = icmp sgt i32 %173, %217
  br i1 %cmp1118.us, label %land.lhs.true1120.us, label %for.inc1382.us

land.lhs.true1120.us:                             ; preds = %land.lhs.true1112.us
  %218 = add nsw i64 %172, -2
  %arrayidx1125.us = getelementptr inbounds i32, ptr %r, i64 %218
  %219 = load i32, ptr %arrayidx1125.us, align 4, !tbaa !12
  %cmp1126.us = icmp sgt i32 %173, %219
  br i1 %cmp1126.us, label %land.lhs.true1128.us, label %for.inc1382.us

land.lhs.true1128.us:                             ; preds = %land.lhs.true1120.us
  %220 = add nsw i64 %172, -1
  %arrayidx1133.us = getelementptr inbounds i32, ptr %r, i64 %220
  %221 = load i32, ptr %arrayidx1133.us, align 4, !tbaa !12
  %cmp1134.us = icmp sgt i32 %173, %221
  br i1 %cmp1134.us, label %land.lhs.true1136.us, label %for.inc1382.us

land.lhs.true1136.us:                             ; preds = %land.lhs.true1128.us
  %222 = add nuw nsw i64 %172, 1
  %arrayidx1141.us = getelementptr inbounds i32, ptr %r, i64 %222
  %223 = load i32, ptr %arrayidx1141.us, align 4, !tbaa !12
  %cmp1142.not.us = icmp slt i32 %173, %223
  br i1 %cmp1142.not.us, label %for.inc1382.us, label %land.lhs.true1144.us

land.lhs.true1144.us:                             ; preds = %land.lhs.true1136.us
  %224 = add nuw nsw i64 %172, 2
  %arrayidx1149.us = getelementptr inbounds i32, ptr %r, i64 %224
  %225 = load i32, ptr %arrayidx1149.us, align 4, !tbaa !12
  %cmp1150.not.us = icmp slt i32 %173, %225
  br i1 %cmp1150.not.us, label %for.inc1382.us, label %land.lhs.true1152.us

land.lhs.true1152.us:                             ; preds = %land.lhs.true1144.us
  %226 = add nuw nsw i64 %172, 3
  %arrayidx1157.us = getelementptr inbounds i32, ptr %r, i64 %226
  %227 = load i32, ptr %arrayidx1157.us, align 4, !tbaa !12
  %cmp1158.not.us = icmp slt i32 %173, %227
  br i1 %cmp1158.not.us, label %for.inc1382.us, label %land.lhs.true1160.us

land.lhs.true1160.us:                             ; preds = %land.lhs.true1152.us
  %228 = add nuw nsw i64 %indvars.iv2210, %166
  %229 = add nsw i64 %228, -3
  %arrayidx1166.us = getelementptr inbounds i32, ptr %r, i64 %229
  %230 = load i32, ptr %arrayidx1166.us, align 4, !tbaa !12
  %cmp1167.not.us = icmp slt i32 %173, %230
  br i1 %cmp1167.not.us, label %for.inc1382.us, label %land.lhs.true1169.us

land.lhs.true1169.us:                             ; preds = %land.lhs.true1160.us
  %231 = add nsw i64 %228, -2
  %arrayidx1175.us = getelementptr inbounds i32, ptr %r, i64 %231
  %232 = load i32, ptr %arrayidx1175.us, align 4, !tbaa !12
  %cmp1176.not.us = icmp slt i32 %173, %232
  br i1 %cmp1176.not.us, label %for.inc1382.us, label %land.lhs.true1178.us

land.lhs.true1178.us:                             ; preds = %land.lhs.true1169.us
  %233 = add nsw i64 %228, -1
  %arrayidx1184.us = getelementptr inbounds i32, ptr %r, i64 %233
  %234 = load i32, ptr %arrayidx1184.us, align 4, !tbaa !12
  %cmp1185.not.us = icmp slt i32 %173, %234
  br i1 %cmp1185.not.us, label %for.inc1382.us, label %land.lhs.true1187.us

land.lhs.true1187.us:                             ; preds = %land.lhs.true1178.us
  %arrayidx1192.us = getelementptr inbounds i32, ptr %r, i64 %228
  %235 = load i32, ptr %arrayidx1192.us, align 4, !tbaa !12
  %cmp1193.not.us = icmp slt i32 %173, %235
  br i1 %cmp1193.not.us, label %for.inc1382.us, label %land.lhs.true1195.us

land.lhs.true1195.us:                             ; preds = %land.lhs.true1187.us
  %236 = add nuw nsw i64 %228, 1
  %arrayidx1201.us = getelementptr inbounds i32, ptr %r, i64 %236
  %237 = load i32, ptr %arrayidx1201.us, align 4, !tbaa !12
  %cmp1202.not.us = icmp slt i32 %173, %237
  br i1 %cmp1202.not.us, label %for.inc1382.us, label %land.lhs.true1204.us

land.lhs.true1204.us:                             ; preds = %land.lhs.true1195.us
  %238 = add nuw nsw i64 %228, 2
  %arrayidx1210.us = getelementptr inbounds i32, ptr %r, i64 %238
  %239 = load i32, ptr %arrayidx1210.us, align 4, !tbaa !12
  %cmp1211.not.us = icmp slt i32 %173, %239
  br i1 %cmp1211.not.us, label %for.inc1382.us, label %land.lhs.true1213.us

land.lhs.true1213.us:                             ; preds = %land.lhs.true1204.us
  %240 = add nuw nsw i64 %228, 3
  %arrayidx1219.us = getelementptr inbounds i32, ptr %r, i64 %240
  %241 = load i32, ptr %arrayidx1219.us, align 4, !tbaa !12
  %cmp1220.not.us = icmp slt i32 %173, %241
  br i1 %cmp1220.not.us, label %for.inc1382.us, label %land.lhs.true1222.us

land.lhs.true1222.us:                             ; preds = %land.lhs.true1213.us
  %242 = add nuw nsw i64 %indvars.iv2210, %168
  %243 = add nsw i64 %242, -3
  %arrayidx1228.us = getelementptr inbounds i32, ptr %r, i64 %243
  %244 = load i32, ptr %arrayidx1228.us, align 4, !tbaa !12
  %cmp1229.not.us = icmp slt i32 %173, %244
  br i1 %cmp1229.not.us, label %for.inc1382.us, label %land.lhs.true1231.us

land.lhs.true1231.us:                             ; preds = %land.lhs.true1222.us
  %245 = add nsw i64 %242, -2
  %arrayidx1237.us = getelementptr inbounds i32, ptr %r, i64 %245
  %246 = load i32, ptr %arrayidx1237.us, align 4, !tbaa !12
  %cmp1238.not.us = icmp slt i32 %173, %246
  br i1 %cmp1238.not.us, label %for.inc1382.us, label %land.lhs.true1240.us

land.lhs.true1240.us:                             ; preds = %land.lhs.true1231.us
  %247 = add nsw i64 %242, -1
  %arrayidx1246.us = getelementptr inbounds i32, ptr %r, i64 %247
  %248 = load i32, ptr %arrayidx1246.us, align 4, !tbaa !12
  %cmp1247.not.us = icmp slt i32 %173, %248
  br i1 %cmp1247.not.us, label %for.inc1382.us, label %land.lhs.true1249.us

land.lhs.true1249.us:                             ; preds = %land.lhs.true1240.us
  %arrayidx1254.us = getelementptr inbounds i32, ptr %r, i64 %242
  %249 = load i32, ptr %arrayidx1254.us, align 4, !tbaa !12
  %cmp1255.not.us = icmp slt i32 %173, %249
  br i1 %cmp1255.not.us, label %for.inc1382.us, label %land.lhs.true1257.us

land.lhs.true1257.us:                             ; preds = %land.lhs.true1249.us
  %250 = add nuw nsw i64 %242, 1
  %arrayidx1263.us = getelementptr inbounds i32, ptr %r, i64 %250
  %251 = load i32, ptr %arrayidx1263.us, align 4, !tbaa !12
  %cmp1264.not.us = icmp slt i32 %173, %251
  br i1 %cmp1264.not.us, label %for.inc1382.us, label %land.lhs.true1266.us

land.lhs.true1266.us:                             ; preds = %land.lhs.true1257.us
  %252 = add nuw nsw i64 %242, 2
  %arrayidx1272.us = getelementptr inbounds i32, ptr %r, i64 %252
  %253 = load i32, ptr %arrayidx1272.us, align 4, !tbaa !12
  %cmp1273.not.us = icmp slt i32 %173, %253
  br i1 %cmp1273.not.us, label %for.inc1382.us, label %land.lhs.true1275.us

land.lhs.true1275.us:                             ; preds = %land.lhs.true1266.us
  %254 = add nuw nsw i64 %242, 3
  %arrayidx1281.us = getelementptr inbounds i32, ptr %r, i64 %254
  %255 = load i32, ptr %arrayidx1281.us, align 4, !tbaa !12
  %cmp1282.not.us = icmp slt i32 %173, %255
  br i1 %cmp1282.not.us, label %for.inc1382.us, label %land.lhs.true1284.us

land.lhs.true1284.us:                             ; preds = %land.lhs.true1275.us
  %256 = add nuw nsw i64 %indvars.iv2210, %170
  %257 = add nsw i64 %256, -3
  %arrayidx1290.us = getelementptr inbounds i32, ptr %r, i64 %257
  %258 = load i32, ptr %arrayidx1290.us, align 4, !tbaa !12
  %cmp1291.not.us = icmp slt i32 %173, %258
  br i1 %cmp1291.not.us, label %for.inc1382.us, label %land.lhs.true1293.us

land.lhs.true1293.us:                             ; preds = %land.lhs.true1284.us
  %259 = add nsw i64 %256, -2
  %arrayidx1299.us = getelementptr inbounds i32, ptr %r, i64 %259
  %260 = load i32, ptr %arrayidx1299.us, align 4, !tbaa !12
  %cmp1300.not.us = icmp slt i32 %173, %260
  br i1 %cmp1300.not.us, label %for.inc1382.us, label %land.lhs.true1302.us

land.lhs.true1302.us:                             ; preds = %land.lhs.true1293.us
  %261 = add nsw i64 %256, -1
  %arrayidx1308.us = getelementptr inbounds i32, ptr %r, i64 %261
  %262 = load i32, ptr %arrayidx1308.us, align 4, !tbaa !12
  %cmp1309.not.us = icmp slt i32 %173, %262
  br i1 %cmp1309.not.us, label %for.inc1382.us, label %land.lhs.true1311.us

land.lhs.true1311.us:                             ; preds = %land.lhs.true1302.us
  %arrayidx1316.us = getelementptr inbounds i32, ptr %r, i64 %256
  %263 = load i32, ptr %arrayidx1316.us, align 4, !tbaa !12
  %cmp1317.not.us = icmp slt i32 %173, %263
  br i1 %cmp1317.not.us, label %for.inc1382.us, label %land.lhs.true1319.us

land.lhs.true1319.us:                             ; preds = %land.lhs.true1311.us
  %264 = add nuw nsw i64 %256, 1
  %arrayidx1325.us = getelementptr inbounds i32, ptr %r, i64 %264
  %265 = load i32, ptr %arrayidx1325.us, align 4, !tbaa !12
  %cmp1326.not.us = icmp slt i32 %173, %265
  br i1 %cmp1326.not.us, label %for.inc1382.us, label %land.lhs.true1328.us

land.lhs.true1328.us:                             ; preds = %land.lhs.true1319.us
  %266 = add nuw nsw i64 %256, 2
  %arrayidx1334.us = getelementptr inbounds i32, ptr %r, i64 %266
  %267 = load i32, ptr %arrayidx1334.us, align 4, !tbaa !12
  %cmp1335.not.us = icmp slt i32 %173, %267
  br i1 %cmp1335.not.us, label %for.inc1382.us, label %land.lhs.true1337.us

land.lhs.true1337.us:                             ; preds = %land.lhs.true1328.us
  %268 = add nuw nsw i64 %256, 3
  %arrayidx1343.us = getelementptr inbounds i32, ptr %r, i64 %268
  %269 = load i32, ptr %arrayidx1343.us, align 4, !tbaa !12
  %cmp1344.not.us = icmp slt i32 %173, %269
  br i1 %cmp1344.not.us, label %for.inc1382.us, label %if.then1346.us

if.then1346.us:                                   ; preds = %land.lhs.true1337.us
  %idxprom1347.us = sext i32 %n.12190.us to i64
  %arrayidx1348.us = getelementptr inbounds %struct.anon, ptr %corner_list, i64 %idxprom1347.us
  %info.us = getelementptr inbounds %struct.anon, ptr %corner_list, i64 %idxprom1347.us, i32 2
  store i32 0, ptr %info.us, align 4, !tbaa !61
  %270 = trunc i64 %indvars.iv2210 to i32
  store i32 %270, ptr %arrayidx1348.us, align 4, !tbaa !64
  %y1354.us = getelementptr inbounds %struct.anon, ptr %corner_list, i64 %idxprom1347.us, i32 1
  store i32 %171, ptr %y1354.us, align 4, !tbaa !63
  %arrayidx1358.us = getelementptr inbounds i32, ptr %call, i64 %172
  %271 = load i32, ptr %arrayidx1358.us, align 4, !tbaa !12
  %dx.us = getelementptr inbounds %struct.anon, ptr %corner_list, i64 %idxprom1347.us, i32 3
  store i32 %271, ptr %dx.us, align 4, !tbaa !68
  %arrayidx1364.us = getelementptr inbounds i32, ptr %call8, i64 %172
  %272 = load i32, ptr %arrayidx1364.us, align 4, !tbaa !12
  %dy.us = getelementptr inbounds %struct.anon, ptr %corner_list, i64 %idxprom1347.us, i32 4
  store i32 %272, ptr %dy.us, align 4, !tbaa !69
  %arrayidx1370.us = getelementptr inbounds i8, ptr %in, i64 %172
  %273 = load i8, ptr %arrayidx1370.us, align 1, !tbaa !19
  %conv1371.us = zext i8 %273 to i32
  %I.us = getelementptr inbounds %struct.anon, ptr %corner_list, i64 %idxprom1347.us, i32 5
  store i32 %conv1371.us, ptr %I.us, align 4, !tbaa !70
  %inc1374.us = add nsw i32 %n.12190.us, 1
  %cmp1375.us = icmp eq i32 %inc1374.us, 15000
  br i1 %cmp1375.us, label %if.then1377, label %for.inc1382.us

for.inc1382.us:                                   ; preds = %if.then1346.us, %land.lhs.true1337.us, %land.lhs.true1328.us, %land.lhs.true1319.us, %land.lhs.true1311.us, %land.lhs.true1302.us, %land.lhs.true1293.us, %land.lhs.true1284.us, %land.lhs.true1275.us, %land.lhs.true1266.us, %land.lhs.true1257.us, %land.lhs.true1249.us, %land.lhs.true1240.us, %land.lhs.true1231.us, %land.lhs.true1222.us, %land.lhs.true1213.us, %land.lhs.true1204.us, %land.lhs.true1195.us, %land.lhs.true1187.us, %land.lhs.true1178.us, %land.lhs.true1169.us, %land.lhs.true1160.us, %land.lhs.true1152.us, %land.lhs.true1144.us, %land.lhs.true1136.us, %land.lhs.true1128.us, %land.lhs.true1120.us, %land.lhs.true1112.us, %land.lhs.true1103.us, %land.lhs.true1094.us, %land.lhs.true1085.us, %land.lhs.true1077.us, %land.lhs.true1068.us, %land.lhs.true1059.us, %land.lhs.true1050.us, %land.lhs.true1041.us, %land.lhs.true1032.us, %land.lhs.true1023.us, %land.lhs.true1015.us, %land.lhs.true1006.us, %land.lhs.true997.us, %land.lhs.true988.us, %land.lhs.true979.us, %land.lhs.true970.us, %land.lhs.true961.us, %land.lhs.true953.us, %land.lhs.true944.us, %land.lhs.true.us, %if.then927.us, %for.body920.us
  %n.2.us = phi i32 [ %inc1374.us, %if.then1346.us ], [ %n.12190.us, %land.lhs.true1337.us ], [ %n.12190.us, %land.lhs.true1328.us ], [ %n.12190.us, %land.lhs.true1319.us ], [ %n.12190.us, %land.lhs.true1311.us ], [ %n.12190.us, %land.lhs.true1302.us ], [ %n.12190.us, %land.lhs.true1293.us ], [ %n.12190.us, %land.lhs.true1284.us ], [ %n.12190.us, %land.lhs.true1275.us ], [ %n.12190.us, %land.lhs.true1266.us ], [ %n.12190.us, %land.lhs.true1257.us ], [ %n.12190.us, %land.lhs.true1249.us ], [ %n.12190.us, %land.lhs.true1240.us ], [ %n.12190.us, %land.lhs.true1231.us ], [ %n.12190.us, %land.lhs.true1222.us ], [ %n.12190.us, %land.lhs.true1213.us ], [ %n.12190.us, %land.lhs.true1204.us ], [ %n.12190.us, %land.lhs.true1195.us ], [ %n.12190.us, %land.lhs.true1187.us ], [ %n.12190.us, %land.lhs.true1178.us ], [ %n.12190.us, %land.lhs.true1169.us ], [ %n.12190.us, %land.lhs.true1160.us ], [ %n.12190.us, %land.lhs.true1152.us ], [ %n.12190.us, %land.lhs.true1144.us ], [ %n.12190.us, %land.lhs.true1136.us ], [ %n.12190.us, %land.lhs.true1128.us ], [ %n.12190.us, %land.lhs.true1120.us ], [ %n.12190.us, %land.lhs.true1112.us ], [ %n.12190.us, %land.lhs.true1103.us ], [ %n.12190.us, %land.lhs.true1094.us ], [ %n.12190.us, %land.lhs.true1085.us ], [ %n.12190.us, %land.lhs.true1077.us ], [ %n.12190.us, %land.lhs.true1068.us ], [ %n.12190.us, %land.lhs.true1059.us ], [ %n.12190.us, %land.lhs.true1050.us ], [ %n.12190.us, %land.lhs.true1041.us ], [ %n.12190.us, %land.lhs.true1032.us ], [ %n.12190.us, %land.lhs.true1023.us ], [ %n.12190.us, %land.lhs.true1015.us ], [ %n.12190.us, %land.lhs.true1006.us ], [ %n.12190.us, %land.lhs.true997.us ], [ %n.12190.us, %land.lhs.true988.us ], [ %n.12190.us, %land.lhs.true979.us ], [ %n.12190.us, %land.lhs.true970.us ], [ %n.12190.us, %land.lhs.true961.us ], [ %n.12190.us, %land.lhs.true953.us ], [ %n.12190.us, %land.lhs.true944.us ], [ %n.12190.us, %land.lhs.true.us ], [ %n.12190.us, %if.then927.us ], [ %n.12190.us, %for.body920.us ]
  %indvars.iv.next2211 = add nuw nsw i64 %indvars.iv2210, 1
  %exitcond2263.not = icmp eq i64 %indvars.iv.next2211, %wide.trip.count2262
  br i1 %exitcond2263.not, label %for.cond916.for.inc1385_crit_edge.us, label %for.body920.us, !llvm.loop !71

for.cond916.for.inc1385_crit_edge.us:             ; preds = %for.inc1382.us
  %exitcond2280.not = icmp eq i64 %indvars.iv.next2265, %wide.trip.count2279
  br i1 %exitcond2280.not, label %for.end1387, label %for.cond916.preheader.us, !llvm.loop !72

if.then1377:                                      ; preds = %if.then1346.us
  %274 = load ptr, ptr @stderr, align 8, !tbaa !5
  %275 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 18, i64 1, ptr %274) #22
  tail call void @exit(i32 noundef 1) #20
  unreachable

for.end1387:                                      ; preds = %for.cond916.for.inc1385_crit_edge.us, %for.cond10.preheader.lr.ph, %entry, %for.cond911.preheader
  %n.0.lcssa = phi i32 [ 0, %for.cond911.preheader ], [ 0, %entry ], [ 0, %for.cond10.preheader.lr.ph ], [ %n.2.us, %for.cond916.for.inc1385_crit_edge.us ]
  %idxprom1388 = sext i32 %n.0.lcssa to i64
  %info1390 = getelementptr inbounds %struct.anon, ptr %corner_list, i64 %idxprom1388, i32 2
  store i32 7, ptr %info1390, align 4, !tbaa !61
  tail call void @free(ptr noundef %call) #21
  tail call void @free(ptr noundef %call8) #21
  ret i32 undef
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @susan_corners_quick(ptr noundef readonly %in, ptr noundef %r, ptr noundef readonly %bp, i32 noundef %max_no, ptr nocapture noundef writeonly %corner_list, i32 noundef %x_size, i32 noundef %y_size) local_unnamed_addr #3 {
entry:
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %r, i8 0, i64 %mul1, i1 false)
  %sub = add i32 %y_size, -7
  %cmp2043 = icmp sgt i32 %y_size, 14
  br i1 %cmp2043, label %for.cond3.preheader.lr.ph, label %for.end1325

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %cmp52041 = icmp sgt i32 %x_size, 14
  %sub35 = add nsw i32 %x_size, -3
  %idx.ext36 = sext i32 %sub35 to i64
  %sub72 = add nsw i32 %x_size, -5
  %idx.ext73 = sext i32 %sub72 to i64
  %sub123 = add nsw i32 %x_size, -6
  %idx.ext124 = sext i32 %sub123 to i64
  br i1 %cmp52041, label %for.cond3.preheader.us.preheader, label %for.end1325

for.cond3.preheader.us.preheader:                 ; preds = %for.cond3.preheader.lr.ph
  %sub4 = add i32 %x_size, -7
  %0 = zext i32 %x_size to i64
  %wide.trip.count2067 = zext i32 %sub to i64
  %wide.trip.count = zext i32 %sub4 to i64
  %add.ptr.us = getelementptr inbounds i8, ptr %in, i64 -1
  br label %for.cond3.preheader.us

for.cond3.preheader.us:                           ; preds = %for.cond3.preheader.us.preheader, %for.cond3.for.inc357_crit_edge.us
  %indvars.iv2061 = phi i64 [ 7, %for.cond3.preheader.us.preheader ], [ %indvars.iv.next2062, %for.cond3.for.inc357_crit_edge.us ]
  %1 = add nsw i64 %indvars.iv2061, -3
  %2 = mul nsw i64 %1, %0
  %3 = mul nsw i64 %indvars.iv2061, %0
  %add.ptr11.us = getelementptr inbounds i8, ptr %add.ptr.us, i64 %2
  br label %for.body7.us

for.body7.us:                                     ; preds = %for.cond3.preheader.us, %for.inc.us
  %indvars.iv = phi i64 [ 7, %for.cond3.preheader.us ], [ %indvars.iv.next, %for.inc.us ]
  %add.ptr12.us = getelementptr inbounds i8, ptr %add.ptr11.us, i64 %indvars.iv
  %4 = add nuw nsw i64 %indvars.iv, %3
  %arrayidx.us = getelementptr inbounds i8, ptr %in, i64 %4
  %5 = load i8, ptr %arrayidx.us, align 1, !tbaa !19
  %6 = zext i8 %5 to i64
  %add.ptr16.us = getelementptr inbounds i8, ptr %bp, i64 %6
  %incdec.ptr.us = getelementptr inbounds i8, ptr %add.ptr12.us, i64 1
  %7 = load i8, ptr %add.ptr12.us, align 1, !tbaa !19
  %8 = zext i8 %7 to i64
  %idx.neg.us = sub nsw i64 0, %8
  %add.ptr19.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg.us
  %9 = load i8, ptr %add.ptr19.us, align 1, !tbaa !19
  %conv20.us = zext i8 %9 to i32
  %add21.us = add nuw nsw i32 %conv20.us, 100
  %incdec.ptr22.us = getelementptr inbounds i8, ptr %incdec.ptr.us, i64 1
  %10 = load i8, ptr %incdec.ptr.us, align 1, !tbaa !19
  %11 = zext i8 %10 to i64
  %idx.neg25.us = sub nsw i64 0, %11
  %add.ptr26.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg25.us
  %12 = load i8, ptr %add.ptr26.us, align 1, !tbaa !19
  %conv27.us = zext i8 %12 to i32
  %add28.us = add nuw nsw i32 %add21.us, %conv27.us
  %13 = load i8, ptr %incdec.ptr22.us, align 1, !tbaa !19
  %14 = zext i8 %13 to i64
  %idx.neg31.us = sub nsw i64 0, %14
  %add.ptr32.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg31.us
  %15 = load i8, ptr %add.ptr32.us, align 1, !tbaa !19
  %conv33.us = zext i8 %15 to i32
  %add34.us = add nuw nsw i32 %add28.us, %conv33.us
  %add.ptr37.us = getelementptr inbounds i8, ptr %incdec.ptr22.us, i64 %idx.ext36
  %incdec.ptr38.us = getelementptr inbounds i8, ptr %add.ptr37.us, i64 1
  %16 = load i8, ptr %add.ptr37.us, align 1, !tbaa !19
  %17 = zext i8 %16 to i64
  %idx.neg41.us = sub nsw i64 0, %17
  %add.ptr42.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg41.us
  %18 = load i8, ptr %add.ptr42.us, align 1, !tbaa !19
  %conv43.us = zext i8 %18 to i32
  %add44.us = add nuw nsw i32 %add34.us, %conv43.us
  %incdec.ptr45.us = getelementptr inbounds i8, ptr %incdec.ptr38.us, i64 1
  %19 = load i8, ptr %incdec.ptr38.us, align 1, !tbaa !19
  %20 = zext i8 %19 to i64
  %idx.neg48.us = sub nsw i64 0, %20
  %add.ptr49.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg48.us
  %21 = load i8, ptr %add.ptr49.us, align 1, !tbaa !19
  %conv50.us = zext i8 %21 to i32
  %add51.us = add nuw nsw i32 %add44.us, %conv50.us
  %incdec.ptr52.us = getelementptr inbounds i8, ptr %incdec.ptr45.us, i64 1
  %22 = load i8, ptr %incdec.ptr45.us, align 1, !tbaa !19
  %23 = zext i8 %22 to i64
  %idx.neg55.us = sub nsw i64 0, %23
  %add.ptr56.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg55.us
  %24 = load i8, ptr %add.ptr56.us, align 1, !tbaa !19
  %conv57.us = zext i8 %24 to i32
  %add58.us = add nuw nsw i32 %add51.us, %conv57.us
  %incdec.ptr59.us = getelementptr inbounds i8, ptr %incdec.ptr52.us, i64 1
  %25 = load i8, ptr %incdec.ptr52.us, align 1, !tbaa !19
  %26 = zext i8 %25 to i64
  %idx.neg62.us = sub nsw i64 0, %26
  %add.ptr63.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg62.us
  %27 = load i8, ptr %add.ptr63.us, align 1, !tbaa !19
  %conv64.us = zext i8 %27 to i32
  %add65.us = add nuw nsw i32 %add58.us, %conv64.us
  %28 = load i8, ptr %incdec.ptr59.us, align 1, !tbaa !19
  %29 = zext i8 %28 to i64
  %idx.neg68.us = sub nsw i64 0, %29
  %add.ptr69.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg68.us
  %30 = load i8, ptr %add.ptr69.us, align 1, !tbaa !19
  %conv70.us = zext i8 %30 to i32
  %add71.us = add nuw nsw i32 %add65.us, %conv70.us
  %add.ptr74.us = getelementptr inbounds i8, ptr %incdec.ptr59.us, i64 %idx.ext73
  %incdec.ptr75.us = getelementptr inbounds i8, ptr %add.ptr74.us, i64 1
  %31 = load i8, ptr %add.ptr74.us, align 1, !tbaa !19
  %32 = zext i8 %31 to i64
  %idx.neg78.us = sub nsw i64 0, %32
  %add.ptr79.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg78.us
  %33 = load i8, ptr %add.ptr79.us, align 1, !tbaa !19
  %conv80.us = zext i8 %33 to i32
  %add81.us = add nuw nsw i32 %add71.us, %conv80.us
  %incdec.ptr82.us = getelementptr inbounds i8, ptr %incdec.ptr75.us, i64 1
  %34 = load i8, ptr %incdec.ptr75.us, align 1, !tbaa !19
  %35 = zext i8 %34 to i64
  %idx.neg85.us = sub nsw i64 0, %35
  %add.ptr86.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg85.us
  %36 = load i8, ptr %add.ptr86.us, align 1, !tbaa !19
  %conv87.us = zext i8 %36 to i32
  %add88.us = add nuw nsw i32 %add81.us, %conv87.us
  %incdec.ptr89.us = getelementptr inbounds i8, ptr %incdec.ptr82.us, i64 1
  %37 = load i8, ptr %incdec.ptr82.us, align 1, !tbaa !19
  %38 = zext i8 %37 to i64
  %idx.neg92.us = sub nsw i64 0, %38
  %add.ptr93.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg92.us
  %39 = load i8, ptr %add.ptr93.us, align 1, !tbaa !19
  %conv94.us = zext i8 %39 to i32
  %add95.us = add nuw nsw i32 %add88.us, %conv94.us
  %incdec.ptr96.us = getelementptr inbounds i8, ptr %incdec.ptr89.us, i64 1
  %40 = load i8, ptr %incdec.ptr89.us, align 1, !tbaa !19
  %41 = zext i8 %40 to i64
  %idx.neg99.us = sub nsw i64 0, %41
  %add.ptr100.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg99.us
  %42 = load i8, ptr %add.ptr100.us, align 1, !tbaa !19
  %conv101.us = zext i8 %42 to i32
  %add102.us = add nuw nsw i32 %add95.us, %conv101.us
  %incdec.ptr103.us = getelementptr inbounds i8, ptr %incdec.ptr96.us, i64 1
  %43 = load i8, ptr %incdec.ptr96.us, align 1, !tbaa !19
  %44 = zext i8 %43 to i64
  %idx.neg106.us = sub nsw i64 0, %44
  %add.ptr107.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg106.us
  %45 = load i8, ptr %add.ptr107.us, align 1, !tbaa !19
  %conv108.us = zext i8 %45 to i32
  %add109.us = add nuw nsw i32 %add102.us, %conv108.us
  %incdec.ptr110.us = getelementptr inbounds i8, ptr %incdec.ptr103.us, i64 1
  %46 = load i8, ptr %incdec.ptr103.us, align 1, !tbaa !19
  %47 = zext i8 %46 to i64
  %idx.neg113.us = sub nsw i64 0, %47
  %add.ptr114.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg113.us
  %48 = load i8, ptr %add.ptr114.us, align 1, !tbaa !19
  %conv115.us = zext i8 %48 to i32
  %add116.us = add nuw nsw i32 %add109.us, %conv115.us
  %49 = load i8, ptr %incdec.ptr110.us, align 1, !tbaa !19
  %50 = zext i8 %49 to i64
  %idx.neg119.us = sub nsw i64 0, %50
  %add.ptr120.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg119.us
  %51 = load i8, ptr %add.ptr120.us, align 1, !tbaa !19
  %conv121.us = zext i8 %51 to i32
  %add122.us = add nuw nsw i32 %add116.us, %conv121.us
  %add.ptr125.us = getelementptr inbounds i8, ptr %incdec.ptr110.us, i64 %idx.ext124
  %incdec.ptr126.us = getelementptr inbounds i8, ptr %add.ptr125.us, i64 1
  %52 = load i8, ptr %add.ptr125.us, align 1, !tbaa !19
  %53 = zext i8 %52 to i64
  %idx.neg129.us = sub nsw i64 0, %53
  %add.ptr130.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg129.us
  %54 = load i8, ptr %add.ptr130.us, align 1, !tbaa !19
  %conv131.us = zext i8 %54 to i32
  %add132.us = add nuw nsw i32 %add122.us, %conv131.us
  %incdec.ptr133.us = getelementptr inbounds i8, ptr %incdec.ptr126.us, i64 1
  %55 = load i8, ptr %incdec.ptr126.us, align 1, !tbaa !19
  %56 = zext i8 %55 to i64
  %idx.neg136.us = sub nsw i64 0, %56
  %add.ptr137.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg136.us
  %57 = load i8, ptr %add.ptr137.us, align 1, !tbaa !19
  %conv138.us = zext i8 %57 to i32
  %add139.us = add nuw nsw i32 %add132.us, %conv138.us
  %58 = load i8, ptr %incdec.ptr133.us, align 1, !tbaa !19
  %59 = zext i8 %58 to i64
  %idx.neg142.us = sub nsw i64 0, %59
  %add.ptr143.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg142.us
  %60 = load i8, ptr %add.ptr143.us, align 1, !tbaa !19
  %conv144.us = zext i8 %60 to i32
  %add145.us = add nuw nsw i32 %add139.us, %conv144.us
  %cmp146.us = icmp slt i32 %add145.us, %max_no
  br i1 %cmp146.us, label %if.then.us, label %for.inc.us

if.then.us:                                       ; preds = %for.body7.us
  %add.ptr148.us = getelementptr inbounds i8, ptr %incdec.ptr133.us, i64 2
  %61 = load i8, ptr %add.ptr148.us, align 1, !tbaa !19
  %62 = zext i8 %61 to i64
  %idx.neg152.us = sub nsw i64 0, %62
  %add.ptr153.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg152.us
  %63 = load i8, ptr %add.ptr153.us, align 1, !tbaa !19
  %conv154.us = zext i8 %63 to i32
  %add155.us = add nuw nsw i32 %add145.us, %conv154.us
  %cmp156.us = icmp slt i32 %add155.us, %max_no
  br i1 %cmp156.us, label %if.then158.us, label %for.inc.us

if.then158.us:                                    ; preds = %if.then.us
  %incdec.ptr149.us = getelementptr inbounds i8, ptr %add.ptr148.us, i64 1
  %incdec.ptr159.us = getelementptr inbounds i8, ptr %incdec.ptr149.us, i64 1
  %64 = load i8, ptr %incdec.ptr149.us, align 1, !tbaa !19
  %65 = zext i8 %64 to i64
  %idx.neg162.us = sub nsw i64 0, %65
  %add.ptr163.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg162.us
  %66 = load i8, ptr %add.ptr163.us, align 1, !tbaa !19
  %conv164.us = zext i8 %66 to i32
  %add165.us = add nuw nsw i32 %add155.us, %conv164.us
  %cmp166.us = icmp slt i32 %add165.us, %max_no
  br i1 %cmp166.us, label %if.then168.us, label %for.inc.us

if.then168.us:                                    ; preds = %if.then158.us
  %67 = load i8, ptr %incdec.ptr159.us, align 1, !tbaa !19
  %68 = zext i8 %67 to i64
  %idx.neg171.us = sub nsw i64 0, %68
  %add.ptr172.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg171.us
  %69 = load i8, ptr %add.ptr172.us, align 1, !tbaa !19
  %conv173.us = zext i8 %69 to i32
  %add174.us = add nuw nsw i32 %add165.us, %conv173.us
  %cmp175.us = icmp slt i32 %add174.us, %max_no
  br i1 %cmp175.us, label %if.then177.us, label %for.inc.us

if.then177.us:                                    ; preds = %if.then168.us
  %add.ptr180.us = getelementptr inbounds i8, ptr %incdec.ptr159.us, i64 %idx.ext124
  %70 = load i8, ptr %add.ptr180.us, align 1, !tbaa !19
  %71 = zext i8 %70 to i64
  %idx.neg184.us = sub nsw i64 0, %71
  %add.ptr185.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg184.us
  %72 = load i8, ptr %add.ptr185.us, align 1, !tbaa !19
  %conv186.us = zext i8 %72 to i32
  %add187.us = add nuw nsw i32 %add174.us, %conv186.us
  %cmp188.us = icmp slt i32 %add187.us, %max_no
  br i1 %cmp188.us, label %if.then190.us, label %for.inc.us

if.then190.us:                                    ; preds = %if.then177.us
  %incdec.ptr181.us = getelementptr inbounds i8, ptr %add.ptr180.us, i64 1
  %73 = load i8, ptr %incdec.ptr181.us, align 1, !tbaa !19
  %74 = zext i8 %73 to i64
  %idx.neg194.us = sub nsw i64 0, %74
  %add.ptr195.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg194.us
  %75 = load i8, ptr %add.ptr195.us, align 1, !tbaa !19
  %conv196.us = zext i8 %75 to i32
  %add197.us = add nuw nsw i32 %add187.us, %conv196.us
  %cmp198.us = icmp slt i32 %add197.us, %max_no
  br i1 %cmp198.us, label %if.then200.us, label %for.inc.us

if.then200.us:                                    ; preds = %if.then190.us
  %incdec.ptr191.us = getelementptr inbounds i8, ptr %incdec.ptr181.us, i64 1
  %76 = load i8, ptr %incdec.ptr191.us, align 1, !tbaa !19
  %77 = zext i8 %76 to i64
  %idx.neg204.us = sub nsw i64 0, %77
  %add.ptr205.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg204.us
  %78 = load i8, ptr %add.ptr205.us, align 1, !tbaa !19
  %conv206.us = zext i8 %78 to i32
  %add207.us = add nuw nsw i32 %add197.us, %conv206.us
  %cmp208.us = icmp slt i32 %add207.us, %max_no
  br i1 %cmp208.us, label %if.then210.us, label %for.inc.us

if.then210.us:                                    ; preds = %if.then200.us
  %incdec.ptr201.us = getelementptr inbounds i8, ptr %incdec.ptr191.us, i64 1
  %79 = load i8, ptr %incdec.ptr201.us, align 1, !tbaa !19
  %80 = zext i8 %79 to i64
  %idx.neg214.us = sub nsw i64 0, %80
  %add.ptr215.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg214.us
  %81 = load i8, ptr %add.ptr215.us, align 1, !tbaa !19
  %conv216.us = zext i8 %81 to i32
  %add217.us = add nuw nsw i32 %add207.us, %conv216.us
  %cmp218.us = icmp slt i32 %add217.us, %max_no
  br i1 %cmp218.us, label %if.then220.us, label %for.inc.us

if.then220.us:                                    ; preds = %if.then210.us
  %incdec.ptr211.us = getelementptr inbounds i8, ptr %incdec.ptr201.us, i64 1
  %82 = load i8, ptr %incdec.ptr211.us, align 1, !tbaa !19
  %83 = zext i8 %82 to i64
  %idx.neg224.us = sub nsw i64 0, %83
  %add.ptr225.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg224.us
  %84 = load i8, ptr %add.ptr225.us, align 1, !tbaa !19
  %conv226.us = zext i8 %84 to i32
  %add227.us = add nuw nsw i32 %add217.us, %conv226.us
  %cmp228.us = icmp slt i32 %add227.us, %max_no
  br i1 %cmp228.us, label %if.then230.us, label %for.inc.us

if.then230.us:                                    ; preds = %if.then220.us
  %incdec.ptr221.us = getelementptr inbounds i8, ptr %incdec.ptr211.us, i64 1
  %incdec.ptr231.us = getelementptr inbounds i8, ptr %incdec.ptr221.us, i64 1
  %85 = load i8, ptr %incdec.ptr221.us, align 1, !tbaa !19
  %86 = zext i8 %85 to i64
  %idx.neg234.us = sub nsw i64 0, %86
  %add.ptr235.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg234.us
  %87 = load i8, ptr %add.ptr235.us, align 1, !tbaa !19
  %conv236.us = zext i8 %87 to i32
  %add237.us = add nuw nsw i32 %add227.us, %conv236.us
  %cmp238.us = icmp slt i32 %add237.us, %max_no
  br i1 %cmp238.us, label %if.then240.us, label %for.inc.us

if.then240.us:                                    ; preds = %if.then230.us
  %88 = load i8, ptr %incdec.ptr231.us, align 1, !tbaa !19
  %89 = zext i8 %88 to i64
  %idx.neg243.us = sub nsw i64 0, %89
  %add.ptr244.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg243.us
  %90 = load i8, ptr %add.ptr244.us, align 1, !tbaa !19
  %conv245.us = zext i8 %90 to i32
  %add246.us = add nuw nsw i32 %add237.us, %conv245.us
  %cmp247.us = icmp slt i32 %add246.us, %max_no
  br i1 %cmp247.us, label %if.then249.us, label %for.inc.us

if.then249.us:                                    ; preds = %if.then240.us
  %add.ptr252.us = getelementptr inbounds i8, ptr %incdec.ptr231.us, i64 %idx.ext73
  %91 = load i8, ptr %add.ptr252.us, align 1, !tbaa !19
  %92 = zext i8 %91 to i64
  %idx.neg256.us = sub nsw i64 0, %92
  %add.ptr257.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg256.us
  %93 = load i8, ptr %add.ptr257.us, align 1, !tbaa !19
  %conv258.us = zext i8 %93 to i32
  %add259.us = add nuw nsw i32 %add246.us, %conv258.us
  %cmp260.us = icmp slt i32 %add259.us, %max_no
  br i1 %cmp260.us, label %if.then262.us, label %for.inc.us

if.then262.us:                                    ; preds = %if.then249.us
  %incdec.ptr253.us = getelementptr inbounds i8, ptr %add.ptr252.us, i64 1
  %94 = load i8, ptr %incdec.ptr253.us, align 1, !tbaa !19
  %95 = zext i8 %94 to i64
  %idx.neg266.us = sub nsw i64 0, %95
  %add.ptr267.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg266.us
  %96 = load i8, ptr %add.ptr267.us, align 1, !tbaa !19
  %conv268.us = zext i8 %96 to i32
  %add269.us = add nuw nsw i32 %add259.us, %conv268.us
  %cmp270.us = icmp slt i32 %add269.us, %max_no
  br i1 %cmp270.us, label %if.then272.us, label %for.inc.us

if.then272.us:                                    ; preds = %if.then262.us
  %incdec.ptr263.us = getelementptr inbounds i8, ptr %incdec.ptr253.us, i64 1
  %97 = load i8, ptr %incdec.ptr263.us, align 1, !tbaa !19
  %98 = zext i8 %97 to i64
  %idx.neg276.us = sub nsw i64 0, %98
  %add.ptr277.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg276.us
  %99 = load i8, ptr %add.ptr277.us, align 1, !tbaa !19
  %conv278.us = zext i8 %99 to i32
  %add279.us = add nuw nsw i32 %add269.us, %conv278.us
  %cmp280.us = icmp slt i32 %add279.us, %max_no
  br i1 %cmp280.us, label %if.then282.us, label %for.inc.us

if.then282.us:                                    ; preds = %if.then272.us
  %incdec.ptr273.us = getelementptr inbounds i8, ptr %incdec.ptr263.us, i64 1
  %incdec.ptr283.us = getelementptr inbounds i8, ptr %incdec.ptr273.us, i64 1
  %100 = load i8, ptr %incdec.ptr273.us, align 1, !tbaa !19
  %101 = zext i8 %100 to i64
  %idx.neg286.us = sub nsw i64 0, %101
  %add.ptr287.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg286.us
  %102 = load i8, ptr %add.ptr287.us, align 1, !tbaa !19
  %conv288.us = zext i8 %102 to i32
  %add289.us = add nuw nsw i32 %add279.us, %conv288.us
  %cmp290.us = icmp slt i32 %add289.us, %max_no
  br i1 %cmp290.us, label %if.then292.us, label %for.inc.us

if.then292.us:                                    ; preds = %if.then282.us
  %103 = load i8, ptr %incdec.ptr283.us, align 1, !tbaa !19
  %104 = zext i8 %103 to i64
  %idx.neg295.us = sub nsw i64 0, %104
  %add.ptr296.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg295.us
  %105 = load i8, ptr %add.ptr296.us, align 1, !tbaa !19
  %conv297.us = zext i8 %105 to i32
  %add298.us = add nuw nsw i32 %add289.us, %conv297.us
  %cmp299.us = icmp slt i32 %add298.us, %max_no
  br i1 %cmp299.us, label %if.then301.us, label %for.inc.us

if.then301.us:                                    ; preds = %if.then292.us
  %add.ptr304.us = getelementptr inbounds i8, ptr %incdec.ptr283.us, i64 %idx.ext36
  %106 = load i8, ptr %add.ptr304.us, align 1, !tbaa !19
  %107 = zext i8 %106 to i64
  %idx.neg308.us = sub nsw i64 0, %107
  %add.ptr309.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg308.us
  %108 = load i8, ptr %add.ptr309.us, align 1, !tbaa !19
  %conv310.us = zext i8 %108 to i32
  %add311.us = add nuw nsw i32 %add298.us, %conv310.us
  %cmp312.us = icmp slt i32 %add311.us, %max_no
  br i1 %cmp312.us, label %if.then314.us, label %for.inc.us

if.then314.us:                                    ; preds = %if.then301.us
  %incdec.ptr305.us = getelementptr inbounds i8, ptr %add.ptr304.us, i64 1
  %109 = load i8, ptr %incdec.ptr305.us, align 1, !tbaa !19
  %110 = zext i8 %109 to i64
  %idx.neg318.us = sub nsw i64 0, %110
  %add.ptr319.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg318.us
  %111 = load i8, ptr %add.ptr319.us, align 1, !tbaa !19
  %conv320.us = zext i8 %111 to i32
  %add321.us = add nuw nsw i32 %add311.us, %conv320.us
  %cmp322.us = icmp slt i32 %add321.us, %max_no
  br i1 %cmp322.us, label %if.then324.us, label %for.inc.us

if.then324.us:                                    ; preds = %if.then314.us
  %incdec.ptr315.us = getelementptr inbounds i8, ptr %incdec.ptr305.us, i64 1
  %112 = load i8, ptr %incdec.ptr315.us, align 1, !tbaa !19
  %113 = zext i8 %112 to i64
  %idx.neg327.us = sub nsw i64 0, %113
  %add.ptr328.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg327.us
  %114 = load i8, ptr %add.ptr328.us, align 1, !tbaa !19
  %conv329.us = zext i8 %114 to i32
  %add330.us = add nuw nsw i32 %add321.us, %conv329.us
  %cmp331.us = icmp slt i32 %add330.us, %max_no
  br i1 %cmp331.us, label %if.then333.us, label %for.inc.us

if.then333.us:                                    ; preds = %if.then324.us
  %sub334.us = sub nsw i32 %max_no, %add330.us
  %arrayidx338.us = getelementptr inbounds i32, ptr %r, i64 %4
  store i32 %sub334.us, ptr %arrayidx338.us, align 4, !tbaa !12
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.then333.us, %if.then324.us, %if.then314.us, %if.then301.us, %if.then292.us, %if.then282.us, %if.then272.us, %if.then262.us, %if.then249.us, %if.then240.us, %if.then230.us, %if.then220.us, %if.then210.us, %if.then200.us, %if.then190.us, %if.then177.us, %if.then168.us, %if.then158.us, %if.then.us, %for.body7.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond3.for.inc357_crit_edge.us, label %for.body7.us, !llvm.loop !73

for.cond3.for.inc357_crit_edge.us:                ; preds = %for.inc.us
  %indvars.iv.next2062 = add nuw nsw i64 %indvars.iv2061, 1
  %exitcond2068.not = icmp eq i64 %indvars.iv.next2062, %wide.trip.count2067
  br i1 %exitcond2068.not, label %for.cond360.preheader, label %for.cond3.preheader.us, !llvm.loop !74

for.cond360.preheader:                            ; preds = %for.cond3.for.inc357_crit_edge.us
  %cmp3672046 = icmp sgt i32 %x_size, 14
  %or.cond = and i1 %cmp2043, %cmp3672046
  br i1 %or.cond, label %for.cond365.preheader.us.preheader, label %for.end1325

for.cond365.preheader.us.preheader:               ; preds = %for.cond360.preheader
  %sub366 = add i32 %x_size, -7
  %115 = zext i32 %x_size to i64
  %wide.trip.count2138 = zext i32 %sub to i64
  %wide.trip.count2121 = zext i32 %sub366 to i64
  br label %for.cond365.preheader.us

for.cond365.preheader.us:                         ; preds = %for.cond365.preheader.us.preheader, %for.cond365.for.inc1323_crit_edge.us
  %indvars.iv2123 = phi i64 [ 7, %for.cond365.preheader.us.preheader ], [ %indvars.iv.next2124, %for.cond365.for.inc1323_crit_edge.us ]
  %n.02054.us = phi i32 [ 0, %for.cond365.preheader.us.preheader ], [ %n.2.us, %for.cond365.for.inc1323_crit_edge.us ]
  %116 = mul nsw i64 %indvars.iv2123, %115
  %117 = add nsw i64 %indvars.iv2123, -3
  %118 = mul nsw i64 %117, %115
  %119 = add nsw i64 %indvars.iv2123, -2
  %120 = mul nsw i64 %119, %115
  %121 = add nsw i64 %indvars.iv2123, -1
  %122 = mul nsw i64 %121, %115
  %indvars.iv.next2124 = add nuw nsw i64 %indvars.iv2123, 1
  %123 = mul nsw i64 %indvars.iv.next2124, %115
  %124 = add nuw nsw i64 %indvars.iv2123, 2
  %125 = mul nsw i64 %124, %115
  %126 = add nuw nsw i64 %indvars.iv2123, 3
  %127 = mul nsw i64 %126, %115
  %128 = trunc i64 %indvars.iv2123 to i32
  br label %for.body369.us

for.body369.us:                                   ; preds = %for.cond365.preheader.us, %for.inc1320.us
  %indvars.iv2069 = phi i64 [ 7, %for.cond365.preheader.us ], [ %indvars.iv.next2070, %for.inc1320.us ]
  %n.12049.us = phi i32 [ %n.02054.us, %for.cond365.preheader.us ], [ %n.2.us, %for.inc1320.us ]
  %129 = add nuw nsw i64 %indvars.iv2069, %116
  %arrayidx373.us = getelementptr inbounds i32, ptr %r, i64 %129
  %130 = load i32, ptr %arrayidx373.us, align 4, !tbaa !12
  %cmp374.us = icmp sgt i32 %130, 0
  br i1 %cmp374.us, label %if.then376.us, label %for.inc1320.us

if.then376.us:                                    ; preds = %for.body369.us
  %131 = add nsw i64 %indvars.iv2069, %118
  %132 = add nsw i64 %131, -3
  %arrayidx382.us = getelementptr inbounds i32, ptr %r, i64 %132
  %133 = load i32, ptr %arrayidx382.us, align 4, !tbaa !12
  %cmp383.us = icmp sgt i32 %130, %133
  br i1 %cmp383.us, label %land.lhs.true.us, label %for.inc1320.us

land.lhs.true.us:                                 ; preds = %if.then376.us
  %134 = add nsw i64 %131, -2
  %arrayidx390.us = getelementptr inbounds i32, ptr %r, i64 %134
  %135 = load i32, ptr %arrayidx390.us, align 4, !tbaa !12
  %cmp391.us = icmp sgt i32 %130, %135
  br i1 %cmp391.us, label %land.lhs.true393.us, label %for.inc1320.us

land.lhs.true393.us:                              ; preds = %land.lhs.true.us
  %136 = add nsw i64 %131, -1
  %arrayidx399.us = getelementptr inbounds i32, ptr %r, i64 %136
  %137 = load i32, ptr %arrayidx399.us, align 4, !tbaa !12
  %cmp400.us = icmp sgt i32 %130, %137
  br i1 %cmp400.us, label %land.lhs.true402.us, label %for.inc1320.us

land.lhs.true402.us:                              ; preds = %land.lhs.true393.us
  %arrayidx407.us = getelementptr inbounds i32, ptr %r, i64 %131
  %138 = load i32, ptr %arrayidx407.us, align 4, !tbaa !12
  %cmp408.us = icmp sgt i32 %130, %138
  br i1 %cmp408.us, label %land.lhs.true410.us, label %for.inc1320.us

land.lhs.true410.us:                              ; preds = %land.lhs.true402.us
  %139 = add nsw i64 %131, 1
  %arrayidx416.us = getelementptr inbounds i32, ptr %r, i64 %139
  %140 = load i32, ptr %arrayidx416.us, align 4, !tbaa !12
  %cmp417.us = icmp sgt i32 %130, %140
  br i1 %cmp417.us, label %land.lhs.true419.us, label %for.inc1320.us

land.lhs.true419.us:                              ; preds = %land.lhs.true410.us
  %141 = add nsw i64 %131, 2
  %arrayidx425.us = getelementptr inbounds i32, ptr %r, i64 %141
  %142 = load i32, ptr %arrayidx425.us, align 4, !tbaa !12
  %cmp426.us = icmp sgt i32 %130, %142
  br i1 %cmp426.us, label %land.lhs.true428.us, label %for.inc1320.us

land.lhs.true428.us:                              ; preds = %land.lhs.true419.us
  %143 = add nsw i64 %131, 3
  %arrayidx434.us = getelementptr inbounds i32, ptr %r, i64 %143
  %144 = load i32, ptr %arrayidx434.us, align 4, !tbaa !12
  %cmp435.us = icmp sgt i32 %130, %144
  br i1 %cmp435.us, label %land.lhs.true437.us, label %for.inc1320.us

land.lhs.true437.us:                              ; preds = %land.lhs.true428.us
  %145 = add nsw i64 %indvars.iv2069, %120
  %146 = add nsw i64 %145, -3
  %arrayidx443.us = getelementptr inbounds i32, ptr %r, i64 %146
  %147 = load i32, ptr %arrayidx443.us, align 4, !tbaa !12
  %cmp444.us = icmp sgt i32 %130, %147
  br i1 %cmp444.us, label %land.lhs.true446.us, label %for.inc1320.us

land.lhs.true446.us:                              ; preds = %land.lhs.true437.us
  %148 = add nsw i64 %145, -2
  %arrayidx452.us = getelementptr inbounds i32, ptr %r, i64 %148
  %149 = load i32, ptr %arrayidx452.us, align 4, !tbaa !12
  %cmp453.us = icmp sgt i32 %130, %149
  br i1 %cmp453.us, label %land.lhs.true455.us, label %for.inc1320.us

land.lhs.true455.us:                              ; preds = %land.lhs.true446.us
  %150 = add nsw i64 %145, -1
  %arrayidx461.us = getelementptr inbounds i32, ptr %r, i64 %150
  %151 = load i32, ptr %arrayidx461.us, align 4, !tbaa !12
  %cmp462.us = icmp sgt i32 %130, %151
  br i1 %cmp462.us, label %land.lhs.true464.us, label %for.inc1320.us

land.lhs.true464.us:                              ; preds = %land.lhs.true455.us
  %arrayidx469.us = getelementptr inbounds i32, ptr %r, i64 %145
  %152 = load i32, ptr %arrayidx469.us, align 4, !tbaa !12
  %cmp470.us = icmp sgt i32 %130, %152
  br i1 %cmp470.us, label %land.lhs.true472.us, label %for.inc1320.us

land.lhs.true472.us:                              ; preds = %land.lhs.true464.us
  %153 = add nsw i64 %145, 1
  %arrayidx478.us = getelementptr inbounds i32, ptr %r, i64 %153
  %154 = load i32, ptr %arrayidx478.us, align 4, !tbaa !12
  %cmp479.us = icmp sgt i32 %130, %154
  br i1 %cmp479.us, label %land.lhs.true481.us, label %for.inc1320.us

land.lhs.true481.us:                              ; preds = %land.lhs.true472.us
  %155 = add nsw i64 %145, 2
  %arrayidx487.us = getelementptr inbounds i32, ptr %r, i64 %155
  %156 = load i32, ptr %arrayidx487.us, align 4, !tbaa !12
  %cmp488.us = icmp sgt i32 %130, %156
  br i1 %cmp488.us, label %land.lhs.true490.us, label %for.inc1320.us

land.lhs.true490.us:                              ; preds = %land.lhs.true481.us
  %157 = add nsw i64 %145, 3
  %arrayidx496.us = getelementptr inbounds i32, ptr %r, i64 %157
  %158 = load i32, ptr %arrayidx496.us, align 4, !tbaa !12
  %cmp497.us = icmp sgt i32 %130, %158
  br i1 %cmp497.us, label %land.lhs.true499.us, label %for.inc1320.us

land.lhs.true499.us:                              ; preds = %land.lhs.true490.us
  %159 = add nsw i64 %indvars.iv2069, %122
  %160 = add nsw i64 %159, -3
  %arrayidx505.us = getelementptr inbounds i32, ptr %r, i64 %160
  %161 = load i32, ptr %arrayidx505.us, align 4, !tbaa !12
  %cmp506.us = icmp sgt i32 %130, %161
  br i1 %cmp506.us, label %land.lhs.true508.us, label %for.inc1320.us

land.lhs.true508.us:                              ; preds = %land.lhs.true499.us
  %162 = add nsw i64 %159, -2
  %arrayidx514.us = getelementptr inbounds i32, ptr %r, i64 %162
  %163 = load i32, ptr %arrayidx514.us, align 4, !tbaa !12
  %cmp515.us = icmp sgt i32 %130, %163
  br i1 %cmp515.us, label %land.lhs.true517.us, label %for.inc1320.us

land.lhs.true517.us:                              ; preds = %land.lhs.true508.us
  %164 = add nsw i64 %159, -1
  %arrayidx523.us = getelementptr inbounds i32, ptr %r, i64 %164
  %165 = load i32, ptr %arrayidx523.us, align 4, !tbaa !12
  %cmp524.us = icmp sgt i32 %130, %165
  br i1 %cmp524.us, label %land.lhs.true526.us, label %for.inc1320.us

land.lhs.true526.us:                              ; preds = %land.lhs.true517.us
  %arrayidx531.us = getelementptr inbounds i32, ptr %r, i64 %159
  %166 = load i32, ptr %arrayidx531.us, align 4, !tbaa !12
  %cmp532.us = icmp sgt i32 %130, %166
  br i1 %cmp532.us, label %land.lhs.true534.us, label %for.inc1320.us

land.lhs.true534.us:                              ; preds = %land.lhs.true526.us
  %167 = add nsw i64 %159, 1
  %arrayidx540.us = getelementptr inbounds i32, ptr %r, i64 %167
  %168 = load i32, ptr %arrayidx540.us, align 4, !tbaa !12
  %cmp541.us = icmp sgt i32 %130, %168
  br i1 %cmp541.us, label %land.lhs.true543.us, label %for.inc1320.us

land.lhs.true543.us:                              ; preds = %land.lhs.true534.us
  %169 = add nsw i64 %159, 2
  %arrayidx549.us = getelementptr inbounds i32, ptr %r, i64 %169
  %170 = load i32, ptr %arrayidx549.us, align 4, !tbaa !12
  %cmp550.us = icmp sgt i32 %130, %170
  br i1 %cmp550.us, label %land.lhs.true552.us, label %for.inc1320.us

land.lhs.true552.us:                              ; preds = %land.lhs.true543.us
  %171 = add nsw i64 %159, 3
  %arrayidx558.us = getelementptr inbounds i32, ptr %r, i64 %171
  %172 = load i32, ptr %arrayidx558.us, align 4, !tbaa !12
  %cmp559.us = icmp sgt i32 %130, %172
  br i1 %cmp559.us, label %land.lhs.true561.us, label %for.inc1320.us

land.lhs.true561.us:                              ; preds = %land.lhs.true552.us
  %173 = add nsw i64 %129, -3
  %arrayidx566.us = getelementptr inbounds i32, ptr %r, i64 %173
  %174 = load i32, ptr %arrayidx566.us, align 4, !tbaa !12
  %cmp567.us = icmp sgt i32 %130, %174
  br i1 %cmp567.us, label %land.lhs.true569.us, label %for.inc1320.us

land.lhs.true569.us:                              ; preds = %land.lhs.true561.us
  %175 = add nsw i64 %129, -2
  %arrayidx574.us = getelementptr inbounds i32, ptr %r, i64 %175
  %176 = load i32, ptr %arrayidx574.us, align 4, !tbaa !12
  %cmp575.us = icmp sgt i32 %130, %176
  br i1 %cmp575.us, label %land.lhs.true577.us, label %for.inc1320.us

land.lhs.true577.us:                              ; preds = %land.lhs.true569.us
  %177 = add nsw i64 %129, -1
  %arrayidx582.us = getelementptr inbounds i32, ptr %r, i64 %177
  %178 = load i32, ptr %arrayidx582.us, align 4, !tbaa !12
  %cmp583.us = icmp sgt i32 %130, %178
  br i1 %cmp583.us, label %land.lhs.true585.us, label %for.inc1320.us

land.lhs.true585.us:                              ; preds = %land.lhs.true577.us
  %179 = add nuw nsw i64 %129, 1
  %arrayidx590.us = getelementptr inbounds i32, ptr %r, i64 %179
  %180 = load i32, ptr %arrayidx590.us, align 4, !tbaa !12
  %cmp591.not.us = icmp slt i32 %130, %180
  br i1 %cmp591.not.us, label %for.inc1320.us, label %land.lhs.true593.us

land.lhs.true593.us:                              ; preds = %land.lhs.true585.us
  %181 = add nuw nsw i64 %129, 2
  %arrayidx598.us = getelementptr inbounds i32, ptr %r, i64 %181
  %182 = load i32, ptr %arrayidx598.us, align 4, !tbaa !12
  %cmp599.not.us = icmp slt i32 %130, %182
  br i1 %cmp599.not.us, label %for.inc1320.us, label %land.lhs.true601.us

land.lhs.true601.us:                              ; preds = %land.lhs.true593.us
  %183 = add nuw nsw i64 %129, 3
  %arrayidx606.us = getelementptr inbounds i32, ptr %r, i64 %183
  %184 = load i32, ptr %arrayidx606.us, align 4, !tbaa !12
  %cmp607.not.us = icmp slt i32 %130, %184
  br i1 %cmp607.not.us, label %for.inc1320.us, label %land.lhs.true609.us

land.lhs.true609.us:                              ; preds = %land.lhs.true601.us
  %185 = add nuw nsw i64 %indvars.iv2069, %123
  %186 = add nsw i64 %185, -3
  %arrayidx615.us = getelementptr inbounds i32, ptr %r, i64 %186
  %187 = load i32, ptr %arrayidx615.us, align 4, !tbaa !12
  %cmp616.not.us = icmp slt i32 %130, %187
  br i1 %cmp616.not.us, label %for.inc1320.us, label %land.lhs.true618.us

land.lhs.true618.us:                              ; preds = %land.lhs.true609.us
  %188 = add nsw i64 %185, -2
  %arrayidx624.us = getelementptr inbounds i32, ptr %r, i64 %188
  %189 = load i32, ptr %arrayidx624.us, align 4, !tbaa !12
  %cmp625.not.us = icmp slt i32 %130, %189
  br i1 %cmp625.not.us, label %for.inc1320.us, label %land.lhs.true627.us

land.lhs.true627.us:                              ; preds = %land.lhs.true618.us
  %190 = add nsw i64 %185, -1
  %arrayidx633.us = getelementptr inbounds i32, ptr %r, i64 %190
  %191 = load i32, ptr %arrayidx633.us, align 4, !tbaa !12
  %cmp634.not.us = icmp slt i32 %130, %191
  br i1 %cmp634.not.us, label %for.inc1320.us, label %land.lhs.true636.us

land.lhs.true636.us:                              ; preds = %land.lhs.true627.us
  %arrayidx641.us = getelementptr inbounds i32, ptr %r, i64 %185
  %192 = load i32, ptr %arrayidx641.us, align 4, !tbaa !12
  %cmp642.not.us = icmp slt i32 %130, %192
  br i1 %cmp642.not.us, label %for.inc1320.us, label %land.lhs.true644.us

land.lhs.true644.us:                              ; preds = %land.lhs.true636.us
  %193 = add nuw nsw i64 %185, 1
  %arrayidx650.us = getelementptr inbounds i32, ptr %r, i64 %193
  %194 = load i32, ptr %arrayidx650.us, align 4, !tbaa !12
  %cmp651.not.us = icmp slt i32 %130, %194
  br i1 %cmp651.not.us, label %for.inc1320.us, label %land.lhs.true653.us

land.lhs.true653.us:                              ; preds = %land.lhs.true644.us
  %195 = add nuw nsw i64 %185, 2
  %arrayidx659.us = getelementptr inbounds i32, ptr %r, i64 %195
  %196 = load i32, ptr %arrayidx659.us, align 4, !tbaa !12
  %cmp660.not.us = icmp slt i32 %130, %196
  br i1 %cmp660.not.us, label %for.inc1320.us, label %land.lhs.true662.us

land.lhs.true662.us:                              ; preds = %land.lhs.true653.us
  %197 = add nuw nsw i64 %185, 3
  %arrayidx668.us = getelementptr inbounds i32, ptr %r, i64 %197
  %198 = load i32, ptr %arrayidx668.us, align 4, !tbaa !12
  %cmp669.not.us = icmp slt i32 %130, %198
  br i1 %cmp669.not.us, label %for.inc1320.us, label %land.lhs.true671.us

land.lhs.true671.us:                              ; preds = %land.lhs.true662.us
  %199 = add nuw nsw i64 %indvars.iv2069, %125
  %200 = add nsw i64 %199, -3
  %arrayidx677.us = getelementptr inbounds i32, ptr %r, i64 %200
  %201 = load i32, ptr %arrayidx677.us, align 4, !tbaa !12
  %cmp678.not.us = icmp slt i32 %130, %201
  br i1 %cmp678.not.us, label %for.inc1320.us, label %land.lhs.true680.us

land.lhs.true680.us:                              ; preds = %land.lhs.true671.us
  %202 = add nsw i64 %199, -2
  %arrayidx686.us = getelementptr inbounds i32, ptr %r, i64 %202
  %203 = load i32, ptr %arrayidx686.us, align 4, !tbaa !12
  %cmp687.not.us = icmp slt i32 %130, %203
  br i1 %cmp687.not.us, label %for.inc1320.us, label %land.lhs.true689.us

land.lhs.true689.us:                              ; preds = %land.lhs.true680.us
  %204 = add nsw i64 %199, -1
  %arrayidx695.us = getelementptr inbounds i32, ptr %r, i64 %204
  %205 = load i32, ptr %arrayidx695.us, align 4, !tbaa !12
  %cmp696.not.us = icmp slt i32 %130, %205
  br i1 %cmp696.not.us, label %for.inc1320.us, label %land.lhs.true698.us

land.lhs.true698.us:                              ; preds = %land.lhs.true689.us
  %arrayidx703.us = getelementptr inbounds i32, ptr %r, i64 %199
  %206 = load i32, ptr %arrayidx703.us, align 4, !tbaa !12
  %cmp704.not.us = icmp slt i32 %130, %206
  br i1 %cmp704.not.us, label %for.inc1320.us, label %land.lhs.true706.us

land.lhs.true706.us:                              ; preds = %land.lhs.true698.us
  %207 = add nuw nsw i64 %199, 1
  %arrayidx712.us = getelementptr inbounds i32, ptr %r, i64 %207
  %208 = load i32, ptr %arrayidx712.us, align 4, !tbaa !12
  %cmp713.not.us = icmp slt i32 %130, %208
  br i1 %cmp713.not.us, label %for.inc1320.us, label %land.lhs.true715.us

land.lhs.true715.us:                              ; preds = %land.lhs.true706.us
  %209 = add nuw nsw i64 %199, 2
  %arrayidx721.us = getelementptr inbounds i32, ptr %r, i64 %209
  %210 = load i32, ptr %arrayidx721.us, align 4, !tbaa !12
  %cmp722.not.us = icmp slt i32 %130, %210
  br i1 %cmp722.not.us, label %for.inc1320.us, label %land.lhs.true724.us

land.lhs.true724.us:                              ; preds = %land.lhs.true715.us
  %211 = add nuw nsw i64 %199, 3
  %arrayidx730.us = getelementptr inbounds i32, ptr %r, i64 %211
  %212 = load i32, ptr %arrayidx730.us, align 4, !tbaa !12
  %cmp731.not.us = icmp slt i32 %130, %212
  br i1 %cmp731.not.us, label %for.inc1320.us, label %land.lhs.true733.us

land.lhs.true733.us:                              ; preds = %land.lhs.true724.us
  %213 = add nuw nsw i64 %indvars.iv2069, %127
  %214 = add nsw i64 %213, -3
  %arrayidx739.us = getelementptr inbounds i32, ptr %r, i64 %214
  %215 = load i32, ptr %arrayidx739.us, align 4, !tbaa !12
  %cmp740.not.us = icmp slt i32 %130, %215
  br i1 %cmp740.not.us, label %for.inc1320.us, label %land.lhs.true742.us

land.lhs.true742.us:                              ; preds = %land.lhs.true733.us
  %216 = add nsw i64 %213, -2
  %arrayidx748.us = getelementptr inbounds i32, ptr %r, i64 %216
  %217 = load i32, ptr %arrayidx748.us, align 4, !tbaa !12
  %cmp749.not.us = icmp slt i32 %130, %217
  br i1 %cmp749.not.us, label %for.inc1320.us, label %land.lhs.true751.us

land.lhs.true751.us:                              ; preds = %land.lhs.true742.us
  %218 = add nsw i64 %213, -1
  %arrayidx757.us = getelementptr inbounds i32, ptr %r, i64 %218
  %219 = load i32, ptr %arrayidx757.us, align 4, !tbaa !12
  %cmp758.not.us = icmp slt i32 %130, %219
  br i1 %cmp758.not.us, label %for.inc1320.us, label %land.lhs.true760.us

land.lhs.true760.us:                              ; preds = %land.lhs.true751.us
  %arrayidx765.us = getelementptr inbounds i32, ptr %r, i64 %213
  %220 = load i32, ptr %arrayidx765.us, align 4, !tbaa !12
  %cmp766.not.us = icmp slt i32 %130, %220
  br i1 %cmp766.not.us, label %for.inc1320.us, label %land.lhs.true768.us

land.lhs.true768.us:                              ; preds = %land.lhs.true760.us
  %221 = add nuw nsw i64 %213, 1
  %arrayidx774.us = getelementptr inbounds i32, ptr %r, i64 %221
  %222 = load i32, ptr %arrayidx774.us, align 4, !tbaa !12
  %cmp775.not.us = icmp slt i32 %130, %222
  br i1 %cmp775.not.us, label %for.inc1320.us, label %land.lhs.true777.us

land.lhs.true777.us:                              ; preds = %land.lhs.true768.us
  %223 = add nuw nsw i64 %213, 2
  %arrayidx783.us = getelementptr inbounds i32, ptr %r, i64 %223
  %224 = load i32, ptr %arrayidx783.us, align 4, !tbaa !12
  %cmp784.not.us = icmp slt i32 %130, %224
  br i1 %cmp784.not.us, label %for.inc1320.us, label %land.lhs.true786.us

land.lhs.true786.us:                              ; preds = %land.lhs.true777.us
  %225 = add nuw nsw i64 %213, 3
  %arrayidx792.us = getelementptr inbounds i32, ptr %r, i64 %225
  %226 = load i32, ptr %arrayidx792.us, align 4, !tbaa !12
  %cmp793.not.us = icmp slt i32 %130, %226
  br i1 %cmp793.not.us, label %for.inc1320.us, label %if.then795.us

if.then795.us:                                    ; preds = %land.lhs.true786.us
  %idxprom796.us = sext i32 %n.12049.us to i64
  %arrayidx797.us = getelementptr inbounds %struct.anon, ptr %corner_list, i64 %idxprom796.us
  %info.us = getelementptr inbounds %struct.anon, ptr %corner_list, i64 %idxprom796.us, i32 2
  store i32 0, ptr %info.us, align 4, !tbaa !61
  %227 = trunc i64 %indvars.iv2069 to i32
  store i32 %227, ptr %arrayidx797.us, align 4, !tbaa !64
  %y803.us = getelementptr inbounds %struct.anon, ptr %corner_list, i64 %idxprom796.us, i32 1
  store i32 %128, ptr %y803.us, align 4, !tbaa !63
  %arrayidx809.us = getelementptr inbounds i8, ptr %in, i64 %148
  %228 = load i8, ptr %arrayidx809.us, align 1, !tbaa !19
  %conv810.us = zext i8 %228 to i16
  %arrayidx816.us = getelementptr inbounds i8, ptr %in, i64 %150
  %229 = load i8, ptr %arrayidx816.us, align 1, !tbaa !19
  %conv817.us = zext i8 %229 to i16
  %add818.us = add nuw nsw i16 %conv817.us, %conv810.us
  %arrayidx823.us = getelementptr inbounds i8, ptr %in, i64 %145
  %230 = load i8, ptr %arrayidx823.us, align 1, !tbaa !19
  %conv824.us = zext i8 %230 to i16
  %add825.us = add nuw nsw i16 %add818.us, %conv824.us
  %arrayidx831.us = getelementptr inbounds i8, ptr %in, i64 %153
  %231 = load i8, ptr %arrayidx831.us, align 1, !tbaa !19
  %conv832.us = zext i8 %231 to i16
  %add833.us = add nuw nsw i16 %add825.us, %conv832.us
  %arrayidx839.us = getelementptr inbounds i8, ptr %in, i64 %155
  %232 = load i8, ptr %arrayidx839.us, align 1, !tbaa !19
  %conv840.us = zext i8 %232 to i16
  %add841.us = add nuw nsw i16 %add833.us, %conv840.us
  %arrayidx847.us = getelementptr inbounds i8, ptr %in, i64 %162
  %233 = load i8, ptr %arrayidx847.us, align 1, !tbaa !19
  %conv848.us = zext i8 %233 to i16
  %add849.us = add nuw nsw i16 %add841.us, %conv848.us
  %arrayidx855.us = getelementptr inbounds i8, ptr %in, i64 %164
  %234 = load i8, ptr %arrayidx855.us, align 1, !tbaa !19
  %conv856.us = zext i8 %234 to i16
  %add857.us = add nuw nsw i16 %add849.us, %conv856.us
  %arrayidx862.us = getelementptr inbounds i8, ptr %in, i64 %159
  %235 = load i8, ptr %arrayidx862.us, align 1, !tbaa !19
  %conv863.us = zext i8 %235 to i16
  %add864.us = add nuw nsw i16 %add857.us, %conv863.us
  %arrayidx870.us = getelementptr inbounds i8, ptr %in, i64 %167
  %236 = load i8, ptr %arrayidx870.us, align 1, !tbaa !19
  %conv871.us = zext i8 %236 to i16
  %add872.us = add nuw nsw i16 %add864.us, %conv871.us
  %arrayidx878.us = getelementptr inbounds i8, ptr %in, i64 %169
  %237 = load i8, ptr %arrayidx878.us, align 1, !tbaa !19
  %conv879.us = zext i8 %237 to i16
  %add880.us = add nuw nsw i16 %add872.us, %conv879.us
  %arrayidx885.us = getelementptr inbounds i8, ptr %in, i64 %175
  %238 = load i8, ptr %arrayidx885.us, align 1, !tbaa !19
  %conv886.us = zext i8 %238 to i16
  %add887.us = add nuw nsw i16 %add880.us, %conv886.us
  %arrayidx892.us = getelementptr inbounds i8, ptr %in, i64 %177
  %239 = load i8, ptr %arrayidx892.us, align 1, !tbaa !19
  %conv893.us = zext i8 %239 to i16
  %add894.us = add nuw nsw i16 %add887.us, %conv893.us
  %arrayidx898.us = getelementptr inbounds i8, ptr %in, i64 %129
  %240 = load i8, ptr %arrayidx898.us, align 1, !tbaa !19
  %conv899.us = zext i8 %240 to i16
  %add900.us = add nuw nsw i16 %add894.us, %conv899.us
  %arrayidx905.us = getelementptr inbounds i8, ptr %in, i64 %179
  %241 = load i8, ptr %arrayidx905.us, align 1, !tbaa !19
  %conv906.us = zext i8 %241 to i16
  %add907.us = add nuw nsw i16 %add900.us, %conv906.us
  %arrayidx912.us = getelementptr inbounds i8, ptr %in, i64 %181
  %242 = load i8, ptr %arrayidx912.us, align 1, !tbaa !19
  %conv913.us = zext i8 %242 to i16
  %add914.us = add nuw nsw i16 %add907.us, %conv913.us
  %arrayidx920.us = getelementptr inbounds i8, ptr %in, i64 %188
  %243 = load i8, ptr %arrayidx920.us, align 1, !tbaa !19
  %conv921.us = zext i8 %243 to i16
  %add922.us = add nuw nsw i16 %add914.us, %conv921.us
  %arrayidx928.us = getelementptr inbounds i8, ptr %in, i64 %190
  %244 = load i8, ptr %arrayidx928.us, align 1, !tbaa !19
  %conv929.us = zext i8 %244 to i16
  %add930.us = add nuw nsw i16 %add922.us, %conv929.us
  %arrayidx935.us = getelementptr inbounds i8, ptr %in, i64 %185
  %245 = load i8, ptr %arrayidx935.us, align 1, !tbaa !19
  %conv936.us = zext i8 %245 to i16
  %add937.us = add nuw nsw i16 %add930.us, %conv936.us
  %arrayidx943.us = getelementptr inbounds i8, ptr %in, i64 %193
  %246 = load i8, ptr %arrayidx943.us, align 1, !tbaa !19
  %conv944.us = zext i8 %246 to i16
  %add945.us = add nuw nsw i16 %add937.us, %conv944.us
  %arrayidx951.us = getelementptr inbounds i8, ptr %in, i64 %195
  %247 = load i8, ptr %arrayidx951.us, align 1, !tbaa !19
  %conv952.us = zext i8 %247 to i16
  %add953.us = add nuw nsw i16 %add945.us, %conv952.us
  %arrayidx959.us = getelementptr inbounds i8, ptr %in, i64 %202
  %248 = load i8, ptr %arrayidx959.us, align 1, !tbaa !19
  %conv960.us = zext i8 %248 to i16
  %add961.us = add nuw nsw i16 %add953.us, %conv960.us
  %arrayidx967.us = getelementptr inbounds i8, ptr %in, i64 %204
  %249 = load i8, ptr %arrayidx967.us, align 1, !tbaa !19
  %conv968.us = zext i8 %249 to i16
  %add969.us = add nuw nsw i16 %add961.us, %conv968.us
  %arrayidx974.us = getelementptr inbounds i8, ptr %in, i64 %199
  %250 = load i8, ptr %arrayidx974.us, align 1, !tbaa !19
  %conv975.us = zext i8 %250 to i16
  %add976.us = add nuw nsw i16 %add969.us, %conv975.us
  %arrayidx982.us = getelementptr inbounds i8, ptr %in, i64 %207
  %251 = load i8, ptr %arrayidx982.us, align 1, !tbaa !19
  %conv983.us = zext i8 %251 to i16
  %add984.us = add nuw nsw i16 %add976.us, %conv983.us
  %arrayidx990.us = getelementptr inbounds i8, ptr %in, i64 %209
  %252 = load i8, ptr %arrayidx990.us, align 1, !tbaa !19
  %conv991.us = zext i8 %252 to i16
  %add992.us = add nuw nsw i16 %add984.us, %conv991.us
  %div20342035.us = udiv i16 %add992.us, 25
  %div2034.zext.us = zext i16 %div20342035.us to i32
  %I.us = getelementptr inbounds %struct.anon, ptr %corner_list, i64 %idxprom796.us, i32 5
  store i32 %div2034.zext.us, ptr %I.us, align 4, !tbaa !70
  %253 = load i8, ptr %arrayidx839.us, align 1, !tbaa !19
  %conv1001.us = zext i8 %253 to i32
  %254 = load i8, ptr %arrayidx878.us, align 1, !tbaa !19
  %conv1008.us = zext i8 %254 to i32
  %255 = load i8, ptr %arrayidx912.us, align 1, !tbaa !19
  %conv1015.us = zext i8 %255 to i32
  %256 = load i8, ptr %arrayidx951.us, align 1, !tbaa !19
  %conv1023.us = zext i8 %256 to i32
  %257 = load i8, ptr %arrayidx990.us, align 1, !tbaa !19
  %conv1031.us = zext i8 %257 to i32
  %258 = load i8, ptr %arrayidx809.us, align 1, !tbaa !19
  %conv1039.us = zext i8 %258 to i32
  %259 = load i8, ptr %arrayidx847.us, align 1, !tbaa !19
  %conv1046.us = zext i8 %259 to i32
  %260 = load i8, ptr %arrayidx885.us, align 1, !tbaa !19
  %conv1053.us = zext i8 %260 to i32
  %261 = load i8, ptr %arrayidx920.us, align 1, !tbaa !19
  %conv1061.us = zext i8 %261 to i32
  %262 = load i8, ptr %arrayidx959.us, align 1, !tbaa !19
  %conv1069.us = zext i8 %262 to i32
  %add1047.neg.us = add nuw nsw i32 %conv1008.us, %conv1001.us
  %add1054.neg.us = add nuw nsw i32 %add1047.neg.us, %conv1015.us
  %add1062.neg.us = add nuw nsw i32 %add1054.neg.us, %conv1023.us
  %add1070.neg.us = add nuw nsw i32 %add1062.neg.us, %conv1031.us
  %263 = add nuw nsw i32 %conv1039.us, %conv1046.us
  %264 = add nuw nsw i32 %263, %conv1053.us
  %265 = add nuw nsw i32 %264, %conv1061.us
  %266 = add nuw nsw i32 %265, %conv1069.us
  %sub1071.us = sub nsw i32 %add1070.neg.us, %266
  %267 = load i8, ptr %arrayidx831.us, align 1, !tbaa !19
  %conv1078.us = zext i8 %267 to i32
  %268 = load i8, ptr %arrayidx870.us, align 1, !tbaa !19
  %conv1086.us = zext i8 %268 to i32
  %269 = load i8, ptr %arrayidx905.us, align 1, !tbaa !19
  %conv1093.us = zext i8 %269 to i32
  %270 = load i8, ptr %arrayidx943.us, align 1, !tbaa !19
  %conv1101.us = zext i8 %270 to i32
  %271 = load i8, ptr %arrayidx982.us, align 1, !tbaa !19
  %conv1109.us = zext i8 %271 to i32
  %272 = load i8, ptr %arrayidx816.us, align 1, !tbaa !19
  %conv1117.us = zext i8 %272 to i32
  %273 = load i8, ptr %arrayidx855.us, align 1, !tbaa !19
  %conv1124.us = zext i8 %273 to i32
  %274 = load i8, ptr %arrayidx892.us, align 1, !tbaa !19
  %conv1131.us = zext i8 %274 to i32
  %275 = load i8, ptr %arrayidx928.us, align 1, !tbaa !19
  %conv1139.us = zext i8 %275 to i32
  %276 = load i8, ptr %arrayidx967.us, align 1, !tbaa !19
  %conv1147.us = zext i8 %276 to i32
  %factor.us = shl nsw i32 %sub1071.us, 1
  %add1132.neg.us = add nuw nsw i32 %conv1086.us, %conv1078.us
  %add1140.neg.us = add i32 %add1132.neg.us, %factor.us
  %add1148.neg.us = add i32 %add1140.neg.us, %conv1093.us
  %add1079.us = add i32 %add1148.neg.us, %conv1101.us
  %add1087.us = add i32 %add1079.us, %conv1109.us
  %277 = add nuw nsw i32 %conv1117.us, %conv1124.us
  %278 = add nuw nsw i32 %277, %conv1131.us
  %279 = add nuw nsw i32 %278, %conv1139.us
  %280 = add nuw nsw i32 %279, %conv1147.us
  %add1150.us = sub i32 %add1087.us, %280
  %281 = load i8, ptr %arrayidx974.us, align 1, !tbaa !19
  %conv1171.us = zext i8 %281 to i32
  %282 = load i8, ptr %arrayidx823.us, align 1, !tbaa !19
  %conv1209.us = zext i8 %282 to i32
  %283 = add nuw nsw i32 %conv1001.us, %conv1039.us
  %284 = add nuw nsw i32 %conv1031.us, %conv1069.us
  %285 = add nuw nsw i32 %283, %conv1078.us
  %286 = add nuw nsw i32 %284, %conv1109.us
  %287 = add nuw nsw i32 %285, %conv1117.us
  %add1172.us = sub nsw i32 %286, %287
  %add1180.us = add nsw i32 %add1172.us, %conv1147.us
  %add1188.us = add nsw i32 %add1180.us, %conv1171.us
  %sub1227.us = sub nsw i32 %add1188.us, %conv1209.us
  %288 = load i8, ptr %arrayidx935.us, align 1, !tbaa !19
  %conv1249.us = zext i8 %288 to i32
  %289 = load i8, ptr %arrayidx862.us, align 1, !tbaa !19
  %conv1287.us = zext i8 %289 to i32
  %factor2038.us = shl nsw i32 %sub1227.us, 1
  %290 = add nuw nsw i32 %conv1008.us, %conv1046.us
  %291 = add nuw nsw i32 %conv1023.us, %conv1061.us
  %292 = add nuw nsw i32 %290, %conv1086.us
  %293 = add nuw nsw i32 %291, %conv1101.us
  %294 = add nuw nsw i32 %292, %conv1124.us
  %add1250.us = sub nsw i32 %293, %294
  %add1258.us = add nsw i32 %add1250.us, %conv1139.us
  %add1266.us = add nsw i32 %add1258.us, %conv1249.us
  %sub1305.us = sub nsw i32 %add1266.us, %conv1287.us
  %add1306.us = add i32 %sub1305.us, %factor2038.us
  %div1307.lhs.trunc.us = trunc i32 %add1150.us to i16
  %div13072036.us = sdiv i16 %div1307.lhs.trunc.us, 15
  %div1307.sext.us = sext i16 %div13072036.us to i32
  %dx.us = getelementptr inbounds %struct.anon, ptr %corner_list, i64 %idxprom796.us, i32 3
  store i32 %div1307.sext.us, ptr %dx.us, align 4, !tbaa !68
  %div1310.lhs.trunc.us = trunc i32 %add1306.us to i16
  %div13102037.us = sdiv i16 %div1310.lhs.trunc.us, 15
  %div1310.sext.us = sext i16 %div13102037.us to i32
  %dy.us = getelementptr inbounds %struct.anon, ptr %corner_list, i64 %idxprom796.us, i32 4
  store i32 %div1310.sext.us, ptr %dy.us, align 4, !tbaa !69
  %inc1313.us = add nsw i32 %n.12049.us, 1
  %cmp1314.us = icmp eq i32 %inc1313.us, 15000
  br i1 %cmp1314.us, label %if.then1316, label %for.inc1320.us

for.inc1320.us:                                   ; preds = %if.then795.us, %land.lhs.true786.us, %land.lhs.true777.us, %land.lhs.true768.us, %land.lhs.true760.us, %land.lhs.true751.us, %land.lhs.true742.us, %land.lhs.true733.us, %land.lhs.true724.us, %land.lhs.true715.us, %land.lhs.true706.us, %land.lhs.true698.us, %land.lhs.true689.us, %land.lhs.true680.us, %land.lhs.true671.us, %land.lhs.true662.us, %land.lhs.true653.us, %land.lhs.true644.us, %land.lhs.true636.us, %land.lhs.true627.us, %land.lhs.true618.us, %land.lhs.true609.us, %land.lhs.true601.us, %land.lhs.true593.us, %land.lhs.true585.us, %land.lhs.true577.us, %land.lhs.true569.us, %land.lhs.true561.us, %land.lhs.true552.us, %land.lhs.true543.us, %land.lhs.true534.us, %land.lhs.true526.us, %land.lhs.true517.us, %land.lhs.true508.us, %land.lhs.true499.us, %land.lhs.true490.us, %land.lhs.true481.us, %land.lhs.true472.us, %land.lhs.true464.us, %land.lhs.true455.us, %land.lhs.true446.us, %land.lhs.true437.us, %land.lhs.true428.us, %land.lhs.true419.us, %land.lhs.true410.us, %land.lhs.true402.us, %land.lhs.true393.us, %land.lhs.true.us, %if.then376.us, %for.body369.us
  %n.2.us = phi i32 [ %inc1313.us, %if.then795.us ], [ %n.12049.us, %land.lhs.true786.us ], [ %n.12049.us, %land.lhs.true777.us ], [ %n.12049.us, %land.lhs.true768.us ], [ %n.12049.us, %land.lhs.true760.us ], [ %n.12049.us, %land.lhs.true751.us ], [ %n.12049.us, %land.lhs.true742.us ], [ %n.12049.us, %land.lhs.true733.us ], [ %n.12049.us, %land.lhs.true724.us ], [ %n.12049.us, %land.lhs.true715.us ], [ %n.12049.us, %land.lhs.true706.us ], [ %n.12049.us, %land.lhs.true698.us ], [ %n.12049.us, %land.lhs.true689.us ], [ %n.12049.us, %land.lhs.true680.us ], [ %n.12049.us, %land.lhs.true671.us ], [ %n.12049.us, %land.lhs.true662.us ], [ %n.12049.us, %land.lhs.true653.us ], [ %n.12049.us, %land.lhs.true644.us ], [ %n.12049.us, %land.lhs.true636.us ], [ %n.12049.us, %land.lhs.true627.us ], [ %n.12049.us, %land.lhs.true618.us ], [ %n.12049.us, %land.lhs.true609.us ], [ %n.12049.us, %land.lhs.true601.us ], [ %n.12049.us, %land.lhs.true593.us ], [ %n.12049.us, %land.lhs.true585.us ], [ %n.12049.us, %land.lhs.true577.us ], [ %n.12049.us, %land.lhs.true569.us ], [ %n.12049.us, %land.lhs.true561.us ], [ %n.12049.us, %land.lhs.true552.us ], [ %n.12049.us, %land.lhs.true543.us ], [ %n.12049.us, %land.lhs.true534.us ], [ %n.12049.us, %land.lhs.true526.us ], [ %n.12049.us, %land.lhs.true517.us ], [ %n.12049.us, %land.lhs.true508.us ], [ %n.12049.us, %land.lhs.true499.us ], [ %n.12049.us, %land.lhs.true490.us ], [ %n.12049.us, %land.lhs.true481.us ], [ %n.12049.us, %land.lhs.true472.us ], [ %n.12049.us, %land.lhs.true464.us ], [ %n.12049.us, %land.lhs.true455.us ], [ %n.12049.us, %land.lhs.true446.us ], [ %n.12049.us, %land.lhs.true437.us ], [ %n.12049.us, %land.lhs.true428.us ], [ %n.12049.us, %land.lhs.true419.us ], [ %n.12049.us, %land.lhs.true410.us ], [ %n.12049.us, %land.lhs.true402.us ], [ %n.12049.us, %land.lhs.true393.us ], [ %n.12049.us, %land.lhs.true.us ], [ %n.12049.us, %if.then376.us ], [ %n.12049.us, %for.body369.us ]
  %indvars.iv.next2070 = add nuw nsw i64 %indvars.iv2069, 1
  %exitcond2122.not = icmp eq i64 %indvars.iv.next2070, %wide.trip.count2121
  br i1 %exitcond2122.not, label %for.cond365.for.inc1323_crit_edge.us, label %for.body369.us, !llvm.loop !75

for.cond365.for.inc1323_crit_edge.us:             ; preds = %for.inc1320.us
  %exitcond2139.not = icmp eq i64 %indvars.iv.next2124, %wide.trip.count2138
  br i1 %exitcond2139.not, label %for.end1325, label %for.cond365.preheader.us, !llvm.loop !76

if.then1316:                                      ; preds = %if.then795.us
  %295 = load ptr, ptr @stderr, align 8, !tbaa !5
  %296 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 18, i64 1, ptr %295) #22
  tail call void @exit(i32 noundef 1) #20
  unreachable

for.end1325:                                      ; preds = %for.cond365.for.inc1323_crit_edge.us, %for.cond3.preheader.lr.ph, %entry, %for.cond360.preheader
  %n.0.lcssa = phi i32 [ 0, %for.cond360.preheader ], [ 0, %entry ], [ 0, %for.cond3.preheader.lr.ph ], [ %n.2.us, %for.cond365.for.inc1323_crit_edge.us ]
  %idxprom1326 = sext i32 %n.0.lcssa to i64
  %info1328 = getelementptr inbounds %struct.anon, ptr %corner_list, i64 %idxprom1326, i32 2
  store i32 7, ptr %info1328, align 4, !tbaa !61
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readonly %argv) local_unnamed_addr #3 {
entry:
  %in = alloca ptr, align 8
  %bp = alloca ptr, align 8
  %x_size = alloca i32, align 4
  %y_size = alloca i32, align 4
  %corner_list = alloca [15000 x %struct.anon], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bp) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x_size) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y_size) #21
  call void @llvm.lifetime.start.p0(i64 360000, ptr nonnull %corner_list) #21
  %cmp = icmp slt i32 %argc, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @usage()
  unreachable

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds ptr, ptr %argv, i64 1
  %0 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  call void @get_image(ptr noundef %0, ptr noundef nonnull %in, ptr noundef nonnull %x_size, ptr noundef nonnull %y_size)
  %cmp1170.not = icmp eq i32 %argc, 3
  br i1 %cmp1170.not, label %while.end, label %while.body

while.body:                                       ; preds = %if.end, %if.end39
  %mode.0179 = phi i32 [ %mode.1, %if.end39 ], [ 0, %if.end ]
  %dt.0178 = phi float [ %dt.1, %if.end39 ], [ 4.000000e+00, %if.end ]
  %susan_quick.0177 = phi i32 [ %susan_quick.1, %if.end39 ], [ 0, %if.end ]
  %drawing_mode.0176 = phi i32 [ %drawing_mode.1, %if.end39 ], [ 0, %if.end ]
  %three_by_three.0175 = phi i32 [ %three_by_three.1, %if.end39 ], [ 0, %if.end ]
  %thin_post_proc.0174 = phi i32 [ %thin_post_proc.1, %if.end39 ], [ 1, %if.end ]
  %principle.0173 = phi i32 [ %principle.1, %if.end39 ], [ 0, %if.end ]
  %bt.0172 = phi i32 [ %bt.1, %if.end39 ], [ 20, %if.end ]
  %argindex.0171 = phi i32 [ %inc40, %if.end39 ], [ 3, %if.end ]
  %idxprom = sext i32 %argindex.0171 to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %argv, i64 %idxprom
  %1 = load ptr, ptr %arrayidx2, align 8, !tbaa !5
  %2 = load i8, ptr %1, align 1, !tbaa !19
  %cmp3 = icmp eq i8 %2, 45
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %while.body
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i64 1
  %3 = load i8, ptr %incdec.ptr, align 1, !tbaa !19
  %conv6 = sext i8 %3 to i32
  switch i32 %conv6, label %if.end39 [
    i32 115, label %sw.bb
    i32 101, label %sw.bb7
    i32 99, label %sw.bb8
    i32 112, label %sw.bb9
    i32 110, label %sw.bb10
    i32 98, label %sw.bb11
    i32 51, label %sw.bb12
    i32 113, label %sw.bb13
    i32 100, label %sw.bb14
    i32 116, label %sw.bb28
  ]

sw.bb:                                            ; preds = %if.then5
  br label %if.end39

sw.bb7:                                           ; preds = %if.then5
  br label %if.end39

sw.bb8:                                           ; preds = %if.then5
  br label %if.end39

sw.bb9:                                           ; preds = %if.then5
  br label %if.end39

sw.bb10:                                          ; preds = %if.then5
  br label %if.end39

sw.bb11:                                          ; preds = %if.then5
  br label %if.end39

sw.bb12:                                          ; preds = %if.then5
  br label %if.end39

sw.bb13:                                          ; preds = %if.then5
  br label %if.end39

sw.bb14:                                          ; preds = %if.then5
  %inc = add nsw i32 %argindex.0171, 1
  %cmp15.not = icmp slt i32 %inc, %argc
  br i1 %cmp15.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %sw.bb14
  %puts145 = tail call i32 @puts(ptr nonnull @str.47)
  tail call void @exit(i32 noundef 0) #20
  unreachable

if.end19:                                         ; preds = %sw.bb14
  %idxprom20 = sext i32 %inc to i64
  %arrayidx21 = getelementptr inbounds ptr, ptr %argv, i64 %idxprom20
  %4 = load ptr, ptr %arrayidx21, align 8, !tbaa !5
  %call22 = tail call double @atof(ptr noundef %4) #24
  %conv23 = fptrunc double %call22 to float
  %cmp24 = fcmp olt float %conv23, 0.000000e+00
  br i1 %cmp24, label %if.then26, label %if.end39

if.then26:                                        ; preds = %if.end19
  br label %if.end39

sw.bb28:                                          ; preds = %if.then5
  %inc29 = add nsw i32 %argindex.0171, 1
  %cmp30.not = icmp slt i32 %inc29, %argc
  br i1 %cmp30.not, label %if.end34, label %if.then32

if.then32:                                        ; preds = %sw.bb28
  %puts = tail call i32 @puts(ptr nonnull @str.46)
  tail call void @exit(i32 noundef 0) #20
  unreachable

if.end34:                                         ; preds = %sw.bb28
  %idxprom35 = sext i32 %inc29 to i64
  %arrayidx36 = getelementptr inbounds ptr, ptr %argv, i64 %idxprom35
  %5 = load ptr, ptr %arrayidx36, align 8, !tbaa !5
  %call37 = tail call i32 @atoi(ptr noundef %5) #24
  br label %if.end39

if.else:                                          ; preds = %while.body
  %call38 = tail call i32 @usage()
  unreachable

if.end39:                                         ; preds = %sw.bb, %sw.bb7, %sw.bb8, %sw.bb9, %sw.bb10, %sw.bb11, %sw.bb12, %sw.bb13, %if.end34, %if.then5, %if.then26, %if.end19
  %argindex.1 = phi i32 [ %argindex.0171, %if.then5 ], [ %inc29, %if.end34 ], [ %inc, %if.then26 ], [ %inc, %if.end19 ], [ %argindex.0171, %sw.bb13 ], [ %argindex.0171, %sw.bb12 ], [ %argindex.0171, %sw.bb11 ], [ %argindex.0171, %sw.bb10 ], [ %argindex.0171, %sw.bb9 ], [ %argindex.0171, %sw.bb8 ], [ %argindex.0171, %sw.bb7 ], [ %argindex.0171, %sw.bb ]
  %bt.1 = phi i32 [ %bt.0172, %if.then5 ], [ %call37, %if.end34 ], [ %bt.0172, %if.then26 ], [ %bt.0172, %if.end19 ], [ %bt.0172, %sw.bb13 ], [ %bt.0172, %sw.bb12 ], [ %bt.0172, %sw.bb11 ], [ %bt.0172, %sw.bb10 ], [ %bt.0172, %sw.bb9 ], [ %bt.0172, %sw.bb8 ], [ %bt.0172, %sw.bb7 ], [ %bt.0172, %sw.bb ]
  %principle.1 = phi i32 [ %principle.0173, %if.then5 ], [ %principle.0173, %if.end34 ], [ %principle.0173, %if.then26 ], [ %principle.0173, %if.end19 ], [ %principle.0173, %sw.bb13 ], [ %principle.0173, %sw.bb12 ], [ %principle.0173, %sw.bb11 ], [ %principle.0173, %sw.bb10 ], [ 1, %sw.bb9 ], [ %principle.0173, %sw.bb8 ], [ %principle.0173, %sw.bb7 ], [ %principle.0173, %sw.bb ]
  %thin_post_proc.1 = phi i32 [ %thin_post_proc.0174, %if.then5 ], [ %thin_post_proc.0174, %if.end34 ], [ %thin_post_proc.0174, %if.then26 ], [ %thin_post_proc.0174, %if.end19 ], [ %thin_post_proc.0174, %sw.bb13 ], [ %thin_post_proc.0174, %sw.bb12 ], [ %thin_post_proc.0174, %sw.bb11 ], [ 0, %sw.bb10 ], [ %thin_post_proc.0174, %sw.bb9 ], [ %thin_post_proc.0174, %sw.bb8 ], [ %thin_post_proc.0174, %sw.bb7 ], [ %thin_post_proc.0174, %sw.bb ]
  %three_by_three.1 = phi i32 [ %three_by_three.0175, %if.then5 ], [ %three_by_three.0175, %if.end34 ], [ 1, %if.then26 ], [ %three_by_three.0175, %if.end19 ], [ %three_by_three.0175, %sw.bb13 ], [ 1, %sw.bb12 ], [ %three_by_three.0175, %sw.bb11 ], [ %three_by_three.0175, %sw.bb10 ], [ %three_by_three.0175, %sw.bb9 ], [ %three_by_three.0175, %sw.bb8 ], [ %three_by_three.0175, %sw.bb7 ], [ %three_by_three.0175, %sw.bb ]
  %drawing_mode.1 = phi i32 [ %drawing_mode.0176, %if.then5 ], [ %drawing_mode.0176, %if.end34 ], [ %drawing_mode.0176, %if.then26 ], [ %drawing_mode.0176, %if.end19 ], [ %drawing_mode.0176, %sw.bb13 ], [ %drawing_mode.0176, %sw.bb12 ], [ 1, %sw.bb11 ], [ %drawing_mode.0176, %sw.bb10 ], [ %drawing_mode.0176, %sw.bb9 ], [ %drawing_mode.0176, %sw.bb8 ], [ %drawing_mode.0176, %sw.bb7 ], [ %drawing_mode.0176, %sw.bb ]
  %susan_quick.1 = phi i32 [ %susan_quick.0177, %if.then5 ], [ %susan_quick.0177, %if.end34 ], [ %susan_quick.0177, %if.then26 ], [ %susan_quick.0177, %if.end19 ], [ 1, %sw.bb13 ], [ %susan_quick.0177, %sw.bb12 ], [ %susan_quick.0177, %sw.bb11 ], [ %susan_quick.0177, %sw.bb10 ], [ %susan_quick.0177, %sw.bb9 ], [ %susan_quick.0177, %sw.bb8 ], [ %susan_quick.0177, %sw.bb7 ], [ %susan_quick.0177, %sw.bb ]
  %dt.1 = phi float [ %dt.0178, %if.then5 ], [ %dt.0178, %if.end34 ], [ %conv23, %if.then26 ], [ %conv23, %if.end19 ], [ %dt.0178, %sw.bb13 ], [ %dt.0178, %sw.bb12 ], [ %dt.0178, %sw.bb11 ], [ %dt.0178, %sw.bb10 ], [ %dt.0178, %sw.bb9 ], [ %dt.0178, %sw.bb8 ], [ %dt.0178, %sw.bb7 ], [ %dt.0178, %sw.bb ]
  %mode.1 = phi i32 [ %mode.0179, %if.then5 ], [ %mode.0179, %if.end34 ], [ %mode.0179, %if.then26 ], [ %mode.0179, %if.end19 ], [ %mode.0179, %sw.bb13 ], [ %mode.0179, %sw.bb12 ], [ %mode.0179, %sw.bb11 ], [ %mode.0179, %sw.bb10 ], [ %mode.0179, %sw.bb9 ], [ 2, %sw.bb8 ], [ 1, %sw.bb7 ], [ 0, %sw.bb ]
  %inc40 = add nsw i32 %argindex.1, 1
  %cmp1 = icmp slt i32 %inc40, %argc
  br i1 %cmp1, label %while.body, label %while.end, !llvm.loop !77

while.end:                                        ; preds = %if.end39, %if.end
  %bt.0.lcssa = phi i32 [ 20, %if.end ], [ %bt.1, %if.end39 ]
  %principle.0.lcssa = phi i32 [ 0, %if.end ], [ %principle.1, %if.end39 ]
  %thin_post_proc.0.lcssa = phi i32 [ 1, %if.end ], [ %thin_post_proc.1, %if.end39 ]
  %three_by_three.0.lcssa = phi i32 [ 0, %if.end ], [ %three_by_three.1, %if.end39 ]
  %drawing_mode.0.lcssa = phi i32 [ 0, %if.end ], [ %drawing_mode.1, %if.end39 ]
  %susan_quick.0.lcssa = phi i32 [ 0, %if.end ], [ %susan_quick.1, %if.end39 ]
  %dt.0.lcssa = phi float [ 4.000000e+00, %if.end ], [ %dt.1, %if.end39 ]
  %mode.0.lcssa = phi i32 [ 0, %if.end ], [ %mode.1, %if.end39 ]
  %cmp41 = icmp eq i32 %principle.0.lcssa, 1
  %cmp43 = icmp eq i32 %mode.0.lcssa, 0
  %or.cond = select i1 %cmp41, i1 %cmp43, i1 false
  %spec.store.select = select i1 %or.cond, i32 1, i32 %mode.0.lcssa
  switch i32 %spec.store.select, label %while.end.sw.epilog101_crit_edge [
    i32 0, label %sw.bb47
    i32 1, label %sw.bb49
    i32 2, label %sw.bb80
  ]

while.end.sw.epilog101_crit_edge:                 ; preds = %while.end
  %.pre = load ptr, ptr %in, align 8, !tbaa !5
  %.pre187 = load i32, ptr %x_size, align 4, !tbaa !12
  %.pre188 = load i32, ptr %y_size, align 4, !tbaa !12
  br label %sw.epilog101

sw.bb47:                                          ; preds = %while.end
  call void @setup_brightness_lut(ptr noundef nonnull %bp, i32 noundef %bt.0.lcssa, i32 noundef 2)
  %6 = load ptr, ptr %in, align 8, !tbaa !5
  %conv48 = fpext float %dt.0.lcssa to double
  %7 = load i32, ptr %x_size, align 4, !tbaa !12
  %8 = load i32, ptr %y_size, align 4, !tbaa !12
  %9 = load ptr, ptr %bp, align 8, !tbaa !5
  tail call void @susan_smoothing(i32 noundef %three_by_three.0.lcssa, ptr noundef %6, double noundef %conv48, i32 noundef %7, i32 noundef %8, ptr noundef %9)
  br label %sw.epilog101

sw.bb49:                                          ; preds = %while.end
  %10 = load i32, ptr %x_size, align 4, !tbaa !12
  %11 = load i32, ptr %y_size, align 4, !tbaa !12
  %mul = mul nsw i32 %11, %10
  %conv50 = sext i32 %mul to i64
  %mul51 = shl nsw i64 %conv50, 2
  %call52 = tail call noalias ptr @malloc(i64 noundef %mul51) #23
  call void @setup_brightness_lut(ptr noundef nonnull %bp, i32 noundef %bt.0.lcssa, i32 noundef 6)
  %tobool.not = icmp eq i32 %principle.0.lcssa, 0
  br i1 %tobool.not, label %if.else62, label %if.then53

if.then53:                                        ; preds = %sw.bb49
  %tobool54.not = icmp eq i32 %three_by_three.0.lcssa, 0
  %12 = load ptr, ptr %in, align 8, !tbaa !5
  %13 = load ptr, ptr %bp, align 8, !tbaa !5
  br i1 %tobool54.not, label %if.else57, label %if.then55

if.then55:                                        ; preds = %if.then53
  %call56 = tail call i32 @susan_principle_small(ptr noundef %12, ptr noundef %call52, ptr noundef %13, i32 undef, i32 noundef %10, i32 noundef %11)
  br label %if.end59

if.else57:                                        ; preds = %if.then53
  %call58 = tail call i32 @susan_principle(ptr noundef %12, ptr noundef %call52, ptr noundef %13, i32 noundef 2650, i32 noundef %10, i32 noundef %11)
  br label %if.end59

if.end59:                                         ; preds = %if.else57, %if.then55
  %call61 = tail call i32 @int_to_uchar(ptr noundef %call52, ptr noundef %12, i32 noundef %mul)
  br label %sw.epilog101

if.else62:                                        ; preds = %sw.bb49
  %call65 = tail call noalias ptr @malloc(i64 noundef %conv50) #23
  tail call void @llvm.memset.p0.i64(ptr align 1 %call65, i8 100, i64 %conv50, i1 false)
  %tobool68.not = icmp eq i32 %three_by_three.0.lcssa, 0
  %14 = load ptr, ptr %in, align 8, !tbaa !5
  %15 = load ptr, ptr %bp, align 8, !tbaa !5
  br i1 %tobool68.not, label %if.else71, label %if.then69

if.then69:                                        ; preds = %if.else62
  %call70 = tail call i32 @susan_edges_small(ptr noundef %14, ptr noundef %call52, ptr noundef %call65, ptr noundef %15, i32 undef, i32 noundef %10, i32 noundef %11)
  br label %if.end73

if.else71:                                        ; preds = %if.else62
  %call72 = tail call i32 @susan_edges(ptr noundef %14, ptr noundef %call52, ptr noundef %call65, ptr noundef %15, i32 noundef 2650, i32 noundef %10, i32 noundef %11)
  br label %if.end73

if.end73:                                         ; preds = %if.else71, %if.then69
  %tobool74.not = icmp eq i32 %thin_post_proc.0.lcssa, 0
  br i1 %tobool74.not, label %if.end77, label %if.then75

if.then75:                                        ; preds = %if.end73
  %call76 = tail call i32 @susan_thin(ptr noundef %call52, ptr noundef %call65, i32 noundef %10, i32 noundef %11)
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.end73
  %call78 = tail call i32 @edge_draw(ptr noundef %14, ptr noundef %call65, i32 noundef %10, i32 noundef %11, i32 noundef %drawing_mode.0.lcssa)
  br label %sw.epilog101

sw.bb80:                                          ; preds = %while.end
  %16 = load i32, ptr %x_size, align 4, !tbaa !12
  %17 = load i32, ptr %y_size, align 4, !tbaa !12
  %mul81 = mul nsw i32 %17, %16
  %conv82 = sext i32 %mul81 to i64
  %mul83 = shl nsw i64 %conv82, 2
  %call84 = tail call noalias ptr @malloc(i64 noundef %mul83) #23
  call void @setup_brightness_lut(ptr noundef nonnull %bp, i32 noundef %bt.0.lcssa, i32 noundef 6)
  %tobool85.not = icmp eq i32 %principle.0.lcssa, 0
  br i1 %tobool85.not, label %if.else90, label %if.then86

if.then86:                                        ; preds = %sw.bb80
  %18 = load ptr, ptr %in, align 8, !tbaa !5
  %19 = load ptr, ptr %bp, align 8, !tbaa !5
  %call87 = tail call i32 @susan_principle(ptr noundef %18, ptr noundef %call84, ptr noundef %19, i32 noundef 1850, i32 noundef %16, i32 noundef %17)
  %call89 = tail call i32 @int_to_uchar(ptr noundef %call84, ptr noundef %18, i32 noundef %mul81)
  br label %sw.epilog101

if.else90:                                        ; preds = %sw.bb80
  %tobool91.not = icmp eq i32 %susan_quick.0.lcssa, 0
  %20 = load ptr, ptr %in, align 8, !tbaa !5
  %21 = load ptr, ptr %bp, align 8, !tbaa !5
  br i1 %tobool91.not, label %if.else94, label %if.then92

if.then92:                                        ; preds = %if.else90
  %call93 = call i32 @susan_corners_quick(ptr noundef %20, ptr noundef %call84, ptr noundef %21, i32 noundef 1850, ptr noundef nonnull %corner_list, i32 noundef %16, i32 noundef %17)
  br label %if.end97

if.else94:                                        ; preds = %if.else90
  %call96 = call i32 @susan_corners(ptr noundef %20, ptr noundef %call84, ptr noundef %21, i32 noundef 1850, ptr noundef nonnull %corner_list, i32 noundef %16, i32 noundef %17)
  br label %if.end97

if.end97:                                         ; preds = %if.else94, %if.then92
  %call99 = call i32 @corner_draw(ptr noundef %20, ptr noundef nonnull %corner_list, i32 noundef %16, i32 noundef %drawing_mode.0.lcssa)
  br label %sw.epilog101

sw.epilog101:                                     ; preds = %while.end.sw.epilog101_crit_edge, %if.then86, %if.end97, %if.end59, %if.end77, %sw.bb47
  %22 = phi i32 [ %.pre188, %while.end.sw.epilog101_crit_edge ], [ %17, %if.then86 ], [ %17, %if.end97 ], [ %11, %if.end59 ], [ %11, %if.end77 ], [ %8, %sw.bb47 ]
  %23 = phi i32 [ %.pre187, %while.end.sw.epilog101_crit_edge ], [ %16, %if.then86 ], [ %16, %if.end97 ], [ %10, %if.end59 ], [ %10, %if.end77 ], [ %7, %sw.bb47 ]
  %24 = phi ptr [ %.pre, %while.end.sw.epilog101_crit_edge ], [ %18, %if.then86 ], [ %20, %if.end97 ], [ %12, %if.end59 ], [ %14, %if.end77 ], [ %6, %sw.bb47 ]
  %arrayidx102 = getelementptr inbounds ptr, ptr %argv, i64 2
  %25 = load ptr, ptr %arrayidx102, align 8, !tbaa !5
  %call103 = tail call i32 @put_image(ptr noundef %25, ptr noundef %24, i32 noundef %23, i32 noundef %22)
  call void @llvm.lifetime.end.p0(i64 360000, ptr nonnull %corner_list) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y_size) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x_size) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bp) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in) #21
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare double @atof(ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #17

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #18

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #19

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #19

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #5 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #11 = { argmemonly nofree noinline nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #13 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { argmemonly nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind }
attributes #22 = { cold }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !10}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = distinct !{!14, !15, !10}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15, !10, !17}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = distinct !{!18, !15, !10, !17}
!19 = !{!7, !7, i64 0}
!20 = distinct !{!20, !15, !10}
!21 = distinct !{!21, !15, !10}
!22 = distinct !{!22, !15, !10}
!23 = distinct !{!23, !15, !10}
!24 = distinct !{!24, !15, !10}
!25 = distinct !{!25, !15, !10}
!26 = distinct !{!26, !15, !10}
!27 = distinct !{!27, !15, !10}
!28 = distinct !{!28, !15, !10}
!29 = distinct !{!29, !15, !10}
!30 = distinct !{!30, !15, !10}
!31 = distinct !{!31, !15, !10}
!32 = distinct !{!32, !15, !10}
!33 = distinct !{!33, !15, !10}
!34 = distinct !{!34, !15, !10}
!35 = distinct !{!35, !15, !10}
!36 = distinct !{!36, !15, !10}
!37 = distinct !{!37, !15, !10}
!38 = distinct !{!38, !15, !10}
!39 = distinct !{!39, !15, !10}
!40 = distinct !{!40, !15, !10}
!41 = !{!42}
!42 = distinct !{!42, !43}
!43 = distinct !{!43, !"LVerDomain"}
!44 = !{!45}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !15, !10, !17}
!47 = distinct !{!47, !15, !10, !17, !48}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
!49 = distinct !{!49, !15, !10, !17}
!50 = distinct !{!50, !15, !10}
!51 = distinct !{!51, !15, !10}
!52 = distinct !{!52, !15, !10}
!53 = distinct !{!53, !15, !10}
!54 = distinct !{!54, !15, !10}
!55 = distinct !{!55, !15, !10}
!56 = distinct !{!56, !15, !10}
!57 = distinct !{!57, !15, !10}
!58 = distinct !{!58, !15, !10}
!59 = distinct !{!59, !15, !10}
!60 = distinct !{!60, !15, !10}
!61 = !{!62, !13, i64 8}
!62 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20}
!63 = !{!62, !13, i64 4}
!64 = !{!62, !13, i64 0}
!65 = distinct !{!65, !15, !10}
!66 = distinct !{!66, !15, !10}
!67 = distinct !{!67, !15, !10}
!68 = !{!62, !13, i64 12}
!69 = !{!62, !13, i64 16}
!70 = !{!62, !13, i64 20}
!71 = distinct !{!71, !15, !10}
!72 = distinct !{!72, !15, !10}
!73 = distinct !{!73, !15, !10}
!74 = distinct !{!74, !15, !10}
!75 = distinct !{!75, !15, !10}
!76 = distinct !{!76, !15, !10}
!77 = distinct !{!77, !15, !10}
