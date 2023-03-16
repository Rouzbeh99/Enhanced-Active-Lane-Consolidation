; ModuleID = 'dl.c'
source_filename = "dl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dl_el_s = type { ptr, ptr }
%struct.dl_s = type { ptr, ptr, i32 }

@str = private unnamed_addr constant [16 x i8] c"Out of memory!!\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noalias ptr @dl_alloc() local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %call, i8 0, i64 20, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret ptr %call
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @dl_delete(ptr nocapture noundef %dl, ptr noundef %el) local_unnamed_addr #3 {
entry:
  %0 = load ptr, ptr %dl, align 8, !tbaa !5
  %cmp = icmp eq ptr %0, %el
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.dl_el_s, ptr %el, i64 0, i32 1
  %1 = load ptr, ptr %next, align 8, !tbaa !11
  store ptr %1, ptr %dl, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %last = getelementptr inbounds %struct.dl_s, ptr %dl, i64 0, i32 1
  %2 = load ptr, ptr %last, align 8, !tbaa !13
  %cmp2 = icmp eq ptr %2, %el
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %el, align 8, !tbaa !14
  store ptr %3, ptr %last, align 8, !tbaa !13
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %next6 = getelementptr inbounds %struct.dl_el_s, ptr %el, i64 0, i32 1
  %4 = load ptr, ptr %next6, align 8, !tbaa !11
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end11, label %if.then7

if.then7:                                         ; preds = %if.end5
  %5 = load ptr, ptr %el, align 8, !tbaa !14
  store ptr %5, ptr %4, align 8, !tbaa !14
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end5
  %6 = load ptr, ptr %el, align 8, !tbaa !14
  %tobool13.not = icmp eq ptr %6, null
  br i1 %tobool13.not, label %if.end18, label %if.then14

if.then14:                                        ; preds = %if.end11
  %next17 = getelementptr inbounds %struct.dl_el_s, ptr %6, i64 0, i32 1
  store ptr %4, ptr %next17, align 8, !tbaa !11
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end11
  tail call void @free(ptr noundef nonnull %el) #10
  %count = getelementptr inbounds %struct.dl_s, ptr %dl, i64 0, i32 2
  %7 = load i32, ptr %count, align 8, !tbaa !15
  %dec = add i32 %7, -1
  store i32 %dec, ptr %count, align 8, !tbaa !15
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @dl_clear(ptr nocapture noundef %dl) local_unnamed_addr #5 {
entry:
  %count = getelementptr inbounds %struct.dl_s, ptr %dl, i64 0, i32 2
  %0 = load i32, ptr %count, align 8, !tbaa !15
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dl, align 8, !tbaa !5
  %tobool.not10 = icmp eq ptr %1, null
  br i1 %tobool.not10, label %if.end, label %for.body

for.body:                                         ; preds = %if.then, %for.body
  %el.011 = phi ptr [ %2, %for.body ], [ %1, %if.then ]
  %next1 = getelementptr inbounds %struct.dl_el_s, ptr %el.011, i64 0, i32 1
  %2 = load ptr, ptr %next1, align 8, !tbaa !11
  tail call void @free(ptr noundef nonnull %el.011) #10
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end, label %for.body, !llvm.loop !16

if.end:                                           ; preds = %for.body, %if.then, %entry
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %dl, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @dl_concat(ptr nocapture noundef %first_list, ptr nocapture noundef %second_list) local_unnamed_addr #3 {
entry:
  %count = getelementptr inbounds %struct.dl_s, ptr %first_list, i64 0, i32 2
  %0 = load i32, ptr %count, align 8, !tbaa !15
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %first_list, ptr noundef nonnull align 8 dereferenceable(24) %second_list, i64 24, i1 false), !tbaa.struct !18
  br label %if.end10

if.else:                                          ; preds = %entry
  %count1 = getelementptr inbounds %struct.dl_s, ptr %second_list, i64 0, i32 2
  %1 = load i32, ptr %count1, align 8, !tbaa !15
  %cmp2.not = icmp eq i32 %1, 0
  br i1 %cmp2.not, label %if.end10, label %if.then3

if.then3:                                         ; preds = %if.else
  %2 = load ptr, ptr %second_list, align 8, !tbaa !5
  %last = getelementptr inbounds %struct.dl_s, ptr %first_list, i64 0, i32 1
  %3 = load ptr, ptr %last, align 8, !tbaa !13
  %next = getelementptr inbounds %struct.dl_el_s, ptr %3, i64 0, i32 1
  store ptr %2, ptr %next, align 8, !tbaa !11
  store ptr %3, ptr %2, align 8, !tbaa !14
  %last6 = getelementptr inbounds %struct.dl_s, ptr %second_list, i64 0, i32 1
  %4 = load ptr, ptr %last6, align 8, !tbaa !13
  store ptr %4, ptr %last, align 8, !tbaa !13
  %add = add i32 %1, %0
  store i32 %add, ptr %count, align 8, !tbaa !15
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then3, %if.then
  tail call void @free(ptr noundef nonnull %second_list) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local void @dl_sort(ptr nocapture noundef %dl, i64 noundef %el_size, ptr noundef %compar) local_unnamed_addr #5 {
entry:
  %first_list = alloca %struct.dl_s, align 8
  %second_list = alloca %struct.dl_s, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %first_list) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %second_list) #10
  %count = getelementptr inbounds %struct.dl_s, ptr %dl, i64 0, i32 2
  %0 = load i32, ptr %count, align 8, !tbaa !15
  %cmp = icmp ult i32 %0, 26
  br i1 %cmp, label %if.then, label %for.body.preheader

if.then:                                          ; preds = %entry
  %cmp.i = icmp ult i32 %0, 2
  br i1 %cmp.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %if.then
  %call.i = tail call noalias ptr @malloc(i64 noundef %el_size) #9
  %last.i = getelementptr inbounds %struct.dl_s, ptr %dl, i64 0, i32 1
  %curr.036.i = load ptr, ptr %dl, align 8, !tbaa !19
  %1 = load ptr, ptr %last.i, align 8, !tbaa !13
  %cmp1.not37.i = icmp eq ptr %curr.036.i, %1
  br i1 %cmp1.not37.i, label %for.end12.i, label %for.body.i

for.body.i:                                       ; preds = %if.end.i, %for.inc11.i
  %2 = phi ptr [ %4, %for.inc11.i ], [ %1, %if.end.i ]
  %curr.038.i = phi ptr [ %curr.0.i, %for.inc11.i ], [ %curr.036.i, %if.end.i ]
  %add.ptr.i = getelementptr inbounds %struct.dl_el_s, ptr %curr.038.i, i64 1
  %cmp4.not34.i = icmp eq ptr %2, %curr.038.i
  br i1 %cmp4.not34.i, label %for.inc11.i, label %for.body5.i

for.body5.i:                                      ; preds = %for.body.i, %for.inc.i
  %srch.035.i = phi ptr [ %3, %for.inc.i ], [ %2, %for.body.i ]
  %add.ptr6.i = getelementptr inbounds %struct.dl_el_s, ptr %srch.035.i, i64 1
  %call7.i = tail call i32 %compar(ptr noundef nonnull %add.ptr.i, ptr noundef nonnull %add.ptr6.i) #10
  %cmp8.i = icmp sgt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.then9.i, label %for.inc.i

if.then9.i:                                       ; preds = %for.body5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %call.i, ptr nonnull align 1 %add.ptr.i, i64 %el_size, i1 false) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr.i, ptr nonnull align 1 %add.ptr6.i, i64 %el_size, i1 false) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr6.i, ptr align 1 %call.i, i64 %el_size, i1 false) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then9.i, %for.body5.i
  %3 = load ptr, ptr %srch.035.i, align 8, !tbaa !14
  %cmp4.not.i = icmp eq ptr %3, %curr.038.i
  br i1 %cmp4.not.i, label %for.inc11.loopexit.i, label %for.body5.i, !llvm.loop !21

for.inc11.loopexit.i:                             ; preds = %for.inc.i
  %.pre.i = load ptr, ptr %last.i, align 8, !tbaa !13
  br label %for.inc11.i

for.inc11.i:                                      ; preds = %for.inc11.loopexit.i, %for.body.i
  %4 = phi ptr [ %.pre.i, %for.inc11.loopexit.i ], [ %2, %for.body.i ]
  %next.i = getelementptr inbounds %struct.dl_el_s, ptr %curr.038.i, i64 0, i32 1
  %curr.0.i = load ptr, ptr %next.i, align 8, !tbaa !19
  %cmp1.not.i = icmp eq ptr %curr.0.i, %4
  br i1 %cmp1.not.i, label %for.end12.i, label %for.body.i, !llvm.loop !22

for.end12.i:                                      ; preds = %for.inc11.i, %if.end.i
  tail call void @free(ptr noundef %call.i) #10
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %div112 = lshr i32 %0, 1
  %el.0115 = load ptr, ptr %dl, align 8, !tbaa !19
  %5 = add nsw i32 %div112, -1
  %xtraiter = and i32 %div112, 7
  %6 = icmp ult i32 %5, 7
  br i1 %6, label %for.end.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i32 %div112, 2147483640
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %el.0118 = phi ptr [ %el.0115, %for.body.preheader.new ], [ %el.0.7, %for.body ]
  %niter = phi i32 [ 0, %for.body.preheader.new ], [ %niter.next.7, %for.body ]
  %next = getelementptr inbounds %struct.dl_el_s, ptr %el.0118, i64 0, i32 1
  %el.0 = load ptr, ptr %next, align 8, !tbaa !19
  %next.1 = getelementptr inbounds %struct.dl_el_s, ptr %el.0, i64 0, i32 1
  %el.0.1 = load ptr, ptr %next.1, align 8, !tbaa !19
  %next.2 = getelementptr inbounds %struct.dl_el_s, ptr %el.0.1, i64 0, i32 1
  %el.0.2 = load ptr, ptr %next.2, align 8, !tbaa !19
  %next.3 = getelementptr inbounds %struct.dl_el_s, ptr %el.0.2, i64 0, i32 1
  %el.0.3 = load ptr, ptr %next.3, align 8, !tbaa !19
  %next.4 = getelementptr inbounds %struct.dl_el_s, ptr %el.0.3, i64 0, i32 1
  %el.0.4 = load ptr, ptr %next.4, align 8, !tbaa !19
  %next.5 = getelementptr inbounds %struct.dl_el_s, ptr %el.0.4, i64 0, i32 1
  %el.0.5 = load ptr, ptr %next.5, align 8, !tbaa !19
  %next.6 = getelementptr inbounds %struct.dl_el_s, ptr %el.0.5, i64 0, i32 1
  %el.0.6 = load ptr, ptr %next.6, align 8, !tbaa !19
  %next.7 = getelementptr inbounds %struct.dl_el_s, ptr %el.0.6, i64 0, i32 1
  %el.0.7 = load ptr, ptr %next.7, align 8, !tbaa !19
  %niter.next.7 = add nuw nsw i32 %niter, 8
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %for.end.unr-lcssa, label %for.body, !llvm.loop !23

for.end.unr-lcssa:                                ; preds = %for.body, %for.body.preheader
  %el.0.lcssa.ph = phi ptr [ undef, %for.body.preheader ], [ %el.0.7, %for.body ]
  %el.0118.unr = phi ptr [ %el.0115, %for.body.preheader ], [ %el.0.7, %for.body ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.unr-lcssa, %for.body.epil
  %el.0118.epil = phi ptr [ %el.0.epil, %for.body.epil ], [ %el.0118.unr, %for.end.unr-lcssa ]
  %epil.iter = phi i32 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.unr-lcssa ]
  %next.epil = getelementptr inbounds %struct.dl_el_s, ptr %el.0118.epil, i64 0, i32 1
  %el.0.epil = load ptr, ptr %next.epil, align 8, !tbaa !19
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !24

for.end:                                          ; preds = %for.body.epil, %for.end.unr-lcssa
  %el.0.lcssa = phi ptr [ %el.0.lcssa.ph, %for.end.unr-lcssa ], [ %el.0.epil, %for.body.epil ]
  store ptr %el.0115, ptr %first_list, align 8, !tbaa !5
  %7 = load ptr, ptr %el.0.lcssa, align 8, !tbaa !14
  %last = getelementptr inbounds %struct.dl_s, ptr %first_list, i64 0, i32 1
  store ptr %7, ptr %last, align 8, !tbaa !13
  %count5 = getelementptr inbounds %struct.dl_s, ptr %first_list, i64 0, i32 2
  store i32 %div112, ptr %count5, align 8, !tbaa !15
  %next7 = getelementptr inbounds %struct.dl_el_s, ptr %7, i64 0, i32 1
  store ptr null, ptr %next7, align 8, !tbaa !11
  store ptr %el.0.lcssa, ptr %second_list, align 8, !tbaa !5
  %last9 = getelementptr inbounds %struct.dl_s, ptr %dl, i64 0, i32 1
  %8 = load ptr, ptr %last9, align 8, !tbaa !13
  %last10 = getelementptr inbounds %struct.dl_s, ptr %second_list, i64 0, i32 1
  store ptr %8, ptr %last10, align 8, !tbaa !13
  %sub = sub i32 %0, %div112
  %count12 = getelementptr inbounds %struct.dl_s, ptr %second_list, i64 0, i32 2
  store i32 %sub, ptr %count12, align 8, !tbaa !15
  store ptr null, ptr %el.0.lcssa, align 8, !tbaa !14
  call void @dl_sort(ptr noundef nonnull %first_list, i64 noundef %el_size, ptr noundef %compar)
  call void @dl_sort(ptr noundef nonnull %second_list, i64 noundef %el_size, ptr noundef %compar)
  %9 = load ptr, ptr %first_list, align 8, !tbaa !5
  %10 = load ptr, ptr %second_list, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.dl_el_s, ptr %9, i64 1
  %add.ptr17 = getelementptr inbounds %struct.dl_el_s, ptr %10, i64 1
  %call = tail call i32 %compar(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr17) #10
  %cmp18 = icmp slt i32 %call, 1
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %for.end
  store ptr %9, ptr %dl, align 8, !tbaa !5
  %next21 = getelementptr inbounds %struct.dl_el_s, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %next21, align 8, !tbaa !11
  br label %while.cond.preheader

if.else:                                          ; preds = %for.end
  store ptr %10, ptr %dl, align 8, !tbaa !5
  %next23 = getelementptr inbounds %struct.dl_el_s, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %next23, align 8, !tbaa !11
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.else, %if.then19
  %first_head.1.ph = phi ptr [ %9, %if.else ], [ %11, %if.then19 ]
  %second_head.1.ph = phi ptr [ %12, %if.else ], [ %10, %if.then19 ]
  %el.2.ph = phi ptr [ %10, %if.else ], [ %9, %if.then19 ]
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.preheader, %if.then29
  %first_head.1.ph130 = phi ptr [ %first_head.1.ph, %while.cond.preheader ], [ %13, %if.then29 ]
  %second_head.1.ph131 = phi ptr [ %second_head.1.ph, %while.cond.preheader ], [ %second_head.1, %if.then29 ]
  %el.2.ph132 = phi ptr [ %el.2.ph, %while.cond.preheader ], [ %first_head.1.ph130, %if.then29 ]
  %add.ptr25 = getelementptr inbounds %struct.dl_el_s, ptr %first_head.1.ph130, i64 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.else39
  %second_head.1 = phi ptr [ %14, %if.else39 ], [ %second_head.1.ph131, %while.cond.outer ]
  %el.2 = phi ptr [ %second_head.1, %if.else39 ], [ %el.2.ph132, %while.cond.outer ]
  %add.ptr26 = getelementptr inbounds %struct.dl_el_s, ptr %second_head.1, i64 1
  %call27 = tail call i32 %compar(ptr noundef nonnull %add.ptr25, ptr noundef nonnull %add.ptr26) #10
  %cmp28 = icmp slt i32 %call27, 1
  %next30 = getelementptr inbounds %struct.dl_el_s, ptr %el.2, i64 0, i32 1
  br i1 %cmp28, label %if.then29, label %if.else39

if.then29:                                        ; preds = %while.cond
  store ptr %first_head.1.ph130, ptr %next30, align 8, !tbaa !11
  store ptr %el.2, ptr %first_head.1.ph130, align 8, !tbaa !14
  %next32 = getelementptr inbounds %struct.dl_el_s, ptr %first_head.1.ph130, i64 0, i32 1
  %13 = load ptr, ptr %next32, align 8, !tbaa !11
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.then33, label %while.cond.outer

if.then33:                                        ; preds = %if.then29
  %next32.le = getelementptr inbounds %struct.dl_el_s, ptr %first_head.1.ph130, i64 0, i32 1
  store ptr %second_head.1, ptr %next32.le, align 8, !tbaa !11
  store ptr %first_head.1.ph130, ptr %second_head.1, align 8, !tbaa !14
  br label %while.end

if.else39:                                        ; preds = %while.cond
  store ptr %second_head.1, ptr %next30, align 8, !tbaa !11
  store ptr %el.2, ptr %second_head.1, align 8, !tbaa !14
  %next42 = getelementptr inbounds %struct.dl_el_s, ptr %second_head.1, i64 0, i32 1
  %14 = load ptr, ptr %next42, align 8, !tbaa !11
  %tobool43.not = icmp eq ptr %14, null
  br i1 %tobool43.not, label %if.then44, label %while.cond

if.then44:                                        ; preds = %if.else39
  %next42.le = getelementptr inbounds %struct.dl_el_s, ptr %second_head.1, i64 0, i32 1
  store ptr %first_head.1.ph130, ptr %next42.le, align 8, !tbaa !11
  store ptr %second_head.1, ptr %first_head.1.ph130, align 8, !tbaa !14
  br label %while.end

while.end:                                        ; preds = %if.then44, %if.then33
  %last.sink = phi ptr [ %last, %if.then44 ], [ %last10, %if.then33 ]
  %15 = load ptr, ptr %last.sink, align 8, !tbaa !13
  store ptr %15, ptr %last9, align 8, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %for.end12.i, %if.then, %while.end
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %second_list) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %first_list) #10
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { nofree nounwind }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !7, i64 8, !10, i64 16}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!12, !7, i64 8}
!12 = !{!"dl_el_s", !7, i64 0, !7, i64 8}
!13 = !{!6, !7, i64 8}
!14 = !{!12, !7, i64 0}
!15 = !{!6, !10, i64 16}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{i64 0, i64 8, !19, i64 8, i64 8, !19, i64 16, i64 4, !20}
!19 = !{!7, !7, i64 0}
!20 = !{!10, !10, i64 0}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
