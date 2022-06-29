; ModuleID = '/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/nblist.c'
source_filename = "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/nblist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.kdnode = type { i32, %struct.kdnode*, %struct.kdnode* }

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [40 x i8] c"Error allocate kdnode array in nbtree!\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @nblist(i32* nocapture noundef %lpears, i32* nocapture noundef %upears, i32** nocapture noundef %pearlist, double* noundef %x, i32 noundef %context_PxQ, i32 noundef %derivs, double noundef %cutoff, i32 noundef %natom, i32 noundef %dim, i32* noundef %frozen) local_unnamed_addr #0 !dbg !20 {
entry:
  %locnt = alloca i32, align 4
  %upcnt = alloca i32, align 4
  %kdptr = alloca %struct.kdnode*, align 8
  call void @llvm.dbg.value(metadata i32* %lpears, metadata !29, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32* %upears, metadata !30, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32** %pearlist, metadata !31, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata double* %x, metadata !32, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 %context_PxQ, metadata !33, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 %derivs, metadata !34, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata double %cutoff, metadata !35, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 %natom, metadata !36, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 %dim, metadata !37, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32* %frozen, metadata !38, metadata !DIExpression()), !dbg !59
  %0 = bitcast i32* %locnt to i8*, !dbg !60
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12, !dbg !60
  %1 = bitcast i32* %upcnt to i8*, !dbg !60
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #12, !dbg !60
  call void @llvm.dbg.declare(metadata i32* undef, metadata !44, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* undef, metadata !45, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i32* null, metadata !50, metadata !DIExpression()), !dbg !59
  %2 = bitcast %struct.kdnode** %kdptr to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #12, !dbg !63
  %mul = fmul double %cutoff, %cutoff, !dbg !64
  call void @llvm.dbg.value(metadata double %mul, metadata !55, metadata !DIExpression()), !dbg !59
  %call = tail call i32 @get_blocksize() #12, !dbg !65
  call void @llvm.dbg.value(metadata i32 %call, metadata !46, metadata !DIExpression()), !dbg !59
  %conv = sext i32 %natom to i64, !dbg !66
  %mul1 = mul nsw i64 %conv, 24, !dbg !68
  %call2 = tail call noalias i8* @malloc(i64 noundef %mul1) #12, !dbg !69
  %3 = bitcast i8* %call2 to %struct.kdnode*, !dbg !70
  call void @llvm.dbg.value(metadata %struct.kdnode* %3, metadata !56, metadata !DIExpression()), !dbg !59
  %cmp = icmp eq i8* %call2, null, !dbg !71
  br i1 %cmp, label %if.then, label %if.end, !dbg !72

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !73, !tbaa !75
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %4) #13, !dbg !79
  tail call void @exit(i32 noundef 1) #14, !dbg !80
  unreachable, !dbg !80

if.end:                                           ; preds = %entry
  %call5 = tail call i32* @ivector(i32 noundef 0, i32 noundef %natom) #12, !dbg !81
  call void @llvm.dbg.value(metadata i32* %call5, metadata !47, metadata !DIExpression()), !dbg !59
  %call6 = tail call i32* @ivector(i32 noundef 0, i32 noundef %natom) #12, !dbg !82
  call void @llvm.dbg.value(metadata i32* %call6, metadata !48, metadata !DIExpression()), !dbg !59
  %call7 = tail call i32* @ivector(i32 noundef 0, i32 noundef %natom) #12, !dbg !83
  call void @llvm.dbg.value(metadata i32* %call7, metadata !49, metadata !DIExpression()), !dbg !59
  %call8 = tail call i32* @ivector(i32 noundef 0, i32 noundef %natom) #12, !dbg !84
  call void @llvm.dbg.value(metadata i32* %call8, metadata !52, metadata !DIExpression()), !dbg !59
  %cmp9 = icmp eq i32 %dim, 4, !dbg !85
  %call12 = tail call i32* @ivector(i32 noundef 0, i32 noundef %natom) #12, !dbg !59
  call void @llvm.dbg.value(metadata i32* %call12, metadata !50, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32* %call12, metadata !50, metadata !DIExpression()), !dbg !59
  br i1 %cmp9, label %if.end13, label %if.end13.thread, !dbg !87

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32* @ivector(i32 noundef 0, i32 noundef %natom) #12, !dbg !88
  call void @llvm.dbg.value(metadata i32* %call14, metadata !51, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 0, metadata !39, metadata !DIExpression()), !dbg !59
  %cmp15264 = icmp sgt i32 %natom, 0, !dbg !89
  br i1 %cmp15264, label %for.body.us.preheader, label %for.end, !dbg !92

if.end13.thread:                                  ; preds = %if.end
  call void @llvm.dbg.value(metadata i32* %call14, metadata !51, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 0, metadata !39, metadata !DIExpression()), !dbg !59
  %cmp15264298 = icmp sgt i32 %natom, 0, !dbg !89
  br i1 %cmp15264298, label %for.body.preheader, label %for.end, !dbg !92

for.body.preheader:                               ; preds = %if.end13.thread
  %wide.trip.count = zext i32 %natom to i64, !dbg !89
  br label %for.body, !dbg !92

for.body.us.preheader:                            ; preds = %if.end13
  %wide.trip.count281 = zext i32 %natom to i64, !dbg !89
  br label %for.body.us, !dbg !92

for.body.us:                                      ; preds = %for.body.us.preheader, %for.body.us
  %indvars.iv278 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next279, %for.body.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv278, metadata !39, metadata !DIExpression()), !dbg !59
  %arrayidx.us = getelementptr inbounds i32, i32* %call7, i64 %indvars.iv278, !dbg !93
  %6 = trunc i64 %indvars.iv278 to i32, !dbg !95
  store i32 %6, i32* %arrayidx.us, align 4, !dbg !95, !tbaa !96
  %arrayidx18.us = getelementptr inbounds i32, i32* %call6, i64 %indvars.iv278, !dbg !98
  store i32 %6, i32* %arrayidx18.us, align 4, !dbg !99, !tbaa !96
  %arrayidx20.us = getelementptr inbounds i32, i32* %call5, i64 %indvars.iv278, !dbg !100
  store i32 %6, i32* %arrayidx20.us, align 4, !dbg !101, !tbaa !96
  %arrayidx25.us = getelementptr inbounds i32, i32* %call12, i64 %indvars.iv278, !dbg !102
  store i32 %6, i32* %arrayidx25.us, align 4, !dbg !105, !tbaa !96
  %arrayidx28.us = getelementptr inbounds i32, i32* %call14, i64 %indvars.iv278, !dbg !106
  store i32 %6, i32* %arrayidx28.us, align 4, !dbg !107, !tbaa !96
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1, !dbg !108
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next279, metadata !39, metadata !DIExpression()), !dbg !59
  %exitcond282.not = icmp eq i64 %indvars.iv.next279, %wide.trip.count281, !dbg !89
  br i1 %exitcond282.not, label %for.end, label %for.body.us, !dbg !92, !llvm.loop !109

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !39, metadata !DIExpression()), !dbg !59
  %arrayidx = getelementptr inbounds i32, i32* %call7, i64 %indvars.iv, !dbg !93
  %7 = trunc i64 %indvars.iv to i32, !dbg !95
  store i32 %7, i32* %arrayidx, align 4, !dbg !95, !tbaa !96
  %arrayidx18 = getelementptr inbounds i32, i32* %call6, i64 %indvars.iv, !dbg !98
  store i32 %7, i32* %arrayidx18, align 4, !dbg !99, !tbaa !96
  %arrayidx20 = getelementptr inbounds i32, i32* %call5, i64 %indvars.iv, !dbg !100
  store i32 %7, i32* %arrayidx20, align 4, !dbg !101, !tbaa !96
  %arrayidx28 = getelementptr inbounds i32, i32* %call12, i64 %indvars.iv, !dbg !106
  store i32 %7, i32* %arrayidx28, align 4, !dbg !107, !tbaa !96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !108
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !39, metadata !DIExpression()), !dbg !59
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !89
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !92, !llvm.loop !109

for.end:                                          ; preds = %for.body, %for.body.us, %if.end13.thread, %if.end13
  %cmp15264304 = phi i1 [ false, %if.end13.thread ], [ false, %if.end13 ], [ true, %for.body.us ], [ true, %for.body ]
  %call14302 = phi i32* [ %call12, %if.end13.thread ], [ %call14, %if.end13 ], [ %call14, %for.body.us ], [ %call12, %for.body ]
  %wn.0299 = phi i32* [ null, %if.end13.thread ], [ %call12, %if.end13 ], [ %call12, %for.body.us ], [ null, %for.body ]
  tail call fastcc void @heapsort_index(i32* noundef %call5, i32 noundef %natom, double* noundef %x, i32 noundef 0, i32 noundef %dim), !dbg !113
  tail call fastcc void @heapsort_index(i32* noundef %call6, i32 noundef %natom, double* noundef %x, i32 noundef 1, i32 noundef %dim), !dbg !114
  tail call fastcc void @heapsort_index(i32* noundef %call7, i32 noundef %natom, double* noundef %x, i32 noundef 2, i32 noundef %dim), !dbg !115
  br i1 %cmp9, label %if.then31, label %if.end32, !dbg !116

if.then31:                                        ; preds = %for.end
  tail call fastcc void @heapsort_index(i32* noundef %wn.0299, i32 noundef %natom, double* noundef %x, i32 noundef 3, i32 noundef 4), !dbg !117
  call void @llvm.dbg.value(metadata %struct.kdnode* %3, metadata !57, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !59
  call void @llvm.dbg.value(metadata %struct.kdnode* %3, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata %struct.kdnode** %kdptr, metadata !57, metadata !DIExpression(DW_OP_deref)), !dbg !59
  br label %if.end32, !dbg !120

if.end32:                                         ; preds = %for.end, %if.then31
  %dim.sink = phi i32 [ 4, %if.then31 ], [ %dim, %for.end ]
  %storemerge = getelementptr inbounds %struct.kdnode, %struct.kdnode* %3, i64 1, !dbg !121
  store %struct.kdnode* %storemerge, %struct.kdnode** %kdptr, align 8, !dbg !121, !tbaa !75
  %lo256 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %3, i64 0, i32 1, !dbg !122
  %sub258 = add nsw i32 %natom, -1, !dbg !123
  %8 = bitcast %struct.kdnode** %lo256 to i8*, !dbg !124
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !dbg !125
  call fastcc void @buildkdtree(i32* noundef %call14302, i32* noundef %call5, i32* noundef %call6, i32* noundef %call7, i32* noundef %wn.0299, i32* noundef %call8, i32 noundef 0, i32 noundef %sub258, %struct.kdnode** noundef nonnull %kdptr, %struct.kdnode* noundef nonnull %3, double* noundef %x, i32 noundef 0, i32 noundef %dim.sink), !dbg !124
  call void @llvm.dbg.value(metadata i32 0, metadata !43, metadata !DIExpression()), !dbg !59
  %call33 = call i32* @ivector(i32 noundef 0, i32 noundef %natom) #12, !dbg !126
  call void @llvm.dbg.value(metadata i32* %call33, metadata !53, metadata !DIExpression()), !dbg !59
  %call34 = call i32* @ivector(i32 noundef 0, i32 noundef %natom) #12, !dbg !128
  call void @llvm.dbg.value(metadata i32* %call34, metadata !54, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 0, metadata !39, metadata !DIExpression()), !dbg !59
  br i1 %cmp15264304, label %for.body38.preheader, label %for.end122, !dbg !129

for.body38.preheader:                             ; preds = %if.end32
  %wide.trip.count292 = zext i32 %natom to i64, !dbg !131
  br label %for.body38, !dbg !129

for.body38:                                       ; preds = %for.body38.preheader, %for.end117
  %indvars.iv289 = phi i64 [ 0, %for.body38.preheader ], [ %indvars.iv.next290, %for.end117 ]
  %totpair.0272 = phi i32 [ 0, %for.body38.preheader ], [ %add119, %for.end117 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv289, metadata !39, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 %totpair.0272, metadata !43, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 0, metadata !42, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %upcnt, align 4, !dbg !133, !tbaa !96
  call void @llvm.dbg.value(metadata i32 0, metadata !41, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %locnt, align 4, !dbg !135, !tbaa !96
  call void @llvm.dbg.value(metadata i32* %locnt, metadata !41, metadata !DIExpression(DW_OP_deref)), !dbg !59
  call void @llvm.dbg.value(metadata i32* %upcnt, metadata !42, metadata !DIExpression(DW_OP_deref)), !dbg !59
  %9 = trunc i64 %indvars.iv289 to i32, !dbg !136
  call fastcc void @searchkdtree(%struct.kdnode* noundef nonnull %3, double* noundef %x, i32 noundef 0, i32 noundef %9, i32* noundef nonnull %locnt, i32* noundef nonnull %upcnt, i32* noundef %call33, i32* noundef %call34, double noundef %cutoff, double noundef %mul, i32 noundef %dim, i32* noundef %frozen), !dbg !136
  %10 = load i32, i32* %locnt, align 4, !dbg !137, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %10, metadata !41, metadata !DIExpression()), !dbg !59
  call fastcc void @heapsort_pairs(i32* noundef %call33, i32 noundef %10), !dbg !138
  %11 = load i32, i32* %upcnt, align 4, !dbg !139, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %11, metadata !42, metadata !DIExpression()), !dbg !59
  call fastcc void @heapsort_pairs(i32* noundef %call34, i32 noundef %11), !dbg !140
  %arrayidx40 = getelementptr inbounds i32*, i32** %pearlist, i64 %indvars.iv289, !dbg !141
  %12 = load i32*, i32** %arrayidx40, align 8, !dbg !141, !tbaa !75
  %cmp41 = icmp eq i32* %12, null, !dbg !143
  %13 = load i32, i32* %locnt, align 4, !dbg !144, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %13, metadata !41, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 %13, metadata !41, metadata !DIExpression()), !dbg !59
  %14 = load i32, i32* %upcnt, align 4, !dbg !144, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %14, metadata !42, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 %14, metadata !42, metadata !DIExpression()), !dbg !59
  %add = add nsw i32 %14, %13, !dbg !144
  br i1 %cmp41, label %land.lhs.true, label %land.lhs.true54, !dbg !145

land.lhs.true:                                    ; preds = %for.body38
  %cmp43 = icmp sgt i32 %add, 0, !dbg !146
  br i1 %cmp43, label %if.end86thread-pre-split.sink.split, label %if.end86, !dbg !147

land.lhs.true54:                                  ; preds = %for.body38
  %arrayidx57 = getelementptr inbounds i32, i32* %lpears, i64 %indvars.iv289, !dbg !148
  %15 = load i32, i32* %arrayidx57, align 4, !dbg !148, !tbaa !96
  %arrayidx59 = getelementptr inbounds i32, i32* %upears, i64 %indvars.iv289, !dbg !150
  %16 = load i32, i32* %arrayidx59, align 4, !dbg !150, !tbaa !96
  %add60 = add nsw i32 %16, %15, !dbg !151
  %cmp61 = icmp sgt i32 %add, %add60, !dbg !152
  br i1 %cmp61, label %if.then73, label %lor.lhs.false, !dbg !153

lor.lhs.false:                                    ; preds = %land.lhs.true54
  %mul64 = shl nsw i32 %add, 2, !dbg !154
  %mul70 = mul nsw i32 %add60, 3, !dbg !155
  %cmp71 = icmp slt i32 %mul64, %mul70, !dbg !156
  br i1 %cmp71, label %if.then73, label %if.end86thread-pre-split, !dbg !157

if.then73:                                        ; preds = %lor.lhs.false, %land.lhs.true54
  call void @free_ivector(i32* noundef nonnull %12, i32 noundef 0, i32 noundef %add60) #12, !dbg !158
  %17 = load i32, i32* %locnt, align 4, !dbg !160, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %17, metadata !41, metadata !DIExpression()), !dbg !59
  %18 = load i32, i32* %upcnt, align 4, !dbg !161, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %18, metadata !42, metadata !DIExpression()), !dbg !59
  %add81 = add nsw i32 %18, %17, !dbg !162
  br label %if.end86thread-pre-split.sink.split, !dbg !163

if.end86thread-pre-split.sink.split:              ; preds = %land.lhs.true, %if.then73
  %add81.sink = phi i32 [ %add81, %if.then73 ], [ %add, %land.lhs.true ]
  %call82 = call i32* @ivector(i32 noundef 0, i32 noundef %add81.sink) #12, !dbg !144
  store i32* %call82, i32** %arrayidx40, align 8, !dbg !144, !tbaa !75
  br label %if.end86thread-pre-split, !dbg !164

if.end86thread-pre-split:                         ; preds = %if.end86thread-pre-split.sink.split, %lor.lhs.false
  %.ph = phi i32* [ %12, %lor.lhs.false ], [ %call82, %if.end86thread-pre-split.sink.split ]
  %.pr = load i32, i32* %locnt, align 4, !dbg !164, !tbaa !96
  br label %if.end86, !dbg !164

if.end86:                                         ; preds = %if.end86thread-pre-split, %land.lhs.true
  %19 = phi i32 [ %.pr, %if.end86thread-pre-split ], [ %13, %land.lhs.true ], !dbg !164
  %20 = phi i32* [ %.ph, %if.end86thread-pre-split ], [ null, %land.lhs.true ]
  call void @llvm.dbg.value(metadata i32 %19, metadata !41, metadata !DIExpression()), !dbg !59
  %arrayidx88 = getelementptr inbounds i32, i32* %lpears, i64 %indvars.iv289, !dbg !165
  store i32 %19, i32* %arrayidx88, align 4, !dbg !166, !tbaa !96
  %21 = load i32, i32* %upcnt, align 4, !dbg !167, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %21, metadata !42, metadata !DIExpression()), !dbg !59
  %arrayidx90 = getelementptr inbounds i32, i32* %upears, i64 %indvars.iv289, !dbg !168
  store i32 %21, i32* %arrayidx90, align 4, !dbg !169, !tbaa !96
  call void @llvm.dbg.value(metadata i32 0, metadata !40, metadata !DIExpression()), !dbg !59
  %cmp92267 = icmp sgt i32 %19, 0, !dbg !170
  br i1 %cmp92267, label %for.body94, label %for.cond104.preheader, !dbg !173

for.cond104.preheader.loopexit:                   ; preds = %for.body94
  %.pre = load i32, i32* %upcnt, align 4, !dbg !174, !tbaa !96
  br label %for.cond104.preheader, !dbg !174

for.cond104.preheader:                            ; preds = %for.cond104.preheader.loopexit, %if.end86
  %22 = phi i32 [ %27, %for.cond104.preheader.loopexit ], [ %19, %if.end86 ]
  %23 = phi i32 [ %.pre, %for.cond104.preheader.loopexit ], [ %21, %if.end86 ], !dbg !174
  call void @llvm.dbg.value(metadata i32 0, metadata !40, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 %23, metadata !42, metadata !DIExpression()), !dbg !59
  %cmp105269 = icmp sgt i32 %23, 0, !dbg !177
  br i1 %cmp105269, label %for.body107.preheader, label %for.end117, !dbg !178

for.body107.preheader:                            ; preds = %for.cond104.preheader
  call void @llvm.dbg.value(metadata i64 0, metadata !40, metadata !DIExpression()), !dbg !59
  %24 = load i32, i32* %call34, align 4, !dbg !179, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %22, metadata !41, metadata !DIExpression()), !dbg !59
  %idxprom113319 = sext i32 %22 to i64, !dbg !181
  %arrayidx114320 = getelementptr inbounds i32, i32* %20, i64 %idxprom113319, !dbg !181
  store i32 %24, i32* %arrayidx114320, align 4, !dbg !182, !tbaa !96
  call void @llvm.dbg.value(metadata i64 1, metadata !40, metadata !DIExpression()), !dbg !59
  %25 = load i32, i32* %upcnt, align 4, !dbg !174, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %25, metadata !42, metadata !DIExpression()), !dbg !59
  %cmp105321 = icmp sgt i32 %25, 1, !dbg !177
  br i1 %cmp105321, label %for.body107.for.body107_crit_edge, label %for.end117.loopexit, !dbg !178, !llvm.loop !183

for.body94:                                       ; preds = %if.end86, %for.body94
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %for.body94 ], [ 0, %if.end86 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv283, metadata !40, metadata !DIExpression()), !dbg !59
  %arrayidx96 = getelementptr inbounds i32, i32* %call33, i64 %indvars.iv283, !dbg !185
  %26 = load i32, i32* %arrayidx96, align 4, !dbg !185, !tbaa !96
  %arrayidx100 = getelementptr inbounds i32, i32* %20, i64 %indvars.iv283, !dbg !187
  store i32 %26, i32* %arrayidx100, align 4, !dbg !188, !tbaa !96
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1, !dbg !189
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next284, metadata !40, metadata !DIExpression()), !dbg !59
  %27 = load i32, i32* %locnt, align 4, !dbg !190, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %27, metadata !41, metadata !DIExpression()), !dbg !59
  %28 = sext i32 %27 to i64, !dbg !170
  %cmp92 = icmp slt i64 %indvars.iv.next284, %28, !dbg !170
  br i1 %cmp92, label %for.body94, label %for.cond104.preheader.loopexit, !dbg !173, !llvm.loop !191

for.body107.for.body107_crit_edge:                ; preds = %for.body107.preheader, %for.body107.for.body107_crit_edge
  %indvars.iv.next287322 = phi i64 [ %indvars.iv.next287, %for.body107.for.body107_crit_edge ], [ 1, %for.body107.preheader ]
  %.pre294 = load i32, i32* %locnt, align 4, !dbg !193, !tbaa !96
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next287322, metadata !40, metadata !DIExpression()), !dbg !59
  %arrayidx109 = getelementptr inbounds i32, i32* %call34, i64 %indvars.iv.next287322, !dbg !179
  %29 = load i32, i32* %arrayidx109, align 4, !dbg !179, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %.pre294, metadata !41, metadata !DIExpression()), !dbg !59
  %30 = trunc i64 %indvars.iv.next287322 to i32, !dbg !194
  %add112 = add nsw i32 %.pre294, %30, !dbg !194
  %idxprom113 = sext i32 %add112 to i64, !dbg !181
  %arrayidx114 = getelementptr inbounds i32, i32* %20, i64 %idxprom113, !dbg !181
  store i32 %29, i32* %arrayidx114, align 4, !dbg !182, !tbaa !96
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv.next287322, 1, !dbg !195
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next287, metadata !40, metadata !DIExpression()), !dbg !59
  %31 = load i32, i32* %upcnt, align 4, !dbg !174, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %31, metadata !42, metadata !DIExpression()), !dbg !59
  %32 = sext i32 %31 to i64, !dbg !177
  %cmp105 = icmp slt i64 %indvars.iv.next287, %32, !dbg !177
  br i1 %cmp105, label %for.body107.for.body107_crit_edge, label %for.end117.loopexit, !dbg !178, !llvm.loop !183

for.end117.loopexit:                              ; preds = %for.body107.for.body107_crit_edge, %for.body107.preheader
  %.lcssa317 = phi i32 [ %25, %for.body107.preheader ], [ %31, %for.body107.for.body107_crit_edge ], !dbg !174
  %.pre295 = load i32, i32* %locnt, align 4, !dbg !196, !tbaa !96
  br label %for.end117, !dbg !196

for.end117:                                       ; preds = %for.end117.loopexit, %for.cond104.preheader
  %33 = phi i32 [ %22, %for.cond104.preheader ], [ %.pre295, %for.end117.loopexit ], !dbg !196
  %.lcssa = phi i32 [ %23, %for.cond104.preheader ], [ %.lcssa317, %for.end117.loopexit ], !dbg !174
  call void @llvm.dbg.value(metadata i32 %33, metadata !41, metadata !DIExpression()), !dbg !59
  %add118 = add i32 %.lcssa, %totpair.0272, !dbg !197
  %add119 = add i32 %add118, %33, !dbg !198
  call void @llvm.dbg.value(metadata i32 %add119, metadata !43, metadata !DIExpression()), !dbg !59
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1, !dbg !199
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next290, metadata !39, metadata !DIExpression()), !dbg !59
  %exitcond293.not = icmp eq i64 %indvars.iv.next290, %wide.trip.count292, !dbg !131
  br i1 %exitcond293.not, label %for.end122, label %for.body38, !dbg !129, !llvm.loop !200

for.end122:                                       ; preds = %for.end117, %if.end32
  %totpair.0.lcssa = phi i32 [ 0, %if.end32 ], [ %add119, %for.end117 ], !dbg !59
  call void @free_ivector(i32* noundef %call33, i32 noundef 0, i32 noundef %natom) #12, !dbg !202
  call void @free_ivector(i32* noundef %call34, i32 noundef 0, i32 noundef %natom) #12, !dbg !203
  call void @free(i8* noundef %call2) #12, !dbg !204
  call void @free_ivector(i32* noundef %call5, i32 noundef 0, i32 noundef %natom) #12, !dbg !205
  call void @free_ivector(i32* noundef %call6, i32 noundef 0, i32 noundef %natom) #12, !dbg !206
  call void @free_ivector(i32* noundef %call7, i32 noundef 0, i32 noundef %natom) #12, !dbg !207
  call void @free_ivector(i32* noundef %call8, i32 noundef 0, i32 noundef %natom) #12, !dbg !208
  br i1 %cmp9, label %if.then125, label %if.end126, !dbg !209

if.then125:                                       ; preds = %for.end122
  call void @free_ivector(i32* noundef %wn.0299, i32 noundef 0, i32 noundef %natom) #12, !dbg !210
  br label %if.end126, !dbg !213

if.end126:                                        ; preds = %if.then125, %for.end122
  call void @free_ivector(i32* noundef %call14302, i32 noundef 0, i32 noundef %natom) #12, !dbg !214
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #12, !dbg !215
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #12, !dbg !215
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12, !dbg !215
  ret i32 %totpair.0.lcssa, !dbg !216
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !217 dso_local i32 @get_blocksize() local_unnamed_addr #3

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) local_unnamed_addr #5

declare !dbg !221 dso_local i32* @ivector(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal fastcc void @heapsort_index(i32* nocapture noundef %a, i32 noundef %n, double* nocapture noundef readonly %x, i32 noundef %p, i32 noundef %dim) unnamed_addr #6 !dbg !224 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !228, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i32 %n, metadata !229, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata double* %x, metadata !230, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i32 %p, metadata !231, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i32 %dim, metadata !232, metadata !DIExpression()), !dbg !235
  %div = sdiv i32 %n, 2, !dbg !236
  call void @llvm.dbg.value(metadata i32 %div, metadata !233, metadata !DIExpression()), !dbg !235
  %cmp79 = icmp sgt i32 %n, 1, !dbg !238
  br i1 %cmp79, label %for.body.preheader, label %while.end, !dbg !240

for.body.preheader:                               ; preds = %entry
  %0 = zext i32 %div to i64, !dbg !240
  %1 = sext i32 %div to i64, !dbg !240
  br label %for.body, !dbg !240

while.cond.preheader:                             ; preds = %downheap_index.exit
  call void @llvm.dbg.value(metadata i32 %n, metadata !229, metadata !DIExpression()), !dbg !235
  br i1 %cmp79, label %while.body.preheader, label %while.end, !dbg !241

while.body.preheader:                             ; preds = %while.cond.preheader
  %2 = zext i32 %n to i64, !dbg !241
  br label %while.body, !dbg !241

for.body:                                         ; preds = %for.body.preheader, %downheap_index.exit
  %indvars.iv = phi i64 [ %0, %for.body.preheader ], [ %indvars.iv.next, %downheap_index.exit ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !233, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i32* %a, metadata !242, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i32 %n, metadata !247, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !248, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double* %x, metadata !249, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i32 %p, metadata !250, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i32 %dim, metadata !251, metadata !DIExpression()), !dbg !254
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !256
  %indvars = trunc i64 %indvars.iv.next to i32, !dbg !256
  %3 = and i64 %indvars.iv.next, 4294967295
  %arrayidx.i = getelementptr inbounds i32, i32* %a, i64 %3, !dbg !257
  %4 = load i32, i32* %arrayidx.i, align 4, !dbg !257, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %4, metadata !253, metadata !DIExpression()), !dbg !254
  %cmp.not68.i = icmp sgt i64 %indvars.iv, %1, !dbg !258
  br i1 %cmp.not68.i, label %downheap_index.exit, label %while.body.lr.ph.i, !dbg !259

while.body.lr.ph.i:                               ; preds = %for.body
  %mul15.i = mul nsw i32 %4, %dim
  %add16.i = add nsw i32 %mul15.i, %p
  %idxprom17.i = sext i32 %add16.i to i64
  %arrayidx18.i = getelementptr inbounds double, double* %x, i64 %idxprom17.i
  %5 = load double, double* %arrayidx18.i, align 8, !tbaa !260
  %6 = trunc i64 %indvars.iv to i32, !dbg !259
  br label %while.body.i, !dbg !259

while.body.i:                                     ; preds = %if.end28.i, %while.body.lr.ph.i
  %k.addr.069.i = phi i32 [ %6, %while.body.lr.ph.i ], [ %j.0.i, %if.end28.i ]
  call void @llvm.dbg.value(metadata i32 %k.addr.069.i, metadata !248, metadata !DIExpression()), !dbg !254
  %add.i = shl nsw i32 %k.addr.069.i, 1, !dbg !262
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !252, metadata !DIExpression()), !dbg !254
  %cmp1.i = icmp slt i32 %add.i, %n, !dbg !264
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i, !dbg !266

land.lhs.true.i:                                  ; preds = %while.body.i
  %sub2.i = add nsw i32 %add.i, -1, !dbg !267
  %idxprom3.i = sext i32 %sub2.i to i64, !dbg !268
  %arrayidx4.i = getelementptr inbounds i32, i32* %a, i64 %idxprom3.i, !dbg !268
  %7 = load i32, i32* %arrayidx4.i, align 4, !dbg !268, !tbaa !96
  %mul.i = mul nsw i32 %7, %dim, !dbg !269
  %add5.i = add nsw i32 %mul.i, %p, !dbg !270
  %idxprom6.i = sext i32 %add5.i to i64, !dbg !271
  %arrayidx7.i = getelementptr inbounds double, double* %x, i64 %idxprom6.i, !dbg !271
  %8 = load double, double* %arrayidx7.i, align 8, !dbg !271, !tbaa !260
  %idxprom8.i = sext i32 %add.i to i64, !dbg !272
  %arrayidx9.i = getelementptr inbounds i32, i32* %a, i64 %idxprom8.i, !dbg !272
  %9 = load i32, i32* %arrayidx9.i, align 4, !dbg !272, !tbaa !96
  %mul10.i = mul nsw i32 %9, %dim, !dbg !273
  %add11.i = add nsw i32 %mul10.i, %p, !dbg !274
  %idxprom12.i = sext i32 %add11.i to i64, !dbg !275
  %arrayidx13.i = getelementptr inbounds double, double* %x, i64 %idxprom12.i, !dbg !275
  %10 = load double, double* %arrayidx13.i, align 8, !dbg !275, !tbaa !260
  %cmp14.i = fcmp olt double %8, %10, !dbg !276
  br i1 %cmp14.i, label %if.then.i, label %if.end.i, !dbg !277

if.then.i:                                        ; preds = %land.lhs.true.i
  %inc.i = or i32 %add.i, 1, !dbg !278
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !252, metadata !DIExpression()), !dbg !254
  br label %if.end.i, !dbg !279

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i, %while.body.i
  %j.0.i = phi i32 [ %inc.i, %if.then.i ], [ %add.i, %land.lhs.true.i ], [ %add.i, %while.body.i ], !dbg !280
  call void @llvm.dbg.value(metadata i32 %j.0.i, metadata !252, metadata !DIExpression()), !dbg !254
  %sub19.i = add nsw i32 %j.0.i, -1, !dbg !281
  %idxprom20.i = sext i32 %sub19.i to i64, !dbg !283
  %arrayidx21.i = getelementptr inbounds i32, i32* %a, i64 %idxprom20.i, !dbg !283
  %11 = load i32, i32* %arrayidx21.i, align 4, !dbg !283, !tbaa !96
  %mul22.i = mul nsw i32 %11, %dim, !dbg !284
  %add23.i = add nsw i32 %mul22.i, %p, !dbg !285
  %idxprom24.i = sext i32 %add23.i to i64, !dbg !286
  %arrayidx25.i = getelementptr inbounds double, double* %x, i64 %idxprom24.i, !dbg !286
  %12 = load double, double* %arrayidx25.i, align 8, !dbg !286, !tbaa !260
  %cmp26.i = fcmp ult double %5, %12, !dbg !287
  %sub32.i = add nsw i32 %k.addr.069.i, -1, !dbg !254
  br i1 %cmp26.i, label %if.end28.i, label %downheap_index.exit, !dbg !288

if.end28.i:                                       ; preds = %if.end.i
  %idxprom33.i = sext i32 %sub32.i to i64, !dbg !289
  %arrayidx34.i = getelementptr inbounds i32, i32* %a, i64 %idxprom33.i, !dbg !289
  store i32 %11, i32* %arrayidx34.i, align 4, !dbg !290, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %j.0.i, metadata !248, metadata !DIExpression()), !dbg !254
  %cmp.not.i = icmp sgt i32 %j.0.i, %div, !dbg !258
  br i1 %cmp.not.i, label %downheap_index.exit, label %while.body.i, !dbg !259, !llvm.loop !291

downheap_index.exit:                              ; preds = %if.end28.i, %if.end.i, %for.body
  %sub35.pre-phi.i = phi i32 [ %indvars, %for.body ], [ %sub19.i, %if.end28.i ], [ %sub32.i, %if.end.i ], !dbg !293
  %idxprom36.i = sext i32 %sub35.pre-phi.i to i64, !dbg !294
  %arrayidx37.i = getelementptr inbounds i32, i32* %a, i64 %idxprom36.i, !dbg !294
  store i32 %4, i32* %arrayidx37.i, align 4, !dbg !295, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %indvars, metadata !233, metadata !DIExpression()), !dbg !235
  %cmp = icmp sgt i64 %indvars.iv, 1, !dbg !238
  br i1 %cmp, label %for.body, label %while.cond.preheader, !dbg !240, !llvm.loop !296

while.body:                                       ; preds = %while.body.preheader, %downheap_index.exit73
  %indvars.iv88 = phi i64 [ %2, %while.body.preheader ], [ %indvars.iv.next89, %downheap_index.exit73 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv88, metadata !229, metadata !DIExpression()), !dbg !235
  %13 = load i32, i32* %a, align 4, !dbg !298, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %13, metadata !234, metadata !DIExpression()), !dbg !235
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, -1, !dbg !300
  %indvars90 = trunc i64 %indvars.iv.next89 to i32, !dbg !300
  %14 = and i64 %indvars.iv.next89, 4294967295
  %arrayidx2 = getelementptr inbounds i32, i32* %a, i64 %14, !dbg !301
  %15 = load i32, i32* %arrayidx2, align 4, !dbg !301, !tbaa !96
  store i32 %15, i32* %a, align 4, !dbg !302, !tbaa !96
  store i32 %13, i32* %arrayidx2, align 4, !dbg !303, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %indvars90, metadata !229, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i32* %a, metadata !242, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata i32 %indvars90, metadata !247, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata i32 1, metadata !248, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata double* %x, metadata !249, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata i32 %p, metadata !250, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata i32 %dim, metadata !251, metadata !DIExpression()), !dbg !304
  %16 = load i32, i32* %a, align 4, !dbg !306, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %16, metadata !253, metadata !DIExpression()), !dbg !304
  %div.i2574 = lshr i32 %indvars90, 1
  %cmp.not68.i26 = icmp ult i32 %indvars90, 2, !dbg !307
  br i1 %cmp.not68.i26, label %downheap_index.exit73, label %while.body.lr.ph.i31, !dbg !308

while.body.lr.ph.i31:                             ; preds = %while.body
  %mul15.i27 = mul nsw i32 %16, %dim
  %add16.i28 = add nsw i32 %mul15.i27, %p
  %idxprom17.i29 = sext i32 %add16.i28 to i64
  %arrayidx18.i30 = getelementptr inbounds double, double* %x, i64 %idxprom17.i29
  %17 = load double, double* %arrayidx18.i30, align 8, !tbaa !260
  br label %while.body.i35, !dbg !308

while.body.i35:                                   ; preds = %if.end28.i69, %while.body.lr.ph.i31
  %k.addr.069.i32 = phi i32 [ 1, %while.body.lr.ph.i31 ], [ %j.0.i53, %if.end28.i69 ]
  call void @llvm.dbg.value(metadata i32 %k.addr.069.i32, metadata !248, metadata !DIExpression()), !dbg !304
  %add.i33 = shl nsw i32 %k.addr.069.i32, 1, !dbg !309
  call void @llvm.dbg.value(metadata i32 %add.i33, metadata !252, metadata !DIExpression()), !dbg !304
  %cmp1.i34 = icmp slt i32 %add.i33, %indvars90, !dbg !310
  br i1 %cmp1.i34, label %land.lhs.true.i50, label %if.end.i62, !dbg !311

land.lhs.true.i50:                                ; preds = %while.body.i35
  %sub2.i36 = add nsw i32 %add.i33, -1, !dbg !312
  %idxprom3.i37 = sext i32 %sub2.i36 to i64, !dbg !313
  %arrayidx4.i38 = getelementptr inbounds i32, i32* %a, i64 %idxprom3.i37, !dbg !313
  %18 = load i32, i32* %arrayidx4.i38, align 4, !dbg !313, !tbaa !96
  %mul.i39 = mul nsw i32 %18, %dim, !dbg !314
  %add5.i40 = add nsw i32 %mul.i39, %p, !dbg !315
  %idxprom6.i41 = sext i32 %add5.i40 to i64, !dbg !316
  %arrayidx7.i42 = getelementptr inbounds double, double* %x, i64 %idxprom6.i41, !dbg !316
  %19 = load double, double* %arrayidx7.i42, align 8, !dbg !316, !tbaa !260
  %idxprom8.i43 = sext i32 %add.i33 to i64, !dbg !317
  %arrayidx9.i44 = getelementptr inbounds i32, i32* %a, i64 %idxprom8.i43, !dbg !317
  %20 = load i32, i32* %arrayidx9.i44, align 4, !dbg !317, !tbaa !96
  %mul10.i45 = mul nsw i32 %20, %dim, !dbg !318
  %add11.i46 = add nsw i32 %mul10.i45, %p, !dbg !319
  %idxprom12.i47 = sext i32 %add11.i46 to i64, !dbg !320
  %arrayidx13.i48 = getelementptr inbounds double, double* %x, i64 %idxprom12.i47, !dbg !320
  %21 = load double, double* %arrayidx13.i48, align 8, !dbg !320, !tbaa !260
  %cmp14.i49 = fcmp olt double %19, %21, !dbg !321
  br i1 %cmp14.i49, label %if.then.i52, label %if.end.i62, !dbg !322

if.then.i52:                                      ; preds = %land.lhs.true.i50
  %inc.i51 = or i32 %add.i33, 1, !dbg !323
  call void @llvm.dbg.value(metadata i32 %inc.i51, metadata !252, metadata !DIExpression()), !dbg !304
  br label %if.end.i62, !dbg !324

if.end.i62:                                       ; preds = %if.then.i52, %land.lhs.true.i50, %while.body.i35
  %j.0.i53 = phi i32 [ %inc.i51, %if.then.i52 ], [ %add.i33, %land.lhs.true.i50 ], [ %add.i33, %while.body.i35 ], !dbg !325
  call void @llvm.dbg.value(metadata i32 %j.0.i53, metadata !252, metadata !DIExpression()), !dbg !304
  %sub19.i54 = add nsw i32 %j.0.i53, -1, !dbg !326
  %idxprom20.i55 = sext i32 %sub19.i54 to i64, !dbg !327
  %arrayidx21.i56 = getelementptr inbounds i32, i32* %a, i64 %idxprom20.i55, !dbg !327
  %22 = load i32, i32* %arrayidx21.i56, align 4, !dbg !327, !tbaa !96
  %mul22.i57 = mul nsw i32 %22, %dim, !dbg !328
  %add23.i58 = add nsw i32 %mul22.i57, %p, !dbg !329
  %idxprom24.i59 = sext i32 %add23.i58 to i64, !dbg !330
  %arrayidx25.i60 = getelementptr inbounds double, double* %x, i64 %idxprom24.i59, !dbg !330
  %23 = load double, double* %arrayidx25.i60, align 8, !dbg !330, !tbaa !260
  %cmp26.i61 = fcmp ult double %17, %23, !dbg !331
  %sub32.i65 = add nsw i32 %k.addr.069.i32, -1, !dbg !304
  br i1 %cmp26.i61, label %if.end28.i69, label %downheap_index.exit73, !dbg !332

if.end28.i69:                                     ; preds = %if.end.i62
  %idxprom33.i66 = sext i32 %sub32.i65 to i64, !dbg !333
  %arrayidx34.i67 = getelementptr inbounds i32, i32* %a, i64 %idxprom33.i66, !dbg !333
  store i32 %22, i32* %arrayidx34.i67, align 4, !dbg !334, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %j.0.i53, metadata !248, metadata !DIExpression()), !dbg !304
  %cmp.not.i68 = icmp sgt i32 %j.0.i53, %div.i2574, !dbg !307
  br i1 %cmp.not.i68, label %downheap_index.exit73, label %while.body.i35, !dbg !308, !llvm.loop !335

downheap_index.exit73:                            ; preds = %if.end28.i69, %if.end.i62, %while.body
  %sub35.pre-phi.i70 = phi i32 [ 0, %while.body ], [ %sub19.i54, %if.end28.i69 ], [ %sub32.i65, %if.end.i62 ], !dbg !337
  %idxprom36.i71 = sext i32 %sub35.pre-phi.i70 to i64, !dbg !338
  %arrayidx37.i72 = getelementptr inbounds i32, i32* %a, i64 %idxprom36.i71, !dbg !338
  store i32 %16, i32* %arrayidx37.i72, align 4, !dbg !339, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %indvars90, metadata !229, metadata !DIExpression()), !dbg !235
  %cmp1 = icmp sgt i64 %indvars.iv88, 2, !dbg !340
  br i1 %cmp1, label %while.body, label %while.end, !dbg !241, !llvm.loop !341

while.end:                                        ; preds = %downheap_index.exit73, %entry, %while.cond.preheader
  ret void, !dbg !343
}

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @buildkdtree(i32* noundef %xn, i32* noundef %yn, i32* noundef %zn, i32* noundef %wn, i32* noundef %on, i32* noundef %tn, i32 noundef %start, i32 noundef %end, %struct.kdnode** noundef %kdpptr, %struct.kdnode* nocapture noundef writeonly %that, double* noundef %x, i32 noundef %p, i32 noundef %dim) unnamed_addr #7 !dbg !344 {
entry:
  call void @llvm.dbg.value(metadata i32* %xn, metadata !349, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32* %yn, metadata !350, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32* %zn, metadata !351, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32* %wn, metadata !352, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32* %on, metadata !353, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32* %tn, metadata !354, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %start, metadata !355, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %end, metadata !356, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata %struct.kdnode** %kdpptr, metadata !357, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata %struct.kdnode* %that, metadata !358, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double* %x, metadata !359, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %p, metadata !360, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %dim, metadata !361, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata !DIArgList(i32 %p, i32 %dim), metadata !360, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_mod, DW_OP_stack_value)), !dbg !368
  %cmp650668 = icmp eq i32 %end, %start, !dbg !369
  br i1 %cmp650668, label %if.then, label %if.else.lr.ph.preheader, !dbg !371

if.else.lr.ph.preheader:                          ; preds = %entry
  %add648666 = add nsw i32 %dim, 1, !dbg !372
  call void @llvm.dbg.value(metadata !DIArgList(i32 %p, i32 %add648666), metadata !360, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mod, DW_OP_stack_value)), !dbg !368
  %rem649667 = srem i32 %p, %add648666, !dbg !373
  call void @llvm.dbg.value(metadata i32 %rem649667, metadata !360, metadata !DIExpression()), !dbg !368
  %0 = add i32 %end, 1, !dbg !371
  br label %if.else.lr.ph, !dbg !371

if.else.lr.ph:                                    ; preds = %if.else.lr.ph.preheader, %if.else313
  %rem649676 = phi i32 [ %rem649, %if.else313 ], [ %rem649667, %if.else.lr.ph.preheader ]
  %dim.tr.ph675 = phi i32 [ %dim.tr658, %if.else313 ], [ %dim, %if.else.lr.ph.preheader ]
  %that.tr.ph674 = phi %struct.kdnode* [ %48, %if.else313 ], [ %that, %if.else.lr.ph.preheader ]
  %start.tr.ph673 = phi i32 [ %add310, %if.else313 ], [ %start, %if.else.lr.ph.preheader ]
  %tn.tr.ph672 = phi i32* [ %wn.tr.ph670, %if.else313 ], [ %tn, %if.else.lr.ph.preheader ]
  %on.tr.ph671 = phi i32* [ %on.tr652, %if.else313 ], [ %on, %if.else.lr.ph.preheader ]
  %wn.tr.ph670 = phi i32* [ %xn.tr651, %if.else313 ], [ %wn, %if.else.lr.ph.preheader ]
  %xn.tr.ph669 = phi i32* [ %tn.tr653, %if.else313 ], [ %xn, %if.else.lr.ph.preheader ]
  call void @llvm.dbg.value(metadata i32 %dim.tr.ph675, metadata !361, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata %struct.kdnode* %that.tr.ph674, metadata !358, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %start.tr.ph673, metadata !355, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32* %tn.tr.ph672, metadata !354, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32* %on.tr.ph671, metadata !353, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32* %wn.tr.ph670, metadata !352, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32* %xn.tr.ph669, metadata !349, metadata !DIExpression()), !dbg !368
  br label %if.else, !dbg !371

if.then:                                          ; preds = %if.else313, %if.then309, %entry
  %xn.tr.lcssa = phi i32* [ %xn, %entry ], [ %tn.tr653, %if.then309 ], [ %tn.tr653, %if.else313 ]
  %that.tr.lcssa = phi %struct.kdnode* [ %that, %entry ], [ %48, %if.then309 ], [ %48, %if.else313 ]
  %idxprom = sext i32 %end to i64, !dbg !374
  %arrayidx = getelementptr inbounds i32, i32* %xn.tr.lcssa, i64 %idxprom, !dbg !374
  %1 = load i32, i32* %arrayidx, align 4, !dbg !374, !tbaa !96
  %n = getelementptr inbounds %struct.kdnode, %struct.kdnode* %that.tr.lcssa, i64 0, i32 0, !dbg !376
  store i32 %1, i32* %n, align 8, !dbg !377, !tbaa !378
  br label %if.end320, !dbg !380

if.else:                                          ; preds = %if.else.lr.ph, %if.then309
  %rem659 = phi i32 [ %rem649676, %if.else.lr.ph ], [ %rem, %if.then309 ]
  %dim.tr658 = phi i32 [ %dim.tr.ph675, %if.else.lr.ph ], [ 4, %if.then309 ]
  %that.tr657 = phi %struct.kdnode* [ %that.tr.ph674, %if.else.lr.ph ], [ %48, %if.then309 ]
  %start.tr654 = phi i32 [ %start.tr.ph673, %if.else.lr.ph ], [ %add310, %if.then309 ]
  %tn.tr653 = phi i32* [ %tn.tr.ph672, %if.else.lr.ph ], [ %on.tr652, %if.then309 ]
  %on.tr652 = phi i32* [ %on.tr.ph671, %if.else.lr.ph ], [ %xn.tr651, %if.then309 ]
  %xn.tr651 = phi i32* [ %xn.tr.ph669, %if.else.lr.ph ], [ %tn.tr653, %if.then309 ]
  call void @llvm.dbg.value(metadata i32 %dim.tr658, metadata !361, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata %struct.kdnode* %that.tr657, metadata !358, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %start.tr654, metadata !355, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32* %tn.tr653, metadata !354, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32* %on.tr652, metadata !353, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32* %xn.tr651, metadata !349, metadata !DIExpression()), !dbg !368
  %add1 = add nsw i32 %start.tr654, 1, !dbg !381
  %cmp2 = icmp eq i32 %add1, %end, !dbg !383
  br i1 %cmp2, label %if.then3, label %if.else82, !dbg !384

if.then3:                                         ; preds = %if.else
  %cmp4 = icmp eq i32 %rem659, 0, !dbg !385
  %idxprom5 = sext i32 %start.tr654 to i64, !dbg !388
  %arrayidx6 = getelementptr inbounds i32, i32* %xn.tr651, i64 %idxprom5, !dbg !388
  %2 = load i32, i32* %arrayidx6, align 4, !dbg !388, !tbaa !96
  br i1 %cmp4, label %land.lhs.true, label %land.lhs.true11, !dbg !389

land.lhs.true:                                    ; preds = %if.then3
  %idxprom7 = sext i32 %end to i64, !dbg !390
  %arrayidx8 = getelementptr inbounds i32, i32* %xn.tr651, i64 %idxprom7, !dbg !390
  %3 = load i32, i32* %arrayidx8, align 4, !dbg !390, !tbaa !96
  %cmp9 = icmp slt i32 %2, %3, !dbg !391
  br i1 %cmp9, label %if.then25, label %land.lhs.true35, !dbg !392

land.lhs.true11:                                  ; preds = %if.then3
  %mul = mul nsw i32 %2, %dim.tr658, !dbg !393
  %add14 = add nsw i32 %rem659, -1, !dbg !394
  %sub = add i32 %add14, %mul, !dbg !395
  %idxprom15 = sext i32 %sub to i64, !dbg !396
  %arrayidx16 = getelementptr inbounds double, double* %x, i64 %idxprom15, !dbg !396
  %4 = load double, double* %arrayidx16, align 8, !dbg !396, !tbaa !260
  %idxprom17 = sext i32 %end to i64, !dbg !397
  %arrayidx18 = getelementptr inbounds i32, i32* %xn.tr651, i64 %idxprom17, !dbg !397
  %5 = load i32, i32* %arrayidx18, align 4, !dbg !397, !tbaa !96
  %mul19 = mul nsw i32 %5, %dim.tr658, !dbg !398
  %sub21 = add i32 %add14, %mul19, !dbg !399
  %idxprom22 = sext i32 %sub21 to i64, !dbg !400
  %arrayidx23 = getelementptr inbounds double, double* %x, i64 %idxprom22, !dbg !400
  %6 = load double, double* %arrayidx23, align 8, !dbg !400, !tbaa !260
  %cmp24 = fcmp olt double %4, %6, !dbg !401
  br i1 %cmp24, label %if.then25, label %land.lhs.true43, !dbg !402

if.then25:                                        ; preds = %land.lhs.true11, %land.lhs.true
  %7 = phi i32 [ %5, %land.lhs.true11 ], [ %3, %land.lhs.true ], !dbg !403
  %n28 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %that.tr657, i64 0, i32 0, !dbg !405
  store i32 %7, i32* %n28, align 8, !dbg !406, !tbaa !378
  %arrayidx30 = getelementptr inbounds i32, i32* %xn.tr651, i64 %idxprom5, !dbg !407
  %8 = load i32, i32* %arrayidx30, align 4, !dbg !407, !tbaa !96
  %9 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !408, !tbaa !75
  %n31 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i64 0, i32 0, !dbg !409
  store i32 %8, i32* %n31, align 8, !dbg !410, !tbaa !378
  %lo = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i64 0, i32 1, !dbg !411
  store %struct.kdnode* null, %struct.kdnode** %lo, align 8, !dbg !412, !tbaa !413
  %10 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !414, !tbaa !75
  %hi = getelementptr inbounds %struct.kdnode, %struct.kdnode* %10, i64 0, i32 2, !dbg !415
  store %struct.kdnode* null, %struct.kdnode** %hi, align 8, !dbg !416, !tbaa !417
  %11 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !418, !tbaa !75
  %incdec.ptr = getelementptr inbounds %struct.kdnode, %struct.kdnode* %11, i64 1, !dbg !418
  store %struct.kdnode* %incdec.ptr, %struct.kdnode** %kdpptr, align 8, !dbg !418, !tbaa !75
  %lo32 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %that.tr657, i64 0, i32 1, !dbg !419
  store %struct.kdnode* %11, %struct.kdnode** %lo32, align 8, !dbg !420, !tbaa !413
  br label %if.end320, !dbg !421

land.lhs.true35:                                  ; preds = %land.lhs.true
  %cmp40 = icmp sgt i32 %2, %3, !dbg !422
  br i1 %cmp40, label %if.then59, label %if.else70, !dbg !424

land.lhs.true43:                                  ; preds = %land.lhs.true11
  %cmp58 = fcmp ogt double %4, %6, !dbg !425
  br i1 %cmp58, label %if.then59, label %if.else70, !dbg !426

if.then59:                                        ; preds = %land.lhs.true43, %land.lhs.true35
  %idxprom63.pre-phi = phi i64 [ %idxprom17, %land.lhs.true43 ], [ %idxprom7, %land.lhs.true35 ], !dbg !427
  %n62 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %that.tr657, i64 0, i32 0, !dbg !429
  store i32 %2, i32* %n62, align 8, !dbg !430, !tbaa !378
  %arrayidx64 = getelementptr inbounds i32, i32* %xn.tr651, i64 %idxprom63.pre-phi, !dbg !427
  %12 = load i32, i32* %arrayidx64, align 4, !dbg !427, !tbaa !96
  %13 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !431, !tbaa !75
  %n65 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %13, i64 0, i32 0, !dbg !432
  store i32 %12, i32* %n65, align 8, !dbg !433, !tbaa !378
  %lo66 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %13, i64 0, i32 1, !dbg !434
  store %struct.kdnode* null, %struct.kdnode** %lo66, align 8, !dbg !435, !tbaa !413
  %14 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !436, !tbaa !75
  %hi67 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %14, i64 0, i32 2, !dbg !437
  store %struct.kdnode* null, %struct.kdnode** %hi67, align 8, !dbg !438, !tbaa !417
  %15 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !439, !tbaa !75
  %incdec.ptr68 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %15, i64 1, !dbg !439
  store %struct.kdnode* %incdec.ptr68, %struct.kdnode** %kdpptr, align 8, !dbg !439, !tbaa !75
  %lo69 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %that.tr657, i64 0, i32 1, !dbg !440
  store %struct.kdnode* %15, %struct.kdnode** %lo69, align 8, !dbg !441, !tbaa !413
  br label %if.end320, !dbg !442

if.else70:                                        ; preds = %land.lhs.true35, %land.lhs.true43
  %idxprom74.pre-phi = phi i64 [ %idxprom7, %land.lhs.true35 ], [ %idxprom17, %land.lhs.true43 ], !dbg !443
  %n73 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %that.tr657, i64 0, i32 0, !dbg !445
  store i32 %2, i32* %n73, align 8, !dbg !446, !tbaa !378
  %arrayidx75 = getelementptr inbounds i32, i32* %xn.tr651, i64 %idxprom74.pre-phi, !dbg !443
  %16 = load i32, i32* %arrayidx75, align 4, !dbg !443, !tbaa !96
  %17 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !447, !tbaa !75
  %n76 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %17, i64 0, i32 0, !dbg !448
  store i32 %16, i32* %n76, align 8, !dbg !449, !tbaa !378
  %lo77 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %17, i64 0, i32 1, !dbg !450
  store %struct.kdnode* null, %struct.kdnode** %lo77, align 8, !dbg !451, !tbaa !413
  %18 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !452, !tbaa !75
  %hi78 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %18, i64 0, i32 2, !dbg !453
  store %struct.kdnode* null, %struct.kdnode** %hi78, align 8, !dbg !454, !tbaa !417
  %19 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !455, !tbaa !75
  %incdec.ptr79 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %19, i64 1, !dbg !455
  store %struct.kdnode* %incdec.ptr79, %struct.kdnode** %kdpptr, align 8, !dbg !455, !tbaa !75
  %hi80 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %that.tr657, i64 0, i32 2, !dbg !456
  store %struct.kdnode* %19, %struct.kdnode** %hi80, align 8, !dbg !457, !tbaa !417
  br label %if.end320

if.else82:                                        ; preds = %if.else
  %add83 = add nsw i32 %start.tr654, %end, !dbg !458
  %div = sdiv i32 %add83, 2, !dbg !460
  call void @llvm.dbg.value(metadata i32 %div, metadata !363, metadata !DIExpression()), !dbg !368
  %cmp84 = icmp eq i32 %rem659, 0, !dbg !461
  %idxprom86 = sext i32 %div to i64, !dbg !463
  %arrayidx87 = getelementptr inbounds i32, i32* %xn.tr651, i64 %idxprom86, !dbg !463
  %20 = load i32, i32* %arrayidx87, align 4, !dbg !463, !tbaa !96
  br i1 %cmp84, label %if.end109, label %if.else88, !dbg !464

if.else88:                                        ; preds = %if.else82
  %mul91 = mul nsw i32 %20, %dim.tr658, !dbg !465
  %add92 = add nsw i32 %rem659, -1, !dbg !467
  %sub93 = add i32 %add92, %mul91, !dbg !468
  %idxprom94 = sext i32 %sub93 to i64, !dbg !469
  %arrayidx95 = getelementptr inbounds double, double* %x, i64 %idxprom94, !dbg !469
  %21 = load double, double* %arrayidx95, align 8, !dbg !469, !tbaa !260
  call void @llvm.dbg.value(metadata double %21, metadata !367, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %div, metadata !362, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !368
  %22 = sext i32 %start.tr654 to i64, !dbg !470
  %smin = call i32 @llvm.smin.i32(i32 %start.tr654, i32 %div), !dbg !470
  br label %for.cond, !dbg !470

for.cond:                                         ; preds = %for.body, %if.else88
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %idxprom86, %if.else88 ], !dbg !472
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !473
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !363, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !362, metadata !DIExpression()), !dbg !368
  %cmp97.not.not = icmp sgt i64 %indvars.iv, %22, !dbg !474
  br i1 %cmp97.not.not, label %for.body, label %if.end109.loopexit, !dbg !476

for.body:                                         ; preds = %for.cond
  %arrayidx99 = getelementptr inbounds i32, i32* %xn.tr651, i64 %indvars.iv.next, !dbg !477
  %23 = load i32, i32* %arrayidx99, align 4, !dbg !477, !tbaa !96
  %mul100 = mul nsw i32 %23, %dim.tr658, !dbg !480
  %sub102 = add i32 %add92, %mul100, !dbg !481
  %idxprom103 = sext i32 %sub102 to i64, !dbg !482
  %arrayidx104 = getelementptr inbounds double, double* %x, i64 %idxprom103, !dbg !482
  %24 = load double, double* %arrayidx104, align 8, !dbg !482, !tbaa !260
  %cmp105 = fcmp olt double %24, %21, !dbg !483
  br i1 %cmp105, label %if.end109.loopexit.split.loop.exit, label %for.cond, !dbg !484, !llvm.loop !485

if.end109.loopexit.split.loop.exit:               ; preds = %for.body
  %25 = trunc i64 %indvars.iv to i32, !dbg !476
  br label %if.end109.loopexit, !dbg !487

if.end109.loopexit:                               ; preds = %for.cond, %if.end109.loopexit.split.loop.exit
  %middle.0.lcssa = phi i32 [ %25, %if.end109.loopexit.split.loop.exit ], [ %smin, %for.cond ], !dbg !472
  %.pre = sext i32 %middle.0.lcssa to i64, !dbg !487
  %arrayidx111.phi.trans.insert = getelementptr inbounds i32, i32* %xn.tr651, i64 %.pre
  %.pre730 = load i32, i32* %arrayidx111.phi.trans.insert, align 4, !dbg !487, !tbaa !96
  br label %if.end109, !dbg !487

if.end109:                                        ; preds = %if.else82, %if.end109.loopexit
  %add134.pre-phi = phi i32 [ %add92, %if.end109.loopexit ], [ -1, %if.else82 ]
  %26 = phi i32 [ %.pre730, %if.end109.loopexit ], [ %20, %if.else82 ], !dbg !487
  %idxprom110.pre-phi = phi i64 [ %.pre, %if.end109.loopexit ], [ %idxprom86, %if.else82 ], !dbg !487
  %middle.1 = phi i32 [ %middle.0.lcssa, %if.end109.loopexit ], [ %div, %if.else82 ], !dbg !488
  %median.0 = phi double [ %21, %if.end109.loopexit ], [ undef, %if.else82 ]
  call void @llvm.dbg.value(metadata double %median.0, metadata !367, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %20, metadata !364, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %middle.1, metadata !363, metadata !DIExpression()), !dbg !368
  %arrayidx111 = getelementptr inbounds i32, i32* %xn.tr651, i64 %idxprom110.pre-phi, !dbg !487
  %n112 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %that.tr657, i64 0, i32 0, !dbg !489
  store i32 %26, i32* %n112, align 8, !dbg !490, !tbaa !378
  %sub113 = add nsw i32 %start.tr654, -1, !dbg !491
  call void @llvm.dbg.value(metadata i32 %middle.1, metadata !366, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %sub113, metadata !365, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %start.tr654, metadata !362, metadata !DIExpression()), !dbg !368
  %cmp115.not621 = icmp sgt i32 %start.tr654, %end, !dbg !492
  br i1 %cmp115.not621, label %for.end240, label %for.body116.preheader, !dbg !495

for.body116.preheader:                            ; preds = %if.end109
  %27 = sext i32 %start.tr654 to i64, !dbg !495
  br label %for.body116, !dbg !495

for.cond156.preheader:                            ; preds = %for.inc152
  call void @llvm.dbg.value(metadata i32 %middle.1, metadata !366, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %sub113, metadata !365, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %start.tr654, metadata !362, metadata !DIExpression()), !dbg !368
  br i1 %cmp115.not621, label %for.end240, label %for.body158.preheader, !dbg !496

for.body158.preheader:                            ; preds = %for.cond156.preheader
  %28 = sext i32 %start.tr654 to i64, !dbg !496
  br label %for.body158, !dbg !496

for.body116:                                      ; preds = %for.body116.preheader, %for.inc152
  %indvars.iv712 = phi i64 [ %27, %for.body116.preheader ], [ %indvars.iv.next713, %for.inc152 ]
  %upper.0625 = phi i32 [ %middle.1, %for.body116.preheader ], [ %upper.1, %for.inc152 ]
  %lower.0623 = phi i32 [ %sub113, %for.body116.preheader ], [ %lower.1, %for.inc152 ]
  call void @llvm.dbg.value(metadata i32 %upper.0625, metadata !366, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %lower.0623, metadata !365, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 %indvars.iv712, metadata !362, metadata !DIExpression()), !dbg !368
  %arrayidx118 = getelementptr inbounds i32, i32* %yn, i64 %indvars.iv712, !dbg !498
  %29 = load i32, i32* %arrayidx118, align 4, !dbg !498, !tbaa !96
  %30 = load i32, i32* %arrayidx111, align 4, !dbg !501, !tbaa !96
  %cmp121.not = icmp eq i32 %29, %30, !dbg !502
  br i1 %cmp121.not, label %for.inc152, label %if.then122, !dbg !503

if.then122:                                       ; preds = %for.body116
  %cmp127 = icmp slt i32 %29, %20
  %or.cond = select i1 %cmp84, i1 %cmp127, i1 false, !dbg !504
  br i1 %or.cond, label %if.then139, label %lor.lhs.false128, !dbg !504

lor.lhs.false128:                                 ; preds = %if.then122
  br i1 %cmp84, label %if.else144, label %land.lhs.true130, !dbg !507

land.lhs.true130:                                 ; preds = %lor.lhs.false128
  %mul133 = mul nsw i32 %29, %dim.tr658, !dbg !508
  %sub135 = add i32 %add134.pre-phi, %mul133, !dbg !509
  %idxprom136 = sext i32 %sub135 to i64, !dbg !510
  %arrayidx137 = getelementptr inbounds double, double* %x, i64 %idxprom136, !dbg !510
  %31 = load double, double* %arrayidx137, align 8, !dbg !510, !tbaa !260
  %cmp138 = fcmp olt double %31, %median.0, !dbg !511
  br i1 %cmp138, label %if.then139, label %if.else144, !dbg !512

if.then139:                                       ; preds = %if.then122, %land.lhs.true130
  %inc = add nsw i32 %lower.0623, 1, !dbg !513
  call void @llvm.dbg.value(metadata i32 %inc, metadata !365, metadata !DIExpression()), !dbg !368
  br label %for.inc152.sink.split, !dbg !515

if.else144:                                       ; preds = %land.lhs.true130, %lor.lhs.false128
  %inc147 = add nsw i32 %upper.0625, 1, !dbg !516
  call void @llvm.dbg.value(metadata i32 %inc147, metadata !366, metadata !DIExpression()), !dbg !368
  br label %for.inc152.sink.split

for.inc152.sink.split:                            ; preds = %if.then139, %if.else144
  %inc147.sink = phi i32 [ %inc147, %if.else144 ], [ %inc, %if.then139 ]
  %lower.1.ph = phi i32 [ %lower.0623, %if.else144 ], [ %inc, %if.then139 ]
  %upper.1.ph = phi i32 [ %inc147, %if.else144 ], [ %upper.0625, %if.then139 ]
  %idxprom148 = sext i32 %inc147.sink to i64, !dbg !518
  %arrayidx149 = getelementptr inbounds i32, i32* %tn.tr653, i64 %idxprom148, !dbg !518
  store i32 %29, i32* %arrayidx149, align 4, !dbg !518, !tbaa !96
  br label %for.inc152, !dbg !519

for.inc152:                                       ; preds = %for.inc152.sink.split, %for.body116
  %lower.1 = phi i32 [ %lower.0623, %for.body116 ], [ %lower.1.ph, %for.inc152.sink.split ], !dbg !472
  %upper.1 = phi i32 [ %upper.0625, %for.body116 ], [ %upper.1.ph, %for.inc152.sink.split ], !dbg !472
  call void @llvm.dbg.value(metadata i32 %upper.1, metadata !366, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %lower.1, metadata !365, metadata !DIExpression()), !dbg !368
  %indvars.iv.next713 = add nsw i64 %indvars.iv712, 1, !dbg !519
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next713, metadata !362, metadata !DIExpression()), !dbg !368
  %lftr.wideiv = trunc i64 %indvars.iv.next713 to i32, !dbg !492
  %exitcond.not = icmp eq i32 %0, %lftr.wideiv, !dbg !492
  br i1 %exitcond.not, label %for.cond156.preheader, label %for.body116, !dbg !495, !llvm.loop !520

for.cond199.preheader:                            ; preds = %for.inc195
  call void @llvm.dbg.value(metadata i32 %middle.1, metadata !366, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %sub113, metadata !365, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %start.tr654, metadata !362, metadata !DIExpression()), !dbg !368
  br i1 %cmp115.not621, label %for.end240, label %for.body201.preheader, !dbg !522

for.body201.preheader:                            ; preds = %for.cond199.preheader
  %32 = sext i32 %start.tr654 to i64, !dbg !522
  br label %for.body201, !dbg !522

for.body158:                                      ; preds = %for.body158.preheader, %for.inc195
  %indvars.iv715 = phi i64 [ %28, %for.body158.preheader ], [ %indvars.iv.next716, %for.inc195 ]
  %upper.2631 = phi i32 [ %middle.1, %for.body158.preheader ], [ %upper.3, %for.inc195 ]
  %lower.2629 = phi i32 [ %sub113, %for.body158.preheader ], [ %lower.3, %for.inc195 ]
  call void @llvm.dbg.value(metadata i32 %upper.2631, metadata !366, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %lower.2629, metadata !365, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 %indvars.iv715, metadata !362, metadata !DIExpression()), !dbg !368
  %arrayidx160 = getelementptr inbounds i32, i32* %zn, i64 %indvars.iv715, !dbg !525
  %33 = load i32, i32* %arrayidx160, align 4, !dbg !525, !tbaa !96
  %34 = load i32, i32* %arrayidx111, align 4, !dbg !529, !tbaa !96
  %cmp163.not = icmp eq i32 %33, %34, !dbg !530
  br i1 %cmp163.not, label %for.inc195, label %if.then164, !dbg !531

if.then164:                                       ; preds = %for.body158
  %cmp169 = icmp slt i32 %33, %20
  %or.cond590 = select i1 %cmp84, i1 %cmp169, i1 false, !dbg !532
  br i1 %or.cond590, label %if.then181, label %lor.lhs.false170, !dbg !532

lor.lhs.false170:                                 ; preds = %if.then164
  br i1 %cmp84, label %if.else187, label %land.lhs.true172, !dbg !535

land.lhs.true172:                                 ; preds = %lor.lhs.false170
  %mul175 = mul nsw i32 %33, %dim.tr658, !dbg !536
  %sub177 = add i32 %add134.pre-phi, %mul175, !dbg !537
  %idxprom178 = sext i32 %sub177 to i64, !dbg !538
  %arrayidx179 = getelementptr inbounds double, double* %x, i64 %idxprom178, !dbg !538
  %35 = load double, double* %arrayidx179, align 8, !dbg !538, !tbaa !260
  %cmp180 = fcmp olt double %35, %median.0, !dbg !539
  br i1 %cmp180, label %if.then181, label %if.else187, !dbg !540

if.then181:                                       ; preds = %if.then164, %land.lhs.true172
  %inc184 = add nsw i32 %lower.2629, 1, !dbg !541
  call void @llvm.dbg.value(metadata i32 %inc184, metadata !365, metadata !DIExpression()), !dbg !368
  br label %for.inc195.sink.split, !dbg !543

if.else187:                                       ; preds = %land.lhs.true172, %lor.lhs.false170
  %inc190 = add nsw i32 %upper.2631, 1, !dbg !544
  call void @llvm.dbg.value(metadata i32 %inc190, metadata !366, metadata !DIExpression()), !dbg !368
  br label %for.inc195.sink.split

for.inc195.sink.split:                            ; preds = %if.then181, %if.else187
  %inc190.sink = phi i32 [ %inc190, %if.else187 ], [ %inc184, %if.then181 ]
  %lower.3.ph = phi i32 [ %lower.2629, %if.else187 ], [ %inc184, %if.then181 ]
  %upper.3.ph = phi i32 [ %inc190, %if.else187 ], [ %upper.2631, %if.then181 ]
  %idxprom191 = sext i32 %inc190.sink to i64, !dbg !546
  %arrayidx192 = getelementptr inbounds i32, i32* %yn, i64 %idxprom191, !dbg !546
  store i32 %33, i32* %arrayidx192, align 4, !dbg !546, !tbaa !96
  br label %for.inc195, !dbg !547

for.inc195:                                       ; preds = %for.inc195.sink.split, %for.body158
  %lower.3 = phi i32 [ %lower.2629, %for.body158 ], [ %lower.3.ph, %for.inc195.sink.split ], !dbg !472
  %upper.3 = phi i32 [ %upper.2631, %for.body158 ], [ %upper.3.ph, %for.inc195.sink.split ], !dbg !472
  call void @llvm.dbg.value(metadata i32 %upper.3, metadata !366, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %lower.3, metadata !365, metadata !DIExpression()), !dbg !368
  %indvars.iv.next716 = add nsw i64 %indvars.iv715, 1, !dbg !547
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next716, metadata !362, metadata !DIExpression()), !dbg !368
  %lftr.wideiv718 = trunc i64 %indvars.iv.next716 to i32, !dbg !548
  %exitcond719.not = icmp eq i32 %0, %lftr.wideiv718, !dbg !548
  br i1 %exitcond719.not, label %for.cond199.preheader, label %for.body158, !dbg !496, !llvm.loop !549

for.body201:                                      ; preds = %for.body201.preheader, %for.inc238
  %indvars.iv720 = phi i64 [ %32, %for.body201.preheader ], [ %indvars.iv.next721, %for.inc238 ]
  %upper.4637 = phi i32 [ %middle.1, %for.body201.preheader ], [ %upper.5, %for.inc238 ]
  %lower.4635 = phi i32 [ %sub113, %for.body201.preheader ], [ %lower.5, %for.inc238 ]
  call void @llvm.dbg.value(metadata i32 %upper.4637, metadata !366, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %lower.4635, metadata !365, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 %indvars.iv720, metadata !362, metadata !DIExpression()), !dbg !368
  %arrayidx203 = getelementptr inbounds i32, i32* %wn.tr.ph670, i64 %indvars.iv720, !dbg !551
  %36 = load i32, i32* %arrayidx203, align 4, !dbg !551, !tbaa !96
  %37 = load i32, i32* %arrayidx111, align 4, !dbg !555, !tbaa !96
  %cmp206.not = icmp eq i32 %36, %37, !dbg !556
  br i1 %cmp206.not, label %for.inc238, label %if.then207, !dbg !557

if.then207:                                       ; preds = %for.body201
  %cmp212 = icmp slt i32 %36, %20
  %or.cond591 = select i1 %cmp84, i1 %cmp212, i1 false, !dbg !558
  br i1 %or.cond591, label %if.then224, label %lor.lhs.false213, !dbg !558

lor.lhs.false213:                                 ; preds = %if.then207
  br i1 %cmp84, label %if.else230, label %land.lhs.true215, !dbg !561

land.lhs.true215:                                 ; preds = %lor.lhs.false213
  %mul218 = mul nsw i32 %36, %dim.tr658, !dbg !562
  %sub220 = add i32 %add134.pre-phi, %mul218, !dbg !563
  %idxprom221 = sext i32 %sub220 to i64, !dbg !564
  %arrayidx222 = getelementptr inbounds double, double* %x, i64 %idxprom221, !dbg !564
  %38 = load double, double* %arrayidx222, align 8, !dbg !564, !tbaa !260
  %cmp223 = fcmp olt double %38, %median.0, !dbg !565
  br i1 %cmp223, label %if.then224, label %if.else230, !dbg !566

if.then224:                                       ; preds = %if.then207, %land.lhs.true215
  %inc227 = add nsw i32 %lower.4635, 1, !dbg !567
  call void @llvm.dbg.value(metadata i32 %inc227, metadata !365, metadata !DIExpression()), !dbg !368
  br label %for.inc238.sink.split, !dbg !569

if.else230:                                       ; preds = %land.lhs.true215, %lor.lhs.false213
  %inc233 = add nsw i32 %upper.4637, 1, !dbg !570
  call void @llvm.dbg.value(metadata i32 %inc233, metadata !366, metadata !DIExpression()), !dbg !368
  br label %for.inc238.sink.split

for.inc238.sink.split:                            ; preds = %if.then224, %if.else230
  %inc233.sink = phi i32 [ %inc233, %if.else230 ], [ %inc227, %if.then224 ]
  %lower.5.ph = phi i32 [ %lower.4635, %if.else230 ], [ %inc227, %if.then224 ]
  %upper.5.ph = phi i32 [ %inc233, %if.else230 ], [ %upper.4637, %if.then224 ]
  %idxprom234 = sext i32 %inc233.sink to i64, !dbg !572
  %arrayidx235 = getelementptr inbounds i32, i32* %zn, i64 %idxprom234, !dbg !572
  store i32 %36, i32* %arrayidx235, align 4, !dbg !572, !tbaa !96
  br label %for.inc238, !dbg !573

for.inc238:                                       ; preds = %for.inc238.sink.split, %for.body201
  %lower.5 = phi i32 [ %lower.4635, %for.body201 ], [ %lower.5.ph, %for.inc238.sink.split ], !dbg !574
  %upper.5 = phi i32 [ %upper.4637, %for.body201 ], [ %upper.5.ph, %for.inc238.sink.split ], !dbg !574
  call void @llvm.dbg.value(metadata i32 %upper.5, metadata !366, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %lower.5, metadata !365, metadata !DIExpression()), !dbg !368
  %indvars.iv.next721 = add nsw i64 %indvars.iv720, 1, !dbg !573
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next721, metadata !362, metadata !DIExpression()), !dbg !368
  %lftr.wideiv723 = trunc i64 %indvars.iv.next721 to i32, !dbg !575
  %exitcond724.not = icmp eq i32 %0, %lftr.wideiv723, !dbg !575
  br i1 %exitcond724.not, label %for.end240, label %for.body201, !dbg !522, !llvm.loop !576

for.end240:                                       ; preds = %for.inc238, %if.end109, %for.cond156.preheader, %for.cond199.preheader
  %lower.4.lcssa = phi i32 [ %sub113, %for.cond199.preheader ], [ %sub113, %for.cond156.preheader ], [ %sub113, %if.end109 ], [ %lower.5, %for.inc238 ], !dbg !574
  %upper.4.lcssa = phi i32 [ %middle.1, %for.cond199.preheader ], [ %middle.1, %for.cond156.preheader ], [ %middle.1, %if.end109 ], [ %upper.5, %for.inc238 ], !dbg !578
  %cmp241 = icmp eq i32 %dim.tr658, 4, !dbg !579
  br i1 %cmp241, label %for.cond244.preheader, label %if.end286, !dbg !581

for.cond244.preheader:                            ; preds = %for.end240
  call void @llvm.dbg.value(metadata i32 %middle.1, metadata !366, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %sub113, metadata !365, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %start.tr654, metadata !362, metadata !DIExpression()), !dbg !368
  br i1 %cmp115.not621, label %if.end320, label %for.body246.preheader, !dbg !582

for.body246.preheader:                            ; preds = %for.cond244.preheader
  %39 = sext i32 %start.tr654 to i64, !dbg !582
  br label %for.body246, !dbg !582

for.body246:                                      ; preds = %for.body246.preheader, %for.inc283
  %indvars.iv725 = phi i64 [ %39, %for.body246.preheader ], [ %indvars.iv.next726, %for.inc283 ]
  %upper.6644 = phi i32 [ %middle.1, %for.body246.preheader ], [ %upper.7, %for.inc283 ]
  %lower.6642 = phi i32 [ %sub113, %for.body246.preheader ], [ %lower.7, %for.inc283 ]
  call void @llvm.dbg.value(metadata i32 %upper.6644, metadata !366, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %lower.6642, metadata !365, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 %indvars.iv725, metadata !362, metadata !DIExpression()), !dbg !368
  %arrayidx248 = getelementptr inbounds i32, i32* %on.tr652, i64 %indvars.iv725, !dbg !585
  %40 = load i32, i32* %arrayidx248, align 4, !dbg !585, !tbaa !96
  %41 = load i32, i32* %arrayidx111, align 4, !dbg !589, !tbaa !96
  %cmp251.not = icmp eq i32 %40, %41, !dbg !590
  br i1 %cmp251.not, label %for.inc283, label %if.then252, !dbg !591

if.then252:                                       ; preds = %for.body246
  %cmp257 = icmp slt i32 %40, %20
  %or.cond592 = select i1 %cmp84, i1 %cmp257, i1 false, !dbg !592
  br i1 %or.cond592, label %if.then269, label %lor.lhs.false258, !dbg !592

lor.lhs.false258:                                 ; preds = %if.then252
  br i1 %cmp84, label %if.else275, label %land.lhs.true260, !dbg !595

land.lhs.true260:                                 ; preds = %lor.lhs.false258
  %mul263 = shl nsw i32 %40, 2, !dbg !596
  %sub265 = add i32 %add134.pre-phi, %mul263, !dbg !597
  %idxprom266 = sext i32 %sub265 to i64, !dbg !598
  %arrayidx267 = getelementptr inbounds double, double* %x, i64 %idxprom266, !dbg !598
  %42 = load double, double* %arrayidx267, align 8, !dbg !598, !tbaa !260
  %cmp268 = fcmp olt double %42, %median.0, !dbg !599
  br i1 %cmp268, label %if.then269, label %if.else275, !dbg !600

if.then269:                                       ; preds = %if.then252, %land.lhs.true260
  %inc272 = add nsw i32 %lower.6642, 1, !dbg !601
  call void @llvm.dbg.value(metadata i32 %inc272, metadata !365, metadata !DIExpression()), !dbg !368
  br label %for.inc283.sink.split, !dbg !603

if.else275:                                       ; preds = %land.lhs.true260, %lor.lhs.false258
  %inc278 = add nsw i32 %upper.6644, 1, !dbg !604
  call void @llvm.dbg.value(metadata i32 %inc278, metadata !366, metadata !DIExpression()), !dbg !368
  br label %for.inc283.sink.split

for.inc283.sink.split:                            ; preds = %if.then269, %if.else275
  %inc278.sink = phi i32 [ %inc278, %if.else275 ], [ %inc272, %if.then269 ]
  %lower.7.ph = phi i32 [ %lower.6642, %if.else275 ], [ %inc272, %if.then269 ]
  %upper.7.ph = phi i32 [ %inc278, %if.else275 ], [ %upper.6644, %if.then269 ]
  %idxprom279 = sext i32 %inc278.sink to i64, !dbg !606
  %arrayidx280 = getelementptr inbounds i32, i32* %wn.tr.ph670, i64 %idxprom279, !dbg !606
  store i32 %40, i32* %arrayidx280, align 4, !dbg !606, !tbaa !96
  br label %for.inc283, !dbg !607

for.inc283:                                       ; preds = %for.inc283.sink.split, %for.body246
  %lower.7 = phi i32 [ %lower.6642, %for.body246 ], [ %lower.7.ph, %for.inc283.sink.split ], !dbg !608
  %upper.7 = phi i32 [ %upper.6644, %for.body246 ], [ %upper.7.ph, %for.inc283.sink.split ], !dbg !608
  call void @llvm.dbg.value(metadata i32 %upper.7, metadata !366, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %lower.7, metadata !365, metadata !DIExpression()), !dbg !368
  %indvars.iv.next726 = add nsw i64 %indvars.iv725, 1, !dbg !607
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next726, metadata !362, metadata !DIExpression()), !dbg !368
  %lftr.wideiv728 = trunc i64 %indvars.iv.next726 to i32, !dbg !609
  %exitcond729.not = icmp eq i32 %0, %lftr.wideiv728, !dbg !609
  br i1 %exitcond729.not, label %if.end286, label %for.body246, !dbg !582, !llvm.loop !610

if.end286:                                        ; preds = %for.inc283, %for.end240
  %lower.8 = phi i32 [ %lower.4.lcssa, %for.end240 ], [ %lower.7, %for.inc283 ], !dbg !472
  %upper.8 = phi i32 [ %upper.4.lcssa, %for.end240 ], [ %upper.7, %for.inc283 ], !dbg !472
  call void @llvm.dbg.value(metadata i32 %upper.8, metadata !366, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %lower.8, metadata !365, metadata !DIExpression()), !dbg !368
  %cmp287.not = icmp slt i32 %lower.8, %start.tr654, !dbg !612
  br i1 %cmp287.not, label %if.end301, label %if.then288, !dbg !614

if.then288:                                       ; preds = %if.end286
  %43 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !615, !tbaa !75
  %lo289 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %43, i64 0, i32 1, !dbg !617
  store %struct.kdnode* null, %struct.kdnode** %lo289, align 8, !dbg !618, !tbaa !413
  %44 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !619, !tbaa !75
  %hi290 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %44, i64 0, i32 2, !dbg !620
  store %struct.kdnode* null, %struct.kdnode** %hi290, align 8, !dbg !621, !tbaa !417
  %45 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !622, !tbaa !75
  %incdec.ptr291 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %45, i64 1, !dbg !622
  store %struct.kdnode* %incdec.ptr291, %struct.kdnode** %kdpptr, align 8, !dbg !622, !tbaa !75
  %lo292 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %that.tr657, i64 0, i32 1, !dbg !623
  store %struct.kdnode* %45, %struct.kdnode** %lo292, align 8, !dbg !624, !tbaa !413
  %add296 = add nsw i32 %rem659, 1, !dbg !625
  br i1 %cmp241, label %if.then294, label %if.else297, !dbg !627

if.then294:                                       ; preds = %if.then288
  tail call fastcc void @buildkdtree(i32* noundef %tn.tr653, i32* noundef %yn, i32* noundef %zn, i32* noundef %wn.tr.ph670, i32* noundef nonnull %xn.tr651, i32* noundef %on.tr652, i32 noundef %start.tr654, i32 noundef %lower.8, %struct.kdnode** noundef nonnull %kdpptr, %struct.kdnode* noundef %45, double* noundef %x, i32 noundef %add296, i32 noundef 4), !dbg !628
  br label %if.end301, !dbg !630

if.else297:                                       ; preds = %if.then288
  tail call fastcc void @buildkdtree(i32* noundef %tn.tr653, i32* noundef %yn, i32* noundef %zn, i32* noundef nonnull %xn.tr651, i32* noundef %on.tr652, i32* noundef %wn.tr.ph670, i32 noundef %start.tr654, i32 noundef %lower.8, %struct.kdnode** noundef nonnull %kdpptr, %struct.kdnode* noundef %45, double* noundef %x, i32 noundef %add296, i32 noundef %dim.tr658), !dbg !631
  br label %if.end301

if.end301:                                        ; preds = %if.then294, %if.else297, %if.end286
  %cmp302 = icmp sgt i32 %upper.8, %middle.1, !dbg !633
  br i1 %cmp302, label %if.then303, label %if.end320, !dbg !635

if.then303:                                       ; preds = %if.end301
  %46 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !636, !tbaa !75
  %lo304 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %46, i64 0, i32 1, !dbg !638
  store %struct.kdnode* null, %struct.kdnode** %lo304, align 8, !dbg !639, !tbaa !413
  %47 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !640, !tbaa !75
  %hi305 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %47, i64 0, i32 2, !dbg !641
  store %struct.kdnode* null, %struct.kdnode** %hi305, align 8, !dbg !642, !tbaa !417
  %48 = load %struct.kdnode*, %struct.kdnode** %kdpptr, align 8, !dbg !643, !tbaa !75
  %incdec.ptr306 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %48, i64 1, !dbg !643
  store %struct.kdnode* %incdec.ptr306, %struct.kdnode** %kdpptr, align 8, !dbg !643, !tbaa !75
  %hi307 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %that.tr657, i64 0, i32 2, !dbg !644
  store %struct.kdnode* %48, %struct.kdnode** %hi307, align 8, !dbg !645, !tbaa !417
  %add310 = add nsw i32 %middle.1, 1, !dbg !646
  %add312 = add nsw i32 %rem659, 1, !dbg !646
  call void @llvm.dbg.value(metadata i32* %tn.tr653, metadata !349, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32* %tn.tr653, metadata !349, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32* %yn, metadata !350, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32* %yn, metadata !350, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32* %zn, metadata !351, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32* %zn, metadata !351, metadata !DIExpression()), !dbg !368
  br i1 %cmp241, label %if.then309, label %if.else313, !dbg !648

if.then309:                                       ; preds = %if.then303
  call void @llvm.dbg.value(metadata i32* %wn.tr.ph670, metadata !352, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32* %xn.tr651, metadata !353, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32* %on.tr652, metadata !354, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %add310, metadata !355, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %end, metadata !356, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata %struct.kdnode** %kdpptr, metadata !357, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata %struct.kdnode* %48, metadata !358, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double* %x, metadata !359, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %add312, metadata !360, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 4, metadata !361, metadata !DIExpression()), !dbg !368
  %rem = srem i32 %add312, 5, !dbg !373
  call void @llvm.dbg.value(metadata i32 %rem, metadata !360, metadata !DIExpression()), !dbg !368
  %cmp = icmp eq i32 %add310, %end, !dbg !369
  br i1 %cmp, label %if.then, label %if.else, !dbg !371

if.else313:                                       ; preds = %if.then303
  call void @llvm.dbg.value(metadata i32* %xn.tr651, metadata !352, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32* %on.tr652, metadata !353, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32* %wn.tr.ph670, metadata !354, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %add310, metadata !355, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %end, metadata !356, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata %struct.kdnode** %kdpptr, metadata !357, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata %struct.kdnode* %48, metadata !358, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double* %x, metadata !359, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %add312, metadata !360, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 %dim.tr658, metadata !361, metadata !DIExpression()), !dbg !368
  %add648 = add nsw i32 %dim.tr658, 1, !dbg !372
  %rem649 = srem i32 %add312, %add648, !dbg !373
  call void @llvm.dbg.value(metadata i32 %rem649, metadata !360, metadata !DIExpression()), !dbg !368
  %cmp650 = icmp eq i32 %add310, %end, !dbg !369
  br i1 %cmp650, label %if.then, label %if.else.lr.ph, !dbg !371

if.end320:                                        ; preds = %for.cond244.preheader, %if.end301, %if.then59, %if.else70, %if.then25, %if.then
  ret void, !dbg !649
}

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @searchkdtree(%struct.kdnode* nocapture noundef readonly %that, double* noundef %x, i32 noundef %p, i32 noundef %q, i32* noundef %loindexp, i32* noundef %upindexp, i32* noundef %lopairlist, i32* noundef %uppairlist, double noundef %cut, double noundef %cut2, i32 noundef %dim, i32* noundef %frozen) unnamed_addr #7 !dbg !650 {
entry:
  %mul99 = mul nsw i32 %dim, %q, !dbg !671
  %add = add nsw i32 %dim, 1
  %idxprom20 = sext i32 %q to i64
  %arrayidx21 = getelementptr inbounds i32, i32* %frozen, i64 %idxprom20
  %idxprom30 = sext i32 %mul99 to i64
  %arrayidx31 = getelementptr inbounds double, double* %x, i64 %idxprom30
  %add39 = add nsw i32 %mul99, 1
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds double, double* %x, i64 %idxprom40
  %add49 = add nsw i32 %mul99, 2
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds double, double* %x, i64 %idxprom50
  %cmp61 = icmp eq i32 %dim, 4
  %add64 = add nsw i32 %mul99, 3
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds double, double* %x, i64 %idxprom65
  br label %tailrecurse, !dbg !673

tailrecurse:                                      ; preds = %if.then112, %entry
  %that.tr = phi %struct.kdnode* [ %that, %entry ], [ %20, %if.then112 ]
  %p.tr = phi i32 [ %p, %entry ], [ %add114, %if.then112 ]
  call void @llvm.dbg.value(metadata %struct.kdnode* %that.tr, metadata !654, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata double* %x, metadata !655, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i32 %p.tr, metadata !656, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i32 %q, metadata !657, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i32* %loindexp, metadata !658, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i32* %upindexp, metadata !659, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i32* %lopairlist, metadata !660, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i32* %uppairlist, metadata !661, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata double %cut, metadata !662, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata double %cut2, metadata !663, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i32 %dim, metadata !664, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i32* %frozen, metadata !665, metadata !DIExpression()), !dbg !675
  %rem = srem i32 %p.tr, %add, !dbg !676
  call void @llvm.dbg.value(metadata i32 %rem, metadata !656, metadata !DIExpression()), !dbg !675
  %cmp = icmp eq i32 %rem, 0, !dbg !677
  %hi = getelementptr inbounds %struct.kdnode, %struct.kdnode* %that.tr, i64 0, i32 2, !dbg !679
  %0 = load %struct.kdnode*, %struct.kdnode** %hi, align 8, !dbg !679, !tbaa !417
  %cmp1.not = icmp eq %struct.kdnode* %0, null, !dbg !679
  br i1 %cmp, label %land.lhs.true, label %land.lhs.true3, !dbg !680

land.lhs.true:                                    ; preds = %tailrecurse
  br i1 %cmp1.not, label %if.end, label %if.then, !dbg !681

land.lhs.true3:                                   ; preds = %tailrecurse
  br i1 %cmp1.not, label %if.end, label %land.lhs.true6, !dbg !682

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %add7 = add nsw i32 %rem, -1, !dbg !683
  %sub = add i32 %add7, %mul99, !dbg !684
  %idxprom = sext i32 %sub to i64, !dbg !685
  %arrayidx = getelementptr inbounds double, double* %x, i64 %idxprom, !dbg !685
  %1 = load double, double* %arrayidx, align 8, !dbg !685, !tbaa !260
  %add8 = fadd double %1, %cut, !dbg !686
  %n = getelementptr inbounds %struct.kdnode, %struct.kdnode* %that.tr, i64 0, i32 0, !dbg !687
  %2 = load i32, i32* %n, align 8, !dbg !687, !tbaa !378
  %mul9 = mul nsw i32 %2, %dim, !dbg !688
  %sub11 = add i32 %add7, %mul9, !dbg !689
  %idxprom12 = sext i32 %sub11 to i64, !dbg !690
  %arrayidx13 = getelementptr inbounds double, double* %x, i64 %idxprom12, !dbg !690
  %3 = load double, double* %arrayidx13, align 8, !dbg !690, !tbaa !260
  %cmp14 = fcmp ult double %add8, %3, !dbg !691
  br i1 %cmp14, label %if.end, label %if.then, !dbg !692

if.then:                                          ; preds = %land.lhs.true6, %land.lhs.true
  %add16 = add nsw i32 %rem, 1, !dbg !693
  tail call fastcc void @searchkdtree(%struct.kdnode* noundef nonnull %0, double* noundef %x, i32 noundef %add16, i32 noundef %q, i32* noundef %loindexp, i32* noundef %upindexp, i32* noundef %lopairlist, i32* noundef %uppairlist, double noundef %cut, double noundef %cut2, i32 noundef %dim, i32* noundef %frozen), !dbg !695
  br label %if.end, !dbg !696

if.end:                                           ; preds = %land.lhs.true, %if.then, %land.lhs.true6, %land.lhs.true3
  %n17 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %that.tr, i64 0, i32 0, !dbg !697
  %4 = load i32, i32* %n17, align 8, !dbg !697, !tbaa !378
  %cmp18.not = icmp eq i32 %4, %q, !dbg !699
  br i1 %cmp18.not, label %if.end89, label %land.lhs.true19, !dbg !700

land.lhs.true19:                                  ; preds = %if.end
  %5 = load i32, i32* %arrayidx21, align 4, !dbg !701, !tbaa !96
  %tobool.not = icmp eq i32 %5, 0, !dbg !701
  br i1 %tobool.not, label %if.then27, label %lor.lhs.false22, !dbg !702

lor.lhs.false22:                                  ; preds = %land.lhs.true19
  %idxprom24 = sext i32 %4 to i64, !dbg !703
  %arrayidx25 = getelementptr inbounds i32, i32* %frozen, i64 %idxprom24, !dbg !703
  %6 = load i32, i32* %arrayidx25, align 4, !dbg !703, !tbaa !96
  %tobool26.not = icmp eq i32 %6, 0, !dbg !703
  br i1 %tobool26.not, label %if.then27, label %if.end89, !dbg !704

if.then27:                                        ; preds = %lor.lhs.false22, %land.lhs.true19
  %7 = load double, double* %arrayidx31, align 8, !dbg !705, !tbaa !260
  %mul33 = mul nsw i32 %4, %dim, !dbg !707
  %idxprom35 = sext i32 %mul33 to i64, !dbg !708
  %arrayidx36 = getelementptr inbounds double, double* %x, i64 %idxprom35, !dbg !708
  %8 = load double, double* %arrayidx36, align 8, !dbg !708, !tbaa !260
  %sub37 = fsub double %7, %8, !dbg !709
  call void @llvm.dbg.value(metadata double %sub37, metadata !666, metadata !DIExpression()), !dbg !675
  %9 = load double, double* %arrayidx41, align 8, !dbg !710, !tbaa !260
  %add44 = add nsw i32 %mul33, 1, !dbg !711
  %idxprom45 = sext i32 %add44 to i64, !dbg !712
  %arrayidx46 = getelementptr inbounds double, double* %x, i64 %idxprom45, !dbg !712
  %10 = load double, double* %arrayidx46, align 8, !dbg !712, !tbaa !260
  %sub47 = fsub double %9, %10, !dbg !713
  call void @llvm.dbg.value(metadata double %sub47, metadata !667, metadata !DIExpression()), !dbg !675
  %11 = load double, double* %arrayidx51, align 8, !dbg !714, !tbaa !260
  %add54 = add nsw i32 %mul33, 2, !dbg !715
  %idxprom55 = sext i32 %add54 to i64, !dbg !716
  %arrayidx56 = getelementptr inbounds double, double* %x, i64 %idxprom55, !dbg !716
  %12 = load double, double* %arrayidx56, align 8, !dbg !716, !tbaa !260
  %sub57 = fsub double %11, %12, !dbg !717
  call void @llvm.dbg.value(metadata double %sub57, metadata !668, metadata !DIExpression()), !dbg !675
  %mul59 = fmul double %sub47, %sub47, !dbg !718
  %13 = tail call double @llvm.fmuladd.f64(double %sub37, double %sub37, double %mul59), !dbg !719
  %14 = tail call double @llvm.fmuladd.f64(double %sub57, double %sub57, double %13), !dbg !720
  call void @llvm.dbg.value(metadata double %14, metadata !670, metadata !DIExpression()), !dbg !675
  br i1 %cmp61, label %if.then62, label %if.end74, !dbg !721

if.then62:                                        ; preds = %if.then27
  %15 = load double, double* %arrayidx66, align 8, !dbg !722, !tbaa !260
  %add69 = add nsw i32 %mul33, 3, !dbg !725
  %idxprom70 = sext i32 %add69 to i64, !dbg !726
  %arrayidx71 = getelementptr inbounds double, double* %x, i64 %idxprom70, !dbg !726
  %16 = load double, double* %arrayidx71, align 8, !dbg !726, !tbaa !260
  %sub72 = fsub double %15, %16, !dbg !727
  call void @llvm.dbg.value(metadata double %sub72, metadata !669, metadata !DIExpression()), !dbg !675
  %17 = tail call double @llvm.fmuladd.f64(double %sub72, double %sub72, double %14), !dbg !728
  call void @llvm.dbg.value(metadata double %17, metadata !670, metadata !DIExpression()), !dbg !675
  br label %if.end74, !dbg !729

if.end74:                                         ; preds = %if.then62, %if.then27
  %r2.0 = phi double [ %17, %if.then62 ], [ %14, %if.then27 ], !dbg !730
  call void @llvm.dbg.value(metadata double %r2.0, metadata !670, metadata !DIExpression()), !dbg !675
  %cmp75 = fcmp olt double %r2.0, %cut2, !dbg !731
  br i1 %cmp75, label %if.then76, label %if.end89, !dbg !733

if.then76:                                        ; preds = %if.end74
  %cmp78 = icmp slt i32 %4, %q, !dbg !734
  %loindexp.upindexp = select i1 %cmp78, i32* %loindexp, i32* %upindexp
  %lopairlist.uppairlist = select i1 %cmp78, i32* %lopairlist, i32* %uppairlist
  %18 = load i32, i32* %loindexp.upindexp, align 4, !dbg !737, !tbaa !96
  %idxprom84 = sext i32 %18 to i64, !dbg !737
  %arrayidx85 = getelementptr inbounds i32, i32* %lopairlist.uppairlist, i64 %idxprom84, !dbg !737
  store i32 %4, i32* %arrayidx85, align 4, !dbg !737, !tbaa !96
  %19 = load i32, i32* %loindexp.upindexp, align 4, !dbg !737, !tbaa !96
  %inc86 = add nsw i32 %19, 1, !dbg !737
  store i32 %inc86, i32* %loindexp.upindexp, align 4, !dbg !737, !tbaa !96
  br label %if.end89, !dbg !738

if.end89:                                         ; preds = %if.then76, %if.end74, %lor.lhs.false22, %if.end
  %lo = getelementptr inbounds %struct.kdnode, %struct.kdnode* %that.tr, i64 0, i32 1, !dbg !739
  %20 = load %struct.kdnode*, %struct.kdnode** %lo, align 8, !dbg !739, !tbaa !413
  %cmp92.not = icmp eq %struct.kdnode* %20, null, !dbg !739
  br i1 %cmp, label %land.lhs.true91, label %land.lhs.true95, !dbg !738

land.lhs.true91:                                  ; preds = %if.end89
  br i1 %cmp92.not, label %if.end115, label %if.then112, !dbg !740

land.lhs.true95:                                  ; preds = %if.end89
  br i1 %cmp92.not, label %if.end115, label %land.lhs.true98, !dbg !741

land.lhs.true98:                                  ; preds = %land.lhs.true95
  %add100 = add nsw i32 %rem, -1, !dbg !742
  %sub101 = add i32 %add100, %mul99, !dbg !743
  %idxprom102 = sext i32 %sub101 to i64, !dbg !744
  %arrayidx103 = getelementptr inbounds double, double* %x, i64 %idxprom102, !dbg !744
  %21 = load double, double* %arrayidx103, align 8, !dbg !744, !tbaa !260
  %sub104 = fsub double %21, %cut, !dbg !745
  %22 = load i32, i32* %n17, align 8, !dbg !746, !tbaa !378
  %mul106 = mul nsw i32 %22, %dim, !dbg !747
  %sub108 = add i32 %add100, %mul106, !dbg !748
  %idxprom109 = sext i32 %sub108 to i64, !dbg !749
  %arrayidx110 = getelementptr inbounds double, double* %x, i64 %idxprom109, !dbg !749
  %23 = load double, double* %arrayidx110, align 8, !dbg !749, !tbaa !260
  %cmp111 = fcmp olt double %sub104, %23, !dbg !750
  br i1 %cmp111, label %if.then112, label %if.end115, !dbg !751

if.then112:                                       ; preds = %land.lhs.true98, %land.lhs.true91
  %add114 = add nsw i32 %rem, 1, !dbg !752
  br label %tailrecurse, !dbg !673

if.end115:                                        ; preds = %land.lhs.true91, %land.lhs.true98, %land.lhs.true95
  ret void, !dbg !753
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal fastcc void @heapsort_pairs(i32* nocapture noundef %a, i32 noundef %n) unnamed_addr #6 !dbg !754 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !758, metadata !DIExpression()), !dbg !762
  call void @llvm.dbg.value(metadata i32 %n, metadata !759, metadata !DIExpression()), !dbg !762
  %div = sdiv i32 %n, 2, !dbg !763
  call void @llvm.dbg.value(metadata i32 %div, metadata !760, metadata !DIExpression()), !dbg !762
  %cmp59 = icmp sgt i32 %n, 1, !dbg !765
  br i1 %cmp59, label %for.body.preheader, label %while.end, !dbg !767

for.body.preheader:                               ; preds = %entry
  %0 = zext i32 %div to i64, !dbg !767
  %1 = sext i32 %div to i64, !dbg !767
  br label %for.body, !dbg !767

while.cond.preheader:                             ; preds = %downheap_pairs.exit
  call void @llvm.dbg.value(metadata i32 %n, metadata !759, metadata !DIExpression()), !dbg !762
  br i1 %cmp59, label %while.body.preheader, label %while.end, !dbg !768

while.body.preheader:                             ; preds = %while.cond.preheader
  %2 = zext i32 %n to i64, !dbg !768
  br label %while.body, !dbg !768

for.body:                                         ; preds = %for.body.preheader, %downheap_pairs.exit
  %indvars.iv = phi i64 [ %0, %for.body.preheader ], [ %indvars.iv.next, %downheap_pairs.exit ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !760, metadata !DIExpression()), !dbg !762
  call void @llvm.dbg.value(metadata i32* %a, metadata !769, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i32 %n, metadata !774, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !775, metadata !DIExpression()), !dbg !778
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !780
  %indvars = trunc i64 %indvars.iv.next to i32, !dbg !780
  %3 = and i64 %indvars.iv.next, 4294967295
  %arrayidx.i = getelementptr inbounds i32, i32* %a, i64 %3, !dbg !781
  %4 = load i32, i32* %arrayidx.i, align 4, !dbg !781, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %4, metadata !777, metadata !DIExpression()), !dbg !778
  %cmp.not44.i = icmp sgt i64 %indvars.iv, %1, !dbg !782
  br i1 %cmp.not44.i, label %downheap_pairs.exit, label %while.body.i.preheader, !dbg !783

while.body.i.preheader:                           ; preds = %for.body
  %5 = trunc i64 %indvars.iv to i32, !dbg !783
  br label %while.body.i, !dbg !783

while.body.i:                                     ; preds = %while.body.i.preheader, %if.end13.i
  %k.addr.045.i = phi i32 [ %j.0.i, %if.end13.i ], [ %5, %while.body.i.preheader ]
  call void @llvm.dbg.value(metadata i32 %k.addr.045.i, metadata !775, metadata !DIExpression()), !dbg !778
  %add.i = shl nsw i32 %k.addr.045.i, 1, !dbg !784
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !776, metadata !DIExpression()), !dbg !778
  %cmp1.i = icmp slt i32 %add.i, %n, !dbg !786
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i, !dbg !788

land.lhs.true.i:                                  ; preds = %while.body.i
  %sub2.i = add nsw i32 %add.i, -1, !dbg !789
  %idxprom3.i = sext i32 %sub2.i to i64, !dbg !790
  %arrayidx4.i = getelementptr inbounds i32, i32* %a, i64 %idxprom3.i, !dbg !790
  %6 = load i32, i32* %arrayidx4.i, align 4, !dbg !790, !tbaa !96
  %idxprom5.i = sext i32 %add.i to i64, !dbg !791
  %arrayidx6.i = getelementptr inbounds i32, i32* %a, i64 %idxprom5.i, !dbg !791
  %7 = load i32, i32* %arrayidx6.i, align 4, !dbg !791, !tbaa !96
  %cmp7.i = icmp slt i32 %6, %7, !dbg !792
  %inc.i = zext i1 %cmp7.i to i32, !dbg !793
  %spec.select.i = or i32 %add.i, %inc.i, !dbg !793
  br label %if.end.i, !dbg !793

if.end.i:                                         ; preds = %land.lhs.true.i, %while.body.i
  %j.0.i = phi i32 [ %add.i, %while.body.i ], [ %spec.select.i, %land.lhs.true.i ], !dbg !794
  call void @llvm.dbg.value(metadata i32 %j.0.i, metadata !776, metadata !DIExpression()), !dbg !778
  %sub8.i = add nsw i32 %j.0.i, -1, !dbg !795
  %idxprom9.i = sext i32 %sub8.i to i64, !dbg !797
  %arrayidx10.i = getelementptr inbounds i32, i32* %a, i64 %idxprom9.i, !dbg !797
  %8 = load i32, i32* %arrayidx10.i, align 4, !dbg !797, !tbaa !96
  %cmp11.not.i = icmp slt i32 %4, %8, !dbg !798
  %sub17.i = add nsw i32 %k.addr.045.i, -1, !dbg !778
  br i1 %cmp11.not.i, label %if.end13.i, label %downheap_pairs.exit, !dbg !799

if.end13.i:                                       ; preds = %if.end.i
  %idxprom18.i = sext i32 %sub17.i to i64, !dbg !800
  %arrayidx19.i = getelementptr inbounds i32, i32* %a, i64 %idxprom18.i, !dbg !800
  store i32 %8, i32* %arrayidx19.i, align 4, !dbg !801, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %j.0.i, metadata !775, metadata !DIExpression()), !dbg !778
  %cmp.not.i = icmp sgt i32 %j.0.i, %div, !dbg !782
  br i1 %cmp.not.i, label %downheap_pairs.exit, label %while.body.i, !dbg !783, !llvm.loop !802

downheap_pairs.exit:                              ; preds = %if.end13.i, %if.end.i, %for.body
  %sub20.pre-phi.i = phi i32 [ %indvars, %for.body ], [ %sub8.i, %if.end13.i ], [ %sub17.i, %if.end.i ], !dbg !804
  %idxprom21.i = sext i32 %sub20.pre-phi.i to i64, !dbg !805
  %arrayidx22.i = getelementptr inbounds i32, i32* %a, i64 %idxprom21.i, !dbg !805
  store i32 %4, i32* %arrayidx22.i, align 4, !dbg !806, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %indvars, metadata !760, metadata !DIExpression()), !dbg !762
  %cmp = icmp sgt i64 %indvars.iv, 1, !dbg !765
  br i1 %cmp, label %for.body, label %while.cond.preheader, !dbg !767, !llvm.loop !807

while.body:                                       ; preds = %while.body.preheader, %downheap_pairs.exit53
  %indvars.iv68 = phi i64 [ %2, %while.body.preheader ], [ %indvars.iv.next69, %downheap_pairs.exit53 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv68, metadata !759, metadata !DIExpression()), !dbg !762
  %9 = load i32, i32* %a, align 4, !dbg !809, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %9, metadata !761, metadata !DIExpression()), !dbg !762
  %indvars.iv.next69 = add nsw i64 %indvars.iv68, -1, !dbg !811
  %indvars70 = trunc i64 %indvars.iv.next69 to i32, !dbg !811
  %10 = and i64 %indvars.iv.next69, 4294967295
  %arrayidx2 = getelementptr inbounds i32, i32* %a, i64 %10, !dbg !812
  %11 = load i32, i32* %arrayidx2, align 4, !dbg !812, !tbaa !96
  store i32 %11, i32* %a, align 4, !dbg !813, !tbaa !96
  store i32 %9, i32* %arrayidx2, align 4, !dbg !814, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %indvars70, metadata !759, metadata !DIExpression()), !dbg !762
  call void @llvm.dbg.value(metadata i32* %a, metadata !769, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata i32 %indvars70, metadata !774, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata i32 1, metadata !775, metadata !DIExpression()), !dbg !815
  %12 = load i32, i32* %a, align 4, !dbg !817, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %12, metadata !777, metadata !DIExpression()), !dbg !815
  %div.i2254 = lshr i32 %indvars70, 1
  %cmp.not44.i23 = icmp ult i32 %indvars70, 2, !dbg !818
  br i1 %cmp.not44.i23, label %downheap_pairs.exit53, label %while.body.i27, !dbg !819

while.body.i27:                                   ; preds = %while.body, %if.end13.i49
  %k.addr.045.i24 = phi i32 [ %j.0.i37, %if.end13.i49 ], [ 1, %while.body ]
  call void @llvm.dbg.value(metadata i32 %k.addr.045.i24, metadata !775, metadata !DIExpression()), !dbg !815
  %add.i25 = shl nsw i32 %k.addr.045.i24, 1, !dbg !820
  call void @llvm.dbg.value(metadata i32 %add.i25, metadata !776, metadata !DIExpression()), !dbg !815
  %cmp1.i26 = icmp slt i32 %add.i25, %indvars70, !dbg !821
  br i1 %cmp1.i26, label %land.lhs.true.i36, label %if.end.i42, !dbg !822

land.lhs.true.i36:                                ; preds = %while.body.i27
  %sub2.i28 = add nsw i32 %add.i25, -1, !dbg !823
  %idxprom3.i29 = sext i32 %sub2.i28 to i64, !dbg !824
  %arrayidx4.i30 = getelementptr inbounds i32, i32* %a, i64 %idxprom3.i29, !dbg !824
  %13 = load i32, i32* %arrayidx4.i30, align 4, !dbg !824, !tbaa !96
  %idxprom5.i31 = sext i32 %add.i25 to i64, !dbg !825
  %arrayidx6.i32 = getelementptr inbounds i32, i32* %a, i64 %idxprom5.i31, !dbg !825
  %14 = load i32, i32* %arrayidx6.i32, align 4, !dbg !825, !tbaa !96
  %cmp7.i33 = icmp slt i32 %13, %14, !dbg !826
  %inc.i34 = zext i1 %cmp7.i33 to i32, !dbg !827
  %spec.select.i35 = or i32 %add.i25, %inc.i34, !dbg !827
  br label %if.end.i42, !dbg !827

if.end.i42:                                       ; preds = %land.lhs.true.i36, %while.body.i27
  %j.0.i37 = phi i32 [ %add.i25, %while.body.i27 ], [ %spec.select.i35, %land.lhs.true.i36 ], !dbg !828
  call void @llvm.dbg.value(metadata i32 %j.0.i37, metadata !776, metadata !DIExpression()), !dbg !815
  %sub8.i38 = add nsw i32 %j.0.i37, -1, !dbg !829
  %idxprom9.i39 = sext i32 %sub8.i38 to i64, !dbg !830
  %arrayidx10.i40 = getelementptr inbounds i32, i32* %a, i64 %idxprom9.i39, !dbg !830
  %15 = load i32, i32* %arrayidx10.i40, align 4, !dbg !830, !tbaa !96
  %cmp11.not.i41 = icmp slt i32 %12, %15, !dbg !831
  %sub17.i45 = add nsw i32 %k.addr.045.i24, -1, !dbg !815
  br i1 %cmp11.not.i41, label %if.end13.i49, label %downheap_pairs.exit53, !dbg !832

if.end13.i49:                                     ; preds = %if.end.i42
  %idxprom18.i46 = sext i32 %sub17.i45 to i64, !dbg !833
  %arrayidx19.i47 = getelementptr inbounds i32, i32* %a, i64 %idxprom18.i46, !dbg !833
  store i32 %15, i32* %arrayidx19.i47, align 4, !dbg !834, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %j.0.i37, metadata !775, metadata !DIExpression()), !dbg !815
  %cmp.not.i48 = icmp sgt i32 %j.0.i37, %div.i2254, !dbg !818
  br i1 %cmp.not.i48, label %downheap_pairs.exit53, label %while.body.i27, !dbg !819, !llvm.loop !835

downheap_pairs.exit53:                            ; preds = %if.end13.i49, %if.end.i42, %while.body
  %sub20.pre-phi.i50 = phi i32 [ 0, %while.body ], [ %sub8.i38, %if.end13.i49 ], [ %sub17.i45, %if.end.i42 ], !dbg !837
  %idxprom21.i51 = sext i32 %sub20.pre-phi.i50 to i64, !dbg !838
  %arrayidx22.i52 = getelementptr inbounds i32, i32* %a, i64 %idxprom21.i51, !dbg !838
  store i32 %12, i32* %arrayidx22.i52, align 4, !dbg !839, !tbaa !96
  call void @llvm.dbg.value(metadata i32 %indvars70, metadata !759, metadata !DIExpression()), !dbg !762
  %cmp1 = icmp sgt i64 %indvars.iv68, 2, !dbg !840
  br i1 %cmp1, label %while.body, label %while.end, !dbg !768, !llvm.loop !841

while.end:                                        ; preds = %downheap_pairs.exit53, %entry, %while.cond.preheader
  ret void, !dbg !843
}

declare !dbg !844 dso_local void @free_ivector(i32* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/nblist.c", directory: "/home/rouzbeh/Graduate/Research/LLVM/Active-Lane-Conslidation/test", checksumkind: CSK_MD5, checksum: "684f45f1e0348fc50a0da53086e69592")
!2 = !{!3, !14}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "KDNODE_T", file: !5, line: 40, baseType: !6)
!5 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/nblist.c", directory: "/home/rouzbeh/Graduate/Research", checksumkind: CSK_MD5, checksum: "684f45f1e0348fc50a0da53086e69592")
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
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)"}
!20 = distinct !DISubprogram(name: "nblist", scope: !5, file: !5, line: 783, type: !21, scopeLine: 786, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!21 = !DISubroutineType(types: !22)
!22 = !{!9, !23, !23, !24, !25, !9, !9, !26, !10, !10, !27}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!29 = !DILocalVariable(name: "lpears", arg: 1, scope: !20, file: !5, line: 783, type: !23)
!30 = !DILocalVariable(name: "upears", arg: 2, scope: !20, file: !5, line: 783, type: !23)
!31 = !DILocalVariable(name: "pearlist", arg: 3, scope: !20, file: !5, line: 783, type: !24)
!32 = !DILocalVariable(name: "x", arg: 4, scope: !20, file: !5, line: 783, type: !25)
!33 = !DILocalVariable(name: "context_PxQ", arg: 5, scope: !20, file: !5, line: 784, type: !9)
!34 = !DILocalVariable(name: "derivs", arg: 6, scope: !20, file: !5, line: 784, type: !9)
!35 = !DILocalVariable(name: "cutoff", arg: 7, scope: !20, file: !5, line: 784, type: !26)
!36 = !DILocalVariable(name: "natom", arg: 8, scope: !20, file: !5, line: 784, type: !10)
!37 = !DILocalVariable(name: "dim", arg: 9, scope: !20, file: !5, line: 785, type: !10)
!38 = !DILocalVariable(name: "frozen", arg: 10, scope: !20, file: !5, line: 785, type: !27)
!39 = !DILocalVariable(name: "i", scope: !20, file: !5, line: 787, type: !10)
!40 = !DILocalVariable(name: "j", scope: !20, file: !5, line: 787, type: !10)
!41 = !DILocalVariable(name: "locnt", scope: !20, file: !5, line: 787, type: !10)
!42 = !DILocalVariable(name: "upcnt", scope: !20, file: !5, line: 787, type: !10)
!43 = !DILocalVariable(name: "totpair", scope: !20, file: !5, line: 787, type: !10)
!44 = !DILocalVariable(name: "numthreads", scope: !20, file: !5, line: 787, type: !10)
!45 = !DILocalVariable(name: "threadnum", scope: !20, file: !5, line: 787, type: !10)
!46 = !DILocalVariable(name: "blocksize", scope: !20, file: !5, line: 787, type: !10)
!47 = !DILocalVariable(name: "xn", scope: !20, file: !5, line: 788, type: !27)
!48 = !DILocalVariable(name: "yn", scope: !20, file: !5, line: 788, type: !27)
!49 = !DILocalVariable(name: "zn", scope: !20, file: !5, line: 788, type: !27)
!50 = !DILocalVariable(name: "wn", scope: !20, file: !5, line: 788, type: !27)
!51 = !DILocalVariable(name: "on", scope: !20, file: !5, line: 788, type: !27)
!52 = !DILocalVariable(name: "tn", scope: !20, file: !5, line: 788, type: !27)
!53 = !DILocalVariable(name: "lopairlist", scope: !20, file: !5, line: 788, type: !27)
!54 = !DILocalVariable(name: "uppairlist", scope: !20, file: !5, line: 788, type: !27)
!55 = !DILocalVariable(name: "cutoff2", scope: !20, file: !5, line: 789, type: !26)
!56 = !DILocalVariable(name: "kdtree", scope: !20, file: !5, line: 790, type: !3)
!57 = !DILocalVariable(name: "kdptr", scope: !20, file: !5, line: 790, type: !3)
!58 = !DILocalVariable(name: "root", scope: !20, file: !5, line: 790, type: !3)
!59 = !DILocation(line: 0, scope: !20)
!60 = !DILocation(line: 787, column: 4, scope: !20)
!61 = !DILocation(line: 787, column: 37, scope: !20)
!62 = !DILocation(line: 787, column: 49, scope: !20)
!63 = !DILocation(line: 790, column: 4, scope: !20)
!64 = !DILocation(line: 799, column: 21, scope: !20)
!65 = !DILocation(line: 803, column: 16, scope: !20)
!66 = !DILocation(line: 807, column: 38, scope: !67)
!67 = distinct !DILexicalBlock(scope: !20, file: !5, line: 807, column: 8)
!68 = !DILocation(line: 807, column: 44, scope: !67)
!69 = !DILocation(line: 807, column: 31, scope: !67)
!70 = !DILocation(line: 807, column: 18, scope: !67)
!71 = !DILocation(line: 807, column: 65, scope: !67)
!72 = !DILocation(line: 807, column: 8, scope: !20)
!73 = !DILocation(line: 808, column: 15, scope: !74)
!74 = distinct !DILexicalBlock(scope: !67, file: !5, line: 807, column: 74)
!75 = !{!76, !76, i64 0}
!76 = !{!"any pointer", !77, i64 0}
!77 = !{!"omnipotent char", !78, i64 0}
!78 = !{!"Simple C/C++ TBAA"}
!79 = !DILocation(line: 808, column: 7, scope: !74)
!80 = !DILocation(line: 809, column: 7, scope: !74)
!81 = !DILocation(line: 824, column: 9, scope: !20)
!82 = !DILocation(line: 825, column: 9, scope: !20)
!83 = !DILocation(line: 826, column: 9, scope: !20)
!84 = !DILocation(line: 827, column: 9, scope: !20)
!85 = !DILocation(line: 829, column: 12, scope: !86)
!86 = distinct !DILexicalBlock(scope: !20, file: !5, line: 829, column: 8)
!87 = !DILocation(line: 829, column: 8, scope: !20)
!88 = !DILocation(line: 833, column: 9, scope: !20)
!89 = !DILocation(line: 836, column: 18, scope: !90)
!90 = distinct !DILexicalBlock(scope: !91, file: !5, line: 836, column: 4)
!91 = distinct !DILexicalBlock(scope: !20, file: !5, line: 836, column: 4)
!92 = !DILocation(line: 836, column: 4, scope: !91)
!93 = !DILocation(line: 837, column: 23, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !5, line: 836, column: 32)
!95 = !DILocation(line: 837, column: 29, scope: !94)
!96 = !{!97, !97, i64 0}
!97 = !{!"int", !77, i64 0}
!98 = !DILocation(line: 837, column: 15, scope: !94)
!99 = !DILocation(line: 837, column: 21, scope: !94)
!100 = !DILocation(line: 837, column: 7, scope: !94)
!101 = !DILocation(line: 837, column: 13, scope: !94)
!102 = !DILocation(line: 839, column: 10, scope: !103)
!103 = distinct !DILexicalBlock(scope: !104, file: !5, line: 838, column: 21)
!104 = distinct !DILexicalBlock(scope: !94, file: !5, line: 838, column: 11)
!105 = !DILocation(line: 839, column: 16, scope: !103)
!106 = !DILocation(line: 842, column: 7, scope: !94)
!107 = !DILocation(line: 842, column: 13, scope: !94)
!108 = !DILocation(line: 836, column: 28, scope: !90)
!109 = distinct !{!109, !92, !110, !111, !112}
!110 = !DILocation(line: 845, column: 4, scope: !91)
!111 = !{!"llvm.loop.mustprogress"}
!112 = !{!"llvm.loop.unroll.disable"}
!113 = !DILocation(line: 847, column: 4, scope: !20)
!114 = !DILocation(line: 848, column: 4, scope: !20)
!115 = !DILocation(line: 849, column: 4, scope: !20)
!116 = !DILocation(line: 851, column: 8, scope: !20)
!117 = !DILocation(line: 852, column: 7, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !5, line: 851, column: 18)
!119 = distinct !DILexicalBlock(scope: !20, file: !5, line: 851, column: 8)
!120 = !DILocation(line: 853, column: 4, scope: !118)
!121 = !DILocation(line: 870, column: 16, scope: !20)
!122 = !DILocation(line: 871, column: 10, scope: !20)
!123 = !DILocation(line: 881, column: 49, scope: !20)
!124 = !DILocation(line: 881, column: 4, scope: !20)
!125 = !DILocation(line: 872, column: 13, scope: !20)
!126 = !DILocation(line: 1009, column: 20, scope: !127)
!127 = distinct !DILexicalBlock(scope: !20, file: !5, line: 903, column: 4)
!128 = !DILocation(line: 1010, column: 20, scope: !127)
!129 = !DILocation(line: 1057, column: 7, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !5, line: 1057, column: 7)
!131 = !DILocation(line: 1057, column: 21, scope: !132)
!132 = distinct !DILexicalBlock(scope: !130, file: !5, line: 1057, column: 7)
!133 = !DILocation(line: 1082, column: 24, scope: !134)
!134 = distinct !DILexicalBlock(scope: !132, file: !5, line: 1057, column: 35)
!135 = !DILocation(line: 1082, column: 16, scope: !134)
!136 = !DILocation(line: 1083, column: 10, scope: !134)
!137 = !DILocation(line: 1117, column: 37, scope: !134)
!138 = !DILocation(line: 1117, column: 10, scope: !134)
!139 = !DILocation(line: 1118, column: 37, scope: !134)
!140 = !DILocation(line: 1118, column: 10, scope: !134)
!141 = !DILocation(line: 1151, column: 15, scope: !142)
!142 = distinct !DILexicalBlock(scope: !134, file: !5, line: 1151, column: 14)
!143 = !DILocation(line: 1151, column: 27, scope: !142)
!144 = !DILocation(line: 0, scope: !142)
!145 = !DILocation(line: 1151, column: 36, scope: !142)
!146 = !DILocation(line: 1151, column: 54, scope: !142)
!147 = !DILocation(line: 1151, column: 14, scope: !134)
!148 = !DILocation(line: 1154, column: 39, scope: !149)
!149 = distinct !DILexicalBlock(scope: !142, file: !5, line: 1153, column: 21)
!150 = !DILocation(line: 1154, column: 51, scope: !149)
!151 = !DILocation(line: 1154, column: 49, scope: !149)
!152 = !DILocation(line: 1154, column: 37, scope: !149)
!153 = !DILocation(line: 1154, column: 62, scope: !149)
!154 = !DILocation(line: 1155, column: 25, scope: !149)
!155 = !DILocation(line: 1156, column: 25, scope: !149)
!156 = !DILocation(line: 1155, column: 43, scope: !149)
!157 = !DILocation(line: 1153, column: 21, scope: !142)
!158 = !DILocation(line: 1157, column: 13, scope: !159)
!159 = distinct !DILexicalBlock(scope: !149, file: !5, line: 1156, column: 54)
!160 = !DILocation(line: 1158, column: 38, scope: !159)
!161 = !DILocation(line: 1158, column: 46, scope: !159)
!162 = !DILocation(line: 1158, column: 44, scope: !159)
!163 = !DILocation(line: 1159, column: 10, scope: !159)
!164 = !DILocation(line: 1160, column: 22, scope: !134)
!165 = !DILocation(line: 1160, column: 10, scope: !134)
!166 = !DILocation(line: 1160, column: 20, scope: !134)
!167 = !DILocation(line: 1161, column: 22, scope: !134)
!168 = !DILocation(line: 1161, column: 10, scope: !134)
!169 = !DILocation(line: 1161, column: 20, scope: !134)
!170 = !DILocation(line: 1162, column: 24, scope: !171)
!171 = distinct !DILexicalBlock(scope: !172, file: !5, line: 1162, column: 10)
!172 = distinct !DILexicalBlock(scope: !134, file: !5, line: 1162, column: 10)
!173 = !DILocation(line: 1162, column: 10, scope: !172)
!174 = !DILocation(line: 1165, column: 26, scope: !175)
!175 = distinct !DILexicalBlock(scope: !176, file: !5, line: 1165, column: 10)
!176 = distinct !DILexicalBlock(scope: !134, file: !5, line: 1165, column: 10)
!177 = !DILocation(line: 1165, column: 24, scope: !175)
!178 = !DILocation(line: 1165, column: 10, scope: !176)
!179 = !DILocation(line: 1166, column: 38, scope: !180)
!180 = distinct !DILexicalBlock(scope: !175, file: !5, line: 1165, column: 38)
!181 = !DILocation(line: 1166, column: 13, scope: !180)
!182 = !DILocation(line: 1166, column: 36, scope: !180)
!183 = distinct !{!183, !178, !184, !111, !112}
!184 = !DILocation(line: 1167, column: 10, scope: !176)
!185 = !DILocation(line: 1163, column: 30, scope: !186)
!186 = distinct !DILexicalBlock(scope: !171, file: !5, line: 1162, column: 38)
!187 = !DILocation(line: 1163, column: 13, scope: !186)
!188 = !DILocation(line: 1163, column: 28, scope: !186)
!189 = !DILocation(line: 1162, column: 34, scope: !171)
!190 = !DILocation(line: 1162, column: 26, scope: !171)
!191 = distinct !{!191, !173, !192, !111, !112}
!192 = !DILocation(line: 1164, column: 10, scope: !172)
!193 = !DILocation(line: 1166, column: 25, scope: !180)
!194 = !DILocation(line: 1166, column: 31, scope: !180)
!195 = !DILocation(line: 1165, column: 34, scope: !175)
!196 = !DILocation(line: 1168, column: 21, scope: !134)
!197 = !DILocation(line: 1168, column: 27, scope: !134)
!198 = !DILocation(line: 1168, column: 18, scope: !134)
!199 = !DILocation(line: 1057, column: 31, scope: !132)
!200 = distinct !{!200, !129, !201, !111, !112}
!201 = !DILocation(line: 1169, column: 7, scope: !130)
!202 = !DILocation(line: 1177, column: 7, scope: !127)
!203 = !DILocation(line: 1178, column: 7, scope: !127)
!204 = !DILocation(line: 1195, column: 4, scope: !20)
!205 = !DILocation(line: 1196, column: 4, scope: !20)
!206 = !DILocation(line: 1197, column: 4, scope: !20)
!207 = !DILocation(line: 1198, column: 4, scope: !20)
!208 = !DILocation(line: 1199, column: 4, scope: !20)
!209 = !DILocation(line: 1201, column: 8, scope: !20)
!210 = !DILocation(line: 1202, column: 7, scope: !211)
!211 = distinct !DILexicalBlock(scope: !212, file: !5, line: 1201, column: 18)
!212 = distinct !DILexicalBlock(scope: !20, file: !5, line: 1201, column: 8)
!213 = !DILocation(line: 1203, column: 4, scope: !211)
!214 = !DILocation(line: 1206, column: 4, scope: !20)
!215 = !DILocation(line: 1211, column: 1, scope: !20)
!216 = !DILocation(line: 1210, column: 4, scope: !20)
!217 = !DISubprogram(name: "get_blocksize", scope: !5, file: !5, line: 33, type: !218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !220)
!218 = !DISubroutineType(types: !219)
!219 = !{!9}
!220 = !{}
!221 = !DISubprogram(name: "ivector", scope: !5, file: !5, line: 28, type: !222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !220)
!222 = !DISubroutineType(types: !223)
!223 = !{!23, !9, !9}
!224 = distinct !DISubprogram(name: "heapsort_index", scope: !5, file: !5, line: 207, type: !225, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !227)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !27, !10, !25, !10, !10}
!227 = !{!228, !229, !230, !231, !232, !233, !234}
!228 = !DILocalVariable(name: "a", arg: 1, scope: !224, file: !5, line: 207, type: !27)
!229 = !DILocalVariable(name: "n", arg: 2, scope: !224, file: !5, line: 207, type: !10)
!230 = !DILocalVariable(name: "x", arg: 3, scope: !224, file: !5, line: 207, type: !25)
!231 = !DILocalVariable(name: "p", arg: 4, scope: !224, file: !5, line: 207, type: !10)
!232 = !DILocalVariable(name: "dim", arg: 5, scope: !224, file: !5, line: 207, type: !10)
!233 = !DILocalVariable(name: "k", scope: !224, file: !5, line: 210, type: !10)
!234 = !DILocalVariable(name: "v", scope: !224, file: !5, line: 210, type: !10)
!235 = !DILocation(line: 0, scope: !224)
!236 = !DILocation(line: 212, column: 15, scope: !237)
!237 = distinct !DILexicalBlock(scope: !224, file: !5, line: 212, column: 4)
!238 = !DILocation(line: 212, column: 22, scope: !239)
!239 = distinct !DILexicalBlock(scope: !237, file: !5, line: 212, column: 4)
!240 = !DILocation(line: 212, column: 4, scope: !237)
!241 = !DILocation(line: 214, column: 4, scope: !224)
!242 = !DILocalVariable(name: "a", arg: 1, scope: !243, file: !5, line: 163, type: !27)
!243 = distinct !DISubprogram(name: "downheap_index", scope: !5, file: !5, line: 163, type: !244, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !246)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !27, !10, !10, !25, !10, !10}
!246 = !{!242, !247, !248, !249, !250, !251, !252, !253}
!247 = !DILocalVariable(name: "n", arg: 2, scope: !243, file: !5, line: 163, type: !10)
!248 = !DILocalVariable(name: "k", arg: 3, scope: !243, file: !5, line: 163, type: !10)
!249 = !DILocalVariable(name: "x", arg: 4, scope: !243, file: !5, line: 163, type: !25)
!250 = !DILocalVariable(name: "p", arg: 5, scope: !243, file: !5, line: 163, type: !10)
!251 = !DILocalVariable(name: "dim", arg: 6, scope: !243, file: !5, line: 163, type: !10)
!252 = !DILocalVariable(name: "j", scope: !243, file: !5, line: 166, type: !10)
!253 = !DILocalVariable(name: "v", scope: !243, file: !5, line: 166, type: !10)
!254 = !DILocation(line: 0, scope: !243, inlinedAt: !255)
!255 = distinct !DILocation(line: 213, column: 7, scope: !239)
!256 = !DILocation(line: 168, column: 12, scope: !243, inlinedAt: !255)
!257 = !DILocation(line: 168, column: 8, scope: !243, inlinedAt: !255)
!258 = !DILocation(line: 169, column: 13, scope: !243, inlinedAt: !255)
!259 = !DILocation(line: 169, column: 4, scope: !243, inlinedAt: !255)
!260 = !{!261, !261, i64 0}
!261 = !{!"double", !77, i64 0}
!262 = !DILocation(line: 170, column: 13, scope: !263, inlinedAt: !255)
!263 = distinct !DILexicalBlock(scope: !243, file: !5, line: 169, column: 23)
!264 = !DILocation(line: 171, column: 14, scope: !265, inlinedAt: !255)
!265 = distinct !DILexicalBlock(scope: !263, file: !5, line: 171, column: 11)
!266 = !DILocation(line: 171, column: 19, scope: !265, inlinedAt: !255)
!267 = !DILocation(line: 171, column: 35, scope: !265, inlinedAt: !255)
!268 = !DILocation(line: 171, column: 31, scope: !265, inlinedAt: !255)
!269 = !DILocation(line: 171, column: 29, scope: !265, inlinedAt: !255)
!270 = !DILocation(line: 171, column: 40, scope: !265, inlinedAt: !255)
!271 = !DILocation(line: 171, column: 23, scope: !265, inlinedAt: !255)
!272 = !DILocation(line: 171, column: 55, scope: !265, inlinedAt: !255)
!273 = !DILocation(line: 171, column: 53, scope: !265, inlinedAt: !255)
!274 = !DILocation(line: 171, column: 60, scope: !265, inlinedAt: !255)
!275 = !DILocation(line: 171, column: 47, scope: !265, inlinedAt: !255)
!276 = !DILocation(line: 171, column: 45, scope: !265, inlinedAt: !255)
!277 = !DILocation(line: 171, column: 11, scope: !263, inlinedAt: !255)
!278 = !DILocation(line: 172, column: 11, scope: !265, inlinedAt: !255)
!279 = !DILocation(line: 172, column: 10, scope: !265, inlinedAt: !255)
!280 = !DILocation(line: 0, scope: !263, inlinedAt: !255)
!281 = !DILocation(line: 173, column: 41, scope: !282, inlinedAt: !255)
!282 = distinct !DILexicalBlock(scope: !263, file: !5, line: 173, column: 11)
!283 = !DILocation(line: 173, column: 37, scope: !282, inlinedAt: !255)
!284 = !DILocation(line: 173, column: 35, scope: !282, inlinedAt: !255)
!285 = !DILocation(line: 173, column: 46, scope: !282, inlinedAt: !255)
!286 = !DILocation(line: 173, column: 29, scope: !282, inlinedAt: !255)
!287 = !DILocation(line: 173, column: 26, scope: !282, inlinedAt: !255)
!288 = !DILocation(line: 173, column: 11, scope: !263, inlinedAt: !255)
!289 = !DILocation(line: 175, column: 7, scope: !263, inlinedAt: !255)
!290 = !DILocation(line: 175, column: 16, scope: !263, inlinedAt: !255)
!291 = distinct !{!291, !259, !292, !111, !112}
!292 = !DILocation(line: 177, column: 4, scope: !243, inlinedAt: !255)
!293 = !DILocation(line: 178, column: 8, scope: !243, inlinedAt: !255)
!294 = !DILocation(line: 178, column: 4, scope: !243, inlinedAt: !255)
!295 = !DILocation(line: 178, column: 13, scope: !243, inlinedAt: !255)
!296 = distinct !{!296, !240, !297, !111, !112}
!297 = !DILocation(line: 213, column: 40, scope: !237)
!298 = !DILocation(line: 215, column: 11, scope: !299)
!299 = distinct !DILexicalBlock(scope: !224, file: !5, line: 214, column: 18)
!300 = !DILocation(line: 216, column: 18, scope: !299)
!301 = !DILocation(line: 216, column: 14, scope: !299)
!302 = !DILocation(line: 216, column: 12, scope: !299)
!303 = !DILocation(line: 217, column: 16, scope: !299)
!304 = !DILocation(line: 0, scope: !243, inlinedAt: !305)
!305 = distinct !DILocation(line: 218, column: 7, scope: !299)
!306 = !DILocation(line: 168, column: 8, scope: !243, inlinedAt: !305)
!307 = !DILocation(line: 169, column: 13, scope: !243, inlinedAt: !305)
!308 = !DILocation(line: 169, column: 4, scope: !243, inlinedAt: !305)
!309 = !DILocation(line: 170, column: 13, scope: !263, inlinedAt: !305)
!310 = !DILocation(line: 171, column: 14, scope: !265, inlinedAt: !305)
!311 = !DILocation(line: 171, column: 19, scope: !265, inlinedAt: !305)
!312 = !DILocation(line: 171, column: 35, scope: !265, inlinedAt: !305)
!313 = !DILocation(line: 171, column: 31, scope: !265, inlinedAt: !305)
!314 = !DILocation(line: 171, column: 29, scope: !265, inlinedAt: !305)
!315 = !DILocation(line: 171, column: 40, scope: !265, inlinedAt: !305)
!316 = !DILocation(line: 171, column: 23, scope: !265, inlinedAt: !305)
!317 = !DILocation(line: 171, column: 55, scope: !265, inlinedAt: !305)
!318 = !DILocation(line: 171, column: 53, scope: !265, inlinedAt: !305)
!319 = !DILocation(line: 171, column: 60, scope: !265, inlinedAt: !305)
!320 = !DILocation(line: 171, column: 47, scope: !265, inlinedAt: !305)
!321 = !DILocation(line: 171, column: 45, scope: !265, inlinedAt: !305)
!322 = !DILocation(line: 171, column: 11, scope: !263, inlinedAt: !305)
!323 = !DILocation(line: 172, column: 11, scope: !265, inlinedAt: !305)
!324 = !DILocation(line: 172, column: 10, scope: !265, inlinedAt: !305)
!325 = !DILocation(line: 0, scope: !263, inlinedAt: !305)
!326 = !DILocation(line: 173, column: 41, scope: !282, inlinedAt: !305)
!327 = !DILocation(line: 173, column: 37, scope: !282, inlinedAt: !305)
!328 = !DILocation(line: 173, column: 35, scope: !282, inlinedAt: !305)
!329 = !DILocation(line: 173, column: 46, scope: !282, inlinedAt: !305)
!330 = !DILocation(line: 173, column: 29, scope: !282, inlinedAt: !305)
!331 = !DILocation(line: 173, column: 26, scope: !282, inlinedAt: !305)
!332 = !DILocation(line: 173, column: 11, scope: !263, inlinedAt: !305)
!333 = !DILocation(line: 175, column: 7, scope: !263, inlinedAt: !305)
!334 = !DILocation(line: 175, column: 16, scope: !263, inlinedAt: !305)
!335 = distinct !{!335, !308, !336, !111, !112}
!336 = !DILocation(line: 177, column: 4, scope: !243, inlinedAt: !305)
!337 = !DILocation(line: 178, column: 8, scope: !243, inlinedAt: !305)
!338 = !DILocation(line: 178, column: 4, scope: !243, inlinedAt: !305)
!339 = !DILocation(line: 178, column: 13, scope: !243, inlinedAt: !305)
!340 = !DILocation(line: 214, column: 13, scope: !224)
!341 = distinct !{!341, !241, !342, !111, !112}
!342 = !DILocation(line: 219, column: 4, scope: !224)
!343 = !DILocation(line: 220, column: 1, scope: !224)
!344 = distinct !DISubprogram(name: "buildkdtree", scope: !5, file: !5, line: 255, type: !345, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !348)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !27, !27, !27, !27, !27, !27, !10, !10, !347, !3, !25, !10, !10}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!348 = !{!349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367}
!349 = !DILocalVariable(name: "xn", arg: 1, scope: !344, file: !5, line: 255, type: !27)
!350 = !DILocalVariable(name: "yn", arg: 2, scope: !344, file: !5, line: 255, type: !27)
!351 = !DILocalVariable(name: "zn", arg: 3, scope: !344, file: !5, line: 255, type: !27)
!352 = !DILocalVariable(name: "wn", arg: 4, scope: !344, file: !5, line: 255, type: !27)
!353 = !DILocalVariable(name: "on", arg: 5, scope: !344, file: !5, line: 255, type: !27)
!354 = !DILocalVariable(name: "tn", arg: 6, scope: !344, file: !5, line: 255, type: !27)
!355 = !DILocalVariable(name: "start", arg: 7, scope: !344, file: !5, line: 256, type: !10)
!356 = !DILocalVariable(name: "end", arg: 8, scope: !344, file: !5, line: 256, type: !10)
!357 = !DILocalVariable(name: "kdpptr", arg: 9, scope: !344, file: !5, line: 256, type: !347)
!358 = !DILocalVariable(name: "that", arg: 10, scope: !344, file: !5, line: 256, type: !3)
!359 = !DILocalVariable(name: "x", arg: 11, scope: !344, file: !5, line: 257, type: !25)
!360 = !DILocalVariable(name: "p", arg: 12, scope: !344, file: !5, line: 257, type: !10)
!361 = !DILocalVariable(name: "dim", arg: 13, scope: !344, file: !5, line: 257, type: !10)
!362 = !DILocalVariable(name: "i", scope: !344, file: !5, line: 259, type: !10)
!363 = !DILocalVariable(name: "middle", scope: !344, file: !5, line: 259, type: !10)
!364 = !DILocalVariable(name: "imedian", scope: !344, file: !5, line: 259, type: !10)
!365 = !DILocalVariable(name: "lower", scope: !344, file: !5, line: 259, type: !10)
!366 = !DILocalVariable(name: "upper", scope: !344, file: !5, line: 259, type: !10)
!367 = !DILocalVariable(name: "median", scope: !344, file: !5, line: 260, type: !26)
!368 = !DILocation(line: 0, scope: !344)
!369 = !DILocation(line: 281, column: 12, scope: !370)
!370 = distinct !DILexicalBlock(scope: !344, file: !5, line: 281, column: 8)
!371 = !DILocation(line: 281, column: 8, scope: !344)
!372 = !DILocation(line: 276, column: 14, scope: !344)
!373 = !DILocation(line: 276, column: 6, scope: !344)
!374 = !DILocation(line: 282, column: 17, scope: !375)
!375 = distinct !DILexicalBlock(scope: !370, file: !5, line: 281, column: 22)
!376 = !DILocation(line: 282, column: 13, scope: !375)
!377 = !DILocation(line: 282, column: 15, scope: !375)
!378 = !{!379, !97, i64 0}
!379 = !{!"kdnode", !97, i64 0, !76, i64 8, !76, i64 16}
!380 = !DILocation(line: 283, column: 4, scope: !375)
!381 = !DILocation(line: 293, column: 26, scope: !382)
!382 = distinct !DILexicalBlock(scope: !370, file: !5, line: 293, column: 13)
!383 = !DILocation(line: 293, column: 17, scope: !382)
!384 = !DILocation(line: 293, column: 13, scope: !370)
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
!405 = !DILocation(line: 305, column: 16, scope: !404)
!406 = !DILocation(line: 305, column: 18, scope: !404)
!407 = !DILocation(line: 306, column: 25, scope: !404)
!408 = !DILocation(line: 306, column: 11, scope: !404)
!409 = !DILocation(line: 306, column: 21, scope: !404)
!410 = !DILocation(line: 306, column: 23, scope: !404)
!411 = !DILocation(line: 307, column: 21, scope: !404)
!412 = !DILocation(line: 307, column: 24, scope: !404)
!413 = !{!379, !76, i64 8}
!414 = !DILocation(line: 308, column: 11, scope: !404)
!415 = !DILocation(line: 308, column: 21, scope: !404)
!416 = !DILocation(line: 308, column: 24, scope: !404)
!417 = !{!379, !76, i64 16}
!418 = !DILocation(line: 309, column: 30, scope: !404)
!419 = !DILocation(line: 309, column: 16, scope: !404)
!420 = !DILocation(line: 309, column: 19, scope: !404)
!421 = !DILocation(line: 310, column: 7, scope: !404)
!422 = !DILocation(line: 315, column: 40, scope: !423)
!423 = distinct !DILexicalBlock(scope: !386, file: !5, line: 315, column: 16)
!424 = !DILocation(line: 315, column: 52, scope: !423)
!425 = !DILocation(line: 316, column: 57, scope: !423)
!426 = !DILocation(line: 315, column: 16, scope: !386)
!427 = !DILocation(line: 323, column: 25, scope: !428)
!428 = distinct !DILexicalBlock(scope: !423, file: !5, line: 321, column: 7)
!429 = !DILocation(line: 322, column: 16, scope: !428)
!430 = !DILocation(line: 322, column: 18, scope: !428)
!431 = !DILocation(line: 323, column: 11, scope: !428)
!432 = !DILocation(line: 323, column: 21, scope: !428)
!433 = !DILocation(line: 323, column: 23, scope: !428)
!434 = !DILocation(line: 324, column: 21, scope: !428)
!435 = !DILocation(line: 324, column: 24, scope: !428)
!436 = !DILocation(line: 325, column: 11, scope: !428)
!437 = !DILocation(line: 325, column: 21, scope: !428)
!438 = !DILocation(line: 325, column: 24, scope: !428)
!439 = !DILocation(line: 326, column: 30, scope: !428)
!440 = !DILocation(line: 326, column: 16, scope: !428)
!441 = !DILocation(line: 326, column: 19, scope: !428)
!442 = !DILocation(line: 327, column: 7, scope: !428)
!443 = !DILocation(line: 333, column: 25, scope: !444)
!444 = distinct !DILexicalBlock(scope: !423, file: !5, line: 331, column: 12)
!445 = !DILocation(line: 332, column: 16, scope: !444)
!446 = !DILocation(line: 332, column: 18, scope: !444)
!447 = !DILocation(line: 333, column: 11, scope: !444)
!448 = !DILocation(line: 333, column: 21, scope: !444)
!449 = !DILocation(line: 333, column: 23, scope: !444)
!450 = !DILocation(line: 334, column: 21, scope: !444)
!451 = !DILocation(line: 334, column: 24, scope: !444)
!452 = !DILocation(line: 335, column: 11, scope: !444)
!453 = !DILocation(line: 335, column: 21, scope: !444)
!454 = !DILocation(line: 335, column: 24, scope: !444)
!455 = !DILocation(line: 336, column: 30, scope: !444)
!456 = !DILocation(line: 336, column: 16, scope: !444)
!457 = !DILocation(line: 336, column: 19, scope: !444)
!458 = !DILocation(line: 358, column: 23, scope: !459)
!459 = distinct !DILexicalBlock(scope: !382, file: !5, line: 342, column: 9)
!460 = !DILocation(line: 358, column: 30, scope: !459)
!461 = !DILocation(line: 360, column: 13, scope: !462)
!462 = distinct !DILexicalBlock(scope: !459, file: !5, line: 360, column: 11)
!463 = !DILocation(line: 0, scope: !462)
!464 = !DILocation(line: 360, column: 11, scope: !459)
!465 = !DILocation(line: 363, column: 25, scope: !466)
!466 = distinct !DILexicalBlock(scope: !462, file: !5, line: 362, column: 14)
!467 = !DILocation(line: 363, column: 38, scope: !466)
!468 = !DILocation(line: 363, column: 42, scope: !466)
!469 = !DILocation(line: 363, column: 19, scope: !466)
!470 = !DILocation(line: 364, column: 15, scope: !471)
!471 = distinct !DILexicalBlock(scope: !466, file: !5, line: 364, column: 10)
!472 = !DILocation(line: 0, scope: !459)
!473 = !DILocation(line: 0, scope: !471)
!474 = !DILocation(line: 364, column: 33, scope: !475)
!475 = distinct !DILexicalBlock(scope: !471, file: !5, line: 364, column: 10)
!476 = !DILocation(line: 364, column: 10, scope: !471)
!477 = !DILocation(line: 365, column: 25, scope: !478)
!478 = distinct !DILexicalBlock(scope: !479, file: !5, line: 365, column: 17)
!479 = distinct !DILexicalBlock(scope: !475, file: !5, line: 364, column: 48)
!480 = !DILocation(line: 365, column: 23, scope: !478)
!481 = !DILocation(line: 365, column: 35, scope: !478)
!482 = !DILocation(line: 365, column: 17, scope: !478)
!483 = !DILocation(line: 365, column: 40, scope: !478)
!484 = !DILocation(line: 365, column: 17, scope: !479)
!485 = distinct !{!485, !476, !486, !111, !112}
!486 = !DILocation(line: 370, column: 10, scope: !471)
!487 = !DILocation(line: 385, column: 17, scope: !459)
!488 = !DILocation(line: 358, column: 14, scope: !459)
!489 = !DILocation(line: 385, column: 13, scope: !459)
!490 = !DILocation(line: 385, column: 15, scope: !459)
!491 = !DILocation(line: 414, column: 21, scope: !459)
!492 = !DILocation(line: 416, column: 25, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !5, line: 416, column: 7)
!494 = distinct !DILexicalBlock(scope: !459, file: !5, line: 416, column: 7)
!495 = !DILocation(line: 416, column: 7, scope: !494)
!496 = !DILocation(line: 451, column: 7, scope: !497)
!497 = distinct !DILexicalBlock(scope: !459, file: !5, line: 451, column: 7)
!498 = !DILocation(line: 417, column: 14, scope: !499)
!499 = distinct !DILexicalBlock(scope: !500, file: !5, line: 417, column: 14)
!500 = distinct !DILexicalBlock(scope: !493, file: !5, line: 416, column: 38)
!501 = !DILocation(line: 417, column: 23, scope: !499)
!502 = !DILocation(line: 417, column: 20, scope: !499)
!503 = !DILocation(line: 417, column: 14, scope: !500)
!504 = !DILocation(line: 420, column: 27, scope: !505)
!505 = distinct !DILexicalBlock(scope: !506, file: !5, line: 420, column: 17)
!506 = distinct !DILexicalBlock(scope: !499, file: !5, line: 417, column: 35)
!507 = !DILocation(line: 421, column: 27, scope: !505)
!508 = !DILocation(line: 421, column: 37, scope: !505)
!509 = !DILocation(line: 421, column: 49, scope: !505)
!510 = !DILocation(line: 421, column: 31, scope: !505)
!511 = !DILocation(line: 421, column: 54, scope: !505)
!512 = !DILocation(line: 420, column: 17, scope: !506)
!513 = !DILocation(line: 426, column: 19, scope: !514)
!514 = distinct !DILexicalBlock(scope: !505, file: !5, line: 425, column: 13)
!515 = !DILocation(line: 427, column: 13, scope: !514)
!516 = !DILocation(line: 428, column: 19, scope: !517)
!517 = distinct !DILexicalBlock(scope: !505, file: !5, line: 427, column: 20)
!518 = !DILocation(line: 0, scope: !505)
!519 = !DILocation(line: 416, column: 34, scope: !493)
!520 = distinct !{!520, !495, !521, !111, !112}
!521 = !DILocation(line: 431, column: 7, scope: !494)
!522 = !DILocation(line: 497, column: 10, scope: !523)
!523 = distinct !DILexicalBlock(scope: !524, file: !5, line: 497, column: 10)
!524 = distinct !DILexicalBlock(scope: !459, file: !5, line: 477, column: 7)
!525 = !DILocation(line: 452, column: 14, scope: !526)
!526 = distinct !DILexicalBlock(scope: !527, file: !5, line: 452, column: 14)
!527 = distinct !DILexicalBlock(scope: !528, file: !5, line: 451, column: 38)
!528 = distinct !DILexicalBlock(scope: !497, file: !5, line: 451, column: 7)
!529 = !DILocation(line: 452, column: 23, scope: !526)
!530 = !DILocation(line: 452, column: 20, scope: !526)
!531 = !DILocation(line: 452, column: 14, scope: !527)
!532 = !DILocation(line: 455, column: 27, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !5, line: 455, column: 17)
!534 = distinct !DILexicalBlock(scope: !526, file: !5, line: 452, column: 35)
!535 = !DILocation(line: 456, column: 27, scope: !533)
!536 = !DILocation(line: 456, column: 37, scope: !533)
!537 = !DILocation(line: 456, column: 49, scope: !533)
!538 = !DILocation(line: 456, column: 31, scope: !533)
!539 = !DILocation(line: 456, column: 54, scope: !533)
!540 = !DILocation(line: 455, column: 17, scope: !534)
!541 = !DILocation(line: 461, column: 19, scope: !542)
!542 = distinct !DILexicalBlock(scope: !533, file: !5, line: 460, column: 13)
!543 = !DILocation(line: 462, column: 13, scope: !542)
!544 = !DILocation(line: 463, column: 19, scope: !545)
!545 = distinct !DILexicalBlock(scope: !533, file: !5, line: 462, column: 20)
!546 = !DILocation(line: 0, scope: !533)
!547 = !DILocation(line: 451, column: 34, scope: !528)
!548 = !DILocation(line: 451, column: 25, scope: !528)
!549 = distinct !{!549, !496, !550, !111, !112}
!550 = !DILocation(line: 466, column: 7, scope: !497)
!551 = !DILocation(line: 498, column: 17, scope: !552)
!552 = distinct !DILexicalBlock(scope: !553, file: !5, line: 498, column: 17)
!553 = distinct !DILexicalBlock(scope: !554, file: !5, line: 497, column: 41)
!554 = distinct !DILexicalBlock(scope: !523, file: !5, line: 497, column: 10)
!555 = !DILocation(line: 498, column: 26, scope: !552)
!556 = !DILocation(line: 498, column: 23, scope: !552)
!557 = !DILocation(line: 498, column: 17, scope: !553)
!558 = !DILocation(line: 501, column: 30, scope: !559)
!559 = distinct !DILexicalBlock(scope: !560, file: !5, line: 501, column: 20)
!560 = distinct !DILexicalBlock(scope: !552, file: !5, line: 498, column: 38)
!561 = !DILocation(line: 502, column: 30, scope: !559)
!562 = !DILocation(line: 502, column: 40, scope: !559)
!563 = !DILocation(line: 502, column: 52, scope: !559)
!564 = !DILocation(line: 502, column: 34, scope: !559)
!565 = !DILocation(line: 502, column: 57, scope: !559)
!566 = !DILocation(line: 501, column: 20, scope: !560)
!567 = !DILocation(line: 507, column: 22, scope: !568)
!568 = distinct !DILexicalBlock(scope: !559, file: !5, line: 506, column: 16)
!569 = !DILocation(line: 508, column: 16, scope: !568)
!570 = !DILocation(line: 509, column: 22, scope: !571)
!571 = distinct !DILexicalBlock(scope: !559, file: !5, line: 508, column: 23)
!572 = !DILocation(line: 0, scope: !559)
!573 = !DILocation(line: 497, column: 37, scope: !554)
!574 = !DILocation(line: 0, scope: !524)
!575 = !DILocation(line: 497, column: 28, scope: !554)
!576 = distinct !{!576, !522, !577, !111, !112}
!577 = !DILocation(line: 512, column: 10, scope: !523)
!578 = !DILocation(line: 496, column: 16, scope: !524)
!579 = !DILocation(line: 522, column: 15, scope: !580)
!580 = distinct !DILexicalBlock(scope: !459, file: !5, line: 522, column: 11)
!581 = !DILocation(line: 522, column: 11, scope: !459)
!582 = !DILocation(line: 542, column: 10, scope: !583)
!583 = distinct !DILexicalBlock(scope: !584, file: !5, line: 542, column: 10)
!584 = distinct !DILexicalBlock(scope: !580, file: !5, line: 522, column: 21)
!585 = !DILocation(line: 543, column: 17, scope: !586)
!586 = distinct !DILexicalBlock(scope: !587, file: !5, line: 543, column: 17)
!587 = distinct !DILexicalBlock(scope: !588, file: !5, line: 542, column: 41)
!588 = distinct !DILexicalBlock(scope: !583, file: !5, line: 542, column: 10)
!589 = !DILocation(line: 543, column: 26, scope: !586)
!590 = !DILocation(line: 543, column: 23, scope: !586)
!591 = !DILocation(line: 543, column: 17, scope: !587)
!592 = !DILocation(line: 544, column: 30, scope: !593)
!593 = distinct !DILexicalBlock(scope: !594, file: !5, line: 544, column: 20)
!594 = distinct !DILexicalBlock(scope: !586, file: !5, line: 543, column: 38)
!595 = !DILocation(line: 545, column: 30, scope: !593)
!596 = !DILocation(line: 545, column: 40, scope: !593)
!597 = !DILocation(line: 545, column: 52, scope: !593)
!598 = !DILocation(line: 545, column: 34, scope: !593)
!599 = !DILocation(line: 545, column: 57, scope: !593)
!600 = !DILocation(line: 544, column: 20, scope: !594)
!601 = !DILocation(line: 546, column: 22, scope: !602)
!602 = distinct !DILexicalBlock(scope: !593, file: !5, line: 545, column: 69)
!603 = !DILocation(line: 547, column: 16, scope: !602)
!604 = !DILocation(line: 548, column: 22, scope: !605)
!605 = distinct !DILexicalBlock(scope: !593, file: !5, line: 547, column: 23)
!606 = !DILocation(line: 0, scope: !593)
!607 = !DILocation(line: 542, column: 37, scope: !588)
!608 = !DILocation(line: 0, scope: !584)
!609 = !DILocation(line: 542, column: 28, scope: !588)
!610 = distinct !{!610, !582, !611, !111, !112}
!611 = !DILocation(line: 551, column: 10, scope: !583)
!612 = !DILocation(line: 576, column: 17, scope: !613)
!613 = distinct !DILexicalBlock(scope: !459, file: !5, line: 576, column: 11)
!614 = !DILocation(line: 576, column: 11, scope: !459)
!615 = !DILocation(line: 577, column: 11, scope: !616)
!616 = distinct !DILexicalBlock(scope: !613, file: !5, line: 576, column: 27)
!617 = !DILocation(line: 577, column: 21, scope: !616)
!618 = !DILocation(line: 577, column: 24, scope: !616)
!619 = !DILocation(line: 578, column: 11, scope: !616)
!620 = !DILocation(line: 578, column: 21, scope: !616)
!621 = !DILocation(line: 578, column: 24, scope: !616)
!622 = !DILocation(line: 579, column: 30, scope: !616)
!623 = !DILocation(line: 579, column: 16, scope: !616)
!624 = !DILocation(line: 579, column: 19, scope: !616)
!625 = !DILocation(line: 0, scope: !626)
!626 = distinct !DILexicalBlock(scope: !616, file: !5, line: 590, column: 14)
!627 = !DILocation(line: 590, column: 14, scope: !616)
!628 = !DILocation(line: 591, column: 13, scope: !629)
!629 = distinct !DILexicalBlock(scope: !626, file: !5, line: 590, column: 24)
!630 = !DILocation(line: 593, column: 10, scope: !629)
!631 = !DILocation(line: 594, column: 13, scope: !632)
!632 = distinct !DILexicalBlock(scope: !626, file: !5, line: 593, column: 17)
!633 = !DILocation(line: 614, column: 17, scope: !634)
!634 = distinct !DILexicalBlock(scope: !459, file: !5, line: 614, column: 11)
!635 = !DILocation(line: 614, column: 11, scope: !459)
!636 = !DILocation(line: 615, column: 11, scope: !637)
!637 = distinct !DILexicalBlock(scope: !634, file: !5, line: 614, column: 27)
!638 = !DILocation(line: 615, column: 21, scope: !637)
!639 = !DILocation(line: 615, column: 24, scope: !637)
!640 = !DILocation(line: 616, column: 11, scope: !637)
!641 = !DILocation(line: 616, column: 21, scope: !637)
!642 = !DILocation(line: 616, column: 24, scope: !637)
!643 = !DILocation(line: 617, column: 30, scope: !637)
!644 = !DILocation(line: 617, column: 16, scope: !637)
!645 = !DILocation(line: 617, column: 19, scope: !637)
!646 = !DILocation(line: 0, scope: !647)
!647 = distinct !DILexicalBlock(scope: !637, file: !5, line: 628, column: 14)
!648 = !DILocation(line: 628, column: 14, scope: !637)
!649 = !DILocation(line: 639, column: 1, scope: !344)
!650 = distinct !DISubprogram(name: "searchkdtree", scope: !5, file: !5, line: 667, type: !651, scopeLine: 671, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !653)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !3, !25, !9, !9, !23, !23, !23, !23, !26, !26, !10, !27}
!653 = !{!654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670}
!654 = !DILocalVariable(name: "that", arg: 1, scope: !650, file: !5, line: 667, type: !3)
!655 = !DILocalVariable(name: "x", arg: 2, scope: !650, file: !5, line: 667, type: !25)
!656 = !DILocalVariable(name: "p", arg: 3, scope: !650, file: !5, line: 667, type: !9)
!657 = !DILocalVariable(name: "q", arg: 4, scope: !650, file: !5, line: 667, type: !9)
!658 = !DILocalVariable(name: "loindexp", arg: 5, scope: !650, file: !5, line: 668, type: !23)
!659 = !DILocalVariable(name: "upindexp", arg: 6, scope: !650, file: !5, line: 668, type: !23)
!660 = !DILocalVariable(name: "lopairlist", arg: 7, scope: !650, file: !5, line: 669, type: !23)
!661 = !DILocalVariable(name: "uppairlist", arg: 8, scope: !650, file: !5, line: 669, type: !23)
!662 = !DILocalVariable(name: "cut", arg: 9, scope: !650, file: !5, line: 670, type: !26)
!663 = !DILocalVariable(name: "cut2", arg: 10, scope: !650, file: !5, line: 670, type: !26)
!664 = !DILocalVariable(name: "dim", arg: 11, scope: !650, file: !5, line: 670, type: !10)
!665 = !DILocalVariable(name: "frozen", arg: 12, scope: !650, file: !5, line: 670, type: !27)
!666 = !DILocalVariable(name: "xij", scope: !650, file: !5, line: 672, type: !26)
!667 = !DILocalVariable(name: "yij", scope: !650, file: !5, line: 672, type: !26)
!668 = !DILocalVariable(name: "zij", scope: !650, file: !5, line: 672, type: !26)
!669 = !DILocalVariable(name: "wij", scope: !650, file: !5, line: 672, type: !26)
!670 = !DILocalVariable(name: "r2", scope: !650, file: !5, line: 672, type: !26)
!671 = !DILocation(line: 749, column: 16, scope: !672)
!672 = distinct !DILexicalBlock(scope: !650, file: !5, line: 747, column: 8)
!673 = !DILocation(line: 754, column: 7, scope: !674)
!674 = distinct !DILexicalBlock(scope: !672, file: !5, line: 753, column: 4)
!675 = !DILocation(line: 0, scope: !650)
!676 = !DILocation(line: 685, column: 6, scope: !650)
!677 = !DILocation(line: 697, column: 12, scope: !678)
!678 = distinct !DILexicalBlock(scope: !650, file: !5, line: 697, column: 8)
!679 = !DILocation(line: 0, scope: !678)
!680 = !DILocation(line: 697, column: 18, scope: !678)
!681 = !DILocation(line: 697, column: 41, scope: !678)
!682 = !DILocation(line: 698, column: 40, scope: !678)
!683 = !DILocation(line: 699, column: 20, scope: !678)
!684 = !DILocation(line: 699, column: 24, scope: !678)
!685 = !DILocation(line: 699, column: 10, scope: !678)
!686 = !DILocation(line: 699, column: 29, scope: !678)
!687 = !DILocation(line: 699, column: 52, scope: !678)
!688 = !DILocation(line: 699, column: 44, scope: !678)
!689 = !DILocation(line: 699, column: 58, scope: !678)
!690 = !DILocation(line: 699, column: 38, scope: !678)
!691 = !DILocation(line: 699, column: 35, scope: !678)
!692 = !DILocation(line: 697, column: 8, scope: !650)
!693 = !DILocation(line: 705, column: 35, scope: !694)
!694 = distinct !DILexicalBlock(scope: !678, file: !5, line: 704, column: 4)
!695 = !DILocation(line: 705, column: 7, scope: !694)
!696 = !DILocation(line: 707, column: 4, scope: !694)
!697 = !DILocation(line: 718, column: 20, scope: !698)
!698 = distinct !DILexicalBlock(scope: !650, file: !5, line: 718, column: 8)
!699 = !DILocation(line: 718, column: 11, scope: !698)
!700 = !DILocation(line: 718, column: 23, scope: !698)
!701 = !DILocation(line: 718, column: 28, scope: !698)
!702 = !DILocation(line: 718, column: 38, scope: !698)
!703 = !DILocation(line: 718, column: 42, scope: !698)
!704 = !DILocation(line: 718, column: 8, scope: !650)
!705 = !DILocation(line: 719, column: 13, scope: !706)
!706 = distinct !DILexicalBlock(scope: !698, file: !5, line: 718, column: 60)
!707 = !DILocation(line: 719, column: 36, scope: !706)
!708 = !DILocation(line: 719, column: 30, scope: !706)
!709 = !DILocation(line: 719, column: 28, scope: !706)
!710 = !DILocation(line: 720, column: 13, scope: !706)
!711 = !DILocation(line: 720, column: 46, scope: !706)
!712 = !DILocation(line: 720, column: 30, scope: !706)
!713 = !DILocation(line: 720, column: 28, scope: !706)
!714 = !DILocation(line: 721, column: 13, scope: !706)
!715 = !DILocation(line: 721, column: 46, scope: !706)
!716 = !DILocation(line: 721, column: 30, scope: !706)
!717 = !DILocation(line: 721, column: 28, scope: !706)
!718 = !DILocation(line: 722, column: 28, scope: !706)
!719 = !DILocation(line: 722, column: 22, scope: !706)
!720 = !DILocation(line: 722, column: 34, scope: !706)
!721 = !DILocation(line: 723, column: 11, scope: !706)
!722 = !DILocation(line: 724, column: 16, scope: !723)
!723 = distinct !DILexicalBlock(scope: !724, file: !5, line: 723, column: 21)
!724 = distinct !DILexicalBlock(scope: !706, file: !5, line: 723, column: 11)
!725 = !DILocation(line: 724, column: 49, scope: !723)
!726 = !DILocation(line: 724, column: 33, scope: !723)
!727 = !DILocation(line: 724, column: 31, scope: !723)
!728 = !DILocation(line: 725, column: 13, scope: !723)
!729 = !DILocation(line: 726, column: 7, scope: !723)
!730 = !DILocation(line: 0, scope: !706)
!731 = !DILocation(line: 727, column: 14, scope: !732)
!732 = distinct !DILexicalBlock(scope: !706, file: !5, line: 727, column: 11)
!733 = !DILocation(line: 727, column: 11, scope: !706)
!734 = !DILocation(line: 728, column: 22, scope: !735)
!735 = distinct !DILexicalBlock(scope: !736, file: !5, line: 728, column: 14)
!736 = distinct !DILexicalBlock(scope: !732, file: !5, line: 727, column: 22)
!737 = !DILocation(line: 0, scope: !735)
!738 = !DILocation(line: 747, column: 18, scope: !672)
!739 = !DILocation(line: 0, scope: !672)
!740 = !DILocation(line: 747, column: 41, scope: !672)
!741 = !DILocation(line: 748, column: 40, scope: !672)
!742 = !DILocation(line: 749, column: 20, scope: !672)
!743 = !DILocation(line: 749, column: 24, scope: !672)
!744 = !DILocation(line: 749, column: 10, scope: !672)
!745 = !DILocation(line: 749, column: 29, scope: !672)
!746 = !DILocation(line: 749, column: 51, scope: !672)
!747 = !DILocation(line: 749, column: 43, scope: !672)
!748 = !DILocation(line: 749, column: 57, scope: !672)
!749 = !DILocation(line: 749, column: 37, scope: !672)
!750 = !DILocation(line: 749, column: 35, scope: !672)
!751 = !DILocation(line: 747, column: 8, scope: !650)
!752 = !DILocation(line: 754, column: 35, scope: !674)
!753 = !DILocation(line: 757, column: 1, scope: !650)
!754 = distinct !DISubprogram(name: "heapsort_pairs", scope: !5, file: !5, line: 114, type: !755, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !757)
!755 = !DISubroutineType(types: !756)
!756 = !{null, !27, !10}
!757 = !{!758, !759, !760, !761}
!758 = !DILocalVariable(name: "a", arg: 1, scope: !754, file: !5, line: 114, type: !27)
!759 = !DILocalVariable(name: "n", arg: 2, scope: !754, file: !5, line: 114, type: !10)
!760 = !DILocalVariable(name: "k", scope: !754, file: !5, line: 117, type: !10)
!761 = !DILocalVariable(name: "v", scope: !754, file: !5, line: 117, type: !10)
!762 = !DILocation(line: 0, scope: !754)
!763 = !DILocation(line: 119, column: 15, scope: !764)
!764 = distinct !DILexicalBlock(scope: !754, file: !5, line: 119, column: 4)
!765 = !DILocation(line: 119, column: 22, scope: !766)
!766 = distinct !DILexicalBlock(scope: !764, file: !5, line: 119, column: 4)
!767 = !DILocation(line: 119, column: 4, scope: !764)
!768 = !DILocation(line: 121, column: 4, scope: !754)
!769 = !DILocalVariable(name: "a", arg: 1, scope: !770, file: !5, line: 73, type: !27)
!770 = distinct !DISubprogram(name: "downheap_pairs", scope: !5, file: !5, line: 73, type: !771, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !773)
!771 = !DISubroutineType(types: !772)
!772 = !{null, !27, !10, !10}
!773 = !{!769, !774, !775, !776, !777}
!774 = !DILocalVariable(name: "n", arg: 2, scope: !770, file: !5, line: 73, type: !10)
!775 = !DILocalVariable(name: "k", arg: 3, scope: !770, file: !5, line: 73, type: !10)
!776 = !DILocalVariable(name: "j", scope: !770, file: !5, line: 76, type: !10)
!777 = !DILocalVariable(name: "v", scope: !770, file: !5, line: 76, type: !10)
!778 = !DILocation(line: 0, scope: !770, inlinedAt: !779)
!779 = distinct !DILocation(line: 120, column: 7, scope: !766)
!780 = !DILocation(line: 78, column: 12, scope: !770, inlinedAt: !779)
!781 = !DILocation(line: 78, column: 8, scope: !770, inlinedAt: !779)
!782 = !DILocation(line: 79, column: 13, scope: !770, inlinedAt: !779)
!783 = !DILocation(line: 79, column: 4, scope: !770, inlinedAt: !779)
!784 = !DILocation(line: 80, column: 13, scope: !785, inlinedAt: !779)
!785 = distinct !DILexicalBlock(scope: !770, file: !5, line: 79, column: 23)
!786 = !DILocation(line: 81, column: 14, scope: !787, inlinedAt: !779)
!787 = distinct !DILexicalBlock(scope: !785, file: !5, line: 81, column: 11)
!788 = !DILocation(line: 81, column: 19, scope: !787, inlinedAt: !779)
!789 = !DILocation(line: 81, column: 27, scope: !787, inlinedAt: !779)
!790 = !DILocation(line: 81, column: 23, scope: !787, inlinedAt: !779)
!791 = !DILocation(line: 81, column: 34, scope: !787, inlinedAt: !779)
!792 = !DILocation(line: 81, column: 32, scope: !787, inlinedAt: !779)
!793 = !DILocation(line: 81, column: 11, scope: !785, inlinedAt: !779)
!794 = !DILocation(line: 0, scope: !785, inlinedAt: !779)
!795 = !DILocation(line: 83, column: 20, scope: !796, inlinedAt: !779)
!796 = distinct !DILexicalBlock(scope: !785, file: !5, line: 83, column: 11)
!797 = !DILocation(line: 83, column: 16, scope: !796, inlinedAt: !779)
!798 = !DILocation(line: 83, column: 13, scope: !796, inlinedAt: !779)
!799 = !DILocation(line: 83, column: 11, scope: !785, inlinedAt: !779)
!800 = !DILocation(line: 85, column: 7, scope: !785, inlinedAt: !779)
!801 = !DILocation(line: 85, column: 16, scope: !785, inlinedAt: !779)
!802 = distinct !{!802, !783, !803, !111, !112}
!803 = !DILocation(line: 87, column: 4, scope: !770, inlinedAt: !779)
!804 = !DILocation(line: 88, column: 8, scope: !770, inlinedAt: !779)
!805 = !DILocation(line: 88, column: 4, scope: !770, inlinedAt: !779)
!806 = !DILocation(line: 88, column: 13, scope: !770, inlinedAt: !779)
!807 = distinct !{!807, !767, !808, !111, !112}
!808 = !DILocation(line: 120, column: 29, scope: !764)
!809 = !DILocation(line: 122, column: 11, scope: !810)
!810 = distinct !DILexicalBlock(scope: !754, file: !5, line: 121, column: 18)
!811 = !DILocation(line: 123, column: 18, scope: !810)
!812 = !DILocation(line: 123, column: 14, scope: !810)
!813 = !DILocation(line: 123, column: 12, scope: !810)
!814 = !DILocation(line: 124, column: 16, scope: !810)
!815 = !DILocation(line: 0, scope: !770, inlinedAt: !816)
!816 = distinct !DILocation(line: 125, column: 7, scope: !810)
!817 = !DILocation(line: 78, column: 8, scope: !770, inlinedAt: !816)
!818 = !DILocation(line: 79, column: 13, scope: !770, inlinedAt: !816)
!819 = !DILocation(line: 79, column: 4, scope: !770, inlinedAt: !816)
!820 = !DILocation(line: 80, column: 13, scope: !785, inlinedAt: !816)
!821 = !DILocation(line: 81, column: 14, scope: !787, inlinedAt: !816)
!822 = !DILocation(line: 81, column: 19, scope: !787, inlinedAt: !816)
!823 = !DILocation(line: 81, column: 27, scope: !787, inlinedAt: !816)
!824 = !DILocation(line: 81, column: 23, scope: !787, inlinedAt: !816)
!825 = !DILocation(line: 81, column: 34, scope: !787, inlinedAt: !816)
!826 = !DILocation(line: 81, column: 32, scope: !787, inlinedAt: !816)
!827 = !DILocation(line: 81, column: 11, scope: !785, inlinedAt: !816)
!828 = !DILocation(line: 0, scope: !785, inlinedAt: !816)
!829 = !DILocation(line: 83, column: 20, scope: !796, inlinedAt: !816)
!830 = !DILocation(line: 83, column: 16, scope: !796, inlinedAt: !816)
!831 = !DILocation(line: 83, column: 13, scope: !796, inlinedAt: !816)
!832 = !DILocation(line: 83, column: 11, scope: !785, inlinedAt: !816)
!833 = !DILocation(line: 85, column: 7, scope: !785, inlinedAt: !816)
!834 = !DILocation(line: 85, column: 16, scope: !785, inlinedAt: !816)
!835 = distinct !{!835, !819, !836, !111, !112}
!836 = !DILocation(line: 87, column: 4, scope: !770, inlinedAt: !816)
!837 = !DILocation(line: 88, column: 8, scope: !770, inlinedAt: !816)
!838 = !DILocation(line: 88, column: 4, scope: !770, inlinedAt: !816)
!839 = !DILocation(line: 88, column: 13, scope: !770, inlinedAt: !816)
!840 = !DILocation(line: 121, column: 13, scope: !754)
!841 = distinct !{!841, !768, !842, !111, !112}
!842 = !DILocation(line: 126, column: 4, scope: !754)
!843 = !DILocation(line: 127, column: 1, scope: !754)
!844 = !DISubprogram(name: "free_ivector", scope: !5, file: !5, line: 29, type: !845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !220)
!845 = !DISubroutineType(types: !846)
!846 = !{null, !23, !9, !9}
