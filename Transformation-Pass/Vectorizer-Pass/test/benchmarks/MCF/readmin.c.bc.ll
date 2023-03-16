; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/505.mcf_r/llvm-ir/505.mcf_r_bc/src/readmin.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/505.mcf_r/src/readmin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64 }
%struct.node = type { i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }
%struct.arc = type { i32, i64, ptr, ptr, i16, ptr, ptr, i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%ld %ld\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%ld %ld %ld\00", align 1
@str = private unnamed_addr constant [30 x i8] c"read_min(): not enough memory\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i64 @read_min(ptr noundef %net) local_unnamed_addr #0 !dbg !58 {
entry:
  %instring = alloca [201 x i8], align 16
  %t = alloca i64, align 8
  %h = alloca i64, align 8
  %c = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %net, metadata !103, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata ptr null, metadata !104, metadata !DIExpression()), !dbg !174
  call void @llvm.lifetime.start.p0(i64 201, ptr nonnull %instring) #7, !dbg !175
  call void @llvm.dbg.declare(metadata ptr %instring, metadata !163, metadata !DIExpression()), !dbg !176
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %t) #7, !dbg !177
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %h) #7, !dbg !177
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %c) #7, !dbg !177
  call void @llvm.dbg.value(metadata i64 0, metadata !171, metadata !DIExpression()), !dbg !174
  %call = tail call ptr @fopen(ptr noundef %net, ptr noundef nonnull @.str), !dbg !178
  call void @llvm.dbg.value(metadata ptr %call, metadata !104, metadata !DIExpression()), !dbg !174
  %cmp = icmp eq ptr %call, null, !dbg !180
  br i1 %cmp, label %cleanup, label %if.end, !dbg !181

if.end:                                           ; preds = %entry
  %call2 = call ptr @fgets(ptr noundef nonnull %instring, i32 noundef 200, ptr noundef nonnull %call), !dbg !182
  call void @llvm.dbg.value(metadata ptr %t, metadata !167, metadata !DIExpression(DW_OP_deref)), !dbg !174
  call void @llvm.dbg.value(metadata ptr %h, metadata !168, metadata !DIExpression(DW_OP_deref)), !dbg !174
  %call4 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %instring, ptr noundef nonnull @.str.1, ptr noundef nonnull %t, ptr noundef nonnull %h) #7, !dbg !183
  %cmp5.not = icmp eq i32 %call4, 2, !dbg !185
  br i1 %cmp5.not, label %if.end7, label %cleanup, !dbg !186

if.end7:                                          ; preds = %if.end
  %0 = load i64, ptr %t, align 8, !dbg !187, !tbaa !188
  call void @llvm.dbg.value(metadata i64 %0, metadata !167, metadata !DIExpression()), !dbg !174
  %n_trips = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 3, !dbg !192
  store i64 %0, ptr %n_trips, align 8, !dbg !193, !tbaa !194
  %1 = load i64, ptr %h, align 8, !dbg !198, !tbaa !188
  call void @llvm.dbg.value(metadata i64 %1, metadata !168, metadata !DIExpression()), !dbg !174
  %m_org = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 6, !dbg !199
  store i64 %1, ptr %m_org, align 8, !dbg !200, !tbaa !201
  call void @llvm.dbg.value(metadata i64 %0, metadata !167, metadata !DIExpression()), !dbg !174
  %add = shl nsw i64 %0, 1, !dbg !202
  %add8 = or i64 %add, 1, !dbg !203
  %n = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 2, !dbg !204
  store i64 %add8, ptr %n, align 8, !dbg !205, !tbaa !206
  call void @llvm.dbg.value(metadata i64 %0, metadata !167, metadata !DIExpression()), !dbg !174
  %add10 = mul nsw i64 %0, 3, !dbg !207
  call void @llvm.dbg.value(metadata i64 %1, metadata !168, metadata !DIExpression()), !dbg !174
  %add11 = add nsw i64 %1, %add10, !dbg !208
  %m = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 5, !dbg !209
  store i64 %add11, ptr %m, align 8, !dbg !210, !tbaa !211
  %max_elems = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 32, !dbg !212
  store i64 4000, ptr %max_elems, align 8, !dbg !213, !tbaa !214
  %sub = add nsw i64 %add11, -1, !dbg !215
  %div = sdiv i64 %sub, 4000, !dbg !216
  %add13 = add nsw i64 %div, 1, !dbg !217
  %nr_group = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 30, !dbg !218
  store i64 %add13, ptr %nr_group, align 8, !dbg !219, !tbaa !220
  %rem = srem i64 %add11, 4000, !dbg !221
  %cmp15.not = icmp eq i64 %rem, 0, !dbg !223
  br i1 %cmp15.not, label %if.end24, label %if.then16, !dbg !224

if.then16:                                        ; preds = %if.end7
  %sub20.neg = add nsw i64 %rem, -4000, !dbg !225
  %sub21 = add nsw i64 %sub20.neg, %add13, !dbg !226
  br label %if.end24, !dbg !227

if.end24:                                         ; preds = %if.end7, %if.then16
  %sub21.sink = phi i64 [ %sub21, %if.then16 ], [ %add13, %if.end7 ], !dbg !228
  %2 = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 31, !dbg !229
  store i64 %sub21.sink, ptr %2, align 8, !dbg !230
  %cmp26517 = icmp slt i64 %sub21.sink, 0, !dbg !231
  br i1 %cmp26517, label %while.body, label %while.end, !dbg !232

while.body:                                       ; preds = %if.end24, %while.body
  %3 = phi i64 [ %dec, %while.body ], [ 4000, %if.end24 ], !dbg !233
  %add29516518 = phi i64 [ %add29, %while.body ], [ %sub21.sink, %if.end24 ]
  %add29 = add nsw i64 %add29516518, %add13, !dbg !233
  %dec = add nsw i64 %3, -1, !dbg !235
  %cmp26 = icmp slt i64 %add29, 0, !dbg !231
  br i1 %cmp26, label %while.body, label %while.cond.while.end_crit_edge, !dbg !232, !llvm.loop !236

while.cond.while.end_crit_edge:                   ; preds = %while.body
  store i64 %add29, ptr %2, align 8, !dbg !240, !tbaa !241
  store i64 %dec, ptr %max_elems, align 8, !dbg !235, !tbaa !214
  br label %while.end, !dbg !232

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end24
  %cmp33 = icmp slt i64 %0, 15001, !dbg !242
  br i1 %cmp33, label %if.then34, label %if.else39, !dbg !244

if.then34:                                        ; preds = %while.end
  %max_residual_new_m = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 8, !dbg !245
  store i64 0, ptr %max_residual_new_m, align 8, !dbg !247, !tbaa !248
  br label %if.end60, !dbg !249

if.else39:                                        ; preds = %while.end
  %add41 = add nsw i64 %add11, 5000000, !dbg !250
  %conv = sitofp i64 %add11 to double, !dbg !250
  %mul = fmul double %conv, 1.250000e+00, !dbg !250
  %conv43 = fptosi double %mul to i64, !dbg !250
  %conv44 = sitofp i64 %conv43 to double, !dbg !250
  %mul45 = fmul double %conv44, 1.250000e+00, !dbg !250
  %conv46 = fptosi double %mul45 to i64, !dbg !250
  %4 = call i64 @llvm.smax.i64(i64 %add41, i64 %conv46), !dbg !250
  br label %if.end60

if.end60:                                         ; preds = %if.else39, %if.then34
  %.sink536 = phi i64 [ %add11, %if.then34 ], [ %4, %if.else39 ], !dbg !252
  %.sink = phi i64 [ 2000000, %if.then34 ], [ 28900000, %if.else39 ], !dbg !252
  %5 = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 4, !dbg !253
  store i64 %.sink536, ptr %5, align 8, !dbg !254
  %6 = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 9, !dbg !255
  store i64 %.sink, ptr %6, align 8, !dbg !256
  %add62 = add i64 %add, 2, !dbg !257
  %call63 = call noalias ptr @calloc(i64 noundef %add62, i64 noundef 104) #8, !dbg !258
  %nodes = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 21, !dbg !259
  store ptr %call63, ptr %nodes, align 8, !dbg !260, !tbaa !261
  %call65 = call noalias ptr @calloc(i64 noundef %add8, i64 noundef 72) #8, !dbg !262
  %dummy_arcs = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 26, !dbg !263
  store ptr %call65, ptr %dummy_arcs, align 8, !dbg !264, !tbaa !265
  %call67 = call noalias ptr @calloc(i64 noundef %.sink536, i64 noundef 72) #8, !dbg !266
  %sorted_arcs = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 25, !dbg !267
  store ptr %call67, ptr %sorted_arcs, align 8, !dbg !268, !tbaa !269
  %call69 = call noalias ptr @calloc(i64 noundef %.sink536, i64 noundef 72) #8, !dbg !270
  %arcs = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 23, !dbg !271
  store ptr %call69, ptr %arcs, align 8, !dbg !272, !tbaa !273
  %tobool.not = icmp eq ptr %call63, null, !dbg !274
  %tobool72.not = icmp eq ptr %call69, null
  %or.cond = or i1 %tobool.not, %tobool72.not, !dbg !276
  %tobool75.not = icmp eq ptr %call65, null
  %or.cond508 = or i1 %tobool75.not, %or.cond, !dbg !276
  %tobool78.not = icmp eq ptr %call67, null
  %or.cond509 = or i1 %tobool78.not, %or.cond508, !dbg !276
  br i1 %or.cond509, label %if.then79, label %if.end82, !dbg !276

if.then79:                                        ; preds = %if.end60
  %puts = call i32 @puts(ptr nonnull @str), !dbg !277
  %call81 = call i64 @getfree(ptr noundef nonnull %net) #7, !dbg !279
  br label %cleanup, !dbg !280

if.end82:                                         ; preds = %if.end60
  %add.ptr = getelementptr inbounds %struct.node, ptr %call63, i64 %add8, !dbg !281
  %add.ptr85 = getelementptr inbounds %struct.node, ptr %add.ptr, i64 1, !dbg !282
  %stop_nodes = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 22, !dbg !283
  store ptr %add.ptr85, ptr %stop_nodes, align 8, !dbg !284, !tbaa !285
  %add.ptr88 = getelementptr inbounds %struct.arc, ptr %call69, i64 %add11, !dbg !286
  %stop_arcs = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 24, !dbg !287
  store ptr %add.ptr88, ptr %stop_arcs, align 8, !dbg !288, !tbaa !289
  %add.ptr91 = getelementptr inbounds %struct.arc, ptr %call65, i64 %add8, !dbg !290
  %stop_dummy = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 27, !dbg !291
  store ptr %add.ptr91, ptr %stop_dummy, align 8, !dbg !292, !tbaa !293
  call void @llvm.dbg.value(metadata ptr %call63, metadata !173, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata ptr %call69, metadata !172, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i64 1, metadata !170, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i64 0, metadata !171, metadata !DIExpression()), !dbg !174
  %cmp95.not520 = icmp slt i64 %0, 1, !dbg !294
  br i1 %cmp95.not520, label %for.end, label %for.body.lr.ph, !dbg !297

for.body.lr.ph:                                   ; preds = %if.end82
  %bigM = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 18
  br label %for.body, !dbg !297

for.body:                                         ; preds = %for.body.lr.ph, %if.end106
  %arc.0523 = phi ptr [ %call69, %for.body.lr.ph ], [ %add.ptr197, %if.end106 ]
  %actArc.0522 = phi i64 [ 0, %for.body.lr.ph ], [ %inc195, %if.end106 ]
  %i.0521 = phi i64 [ 1, %for.body.lr.ph ], [ %inc198, %if.end106 ]
  call void @llvm.dbg.value(metadata ptr %arc.0523, metadata !172, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i64 %actArc.0522, metadata !171, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i64 %i.0521, metadata !170, metadata !DIExpression()), !dbg !174
  %call98 = call ptr @fgets(ptr noundef nonnull %instring, i32 noundef 200, ptr noundef nonnull %call), !dbg !298
  call void @llvm.dbg.value(metadata ptr %t, metadata !167, metadata !DIExpression(DW_OP_deref)), !dbg !174
  call void @llvm.dbg.value(metadata ptr %h, metadata !168, metadata !DIExpression(DW_OP_deref)), !dbg !174
  %call100 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %instring, ptr noundef nonnull @.str.1, ptr noundef nonnull %t, ptr noundef nonnull %h) #7, !dbg !300
  %cmp101.not = icmp eq i32 %call100, 2, !dbg !302
  br i1 %cmp101.not, label %lor.lhs.false, label %cleanup, !dbg !303

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i64, ptr %t, align 8, !dbg !304, !tbaa !188
  call void @llvm.dbg.value(metadata i64 %7, metadata !167, metadata !DIExpression()), !dbg !174
  %8 = load i64, ptr %h, align 8, !dbg !305, !tbaa !188
  call void @llvm.dbg.value(metadata i64 %8, metadata !168, metadata !DIExpression()), !dbg !174
  %cmp103 = icmp sgt i64 %7, %8, !dbg !306
  br i1 %cmp103, label %cleanup, label %if.end106, !dbg !307

if.end106:                                        ; preds = %lor.lhs.false
  %9 = trunc i64 %i.0521 to i32, !dbg !308
  %conv108 = sub i32 0, %9, !dbg !308
  %arrayidx = getelementptr inbounds %struct.node, ptr %call63, i64 %i.0521, !dbg !309
  %number = getelementptr inbounds %struct.node, ptr %call63, i64 %i.0521, i32 12, !dbg !310
  store i32 %conv108, ptr %number, align 8, !dbg !311, !tbaa !312
  %flow = getelementptr inbounds %struct.node, ptr %call63, i64 %i.0521, i32 10, !dbg !315
  store i64 -1, ptr %flow, align 8, !dbg !316, !tbaa !317
  %10 = load i64, ptr %n_trips, align 8, !dbg !318, !tbaa !194
  %add112 = add nsw i64 %10, %i.0521, !dbg !319
  %number114 = getelementptr inbounds %struct.node, ptr %call63, i64 %add112, i32 12, !dbg !320
  store i32 %9, ptr %number114, align 8, !dbg !321, !tbaa !312
  %flow118 = getelementptr inbounds %struct.node, ptr %call63, i64 %add112, i32 10, !dbg !322
  store i64 1, ptr %flow118, align 8, !dbg !323, !tbaa !317
  call void @llvm.dbg.value(metadata i64 %7, metadata !167, metadata !DIExpression()), !dbg !174
  %conv119 = trunc i64 %7 to i32, !dbg !324
  %time = getelementptr inbounds %struct.node, ptr %call63, i64 %i.0521, i32 13, !dbg !325
  store i32 %conv119, ptr %time, align 4, !dbg !326, !tbaa !327
  call void @llvm.dbg.value(metadata i64 %8, metadata !168, metadata !DIExpression()), !dbg !174
  %conv121 = trunc i64 %8 to i32, !dbg !328
  %time125 = getelementptr inbounds %struct.node, ptr %call63, i64 %add112, i32 13, !dbg !329
  store i32 %conv121, ptr %time125, align 4, !dbg !330, !tbaa !327
  %conv126 = trunc i64 %actArc.0522 to i32, !dbg !331
  store i32 %conv126, ptr %arc.0523, align 8, !dbg !332, !tbaa !333
  %11 = load i64, ptr %n, align 8, !dbg !336, !tbaa !206
  %arrayidx128 = getelementptr inbounds %struct.node, ptr %call63, i64 %11, !dbg !337
  %tail = getelementptr inbounds %struct.arc, ptr %arc.0523, i64 0, i32 2, !dbg !338
  store ptr %arrayidx128, ptr %tail, align 8, !dbg !339, !tbaa !340
  %head = getelementptr inbounds %struct.arc, ptr %arc.0523, i64 0, i32 3, !dbg !341
  store ptr %arrayidx, ptr %head, align 8, !dbg !342, !tbaa !343
  %12 = load i64, ptr %bigM, align 8, !dbg !344, !tbaa !345
  %add130 = add nsw i64 %12, 15, !dbg !346
  %cost = getelementptr inbounds %struct.arc, ptr %arc.0523, i64 0, i32 1, !dbg !347
  store i64 %add130, ptr %cost, align 8, !dbg !348, !tbaa !349
  %org_cost = getelementptr inbounds %struct.arc, ptr %arc.0523, i64 0, i32 8, !dbg !350
  store i64 %add130, ptr %org_cost, align 8, !dbg !351, !tbaa !352
  %firstout = getelementptr inbounds %struct.node, ptr %call63, i64 %11, i32 7, !dbg !353
  %13 = load ptr, ptr %firstout, align 8, !dbg !353, !tbaa !354
  %nextout = getelementptr inbounds %struct.arc, ptr %arc.0523, i64 0, i32 5, !dbg !355
  store ptr %13, ptr %nextout, align 8, !dbg !356, !tbaa !357
  store ptr %arc.0523, ptr %firstout, align 8, !dbg !358, !tbaa !354
  %firstin = getelementptr inbounds %struct.node, ptr %call63, i64 %i.0521, i32 8, !dbg !359
  %14 = load ptr, ptr %firstin, align 8, !dbg !359, !tbaa !360
  %nextin = getelementptr inbounds %struct.arc, ptr %arc.0523, i64 0, i32 6, !dbg !361
  store ptr %14, ptr %nextin, align 8, !dbg !362, !tbaa !363
  store ptr %arc.0523, ptr %firstin, align 8, !dbg !364, !tbaa !360
  %15 = load ptr, ptr %arcs, align 8, !dbg !365, !tbaa !273
  %inc = add nuw nsw i64 %actArc.0522, 1, !dbg !366
  call void @llvm.dbg.value(metadata i64 %inc, metadata !171, metadata !DIExpression()), !dbg !174
  %call138 = call i64 @getArcPosition(ptr noundef nonnull %net, i64 noundef %inc) #7, !dbg !367
  %add.ptr139 = getelementptr inbounds %struct.arc, ptr %15, i64 %call138, !dbg !368
  call void @llvm.dbg.value(metadata ptr %add.ptr139, metadata !172, metadata !DIExpression()), !dbg !174
  %conv140 = trunc i64 %inc to i32, !dbg !369
  store i32 %conv140, ptr %add.ptr139, align 8, !dbg !370, !tbaa !333
  %16 = load i64, ptr %n_trips, align 8, !dbg !371, !tbaa !194
  %add143 = add nsw i64 %16, %i.0521, !dbg !372
  %arrayidx144 = getelementptr inbounds %struct.node, ptr %call63, i64 %add143, !dbg !373
  %tail145 = getelementptr inbounds %struct.arc, ptr %15, i64 %call138, i32 2, !dbg !374
  store ptr %arrayidx144, ptr %tail145, align 8, !dbg !375, !tbaa !340
  %17 = load i64, ptr %n, align 8, !dbg !376, !tbaa !206
  %arrayidx147 = getelementptr inbounds %struct.node, ptr %call63, i64 %17, !dbg !377
  %head148 = getelementptr inbounds %struct.arc, ptr %15, i64 %call138, i32 3, !dbg !378
  store ptr %arrayidx147, ptr %head148, align 8, !dbg !379, !tbaa !343
  %cost149 = getelementptr inbounds %struct.arc, ptr %15, i64 %call138, i32 1, !dbg !380
  store i64 15, ptr %cost149, align 8, !dbg !381, !tbaa !349
  %org_cost150 = getelementptr inbounds %struct.arc, ptr %15, i64 %call138, i32 8, !dbg !382
  store i64 15, ptr %org_cost150, align 8, !dbg !383, !tbaa !352
  %firstout152 = getelementptr inbounds %struct.node, ptr %call63, i64 %add143, i32 7, !dbg !384
  %18 = load ptr, ptr %firstout152, align 8, !dbg !384, !tbaa !354
  %nextout153 = getelementptr inbounds %struct.arc, ptr %15, i64 %call138, i32 5, !dbg !385
  store ptr %18, ptr %nextout153, align 8, !dbg !386, !tbaa !357
  store ptr %add.ptr139, ptr %firstout152, align 8, !dbg !387, !tbaa !354
  %firstin157 = getelementptr inbounds %struct.node, ptr %call63, i64 %17, i32 8, !dbg !388
  %19 = load ptr, ptr %firstin157, align 8, !dbg !388, !tbaa !360
  %nextin158 = getelementptr inbounds %struct.arc, ptr %15, i64 %call138, i32 6, !dbg !389
  store ptr %19, ptr %nextin158, align 8, !dbg !390, !tbaa !363
  store ptr %add.ptr139, ptr %firstin157, align 8, !dbg !391, !tbaa !360
  %20 = load ptr, ptr %arcs, align 8, !dbg !392, !tbaa !273
  %inc162 = add nuw nsw i64 %actArc.0522, 2, !dbg !393
  call void @llvm.dbg.value(metadata i64 %inc162, metadata !171, metadata !DIExpression()), !dbg !174
  %call163 = call i64 @getArcPosition(ptr noundef nonnull %net, i64 noundef %inc162) #7, !dbg !394
  %add.ptr164 = getelementptr inbounds %struct.arc, ptr %20, i64 %call163, !dbg !395
  call void @llvm.dbg.value(metadata ptr %add.ptr164, metadata !172, metadata !DIExpression()), !dbg !174
  %conv165 = trunc i64 %inc162 to i32, !dbg !396
  store i32 %conv165, ptr %add.ptr164, align 8, !dbg !397, !tbaa !333
  %tail168 = getelementptr inbounds %struct.arc, ptr %20, i64 %call163, i32 2, !dbg !398
  store ptr %arrayidx, ptr %tail168, align 8, !dbg !399, !tbaa !340
  %21 = load i64, ptr %n_trips, align 8, !dbg !400, !tbaa !194
  %add170 = add nsw i64 %21, %i.0521, !dbg !401
  %arrayidx171 = getelementptr inbounds %struct.node, ptr %call63, i64 %add170, !dbg !402
  %head172 = getelementptr inbounds %struct.arc, ptr %20, i64 %call163, i32 3, !dbg !403
  store ptr %arrayidx171, ptr %head172, align 8, !dbg !404, !tbaa !343
  %22 = load i64, ptr %bigM, align 8, !dbg !405, !tbaa !345
  %23 = call i64 @llvm.smax.i64(i64 %22, i64 10000000), !dbg !405
  %mul181 = shl nuw nsw i64 %23, 1, !dbg !406
  %cost182 = getelementptr inbounds %struct.arc, ptr %20, i64 %call163, i32 1, !dbg !407
  store i64 %mul181, ptr %cost182, align 8, !dbg !408, !tbaa !349
  %org_cost183 = getelementptr inbounds %struct.arc, ptr %20, i64 %call163, i32 8, !dbg !409
  store i64 %mul181, ptr %org_cost183, align 8, !dbg !410, !tbaa !352
  %firstout185 = getelementptr inbounds %struct.node, ptr %call63, i64 %i.0521, i32 7, !dbg !411
  %24 = load ptr, ptr %firstout185, align 8, !dbg !411, !tbaa !354
  %nextout186 = getelementptr inbounds %struct.arc, ptr %20, i64 %call163, i32 5, !dbg !412
  store ptr %24, ptr %nextout186, align 8, !dbg !413, !tbaa !357
  store ptr %add.ptr164, ptr %firstout185, align 8, !dbg !414, !tbaa !354
  %firstin190 = getelementptr inbounds %struct.node, ptr %call63, i64 %add170, i32 8, !dbg !415
  %25 = load ptr, ptr %firstin190, align 8, !dbg !415, !tbaa !360
  %nextin191 = getelementptr inbounds %struct.arc, ptr %20, i64 %call163, i32 6, !dbg !416
  store ptr %25, ptr %nextin191, align 8, !dbg !417, !tbaa !363
  store ptr %add.ptr164, ptr %firstin190, align 8, !dbg !418, !tbaa !360
  %26 = load ptr, ptr %arcs, align 8, !dbg !419, !tbaa !273
  %inc195 = add nuw nsw i64 %actArc.0522, 3, !dbg !420
  call void @llvm.dbg.value(metadata i64 %inc195, metadata !171, metadata !DIExpression()), !dbg !174
  %call196 = call i64 @getArcPosition(ptr noundef nonnull %net, i64 noundef %inc195) #7, !dbg !421
  %add.ptr197 = getelementptr inbounds %struct.arc, ptr %26, i64 %call196, !dbg !422
  call void @llvm.dbg.value(metadata ptr %add.ptr197, metadata !172, metadata !DIExpression()), !dbg !174
  %inc198 = add nuw nsw i64 %i.0521, 1, !dbg !423
  call void @llvm.dbg.value(metadata i64 %inc198, metadata !170, metadata !DIExpression()), !dbg !174
  %27 = load i64, ptr %n_trips, align 8, !dbg !424, !tbaa !194
  %cmp95.not.not = icmp slt i64 %i.0521, %27, !dbg !294
  br i1 %cmp95.not.not, label %for.body, label %for.end, !dbg !297, !llvm.loop !425

for.end:                                          ; preds = %if.end106, %if.end82
  %i.0.lcssa = phi i64 [ 1, %if.end82 ], [ %inc198, %if.end106 ], !dbg !427
  %actArc.0.lcssa = phi i64 [ 0, %if.end82 ], [ %inc195, %if.end106 ], !dbg !174
  %arc.0.lcssa = phi ptr [ %call69, %if.end82 ], [ %add.ptr197, %if.end106 ], !dbg !174
  %.lcssa = phi i64 [ %0, %if.end82 ], [ %27, %if.end106 ], !dbg !424
  %add200 = add nsw i64 %.lcssa, 1, !dbg !428
  %cmp201.not = icmp eq i64 %i.0.lcssa, %add200, !dbg !430
  br i1 %cmp201.not, label %for.cond205.preheader, label %cleanup, !dbg !431

for.cond205.preheader:                            ; preds = %for.end
  call void @llvm.dbg.value(metadata ptr %arc.0.lcssa, metadata !172, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i64 %actArc.0.lcssa, metadata !171, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i64 0, metadata !170, metadata !DIExpression()), !dbg !174
  %28 = load i64, ptr %m_org, align 8, !dbg !432, !tbaa !201
  %cmp207527 = icmp sgt i64 %28, 0, !dbg !435
  br i1 %cmp207527, label %for.body209, label %if.end264, !dbg !436

for.body209:                                      ; preds = %for.cond205.preheader, %if.end217
  %arc.1530 = phi ptr [ %add.ptr243, %if.end217 ], [ %arc.0.lcssa, %for.cond205.preheader ]
  %actArc.1529 = phi i64 [ %inc241, %if.end217 ], [ %actArc.0.lcssa, %for.cond205.preheader ]
  %i.1528 = phi i64 [ %inc239, %if.end217 ], [ 0, %for.cond205.preheader ]
  call void @llvm.dbg.value(metadata ptr %arc.1530, metadata !172, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i64 %actArc.1529, metadata !171, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i64 %i.1528, metadata !170, metadata !DIExpression()), !dbg !174
  %call211 = call ptr @fgets(ptr noundef nonnull %instring, i32 noundef 200, ptr noundef nonnull %call), !dbg !437
  call void @llvm.dbg.value(metadata ptr %t, metadata !167, metadata !DIExpression(DW_OP_deref)), !dbg !174
  call void @llvm.dbg.value(metadata ptr %h, metadata !168, metadata !DIExpression(DW_OP_deref)), !dbg !174
  call void @llvm.dbg.value(metadata ptr %c, metadata !169, metadata !DIExpression(DW_OP_deref)), !dbg !174
  %call213 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %instring, ptr noundef nonnull @.str.3, ptr noundef nonnull %t, ptr noundef nonnull %h, ptr noundef nonnull %c) #7, !dbg !439
  %cmp214.not = icmp eq i32 %call213, 3, !dbg !441
  br i1 %cmp214.not, label %if.end217, label %cleanup, !dbg !442

if.end217:                                        ; preds = %for.body209
  %conv218 = trunc i64 %actArc.1529 to i32, !dbg !443
  store i32 %conv218, ptr %arc.1530, align 8, !dbg !444, !tbaa !333
  %29 = load i64, ptr %t, align 8, !dbg !445, !tbaa !188
  call void @llvm.dbg.value(metadata i64 %29, metadata !167, metadata !DIExpression()), !dbg !174
  %30 = load i64, ptr %n_trips, align 8, !dbg !446, !tbaa !194
  %add221 = add nsw i64 %30, %29, !dbg !447
  %arrayidx222 = getelementptr inbounds %struct.node, ptr %call63, i64 %add221, !dbg !448
  %tail223 = getelementptr inbounds %struct.arc, ptr %arc.1530, i64 0, i32 2, !dbg !449
  store ptr %arrayidx222, ptr %tail223, align 8, !dbg !450, !tbaa !340
  %31 = load i64, ptr %h, align 8, !dbg !451, !tbaa !188
  call void @llvm.dbg.value(metadata i64 %31, metadata !168, metadata !DIExpression()), !dbg !174
  %arrayidx224 = getelementptr inbounds %struct.node, ptr %call63, i64 %31, !dbg !452
  %head225 = getelementptr inbounds %struct.arc, ptr %arc.1530, i64 0, i32 3, !dbg !453
  store ptr %arrayidx224, ptr %head225, align 8, !dbg !454, !tbaa !343
  %32 = load i64, ptr %c, align 8, !dbg !455, !tbaa !188
  call void @llvm.dbg.value(metadata i64 %32, metadata !169, metadata !DIExpression()), !dbg !174
  %org_cost226 = getelementptr inbounds %struct.arc, ptr %arc.1530, i64 0, i32 8, !dbg !456
  store i64 %32, ptr %org_cost226, align 8, !dbg !457, !tbaa !352
  %cost227 = getelementptr inbounds %struct.arc, ptr %arc.1530, i64 0, i32 1, !dbg !458
  store i64 %32, ptr %cost227, align 8, !dbg !459, !tbaa !349
  %firstout229 = getelementptr inbounds %struct.node, ptr %call63, i64 %add221, i32 7, !dbg !460
  %33 = load ptr, ptr %firstout229, align 8, !dbg !460, !tbaa !354
  %nextout230 = getelementptr inbounds %struct.arc, ptr %arc.1530, i64 0, i32 5, !dbg !461
  store ptr %33, ptr %nextout230, align 8, !dbg !462, !tbaa !357
  store ptr %arc.1530, ptr %firstout229, align 8, !dbg !463, !tbaa !354
  %firstin234 = getelementptr inbounds %struct.node, ptr %call63, i64 %31, i32 8, !dbg !464
  %34 = load ptr, ptr %firstin234, align 8, !dbg !464, !tbaa !360
  %nextin235 = getelementptr inbounds %struct.arc, ptr %arc.1530, i64 0, i32 6, !dbg !465
  store ptr %34, ptr %nextin235, align 8, !dbg !466, !tbaa !363
  store ptr %arc.1530, ptr %firstin234, align 8, !dbg !467, !tbaa !360
  %inc239 = add nuw nsw i64 %i.1528, 1, !dbg !468
  call void @llvm.dbg.value(metadata i64 %inc239, metadata !170, metadata !DIExpression()), !dbg !174
  %35 = load ptr, ptr %arcs, align 8, !dbg !469, !tbaa !273
  %inc241 = add nuw nsw i64 %actArc.1529, 1, !dbg !470
  call void @llvm.dbg.value(metadata i64 %inc241, metadata !171, metadata !DIExpression()), !dbg !174
  %call242 = call i64 @getArcPosition(ptr noundef nonnull %net, i64 noundef %inc241) #7, !dbg !471
  %add.ptr243 = getelementptr inbounds %struct.arc, ptr %35, i64 %call242, !dbg !472
  call void @llvm.dbg.value(metadata ptr %add.ptr243, metadata !172, metadata !DIExpression()), !dbg !174
  %36 = load i64, ptr %m_org, align 8, !dbg !432, !tbaa !201
  %cmp207 = icmp slt i64 %inc239, %36, !dbg !435
  br i1 %cmp207, label %for.body209, label %if.end264, !dbg !436, !llvm.loop !473

if.end264:                                        ; preds = %if.end217, %for.cond205.preheader
  call void @llvm.dbg.value(metadata ptr undef, metadata !172, metadata !DIExpression()), !dbg !174
  %call265 = call i32 @fclose(ptr noundef nonnull %call), !dbg !475
  %clustfile = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 1, !dbg !476
  store i8 0, ptr %clustfile, align 8, !dbg !477, !tbaa !478
  call void @llvm.dbg.value(metadata i64 1, metadata !170, metadata !DIExpression()), !dbg !174
  %37 = load i64, ptr %n_trips, align 8, !dbg !479, !tbaa !194
  %cmp269.not531 = icmp slt i64 %37, 1, !dbg !482
  br i1 %cmp269.not531, label %cleanup, label %for.body271.lr.ph, !dbg !483

for.body271.lr.ph:                                ; preds = %if.end264
  %bigM277 = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 18
  br label %for.body271, !dbg !483

for.body271:                                      ; preds = %for.body271.lr.ph, %for.body271
  %i.2532 = phi i64 [ 1, %for.body271.lr.ph ], [ %inc298, %for.body271 ]
  call void @llvm.dbg.value(metadata i64 %i.2532, metadata !170, metadata !DIExpression()), !dbg !174
  %38 = load ptr, ptr %arcs, align 8, !dbg !484, !tbaa !273
  %mul273 = mul nuw nsw i64 %i.2532, 3, !dbg !486
  %sub274 = add nsw i64 %mul273, -1, !dbg !487
  %call275 = call i64 @getArcPosition(ptr noundef nonnull %net, i64 noundef %sub274) #7, !dbg !488
  call void @llvm.dbg.value(metadata !DIArgList(ptr %38, i64 %call275), metadata !172, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !174
  %39 = load i64, ptr %bigM277, align 8, !dbg !489, !tbaa !345
  %40 = call i64 @llvm.smax.i64(i64 %39, i64 10000000), !dbg !489
  %mul285 = mul nsw i64 %40, -2, !dbg !490
  %cost286 = getelementptr inbounds %struct.arc, ptr %38, i64 %call275, i32 1, !dbg !491
  store i64 %mul285, ptr %cost286, align 8, !dbg !492, !tbaa !349
  %org_cost296 = getelementptr inbounds %struct.arc, ptr %38, i64 %call275, i32 8, !dbg !493
  store i64 %mul285, ptr %org_cost296, align 8, !dbg !494, !tbaa !352
  %inc298 = add nuw nsw i64 %i.2532, 1, !dbg !495
  call void @llvm.dbg.value(metadata i64 %inc298, metadata !170, metadata !DIExpression()), !dbg !174
  %41 = load i64, ptr %n_trips, align 8, !dbg !479, !tbaa !194
  %cmp269.not.not = icmp slt i64 %i.2532, %41, !dbg !482
  br i1 %cmp269.not.not, label %for.body271, label %cleanup, !dbg !483, !llvm.loop !496

cleanup:                                          ; preds = %for.body, %lor.lhs.false, %for.body209, %for.body271, %if.end264, %for.end, %if.end, %entry, %if.then79
  %retval.0 = phi i64 [ -1, %if.then79 ], [ -1, %entry ], [ -1, %if.end ], [ -1, %for.end ], [ 0, %if.end264 ], [ 0, %for.body271 ], [ -1, %for.body209 ], [ -1, %lor.lhs.false ], [ -1, %for.body ], !dbg !174
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %c) #7, !dbg !498
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %h) #7, !dbg !498
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %t) #7, !dbg !498
  call void @llvm.lifetime.end.p0(i64 201, ptr nonnull %instring) #7, !dbg !498
  ret i64 %retval.0, !dbg !498
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !499 noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !506 i64 @getfree(ptr noundef) local_unnamed_addr #5

declare !dbg !508 i64 @getArcPosition(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !511 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/505.mcf_r/src/readmin.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/505.mcf_r", checksumkind: CSK_MD5, checksum: "009a0b0dfaea49fc7aabb55c6f98e6ab")
!2 = !{!3, !4, !9, !10, !48, !39, !16, !50}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !5, line: 27, baseType: !6)
!5 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !7, line: 44, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!8 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_t", file: !12, line: 134, baseType: !13)
!12 = !DIFile(filename: "apps/505.mcf_r/src/defines.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "05eeb7bba098b08025cbe048b289d372")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "node", file: !12, line: 149, size: 832, elements: !14)
!14 = !{!15, !17, !19, !22, !23, !24, !25, !41, !42, !43, !44, !45, !46, !47}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "potential", scope: !13, file: !12, line: 151, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "cost_t", file: !12, line: 98, baseType: !4)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !13, file: !12, line: 152, baseType: !18, size: 32, offset: 64)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !13, file: !12, line: 153, baseType: !20, size: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_p", file: !12, line: 135, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "pred", scope: !13, file: !12, line: 154, baseType: !20, size: 64, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !13, file: !12, line: 155, baseType: !20, size: 64, offset: 256)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_prev", scope: !13, file: !12, line: 156, baseType: !20, size: 64, offset: 320)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "basic_arc", scope: !13, file: !12, line: 157, baseType: !26, size: 64, offset: 384)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc_p", file: !12, line: 138, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arc", file: !12, line: 168, size: 576, elements: !29)
!29 = !{!30, !31, !32, !33, !34, !36, !37, !38, !40}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !28, file: !12, line: 170, baseType: !18, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !28, file: !12, line: 171, baseType: !16, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !28, file: !12, line: 172, baseType: !20, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !28, file: !12, line: 172, baseType: !20, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !28, file: !12, line: 173, baseType: !35, size: 16, offset: 256)
!35 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "nextout", scope: !28, file: !12, line: 174, baseType: !26, size: 64, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "nextin", scope: !28, file: !12, line: 174, baseType: !26, size: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !28, file: !12, line: 175, baseType: !39, size: 64, offset: 448)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "flow_t", file: !12, line: 97, baseType: !4)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "org_cost", scope: !28, file: !12, line: 176, baseType: !16, size: 64, offset: 512)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "firstout", scope: !13, file: !12, line: 158, baseType: !26, size: 64, offset: 448)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "firstin", scope: !13, file: !12, line: 158, baseType: !26, size: 64, offset: 512)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "arc_tmp", scope: !13, file: !12, line: 159, baseType: !26, size: 64, offset: 576)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !13, file: !12, line: 160, baseType: !39, size: 64, offset: 640)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !13, file: !12, line: 161, baseType: !4, size: 64, offset: 704)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !13, file: !12, line: 162, baseType: !18, size: 32, offset: 768)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !13, file: !12, line: 163, baseType: !18, size: 32, offset: 800)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc_t", file: !12, line: 137, baseType: !28)
!50 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!51 = !{i32 7, !"Dwarf Version", i32 5}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = !{i32 7, !"PIC Level", i32 2}
!55 = !{i32 7, !"PIE Level", i32 2}
!56 = !{i32 7, !"uwtable", i32 2}
!57 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!58 = distinct !DISubprogram(name: "read_min", scope: !59, file: !59, line: 27, type: !60, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !102)
!59 = !DIFile(filename: "apps/505.mcf_r/src/readmin.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "009a0b0dfaea49fc7aabb55c6f98e6ab")
!60 = !DISubroutineType(types: !61)
!61 = !{!4, !62}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "network_t", file: !12, line: 206, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "network", file: !12, line: 181, size: 5184, elements: !65)
!65 = !{!66, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "inputfile", scope: !64, file: !12, line: 183, baseType: !67, size: 1600)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 1600, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 200)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "clustfile", scope: !64, file: !12, line: 184, baseType: !67, size: 1600, offset: 1600)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !64, file: !12, line: 185, baseType: !4, size: 64, offset: 3200)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "n_trips", scope: !64, file: !12, line: 185, baseType: !4, size: 64, offset: 3264)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "max_m", scope: !64, file: !12, line: 186, baseType: !4, size: 64, offset: 3328)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !64, file: !12, line: 186, baseType: !4, size: 64, offset: 3392)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "m_org", scope: !64, file: !12, line: 186, baseType: !4, size: 64, offset: 3456)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "m_impl", scope: !64, file: !12, line: 186, baseType: !4, size: 64, offset: 3520)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "max_residual_new_m", scope: !64, file: !12, line: 187, baseType: !4, size: 64, offset: 3584)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "max_new_m", scope: !64, file: !12, line: 187, baseType: !4, size: 64, offset: 3648)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "primal_unbounded", scope: !64, file: !12, line: 189, baseType: !4, size: 64, offset: 3712)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "dual_unbounded", scope: !64, file: !12, line: 190, baseType: !4, size: 64, offset: 3776)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "perturbed", scope: !64, file: !12, line: 191, baseType: !4, size: 64, offset: 3840)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "feasible", scope: !64, file: !12, line: 192, baseType: !4, size: 64, offset: 3904)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "eps", scope: !64, file: !12, line: 193, baseType: !4, size: 64, offset: 3968)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "opt_tol", scope: !64, file: !12, line: 194, baseType: !4, size: 64, offset: 4032)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "feas_tol", scope: !64, file: !12, line: 195, baseType: !4, size: 64, offset: 4096)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "pert_val", scope: !64, file: !12, line: 196, baseType: !4, size: 64, offset: 4160)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "bigM", scope: !64, file: !12, line: 197, baseType: !4, size: 64, offset: 4224)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "optcost", scope: !64, file: !12, line: 198, baseType: !9, size: 64, offset: 4288)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_impl", scope: !64, file: !12, line: 199, baseType: !16, size: 64, offset: 4352)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !64, file: !12, line: 200, baseType: !20, size: 64, offset: 4416)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "stop_nodes", scope: !64, file: !12, line: 200, baseType: !20, size: 64, offset: 4480)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "arcs", scope: !64, file: !12, line: 201, baseType: !26, size: 64, offset: 4544)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arcs", scope: !64, file: !12, line: 201, baseType: !26, size: 64, offset: 4608)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "sorted_arcs", scope: !64, file: !12, line: 201, baseType: !26, size: 64, offset: 4672)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_arcs", scope: !64, file: !12, line: 202, baseType: !26, size: 64, offset: 4736)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "stop_dummy", scope: !64, file: !12, line: 202, baseType: !26, size: 64, offset: 4800)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !64, file: !12, line: 203, baseType: !4, size: 64, offset: 4864)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "bound_exchanges", scope: !64, file: !12, line: 204, baseType: !4, size: 64, offset: 4928)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "nr_group", scope: !64, file: !12, line: 205, baseType: !4, size: 64, offset: 4992)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "full_groups", scope: !64, file: !12, line: 205, baseType: !4, size: 64, offset: 5056)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "max_elems", scope: !64, file: !12, line: 205, baseType: !4, size: 64, offset: 5120)
!102 = !{!103, !104, !163, !167, !168, !169, !170, !171, !172, !173}
!103 = !DILocalVariable(name: "net", arg: 1, scope: !58, file: !59, line: 27, type: !62)
!104 = !DILocalVariable(name: "in", scope: !58, file: !59, line: 33, type: !105)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !107, line: 7, baseType: !108)
!107 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !109, line: 49, size: 1728, elements: !110)
!109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!110 = !{!111, !112, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !127, !129, !130, !131, !133, !135, !137, !141, !144, !146, !149, !152, !153, !154, !158, !159}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !108, file: !109, line: 51, baseType: !18, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !108, file: !109, line: 54, baseType: !113, size: 64, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !108, file: !109, line: 55, baseType: !113, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !108, file: !109, line: 56, baseType: !113, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !108, file: !109, line: 57, baseType: !113, size: 64, offset: 256)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !108, file: !109, line: 58, baseType: !113, size: 64, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !108, file: !109, line: 59, baseType: !113, size: 64, offset: 384)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !108, file: !109, line: 60, baseType: !113, size: 64, offset: 448)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !108, file: !109, line: 61, baseType: !113, size: 64, offset: 512)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !108, file: !109, line: 64, baseType: !113, size: 64, offset: 576)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !108, file: !109, line: 65, baseType: !113, size: 64, offset: 640)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !108, file: !109, line: 66, baseType: !113, size: 64, offset: 704)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !108, file: !109, line: 68, baseType: !125, size: 64, offset: 768)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !109, line: 36, flags: DIFlagFwdDecl)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !108, file: !109, line: 70, baseType: !128, size: 64, offset: 832)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !108, file: !109, line: 72, baseType: !18, size: 32, offset: 896)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !108, file: !109, line: 73, baseType: !18, size: 32, offset: 928)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !108, file: !109, line: 74, baseType: !132, size: 64, offset: 960)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !7, line: 152, baseType: !8)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !108, file: !109, line: 77, baseType: !134, size: 16, offset: 1024)
!134 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !108, file: !109, line: 78, baseType: !136, size: 8, offset: 1040)
!136 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !108, file: !109, line: 79, baseType: !138, size: 8, offset: 1048)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 8, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 1)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !108, file: !109, line: 81, baseType: !142, size: 64, offset: 1088)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !109, line: 43, baseType: null)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !108, file: !109, line: 89, baseType: !145, size: 64, offset: 1152)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !7, line: 153, baseType: !8)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !108, file: !109, line: 91, baseType: !147, size: 64, offset: 1216)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !109, line: 37, flags: DIFlagFwdDecl)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !108, file: !109, line: 92, baseType: !150, size: 64, offset: 1280)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !109, line: 38, flags: DIFlagFwdDecl)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !108, file: !109, line: 93, baseType: !128, size: 64, offset: 1344)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !108, file: !109, line: 94, baseType: !3, size: 64, offset: 1408)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !108, file: !109, line: 95, baseType: !155, size: 64, offset: 1472)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !156, line: 46, baseType: !157)
!156 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!157 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !108, file: !109, line: 96, baseType: !18, size: 32, offset: 1536)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !108, file: !109, line: 98, baseType: !160, size: 160, offset: 1568)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 160, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 20)
!163 = !DILocalVariable(name: "instring", scope: !58, file: !59, line: 34, type: !164)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 1608, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 201)
!167 = !DILocalVariable(name: "t", scope: !58, file: !59, line: 35, type: !4)
!168 = !DILocalVariable(name: "h", scope: !58, file: !59, line: 35, type: !4)
!169 = !DILocalVariable(name: "c", scope: !58, file: !59, line: 35, type: !4)
!170 = !DILocalVariable(name: "i", scope: !58, file: !59, line: 36, type: !4)
!171 = !DILocalVariable(name: "actArc", scope: !58, file: !59, line: 36, type: !4)
!172 = !DILocalVariable(name: "arc", scope: !58, file: !59, line: 37, type: !48)
!173 = !DILocalVariable(name: "node", scope: !58, file: !59, line: 38, type: !10)
!174 = !DILocation(line: 0, scope: !58)
!175 = !DILocation(line: 34, column: 5, scope: !58)
!176 = !DILocation(line: 34, column: 10, scope: !58)
!177 = !DILocation(line: 35, column: 5, scope: !58)
!178 = !DILocation(line: 41, column: 15, scope: !179)
!179 = distinct !DILexicalBlock(scope: !58, file: !59, line: 41, column: 8)
!180 = !DILocation(line: 41, column: 44, scope: !179)
!181 = !DILocation(line: 41, column: 8, scope: !58)
!182 = !DILocation(line: 44, column: 5, scope: !58)
!183 = !DILocation(line: 46, column: 9, scope: !184)
!184 = distinct !DILexicalBlock(scope: !58, file: !59, line: 46, column: 9)
!185 = !DILocation(line: 46, column: 61, scope: !184)
!186 = !DILocation(line: 46, column: 9, scope: !58)
!187 = !DILocation(line: 53, column: 20, scope: !58)
!188 = !{!189, !189, i64 0}
!189 = !{!"long", !190, i64 0}
!190 = !{!"omnipotent char", !191, i64 0}
!191 = !{!"Simple C/C++ TBAA"}
!192 = !DILocation(line: 53, column: 10, scope: !58)
!193 = !DILocation(line: 53, column: 18, scope: !58)
!194 = !{!195, !189, i64 408}
!195 = !{!"network", !190, i64 0, !190, i64 200, !189, i64 400, !189, i64 408, !189, i64 416, !189, i64 424, !189, i64 432, !189, i64 440, !189, i64 448, !189, i64 456, !189, i64 464, !189, i64 472, !189, i64 480, !189, i64 488, !189, i64 496, !189, i64 504, !189, i64 512, !189, i64 520, !189, i64 528, !196, i64 536, !189, i64 544, !197, i64 552, !197, i64 560, !197, i64 568, !197, i64 576, !197, i64 584, !197, i64 592, !197, i64 600, !189, i64 608, !189, i64 616, !189, i64 624, !189, i64 632, !189, i64 640}
!196 = !{!"double", !190, i64 0}
!197 = !{!"any pointer", !190, i64 0}
!198 = !DILocation(line: 54, column: 18, scope: !58)
!199 = !DILocation(line: 54, column: 10, scope: !58)
!200 = !DILocation(line: 54, column: 16, scope: !58)
!201 = !{!195, !189, i64 432}
!202 = !DILocation(line: 55, column: 16, scope: !58)
!203 = !DILocation(line: 55, column: 18, scope: !58)
!204 = !DILocation(line: 55, column: 10, scope: !58)
!205 = !DILocation(line: 55, column: 12, scope: !58)
!206 = !{!195, !189, i64 400}
!207 = !DILocation(line: 56, column: 18, scope: !58)
!208 = !DILocation(line: 56, column: 20, scope: !58)
!209 = !DILocation(line: 56, column: 10, scope: !58)
!210 = !DILocation(line: 56, column: 12, scope: !58)
!211 = !{!195, !189, i64 424}
!212 = !DILocation(line: 58, column: 10, scope: !58)
!213 = !DILocation(line: 58, column: 20, scope: !58)
!214 = !{!195, !189, i64 640}
!215 = !DILocation(line: 59, column: 31, scope: !58)
!216 = !DILocation(line: 59, column: 35, scope: !58)
!217 = !DILocation(line: 59, column: 41, scope: !58)
!218 = !DILocation(line: 59, column: 10, scope: !58)
!219 = !DILocation(line: 59, column: 19, scope: !58)
!220 = !{!195, !189, i64 624}
!221 = !DILocation(line: 60, column: 16, scope: !222)
!222 = distinct !DILexicalBlock(scope: !58, file: !59, line: 60, column: 9)
!223 = !DILocation(line: 60, column: 20, scope: !222)
!224 = !DILocation(line: 60, column: 9, scope: !58)
!225 = !DILocation(line: 61, column: 47, scope: !222)
!226 = !DILocation(line: 61, column: 42, scope: !222)
!227 = !DILocation(line: 61, column: 9, scope: !222)
!228 = !DILocation(line: 0, scope: !222)
!229 = !DILocation(line: 63, column: 11, scope: !222)
!230 = !DILocation(line: 63, column: 23, scope: !222)
!231 = !DILocation(line: 64, column: 27, scope: !58)
!232 = !DILocation(line: 64, column: 3, scope: !58)
!233 = !DILocation(line: 65, column: 38, scope: !234)
!234 = distinct !DILexicalBlock(scope: !58, file: !59, line: 64, column: 32)
!235 = !DILocation(line: 66, column: 19, scope: !234)
!236 = distinct !{!236, !232, !237, !238, !239}
!237 = !DILocation(line: 67, column: 3, scope: !58)
!238 = !{!"llvm.loop.mustprogress"}
!239 = !{!"llvm.loop.unroll.disable"}
!240 = !DILocation(line: 65, column: 22, scope: !234)
!241 = !{!195, !189, i64 632}
!242 = !DILocation(line: 69, column: 22, scope: !243)
!243 = distinct !DILexicalBlock(scope: !58, file: !59, line: 69, column: 9)
!244 = !DILocation(line: 69, column: 9, scope: !58)
!245 = !DILocation(line: 73, column: 12, scope: !246)
!246 = distinct !DILexicalBlock(scope: !243, file: !59, line: 70, column: 5)
!247 = !DILocation(line: 73, column: 31, scope: !246)
!248 = !{!195, !189, i64 448}
!249 = !DILocation(line: 75, column: 5, scope: !246)
!250 = !DILocation(line: 78, column: 20, scope: !251)
!251 = distinct !DILexicalBlock(scope: !243, file: !59, line: 77, column: 5)
!252 = !DILocation(line: 0, scope: !243)
!253 = !DILocation(line: 71, column: 12, scope: !246)
!254 = !DILocation(line: 71, column: 18, scope: !246)
!255 = !DILocation(line: 72, column: 12, scope: !246)
!256 = !DILocation(line: 72, column: 22, scope: !246)
!257 = !DILocation(line: 87, column: 49, scope: !58)
!258 = !DILocation(line: 87, column: 34, scope: !58)
!259 = !DILocation(line: 87, column: 10, scope: !58)
!260 = !DILocation(line: 87, column: 21, scope: !58)
!261 = !{!195, !197, i64 552}
!262 = !DILocation(line: 88, column: 34, scope: !58)
!263 = !DILocation(line: 88, column: 10, scope: !58)
!264 = !DILocation(line: 88, column: 21, scope: !58)
!265 = !{!195, !197, i64 592}
!266 = !DILocation(line: 89, column: 36, scope: !58)
!267 = !DILocation(line: 89, column: 10, scope: !58)
!268 = !DILocation(line: 89, column: 23, scope: !58)
!269 = !{!195, !197, i64 584}
!270 = !DILocation(line: 90, column: 34, scope: !58)
!271 = !DILocation(line: 90, column: 10, scope: !58)
!272 = !DILocation(line: 90, column: 21, scope: !58)
!273 = !{!195, !197, i64 568}
!274 = !DILocation(line: 92, column: 12, scope: !275)
!275 = distinct !DILexicalBlock(scope: !58, file: !59, line: 92, column: 9)
!276 = !DILocation(line: 92, column: 23, scope: !275)
!277 = !DILocation(line: 94, column: 7, scope: !278)
!278 = distinct !DILexicalBlock(scope: !275, file: !59, line: 93, column: 5)
!279 = !DILocation(line: 95, column: 7, scope: !278)
!280 = !DILocation(line: 96, column: 7, scope: !278)
!281 = !DILocation(line: 118, column: 34, scope: !58)
!282 = !DILocation(line: 118, column: 43, scope: !58)
!283 = !DILocation(line: 118, column: 10, scope: !58)
!284 = !DILocation(line: 118, column: 21, scope: !58)
!285 = !{!195, !197, i64 560}
!286 = !DILocation(line: 119, column: 33, scope: !58)
!287 = !DILocation(line: 119, column: 10, scope: !58)
!288 = !DILocation(line: 119, column: 21, scope: !58)
!289 = !{!195, !197, i64 576}
!290 = !DILocation(line: 120, column: 39, scope: !58)
!291 = !DILocation(line: 120, column: 10, scope: !58)
!292 = !DILocation(line: 120, column: 21, scope: !58)
!293 = !{!195, !197, i64 600}
!294 = !DILocation(line: 127, column: 19, scope: !295)
!295 = distinct !DILexicalBlock(scope: !296, file: !59, line: 127, column: 5)
!296 = distinct !DILexicalBlock(scope: !58, file: !59, line: 127, column: 5)
!297 = !DILocation(line: 127, column: 5, scope: !296)
!298 = !DILocation(line: 129, column: 9, scope: !299)
!299 = distinct !DILexicalBlock(scope: !295, file: !59, line: 128, column: 5)
!300 = !DILocation(line: 131, column: 13, scope: !301)
!301 = distinct !DILexicalBlock(scope: !299, file: !59, line: 131, column: 13)
!302 = !DILocation(line: 131, column: 65, scope: !301)
!303 = !DILocation(line: 131, column: 70, scope: !301)
!304 = !DILocation(line: 131, column: 73, scope: !301)
!305 = !DILocation(line: 131, column: 77, scope: !301)
!306 = !DILocation(line: 131, column: 75, scope: !301)
!307 = !DILocation(line: 131, column: 13, scope: !299)
!308 = !DILocation(line: 137, column: 26, scope: !299)
!309 = !DILocation(line: 137, column: 9, scope: !299)
!310 = !DILocation(line: 137, column: 17, scope: !299)
!311 = !DILocation(line: 137, column: 24, scope: !299)
!312 = !{!313, !314, i64 96}
!313 = !{!"node", !189, i64 0, !314, i64 8, !197, i64 16, !197, i64 24, !197, i64 32, !197, i64 40, !197, i64 48, !197, i64 56, !197, i64 64, !197, i64 72, !189, i64 80, !189, i64 88, !314, i64 96, !314, i64 100}
!314 = !{!"int", !190, i64 0}
!315 = !DILocation(line: 138, column: 17, scope: !299)
!316 = !DILocation(line: 138, column: 22, scope: !299)
!317 = !{!313, !189, i64 80}
!318 = !DILocation(line: 140, column: 21, scope: !299)
!319 = !DILocation(line: 140, column: 15, scope: !299)
!320 = !DILocation(line: 140, column: 30, scope: !299)
!321 = !DILocation(line: 140, column: 37, scope: !299)
!322 = !DILocation(line: 141, column: 30, scope: !299)
!323 = !DILocation(line: 141, column: 35, scope: !299)
!324 = !DILocation(line: 143, column: 24, scope: !299)
!325 = !DILocation(line: 143, column: 17, scope: !299)
!326 = !DILocation(line: 143, column: 22, scope: !299)
!327 = !{!313, !314, i64 100}
!328 = !DILocation(line: 144, column: 37, scope: !299)
!329 = !DILocation(line: 144, column: 30, scope: !299)
!330 = !DILocation(line: 144, column: 35, scope: !299)
!331 = !DILocation(line: 146, column: 19, scope: !299)
!332 = !DILocation(line: 146, column: 17, scope: !299)
!333 = !{!334, !314, i64 0}
!334 = !{!"arc", !314, i64 0, !189, i64 8, !197, i64 16, !197, i64 24, !335, i64 32, !197, i64 40, !197, i64 48, !189, i64 56, !189, i64 64}
!335 = !{!"short", !190, i64 0}
!336 = !DILocation(line: 147, column: 33, scope: !299)
!337 = !DILocation(line: 147, column: 23, scope: !299)
!338 = !DILocation(line: 147, column: 14, scope: !299)
!339 = !DILocation(line: 147, column: 19, scope: !299)
!340 = !{!334, !197, i64 16}
!341 = !DILocation(line: 148, column: 14, scope: !299)
!342 = !DILocation(line: 148, column: 19, scope: !299)
!343 = !{!334, !197, i64 24}
!344 = !DILocation(line: 149, column: 51, scope: !299)
!345 = !{!195, !189, i64 528}
!346 = !DILocation(line: 149, column: 55, scope: !299)
!347 = !DILocation(line: 149, column: 30, scope: !299)
!348 = !DILocation(line: 149, column: 35, scope: !299)
!349 = !{!334, !189, i64 8}
!350 = !DILocation(line: 149, column: 14, scope: !299)
!351 = !DILocation(line: 149, column: 23, scope: !299)
!352 = !{!334, !189, i64 64}
!353 = !DILocation(line: 150, column: 35, scope: !299)
!354 = !{!313, !197, i64 56}
!355 = !DILocation(line: 150, column: 14, scope: !299)
!356 = !DILocation(line: 150, column: 22, scope: !299)
!357 = !{!334, !197, i64 40}
!358 = !DILocation(line: 151, column: 29, scope: !299)
!359 = !DILocation(line: 152, column: 34, scope: !299)
!360 = !{!313, !197, i64 64}
!361 = !DILocation(line: 152, column: 14, scope: !299)
!362 = !DILocation(line: 152, column: 21, scope: !299)
!363 = !{!334, !197, i64 48}
!364 = !DILocation(line: 153, column: 28, scope: !299)
!365 = !DILocation(line: 154, column: 20, scope: !299)
!366 = !DILocation(line: 154, column: 47, scope: !299)
!367 = !DILocation(line: 154, column: 27, scope: !299)
!368 = !DILocation(line: 154, column: 25, scope: !299)
!369 = !DILocation(line: 156, column: 19, scope: !299)
!370 = !DILocation(line: 156, column: 17, scope: !299)
!371 = !DILocation(line: 157, column: 35, scope: !299)
!372 = !DILocation(line: 157, column: 29, scope: !299)
!373 = !DILocation(line: 157, column: 23, scope: !299)
!374 = !DILocation(line: 157, column: 14, scope: !299)
!375 = !DILocation(line: 157, column: 19, scope: !299)
!376 = !DILocation(line: 158, column: 33, scope: !299)
!377 = !DILocation(line: 158, column: 23, scope: !299)
!378 = !DILocation(line: 158, column: 14, scope: !299)
!379 = !DILocation(line: 158, column: 19, scope: !299)
!380 = !DILocation(line: 159, column: 30, scope: !299)
!381 = !DILocation(line: 159, column: 35, scope: !299)
!382 = !DILocation(line: 159, column: 14, scope: !299)
!383 = !DILocation(line: 159, column: 23, scope: !299)
!384 = !DILocation(line: 160, column: 35, scope: !299)
!385 = !DILocation(line: 160, column: 14, scope: !299)
!386 = !DILocation(line: 160, column: 22, scope: !299)
!387 = !DILocation(line: 161, column: 29, scope: !299)
!388 = !DILocation(line: 162, column: 34, scope: !299)
!389 = !DILocation(line: 162, column: 14, scope: !299)
!390 = !DILocation(line: 162, column: 21, scope: !299)
!391 = !DILocation(line: 163, column: 28, scope: !299)
!392 = !DILocation(line: 164, column: 20, scope: !299)
!393 = !DILocation(line: 164, column: 47, scope: !299)
!394 = !DILocation(line: 164, column: 27, scope: !299)
!395 = !DILocation(line: 164, column: 25, scope: !299)
!396 = !DILocation(line: 166, column: 19, scope: !299)
!397 = !DILocation(line: 166, column: 17, scope: !299)
!398 = !DILocation(line: 167, column: 14, scope: !299)
!399 = !DILocation(line: 167, column: 19, scope: !299)
!400 = !DILocation(line: 168, column: 35, scope: !299)
!401 = !DILocation(line: 168, column: 29, scope: !299)
!402 = !DILocation(line: 168, column: 23, scope: !299)
!403 = !DILocation(line: 168, column: 14, scope: !299)
!404 = !DILocation(line: 168, column: 19, scope: !299)
!405 = !DILocation(line: 169, column: 48, scope: !299)
!406 = !DILocation(line: 169, column: 47, scope: !299)
!407 = !DILocation(line: 169, column: 30, scope: !299)
!408 = !DILocation(line: 169, column: 35, scope: !299)
!409 = !DILocation(line: 169, column: 14, scope: !299)
!410 = !DILocation(line: 169, column: 23, scope: !299)
!411 = !DILocation(line: 170, column: 35, scope: !299)
!412 = !DILocation(line: 170, column: 14, scope: !299)
!413 = !DILocation(line: 170, column: 22, scope: !299)
!414 = !DILocation(line: 171, column: 29, scope: !299)
!415 = !DILocation(line: 172, column: 34, scope: !299)
!416 = !DILocation(line: 172, column: 14, scope: !299)
!417 = !DILocation(line: 172, column: 21, scope: !299)
!418 = !DILocation(line: 173, column: 28, scope: !299)
!419 = !DILocation(line: 174, column: 20, scope: !299)
!420 = !DILocation(line: 174, column: 47, scope: !299)
!421 = !DILocation(line: 174, column: 27, scope: !299)
!422 = !DILocation(line: 174, column: 25, scope: !299)
!423 = !DILocation(line: 127, column: 37, scope: !295)
!424 = !DILocation(line: 127, column: 27, scope: !295)
!425 = distinct !{!425, !297, !426, !238, !239}
!426 = !DILocation(line: 175, column: 5, scope: !296)
!427 = !DILocation(line: 0, scope: !296)
!428 = !DILocation(line: 177, column: 27, scope: !429)
!429 = distinct !DILexicalBlock(scope: !58, file: !59, line: 177, column: 9)
!430 = !DILocation(line: 177, column: 11, scope: !429)
!431 = !DILocation(line: 177, column: 9, scope: !58)
!432 = !DILocation(line: 181, column: 26, scope: !433)
!433 = distinct !DILexicalBlock(scope: !434, file: !59, line: 181, column: 5)
!434 = distinct !DILexicalBlock(scope: !58, file: !59, line: 181, column: 5)
!435 = !DILocation(line: 181, column: 19, scope: !433)
!436 = !DILocation(line: 181, column: 5, scope: !434)
!437 = !DILocation(line: 183, column: 9, scope: !438)
!438 = distinct !DILexicalBlock(scope: !433, file: !59, line: 182, column: 5)
!439 = !DILocation(line: 186, column: 13, scope: !440)
!440 = distinct !DILexicalBlock(scope: !438, file: !59, line: 186, column: 13)
!441 = !DILocation(line: 186, column: 81, scope: !440)
!442 = !DILocation(line: 186, column: 13, scope: !438)
!443 = !DILocation(line: 192, column: 19, scope: !438)
!444 = !DILocation(line: 192, column: 17, scope: !438)
!445 = !DILocation(line: 193, column: 28, scope: !438)
!446 = !DILocation(line: 193, column: 35, scope: !438)
!447 = !DILocation(line: 193, column: 29, scope: !438)
!448 = !DILocation(line: 193, column: 23, scope: !438)
!449 = !DILocation(line: 193, column: 14, scope: !438)
!450 = !DILocation(line: 193, column: 19, scope: !438)
!451 = !DILocation(line: 194, column: 28, scope: !438)
!452 = !DILocation(line: 194, column: 23, scope: !438)
!453 = !DILocation(line: 194, column: 14, scope: !438)
!454 = !DILocation(line: 194, column: 19, scope: !438)
!455 = !DILocation(line: 195, column: 33, scope: !438)
!456 = !DILocation(line: 195, column: 14, scope: !438)
!457 = !DILocation(line: 195, column: 23, scope: !438)
!458 = !DILocation(line: 196, column: 14, scope: !438)
!459 = !DILocation(line: 196, column: 19, scope: !438)
!460 = !DILocation(line: 197, column: 35, scope: !438)
!461 = !DILocation(line: 197, column: 14, scope: !438)
!462 = !DILocation(line: 197, column: 22, scope: !438)
!463 = !DILocation(line: 198, column: 29, scope: !438)
!464 = !DILocation(line: 199, column: 34, scope: !438)
!465 = !DILocation(line: 199, column: 14, scope: !438)
!466 = !DILocation(line: 199, column: 21, scope: !438)
!467 = !DILocation(line: 200, column: 28, scope: !438)
!468 = !DILocation(line: 181, column: 34, scope: !433)
!469 = !DILocation(line: 181, column: 49, scope: !433)
!470 = !DILocation(line: 181, column: 76, scope: !433)
!471 = !DILocation(line: 181, column: 56, scope: !433)
!472 = !DILocation(line: 181, column: 54, scope: !433)
!473 = distinct !{!473, !436, !474, !238, !239}
!474 = !DILocation(line: 201, column: 5, scope: !434)
!475 = !DILocation(line: 213, column: 5, scope: !58)
!476 = !DILocation(line: 225, column: 10, scope: !58)
!477 = !DILocation(line: 225, column: 23, scope: !58)
!478 = !{!190, !190, i64 0}
!479 = !DILocation(line: 226, column: 27, scope: !480)
!480 = distinct !DILexicalBlock(scope: !481, file: !59, line: 226, column: 5)
!481 = distinct !DILexicalBlock(scope: !58, file: !59, line: 226, column: 5)
!482 = !DILocation(line: 226, column: 19, scope: !480)
!483 = !DILocation(line: 226, column: 5, scope: !481)
!484 = !DILocation(line: 228, column: 18, scope: !485)
!485 = distinct !DILexicalBlock(scope: !480, file: !59, line: 227, column: 5)
!486 = !DILocation(line: 228, column: 47, scope: !485)
!487 = !DILocation(line: 228, column: 51, scope: !485)
!488 = !DILocation(line: 228, column: 25, scope: !485)
!489 = !DILocation(line: 230, column: 31, scope: !485)
!490 = !DILocation(line: 230, column: 30, scope: !485)
!491 = !DILocation(line: 229, column: 12, scope: !485)
!492 = !DILocation(line: 229, column: 17, scope: !485)
!493 = !DILocation(line: 231, column: 12, scope: !485)
!494 = !DILocation(line: 231, column: 21, scope: !485)
!495 = !DILocation(line: 226, column: 37, scope: !480)
!496 = distinct !{!496, !483, !497, !238, !239}
!497 = !DILocation(line: 233, column: 5, scope: !481)
!498 = !DILocation(line: 236, column: 1, scope: !58)
!499 = !DISubprogram(name: "fgets", scope: !500, file: !500, line: 564, type: !501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !505)
!500 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!501 = !DISubroutineType(types: !502)
!502 = !{!113, !503, !18, !504}
!503 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !113)
!504 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !105)
!505 = !{}
!506 = !DISubprogram(name: "getfree", scope: !507, file: !507, line: 36, type: !60, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !505)
!507 = !DIFile(filename: "apps/505.mcf_r/src/mcfutil.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "6fade418d230c2d9d39deb67b05e3ee3")
!508 = !DISubprogram(name: "getArcPosition", scope: !507, file: !507, line: 37, type: !509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !505)
!509 = !DISubroutineType(types: !510)
!510 = !{!4, !62, !4}
!511 = !DISubprogram(name: "fclose", scope: !500, file: !500, line: 213, type: !512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !505)
!512 = !DISubroutineType(types: !513)
!513 = !{!18, !105}
