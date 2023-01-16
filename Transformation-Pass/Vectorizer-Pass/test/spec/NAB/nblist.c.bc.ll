; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/544.nab_r/llvm-ir/544.nab_r_bc/src/nblist.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/544.nab_r/src/nblist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kdnode = type { i32, ptr, ptr }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [40 x i8] c"Error allocate kdnode array in nbtree!\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @nblist(ptr nocapture noundef %lpears, ptr nocapture noundef %upears, ptr nocapture noundef %pearlist, ptr noundef %x, i32 noundef %context_PxQ, i32 noundef %derivs, double noundef %cutoff, i32 noundef %natom, i32 noundef %dim, ptr noundef %frozen) local_unnamed_addr #0 !dbg !22 {
entry:
  %locnt = alloca i32, align 4
  %upcnt = alloca i32, align 4
  %kdptr = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %lpears, metadata !31, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata ptr %upears, metadata !32, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata ptr %pearlist, metadata !33, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata ptr %x, metadata !34, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 %context_PxQ, metadata !35, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 %derivs, metadata !36, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata double %cutoff, metadata !37, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 %natom, metadata !38, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 %dim, metadata !39, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata ptr %frozen, metadata !40, metadata !DIExpression()), !dbg !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %locnt) #12, !dbg !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %upcnt) #12, !dbg !62
  call void @llvm.dbg.declare(metadata ptr undef, metadata !46, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata ptr undef, metadata !47, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.value(metadata ptr null, metadata !52, metadata !DIExpression()), !dbg !61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %kdptr) #12, !dbg !65
  %mul = fmul double %cutoff, %cutoff, !dbg !66
  call void @llvm.dbg.value(metadata double %mul, metadata !57, metadata !DIExpression()), !dbg !61
  %call = tail call i32 @get_blocksize() #12, !dbg !67
  call void @llvm.dbg.value(metadata i32 %call, metadata !48, metadata !DIExpression()), !dbg !61
  %conv = sext i32 %natom to i64, !dbg !68
  %mul1 = mul nsw i64 %conv, 24, !dbg !70
  %call2 = tail call noalias ptr @malloc(i64 noundef %mul1) #13, !dbg !71
  call void @llvm.dbg.value(metadata ptr %call2, metadata !58, metadata !DIExpression()), !dbg !61
  %cmp = icmp eq ptr %call2, null, !dbg !72
  br i1 %cmp, label %if.then, label %if.end, !dbg !73

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !74, !tbaa !76
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 39, i64 1, ptr %0) #14, !dbg !80
  tail call void @exit(i32 noundef 1) #15, !dbg !81
  unreachable, !dbg !81

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @ivector(i32 noundef 0, i32 noundef %natom) #12, !dbg !82
  call void @llvm.dbg.value(metadata ptr %call5, metadata !49, metadata !DIExpression()), !dbg !61
  %call6 = tail call ptr @ivector(i32 noundef 0, i32 noundef %natom) #12, !dbg !83
  call void @llvm.dbg.value(metadata ptr %call6, metadata !50, metadata !DIExpression()), !dbg !61
  %call7 = tail call ptr @ivector(i32 noundef 0, i32 noundef %natom) #12, !dbg !84
  call void @llvm.dbg.value(metadata ptr %call7, metadata !51, metadata !DIExpression()), !dbg !61
  %call8 = tail call ptr @ivector(i32 noundef 0, i32 noundef %natom) #12, !dbg !85
  call void @llvm.dbg.value(metadata ptr %call8, metadata !54, metadata !DIExpression()), !dbg !61
  %cmp9 = icmp eq i32 %dim, 4, !dbg !86
  %call12 = tail call ptr @ivector(i32 noundef 0, i32 noundef %natom) #12, !dbg !61
  call void @llvm.dbg.value(metadata ptr %call12, metadata !52, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata ptr %call12, metadata !52, metadata !DIExpression()), !dbg !61
  br i1 %cmp9, label %if.end13, label %if.end13.thread, !dbg !88

if.end13:                                         ; preds = %if.end
  %call14 = tail call ptr @ivector(i32 noundef 0, i32 noundef %natom) #12, !dbg !89
  call void @llvm.dbg.value(metadata ptr %call14, metadata !53, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 0, metadata !41, metadata !DIExpression()), !dbg !61
  %cmp15246 = icmp sgt i32 %natom, 0, !dbg !90
  br i1 %cmp15246, label %for.body.us.preheader, label %for.end, !dbg !93

if.end13.thread:                                  ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %call14, metadata !53, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 0, metadata !41, metadata !DIExpression()), !dbg !61
  %cmp15246280 = icmp sgt i32 %natom, 0, !dbg !90
  br i1 %cmp15246280, label %for.body.preheader, label %for.end, !dbg !93

for.body.preheader:                               ; preds = %if.end13.thread
  %wide.trip.count = zext i32 %natom to i64, !dbg !90
  br label %for.body, !dbg !93

for.body.us.preheader:                            ; preds = %if.end13
  %wide.trip.count263 = zext i32 %natom to i64, !dbg !90
  br label %for.body.us, !dbg !93

for.body.us:                                      ; preds = %for.body.us.preheader, %for.body.us
  %indvars.iv260 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next261, %for.body.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv260, metadata !41, metadata !DIExpression()), !dbg !61
  %arrayidx.us = getelementptr inbounds i32, ptr %call7, i64 %indvars.iv260, !dbg !94
  %2 = trunc i64 %indvars.iv260 to i32, !dbg !96
  store i32 %2, ptr %arrayidx.us, align 4, !dbg !96, !tbaa !97
  %arrayidx18.us = getelementptr inbounds i32, ptr %call6, i64 %indvars.iv260, !dbg !99
  store i32 %2, ptr %arrayidx18.us, align 4, !dbg !100, !tbaa !97
  %arrayidx20.us = getelementptr inbounds i32, ptr %call5, i64 %indvars.iv260, !dbg !101
  store i32 %2, ptr %arrayidx20.us, align 4, !dbg !102, !tbaa !97
  %arrayidx25.us = getelementptr inbounds i32, ptr %call12, i64 %indvars.iv260, !dbg !103
  store i32 %2, ptr %arrayidx25.us, align 4, !dbg !106, !tbaa !97
  %arrayidx28.us = getelementptr inbounds i32, ptr %call14, i64 %indvars.iv260, !dbg !107
  store i32 %2, ptr %arrayidx28.us, align 4, !dbg !108, !tbaa !97
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1, !dbg !109
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next261, metadata !41, metadata !DIExpression()), !dbg !61
  %exitcond264.not = icmp eq i64 %indvars.iv.next261, %wide.trip.count263, !dbg !90
  br i1 %exitcond264.not, label %for.end, label %for.body.us, !dbg !93, !llvm.loop !110

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !41, metadata !DIExpression()), !dbg !61
  %arrayidx = getelementptr inbounds i32, ptr %call7, i64 %indvars.iv, !dbg !94
  %3 = trunc i64 %indvars.iv to i32, !dbg !96
  store i32 %3, ptr %arrayidx, align 4, !dbg !96, !tbaa !97
  %arrayidx18 = getelementptr inbounds i32, ptr %call6, i64 %indvars.iv, !dbg !99
  store i32 %3, ptr %arrayidx18, align 4, !dbg !100, !tbaa !97
  %arrayidx20 = getelementptr inbounds i32, ptr %call5, i64 %indvars.iv, !dbg !101
  store i32 %3, ptr %arrayidx20, align 4, !dbg !102, !tbaa !97
  %arrayidx28 = getelementptr inbounds i32, ptr %call12, i64 %indvars.iv, !dbg !107
  store i32 %3, ptr %arrayidx28, align 4, !dbg !108, !tbaa !97
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !109
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !41, metadata !DIExpression()), !dbg !61
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !90
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !93, !llvm.loop !110

for.end:                                          ; preds = %for.body, %for.body.us, %if.end13.thread, %if.end13
  %cmp15246286 = phi i1 [ false, %if.end13.thread ], [ false, %if.end13 ], [ true, %for.body.us ], [ true, %for.body ]
  %call14284 = phi ptr [ %call12, %if.end13.thread ], [ %call14, %if.end13 ], [ %call14, %for.body.us ], [ %call12, %for.body ]
  %wn.0281 = phi ptr [ null, %if.end13.thread ], [ %call12, %if.end13 ], [ %call12, %for.body.us ], [ null, %for.body ]
  tail call fastcc void @heapsort_index(ptr noundef %call5, i32 noundef %natom, ptr noundef %x, i32 noundef 0, i32 noundef %dim), !dbg !114
  tail call fastcc void @heapsort_index(ptr noundef %call6, i32 noundef %natom, ptr noundef %x, i32 noundef 1, i32 noundef %dim), !dbg !115
  tail call fastcc void @heapsort_index(ptr noundef %call7, i32 noundef %natom, ptr noundef %x, i32 noundef 2, i32 noundef %dim), !dbg !116
  br i1 %cmp9, label %if.then31, label %if.end32, !dbg !117

if.then31:                                        ; preds = %for.end
  tail call fastcc void @heapsort_index(ptr noundef %wn.0281, i32 noundef %natom, ptr noundef %x, i32 noundef 3, i32 noundef 4), !dbg !118
  call void @llvm.dbg.value(metadata ptr %call2, metadata !59, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !61
  call void @llvm.dbg.value(metadata ptr %call2, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata ptr %kdptr, metadata !59, metadata !DIExpression(DW_OP_deref)), !dbg !61
  br label %if.end32, !dbg !121

if.end32:                                         ; preds = %for.end, %if.then31
  %dim.sink = phi i32 [ 4, %if.then31 ], [ %dim, %for.end ]
  %storemerge = getelementptr inbounds %struct.kdnode, ptr %call2, i64 1, !dbg !122
  store ptr %storemerge, ptr %kdptr, align 8, !dbg !122, !tbaa !76
  %lo239 = getelementptr inbounds %struct.kdnode, ptr %call2, i64 0, i32 1, !dbg !123
  %sub241 = add nsw i32 %natom, -1, !dbg !124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %lo239, i8 0, i64 16, i1 false), !dbg !125
  call fastcc void @buildkdtree(ptr noundef %call14284, ptr noundef %call5, ptr noundef %call6, ptr noundef %call7, ptr noundef %wn.0281, ptr noundef %call8, i32 noundef 0, i32 noundef %sub241, ptr noundef nonnull %kdptr, ptr noundef nonnull %call2, ptr noundef %x, i32 noundef 0, i32 noundef %dim.sink), !dbg !126
  call void @llvm.dbg.value(metadata i32 0, metadata !45, metadata !DIExpression()), !dbg !61
  %call33 = call ptr @ivector(i32 noundef 0, i32 noundef %natom) #12, !dbg !127
  call void @llvm.dbg.value(metadata ptr %call33, metadata !55, metadata !DIExpression()), !dbg !61
  %call34 = call ptr @ivector(i32 noundef 0, i32 noundef %natom) #12, !dbg !129
  call void @llvm.dbg.value(metadata ptr %call34, metadata !56, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 0, metadata !41, metadata !DIExpression()), !dbg !61
  br i1 %cmp15246286, label %for.body38.preheader, label %for.end122, !dbg !130

for.body38.preheader:                             ; preds = %if.end32
  %wide.trip.count274 = zext i32 %natom to i64, !dbg !132
  br label %for.body38, !dbg !130

for.body38:                                       ; preds = %for.body38.preheader, %for.end117
  %indvars.iv271 = phi i64 [ 0, %for.body38.preheader ], [ %indvars.iv.next272, %for.end117 ]
  %totpair.0254 = phi i32 [ 0, %for.body38.preheader ], [ %add119, %for.end117 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv271, metadata !41, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 %totpair.0254, metadata !45, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 0, metadata !44, metadata !DIExpression()), !dbg !61
  store i32 0, ptr %upcnt, align 4, !dbg !134, !tbaa !97
  call void @llvm.dbg.value(metadata i32 0, metadata !43, metadata !DIExpression()), !dbg !61
  store i32 0, ptr %locnt, align 4, !dbg !136, !tbaa !97
  call void @llvm.dbg.value(metadata ptr %locnt, metadata !43, metadata !DIExpression(DW_OP_deref)), !dbg !61
  call void @llvm.dbg.value(metadata ptr %upcnt, metadata !44, metadata !DIExpression(DW_OP_deref)), !dbg !61
  %4 = trunc i64 %indvars.iv271 to i32, !dbg !137
  call fastcc void @searchkdtree(ptr noundef nonnull %call2, ptr noundef %x, i32 noundef 0, i32 noundef %4, ptr noundef nonnull %locnt, ptr noundef nonnull %upcnt, ptr noundef %call33, ptr noundef %call34, double noundef %cutoff, double noundef %mul, i32 noundef %dim, ptr noundef %frozen), !dbg !137
  %5 = load i32, ptr %locnt, align 4, !dbg !138, !tbaa !97
  call void @llvm.dbg.value(metadata i32 %5, metadata !43, metadata !DIExpression()), !dbg !61
  call fastcc void @heapsort_pairs(ptr noundef %call33, i32 noundef %5), !dbg !139
  %6 = load i32, ptr %upcnt, align 4, !dbg !140, !tbaa !97
  call void @llvm.dbg.value(metadata i32 %6, metadata !44, metadata !DIExpression()), !dbg !61
  call fastcc void @heapsort_pairs(ptr noundef %call34, i32 noundef %6), !dbg !141
  %arrayidx40 = getelementptr inbounds ptr, ptr %pearlist, i64 %indvars.iv271, !dbg !142
  %7 = load ptr, ptr %arrayidx40, align 8, !dbg !142, !tbaa !76
  %cmp41 = icmp eq ptr %7, null, !dbg !144
  %8 = load i32, ptr %locnt, align 4, !dbg !145, !tbaa !97
  call void @llvm.dbg.value(metadata i32 %8, metadata !43, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 %8, metadata !43, metadata !DIExpression()), !dbg !61
  %9 = load i32, ptr %upcnt, align 4, !dbg !145, !tbaa !97
  call void @llvm.dbg.value(metadata i32 %9, metadata !44, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 %9, metadata !44, metadata !DIExpression()), !dbg !61
  %add = add nsw i32 %9, %8, !dbg !145
  br i1 %cmp41, label %land.lhs.true, label %land.lhs.true54, !dbg !146

land.lhs.true:                                    ; preds = %for.body38
  %cmp43 = icmp sgt i32 %add, 0, !dbg !147
  br i1 %cmp43, label %if.end86thread-pre-split.sink.split, label %if.end86, !dbg !148

land.lhs.true54:                                  ; preds = %for.body38
  %arrayidx57 = getelementptr inbounds i32, ptr %lpears, i64 %indvars.iv271, !dbg !149
  %10 = load i32, ptr %arrayidx57, align 4, !dbg !149, !tbaa !97
  %arrayidx59 = getelementptr inbounds i32, ptr %upears, i64 %indvars.iv271, !dbg !151
  %11 = load i32, ptr %arrayidx59, align 4, !dbg !151, !tbaa !97
  %add60 = add nsw i32 %11, %10, !dbg !152
  %cmp61 = icmp sgt i32 %add, %add60, !dbg !153
  br i1 %cmp61, label %if.then73, label %lor.lhs.false, !dbg !154

lor.lhs.false:                                    ; preds = %land.lhs.true54
  %mul64 = shl nsw i32 %add, 2, !dbg !155
  %mul70 = mul nsw i32 %add60, 3, !dbg !156
  %cmp71 = icmp slt i32 %mul64, %mul70, !dbg !157
  br i1 %cmp71, label %if.then73, label %if.end86thread-pre-split, !dbg !158

if.then73:                                        ; preds = %lor.lhs.false, %land.lhs.true54
  call void @free_ivector(ptr noundef nonnull %7, i32 noundef 0, i32 noundef %add60) #12, !dbg !159
  %12 = load i32, ptr %locnt, align 4, !dbg !161, !tbaa !97
  call void @llvm.dbg.value(metadata i32 %12, metadata !43, metadata !DIExpression()), !dbg !61
  %13 = load i32, ptr %upcnt, align 4, !dbg !162, !tbaa !97
  call void @llvm.dbg.value(metadata i32 %13, metadata !44, metadata !DIExpression()), !dbg !61
  %add81 = add nsw i32 %13, %12, !dbg !163
  br label %if.end86thread-pre-split.sink.split, !dbg !164

if.end86thread-pre-split.sink.split:              ; preds = %land.lhs.true, %if.then73
  %add81.sink = phi i32 [ %add81, %if.then73 ], [ %add, %land.lhs.true ]
  %call82 = call ptr @ivector(i32 noundef 0, i32 noundef %add81.sink) #12, !dbg !145
  store ptr %call82, ptr %arrayidx40, align 8, !dbg !145, !tbaa !76
  br label %if.end86thread-pre-split, !dbg !165

if.end86thread-pre-split:                         ; preds = %if.end86thread-pre-split.sink.split, %lor.lhs.false
  %.ph = phi ptr [ %7, %lor.lhs.false ], [ %call82, %if.end86thread-pre-split.sink.split ]
  %.pr = load i32, ptr %locnt, align 4, !dbg !165, !tbaa !97
  br label %if.end86, !dbg !165

if.end86:                                         ; preds = %if.end86thread-pre-split, %land.lhs.true
  %14 = phi i32 [ %.pr, %if.end86thread-pre-split ], [ %8, %land.lhs.true ], !dbg !165
  %15 = phi ptr [ %.ph, %if.end86thread-pre-split ], [ null, %land.lhs.true ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !43, metadata !DIExpression()), !dbg !61
  %arrayidx88 = getelementptr inbounds i32, ptr %lpears, i64 %indvars.iv271, !dbg !166
  store i32 %14, ptr %arrayidx88, align 4, !dbg !167, !tbaa !97
  %16 = load i32, ptr %upcnt, align 4, !dbg !168, !tbaa !97
  call void @llvm.dbg.value(metadata i32 %16, metadata !44, metadata !DIExpression()), !dbg !61
  %arrayidx90 = getelementptr inbounds i32, ptr %upears, i64 %indvars.iv271, !dbg !169
  store i32 %16, ptr %arrayidx90, align 4, !dbg !170, !tbaa !97
  call void @llvm.dbg.value(metadata i32 0, metadata !42, metadata !DIExpression()), !dbg !61
  %cmp92249 = icmp sgt i32 %14, 0, !dbg !171
  br i1 %cmp92249, label %for.body94, label %for.cond104.preheader, !dbg !174

for.cond104.preheader.loopexit:                   ; preds = %for.body94
  %.pre = load i32, ptr %upcnt, align 4, !dbg !175, !tbaa !97
  br label %for.cond104.preheader, !dbg !175

for.cond104.preheader:                            ; preds = %for.cond104.preheader.loopexit, %if.end86
  %17 = phi i32 [ %22, %for.cond104.preheader.loopexit ], [ %14, %if.end86 ]
  %18 = phi i32 [ %.pre, %for.cond104.preheader.loopexit ], [ %16, %if.end86 ], !dbg !175
  call void @llvm.dbg.value(metadata i32 0, metadata !42, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 %18, metadata !44, metadata !DIExpression()), !dbg !61
  %cmp105251 = icmp sgt i32 %18, 0, !dbg !178
  br i1 %cmp105251, label %for.body107.preheader, label %for.end117, !dbg !179

for.body107.preheader:                            ; preds = %for.cond104.preheader
  call void @llvm.dbg.value(metadata i64 0, metadata !42, metadata !DIExpression()), !dbg !61
  %19 = load i32, ptr %call34, align 4, !dbg !180, !tbaa !97
  call void @llvm.dbg.value(metadata i32 %17, metadata !43, metadata !DIExpression()), !dbg !61
  %idxprom113301 = sext i32 %17 to i64, !dbg !182
  %arrayidx114302 = getelementptr inbounds i32, ptr %15, i64 %idxprom113301, !dbg !182
  store i32 %19, ptr %arrayidx114302, align 4, !dbg !183, !tbaa !97
  call void @llvm.dbg.value(metadata i64 1, metadata !42, metadata !DIExpression()), !dbg !61
  %20 = load i32, ptr %upcnt, align 4, !dbg !175, !tbaa !97
  call void @llvm.dbg.value(metadata i32 %20, metadata !44, metadata !DIExpression()), !dbg !61
  %cmp105303 = icmp sgt i32 %20, 1, !dbg !178
  br i1 %cmp105303, label %for.body107.for.body107_crit_edge, label %for.end117.loopexit, !dbg !179, !llvm.loop !184

for.body94:                                       ; preds = %if.end86, %for.body94
  %indvars.iv265 = phi i64 [ %indvars.iv.next266, %for.body94 ], [ 0, %if.end86 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv265, metadata !42, metadata !DIExpression()), !dbg !61
  %arrayidx96 = getelementptr inbounds i32, ptr %call33, i64 %indvars.iv265, !dbg !186
  %21 = load i32, ptr %arrayidx96, align 4, !dbg !186, !tbaa !97
  %arrayidx100 = getelementptr inbounds i32, ptr %15, i64 %indvars.iv265, !dbg !188
  store i32 %21, ptr %arrayidx100, align 4, !dbg !189, !tbaa !97
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1, !dbg !190
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next266, metadata !42, metadata !DIExpression()), !dbg !61
  %22 = load i32, ptr %locnt, align 4, !dbg !191, !tbaa !97
  call void @llvm.dbg.value(metadata i32 %22, metadata !43, metadata !DIExpression()), !dbg !61
  %23 = sext i32 %22 to i64, !dbg !171
  %cmp92 = icmp slt i64 %indvars.iv.next266, %23, !dbg !171
  br i1 %cmp92, label %for.body94, label %for.cond104.preheader.loopexit, !dbg !174, !llvm.loop !192

for.body107.for.body107_crit_edge:                ; preds = %for.body107.preheader, %for.body107.for.body107_crit_edge
  %indvars.iv.next269304 = phi i64 [ %indvars.iv.next269, %for.body107.for.body107_crit_edge ], [ 1, %for.body107.preheader ]
  %.pre276 = load i32, ptr %locnt, align 4, !dbg !194, !tbaa !97
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next269304, metadata !42, metadata !DIExpression()), !dbg !61
  %arrayidx109 = getelementptr inbounds i32, ptr %call34, i64 %indvars.iv.next269304, !dbg !180
  %24 = load i32, ptr %arrayidx109, align 4, !dbg !180, !tbaa !97
  call void @llvm.dbg.value(metadata i32 %.pre276, metadata !43, metadata !DIExpression()), !dbg !61
  %25 = trunc i64 %indvars.iv.next269304 to i32, !dbg !195
  %add112 = add nsw i32 %.pre276, %25, !dbg !195
  %idxprom113 = sext i32 %add112 to i64, !dbg !182
  %arrayidx114 = getelementptr inbounds i32, ptr %15, i64 %idxprom113, !dbg !182
  store i32 %24, ptr %arrayidx114, align 4, !dbg !183, !tbaa !97
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv.next269304, 1, !dbg !196
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next269, metadata !42, metadata !DIExpression()), !dbg !61
  %26 = load i32, ptr %upcnt, align 4, !dbg !175, !tbaa !97
  call void @llvm.dbg.value(metadata i32 %26, metadata !44, metadata !DIExpression()), !dbg !61
  %27 = sext i32 %26 to i64, !dbg !178
  %cmp105 = icmp slt i64 %indvars.iv.next269, %27, !dbg !178
  br i1 %cmp105, label %for.body107.for.body107_crit_edge, label %for.end117.loopexit, !dbg !179, !llvm.loop !184

for.end117.loopexit:                              ; preds = %for.body107.for.body107_crit_edge, %for.body107.preheader
  %.lcssa299 = phi i32 [ %20, %for.body107.preheader ], [ %26, %for.body107.for.body107_crit_edge ], !dbg !175
  %.pre277 = load i32, ptr %locnt, align 4, !dbg !197, !tbaa !97
  br label %for.end117, !dbg !197

for.end117:                                       ; preds = %for.end117.loopexit, %for.cond104.preheader
  %28 = phi i32 [ %17, %for.cond104.preheader ], [ %.pre277, %for.end117.loopexit ], !dbg !197
  %.lcssa = phi i32 [ %18, %for.cond104.preheader ], [ %.lcssa299, %for.end117.loopexit ], !dbg !175
  call void @llvm.dbg.value(metadata i32 %28, metadata !43, metadata !DIExpression()), !dbg !61
  %add118 = add i32 %.lcssa, %totpair.0254, !dbg !198
  %add119 = add i32 %add118, %28, !dbg !199
  call void @llvm.dbg.value(metadata i32 %add119, metadata !45, metadata !DIExpression()), !dbg !61
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1, !dbg !200
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next272, metadata !41, metadata !DIExpression()), !dbg !61
  %exitcond275.not = icmp eq i64 %indvars.iv.next272, %wide.trip.count274, !dbg !132
  br i1 %exitcond275.not, label %for.end122, label %for.body38, !dbg !130, !llvm.loop !201

for.end122:                                       ; preds = %for.end117, %if.end32
  %totpair.0.lcssa = phi i32 [ 0, %if.end32 ], [ %add119, %for.end117 ], !dbg !61
  call void @free_ivector(ptr noundef %call33, i32 noundef 0, i32 noundef %natom) #12, !dbg !203
  call void @free_ivector(ptr noundef %call34, i32 noundef 0, i32 noundef %natom) #12, !dbg !204
  call void @free(ptr noundef %call2) #12, !dbg !205
  call void @free_ivector(ptr noundef %call5, i32 noundef 0, i32 noundef %natom) #12, !dbg !206
  call void @free_ivector(ptr noundef %call6, i32 noundef 0, i32 noundef %natom) #12, !dbg !207
  call void @free_ivector(ptr noundef %call7, i32 noundef 0, i32 noundef %natom) #12, !dbg !208
  call void @free_ivector(ptr noundef %call8, i32 noundef 0, i32 noundef %natom) #12, !dbg !209
  br i1 %cmp9, label %if.then125, label %if.end126, !dbg !210

if.then125:                                       ; preds = %for.end122
  call void @free_ivector(ptr noundef %wn.0281, i32 noundef 0, i32 noundef %natom) #12, !dbg !211
  br label %if.end126, !dbg !214

if.end126:                                        ; preds = %if.then125, %for.end122
  call void @free_ivector(ptr noundef %call14284, i32 noundef 0, i32 noundef %natom) #12, !dbg !215
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %kdptr) #12, !dbg !216
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %upcnt) #12, !dbg !216
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %locnt) #12, !dbg !216
  ret i32 %totpair.0.lcssa, !dbg !217
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !218 i32 @get_blocksize() local_unnamed_addr #3

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

declare !dbg !222 ptr @ivector(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal fastcc void @heapsort_index(ptr nocapture noundef %a, i32 noundef %n, ptr nocapture noundef readonly %x, i32 noundef %p, i32 noundef %dim) unnamed_addr #6 !dbg !225 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !229, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i32 %n, metadata !230, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata ptr %x, metadata !231, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i32 %p, metadata !232, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i32 %dim, metadata !233, metadata !DIExpression()), !dbg !236
  %div = sdiv i32 %n, 2, !dbg !237
  call void @llvm.dbg.value(metadata i32 %div, metadata !234, metadata !DIExpression()), !dbg !236
  %cmp78 = icmp sgt i32 %n, 1, !dbg !239
  br i1 %cmp78, label %for.body.preheader, label %while.end, !dbg !241

for.body.preheader:                               ; preds = %entry
  %0 = zext i32 %div to i64, !dbg !241
  %1 = sext i32 %div to i64, !dbg !241
  br label %for.body, !dbg !241

while.cond.preheader:                             ; preds = %downheap_index.exit
  call void @llvm.dbg.value(metadata i32 %n, metadata !230, metadata !DIExpression()), !dbg !236
  br i1 %cmp78, label %while.body.preheader, label %while.end, !dbg !242

while.body.preheader:                             ; preds = %while.cond.preheader
  %2 = zext i32 %n to i64, !dbg !242
  br label %while.body, !dbg !242

for.body:                                         ; preds = %for.body.preheader, %downheap_index.exit
  %indvars.iv = phi i64 [ %0, %for.body.preheader ], [ %indvars.iv.next, %downheap_index.exit ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !234, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata ptr %a, metadata !243, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata i32 %n, metadata !248, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !249, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata ptr %x, metadata !250, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata i32 %p, metadata !251, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata i32 %dim, metadata !252, metadata !DIExpression()), !dbg !255
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !257
  %indvars = trunc i64 %indvars.iv.next to i32, !dbg !257
  %3 = and i64 %indvars.iv.next, 4294967295
  %arrayidx.i = getelementptr inbounds i32, ptr %a, i64 %3, !dbg !258
  %4 = load i32, ptr %arrayidx.i, align 4, !dbg !258, !tbaa !97
  call void @llvm.dbg.value(metadata i32 %4, metadata !254, metadata !DIExpression()), !dbg !255
  %cmp.not66.i = icmp sgt i64 %indvars.iv, %1, !dbg !259
  br i1 %cmp.not66.i, label %downheap_index.exit, label %while.body.lr.ph.i, !dbg !260

while.body.lr.ph.i:                               ; preds = %for.body
  %mul15.i = mul nsw i32 %4, %dim
  %add16.i = add nsw i32 %mul15.i, %p
  %idxprom17.i = sext i32 %add16.i to i64
  %arrayidx18.i = getelementptr inbounds double, ptr %x, i64 %idxprom17.i
  %5 = load double, ptr %arrayidx18.i, align 8, !tbaa !261
  %6 = trunc i64 %indvars.iv to i32, !dbg !260
  br label %while.body.i, !dbg !260

while.body.i:                                     ; preds = %if.end28.i, %while.body.lr.ph.i
  %k.addr.067.i = phi i32 [ %6, %while.body.lr.ph.i ], [ %j.0.i, %if.end28.i ]
  call void @llvm.dbg.value(metadata i32 %k.addr.067.i, metadata !249, metadata !DIExpression()), !dbg !255
  %add.i = shl nsw i32 %k.addr.067.i, 1, !dbg !263
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !253, metadata !DIExpression()), !dbg !255
  %cmp1.i = icmp slt i32 %add.i, %n, !dbg !265
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i, !dbg !267

land.lhs.true.i:                                  ; preds = %while.body.i
  %sub2.i = add nsw i32 %add.i, -1, !dbg !268
  %idxprom3.i = sext i32 %sub2.i to i64, !dbg !269
  %arrayidx4.i = getelementptr inbounds i32, ptr %a, i64 %idxprom3.i, !dbg !269
  %7 = load i32, ptr %arrayidx4.i, align 4, !dbg !269, !tbaa !97
  %mul.i = mul nsw i32 %7, %dim, !dbg !270
  %add5.i = add nsw i32 %mul.i, %p, !dbg !271
  %idxprom6.i = sext i32 %add5.i to i64, !dbg !272
  %arrayidx7.i = getelementptr inbounds double, ptr %x, i64 %idxprom6.i, !dbg !272
  %8 = load double, ptr %arrayidx7.i, align 8, !dbg !272, !tbaa !261
  %idxprom8.i = sext i32 %add.i to i64, !dbg !273
  %arrayidx9.i = getelementptr inbounds i32, ptr %a, i64 %idxprom8.i, !dbg !273
  %9 = load i32, ptr %arrayidx9.i, align 4, !dbg !273, !tbaa !97
  %mul10.i = mul nsw i32 %9, %dim, !dbg !274
  %add11.i = add nsw i32 %mul10.i, %p, !dbg !275
  %idxprom12.i = sext i32 %add11.i to i64, !dbg !276
  %arrayidx13.i = getelementptr inbounds double, ptr %x, i64 %idxprom12.i, !dbg !276
  %10 = load double, ptr %arrayidx13.i, align 8, !dbg !276, !tbaa !261
  %cmp14.i = fcmp olt double %8, %10, !dbg !277
  br i1 %cmp14.i, label %if.then.i, label %if.end.i, !dbg !278

if.then.i:                                        ; preds = %land.lhs.true.i
  %inc.i = or i32 %add.i, 1, !dbg !279
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !253, metadata !DIExpression()), !dbg !255
  br label %if.end.i, !dbg !280

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i, %while.body.i
  %j.0.i = phi i32 [ %inc.i, %if.then.i ], [ %add.i, %land.lhs.true.i ], [ %add.i, %while.body.i ], !dbg !281
  call void @llvm.dbg.value(metadata i32 %j.0.i, metadata !253, metadata !DIExpression()), !dbg !255
  %sub19.i = add nsw i32 %j.0.i, -1, !dbg !282
  %idxprom20.i = sext i32 %sub19.i to i64, !dbg !284
  %arrayidx21.i = getelementptr inbounds i32, ptr %a, i64 %idxprom20.i, !dbg !284
  %11 = load i32, ptr %arrayidx21.i, align 4, !dbg !284, !tbaa !97
  %mul22.i = mul nsw i32 %11, %dim, !dbg !285
  %add23.i = add nsw i32 %mul22.i, %p, !dbg !286
  %idxprom24.i = sext i32 %add23.i to i64, !dbg !287
  %arrayidx25.i = getelementptr inbounds double, ptr %x, i64 %idxprom24.i, !dbg !287
  %12 = load double, ptr %arrayidx25.i, align 8, !dbg !287, !tbaa !261
  %cmp26.i = fcmp ult double %5, %12, !dbg !288
  %sub32.i = add nsw i32 %k.addr.067.i, -1, !dbg !255
  br i1 %cmp26.i, label %if.end28.i, label %downheap_index.exit, !dbg !289

if.end28.i:                                       ; preds = %if.end.i
  %idxprom33.i = sext i32 %sub32.i to i64, !dbg !290
  %arrayidx34.i = getelementptr inbounds i32, ptr %a, i64 %idxprom33.i, !dbg !290
  store i32 %11, ptr %arrayidx34.i, align 4, !dbg !291, !tbaa !97
  call void @llvm.dbg.value(metadata i32 %j.0.i, metadata !249, metadata !DIExpression()), !dbg !255
  %cmp.not.i = icmp sgt i32 %j.0.i, %div, !dbg !259
  br i1 %cmp.not.i, label %downheap_index.exit, label %while.body.i, !dbg !260, !llvm.loop !292

downheap_index.exit:                              ; preds = %if.end28.i, %if.end.i, %for.body
  %sub35.pre-phi.i = phi i32 [ %indvars, %for.body ], [ %sub19.i, %if.end28.i ], [ %sub32.i, %if.end.i ], !dbg !294
  %idxprom36.i = sext i32 %sub35.pre-phi.i to i64, !dbg !295
  %arrayidx37.i = getelementptr inbounds i32, ptr %a, i64 %idxprom36.i, !dbg !295
  store i32 %4, ptr %arrayidx37.i, align 4, !dbg !296, !tbaa !97
  call void @llvm.dbg.value(metadata i32 %indvars, metadata !234, metadata !DIExpression()), !dbg !236
  %cmp = icmp sgt i64 %indvars.iv, 1, !dbg !239
  br i1 %cmp, label %for.body, label %while.cond.preheader, !dbg !241, !llvm.loop !297

while.body:                                       ; preds = %while.body.preheader, %downheap_index.exit71
  %indvars.iv87 = phi i64 [ %2, %while.body.preheader ], [ %indvars.iv.next88, %downheap_index.exit71 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv87, metadata !230, metadata !DIExpression()), !dbg !236
  %13 = load i32, ptr %a, align 4, !dbg !299, !tbaa !97
  call void @llvm.dbg.value(metadata i32 %13, metadata !235, metadata !DIExpression()), !dbg !236
  %indvars.iv.next88 = add nsw i64 %indvars.iv87, -1, !dbg !301
  %indvars89 = trunc i64 %indvars.iv.next88 to i32, !dbg !301
  %14 = and i64 %indvars.iv.next88, 4294967295
  %arrayidx2 = getelementptr inbounds i32, ptr %a, i64 %14, !dbg !302
  %15 = load i32, ptr %arrayidx2, align 4, !dbg !302, !tbaa !97
  store i32 %15, ptr %a, align 4, !dbg !303, !tbaa !97
  store i32 %13, ptr %arrayidx2, align 4, !dbg !304, !tbaa !97
  call void @llvm.dbg.value(metadata i32 %indvars89, metadata !230, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata ptr %a, metadata !243, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata i32 %indvars89, metadata !248, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata i32 1, metadata !249, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata ptr %x, metadata !250, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata i32 %p, metadata !251, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata i32 %dim, metadata !252, metadata !DIExpression()), !dbg !305
  %16 = load i32, ptr %a, align 4, !dbg !307, !tbaa !97
  call void @llvm.dbg.value(metadata i32 %16, metadata !254, metadata !DIExpression()), !dbg !305
  %div.i237273 = lshr i32 %indvars89, 1
  %cmp.not66.i24 = icmp ult i32 %indvars89, 2, !dbg !308
  br i1 %cmp.not66.i24, label %downheap_index.exit71, label %while.body.lr.ph.i29, !dbg !309

while.body.lr.ph.i29:                             ; preds = %while.body
  %mul15.i25 = mul nsw i32 %16, %dim
  %add16.i26 = add nsw i32 %mul15.i25, %p
  %idxprom17.i27 = sext i32 %add16.i26 to i64
  %arrayidx18.i28 = getelementptr inbounds double, ptr %x, i64 %idxprom17.i27
  %17 = load double, ptr %arrayidx18.i28, align 8, !tbaa !261
  br label %while.body.i33, !dbg !309

while.body.i33:                                   ; preds = %if.end28.i67, %while.body.lr.ph.i29
  %k.addr.067.i30 = phi i32 [ 1, %while.body.lr.ph.i29 ], [ %j.0.i51, %if.end28.i67 ]
  call void @llvm.dbg.value(metadata i32 %k.addr.067.i30, metadata !249, metadata !DIExpression()), !dbg !305
  %add.i31 = shl nsw i32 %k.addr.067.i30, 1, !dbg !310
  call void @llvm.dbg.value(metadata i32 %add.i31, metadata !253, metadata !DIExpression()), !dbg !305
  %cmp1.i32 = icmp slt i32 %add.i31, %indvars89, !dbg !311
  br i1 %cmp1.i32, label %land.lhs.true.i48, label %if.end.i60, !dbg !312

land.lhs.true.i48:                                ; preds = %while.body.i33
  %sub2.i34 = add nsw i32 %add.i31, -1, !dbg !313
  %idxprom3.i35 = sext i32 %sub2.i34 to i64, !dbg !314
  %arrayidx4.i36 = getelementptr inbounds i32, ptr %a, i64 %idxprom3.i35, !dbg !314
  %18 = load i32, ptr %arrayidx4.i36, align 4, !dbg !314, !tbaa !97
  %mul.i37 = mul nsw i32 %18, %dim, !dbg !315
  %add5.i38 = add nsw i32 %mul.i37, %p, !dbg !316
  %idxprom6.i39 = sext i32 %add5.i38 to i64, !dbg !317
  %arrayidx7.i40 = getelementptr inbounds double, ptr %x, i64 %idxprom6.i39, !dbg !317
  %19 = load double, ptr %arrayidx7.i40, align 8, !dbg !317, !tbaa !261
  %idxprom8.i41 = sext i32 %add.i31 to i64, !dbg !318
  %arrayidx9.i42 = getelementptr inbounds i32, ptr %a, i64 %idxprom8.i41, !dbg !318
  %20 = load i32, ptr %arrayidx9.i42, align 4, !dbg !318, !tbaa !97
  %mul10.i43 = mul nsw i32 %20, %dim, !dbg !319
  %add11.i44 = add nsw i32 %mul10.i43, %p, !dbg !320
  %idxprom12.i45 = sext i32 %add11.i44 to i64, !dbg !321
  %arrayidx13.i46 = getelementptr inbounds double, ptr %x, i64 %idxprom12.i45, !dbg !321
  %21 = load double, ptr %arrayidx13.i46, align 8, !dbg !321, !tbaa !261
  %cmp14.i47 = fcmp olt double %19, %21, !dbg !322
  br i1 %cmp14.i47, label %if.then.i50, label %if.end.i60, !dbg !323

if.then.i50:                                      ; preds = %land.lhs.true.i48
  %inc.i49 = or i32 %add.i31, 1, !dbg !324
  call void @llvm.dbg.value(metadata i32 %inc.i49, metadata !253, metadata !DIExpression()), !dbg !305
  br label %if.end.i60, !dbg !325

if.end.i60:                                       ; preds = %if.then.i50, %land.lhs.true.i48, %while.body.i33
  %j.0.i51 = phi i32 [ %inc.i49, %if.then.i50 ], [ %add.i31, %land.lhs.true.i48 ], [ %add.i31, %while.body.i33 ], !dbg !326
  call void @llvm.dbg.value(metadata i32 %j.0.i51, metadata !253, metadata !DIExpression()), !dbg !305
  %sub19.i52 = add nsw i32 %j.0.i51, -1, !dbg !327
  %idxprom20.i53 = sext i32 %sub19.i52 to i64, !dbg !328
  %arrayidx21.i54 = getelementptr inbounds i32, ptr %a, i64 %idxprom20.i53, !dbg !328
  %22 = load i32, ptr %arrayidx21.i54, align 4, !dbg !328, !tbaa !97
  %mul22.i55 = mul nsw i32 %22, %dim, !dbg !329
  %add23.i56 = add nsw i32 %mul22.i55, %p, !dbg !330
  %idxprom24.i57 = sext i32 %add23.i56 to i64, !dbg !331
  %arrayidx25.i58 = getelementptr inbounds double, ptr %x, i64 %idxprom24.i57, !dbg !331
  %23 = load double, ptr %arrayidx25.i58, align 8, !dbg !331, !tbaa !261
  %cmp26.i59 = fcmp ult double %17, %23, !dbg !332
  %sub32.i63 = add nsw i32 %k.addr.067.i30, -1, !dbg !305
  br i1 %cmp26.i59, label %if.end28.i67, label %downheap_index.exit71, !dbg !333

if.end28.i67:                                     ; preds = %if.end.i60
  %idxprom33.i64 = sext i32 %sub32.i63 to i64, !dbg !334
  %arrayidx34.i65 = getelementptr inbounds i32, ptr %a, i64 %idxprom33.i64, !dbg !334
  store i32 %22, ptr %arrayidx34.i65, align 4, !dbg !335, !tbaa !97
  call void @llvm.dbg.value(metadata i32 %j.0.i51, metadata !249, metadata !DIExpression()), !dbg !305
  %cmp.not.i66 = icmp sgt i32 %j.0.i51, %div.i237273, !dbg !308
  br i1 %cmp.not.i66, label %downheap_index.exit71, label %while.body.i33, !dbg !309, !llvm.loop !336

downheap_index.exit71:                            ; preds = %if.end28.i67, %if.end.i60, %while.body
  %sub35.pre-phi.i68 = phi i32 [ 0, %while.body ], [ %sub19.i52, %if.end28.i67 ], [ %sub32.i63, %if.end.i60 ], !dbg !338
  %idxprom36.i69 = sext i32 %sub35.pre-phi.i68 to i64, !dbg !339
  %arrayidx37.i70 = getelementptr inbounds i32, ptr %a, i64 %idxprom36.i69, !dbg !339
  store i32 %16, ptr %arrayidx37.i70, align 4, !dbg !340, !tbaa !97
  call void @llvm.dbg.value(metadata i32 %indvars89, metadata !230, metadata !DIExpression()), !dbg !236
  %cmp1 = icmp sgt i64 %indvars.iv87, 2, !dbg !341
  br i1 %cmp1, label %while.body, label %while.end, !dbg !242, !llvm.loop !342

while.end:                                        ; preds = %downheap_index.exit71, %entry, %while.cond.preheader
  ret void, !dbg !344
}

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @buildkdtree(ptr noundef %xn, ptr noundef %yn, ptr noundef %zn, ptr noundef %wn, ptr noundef %on, ptr noundef %tn, i32 noundef %start, i32 noundef %end, ptr noundef %kdpptr, ptr nocapture noundef writeonly %that, ptr noundef %x, i32 noundef %p, i32 noundef %dim) unnamed_addr #7 !dbg !345 {
entry:
  call void @llvm.dbg.value(metadata ptr %xn, metadata !350, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %yn, metadata !351, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %zn, metadata !352, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %wn, metadata !353, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %on, metadata !354, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %tn, metadata !355, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %start, metadata !356, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %end, metadata !357, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %kdpptr, metadata !358, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %that, metadata !359, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %x, metadata !360, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %p, metadata !361, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %dim, metadata !362, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !368, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata !DIArgList(i32 %p, i32 %dim), metadata !361, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_mod, DW_OP_stack_value)), !dbg !369
  %cmp644662 = icmp eq i32 %end, %start, !dbg !370
  br i1 %cmp644662, label %if.then, label %if.else.lr.ph.preheader, !dbg !372

if.else.lr.ph.preheader:                          ; preds = %entry
  %add642660 = add nsw i32 %dim, 1, !dbg !373
  call void @llvm.dbg.value(metadata !DIArgList(i32 %p, i32 %add642660), metadata !361, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mod, DW_OP_stack_value)), !dbg !369
  %rem643661 = srem i32 %p, %add642660, !dbg !374
  call void @llvm.dbg.value(metadata i32 %rem643661, metadata !361, metadata !DIExpression()), !dbg !369
  %0 = add i32 %end, 1, !dbg !372
  br label %if.else.lr.ph, !dbg !372

if.else.lr.ph:                                    ; preds = %if.else.lr.ph.preheader, %if.else313
  %rem643670 = phi i32 [ %rem643, %if.else313 ], [ %rem643661, %if.else.lr.ph.preheader ]
  %dim.tr.ph669 = phi i32 [ %dim.tr652, %if.else313 ], [ %dim, %if.else.lr.ph.preheader ]
  %that.tr.ph668 = phi ptr [ %48, %if.else313 ], [ %that, %if.else.lr.ph.preheader ]
  %start.tr.ph667 = phi i32 [ %add310, %if.else313 ], [ %start, %if.else.lr.ph.preheader ]
  %tn.tr.ph666 = phi ptr [ %wn.tr.ph664, %if.else313 ], [ %tn, %if.else.lr.ph.preheader ]
  %on.tr.ph665 = phi ptr [ %on.tr646, %if.else313 ], [ %on, %if.else.lr.ph.preheader ]
  %wn.tr.ph664 = phi ptr [ %xn.tr645, %if.else313 ], [ %wn, %if.else.lr.ph.preheader ]
  %xn.tr.ph663 = phi ptr [ %tn.tr647, %if.else313 ], [ %xn, %if.else.lr.ph.preheader ]
  call void @llvm.dbg.value(metadata i32 %dim.tr.ph669, metadata !362, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %that.tr.ph668, metadata !359, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %start.tr.ph667, metadata !356, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %tn.tr.ph666, metadata !355, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %on.tr.ph665, metadata !354, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %wn.tr.ph664, metadata !353, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %xn.tr.ph663, metadata !350, metadata !DIExpression()), !dbg !369
  br label %if.else, !dbg !372

if.then:                                          ; preds = %if.else313, %if.then309, %entry
  %xn.tr.lcssa = phi ptr [ %xn, %entry ], [ %tn.tr647, %if.then309 ], [ %tn.tr647, %if.else313 ]
  %that.tr.lcssa = phi ptr [ %that, %entry ], [ %48, %if.then309 ], [ %48, %if.else313 ]
  %idxprom = sext i32 %end to i64, !dbg !375
  %arrayidx = getelementptr inbounds i32, ptr %xn.tr.lcssa, i64 %idxprom, !dbg !375
  %1 = load i32, ptr %arrayidx, align 4, !dbg !375, !tbaa !97
  store i32 %1, ptr %that.tr.lcssa, align 8, !dbg !377, !tbaa !378
  br label %if.end320, !dbg !380

if.else:                                          ; preds = %if.else.lr.ph, %if.then309
  %rem653 = phi i32 [ %rem643670, %if.else.lr.ph ], [ %rem, %if.then309 ]
  %dim.tr652 = phi i32 [ %dim.tr.ph669, %if.else.lr.ph ], [ 4, %if.then309 ]
  %that.tr651 = phi ptr [ %that.tr.ph668, %if.else.lr.ph ], [ %48, %if.then309 ]
  %start.tr648 = phi i32 [ %start.tr.ph667, %if.else.lr.ph ], [ %add310, %if.then309 ]
  %tn.tr647 = phi ptr [ %tn.tr.ph666, %if.else.lr.ph ], [ %on.tr646, %if.then309 ]
  %on.tr646 = phi ptr [ %on.tr.ph665, %if.else.lr.ph ], [ %xn.tr645, %if.then309 ]
  %xn.tr645 = phi ptr [ %xn.tr.ph663, %if.else.lr.ph ], [ %tn.tr647, %if.then309 ]
  call void @llvm.dbg.value(metadata i32 %dim.tr652, metadata !362, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %that.tr651, metadata !359, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %start.tr648, metadata !356, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %tn.tr647, metadata !355, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %on.tr646, metadata !354, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %xn.tr645, metadata !350, metadata !DIExpression()), !dbg !369
  %add1 = add nsw i32 %start.tr648, 1, !dbg !381
  %cmp2 = icmp eq i32 %add1, %end, !dbg !383
  br i1 %cmp2, label %if.then3, label %if.else82, !dbg !384

if.then3:                                         ; preds = %if.else
  %cmp4 = icmp eq i32 %rem653, 0, !dbg !385
  %idxprom5 = sext i32 %start.tr648 to i64, !dbg !388
  %arrayidx6 = getelementptr inbounds i32, ptr %xn.tr645, i64 %idxprom5, !dbg !388
  %2 = load i32, ptr %arrayidx6, align 4, !dbg !388, !tbaa !97
  br i1 %cmp4, label %land.lhs.true, label %land.lhs.true11, !dbg !389

land.lhs.true:                                    ; preds = %if.then3
  %idxprom7 = sext i32 %end to i64, !dbg !390
  %arrayidx8 = getelementptr inbounds i32, ptr %xn.tr645, i64 %idxprom7, !dbg !390
  %3 = load i32, ptr %arrayidx8, align 4, !dbg !390, !tbaa !97
  %cmp9 = icmp slt i32 %2, %3, !dbg !391
  br i1 %cmp9, label %if.then25, label %land.lhs.true35, !dbg !392

land.lhs.true11:                                  ; preds = %if.then3
  %mul = mul nsw i32 %2, %dim.tr652, !dbg !393
  %add14 = add nsw i32 %rem653, -1, !dbg !394
  %sub = add i32 %add14, %mul, !dbg !395
  %idxprom15 = sext i32 %sub to i64, !dbg !396
  %arrayidx16 = getelementptr inbounds double, ptr %x, i64 %idxprom15, !dbg !396
  %4 = load double, ptr %arrayidx16, align 8, !dbg !396, !tbaa !261
  %idxprom17 = sext i32 %end to i64, !dbg !397
  %arrayidx18 = getelementptr inbounds i32, ptr %xn.tr645, i64 %idxprom17, !dbg !397
  %5 = load i32, ptr %arrayidx18, align 4, !dbg !397, !tbaa !97
  %mul19 = mul nsw i32 %5, %dim.tr652, !dbg !398
  %sub21 = add i32 %add14, %mul19, !dbg !399
  %idxprom22 = sext i32 %sub21 to i64, !dbg !400
  %arrayidx23 = getelementptr inbounds double, ptr %x, i64 %idxprom22, !dbg !400
  %6 = load double, ptr %arrayidx23, align 8, !dbg !400, !tbaa !261
  %cmp24 = fcmp olt double %4, %6, !dbg !401
  br i1 %cmp24, label %if.then25, label %land.lhs.true43, !dbg !402

if.then25:                                        ; preds = %land.lhs.true11, %land.lhs.true
  %7 = phi i32 [ %5, %land.lhs.true11 ], [ %3, %land.lhs.true ], !dbg !403
  store i32 %7, ptr %that.tr651, align 8, !dbg !405, !tbaa !378
  %arrayidx30 = getelementptr inbounds i32, ptr %xn.tr645, i64 %idxprom5, !dbg !406
  %8 = load i32, ptr %arrayidx30, align 4, !dbg !406, !tbaa !97
  %9 = load ptr, ptr %kdpptr, align 8, !dbg !407, !tbaa !76
  store i32 %8, ptr %9, align 8, !dbg !408, !tbaa !378
  %lo = getelementptr inbounds %struct.kdnode, ptr %9, i64 0, i32 1, !dbg !409
  store ptr null, ptr %lo, align 8, !dbg !410, !tbaa !411
  %10 = load ptr, ptr %kdpptr, align 8, !dbg !412, !tbaa !76
  %hi = getelementptr inbounds %struct.kdnode, ptr %10, i64 0, i32 2, !dbg !413
  store ptr null, ptr %hi, align 8, !dbg !414, !tbaa !415
  %11 = load ptr, ptr %kdpptr, align 8, !dbg !416, !tbaa !76
  %incdec.ptr = getelementptr inbounds %struct.kdnode, ptr %11, i64 1, !dbg !416
  store ptr %incdec.ptr, ptr %kdpptr, align 8, !dbg !416, !tbaa !76
  %lo32 = getelementptr inbounds %struct.kdnode, ptr %that.tr651, i64 0, i32 1, !dbg !417
  store ptr %11, ptr %lo32, align 8, !dbg !418, !tbaa !411
  br label %if.end320, !dbg !419

land.lhs.true35:                                  ; preds = %land.lhs.true
  %cmp40 = icmp sgt i32 %2, %3, !dbg !420
  br i1 %cmp40, label %if.then59, label %if.else70, !dbg !422

land.lhs.true43:                                  ; preds = %land.lhs.true11
  %cmp58 = fcmp ogt double %4, %6, !dbg !423
  br i1 %cmp58, label %if.then59, label %if.else70, !dbg !424

if.then59:                                        ; preds = %land.lhs.true43, %land.lhs.true35
  %idxprom63.pre-phi = phi i64 [ %idxprom17, %land.lhs.true43 ], [ %idxprom7, %land.lhs.true35 ], !dbg !425
  store i32 %2, ptr %that.tr651, align 8, !dbg !427, !tbaa !378
  %arrayidx64 = getelementptr inbounds i32, ptr %xn.tr645, i64 %idxprom63.pre-phi, !dbg !425
  %12 = load i32, ptr %arrayidx64, align 4, !dbg !425, !tbaa !97
  %13 = load ptr, ptr %kdpptr, align 8, !dbg !428, !tbaa !76
  store i32 %12, ptr %13, align 8, !dbg !429, !tbaa !378
  %lo66 = getelementptr inbounds %struct.kdnode, ptr %13, i64 0, i32 1, !dbg !430
  store ptr null, ptr %lo66, align 8, !dbg !431, !tbaa !411
  %14 = load ptr, ptr %kdpptr, align 8, !dbg !432, !tbaa !76
  %hi67 = getelementptr inbounds %struct.kdnode, ptr %14, i64 0, i32 2, !dbg !433
  store ptr null, ptr %hi67, align 8, !dbg !434, !tbaa !415
  %15 = load ptr, ptr %kdpptr, align 8, !dbg !435, !tbaa !76
  %incdec.ptr68 = getelementptr inbounds %struct.kdnode, ptr %15, i64 1, !dbg !435
  store ptr %incdec.ptr68, ptr %kdpptr, align 8, !dbg !435, !tbaa !76
  %lo69 = getelementptr inbounds %struct.kdnode, ptr %that.tr651, i64 0, i32 1, !dbg !436
  store ptr %15, ptr %lo69, align 8, !dbg !437, !tbaa !411
  br label %if.end320, !dbg !438

if.else70:                                        ; preds = %land.lhs.true35, %land.lhs.true43
  %idxprom74.pre-phi = phi i64 [ %idxprom7, %land.lhs.true35 ], [ %idxprom17, %land.lhs.true43 ], !dbg !439
  store i32 %2, ptr %that.tr651, align 8, !dbg !441, !tbaa !378
  %arrayidx75 = getelementptr inbounds i32, ptr %xn.tr645, i64 %idxprom74.pre-phi, !dbg !439
  %16 = load i32, ptr %arrayidx75, align 4, !dbg !439, !tbaa !97
  %17 = load ptr, ptr %kdpptr, align 8, !dbg !442, !tbaa !76
  store i32 %16, ptr %17, align 8, !dbg !443, !tbaa !378
  %lo77 = getelementptr inbounds %struct.kdnode, ptr %17, i64 0, i32 1, !dbg !444
  store ptr null, ptr %lo77, align 8, !dbg !445, !tbaa !411
  %18 = load ptr, ptr %kdpptr, align 8, !dbg !446, !tbaa !76
  %hi78 = getelementptr inbounds %struct.kdnode, ptr %18, i64 0, i32 2, !dbg !447
  store ptr null, ptr %hi78, align 8, !dbg !448, !tbaa !415
  %19 = load ptr, ptr %kdpptr, align 8, !dbg !449, !tbaa !76
  %incdec.ptr79 = getelementptr inbounds %struct.kdnode, ptr %19, i64 1, !dbg !449
  store ptr %incdec.ptr79, ptr %kdpptr, align 8, !dbg !449, !tbaa !76
  %hi80 = getelementptr inbounds %struct.kdnode, ptr %that.tr651, i64 0, i32 2, !dbg !450
  store ptr %19, ptr %hi80, align 8, !dbg !451, !tbaa !415
  br label %if.end320

if.else82:                                        ; preds = %if.else
  %add83 = add nsw i32 %start.tr648, %end, !dbg !452
  %div = sdiv i32 %add83, 2, !dbg !454
  call void @llvm.dbg.value(metadata i32 %div, metadata !364, metadata !DIExpression()), !dbg !369
  %cmp84 = icmp eq i32 %rem653, 0, !dbg !455
  %idxprom86 = sext i32 %div to i64, !dbg !457
  %arrayidx87 = getelementptr inbounds i32, ptr %xn.tr645, i64 %idxprom86, !dbg !457
  %20 = load i32, ptr %arrayidx87, align 4, !dbg !457, !tbaa !97
  br i1 %cmp84, label %if.end109, label %if.else88, !dbg !458

if.else88:                                        ; preds = %if.else82
  %mul91 = mul nsw i32 %20, %dim.tr652, !dbg !459
  %add92 = add nsw i32 %rem653, -1, !dbg !461
  %sub93 = add i32 %add92, %mul91, !dbg !462
  %idxprom94 = sext i32 %sub93 to i64, !dbg !463
  %arrayidx95 = getelementptr inbounds double, ptr %x, i64 %idxprom94, !dbg !463
  %21 = load double, ptr %arrayidx95, align 8, !dbg !463, !tbaa !261
  call void @llvm.dbg.value(metadata double %21, metadata !368, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %div, metadata !363, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !369
  %22 = sext i32 %start.tr648 to i64, !dbg !464
  %smin = call i32 @llvm.smin.i32(i32 %start.tr648, i32 %div), !dbg !464
  br label %for.cond, !dbg !464

for.cond:                                         ; preds = %for.body, %if.else88
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %idxprom86, %if.else88 ], !dbg !466
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !364, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !363, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !369
  %cmp97.not.not = icmp sgt i64 %indvars.iv, %22, !dbg !467
  br i1 %cmp97.not.not, label %for.body, label %if.end109.loopexit, !dbg !469

for.body:                                         ; preds = %for.cond
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !470
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !363, metadata !DIExpression()), !dbg !369
  %arrayidx99 = getelementptr inbounds i32, ptr %xn.tr645, i64 %indvars.iv.next, !dbg !471
  %23 = load i32, ptr %arrayidx99, align 4, !dbg !471, !tbaa !97
  %mul100 = mul nsw i32 %23, %dim.tr652, !dbg !474
  %sub102 = add i32 %add92, %mul100, !dbg !475
  %idxprom103 = sext i32 %sub102 to i64, !dbg !476
  %arrayidx104 = getelementptr inbounds double, ptr %x, i64 %idxprom103, !dbg !476
  %24 = load double, ptr %arrayidx104, align 8, !dbg !476, !tbaa !261
  %cmp105 = fcmp olt double %24, %21, !dbg !477
  br i1 %cmp105, label %if.end109.loopexit.split.loop.exit, label %for.cond, !dbg !478, !llvm.loop !479

if.end109.loopexit.split.loop.exit:               ; preds = %for.body
  %25 = trunc i64 %indvars.iv to i32, !dbg !469
  br label %if.end109.loopexit, !dbg !481

if.end109.loopexit:                               ; preds = %for.cond, %if.end109.loopexit.split.loop.exit
  %middle.0.lcssa = phi i32 [ %25, %if.end109.loopexit.split.loop.exit ], [ %smin, %for.cond ], !dbg !466
  %.pre = sext i32 %middle.0.lcssa to i64, !dbg !481
  %arrayidx111.phi.trans.insert = getelementptr inbounds i32, ptr %xn.tr645, i64 %.pre
  %.pre724 = load i32, ptr %arrayidx111.phi.trans.insert, align 4, !dbg !481, !tbaa !97
  br label %if.end109, !dbg !481

if.end109:                                        ; preds = %if.else82, %if.end109.loopexit
  %26 = phi i32 [ %.pre724, %if.end109.loopexit ], [ %20, %if.else82 ], !dbg !481
  %idxprom110.pre-phi = phi i64 [ %.pre, %if.end109.loopexit ], [ %idxprom86, %if.else82 ], !dbg !481
  %middle.1 = phi i32 [ %middle.0.lcssa, %if.end109.loopexit ], [ %div, %if.else82 ], !dbg !482
  %median.0 = phi double [ %21, %if.end109.loopexit ], [ 0.000000e+00, %if.else82 ], !dbg !369
  call void @llvm.dbg.value(metadata double %median.0, metadata !368, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %20, metadata !365, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %middle.1, metadata !364, metadata !DIExpression()), !dbg !369
  %arrayidx111 = getelementptr inbounds i32, ptr %xn.tr645, i64 %idxprom110.pre-phi, !dbg !481
  store i32 %26, ptr %that.tr651, align 8, !dbg !483, !tbaa !378
  %sub113 = add nsw i32 %start.tr648, -1, !dbg !484
  call void @llvm.dbg.value(metadata i32 %sub113, metadata !366, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %middle.1, metadata !367, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %start.tr648, metadata !363, metadata !DIExpression()), !dbg !369
  %cmp115.not615 = icmp sgt i32 %start.tr648, %end, !dbg !485
  br i1 %cmp115.not615, label %for.end240, label %for.body116.lr.ph, !dbg !488

for.body116.lr.ph:                                ; preds = %if.end109
  %add134 = add i32 %rem653, -1
  %27 = sext i32 %start.tr648 to i64, !dbg !488
  br label %for.body116, !dbg !488

for.cond156.preheader:                            ; preds = %for.inc152
  call void @llvm.dbg.value(metadata i32 %middle.1, metadata !367, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %sub113, metadata !366, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %start.tr648, metadata !363, metadata !DIExpression()), !dbg !369
  br i1 %cmp115.not615, label %for.end240, label %for.body158.lr.ph, !dbg !489

for.body158.lr.ph:                                ; preds = %for.cond156.preheader
  %add176 = add i32 %rem653, -1
  %28 = sext i32 %start.tr648 to i64, !dbg !489
  br label %for.body158, !dbg !489

for.body116:                                      ; preds = %for.body116.lr.ph, %for.inc152
  %indvars.iv706 = phi i64 [ %27, %for.body116.lr.ph ], [ %indvars.iv.next707, %for.inc152 ]
  %upper.0619 = phi i32 [ %middle.1, %for.body116.lr.ph ], [ %upper.1, %for.inc152 ]
  %lower.0617 = phi i32 [ %sub113, %for.body116.lr.ph ], [ %lower.1, %for.inc152 ]
  call void @llvm.dbg.value(metadata i32 %upper.0619, metadata !367, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %lower.0617, metadata !366, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i64 %indvars.iv706, metadata !363, metadata !DIExpression()), !dbg !369
  %arrayidx118 = getelementptr inbounds i32, ptr %yn, i64 %indvars.iv706, !dbg !491
  %29 = load i32, ptr %arrayidx118, align 4, !dbg !491, !tbaa !97
  %30 = load i32, ptr %arrayidx111, align 4, !dbg !494, !tbaa !97
  %cmp121.not = icmp eq i32 %29, %30, !dbg !495
  br i1 %cmp121.not, label %for.inc152, label %if.then122, !dbg !496

if.then122:                                       ; preds = %for.body116
  %cmp127 = icmp slt i32 %29, %20
  %or.cond = select i1 %cmp84, i1 %cmp127, i1 false, !dbg !497
  br i1 %or.cond, label %if.then139, label %lor.lhs.false128, !dbg !497

lor.lhs.false128:                                 ; preds = %if.then122
  br i1 %cmp84, label %if.else144, label %land.lhs.true130, !dbg !500

land.lhs.true130:                                 ; preds = %lor.lhs.false128
  %mul133 = mul nsw i32 %29, %dim.tr652, !dbg !501
  %sub135 = add i32 %add134, %mul133, !dbg !502
  %idxprom136 = sext i32 %sub135 to i64, !dbg !503
  %arrayidx137 = getelementptr inbounds double, ptr %x, i64 %idxprom136, !dbg !503
  %31 = load double, ptr %arrayidx137, align 8, !dbg !503, !tbaa !261
  %cmp138 = fcmp olt double %31, %median.0, !dbg !504
  br i1 %cmp138, label %if.then139, label %if.else144, !dbg !505

if.then139:                                       ; preds = %if.then122, %land.lhs.true130
  %inc = add nsw i32 %lower.0617, 1, !dbg !506
  call void @llvm.dbg.value(metadata i32 %inc, metadata !366, metadata !DIExpression()), !dbg !369
  br label %for.inc152.sink.split, !dbg !508

if.else144:                                       ; preds = %land.lhs.true130, %lor.lhs.false128
  %inc147 = add nsw i32 %upper.0619, 1, !dbg !509
  call void @llvm.dbg.value(metadata i32 %inc147, metadata !367, metadata !DIExpression()), !dbg !369
  br label %for.inc152.sink.split

for.inc152.sink.split:                            ; preds = %if.then139, %if.else144
  %inc147.sink = phi i32 [ %inc147, %if.else144 ], [ %inc, %if.then139 ]
  %lower.1.ph = phi i32 [ %lower.0617, %if.else144 ], [ %inc, %if.then139 ]
  %upper.1.ph = phi i32 [ %inc147, %if.else144 ], [ %upper.0619, %if.then139 ]
  %idxprom148 = sext i32 %inc147.sink to i64, !dbg !511
  %arrayidx149 = getelementptr inbounds i32, ptr %tn.tr647, i64 %idxprom148, !dbg !511
  store i32 %29, ptr %arrayidx149, align 4, !dbg !511, !tbaa !97
  br label %for.inc152, !dbg !512

for.inc152:                                       ; preds = %for.inc152.sink.split, %for.body116
  %lower.1 = phi i32 [ %lower.0617, %for.body116 ], [ %lower.1.ph, %for.inc152.sink.split ], !dbg !466
  %upper.1 = phi i32 [ %upper.0619, %for.body116 ], [ %upper.1.ph, %for.inc152.sink.split ], !dbg !466
  call void @llvm.dbg.value(metadata i32 %upper.1, metadata !367, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %lower.1, metadata !366, metadata !DIExpression()), !dbg !369
  %indvars.iv.next707 = add nsw i64 %indvars.iv706, 1, !dbg !512
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next707, metadata !363, metadata !DIExpression()), !dbg !369
  %lftr.wideiv = trunc i64 %indvars.iv.next707 to i32, !dbg !485
  %exitcond.not = icmp eq i32 %0, %lftr.wideiv, !dbg !485
  br i1 %exitcond.not, label %for.cond156.preheader, label %for.body116, !dbg !488, !llvm.loop !513

for.cond199.preheader:                            ; preds = %for.inc195
  call void @llvm.dbg.value(metadata i32 %middle.1, metadata !367, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %sub113, metadata !366, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %start.tr648, metadata !363, metadata !DIExpression()), !dbg !369
  br i1 %cmp115.not615, label %for.end240, label %for.body201.lr.ph, !dbg !515

for.body201.lr.ph:                                ; preds = %for.cond199.preheader
  %add219 = add i32 %rem653, -1
  %32 = sext i32 %start.tr648 to i64, !dbg !515
  br label %for.body201, !dbg !515

for.body158:                                      ; preds = %for.body158.lr.ph, %for.inc195
  %indvars.iv709 = phi i64 [ %28, %for.body158.lr.ph ], [ %indvars.iv.next710, %for.inc195 ]
  %upper.2625 = phi i32 [ %middle.1, %for.body158.lr.ph ], [ %upper.3, %for.inc195 ]
  %lower.2623 = phi i32 [ %sub113, %for.body158.lr.ph ], [ %lower.3, %for.inc195 ]
  call void @llvm.dbg.value(metadata i32 %upper.2625, metadata !367, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %lower.2623, metadata !366, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i64 %indvars.iv709, metadata !363, metadata !DIExpression()), !dbg !369
  %arrayidx160 = getelementptr inbounds i32, ptr %zn, i64 %indvars.iv709, !dbg !518
  %33 = load i32, ptr %arrayidx160, align 4, !dbg !518, !tbaa !97
  %34 = load i32, ptr %arrayidx111, align 4, !dbg !522, !tbaa !97
  %cmp163.not = icmp eq i32 %33, %34, !dbg !523
  br i1 %cmp163.not, label %for.inc195, label %if.then164, !dbg !524

if.then164:                                       ; preds = %for.body158
  %cmp169 = icmp slt i32 %33, %20
  %or.cond584 = select i1 %cmp84, i1 %cmp169, i1 false, !dbg !525
  br i1 %or.cond584, label %if.then181, label %lor.lhs.false170, !dbg !525

lor.lhs.false170:                                 ; preds = %if.then164
  br i1 %cmp84, label %if.else187, label %land.lhs.true172, !dbg !528

land.lhs.true172:                                 ; preds = %lor.lhs.false170
  %mul175 = mul nsw i32 %33, %dim.tr652, !dbg !529
  %sub177 = add i32 %add176, %mul175, !dbg !530
  %idxprom178 = sext i32 %sub177 to i64, !dbg !531
  %arrayidx179 = getelementptr inbounds double, ptr %x, i64 %idxprom178, !dbg !531
  %35 = load double, ptr %arrayidx179, align 8, !dbg !531, !tbaa !261
  %cmp180 = fcmp olt double %35, %median.0, !dbg !532
  br i1 %cmp180, label %if.then181, label %if.else187, !dbg !533

if.then181:                                       ; preds = %if.then164, %land.lhs.true172
  %inc184 = add nsw i32 %lower.2623, 1, !dbg !534
  call void @llvm.dbg.value(metadata i32 %inc184, metadata !366, metadata !DIExpression()), !dbg !369
  br label %for.inc195.sink.split, !dbg !536

if.else187:                                       ; preds = %land.lhs.true172, %lor.lhs.false170
  %inc190 = add nsw i32 %upper.2625, 1, !dbg !537
  call void @llvm.dbg.value(metadata i32 %inc190, metadata !367, metadata !DIExpression()), !dbg !369
  br label %for.inc195.sink.split

for.inc195.sink.split:                            ; preds = %if.then181, %if.else187
  %inc190.sink = phi i32 [ %inc190, %if.else187 ], [ %inc184, %if.then181 ]
  %lower.3.ph = phi i32 [ %lower.2623, %if.else187 ], [ %inc184, %if.then181 ]
  %upper.3.ph = phi i32 [ %inc190, %if.else187 ], [ %upper.2625, %if.then181 ]
  %idxprom191 = sext i32 %inc190.sink to i64, !dbg !539
  %arrayidx192 = getelementptr inbounds i32, ptr %yn, i64 %idxprom191, !dbg !539
  store i32 %33, ptr %arrayidx192, align 4, !dbg !539, !tbaa !97
  br label %for.inc195, !dbg !540

for.inc195:                                       ; preds = %for.inc195.sink.split, %for.body158
  %lower.3 = phi i32 [ %lower.2623, %for.body158 ], [ %lower.3.ph, %for.inc195.sink.split ], !dbg !466
  %upper.3 = phi i32 [ %upper.2625, %for.body158 ], [ %upper.3.ph, %for.inc195.sink.split ], !dbg !466
  call void @llvm.dbg.value(metadata i32 %upper.3, metadata !367, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %lower.3, metadata !366, metadata !DIExpression()), !dbg !369
  %indvars.iv.next710 = add nsw i64 %indvars.iv709, 1, !dbg !540
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next710, metadata !363, metadata !DIExpression()), !dbg !369
  %lftr.wideiv712 = trunc i64 %indvars.iv.next710 to i32, !dbg !541
  %exitcond713.not = icmp eq i32 %0, %lftr.wideiv712, !dbg !541
  br i1 %exitcond713.not, label %for.cond199.preheader, label %for.body158, !dbg !489, !llvm.loop !542

for.body201:                                      ; preds = %for.body201.lr.ph, %for.inc238
  %indvars.iv714 = phi i64 [ %32, %for.body201.lr.ph ], [ %indvars.iv.next715, %for.inc238 ]
  %upper.4631 = phi i32 [ %middle.1, %for.body201.lr.ph ], [ %upper.5, %for.inc238 ]
  %lower.4629 = phi i32 [ %sub113, %for.body201.lr.ph ], [ %lower.5, %for.inc238 ]
  call void @llvm.dbg.value(metadata i32 %upper.4631, metadata !367, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %lower.4629, metadata !366, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i64 %indvars.iv714, metadata !363, metadata !DIExpression()), !dbg !369
  %arrayidx203 = getelementptr inbounds i32, ptr %wn.tr.ph664, i64 %indvars.iv714, !dbg !544
  %36 = load i32, ptr %arrayidx203, align 4, !dbg !544, !tbaa !97
  %37 = load i32, ptr %arrayidx111, align 4, !dbg !548, !tbaa !97
  %cmp206.not = icmp eq i32 %36, %37, !dbg !549
  br i1 %cmp206.not, label %for.inc238, label %if.then207, !dbg !550

if.then207:                                       ; preds = %for.body201
  %cmp212 = icmp slt i32 %36, %20
  %or.cond585 = select i1 %cmp84, i1 %cmp212, i1 false, !dbg !551
  br i1 %or.cond585, label %if.then224, label %lor.lhs.false213, !dbg !551

lor.lhs.false213:                                 ; preds = %if.then207
  br i1 %cmp84, label %if.else230, label %land.lhs.true215, !dbg !554

land.lhs.true215:                                 ; preds = %lor.lhs.false213
  %mul218 = mul nsw i32 %36, %dim.tr652, !dbg !555
  %sub220 = add i32 %add219, %mul218, !dbg !556
  %idxprom221 = sext i32 %sub220 to i64, !dbg !557
  %arrayidx222 = getelementptr inbounds double, ptr %x, i64 %idxprom221, !dbg !557
  %38 = load double, ptr %arrayidx222, align 8, !dbg !557, !tbaa !261
  %cmp223 = fcmp olt double %38, %median.0, !dbg !558
  br i1 %cmp223, label %if.then224, label %if.else230, !dbg !559

if.then224:                                       ; preds = %if.then207, %land.lhs.true215
  %inc227 = add nsw i32 %lower.4629, 1, !dbg !560
  call void @llvm.dbg.value(metadata i32 %inc227, metadata !366, metadata !DIExpression()), !dbg !369
  br label %for.inc238.sink.split, !dbg !562

if.else230:                                       ; preds = %land.lhs.true215, %lor.lhs.false213
  %inc233 = add nsw i32 %upper.4631, 1, !dbg !563
  call void @llvm.dbg.value(metadata i32 %inc233, metadata !367, metadata !DIExpression()), !dbg !369
  br label %for.inc238.sink.split

for.inc238.sink.split:                            ; preds = %if.then224, %if.else230
  %inc233.sink = phi i32 [ %inc233, %if.else230 ], [ %inc227, %if.then224 ]
  %lower.5.ph = phi i32 [ %lower.4629, %if.else230 ], [ %inc227, %if.then224 ]
  %upper.5.ph = phi i32 [ %inc233, %if.else230 ], [ %upper.4631, %if.then224 ]
  %idxprom234 = sext i32 %inc233.sink to i64, !dbg !565
  %arrayidx235 = getelementptr inbounds i32, ptr %zn, i64 %idxprom234, !dbg !565
  store i32 %36, ptr %arrayidx235, align 4, !dbg !565, !tbaa !97
  br label %for.inc238, !dbg !566

for.inc238:                                       ; preds = %for.inc238.sink.split, %for.body201
  %lower.5 = phi i32 [ %lower.4629, %for.body201 ], [ %lower.5.ph, %for.inc238.sink.split ], !dbg !567
  %upper.5 = phi i32 [ %upper.4631, %for.body201 ], [ %upper.5.ph, %for.inc238.sink.split ], !dbg !567
  call void @llvm.dbg.value(metadata i32 %upper.5, metadata !367, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %lower.5, metadata !366, metadata !DIExpression()), !dbg !369
  %indvars.iv.next715 = add nsw i64 %indvars.iv714, 1, !dbg !566
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next715, metadata !363, metadata !DIExpression()), !dbg !369
  %lftr.wideiv717 = trunc i64 %indvars.iv.next715 to i32, !dbg !568
  %exitcond718.not = icmp eq i32 %0, %lftr.wideiv717, !dbg !568
  br i1 %exitcond718.not, label %for.end240, label %for.body201, !dbg !515, !llvm.loop !569

for.end240:                                       ; preds = %for.inc238, %if.end109, %for.cond156.preheader, %for.cond199.preheader
  %lower.4.lcssa = phi i32 [ %sub113, %for.cond199.preheader ], [ %sub113, %for.cond156.preheader ], [ %sub113, %if.end109 ], [ %lower.5, %for.inc238 ], !dbg !567
  %upper.4.lcssa = phi i32 [ %middle.1, %for.cond199.preheader ], [ %middle.1, %for.cond156.preheader ], [ %middle.1, %if.end109 ], [ %upper.5, %for.inc238 ], !dbg !571
  %cmp241 = icmp eq i32 %dim.tr652, 4, !dbg !572
  br i1 %cmp241, label %for.cond244.preheader, label %if.end286, !dbg !574

for.cond244.preheader:                            ; preds = %for.end240
  call void @llvm.dbg.value(metadata i32 %middle.1, metadata !367, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %sub113, metadata !366, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %start.tr648, metadata !363, metadata !DIExpression()), !dbg !369
  br i1 %cmp115.not615, label %if.end320, label %for.body246.lr.ph, !dbg !575

for.body246.lr.ph:                                ; preds = %for.cond244.preheader
  %add264 = add i32 %rem653, -1
  %39 = sext i32 %start.tr648 to i64, !dbg !575
  br label %for.body246, !dbg !575

for.body246:                                      ; preds = %for.body246.lr.ph, %for.inc283
  %indvars.iv719 = phi i64 [ %39, %for.body246.lr.ph ], [ %indvars.iv.next720, %for.inc283 ]
  %upper.6638 = phi i32 [ %middle.1, %for.body246.lr.ph ], [ %upper.7, %for.inc283 ]
  %lower.6636 = phi i32 [ %sub113, %for.body246.lr.ph ], [ %lower.7, %for.inc283 ]
  call void @llvm.dbg.value(metadata i32 %upper.6638, metadata !367, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %lower.6636, metadata !366, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i64 %indvars.iv719, metadata !363, metadata !DIExpression()), !dbg !369
  %arrayidx248 = getelementptr inbounds i32, ptr %on.tr646, i64 %indvars.iv719, !dbg !578
  %40 = load i32, ptr %arrayidx248, align 4, !dbg !578, !tbaa !97
  %41 = load i32, ptr %arrayidx111, align 4, !dbg !582, !tbaa !97
  %cmp251.not = icmp eq i32 %40, %41, !dbg !583
  br i1 %cmp251.not, label %for.inc283, label %if.then252, !dbg !584

if.then252:                                       ; preds = %for.body246
  %cmp257 = icmp slt i32 %40, %20
  %or.cond586 = select i1 %cmp84, i1 %cmp257, i1 false, !dbg !585
  br i1 %or.cond586, label %if.then269, label %lor.lhs.false258, !dbg !585

lor.lhs.false258:                                 ; preds = %if.then252
  br i1 %cmp84, label %if.else275, label %land.lhs.true260, !dbg !588

land.lhs.true260:                                 ; preds = %lor.lhs.false258
  %mul263 = shl nsw i32 %40, 2, !dbg !589
  %sub265 = add i32 %add264, %mul263, !dbg !590
  %idxprom266 = sext i32 %sub265 to i64, !dbg !591
  %arrayidx267 = getelementptr inbounds double, ptr %x, i64 %idxprom266, !dbg !591
  %42 = load double, ptr %arrayidx267, align 8, !dbg !591, !tbaa !261
  %cmp268 = fcmp olt double %42, %median.0, !dbg !592
  br i1 %cmp268, label %if.then269, label %if.else275, !dbg !593

if.then269:                                       ; preds = %if.then252, %land.lhs.true260
  %inc272 = add nsw i32 %lower.6636, 1, !dbg !594
  call void @llvm.dbg.value(metadata i32 %inc272, metadata !366, metadata !DIExpression()), !dbg !369
  br label %for.inc283.sink.split, !dbg !596

if.else275:                                       ; preds = %land.lhs.true260, %lor.lhs.false258
  %inc278 = add nsw i32 %upper.6638, 1, !dbg !597
  call void @llvm.dbg.value(metadata i32 %inc278, metadata !367, metadata !DIExpression()), !dbg !369
  br label %for.inc283.sink.split

for.inc283.sink.split:                            ; preds = %if.then269, %if.else275
  %inc278.sink = phi i32 [ %inc278, %if.else275 ], [ %inc272, %if.then269 ]
  %lower.7.ph = phi i32 [ %lower.6636, %if.else275 ], [ %inc272, %if.then269 ]
  %upper.7.ph = phi i32 [ %inc278, %if.else275 ], [ %upper.6638, %if.then269 ]
  %idxprom279 = sext i32 %inc278.sink to i64, !dbg !599
  %arrayidx280 = getelementptr inbounds i32, ptr %wn.tr.ph664, i64 %idxprom279, !dbg !599
  store i32 %40, ptr %arrayidx280, align 4, !dbg !599, !tbaa !97
  br label %for.inc283, !dbg !600

for.inc283:                                       ; preds = %for.inc283.sink.split, %for.body246
  %lower.7 = phi i32 [ %lower.6636, %for.body246 ], [ %lower.7.ph, %for.inc283.sink.split ], !dbg !601
  %upper.7 = phi i32 [ %upper.6638, %for.body246 ], [ %upper.7.ph, %for.inc283.sink.split ], !dbg !601
  call void @llvm.dbg.value(metadata i32 %upper.7, metadata !367, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %lower.7, metadata !366, metadata !DIExpression()), !dbg !369
  %indvars.iv.next720 = add nsw i64 %indvars.iv719, 1, !dbg !600
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next720, metadata !363, metadata !DIExpression()), !dbg !369
  %lftr.wideiv722 = trunc i64 %indvars.iv.next720 to i32, !dbg !602
  %exitcond723.not = icmp eq i32 %0, %lftr.wideiv722, !dbg !602
  br i1 %exitcond723.not, label %if.end286, label %for.body246, !dbg !575, !llvm.loop !603

if.end286:                                        ; preds = %for.inc283, %for.end240
  %lower.8 = phi i32 [ %lower.4.lcssa, %for.end240 ], [ %lower.7, %for.inc283 ], !dbg !466
  %upper.8 = phi i32 [ %upper.4.lcssa, %for.end240 ], [ %upper.7, %for.inc283 ], !dbg !466
  call void @llvm.dbg.value(metadata i32 %upper.8, metadata !367, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %lower.8, metadata !366, metadata !DIExpression()), !dbg !369
  %cmp287.not = icmp slt i32 %lower.8, %start.tr648, !dbg !605
  br i1 %cmp287.not, label %if.end301, label %if.then288, !dbg !607

if.then288:                                       ; preds = %if.end286
  %43 = load ptr, ptr %kdpptr, align 8, !dbg !608, !tbaa !76
  %lo289 = getelementptr inbounds %struct.kdnode, ptr %43, i64 0, i32 1, !dbg !610
  store ptr null, ptr %lo289, align 8, !dbg !611, !tbaa !411
  %44 = load ptr, ptr %kdpptr, align 8, !dbg !612, !tbaa !76
  %hi290 = getelementptr inbounds %struct.kdnode, ptr %44, i64 0, i32 2, !dbg !613
  store ptr null, ptr %hi290, align 8, !dbg !614, !tbaa !415
  %45 = load ptr, ptr %kdpptr, align 8, !dbg !615, !tbaa !76
  %incdec.ptr291 = getelementptr inbounds %struct.kdnode, ptr %45, i64 1, !dbg !615
  store ptr %incdec.ptr291, ptr %kdpptr, align 8, !dbg !615, !tbaa !76
  %lo292 = getelementptr inbounds %struct.kdnode, ptr %that.tr651, i64 0, i32 1, !dbg !616
  store ptr %45, ptr %lo292, align 8, !dbg !617, !tbaa !411
  %add296 = add nsw i32 %rem653, 1, !dbg !618
  br i1 %cmp241, label %if.then294, label %if.else297, !dbg !620

if.then294:                                       ; preds = %if.then288
  tail call fastcc void @buildkdtree(ptr noundef %tn.tr647, ptr noundef %yn, ptr noundef %zn, ptr noundef %wn.tr.ph664, ptr noundef nonnull %xn.tr645, ptr noundef %on.tr646, i32 noundef %start.tr648, i32 noundef %lower.8, ptr noundef nonnull %kdpptr, ptr noundef %45, ptr noundef %x, i32 noundef %add296, i32 noundef 4), !dbg !621
  br label %if.end301, !dbg !623

if.else297:                                       ; preds = %if.then288
  tail call fastcc void @buildkdtree(ptr noundef %tn.tr647, ptr noundef %yn, ptr noundef %zn, ptr noundef nonnull %xn.tr645, ptr noundef %on.tr646, ptr noundef %wn.tr.ph664, i32 noundef %start.tr648, i32 noundef %lower.8, ptr noundef nonnull %kdpptr, ptr noundef %45, ptr noundef %x, i32 noundef %add296, i32 noundef %dim.tr652), !dbg !624
  br label %if.end301

if.end301:                                        ; preds = %if.then294, %if.else297, %if.end286
  %cmp302 = icmp sgt i32 %upper.8, %middle.1, !dbg !626
  br i1 %cmp302, label %if.then303, label %if.end320, !dbg !628

if.then303:                                       ; preds = %if.end301
  %46 = load ptr, ptr %kdpptr, align 8, !dbg !629, !tbaa !76
  %lo304 = getelementptr inbounds %struct.kdnode, ptr %46, i64 0, i32 1, !dbg !631
  store ptr null, ptr %lo304, align 8, !dbg !632, !tbaa !411
  %47 = load ptr, ptr %kdpptr, align 8, !dbg !633, !tbaa !76
  %hi305 = getelementptr inbounds %struct.kdnode, ptr %47, i64 0, i32 2, !dbg !634
  store ptr null, ptr %hi305, align 8, !dbg !635, !tbaa !415
  %48 = load ptr, ptr %kdpptr, align 8, !dbg !636, !tbaa !76
  %incdec.ptr306 = getelementptr inbounds %struct.kdnode, ptr %48, i64 1, !dbg !636
  store ptr %incdec.ptr306, ptr %kdpptr, align 8, !dbg !636, !tbaa !76
  %hi307 = getelementptr inbounds %struct.kdnode, ptr %that.tr651, i64 0, i32 2, !dbg !637
  store ptr %48, ptr %hi307, align 8, !dbg !638, !tbaa !415
  %add310 = add nsw i32 %middle.1, 1, !dbg !639
  %add312 = add nsw i32 %rem653, 1, !dbg !639
  call void @llvm.dbg.value(metadata ptr %tn.tr647, metadata !350, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %tn.tr647, metadata !350, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %yn, metadata !351, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %yn, metadata !351, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %zn, metadata !352, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %zn, metadata !352, metadata !DIExpression()), !dbg !369
  br i1 %cmp241, label %if.then309, label %if.else313, !dbg !641

if.then309:                                       ; preds = %if.then303
  call void @llvm.dbg.value(metadata ptr %wn.tr.ph664, metadata !353, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %xn.tr645, metadata !354, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %on.tr646, metadata !355, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %add310, metadata !356, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %end, metadata !357, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %kdpptr, metadata !358, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %48, metadata !359, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %x, metadata !360, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %add312, metadata !361, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 4, metadata !362, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !368, metadata !DIExpression()), !dbg !369
  %rem = srem i32 %add312, 5, !dbg !374
  call void @llvm.dbg.value(metadata i32 %rem, metadata !361, metadata !DIExpression()), !dbg !369
  %cmp = icmp eq i32 %add310, %end, !dbg !370
  br i1 %cmp, label %if.then, label %if.else, !dbg !372

if.else313:                                       ; preds = %if.then303
  call void @llvm.dbg.value(metadata ptr %xn.tr645, metadata !353, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %on.tr646, metadata !354, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %wn.tr.ph664, metadata !355, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %add310, metadata !356, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %end, metadata !357, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %kdpptr, metadata !358, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %48, metadata !359, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %x, metadata !360, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %add312, metadata !361, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %dim.tr652, metadata !362, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !368, metadata !DIExpression()), !dbg !369
  %add642 = add nsw i32 %dim.tr652, 1, !dbg !373
  %rem643 = srem i32 %add312, %add642, !dbg !374
  call void @llvm.dbg.value(metadata i32 %rem643, metadata !361, metadata !DIExpression()), !dbg !369
  %cmp644 = icmp eq i32 %add310, %end, !dbg !370
  br i1 %cmp644, label %if.then, label %if.else.lr.ph, !dbg !372

if.end320:                                        ; preds = %for.cond244.preheader, %if.end301, %if.then59, %if.else70, %if.then25, %if.then
  ret void, !dbg !642
}

; Function Attrs: argmemonly nofree nosync nounwind uwtable
define internal fastcc void @searchkdtree(ptr nocapture noundef readonly %that, ptr noundef %x, i32 noundef %p, i32 noundef %q, ptr noundef %loindexp, ptr noundef %upindexp, ptr noundef %lopairlist, ptr noundef %uppairlist, double noundef %cut, double noundef %cut2, i32 noundef %dim, ptr noundef %frozen) unnamed_addr #8 !dbg !643 {
entry:
  %mul99 = mul nsw i32 %dim, %q, !dbg !664
  %add = add nsw i32 %dim, 1
  %idxprom20 = sext i32 %q to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %frozen, i64 %idxprom20
  %idxprom30 = sext i32 %mul99 to i64
  %arrayidx31 = getelementptr inbounds double, ptr %x, i64 %idxprom30
  %add39 = add nsw i32 %mul99, 1
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds double, ptr %x, i64 %idxprom40
  %add49 = add nsw i32 %mul99, 2
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds double, ptr %x, i64 %idxprom50
  %cmp61 = icmp eq i32 %dim, 4
  %add64 = add nsw i32 %mul99, 3
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds double, ptr %x, i64 %idxprom65
  br label %tailrecurse, !dbg !666

tailrecurse:                                      ; preds = %if.then112, %entry
  %that.tr = phi ptr [ %that, %entry ], [ %20, %if.then112 ]
  %p.tr = phi i32 [ %p, %entry ], [ %add114, %if.then112 ]
  call void @llvm.dbg.value(metadata ptr %that.tr, metadata !647, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata ptr %x, metadata !648, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata i32 %p.tr, metadata !649, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata i32 %q, metadata !650, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata ptr %loindexp, metadata !651, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata ptr %upindexp, metadata !652, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata ptr %lopairlist, metadata !653, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata ptr %uppairlist, metadata !654, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata double %cut, metadata !655, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata double %cut2, metadata !656, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata i32 %dim, metadata !657, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata ptr %frozen, metadata !658, metadata !DIExpression()), !dbg !668
  %rem = srem i32 %p.tr, %add, !dbg !669
  call void @llvm.dbg.value(metadata i32 %rem, metadata !649, metadata !DIExpression()), !dbg !668
  %cmp = icmp eq i32 %rem, 0, !dbg !670
  %hi = getelementptr inbounds %struct.kdnode, ptr %that.tr, i64 0, i32 2, !dbg !672
  %0 = load ptr, ptr %hi, align 8, !dbg !672, !tbaa !415
  %cmp1.not = icmp eq ptr %0, null, !dbg !672
  br i1 %cmp, label %land.lhs.true, label %land.lhs.true3, !dbg !673

land.lhs.true:                                    ; preds = %tailrecurse
  br i1 %cmp1.not, label %if.end, label %if.then, !dbg !674

land.lhs.true3:                                   ; preds = %tailrecurse
  br i1 %cmp1.not, label %if.end, label %land.lhs.true6, !dbg !675

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %add7 = add nsw i32 %rem, -1, !dbg !676
  %sub = add i32 %add7, %mul99, !dbg !677
  %idxprom = sext i32 %sub to i64, !dbg !678
  %arrayidx = getelementptr inbounds double, ptr %x, i64 %idxprom, !dbg !678
  %1 = load double, ptr %arrayidx, align 8, !dbg !678, !tbaa !261
  %add8 = fadd double %1, %cut, !dbg !679
  %2 = load i32, ptr %that.tr, align 8, !dbg !680, !tbaa !378
  %mul9 = mul nsw i32 %2, %dim, !dbg !681
  %sub11 = add i32 %add7, %mul9, !dbg !682
  %idxprom12 = sext i32 %sub11 to i64, !dbg !683
  %arrayidx13 = getelementptr inbounds double, ptr %x, i64 %idxprom12, !dbg !683
  %3 = load double, ptr %arrayidx13, align 8, !dbg !683, !tbaa !261
  %cmp14 = fcmp ult double %add8, %3, !dbg !684
  br i1 %cmp14, label %if.end, label %if.then, !dbg !685

if.then:                                          ; preds = %land.lhs.true6, %land.lhs.true
  %add16 = add nsw i32 %rem, 1, !dbg !686
  tail call fastcc void @searchkdtree(ptr noundef nonnull %0, ptr noundef %x, i32 noundef %add16, i32 noundef %q, ptr noundef %loindexp, ptr noundef %upindexp, ptr noundef %lopairlist, ptr noundef %uppairlist, double noundef %cut, double noundef %cut2, i32 noundef %dim, ptr noundef %frozen), !dbg !688
  br label %if.end, !dbg !689

if.end:                                           ; preds = %land.lhs.true, %if.then, %land.lhs.true6, %land.lhs.true3
  %4 = load i32, ptr %that.tr, align 8, !dbg !690, !tbaa !378
  %cmp18.not = icmp eq i32 %4, %q, !dbg !692
  br i1 %cmp18.not, label %if.end89, label %land.lhs.true19, !dbg !693

land.lhs.true19:                                  ; preds = %if.end
  %5 = load i32, ptr %arrayidx21, align 4, !dbg !694, !tbaa !97
  %tobool.not = icmp eq i32 %5, 0, !dbg !694
  br i1 %tobool.not, label %if.then27, label %lor.lhs.false22, !dbg !695

lor.lhs.false22:                                  ; preds = %land.lhs.true19
  %idxprom24 = sext i32 %4 to i64, !dbg !696
  %arrayidx25 = getelementptr inbounds i32, ptr %frozen, i64 %idxprom24, !dbg !696
  %6 = load i32, ptr %arrayidx25, align 4, !dbg !696, !tbaa !97
  %tobool26.not = icmp eq i32 %6, 0, !dbg !696
  br i1 %tobool26.not, label %if.then27, label %if.end89, !dbg !697

if.then27:                                        ; preds = %lor.lhs.false22, %land.lhs.true19
  %7 = load double, ptr %arrayidx31, align 8, !dbg !698, !tbaa !261
  %mul33 = mul nsw i32 %4, %dim, !dbg !700
  %idxprom35 = sext i32 %mul33 to i64, !dbg !701
  %arrayidx36 = getelementptr inbounds double, ptr %x, i64 %idxprom35, !dbg !701
  %8 = load double, ptr %arrayidx36, align 8, !dbg !701, !tbaa !261
  %sub37 = fsub double %7, %8, !dbg !702
  call void @llvm.dbg.value(metadata double %sub37, metadata !659, metadata !DIExpression()), !dbg !668
  %9 = load double, ptr %arrayidx41, align 8, !dbg !703, !tbaa !261
  %add44 = add nsw i32 %mul33, 1, !dbg !704
  %idxprom45 = sext i32 %add44 to i64, !dbg !705
  %arrayidx46 = getelementptr inbounds double, ptr %x, i64 %idxprom45, !dbg !705
  %10 = load double, ptr %arrayidx46, align 8, !dbg !705, !tbaa !261
  %sub47 = fsub double %9, %10, !dbg !706
  call void @llvm.dbg.value(metadata double %sub47, metadata !660, metadata !DIExpression()), !dbg !668
  %11 = load double, ptr %arrayidx51, align 8, !dbg !707, !tbaa !261
  %add54 = add nsw i32 %mul33, 2, !dbg !708
  %idxprom55 = sext i32 %add54 to i64, !dbg !709
  %arrayidx56 = getelementptr inbounds double, ptr %x, i64 %idxprom55, !dbg !709
  %12 = load double, ptr %arrayidx56, align 8, !dbg !709, !tbaa !261
  %sub57 = fsub double %11, %12, !dbg !710
  call void @llvm.dbg.value(metadata double %sub57, metadata !661, metadata !DIExpression()), !dbg !668
  %mul59 = fmul double %sub47, %sub47, !dbg !711
  %13 = tail call double @llvm.fmuladd.f64(double %sub37, double %sub37, double %mul59), !dbg !712
  %14 = tail call double @llvm.fmuladd.f64(double %sub57, double %sub57, double %13), !dbg !713
  call void @llvm.dbg.value(metadata double %14, metadata !663, metadata !DIExpression()), !dbg !668
  br i1 %cmp61, label %if.then62, label %if.end74, !dbg !714

if.then62:                                        ; preds = %if.then27
  %15 = load double, ptr %arrayidx66, align 8, !dbg !715, !tbaa !261
  %add69 = add nsw i32 %mul33, 3, !dbg !718
  %idxprom70 = sext i32 %add69 to i64, !dbg !719
  %arrayidx71 = getelementptr inbounds double, ptr %x, i64 %idxprom70, !dbg !719
  %16 = load double, ptr %arrayidx71, align 8, !dbg !719, !tbaa !261
  %sub72 = fsub double %15, %16, !dbg !720
  call void @llvm.dbg.value(metadata double %sub72, metadata !662, metadata !DIExpression()), !dbg !668
  %17 = tail call double @llvm.fmuladd.f64(double %sub72, double %sub72, double %14), !dbg !721
  call void @llvm.dbg.value(metadata double %17, metadata !663, metadata !DIExpression()), !dbg !668
  br label %if.end74, !dbg !722

if.end74:                                         ; preds = %if.then62, %if.then27
  %r2.0 = phi double [ %17, %if.then62 ], [ %14, %if.then27 ], !dbg !723
  call void @llvm.dbg.value(metadata double %r2.0, metadata !663, metadata !DIExpression()), !dbg !668
  %cmp75 = fcmp olt double %r2.0, %cut2, !dbg !724
  br i1 %cmp75, label %if.then76, label %if.end89, !dbg !726

if.then76:                                        ; preds = %if.end74
  %cmp78 = icmp slt i32 %4, %q, !dbg !727
  %loindexp.upindexp = select i1 %cmp78, ptr %loindexp, ptr %upindexp
  %lopairlist.uppairlist = select i1 %cmp78, ptr %lopairlist, ptr %uppairlist
  %18 = load i32, ptr %loindexp.upindexp, align 4, !dbg !730, !tbaa !97
  %idxprom84 = sext i32 %18 to i64, !dbg !730
  %arrayidx85 = getelementptr inbounds i32, ptr %lopairlist.uppairlist, i64 %idxprom84, !dbg !730
  store i32 %4, ptr %arrayidx85, align 4, !dbg !730, !tbaa !97
  %19 = load i32, ptr %loindexp.upindexp, align 4, !dbg !730, !tbaa !97
  %inc86 = add nsw i32 %19, 1, !dbg !730
  store i32 %inc86, ptr %loindexp.upindexp, align 4, !dbg !730, !tbaa !97
  br label %if.end89, !dbg !731

if.end89:                                         ; preds = %if.then76, %if.end74, %lor.lhs.false22, %if.end
  %lo = getelementptr inbounds %struct.kdnode, ptr %that.tr, i64 0, i32 1, !dbg !732
  %20 = load ptr, ptr %lo, align 8, !dbg !732, !tbaa !411
  %cmp92.not = icmp eq ptr %20, null, !dbg !732
  br i1 %cmp, label %land.lhs.true91, label %land.lhs.true95, !dbg !731

land.lhs.true91:                                  ; preds = %if.end89
  br i1 %cmp92.not, label %if.end115, label %if.then112, !dbg !733

land.lhs.true95:                                  ; preds = %if.end89
  br i1 %cmp92.not, label %if.end115, label %land.lhs.true98, !dbg !734

land.lhs.true98:                                  ; preds = %land.lhs.true95
  %add100 = add nsw i32 %rem, -1, !dbg !735
  %sub101 = add i32 %add100, %mul99, !dbg !736
  %idxprom102 = sext i32 %sub101 to i64, !dbg !737
  %arrayidx103 = getelementptr inbounds double, ptr %x, i64 %idxprom102, !dbg !737
  %21 = load double, ptr %arrayidx103, align 8, !dbg !737, !tbaa !261
  %sub104 = fsub double %21, %cut, !dbg !738
  %22 = load i32, ptr %that.tr, align 8, !dbg !739, !tbaa !378
  %mul106 = mul nsw i32 %22, %dim, !dbg !740
  %sub108 = add i32 %add100, %mul106, !dbg !741
  %idxprom109 = sext i32 %sub108 to i64, !dbg !742
  %arrayidx110 = getelementptr inbounds double, ptr %x, i64 %idxprom109, !dbg !742
  %23 = load double, ptr %arrayidx110, align 8, !dbg !742, !tbaa !261
  %cmp111 = fcmp olt double %sub104, %23, !dbg !743
  br i1 %cmp111, label %if.then112, label %if.end115, !dbg !744

if.then112:                                       ; preds = %land.lhs.true98, %land.lhs.true91
  %add114 = add nsw i32 %rem, 1, !dbg !745
  br label %tailrecurse, !dbg !666

if.end115:                                        ; preds = %land.lhs.true91, %land.lhs.true98, %land.lhs.true95
  ret void, !dbg !746
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal fastcc void @heapsort_pairs(ptr nocapture noundef %a, i32 noundef %n) unnamed_addr #6 !dbg !747 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !751, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.value(metadata i32 %n, metadata !752, metadata !DIExpression()), !dbg !755
  %div = sdiv i32 %n, 2, !dbg !756
  call void @llvm.dbg.value(metadata i32 %div, metadata !753, metadata !DIExpression()), !dbg !755
  %cmp58 = icmp sgt i32 %n, 1, !dbg !758
  br i1 %cmp58, label %for.body.preheader, label %while.end, !dbg !760

for.body.preheader:                               ; preds = %entry
  %0 = zext i32 %div to i64, !dbg !760
  %1 = sext i32 %div to i64, !dbg !760
  br label %for.body, !dbg !760

while.cond.preheader:                             ; preds = %downheap_pairs.exit
  call void @llvm.dbg.value(metadata i32 %n, metadata !752, metadata !DIExpression()), !dbg !755
  br i1 %cmp58, label %while.body.preheader, label %while.end, !dbg !761

while.body.preheader:                             ; preds = %while.cond.preheader
  %2 = zext i32 %n to i64, !dbg !761
  br label %while.body, !dbg !761

for.body:                                         ; preds = %for.body.preheader, %downheap_pairs.exit
  %indvars.iv = phi i64 [ %0, %for.body.preheader ], [ %indvars.iv.next, %downheap_pairs.exit ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !753, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.value(metadata ptr %a, metadata !762, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.value(metadata i32 %n, metadata !767, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !768, metadata !DIExpression()), !dbg !771
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !773
  %indvars = trunc i64 %indvars.iv.next to i32, !dbg !773
  %3 = and i64 %indvars.iv.next, 4294967295
  %arrayidx.i = getelementptr inbounds i32, ptr %a, i64 %3, !dbg !774
  %4 = load i32, ptr %arrayidx.i, align 4, !dbg !774, !tbaa !97
  call void @llvm.dbg.value(metadata i32 %4, metadata !770, metadata !DIExpression()), !dbg !771
  %cmp.not42.i = icmp sgt i64 %indvars.iv, %1, !dbg !775
  br i1 %cmp.not42.i, label %downheap_pairs.exit, label %while.body.i.preheader, !dbg !776

while.body.i.preheader:                           ; preds = %for.body
  %5 = trunc i64 %indvars.iv to i32, !dbg !776
  br label %while.body.i, !dbg !776

while.body.i:                                     ; preds = %while.body.i.preheader, %if.end13.i
  %k.addr.043.i = phi i32 [ %j.0.i, %if.end13.i ], [ %5, %while.body.i.preheader ]
  call void @llvm.dbg.value(metadata i32 %k.addr.043.i, metadata !768, metadata !DIExpression()), !dbg !771
  %add.i = shl nsw i32 %k.addr.043.i, 1, !dbg !777
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !769, metadata !DIExpression()), !dbg !771
  %cmp1.i = icmp slt i32 %add.i, %n, !dbg !779
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i, !dbg !781

land.lhs.true.i:                                  ; preds = %while.body.i
  %sub2.i = add nsw i32 %add.i, -1, !dbg !782
  %idxprom3.i = sext i32 %sub2.i to i64, !dbg !783
  %arrayidx4.i = getelementptr inbounds i32, ptr %a, i64 %idxprom3.i, !dbg !783
  %6 = load i32, ptr %arrayidx4.i, align 4, !dbg !783, !tbaa !97
  %idxprom5.i = sext i32 %add.i to i64, !dbg !784
  %arrayidx6.i = getelementptr inbounds i32, ptr %a, i64 %idxprom5.i, !dbg !784
  %7 = load i32, ptr %arrayidx6.i, align 4, !dbg !784, !tbaa !97
  %cmp7.i = icmp slt i32 %6, %7, !dbg !785
  %inc.i = zext i1 %cmp7.i to i32, !dbg !786
  %spec.select.i = or i32 %add.i, %inc.i, !dbg !786
  br label %if.end.i, !dbg !786

if.end.i:                                         ; preds = %land.lhs.true.i, %while.body.i
  %j.0.i = phi i32 [ %add.i, %while.body.i ], [ %spec.select.i, %land.lhs.true.i ], !dbg !787
  call void @llvm.dbg.value(metadata i32 %j.0.i, metadata !769, metadata !DIExpression()), !dbg !771
  %sub8.i = add nsw i32 %j.0.i, -1, !dbg !788
  %idxprom9.i = sext i32 %sub8.i to i64, !dbg !790
  %arrayidx10.i = getelementptr inbounds i32, ptr %a, i64 %idxprom9.i, !dbg !790
  %8 = load i32, ptr %arrayidx10.i, align 4, !dbg !790, !tbaa !97
  %cmp11.not.i = icmp slt i32 %4, %8, !dbg !791
  %sub17.i = add nsw i32 %k.addr.043.i, -1, !dbg !771
  br i1 %cmp11.not.i, label %if.end13.i, label %downheap_pairs.exit, !dbg !792

if.end13.i:                                       ; preds = %if.end.i
  %idxprom18.i = sext i32 %sub17.i to i64, !dbg !793
  %arrayidx19.i = getelementptr inbounds i32, ptr %a, i64 %idxprom18.i, !dbg !793
  store i32 %8, ptr %arrayidx19.i, align 4, !dbg !794, !tbaa !97
  call void @llvm.dbg.value(metadata i32 %j.0.i, metadata !768, metadata !DIExpression()), !dbg !771
  %cmp.not.i = icmp sgt i32 %j.0.i, %div, !dbg !775
  br i1 %cmp.not.i, label %downheap_pairs.exit, label %while.body.i, !dbg !776, !llvm.loop !795

downheap_pairs.exit:                              ; preds = %if.end13.i, %if.end.i, %for.body
  %sub20.pre-phi.i = phi i32 [ %indvars, %for.body ], [ %sub8.i, %if.end13.i ], [ %sub17.i, %if.end.i ], !dbg !797
  %idxprom21.i = sext i32 %sub20.pre-phi.i to i64, !dbg !798
  %arrayidx22.i = getelementptr inbounds i32, ptr %a, i64 %idxprom21.i, !dbg !798
  store i32 %4, ptr %arrayidx22.i, align 4, !dbg !799, !tbaa !97
  call void @llvm.dbg.value(metadata i32 %indvars, metadata !753, metadata !DIExpression()), !dbg !755
  %cmp = icmp sgt i64 %indvars.iv, 1, !dbg !758
  br i1 %cmp, label %for.body, label %while.cond.preheader, !dbg !760, !llvm.loop !800

while.body:                                       ; preds = %while.body.preheader, %downheap_pairs.exit51
  %indvars.iv67 = phi i64 [ %2, %while.body.preheader ], [ %indvars.iv.next68, %downheap_pairs.exit51 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv67, metadata !752, metadata !DIExpression()), !dbg !755
  %9 = load i32, ptr %a, align 4, !dbg !802, !tbaa !97
  call void @llvm.dbg.value(metadata i32 %9, metadata !754, metadata !DIExpression()), !dbg !755
  %indvars.iv.next68 = add nsw i64 %indvars.iv67, -1, !dbg !804
  %indvars69 = trunc i64 %indvars.iv.next68 to i32, !dbg !804
  %10 = and i64 %indvars.iv.next68, 4294967295
  %arrayidx2 = getelementptr inbounds i32, ptr %a, i64 %10, !dbg !805
  %11 = load i32, ptr %arrayidx2, align 4, !dbg !805, !tbaa !97
  store i32 %11, ptr %a, align 4, !dbg !806, !tbaa !97
  store i32 %9, ptr %arrayidx2, align 4, !dbg !807, !tbaa !97
  call void @llvm.dbg.value(metadata i32 %indvars69, metadata !752, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.value(metadata ptr %a, metadata !762, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata i32 %indvars69, metadata !767, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata i32 1, metadata !768, metadata !DIExpression()), !dbg !808
  %12 = load i32, ptr %a, align 4, !dbg !810, !tbaa !97
  call void @llvm.dbg.value(metadata i32 %12, metadata !770, metadata !DIExpression()), !dbg !808
  %div.i205253 = lshr i32 %indvars69, 1
  %cmp.not42.i21 = icmp ult i32 %indvars69, 2, !dbg !811
  br i1 %cmp.not42.i21, label %downheap_pairs.exit51, label %while.body.i25, !dbg !812

while.body.i25:                                   ; preds = %while.body, %if.end13.i47
  %k.addr.043.i22 = phi i32 [ %j.0.i35, %if.end13.i47 ], [ 1, %while.body ]
  call void @llvm.dbg.value(metadata i32 %k.addr.043.i22, metadata !768, metadata !DIExpression()), !dbg !808
  %add.i23 = shl nsw i32 %k.addr.043.i22, 1, !dbg !813
  call void @llvm.dbg.value(metadata i32 %add.i23, metadata !769, metadata !DIExpression()), !dbg !808
  %cmp1.i24 = icmp slt i32 %add.i23, %indvars69, !dbg !814
  br i1 %cmp1.i24, label %land.lhs.true.i34, label %if.end.i40, !dbg !815

land.lhs.true.i34:                                ; preds = %while.body.i25
  %sub2.i26 = add nsw i32 %add.i23, -1, !dbg !816
  %idxprom3.i27 = sext i32 %sub2.i26 to i64, !dbg !817
  %arrayidx4.i28 = getelementptr inbounds i32, ptr %a, i64 %idxprom3.i27, !dbg !817
  %13 = load i32, ptr %arrayidx4.i28, align 4, !dbg !817, !tbaa !97
  %idxprom5.i29 = sext i32 %add.i23 to i64, !dbg !818
  %arrayidx6.i30 = getelementptr inbounds i32, ptr %a, i64 %idxprom5.i29, !dbg !818
  %14 = load i32, ptr %arrayidx6.i30, align 4, !dbg !818, !tbaa !97
  %cmp7.i31 = icmp slt i32 %13, %14, !dbg !819
  %inc.i32 = zext i1 %cmp7.i31 to i32, !dbg !820
  %spec.select.i33 = or i32 %add.i23, %inc.i32, !dbg !820
  br label %if.end.i40, !dbg !820

if.end.i40:                                       ; preds = %land.lhs.true.i34, %while.body.i25
  %j.0.i35 = phi i32 [ %add.i23, %while.body.i25 ], [ %spec.select.i33, %land.lhs.true.i34 ], !dbg !821
  call void @llvm.dbg.value(metadata i32 %j.0.i35, metadata !769, metadata !DIExpression()), !dbg !808
  %sub8.i36 = add nsw i32 %j.0.i35, -1, !dbg !822
  %idxprom9.i37 = sext i32 %sub8.i36 to i64, !dbg !823
  %arrayidx10.i38 = getelementptr inbounds i32, ptr %a, i64 %idxprom9.i37, !dbg !823
  %15 = load i32, ptr %arrayidx10.i38, align 4, !dbg !823, !tbaa !97
  %cmp11.not.i39 = icmp slt i32 %12, %15, !dbg !824
  %sub17.i43 = add nsw i32 %k.addr.043.i22, -1, !dbg !808
  br i1 %cmp11.not.i39, label %if.end13.i47, label %downheap_pairs.exit51, !dbg !825

if.end13.i47:                                     ; preds = %if.end.i40
  %idxprom18.i44 = sext i32 %sub17.i43 to i64, !dbg !826
  %arrayidx19.i45 = getelementptr inbounds i32, ptr %a, i64 %idxprom18.i44, !dbg !826
  store i32 %15, ptr %arrayidx19.i45, align 4, !dbg !827, !tbaa !97
  call void @llvm.dbg.value(metadata i32 %j.0.i35, metadata !768, metadata !DIExpression()), !dbg !808
  %cmp.not.i46 = icmp sgt i32 %j.0.i35, %div.i205253, !dbg !811
  br i1 %cmp.not.i46, label %downheap_pairs.exit51, label %while.body.i25, !dbg !812, !llvm.loop !828

downheap_pairs.exit51:                            ; preds = %if.end13.i47, %if.end.i40, %while.body
  %sub20.pre-phi.i48 = phi i32 [ 0, %while.body ], [ %sub8.i36, %if.end13.i47 ], [ %sub17.i43, %if.end.i40 ], !dbg !830
  %idxprom21.i49 = sext i32 %sub20.pre-phi.i48 to i64, !dbg !831
  %arrayidx22.i50 = getelementptr inbounds i32, ptr %a, i64 %idxprom21.i49, !dbg !831
  store i32 %12, ptr %arrayidx22.i50, align 4, !dbg !832, !tbaa !97
  call void @llvm.dbg.value(metadata i32 %indvars69, metadata !752, metadata !DIExpression()), !dbg !755
  %cmp1 = icmp sgt i64 %indvars.iv67, 2, !dbg !833
  br i1 %cmp1, label %while.body, label %while.end, !dbg !761, !llvm.loop !834

while.end:                                        ; preds = %downheap_pairs.exit51, %entry, %while.cond.preheader
  ret void, !dbg !836
}

declare !dbg !837 void @free_ivector(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold }
attributes #15 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/544.nab_r/src/nblist.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/544.nab_r", checksumkind: CSK_MD5, checksum: "684f45f1e0348fc50a0da53086e69592")
!2 = !{!3, !14}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "KDNODE_T", file: !5, line: 40, baseType: !6)
!5 = !DIFile(filename: "apps/544.nab_r/src/nblist.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "684f45f1e0348fc50a0da53086e69592")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kdnode", file: !5, line: 37, size: 192, elements: !7)
!7 = !{!8, !11, !13}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !6, file: !5, line: 38, baseType: !9, size: 32)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT_T", file: !5, line: 23, baseType: !10)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "lo", scope: !6, file: !5, line: 39, baseType: !12, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "hi", scope: !6, file: !5, line: 39, baseType: !12, size: 64, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 7, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 2}
!21 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!22 = distinct !DISubprogram(name: "nblist", scope: !5, file: !5, line: 783, type: !23, scopeLine: 786, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !30)
!23 = !DISubroutineType(types: !24)
!24 = !{!9, !25, !25, !26, !27, !9, !9, !28, !10, !10, !29}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!31 = !DILocalVariable(name: "lpears", arg: 1, scope: !22, file: !5, line: 783, type: !25)
!32 = !DILocalVariable(name: "upears", arg: 2, scope: !22, file: !5, line: 783, type: !25)
!33 = !DILocalVariable(name: "pearlist", arg: 3, scope: !22, file: !5, line: 783, type: !26)
!34 = !DILocalVariable(name: "x", arg: 4, scope: !22, file: !5, line: 783, type: !27)
!35 = !DILocalVariable(name: "context_PxQ", arg: 5, scope: !22, file: !5, line: 784, type: !9)
!36 = !DILocalVariable(name: "derivs", arg: 6, scope: !22, file: !5, line: 784, type: !9)
!37 = !DILocalVariable(name: "cutoff", arg: 7, scope: !22, file: !5, line: 784, type: !28)
!38 = !DILocalVariable(name: "natom", arg: 8, scope: !22, file: !5, line: 784, type: !10)
!39 = !DILocalVariable(name: "dim", arg: 9, scope: !22, file: !5, line: 785, type: !10)
!40 = !DILocalVariable(name: "frozen", arg: 10, scope: !22, file: !5, line: 785, type: !29)
!41 = !DILocalVariable(name: "i", scope: !22, file: !5, line: 787, type: !10)
!42 = !DILocalVariable(name: "j", scope: !22, file: !5, line: 787, type: !10)
!43 = !DILocalVariable(name: "locnt", scope: !22, file: !5, line: 787, type: !10)
!44 = !DILocalVariable(name: "upcnt", scope: !22, file: !5, line: 787, type: !10)
!45 = !DILocalVariable(name: "totpair", scope: !22, file: !5, line: 787, type: !10)
!46 = !DILocalVariable(name: "numthreads", scope: !22, file: !5, line: 787, type: !10)
!47 = !DILocalVariable(name: "threadnum", scope: !22, file: !5, line: 787, type: !10)
!48 = !DILocalVariable(name: "blocksize", scope: !22, file: !5, line: 787, type: !10)
!49 = !DILocalVariable(name: "xn", scope: !22, file: !5, line: 788, type: !29)
!50 = !DILocalVariable(name: "yn", scope: !22, file: !5, line: 788, type: !29)
!51 = !DILocalVariable(name: "zn", scope: !22, file: !5, line: 788, type: !29)
!52 = !DILocalVariable(name: "wn", scope: !22, file: !5, line: 788, type: !29)
!53 = !DILocalVariable(name: "on", scope: !22, file: !5, line: 788, type: !29)
!54 = !DILocalVariable(name: "tn", scope: !22, file: !5, line: 788, type: !29)
!55 = !DILocalVariable(name: "lopairlist", scope: !22, file: !5, line: 788, type: !29)
!56 = !DILocalVariable(name: "uppairlist", scope: !22, file: !5, line: 788, type: !29)
!57 = !DILocalVariable(name: "cutoff2", scope: !22, file: !5, line: 789, type: !28)
!58 = !DILocalVariable(name: "kdtree", scope: !22, file: !5, line: 790, type: !3)
!59 = !DILocalVariable(name: "kdptr", scope: !22, file: !5, line: 790, type: !3)
!60 = !DILocalVariable(name: "root", scope: !22, file: !5, line: 790, type: !3)
!61 = !DILocation(line: 0, scope: !22)
!62 = !DILocation(line: 787, column: 4, scope: !22)
!63 = !DILocation(line: 787, column: 37, scope: !22)
!64 = !DILocation(line: 787, column: 49, scope: !22)
!65 = !DILocation(line: 790, column: 4, scope: !22)
!66 = !DILocation(line: 799, column: 21, scope: !22)
!67 = !DILocation(line: 803, column: 16, scope: !22)
!68 = !DILocation(line: 807, column: 38, scope: !69)
!69 = distinct !DILexicalBlock(scope: !22, file: !5, line: 807, column: 8)
!70 = !DILocation(line: 807, column: 44, scope: !69)
!71 = !DILocation(line: 807, column: 31, scope: !69)
!72 = !DILocation(line: 807, column: 65, scope: !69)
!73 = !DILocation(line: 807, column: 8, scope: !22)
!74 = !DILocation(line: 808, column: 15, scope: !75)
!75 = distinct !DILexicalBlock(scope: !69, file: !5, line: 807, column: 74)
!76 = !{!77, !77, i64 0}
!77 = !{!"any pointer", !78, i64 0}
!78 = !{!"omnipotent char", !79, i64 0}
!79 = !{!"Simple C/C++ TBAA"}
!80 = !DILocation(line: 808, column: 7, scope: !75)
!81 = !DILocation(line: 809, column: 7, scope: !75)
!82 = !DILocation(line: 824, column: 9, scope: !22)
!83 = !DILocation(line: 825, column: 9, scope: !22)
!84 = !DILocation(line: 826, column: 9, scope: !22)
!85 = !DILocation(line: 827, column: 9, scope: !22)
!86 = !DILocation(line: 829, column: 12, scope: !87)
!87 = distinct !DILexicalBlock(scope: !22, file: !5, line: 829, column: 8)
!88 = !DILocation(line: 829, column: 8, scope: !22)
!89 = !DILocation(line: 833, column: 9, scope: !22)
!90 = !DILocation(line: 836, column: 18, scope: !91)
!91 = distinct !DILexicalBlock(scope: !92, file: !5, line: 836, column: 4)
!92 = distinct !DILexicalBlock(scope: !22, file: !5, line: 836, column: 4)
!93 = !DILocation(line: 836, column: 4, scope: !92)
!94 = !DILocation(line: 837, column: 23, scope: !95)
!95 = distinct !DILexicalBlock(scope: !91, file: !5, line: 836, column: 32)
!96 = !DILocation(line: 837, column: 29, scope: !95)
!97 = !{!98, !98, i64 0}
!98 = !{!"int", !78, i64 0}
!99 = !DILocation(line: 837, column: 15, scope: !95)
!100 = !DILocation(line: 837, column: 21, scope: !95)
!101 = !DILocation(line: 837, column: 7, scope: !95)
!102 = !DILocation(line: 837, column: 13, scope: !95)
!103 = !DILocation(line: 839, column: 10, scope: !104)
!104 = distinct !DILexicalBlock(scope: !105, file: !5, line: 838, column: 21)
!105 = distinct !DILexicalBlock(scope: !95, file: !5, line: 838, column: 11)
!106 = !DILocation(line: 839, column: 16, scope: !104)
!107 = !DILocation(line: 842, column: 7, scope: !95)
!108 = !DILocation(line: 842, column: 13, scope: !95)
!109 = !DILocation(line: 836, column: 28, scope: !91)
!110 = distinct !{!110, !93, !111, !112, !113}
!111 = !DILocation(line: 845, column: 4, scope: !92)
!112 = !{!"llvm.loop.mustprogress"}
!113 = !{!"llvm.loop.unroll.disable"}
!114 = !DILocation(line: 847, column: 4, scope: !22)
!115 = !DILocation(line: 848, column: 4, scope: !22)
!116 = !DILocation(line: 849, column: 4, scope: !22)
!117 = !DILocation(line: 851, column: 8, scope: !22)
!118 = !DILocation(line: 852, column: 7, scope: !119)
!119 = distinct !DILexicalBlock(scope: !120, file: !5, line: 851, column: 18)
!120 = distinct !DILexicalBlock(scope: !22, file: !5, line: 851, column: 8)
!121 = !DILocation(line: 853, column: 4, scope: !119)
!122 = !DILocation(line: 870, column: 16, scope: !22)
!123 = !DILocation(line: 871, column: 10, scope: !22)
!124 = !DILocation(line: 881, column: 49, scope: !22)
!125 = !DILocation(line: 872, column: 13, scope: !22)
!126 = !DILocation(line: 881, column: 4, scope: !22)
!127 = !DILocation(line: 1009, column: 20, scope: !128)
!128 = distinct !DILexicalBlock(scope: !22, file: !5, line: 903, column: 4)
!129 = !DILocation(line: 1010, column: 20, scope: !128)
!130 = !DILocation(line: 1057, column: 7, scope: !131)
!131 = distinct !DILexicalBlock(scope: !128, file: !5, line: 1057, column: 7)
!132 = !DILocation(line: 1057, column: 21, scope: !133)
!133 = distinct !DILexicalBlock(scope: !131, file: !5, line: 1057, column: 7)
!134 = !DILocation(line: 1082, column: 24, scope: !135)
!135 = distinct !DILexicalBlock(scope: !133, file: !5, line: 1057, column: 35)
!136 = !DILocation(line: 1082, column: 16, scope: !135)
!137 = !DILocation(line: 1083, column: 10, scope: !135)
!138 = !DILocation(line: 1117, column: 37, scope: !135)
!139 = !DILocation(line: 1117, column: 10, scope: !135)
!140 = !DILocation(line: 1118, column: 37, scope: !135)
!141 = !DILocation(line: 1118, column: 10, scope: !135)
!142 = !DILocation(line: 1151, column: 15, scope: !143)
!143 = distinct !DILexicalBlock(scope: !135, file: !5, line: 1151, column: 14)
!144 = !DILocation(line: 1151, column: 27, scope: !143)
!145 = !DILocation(line: 0, scope: !143)
!146 = !DILocation(line: 1151, column: 36, scope: !143)
!147 = !DILocation(line: 1151, column: 54, scope: !143)
!148 = !DILocation(line: 1151, column: 14, scope: !135)
!149 = !DILocation(line: 1154, column: 39, scope: !150)
!150 = distinct !DILexicalBlock(scope: !143, file: !5, line: 1153, column: 21)
!151 = !DILocation(line: 1154, column: 51, scope: !150)
!152 = !DILocation(line: 1154, column: 49, scope: !150)
!153 = !DILocation(line: 1154, column: 37, scope: !150)
!154 = !DILocation(line: 1154, column: 62, scope: !150)
!155 = !DILocation(line: 1155, column: 25, scope: !150)
!156 = !DILocation(line: 1156, column: 25, scope: !150)
!157 = !DILocation(line: 1155, column: 43, scope: !150)
!158 = !DILocation(line: 1153, column: 21, scope: !143)
!159 = !DILocation(line: 1157, column: 13, scope: !160)
!160 = distinct !DILexicalBlock(scope: !150, file: !5, line: 1156, column: 54)
!161 = !DILocation(line: 1158, column: 38, scope: !160)
!162 = !DILocation(line: 1158, column: 46, scope: !160)
!163 = !DILocation(line: 1158, column: 44, scope: !160)
!164 = !DILocation(line: 1159, column: 10, scope: !160)
!165 = !DILocation(line: 1160, column: 22, scope: !135)
!166 = !DILocation(line: 1160, column: 10, scope: !135)
!167 = !DILocation(line: 1160, column: 20, scope: !135)
!168 = !DILocation(line: 1161, column: 22, scope: !135)
!169 = !DILocation(line: 1161, column: 10, scope: !135)
!170 = !DILocation(line: 1161, column: 20, scope: !135)
!171 = !DILocation(line: 1162, column: 24, scope: !172)
!172 = distinct !DILexicalBlock(scope: !173, file: !5, line: 1162, column: 10)
!173 = distinct !DILexicalBlock(scope: !135, file: !5, line: 1162, column: 10)
!174 = !DILocation(line: 1162, column: 10, scope: !173)
!175 = !DILocation(line: 1165, column: 26, scope: !176)
!176 = distinct !DILexicalBlock(scope: !177, file: !5, line: 1165, column: 10)
!177 = distinct !DILexicalBlock(scope: !135, file: !5, line: 1165, column: 10)
!178 = !DILocation(line: 1165, column: 24, scope: !176)
!179 = !DILocation(line: 1165, column: 10, scope: !177)
!180 = !DILocation(line: 1166, column: 38, scope: !181)
!181 = distinct !DILexicalBlock(scope: !176, file: !5, line: 1165, column: 38)
!182 = !DILocation(line: 1166, column: 13, scope: !181)
!183 = !DILocation(line: 1166, column: 36, scope: !181)
!184 = distinct !{!184, !179, !185, !112, !113}
!185 = !DILocation(line: 1167, column: 10, scope: !177)
!186 = !DILocation(line: 1163, column: 30, scope: !187)
!187 = distinct !DILexicalBlock(scope: !172, file: !5, line: 1162, column: 38)
!188 = !DILocation(line: 1163, column: 13, scope: !187)
!189 = !DILocation(line: 1163, column: 28, scope: !187)
!190 = !DILocation(line: 1162, column: 34, scope: !172)
!191 = !DILocation(line: 1162, column: 26, scope: !172)
!192 = distinct !{!192, !174, !193, !112, !113}
!193 = !DILocation(line: 1164, column: 10, scope: !173)
!194 = !DILocation(line: 1166, column: 25, scope: !181)
!195 = !DILocation(line: 1166, column: 31, scope: !181)
!196 = !DILocation(line: 1165, column: 34, scope: !176)
!197 = !DILocation(line: 1168, column: 21, scope: !135)
!198 = !DILocation(line: 1168, column: 27, scope: !135)
!199 = !DILocation(line: 1168, column: 18, scope: !135)
!200 = !DILocation(line: 1057, column: 31, scope: !133)
!201 = distinct !{!201, !130, !202, !112, !113}
!202 = !DILocation(line: 1169, column: 7, scope: !131)
!203 = !DILocation(line: 1177, column: 7, scope: !128)
!204 = !DILocation(line: 1178, column: 7, scope: !128)
!205 = !DILocation(line: 1195, column: 4, scope: !22)
!206 = !DILocation(line: 1196, column: 4, scope: !22)
!207 = !DILocation(line: 1197, column: 4, scope: !22)
!208 = !DILocation(line: 1198, column: 4, scope: !22)
!209 = !DILocation(line: 1199, column: 4, scope: !22)
!210 = !DILocation(line: 1201, column: 8, scope: !22)
!211 = !DILocation(line: 1202, column: 7, scope: !212)
!212 = distinct !DILexicalBlock(scope: !213, file: !5, line: 1201, column: 18)
!213 = distinct !DILexicalBlock(scope: !22, file: !5, line: 1201, column: 8)
!214 = !DILocation(line: 1203, column: 4, scope: !212)
!215 = !DILocation(line: 1206, column: 4, scope: !22)
!216 = !DILocation(line: 1211, column: 1, scope: !22)
!217 = !DILocation(line: 1210, column: 4, scope: !22)
!218 = !DISubprogram(name: "get_blocksize", scope: !5, file: !5, line: 33, type: !219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!219 = !DISubroutineType(types: !220)
!220 = !{!9}
!221 = !{}
!222 = !DISubprogram(name: "ivector", scope: !5, file: !5, line: 28, type: !223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!223 = !DISubroutineType(types: !224)
!224 = !{!25, !9, !9}
!225 = distinct !DISubprogram(name: "heapsort_index", scope: !5, file: !5, line: 207, type: !226, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !228)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !29, !10, !27, !10, !10}
!228 = !{!229, !230, !231, !232, !233, !234, !235}
!229 = !DILocalVariable(name: "a", arg: 1, scope: !225, file: !5, line: 207, type: !29)
!230 = !DILocalVariable(name: "n", arg: 2, scope: !225, file: !5, line: 207, type: !10)
!231 = !DILocalVariable(name: "x", arg: 3, scope: !225, file: !5, line: 207, type: !27)
!232 = !DILocalVariable(name: "p", arg: 4, scope: !225, file: !5, line: 207, type: !10)
!233 = !DILocalVariable(name: "dim", arg: 5, scope: !225, file: !5, line: 207, type: !10)
!234 = !DILocalVariable(name: "k", scope: !225, file: !5, line: 210, type: !10)
!235 = !DILocalVariable(name: "v", scope: !225, file: !5, line: 210, type: !10)
!236 = !DILocation(line: 0, scope: !225)
!237 = !DILocation(line: 212, column: 15, scope: !238)
!238 = distinct !DILexicalBlock(scope: !225, file: !5, line: 212, column: 4)
!239 = !DILocation(line: 212, column: 22, scope: !240)
!240 = distinct !DILexicalBlock(scope: !238, file: !5, line: 212, column: 4)
!241 = !DILocation(line: 212, column: 4, scope: !238)
!242 = !DILocation(line: 214, column: 4, scope: !225)
!243 = !DILocalVariable(name: "a", arg: 1, scope: !244, file: !5, line: 163, type: !29)
!244 = distinct !DISubprogram(name: "downheap_index", scope: !5, file: !5, line: 163, type: !245, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !247)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !29, !10, !10, !27, !10, !10}
!247 = !{!243, !248, !249, !250, !251, !252, !253, !254}
!248 = !DILocalVariable(name: "n", arg: 2, scope: !244, file: !5, line: 163, type: !10)
!249 = !DILocalVariable(name: "k", arg: 3, scope: !244, file: !5, line: 163, type: !10)
!250 = !DILocalVariable(name: "x", arg: 4, scope: !244, file: !5, line: 163, type: !27)
!251 = !DILocalVariable(name: "p", arg: 5, scope: !244, file: !5, line: 163, type: !10)
!252 = !DILocalVariable(name: "dim", arg: 6, scope: !244, file: !5, line: 163, type: !10)
!253 = !DILocalVariable(name: "j", scope: !244, file: !5, line: 166, type: !10)
!254 = !DILocalVariable(name: "v", scope: !244, file: !5, line: 166, type: !10)
!255 = !DILocation(line: 0, scope: !244, inlinedAt: !256)
!256 = distinct !DILocation(line: 213, column: 7, scope: !240)
!257 = !DILocation(line: 168, column: 12, scope: !244, inlinedAt: !256)
!258 = !DILocation(line: 168, column: 8, scope: !244, inlinedAt: !256)
!259 = !DILocation(line: 169, column: 13, scope: !244, inlinedAt: !256)
!260 = !DILocation(line: 169, column: 4, scope: !244, inlinedAt: !256)
!261 = !{!262, !262, i64 0}
!262 = !{!"double", !78, i64 0}
!263 = !DILocation(line: 170, column: 13, scope: !264, inlinedAt: !256)
!264 = distinct !DILexicalBlock(scope: !244, file: !5, line: 169, column: 23)
!265 = !DILocation(line: 171, column: 14, scope: !266, inlinedAt: !256)
!266 = distinct !DILexicalBlock(scope: !264, file: !5, line: 171, column: 11)
!267 = !DILocation(line: 171, column: 19, scope: !266, inlinedAt: !256)
!268 = !DILocation(line: 171, column: 35, scope: !266, inlinedAt: !256)
!269 = !DILocation(line: 171, column: 31, scope: !266, inlinedAt: !256)
!270 = !DILocation(line: 171, column: 29, scope: !266, inlinedAt: !256)
!271 = !DILocation(line: 171, column: 40, scope: !266, inlinedAt: !256)
!272 = !DILocation(line: 171, column: 23, scope: !266, inlinedAt: !256)
!273 = !DILocation(line: 171, column: 55, scope: !266, inlinedAt: !256)
!274 = !DILocation(line: 171, column: 53, scope: !266, inlinedAt: !256)
!275 = !DILocation(line: 171, column: 60, scope: !266, inlinedAt: !256)
!276 = !DILocation(line: 171, column: 47, scope: !266, inlinedAt: !256)
!277 = !DILocation(line: 171, column: 45, scope: !266, inlinedAt: !256)
!278 = !DILocation(line: 171, column: 11, scope: !264, inlinedAt: !256)
!279 = !DILocation(line: 172, column: 11, scope: !266, inlinedAt: !256)
!280 = !DILocation(line: 172, column: 10, scope: !266, inlinedAt: !256)
!281 = !DILocation(line: 0, scope: !264, inlinedAt: !256)
!282 = !DILocation(line: 173, column: 41, scope: !283, inlinedAt: !256)
!283 = distinct !DILexicalBlock(scope: !264, file: !5, line: 173, column: 11)
!284 = !DILocation(line: 173, column: 37, scope: !283, inlinedAt: !256)
!285 = !DILocation(line: 173, column: 35, scope: !283, inlinedAt: !256)
!286 = !DILocation(line: 173, column: 46, scope: !283, inlinedAt: !256)
!287 = !DILocation(line: 173, column: 29, scope: !283, inlinedAt: !256)
!288 = !DILocation(line: 173, column: 26, scope: !283, inlinedAt: !256)
!289 = !DILocation(line: 173, column: 11, scope: !264, inlinedAt: !256)
!290 = !DILocation(line: 175, column: 7, scope: !264, inlinedAt: !256)
!291 = !DILocation(line: 175, column: 16, scope: !264, inlinedAt: !256)
!292 = distinct !{!292, !260, !293, !112, !113}
!293 = !DILocation(line: 177, column: 4, scope: !244, inlinedAt: !256)
!294 = !DILocation(line: 178, column: 8, scope: !244, inlinedAt: !256)
!295 = !DILocation(line: 178, column: 4, scope: !244, inlinedAt: !256)
!296 = !DILocation(line: 178, column: 13, scope: !244, inlinedAt: !256)
!297 = distinct !{!297, !241, !298, !112, !113}
!298 = !DILocation(line: 213, column: 40, scope: !238)
!299 = !DILocation(line: 215, column: 11, scope: !300)
!300 = distinct !DILexicalBlock(scope: !225, file: !5, line: 214, column: 18)
!301 = !DILocation(line: 216, column: 18, scope: !300)
!302 = !DILocation(line: 216, column: 14, scope: !300)
!303 = !DILocation(line: 216, column: 12, scope: !300)
!304 = !DILocation(line: 217, column: 16, scope: !300)
!305 = !DILocation(line: 0, scope: !244, inlinedAt: !306)
!306 = distinct !DILocation(line: 218, column: 7, scope: !300)
!307 = !DILocation(line: 168, column: 8, scope: !244, inlinedAt: !306)
!308 = !DILocation(line: 169, column: 13, scope: !244, inlinedAt: !306)
!309 = !DILocation(line: 169, column: 4, scope: !244, inlinedAt: !306)
!310 = !DILocation(line: 170, column: 13, scope: !264, inlinedAt: !306)
!311 = !DILocation(line: 171, column: 14, scope: !266, inlinedAt: !306)
!312 = !DILocation(line: 171, column: 19, scope: !266, inlinedAt: !306)
!313 = !DILocation(line: 171, column: 35, scope: !266, inlinedAt: !306)
!314 = !DILocation(line: 171, column: 31, scope: !266, inlinedAt: !306)
!315 = !DILocation(line: 171, column: 29, scope: !266, inlinedAt: !306)
!316 = !DILocation(line: 171, column: 40, scope: !266, inlinedAt: !306)
!317 = !DILocation(line: 171, column: 23, scope: !266, inlinedAt: !306)
!318 = !DILocation(line: 171, column: 55, scope: !266, inlinedAt: !306)
!319 = !DILocation(line: 171, column: 53, scope: !266, inlinedAt: !306)
!320 = !DILocation(line: 171, column: 60, scope: !266, inlinedAt: !306)
!321 = !DILocation(line: 171, column: 47, scope: !266, inlinedAt: !306)
!322 = !DILocation(line: 171, column: 45, scope: !266, inlinedAt: !306)
!323 = !DILocation(line: 171, column: 11, scope: !264, inlinedAt: !306)
!324 = !DILocation(line: 172, column: 11, scope: !266, inlinedAt: !306)
!325 = !DILocation(line: 172, column: 10, scope: !266, inlinedAt: !306)
!326 = !DILocation(line: 0, scope: !264, inlinedAt: !306)
!327 = !DILocation(line: 173, column: 41, scope: !283, inlinedAt: !306)
!328 = !DILocation(line: 173, column: 37, scope: !283, inlinedAt: !306)
!329 = !DILocation(line: 173, column: 35, scope: !283, inlinedAt: !306)
!330 = !DILocation(line: 173, column: 46, scope: !283, inlinedAt: !306)
!331 = !DILocation(line: 173, column: 29, scope: !283, inlinedAt: !306)
!332 = !DILocation(line: 173, column: 26, scope: !283, inlinedAt: !306)
!333 = !DILocation(line: 173, column: 11, scope: !264, inlinedAt: !306)
!334 = !DILocation(line: 175, column: 7, scope: !264, inlinedAt: !306)
!335 = !DILocation(line: 175, column: 16, scope: !264, inlinedAt: !306)
!336 = distinct !{!336, !309, !337, !112, !113}
!337 = !DILocation(line: 177, column: 4, scope: !244, inlinedAt: !306)
!338 = !DILocation(line: 178, column: 8, scope: !244, inlinedAt: !306)
!339 = !DILocation(line: 178, column: 4, scope: !244, inlinedAt: !306)
!340 = !DILocation(line: 178, column: 13, scope: !244, inlinedAt: !306)
!341 = !DILocation(line: 214, column: 13, scope: !225)
!342 = distinct !{!342, !242, !343, !112, !113}
!343 = !DILocation(line: 219, column: 4, scope: !225)
!344 = !DILocation(line: 220, column: 1, scope: !225)
!345 = distinct !DISubprogram(name: "buildkdtree", scope: !5, file: !5, line: 255, type: !346, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !349)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !29, !29, !29, !29, !29, !29, !10, !10, !348, !3, !27, !10, !10}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!349 = !{!350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368}
!350 = !DILocalVariable(name: "xn", arg: 1, scope: !345, file: !5, line: 255, type: !29)
!351 = !DILocalVariable(name: "yn", arg: 2, scope: !345, file: !5, line: 255, type: !29)
!352 = !DILocalVariable(name: "zn", arg: 3, scope: !345, file: !5, line: 255, type: !29)
!353 = !DILocalVariable(name: "wn", arg: 4, scope: !345, file: !5, line: 255, type: !29)
!354 = !DILocalVariable(name: "on", arg: 5, scope: !345, file: !5, line: 255, type: !29)
!355 = !DILocalVariable(name: "tn", arg: 6, scope: !345, file: !5, line: 255, type: !29)
!356 = !DILocalVariable(name: "start", arg: 7, scope: !345, file: !5, line: 256, type: !10)
!357 = !DILocalVariable(name: "end", arg: 8, scope: !345, file: !5, line: 256, type: !10)
!358 = !DILocalVariable(name: "kdpptr", arg: 9, scope: !345, file: !5, line: 256, type: !348)
!359 = !DILocalVariable(name: "that", arg: 10, scope: !345, file: !5, line: 256, type: !3)
!360 = !DILocalVariable(name: "x", arg: 11, scope: !345, file: !5, line: 257, type: !27)
!361 = !DILocalVariable(name: "p", arg: 12, scope: !345, file: !5, line: 257, type: !10)
!362 = !DILocalVariable(name: "dim", arg: 13, scope: !345, file: !5, line: 257, type: !10)
!363 = !DILocalVariable(name: "i", scope: !345, file: !5, line: 259, type: !10)
!364 = !DILocalVariable(name: "middle", scope: !345, file: !5, line: 259, type: !10)
!365 = !DILocalVariable(name: "imedian", scope: !345, file: !5, line: 259, type: !10)
!366 = !DILocalVariable(name: "lower", scope: !345, file: !5, line: 259, type: !10)
!367 = !DILocalVariable(name: "upper", scope: !345, file: !5, line: 259, type: !10)
!368 = !DILocalVariable(name: "median", scope: !345, file: !5, line: 260, type: !28)
!369 = !DILocation(line: 0, scope: !345)
!370 = !DILocation(line: 281, column: 12, scope: !371)
!371 = distinct !DILexicalBlock(scope: !345, file: !5, line: 281, column: 8)
!372 = !DILocation(line: 281, column: 8, scope: !345)
!373 = !DILocation(line: 276, column: 14, scope: !345)
!374 = !DILocation(line: 276, column: 6, scope: !345)
!375 = !DILocation(line: 282, column: 17, scope: !376)
!376 = distinct !DILexicalBlock(scope: !371, file: !5, line: 281, column: 22)
!377 = !DILocation(line: 282, column: 15, scope: !376)
!378 = !{!379, !98, i64 0}
!379 = !{!"kdnode", !98, i64 0, !77, i64 8, !77, i64 16}
!380 = !DILocation(line: 283, column: 4, scope: !376)
!381 = !DILocation(line: 293, column: 26, scope: !382)
!382 = distinct !DILexicalBlock(scope: !371, file: !5, line: 293, column: 13)
!383 = !DILocation(line: 293, column: 17, scope: !382)
!384 = !DILocation(line: 293, column: 13, scope: !371)
!385 = !DILocation(line: 298, column: 15, scope: !386)
!386 = distinct !DILexicalBlock(scope: !387, file: !5, line: 298, column: 11)
!387 = distinct !DILexicalBlock(scope: !382, file: !5, line: 293, column: 31)
!388 = !DILocation(line: 0, scope: !386)
!389 = !DILocation(line: 298, column: 21, scope: !386)
!390 = !DILocation(line: 298, column: 37, scope: !386)
!391 = !DILocation(line: 298, column: 35, scope: !386)
!392 = !DILocation(line: 298, column: 47, scope: !386)
!393 = !DILocation(line: 299, column: 31, scope: !386)
!394 = !DILocation(line: 299, column: 43, scope: !386)
!395 = !DILocation(line: 299, column: 47, scope: !386)
!396 = !DILocation(line: 299, column: 25, scope: !386)
!397 = !DILocation(line: 300, column: 33, scope: !386)
!398 = !DILocation(line: 300, column: 31, scope: !386)
!399 = !DILocation(line: 300, column: 45, scope: !386)
!400 = !DILocation(line: 300, column: 25, scope: !386)
!401 = !DILocation(line: 299, column: 52, scope: !386)
!402 = !DILocation(line: 298, column: 11, scope: !387)
!403 = !DILocation(line: 305, column: 20, scope: !404)
!404 = distinct !DILexicalBlock(scope: !386, file: !5, line: 304, column: 7)
!405 = !DILocation(line: 305, column: 18, scope: !404)
!406 = !DILocation(line: 306, column: 25, scope: !404)
!407 = !DILocation(line: 306, column: 11, scope: !404)
!408 = !DILocation(line: 306, column: 23, scope: !404)
!409 = !DILocation(line: 307, column: 21, scope: !404)
!410 = !DILocation(line: 307, column: 24, scope: !404)
!411 = !{!379, !77, i64 8}
!412 = !DILocation(line: 308, column: 11, scope: !404)
!413 = !DILocation(line: 308, column: 21, scope: !404)
!414 = !DILocation(line: 308, column: 24, scope: !404)
!415 = !{!379, !77, i64 16}
!416 = !DILocation(line: 309, column: 30, scope: !404)
!417 = !DILocation(line: 309, column: 16, scope: !404)
!418 = !DILocation(line: 309, column: 19, scope: !404)
!419 = !DILocation(line: 310, column: 7, scope: !404)
!420 = !DILocation(line: 315, column: 40, scope: !421)
!421 = distinct !DILexicalBlock(scope: !386, file: !5, line: 315, column: 16)
!422 = !DILocation(line: 315, column: 52, scope: !421)
!423 = !DILocation(line: 316, column: 57, scope: !421)
!424 = !DILocation(line: 315, column: 16, scope: !386)
!425 = !DILocation(line: 323, column: 25, scope: !426)
!426 = distinct !DILexicalBlock(scope: !421, file: !5, line: 321, column: 7)
!427 = !DILocation(line: 322, column: 18, scope: !426)
!428 = !DILocation(line: 323, column: 11, scope: !426)
!429 = !DILocation(line: 323, column: 23, scope: !426)
!430 = !DILocation(line: 324, column: 21, scope: !426)
!431 = !DILocation(line: 324, column: 24, scope: !426)
!432 = !DILocation(line: 325, column: 11, scope: !426)
!433 = !DILocation(line: 325, column: 21, scope: !426)
!434 = !DILocation(line: 325, column: 24, scope: !426)
!435 = !DILocation(line: 326, column: 30, scope: !426)
!436 = !DILocation(line: 326, column: 16, scope: !426)
!437 = !DILocation(line: 326, column: 19, scope: !426)
!438 = !DILocation(line: 327, column: 7, scope: !426)
!439 = !DILocation(line: 333, column: 25, scope: !440)
!440 = distinct !DILexicalBlock(scope: !421, file: !5, line: 331, column: 12)
!441 = !DILocation(line: 332, column: 18, scope: !440)
!442 = !DILocation(line: 333, column: 11, scope: !440)
!443 = !DILocation(line: 333, column: 23, scope: !440)
!444 = !DILocation(line: 334, column: 21, scope: !440)
!445 = !DILocation(line: 334, column: 24, scope: !440)
!446 = !DILocation(line: 335, column: 11, scope: !440)
!447 = !DILocation(line: 335, column: 21, scope: !440)
!448 = !DILocation(line: 335, column: 24, scope: !440)
!449 = !DILocation(line: 336, column: 30, scope: !440)
!450 = !DILocation(line: 336, column: 16, scope: !440)
!451 = !DILocation(line: 336, column: 19, scope: !440)
!452 = !DILocation(line: 358, column: 23, scope: !453)
!453 = distinct !DILexicalBlock(scope: !382, file: !5, line: 342, column: 9)
!454 = !DILocation(line: 358, column: 30, scope: !453)
!455 = !DILocation(line: 360, column: 13, scope: !456)
!456 = distinct !DILexicalBlock(scope: !453, file: !5, line: 360, column: 11)
!457 = !DILocation(line: 0, scope: !456)
!458 = !DILocation(line: 360, column: 11, scope: !453)
!459 = !DILocation(line: 363, column: 25, scope: !460)
!460 = distinct !DILexicalBlock(scope: !456, file: !5, line: 362, column: 14)
!461 = !DILocation(line: 363, column: 38, scope: !460)
!462 = !DILocation(line: 363, column: 42, scope: !460)
!463 = !DILocation(line: 363, column: 19, scope: !460)
!464 = !DILocation(line: 364, column: 15, scope: !465)
!465 = distinct !DILexicalBlock(scope: !460, file: !5, line: 364, column: 10)
!466 = !DILocation(line: 0, scope: !453)
!467 = !DILocation(line: 364, column: 33, scope: !468)
!468 = distinct !DILexicalBlock(scope: !465, file: !5, line: 364, column: 10)
!469 = !DILocation(line: 364, column: 10, scope: !465)
!470 = !DILocation(line: 0, scope: !465)
!471 = !DILocation(line: 365, column: 25, scope: !472)
!472 = distinct !DILexicalBlock(scope: !473, file: !5, line: 365, column: 17)
!473 = distinct !DILexicalBlock(scope: !468, file: !5, line: 364, column: 48)
!474 = !DILocation(line: 365, column: 23, scope: !472)
!475 = !DILocation(line: 365, column: 35, scope: !472)
!476 = !DILocation(line: 365, column: 17, scope: !472)
!477 = !DILocation(line: 365, column: 40, scope: !472)
!478 = !DILocation(line: 365, column: 17, scope: !473)
!479 = distinct !{!479, !469, !480, !112, !113}
!480 = !DILocation(line: 370, column: 10, scope: !465)
!481 = !DILocation(line: 385, column: 17, scope: !453)
!482 = !DILocation(line: 358, column: 14, scope: !453)
!483 = !DILocation(line: 385, column: 15, scope: !453)
!484 = !DILocation(line: 414, column: 21, scope: !453)
!485 = !DILocation(line: 416, column: 25, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !5, line: 416, column: 7)
!487 = distinct !DILexicalBlock(scope: !453, file: !5, line: 416, column: 7)
!488 = !DILocation(line: 416, column: 7, scope: !487)
!489 = !DILocation(line: 451, column: 7, scope: !490)
!490 = distinct !DILexicalBlock(scope: !453, file: !5, line: 451, column: 7)
!491 = !DILocation(line: 417, column: 14, scope: !492)
!492 = distinct !DILexicalBlock(scope: !493, file: !5, line: 417, column: 14)
!493 = distinct !DILexicalBlock(scope: !486, file: !5, line: 416, column: 38)
!494 = !DILocation(line: 417, column: 23, scope: !492)
!495 = !DILocation(line: 417, column: 20, scope: !492)
!496 = !DILocation(line: 417, column: 14, scope: !493)
!497 = !DILocation(line: 420, column: 27, scope: !498)
!498 = distinct !DILexicalBlock(scope: !499, file: !5, line: 420, column: 17)
!499 = distinct !DILexicalBlock(scope: !492, file: !5, line: 417, column: 35)
!500 = !DILocation(line: 421, column: 27, scope: !498)
!501 = !DILocation(line: 421, column: 37, scope: !498)
!502 = !DILocation(line: 421, column: 49, scope: !498)
!503 = !DILocation(line: 421, column: 31, scope: !498)
!504 = !DILocation(line: 421, column: 54, scope: !498)
!505 = !DILocation(line: 420, column: 17, scope: !499)
!506 = !DILocation(line: 426, column: 19, scope: !507)
!507 = distinct !DILexicalBlock(scope: !498, file: !5, line: 425, column: 13)
!508 = !DILocation(line: 427, column: 13, scope: !507)
!509 = !DILocation(line: 428, column: 19, scope: !510)
!510 = distinct !DILexicalBlock(scope: !498, file: !5, line: 427, column: 20)
!511 = !DILocation(line: 0, scope: !498)
!512 = !DILocation(line: 416, column: 34, scope: !486)
!513 = distinct !{!513, !488, !514, !112, !113}
!514 = !DILocation(line: 431, column: 7, scope: !487)
!515 = !DILocation(line: 497, column: 10, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !5, line: 497, column: 10)
!517 = distinct !DILexicalBlock(scope: !453, file: !5, line: 477, column: 7)
!518 = !DILocation(line: 452, column: 14, scope: !519)
!519 = distinct !DILexicalBlock(scope: !520, file: !5, line: 452, column: 14)
!520 = distinct !DILexicalBlock(scope: !521, file: !5, line: 451, column: 38)
!521 = distinct !DILexicalBlock(scope: !490, file: !5, line: 451, column: 7)
!522 = !DILocation(line: 452, column: 23, scope: !519)
!523 = !DILocation(line: 452, column: 20, scope: !519)
!524 = !DILocation(line: 452, column: 14, scope: !520)
!525 = !DILocation(line: 455, column: 27, scope: !526)
!526 = distinct !DILexicalBlock(scope: !527, file: !5, line: 455, column: 17)
!527 = distinct !DILexicalBlock(scope: !519, file: !5, line: 452, column: 35)
!528 = !DILocation(line: 456, column: 27, scope: !526)
!529 = !DILocation(line: 456, column: 37, scope: !526)
!530 = !DILocation(line: 456, column: 49, scope: !526)
!531 = !DILocation(line: 456, column: 31, scope: !526)
!532 = !DILocation(line: 456, column: 54, scope: !526)
!533 = !DILocation(line: 455, column: 17, scope: !527)
!534 = !DILocation(line: 461, column: 19, scope: !535)
!535 = distinct !DILexicalBlock(scope: !526, file: !5, line: 460, column: 13)
!536 = !DILocation(line: 462, column: 13, scope: !535)
!537 = !DILocation(line: 463, column: 19, scope: !538)
!538 = distinct !DILexicalBlock(scope: !526, file: !5, line: 462, column: 20)
!539 = !DILocation(line: 0, scope: !526)
!540 = !DILocation(line: 451, column: 34, scope: !521)
!541 = !DILocation(line: 451, column: 25, scope: !521)
!542 = distinct !{!542, !489, !543, !112, !113}
!543 = !DILocation(line: 466, column: 7, scope: !490)
!544 = !DILocation(line: 498, column: 17, scope: !545)
!545 = distinct !DILexicalBlock(scope: !546, file: !5, line: 498, column: 17)
!546 = distinct !DILexicalBlock(scope: !547, file: !5, line: 497, column: 41)
!547 = distinct !DILexicalBlock(scope: !516, file: !5, line: 497, column: 10)
!548 = !DILocation(line: 498, column: 26, scope: !545)
!549 = !DILocation(line: 498, column: 23, scope: !545)
!550 = !DILocation(line: 498, column: 17, scope: !546)
!551 = !DILocation(line: 501, column: 30, scope: !552)
!552 = distinct !DILexicalBlock(scope: !553, file: !5, line: 501, column: 20)
!553 = distinct !DILexicalBlock(scope: !545, file: !5, line: 498, column: 38)
!554 = !DILocation(line: 502, column: 30, scope: !552)
!555 = !DILocation(line: 502, column: 40, scope: !552)
!556 = !DILocation(line: 502, column: 52, scope: !552)
!557 = !DILocation(line: 502, column: 34, scope: !552)
!558 = !DILocation(line: 502, column: 57, scope: !552)
!559 = !DILocation(line: 501, column: 20, scope: !553)
!560 = !DILocation(line: 507, column: 22, scope: !561)
!561 = distinct !DILexicalBlock(scope: !552, file: !5, line: 506, column: 16)
!562 = !DILocation(line: 508, column: 16, scope: !561)
!563 = !DILocation(line: 509, column: 22, scope: !564)
!564 = distinct !DILexicalBlock(scope: !552, file: !5, line: 508, column: 23)
!565 = !DILocation(line: 0, scope: !552)
!566 = !DILocation(line: 497, column: 37, scope: !547)
!567 = !DILocation(line: 0, scope: !517)
!568 = !DILocation(line: 497, column: 28, scope: !547)
!569 = distinct !{!569, !515, !570, !112, !113}
!570 = !DILocation(line: 512, column: 10, scope: !516)
!571 = !DILocation(line: 496, column: 16, scope: !517)
!572 = !DILocation(line: 522, column: 15, scope: !573)
!573 = distinct !DILexicalBlock(scope: !453, file: !5, line: 522, column: 11)
!574 = !DILocation(line: 522, column: 11, scope: !453)
!575 = !DILocation(line: 542, column: 10, scope: !576)
!576 = distinct !DILexicalBlock(scope: !577, file: !5, line: 542, column: 10)
!577 = distinct !DILexicalBlock(scope: !573, file: !5, line: 522, column: 21)
!578 = !DILocation(line: 543, column: 17, scope: !579)
!579 = distinct !DILexicalBlock(scope: !580, file: !5, line: 543, column: 17)
!580 = distinct !DILexicalBlock(scope: !581, file: !5, line: 542, column: 41)
!581 = distinct !DILexicalBlock(scope: !576, file: !5, line: 542, column: 10)
!582 = !DILocation(line: 543, column: 26, scope: !579)
!583 = !DILocation(line: 543, column: 23, scope: !579)
!584 = !DILocation(line: 543, column: 17, scope: !580)
!585 = !DILocation(line: 544, column: 30, scope: !586)
!586 = distinct !DILexicalBlock(scope: !587, file: !5, line: 544, column: 20)
!587 = distinct !DILexicalBlock(scope: !579, file: !5, line: 543, column: 38)
!588 = !DILocation(line: 545, column: 30, scope: !586)
!589 = !DILocation(line: 545, column: 40, scope: !586)
!590 = !DILocation(line: 545, column: 52, scope: !586)
!591 = !DILocation(line: 545, column: 34, scope: !586)
!592 = !DILocation(line: 545, column: 57, scope: !586)
!593 = !DILocation(line: 544, column: 20, scope: !587)
!594 = !DILocation(line: 546, column: 22, scope: !595)
!595 = distinct !DILexicalBlock(scope: !586, file: !5, line: 545, column: 69)
!596 = !DILocation(line: 547, column: 16, scope: !595)
!597 = !DILocation(line: 548, column: 22, scope: !598)
!598 = distinct !DILexicalBlock(scope: !586, file: !5, line: 547, column: 23)
!599 = !DILocation(line: 0, scope: !586)
!600 = !DILocation(line: 542, column: 37, scope: !581)
!601 = !DILocation(line: 0, scope: !577)
!602 = !DILocation(line: 542, column: 28, scope: !581)
!603 = distinct !{!603, !575, !604, !112, !113}
!604 = !DILocation(line: 551, column: 10, scope: !576)
!605 = !DILocation(line: 576, column: 17, scope: !606)
!606 = distinct !DILexicalBlock(scope: !453, file: !5, line: 576, column: 11)
!607 = !DILocation(line: 576, column: 11, scope: !453)
!608 = !DILocation(line: 577, column: 11, scope: !609)
!609 = distinct !DILexicalBlock(scope: !606, file: !5, line: 576, column: 27)
!610 = !DILocation(line: 577, column: 21, scope: !609)
!611 = !DILocation(line: 577, column: 24, scope: !609)
!612 = !DILocation(line: 578, column: 11, scope: !609)
!613 = !DILocation(line: 578, column: 21, scope: !609)
!614 = !DILocation(line: 578, column: 24, scope: !609)
!615 = !DILocation(line: 579, column: 30, scope: !609)
!616 = !DILocation(line: 579, column: 16, scope: !609)
!617 = !DILocation(line: 579, column: 19, scope: !609)
!618 = !DILocation(line: 0, scope: !619)
!619 = distinct !DILexicalBlock(scope: !609, file: !5, line: 590, column: 14)
!620 = !DILocation(line: 590, column: 14, scope: !609)
!621 = !DILocation(line: 591, column: 13, scope: !622)
!622 = distinct !DILexicalBlock(scope: !619, file: !5, line: 590, column: 24)
!623 = !DILocation(line: 593, column: 10, scope: !622)
!624 = !DILocation(line: 594, column: 13, scope: !625)
!625 = distinct !DILexicalBlock(scope: !619, file: !5, line: 593, column: 17)
!626 = !DILocation(line: 614, column: 17, scope: !627)
!627 = distinct !DILexicalBlock(scope: !453, file: !5, line: 614, column: 11)
!628 = !DILocation(line: 614, column: 11, scope: !453)
!629 = !DILocation(line: 615, column: 11, scope: !630)
!630 = distinct !DILexicalBlock(scope: !627, file: !5, line: 614, column: 27)
!631 = !DILocation(line: 615, column: 21, scope: !630)
!632 = !DILocation(line: 615, column: 24, scope: !630)
!633 = !DILocation(line: 616, column: 11, scope: !630)
!634 = !DILocation(line: 616, column: 21, scope: !630)
!635 = !DILocation(line: 616, column: 24, scope: !630)
!636 = !DILocation(line: 617, column: 30, scope: !630)
!637 = !DILocation(line: 617, column: 16, scope: !630)
!638 = !DILocation(line: 617, column: 19, scope: !630)
!639 = !DILocation(line: 0, scope: !640)
!640 = distinct !DILexicalBlock(scope: !630, file: !5, line: 628, column: 14)
!641 = !DILocation(line: 628, column: 14, scope: !630)
!642 = !DILocation(line: 639, column: 1, scope: !345)
!643 = distinct !DISubprogram(name: "searchkdtree", scope: !5, file: !5, line: 667, type: !644, scopeLine: 671, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !646)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !3, !27, !9, !9, !25, !25, !25, !25, !28, !28, !10, !29}
!646 = !{!647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663}
!647 = !DILocalVariable(name: "that", arg: 1, scope: !643, file: !5, line: 667, type: !3)
!648 = !DILocalVariable(name: "x", arg: 2, scope: !643, file: !5, line: 667, type: !27)
!649 = !DILocalVariable(name: "p", arg: 3, scope: !643, file: !5, line: 667, type: !9)
!650 = !DILocalVariable(name: "q", arg: 4, scope: !643, file: !5, line: 667, type: !9)
!651 = !DILocalVariable(name: "loindexp", arg: 5, scope: !643, file: !5, line: 668, type: !25)
!652 = !DILocalVariable(name: "upindexp", arg: 6, scope: !643, file: !5, line: 668, type: !25)
!653 = !DILocalVariable(name: "lopairlist", arg: 7, scope: !643, file: !5, line: 669, type: !25)
!654 = !DILocalVariable(name: "uppairlist", arg: 8, scope: !643, file: !5, line: 669, type: !25)
!655 = !DILocalVariable(name: "cut", arg: 9, scope: !643, file: !5, line: 670, type: !28)
!656 = !DILocalVariable(name: "cut2", arg: 10, scope: !643, file: !5, line: 670, type: !28)
!657 = !DILocalVariable(name: "dim", arg: 11, scope: !643, file: !5, line: 670, type: !10)
!658 = !DILocalVariable(name: "frozen", arg: 12, scope: !643, file: !5, line: 670, type: !29)
!659 = !DILocalVariable(name: "xij", scope: !643, file: !5, line: 672, type: !28)
!660 = !DILocalVariable(name: "yij", scope: !643, file: !5, line: 672, type: !28)
!661 = !DILocalVariable(name: "zij", scope: !643, file: !5, line: 672, type: !28)
!662 = !DILocalVariable(name: "wij", scope: !643, file: !5, line: 672, type: !28)
!663 = !DILocalVariable(name: "r2", scope: !643, file: !5, line: 672, type: !28)
!664 = !DILocation(line: 749, column: 16, scope: !665)
!665 = distinct !DILexicalBlock(scope: !643, file: !5, line: 747, column: 8)
!666 = !DILocation(line: 754, column: 7, scope: !667)
!667 = distinct !DILexicalBlock(scope: !665, file: !5, line: 753, column: 4)
!668 = !DILocation(line: 0, scope: !643)
!669 = !DILocation(line: 685, column: 6, scope: !643)
!670 = !DILocation(line: 697, column: 12, scope: !671)
!671 = distinct !DILexicalBlock(scope: !643, file: !5, line: 697, column: 8)
!672 = !DILocation(line: 0, scope: !671)
!673 = !DILocation(line: 697, column: 18, scope: !671)
!674 = !DILocation(line: 697, column: 41, scope: !671)
!675 = !DILocation(line: 698, column: 40, scope: !671)
!676 = !DILocation(line: 699, column: 20, scope: !671)
!677 = !DILocation(line: 699, column: 24, scope: !671)
!678 = !DILocation(line: 699, column: 10, scope: !671)
!679 = !DILocation(line: 699, column: 29, scope: !671)
!680 = !DILocation(line: 699, column: 52, scope: !671)
!681 = !DILocation(line: 699, column: 44, scope: !671)
!682 = !DILocation(line: 699, column: 58, scope: !671)
!683 = !DILocation(line: 699, column: 38, scope: !671)
!684 = !DILocation(line: 699, column: 35, scope: !671)
!685 = !DILocation(line: 697, column: 8, scope: !643)
!686 = !DILocation(line: 705, column: 35, scope: !687)
!687 = distinct !DILexicalBlock(scope: !671, file: !5, line: 704, column: 4)
!688 = !DILocation(line: 705, column: 7, scope: !687)
!689 = !DILocation(line: 707, column: 4, scope: !687)
!690 = !DILocation(line: 718, column: 20, scope: !691)
!691 = distinct !DILexicalBlock(scope: !643, file: !5, line: 718, column: 8)
!692 = !DILocation(line: 718, column: 11, scope: !691)
!693 = !DILocation(line: 718, column: 23, scope: !691)
!694 = !DILocation(line: 718, column: 28, scope: !691)
!695 = !DILocation(line: 718, column: 38, scope: !691)
!696 = !DILocation(line: 718, column: 42, scope: !691)
!697 = !DILocation(line: 718, column: 8, scope: !643)
!698 = !DILocation(line: 719, column: 13, scope: !699)
!699 = distinct !DILexicalBlock(scope: !691, file: !5, line: 718, column: 60)
!700 = !DILocation(line: 719, column: 36, scope: !699)
!701 = !DILocation(line: 719, column: 30, scope: !699)
!702 = !DILocation(line: 719, column: 28, scope: !699)
!703 = !DILocation(line: 720, column: 13, scope: !699)
!704 = !DILocation(line: 720, column: 46, scope: !699)
!705 = !DILocation(line: 720, column: 30, scope: !699)
!706 = !DILocation(line: 720, column: 28, scope: !699)
!707 = !DILocation(line: 721, column: 13, scope: !699)
!708 = !DILocation(line: 721, column: 46, scope: !699)
!709 = !DILocation(line: 721, column: 30, scope: !699)
!710 = !DILocation(line: 721, column: 28, scope: !699)
!711 = !DILocation(line: 722, column: 28, scope: !699)
!712 = !DILocation(line: 722, column: 22, scope: !699)
!713 = !DILocation(line: 722, column: 34, scope: !699)
!714 = !DILocation(line: 723, column: 11, scope: !699)
!715 = !DILocation(line: 724, column: 16, scope: !716)
!716 = distinct !DILexicalBlock(scope: !717, file: !5, line: 723, column: 21)
!717 = distinct !DILexicalBlock(scope: !699, file: !5, line: 723, column: 11)
!718 = !DILocation(line: 724, column: 49, scope: !716)
!719 = !DILocation(line: 724, column: 33, scope: !716)
!720 = !DILocation(line: 724, column: 31, scope: !716)
!721 = !DILocation(line: 725, column: 13, scope: !716)
!722 = !DILocation(line: 726, column: 7, scope: !716)
!723 = !DILocation(line: 0, scope: !699)
!724 = !DILocation(line: 727, column: 14, scope: !725)
!725 = distinct !DILexicalBlock(scope: !699, file: !5, line: 727, column: 11)
!726 = !DILocation(line: 727, column: 11, scope: !699)
!727 = !DILocation(line: 728, column: 22, scope: !728)
!728 = distinct !DILexicalBlock(scope: !729, file: !5, line: 728, column: 14)
!729 = distinct !DILexicalBlock(scope: !725, file: !5, line: 727, column: 22)
!730 = !DILocation(line: 0, scope: !728)
!731 = !DILocation(line: 747, column: 18, scope: !665)
!732 = !DILocation(line: 0, scope: !665)
!733 = !DILocation(line: 747, column: 41, scope: !665)
!734 = !DILocation(line: 748, column: 40, scope: !665)
!735 = !DILocation(line: 749, column: 20, scope: !665)
!736 = !DILocation(line: 749, column: 24, scope: !665)
!737 = !DILocation(line: 749, column: 10, scope: !665)
!738 = !DILocation(line: 749, column: 29, scope: !665)
!739 = !DILocation(line: 749, column: 51, scope: !665)
!740 = !DILocation(line: 749, column: 43, scope: !665)
!741 = !DILocation(line: 749, column: 57, scope: !665)
!742 = !DILocation(line: 749, column: 37, scope: !665)
!743 = !DILocation(line: 749, column: 35, scope: !665)
!744 = !DILocation(line: 747, column: 8, scope: !643)
!745 = !DILocation(line: 754, column: 35, scope: !667)
!746 = !DILocation(line: 757, column: 1, scope: !643)
!747 = distinct !DISubprogram(name: "heapsort_pairs", scope: !5, file: !5, line: 114, type: !748, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !750)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !29, !10}
!750 = !{!751, !752, !753, !754}
!751 = !DILocalVariable(name: "a", arg: 1, scope: !747, file: !5, line: 114, type: !29)
!752 = !DILocalVariable(name: "n", arg: 2, scope: !747, file: !5, line: 114, type: !10)
!753 = !DILocalVariable(name: "k", scope: !747, file: !5, line: 117, type: !10)
!754 = !DILocalVariable(name: "v", scope: !747, file: !5, line: 117, type: !10)
!755 = !DILocation(line: 0, scope: !747)
!756 = !DILocation(line: 119, column: 15, scope: !757)
!757 = distinct !DILexicalBlock(scope: !747, file: !5, line: 119, column: 4)
!758 = !DILocation(line: 119, column: 22, scope: !759)
!759 = distinct !DILexicalBlock(scope: !757, file: !5, line: 119, column: 4)
!760 = !DILocation(line: 119, column: 4, scope: !757)
!761 = !DILocation(line: 121, column: 4, scope: !747)
!762 = !DILocalVariable(name: "a", arg: 1, scope: !763, file: !5, line: 73, type: !29)
!763 = distinct !DISubprogram(name: "downheap_pairs", scope: !5, file: !5, line: 73, type: !764, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !766)
!764 = !DISubroutineType(types: !765)
!765 = !{null, !29, !10, !10}
!766 = !{!762, !767, !768, !769, !770}
!767 = !DILocalVariable(name: "n", arg: 2, scope: !763, file: !5, line: 73, type: !10)
!768 = !DILocalVariable(name: "k", arg: 3, scope: !763, file: !5, line: 73, type: !10)
!769 = !DILocalVariable(name: "j", scope: !763, file: !5, line: 76, type: !10)
!770 = !DILocalVariable(name: "v", scope: !763, file: !5, line: 76, type: !10)
!771 = !DILocation(line: 0, scope: !763, inlinedAt: !772)
!772 = distinct !DILocation(line: 120, column: 7, scope: !759)
!773 = !DILocation(line: 78, column: 12, scope: !763, inlinedAt: !772)
!774 = !DILocation(line: 78, column: 8, scope: !763, inlinedAt: !772)
!775 = !DILocation(line: 79, column: 13, scope: !763, inlinedAt: !772)
!776 = !DILocation(line: 79, column: 4, scope: !763, inlinedAt: !772)
!777 = !DILocation(line: 80, column: 13, scope: !778, inlinedAt: !772)
!778 = distinct !DILexicalBlock(scope: !763, file: !5, line: 79, column: 23)
!779 = !DILocation(line: 81, column: 14, scope: !780, inlinedAt: !772)
!780 = distinct !DILexicalBlock(scope: !778, file: !5, line: 81, column: 11)
!781 = !DILocation(line: 81, column: 19, scope: !780, inlinedAt: !772)
!782 = !DILocation(line: 81, column: 27, scope: !780, inlinedAt: !772)
!783 = !DILocation(line: 81, column: 23, scope: !780, inlinedAt: !772)
!784 = !DILocation(line: 81, column: 34, scope: !780, inlinedAt: !772)
!785 = !DILocation(line: 81, column: 32, scope: !780, inlinedAt: !772)
!786 = !DILocation(line: 81, column: 11, scope: !778, inlinedAt: !772)
!787 = !DILocation(line: 0, scope: !778, inlinedAt: !772)
!788 = !DILocation(line: 83, column: 20, scope: !789, inlinedAt: !772)
!789 = distinct !DILexicalBlock(scope: !778, file: !5, line: 83, column: 11)
!790 = !DILocation(line: 83, column: 16, scope: !789, inlinedAt: !772)
!791 = !DILocation(line: 83, column: 13, scope: !789, inlinedAt: !772)
!792 = !DILocation(line: 83, column: 11, scope: !778, inlinedAt: !772)
!793 = !DILocation(line: 85, column: 7, scope: !778, inlinedAt: !772)
!794 = !DILocation(line: 85, column: 16, scope: !778, inlinedAt: !772)
!795 = distinct !{!795, !776, !796, !112, !113}
!796 = !DILocation(line: 87, column: 4, scope: !763, inlinedAt: !772)
!797 = !DILocation(line: 88, column: 8, scope: !763, inlinedAt: !772)
!798 = !DILocation(line: 88, column: 4, scope: !763, inlinedAt: !772)
!799 = !DILocation(line: 88, column: 13, scope: !763, inlinedAt: !772)
!800 = distinct !{!800, !760, !801, !112, !113}
!801 = !DILocation(line: 120, column: 29, scope: !757)
!802 = !DILocation(line: 122, column: 11, scope: !803)
!803 = distinct !DILexicalBlock(scope: !747, file: !5, line: 121, column: 18)
!804 = !DILocation(line: 123, column: 18, scope: !803)
!805 = !DILocation(line: 123, column: 14, scope: !803)
!806 = !DILocation(line: 123, column: 12, scope: !803)
!807 = !DILocation(line: 124, column: 16, scope: !803)
!808 = !DILocation(line: 0, scope: !763, inlinedAt: !809)
!809 = distinct !DILocation(line: 125, column: 7, scope: !803)
!810 = !DILocation(line: 78, column: 8, scope: !763, inlinedAt: !809)
!811 = !DILocation(line: 79, column: 13, scope: !763, inlinedAt: !809)
!812 = !DILocation(line: 79, column: 4, scope: !763, inlinedAt: !809)
!813 = !DILocation(line: 80, column: 13, scope: !778, inlinedAt: !809)
!814 = !DILocation(line: 81, column: 14, scope: !780, inlinedAt: !809)
!815 = !DILocation(line: 81, column: 19, scope: !780, inlinedAt: !809)
!816 = !DILocation(line: 81, column: 27, scope: !780, inlinedAt: !809)
!817 = !DILocation(line: 81, column: 23, scope: !780, inlinedAt: !809)
!818 = !DILocation(line: 81, column: 34, scope: !780, inlinedAt: !809)
!819 = !DILocation(line: 81, column: 32, scope: !780, inlinedAt: !809)
!820 = !DILocation(line: 81, column: 11, scope: !778, inlinedAt: !809)
!821 = !DILocation(line: 0, scope: !778, inlinedAt: !809)
!822 = !DILocation(line: 83, column: 20, scope: !789, inlinedAt: !809)
!823 = !DILocation(line: 83, column: 16, scope: !789, inlinedAt: !809)
!824 = !DILocation(line: 83, column: 13, scope: !789, inlinedAt: !809)
!825 = !DILocation(line: 83, column: 11, scope: !778, inlinedAt: !809)
!826 = !DILocation(line: 85, column: 7, scope: !778, inlinedAt: !809)
!827 = !DILocation(line: 85, column: 16, scope: !778, inlinedAt: !809)
!828 = distinct !{!828, !812, !829, !112, !113}
!829 = !DILocation(line: 87, column: 4, scope: !763, inlinedAt: !809)
!830 = !DILocation(line: 88, column: 8, scope: !763, inlinedAt: !809)
!831 = !DILocation(line: 88, column: 4, scope: !763, inlinedAt: !809)
!832 = !DILocation(line: 88, column: 13, scope: !763, inlinedAt: !809)
!833 = !DILocation(line: 121, column: 13, scope: !747)
!834 = distinct !{!834, !761, !835, !112, !113}
!835 = !DILocation(line: 126, column: 4, scope: !747)
!836 = !DILocation(line: 127, column: 1, scope: !747)
!837 = !DISubprogram(name: "free_ivector", scope: !5, file: !5, line: 29, type: !838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !25, !9, !9}
