; ModuleID = 'benchmarks/Lonstar_eda/memAlloc.ll'
source_filename = "memAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [19 x i8] c"run-time error...\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"...now exiting to system...\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"allocation failure in vector()\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"allocation failure in ivector()\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"allocation failure in cvector()\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"allocation failure in lvector()\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"allocation failure in dvector()\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"allocation failure 1 in matrix()\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"allocation failure 2 in matrix()\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"allocation failure 1 in dmatrix()\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"allocation failure 2 din matrix()\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"allocation failure 1 in imatrix()\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"allocation failure 2 in imatrix()\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"allocation failure 1 in cmatrix()\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"allocation failure 2 in cmatrix()\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"allocation failure 1 in lmatrix()\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"allocation failure 2 in lmatrix()\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"allocation failure in submatrix()\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"allocation failure in convert_matrix()\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"allocation failure 1 in f3tensor()\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"allocation failure 2 in f3tensor()\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"allocation failure 3 in f3tensor()\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"allocation failure 1 in lmatrix3D()\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"allocation failure 2 in lmatrix3D()\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"allocation failure 3 in lmatrix3D()\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"allocation failure 1 in imatrix3D()\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"allocation failure 2 in imatrix3D()\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"allocation failure 3 in imatrix3D()\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @runtimeError(ptr noundef %error_text) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %0) #8
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef %error_text) #8
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %3) #8
  tail call void @exit(i32 noundef 1) #9
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @vector(i64 noundef %nl, i64 noundef %nh) local_unnamed_addr #3 {
entry:
  %sub = sub nsw i64 %nh, %nl
  %add1 = shl i64 %sub, 2
  %mul = add i64 %add1, 8
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %0) #11
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #11
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %3) #11
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %idx.neg = sub i64 0, %nl
  %add.ptr = getelementptr inbounds float, ptr %call, i64 %idx.neg
  %add.ptr2 = getelementptr inbounds float, ptr %add.ptr, i64 1
  ret ptr %add.ptr2
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ivector(i64 noundef %nl, i64 noundef %nh) local_unnamed_addr #3 {
entry:
  %sub = sub nsw i64 %nh, %nl
  %add1 = shl i64 %sub, 2
  %mul = add i64 %add1, 8
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %0) #11
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #11
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %3) #11
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %idx.neg = sub i64 0, %nl
  %add.ptr = getelementptr inbounds i32, ptr %call, i64 %idx.neg
  %add.ptr2 = getelementptr inbounds i32, ptr %add.ptr, i64 1
  ret ptr %add.ptr2
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @cvector(i64 noundef %nl, i64 noundef %nh) local_unnamed_addr #3 {
entry:
  %sub = sub i64 2, %nl
  %add1 = add i64 %sub, %nh
  %call = tail call noalias ptr @malloc(i64 noundef %add1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %0) #11
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #11
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %3) #11
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %idx.neg = sub i64 0, %nl
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %idx.neg
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 1
  ret ptr %add.ptr2
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @lvector(i64 noundef %nl, i64 noundef %nh) local_unnamed_addr #3 {
entry:
  %sub = sub nsw i64 %nh, %nl
  %add1 = shl i64 %sub, 3
  %mul = add i64 %add1, 16
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %0) #11
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #11
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %3) #11
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %idx.neg = sub i64 0, %nl
  %add.ptr = getelementptr inbounds i64, ptr %call, i64 %idx.neg
  %add.ptr2 = getelementptr inbounds i64, ptr %add.ptr, i64 1
  ret ptr %add.ptr2
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @dvector(i64 noundef %nl, i64 noundef %nh) local_unnamed_addr #3 {
entry:
  %sub = sub nsw i64 %nh, %nl
  %add1 = shl i64 %sub, 3
  %mul = add i64 %add1, 16
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %0) #11
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #11
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %3) #11
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %idx.neg = sub i64 0, %nl
  %add.ptr = getelementptr inbounds double, ptr %call, i64 %idx.neg
  %add.ptr2 = getelementptr inbounds double, ptr %add.ptr, i64 1
  ret ptr %add.ptr2
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @matrix(i64 noundef %nrl, i64 noundef %nrh, i64 noundef %ncl, i64 noundef %nch) local_unnamed_addr #3 {
entry:
  %sub = sub nsw i64 %nrh, %nrl
  %sub1 = sub nsw i64 %nch, %ncl
  %add2 = add nsw i64 %sub1, 1
  %add3 = shl i64 %sub, 3
  %mul = add i64 %add3, 16
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %0) #11
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #11
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %3) #11
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds ptr, ptr %call, i64 1
  %idx.neg = sub i64 0, %nrl
  %add.ptr4 = getelementptr inbounds ptr, ptr %add.ptr, i64 %idx.neg
  %add = shl i64 %sub, 2
  %mul5 = add i64 %add, 4
  %add6 = mul i64 %add2, %mul5
  %mul7 = add i64 %add6, 4
  %call8 = tail call noalias ptr @malloc(i64 noundef %mul7) #10
  %arrayidx = getelementptr inbounds ptr, ptr %add.ptr4, i64 %nrl
  store ptr %call8, ptr %arrayidx, align 8, !tbaa !5
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %5) #11
  %7 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9) #11
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %9 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %8) #11
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end12:                                         ; preds = %if.end
  %add.ptr14 = getelementptr inbounds float, ptr %call8, i64 1
  %idx.neg16 = sub i64 0, %ncl
  %add.ptr17 = getelementptr inbounds float, ptr %add.ptr14, i64 %idx.neg16
  store ptr %add.ptr17, ptr %arrayidx, align 8, !tbaa !5
  %cmp.not.not47 = icmp sgt i64 %nrh, %nrl
  br i1 %cmp.not.not47, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end12
  %10 = xor i64 %nrl, -1
  %11 = add i64 %10, %nrh
  %xtraiter = and i64 %sub, 7
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %12 = phi ptr [ %add.ptr21.prol, %for.body.prol ], [ %add.ptr17, %for.body.preheader ]
  %i.0.in48.prol = phi i64 [ %i.0.prol, %for.body.prol ], [ %nrl, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %i.0.prol = add nsw i64 %i.0.in48.prol, 1
  %add.ptr21.prol = getelementptr inbounds float, ptr %12, i64 %add2
  %arrayidx22.prol = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.prol
  store ptr %add.ptr21.prol, ptr %arrayidx22.prol, align 8, !tbaa !5
  %prol.iter.next = add nuw nsw i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !9

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %.unr = phi ptr [ %add.ptr17, %for.body.preheader ], [ %add.ptr21.prol, %for.body.prol ]
  %i.0.in48.unr = phi i64 [ %nrl, %for.body.preheader ], [ %i.0.prol, %for.body.prol ]
  %13 = icmp ult i64 %11, 7
  br i1 %13, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %14 = phi ptr [ %add.ptr21.7, %for.body ], [ %.unr, %for.body.prol.loopexit ]
  %i.0.in48 = phi i64 [ %i.0.7, %for.body ], [ %i.0.in48.unr, %for.body.prol.loopexit ]
  %i.0 = add nsw i64 %i.0.in48, 1
  %add.ptr21 = getelementptr inbounds float, ptr %14, i64 %add2
  %arrayidx22 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0
  store ptr %add.ptr21, ptr %arrayidx22, align 8, !tbaa !5
  %i.0.1 = add nsw i64 %i.0.in48, 2
  %add.ptr21.1 = getelementptr inbounds float, ptr %add.ptr21, i64 %add2
  %arrayidx22.1 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.1
  store ptr %add.ptr21.1, ptr %arrayidx22.1, align 8, !tbaa !5
  %i.0.2 = add nsw i64 %i.0.in48, 3
  %add.ptr21.2 = getelementptr inbounds float, ptr %add.ptr21.1, i64 %add2
  %arrayidx22.2 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.2
  store ptr %add.ptr21.2, ptr %arrayidx22.2, align 8, !tbaa !5
  %i.0.3 = add nsw i64 %i.0.in48, 4
  %add.ptr21.3 = getelementptr inbounds float, ptr %add.ptr21.2, i64 %add2
  %arrayidx22.3 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.3
  store ptr %add.ptr21.3, ptr %arrayidx22.3, align 8, !tbaa !5
  %i.0.4 = add nsw i64 %i.0.in48, 5
  %add.ptr21.4 = getelementptr inbounds float, ptr %add.ptr21.3, i64 %add2
  %arrayidx22.4 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.4
  store ptr %add.ptr21.4, ptr %arrayidx22.4, align 8, !tbaa !5
  %i.0.5 = add nsw i64 %i.0.in48, 6
  %add.ptr21.5 = getelementptr inbounds float, ptr %add.ptr21.4, i64 %add2
  %arrayidx22.5 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.5
  store ptr %add.ptr21.5, ptr %arrayidx22.5, align 8, !tbaa !5
  %i.0.6 = add nsw i64 %i.0.in48, 7
  %add.ptr21.6 = getelementptr inbounds float, ptr %add.ptr21.5, i64 %add2
  %arrayidx22.6 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.6
  store ptr %add.ptr21.6, ptr %arrayidx22.6, align 8, !tbaa !5
  %i.0.7 = add nsw i64 %i.0.in48, 8
  %add.ptr21.7 = getelementptr inbounds float, ptr %add.ptr21.6, i64 %add2
  %arrayidx22.7 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.7
  store ptr %add.ptr21.7, ptr %arrayidx22.7, align 8, !tbaa !5
  %exitcond.not.7 = icmp eq i64 %i.0.7, %nrh
  br i1 %exitcond.not.7, label %for.end, label %for.body, !llvm.loop !11

for.end:                                          ; preds = %for.body, %for.body.prol.loopexit, %if.end12
  ret ptr %add.ptr4
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @dmatrix(i64 noundef %nrl, i64 noundef %nrh, i64 noundef %ncl, i64 noundef %nch) local_unnamed_addr #3 {
entry:
  %sub = sub nsw i64 %nrh, %nrl
  %sub1 = sub nsw i64 %nch, %ncl
  %add2 = add nsw i64 %sub1, 1
  %add3 = shl i64 %sub, 3
  %mul = add i64 %add3, 16
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %0) #11
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10) #11
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %3) #11
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds ptr, ptr %call, i64 1
  %idx.neg = sub i64 0, %nrl
  %add.ptr4 = getelementptr inbounds ptr, ptr %add.ptr, i64 %idx.neg
  %mul5 = add i64 %add3, 8
  %add6 = mul i64 %add2, %mul5
  %mul7 = add i64 %add6, 8
  %call8 = tail call noalias ptr @malloc(i64 noundef %mul7) #10
  %arrayidx = getelementptr inbounds ptr, ptr %add.ptr4, i64 %nrl
  store ptr %call8, ptr %arrayidx, align 8, !tbaa !5
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %5) #11
  %7 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11) #11
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %9 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %8) #11
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end12:                                         ; preds = %if.end
  %add.ptr14 = getelementptr inbounds double, ptr %call8, i64 1
  %idx.neg16 = sub i64 0, %ncl
  %add.ptr17 = getelementptr inbounds double, ptr %add.ptr14, i64 %idx.neg16
  store ptr %add.ptr17, ptr %arrayidx, align 8, !tbaa !5
  %cmp.not.not47 = icmp sgt i64 %nrh, %nrl
  br i1 %cmp.not.not47, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end12
  %10 = xor i64 %nrl, -1
  %11 = add i64 %10, %nrh
  %xtraiter = and i64 %sub, 7
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %12 = phi ptr [ %add.ptr21.prol, %for.body.prol ], [ %add.ptr17, %for.body.preheader ]
  %i.0.in48.prol = phi i64 [ %i.0.prol, %for.body.prol ], [ %nrl, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %i.0.prol = add nsw i64 %i.0.in48.prol, 1
  %add.ptr21.prol = getelementptr inbounds double, ptr %12, i64 %add2
  %arrayidx22.prol = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.prol
  store ptr %add.ptr21.prol, ptr %arrayidx22.prol, align 8, !tbaa !5
  %prol.iter.next = add nuw nsw i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !13

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %.unr = phi ptr [ %add.ptr17, %for.body.preheader ], [ %add.ptr21.prol, %for.body.prol ]
  %i.0.in48.unr = phi i64 [ %nrl, %for.body.preheader ], [ %i.0.prol, %for.body.prol ]
  %13 = icmp ult i64 %11, 7
  br i1 %13, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %14 = phi ptr [ %add.ptr21.7, %for.body ], [ %.unr, %for.body.prol.loopexit ]
  %i.0.in48 = phi i64 [ %i.0.7, %for.body ], [ %i.0.in48.unr, %for.body.prol.loopexit ]
  %i.0 = add nsw i64 %i.0.in48, 1
  %add.ptr21 = getelementptr inbounds double, ptr %14, i64 %add2
  %arrayidx22 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0
  store ptr %add.ptr21, ptr %arrayidx22, align 8, !tbaa !5
  %i.0.1 = add nsw i64 %i.0.in48, 2
  %add.ptr21.1 = getelementptr inbounds double, ptr %add.ptr21, i64 %add2
  %arrayidx22.1 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.1
  store ptr %add.ptr21.1, ptr %arrayidx22.1, align 8, !tbaa !5
  %i.0.2 = add nsw i64 %i.0.in48, 3
  %add.ptr21.2 = getelementptr inbounds double, ptr %add.ptr21.1, i64 %add2
  %arrayidx22.2 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.2
  store ptr %add.ptr21.2, ptr %arrayidx22.2, align 8, !tbaa !5
  %i.0.3 = add nsw i64 %i.0.in48, 4
  %add.ptr21.3 = getelementptr inbounds double, ptr %add.ptr21.2, i64 %add2
  %arrayidx22.3 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.3
  store ptr %add.ptr21.3, ptr %arrayidx22.3, align 8, !tbaa !5
  %i.0.4 = add nsw i64 %i.0.in48, 5
  %add.ptr21.4 = getelementptr inbounds double, ptr %add.ptr21.3, i64 %add2
  %arrayidx22.4 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.4
  store ptr %add.ptr21.4, ptr %arrayidx22.4, align 8, !tbaa !5
  %i.0.5 = add nsw i64 %i.0.in48, 6
  %add.ptr21.5 = getelementptr inbounds double, ptr %add.ptr21.4, i64 %add2
  %arrayidx22.5 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.5
  store ptr %add.ptr21.5, ptr %arrayidx22.5, align 8, !tbaa !5
  %i.0.6 = add nsw i64 %i.0.in48, 7
  %add.ptr21.6 = getelementptr inbounds double, ptr %add.ptr21.5, i64 %add2
  %arrayidx22.6 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.6
  store ptr %add.ptr21.6, ptr %arrayidx22.6, align 8, !tbaa !5
  %i.0.7 = add nsw i64 %i.0.in48, 8
  %add.ptr21.7 = getelementptr inbounds double, ptr %add.ptr21.6, i64 %add2
  %arrayidx22.7 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.7
  store ptr %add.ptr21.7, ptr %arrayidx22.7, align 8, !tbaa !5
  %exitcond.not.7 = icmp eq i64 %i.0.7, %nrh
  br i1 %exitcond.not.7, label %for.end, label %for.body, !llvm.loop !14

for.end:                                          ; preds = %for.body, %for.body.prol.loopexit, %if.end12
  ret ptr %add.ptr4
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @imatrix(i64 noundef %nrl, i64 noundef %nrh, i64 noundef %ncl, i64 noundef %nch) local_unnamed_addr #3 {
entry:
  %sub = sub nsw i64 %nrh, %nrl
  %sub1 = sub nsw i64 %nch, %ncl
  %add2 = add nsw i64 %sub1, 1
  %add3 = shl i64 %sub, 3
  %mul = add i64 %add3, 16
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %0) #11
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12) #11
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %3) #11
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds ptr, ptr %call, i64 1
  %idx.neg = sub i64 0, %nrl
  %add.ptr4 = getelementptr inbounds ptr, ptr %add.ptr, i64 %idx.neg
  %add = shl i64 %sub, 2
  %mul5 = add i64 %add, 4
  %add6 = mul i64 %add2, %mul5
  %mul7 = add i64 %add6, 4
  %call8 = tail call noalias ptr @malloc(i64 noundef %mul7) #10
  %arrayidx = getelementptr inbounds ptr, ptr %add.ptr4, i64 %nrl
  store ptr %call8, ptr %arrayidx, align 8, !tbaa !5
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %5) #11
  %7 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13) #11
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %9 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %8) #11
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end12:                                         ; preds = %if.end
  %add.ptr14 = getelementptr inbounds i32, ptr %call8, i64 1
  %idx.neg16 = sub i64 0, %ncl
  %add.ptr17 = getelementptr inbounds i32, ptr %add.ptr14, i64 %idx.neg16
  store ptr %add.ptr17, ptr %arrayidx, align 8, !tbaa !5
  %cmp.not.not47 = icmp sgt i64 %nrh, %nrl
  br i1 %cmp.not.not47, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end12
  %10 = xor i64 %nrl, -1
  %11 = add i64 %10, %nrh
  %xtraiter = and i64 %sub, 7
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %12 = phi ptr [ %add.ptr21.prol, %for.body.prol ], [ %add.ptr17, %for.body.preheader ]
  %i.0.in48.prol = phi i64 [ %i.0.prol, %for.body.prol ], [ %nrl, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %i.0.prol = add nsw i64 %i.0.in48.prol, 1
  %add.ptr21.prol = getelementptr inbounds i32, ptr %12, i64 %add2
  %arrayidx22.prol = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.prol
  store ptr %add.ptr21.prol, ptr %arrayidx22.prol, align 8, !tbaa !5
  %prol.iter.next = add nuw nsw i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !15

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %.unr = phi ptr [ %add.ptr17, %for.body.preheader ], [ %add.ptr21.prol, %for.body.prol ]
  %i.0.in48.unr = phi i64 [ %nrl, %for.body.preheader ], [ %i.0.prol, %for.body.prol ]
  %13 = icmp ult i64 %11, 7
  br i1 %13, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %14 = phi ptr [ %add.ptr21.7, %for.body ], [ %.unr, %for.body.prol.loopexit ]
  %i.0.in48 = phi i64 [ %i.0.7, %for.body ], [ %i.0.in48.unr, %for.body.prol.loopexit ]
  %i.0 = add nsw i64 %i.0.in48, 1
  %add.ptr21 = getelementptr inbounds i32, ptr %14, i64 %add2
  %arrayidx22 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0
  store ptr %add.ptr21, ptr %arrayidx22, align 8, !tbaa !5
  %i.0.1 = add nsw i64 %i.0.in48, 2
  %add.ptr21.1 = getelementptr inbounds i32, ptr %add.ptr21, i64 %add2
  %arrayidx22.1 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.1
  store ptr %add.ptr21.1, ptr %arrayidx22.1, align 8, !tbaa !5
  %i.0.2 = add nsw i64 %i.0.in48, 3
  %add.ptr21.2 = getelementptr inbounds i32, ptr %add.ptr21.1, i64 %add2
  %arrayidx22.2 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.2
  store ptr %add.ptr21.2, ptr %arrayidx22.2, align 8, !tbaa !5
  %i.0.3 = add nsw i64 %i.0.in48, 4
  %add.ptr21.3 = getelementptr inbounds i32, ptr %add.ptr21.2, i64 %add2
  %arrayidx22.3 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.3
  store ptr %add.ptr21.3, ptr %arrayidx22.3, align 8, !tbaa !5
  %i.0.4 = add nsw i64 %i.0.in48, 5
  %add.ptr21.4 = getelementptr inbounds i32, ptr %add.ptr21.3, i64 %add2
  %arrayidx22.4 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.4
  store ptr %add.ptr21.4, ptr %arrayidx22.4, align 8, !tbaa !5
  %i.0.5 = add nsw i64 %i.0.in48, 6
  %add.ptr21.5 = getelementptr inbounds i32, ptr %add.ptr21.4, i64 %add2
  %arrayidx22.5 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.5
  store ptr %add.ptr21.5, ptr %arrayidx22.5, align 8, !tbaa !5
  %i.0.6 = add nsw i64 %i.0.in48, 7
  %add.ptr21.6 = getelementptr inbounds i32, ptr %add.ptr21.5, i64 %add2
  %arrayidx22.6 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.6
  store ptr %add.ptr21.6, ptr %arrayidx22.6, align 8, !tbaa !5
  %i.0.7 = add nsw i64 %i.0.in48, 8
  %add.ptr21.7 = getelementptr inbounds i32, ptr %add.ptr21.6, i64 %add2
  %arrayidx22.7 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.7
  store ptr %add.ptr21.7, ptr %arrayidx22.7, align 8, !tbaa !5
  %exitcond.not.7 = icmp eq i64 %i.0.7, %nrh
  br i1 %exitcond.not.7, label %for.end, label %for.body, !llvm.loop !16

for.end:                                          ; preds = %for.body, %for.body.prol.loopexit, %if.end12
  ret ptr %add.ptr4
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @cmatrix(i64 noundef %nrl, i64 noundef %nrh, i64 noundef %ncl, i64 noundef %nch) local_unnamed_addr #3 {
entry:
  %sub = sub nsw i64 %nrh, %nrl
  %sub1 = sub nsw i64 %nch, %ncl
  %add2 = add nsw i64 %sub1, 1
  %add3 = shl i64 %sub, 3
  %mul = add i64 %add3, 16
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %0) #11
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14) #11
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %3) #11
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %add = add nsw i64 %sub, 1
  %add.ptr = getelementptr inbounds ptr, ptr %call, i64 1
  %idx.neg = sub i64 0, %nrl
  %add.ptr4 = getelementptr inbounds ptr, ptr %add.ptr, i64 %idx.neg
  %mul5 = mul nsw i64 %add2, %add
  %add6 = add nsw i64 %mul5, 1
  %call8 = tail call noalias ptr @malloc(i64 noundef %add6) #10
  %arrayidx = getelementptr inbounds ptr, ptr %add.ptr4, i64 %nrl
  store ptr %call8, ptr %arrayidx, align 8, !tbaa !5
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %5) #11
  %7 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.15) #11
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %9 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %8) #11
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end12:                                         ; preds = %if.end
  %add.ptr14 = getelementptr inbounds i8, ptr %call8, i64 1
  %idx.neg16 = sub i64 0, %ncl
  %add.ptr17 = getelementptr inbounds i8, ptr %add.ptr14, i64 %idx.neg16
  store ptr %add.ptr17, ptr %arrayidx, align 8, !tbaa !5
  %cmp.not.not47 = icmp sgt i64 %nrh, %nrl
  br i1 %cmp.not.not47, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end12
  %10 = xor i64 %nrl, -1
  %11 = add i64 %10, %nrh
  %xtraiter = and i64 %sub, 7
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %12 = phi ptr [ %add.ptr21.prol, %for.body.prol ], [ %add.ptr17, %for.body.preheader ]
  %i.0.in48.prol = phi i64 [ %i.0.prol, %for.body.prol ], [ %nrl, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %i.0.prol = add nsw i64 %i.0.in48.prol, 1
  %add.ptr21.prol = getelementptr inbounds i8, ptr %12, i64 %add2
  %arrayidx22.prol = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.prol
  store ptr %add.ptr21.prol, ptr %arrayidx22.prol, align 8, !tbaa !5
  %prol.iter.next = add nuw nsw i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !17

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %.unr = phi ptr [ %add.ptr17, %for.body.preheader ], [ %add.ptr21.prol, %for.body.prol ]
  %i.0.in48.unr = phi i64 [ %nrl, %for.body.preheader ], [ %i.0.prol, %for.body.prol ]
  %13 = icmp ult i64 %11, 7
  br i1 %13, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %14 = phi ptr [ %add.ptr21.7, %for.body ], [ %.unr, %for.body.prol.loopexit ]
  %i.0.in48 = phi i64 [ %i.0.7, %for.body ], [ %i.0.in48.unr, %for.body.prol.loopexit ]
  %i.0 = add nsw i64 %i.0.in48, 1
  %add.ptr21 = getelementptr inbounds i8, ptr %14, i64 %add2
  %arrayidx22 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0
  store ptr %add.ptr21, ptr %arrayidx22, align 8, !tbaa !5
  %i.0.1 = add nsw i64 %i.0.in48, 2
  %add.ptr21.1 = getelementptr inbounds i8, ptr %add.ptr21, i64 %add2
  %arrayidx22.1 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.1
  store ptr %add.ptr21.1, ptr %arrayidx22.1, align 8, !tbaa !5
  %i.0.2 = add nsw i64 %i.0.in48, 3
  %add.ptr21.2 = getelementptr inbounds i8, ptr %add.ptr21.1, i64 %add2
  %arrayidx22.2 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.2
  store ptr %add.ptr21.2, ptr %arrayidx22.2, align 8, !tbaa !5
  %i.0.3 = add nsw i64 %i.0.in48, 4
  %add.ptr21.3 = getelementptr inbounds i8, ptr %add.ptr21.2, i64 %add2
  %arrayidx22.3 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.3
  store ptr %add.ptr21.3, ptr %arrayidx22.3, align 8, !tbaa !5
  %i.0.4 = add nsw i64 %i.0.in48, 5
  %add.ptr21.4 = getelementptr inbounds i8, ptr %add.ptr21.3, i64 %add2
  %arrayidx22.4 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.4
  store ptr %add.ptr21.4, ptr %arrayidx22.4, align 8, !tbaa !5
  %i.0.5 = add nsw i64 %i.0.in48, 6
  %add.ptr21.5 = getelementptr inbounds i8, ptr %add.ptr21.4, i64 %add2
  %arrayidx22.5 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.5
  store ptr %add.ptr21.5, ptr %arrayidx22.5, align 8, !tbaa !5
  %i.0.6 = add nsw i64 %i.0.in48, 7
  %add.ptr21.6 = getelementptr inbounds i8, ptr %add.ptr21.5, i64 %add2
  %arrayidx22.6 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.6
  store ptr %add.ptr21.6, ptr %arrayidx22.6, align 8, !tbaa !5
  %i.0.7 = add nsw i64 %i.0.in48, 8
  %add.ptr21.7 = getelementptr inbounds i8, ptr %add.ptr21.6, i64 %add2
  %arrayidx22.7 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.7
  store ptr %add.ptr21.7, ptr %arrayidx22.7, align 8, !tbaa !5
  %exitcond.not.7 = icmp eq i64 %i.0.7, %nrh
  br i1 %exitcond.not.7, label %for.end, label %for.body, !llvm.loop !18

for.end:                                          ; preds = %for.body, %for.body.prol.loopexit, %if.end12
  ret ptr %add.ptr4
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @lmatrix(i64 noundef %nrl, i64 noundef %nrh, i64 noundef %ncl, i64 noundef %nch) local_unnamed_addr #3 {
entry:
  %sub = sub nsw i64 %nrh, %nrl
  %sub1 = sub nsw i64 %nch, %ncl
  %add2 = add nsw i64 %sub1, 1
  %add3 = shl i64 %sub, 3
  %mul = add i64 %add3, 16
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %0) #11
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16) #11
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %3) #11
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds ptr, ptr %call, i64 1
  %idx.neg = sub i64 0, %nrl
  %add.ptr4 = getelementptr inbounds ptr, ptr %add.ptr, i64 %idx.neg
  %mul5 = add i64 %add3, 8
  %add6 = mul i64 %add2, %mul5
  %mul7 = add i64 %add6, 8
  %call8 = tail call noalias ptr @malloc(i64 noundef %mul7) #10
  %arrayidx = getelementptr inbounds ptr, ptr %add.ptr4, i64 %nrl
  store ptr %call8, ptr %arrayidx, align 8, !tbaa !5
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %5) #11
  %7 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.17) #11
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %9 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %8) #11
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end12:                                         ; preds = %if.end
  %add.ptr14 = getelementptr inbounds i64, ptr %call8, i64 1
  %idx.neg16 = sub i64 0, %ncl
  %add.ptr17 = getelementptr inbounds i64, ptr %add.ptr14, i64 %idx.neg16
  store ptr %add.ptr17, ptr %arrayidx, align 8, !tbaa !5
  %cmp.not.not47 = icmp sgt i64 %nrh, %nrl
  br i1 %cmp.not.not47, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end12
  %10 = xor i64 %nrl, -1
  %11 = add i64 %10, %nrh
  %xtraiter = and i64 %sub, 7
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %12 = phi ptr [ %add.ptr21.prol, %for.body.prol ], [ %add.ptr17, %for.body.preheader ]
  %i.0.in48.prol = phi i64 [ %i.0.prol, %for.body.prol ], [ %nrl, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %i.0.prol = add nsw i64 %i.0.in48.prol, 1
  %add.ptr21.prol = getelementptr inbounds i64, ptr %12, i64 %add2
  %arrayidx22.prol = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.prol
  store ptr %add.ptr21.prol, ptr %arrayidx22.prol, align 8, !tbaa !5
  %prol.iter.next = add nuw nsw i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !19

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %.unr = phi ptr [ %add.ptr17, %for.body.preheader ], [ %add.ptr21.prol, %for.body.prol ]
  %i.0.in48.unr = phi i64 [ %nrl, %for.body.preheader ], [ %i.0.prol, %for.body.prol ]
  %13 = icmp ult i64 %11, 7
  br i1 %13, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %14 = phi ptr [ %add.ptr21.7, %for.body ], [ %.unr, %for.body.prol.loopexit ]
  %i.0.in48 = phi i64 [ %i.0.7, %for.body ], [ %i.0.in48.unr, %for.body.prol.loopexit ]
  %i.0 = add nsw i64 %i.0.in48, 1
  %add.ptr21 = getelementptr inbounds i64, ptr %14, i64 %add2
  %arrayidx22 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0
  store ptr %add.ptr21, ptr %arrayidx22, align 8, !tbaa !5
  %i.0.1 = add nsw i64 %i.0.in48, 2
  %add.ptr21.1 = getelementptr inbounds i64, ptr %add.ptr21, i64 %add2
  %arrayidx22.1 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.1
  store ptr %add.ptr21.1, ptr %arrayidx22.1, align 8, !tbaa !5
  %i.0.2 = add nsw i64 %i.0.in48, 3
  %add.ptr21.2 = getelementptr inbounds i64, ptr %add.ptr21.1, i64 %add2
  %arrayidx22.2 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.2
  store ptr %add.ptr21.2, ptr %arrayidx22.2, align 8, !tbaa !5
  %i.0.3 = add nsw i64 %i.0.in48, 4
  %add.ptr21.3 = getelementptr inbounds i64, ptr %add.ptr21.2, i64 %add2
  %arrayidx22.3 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.3
  store ptr %add.ptr21.3, ptr %arrayidx22.3, align 8, !tbaa !5
  %i.0.4 = add nsw i64 %i.0.in48, 5
  %add.ptr21.4 = getelementptr inbounds i64, ptr %add.ptr21.3, i64 %add2
  %arrayidx22.4 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.4
  store ptr %add.ptr21.4, ptr %arrayidx22.4, align 8, !tbaa !5
  %i.0.5 = add nsw i64 %i.0.in48, 6
  %add.ptr21.5 = getelementptr inbounds i64, ptr %add.ptr21.4, i64 %add2
  %arrayidx22.5 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.5
  store ptr %add.ptr21.5, ptr %arrayidx22.5, align 8, !tbaa !5
  %i.0.6 = add nsw i64 %i.0.in48, 7
  %add.ptr21.6 = getelementptr inbounds i64, ptr %add.ptr21.5, i64 %add2
  %arrayidx22.6 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.6
  store ptr %add.ptr21.6, ptr %arrayidx22.6, align 8, !tbaa !5
  %i.0.7 = add nsw i64 %i.0.in48, 8
  %add.ptr21.7 = getelementptr inbounds i64, ptr %add.ptr21.6, i64 %add2
  %arrayidx22.7 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %i.0.7
  store ptr %add.ptr21.7, ptr %arrayidx22.7, align 8, !tbaa !5
  %exitcond.not.7 = icmp eq i64 %i.0.7, %nrh
  br i1 %exitcond.not.7, label %for.end, label %for.body, !llvm.loop !20

for.end:                                          ; preds = %for.body, %for.body.prol.loopexit, %if.end12
  ret ptr %add.ptr4
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @submatrix(ptr nocapture noundef readonly %a, i64 noundef %oldrl, i64 noundef %oldrh, i64 noundef %oldcl, i64 noundef %oldch, i64 noundef %newrl, i64 noundef %newcl) local_unnamed_addr #3 {
entry:
  %sub = sub nsw i64 %oldrh, %oldrl
  %sub1 = sub nsw i64 %oldcl, %newcl
  %add2 = shl i64 %sub, 3
  %mul = add i64 %add2, 16
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %0) #11
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.18) #11
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %3) #11
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds ptr, ptr %call, i64 1
  %idx.neg = sub i64 0, %newrl
  %add.ptr3 = getelementptr inbounds ptr, ptr %add.ptr, i64 %idx.neg
  %cmp.not17 = icmp slt i64 %oldrh, %oldrl
  br i1 %cmp.not17, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %5 = sub i64 1, %oldrl
  %6 = add i64 %5, %oldrh
  %min.iters.check = icmp ult i64 %6, 4
  br i1 %min.iters.check, label %for.body.preheader1, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %6, -4
  %ind.end = add i64 %n.vec, %oldrl
  %ind.end21 = add i64 %n.vec, %newrl
  %7 = add i64 %n.vec, -4
  %8 = lshr exact i64 %7, 2
  %9 = add nuw nsw i64 %8, 1
  %xtraiter = and i64 %9, 1
  %10 = icmp eq i64 %7, 0
  br i1 %10, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %9, 9223372036854775806
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %offset.idx = add i64 %index, %newrl
  %offset.idx22 = add i64 %index, %oldrl
  %11 = getelementptr inbounds ptr, ptr %a, i64 %offset.idx22
  %wide.load = load <2 x ptr>, ptr %11, align 8, !tbaa !5
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %wide.load23 = load <2 x ptr>, ptr %12, align 8, !tbaa !5
  %13 = getelementptr inbounds float, <2 x ptr> %wide.load, i64 %sub1
  %14 = getelementptr inbounds float, <2 x ptr> %wide.load23, i64 %sub1
  %15 = getelementptr inbounds ptr, ptr %add.ptr3, i64 %offset.idx
  store <2 x ptr> %13, ptr %15, align 8, !tbaa !5
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  store <2 x ptr> %14, ptr %16, align 8, !tbaa !5
  %index.next = or i64 %index, 4
  %offset.idx.1 = add i64 %index.next, %newrl
  %offset.idx22.1 = add i64 %index.next, %oldrl
  %17 = getelementptr inbounds ptr, ptr %a, i64 %offset.idx22.1
  %wide.load.1 = load <2 x ptr>, ptr %17, align 8, !tbaa !5
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %wide.load23.1 = load <2 x ptr>, ptr %18, align 8, !tbaa !5
  %19 = getelementptr inbounds float, <2 x ptr> %wide.load.1, i64 %sub1
  %20 = getelementptr inbounds float, <2 x ptr> %wide.load23.1, i64 %sub1
  %21 = getelementptr inbounds ptr, ptr %add.ptr3, i64 %offset.idx.1
  store <2 x ptr> %19, ptr %21, align 8, !tbaa !5
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  store <2 x ptr> %20, ptr %22, align 8, !tbaa !5
  %index.next.1 = add nuw i64 %index, 8
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !21

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %offset.idx.epil = add i64 %index.unr, %newrl
  %offset.idx22.epil = add i64 %index.unr, %oldrl
  %23 = getelementptr inbounds ptr, ptr %a, i64 %offset.idx22.epil
  %wide.load.epil = load <2 x ptr>, ptr %23, align 8, !tbaa !5
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %wide.load23.epil = load <2 x ptr>, ptr %24, align 8, !tbaa !5
  %25 = getelementptr inbounds float, <2 x ptr> %wide.load.epil, i64 %sub1
  %26 = getelementptr inbounds float, <2 x ptr> %wide.load23.epil, i64 %sub1
  %27 = getelementptr inbounds ptr, ptr %add.ptr3, i64 %offset.idx.epil
  store <2 x ptr> %25, ptr %27, align 8, !tbaa !5
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  store <2 x ptr> %26, ptr %28, align 8, !tbaa !5
  br label %middle.block

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body.preheader1

for.body.preheader1:                              ; preds = %middle.block, %for.body.preheader
  %i.019.ph = phi i64 [ %ind.end, %middle.block ], [ %oldrl, %for.body.preheader ]
  %j.018.ph = phi i64 [ %ind.end21, %middle.block ], [ %newrl, %for.body.preheader ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader1, %for.body
  %i.019 = phi i64 [ %inc, %for.body ], [ %i.019.ph, %for.body.preheader1 ]
  %j.018 = phi i64 [ %inc6, %for.body ], [ %j.018.ph, %for.body.preheader1 ]
  %arrayidx = getelementptr inbounds ptr, ptr %a, i64 %i.019
  %29 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %add.ptr4 = getelementptr inbounds float, ptr %29, i64 %sub1
  %arrayidx5 = getelementptr inbounds ptr, ptr %add.ptr3, i64 %j.018
  store ptr %add.ptr4, ptr %arrayidx5, align 8, !tbaa !5
  %inc = add i64 %i.019, 1
  %inc6 = add nsw i64 %j.018, 1
  %exitcond.not = icmp eq i64 %i.019, %oldrh
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !23

for.end:                                          ; preds = %for.body, %middle.block, %if.end
  ret ptr %add.ptr3
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @convert_matrix(ptr noundef %a, i64 noundef %nrl, i64 noundef %nrh, i64 noundef %ncl, i64 noundef %nch) local_unnamed_addr #3 {
entry:
  %sub = sub nsw i64 %nrh, %nrl
  %sub1 = sub i64 1, %ncl
  %add2 = add i64 %sub1, %nch
  %add3 = shl i64 %sub, 3
  %mul = add i64 %add3, 16
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %0) #11
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.19) #11
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %3) #11
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %idx.neg5 = sub i64 0, %ncl
  %add.ptr = getelementptr inbounds ptr, ptr %call, i64 1
  %idx.neg = sub i64 0, %nrl
  %add.ptr4 = getelementptr inbounds ptr, ptr %add.ptr, i64 %idx.neg
  %add.ptr6 = getelementptr inbounds float, ptr %a, i64 %idx.neg5
  %arrayidx = getelementptr inbounds ptr, ptr %add.ptr4, i64 %nrl
  store ptr %add.ptr6, ptr %arrayidx, align 8, !tbaa !5
  %cmp.not27 = icmp slt i64 %sub, 1
  br i1 %cmp.not27, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %5 = xor i64 %nrl, -1
  %6 = add i64 %5, %nrh
  %xtraiter = and i64 %sub, 3
  %7 = icmp ult i64 %6, 3
  br i1 %7, label %for.end.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %8 = add i64 %sub, -4
  %9 = lshr i64 %8, 2
  %10 = add nuw nsw i64 %9, 1
  %xtraiter2 = and i64 %10, 1
  %11 = icmp ult i64 %8, 4
  br i1 %11, label %for.end.loopexit.unr-lcssa.loopexit.unr-lcssa, label %for.body.preheader.new.new

for.body.preheader.new.new:                       ; preds = %for.body.preheader.new
  %unroll_iter13 = and i64 %10, 9223372036854775806
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new.new
  %12 = phi ptr [ %add.ptr6, %for.body.preheader.new.new ], [ %add.ptr10.3.1, %for.body ]
  %j.0.in28 = phi i64 [ %nrl, %for.body.preheader.new.new ], [ %j.0.3.1, %for.body ]
  %niter14 = phi i64 [ 0, %for.body.preheader.new.new ], [ %niter14.next.1, %for.body ]
  %j.0 = add nsw i64 %j.0.in28, 1
  %add.ptr10 = getelementptr inbounds float, ptr %12, i64 %add2
  %arrayidx11 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %j.0
  store ptr %add.ptr10, ptr %arrayidx11, align 8, !tbaa !5
  %j.0.1 = add nsw i64 %j.0.in28, 2
  %add.ptr10.1 = getelementptr inbounds float, ptr %add.ptr10, i64 %add2
  %arrayidx11.1 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %j.0.1
  store ptr %add.ptr10.1, ptr %arrayidx11.1, align 8, !tbaa !5
  %j.0.2 = add nsw i64 %j.0.in28, 3
  %add.ptr10.2 = getelementptr inbounds float, ptr %add.ptr10.1, i64 %add2
  %arrayidx11.2 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %j.0.2
  store ptr %add.ptr10.2, ptr %arrayidx11.2, align 8, !tbaa !5
  %j.0.3 = add nsw i64 %j.0.in28, 4
  %add.ptr10.3 = getelementptr inbounds float, ptr %add.ptr10.2, i64 %add2
  %arrayidx11.3 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %j.0.3
  store ptr %add.ptr10.3, ptr %arrayidx11.3, align 8, !tbaa !5
  %j.0.115 = add nsw i64 %j.0.in28, 5
  %add.ptr10.116 = getelementptr inbounds float, ptr %add.ptr10.3, i64 %add2
  %arrayidx11.117 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %j.0.115
  store ptr %add.ptr10.116, ptr %arrayidx11.117, align 8, !tbaa !5
  %j.0.1.1 = add nsw i64 %j.0.in28, 6
  %add.ptr10.1.1 = getelementptr inbounds float, ptr %add.ptr10.116, i64 %add2
  %arrayidx11.1.1 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %j.0.1.1
  store ptr %add.ptr10.1.1, ptr %arrayidx11.1.1, align 8, !tbaa !5
  %j.0.2.1 = add nsw i64 %j.0.in28, 7
  %add.ptr10.2.1 = getelementptr inbounds float, ptr %add.ptr10.1.1, i64 %add2
  %arrayidx11.2.1 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %j.0.2.1
  store ptr %add.ptr10.2.1, ptr %arrayidx11.2.1, align 8, !tbaa !5
  %j.0.3.1 = add nsw i64 %j.0.in28, 8
  %add.ptr10.3.1 = getelementptr inbounds float, ptr %add.ptr10.2.1, i64 %add2
  %arrayidx11.3.1 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %j.0.3.1
  store ptr %add.ptr10.3.1, ptr %arrayidx11.3.1, align 8, !tbaa !5
  %niter14.next.1 = add i64 %niter14, 2
  %niter14.ncmp.1 = icmp eq i64 %niter14.next.1, %unroll_iter13
  br i1 %niter14.ncmp.1, label %for.end.loopexit.unr-lcssa.loopexit.unr-lcssa, label %for.body, !llvm.loop !25

for.end.loopexit.unr-lcssa.loopexit.unr-lcssa:    ; preds = %for.body, %for.body.preheader.new
  %j.0.3.lcssa.ph = phi i64 [ undef, %for.body.preheader.new ], [ %j.0.3.1, %for.body ]
  %add.ptr10.3.lcssa.ph = phi ptr [ undef, %for.body.preheader.new ], [ %add.ptr10.3.1, %for.body ]
  %.unr9 = phi ptr [ %add.ptr6, %for.body.preheader.new ], [ %add.ptr10.3.1, %for.body ]
  %j.0.in28.unr10 = phi i64 [ %nrl, %for.body.preheader.new ], [ %j.0.3.1, %for.body ]
  %lcmp.mod.not18 = icmp eq i64 %xtraiter2, 0
  br i1 %lcmp.mod.not18, label %for.end.loopexit.unr-lcssa, label %for.body.epil3

for.body.epil3:                                   ; preds = %for.end.loopexit.unr-lcssa.loopexit.unr-lcssa
  %j.0.epil5 = add nsw i64 %j.0.in28.unr10, 1
  %add.ptr10.epil6 = getelementptr inbounds float, ptr %.unr9, i64 %add2
  %arrayidx11.epil7 = getelementptr inbounds ptr, ptr %add.ptr4, i64 %j.0.epil5
  store ptr %add.ptr10.epil6, ptr %arrayidx11.epil7, align 8, !tbaa !5
  %j.0.1.epil = add nsw i64 %j.0.in28.unr10, 2
  %add.ptr10.1.epil = getelementptr inbounds float, ptr %add.ptr10.epil6, i64 %add2
  %arrayidx11.1.epil = getelementptr inbounds ptr, ptr %add.ptr4, i64 %j.0.1.epil
  store ptr %add.ptr10.1.epil, ptr %arrayidx11.1.epil, align 8, !tbaa !5
  %j.0.2.epil = add nsw i64 %j.0.in28.unr10, 3
  %add.ptr10.2.epil = getelementptr inbounds float, ptr %add.ptr10.1.epil, i64 %add2
  %arrayidx11.2.epil = getelementptr inbounds ptr, ptr %add.ptr4, i64 %j.0.2.epil
  store ptr %add.ptr10.2.epil, ptr %arrayidx11.2.epil, align 8, !tbaa !5
  %j.0.3.epil = add nsw i64 %j.0.in28.unr10, 4
  %add.ptr10.3.epil = getelementptr inbounds float, ptr %add.ptr10.2.epil, i64 %add2
  %arrayidx11.3.epil = getelementptr inbounds ptr, ptr %add.ptr4, i64 %j.0.3.epil
  store ptr %add.ptr10.3.epil, ptr %arrayidx11.3.epil, align 8, !tbaa !5
  br label %for.end.loopexit.unr-lcssa

for.end.loopexit.unr-lcssa:                       ; preds = %for.body.epil3, %for.end.loopexit.unr-lcssa.loopexit.unr-lcssa, %for.body.preheader
  %.unr = phi ptr [ %add.ptr6, %for.body.preheader ], [ %add.ptr10.3.lcssa.ph, %for.end.loopexit.unr-lcssa.loopexit.unr-lcssa ], [ %add.ptr10.3.epil, %for.body.epil3 ]
  %j.0.in28.unr = phi i64 [ %nrl, %for.body.preheader ], [ %j.0.3.lcssa.ph, %for.end.loopexit.unr-lcssa.loopexit.unr-lcssa ], [ %j.0.3.epil, %for.body.epil3 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %13 = phi ptr [ %add.ptr10.epil, %for.body.epil ], [ %.unr, %for.end.loopexit.unr-lcssa ]
  %j.0.in28.epil = phi i64 [ %j.0.epil, %for.body.epil ], [ %j.0.in28.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %j.0.epil = add nsw i64 %j.0.in28.epil, 1
  %add.ptr10.epil = getelementptr inbounds float, ptr %13, i64 %add2
  %arrayidx11.epil = getelementptr inbounds ptr, ptr %add.ptr4, i64 %j.0.epil
  store ptr %add.ptr10.epil, ptr %arrayidx11.epil, align 8, !tbaa !5
  %epil.iter.next = add nuw nsw i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !26

for.end:                                          ; preds = %for.body.epil, %for.end.loopexit.unr-lcssa, %if.end
  ret ptr %add.ptr4
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @f3tensor(i64 noundef %nrl, i64 noundef %nrh, i64 noundef %ncl, i64 noundef %nch, i64 noundef %ndl, i64 noundef %ndh) local_unnamed_addr #3 {
entry:
  %sub = sub i64 %nrh, %nrl
  %sub1 = sub i64 %nch, %ncl
  %add2 = add nsw i64 %sub1, 1
  %sub3 = sub nsw i64 %ndh, %ndl
  %add4 = add nsw i64 %sub3, 1
  %add5 = shl i64 %sub, 3
  %mul = add i64 %add5, 16
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %0) #11
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20) #11
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %3) #11
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %add = add nsw i64 %sub, 1
  %add.ptr = getelementptr inbounds ptr, ptr %call, i64 1
  %idx.neg = sub i64 0, %nrl
  %add.ptr6 = getelementptr inbounds ptr, ptr %add.ptr, i64 %idx.neg
  %mul7 = mul nsw i64 %add2, %add
  %add8 = shl i64 %mul7, 3
  %mul9 = add i64 %add8, 8
  %call10 = tail call noalias ptr @malloc(i64 noundef %mul9) #10
  %arrayidx = getelementptr inbounds ptr, ptr %add.ptr6, i64 %nrl
  store ptr %call10, ptr %arrayidx, align 8, !tbaa !5
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %5) #11
  %7 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i143 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21) #11
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %9 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %8) #11
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end14:                                         ; preds = %if.end
  %add.ptr16 = getelementptr inbounds ptr, ptr %call10, i64 1
  %idx.neg18 = sub i64 0, %ncl
  %add.ptr19 = getelementptr inbounds ptr, ptr %add.ptr16, i64 %idx.neg18
  store ptr %add.ptr19, ptr %arrayidx, align 8, !tbaa !5
  %mul21 = shl i64 %mul7, 2
  %add22 = mul i64 %mul21, %add4
  %mul23 = add i64 %add22, 4
  %call24 = tail call noalias ptr @malloc(i64 noundef %mul23) #10
  %arrayidx26 = getelementptr inbounds ptr, ptr %add.ptr19, i64 %ncl
  store ptr %call24, ptr %arrayidx26, align 8, !tbaa !5
  %tobool29.not = icmp eq ptr %call24, null
  br i1 %tobool29.not, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end14
  %10 = load ptr, ptr @stderr, align 8, !tbaa !5
  %11 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %10) #11
  %12 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i145 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.22) #11
  %13 = load ptr, ptr @stderr, align 8, !tbaa !5
  %14 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %13) #11
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end31:                                         ; preds = %if.end14
  %add.ptr34 = getelementptr inbounds float, ptr %call24, i64 1
  %idx.neg37 = sub i64 0, %ndl
  %add.ptr38 = getelementptr inbounds float, ptr %add.ptr34, i64 %idx.neg37
  store ptr %add.ptr38, ptr %arrayidx26, align 8, !tbaa !5
  %add39 = add nsw i64 %ncl, 1
  %cmp.not147.not = icmp sgt i64 %nch, %ncl
  br i1 %cmp.not147.not, label %for.body.preheader, label %for.cond47.preheader.thread

for.body.preheader:                               ; preds = %if.end31
  %15 = xor i64 %ncl, -1
  %16 = add i64 %15, %nch
  %xtraiter = and i64 %sub1, 7
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %17 = phi ptr [ %add.ptr43.prol, %for.body.prol ], [ %add.ptr38, %for.body.preheader ]
  %j.0148.prol = phi i64 [ %inc.prol, %for.body.prol ], [ %add39, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %add.ptr43.prol = getelementptr inbounds float, ptr %17, i64 %add4
  %arrayidx45.prol = getelementptr inbounds ptr, ptr %add.ptr19, i64 %j.0148.prol
  store ptr %add.ptr43.prol, ptr %arrayidx45.prol, align 8, !tbaa !5
  %inc.prol = add i64 %j.0148.prol, 1
  %prol.iter.next = add nuw nsw i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !27

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %.unr = phi ptr [ %add.ptr38, %for.body.preheader ], [ %add.ptr43.prol, %for.body.prol ]
  %j.0148.unr = phi i64 [ %add39, %for.body.preheader ], [ %inc.prol, %for.body.prol ]
  %18 = icmp ult i64 %16, 7
  br i1 %18, label %for.cond47.preheader.thread13, label %for.body

for.cond47.preheader:                             ; preds = %for.body
  %cmp48.not.not152 = icmp sgt i64 %nrh, %nrl
  br i1 %cmp48.not.not152, label %for.body49.lr.ph, label %for.end76

for.cond47.preheader.thread13:                    ; preds = %for.body.prol.loopexit
  %cmp48.not.not15214 = icmp sgt i64 %nrh, %nrl
  br i1 %cmp48.not.not15214, label %for.body49.lr.ph.thread15, label %for.end76

for.body49.lr.ph.thread15:                        ; preds = %for.cond47.preheader.thread13
  %mul5716 = mul nsw i64 %add4, %add2
  br label %for.body49.lr.ph.split.us

for.cond47.preheader.thread:                      ; preds = %if.end31
  %cmp48.not.not152159 = icmp sgt i64 %nrh, %nrl
  br i1 %cmp48.not.not152159, label %for.body49.lr.ph.thread, label %for.end76

for.body49.lr.ph.thread:                          ; preds = %for.cond47.preheader.thread
  %mul57161 = mul nsw i64 %add4, %add2
  %i.0151160 = add nsw i64 %nrl, 1
  %19 = sub i64 %nrh, %i.0151160
  %xtraiter167 = and i64 %sub, 3
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod168.not, label %for.body49.us.prol.loopexit, label %for.body49.us.prol

for.body49.lr.ph:                                 ; preds = %for.cond47.preheader
  %mul57 = mul nsw i64 %add4, %add2
  br i1 %18, label %for.body49.lr.ph.split.us, label %for.body49

for.body49.lr.ph.split.us:                        ; preds = %for.body49.lr.ph.thread15, %for.body49.lr.ph
  %mul5717 = phi i64 [ %mul5716, %for.body49.lr.ph.thread15 ], [ %mul57, %for.body49.lr.ph ]
  br i1 %lcmp.mod.not, label %for.body49.us3.us.preheader, label %for.body49.us3.preheader

for.body49.us3.preheader:                         ; preds = %for.body49.lr.ph.split.us
  %20 = sub i64 %nrh, %nrl
  %21 = xor i64 %nrl, -1
  %xtraiter29 = and i64 %20, 1
  %lcmp.mod.not37 = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod.not37, label %for.body49.us3.prol.loopexit, label %for.body49.us3.prol

for.body49.us3.prol:                              ; preds = %for.body49.us3.preheader
  %i.0154.us4.prol = add i64 %nrl, 1
  %add.ptr52.us5.prol = getelementptr inbounds ptr, ptr %add.ptr19, i64 %add2
  %arrayidx53.us6.prol = getelementptr inbounds ptr, ptr %add.ptr6, i64 %i.0154.us4.prol
  store ptr %add.ptr52.us5.prol, ptr %arrayidx53.us6.prol, align 8, !tbaa !5
  %arrayidx56.us.prol = getelementptr inbounds ptr, ptr %add.ptr19, i64 %ncl
  %22 = load ptr, ptr %arrayidx56.us.prol, align 8, !tbaa !5
  %add.ptr58.us7.prol = getelementptr inbounds float, ptr %22, i64 %mul5717
  %arrayidx60.us8.prol = getelementptr inbounds ptr, ptr %add.ptr52.us5.prol, i64 %ncl
  store ptr %add.ptr58.us7.prol, ptr %arrayidx60.us8.prol, align 8, !tbaa !5
  br label %for.body64.prol.us.prol

for.body64.prol.us.prol:                          ; preds = %for.body64.prol.us.prol, %for.body49.us3.prol
  %23 = phi ptr [ %add.ptr68.prol.us.prol, %for.body64.prol.us.prol ], [ %add.ptr58.us7.prol, %for.body49.us3.prol ]
  %j.1150.prol.us.prol = phi i64 [ %inc72.prol.us.prol, %for.body64.prol.us.prol ], [ %add39, %for.body49.us3.prol ]
  %prol.iter174.us.prol = phi i64 [ %prol.iter174.next.us.prol, %for.body64.prol.us.prol ], [ 0, %for.body49.us3.prol ]
  %add.ptr68.prol.us.prol = getelementptr inbounds float, ptr %23, i64 %add4
  %arrayidx70.prol.us.prol = getelementptr inbounds ptr, ptr %add.ptr52.us5.prol, i64 %j.1150.prol.us.prol
  store ptr %add.ptr68.prol.us.prol, ptr %arrayidx70.prol.us.prol, align 8, !tbaa !5
  %inc72.prol.us.prol = add i64 %j.1150.prol.us.prol, 1
  %prol.iter174.next.us.prol = add nuw nsw i64 %prol.iter174.us.prol, 1
  %prol.iter174.cmp.not.us.prol = icmp eq i64 %prol.iter174.next.us.prol, %xtraiter
  br i1 %prol.iter174.cmp.not.us.prol, label %for.body49.us3.prol.loopexit, label %for.body64.prol.us.prol, !llvm.loop !28

for.body49.us3.prol.loopexit:                     ; preds = %for.body64.prol.us.prol, %for.body49.us3.preheader
  %.unr31 = phi ptr [ %add.ptr19, %for.body49.us3.preheader ], [ %add.ptr52.us5.prol, %for.body64.prol.us.prol ]
  %i.0154.in.us.unr = phi i64 [ %nrl, %for.body49.us3.preheader ], [ %i.0154.us4.prol, %for.body64.prol.us.prol ]
  %24 = sub i64 0, %nrh
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %for.end76, label %for.body49.us3

for.body49.us3.us.preheader:                      ; preds = %for.body49.lr.ph.split.us
  %.pre = load ptr, ptr %arrayidx26, align 8, !tbaa !5
  %26 = sub i64 %nrh, %nrl
  %27 = xor i64 %nrl, -1
  %28 = add i64 %27, %nrh
  %xtraiter32 = and i64 %26, 3
  %lcmp.mod33.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod33.not, label %for.body49.us3.us.prol.loopexit, label %for.body49.us3.us.prol

for.body49.us3.us.prol:                           ; preds = %for.body49.us3.us.preheader, %for.body49.us3.us.prol
  %29 = phi ptr [ %add.ptr58.us7.us.prol, %for.body49.us3.us.prol ], [ %.pre, %for.body49.us3.us.preheader ]
  %30 = phi ptr [ %add.ptr52.us5.us.prol, %for.body49.us3.us.prol ], [ %add.ptr19, %for.body49.us3.us.preheader ]
  %i.0154.in.us.us.prol = phi i64 [ %i.0154.us4.us.prol, %for.body49.us3.us.prol ], [ %nrl, %for.body49.us3.us.preheader ]
  %prol.iter34 = phi i64 [ %prol.iter34.next, %for.body49.us3.us.prol ], [ 0, %for.body49.us3.us.preheader ]
  %i.0154.us4.us.prol = add i64 %i.0154.in.us.us.prol, 1
  %add.ptr52.us5.us.prol = getelementptr inbounds ptr, ptr %30, i64 %add2
  %arrayidx53.us6.us.prol = getelementptr inbounds ptr, ptr %add.ptr6, i64 %i.0154.us4.us.prol
  store ptr %add.ptr52.us5.us.prol, ptr %arrayidx53.us6.us.prol, align 8, !tbaa !5
  %add.ptr58.us7.us.prol = getelementptr inbounds float, ptr %29, i64 %mul5717
  %arrayidx60.us8.us.prol = getelementptr inbounds ptr, ptr %add.ptr52.us5.us.prol, i64 %ncl
  store ptr %add.ptr58.us7.us.prol, ptr %arrayidx60.us8.us.prol, align 8, !tbaa !5
  %prol.iter34.next = add i64 %prol.iter34, 1
  %prol.iter34.cmp.not = icmp eq i64 %prol.iter34.next, %xtraiter32
  br i1 %prol.iter34.cmp.not, label %for.body49.us3.us.prol.loopexit, label %for.body49.us3.us.prol, !llvm.loop !29

for.body49.us3.us.prol.loopexit:                  ; preds = %for.body49.us3.us.prol, %for.body49.us3.us.preheader
  %.unr35 = phi ptr [ %.pre, %for.body49.us3.us.preheader ], [ %add.ptr58.us7.us.prol, %for.body49.us3.us.prol ]
  %.unr36 = phi ptr [ %add.ptr19, %for.body49.us3.us.preheader ], [ %add.ptr52.us5.us.prol, %for.body49.us3.us.prol ]
  %i.0154.in.us.us.unr = phi i64 [ %nrl, %for.body49.us3.us.preheader ], [ %i.0154.us4.us.prol, %for.body49.us3.us.prol ]
  %31 = icmp ult i64 %28, 3
  br i1 %31, label %for.end76, label %for.body49.us3.us

for.body49.us3.us:                                ; preds = %for.body49.us3.us.prol.loopexit, %for.body49.us3.us
  %32 = phi ptr [ %add.ptr58.us7.us.3, %for.body49.us3.us ], [ %.unr35, %for.body49.us3.us.prol.loopexit ]
  %33 = phi ptr [ %add.ptr52.us5.us.3, %for.body49.us3.us ], [ %.unr36, %for.body49.us3.us.prol.loopexit ]
  %i.0154.in.us.us = phi i64 [ %i.0154.us4.us.3, %for.body49.us3.us ], [ %i.0154.in.us.us.unr, %for.body49.us3.us.prol.loopexit ]
  %i.0154.us4.us = add i64 %i.0154.in.us.us, 1
  %add.ptr52.us5.us = getelementptr inbounds ptr, ptr %33, i64 %add2
  %arrayidx53.us6.us = getelementptr inbounds ptr, ptr %add.ptr6, i64 %i.0154.us4.us
  store ptr %add.ptr52.us5.us, ptr %arrayidx53.us6.us, align 8, !tbaa !5
  %add.ptr58.us7.us = getelementptr inbounds float, ptr %32, i64 %mul5717
  %arrayidx60.us8.us = getelementptr inbounds ptr, ptr %add.ptr52.us5.us, i64 %ncl
  store ptr %add.ptr58.us7.us, ptr %arrayidx60.us8.us, align 8, !tbaa !5
  %i.0154.us4.us.1 = add i64 %i.0154.in.us.us, 2
  %add.ptr52.us5.us.1 = getelementptr inbounds ptr, ptr %add.ptr52.us5.us, i64 %add2
  %arrayidx53.us6.us.1 = getelementptr inbounds ptr, ptr %add.ptr6, i64 %i.0154.us4.us.1
  store ptr %add.ptr52.us5.us.1, ptr %arrayidx53.us6.us.1, align 8, !tbaa !5
  %add.ptr58.us7.us.1 = getelementptr inbounds float, ptr %add.ptr58.us7.us, i64 %mul5717
  %arrayidx60.us8.us.1 = getelementptr inbounds ptr, ptr %add.ptr52.us5.us.1, i64 %ncl
  store ptr %add.ptr58.us7.us.1, ptr %arrayidx60.us8.us.1, align 8, !tbaa !5
  %i.0154.us4.us.2 = add i64 %i.0154.in.us.us, 3
  %add.ptr52.us5.us.2 = getelementptr inbounds ptr, ptr %add.ptr52.us5.us.1, i64 %add2
  %arrayidx53.us6.us.2 = getelementptr inbounds ptr, ptr %add.ptr6, i64 %i.0154.us4.us.2
  store ptr %add.ptr52.us5.us.2, ptr %arrayidx53.us6.us.2, align 8, !tbaa !5
  %add.ptr58.us7.us.2 = getelementptr inbounds float, ptr %add.ptr58.us7.us.1, i64 %mul5717
  %arrayidx60.us8.us.2 = getelementptr inbounds ptr, ptr %add.ptr52.us5.us.2, i64 %ncl
  store ptr %add.ptr58.us7.us.2, ptr %arrayidx60.us8.us.2, align 8, !tbaa !5
  %i.0154.us4.us.3 = add i64 %i.0154.in.us.us, 4
  %add.ptr52.us5.us.3 = getelementptr inbounds ptr, ptr %add.ptr52.us5.us.2, i64 %add2
  %arrayidx53.us6.us.3 = getelementptr inbounds ptr, ptr %add.ptr6, i64 %i.0154.us4.us.3
  store ptr %add.ptr52.us5.us.3, ptr %arrayidx53.us6.us.3, align 8, !tbaa !5
  %add.ptr58.us7.us.3 = getelementptr inbounds float, ptr %add.ptr58.us7.us.2, i64 %mul5717
  %arrayidx60.us8.us.3 = getelementptr inbounds ptr, ptr %add.ptr52.us5.us.3, i64 %ncl
  store ptr %add.ptr58.us7.us.3, ptr %arrayidx60.us8.us.3, align 8, !tbaa !5
  %exitcond158.not.us.us.3 = icmp eq i64 %i.0154.us4.us.3, %nrh
  br i1 %exitcond158.not.us.us.3, label %for.end76, label %for.body49.us3.us, !llvm.loop !30

for.body49.us3:                                   ; preds = %for.body49.us3.prol.loopexit, %for.body64.prol.loopexit.loopexit.us.1
  %34 = phi ptr [ %add.ptr52.us5.1, %for.body64.prol.loopexit.loopexit.us.1 ], [ %.unr31, %for.body49.us3.prol.loopexit ]
  %i.0154.in.us = phi i64 [ %i.0154.us4.1, %for.body64.prol.loopexit.loopexit.us.1 ], [ %i.0154.in.us.unr, %for.body49.us3.prol.loopexit ]
  %i.0154.us4 = add i64 %i.0154.in.us, 1
  %add.ptr52.us5 = getelementptr inbounds ptr, ptr %34, i64 %add2
  %arrayidx53.us6 = getelementptr inbounds ptr, ptr %add.ptr6, i64 %i.0154.us4
  store ptr %add.ptr52.us5, ptr %arrayidx53.us6, align 8, !tbaa !5
  %arrayidx56.us = getelementptr inbounds ptr, ptr %34, i64 %ncl
  %35 = load ptr, ptr %arrayidx56.us, align 8, !tbaa !5
  %add.ptr58.us7 = getelementptr inbounds float, ptr %35, i64 %mul5717
  %arrayidx60.us8 = getelementptr inbounds ptr, ptr %add.ptr52.us5, i64 %ncl
  store ptr %add.ptr58.us7, ptr %arrayidx60.us8, align 8, !tbaa !5
  br label %for.body64.prol.us

for.body64.prol.us:                               ; preds = %for.body49.us3, %for.body64.prol.us
  %36 = phi ptr [ %add.ptr68.prol.us, %for.body64.prol.us ], [ %add.ptr58.us7, %for.body49.us3 ]
  %j.1150.prol.us = phi i64 [ %inc72.prol.us, %for.body64.prol.us ], [ %add39, %for.body49.us3 ]
  %prol.iter174.us = phi i64 [ %prol.iter174.next.us, %for.body64.prol.us ], [ 0, %for.body49.us3 ]
  %add.ptr68.prol.us = getelementptr inbounds float, ptr %36, i64 %add4
  %arrayidx70.prol.us = getelementptr inbounds ptr, ptr %add.ptr52.us5, i64 %j.1150.prol.us
  store ptr %add.ptr68.prol.us, ptr %arrayidx70.prol.us, align 8, !tbaa !5
  %inc72.prol.us = add i64 %j.1150.prol.us, 1
  %prol.iter174.next.us = add nuw nsw i64 %prol.iter174.us, 1
  %prol.iter174.cmp.not.us = icmp eq i64 %prol.iter174.next.us, %xtraiter
  br i1 %prol.iter174.cmp.not.us, label %for.body64.prol.loopexit.loopexit.us, label %for.body64.prol.us, !llvm.loop !28

for.body64.prol.loopexit.loopexit.us:             ; preds = %for.body64.prol.us
  %i.0154.us4.1 = add i64 %i.0154.in.us, 2
  %add.ptr52.us5.1 = getelementptr inbounds ptr, ptr %add.ptr52.us5, i64 %add2
  %arrayidx53.us6.1 = getelementptr inbounds ptr, ptr %add.ptr6, i64 %i.0154.us4.1
  store ptr %add.ptr52.us5.1, ptr %arrayidx53.us6.1, align 8, !tbaa !5
  %arrayidx56.us.1 = getelementptr inbounds ptr, ptr %add.ptr52.us5, i64 %ncl
  %37 = load ptr, ptr %arrayidx56.us.1, align 8, !tbaa !5
  %add.ptr58.us7.1 = getelementptr inbounds float, ptr %37, i64 %mul5717
  %arrayidx60.us8.1 = getelementptr inbounds ptr, ptr %add.ptr52.us5.1, i64 %ncl
  store ptr %add.ptr58.us7.1, ptr %arrayidx60.us8.1, align 8, !tbaa !5
  br label %for.body64.prol.us.1

for.body64.prol.us.1:                             ; preds = %for.body64.prol.us.1, %for.body64.prol.loopexit.loopexit.us
  %38 = phi ptr [ %add.ptr68.prol.us.1, %for.body64.prol.us.1 ], [ %add.ptr58.us7.1, %for.body64.prol.loopexit.loopexit.us ]
  %j.1150.prol.us.1 = phi i64 [ %inc72.prol.us.1, %for.body64.prol.us.1 ], [ %add39, %for.body64.prol.loopexit.loopexit.us ]
  %prol.iter174.us.1 = phi i64 [ %prol.iter174.next.us.1, %for.body64.prol.us.1 ], [ 0, %for.body64.prol.loopexit.loopexit.us ]
  %add.ptr68.prol.us.1 = getelementptr inbounds float, ptr %38, i64 %add4
  %arrayidx70.prol.us.1 = getelementptr inbounds ptr, ptr %add.ptr52.us5.1, i64 %j.1150.prol.us.1
  store ptr %add.ptr68.prol.us.1, ptr %arrayidx70.prol.us.1, align 8, !tbaa !5
  %inc72.prol.us.1 = add i64 %j.1150.prol.us.1, 1
  %prol.iter174.next.us.1 = add nuw nsw i64 %prol.iter174.us.1, 1
  %prol.iter174.cmp.not.us.1 = icmp eq i64 %prol.iter174.next.us.1, %xtraiter
  br i1 %prol.iter174.cmp.not.us.1, label %for.body64.prol.loopexit.loopexit.us.1, label %for.body64.prol.us.1, !llvm.loop !28

for.body64.prol.loopexit.loopexit.us.1:           ; preds = %for.body64.prol.us.1
  %exitcond158.not.us.1 = icmp eq i64 %i.0154.us4.1, %nrh
  br i1 %exitcond158.not.us.1, label %for.end76, label %for.body49.us3, !llvm.loop !30

for.body49.us.prol:                               ; preds = %for.body49.lr.ph.thread, %for.body49.us.prol
  %39 = phi ptr [ %add.ptr58.us.prol, %for.body49.us.prol ], [ %add.ptr38, %for.body49.lr.ph.thread ]
  %40 = phi ptr [ %add.ptr52.us.prol, %for.body49.us.prol ], [ %add.ptr19, %for.body49.lr.ph.thread ]
  %i.0154.us.prol = phi i64 [ %i.0.us.prol, %for.body49.us.prol ], [ %i.0151160, %for.body49.lr.ph.thread ]
  %prol.iter169 = phi i64 [ %prol.iter169.next, %for.body49.us.prol ], [ 0, %for.body49.lr.ph.thread ]
  %add.ptr52.us.prol = getelementptr inbounds ptr, ptr %40, i64 %add2
  %arrayidx53.us.prol = getelementptr inbounds ptr, ptr %add.ptr6, i64 %i.0154.us.prol
  store ptr %add.ptr52.us.prol, ptr %arrayidx53.us.prol, align 8, !tbaa !5
  %add.ptr58.us.prol = getelementptr inbounds float, ptr %39, i64 %mul57161
  %arrayidx60.us.prol = getelementptr inbounds ptr, ptr %add.ptr52.us.prol, i64 %ncl
  store ptr %add.ptr58.us.prol, ptr %arrayidx60.us.prol, align 8, !tbaa !5
  %i.0.us.prol = add i64 %i.0154.us.prol, 1
  %prol.iter169.next = add nuw nsw i64 %prol.iter169, 1
  %prol.iter169.cmp.not = icmp eq i64 %prol.iter169.next, %xtraiter167
  br i1 %prol.iter169.cmp.not, label %for.body49.us.prol.loopexit, label %for.body49.us.prol, !llvm.loop !31

for.body49.us.prol.loopexit:                      ; preds = %for.body49.us.prol, %for.body49.lr.ph.thread
  %.unr170 = phi ptr [ %add.ptr38, %for.body49.lr.ph.thread ], [ %add.ptr58.us.prol, %for.body49.us.prol ]
  %.unr171 = phi ptr [ %add.ptr19, %for.body49.lr.ph.thread ], [ %add.ptr52.us.prol, %for.body49.us.prol ]
  %i.0154.us.unr = phi i64 [ %i.0151160, %for.body49.lr.ph.thread ], [ %i.0.us.prol, %for.body49.us.prol ]
  %41 = icmp ult i64 %19, 3
  br i1 %41, label %for.end76, label %for.body49.us

for.body49.us:                                    ; preds = %for.body49.us.prol.loopexit, %for.body49.us
  %42 = phi ptr [ %add.ptr58.us.3, %for.body49.us ], [ %.unr170, %for.body49.us.prol.loopexit ]
  %43 = phi ptr [ %add.ptr52.us.3, %for.body49.us ], [ %.unr171, %for.body49.us.prol.loopexit ]
  %i.0154.us = phi i64 [ %i.0.us.3, %for.body49.us ], [ %i.0154.us.unr, %for.body49.us.prol.loopexit ]
  %add.ptr52.us = getelementptr inbounds ptr, ptr %43, i64 %add2
  %arrayidx53.us = getelementptr inbounds ptr, ptr %add.ptr6, i64 %i.0154.us
  store ptr %add.ptr52.us, ptr %arrayidx53.us, align 8, !tbaa !5
  %add.ptr58.us = getelementptr inbounds float, ptr %42, i64 %mul57161
  %arrayidx60.us = getelementptr inbounds ptr, ptr %add.ptr52.us, i64 %ncl
  store ptr %add.ptr58.us, ptr %arrayidx60.us, align 8, !tbaa !5
  %i.0.us = add i64 %i.0154.us, 1
  %add.ptr52.us.1 = getelementptr inbounds ptr, ptr %add.ptr52.us, i64 %add2
  %arrayidx53.us.1 = getelementptr inbounds ptr, ptr %add.ptr6, i64 %i.0.us
  store ptr %add.ptr52.us.1, ptr %arrayidx53.us.1, align 8, !tbaa !5
  %add.ptr58.us.1 = getelementptr inbounds float, ptr %add.ptr58.us, i64 %mul57161
  %arrayidx60.us.1 = getelementptr inbounds ptr, ptr %add.ptr52.us.1, i64 %ncl
  store ptr %add.ptr58.us.1, ptr %arrayidx60.us.1, align 8, !tbaa !5
  %i.0.us.1 = add i64 %i.0154.us, 2
  %add.ptr52.us.2 = getelementptr inbounds ptr, ptr %add.ptr52.us.1, i64 %add2
  %arrayidx53.us.2 = getelementptr inbounds ptr, ptr %add.ptr6, i64 %i.0.us.1
  store ptr %add.ptr52.us.2, ptr %arrayidx53.us.2, align 8, !tbaa !5
  %add.ptr58.us.2 = getelementptr inbounds float, ptr %add.ptr58.us.1, i64 %mul57161
  %arrayidx60.us.2 = getelementptr inbounds ptr, ptr %add.ptr52.us.2, i64 %ncl
  store ptr %add.ptr58.us.2, ptr %arrayidx60.us.2, align 8, !tbaa !5
  %i.0.us.2 = add i64 %i.0154.us, 3
  %add.ptr52.us.3 = getelementptr inbounds ptr, ptr %add.ptr52.us.2, i64 %add2
  %arrayidx53.us.3 = getelementptr inbounds ptr, ptr %add.ptr6, i64 %i.0.us.2
  store ptr %add.ptr52.us.3, ptr %arrayidx53.us.3, align 8, !tbaa !5
  %add.ptr58.us.3 = getelementptr inbounds float, ptr %add.ptr58.us.2, i64 %mul57161
  %arrayidx60.us.3 = getelementptr inbounds ptr, ptr %add.ptr52.us.3, i64 %ncl
  store ptr %add.ptr58.us.3, ptr %arrayidx60.us.3, align 8, !tbaa !5
  %i.0.us.3 = add i64 %i.0154.us, 4
  %exitcond156.not.3 = icmp eq i64 %i.0.us.2, %nrh
  br i1 %exitcond156.not.3, label %for.end76, label %for.body49.us, !llvm.loop !30

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %44 = phi ptr [ %add.ptr43.7, %for.body ], [ %.unr, %for.body.prol.loopexit ]
  %j.0148 = phi i64 [ %inc.7, %for.body ], [ %j.0148.unr, %for.body.prol.loopexit ]
  %add.ptr43 = getelementptr inbounds float, ptr %44, i64 %add4
  %arrayidx45 = getelementptr inbounds ptr, ptr %add.ptr19, i64 %j.0148
  store ptr %add.ptr43, ptr %arrayidx45, align 8, !tbaa !5
  %inc = add i64 %j.0148, 1
  %add.ptr43.1 = getelementptr inbounds float, ptr %add.ptr43, i64 %add4
  %arrayidx45.1 = getelementptr inbounds ptr, ptr %add.ptr19, i64 %inc
  store ptr %add.ptr43.1, ptr %arrayidx45.1, align 8, !tbaa !5
  %inc.1 = add i64 %j.0148, 2
  %add.ptr43.2 = getelementptr inbounds float, ptr %add.ptr43.1, i64 %add4
  %arrayidx45.2 = getelementptr inbounds ptr, ptr %add.ptr19, i64 %inc.1
  store ptr %add.ptr43.2, ptr %arrayidx45.2, align 8, !tbaa !5
  %inc.2 = add i64 %j.0148, 3
  %add.ptr43.3 = getelementptr inbounds float, ptr %add.ptr43.2, i64 %add4
  %arrayidx45.3 = getelementptr inbounds ptr, ptr %add.ptr19, i64 %inc.2
  store ptr %add.ptr43.3, ptr %arrayidx45.3, align 8, !tbaa !5
  %inc.3 = add i64 %j.0148, 4
  %add.ptr43.4 = getelementptr inbounds float, ptr %add.ptr43.3, i64 %add4
  %arrayidx45.4 = getelementptr inbounds ptr, ptr %add.ptr19, i64 %inc.3
  store ptr %add.ptr43.4, ptr %arrayidx45.4, align 8, !tbaa !5
  %inc.4 = add i64 %j.0148, 5
  %add.ptr43.5 = getelementptr inbounds float, ptr %add.ptr43.4, i64 %add4
  %arrayidx45.5 = getelementptr inbounds ptr, ptr %add.ptr19, i64 %inc.4
  store ptr %add.ptr43.5, ptr %arrayidx45.5, align 8, !tbaa !5
  %inc.5 = add i64 %j.0148, 6
  %add.ptr43.6 = getelementptr inbounds float, ptr %add.ptr43.5, i64 %add4
  %arrayidx45.6 = getelementptr inbounds ptr, ptr %add.ptr19, i64 %inc.5
  store ptr %add.ptr43.6, ptr %arrayidx45.6, align 8, !tbaa !5
  %inc.6 = add i64 %j.0148, 7
  %add.ptr43.7 = getelementptr inbounds float, ptr %add.ptr43.6, i64 %add4
  %arrayidx45.7 = getelementptr inbounds ptr, ptr %add.ptr19, i64 %inc.6
  store ptr %add.ptr43.7, ptr %arrayidx45.7, align 8, !tbaa !5
  %inc.7 = add i64 %j.0148, 8
  %exitcond.not.7 = icmp eq i64 %inc.6, %nch
  br i1 %exitcond.not.7, label %for.cond47.preheader, label %for.body, !llvm.loop !32

for.cond62.for.cond47.loopexit_crit_edge.loopexit: ; preds = %for.body64
  %exitcond158.not = icmp eq i64 %i.0154, %nrh
  br i1 %exitcond158.not, label %for.end76, label %for.body49, !llvm.loop !30

for.body49:                                       ; preds = %for.body49.lr.ph, %for.cond62.for.cond47.loopexit_crit_edge.loopexit
  %45 = phi ptr [ %add.ptr52, %for.cond62.for.cond47.loopexit_crit_edge.loopexit ], [ %add.ptr19, %for.body49.lr.ph ]
  %i.0154.in = phi i64 [ %i.0154, %for.cond62.for.cond47.loopexit_crit_edge.loopexit ], [ %nrl, %for.body49.lr.ph ]
  %i.0154 = add i64 %i.0154.in, 1
  %add.ptr52 = getelementptr inbounds ptr, ptr %45, i64 %add2
  %arrayidx53 = getelementptr inbounds ptr, ptr %add.ptr6, i64 %i.0154
  store ptr %add.ptr52, ptr %arrayidx53, align 8, !tbaa !5
  %arrayidx56 = getelementptr inbounds ptr, ptr %45, i64 %ncl
  %46 = load ptr, ptr %arrayidx56, align 8, !tbaa !5
  %add.ptr58 = getelementptr inbounds float, ptr %46, i64 %mul57
  %arrayidx60 = getelementptr inbounds ptr, ptr %add.ptr52, i64 %ncl
  store ptr %add.ptr58, ptr %arrayidx60, align 8, !tbaa !5
  br i1 %lcmp.mod.not, label %for.body64.preheader, label %for.body64.prol

for.body64.prol:                                  ; preds = %for.body49, %for.body64.prol
  %47 = phi ptr [ %add.ptr68.prol, %for.body64.prol ], [ %add.ptr58, %for.body49 ]
  %j.1150.prol = phi i64 [ %inc72.prol, %for.body64.prol ], [ %add39, %for.body49 ]
  %prol.iter174 = phi i64 [ %prol.iter174.next, %for.body64.prol ], [ 0, %for.body49 ]
  %add.ptr68.prol = getelementptr inbounds float, ptr %47, i64 %add4
  %arrayidx70.prol = getelementptr inbounds ptr, ptr %add.ptr52, i64 %j.1150.prol
  store ptr %add.ptr68.prol, ptr %arrayidx70.prol, align 8, !tbaa !5
  %inc72.prol = add i64 %j.1150.prol, 1
  %prol.iter174.next = add nuw nsw i64 %prol.iter174, 1
  %prol.iter174.cmp.not = icmp eq i64 %prol.iter174.next, %xtraiter
  br i1 %prol.iter174.cmp.not, label %for.body64.preheader, label %for.body64.prol, !llvm.loop !28

for.body64.preheader:                             ; preds = %for.body64.prol, %for.body49
  %.ph = phi ptr [ %add.ptr58, %for.body49 ], [ %add.ptr68.prol, %for.body64.prol ]
  %j.1150.ph = phi i64 [ %add39, %for.body49 ], [ %inc72.prol, %for.body64.prol ]
  br label %for.body64

for.body64:                                       ; preds = %for.body64.preheader, %for.body64
  %48 = phi ptr [ %add.ptr68.7, %for.body64 ], [ %.ph, %for.body64.preheader ]
  %j.1150 = phi i64 [ %inc72.7, %for.body64 ], [ %j.1150.ph, %for.body64.preheader ]
  %add.ptr68 = getelementptr inbounds float, ptr %48, i64 %add4
  %arrayidx70 = getelementptr inbounds ptr, ptr %add.ptr52, i64 %j.1150
  store ptr %add.ptr68, ptr %arrayidx70, align 8, !tbaa !5
  %inc72 = add i64 %j.1150, 1
  %add.ptr68.1 = getelementptr inbounds float, ptr %add.ptr68, i64 %add4
  %arrayidx70.1 = getelementptr inbounds ptr, ptr %add.ptr52, i64 %inc72
  store ptr %add.ptr68.1, ptr %arrayidx70.1, align 8, !tbaa !5
  %inc72.1 = add i64 %j.1150, 2
  %add.ptr68.2 = getelementptr inbounds float, ptr %add.ptr68.1, i64 %add4
  %arrayidx70.2 = getelementptr inbounds ptr, ptr %add.ptr52, i64 %inc72.1
  store ptr %add.ptr68.2, ptr %arrayidx70.2, align 8, !tbaa !5
  %inc72.2 = add i64 %j.1150, 3
  %add.ptr68.3 = getelementptr inbounds float, ptr %add.ptr68.2, i64 %add4
  %arrayidx70.3 = getelementptr inbounds ptr, ptr %add.ptr52, i64 %inc72.2
  store ptr %add.ptr68.3, ptr %arrayidx70.3, align 8, !tbaa !5
  %inc72.3 = add i64 %j.1150, 4
  %add.ptr68.4 = getelementptr inbounds float, ptr %add.ptr68.3, i64 %add4
  %arrayidx70.4 = getelementptr inbounds ptr, ptr %add.ptr52, i64 %inc72.3
  store ptr %add.ptr68.4, ptr %arrayidx70.4, align 8, !tbaa !5
  %inc72.4 = add i64 %j.1150, 5
  %add.ptr68.5 = getelementptr inbounds float, ptr %add.ptr68.4, i64 %add4
  %arrayidx70.5 = getelementptr inbounds ptr, ptr %add.ptr52, i64 %inc72.4
  store ptr %add.ptr68.5, ptr %arrayidx70.5, align 8, !tbaa !5
  %inc72.5 = add i64 %j.1150, 6
  %add.ptr68.6 = getelementptr inbounds float, ptr %add.ptr68.5, i64 %add4
  %arrayidx70.6 = getelementptr inbounds ptr, ptr %add.ptr52, i64 %inc72.5
  store ptr %add.ptr68.6, ptr %arrayidx70.6, align 8, !tbaa !5
  %inc72.6 = add i64 %j.1150, 7
  %add.ptr68.7 = getelementptr inbounds float, ptr %add.ptr68.6, i64 %add4
  %arrayidx70.7 = getelementptr inbounds ptr, ptr %add.ptr52, i64 %inc72.6
  store ptr %add.ptr68.7, ptr %arrayidx70.7, align 8, !tbaa !5
  %inc72.7 = add i64 %j.1150, 8
  %exitcond157.not.7 = icmp eq i64 %inc72.6, %nch
  br i1 %exitcond157.not.7, label %for.cond62.for.cond47.loopexit_crit_edge.loopexit, label %for.body64, !llvm.loop !33

for.end76:                                        ; preds = %for.body49.us, %for.cond62.for.cond47.loopexit_crit_edge.loopexit, %for.body49.us3.prol.loopexit, %for.body64.prol.loopexit.loopexit.us.1, %for.body49.us3.us.prol.loopexit, %for.body49.us3.us, %for.cond47.preheader.thread13, %for.body49.us.prol.loopexit, %for.cond47.preheader.thread, %for.cond47.preheader
  ret ptr %add.ptr6
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @lmatrix3D(i64 noundef %nrl, i64 noundef %nrh, i64 noundef %ncl, i64 noundef %nch, i64 noundef %ndl, i64 noundef %ndh) local_unnamed_addr #3 {
entry:
  %sub = sub i64 %nrh, %nrl
  %sub1 = sub i64 %nch, %ncl
  %add2 = add nsw i64 %sub1, 1
  %sub3 = sub nsw i64 %ndh, %ndl
  %add4 = add nsw i64 %sub3, 1
  %add5 = shl i64 %sub, 3
  %mul = add i64 %add5, 16
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %0) #11
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23) #11
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %3) #11
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds ptr, ptr %call, i64 1
  %idx.neg = sub i64 0, %nrl
  %add.ptr6 = getelementptr inbounds ptr, ptr %add.ptr, i64 %idx.neg
  %mul7 = add i64 %add5, 8
  %add8 = mul i64 %mul7, %add2
  %mul9 = add i64 %add8, 8
  %call10 = tail call noalias ptr @malloc(i64 noundef %mul9) #10
  %arrayidx = getelementptr inbounds ptr, ptr %add.ptr6, i64 %nrl
  store ptr %call10, ptr %arrayidx, align 8, !tbaa !5
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %5) #11
  %7 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i143 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #11
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %9 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %8) #11
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end14:                                         ; preds = %if.end
  %add.ptr16 = getelementptr inbounds ptr, ptr %call10, i64 1
  %idx.neg18 = sub i64 0, %ncl
  %add.ptr19 = getelementptr inbounds ptr, ptr %add.ptr16, i64 %idx.neg18
  store ptr %add.ptr19, ptr %arrayidx, align 8, !tbaa !5
  %add22 = mul i64 %add4, %add8
  %mul23 = add i64 %add22, 8
  %call24 = tail call noalias ptr @malloc(i64 noundef %mul23) #10
  %arrayidx26 = getelementptr inbounds ptr, ptr %add.ptr19, i64 %ncl
  store ptr %call24, ptr %arrayidx26, align 8, !tbaa !5
  %tobool29.not = icmp eq ptr %call24, null
  br i1 %tobool29.not, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end14
  %10 = load ptr, ptr @stderr, align 8, !tbaa !5
  %11 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %10) #11
  %12 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i145 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25) #11
  %13 = load ptr, ptr @stderr, align 8, !tbaa !5
  %14 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %13) #11
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end31:                                         ; preds = %if.end14
  %add.ptr34 = getelementptr inbounds i64, ptr %call24, i64 1
  %idx.neg37 = sub i64 0, %ndl
  %add.ptr38 = getelementptr inbounds i64, ptr %add.ptr34, i64 %idx.neg37
  store ptr %add.ptr38, ptr %arrayidx26, align 8, !tbaa !5
  %add39 = add nsw i64 %ncl, 1
  %cmp.not147.not = icmp sgt i64 %nch, %ncl
  br i1 %cmp.not147.not, label %for.body.preheader, label %for.cond47.preheader.thread

for.body.preheader:                               ; preds = %if.end31
  %15 = xor i64 %ncl, -1
  %16 = add i64 %15, %nch
  %xtraiter = and i64 %sub1, 7
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %17 = phi ptr [ %add.ptr43.prol, %for.body.prol ], [ %add.ptr38, %for.body.preheader ]
  %j.0148.prol = phi i64 [ %inc.prol, %for.body.prol ], [ %add39, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %add.ptr43.prol = getelementptr inbounds i64, ptr %17, i64 %add4
  %arrayidx45.prol = getelementptr inbounds ptr, ptr %add.ptr19, i64 %j.0148.prol
  store ptr %add.ptr43.prol, ptr %arrayidx45.prol, align 8, !tbaa !5
  %inc.prol = add i64 %j.0148.prol, 1
  %prol.iter.next = add nuw nsw i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !34

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %.unr = phi ptr [ %add.ptr38, %for.body.preheader ], [ %add.ptr43.prol, %for.body.prol ]
  %j.0148.unr = phi i64 [ %add39, %for.body.preheader ], [ %inc.prol, %for.body.prol ]
  %18 = icmp ult i64 %16, 7
  br i1 %18, label %for.cond47.preheader.thread13, label %for.body

for.cond47.preheader:                             ; preds = %for.body
  %cmp48.not.not152 = icmp sgt i64 %nrh, %nrl
  br i1 %cmp48.not.not152, label %for.body49.lr.ph, label %for.end76

for.cond47.preheader.thread13:                    ; preds = %for.body.prol.loopexit
  %cmp48.not.not15214 = icmp sgt i64 %nrh, %nrl
  br i1 %cmp48.not.not15214, label %for.body49.lr.ph.thread15, label %for.end76

for.body49.lr.ph.thread15:                        ; preds = %for.cond47.preheader.thread13
  %mul5716 = mul nsw i64 %add4, %add2
  br label %for.body49.lr.ph.split.us

for.cond47.preheader.thread:                      ; preds = %if.end31
  %cmp48.not.not152159 = icmp sgt i64 %nrh, %nrl
  br i1 %cmp48.not.not152159, label %for.body49.lr.ph.thread, label %for.end76

for.body49.lr.ph.thread:                          ; preds = %for.cond47.preheader.thread
  %mul57161 = mul nsw i64 %add4, %add2
  %i.0151160 = add nsw i64 %nrl, 1
  %19 = sub i64 %nrh, %i.0151160
  %xtraiter167 = and i64 %sub, 3
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod168.not, label %for.body49.us.prol.loopexit, label %for.body49.us.prol

for.body49.lr.ph:                                 ; preds = %for.cond47.preheader
  %mul57 = mul nsw i64 %add4, %add2
  br i1 %18, label %for.body49.lr.ph.split.us, label %for.body49

for.body49.lr.ph.split.us:                        ; preds = %for.body49.lr.ph.thread15, %for.body49.lr.ph
  %mul5717 = phi i64 [ %mul5716, %for.body49.lr.ph.thread15 ], [ %mul57, %for.body49.lr.ph ]
  br i1 %lcmp.mod.not, label %for.body49.us3.us.preheader, label %for.body49.us3.preheader

for.body49.us3.preheader:                         ; preds = %for.body49.lr.ph.split.us
  %20 = sub i64 %nrh, %nrl
  %21 = xor i64 %nrl, -1
  %xtraiter29 = and i64 %20, 1
  %lcmp.mod.not37 = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod.not37, label %for.body49.us3.prol.loopexit, label %for.body49.us3.prol

for.body49.us3.prol:                              ; preds = %for.body49.us3.preheader
  %i.0154.us4.prol = add i64 %nrl, 1
  %add.ptr52.us5.prol = getelementptr inbounds ptr, ptr %add.ptr19, i64 %add2
  %arrayidx53.us6.prol = getelementptr inbounds ptr, ptr %add.ptr6, i64 %i.0154.us4.prol
  store ptr %add.ptr52.us5.prol, ptr %arrayidx53.us6.prol, align 8, !tbaa !5
  %arrayidx56.us.prol = getelementptr inbounds ptr, ptr %add.ptr19, i64 %ncl
  %22 = load ptr, ptr %arrayidx56.us.prol, align 8, !tbaa !5
  %add.ptr58.us7.prol = getelementptr inbounds i64, ptr %22, i64 %mul5717
  %arrayidx60.us8.prol = getelementptr inbounds ptr, ptr %add.ptr52.us5.prol, i64 %ncl
  store ptr %add.ptr58.us7.prol, ptr %arrayidx60.us8.prol, align 8, !tbaa !5
  br label %for.body64.prol.us.prol

for.body64.prol.us.prol:                          ; preds = %for.body64.prol.us.prol, %for.body49.us3.prol
  %23 = phi ptr [ %add.ptr68.prol.us.prol, %for.body64.prol.us.prol ], [ %add.ptr58.us7.prol, %for.body49.us3.prol ]
  %j.1150.prol.us.prol = phi i64 [ %inc72.prol.us.prol, %for.body64.prol.us.prol ], [ %add39, %for.body49.us3.prol ]
  %prol.iter174.us.prol = phi i64 [ %prol.iter174.next.us.prol, %for.body64.prol.us.prol ], [ 0, %for.body49.us3.prol ]
  %add.ptr68.prol.us.prol = getelementptr inbounds i64, ptr %23, i64 %add4
  %arrayidx70.prol.us.prol = getelementptr inbounds ptr, ptr %add.ptr52.us5.prol, i64 %j.1150.prol.us.prol
  store ptr %add.ptr68.prol.us.prol, ptr %arrayidx70.prol.us.prol, align 8, !tbaa !5
  %inc72.prol.us.prol = add i64 %j.1150.prol.us.prol, 1
  %prol.iter174.next.us.prol = add nuw nsw i64 %prol.iter174.us.prol, 1
  %prol.iter174.cmp.not.us.prol = icmp eq i64 %prol.iter174.next.us.prol, %xtraiter
  br i1 %prol.iter174.cmp.not.us.prol, label %for.body49.us3.prol.loopexit, label %for.body64.prol.us.prol, !llvm.loop !35

for.body49.us3.prol.loopexit:                     ; preds = %for.body64.prol.us.prol, %for.body49.us3.preheader
  %.unr31 = phi ptr [ %add.ptr19, %for.body49.us3.preheader ], [ %add.ptr52.us5.prol, %for.body64.prol.us.prol ]
  %i.0154.in.us.unr = phi i64 [ %nrl, %for.body49.us3.preheader ], [ %i.0154.us4.prol, %for.body64.prol.us.prol ]
  %24 = sub i64 0, %nrh
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %for.end76, label %for.body49.us3

for.body49.us3.us.preheader:                      ; preds = %for.body49.lr.ph.split.us
  %.pre = load ptr, ptr %arrayidx26, align 8, !tbaa !5
  %26 = sub i64 %nrh, %nrl
  %27 = xor i64 %nrl, -1
  %28 = add i64 %27, %nrh
  %xtraiter32 = and i64 %26, 3
  %lcmp.mod33.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod33.not, label %for.body49.us3.us.prol.loopexit, label %for.body49.us3.us.prol

for.body49.us3.us.prol:                           ; preds = %for.body49.us3.us.preheader, %for.body49.us3.us.prol
  %29 = phi ptr [ %add.ptr58.us7.us.prol, %for.body49.us3.us.prol ], [ %.pre, %for.body49.us3.us.preheader ]
  %30 = phi ptr [ %add.ptr52.us5.us.prol, %for.body49.us3.us.prol ], [ %add.ptr19, %for.body49.us3.us.preheader ]
  %i.0154.in.us.us.prol = phi i64 [ %i.0154.us4.us.prol, %for.body49.us3.us.prol ], [ %nrl, %for.body49.us3.us.preheader ]
  %prol.iter34 = phi i64 [ %prol.iter34.next, %for.body49.us3.us.prol ], [ 0, %for.body49.us3.us.preheader ]
  %i.0154.us4.us.prol = add i64 %i.0154.in.us.us.prol, 1
  %add.ptr52.us5.us.prol = getelementptr inbounds ptr, ptr %30, i64 %add2
  %arrayidx53.us6.us.prol = getelementptr inbounds ptr, ptr %add.ptr6, i64 %i.0154.us4.us.prol
  store ptr %add.ptr52.us5.us.prol, ptr %arrayidx53.us6.us.prol, align 8, !tbaa !5
  %add.ptr58.us7.us.prol = getelementptr inbounds i64, ptr %29, i64 %mul5717
  %arrayidx60.us8.us.prol = getelementptr inbounds ptr, ptr %add.ptr52.us5.us.prol, i64 %ncl
  store ptr %add.ptr58.us7.us.prol, ptr %arrayidx60.us8.us.prol, align 8, !tbaa !5
  %prol.iter34.next = add i64 %prol.iter34, 1
  %prol.iter34.cmp.not = icmp eq i64 %prol.iter34.next, %xtraiter32
  br i1 %prol.iter34.cmp.not, label %for.body49.us3.us.prol.loopexit, label %for.body49.us3.us.prol, !llvm.loop !36

for.body49.us3.us.prol.loopexit:                  ; preds = %for.body49.us3.us.prol, %for.body49.us3.us.preheader
  %.unr35 = phi ptr [ %.pre, %for.body49.us3.us.preheader ], [ %add.ptr58.us7.us.prol, %for.body49.us3.us.prol ]
  %.unr36 = phi ptr [ %add.ptr19, %for.body49.us3.us.preheader ], [ %add.ptr52.us5.us.prol, %for.body49.us3.us.prol ]
  %i.0154.in.us.us.unr = phi i64 [ %nrl, %for.body49.us3.us.preheader ], [ %i.0154.us4.us.prol, %for.body49.us3.us.prol ]
  %31 = icmp ult i64 %28, 3
  br i1 %31, label %for.end76, label %for.body49.us3.us

for.body49.us3.us:                                ; preds = %for.body49.us3.us.prol.loopexit, %for.body49.us3.us
  %32 = phi ptr [ %add.ptr58.us7.us.3, %for.body49.us3.us ], [ %.unr35, %for.body49.us3.us.prol.loopexit ]
  %33 = phi ptr [ %add.ptr52.us5.us.3, %for.body49.us3.us ], [ %.unr36, %for.body49.us3.us.prol.loopexit ]
  %i.0154.in.us.us = phi i64 [ %i.0154.us4.us.3, %for.body49.us3.us ], [ %i.0154.in.us.us.unr, %for.body49.us3.us.prol.loopexit ]
  %i.0154.us4.us = add i64 %i.0154.in.us.us, 1
  %add.ptr52.us5.us = getelementptr inbounds ptr, ptr %33, i64 %add2
  %arrayidx53.us6.us = getelementptr inbounds ptr, ptr %add.ptr6, i64 %i.0154.us4.us
  store ptr %add.ptr52.us5.us, ptr %arrayidx53.us6.us, align 8, !tbaa !5
  %add.ptr58.us7.us = getelementptr inbounds i64, ptr %32, i64 %mul5717
  %arrayidx60.us8.us = getelementptr inbounds ptr, ptr %add.ptr52.us5.us, i64 %ncl
  store ptr %add.ptr58.us7.us, ptr %arrayidx60.us8.us, align 8, !tbaa !5
  %i.0154.us4.us.1 = add i64 %i.0154.in.us.us, 2
  %add.ptr52.us5.us.1 = getelementptr inbounds ptr, ptr %add.ptr52.us5.us, i64 %add2
  %arrayidx53.us6.us.1 = getelementptr inbounds ptr, ptr %add.ptr6, i64 %i.0154.us4.us.1
  store ptr %add.ptr52.us5.us.1, ptr %arrayidx53.us6.us.1, align 8, !tbaa !5
  %add.ptr58.us7.us.1 = getelementptr inbounds i64, ptr %add.ptr58.us7.us, i64 %mul5717
  %arrayidx60.us8.us.1 = getelementptr inbounds ptr, ptr %add.ptr52.us5.us.1, i64 %ncl
  store ptr %add.ptr58.us7.us.1, ptr %arrayidx60.us8.us.1, align 8, !tbaa !5
  %i.0154.us4.us.2 = add i64 %i.0154.in.us.us, 3
  %add.ptr52.us5.us.2 = getelementptr inbounds ptr, ptr %add.ptr52.us5.us.1, i64 %add2
  %arrayidx53.us6.us.2 = getelementptr inbounds ptr, ptr %add.ptr6, i64 %i.0154.us4.us.2
  store ptr %add.ptr52.us5.us.2, ptr %arrayidx53.us6.us.2, align 8, !tbaa !5
  %add.ptr58.us7.us.2 = getelementptr inbounds i64, ptr %add.ptr58.us7.us.1, i64 %mul5717
  %arrayidx60.us8.us.2 = getelementptr inbounds ptr, ptr %add.ptr52.us5.us.2, i64 %ncl
  store ptr %add.ptr58.us7.us.2, ptr %arrayidx60.us8.us.2, align 8, !tbaa !5
  %i.0154.us4.us.3 = add i64 %i.0154.in.us.us, 4
  %add.ptr52.us5.us.3 = getelementptr inbounds ptr, ptr %add.ptr52.us5.us.2, i64 %add2
  %arrayidx53.us6.us.3 = getelementptr inbounds ptr, ptr %add.ptr6, i64 %i.0154.us4.us.3
  store ptr %add.ptr52.us5.us.3, ptr %arrayidx53.us6.us.3, align 8, !tbaa !5
  %add.ptr58.us7.us.3 = getelementptr inbounds i64, ptr %add.ptr58.us7.us.2, i64 %mul5717
  %arrayidx60.us8.us.3 = getelementptr inbounds ptr, ptr %add.ptr52.us5.us.3, i64 %ncl
  store ptr %add.ptr58.us7.us.3, ptr %arrayidx60.us8.us.3, align 8, !tbaa !5
  %exitcond158.not.us.us.3 = icmp eq i64 %i.0154.us4.us.3, %nrh
  br i1 %exitcond158.not.us.us.3, label %for.end76, label %for.body49.us3.us, !llvm.loop !37

for.body49.us3:                                   ; preds = %for.body49.us3.prol.loopexit, %for.body64.prol.loopexit.loopexit.us.1
  %34 = phi ptr [ %add.ptr52.us5.1, %for.body64.prol.loopexit.loopexit.us.1 ], [ %.unr31, %for.body49.us3.prol.loopexit ]
  %i.0154.in.us = phi i64 [ %i.0154.us4.1, %for.body64.prol.loopexit.loopexit.us.1 ], [ %i.0154.in.us.unr, %for.body49.us3.prol.loopexit ]
  %i.0154.us4 = add i64 %i.0154.in.us, 1
  %add.ptr52.us5 = getelementptr inbounds ptr, ptr %34, i64 %add2
  %arrayidx53.us6 = getelementptr inbounds ptr, ptr %add.ptr6, i64 %i.0154.us4
  store ptr %add.ptr52.us5, ptr %arrayidx53.us6, align 8, !tbaa !5
  %arrayidx56.us = getelementptr inbounds ptr, ptr %34, i64 %ncl
  %35 = load ptr, ptr %arrayidx56.us, align 8, !tbaa !5
  %add.ptr58.us7 = getelementptr inbounds i64, ptr %35, i64 %mul5717
  %arrayidx60.us8 = getelementptr inbounds ptr, ptr %add.ptr52.us5, i64 %ncl
  store ptr %add.ptr58.us7, ptr %arrayidx60.us8, align 8, !tbaa !5
  br label %for.body64.prol.us

for.body64.prol.us:                               ; preds = %for.body49.us3, %for.body64.prol.us
  %36 = phi ptr [ %add.ptr68.prol.us, %for.body64.prol.us ], [ %add.ptr58.us7, %for.body49.us3 ]
  %j.1150.prol.us = phi i64 [ %inc72.prol.us, %for.body64.prol.us ], [ %add39, %for.body49.us3 ]
  %prol.iter174.us = phi i64 [ %prol.iter174.next.us, %for.body64.prol.us ], [ 0, %for.body49.us3 ]
  %add.ptr68.prol.us = getelementptr inbounds i64, ptr %36, i64 %add4
  %arrayidx70.prol.us = getelementptr inbounds ptr, ptr %add.ptr52.us5, i64 %j.1150.prol.us
  store ptr %add.ptr68.prol.us, ptr %arrayidx70.prol.us, align 8, !tbaa !5
  %inc72.prol.us = add i64 %j.1150.prol.us, 1
  %prol.iter174.next.us = add nuw nsw i64 %prol.iter174.us, 1
  %prol.iter174.cmp.not.us = icmp eq i64 %prol.iter174.next.us, %xtraiter
  br i1 %prol.iter174.cmp.not.us, label %for.body64.prol.loopexit.loopexit.us, label %for.body64.prol.us, !llvm.loop !35

for.body64.prol.loopexit.loopexit.us:             ; preds = %for.body64.prol.us
  %i.0154.us4.1 = add i64 %i.0154.in.us, 2
  %add.ptr52.us5.1 = getelementptr inbounds ptr, ptr %add.ptr52.us5, i64 %add2
  %arrayidx53.us6.1 = getelementptr inbounds ptr, ptr %add.ptr6, i64 %i.0154.us4.1
  store ptr %add.ptr52.us5.1, ptr %arrayidx53.us6.1, align 8, !tbaa !5
  %arrayidx56.us.1 = getelementptr inbounds ptr, ptr %add.ptr52.us5, i64 %ncl
  %37 = load ptr, ptr %arrayidx56.us.1, align 8, !tbaa !5
  %add.ptr58.us7.1 = getelementptr inbounds i64, ptr %37, i64 %mul5717
  %arrayidx60.us8.1 = getelementptr inbounds ptr, ptr %add.ptr52.us5.1, i64 %ncl
  store ptr %add.ptr58.us7.1, ptr %arrayidx60.us8.1, align 8, !tbaa !5
  br label %for.body64.prol.us.1

for.body64.prol.us.1:                             ; preds = %for.body64.prol.us.1, %for.body64.prol.loopexit.loopexit.us
  %38 = phi ptr [ %add.ptr68.prol.us.1, %for.body64.prol.us.1 ], [ %add.ptr58.us7.1, %for.body64.prol.loopexit.loopexit.us ]
  %j.1150.prol.us.1 = phi i64 [ %inc72.prol.us.1, %for.body64.prol.us.1 ], [ %add39, %for.body64.prol.loopexit.loopexit.us ]
  %prol.iter174.us.1 = phi i64 [ %prol.iter174.next.us.1, %for.body64.prol.us.1 ], [ 0, %for.body64.prol.loopexit.loopexit.us ]
  %add.ptr68.prol.us.1 = getelementptr inbounds i64, ptr %38, i64 %add4
  %arrayidx70.prol.us.1 = getelementptr inbounds ptr, ptr %add.ptr52.us5.1, i64 %j.1150.prol.us.1
  store ptr %add.ptr68.prol.us.1, ptr %arrayidx70.prol.us.1, align 8, !tbaa !5
  %inc72.prol.us.1 = add i64 %j.1150.prol.us.1, 1
  %prol.iter174.next.us.1 = add nuw nsw i64 %prol.iter174.us.1, 1
  %prol.iter174.cmp.not.us.1 = icmp eq i64 %prol.iter174.next.us.1, %xtraiter
  br i1 %prol.iter174.cmp.not.us.1, label %for.body64.prol.loopexit.loopexit.us.1, label %for.body64.prol.us.1, !llvm.loop !35

for.body64.prol.loopexit.loopexit.us.1:           ; preds = %for.body64.prol.us.1
  %exitcond158.not.us.1 = icmp eq i64 %i.0154.us4.1, %nrh
  br i1 %exitcond158.not.us.1, label %for.end76, label %for.body49.us3, !llvm.loop !37

for.body49.us.prol:                               ; preds = %for.body49.lr.ph.thread, %for.body49.us.prol
  %39 = phi ptr [ %add.ptr58.us.prol, %for.body49.us.prol ], [ %add.ptr38, %for.body49.lr.ph.thread ]
  %40 = phi ptr [ %add.ptr52.us.prol, %for.body49.us.prol ], [ %add.ptr19, %for.body49.lr.ph.thread ]
  %i.0154.us.prol = phi i64 [ %i.0.us.prol, %for.body49.us.prol ], [ %i.0151160, %for.body49.lr.ph.thread ]
  %prol.iter169 = phi i64 [ %prol.iter169.next, %for.body49.us.prol ], [ 0, %for.body49.lr.ph.thread ]
  %add.ptr52.us.prol = getelementptr inbounds ptr, ptr %40, i64 %add2
  %arrayidx53.us.prol = getelementptr inbounds ptr, ptr %add.ptr6, i64 %i.0154.us.prol
  store ptr %add.ptr52.us.prol, ptr %arrayidx53.us.prol, align 8, !tbaa !5
  %add.ptr58.us.prol = getelementptr inbounds i64, ptr %39, i64 %mul57161
  %arrayidx60.us.prol = getelementptr inbounds ptr, ptr %add.ptr52.us.prol, i64 %ncl
  store ptr %add.ptr58.us.prol, ptr %arrayidx60.us.prol, align 8, !tbaa !5
  %i.0.us.prol = add i64 %i.0154.us.prol, 1
  %prol.iter169.next = add nuw nsw i64 %prol.iter169, 1
  %prol.iter169.cmp.not = icmp eq i64 %prol.iter169.next, %xtraiter167
  br i1 %prol.iter169.cmp.not, label %for.body49.us.prol.loopexit, label %for.body49.us.prol, !llvm.loop !38

for.body49.us.prol.loopexit:                      ; preds = %for.body49.us.prol, %for.body49.lr.ph.thread
  %.unr170 = phi ptr [ %add.ptr38, %for.body49.lr.ph.thread ], [ %add.ptr58.us.prol, %for.body49.us.prol ]
  %.unr171 = phi ptr [ %add.ptr19, %for.body49.lr.ph.thread ], [ %add.ptr52.us.prol, %for.body49.us.prol ]
  %i.0154.us.unr = phi i64 [ %i.0151160, %for.body49.lr.ph.thread ], [ %i.0.us.prol, %for.body49.us.prol ]
  %41 = icmp ult i64 %19, 3
  br i1 %41, label %for.end76, label %for.body49.us

for.body49.us:                                    ; preds = %for.body49.us.prol.loopexit, %for.body49.us
  %42 = phi ptr [ %add.ptr58.us.3, %for.body49.us ], [ %.unr170, %for.body49.us.prol.loopexit ]
  %43 = phi ptr [ %add.ptr52.us.3, %for.body49.us ], [ %.unr171, %for.body49.us.prol.loopexit ]
  %i.0154.us = phi i64 [ %i.0.us.3, %for.body49.us ], [ %i.0154.us.unr, %for.body49.us.prol.loopexit ]
  %add.ptr52.us = getelementptr inbounds ptr, ptr %43, i64 %add2
  %arrayidx53.us = getelementptr inbounds ptr, ptr %add.ptr6, i64 %i.0154.us
  store ptr %add.ptr52.us, ptr %arrayidx53.us, align 8, !tbaa !5
  %add.ptr58.us = getelementptr inbounds i64, ptr %42, i64 %mul57161
  %arrayidx60.us = getelementptr inbounds ptr, ptr %add.ptr52.us, i64 %ncl
  store ptr %add.ptr58.us, ptr %arrayidx60.us, align 8, !tbaa !5
  %i.0.us = add i64 %i.0154.us, 1
  %add.ptr52.us.1 = getelementptr inbounds ptr, ptr %add.ptr52.us, i64 %add2
  %arrayidx53.us.1 = getelementptr inbounds ptr, ptr %add.ptr6, i64 %i.0.us
  store ptr %add.ptr52.us.1, ptr %arrayidx53.us.1, align 8, !tbaa !5
  %add.ptr58.us.1 = getelementptr inbounds i64, ptr %add.ptr58.us, i64 %mul57161
  %arrayidx60.us.1 = getelementptr inbounds ptr, ptr %add.ptr52.us.1, i64 %ncl
  store ptr %add.ptr58.us.1, ptr %arrayidx60.us.1, align 8, !tbaa !5
  %i.0.us.1 = add i64 %i.0154.us, 2
  %add.ptr52.us.2 = getelementptr inbounds ptr, ptr %add.ptr52.us.1, i64 %add2
  %arrayidx53.us.2 = getelementptr inbounds ptr, ptr %add.ptr6, i64 %i.0.us.1
  store ptr %add.ptr52.us.2, ptr %arrayidx53.us.2, align 8, !tbaa !5
  %add.ptr58.us.2 = getelementptr inbounds i64, ptr %add.ptr58.us.1, i64 %mul57161
  %arrayidx60.us.2 = getelementptr inbounds ptr, ptr %add.ptr52.us.2, i64 %ncl
  store ptr %add.ptr58.us.2, ptr %arrayidx60.us.2, align 8, !tbaa !5
  %i.0.us.2 = add i64 %i.0154.us, 3
  %add.ptr52.us.3 = getelementptr inbounds ptr, ptr %add.ptr52.us.2, i64 %add2
  %arrayidx53.us.3 = getelementptr inbounds ptr, ptr %add.ptr6, i64 %i.0.us.2
  store ptr %add.ptr52.us.3, ptr %arrayidx53.us.3, align 8, !tbaa !5
  %add.ptr58.us.3 = getelementptr inbounds i64, ptr %add.ptr58.us.2, i64 %mul57161
  %arrayidx60.us.3 = getelementptr inbounds ptr, ptr %add.ptr52.us.3, i64 %ncl
  store ptr %add.ptr58.us.3, ptr %arrayidx60.us.3, align 8, !tbaa !5
  %i.0.us.3 = add i64 %i.0154.us, 4
  %exitcond156.not.3 = icmp eq i64 %i.0.us.2, %nrh
  br i1 %exitcond156.not.3, label %for.end76, label %for.body49.us, !llvm.loop !37

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %44 = phi ptr [ %add.ptr43.7, %for.body ], [ %.unr, %for.body.prol.loopexit ]
  %j.0148 = phi i64 [ %inc.7, %for.body ], [ %j.0148.unr, %for.body.prol.loopexit ]
  %add.ptr43 = getelementptr inbounds i64, ptr %44, i64 %add4
  %arrayidx45 = getelementptr inbounds ptr, ptr %add.ptr19, i64 %j.0148
  store ptr %add.ptr43, ptr %arrayidx45, align 8, !tbaa !5
  %inc = add i64 %j.0148, 1
  %add.ptr43.1 = getelementptr inbounds i64, ptr %add.ptr43, i64 %add4
  %arrayidx45.1 = getelementptr inbounds ptr, ptr %add.ptr19, i64 %inc
  store ptr %add.ptr43.1, ptr %arrayidx45.1, align 8, !tbaa !5
  %inc.1 = add i64 %j.0148, 2
  %add.ptr43.2 = getelementptr inbounds i64, ptr %add.ptr43.1, i64 %add4
  %arrayidx45.2 = getelementptr inbounds ptr, ptr %add.ptr19, i64 %inc.1
  store ptr %add.ptr43.2, ptr %arrayidx45.2, align 8, !tbaa !5
  %inc.2 = add i64 %j.0148, 3
  %add.ptr43.3 = getelementptr inbounds i64, ptr %add.ptr43.2, i64 %add4
  %arrayidx45.3 = getelementptr inbounds ptr, ptr %add.ptr19, i64 %inc.2
  store ptr %add.ptr43.3, ptr %arrayidx45.3, align 8, !tbaa !5
  %inc.3 = add i64 %j.0148, 4
  %add.ptr43.4 = getelementptr inbounds i64, ptr %add.ptr43.3, i64 %add4
  %arrayidx45.4 = getelementptr inbounds ptr, ptr %add.ptr19, i64 %inc.3
  store ptr %add.ptr43.4, ptr %arrayidx45.4, align 8, !tbaa !5
  %inc.4 = add i64 %j.0148, 5
  %add.ptr43.5 = getelementptr inbounds i64, ptr %add.ptr43.4, i64 %add4
  %arrayidx45.5 = getelementptr inbounds ptr, ptr %add.ptr19, i64 %inc.4
  store ptr %add.ptr43.5, ptr %arrayidx45.5, align 8, !tbaa !5
  %inc.5 = add i64 %j.0148, 6
  %add.ptr43.6 = getelementptr inbounds i64, ptr %add.ptr43.5, i64 %add4
  %arrayidx45.6 = getelementptr inbounds ptr, ptr %add.ptr19, i64 %inc.5
  store ptr %add.ptr43.6, ptr %arrayidx45.6, align 8, !tbaa !5
  %inc.6 = add i64 %j.0148, 7
  %add.ptr43.7 = getelementptr inbounds i64, ptr %add.ptr43.6, i64 %add4
  %arrayidx45.7 = getelementptr inbounds ptr, ptr %add.ptr19, i64 %inc.6
  store ptr %add.ptr43.7, ptr %arrayidx45.7, align 8, !tbaa !5
  %inc.7 = add i64 %j.0148, 8
  %exitcond.not.7 = icmp eq i64 %inc.6, %nch
  br i1 %exitcond.not.7, label %for.cond47.preheader, label %for.body, !llvm.loop !39

for.cond62.for.cond47.loopexit_crit_edge.loopexit: ; preds = %for.body64
  %exitcond158.not = icmp eq i64 %i.0154, %nrh
  br i1 %exitcond158.not, label %for.end76, label %for.body49, !llvm.loop !37

for.body49:                                       ; preds = %for.body49.lr.ph, %for.cond62.for.cond47.loopexit_crit_edge.loopexit
  %45 = phi ptr [ %add.ptr52, %for.cond62.for.cond47.loopexit_crit_edge.loopexit ], [ %add.ptr19, %for.body49.lr.ph ]
  %i.0154.in = phi i64 [ %i.0154, %for.cond62.for.cond47.loopexit_crit_edge.loopexit ], [ %nrl, %for.body49.lr.ph ]
  %i.0154 = add i64 %i.0154.in, 1
  %add.ptr52 = getelementptr inbounds ptr, ptr %45, i64 %add2
  %arrayidx53 = getelementptr inbounds ptr, ptr %add.ptr6, i64 %i.0154
  store ptr %add.ptr52, ptr %arrayidx53, align 8, !tbaa !5
  %arrayidx56 = getelementptr inbounds ptr, ptr %45, i64 %ncl
  %46 = load ptr, ptr %arrayidx56, align 8, !tbaa !5
  %add.ptr58 = getelementptr inbounds i64, ptr %46, i64 %mul57
  %arrayidx60 = getelementptr inbounds ptr, ptr %add.ptr52, i64 %ncl
  store ptr %add.ptr58, ptr %arrayidx60, align 8, !tbaa !5
  br i1 %lcmp.mod.not, label %for.body64.preheader, label %for.body64.prol

for.body64.prol:                                  ; preds = %for.body49, %for.body64.prol
  %47 = phi ptr [ %add.ptr68.prol, %for.body64.prol ], [ %add.ptr58, %for.body49 ]
  %j.1150.prol = phi i64 [ %inc72.prol, %for.body64.prol ], [ %add39, %for.body49 ]
  %prol.iter174 = phi i64 [ %prol.iter174.next, %for.body64.prol ], [ 0, %for.body49 ]
  %add.ptr68.prol = getelementptr inbounds i64, ptr %47, i64 %add4
  %arrayidx70.prol = getelementptr inbounds ptr, ptr %add.ptr52, i64 %j.1150.prol
  store ptr %add.ptr68.prol, ptr %arrayidx70.prol, align 8, !tbaa !5
  %inc72.prol = add i64 %j.1150.prol, 1
  %prol.iter174.next = add nuw nsw i64 %prol.iter174, 1
  %prol.iter174.cmp.not = icmp eq i64 %prol.iter174.next, %xtraiter
  br i1 %prol.iter174.cmp.not, label %for.body64.preheader, label %for.body64.prol, !llvm.loop !35

for.body64.preheader:                             ; preds = %for.body64.prol, %for.body49
  %.ph = phi ptr [ %add.ptr58, %for.body49 ], [ %add.ptr68.prol, %for.body64.prol ]
  %j.1150.ph = phi i64 [ %add39, %for.body49 ], [ %inc72.prol, %for.body64.prol ]
  br label %for.body64

for.body64:                                       ; preds = %for.body64.preheader, %for.body64
  %48 = phi ptr [ %add.ptr68.7, %for.body64 ], [ %.ph, %for.body64.preheader ]
  %j.1150 = phi i64 [ %inc72.7, %for.body64 ], [ %j.1150.ph, %for.body64.preheader ]
  %add.ptr68 = getelementptr inbounds i64, ptr %48, i64 %add4
  %arrayidx70 = getelementptr inbounds ptr, ptr %add.ptr52, i64 %j.1150
  store ptr %add.ptr68, ptr %arrayidx70, align 8, !tbaa !5
  %inc72 = add i64 %j.1150, 1
  %add.ptr68.1 = getelementptr inbounds i64, ptr %add.ptr68, i64 %add4
  %arrayidx70.1 = getelementptr inbounds ptr, ptr %add.ptr52, i64 %inc72
  store ptr %add.ptr68.1, ptr %arrayidx70.1, align 8, !tbaa !5
  %inc72.1 = add i64 %j.1150, 2
  %add.ptr68.2 = getelementptr inbounds i64, ptr %add.ptr68.1, i64 %add4
  %arrayidx70.2 = getelementptr inbounds ptr, ptr %add.ptr52, i64 %inc72.1
  store ptr %add.ptr68.2, ptr %arrayidx70.2, align 8, !tbaa !5
  %inc72.2 = add i64 %j.1150, 3
  %add.ptr68.3 = getelementptr inbounds i64, ptr %add.ptr68.2, i64 %add4
  %arrayidx70.3 = getelementptr inbounds ptr, ptr %add.ptr52, i64 %inc72.2
  store ptr %add.ptr68.3, ptr %arrayidx70.3, align 8, !tbaa !5
  %inc72.3 = add i64 %j.1150, 4
  %add.ptr68.4 = getelementptr inbounds i64, ptr %add.ptr68.3, i64 %add4
  %arrayidx70.4 = getelementptr inbounds ptr, ptr %add.ptr52, i64 %inc72.3
  store ptr %add.ptr68.4, ptr %arrayidx70.4, align 8, !tbaa !5
  %inc72.4 = add i64 %j.1150, 5
  %add.ptr68.5 = getelementptr inbounds i64, ptr %add.ptr68.4, i64 %add4
  %arrayidx70.5 = getelementptr inbounds ptr, ptr %add.ptr52, i64 %inc72.4
  store ptr %add.ptr68.5, ptr %arrayidx70.5, align 8, !tbaa !5
  %inc72.5 = add i64 %j.1150, 6
  %add.ptr68.6 = getelementptr inbounds i64, ptr %add.ptr68.5, i64 %add4
  %arrayidx70.6 = getelementptr inbounds ptr, ptr %add.ptr52, i64 %inc72.5
  store ptr %add.ptr68.6, ptr %arrayidx70.6, align 8, !tbaa !5
  %inc72.6 = add i64 %j.1150, 7
  %add.ptr68.7 = getelementptr inbounds i64, ptr %add.ptr68.6, i64 %add4
  %arrayidx70.7 = getelementptr inbounds ptr, ptr %add.ptr52, i64 %inc72.6
  store ptr %add.ptr68.7, ptr %arrayidx70.7, align 8, !tbaa !5
  %inc72.7 = add i64 %j.1150, 8
  %exitcond157.not.7 = icmp eq i64 %inc72.6, %nch
  br i1 %exitcond157.not.7, label %for.cond62.for.cond47.loopexit_crit_edge.loopexit, label %for.body64, !llvm.loop !40

for.end76:                                        ; preds = %for.body49.us, %for.cond62.for.cond47.loopexit_crit_edge.loopexit, %for.body49.us3.prol.loopexit, %for.body64.prol.loopexit.loopexit.us.1, %for.body49.us3.us.prol.loopexit, %for.body49.us3.us, %for.cond47.preheader.thread13, %for.body49.us.prol.loopexit, %for.cond47.preheader.thread, %for.cond47.preheader
  ret ptr %add.ptr6
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @imatrix3D(i32 noundef %nrl, i32 noundef %nrh, i32 noundef %ncl, i32 noundef %nch, i32 noundef %ndl, i32 noundef %ndh) local_unnamed_addr #3 {
entry:
  %sub = sub nsw i32 %nrh, %nrl
  %sub1 = sub i32 %nch, %ncl
  %add2 = add nsw i32 %sub1, 1
  %sub3 = sub nsw i32 %ndh, %ndl
  %add4 = add nsw i32 %sub3, 1
  %add5 = add nsw i32 %sub, 2
  %conv = sext i32 %add5 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %0) #11
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.26) #11
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %3) #11
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %add = add nsw i32 %sub, 1
  %add.ptr = getelementptr inbounds ptr, ptr %call, i64 1
  %idx.ext = sext i32 %nrl to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr6 = getelementptr inbounds ptr, ptr %add.ptr, i64 %idx.neg
  %mul7 = mul nsw i32 %add2, %add
  %add8 = add nsw i32 %mul7, 1
  %conv9 = sext i32 %add8 to i64
  %mul10 = shl nsw i64 %conv9, 3
  %call11 = tail call noalias ptr @malloc(i64 noundef %mul10) #10
  %arrayidx = getelementptr inbounds ptr, ptr %add.ptr6, i64 %idx.ext
  store ptr %call11, ptr %arrayidx, align 8, !tbaa !5
  %tobool14.not = icmp eq ptr %call11, null
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %5) #11
  %7 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i179 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.27) #11
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %9 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %8) #11
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end16:                                         ; preds = %if.end
  %add.ptr19 = getelementptr inbounds ptr, ptr %call11, i64 1
  %idx.ext22 = sext i32 %ncl to i64
  %idx.neg23 = sub nsw i64 0, %idx.ext22
  %add.ptr24 = getelementptr inbounds ptr, ptr %add.ptr19, i64 %idx.neg23
  store ptr %add.ptr24, ptr %arrayidx, align 8, !tbaa !5
  %mul26 = mul nsw i32 %add4, %mul7
  %add27 = add nsw i32 %mul26, 1
  %conv28 = sext i32 %add27 to i64
  %mul29 = shl nsw i64 %conv28, 2
  %call30 = tail call noalias ptr @malloc(i64 noundef %mul29) #10
  %arrayidx34 = getelementptr inbounds ptr, ptr %add.ptr24, i64 %idx.ext22
  store ptr %call30, ptr %arrayidx34, align 8, !tbaa !5
  %tobool39.not = icmp eq ptr %call30, null
  br i1 %tobool39.not, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end16
  %10 = load ptr, ptr @stderr, align 8, !tbaa !5
  %11 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %10) #11
  %12 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i181 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.28) #11
  %13 = load ptr, ptr @stderr, align 8, !tbaa !5
  %14 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %13) #11
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end41:                                         ; preds = %if.end16
  %add.ptr46 = getelementptr inbounds i32, ptr %call30, i64 1
  %idx.ext51 = sext i32 %ndl to i64
  %idx.neg52 = sub nsw i64 0, %idx.ext51
  %add.ptr53 = getelementptr inbounds i32, ptr %add.ptr46, i64 %idx.neg52
  store ptr %add.ptr53, ptr %arrayidx34, align 8, !tbaa !5
  %cmp.not183.not = icmp sgt i32 %nch, %ncl
  br i1 %cmp.not183.not, label %for.body.lr.ph, label %for.cond68.preheader.thread

for.body.lr.ph:                                   ; preds = %if.end41
  %idx.ext61 = sext i32 %add4 to i64
  %15 = add nsw i64 %idx.ext22, 1
  %16 = add i32 %nch, 1
  %17 = xor i32 %ncl, -1
  %18 = add i32 %17, %nch
  %xtraiter = and i32 %sub1, 7
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.lr.ph, %for.body.prol
  %19 = phi ptr [ %add.ptr62.prol, %for.body.prol ], [ %add.ptr53, %for.body.lr.ph ]
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body.prol ], [ %15, %for.body.lr.ph ]
  %prol.iter = phi i32 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.lr.ph ]
  %add.ptr62.prol = getelementptr inbounds i32, ptr %19, i64 %idx.ext61
  %arrayidx66.prol = getelementptr inbounds ptr, ptr %add.ptr24, i64 %indvars.iv.prol
  store ptr %add.ptr62.prol, ptr %arrayidx66.prol, align 8, !tbaa !5
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1
  %prol.iter.next = add nuw nsw i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !41

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.lr.ph
  %.unr = phi ptr [ %add.ptr53, %for.body.lr.ph ], [ %add.ptr62.prol, %for.body.prol ]
  %indvars.iv.unr = phi i64 [ %15, %for.body.lr.ph ], [ %indvars.iv.next.prol, %for.body.prol ]
  %20 = icmp ult i32 %18, 7
  br i1 %20, label %for.cond68.preheader.thread23, label %for.body

for.cond68.preheader:                             ; preds = %for.body
  %cmp69.not.not188 = icmp sgt i32 %nrh, %nrl
  br i1 %cmp69.not.not188, label %for.body71.lr.ph, label %for.end112

for.cond68.preheader.thread23:                    ; preds = %for.body.prol.loopexit
  %cmp69.not.not18824 = icmp sgt i32 %nrh, %nrl
  br i1 %cmp69.not.not18824, label %for.body71.lr.ph.thread25, label %for.end112

for.body71.lr.ph.thread25:                        ; preds = %for.cond68.preheader.thread23
  %idx.ext7526 = sext i32 %add2 to i64
  %mul8427 = mul nsw i32 %add4, %add2
  %idx.ext8528 = sext i32 %mul8427 to i64
  %21 = add nsw i64 %idx.ext, 1
  %22 = add i32 %nrh, 1
  br label %for.body71.lr.ph.split.us

for.cond68.preheader.thread:                      ; preds = %if.end41
  %cmp69.not.not188219 = icmp sgt i32 %nrh, %nrl
  br i1 %cmp69.not.not188219, label %for.body71.lr.ph.thread, label %for.end112

for.body71.lr.ph.thread:                          ; preds = %for.cond68.preheader.thread
  %idx.ext75220 = sext i32 %add2 to i64
  %mul84221 = mul nsw i32 %add4, %add2
  %idx.ext85222 = sext i32 %mul84221 to i64
  %23 = add nsw i64 %idx.ext, 1
  %24 = add i32 %nrh, 1
  %add.ptr76.us228 = getelementptr inbounds ptr, ptr %add.ptr24, i64 %idx.ext75220
  %arrayidx78.us229 = getelementptr inbounds ptr, ptr %add.ptr6, i64 %23
  store ptr %add.ptr76.us228, ptr %arrayidx78.us229, align 8, !tbaa !5
  %add.ptr86.us231 = getelementptr inbounds i32, ptr %add.ptr53, i64 %idx.ext85222
  %arrayidx90.us232 = getelementptr inbounds ptr, ptr %add.ptr76.us228, i64 %idx.ext22
  store ptr %add.ptr86.us231, ptr %arrayidx90.us232, align 8, !tbaa !5
  %indvars.iv.next195233 = add nsw i64 %idx.ext, 2
  %lftr.wideiv201234 = trunc i64 %indvars.iv.next195233 to i32
  %exitcond202.not235 = icmp eq i32 %24, %lftr.wideiv201234
  br i1 %exitcond202.not235, label %for.end112, label %for.body71.us.for.body71.us_crit_edge.preheader, !llvm.loop !42

for.body71.lr.ph:                                 ; preds = %for.cond68.preheader
  %idx.ext75 = sext i32 %add2 to i64
  %mul84 = mul nsw i32 %add4, %add2
  %idx.ext85 = sext i32 %mul84 to i64
  %25 = add nsw i64 %idx.ext, 1
  %26 = add i32 %nrh, 1
  br i1 %20, label %for.body71.lr.ph.split.us, label %for.body71

for.body71.lr.ph.split.us:                        ; preds = %for.body71.lr.ph.thread25, %for.body71.lr.ph
  %27 = phi i32 [ %22, %for.body71.lr.ph.thread25 ], [ %26, %for.body71.lr.ph ]
  %28 = phi i64 [ %21, %for.body71.lr.ph.thread25 ], [ %25, %for.body71.lr.ph ]
  %idx.ext8530 = phi i64 [ %idx.ext8528, %for.body71.lr.ph.thread25 ], [ %idx.ext85, %for.body71.lr.ph ]
  %idx.ext7529 = phi i64 [ %idx.ext7526, %for.body71.lr.ph.thread25 ], [ %idx.ext75, %for.body71.lr.ph ]
  br i1 %lcmp.mod.not, label %for.body71.lr.ph.split.us.split.us, label %for.body71.us

for.body71.lr.ph.split.us.split.us:               ; preds = %for.body71.lr.ph.split.us
  %add.ptr76.us3.us9 = getelementptr inbounds ptr, ptr %add.ptr24, i64 %idx.ext7529
  %arrayidx78.us4.us10 = getelementptr inbounds ptr, ptr %add.ptr6, i64 %28
  store ptr %add.ptr76.us3.us9, ptr %arrayidx78.us4.us10, align 8, !tbaa !5
  %29 = load ptr, ptr %arrayidx34, align 8, !tbaa !5
  %add.ptr86.us6.us12 = getelementptr inbounds i32, ptr %29, i64 %idx.ext8530
  %arrayidx90.us7.us13 = getelementptr inbounds ptr, ptr %add.ptr76.us3.us9, i64 %idx.ext22
  store ptr %add.ptr86.us6.us12, ptr %arrayidx90.us7.us13, align 8, !tbaa !5
  %indvars.iv.next210.us.us14 = add nsw i64 %idx.ext, 2
  %lftr.wideiv216.us.us15 = trunc i64 %indvars.iv.next210.us.us14 to i32
  %exitcond217.not.us.us16 = icmp eq i32 %27, %lftr.wideiv216.us.us15
  br i1 %exitcond217.not.us.us16, label %for.end112, label %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us.us.preheader, !llvm.loop !42

for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us.us.preheader: ; preds = %for.body71.lr.ph.split.us.split.us
  %30 = sub i32 %27, %nrl
  %31 = add i32 %27, -3
  %xtraiter42 = and i32 %30, 1
  %lcmp.mod.not44 = icmp eq i32 %xtraiter42, 0
  br i1 %lcmp.mod.not44, label %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us.us.prol.loopexit, label %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us.us.prol

for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us.us.prol: ; preds = %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us.us.preheader
  %indvars.iv.next212.us.us17.prol = add nsw i64 %idx.ext, 1
  %arrayidx74.phi.trans.insert.us.us.prol = getelementptr inbounds ptr, ptr %add.ptr6, i64 %indvars.iv.next212.us.us17.prol
  %.pre218.us.us.prol = load ptr, ptr %arrayidx74.phi.trans.insert.us.us.prol, align 8, !tbaa !5
  %add.ptr76.us3.us.prol = getelementptr inbounds ptr, ptr %.pre218.us.us.prol, i64 %idx.ext7529
  %arrayidx78.us4.us.prol = getelementptr inbounds ptr, ptr %add.ptr6, i64 %indvars.iv.next210.us.us14
  store ptr %add.ptr76.us3.us.prol, ptr %arrayidx78.us4.us.prol, align 8, !tbaa !5
  %arrayidx83.us5.us.prol = getelementptr inbounds ptr, ptr %.pre218.us.us.prol, i64 %idx.ext22
  %32 = load ptr, ptr %arrayidx83.us5.us.prol, align 8, !tbaa !5
  %add.ptr86.us6.us.prol = getelementptr inbounds i32, ptr %32, i64 %idx.ext8530
  %arrayidx90.us7.us.prol = getelementptr inbounds ptr, ptr %add.ptr76.us3.us.prol, i64 %idx.ext22
  store ptr %add.ptr86.us6.us.prol, ptr %arrayidx90.us7.us.prol, align 8, !tbaa !5
  %indvars.iv.next210.us.us.prol = add nsw i64 %idx.ext, 3
  br label %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us.us.prol.loopexit

for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us.us.prol.loopexit: ; preds = %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us.us.prol, %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us.us.preheader
  %indvars.iv.next210.us.us18.unr = phi i64 [ %indvars.iv.next210.us.us14, %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us.us.preheader ], [ %indvars.iv.next210.us.us.prol, %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us.us.prol ]
  %indvars.iv.next212.us.us17.in.unr = phi i64 [ %idx.ext, %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us.us.preheader ], [ %indvars.iv.next212.us.us17.prol, %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us.us.prol ]
  %33 = icmp eq i32 %31, %nrl
  br i1 %33, label %for.end112, label %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us.us

for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us.us: ; preds = %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us.us.prol.loopexit, %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us.us
  %indvars.iv.next210.us.us18 = phi i64 [ %indvars.iv.next210.us.us.1, %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us.us ], [ %indvars.iv.next210.us.us18.unr, %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us.us.prol.loopexit ]
  %indvars.iv.next212.us.us17.in = phi i64 [ %indvars.iv.next212.us.us17.1, %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us.us ], [ %indvars.iv.next212.us.us17.in.unr, %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us.us.prol.loopexit ]
  %indvars.iv.next212.us.us17 = add nsw i64 %indvars.iv.next212.us.us17.in, 1
  %arrayidx74.phi.trans.insert.us.us = getelementptr inbounds ptr, ptr %add.ptr6, i64 %indvars.iv.next212.us.us17
  %.pre218.us.us = load ptr, ptr %arrayidx74.phi.trans.insert.us.us, align 8, !tbaa !5
  %add.ptr76.us3.us = getelementptr inbounds ptr, ptr %.pre218.us.us, i64 %idx.ext7529
  %arrayidx78.us4.us = getelementptr inbounds ptr, ptr %add.ptr6, i64 %indvars.iv.next210.us.us18
  store ptr %add.ptr76.us3.us, ptr %arrayidx78.us4.us, align 8, !tbaa !5
  %arrayidx83.us5.us = getelementptr inbounds ptr, ptr %.pre218.us.us, i64 %idx.ext22
  %34 = load ptr, ptr %arrayidx83.us5.us, align 8, !tbaa !5
  %add.ptr86.us6.us = getelementptr inbounds i32, ptr %34, i64 %idx.ext8530
  %arrayidx90.us7.us = getelementptr inbounds ptr, ptr %add.ptr76.us3.us, i64 %idx.ext22
  store ptr %add.ptr86.us6.us, ptr %arrayidx90.us7.us, align 8, !tbaa !5
  %indvars.iv.next210.us.us = add nsw i64 %indvars.iv.next210.us.us18, 1
  %indvars.iv.next212.us.us17.1 = add nsw i64 %indvars.iv.next212.us.us17.in, 2
  %arrayidx74.phi.trans.insert.us.us.1 = getelementptr inbounds ptr, ptr %add.ptr6, i64 %indvars.iv.next212.us.us17.1
  %.pre218.us.us.1 = load ptr, ptr %arrayidx74.phi.trans.insert.us.us.1, align 8, !tbaa !5
  %add.ptr76.us3.us.1 = getelementptr inbounds ptr, ptr %.pre218.us.us.1, i64 %idx.ext7529
  %arrayidx78.us4.us.1 = getelementptr inbounds ptr, ptr %add.ptr6, i64 %indvars.iv.next210.us.us
  store ptr %add.ptr76.us3.us.1, ptr %arrayidx78.us4.us.1, align 8, !tbaa !5
  %arrayidx83.us5.us.1 = getelementptr inbounds ptr, ptr %.pre218.us.us.1, i64 %idx.ext22
  %35 = load ptr, ptr %arrayidx83.us5.us.1, align 8, !tbaa !5
  %add.ptr86.us6.us.1 = getelementptr inbounds i32, ptr %35, i64 %idx.ext8530
  %arrayidx90.us7.us.1 = getelementptr inbounds ptr, ptr %add.ptr76.us3.us.1, i64 %idx.ext22
  store ptr %add.ptr86.us6.us.1, ptr %arrayidx90.us7.us.1, align 8, !tbaa !5
  %indvars.iv.next210.us.us.1 = add nsw i64 %indvars.iv.next210.us.us18, 2
  %lftr.wideiv216.us.us.1 = trunc i64 %indvars.iv.next210.us.us.1 to i32
  %exitcond217.not.us.us.1 = icmp eq i32 %27, %lftr.wideiv216.us.us.1
  br i1 %exitcond217.not.us.us.1, label %for.end112, label %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us.us, !llvm.loop !42

for.body71.us:                                    ; preds = %for.body71.lr.ph.split.us, %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us
  %36 = phi ptr [ %.pre218.us, %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us ], [ %add.ptr24, %for.body71.lr.ph.split.us ]
  %indvars.iv211.us = phi i64 [ %indvars.iv.next212.us, %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us ], [ %idx.ext, %for.body71.lr.ph.split.us ]
  %indvars.iv209.us = phi i64 [ %indvars.iv.next210.us, %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us ], [ %28, %for.body71.lr.ph.split.us ]
  %add.ptr76.us3 = getelementptr inbounds ptr, ptr %36, i64 %idx.ext7529
  %arrayidx78.us4 = getelementptr inbounds ptr, ptr %add.ptr6, i64 %indvars.iv209.us
  store ptr %add.ptr76.us3, ptr %arrayidx78.us4, align 8, !tbaa !5
  %arrayidx83.us5 = getelementptr inbounds ptr, ptr %36, i64 %idx.ext22
  %37 = load ptr, ptr %arrayidx83.us5, align 8, !tbaa !5
  %add.ptr86.us6 = getelementptr inbounds i32, ptr %37, i64 %idx.ext8530
  %arrayidx90.us7 = getelementptr inbounds ptr, ptr %add.ptr76.us3, i64 %idx.ext22
  store ptr %add.ptr86.us6, ptr %arrayidx90.us7, align 8, !tbaa !5
  br label %for.body95.prol.us

for.body95.prol.us:                               ; preds = %for.body71.us, %for.body95.prol.us
  %38 = phi ptr [ %add.ptr102.prol.us, %for.body95.prol.us ], [ %add.ptr86.us6, %for.body71.us ]
  %indvars.iv203.prol.us = phi i64 [ %indvars.iv.next204.prol.us, %for.body95.prol.us ], [ %15, %for.body71.us ]
  %prol.iter244.us = phi i32 [ %prol.iter244.next.us, %for.body95.prol.us ], [ 0, %for.body71.us ]
  %add.ptr102.prol.us = getelementptr inbounds i32, ptr %38, i64 %idx.ext61
  %arrayidx106.prol.us = getelementptr inbounds ptr, ptr %add.ptr76.us3, i64 %indvars.iv203.prol.us
  store ptr %add.ptr102.prol.us, ptr %arrayidx106.prol.us, align 8, !tbaa !5
  %indvars.iv.next204.prol.us = add nsw i64 %indvars.iv203.prol.us, 1
  %prol.iter244.next.us = add nuw nsw i32 %prol.iter244.us, 1
  %prol.iter244.cmp.not.us = icmp eq i32 %prol.iter244.next.us, %xtraiter
  br i1 %prol.iter244.cmp.not.us, label %for.body95.prol.loopexit.loopexit.us, label %for.body95.prol.us, !llvm.loop !43

for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us: ; preds = %for.body95.prol.loopexit.loopexit.us
  %indvars.iv.next212.us = add nsw i64 %indvars.iv211.us, 1
  %arrayidx74.phi.trans.insert.us = getelementptr inbounds ptr, ptr %add.ptr6, i64 %indvars.iv.next212.us
  %.pre218.us = load ptr, ptr %arrayidx74.phi.trans.insert.us, align 8, !tbaa !5
  br label %for.body71.us

for.body95.prol.loopexit.loopexit.us:             ; preds = %for.body95.prol.us
  %indvars.iv.next210.us = add nsw i64 %indvars.iv209.us, 1
  %lftr.wideiv216.us = trunc i64 %indvars.iv.next210.us to i32
  %exitcond217.not.us = icmp eq i32 %27, %lftr.wideiv216.us
  br i1 %exitcond217.not.us, label %for.end112, label %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us, !llvm.loop !42

for.body71.us.for.body71.us_crit_edge.preheader:  ; preds = %for.body71.lr.ph.thread
  %39 = xor i32 %nrl, -1
  %40 = add i32 %39, %nrh
  %41 = add i32 %nrh, -2
  %xtraiter239 = and i32 %40, 1
  %lcmp.mod240.not = icmp eq i32 %xtraiter239, 0
  br i1 %lcmp.mod240.not, label %for.body71.us.for.body71.us_crit_edge.prol.loopexit, label %for.body71.us.for.body71.us_crit_edge.prol

for.body71.us.for.body71.us_crit_edge.prol:       ; preds = %for.body71.us.for.body71.us_crit_edge.preheader
  %add.ptr76.us.prol = getelementptr inbounds ptr, ptr %add.ptr76.us228, i64 %idx.ext75220
  %arrayidx78.us.prol = getelementptr inbounds ptr, ptr %add.ptr6, i64 %indvars.iv.next195233
  store ptr %add.ptr76.us.prol, ptr %arrayidx78.us.prol, align 8, !tbaa !5
  %add.ptr86.us.prol = getelementptr inbounds i32, ptr %add.ptr86.us231, i64 %idx.ext85222
  %arrayidx90.us.prol = getelementptr inbounds ptr, ptr %add.ptr76.us.prol, i64 %idx.ext22
  store ptr %add.ptr86.us.prol, ptr %arrayidx90.us.prol, align 8, !tbaa !5
  %indvars.iv.next195.prol = add nsw i64 %idx.ext, 3
  br label %for.body71.us.for.body71.us_crit_edge.prol.loopexit

for.body71.us.for.body71.us_crit_edge.prol.loopexit: ; preds = %for.body71.us.for.body71.us_crit_edge.prol, %for.body71.us.for.body71.us_crit_edge.preheader
  %indvars.iv.next195237.unr = phi i64 [ %indvars.iv.next195233, %for.body71.us.for.body71.us_crit_edge.preheader ], [ %indvars.iv.next195.prol, %for.body71.us.for.body71.us_crit_edge.prol ]
  %indvars.iv196236.unr = phi i64 [ %idx.ext, %for.body71.us.for.body71.us_crit_edge.preheader ], [ %23, %for.body71.us.for.body71.us_crit_edge.prol ]
  %42 = icmp eq i32 %41, %nrl
  br i1 %42, label %for.end112, label %for.body71.us.for.body71.us_crit_edge

for.body71.us.for.body71.us_crit_edge:            ; preds = %for.body71.us.for.body71.us_crit_edge.prol.loopexit, %for.body71.us.for.body71.us_crit_edge
  %indvars.iv.next195237 = phi i64 [ %indvars.iv.next195.1, %for.body71.us.for.body71.us_crit_edge ], [ %indvars.iv.next195237.unr, %for.body71.us.for.body71.us_crit_edge.prol.loopexit ]
  %indvars.iv196236 = phi i64 [ %indvars.iv.next197.1, %for.body71.us.for.body71.us_crit_edge ], [ %indvars.iv196236.unr, %for.body71.us.for.body71.us_crit_edge.prol.loopexit ]
  %indvars.iv.next197 = add nsw i64 %indvars.iv196236, 1
  %arrayidx74.us.phi.trans.insert = getelementptr inbounds ptr, ptr %add.ptr6, i64 %indvars.iv.next197
  %.pre = load ptr, ptr %arrayidx74.us.phi.trans.insert, align 8, !tbaa !5
  %add.ptr76.us = getelementptr inbounds ptr, ptr %.pre, i64 %idx.ext75220
  %arrayidx78.us = getelementptr inbounds ptr, ptr %add.ptr6, i64 %indvars.iv.next195237
  store ptr %add.ptr76.us, ptr %arrayidx78.us, align 8, !tbaa !5
  %arrayidx83.us = getelementptr inbounds ptr, ptr %.pre, i64 %idx.ext22
  %43 = load ptr, ptr %arrayidx83.us, align 8, !tbaa !5
  %add.ptr86.us = getelementptr inbounds i32, ptr %43, i64 %idx.ext85222
  %arrayidx90.us = getelementptr inbounds ptr, ptr %add.ptr76.us, i64 %idx.ext22
  store ptr %add.ptr86.us, ptr %arrayidx90.us, align 8, !tbaa !5
  %indvars.iv.next195 = add nsw i64 %indvars.iv.next195237, 1
  %indvars.iv.next197.1 = add nsw i64 %indvars.iv196236, 2
  %arrayidx74.us.phi.trans.insert.1 = getelementptr inbounds ptr, ptr %add.ptr6, i64 %indvars.iv.next197.1
  %.pre.1 = load ptr, ptr %arrayidx74.us.phi.trans.insert.1, align 8, !tbaa !5
  %add.ptr76.us.1 = getelementptr inbounds ptr, ptr %.pre.1, i64 %idx.ext75220
  %arrayidx78.us.1 = getelementptr inbounds ptr, ptr %add.ptr6, i64 %indvars.iv.next195
  store ptr %add.ptr76.us.1, ptr %arrayidx78.us.1, align 8, !tbaa !5
  %arrayidx83.us.1 = getelementptr inbounds ptr, ptr %.pre.1, i64 %idx.ext22
  %44 = load ptr, ptr %arrayidx83.us.1, align 8, !tbaa !5
  %add.ptr86.us.1 = getelementptr inbounds i32, ptr %44, i64 %idx.ext85222
  %arrayidx90.us.1 = getelementptr inbounds ptr, ptr %add.ptr76.us.1, i64 %idx.ext22
  store ptr %add.ptr86.us.1, ptr %arrayidx90.us.1, align 8, !tbaa !5
  %indvars.iv.next195.1 = add nsw i64 %indvars.iv.next195237, 2
  %lftr.wideiv201.1 = trunc i64 %indvars.iv.next195.1 to i32
  %exitcond202.not.1 = icmp eq i32 %24, %lftr.wideiv201.1
  br i1 %exitcond202.not.1, label %for.end112, label %for.body71.us.for.body71.us_crit_edge, !llvm.loop !42

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %45 = phi ptr [ %add.ptr62.7, %for.body ], [ %.unr, %for.body.prol.loopexit ]
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %add.ptr62 = getelementptr inbounds i32, ptr %45, i64 %idx.ext61
  %arrayidx66 = getelementptr inbounds ptr, ptr %add.ptr24, i64 %indvars.iv
  store ptr %add.ptr62, ptr %arrayidx66, align 8, !tbaa !5
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %add.ptr62.1 = getelementptr inbounds i32, ptr %add.ptr62, i64 %idx.ext61
  %arrayidx66.1 = getelementptr inbounds ptr, ptr %add.ptr24, i64 %indvars.iv.next
  store ptr %add.ptr62.1, ptr %arrayidx66.1, align 8, !tbaa !5
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %add.ptr62.2 = getelementptr inbounds i32, ptr %add.ptr62.1, i64 %idx.ext61
  %arrayidx66.2 = getelementptr inbounds ptr, ptr %add.ptr24, i64 %indvars.iv.next.1
  store ptr %add.ptr62.2, ptr %arrayidx66.2, align 8, !tbaa !5
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3
  %add.ptr62.3 = getelementptr inbounds i32, ptr %add.ptr62.2, i64 %idx.ext61
  %arrayidx66.3 = getelementptr inbounds ptr, ptr %add.ptr24, i64 %indvars.iv.next.2
  store ptr %add.ptr62.3, ptr %arrayidx66.3, align 8, !tbaa !5
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4
  %add.ptr62.4 = getelementptr inbounds i32, ptr %add.ptr62.3, i64 %idx.ext61
  %arrayidx66.4 = getelementptr inbounds ptr, ptr %add.ptr24, i64 %indvars.iv.next.3
  store ptr %add.ptr62.4, ptr %arrayidx66.4, align 8, !tbaa !5
  %indvars.iv.next.4 = add nsw i64 %indvars.iv, 5
  %add.ptr62.5 = getelementptr inbounds i32, ptr %add.ptr62.4, i64 %idx.ext61
  %arrayidx66.5 = getelementptr inbounds ptr, ptr %add.ptr24, i64 %indvars.iv.next.4
  store ptr %add.ptr62.5, ptr %arrayidx66.5, align 8, !tbaa !5
  %indvars.iv.next.5 = add nsw i64 %indvars.iv, 6
  %add.ptr62.6 = getelementptr inbounds i32, ptr %add.ptr62.5, i64 %idx.ext61
  %arrayidx66.6 = getelementptr inbounds ptr, ptr %add.ptr24, i64 %indvars.iv.next.5
  store ptr %add.ptr62.6, ptr %arrayidx66.6, align 8, !tbaa !5
  %indvars.iv.next.6 = add nsw i64 %indvars.iv, 7
  %add.ptr62.7 = getelementptr inbounds i32, ptr %add.ptr62.6, i64 %idx.ext61
  %arrayidx66.7 = getelementptr inbounds ptr, ptr %add.ptr24, i64 %indvars.iv.next.6
  store ptr %add.ptr62.7, ptr %arrayidx66.7, align 8, !tbaa !5
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, 8
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next.7 to i32
  %exitcond.not.7 = icmp eq i32 %16, %lftr.wideiv.7
  br i1 %exitcond.not.7, label %for.cond68.preheader, label %for.body, !llvm.loop !44

for.cond92.for.cond68.loopexit_crit_edge.loopexit: ; preds = %for.body95
  %indvars.iv.next210 = add nsw i64 %indvars.iv209, 1
  %lftr.wideiv216 = trunc i64 %indvars.iv.next210 to i32
  %exitcond217.not = icmp eq i32 %26, %lftr.wideiv216
  br i1 %exitcond217.not, label %for.end112, label %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge, !llvm.loop !42

for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge: ; preds = %for.cond92.for.cond68.loopexit_crit_edge.loopexit
  %arrayidx74.phi.trans.insert = getelementptr inbounds ptr, ptr %add.ptr6, i64 %indvars.iv.next212
  %.pre218 = load ptr, ptr %arrayidx74.phi.trans.insert, align 8, !tbaa !5
  br label %for.body71

for.body71:                                       ; preds = %for.body71.lr.ph, %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge
  %46 = phi ptr [ %.pre218, %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge ], [ %add.ptr24, %for.body71.lr.ph ]
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge ], [ %idx.ext, %for.body71.lr.ph ]
  %indvars.iv209 = phi i64 [ %indvars.iv.next210, %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge ], [ %25, %for.body71.lr.ph ]
  %indvars.iv.next212 = add nsw i64 %indvars.iv211, 1
  %add.ptr76 = getelementptr inbounds ptr, ptr %46, i64 %idx.ext75
  %arrayidx78 = getelementptr inbounds ptr, ptr %add.ptr6, i64 %indvars.iv209
  store ptr %add.ptr76, ptr %arrayidx78, align 8, !tbaa !5
  %arrayidx83 = getelementptr inbounds ptr, ptr %46, i64 %idx.ext22
  %47 = load ptr, ptr %arrayidx83, align 8, !tbaa !5
  %add.ptr86 = getelementptr inbounds i32, ptr %47, i64 %idx.ext85
  %arrayidx90 = getelementptr inbounds ptr, ptr %add.ptr76, i64 %idx.ext22
  store ptr %add.ptr86, ptr %arrayidx90, align 8, !tbaa !5
  br i1 %lcmp.mod.not, label %for.body95.preheader, label %for.body95.prol

for.body95.prol:                                  ; preds = %for.body71, %for.body95.prol
  %48 = phi ptr [ %add.ptr102.prol, %for.body95.prol ], [ %add.ptr86, %for.body71 ]
  %indvars.iv203.prol = phi i64 [ %indvars.iv.next204.prol, %for.body95.prol ], [ %15, %for.body71 ]
  %prol.iter244 = phi i32 [ %prol.iter244.next, %for.body95.prol ], [ 0, %for.body71 ]
  %add.ptr102.prol = getelementptr inbounds i32, ptr %48, i64 %idx.ext61
  %arrayidx106.prol = getelementptr inbounds ptr, ptr %add.ptr76, i64 %indvars.iv203.prol
  store ptr %add.ptr102.prol, ptr %arrayidx106.prol, align 8, !tbaa !5
  %indvars.iv.next204.prol = add nsw i64 %indvars.iv203.prol, 1
  %prol.iter244.next = add nuw nsw i32 %prol.iter244, 1
  %prol.iter244.cmp.not = icmp eq i32 %prol.iter244.next, %xtraiter
  br i1 %prol.iter244.cmp.not, label %for.body95.preheader, label %for.body95.prol, !llvm.loop !43

for.body95.preheader:                             ; preds = %for.body95.prol, %for.body71
  %.ph = phi ptr [ %add.ptr86, %for.body71 ], [ %add.ptr102.prol, %for.body95.prol ]
  %indvars.iv203.ph = phi i64 [ %15, %for.body71 ], [ %indvars.iv.next204.prol, %for.body95.prol ]
  br label %for.body95

for.body95:                                       ; preds = %for.body95.preheader, %for.body95
  %49 = phi ptr [ %add.ptr102.7, %for.body95 ], [ %.ph, %for.body95.preheader ]
  %indvars.iv203 = phi i64 [ %indvars.iv.next204.7, %for.body95 ], [ %indvars.iv203.ph, %for.body95.preheader ]
  %add.ptr102 = getelementptr inbounds i32, ptr %49, i64 %idx.ext61
  %arrayidx106 = getelementptr inbounds ptr, ptr %add.ptr76, i64 %indvars.iv203
  store ptr %add.ptr102, ptr %arrayidx106, align 8, !tbaa !5
  %indvars.iv.next204 = add nsw i64 %indvars.iv203, 1
  %add.ptr102.1 = getelementptr inbounds i32, ptr %add.ptr102, i64 %idx.ext61
  %arrayidx106.1 = getelementptr inbounds ptr, ptr %add.ptr76, i64 %indvars.iv.next204
  store ptr %add.ptr102.1, ptr %arrayidx106.1, align 8, !tbaa !5
  %indvars.iv.next204.1 = add nsw i64 %indvars.iv203, 2
  %add.ptr102.2 = getelementptr inbounds i32, ptr %add.ptr102.1, i64 %idx.ext61
  %arrayidx106.2 = getelementptr inbounds ptr, ptr %add.ptr76, i64 %indvars.iv.next204.1
  store ptr %add.ptr102.2, ptr %arrayidx106.2, align 8, !tbaa !5
  %indvars.iv.next204.2 = add nsw i64 %indvars.iv203, 3
  %add.ptr102.3 = getelementptr inbounds i32, ptr %add.ptr102.2, i64 %idx.ext61
  %arrayidx106.3 = getelementptr inbounds ptr, ptr %add.ptr76, i64 %indvars.iv.next204.2
  store ptr %add.ptr102.3, ptr %arrayidx106.3, align 8, !tbaa !5
  %indvars.iv.next204.3 = add nsw i64 %indvars.iv203, 4
  %add.ptr102.4 = getelementptr inbounds i32, ptr %add.ptr102.3, i64 %idx.ext61
  %arrayidx106.4 = getelementptr inbounds ptr, ptr %add.ptr76, i64 %indvars.iv.next204.3
  store ptr %add.ptr102.4, ptr %arrayidx106.4, align 8, !tbaa !5
  %indvars.iv.next204.4 = add nsw i64 %indvars.iv203, 5
  %add.ptr102.5 = getelementptr inbounds i32, ptr %add.ptr102.4, i64 %idx.ext61
  %arrayidx106.5 = getelementptr inbounds ptr, ptr %add.ptr76, i64 %indvars.iv.next204.4
  store ptr %add.ptr102.5, ptr %arrayidx106.5, align 8, !tbaa !5
  %indvars.iv.next204.5 = add nsw i64 %indvars.iv203, 6
  %add.ptr102.6 = getelementptr inbounds i32, ptr %add.ptr102.5, i64 %idx.ext61
  %arrayidx106.6 = getelementptr inbounds ptr, ptr %add.ptr76, i64 %indvars.iv.next204.5
  store ptr %add.ptr102.6, ptr %arrayidx106.6, align 8, !tbaa !5
  %indvars.iv.next204.6 = add nsw i64 %indvars.iv203, 7
  %add.ptr102.7 = getelementptr inbounds i32, ptr %add.ptr102.6, i64 %idx.ext61
  %arrayidx106.7 = getelementptr inbounds ptr, ptr %add.ptr76, i64 %indvars.iv.next204.6
  store ptr %add.ptr102.7, ptr %arrayidx106.7, align 8, !tbaa !5
  %indvars.iv.next204.7 = add nsw i64 %indvars.iv203, 8
  %lftr.wideiv207.7 = trunc i64 %indvars.iv.next204.7 to i32
  %exitcond208.not.7 = icmp eq i32 %16, %lftr.wideiv207.7
  br i1 %exitcond208.not.7, label %for.cond92.for.cond68.loopexit_crit_edge.loopexit, label %for.body95, !llvm.loop !45

for.end112:                                       ; preds = %for.body71.us.for.body71.us_crit_edge, %for.cond92.for.cond68.loopexit_crit_edge.loopexit, %for.body95.prol.loopexit.loopexit.us, %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us.us.prol.loopexit, %for.cond92.for.cond68.loopexit_crit_edge.for.body71_crit_edge.us.us, %for.cond68.preheader.thread23, %for.body71.lr.ph.split.us.split.us, %for.body71.us.for.body71.us_crit_edge.prol.loopexit, %for.body71.lr.ph.thread, %for.cond68.preheader.thread, %for.cond68.preheader
  ret ptr %add.ptr6
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_vector(ptr nocapture noundef %v, i64 noundef %nl, i64 noundef %nh) local_unnamed_addr #5 {
entry:
  %add.ptr = getelementptr inbounds float, ptr %v, i64 %nl
  %add.ptr1 = getelementptr inbounds float, ptr %add.ptr, i64 -1
  tail call void @free(ptr noundef nonnull %add.ptr1) #12
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_ivector(ptr nocapture noundef %v, i64 noundef %nl, i64 noundef %nh) local_unnamed_addr #5 {
entry:
  %add.ptr = getelementptr inbounds i32, ptr %v, i64 %nl
  %add.ptr1 = getelementptr inbounds i32, ptr %add.ptr, i64 -1
  tail call void @free(ptr noundef nonnull %add.ptr1) #12
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_cvector(ptr nocapture noundef %v, i64 noundef %nl, i64 noundef %nh) local_unnamed_addr #5 {
entry:
  %add.ptr = getelementptr inbounds i8, ptr %v, i64 %nl
  %add.ptr1 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  tail call void @free(ptr noundef nonnull %add.ptr1) #12
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_lvector(ptr nocapture noundef %v, i64 noundef %nl, i64 noundef %nh) local_unnamed_addr #5 {
entry:
  %add.ptr = getelementptr inbounds i64, ptr %v, i64 %nl
  %add.ptr1 = getelementptr inbounds i64, ptr %add.ptr, i64 -1
  tail call void @free(ptr noundef nonnull %add.ptr1) #12
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_dvector(ptr nocapture noundef %v, i64 noundef %nl, i64 noundef %nh) local_unnamed_addr #5 {
entry:
  %add.ptr = getelementptr inbounds double, ptr %v, i64 %nl
  %add.ptr1 = getelementptr inbounds double, ptr %add.ptr, i64 -1
  tail call void @free(ptr noundef nonnull %add.ptr1) #12
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_matrix(ptr nocapture noundef %m, i64 noundef %nrl, i64 noundef %nrh, i64 noundef %ncl, i64 noundef %nch) local_unnamed_addr #5 {
entry:
  %arrayidx = getelementptr inbounds ptr, ptr %m, i64 %nrl
  %0 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds float, ptr %0, i64 %ncl
  %add.ptr1 = getelementptr inbounds float, ptr %add.ptr, i64 -1
  tail call void @free(ptr noundef nonnull %add.ptr1) #12
  %add.ptr3 = getelementptr inbounds ptr, ptr %arrayidx, i64 -1
  tail call void @free(ptr noundef nonnull %add.ptr3) #12
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_dmatrix(ptr nocapture noundef %m, i64 noundef %nrl, i64 noundef %nrh, i64 noundef %ncl, i64 noundef %nch) local_unnamed_addr #5 {
entry:
  %arrayidx = getelementptr inbounds ptr, ptr %m, i64 %nrl
  %0 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds double, ptr %0, i64 %ncl
  %add.ptr1 = getelementptr inbounds double, ptr %add.ptr, i64 -1
  tail call void @free(ptr noundef nonnull %add.ptr1) #12
  %add.ptr3 = getelementptr inbounds ptr, ptr %arrayidx, i64 -1
  tail call void @free(ptr noundef nonnull %add.ptr3) #12
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_imatrix(ptr nocapture noundef %m, i64 noundef %nrl, i64 noundef %nrh, i64 noundef %ncl, i64 noundef %nch) local_unnamed_addr #5 {
entry:
  %arrayidx = getelementptr inbounds ptr, ptr %m, i64 %nrl
  %0 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i32, ptr %0, i64 %ncl
  %add.ptr1 = getelementptr inbounds i32, ptr %add.ptr, i64 -1
  tail call void @free(ptr noundef nonnull %add.ptr1) #12
  %add.ptr3 = getelementptr inbounds ptr, ptr %arrayidx, i64 -1
  tail call void @free(ptr noundef nonnull %add.ptr3) #12
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_cmatrix(ptr nocapture noundef %m, i64 noundef %nrl, i64 noundef %nrh, i64 noundef %ncl, i64 noundef %nch) local_unnamed_addr #5 {
entry:
  %arrayidx = getelementptr inbounds ptr, ptr %m, i64 %nrl
  %0 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %ncl
  %add.ptr1 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  tail call void @free(ptr noundef nonnull %add.ptr1) #12
  %add.ptr3 = getelementptr inbounds ptr, ptr %arrayidx, i64 -1
  tail call void @free(ptr noundef nonnull %add.ptr3) #12
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_lmatrix(ptr nocapture noundef %m, i64 noundef %nrl, i64 noundef %nrh, i64 noundef %ncl, i64 noundef %nch) local_unnamed_addr #5 {
entry:
  %arrayidx = getelementptr inbounds ptr, ptr %m, i64 %nrl
  %0 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i64, ptr %0, i64 %ncl
  %add.ptr1 = getelementptr inbounds i64, ptr %add.ptr, i64 -1
  tail call void @free(ptr noundef nonnull %add.ptr1) #12
  %add.ptr3 = getelementptr inbounds ptr, ptr %arrayidx, i64 -1
  tail call void @free(ptr noundef nonnull %add.ptr3) #12
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_submatrix(ptr nocapture noundef %b, i64 noundef %nrl, i64 noundef %nrh, i64 noundef %ncl, i64 noundef %nch) local_unnamed_addr #5 {
entry:
  %add.ptr = getelementptr inbounds ptr, ptr %b, i64 %nrl
  %add.ptr1 = getelementptr inbounds ptr, ptr %add.ptr, i64 -1
  tail call void @free(ptr noundef nonnull %add.ptr1) #12
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_convert_matrix(ptr nocapture noundef %b, i64 noundef %nrl, i64 noundef %nrh, i64 noundef %ncl, i64 noundef %nch) local_unnamed_addr #5 {
entry:
  %add.ptr = getelementptr inbounds ptr, ptr %b, i64 %nrl
  %add.ptr1 = getelementptr inbounds ptr, ptr %add.ptr, i64 -1
  tail call void @free(ptr noundef nonnull %add.ptr1) #12
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_f3tensor(ptr nocapture noundef %t, i64 noundef %nrl, i64 noundef %nrh, i64 noundef %ncl, i64 noundef %nch, i64 noundef %ndl, i64 noundef %ndh) local_unnamed_addr #5 {
entry:
  %arrayidx = getelementptr inbounds ptr, ptr %t, i64 %nrl
  %0 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %arrayidx1 = getelementptr inbounds ptr, ptr %0, i64 %ncl
  %1 = load ptr, ptr %arrayidx1, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds float, ptr %1, i64 %ndl
  %add.ptr2 = getelementptr inbounds float, ptr %add.ptr, i64 -1
  tail call void @free(ptr noundef nonnull %add.ptr2) #12
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %add.ptr4 = getelementptr inbounds ptr, ptr %2, i64 %ncl
  %add.ptr5 = getelementptr inbounds ptr, ptr %add.ptr4, i64 -1
  tail call void @free(ptr noundef nonnull %add.ptr5) #12
  %add.ptr7 = getelementptr inbounds ptr, ptr %arrayidx, i64 -1
  tail call void @free(ptr noundef nonnull %add.ptr7) #12
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_lmatrix3D(ptr nocapture noundef %t, i64 noundef %nrl, i64 noundef %nrh, i64 noundef %ncl, i64 noundef %nch, i64 noundef %ndl, i64 noundef %ndh) local_unnamed_addr #5 {
entry:
  %arrayidx = getelementptr inbounds ptr, ptr %t, i64 %nrl
  %0 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %arrayidx1 = getelementptr inbounds ptr, ptr %0, i64 %ncl
  %1 = load ptr, ptr %arrayidx1, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i64, ptr %1, i64 %ndl
  %add.ptr2 = getelementptr inbounds i64, ptr %add.ptr, i64 -1
  tail call void @free(ptr noundef nonnull %add.ptr2) #12
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %add.ptr4 = getelementptr inbounds ptr, ptr %2, i64 %ncl
  %add.ptr5 = getelementptr inbounds ptr, ptr %add.ptr4, i64 -1
  tail call void @free(ptr noundef nonnull %add.ptr5) #12
  %add.ptr7 = getelementptr inbounds ptr, ptr %arrayidx, i64 -1
  tail call void @free(ptr noundef nonnull %add.ptr7) #12
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_imatrix3D(ptr nocapture noundef %t, i32 noundef %nrl, i32 noundef %nrh, i32 noundef %ncl, i32 noundef %nch, i32 noundef %ndl, i32 noundef %ndh) local_unnamed_addr #5 {
entry:
  %idxprom = sext i32 %nrl to i64
  %arrayidx = getelementptr inbounds ptr, ptr %t, i64 %idxprom
  %0 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %idxprom1 = sext i32 %ncl to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %0, i64 %idxprom1
  %1 = load ptr, ptr %arrayidx2, align 8, !tbaa !5
  %idx.ext = sext i32 %ndl to i64
  %add.ptr = getelementptr inbounds i32, ptr %1, i64 %idx.ext
  %add.ptr3 = getelementptr inbounds i32, ptr %add.ptr, i64 -1
  tail call void @free(ptr noundef nonnull %add.ptr3) #12
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %add.ptr7 = getelementptr inbounds ptr, ptr %2, i64 %idxprom1
  %add.ptr8 = getelementptr inbounds ptr, ptr %add.ptr7, i64 -1
  tail call void @free(ptr noundef nonnull %add.ptr8) #12
  %add.ptr11 = getelementptr inbounds ptr, ptr %arrayidx, i64 -1
  tail call void @free(ptr noundef nonnull %add.ptr11) #12
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { cold }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind }

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
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12, !22}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = distinct !{!23, !12, !24, !22}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, !10}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !10}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !10}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !10}
!44 = distinct !{!44, !12}
!45 = distinct !{!45, !12}
