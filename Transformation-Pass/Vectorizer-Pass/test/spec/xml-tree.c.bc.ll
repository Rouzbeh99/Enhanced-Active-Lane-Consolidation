; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/xml-tree.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/xml-tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._XMLTreeInfo = type { ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, i32, ptr, i64 }
%struct._XMLTreeRoot = type { %struct._XMLTreeInfo, ptr, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }

@sentinel = internal global [1 x ptr] zeroinitializer, align 8, !dbg !0
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [87 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/xml-tree.c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"<base64>\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"</base64>\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"&#xA;\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"&#x9;\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"&#xD;\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"ParseError\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"root tag missing\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"UTF16 to UTF8 failed\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"\09\0D\0A />\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"\09\0D\0A =/>\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"\09\0D\0A =\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"missing %c\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"missing >\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"\09\0D\0A >\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"\09\0D\0A \00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"!--\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"unclosed <!--\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"![CDATA[\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"]]>\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"unclosed <![CDATA[\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"!DOCTYPE\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"[]>\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"unclosed <!DOCTYPE\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"unclosed <?\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"unexpected <\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"unclosed tag: `%s'\00", align 1
@NewXMLTreeTag.predefined_entities = internal global [11 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr null], align 16, !dbg !206
@.str.37 = private unnamed_addr constant [4 x i8] c"lt;\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"&#60;\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"gt;\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"&#62;\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"quot;\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"&#34;\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"apos;\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"&#39;\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"amp;\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"&#38;\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"UnableToAcquireString\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"<?%s%s%s?>\0A\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"\0A<?%s%s%s?>\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"&#\00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"unexpected closing tag </%s>\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"<!ENTITY\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"\09\0D\0A %\00", align 1
@.str.55 = private unnamed_addr constant [32 x i8] c"circular entity declaration &%s\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"<!ATTLIST\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"unclosed <!ATTLIST\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"malformed <!ATTLIST\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"CDATA\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"NOTATION\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"\09\0D\0A )\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"#FIXED\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"<!--\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"-->\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"<?\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"?>\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"xml\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"standalone\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"\09\0D\0A ='\22\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"<%s\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c" %s=\22\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"/>\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"</%s>\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @AddChildToXMLTree(ptr noundef %xml_info, ptr noundef %tag, i64 noundef %offset) local_unnamed_addr #0 !dbg !227 {
entry:
  call void @llvm.dbg.value(metadata ptr %xml_info, metadata !232, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata ptr %tag, metadata !233, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i64 %offset, metadata !234, metadata !DIExpression()), !dbg !236
  %cmp = icmp eq ptr %xml_info, null, !dbg !237
  br i1 %cmp, label %cleanup, label %if.end, !dbg !239

if.end:                                           ; preds = %entry
  %call = tail call ptr @AcquireMagickMemory(i64 noundef 96) #19, !dbg !240
  call void @llvm.dbg.value(metadata ptr %call, metadata !235, metadata !DIExpression()), !dbg !236
  %cmp1 = icmp eq ptr %call, null, !dbg !241
  br i1 %cmp1, label %cleanup, label %if.end3, !dbg !243

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call, i32 noundef 0, i64 noundef 96) #20, !dbg !244
  %call5 = tail call ptr @ConstantString(ptr noundef %tag) #20, !dbg !245
  store ptr %call5, ptr %call, align 8, !dbg !246, !tbaa !247
  %attributes = getelementptr inbounds %struct._XMLTreeInfo, ptr %call, i64 0, i32 1, !dbg !253
  store ptr @sentinel, ptr %attributes, align 8, !dbg !254, !tbaa !255
  %call7 = tail call ptr @ConstantString(ptr noundef nonnull @.str) #20, !dbg !256
  %content = getelementptr inbounds %struct._XMLTreeInfo, ptr %call, i64 0, i32 2, !dbg !257
  store ptr %call7, ptr %content, align 8, !dbg !258, !tbaa !259
  %call8 = tail call i32 @IsEventLogging() #20, !dbg !260
  %debug = getelementptr inbounds %struct._XMLTreeInfo, ptr %call, i64 0, i32 9, !dbg !261
  store i32 %call8, ptr %debug, align 8, !dbg !262, !tbaa !263
  %signature = getelementptr inbounds %struct._XMLTreeInfo, ptr %call, i64 0, i32 11, !dbg !264
  store i64 2880220587, ptr %signature, align 8, !dbg !265, !tbaa !266
  call void @llvm.dbg.value(metadata ptr %xml_info, metadata !267, metadata !DIExpression()) #20, !dbg !277
  call void @llvm.dbg.value(metadata ptr %call, metadata !272, metadata !DIExpression()) #20, !dbg !277
  call void @llvm.dbg.value(metadata i64 %offset, metadata !273, metadata !DIExpression()) #20, !dbg !277
  %ordered.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %call, i64 0, i32 7, !dbg !279
  %sibling.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %call, i64 0, i32 6, !dbg !280
  %next.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %call, i64 0, i32 5, !dbg !281
  %offset1.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %call, i64 0, i32 3, !dbg !282
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %next.i, i8 0, i64 24, i1 false) #20, !dbg !283
  store i64 %offset, ptr %offset1.i, align 8, !dbg !284, !tbaa !285
  %parent.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %call, i64 0, i32 4, !dbg !286
  store ptr %xml_info, ptr %parent.i, align 8, !dbg !287, !tbaa !288
  %child2.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 8, !dbg !289
  %0 = load ptr, ptr %child2.i, align 8, !dbg !289, !tbaa !291
  %cmp.i = icmp eq ptr %0, null, !dbg !292
  br i1 %cmp.i, label %cleanup.sink.split.i, label %if.end.i, !dbg !293

if.end.i:                                         ; preds = %if.end3
  call void @llvm.dbg.value(metadata ptr %0, metadata !274, metadata !DIExpression()) #20, !dbg !277
  %offset5.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 3, !dbg !294
  %1 = load i64, ptr %offset5.i, align 8, !dbg !294, !tbaa !285
  %cmp6.i = icmp ugt i64 %1, %offset, !dbg !296
  br i1 %cmp6.i, label %land.rhs22.preheader.i, label %while.cond.i, !dbg !297

while.cond.i:                                     ; preds = %if.end.i, %land.rhs.i
  %node.0.i = phi ptr [ %2, %land.rhs.i ], [ %0, %if.end.i ], !dbg !298
  call void @llvm.dbg.value(metadata ptr %node.0.i, metadata !275, metadata !DIExpression()) #20, !dbg !277
  %ordered10.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.0.i, i64 0, i32 7, !dbg !300
  %2 = load ptr, ptr %ordered10.i, align 8, !dbg !300, !tbaa !301
  %cmp11.not.i = icmp eq ptr %2, null, !dbg !302
  br i1 %cmp11.not.i, label %land.rhs22.preheader.i.loopexit, label %land.rhs.i, !dbg !303

land.rhs.i:                                       ; preds = %while.cond.i
  %offset13.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %2, i64 0, i32 3, !dbg !304
  %3 = load i64, ptr %offset13.i, align 8, !dbg !304, !tbaa !285
  %cmp14.not.i = icmp ugt i64 %3, %offset, !dbg !305
  br i1 %cmp14.not.i, label %land.rhs22.preheader.i.loopexit, label %while.cond.i, !dbg !306, !llvm.loop !307

land.rhs22.preheader.i.loopexit:                  ; preds = %land.rhs.i, %while.cond.i
  %.sink.i.ph = phi ptr [ %2, %land.rhs.i ], [ null, %while.cond.i ]
  %ordered10.i.le = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.0.i, i64 0, i32 7, !dbg !300
  br label %land.rhs22.preheader.i, !dbg !311

land.rhs22.preheader.i:                           ; preds = %land.rhs22.preheader.i.loopexit, %if.end.i
  %.sink.i = phi ptr [ %0, %if.end.i ], [ %.sink.i.ph, %land.rhs22.preheader.i.loopexit ]
  %child2.sink.i = phi ptr [ %child2.i, %if.end.i ], [ %ordered10.i.le, %land.rhs22.preheader.i.loopexit ]
  store ptr %.sink.i, ptr %ordered.i, align 8, !dbg !311, !tbaa !301
  store ptr %call, ptr %child2.sink.i, align 8, !dbg !311, !tbaa !312
  call void @llvm.dbg.value(metadata ptr null, metadata !276, metadata !DIExpression()) #20, !dbg !277
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression()) #20, !dbg !277
  %4 = load ptr, ptr %call, align 8, !tbaa !247
  %5 = load ptr, ptr %0, align 8, !dbg !313, !tbaa !247
  %call.i22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %4) #21, !dbg !314
  %cmp24.not.i23 = icmp eq i32 %call.i22, 0, !dbg !315
  br i1 %cmp24.not.i23, label %land.lhs.true.i.thread, label %while.body26.i, !dbg !316

land.rhs22.i:                                     ; preds = %while.body26.i
  call void @llvm.dbg.value(metadata ptr %node.1139.i24, metadata !276, metadata !DIExpression()) #20, !dbg !277
  call void @llvm.dbg.value(metadata ptr %7, metadata !275, metadata !DIExpression()) #20, !dbg !277
  %6 = load ptr, ptr %7, align 8, !dbg !313, !tbaa !247
  %call.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %4) #21, !dbg !314
  %cmp24.not.i = icmp eq i32 %call.i, 0, !dbg !315
  br i1 %cmp24.not.i, label %land.lhs.true.i, label %while.body26.i, !dbg !316, !llvm.loop !317

while.body26.i:                                   ; preds = %land.rhs22.preheader.i, %land.rhs22.i
  %node.1139.i24 = phi ptr [ %7, %land.rhs22.i ], [ %0, %land.rhs22.preheader.i ]
  call void @llvm.dbg.value(metadata ptr %node.1139.i24, metadata !275, metadata !DIExpression()) #20, !dbg !277
  call void @llvm.dbg.value(metadata ptr %node.1139.i24, metadata !276, metadata !DIExpression()) #20, !dbg !277
  %sibling27.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.1139.i24, i64 0, i32 6, !dbg !319
  %7 = load ptr, ptr %sibling27.i, align 8, !dbg !319, !tbaa !321
  call void @llvm.dbg.value(metadata ptr %7, metadata !275, metadata !DIExpression()) #20, !dbg !277
  %cmp21.not.i = icmp eq ptr %7, null, !dbg !322
  br i1 %cmp21.not.i, label %land.rhs58.preheader.i, label %land.rhs22.i, !dbg !323, !llvm.loop !317

land.lhs.true.i:                                  ; preds = %land.rhs22.i
  %offset30.i.phi.trans.insert = getelementptr inbounds %struct._XMLTreeInfo, ptr %7, i64 0, i32 3
  %.pre = load i64, ptr %offset30.i.phi.trans.insert, align 8, !dbg !324, !tbaa !285
  %cmp31.not.i = icmp ugt i64 %.pre, %offset, !dbg !326
  br i1 %cmp31.not.i, label %if.then51.i, label %while.cond33.i.preheader, !dbg !327

land.lhs.true.i.thread:                           ; preds = %land.rhs22.preheader.i
  %cmp31.not.i37 = icmp ugt i64 %1, %offset, !dbg !326
  br i1 %cmp31.not.i37, label %land.rhs58.preheader.i, label %while.cond33.i.preheader, !dbg !327

while.cond33.i.preheader:                         ; preds = %land.lhs.true.i.thread, %land.lhs.true.i
  %node.2.i.ph = phi ptr [ %7, %land.lhs.true.i ], [ %0, %land.lhs.true.i.thread ]
  br label %while.cond33.i, !dbg !328

while.cond33.i:                                   ; preds = %while.cond33.i.preheader, %land.rhs36.i
  %node.2.i = phi ptr [ %8, %land.rhs36.i ], [ %node.2.i.ph, %while.cond33.i.preheader ], !dbg !277
  call void @llvm.dbg.value(metadata ptr %node.2.i, metadata !275, metadata !DIExpression()) #20, !dbg !277
  %next34.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.2.i, i64 0, i32 5, !dbg !330
  %8 = load ptr, ptr %next34.i, align 8, !dbg !330, !tbaa !331
  %cmp35.not.i = icmp eq ptr %8, null, !dbg !332
  br i1 %cmp35.not.i, label %while.end43.i, label %land.rhs36.i, !dbg !333

land.rhs36.i:                                     ; preds = %while.cond33.i
  %offset38.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %8, i64 0, i32 3, !dbg !334
  %9 = load i64, ptr %offset38.i, align 8, !dbg !334, !tbaa !285
  %cmp39.not.i = icmp ugt i64 %9, %offset, !dbg !335
  br i1 %cmp39.not.i, label %while.end43.i, label %while.cond33.i, !dbg !328, !llvm.loop !336

while.end43.i:                                    ; preds = %land.rhs36.i, %while.cond33.i
  %next34.i.le = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.2.i, i64 0, i32 5, !dbg !330
  store ptr %8, ptr %next.i, align 8, !dbg !338, !tbaa !331
  br label %cleanup.sink.split.i, !dbg !339

if.then51.i:                                      ; preds = %land.lhs.true.i
  %sibling52.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %7, i64 0, i32 6, !dbg !340
  %10 = load ptr, ptr %sibling52.i, align 8, !dbg !340, !tbaa !321
  %sibling53.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.1139.i24, i64 0, i32 6, !dbg !343
  store ptr %10, ptr %sibling53.i, align 8, !dbg !344, !tbaa !321
  br label %land.rhs58.preheader.i, !dbg !345

land.rhs58.preheader.i:                           ; preds = %while.body26.i, %land.lhs.true.i.thread, %if.then51.i
  %node.1136.i = phi ptr [ %7, %if.then51.i ], [ %0, %land.lhs.true.i.thread ], [ null, %while.body26.i ]
  store ptr %node.1136.i, ptr %next.i, align 8, !dbg !346, !tbaa !331
  call void @llvm.dbg.value(metadata ptr null, metadata !276, metadata !DIExpression()) #20, !dbg !277
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression()) #20, !dbg !277
  br i1 %cmp6.i, label %while.end64.i.thread, label %while.body62.i, !dbg !347

while.end64.i.thread:                             ; preds = %land.rhs58.preheader.i
  store ptr %0, ptr %sibling.i, align 8, !dbg !348, !tbaa !321
  br label %cleanup, !dbg !349

while.body62.i:                                   ; preds = %land.rhs58.preheader.i, %while.body62.land.rhs58_crit_edge.i
  %node.3143.i27 = phi ptr [ %11, %while.body62.land.rhs58_crit_edge.i ], [ %0, %land.rhs58.preheader.i ]
  call void @llvm.dbg.value(metadata ptr %node.3143.i27, metadata !275, metadata !DIExpression()) #20, !dbg !277
  call void @llvm.dbg.value(metadata ptr %node.3143.i27, metadata !276, metadata !DIExpression()) #20, !dbg !277
  %sibling63.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.3143.i27, i64 0, i32 6, !dbg !350
  %11 = load ptr, ptr %sibling63.i, align 8, !dbg !350, !tbaa !321
  call void @llvm.dbg.value(metadata ptr %11, metadata !275, metadata !DIExpression()) #20, !dbg !277
  %cmp57.not.i = icmp eq ptr %11, null, !dbg !352
  br i1 %cmp57.not.i, label %if.then67.i, label %while.body62.land.rhs58_crit_edge.i, !dbg !353, !llvm.loop !354

while.body62.land.rhs58_crit_edge.i:              ; preds = %while.body62.i
  %offset59.phi.trans.insert.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %11, i64 0, i32 3
  %.pre.i = load i64, ptr %offset59.phi.trans.insert.i, align 8, !dbg !356, !tbaa !285
  call void @llvm.dbg.value(metadata ptr %node.3143.i27, metadata !276, metadata !DIExpression()) #20, !dbg !277
  call void @llvm.dbg.value(metadata ptr %11, metadata !275, metadata !DIExpression()) #20, !dbg !277
  %cmp60.not.i = icmp ugt i64 %.pre.i, %offset, !dbg !357
  br i1 %cmp60.not.i, label %if.then67.i, label %while.body62.i, !dbg !347

if.then67.i:                                      ; preds = %while.body62.land.rhs58_crit_edge.i, %while.body62.i
  %.lcssa47.sink = phi ptr [ null, %while.body62.i ], [ %11, %while.body62.land.rhs58_crit_edge.i ]
  store ptr %.lcssa47.sink, ptr %sibling.i, align 8, !dbg !348, !tbaa !321
  %sibling68.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.3143.i27, i64 0, i32 6, !dbg !358
  br label %cleanup.sink.split.i, !dbg !360

cleanup.sink.split.i:                             ; preds = %if.then67.i, %while.end43.i, %if.end3
  %next34.le.sink.i = phi ptr [ %next34.i.le, %while.end43.i ], [ %sibling68.i, %if.then67.i ], [ %child2.i, %if.end3 ]
  store ptr %call, ptr %next34.le.sink.i, align 8, !dbg !277, !tbaa !312
  br label %cleanup, !dbg !361

cleanup:                                          ; preds = %while.end64.i.thread, %cleanup.sink.split.i, %if.end, %entry
  %retval.0 = phi ptr [ null, %entry ], [ null, %if.end ], [ %call, %cleanup.sink.split.i ], [ %call, %while.end64.i.thread ], !dbg !236
  ret ptr %retval.0, !dbg !362
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: allocsize(0)
declare !dbg !363 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #3

declare !dbg !368 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !371 ptr @ConstantString(ptr noundef) local_unnamed_addr #4

declare !dbg !375 i32 @IsEventLogging() local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @InsertTagIntoXMLTree(ptr noundef %xml_info, ptr noundef returned %child, i64 noundef %offset) local_unnamed_addr #5 !dbg !268 {
entry:
  call void @llvm.dbg.value(metadata ptr %xml_info, metadata !267, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata ptr %child, metadata !272, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata i64 %offset, metadata !273, metadata !DIExpression()), !dbg !378
  %ordered = getelementptr inbounds %struct._XMLTreeInfo, ptr %child, i64 0, i32 7, !dbg !379
  %sibling = getelementptr inbounds %struct._XMLTreeInfo, ptr %child, i64 0, i32 6, !dbg !380
  %next = getelementptr inbounds %struct._XMLTreeInfo, ptr %child, i64 0, i32 5, !dbg !381
  %offset1 = getelementptr inbounds %struct._XMLTreeInfo, ptr %child, i64 0, i32 3, !dbg !382
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %next, i8 0, i64 24, i1 false), !dbg !383
  store i64 %offset, ptr %offset1, align 8, !dbg !384, !tbaa !285
  %parent = getelementptr inbounds %struct._XMLTreeInfo, ptr %child, i64 0, i32 4, !dbg !385
  store ptr %xml_info, ptr %parent, align 8, !dbg !386, !tbaa !288
  %child2 = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 8, !dbg !387
  %0 = load ptr, ptr %child2, align 8, !dbg !387, !tbaa !291
  %cmp = icmp eq ptr %0, null, !dbg !388
  br i1 %cmp, label %cleanup.sink.split, label %if.end, !dbg !389

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %0, metadata !274, metadata !DIExpression()), !dbg !378
  %offset5 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 3, !dbg !390
  %1 = load i64, ptr %offset5, align 8, !dbg !390, !tbaa !285
  %cmp6 = icmp ugt i64 %1, %offset, !dbg !391
  br i1 %cmp6, label %land.rhs22.preheader, label %while.cond, !dbg !392

while.cond:                                       ; preds = %if.end, %land.rhs
  %node.0 = phi ptr [ %2, %land.rhs ], [ %0, %if.end ], !dbg !393
  call void @llvm.dbg.value(metadata ptr %node.0, metadata !275, metadata !DIExpression()), !dbg !378
  %ordered10 = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.0, i64 0, i32 7, !dbg !394
  %2 = load ptr, ptr %ordered10, align 8, !dbg !394, !tbaa !301
  %cmp11.not = icmp eq ptr %2, null, !dbg !395
  br i1 %cmp11.not, label %while.end, label %land.rhs, !dbg !396

land.rhs:                                         ; preds = %while.cond
  %offset13 = getelementptr inbounds %struct._XMLTreeInfo, ptr %2, i64 0, i32 3, !dbg !397
  %3 = load i64, ptr %offset13, align 8, !dbg !397, !tbaa !285
  %cmp14.not = icmp ugt i64 %3, %offset, !dbg !398
  br i1 %cmp14.not, label %while.end, label %while.cond, !dbg !399, !llvm.loop !400

while.end:                                        ; preds = %while.cond, %land.rhs
  %ordered10.le = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.0, i64 0, i32 7, !dbg !394
  br label %land.rhs22.preheader

land.rhs22.preheader:                             ; preds = %if.end, %while.end
  %.sink = phi ptr [ %2, %while.end ], [ %0, %if.end ]
  %child2.sink = phi ptr [ %ordered10.le, %while.end ], [ %child2, %if.end ]
  store ptr %.sink, ptr %ordered, align 8, !dbg !402, !tbaa !301
  store ptr %child, ptr %child2.sink, align 8, !dbg !402, !tbaa !312
  call void @llvm.dbg.value(metadata ptr null, metadata !276, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression()), !dbg !378
  %4 = load ptr, ptr %child, align 8, !tbaa !247
  call void @llvm.dbg.value(metadata ptr null, metadata !276, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression()), !dbg !378
  %5 = load ptr, ptr %0, align 8, !dbg !403, !tbaa !247
  %call168 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %4) #21, !dbg !404
  %cmp24.not169 = icmp eq i32 %call168, 0, !dbg !405
  br i1 %cmp24.not169, label %land.lhs.true, label %while.body26, !dbg !406

land.rhs22:                                       ; preds = %while.body26
  call void @llvm.dbg.value(metadata ptr %node.1139170, metadata !276, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata ptr %7, metadata !275, metadata !DIExpression()), !dbg !378
  %6 = load ptr, ptr %7, align 8, !dbg !403, !tbaa !247
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %4) #21, !dbg !404
  %cmp24.not = icmp eq i32 %call, 0, !dbg !405
  br i1 %cmp24.not, label %land.lhs.true, label %while.body26, !dbg !406, !llvm.loop !407

while.body26:                                     ; preds = %land.rhs22.preheader, %land.rhs22
  %node.1139170 = phi ptr [ %7, %land.rhs22 ], [ %0, %land.rhs22.preheader ]
  call void @llvm.dbg.value(metadata ptr %node.1139170, metadata !275, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata ptr %node.1139170, metadata !276, metadata !DIExpression()), !dbg !378
  %sibling27 = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.1139170, i64 0, i32 6, !dbg !409
  %7 = load ptr, ptr %sibling27, align 8, !dbg !409, !tbaa !321
  call void @llvm.dbg.value(metadata ptr %7, metadata !275, metadata !DIExpression()), !dbg !378
  %cmp21.not = icmp eq ptr %7, null, !dbg !410
  br i1 %cmp21.not, label %land.rhs58.preheader, label %land.rhs22, !dbg !411, !llvm.loop !407

land.lhs.true:                                    ; preds = %land.rhs22, %land.rhs22.preheader
  %previous.0140.lcssa = phi ptr [ null, %land.rhs22.preheader ], [ %node.1139170, %land.rhs22 ]
  %node.1139.lcssa = phi ptr [ %0, %land.rhs22.preheader ], [ %7, %land.rhs22 ]
  %offset30 = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.1139.lcssa, i64 0, i32 3, !dbg !412
  %8 = load i64, ptr %offset30, align 8, !dbg !412, !tbaa !285
  %cmp31.not = icmp ugt i64 %8, %offset, !dbg !413
  br i1 %cmp31.not, label %if.else47, label %while.cond33, !dbg !414

while.cond33:                                     ; preds = %land.lhs.true, %land.rhs36
  %node.2 = phi ptr [ %9, %land.rhs36 ], [ %node.1139.lcssa, %land.lhs.true ], !dbg !378
  call void @llvm.dbg.value(metadata ptr %node.2, metadata !275, metadata !DIExpression()), !dbg !378
  %next34 = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.2, i64 0, i32 5, !dbg !415
  %9 = load ptr, ptr %next34, align 8, !dbg !415, !tbaa !331
  %cmp35.not = icmp eq ptr %9, null, !dbg !416
  br i1 %cmp35.not, label %while.end43, label %land.rhs36, !dbg !417

land.rhs36:                                       ; preds = %while.cond33
  %offset38 = getelementptr inbounds %struct._XMLTreeInfo, ptr %9, i64 0, i32 3, !dbg !418
  %10 = load i64, ptr %offset38, align 8, !dbg !418, !tbaa !285
  %cmp39.not = icmp ugt i64 %10, %offset, !dbg !419
  br i1 %cmp39.not, label %while.end43, label %while.cond33, !dbg !420, !llvm.loop !421

while.end43:                                      ; preds = %while.cond33, %land.rhs36
  %next34.le = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.2, i64 0, i32 5, !dbg !415
  store ptr %9, ptr %next, align 8, !dbg !423, !tbaa !331
  br label %cleanup.sink.split, !dbg !424

if.else47:                                        ; preds = %land.lhs.true
  %cmp48.not = icmp eq ptr %previous.0140.lcssa, null, !dbg !425
  br i1 %cmp48.not, label %land.rhs58.preheader, label %if.then51, !dbg !426

if.then51:                                        ; preds = %if.else47
  %sibling52 = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.1139.lcssa, i64 0, i32 6, !dbg !427
  %11 = load ptr, ptr %sibling52, align 8, !dbg !427, !tbaa !321
  %sibling53 = getelementptr inbounds %struct._XMLTreeInfo, ptr %previous.0140.lcssa, i64 0, i32 6, !dbg !428
  store ptr %11, ptr %sibling53, align 8, !dbg !429, !tbaa !321
  br label %land.rhs58.preheader, !dbg !430

land.rhs58.preheader:                             ; preds = %while.body26, %if.else47, %if.then51
  %node.1136 = phi ptr [ %node.1139.lcssa, %if.then51 ], [ %node.1139.lcssa, %if.else47 ], [ null, %while.body26 ]
  store ptr %node.1136, ptr %next, align 8, !dbg !431, !tbaa !331
  call void @llvm.dbg.value(metadata ptr null, metadata !276, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression()), !dbg !378
  %cmp60.not172 = icmp ugt i64 %1, %offset, !dbg !432
  br i1 %cmp60.not172, label %while.end64, label %while.body62, !dbg !433

while.body62:                                     ; preds = %land.rhs58.preheader, %while.body62.land.rhs58_crit_edge
  %node.3143173 = phi ptr [ %12, %while.body62.land.rhs58_crit_edge ], [ %0, %land.rhs58.preheader ]
  call void @llvm.dbg.value(metadata ptr %node.3143173, metadata !275, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata ptr %node.3143173, metadata !276, metadata !DIExpression()), !dbg !378
  %sibling63 = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.3143173, i64 0, i32 6, !dbg !434
  %12 = load ptr, ptr %sibling63, align 8, !dbg !434, !tbaa !321
  call void @llvm.dbg.value(metadata ptr %12, metadata !275, metadata !DIExpression()), !dbg !378
  %cmp57.not = icmp eq ptr %12, null, !dbg !435
  br i1 %cmp57.not, label %while.end64.thread, label %while.body62.land.rhs58_crit_edge, !dbg !436, !llvm.loop !437

while.end64.thread:                               ; preds = %while.body62
  store ptr null, ptr %sibling, align 8, !dbg !439, !tbaa !321
  br label %if.then67, !dbg !440

while.body62.land.rhs58_crit_edge:                ; preds = %while.body62
  %offset59.phi.trans.insert = getelementptr inbounds %struct._XMLTreeInfo, ptr %12, i64 0, i32 3
  %.pre = load i64, ptr %offset59.phi.trans.insert, align 8, !dbg !441, !tbaa !285
  call void @llvm.dbg.value(metadata ptr %node.3143173, metadata !276, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata ptr %12, metadata !275, metadata !DIExpression()), !dbg !378
  %cmp60.not = icmp ugt i64 %.pre, %offset, !dbg !432
  br i1 %cmp60.not, label %while.end64, label %while.body62, !dbg !433

while.end64:                                      ; preds = %while.body62.land.rhs58_crit_edge, %land.rhs58.preheader
  %previous.1144.lcssa = phi ptr [ null, %land.rhs58.preheader ], [ %node.3143173, %while.body62.land.rhs58_crit_edge ]
  %node.3143.lcssa = phi ptr [ %0, %land.rhs58.preheader ], [ %12, %while.body62.land.rhs58_crit_edge ]
  store ptr %node.3143.lcssa, ptr %sibling, align 8, !dbg !439, !tbaa !321
  %cmp66.not = icmp eq ptr %previous.1144.lcssa, null, !dbg !442
  br i1 %cmp66.not, label %cleanup, label %if.then67, !dbg !440

if.then67:                                        ; preds = %while.end64.thread, %while.end64
  %previous.1.lcssa.ph157 = phi ptr [ %node.3143173, %while.end64.thread ], [ %previous.1144.lcssa, %while.end64 ]
  %sibling68 = getelementptr inbounds %struct._XMLTreeInfo, ptr %previous.1.lcssa.ph157, i64 0, i32 6, !dbg !443
  br label %cleanup.sink.split, !dbg !444

cleanup.sink.split:                               ; preds = %entry, %if.then67, %while.end43
  %next34.le.sink = phi ptr [ %next34.le, %while.end43 ], [ %sibling68, %if.then67 ], [ %child2, %entry ]
  store ptr %child, ptr %next34.le.sink, align 8, !dbg !378, !tbaa !312
  br label %cleanup, !dbg !445

cleanup:                                          ; preds = %cleanup.sink.split, %while.end64
  ret ptr %child, !dbg !445
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @AddPathToXMLTree(ptr noundef %xml_info, ptr noundef %path, i64 noundef %offset) local_unnamed_addr #0 !dbg !446 {
entry:
  %subnode = alloca [4096 x i8], align 16
  %tag = alloca [4096 x i8], align 16
  %number_components = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %xml_info, metadata !448, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata ptr %path, metadata !449, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata i64 %offset, metadata !450, metadata !DIExpression()), !dbg !462
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %subnode) #20, !dbg !463
  call void @llvm.dbg.declare(metadata ptr %subnode, metadata !452, metadata !DIExpression()), !dbg !464
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %tag) #20, !dbg !463
  call void @llvm.dbg.declare(metadata ptr %tag, metadata !456, metadata !DIExpression()), !dbg !465
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %number_components) #20, !dbg !466
  %debug = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 9, !dbg !467
  %0 = load i32, ptr %debug, align 8, !dbg !467, !tbaa !263
  %cmp.not = icmp eq i32 %0, 0, !dbg !469
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !470

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 238, ptr noundef nonnull @.str.2) #20, !dbg !471
  br label %if.end, !dbg !472

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata ptr %xml_info, metadata !461, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata ptr %number_components, metadata !458, metadata !DIExpression(DW_OP_deref)), !dbg !462
  %call1 = call ptr @GetPathComponents(ptr noundef %path, ptr noundef nonnull %number_components) #20, !dbg !473
  call void @llvm.dbg.value(metadata ptr %call1, metadata !451, metadata !DIExpression()), !dbg !462
  %cmp2 = icmp eq ptr %call1, null, !dbg !474
  br i1 %cmp2, label %cleanup, label %for.cond.preheader, !dbg !476

for.cond.preheader:                               ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %xml_info, metadata !461, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata i64 0, metadata !457, metadata !DIExpression()), !dbg !462
  %1 = load i64, ptr %number_components, align 8, !dbg !477, !tbaa !480
  call void @llvm.dbg.value(metadata i64 %1, metadata !458, metadata !DIExpression()), !dbg !462
  %cmp595 = icmp sgt i64 %1, 0, !dbg !481
  br i1 %cmp595, label %for.body, label %for.end34, !dbg !482

for.body:                                         ; preds = %for.cond.preheader, %if.end29
  %node.098 = phi ptr [ %node.1, %if.end29 ], [ %xml_info, %for.cond.preheader ]
  %i.096 = phi i64 [ %inc, %if.end29 ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata ptr %node.098, metadata !461, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata i64 %i.096, metadata !457, metadata !DIExpression()), !dbg !462
  %arrayidx = getelementptr inbounds ptr, ptr %call1, i64 %i.096, !dbg !483
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !483, !tbaa !312
  call void @GetPathComponent(ptr noundef %2, i32 noundef 7, ptr noundef nonnull %subnode) #20, !dbg !485
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !486, !tbaa !312
  call void @GetPathComponent(ptr noundef %3, i32 noundef 8, ptr noundef nonnull %tag) #20, !dbg !487
  call void @llvm.dbg.value(metadata ptr %node.098, metadata !488, metadata !DIExpression()) #20, !dbg !495
  call void @llvm.dbg.value(metadata ptr %tag, metadata !493, metadata !DIExpression()) #20, !dbg !495
  %debug.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.098, i64 0, i32 9, !dbg !497
  %4 = load i32, ptr %debug.i, align 8, !dbg !497, !tbaa !263
  %cmp.not.i = icmp eq i32 %4, 0, !dbg !499
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !500

if.then.i:                                        ; preds = %for.body
  %call.i = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 928, ptr noundef nonnull @.str.2) #20, !dbg !501
  br label %if.end.i, !dbg !502

if.end.i:                                         ; preds = %if.then.i, %for.body
  %child1.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.098, i64 0, i32 8, !dbg !503
  %5 = load ptr, ptr %child1.i, align 8, !dbg !503, !tbaa !291
  call void @llvm.dbg.value(metadata ptr %5, metadata !494, metadata !DIExpression()) #20, !dbg !495
  %cmp4.i.not = icmp eq ptr %5, null
  br i1 %cmp4.i.not, label %if.end14, label %land.rhs.i, !dbg !504

land.rhs.i:                                       ; preds = %if.end.i, %while.body.i
  %child.0.i = phi ptr [ %7, %while.body.i ], [ %5, %if.end.i ], !dbg !495
  call void @llvm.dbg.value(metadata ptr %child.0.i, metadata !494, metadata !DIExpression()) #20, !dbg !495
  %6 = load ptr, ptr %child.0.i, align 8, !dbg !505, !tbaa !247
  %call6.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull %tag) #21, !dbg !507
  %cmp7.not.i = icmp eq i32 %call6.i, 0, !dbg !508
  br i1 %cmp7.not.i, label %if.end17, label %while.body.i, !dbg !509

while.body.i:                                     ; preds = %land.rhs.i
  %sibling.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %child.0.i, i64 0, i32 6, !dbg !510
  %7 = load ptr, ptr %sibling.i, align 8, !dbg !510, !tbaa !321
  call void @llvm.dbg.value(metadata ptr %7, metadata !494, metadata !DIExpression()) #20, !dbg !495
  %cmp4.old.not.i = icmp eq ptr %7, null, !dbg !511
  br i1 %cmp4.old.not.i, label %if.end14, label %land.rhs.i, !dbg !512

if.end14:                                         ; preds = %while.body.i, %if.end.i
  call void @llvm.dbg.value(metadata ptr undef, metadata !494, metadata !DIExpression()) #20, !dbg !495
  call void @llvm.dbg.value(metadata ptr undef, metadata !460, metadata !DIExpression()), !dbg !462
  %call13 = call ptr @AddChildToXMLTree(ptr noundef %node.098, ptr noundef nonnull %tag, i64 noundef %offset), !dbg !513
  call void @llvm.dbg.value(metadata ptr %call13, metadata !460, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata ptr %call13, metadata !461, metadata !DIExpression()), !dbg !462
  %cmp15 = icmp eq ptr %call13, null, !dbg !515
  br i1 %cmp15, label %for.end34, label %if.end17, !dbg !517

if.end17:                                         ; preds = %land.rhs.i, %if.end14
  %child.087 = phi ptr [ %call13, %if.end14 ], [ %child.0.i, %land.rhs.i ]
  call void @llvm.dbg.value(metadata ptr %subnode, metadata !518, metadata !DIExpression()) #20, !dbg !525
  %call.i77 = call i64 @strtol(ptr nocapture noundef nonnull %subnode, ptr noundef null, i32 noundef 10) #20, !dbg !528
  call void @llvm.dbg.value(metadata i64 %call.i77, metadata !459, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !462
  br label %for.cond20, !dbg !529

for.cond20:                                       ; preds = %GetXMLTreeOrdered.exit, %if.end17
  %j.0.in = phi i64 [ %call.i77, %if.end17 ], [ %j.0, %GetXMLTreeOrdered.exit ]
  %node.1 = phi ptr [ %child.087, %if.end17 ], [ %9, %GetXMLTreeOrdered.exit ], !dbg !530
  %j.0 = add nsw i64 %j.0.in, -1, !dbg !531
  call void @llvm.dbg.value(metadata ptr %node.1, metadata !461, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata i64 %j.0, metadata !459, metadata !DIExpression()), !dbg !462
  %cmp21 = icmp sgt i64 %j.0.in, 1, !dbg !532
  br i1 %cmp21, label %for.body22, label %if.end29, !dbg !534

for.body22:                                       ; preds = %for.cond20
  call void @llvm.dbg.value(metadata ptr %node.1, metadata !535, metadata !DIExpression()) #20, !dbg !540
  %debug.i78 = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.1, i64 0, i32 9, !dbg !543
  %8 = load i32, ptr %debug.i78, align 8, !dbg !543, !tbaa !263
  %cmp.not.i79 = icmp eq i32 %8, 0, !dbg !545
  br i1 %cmp.not.i79, label %GetXMLTreeOrdered.exit, label %if.then.i81, !dbg !546

if.then.i81:                                      ; preds = %for.body22
  %call.i80 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 997, ptr noundef nonnull @.str.2) #20, !dbg !547
  br label %GetXMLTreeOrdered.exit, !dbg !548

GetXMLTreeOrdered.exit:                           ; preds = %for.body22, %if.then.i81
  %ordered.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.1, i64 0, i32 7, !dbg !549
  %9 = load ptr, ptr %ordered.i, align 8, !dbg !549, !tbaa !301
  call void @llvm.dbg.value(metadata ptr %9, metadata !461, metadata !DIExpression()), !dbg !462
  %cmp24 = icmp eq ptr %9, null, !dbg !550
  br i1 %cmp24, label %for.end34, label %for.cond20, !dbg !552, !llvm.loop !553

if.end29:                                         ; preds = %for.cond20
  call void @llvm.dbg.value(metadata ptr %node.1, metadata !461, metadata !DIExpression()), !dbg !462
  %10 = load ptr, ptr %arrayidx, align 8, !dbg !555, !tbaa !312
  %call31 = call ptr @DestroyString(ptr noundef %10) #20, !dbg !556
  store ptr %call31, ptr %arrayidx, align 8, !dbg !557, !tbaa !312
  %inc = add nuw nsw i64 %i.096, 1, !dbg !558
  call void @llvm.dbg.value(metadata i64 %inc, metadata !457, metadata !DIExpression()), !dbg !462
  %11 = load i64, ptr %number_components, align 8, !dbg !477, !tbaa !480
  call void @llvm.dbg.value(metadata i64 %11, metadata !458, metadata !DIExpression()), !dbg !462
  %cmp5 = icmp slt i64 %inc, %11, !dbg !481
  br i1 %cmp5, label %for.body, label %for.end34, !dbg !482, !llvm.loop !559

for.end34:                                        ; preds = %if.end29, %if.end14, %GetXMLTreeOrdered.exit, %for.cond.preheader
  %i.094 = phi i64 [ 0, %for.cond.preheader ], [ %i.096, %GetXMLTreeOrdered.exit ], [ %inc, %if.end29 ], [ %i.096, %if.end14 ]
  %node.3 = phi ptr [ %xml_info, %for.cond.preheader ], [ null, %GetXMLTreeOrdered.exit ], [ %node.1, %if.end29 ], [ null, %if.end14 ], !dbg !462
  call void @llvm.dbg.value(metadata ptr %node.3, metadata !461, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata i64 %i.094, metadata !457, metadata !DIExpression()), !dbg !462
  %12 = load i64, ptr %number_components, align 8, !dbg !561, !tbaa !480
  call void @llvm.dbg.value(metadata i64 %12, metadata !458, metadata !DIExpression()), !dbg !462
  %cmp36102 = icmp slt i64 %i.094, %12, !dbg !564
  br i1 %cmp36102, label %for.body37, label %for.end43, !dbg !565

for.body37:                                       ; preds = %for.end34, %for.body37
  %i.1103 = phi i64 [ %inc42, %for.body37 ], [ %i.094, %for.end34 ]
  call void @llvm.dbg.value(metadata i64 %i.1103, metadata !457, metadata !DIExpression()), !dbg !462
  %arrayidx38 = getelementptr inbounds ptr, ptr %call1, i64 %i.1103, !dbg !566
  %13 = load ptr, ptr %arrayidx38, align 8, !dbg !566, !tbaa !312
  %call39 = call ptr @DestroyString(ptr noundef %13) #20, !dbg !567
  store ptr %call39, ptr %arrayidx38, align 8, !dbg !568, !tbaa !312
  %inc42 = add nuw nsw i64 %i.1103, 1, !dbg !569
  call void @llvm.dbg.value(metadata i64 %inc42, metadata !457, metadata !DIExpression()), !dbg !462
  %14 = load i64, ptr %number_components, align 8, !dbg !561, !tbaa !480
  call void @llvm.dbg.value(metadata i64 %14, metadata !458, metadata !DIExpression()), !dbg !462
  %cmp36 = icmp slt i64 %inc42, %14, !dbg !564
  br i1 %cmp36, label %for.body37, label %for.end43, !dbg !565, !llvm.loop !570

for.end43:                                        ; preds = %for.body37, %for.end34
  %call44 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call1) #20, !dbg !572
  call void @llvm.dbg.value(metadata ptr %call44, metadata !451, metadata !DIExpression()), !dbg !462
  br label %cleanup, !dbg !573

cleanup:                                          ; preds = %if.end, %for.end43
  %retval.0 = phi ptr [ %node.3, %for.end43 ], [ null, %if.end ], !dbg !462
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %number_components) #20, !dbg !574
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %tag) #20, !dbg !574
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %subnode) #20, !dbg !574
  ret ptr %retval.0, !dbg !574
}

declare !dbg !575 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !580 ptr @GetPathComponents(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !584 void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @GetXMLTreeChild(ptr nocapture noundef readonly %xml_info, ptr noundef readonly %tag) local_unnamed_addr #0 !dbg !489 {
entry:
  call void @llvm.dbg.value(metadata ptr %xml_info, metadata !488, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata ptr %tag, metadata !493, metadata !DIExpression()), !dbg !588
  %debug = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 9, !dbg !589
  %0 = load i32, ptr %debug, align 8, !dbg !589, !tbaa !263
  %cmp.not = icmp eq i32 %0, 0, !dbg !590
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !591

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 928, ptr noundef nonnull @.str.2) #20, !dbg !592
  br label %if.end, !dbg !593

if.end:                                           ; preds = %if.then, %entry
  %child1 = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 8, !dbg !594
  %1 = load ptr, ptr %child1, align 8, !dbg !594, !tbaa !291
  call void @llvm.dbg.value(metadata ptr %1, metadata !494, metadata !DIExpression()), !dbg !588
  %cmp2 = icmp ne ptr %tag, null, !dbg !595
  %cmp4 = icmp ne ptr %1, null
  %or.cond = select i1 %cmp2, i1 %cmp4, i1 false, !dbg !596
  br i1 %or.cond, label %land.rhs, label %if.end8, !dbg !596

land.rhs:                                         ; preds = %if.end, %while.body
  %child.0 = phi ptr [ %3, %while.body ], [ %1, %if.end ], !dbg !588
  call void @llvm.dbg.value(metadata ptr %child.0, metadata !494, metadata !DIExpression()), !dbg !588
  %2 = load ptr, ptr %child.0, align 8, !dbg !597, !tbaa !247
  %call6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull %tag) #21, !dbg !598
  %cmp7.not = icmp eq i32 %call6, 0, !dbg !599
  br i1 %cmp7.not, label %if.end8, label %while.body, !dbg !600

while.body:                                       ; preds = %land.rhs
  %sibling = getelementptr inbounds %struct._XMLTreeInfo, ptr %child.0, i64 0, i32 6, !dbg !601
  %3 = load ptr, ptr %sibling, align 8, !dbg !601, !tbaa !321
  call void @llvm.dbg.value(metadata ptr %3, metadata !494, metadata !DIExpression()), !dbg !588
  %cmp4.old.not = icmp eq ptr %3, null, !dbg !602
  br i1 %cmp4.old.not, label %if.end8, label %land.rhs, !dbg !603

if.end8:                                          ; preds = %land.rhs, %while.body, %if.end
  %child.1 = phi ptr [ %1, %if.end ], [ %child.0, %land.rhs ], [ null, %while.body ], !dbg !588
  call void @llvm.dbg.value(metadata ptr %child.1, metadata !494, metadata !DIExpression()), !dbg !588
  ret ptr %child.1, !dbg !604
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetXMLTreeOrdered(ptr nocapture noundef readonly %xml_info) local_unnamed_addr #0 !dbg !536 {
entry:
  call void @llvm.dbg.value(metadata ptr %xml_info, metadata !535, metadata !DIExpression()), !dbg !605
  %debug = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 9, !dbg !606
  %0 = load i32, ptr %debug, align 8, !dbg !606, !tbaa !263
  %cmp.not = icmp eq i32 %0, 0, !dbg !607
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !608

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 997, ptr noundef nonnull @.str.2) #20, !dbg !609
  br label %if.end, !dbg !610

if.end:                                           ; preds = %if.then, %entry
  %ordered = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 7, !dbg !611
  %1 = load ptr, ptr %ordered, align 8, !dbg !611, !tbaa !301
  ret ptr %1, !dbg !612
}

declare !dbg !613 ptr @DestroyString(ptr noundef) local_unnamed_addr #4

declare !dbg !616 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @CanonicalXMLContent(ptr nocapture noundef readonly %content, i32 noundef %pedantic) local_unnamed_addr #0 !dbg !619 {
entry:
  %canonical_content = alloca ptr, align 8
  %length = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %content, metadata !624, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata i32 %pedantic, metadata !625, metadata !DIExpression()), !dbg !633
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %canonical_content) #20, !dbg !634
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %length) #20, !dbg !635
  call void @llvm.dbg.value(metadata ptr %content, metadata !636, metadata !DIExpression()) #20, !dbg !647
  call void @llvm.dbg.value(metadata i64 0, metadata !644, metadata !DIExpression()) #20, !dbg !647
  call void @llvm.dbg.value(metadata ptr %content, metadata !642, metadata !DIExpression()) #20, !dbg !647
  %0 = load i8, ptr %content, align 1, !dbg !649, !tbaa !652
  %cmp.not58.i = icmp eq i8 %0, 0, !dbg !653
  br i1 %cmp.not58.i, label %if.end.i, label %for.body.i, !dbg !654

for.body.i:                                       ; preds = %entry, %for.body.i
  %1 = phi i8 [ %3, %for.body.i ], [ %0, %entry ]
  %length.060.i = phi i64 [ %add.i, %for.body.i ], [ 0, %entry ]
  %p.059.i = phi ptr [ %incdec.ptr.i, %for.body.i ], [ %content, %entry ]
  call void @llvm.dbg.value(metadata i64 %length.060.i, metadata !644, metadata !DIExpression()) #20, !dbg !647
  call void @llvm.dbg.value(metadata ptr %p.059.i, metadata !642, metadata !DIExpression()) #20, !dbg !647
  %cmp3.not.i = icmp sgt i8 %1, -1, !dbg !655
  %2 = select i1 %cmp3.not.i, i64 1, i64 2, !dbg !656
  %add.i = add i64 %2, %length.060.i, !dbg !657
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !644, metadata !DIExpression()) #20, !dbg !647
  %incdec.ptr.i = getelementptr inbounds i8, ptr %p.059.i, i64 1, !dbg !658
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !642, metadata !DIExpression()) #20, !dbg !647
  %3 = load i8, ptr %incdec.ptr.i, align 1, !dbg !649, !tbaa !652
  %cmp.not.i = icmp eq i8 %3, 0, !dbg !653
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i, !dbg !654, !llvm.loop !659

for.end.i:                                        ; preds = %for.body.i
  call void @llvm.dbg.value(metadata ptr null, metadata !645, metadata !DIExpression()) #20, !dbg !647
  %cmp6.not.i = icmp eq i64 %add.i, -1, !dbg !661
  br i1 %cmp6.not.i, label %cleanup, label %if.end.i, !dbg !663

if.end.i:                                         ; preds = %for.end.i, %entry
  %length.0.lcssa67.i = phi i64 [ %add.i, %for.end.i ], [ 0, %entry ]
  %add8.i = add nuw i64 %length.0.lcssa67.i, 1, !dbg !664
  %call.i = tail call ptr @AcquireQuantumMemory(i64 noundef %add8.i, i64 noundef 1) #22, !dbg !665
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !645, metadata !DIExpression()) #20, !dbg !647
  %cmp9.i = icmp eq ptr %call.i, null, !dbg !666
  br i1 %cmp9.i, label %cleanup, label %for.cond13.preheader.i, !dbg !668

for.cond13.preheader.i:                           ; preds = %if.end.i
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !643, metadata !DIExpression()) #20, !dbg !647
  call void @llvm.dbg.value(metadata ptr %content, metadata !642, metadata !DIExpression()) #20, !dbg !647
  %4 = load i8, ptr %content, align 1, !dbg !669, !tbaa !652
  %cmp15.not61.i = icmp eq i8 %4, 0, !dbg !672
  br i1 %cmp15.not61.i, label %ConvertLatin1ToUTF8.exit, label %for.body17.i, !dbg !673

for.body17.i:                                     ; preds = %for.cond13.preheader.i, %for.inc33.i
  %5 = phi i8 [ %6, %for.inc33.i ], [ %4, %for.cond13.preheader.i ]
  %q.063.i = phi ptr [ %q.1.i, %for.inc33.i ], [ %call.i, %for.cond13.preheader.i ]
  %p.162.i = phi ptr [ %incdec.ptr34.i, %for.inc33.i ], [ %content, %for.cond13.preheader.i ]
  call void @llvm.dbg.value(metadata ptr %q.063.i, metadata !643, metadata !DIExpression()) #20, !dbg !647
  call void @llvm.dbg.value(metadata ptr %p.162.i, metadata !642, metadata !DIExpression()) #20, !dbg !647
  call void @llvm.dbg.value(metadata i8 %5, metadata !646, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #20, !dbg !647
  %cmp20.i = icmp sgt i8 %5, -1, !dbg !674
  br i1 %cmp20.i, label %if.then22.i, label %if.else.i, !dbg !677

if.then22.i:                                      ; preds = %for.body17.i
  %incdec.ptr24.i = getelementptr inbounds i8, ptr %q.063.i, i64 1, !dbg !678
  call void @llvm.dbg.value(metadata ptr %incdec.ptr24.i, metadata !643, metadata !DIExpression()) #20, !dbg !647
  store i8 %5, ptr %q.063.i, align 1, !dbg !679, !tbaa !652
  br label %for.inc33.i, !dbg !680

if.else.i:                                        ; preds = %for.body17.i
  %shr.i = lshr i8 %5, 6, !dbg !681
  %or.i = or i8 %shr.i, -64, !dbg !683
  %incdec.ptr27.i = getelementptr inbounds i8, ptr %q.063.i, i64 1, !dbg !684
  call void @llvm.dbg.value(metadata ptr %incdec.ptr27.i, metadata !643, metadata !DIExpression()) #20, !dbg !647
  store i8 %or.i, ptr %q.063.i, align 1, !dbg !685, !tbaa !652
  %and28.i = and i8 %5, 63, !dbg !686
  %or29.i = or i8 %and28.i, -128, !dbg !687
  %incdec.ptr31.i = getelementptr inbounds i8, ptr %q.063.i, i64 2, !dbg !688
  call void @llvm.dbg.value(metadata ptr %incdec.ptr31.i, metadata !643, metadata !DIExpression()) #20, !dbg !647
  store i8 %or29.i, ptr %incdec.ptr27.i, align 1, !dbg !689, !tbaa !652
  br label %for.inc33.i

for.inc33.i:                                      ; preds = %if.else.i, %if.then22.i
  %q.1.i = phi ptr [ %incdec.ptr24.i, %if.then22.i ], [ %incdec.ptr31.i, %if.else.i ], !dbg !690
  call void @llvm.dbg.value(metadata ptr %q.1.i, metadata !643, metadata !DIExpression()) #20, !dbg !647
  %incdec.ptr34.i = getelementptr inbounds i8, ptr %p.162.i, i64 1, !dbg !691
  call void @llvm.dbg.value(metadata ptr %incdec.ptr34.i, metadata !642, metadata !DIExpression()) #20, !dbg !647
  %6 = load i8, ptr %incdec.ptr34.i, align 1, !dbg !669, !tbaa !652
  %cmp15.not.i = icmp eq i8 %6, 0, !dbg !672
  br i1 %cmp15.not.i, label %ConvertLatin1ToUTF8.exit, label %for.body17.i, !dbg !673, !llvm.loop !692

ConvertLatin1ToUTF8.exit:                         ; preds = %for.inc33.i, %for.cond13.preheader.i
  %q.0.lcssa.i = phi ptr [ %call.i, %for.cond13.preheader.i ], [ %q.1.i, %for.inc33.i ], !dbg !647
  store i8 0, ptr %q.0.lcssa.i, align 1, !dbg !694, !tbaa !652
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !632, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !628, metadata !DIExpression()), !dbg !633
  %7 = load i8, ptr %call.i, align 1, !dbg !695, !tbaa !652
  %cmp1.not154 = icmp eq i8 %7, 0, !dbg !698
  br i1 %cmp1.not154, label %if.end34, label %for.body, !dbg !699

for.body:                                         ; preds = %ConvertLatin1ToUTF8.exit, %for.inc
  %8 = phi i8 [ %9, %for.inc ], [ %7, %ConvertLatin1ToUTF8.exit ]
  %p.0155 = phi ptr [ %incdec.ptr, %for.inc ], [ %call.i, %ConvertLatin1ToUTF8.exit ]
  call void @llvm.dbg.value(metadata ptr %p.0155, metadata !628, metadata !DIExpression()), !dbg !633
  %.fr = freeze i8 %8
  %cmp4 = icmp ugt i8 %.fr, 31, !dbg !700
  br i1 %cmp4, label %for.inc, label %switch.early.test, !dbg !702

switch.early.test:                                ; preds = %for.body
  switch i8 %.fr, label %if.then22 [
    i8 13, label %for.inc
    i8 10, label %for.inc
    i8 9, label %for.inc
  ], !dbg !702

for.inc:                                          ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %for.body
  %incdec.ptr = getelementptr inbounds i8, ptr %p.0155, i64 1, !dbg !703
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !628, metadata !DIExpression()), !dbg !633
  %9 = load i8, ptr %incdec.ptr, align 1, !dbg !695, !tbaa !652
  %cmp1.not = icmp eq i8 %9, 0, !dbg !698
  br i1 %cmp1.not, label %if.end34, label %for.body, !dbg !699, !llvm.loop !704

if.then22:                                        ; preds = %switch.early.test
  %call23 = tail call i64 @strlen(ptr noundef nonnull %call.i) #21, !dbg !706
  call void @llvm.dbg.value(metadata ptr %length, metadata !631, metadata !DIExpression(DW_OP_deref)), !dbg !633
  %call24 = call ptr @Base64Encode(ptr noundef nonnull %call.i, i64 noundef %call23, ptr noundef nonnull %length) #20, !dbg !709
  call void @llvm.dbg.value(metadata ptr %call24, metadata !626, metadata !DIExpression()), !dbg !633
  %call25 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call.i) #20, !dbg !710
  call void @llvm.dbg.value(metadata ptr %call25, metadata !632, metadata !DIExpression()), !dbg !633
  %cmp26 = icmp eq ptr %call24, null, !dbg !711
  br i1 %cmp26, label %cleanup, label %if.end29, !dbg !713

if.end29:                                         ; preds = %if.then22
  %call30 = call ptr @AcquireString(ptr noundef nonnull @.str.3) #20, !dbg !714
  call void @llvm.dbg.value(metadata ptr %call30, metadata !627, metadata !DIExpression()), !dbg !633
  store ptr %call30, ptr %canonical_content, align 8, !dbg !715, !tbaa !312
  call void @llvm.dbg.value(metadata ptr %canonical_content, metadata !627, metadata !DIExpression(DW_OP_deref)), !dbg !633
  %call31 = call i32 @ConcatenateString(ptr noundef nonnull %canonical_content, ptr noundef nonnull %call24) #20, !dbg !716
  %call32 = call ptr @DestroyString(ptr noundef nonnull %call24) #20, !dbg !717
  call void @llvm.dbg.value(metadata ptr %call32, metadata !626, metadata !DIExpression()), !dbg !633
  %call33 = call i32 @ConcatenateString(ptr noundef nonnull %canonical_content, ptr noundef nonnull @.str.4) #20, !dbg !718
  %10 = load ptr, ptr %canonical_content, align 8, !dbg !719, !tbaa !312
  call void @llvm.dbg.value(metadata ptr %10, metadata !627, metadata !DIExpression()), !dbg !633
  br label %cleanup, !dbg !720

if.end34:                                         ; preds = %for.inc, %ConvertLatin1ToUTF8.exit
  call void @llvm.dbg.value(metadata i64 0, metadata !629, metadata !DIExpression()), !dbg !633
  %call35 = tail call ptr @AcquireString(ptr noundef null) #20, !dbg !721
  call void @llvm.dbg.value(metadata ptr %call35, metadata !627, metadata !DIExpression()), !dbg !633
  store ptr %call35, ptr %canonical_content, align 8, !dbg !722, !tbaa !312
  call void @llvm.dbg.value(metadata i64 4096, metadata !630, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !628, metadata !DIExpression()), !dbg !633
  %11 = load i8, ptr %call.i, align 1, !dbg !723, !tbaa !652
  %cmp38.not156 = icmp eq i8 %11, 0, !dbg !726
  br i1 %cmp38.not156, label %for.end92, label %for.body40.lr.ph, !dbg !727

for.body40.lr.ph:                                 ; preds = %if.end34
  %cmp75 = icmp eq i32 %pedantic, 0
  br label %for.body40, !dbg !727

for.body40:                                       ; preds = %for.body40.lr.ph, %for.inc90
  %12 = phi i8 [ %11, %for.body40.lr.ph ], [ %23, %for.inc90 ]
  %extent.0160 = phi i64 [ 4096, %for.body40.lr.ph ], [ %extent.1, %for.inc90 ]
  %i.0159 = phi i64 [ 0, %for.body40.lr.ph ], [ %i.1, %for.inc90 ]
  %p.1157 = phi ptr [ %call.i, %for.body40.lr.ph ], [ %incdec.ptr91, %for.inc90 ]
  call void @llvm.dbg.value(metadata i64 %extent.0160, metadata !630, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata i64 %i.0159, metadata !629, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata ptr %p.1157, metadata !628, metadata !DIExpression()), !dbg !633
  %add = add nsw i64 %i.0159, 4096, !dbg !728
  %cmp41 = icmp sgt i64 %add, %extent.0160, !dbg !731
  br i1 %cmp41, label %if.then43, label %if.end50, !dbg !732

if.then43:                                        ; preds = %for.body40
  %add44 = add i64 %extent.0160, 4096, !dbg !733
  call void @llvm.dbg.value(metadata i64 %add44, metadata !630, metadata !DIExpression()), !dbg !633
  %13 = load ptr, ptr %canonical_content, align 8, !dbg !735, !tbaa !312
  call void @llvm.dbg.value(metadata ptr %13, metadata !627, metadata !DIExpression()), !dbg !633
  %call45 = tail call ptr @ResizeQuantumMemory(ptr noundef %13, i64 noundef %add44, i64 noundef 1) #23, !dbg !736
  call void @llvm.dbg.value(metadata ptr %call45, metadata !627, metadata !DIExpression()), !dbg !633
  store ptr %call45, ptr %canonical_content, align 8, !dbg !737, !tbaa !312
  %cmp46 = icmp eq ptr %call45, null, !dbg !738
  br i1 %cmp46, label %cleanup, label %if.end50thread-pre-split, !dbg !740

if.end50thread-pre-split:                         ; preds = %if.then43
  %.pr = load i8, ptr %p.1157, align 1, !dbg !741, !tbaa !652
  br label %if.end50, !dbg !741

if.end50:                                         ; preds = %if.end50thread-pre-split, %for.body40
  %14 = phi i8 [ %.pr, %if.end50thread-pre-split ], [ %12, %for.body40 ], !dbg !741
  %extent.1 = phi i64 [ %add44, %if.end50thread-pre-split ], [ %extent.0160, %for.body40 ], !dbg !633
  call void @llvm.dbg.value(metadata i64 %extent.1, metadata !630, metadata !DIExpression()), !dbg !633
  switch i8 %14, label %sw.default [
    i8 38, label %sw.bb
    i8 60, label %sw.bb54
    i8 62, label %sw.bb58
    i8 34, label %sw.bb62
    i8 10, label %sw.bb66
    i8 9, label %sw.bb74
    i8 13, label %sw.bb84
  ], !dbg !742

sw.bb:                                            ; preds = %if.end50
  %15 = load ptr, ptr %canonical_content, align 8, !dbg !743, !tbaa !312
  call void @llvm.dbg.value(metadata ptr %15, metadata !627, metadata !DIExpression()), !dbg !633
  %add.ptr = getelementptr inbounds i8, ptr %15, i64 %i.0159, !dbg !746
  %call52 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %add.ptr, i64 noundef %extent.1, ptr noundef nonnull @.str.5) #20, !dbg !747
  %add53 = add nsw i64 %call52, %i.0159, !dbg !748
  call void @llvm.dbg.value(metadata i64 %add53, metadata !629, metadata !DIExpression()), !dbg !633
  br label %for.inc90, !dbg !749

sw.bb54:                                          ; preds = %if.end50
  %16 = load ptr, ptr %canonical_content, align 8, !dbg !750, !tbaa !312
  call void @llvm.dbg.value(metadata ptr %16, metadata !627, metadata !DIExpression()), !dbg !633
  %add.ptr55 = getelementptr inbounds i8, ptr %16, i64 %i.0159, !dbg !752
  %call56 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %add.ptr55, i64 noundef %extent.1, ptr noundef nonnull @.str.6) #20, !dbg !753
  %add57 = add nsw i64 %call56, %i.0159, !dbg !754
  call void @llvm.dbg.value(metadata i64 %add57, metadata !629, metadata !DIExpression()), !dbg !633
  br label %for.inc90, !dbg !755

sw.bb58:                                          ; preds = %if.end50
  %17 = load ptr, ptr %canonical_content, align 8, !dbg !756, !tbaa !312
  call void @llvm.dbg.value(metadata ptr %17, metadata !627, metadata !DIExpression()), !dbg !633
  %add.ptr59 = getelementptr inbounds i8, ptr %17, i64 %i.0159, !dbg !758
  %call60 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %add.ptr59, i64 noundef %extent.1, ptr noundef nonnull @.str.7) #20, !dbg !759
  %add61 = add nsw i64 %call60, %i.0159, !dbg !760
  call void @llvm.dbg.value(metadata i64 %add61, metadata !629, metadata !DIExpression()), !dbg !633
  br label %for.inc90, !dbg !761

sw.bb62:                                          ; preds = %if.end50
  %18 = load ptr, ptr %canonical_content, align 8, !dbg !762, !tbaa !312
  call void @llvm.dbg.value(metadata ptr %18, metadata !627, metadata !DIExpression()), !dbg !633
  %add.ptr63 = getelementptr inbounds i8, ptr %18, i64 %i.0159, !dbg !764
  %call64 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %add.ptr63, i64 noundef %extent.1, ptr noundef nonnull @.str.8) #20, !dbg !765
  %add65 = add nsw i64 %call64, %i.0159, !dbg !766
  call void @llvm.dbg.value(metadata i64 %add65, metadata !629, metadata !DIExpression()), !dbg !633
  br label %for.inc90, !dbg !767

sw.bb66:                                          ; preds = %if.end50
  %19 = load ptr, ptr %canonical_content, align 8, !dbg !768, !tbaa !312
  call void @llvm.dbg.value(metadata ptr %19, metadata !627, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata ptr %19, metadata !627, metadata !DIExpression()), !dbg !633
  br i1 %cmp75, label %if.then69, label %if.end70, !dbg !770

if.then69:                                        ; preds = %sw.bb66
  %inc = add nsw i64 %i.0159, 1, !dbg !771
  call void @llvm.dbg.value(metadata i64 %inc, metadata !629, metadata !DIExpression()), !dbg !633
  %arrayidx = getelementptr inbounds i8, ptr %19, i64 %i.0159, !dbg !774
  store i8 10, ptr %arrayidx, align 1, !dbg !775, !tbaa !652
  br label %for.inc90, !dbg !776

if.end70:                                         ; preds = %sw.bb66
  %add.ptr71 = getelementptr inbounds i8, ptr %19, i64 %i.0159, !dbg !777
  %call72 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %add.ptr71, i64 noundef %extent.1, ptr noundef nonnull @.str.9) #20, !dbg !778
  %add73 = add nsw i64 %call72, %i.0159, !dbg !779
  call void @llvm.dbg.value(metadata i64 %add73, metadata !629, metadata !DIExpression()), !dbg !633
  br label %for.inc90, !dbg !780

sw.bb74:                                          ; preds = %if.end50
  %20 = load ptr, ptr %canonical_content, align 8, !dbg !781, !tbaa !312
  call void @llvm.dbg.value(metadata ptr %20, metadata !627, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata ptr %20, metadata !627, metadata !DIExpression()), !dbg !633
  br i1 %cmp75, label %if.then77, label %if.end80, !dbg !783

if.then77:                                        ; preds = %sw.bb74
  %inc78 = add nsw i64 %i.0159, 1, !dbg !784
  call void @llvm.dbg.value(metadata i64 %inc78, metadata !629, metadata !DIExpression()), !dbg !633
  %arrayidx79 = getelementptr inbounds i8, ptr %20, i64 %i.0159, !dbg !787
  store i8 9, ptr %arrayidx79, align 1, !dbg !788, !tbaa !652
  br label %for.inc90, !dbg !789

if.end80:                                         ; preds = %sw.bb74
  %add.ptr81 = getelementptr inbounds i8, ptr %20, i64 %i.0159, !dbg !790
  %call82 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %add.ptr81, i64 noundef %extent.1, ptr noundef nonnull @.str.10) #20, !dbg !791
  %add83 = add nsw i64 %call82, %i.0159, !dbg !792
  call void @llvm.dbg.value(metadata i64 %add83, metadata !629, metadata !DIExpression()), !dbg !633
  br label %for.inc90, !dbg !793

sw.bb84:                                          ; preds = %if.end50
  %21 = load ptr, ptr %canonical_content, align 8, !dbg !794, !tbaa !312
  call void @llvm.dbg.value(metadata ptr %21, metadata !627, metadata !DIExpression()), !dbg !633
  %add.ptr85 = getelementptr inbounds i8, ptr %21, i64 %i.0159, !dbg !796
  %call86 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %add.ptr85, i64 noundef %extent.1, ptr noundef nonnull @.str.11) #20, !dbg !797
  %add87 = add nsw i64 %call86, %i.0159, !dbg !798
  call void @llvm.dbg.value(metadata i64 %add87, metadata !629, metadata !DIExpression()), !dbg !633
  br label %for.inc90, !dbg !799

sw.default:                                       ; preds = %if.end50
  %22 = load ptr, ptr %canonical_content, align 8, !dbg !800, !tbaa !312
  call void @llvm.dbg.value(metadata ptr %22, metadata !627, metadata !DIExpression()), !dbg !633
  %inc88 = add nsw i64 %i.0159, 1, !dbg !802
  call void @llvm.dbg.value(metadata i64 %inc88, metadata !629, metadata !DIExpression()), !dbg !633
  %arrayidx89 = getelementptr inbounds i8, ptr %22, i64 %i.0159, !dbg !800
  store i8 %14, ptr %arrayidx89, align 1, !dbg !803, !tbaa !652
  br label %for.inc90, !dbg !804

for.inc90:                                        ; preds = %sw.bb, %sw.bb54, %sw.bb58, %sw.bb62, %if.then69, %if.end70, %if.then77, %if.end80, %sw.bb84, %sw.default
  %i.1 = phi i64 [ %inc88, %sw.default ], [ %add87, %sw.bb84 ], [ %inc78, %if.then77 ], [ %add83, %if.end80 ], [ %inc, %if.then69 ], [ %add73, %if.end70 ], [ %add65, %sw.bb62 ], [ %add61, %sw.bb58 ], [ %add57, %sw.bb54 ], [ %add53, %sw.bb ], !dbg !805
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !629, metadata !DIExpression()), !dbg !633
  %incdec.ptr91 = getelementptr inbounds i8, ptr %p.1157, i64 1, !dbg !806
  call void @llvm.dbg.value(metadata i64 %extent.1, metadata !630, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata ptr %incdec.ptr91, metadata !628, metadata !DIExpression()), !dbg !633
  %23 = load i8, ptr %incdec.ptr91, align 1, !dbg !723, !tbaa !652
  %cmp38.not = icmp eq i8 %23, 0, !dbg !726
  br i1 %cmp38.not, label %for.end92.loopexit, label %for.body40, !dbg !727, !llvm.loop !807

for.end92.loopexit:                               ; preds = %for.inc90
  %.pre = load ptr, ptr %canonical_content, align 8, !dbg !809, !tbaa !312
  br label %for.end92, !dbg !809

for.end92:                                        ; preds = %for.end92.loopexit, %if.end34
  %24 = phi ptr [ %call35, %if.end34 ], [ %.pre, %for.end92.loopexit ], !dbg !809
  %i.0.lcssa = phi i64 [ 0, %if.end34 ], [ %i.1, %for.end92.loopexit ], !dbg !633
  call void @llvm.dbg.value(metadata ptr %24, metadata !627, metadata !DIExpression()), !dbg !633
  %arrayidx93 = getelementptr inbounds i8, ptr %24, i64 %i.0.lcssa, !dbg !809
  store i8 0, ptr %arrayidx93, align 1, !dbg !810, !tbaa !652
  %call94 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call.i) #20, !dbg !811
  call void @llvm.dbg.value(metadata ptr %call94, metadata !632, metadata !DIExpression()), !dbg !633
  %25 = load ptr, ptr %canonical_content, align 8, !dbg !812, !tbaa !312
  call void @llvm.dbg.value(metadata ptr %25, metadata !627, metadata !DIExpression()), !dbg !633
  br label %cleanup, !dbg !813

cleanup:                                          ; preds = %if.then43, %for.end.i, %if.end.i, %if.then22, %for.end92, %if.end29
  %retval.0 = phi ptr [ %10, %if.end29 ], [ %25, %for.end92 ], [ null, %if.then22 ], [ null, %if.end.i ], [ null, %for.end.i ], [ null, %if.then43 ], !dbg !633
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %length) #20, !dbg !814
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %canonical_content) #20, !dbg !814
  ret ptr %retval.0, !dbg !814
}

declare !dbg !815 ptr @Base64Encode(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

declare !dbg !818 ptr @AcquireString(ptr noundef) local_unnamed_addr #4

declare !dbg !819 i32 @ConcatenateString(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: allocsize(1,2)
declare !dbg !822 ptr @ResizeQuantumMemory(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

declare !dbg !825 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @DestroyXMLTree(ptr noundef %xml_info) local_unnamed_addr #0 !dbg !830 {
entry:
  call void @llvm.dbg.value(metadata ptr %xml_info, metadata !832, metadata !DIExpression()), !dbg !833
  %debug = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 9, !dbg !834
  %0 = load i32, ptr %debug, align 8, !dbg !834, !tbaa !263
  %cmp.not = icmp eq i32 %0, 0, !dbg !836
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !837

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 576, ptr noundef nonnull @.str.2) #20, !dbg !838
  br label %if.end, !dbg !839

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata ptr %xml_info, metadata !840, metadata !DIExpression()) #20, !dbg !847
  %child.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 8, !dbg !849
  %1 = load ptr, ptr %child.i, align 8, !dbg !849, !tbaa !291
  call void @llvm.dbg.value(metadata ptr %1, metadata !845, metadata !DIExpression()) #20, !dbg !847
  %cmp.not.i42 = icmp eq ptr %1, null, !dbg !850
  br i1 %cmp.not.i42, label %DestroyXMLTreeChild.exit, label %while.cond1.i, !dbg !851

while.cond1.i:                                    ; preds = %if.end, %while.cond1.i.backedge
  %node.1.i = phi ptr [ %node.1.i.be, %while.cond1.i.backedge ], [ %1, %if.end ], !dbg !847
  %prev.0.i = phi ptr [ %prev.0.i.be, %while.cond1.i.backedge ], [ null, %if.end ], !dbg !852
  call void @llvm.dbg.value(metadata ptr %prev.0.i, metadata !846, metadata !DIExpression()) #20, !dbg !847
  call void @llvm.dbg.value(metadata ptr %node.1.i, metadata !845, metadata !DIExpression()) #20, !dbg !847
  %child2.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.1.i, i64 0, i32 8, !dbg !854
  %2 = load ptr, ptr %child2.i, align 8, !dbg !854, !tbaa !291
  %cmp3.not.i = icmp eq ptr %2, null, !dbg !855
  br i1 %cmp3.not.i, label %while.end.i, label %while.cond1.i.backedge, !dbg !856

while.cond1.i.backedge:                           ; preds = %while.cond1.i, %if.then.i
  %node.1.i.be = phi ptr [ %2, %while.cond1.i ], [ %prev.0.i, %if.then.i ]
  %prev.0.i.be = phi ptr [ %node.1.i, %while.cond1.i ], [ null, %if.then.i ]
  br label %while.cond1.i, !dbg !847, !llvm.loop !857

while.end.i:                                      ; preds = %while.cond1.i
  %call.i = tail call ptr @DestroyXMLTree(ptr noundef nonnull %node.1.i) #20, !dbg !859
  %cond = icmp eq ptr %prev.0.i, null, !dbg !860
  br i1 %cond, label %DestroyXMLTreeChild.exit, label %if.then.i, !dbg !860

if.then.i:                                        ; preds = %while.end.i
  %child7.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %prev.0.i, i64 0, i32 8, !dbg !861
  store ptr null, ptr %child7.i, align 8, !dbg !863, !tbaa !291
  call void @llvm.dbg.value(metadata ptr %prev.0.i, metadata !845, metadata !DIExpression()) #20, !dbg !847
  br label %while.cond1.i.backedge, !dbg !851

DestroyXMLTreeChild.exit:                         ; preds = %while.end.i, %if.end
  store ptr null, ptr %child.i, align 8, !dbg !864, !tbaa !291
  call void @llvm.dbg.value(metadata ptr %xml_info, metadata !865, metadata !DIExpression()) #20, !dbg !870
  %ordered.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 7, !dbg !872
  %3 = load ptr, ptr %ordered.i, align 8, !dbg !872, !tbaa !301
  call void @llvm.dbg.value(metadata ptr %3, metadata !868, metadata !DIExpression()) #20, !dbg !870
  %cmp.not.i1944 = icmp eq ptr %3, null, !dbg !873
  br i1 %cmp.not.i1944, label %DestroyXMLTreeOrdered.exit, label %while.cond1.i24, !dbg !874

while.cond1.i24:                                  ; preds = %DestroyXMLTreeChild.exit, %while.cond1.i24.backedge
  %node.1.i21 = phi ptr [ %node.1.i21.be, %while.cond1.i24.backedge ], [ %3, %DestroyXMLTreeChild.exit ], !dbg !870
  %prev.0.i22 = phi ptr [ %prev.0.i22.be, %while.cond1.i24.backedge ], [ null, %DestroyXMLTreeChild.exit ], !dbg !875
  call void @llvm.dbg.value(metadata ptr %prev.0.i22, metadata !869, metadata !DIExpression()) #20, !dbg !870
  call void @llvm.dbg.value(metadata ptr %node.1.i21, metadata !868, metadata !DIExpression()) #20, !dbg !870
  %ordered2.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.1.i21, i64 0, i32 7, !dbg !877
  %4 = load ptr, ptr %ordered2.i, align 8, !dbg !877, !tbaa !301
  %cmp3.not.i23 = icmp eq ptr %4, null, !dbg !878
  br i1 %cmp3.not.i23, label %while.end.i27, label %while.cond1.i24.backedge, !dbg !879

while.cond1.i24.backedge:                         ; preds = %while.cond1.i24, %if.then.i28
  %node.1.i21.be = phi ptr [ %4, %while.cond1.i24 ], [ %prev.0.i22, %if.then.i28 ]
  %prev.0.i22.be = phi ptr [ %node.1.i21, %while.cond1.i24 ], [ null, %if.then.i28 ]
  br label %while.cond1.i24, !dbg !870, !llvm.loop !880

while.end.i27:                                    ; preds = %while.cond1.i24
  %call.i25 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %node.1.i21) #20, !dbg !882
  %cond47 = icmp eq ptr %prev.0.i22, null, !dbg !883
  br i1 %cond47, label %DestroyXMLTreeOrdered.exit, label %if.then.i28, !dbg !883

if.then.i28:                                      ; preds = %while.end.i27
  %ordered7.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %prev.0.i22, i64 0, i32 7, !dbg !884
  store ptr null, ptr %ordered7.i, align 8, !dbg !886, !tbaa !301
  call void @llvm.dbg.value(metadata ptr %prev.0.i22, metadata !868, metadata !DIExpression()) #20, !dbg !870
  br label %while.cond1.i24.backedge, !dbg !874

DestroyXMLTreeOrdered.exit:                       ; preds = %while.end.i27, %DestroyXMLTreeChild.exit
  store ptr null, ptr %ordered.i, align 8, !dbg !887, !tbaa !301
  call void @llvm.dbg.value(metadata ptr %xml_info, metadata !888, metadata !DIExpression()) #20, !dbg !895
  %5 = load i32, ptr %debug, align 8, !dbg !897, !tbaa !263
  %cmp.not.i30 = icmp eq i32 %5, 0, !dbg !899
  br i1 %cmp.not.i30, label %if.end.i33, label %if.then.i32, !dbg !900

if.then.i32:                                      ; preds = %DestroyXMLTreeOrdered.exit
  %call.i31 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 525, ptr noundef nonnull @.str.2) #20, !dbg !901
  br label %if.end.i33, !dbg !902

if.end.i33:                                       ; preds = %if.then.i32, %DestroyXMLTreeOrdered.exit
  %parent.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 4, !dbg !903
  %6 = load ptr, ptr %parent.i, align 8, !dbg !903, !tbaa !288
  %cmp1.not.i = icmp eq ptr %6, null, !dbg !905
  br i1 %cmp1.not.i, label %for.cond.preheader.i, label %DestroyXMLTreeRoot.exit, !dbg !906

for.cond.preheader.i:                             ; preds = %if.end.i33
  %entities.i = getelementptr inbounds %struct._XMLTreeRoot, ptr %xml_info, i64 0, i32 4
  call void @llvm.dbg.value(metadata i64 10, metadata !892, metadata !DIExpression()) #20, !dbg !895
  %7 = load ptr, ptr %entities.i, align 8, !dbg !907, !tbaa !910
  %arrayidx196.i = getelementptr inbounds ptr, ptr %7, i64 10, !dbg !912
  %8 = load ptr, ptr %arrayidx196.i, align 8, !dbg !912, !tbaa !312
  %cmp4.not197.i = icmp eq ptr %8, null, !dbg !913
  br i1 %cmp4.not197.i, label %for.end.i, label %for.body.i, !dbg !914

for.body.i:                                       ; preds = %for.cond.preheader.i, %for.body.i
  %9 = phi ptr [ %12, %for.body.i ], [ %7, %for.cond.preheader.i ]
  %i.0198.i = phi i64 [ %add11.i, %for.body.i ], [ 10, %for.cond.preheader.i ]
  call void @llvm.dbg.value(metadata i64 %i.0198.i, metadata !892, metadata !DIExpression()) #20, !dbg !895
  %add.i = or i64 %i.0198.i, 1, !dbg !915
  %arrayidx6.i = getelementptr inbounds ptr, ptr %9, i64 %add.i, !dbg !916
  %10 = load ptr, ptr %arrayidx6.i, align 8, !dbg !916, !tbaa !312
  %call7.i = tail call ptr @DestroyString(ptr noundef %10) #20, !dbg !917
  %11 = load ptr, ptr %entities.i, align 8, !dbg !918, !tbaa !910
  %arrayidx10.i = getelementptr inbounds ptr, ptr %11, i64 %add.i, !dbg !919
  store ptr %call7.i, ptr %arrayidx10.i, align 8, !dbg !920, !tbaa !312
  %add11.i = add nuw nsw i64 %i.0198.i, 2, !dbg !921
  call void @llvm.dbg.value(metadata i64 %add11.i, metadata !892, metadata !DIExpression()) #20, !dbg !895
  %12 = load ptr, ptr %entities.i, align 8, !dbg !907, !tbaa !910
  %arrayidx.i = getelementptr inbounds ptr, ptr %12, i64 %add11.i, !dbg !912
  %13 = load ptr, ptr %arrayidx.i, align 8, !dbg !912, !tbaa !312
  %cmp4.not.i = icmp eq ptr %13, null, !dbg !913
  br i1 %cmp4.not.i, label %for.end.i, label %for.body.i, !dbg !914, !llvm.loop !922

for.end.i:                                        ; preds = %for.body.i, %for.cond.preheader.i
  %.lcssa195.i = phi ptr [ %7, %for.cond.preheader.i ], [ %12, %for.body.i ], !dbg !907
  %call13.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %.lcssa195.i) #20, !dbg !924
  store ptr %call13.i, ptr %entities.i, align 8, !dbg !925, !tbaa !910
  call void @llvm.dbg.value(metadata i64 0, metadata !892, metadata !DIExpression()) #20, !dbg !895
  %attributes16.i = getelementptr inbounds %struct._XMLTreeRoot, ptr %xml_info, i64 0, i32 5
  %14 = load ptr, ptr %attributes16.i, align 8, !dbg !926, !tbaa !929
  %15 = load ptr, ptr %14, align 8, !dbg !930, !tbaa !312
  %cmp18.not204.i = icmp eq ptr %15, null, !dbg !931
  br i1 %cmp18.not204.i, label %if.end73.i, label %for.body19.i, !dbg !932

for.body19.i:                                     ; preds = %for.end.i, %for.end62.i
  %16 = phi ptr [ %24, %for.end62.i ], [ %15, %for.end.i ]
  %i.1205.i = phi i64 [ %inc.i, %for.end62.i ], [ 0, %for.end.i ]
  call void @llvm.dbg.value(metadata i64 %i.1205.i, metadata !892, metadata !DIExpression()) #20, !dbg !895
  call void @llvm.dbg.value(metadata ptr %16, metadata !891, metadata !DIExpression()) #20, !dbg !895
  %17 = load ptr, ptr %16, align 8, !dbg !933, !tbaa !312
  %cmp23.not.i = icmp eq ptr %17, null, !dbg !936
  br i1 %cmp23.not.i, label %if.end28.i, label %if.then24.i, !dbg !937

if.then24.i:                                      ; preds = %for.body19.i
  %call26.i = tail call ptr @DestroyString(ptr noundef nonnull %17) #20, !dbg !938
  store ptr %call26.i, ptr %16, align 8, !dbg !939, !tbaa !312
  br label %if.end28.i, !dbg !940

if.end28.i:                                       ; preds = %if.then24.i, %for.body19.i
  call void @llvm.dbg.value(metadata i64 1, metadata !893, metadata !DIExpression()) #20, !dbg !895
  %arrayidx30200.i = getelementptr inbounds ptr, ptr %16, i64 1, !dbg !941
  %18 = load ptr, ptr %arrayidx30200.i, align 8, !dbg !941, !tbaa !312
  %cmp31.not201.i = icmp eq ptr %18, null, !dbg !944
  br i1 %cmp31.not201.i, label %for.end62.i, label %if.then35.i, !dbg !945

if.then35.i:                                      ; preds = %if.end28.i, %for.inc60.i
  %19 = phi ptr [ %22, %for.inc60.i ], [ %18, %if.end28.i ]
  %arrayidx30203.i = phi ptr [ %arrayidx30.i, %for.inc60.i ], [ %arrayidx30200.i, %if.end28.i ]
  %j.0202.i = phi i64 [ %add61.i, %for.inc60.i ], [ 1, %if.end28.i ]
  call void @llvm.dbg.value(metadata i64 %j.0202.i, metadata !893, metadata !DIExpression()) #20, !dbg !895
  %call37.i = tail call ptr @DestroyString(ptr noundef nonnull %19) #20, !dbg !946
  store ptr %call37.i, ptr %arrayidx30203.i, align 8, !dbg !949, !tbaa !312
  %add40.i = add nuw nsw i64 %j.0202.i, 1, !dbg !950
  %arrayidx41.i = getelementptr inbounds ptr, ptr %16, i64 %add40.i, !dbg !952
  %20 = load ptr, ptr %arrayidx41.i, align 8, !dbg !952, !tbaa !312
  %cmp42.not.i = icmp eq ptr %20, null, !dbg !953
  br i1 %cmp42.not.i, label %if.end49.i, label %if.then43.i, !dbg !954

if.then43.i:                                      ; preds = %if.then35.i
  %call46.i = tail call ptr @DestroyString(ptr noundef nonnull %20) #20, !dbg !955
  store ptr %call46.i, ptr %arrayidx41.i, align 8, !dbg !956, !tbaa !312
  br label %if.end49.i, !dbg !957

if.end49.i:                                       ; preds = %if.then43.i, %if.then35.i
  %add50.i = add nuw nsw i64 %j.0202.i, 2, !dbg !958
  %arrayidx51.i = getelementptr inbounds ptr, ptr %16, i64 %add50.i, !dbg !960
  %21 = load ptr, ptr %arrayidx51.i, align 8, !dbg !960, !tbaa !312
  %cmp52.not.i = icmp eq ptr %21, null, !dbg !961
  br i1 %cmp52.not.i, label %for.inc60.i, label %if.then53.i, !dbg !962

if.then53.i:                                      ; preds = %if.end49.i
  %call56.i = tail call ptr @DestroyString(ptr noundef nonnull %21) #20, !dbg !963
  store ptr %call56.i, ptr %arrayidx51.i, align 8, !dbg !964, !tbaa !312
  br label %for.inc60.i, !dbg !965

for.inc60.i:                                      ; preds = %if.then53.i, %if.end49.i
  %add61.i = add nuw nsw i64 %j.0202.i, 3, !dbg !966
  call void @llvm.dbg.value(metadata i64 %add61.i, metadata !893, metadata !DIExpression()) #20, !dbg !895
  %arrayidx30.i = getelementptr inbounds ptr, ptr %16, i64 %add61.i, !dbg !941
  %22 = load ptr, ptr %arrayidx30.i, align 8, !dbg !941, !tbaa !312
  %cmp31.not.i = icmp eq ptr %22, null, !dbg !944
  br i1 %cmp31.not.i, label %for.end62.i, label %if.then35.i, !dbg !945, !llvm.loop !967

for.end62.i:                                      ; preds = %for.inc60.i, %if.end28.i
  %call63.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %16) #20, !dbg !969
  call void @llvm.dbg.value(metadata ptr %call63.i, metadata !891, metadata !DIExpression()) #20, !dbg !895
  %inc.i = add nuw nsw i64 %i.1205.i, 1, !dbg !970
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !892, metadata !DIExpression()) #20, !dbg !895
  %23 = load ptr, ptr %attributes16.i, align 8, !dbg !926, !tbaa !929
  %arrayidx17.i = getelementptr inbounds ptr, ptr %23, i64 %inc.i, !dbg !930
  %24 = load ptr, ptr %arrayidx17.i, align 8, !dbg !930, !tbaa !312
  %cmp18.not.i = icmp eq ptr %24, null, !dbg !931
  br i1 %cmp18.not.i, label %for.end65.i, label %for.body19.i, !dbg !932, !llvm.loop !971

for.end65.i:                                      ; preds = %for.end62.i
  %.pre.i = load ptr, ptr %23, align 8, !dbg !973, !tbaa !312
  %phi.cmp.i = icmp eq ptr %.pre.i, null, !dbg !973
  br i1 %phi.cmp.i, label %if.end73.i, label %if.then69.i, !dbg !975

if.then69.i:                                      ; preds = %for.end65.i
  %call71.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %23) #20, !dbg !976
  store ptr %call71.i, ptr %attributes16.i, align 8, !dbg !977, !tbaa !929
  br label %if.end73.i, !dbg !978

if.end73.i:                                       ; preds = %if.then69.i, %for.end65.i, %for.end.i
  %processing_instructions.i = getelementptr inbounds %struct._XMLTreeRoot, ptr %xml_info, i64 0, i32 3, !dbg !979
  %25 = load ptr, ptr %processing_instructions.i, align 8, !dbg !979, !tbaa !981
  %26 = load ptr, ptr %25, align 8, !dbg !982, !tbaa !312
  %cmp75.not.i = icmp eq ptr %26, null, !dbg !983
  br i1 %cmp75.not.i, label %DestroyXMLTreeRoot.exit, label %for.cond82.preheader.i, !dbg !984

for.cond82.preheader.i:                           ; preds = %if.end73.i, %for.end97.i
  %27 = phi ptr [ %42, %for.end97.i ], [ %26, %if.end73.i ], !dbg !985
  %i.2214.i = phi i64 [ %inc113.i, %for.end97.i ], [ 0, %if.end73.i ]
  call void @llvm.dbg.value(metadata i64 %i.2214.i, metadata !892, metadata !DIExpression()) #20, !dbg !895
  call void @llvm.dbg.value(metadata i64 0, metadata !893, metadata !DIExpression()) #20, !dbg !895
  %28 = load ptr, ptr %27, align 8, !dbg !985, !tbaa !312
  %cmp86.not209.i = icmp eq ptr %28, null, !dbg !992
  br i1 %cmp86.not209.i, label %for.end97.i, label %for.body87.i, !dbg !993

for.body87.i:                                     ; preds = %for.cond82.preheader.i, %for.body87.i
  %29 = phi ptr [ %34, %for.body87.i ], [ %28, %for.cond82.preheader.i ]
  %j.1210.i = phi i64 [ %inc96.i, %for.body87.i ], [ 0, %for.cond82.preheader.i ]
  call void @llvm.dbg.value(metadata i64 %j.1210.i, metadata !893, metadata !DIExpression()) #20, !dbg !895
  %call91.i = tail call ptr @DestroyString(ptr noundef nonnull %29) #20, !dbg !994
  %30 = load ptr, ptr %processing_instructions.i, align 8, !dbg !995, !tbaa !981
  %arrayidx93.i = getelementptr inbounds ptr, ptr %30, i64 %i.2214.i, !dbg !996
  %31 = load ptr, ptr %arrayidx93.i, align 8, !dbg !996, !tbaa !312
  %arrayidx94.i = getelementptr inbounds ptr, ptr %31, i64 %j.1210.i, !dbg !996
  store ptr %call91.i, ptr %arrayidx94.i, align 8, !dbg !997, !tbaa !312
  %inc96.i = add nuw nsw i64 %j.1210.i, 1, !dbg !998
  call void @llvm.dbg.value(metadata i64 %inc96.i, metadata !893, metadata !DIExpression()) #20, !dbg !895
  %32 = load ptr, ptr %processing_instructions.i, align 8, !dbg !999, !tbaa !981
  %arrayidx84.i = getelementptr inbounds ptr, ptr %32, i64 %i.2214.i, !dbg !985
  %33 = load ptr, ptr %arrayidx84.i, align 8, !dbg !985, !tbaa !312
  %arrayidx85.i = getelementptr inbounds ptr, ptr %33, i64 %inc96.i, !dbg !985
  %34 = load ptr, ptr %arrayidx85.i, align 8, !dbg !985, !tbaa !312
  %cmp86.not.i = icmp eq ptr %34, null, !dbg !992
  br i1 %cmp86.not.i, label %for.end97.i, label %for.body87.i, !dbg !993, !llvm.loop !1000

for.end97.i:                                      ; preds = %for.body87.i, %for.cond82.preheader.i
  %j.1.lcssa.i = phi i64 [ 0, %for.cond82.preheader.i ], [ %inc96.i, %for.body87.i ], !dbg !1002
  %.lcssa.i = phi ptr [ %27, %for.cond82.preheader.i ], [ %33, %for.body87.i ], !dbg !985
  %add100.i = add nuw nsw i64 %j.1.lcssa.i, 1, !dbg !1003
  %arrayidx101.i = getelementptr inbounds ptr, ptr %.lcssa.i, i64 %add100.i, !dbg !1004
  %35 = load ptr, ptr %arrayidx101.i, align 8, !dbg !1004, !tbaa !312
  %call102.i = tail call ptr @DestroyString(ptr noundef %35) #20, !dbg !1005
  %36 = load ptr, ptr %processing_instructions.i, align 8, !dbg !1006, !tbaa !981
  %arrayidx104.i = getelementptr inbounds ptr, ptr %36, i64 %i.2214.i, !dbg !1007
  %37 = load ptr, ptr %arrayidx104.i, align 8, !dbg !1007, !tbaa !312
  %arrayidx106.i = getelementptr inbounds ptr, ptr %37, i64 %add100.i, !dbg !1007
  store ptr %call102.i, ptr %arrayidx106.i, align 8, !dbg !1008, !tbaa !312
  %38 = load ptr, ptr %processing_instructions.i, align 8, !dbg !1009, !tbaa !981
  %arrayidx108.i = getelementptr inbounds ptr, ptr %38, i64 %i.2214.i, !dbg !1010
  %39 = load ptr, ptr %arrayidx108.i, align 8, !dbg !1010, !tbaa !312
  %call109.i = tail call ptr @RelinquishMagickMemory(ptr noundef %39) #20, !dbg !1011
  %40 = load ptr, ptr %processing_instructions.i, align 8, !dbg !1012, !tbaa !981
  %arrayidx111.i = getelementptr inbounds ptr, ptr %40, i64 %i.2214.i, !dbg !1013
  store ptr %call109.i, ptr %arrayidx111.i, align 8, !dbg !1014, !tbaa !312
  %inc113.i = add nuw nsw i64 %i.2214.i, 1, !dbg !1015
  call void @llvm.dbg.value(metadata i64 %inc113.i, metadata !892, metadata !DIExpression()) #20, !dbg !895
  %41 = load ptr, ptr %processing_instructions.i, align 8, !dbg !1016, !tbaa !981
  %arrayidx79.i = getelementptr inbounds ptr, ptr %41, i64 %inc113.i, !dbg !1017
  %42 = load ptr, ptr %arrayidx79.i, align 8, !dbg !1017, !tbaa !312
  %cmp80.not.i = icmp eq ptr %42, null, !dbg !1018
  br i1 %cmp80.not.i, label %for.end114.i, label %for.cond82.preheader.i, !dbg !1019, !llvm.loop !1020

for.end114.i:                                     ; preds = %for.end97.i
  %call116.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %41) #20, !dbg !1022
  store ptr %call116.i, ptr %processing_instructions.i, align 8, !dbg !1023, !tbaa !981
  br label %DestroyXMLTreeRoot.exit, !dbg !1024

DestroyXMLTreeRoot.exit:                          ; preds = %if.end.i33, %if.end73.i, %for.end114.i
  %attributes = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 1, !dbg !1025
  %43 = load ptr, ptr %attributes, align 8, !dbg !1025, !tbaa !255
  call void @llvm.dbg.value(metadata ptr %43, metadata !1026, metadata !DIExpression()) #20, !dbg !1032
  %cmp.i = icmp eq ptr %43, null, !dbg !1034
  %cmp1.i = icmp eq ptr %43, @sentinel
  %or.cond.i = or i1 %cmp.i, %cmp1.i, !dbg !1036
  br i1 %or.cond.i, label %DestroyXMLTreeAttributes.exit, label %for.cond.preheader.i34, !dbg !1036

for.cond.preheader.i34:                           ; preds = %DestroyXMLTreeRoot.exit
  call void @llvm.dbg.value(metadata i64 0, metadata !1031, metadata !DIExpression()) #20, !dbg !1032
  %44 = load ptr, ptr %43, align 8, !dbg !1037, !tbaa !312
  %cmp2.not1.i = icmp eq ptr %44, null, !dbg !1040
  br i1 %cmp2.not1.i, label %for.end.i38, label %if.then5.i, !dbg !1041

if.then5.i:                                       ; preds = %for.cond.preheader.i34, %for.inc.i
  %45 = phi ptr [ %47, %for.inc.i ], [ %44, %for.cond.preheader.i34 ]
  %arrayidx3.i = phi ptr [ %arrayidx.i37, %for.inc.i ], [ %43, %for.cond.preheader.i34 ]
  %i.02.i = phi i64 [ %add18.i, %for.inc.i ], [ 0, %for.cond.preheader.i34 ]
  call void @llvm.dbg.value(metadata i64 %i.02.i, metadata !1031, metadata !DIExpression()) #20, !dbg !1032
  %call.i35 = tail call ptr @DestroyString(ptr noundef nonnull %45) #20, !dbg !1042
  store ptr %call.i35, ptr %arrayidx3.i, align 8, !dbg !1045, !tbaa !312
  %add.i36 = or i64 %i.02.i, 1, !dbg !1046
  %arrayidx9.i = getelementptr inbounds ptr, ptr %43, i64 %add.i36, !dbg !1048
  %46 = load ptr, ptr %arrayidx9.i, align 8, !dbg !1048, !tbaa !312
  %cmp10.not.i = icmp eq ptr %46, null, !dbg !1049
  br i1 %cmp10.not.i, label %for.inc.i, label %if.then11.i, !dbg !1050

if.then11.i:                                      ; preds = %if.then5.i
  %call14.i = tail call ptr @DestroyString(ptr noundef nonnull %46) #20, !dbg !1051
  store ptr %call14.i, ptr %arrayidx9.i, align 8, !dbg !1052, !tbaa !312
  br label %for.inc.i, !dbg !1053

for.inc.i:                                        ; preds = %if.then11.i, %if.then5.i
  %add18.i = add nuw nsw i64 %i.02.i, 2, !dbg !1054
  call void @llvm.dbg.value(metadata i64 %add18.i, metadata !1031, metadata !DIExpression()) #20, !dbg !1032
  %arrayidx.i37 = getelementptr inbounds ptr, ptr %43, i64 %add18.i, !dbg !1037
  %47 = load ptr, ptr %arrayidx.i37, align 8, !dbg !1037, !tbaa !312
  %cmp2.not.i = icmp eq ptr %47, null, !dbg !1040
  br i1 %cmp2.not.i, label %for.end.i38, label %if.then5.i, !dbg !1041, !llvm.loop !1055

for.end.i38:                                      ; preds = %for.inc.i, %for.cond.preheader.i34
  %call19.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %43) #20, !dbg !1057
  call void @llvm.dbg.value(metadata ptr %call19.i, metadata !1026, metadata !DIExpression()) #20, !dbg !1032
  br label %DestroyXMLTreeAttributes.exit, !dbg !1058

DestroyXMLTreeAttributes.exit:                    ; preds = %DestroyXMLTreeRoot.exit, %for.end.i38
  store ptr null, ptr %attributes, align 8, !dbg !1059, !tbaa !255
  %content = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 2, !dbg !1060
  %48 = load ptr, ptr %content, align 8, !dbg !1060, !tbaa !259
  %call3 = tail call ptr @DestroyString(ptr noundef %48) #20, !dbg !1061
  store ptr %call3, ptr %content, align 8, !dbg !1062, !tbaa !259
  %49 = load ptr, ptr %xml_info, align 8, !dbg !1063, !tbaa !247
  %call5 = tail call ptr @DestroyString(ptr noundef %49) #20, !dbg !1064
  store ptr %call5, ptr %xml_info, align 8, !dbg !1065, !tbaa !247
  %call7 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %xml_info) #20, !dbg !1066
  call void @llvm.dbg.value(metadata ptr %call7, metadata !832, metadata !DIExpression()), !dbg !833
  ret ptr null, !dbg !1067
}

; Function Attrs: nounwind uwtable
define internal fastcc void @DestroyXMLTreeAttributes(ptr noundef %attributes) unnamed_addr #0 !dbg !1027 {
entry:
  call void @llvm.dbg.value(metadata ptr %attributes, metadata !1026, metadata !DIExpression()), !dbg !1068
  %cmp = icmp eq ptr %attributes, null, !dbg !1069
  %cmp1 = icmp eq ptr %attributes, @sentinel
  %or.cond = or i1 %cmp, %cmp1, !dbg !1070
  br i1 %or.cond, label %cleanup, label %for.cond.preheader, !dbg !1070

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !1031, metadata !DIExpression()), !dbg !1068
  %0 = load ptr, ptr %attributes, align 8, !dbg !1071, !tbaa !312
  %cmp2.not1 = icmp eq ptr %0, null, !dbg !1072
  br i1 %cmp2.not1, label %for.end, label %if.then5, !dbg !1073

if.then5:                                         ; preds = %for.cond.preheader, %for.inc
  %1 = phi ptr [ %3, %for.inc ], [ %0, %for.cond.preheader ]
  %arrayidx3 = phi ptr [ %arrayidx, %for.inc ], [ %attributes, %for.cond.preheader ]
  %i.02 = phi i64 [ %add18, %for.inc ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.02, metadata !1031, metadata !DIExpression()), !dbg !1068
  %call = tail call ptr @DestroyString(ptr noundef nonnull %1) #20, !dbg !1074
  store ptr %call, ptr %arrayidx3, align 8, !dbg !1075, !tbaa !312
  %add = or i64 %i.02, 1, !dbg !1076
  %arrayidx9 = getelementptr inbounds ptr, ptr %attributes, i64 %add, !dbg !1077
  %2 = load ptr, ptr %arrayidx9, align 8, !dbg !1077, !tbaa !312
  %cmp10.not = icmp eq ptr %2, null, !dbg !1078
  br i1 %cmp10.not, label %for.inc, label %if.then11, !dbg !1079

if.then11:                                        ; preds = %if.then5
  %call14 = tail call ptr @DestroyString(ptr noundef nonnull %2) #20, !dbg !1080
  store ptr %call14, ptr %arrayidx9, align 8, !dbg !1081, !tbaa !312
  br label %for.inc, !dbg !1082

for.inc:                                          ; preds = %if.then5, %if.then11
  %add18 = add nuw nsw i64 %i.02, 2, !dbg !1083
  call void @llvm.dbg.value(metadata i64 %add18, metadata !1031, metadata !DIExpression()), !dbg !1068
  %arrayidx = getelementptr inbounds ptr, ptr %attributes, i64 %add18, !dbg !1071
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !1071, !tbaa !312
  %cmp2.not = icmp eq ptr %3, null, !dbg !1072
  br i1 %cmp2.not, label %for.end, label %if.then5, !dbg !1073, !llvm.loop !1084

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %call19 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %attributes) #20, !dbg !1086
  call void @llvm.dbg.value(metadata ptr %call19, metadata !1026, metadata !DIExpression()), !dbg !1068
  br label %cleanup, !dbg !1087

cleanup:                                          ; preds = %entry, %for.end
  ret void, !dbg !1088
}

; Function Attrs: nounwind uwtable
define hidden ptr @FileToXML(ptr noundef %filename, i64 noundef %extent) local_unnamed_addr #0 !dbg !1089 {
entry:
  %file_stats = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata ptr %filename, metadata !1093, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i64 %extent, metadata !1094, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i64 0, metadata !1099, metadata !DIExpression()), !dbg !1143
  %0 = load ptr, ptr @stdin, align 8, !dbg !1144, !tbaa !312
  %call = tail call i32 @fileno(ptr noundef %0) #20, !dbg !1145
  call void @llvm.dbg.value(metadata i32 %call, metadata !1096, metadata !DIExpression()), !dbg !1143
  %call1 = tail call i32 @LocaleCompare(ptr noundef %filename, ptr noundef nonnull @.str.12) #20, !dbg !1146
  %cmp.not = icmp eq i32 %call1, 0, !dbg !1148
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1149

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %filename, metadata !1150, metadata !DIExpression()) #20, !dbg !1160
  call void @llvm.dbg.value(metadata i32 0, metadata !1158, metadata !DIExpression()) #20, !dbg !1160
  call void @llvm.dbg.value(metadata i32 0, metadata !1159, metadata !DIExpression()) #20, !dbg !1160
  %call.i = tail call i32 (ptr, i32, ...) @open(ptr noundef %filename, i32 noundef 0, i32 noundef 0) #20, !dbg !1162
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !1096, metadata !DIExpression()), !dbg !1143
  br label %if.end, !dbg !1163

if.end:                                           ; preds = %if.then, %entry
  %file.0 = phi i32 [ %call.i, %if.then ], [ %call, %entry ], !dbg !1143
  call void @llvm.dbg.value(metadata i32 %file.0, metadata !1096, metadata !DIExpression()), !dbg !1143
  %cmp3 = icmp eq i32 %file.0, -1, !dbg !1164
  br i1 %cmp3, label %cleanup108, label %if.end5, !dbg !1166

if.end5:                                          ; preds = %if.end
  %call6 = tail call i64 @lseek(i32 noundef %file.0, i64 noundef 0, i32 noundef 2) #20, !dbg !1167
  call void @llvm.dbg.value(metadata i64 %call6, metadata !1097, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i64 0, metadata !1100, metadata !DIExpression()), !dbg !1143
  %1 = load ptr, ptr @stdin, align 8, !dbg !1168, !tbaa !312
  %call7 = tail call i32 @fileno(ptr noundef %1) #20, !dbg !1169
  %cmp8 = icmp eq i32 %file.0, %call7, !dbg !1170
  %cmp9 = icmp slt i64 %call6, 0
  %or.cond = select i1 %cmp8, i1 true, i1 %cmp9, !dbg !1171
  br i1 %or.cond, label %if.then12, label %if.end58, !dbg !1171

if.then12:                                        ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %file_stats) #20, !dbg !1172
  call void @llvm.dbg.declare(metadata ptr %file_stats, metadata !1105, metadata !DIExpression()), !dbg !1173
  %call13 = tail call i64 @lseek(i32 noundef %file.0, i64 noundef 0, i32 noundef 0) #20, !dbg !1174
  call void @llvm.dbg.value(metadata i64 %call13, metadata !1097, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i64 262142, metadata !1102, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i32 %file.0, metadata !1176, metadata !DIExpression()) #20, !dbg !1183
  call void @llvm.dbg.value(metadata ptr %file_stats, metadata !1182, metadata !DIExpression()) #20, !dbg !1183
  %call.i181 = call i32 @__fxstat(i32 noundef 1, i32 noundef %file.0, ptr noundef nonnull %file_stats) #20, !dbg !1186
  %cmp15 = icmp eq i32 %call.i181, 0, !dbg !1187
  %st_size = getelementptr inbounds %struct.stat, ptr %file_stats, i64 0, i32 8
  %2 = load i64, ptr %st_size, align 8
  %cmp16 = icmp ne i64 %2, 0
  %or.cond115 = select i1 %cmp15, i1 %cmp16, i1 false, !dbg !1188
  %3 = call i64 @llvm.umin.i64(i64 %2, i64 262142) #20
  %spec.select = select i1 %or.cond115, i64 %3, i64 262142, !dbg !1188
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !1102, metadata !DIExpression()), !dbg !1175
  %call21 = call ptr @AcquireQuantumMemory(i64 noundef %spec.select, i64 noundef 1) #22, !dbg !1189
  call void @llvm.dbg.value(metadata ptr %call21, metadata !1095, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i64 0, metadata !1098, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i64 0, metadata !1100, metadata !DIExpression()), !dbg !1143
  %cmp22.not190 = icmp eq ptr %call21, null, !dbg !1190
  br i1 %cmp22.not190, label %for.end, label %for.body.lr.ph, !dbg !1193

for.body.lr.ph:                                   ; preds = %if.then12
  %add35 = add nuw nsw i64 %spec.select, 1
  br label %for.body, !dbg !1193

for.cond:                                         ; preds = %if.end34
  call void @llvm.dbg.value(metadata i64 %count.1, metadata !1100, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i64 %add38, metadata !1098, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata ptr %call37, metadata !1095, metadata !DIExpression()), !dbg !1143
  %cmp22.not = icmp eq ptr %call37, null, !dbg !1190
  br i1 %cmp22.not, label %for.end, label %for.body, !dbg !1193, !llvm.loop !1194

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.0193 = phi i64 [ 0, %for.body.lr.ph ], [ %add38, %for.cond ]
  %xml.0191 = phi ptr [ %call21, %for.body.lr.ph ], [ %call37, %for.cond ]
  call void @llvm.dbg.value(metadata i64 %i.0193, metadata !1098, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata ptr %xml.0191, metadata !1095, metadata !DIExpression()), !dbg !1143
  %add.ptr = getelementptr inbounds i8, ptr %xml.0191, i64 %i.0193, !dbg !1196
  %call23 = call i64 @read(i32 noundef %file.0, ptr noundef nonnull %add.ptr, i64 noundef %spec.select) #20, !dbg !1198
  call void @llvm.dbg.value(metadata i64 %call23, metadata !1100, metadata !DIExpression()), !dbg !1143
  %cmp24 = icmp slt i64 %call23, 1, !dbg !1199
  br i1 %cmp24, label %if.then25, label %if.end30, !dbg !1201

if.then25:                                        ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 0, metadata !1100, metadata !DIExpression()), !dbg !1143
  %call26 = tail call ptr @__errno_location() #24, !dbg !1202
  %4 = load i32, ptr %call26, align 4, !dbg !1202, !tbaa !1205
  %cmp27.not = icmp eq i32 %4, 4, !dbg !1207
  br i1 %cmp27.not, label %if.end30, label %for.end, !dbg !1208

if.end30:                                         ; preds = %if.then25, %for.body
  %count.1 = phi i64 [ 0, %if.then25 ], [ %call23, %for.body ], !dbg !1209
  call void @llvm.dbg.value(metadata i64 %count.1, metadata !1100, metadata !DIExpression()), !dbg !1143
  %neg = xor i64 %i.0193, -1, !dbg !1210
  %cmp31.not = icmp ult i64 %spec.select, %neg, !dbg !1212
  br i1 %cmp31.not, label %if.end34, label %if.then32, !dbg !1213

if.then32:                                        ; preds = %if.end30
  %call33 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %xml.0191) #20, !dbg !1214
  call void @llvm.dbg.value(metadata ptr %call33, metadata !1095, metadata !DIExpression()), !dbg !1143
  br label %for.end, !dbg !1216

if.end34:                                         ; preds = %if.end30
  %add36 = add i64 %add35, %i.0193, !dbg !1217
  %call37 = call ptr @ResizeQuantumMemory(ptr noundef nonnull %xml.0191, i64 noundef %add36, i64 noundef 1) #23, !dbg !1218
  call void @llvm.dbg.value(metadata ptr %call37, metadata !1095, metadata !DIExpression()), !dbg !1143
  %add38 = add i64 %count.1, %i.0193, !dbg !1219
  %cmp39.not = icmp ult i64 %add38, %extent, !dbg !1221
  br i1 %cmp39.not, label %for.cond, label %for.end, !dbg !1222, !llvm.loop !1194

for.end:                                          ; preds = %for.cond, %if.then25, %if.end34, %if.then12, %if.then32
  %i.0186 = phi i64 [ %i.0193, %if.then32 ], [ 0, %if.then12 ], [ %add38, %for.cond ], [ %i.0193, %if.then25 ], [ %i.0193, %if.end34 ]
  %xml.1 = phi ptr [ %call33, %if.then32 ], [ null, %if.then12 ], [ null, %for.cond ], [ %xml.0191, %if.then25 ], [ %call37, %if.end34 ], !dbg !1175
  %count.2 = phi i64 [ %count.1, %if.then32 ], [ 0, %if.then12 ], [ %count.1, %for.cond ], [ 0, %if.then25 ], [ %count.1, %if.end34 ], !dbg !1143
  call void @llvm.dbg.value(metadata i64 %count.2, metadata !1100, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata ptr %xml.1, metadata !1095, metadata !DIExpression()), !dbg !1143
  %call43 = call i32 @LocaleCompare(ptr noundef %filename, ptr noundef nonnull @.str.12) #20, !dbg !1223
  %cmp44.not = icmp eq i32 %call43, 0, !dbg !1225
  br i1 %cmp44.not, label %if.end47, label %if.then45, !dbg !1226

if.then45:                                        ; preds = %for.end
  %call46 = call i32 @close(i32 noundef %file.0) #20, !dbg !1227
  call void @llvm.dbg.value(metadata i32 %call46, metadata !1096, metadata !DIExpression()), !dbg !1143
  br label %if.end47, !dbg !1228

if.end47:                                         ; preds = %if.then45, %for.end
  %file.1 = phi i32 [ %call46, %if.then45 ], [ %file.0, %for.end ], !dbg !1143
  call void @llvm.dbg.value(metadata i32 %file.1, metadata !1096, metadata !DIExpression()), !dbg !1143
  %cmp48 = icmp eq ptr %xml.1, null, !dbg !1229
  br i1 %cmp48, label %cleanup, label %if.end50, !dbg !1231

if.end50:                                         ; preds = %if.end47
  %cmp51 = icmp eq i32 %file.1, -1, !dbg !1232
  br i1 %cmp51, label %if.then52, label %if.end54, !dbg !1234

if.then52:                                        ; preds = %if.end50
  %call53 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %xml.1) #20, !dbg !1235
  call void @llvm.dbg.value(metadata ptr %call53, metadata !1095, metadata !DIExpression()), !dbg !1143
  br label %cleanup, !dbg !1237

if.end54:                                         ; preds = %if.end50
  %add55 = add i64 %count.2, %i.0186, !dbg !1238
  call void @llvm.dbg.value(metadata i64 %add55, metadata !1239, metadata !DIExpression()) #20, !dbg !1246
  call void @llvm.dbg.value(metadata i64 %extent, metadata !1245, metadata !DIExpression()) #20, !dbg !1246
  %5 = call i64 @llvm.umin.i64(i64 %add55, i64 %extent) #20, !dbg !1246
  call void @llvm.dbg.value(metadata i64 %5, metadata !1099, metadata !DIExpression()), !dbg !1143
  %arrayidx = getelementptr inbounds i8, ptr %xml.1, i64 %5, !dbg !1248
  store i8 0, ptr %arrayidx, align 1, !dbg !1249, !tbaa !652
  br label %cleanup, !dbg !1250

cleanup:                                          ; preds = %if.end47, %if.end54, %if.then52
  %retval.0 = phi ptr [ null, %if.then52 ], [ %xml.1, %if.end54 ], [ null, %if.end47 ], !dbg !1175
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %file_stats) #20, !dbg !1251
  br label %cleanup108

if.end58:                                         ; preds = %if.end5
  call void @llvm.dbg.value(metadata i64 %call6, metadata !1239, metadata !DIExpression()) #20, !dbg !1252
  call void @llvm.dbg.value(metadata i64 %extent, metadata !1245, metadata !DIExpression()) #20, !dbg !1252
  %6 = tail call i64 @llvm.umin.i64(i64 %call6, i64 %extent) #20, !dbg !1252
  call void @llvm.dbg.value(metadata i64 %6, metadata !1099, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata ptr null, metadata !1095, metadata !DIExpression()), !dbg !1143
  %add63 = add nuw i64 %6, 4096, !dbg !1254
  %call64 = tail call ptr @AcquireQuantumMemory(i64 noundef %add63, i64 noundef 1) #22, !dbg !1256
  call void @llvm.dbg.value(metadata ptr %call64, metadata !1095, metadata !DIExpression()), !dbg !1143
  %cmp66 = icmp eq ptr %call64, null, !dbg !1257
  br i1 %cmp66, label %if.then67, label %if.end69, !dbg !1259

if.then67:                                        ; preds = %if.end58
  %call68 = tail call i32 @close(i32 noundef %file.0) #20, !dbg !1260
  call void @llvm.dbg.value(metadata i32 %call68, metadata !1096, metadata !DIExpression()), !dbg !1143
  br label %cleanup108, !dbg !1262

if.end69:                                         ; preds = %if.end58
  %call70 = tail call ptr @MapBlob(i32 noundef %file.0, i32 noundef 0, i64 noundef 0, i64 noundef %6) #20, !dbg !1263
  call void @llvm.dbg.value(metadata ptr %call70, metadata !1101, metadata !DIExpression()), !dbg !1143
  %cmp71.not = icmp eq ptr %call70, null, !dbg !1264
  br i1 %cmp71.not, label %if.else, label %if.then72, !dbg !1266

if.then72:                                        ; preds = %if.end69
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call64, ptr nonnull align 1 %call70, i64 %6, i1 false), !dbg !1267
  %call73 = tail call i32 @UnmapBlob(ptr noundef nonnull %call70, i64 noundef %6) #20, !dbg !1269
  br label %if.end97, !dbg !1270

if.else:                                          ; preds = %if.end69
  %call74 = tail call i64 @lseek(i32 noundef %file.0, i64 noundef 0, i32 noundef 0) #20, !dbg !1271
  call void @llvm.dbg.value(metadata i64 0, metadata !1098, metadata !DIExpression()), !dbg !1143
  %cmp76188.not = icmp eq i64 %6, 0, !dbg !1273
  br i1 %cmp76188.not, label %if.end97, label %for.body77, !dbg !1276

for.body77:                                       ; preds = %if.else, %for.inc88
  %i.1189 = phi i64 [ %add89, %for.inc88 ], [ 0, %if.else ]
  call void @llvm.dbg.value(metadata i64 %i.1189, metadata !1098, metadata !DIExpression()), !dbg !1143
  %add.ptr78 = getelementptr inbounds i8, ptr %call64, i64 %i.1189, !dbg !1277
  %sub = sub i64 %6, %i.1189, !dbg !1279
  call void @llvm.dbg.value(metadata i64 %sub, metadata !1239, metadata !DIExpression()) #20, !dbg !1280
  call void @llvm.dbg.value(metadata i64 9223372036854775807, metadata !1245, metadata !DIExpression()) #20, !dbg !1280
  %7 = tail call i64 @llvm.umin.i64(i64 %sub, i64 9223372036854775807) #20, !dbg !1280
  %call80 = tail call i64 @read(i32 noundef %file.0, ptr noundef nonnull %add.ptr78, i64 noundef %7) #20, !dbg !1282
  call void @llvm.dbg.value(metadata i64 %call80, metadata !1100, metadata !DIExpression()), !dbg !1143
  %cmp81 = icmp slt i64 %call80, 1, !dbg !1283
  br i1 %cmp81, label %if.then82, label %for.inc88, !dbg !1285

if.then82:                                        ; preds = %for.body77
  call void @llvm.dbg.value(metadata i64 0, metadata !1100, metadata !DIExpression()), !dbg !1143
  %call83 = tail call ptr @__errno_location() #24, !dbg !1286
  %8 = load i32, ptr %call83, align 4, !dbg !1286, !tbaa !1205
  %cmp84.not = icmp eq i32 %8, 4, !dbg !1289
  br i1 %cmp84.not, label %for.inc88, label %if.then92, !dbg !1290

for.inc88:                                        ; preds = %for.body77, %if.then82
  %count.3 = phi i64 [ 0, %if.then82 ], [ %call80, %for.body77 ], !dbg !1291
  call void @llvm.dbg.value(metadata i64 %count.3, metadata !1100, metadata !DIExpression()), !dbg !1143
  %add89 = add i64 %count.3, %i.1189, !dbg !1292
  call void @llvm.dbg.value(metadata i64 %add89, metadata !1098, metadata !DIExpression()), !dbg !1143
  %cmp76 = icmp ugt i64 %6, %add89, !dbg !1273
  br i1 %cmp76, label %for.body77, label %if.end97, !dbg !1276, !llvm.loop !1293

if.then92:                                        ; preds = %if.then82
  %call93 = tail call i32 @close(i32 noundef %file.0) #20, !dbg !1295
  call void @llvm.dbg.value(metadata i32 %call93, metadata !1096, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1143
  %call95 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call64) #20, !dbg !1298
  call void @llvm.dbg.value(metadata ptr %call95, metadata !1095, metadata !DIExpression()), !dbg !1143
  br label %cleanup108, !dbg !1299

if.end97:                                         ; preds = %for.inc88, %if.else, %if.then72
  %arrayidx98 = getelementptr inbounds i8, ptr %call64, i64 %6, !dbg !1300
  store i8 0, ptr %arrayidx98, align 1, !dbg !1301, !tbaa !652
  %call99 = tail call i32 @LocaleCompare(ptr noundef %filename, ptr noundef nonnull @.str.12) #20, !dbg !1302
  %cmp100.not = icmp eq i32 %call99, 0, !dbg !1304
  br i1 %cmp100.not, label %if.end103, label %if.then101, !dbg !1305

if.then101:                                       ; preds = %if.end97
  %call102 = tail call i32 @close(i32 noundef %file.0) #20, !dbg !1306
  call void @llvm.dbg.value(metadata i32 %call102, metadata !1096, metadata !DIExpression()), !dbg !1143
  br label %if.end103, !dbg !1307

if.end103:                                        ; preds = %if.then101, %if.end97
  %file.2 = phi i32 [ %call102, %if.then101 ], [ %file.0, %if.end97 ], !dbg !1143
  call void @llvm.dbg.value(metadata i32 %file.2, metadata !1096, metadata !DIExpression()), !dbg !1143
  %cmp104 = icmp eq i32 %file.2, -1, !dbg !1308
  br i1 %cmp104, label %if.then105, label %cleanup108, !dbg !1310

if.then105:                                       ; preds = %if.end103
  %call106 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call64) #20, !dbg !1311
  call void @llvm.dbg.value(metadata ptr %call106, metadata !1095, metadata !DIExpression()), !dbg !1143
  br label %cleanup108, !dbg !1312

cleanup108:                                       ; preds = %if.end103, %if.then105, %if.end, %if.then92, %if.then67, %cleanup
  %retval.1 = phi ptr [ %retval.0, %cleanup ], [ null, %if.then67 ], [ null, %if.then92 ], [ null, %if.end ], [ %call106, %if.then105 ], [ %call64, %if.end103 ], !dbg !1143
  ret ptr %retval.1, !dbg !1313
}

; Function Attrs: nofree nounwind
declare !dbg !1314 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !1367 i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1370 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: allocsize(0,1)
declare !dbg !1374 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree
declare !dbg !1377 noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #12

declare !dbg !1380 i32 @close(i32 noundef) local_unnamed_addr #4

declare !dbg !1383 ptr @MapBlob(i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

declare !dbg !1390 i32 @UnmapBlob(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @GetNextXMLTreeTag(ptr nocapture noundef readonly %xml_info) local_unnamed_addr #0 !dbg !1393 {
entry:
  call void @llvm.dbg.value(metadata ptr %xml_info, metadata !1395, metadata !DIExpression()), !dbg !1396
  %debug = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 9, !dbg !1397
  %0 = load i32, ptr %debug, align 8, !dbg !1397, !tbaa !263
  %cmp.not = icmp eq i32 %0, 0, !dbg !1399
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1400

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 773, ptr noundef nonnull @.str.2) #20, !dbg !1401
  br label %if.end, !dbg !1402

if.end:                                           ; preds = %if.then, %entry
  %next = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 5, !dbg !1403
  %1 = load ptr, ptr %next, align 8, !dbg !1403, !tbaa !331
  ret ptr %1, !dbg !1404
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetXMLTreeAttribute(ptr nocapture noundef readonly %xml_info, ptr nocapture noundef readonly %tag) local_unnamed_addr #0 !dbg !1405 {
entry:
  call void @llvm.dbg.value(metadata ptr %xml_info, metadata !1409, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata ptr %tag, metadata !1410, metadata !DIExpression()), !dbg !1414
  %debug = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 9, !dbg !1415
  %0 = load i32, ptr %debug, align 8, !dbg !1415, !tbaa !263
  %cmp.not = icmp eq i32 %0, 0, !dbg !1417
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1418

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 818, ptr noundef nonnull @.str.2) #20, !dbg !1419
  br label %if.end, !dbg !1420

if.end:                                           ; preds = %if.then, %entry
  %attributes = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 1, !dbg !1421
  %1 = load ptr, ptr %attributes, align 8, !dbg !1421, !tbaa !255
  %cmp1 = icmp eq ptr %1, null, !dbg !1423
  br i1 %cmp1, label %cleanup, label %while.cond.preheader, !dbg !1424

while.cond.preheader:                             ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 0, metadata !1411, metadata !DIExpression()), !dbg !1414
  %2 = load ptr, ptr %1, align 8, !dbg !1425, !tbaa !312
  %cmp5.not110 = icmp eq ptr %2, null, !dbg !1426
  br i1 %cmp5.not110, label %while.cond18.preheader, label %land.rhs, !dbg !1427

while.cond18.preheader:                           ; preds = %while.body, %while.cond.preheader
  br label %while.cond18, !dbg !1428

land.rhs:                                         ; preds = %while.cond.preheader, %while.body
  %3 = phi ptr [ %4, %while.body ], [ %2, %while.cond.preheader ]
  %i.0111 = phi i64 [ %add, %while.body ], [ 0, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0111, metadata !1411, metadata !DIExpression()), !dbg !1414
  %call8 = tail call i32 @strcmp(ptr noundef nonnull %3, ptr noundef nonnull dereferenceable(1) %tag) #21, !dbg !1429
  %cmp9.not = icmp eq i32 %call8, 0, !dbg !1430
  br i1 %cmp9.not, label %if.then13, label %while.body, !dbg !1431

while.body:                                       ; preds = %land.rhs
  %add = add nuw nsw i64 %i.0111, 2, !dbg !1432
  call void @llvm.dbg.value(metadata i64 %add, metadata !1411, metadata !DIExpression()), !dbg !1414
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %add, !dbg !1425
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !1425, !tbaa !312
  %cmp5.not = icmp eq ptr %4, null, !dbg !1426
  br i1 %cmp5.not, label %while.cond18.preheader, label %land.rhs, !dbg !1427, !llvm.loop !1433

if.then13:                                        ; preds = %land.rhs
  %add15 = or i64 %i.0111, 1, !dbg !1435
  %arrayidx16 = getelementptr inbounds ptr, ptr %1, i64 %add15, !dbg !1437
  br label %cleanup.sink.split, !dbg !1438

while.cond18:                                     ; preds = %while.cond18.preheader, %while.cond18
  %root.0 = phi ptr [ %5, %while.cond18 ], [ %xml_info, %while.cond18.preheader ], !dbg !1414
  call void @llvm.dbg.value(metadata ptr %root.0, metadata !1413, metadata !DIExpression()), !dbg !1414
  %parent = getelementptr inbounds %struct._XMLTreeInfo, ptr %root.0, i64 0, i32 4, !dbg !1439
  %5 = load ptr, ptr %parent, align 8, !dbg !1439, !tbaa !1440
  %cmp20.not = icmp eq ptr %5, null, !dbg !1441
  br i1 %cmp20.not, label %while.cond25.preheader, label %while.cond18, !dbg !1428, !llvm.loop !1442

while.cond25.preheader:                           ; preds = %while.cond18
  %attributes26 = getelementptr inbounds %struct._XMLTreeRoot, ptr %root.0, i64 0, i32 5
  %6 = load ptr, ptr %attributes26, align 8, !tbaa !929
  call void @llvm.dbg.value(metadata i64 0, metadata !1411, metadata !DIExpression()), !dbg !1414
  %7 = load ptr, ptr %6, align 8, !dbg !1444, !tbaa !312
  %cmp28.not112 = icmp eq ptr %7, null, !dbg !1445
  br i1 %cmp28.not112, label %cleanup, label %land.rhs29.lr.ph, !dbg !1446

land.rhs29.lr.ph:                                 ; preds = %while.cond25.preheader
  %8 = load ptr, ptr %xml_info, align 8, !tbaa !247
  br label %land.rhs29, !dbg !1446

while.cond25:                                     ; preds = %land.rhs29
  %inc = add nuw nsw i64 %i.1113, 1, !dbg !1447
  call void @llvm.dbg.value(metadata i64 %i.1113, metadata !1411, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1414
  %arrayidx27 = getelementptr inbounds ptr, ptr %6, i64 %inc, !dbg !1444
  %9 = load ptr, ptr %arrayidx27, align 8, !dbg !1444, !tbaa !312
  %cmp28.not = icmp eq ptr %9, null, !dbg !1445
  br i1 %cmp28.not, label %cleanup, label %land.rhs29, !dbg !1446, !llvm.loop !1448

land.rhs29:                                       ; preds = %land.rhs29.lr.ph, %while.cond25
  %10 = phi ptr [ %7, %land.rhs29.lr.ph ], [ %9, %while.cond25 ]
  %i.1113 = phi i64 [ 0, %land.rhs29.lr.ph ], [ %inc, %while.cond25 ]
  call void @llvm.dbg.value(metadata i64 %i.1113, metadata !1411, metadata !DIExpression()), !dbg !1414
  %11 = load ptr, ptr %10, align 8, !dbg !1450, !tbaa !312
  %call34 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %8) #21, !dbg !1451
  %cmp35.not = icmp eq i32 %call34, 0, !dbg !1452
  call void @llvm.dbg.value(metadata i64 %i.1113, metadata !1411, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1414
  br i1 %cmp35.not, label %while.cond44.preheader, label %while.cond25, !dbg !1449

while.cond44.preheader:                           ; preds = %land.rhs29
  call void @llvm.dbg.value(metadata i64 1, metadata !1412, metadata !DIExpression()), !dbg !1414
  %arrayidx47114 = getelementptr inbounds ptr, ptr %10, i64 1, !dbg !1453
  %12 = load ptr, ptr %arrayidx47114, align 8, !dbg !1453, !tbaa !312
  %cmp48.not115 = icmp eq ptr %12, null, !dbg !1454
  br i1 %cmp48.not115, label %cleanup, label %land.rhs49, !dbg !1455

land.rhs49:                                       ; preds = %while.cond44.preheader, %while.body56
  %13 = phi ptr [ %14, %while.body56 ], [ %12, %while.cond44.preheader ]
  %j.0116 = phi i64 [ %add57, %while.body56 ], [ 1, %while.cond44.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.0116, metadata !1412, metadata !DIExpression()), !dbg !1414
  %call53 = tail call i32 @strcmp(ptr noundef nonnull %13, ptr noundef nonnull dereferenceable(1) %tag) #21, !dbg !1456
  %cmp54.not = icmp eq i32 %call53, 0, !dbg !1457
  br i1 %cmp54.not, label %if.end64, label %while.body56, !dbg !1458

while.body56:                                     ; preds = %land.rhs49
  %add57 = add nuw nsw i64 %j.0116, 3, !dbg !1459
  call void @llvm.dbg.value(metadata i64 %add57, metadata !1412, metadata !DIExpression()), !dbg !1414
  %arrayidx47 = getelementptr inbounds ptr, ptr %10, i64 %add57, !dbg !1453
  %14 = load ptr, ptr %arrayidx47, align 8, !dbg !1453, !tbaa !312
  %cmp48.not = icmp eq ptr %14, null, !dbg !1454
  br i1 %cmp48.not, label %cleanup, label %land.rhs49, !dbg !1455, !llvm.loop !1460

if.end64:                                         ; preds = %land.rhs49
  %add67 = add nuw nsw i64 %j.0116, 1, !dbg !1462
  %arrayidx68 = getelementptr inbounds ptr, ptr %10, i64 %add67, !dbg !1463
  br label %cleanup.sink.split, !dbg !1464

cleanup.sink.split:                               ; preds = %if.then13, %if.end64
  %arrayidx68.sink = phi ptr [ %arrayidx68, %if.end64 ], [ %arrayidx16, %if.then13 ]
  %15 = load ptr, ptr %arrayidx68.sink, align 8, !dbg !1414, !tbaa !312
  br label %cleanup, !dbg !1465

cleanup:                                          ; preds = %while.cond25, %while.body56, %cleanup.sink.split, %while.cond25.preheader, %while.cond44.preheader, %if.end
  %retval.0 = phi ptr [ null, %if.end ], [ null, %while.cond44.preheader ], [ null, %while.cond25.preheader ], [ %15, %cleanup.sink.split ], [ null, %while.body56 ], [ null, %while.cond25 ], !dbg !1414
  ret ptr %retval.0, !dbg !1465
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @GetXMLTreeAttributes(ptr nocapture noundef readonly %xml_info, ptr noundef %attributes) local_unnamed_addr #0 !dbg !1466 {
entry:
  call void @llvm.dbg.value(metadata ptr %xml_info, metadata !1476, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata ptr %attributes, metadata !1477, metadata !DIExpression()), !dbg !1479
  %debug = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 9, !dbg !1480
  %0 = load i32, ptr %debug, align 8, !dbg !1480, !tbaa !263
  %cmp.not = icmp eq i32 %0, 0, !dbg !1482
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1483

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 881, ptr noundef nonnull @.str.2) #20, !dbg !1484
  br label %if.end, !dbg !1485

if.end:                                           ; preds = %if.then, %entry
  %attributes1 = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 1, !dbg !1486
  %1 = load ptr, ptr %attributes1, align 8, !dbg !1486, !tbaa !255
  %cmp2 = icmp eq ptr %1, null, !dbg !1488
  br i1 %cmp2, label %cleanup, label %while.cond.preheader, !dbg !1489

while.cond.preheader:                             ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 0, metadata !1478, metadata !DIExpression()), !dbg !1479
  %2 = load ptr, ptr %1, align 8, !dbg !1490, !tbaa !312
  %cmp6.not22 = icmp eq ptr %2, null, !dbg !1491
  br i1 %cmp6.not22, label %cleanup, label %while.body, !dbg !1492

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %3 = phi ptr [ %7, %while.body ], [ %2, %while.cond.preheader ]
  %i.023 = phi i64 [ %add14, %while.body ], [ 0, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.023, metadata !1478, metadata !DIExpression()), !dbg !1479
  %call9 = tail call ptr @ConstantString(ptr noundef nonnull %3) #20, !dbg !1493
  %4 = load ptr, ptr %attributes1, align 8, !dbg !1495, !tbaa !255
  %add = or i64 %i.023, 1, !dbg !1496
  %arrayidx11 = getelementptr inbounds ptr, ptr %4, i64 %add, !dbg !1497
  %5 = load ptr, ptr %arrayidx11, align 8, !dbg !1497, !tbaa !312
  %call12 = tail call ptr @ConstantString(ptr noundef %5) #20, !dbg !1498
  %call13 = tail call i32 @AddValueToSplayTree(ptr noundef %attributes, ptr noundef %call9, ptr noundef %call12) #20, !dbg !1499
  %add14 = add nuw nsw i64 %i.023, 2, !dbg !1500
  call void @llvm.dbg.value(metadata i64 %add14, metadata !1478, metadata !DIExpression()), !dbg !1479
  %6 = load ptr, ptr %attributes1, align 8, !dbg !1501, !tbaa !255
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %add14, !dbg !1490
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !1490, !tbaa !312
  %cmp6.not = icmp eq ptr %7, null, !dbg !1491
  br i1 %cmp6.not, label %cleanup, label %while.body, !dbg !1492, !llvm.loop !1502

cleanup:                                          ; preds = %while.body, %while.cond.preheader, %if.end
  ret i32 1, !dbg !1504
}

declare !dbg !1505 i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @GetXMLTreeContent(ptr nocapture noundef readonly %xml_info) local_unnamed_addr #0 !dbg !1510 {
entry:
  call void @llvm.dbg.value(metadata ptr %xml_info, metadata !1514, metadata !DIExpression()), !dbg !1515
  %debug = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 9, !dbg !1516
  %0 = load i32, ptr %debug, align 8, !dbg !1516, !tbaa !263
  %cmp.not = icmp eq i32 %0, 0, !dbg !1518
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1519

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 965, ptr noundef nonnull @.str.2) #20, !dbg !1520
  br label %if.end, !dbg !1521

if.end:                                           ; preds = %if.then, %entry
  %content = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 2, !dbg !1522
  %1 = load ptr, ptr %content, align 8, !dbg !1522, !tbaa !259
  ret ptr %1, !dbg !1523
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetXMLTreePath(ptr noundef readonly %xml_info, ptr noundef %path) local_unnamed_addr #0 !dbg !1524 {
entry:
  %subnode = alloca [4096 x i8], align 16
  %tag = alloca [4096 x i8], align 16
  %number_components = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %xml_info, metadata !1526, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata ptr %path, metadata !1527, metadata !DIExpression()), !dbg !1535
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %subnode) #20, !dbg !1536
  call void @llvm.dbg.declare(metadata ptr %subnode, metadata !1529, metadata !DIExpression()), !dbg !1537
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %tag) #20, !dbg !1536
  call void @llvm.dbg.declare(metadata ptr %tag, metadata !1530, metadata !DIExpression()), !dbg !1538
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %number_components) #20, !dbg !1539
  %debug = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 9, !dbg !1540
  %0 = load i32, ptr %debug, align 8, !dbg !1540, !tbaa !263
  %cmp.not = icmp eq i32 %0, 0, !dbg !1542
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1543

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1049, ptr noundef nonnull @.str.2) #20, !dbg !1544
  br label %if.end, !dbg !1545

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata ptr %xml_info, metadata !1534, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata ptr %number_components, metadata !1532, metadata !DIExpression(DW_OP_deref)), !dbg !1535
  %call1 = call ptr @GetPathComponents(ptr noundef %path, ptr noundef nonnull %number_components) #20, !dbg !1546
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1528, metadata !DIExpression()), !dbg !1535
  %cmp2 = icmp eq ptr %call1, null, !dbg !1547
  br i1 %cmp2, label %cleanup, label %for.cond.preheader, !dbg !1549

for.cond.preheader:                               ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %xml_info, metadata !1534, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i64 0, metadata !1531, metadata !DIExpression()), !dbg !1535
  %1 = load i64, ptr %number_components, align 8, !dbg !1550, !tbaa !480
  call void @llvm.dbg.value(metadata i64 %1, metadata !1532, metadata !DIExpression()), !dbg !1535
  %cmp586 = icmp sgt i64 %1, 0, !dbg !1553
  br i1 %cmp586, label %for.body, label %for.end29, !dbg !1554

for.body:                                         ; preds = %for.cond.preheader, %if.end24
  %node.088 = phi ptr [ %node.1, %if.end24 ], [ %xml_info, %for.cond.preheader ]
  %i.087 = phi i64 [ %inc, %if.end24 ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata ptr %node.088, metadata !1534, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i64 %i.087, metadata !1531, metadata !DIExpression()), !dbg !1535
  %arrayidx = getelementptr inbounds ptr, ptr %call1, i64 %i.087, !dbg !1555
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !1555, !tbaa !312
  call void @GetPathComponent(ptr noundef %2, i32 noundef 7, ptr noundef nonnull %subnode) #20, !dbg !1557
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !1558, !tbaa !312
  call void @GetPathComponent(ptr noundef %3, i32 noundef 8, ptr noundef nonnull %tag) #20, !dbg !1559
  call void @llvm.dbg.value(metadata ptr %node.088, metadata !488, metadata !DIExpression()) #20, !dbg !1560
  call void @llvm.dbg.value(metadata ptr %tag, metadata !493, metadata !DIExpression()) #20, !dbg !1560
  %debug.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.088, i64 0, i32 9, !dbg !1562
  %4 = load i32, ptr %debug.i, align 8, !dbg !1562, !tbaa !263
  %cmp.not.i = icmp eq i32 %4, 0, !dbg !1563
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !1564

if.then.i:                                        ; preds = %for.body
  %call.i = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 928, ptr noundef nonnull @.str.2) #20, !dbg !1565
  br label %if.end.i, !dbg !1566

if.end.i:                                         ; preds = %if.then.i, %for.body
  %child1.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.088, i64 0, i32 8, !dbg !1567
  %5 = load ptr, ptr %child1.i, align 8, !dbg !1567, !tbaa !291
  call void @llvm.dbg.value(metadata ptr %5, metadata !494, metadata !DIExpression()) #20, !dbg !1560
  %cmp4.i.not = icmp eq ptr %5, null
  br i1 %cmp4.i.not, label %for.end29, label %land.rhs.i, !dbg !1568

land.rhs.i:                                       ; preds = %if.end.i, %while.body.i
  %child.0.i = phi ptr [ %7, %while.body.i ], [ %5, %if.end.i ], !dbg !1560
  call void @llvm.dbg.value(metadata ptr %child.0.i, metadata !494, metadata !DIExpression()) #20, !dbg !1560
  %6 = load ptr, ptr %child.0.i, align 8, !dbg !1569, !tbaa !247
  %call6.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull %tag) #21, !dbg !1570
  %cmp7.not.i = icmp eq i32 %call6.i, 0, !dbg !1571
  br i1 %cmp7.not.i, label %if.end12, label %while.body.i, !dbg !1572

while.body.i:                                     ; preds = %land.rhs.i
  %sibling.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %child.0.i, i64 0, i32 6, !dbg !1573
  %7 = load ptr, ptr %sibling.i, align 8, !dbg !1573, !tbaa !321
  call void @llvm.dbg.value(metadata ptr %7, metadata !494, metadata !DIExpression()) #20, !dbg !1560
  %cmp4.old.not.i = icmp eq ptr %7, null, !dbg !1574
  br i1 %cmp4.old.not.i, label %for.end29, label %land.rhs.i, !dbg !1575

if.end12:                                         ; preds = %land.rhs.i
  call void @llvm.dbg.value(metadata ptr %child.0.i, metadata !494, metadata !DIExpression()) #20, !dbg !1560
  call void @llvm.dbg.value(metadata ptr %child.0.i, metadata !1534, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata ptr %subnode, metadata !518, metadata !DIExpression()) #20, !dbg !1576
  %call.i69 = call i64 @strtol(ptr nocapture noundef nonnull %subnode, ptr noundef null, i32 noundef 10) #20, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %call.i69, metadata !1533, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1535
  br label %for.cond15, !dbg !1580

for.cond15:                                       ; preds = %GetXMLTreeOrdered.exit, %if.end12
  %j.0.in = phi i64 [ %call.i69, %if.end12 ], [ %j.0, %GetXMLTreeOrdered.exit ]
  %node.1 = phi ptr [ %child.0.i, %if.end12 ], [ %9, %GetXMLTreeOrdered.exit ], !dbg !1581
  %j.0 = add nsw i64 %j.0.in, -1, !dbg !1582
  call void @llvm.dbg.value(metadata ptr %node.1, metadata !1534, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i64 %j.0, metadata !1533, metadata !DIExpression()), !dbg !1535
  %cmp16 = icmp sgt i64 %j.0.in, 1, !dbg !1583
  br i1 %cmp16, label %for.body17, label %if.end24, !dbg !1585

for.body17:                                       ; preds = %for.cond15
  call void @llvm.dbg.value(metadata ptr %node.1, metadata !535, metadata !DIExpression()) #20, !dbg !1586
  %debug.i70 = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.1, i64 0, i32 9, !dbg !1589
  %8 = load i32, ptr %debug.i70, align 8, !dbg !1589, !tbaa !263
  %cmp.not.i71 = icmp eq i32 %8, 0, !dbg !1590
  br i1 %cmp.not.i71, label %GetXMLTreeOrdered.exit, label %if.then.i73, !dbg !1591

if.then.i73:                                      ; preds = %for.body17
  %call.i72 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 997, ptr noundef nonnull @.str.2) #20, !dbg !1592
  br label %GetXMLTreeOrdered.exit, !dbg !1593

GetXMLTreeOrdered.exit:                           ; preds = %for.body17, %if.then.i73
  %ordered.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.1, i64 0, i32 7, !dbg !1594
  %9 = load ptr, ptr %ordered.i, align 8, !dbg !1594, !tbaa !301
  call void @llvm.dbg.value(metadata ptr %9, metadata !1534, metadata !DIExpression()), !dbg !1535
  %cmp19 = icmp eq ptr %9, null, !dbg !1595
  br i1 %cmp19, label %for.end29, label %for.cond15, !dbg !1597, !llvm.loop !1598

if.end24:                                         ; preds = %for.cond15
  call void @llvm.dbg.value(metadata ptr %node.1, metadata !1534, metadata !DIExpression()), !dbg !1535
  %10 = load ptr, ptr %arrayidx, align 8, !dbg !1600, !tbaa !312
  %call26 = call ptr @DestroyString(ptr noundef %10) #20, !dbg !1601
  store ptr %call26, ptr %arrayidx, align 8, !dbg !1602, !tbaa !312
  %inc = add nuw nsw i64 %i.087, 1, !dbg !1603
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1531, metadata !DIExpression()), !dbg !1535
  %11 = load i64, ptr %number_components, align 8, !dbg !1550, !tbaa !480
  call void @llvm.dbg.value(metadata i64 %11, metadata !1532, metadata !DIExpression()), !dbg !1535
  %cmp5 = icmp slt i64 %inc, %11, !dbg !1553
  br i1 %cmp5, label %for.body, label %for.end29, !dbg !1554, !llvm.loop !1604

for.end29:                                        ; preds = %if.end24, %if.end.i, %while.body.i, %GetXMLTreeOrdered.exit, %for.cond.preheader
  %i.085 = phi i64 [ 0, %for.cond.preheader ], [ %i.087, %GetXMLTreeOrdered.exit ], [ %i.087, %while.body.i ], [ %inc, %if.end24 ], [ %i.087, %if.end.i ]
  %node.3 = phi ptr [ %xml_info, %for.cond.preheader ], [ null, %GetXMLTreeOrdered.exit ], [ null, %while.body.i ], [ %node.1, %if.end24 ], [ null, %if.end.i ], !dbg !1535
  call void @llvm.dbg.value(metadata ptr %node.3, metadata !1534, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i64 %i.085, metadata !1531, metadata !DIExpression()), !dbg !1535
  %12 = load i64, ptr %number_components, align 8, !dbg !1606, !tbaa !480
  call void @llvm.dbg.value(metadata i64 %12, metadata !1532, metadata !DIExpression()), !dbg !1535
  %cmp3192 = icmp slt i64 %i.085, %12, !dbg !1609
  br i1 %cmp3192, label %for.body32, label %for.end38, !dbg !1610

for.body32:                                       ; preds = %for.end29, %for.body32
  %i.193 = phi i64 [ %inc37, %for.body32 ], [ %i.085, %for.end29 ]
  call void @llvm.dbg.value(metadata i64 %i.193, metadata !1531, metadata !DIExpression()), !dbg !1535
  %arrayidx33 = getelementptr inbounds ptr, ptr %call1, i64 %i.193, !dbg !1611
  %13 = load ptr, ptr %arrayidx33, align 8, !dbg !1611, !tbaa !312
  %call34 = call ptr @DestroyString(ptr noundef %13) #20, !dbg !1612
  store ptr %call34, ptr %arrayidx33, align 8, !dbg !1613, !tbaa !312
  %inc37 = add nuw nsw i64 %i.193, 1, !dbg !1614
  call void @llvm.dbg.value(metadata i64 %inc37, metadata !1531, metadata !DIExpression()), !dbg !1535
  %14 = load i64, ptr %number_components, align 8, !dbg !1606, !tbaa !480
  call void @llvm.dbg.value(metadata i64 %14, metadata !1532, metadata !DIExpression()), !dbg !1535
  %cmp31 = icmp slt i64 %inc37, %14, !dbg !1609
  br i1 %cmp31, label %for.body32, label %for.end38, !dbg !1610, !llvm.loop !1615

for.end38:                                        ; preds = %for.body32, %for.end29
  %call39 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call1) #20, !dbg !1617
  call void @llvm.dbg.value(metadata ptr %call39, metadata !1528, metadata !DIExpression()), !dbg !1535
  br label %cleanup, !dbg !1618

cleanup:                                          ; preds = %if.end, %for.end38
  %retval.0 = phi ptr [ %node.3, %for.end38 ], [ null, %if.end ], !dbg !1535
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %number_components) #20, !dbg !1619
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %tag) #20, !dbg !1619
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %subnode) #20, !dbg !1619
  ret ptr %retval.0, !dbg !1619
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @GetXMLTreeProcessingInstructions(ptr nocapture noundef readonly %xml_info, ptr nocapture noundef readonly %target) local_unnamed_addr #0 !dbg !1620 {
entry:
  call void @llvm.dbg.value(metadata ptr %xml_info, metadata !1624, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata ptr %target, metadata !1625, metadata !DIExpression()), !dbg !1628
  %debug = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 9, !dbg !1629
  %0 = load i32, ptr %debug, align 8, !dbg !1629, !tbaa !263
  %cmp.not = icmp eq i32 %0, 0, !dbg !1631
  br i1 %cmp.not, label %while.cond.preheader, label %if.then, !dbg !1632

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1114, ptr noundef nonnull @.str.2) #20, !dbg !1633
  br label %while.cond.preheader, !dbg !1634

while.cond.preheader:                             ; preds = %if.then, %entry
  br label %while.cond, !dbg !1635

while.cond:                                       ; preds = %while.cond.preheader, %while.cond
  %root.0 = phi ptr [ %1, %while.cond ], [ %xml_info, %while.cond.preheader ], !dbg !1628
  call void @llvm.dbg.value(metadata ptr %root.0, metadata !1627, metadata !DIExpression()), !dbg !1628
  %parent = getelementptr inbounds %struct._XMLTreeInfo, ptr %root.0, i64 0, i32 4, !dbg !1636
  %1 = load ptr, ptr %parent, align 8, !dbg !1636, !tbaa !1440
  %cmp2.not = icmp eq ptr %1, null, !dbg !1637
  br i1 %cmp2.not, label %while.cond5.preheader, label %while.cond, !dbg !1635, !llvm.loop !1638

while.cond5.preheader:                            ; preds = %while.cond
  %processing_instructions = getelementptr inbounds %struct._XMLTreeRoot, ptr %root.0, i64 0, i32 3
  %2 = load ptr, ptr %processing_instructions, align 8, !tbaa !981
  call void @llvm.dbg.value(metadata i64 0, metadata !1626, metadata !DIExpression()), !dbg !1628
  %3 = load ptr, ptr %2, align 8, !dbg !1640, !tbaa !312
  %cmp6.not34 = icmp eq ptr %3, null, !dbg !1641
  br i1 %cmp6.not34, label %while.end13.thread, label %land.rhs, !dbg !1642

while.cond5:                                      ; preds = %land.rhs
  %inc = add nuw nsw i64 %i.035, 1, !dbg !1643
  call void @llvm.dbg.value(metadata i64 %i.035, metadata !1626, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1628
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %inc, !dbg !1640
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !1640, !tbaa !312
  %cmp6.not = icmp eq ptr %4, null, !dbg !1641
  br i1 %cmp6.not, label %while.end13.thread, label %land.rhs, !dbg !1642, !llvm.loop !1644

land.rhs:                                         ; preds = %while.cond5.preheader, %while.cond5
  %5 = phi ptr [ %4, %while.cond5 ], [ %3, %while.cond5.preheader ]
  %i.035 = phi i64 [ %inc, %while.cond5 ], [ 0, %while.cond5.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.035, metadata !1626, metadata !DIExpression()), !dbg !1628
  %6 = load ptr, ptr %5, align 8, !dbg !1646, !tbaa !312
  %call10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %target) #21, !dbg !1647
  %cmp11.not = icmp eq i32 %call10, 0, !dbg !1648
  call void @llvm.dbg.value(metadata i64 %i.035, metadata !1626, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1628
  br i1 %cmp11.not, label %while.end13, label %while.cond5, !dbg !1645

while.end13:                                      ; preds = %land.rhs
  %add.ptr = getelementptr inbounds ptr, ptr %5, i64 1
  br label %while.end13.thread

while.end13.thread:                               ; preds = %while.cond5, %while.cond5.preheader, %while.end13
  %7 = phi ptr [ %add.ptr, %while.end13 ], [ @sentinel, %while.cond5.preheader ], [ @sentinel, %while.cond5 ]
  ret ptr %7, !dbg !1649
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetXMLTreeSibling(ptr nocapture noundef readonly %xml_info) local_unnamed_addr #0 !dbg !1650 {
entry:
  call void @llvm.dbg.value(metadata ptr %xml_info, metadata !1652, metadata !DIExpression()), !dbg !1653
  %debug = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 9, !dbg !1654
  %0 = load i32, ptr %debug, align 8, !dbg !1654, !tbaa !263
  %cmp.not = icmp eq i32 %0, 0, !dbg !1656
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1657

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1155, ptr noundef nonnull @.str.2) #20, !dbg !1658
  br label %if.end, !dbg !1659

if.end:                                           ; preds = %if.then, %entry
  %sibling = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 6, !dbg !1660
  %1 = load ptr, ptr %sibling, align 8, !dbg !1660, !tbaa !321
  ret ptr %1, !dbg !1661
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetXMLTreeTag(ptr nocapture noundef readonly %xml_info) local_unnamed_addr #0 !dbg !1662 {
entry:
  call void @llvm.dbg.value(metadata ptr %xml_info, metadata !1664, metadata !DIExpression()), !dbg !1665
  %debug = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 9, !dbg !1666
  %0 = load i32, ptr %debug, align 8, !dbg !1666, !tbaa !263
  %cmp.not = icmp eq i32 %0, 0, !dbg !1668
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1669

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1187, ptr noundef nonnull @.str.2) #20, !dbg !1670
  br label %if.end, !dbg !1671

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %xml_info, align 8, !dbg !1672, !tbaa !247
  ret ptr %1, !dbg !1673
}

; Function Attrs: nounwind uwtable
define dso_local ptr @NewXMLTree(ptr noundef %xml, ptr noundef %exception) local_unnamed_addr #0 !dbg !1674 {
entry:
  call void @llvm.dbg.value(metadata ptr %xml, metadata !1691, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1692, metadata !DIExpression()), !dbg !1706
  %cmp = icmp eq ptr %xml, null, !dbg !1707
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1709

lor.lhs.false:                                    ; preds = %entry
  %strlenfirst = load i8, ptr %xml, align 1, !dbg !1710
  %cmp1 = icmp eq i8 %strlenfirst, 0, !dbg !1711
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1712

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call2 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1967, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #20, !dbg !1713
  br label %cleanup, !dbg !1715

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call ptr @NewXMLTreeTag(ptr noundef null), !dbg !1716
  call void @llvm.dbg.value(metadata ptr %call3, metadata !1705, metadata !DIExpression()), !dbg !1706
  %call4 = tail call i64 @strlen(ptr noundef nonnull %xml) #21, !dbg !1717
  call void @llvm.dbg.value(metadata i64 %call4, metadata !1702, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata ptr %xml, metadata !1718, metadata !DIExpression()) #20, !dbg !1732
  call void @llvm.dbg.value(metadata ptr undef, metadata !1723, metadata !DIExpression()) #20, !dbg !1732
  %call.i = tail call ptr @AcquireQuantumMemory(i64 noundef %call4, i64 noundef 1) #22, !dbg !1734
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1724, metadata !DIExpression()) #20, !dbg !1732
  %cmp.i = icmp eq ptr %call.i, null, !dbg !1735
  br i1 %cmp.i, label %if.then7, label %if.end.i, !dbg !1737

if.end.i:                                         ; preds = %if.end
  %0 = load i8, ptr %xml, align 1, !dbg !1738, !tbaa !652
  %cmp1.i = icmp eq i8 %0, -2, !dbg !1739
  call void @llvm.dbg.value(metadata i1 undef, metadata !1728, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #20, !dbg !1732
  %switch.i = icmp ugt i8 %0, -3, !dbg !1740
  br i1 %switch.i, label %if.end11.i, label %ConvertUTF16ToUTF8.exit.thread906, !dbg !1740

ConvertUTF16ToUTF8.exit.thread906:                ; preds = %if.end.i
  %call10.i = tail call ptr @CopyMagickMemory(ptr noundef nonnull %call.i, ptr noundef nonnull %xml, i64 noundef %call4) #20, !dbg !1741
  call void @llvm.dbg.value(metadata ptr %call116.i, metadata !1696, metadata !DIExpression()), !dbg !1706
  br label %if.end9, !dbg !1744

if.end11.i:                                       ; preds = %if.end.i
  call void @llvm.dbg.value(metadata i64 %call4, metadata !1730, metadata !DIExpression()) #20, !dbg !1732
  call void @llvm.dbg.value(metadata i64 2, metadata !1729, metadata !DIExpression()) #20, !dbg !1732
  call void @llvm.dbg.value(metadata i64 0, metadata !1731, metadata !DIExpression()) #20, !dbg !1732
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1724, metadata !DIExpression()) #20, !dbg !1732
  %sub205.i = add i64 %call4, -1, !dbg !1745
  %cmp12206.i = icmp sgt i64 %sub205.i, 2, !dbg !1748
  br i1 %cmp12206.i, label %for.body.i, label %ConvertUTF16ToUTF8.exit, !dbg !1749

for.body.i:                                       ; preds = %if.end11.i, %for.inc113.i
  %j.0210.i = phi i64 [ %j.2.i, %for.inc113.i ], [ 0, %if.end11.i ]
  %extent.0209.i = phi i64 [ %extent.1.i, %for.inc113.i ], [ %call4, %if.end11.i ]
  %i.0208.i = phi i64 [ %add114.i, %for.inc113.i ], [ 2, %if.end11.i ]
  %utf8.0207.i = phi ptr [ %utf8.1.i, %for.inc113.i ], [ %call.i, %if.end11.i ]
  call void @llvm.dbg.value(metadata i64 %j.0210.i, metadata !1731, metadata !DIExpression()) #20, !dbg !1732
  call void @llvm.dbg.value(metadata i64 %extent.0209.i, metadata !1730, metadata !DIExpression()) #20, !dbg !1732
  call void @llvm.dbg.value(metadata i64 %i.0208.i, metadata !1729, metadata !DIExpression()) #20, !dbg !1732
  call void @llvm.dbg.value(metadata ptr %utf8.0207.i, metadata !1724, metadata !DIExpression()) #20, !dbg !1732
  %add.i = add nsw i64 %i.0208.i, 1, !dbg !1750
  %add.i.i.0208.i = select i1 %cmp1.i, i64 %add.i, i64 %i.0208.i, !dbg !1752
  %i.0208.i.add.i = select i1 %cmp1.i, i64 %i.0208.i, i64 %add.i, !dbg !1752
  %shl26.sink.in.in.in.i = getelementptr inbounds i8, ptr %xml, i64 %i.0208.i.add.i, !dbg !1750
  %shl26.sink.in.in.i = load i8, ptr %shl26.sink.in.in.in.i, align 1, !dbg !1750, !tbaa !652
  %shl26.sink.in.i = zext i8 %shl26.sink.in.in.i to i32, !dbg !1750
  %shl26.sink.i = shl nuw nsw i32 %shl26.sink.in.i, 8, !dbg !1750
  %arrayidx27.i = getelementptr inbounds i8, ptr %xml, i64 %add.i.i.0208.i, !dbg !1750
  %1 = load i8, ptr %arrayidx27.i, align 1, !dbg !1750, !tbaa !652
  %conv28185.i = zext i8 %1 to i32, !dbg !1750
  %or30.i = or i32 %shl26.sink.i, %conv28185.i, !dbg !1750
  call void @llvm.dbg.value(metadata !DIArgList(i32 %shl26.sink.i, i32 %conv28185.i), metadata !1727, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)) #20, !dbg !1732
  %2 = and i32 %shl26.sink.in.i, 248, !dbg !1753
  %3 = icmp eq i32 %2, 216, !dbg !1753
  br i1 %3, label %land.lhs.true37.i, label %if.end72.i, !dbg !1753

land.lhs.true37.i:                                ; preds = %for.body.i
  %add38.i = add nsw i64 %i.0208.i, 2, !dbg !1755
  call void @llvm.dbg.value(metadata i64 %add38.i, metadata !1729, metadata !DIExpression()) #20, !dbg !1732
  %cmp40.i = icmp slt i64 %add38.i, %sub205.i, !dbg !1756
  br i1 %cmp40.i, label %if.then42.i, label %if.end72.i, !dbg !1757

if.then42.i:                                      ; preds = %land.lhs.true37.i
  %add50.i = add nsw i64 %i.0208.i, 3, !dbg !1758
  %add50.i.add38.i = select i1 %cmp1.i, i64 %add50.i, i64 %add38.i, !dbg !1760
  %add38.i.add50.i = select i1 %cmp1.i, i64 %add38.i, i64 %add50.i, !dbg !1760
  %shl60.sink.in.in.in.i = getelementptr inbounds i8, ptr %xml, i64 %add38.i.add50.i, !dbg !1758
  %shl60.sink.in.in.i = load i8, ptr %shl60.sink.in.in.in.i, align 1, !dbg !1758, !tbaa !652
  %shl60.sink.in.i = zext i8 %shl60.sink.in.in.i to i32, !dbg !1758
  %shl60.sink.i = shl nuw nsw i32 %shl60.sink.in.i, 8, !dbg !1758
  %arrayidx61.i = getelementptr inbounds i8, ptr %xml, i64 %add50.i.add38.i, !dbg !1758
  %4 = load i8, ptr %arrayidx61.i, align 1, !dbg !1758, !tbaa !652
  %conv62187.i = zext i8 %4 to i32, !dbg !1758
  call void @llvm.dbg.value(metadata !DIArgList(i32 %shl60.sink.i, i32 %conv62187.i), metadata !1726, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)) #20, !dbg !1732
  %and67.i = shl nuw nsw i32 %or30.i, 10, !dbg !1761
  %shl68.i = and i32 %and67.i, 1047552, !dbg !1761
  %shl60.sink.masked.i = and i32 %shl60.sink.i, 768, !dbg !1762
  %and69.i = or i32 %shl60.sink.masked.i, %conv62187.i, !dbg !1762
  %or70.i = add nuw nsw i32 %shl68.i, 65536, !dbg !1763
  %add71.i = or i32 %and69.i, %or70.i, !dbg !1764
  call void @llvm.dbg.value(metadata i32 %add71.i, metadata !1727, metadata !DIExpression()) #20, !dbg !1732
  br label %if.end72.i, !dbg !1765

if.end72.i:                                       ; preds = %if.then42.i, %land.lhs.true37.i, %for.body.i
  %c.0.i = phi i32 [ %add71.i, %if.then42.i ], [ %or30.i, %land.lhs.true37.i ], [ %or30.i, %for.body.i ], !dbg !1750
  %i.1.i = phi i64 [ %add38.i, %if.then42.i ], [ %add38.i, %land.lhs.true37.i ], [ %i.0208.i, %for.body.i ], !dbg !1766
  call void @llvm.dbg.value(metadata i64 %i.1.i, metadata !1729, metadata !DIExpression()) #20, !dbg !1732
  call void @llvm.dbg.value(metadata i32 %c.0.i, metadata !1727, metadata !DIExpression()) #20, !dbg !1732
  %add73.i = add i64 %j.0210.i, 4096, !dbg !1767
  %cmp74.i = icmp ugt i64 %add73.i, %extent.0209.i, !dbg !1769
  br i1 %cmp74.i, label %if.then76.i, label %if.end83.i, !dbg !1770

if.then76.i:                                      ; preds = %if.end72.i
  call void @llvm.dbg.value(metadata i64 %add73.i, metadata !1730, metadata !DIExpression()) #20, !dbg !1732
  %call78.i = tail call ptr @ResizeQuantumMemory(ptr noundef %utf8.0207.i, i64 noundef %add73.i, i64 noundef 1) #23, !dbg !1771
  call void @llvm.dbg.value(metadata ptr %call78.i, metadata !1724, metadata !DIExpression()) #20, !dbg !1732
  %cmp79.i = icmp eq ptr %call78.i, null, !dbg !1773
  br i1 %cmp79.i, label %if.then7, label %if.end83.i, !dbg !1775

if.end83.i:                                       ; preds = %if.then76.i, %if.end72.i
  %utf8.1.i = phi ptr [ %call78.i, %if.then76.i ], [ %utf8.0207.i, %if.end72.i ], !dbg !1732
  %extent.1.i = phi i64 [ %add73.i, %if.then76.i ], [ %extent.0209.i, %if.end72.i ], !dbg !1732
  call void @llvm.dbg.value(metadata i64 %extent.1.i, metadata !1730, metadata !DIExpression()) #20, !dbg !1732
  call void @llvm.dbg.value(metadata ptr %utf8.1.i, metadata !1724, metadata !DIExpression()) #20, !dbg !1732
  %cmp84.i = icmp slt i32 %c.0.i, 128, !dbg !1776
  br i1 %cmp84.i, label %if.then86.i, label %for.body93.i, !dbg !1778

if.then86.i:                                      ; preds = %if.end83.i
  %conv87.i = trunc i32 %c.0.i to i8, !dbg !1779
  %arrayidx88.i = getelementptr inbounds i8, ptr %utf8.1.i, i64 %j.0210.i, !dbg !1781
  store i8 %conv87.i, ptr %arrayidx88.i, align 1, !dbg !1782, !tbaa !652
  %inc.i = add nsw i64 %j.0210.i, 1, !dbg !1783
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !1731, metadata !DIExpression()) #20, !dbg !1732
  br label %for.inc113.i, !dbg !1784

for.body93.i:                                     ; preds = %if.end83.i, %for.body93.i
  %byte.0199.i = phi i32 [ %div.i, %for.body93.i ], [ %c.0.i, %if.end83.i ]
  %bits.0198.i = phi i32 [ %inc94.i, %for.body93.i ], [ 0, %if.end83.i ]
  call void @llvm.dbg.value(metadata i32 %byte.0199.i, metadata !1726, metadata !DIExpression()) #20, !dbg !1732
  call void @llvm.dbg.value(metadata i32 %bits.0198.i, metadata !1725, metadata !DIExpression()) #20, !dbg !1732
  %inc94.i = add nuw nsw i32 %bits.0198.i, 1, !dbg !1785
  call void @llvm.dbg.value(metadata i32 %inc94.i, metadata !1725, metadata !DIExpression()) #20, !dbg !1732
  %div.i = sdiv i32 %byte.0199.i, 2, !dbg !1788
  call void @llvm.dbg.value(metadata i32 %div.i, metadata !1726, metadata !DIExpression()) #20, !dbg !1732
  %byte.0199.off.i = add nsw i32 %byte.0199.i, 1, !dbg !1789
  %5 = icmp ult i32 %byte.0199.off.i, 3, !dbg !1789
  br i1 %5, label %for.cond90.for.end_crit_edge.i, label %for.body93.i, !dbg !1790, !llvm.loop !1791

for.cond90.for.end_crit_edge.i:                   ; preds = %for.body93.i
  %sub95.i = add nsw i32 %bits.0198.i, -1, !dbg !1793
  %div96.i = sdiv i32 %sub95.i, 5, !dbg !1794
  call void @llvm.dbg.value(metadata i32 %div96.i, metadata !1725, metadata !DIExpression()) #20, !dbg !1732
  %sub97.i = sub nsw i32 7, %div96.i, !dbg !1795
  %shl98.i = shl i32 255, %sub97.i, !dbg !1796
  %mul99.i = mul nsw i32 %div96.i, 6, !dbg !1797
  %shr.i = ashr i32 %c.0.i, %mul99.i, !dbg !1798
  %or100.i = or i32 %shl98.i, %shr.i, !dbg !1799
  %conv101.i = trunc i32 %or100.i to i8, !dbg !1800
  call void @llvm.dbg.value(metadata i64 %j.0210.i, metadata !1731, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #20, !dbg !1732
  %arrayidx103.i = getelementptr inbounds i8, ptr %utf8.1.i, i64 %j.0210.i, !dbg !1801
  store i8 %conv101.i, ptr %arrayidx103.i, align 1, !dbg !1802, !tbaa !652
  %j.1200.i = add nsw i64 %j.0210.i, 1, !dbg !1750
  call void @llvm.dbg.value(metadata i64 %j.1200.i, metadata !1731, metadata !DIExpression()) #20, !dbg !1732
  %6 = icmp ult i32 %bits.0198.i, 6, !dbg !1803
  br i1 %6, label %for.inc113.i, label %while.body.i, !dbg !1804

while.body.i:                                     ; preds = %for.cond90.for.end_crit_edge.i, %while.body.i
  %j.1203.i = phi i64 [ %j.1.i, %while.body.i ], [ %j.1200.i, %for.cond90.for.end_crit_edge.i ]
  %bits.1202.i = phi i32 [ %dec.i, %while.body.i ], [ %div96.i, %for.cond90.for.end_crit_edge.i ]
  call void @llvm.dbg.value(metadata i32 %bits.1202.i, metadata !1725, metadata !DIExpression()) #20, !dbg !1732
  %dec.i = add nsw i32 %bits.1202.i, -1, !dbg !1805
  call void @llvm.dbg.value(metadata i32 %dec.i, metadata !1725, metadata !DIExpression()) #20, !dbg !1732
  %mul106.i = mul nsw i32 %dec.i, 6, !dbg !1807
  %shr107.i = ashr i32 %c.0.i, %mul106.i, !dbg !1808
  %7 = trunc i32 %shr107.i to i8, !dbg !1809
  %8 = and i8 %7, 63, !dbg !1809
  %conv110.i = or i8 %8, -128, !dbg !1809
  %arrayidx111.i = getelementptr inbounds i8, ptr %utf8.1.i, i64 %j.1203.i, !dbg !1810
  store i8 %conv110.i, ptr %arrayidx111.i, align 1, !dbg !1811, !tbaa !652
  call void @llvm.dbg.value(metadata i64 %j.1203.i, metadata !1731, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #20, !dbg !1732
  %j.1.i = add nsw i64 %j.1203.i, 1, !dbg !1750
  call void @llvm.dbg.value(metadata i64 %j.1.i, metadata !1731, metadata !DIExpression()) #20, !dbg !1732
  %cmp104.not.i = icmp eq i32 %dec.i, 0, !dbg !1803
  br i1 %cmp104.not.i, label %for.inc113.i, label %while.body.i, !dbg !1804, !llvm.loop !1812

for.inc113.i:                                     ; preds = %while.body.i, %for.cond90.for.end_crit_edge.i, %if.then86.i
  %j.2.i = phi i64 [ %inc.i, %if.then86.i ], [ %j.1200.i, %for.cond90.for.end_crit_edge.i ], [ %j.1.i, %while.body.i ], !dbg !1750
  call void @llvm.dbg.value(metadata i64 %j.2.i, metadata !1731, metadata !DIExpression()) #20, !dbg !1732
  %add114.i = add nsw i64 %i.1.i, 2, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %extent.1.i, metadata !1730, metadata !DIExpression()) #20, !dbg !1732
  call void @llvm.dbg.value(metadata i64 %add114.i, metadata !1729, metadata !DIExpression()) #20, !dbg !1732
  call void @llvm.dbg.value(metadata ptr %utf8.1.i, metadata !1724, metadata !DIExpression()) #20, !dbg !1732
  %cmp12.i = icmp slt i64 %add114.i, %sub205.i, !dbg !1748
  br i1 %cmp12.i, label %for.body.i, label %ConvertUTF16ToUTF8.exit, !dbg !1749, !llvm.loop !1815

ConvertUTF16ToUTF8.exit:                          ; preds = %for.inc113.i, %if.end11.i
  %utf8.0.lcssa.i = phi ptr [ %call.i, %if.end11.i ], [ %utf8.1.i, %for.inc113.i ], !dbg !1732
  %j.0.lcssa.i = phi i64 [ 0, %if.end11.i ], [ %j.2.i, %for.inc113.i ], !dbg !1732
  %call116.i = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %utf8.0.lcssa.i, i64 noundef %j.0.lcssa.i, i64 noundef 1) #23, !dbg !1817
  call void @llvm.dbg.value(metadata ptr %call116.i, metadata !1696, metadata !DIExpression()), !dbg !1706
  %cmp6 = icmp eq ptr %call116.i, null, !dbg !1818
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !1744

if.then7:                                         ; preds = %if.then76.i, %if.end, %ConvertUTF16ToUTF8.exit
  %call8 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1976, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15) #20, !dbg !1820
  br label %cleanup, !dbg !1822

if.end9:                                          ; preds = %ConvertUTF16ToUTF8.exit.thread906, %ConvertUTF16ToUTF8.exit
  %retval.0.i911 = phi ptr [ %call.i, %ConvertUTF16ToUTF8.exit.thread906 ], [ %call116.i, %ConvertUTF16ToUTF8.exit ]
  %length.0910 = phi i64 [ %call4, %ConvertUTF16ToUTF8.exit.thread906 ], [ %j.0.lcssa.i, %ConvertUTF16ToUTF8.exit ]
  call void @llvm.dbg.value(metadata i64 %j.0.lcssa.i, metadata !1702, metadata !DIExpression()), !dbg !1706
  %sub = add i64 %length.0910, -1, !dbg !1823
  %arrayidx = getelementptr inbounds i8, ptr %retval.0.i911, i64 %sub, !dbg !1824
  %9 = load i8, ptr %arrayidx, align 1, !dbg !1824, !tbaa !652
  call void @llvm.dbg.value(metadata i8 %9, metadata !1698, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1706
  store i8 0, ptr %arrayidx, align 1, !dbg !1825, !tbaa !652
  call void @llvm.dbg.value(metadata ptr %call116.i, metadata !1700, metadata !DIExpression()), !dbg !1706
  br label %while.cond, !dbg !1826

while.cond:                                       ; preds = %while.body, %if.end9
  %p.0 = phi ptr [ %retval.0.i911, %if.end9 ], [ %incdec.ptr, %while.body ], !dbg !1706
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !1700, metadata !DIExpression()), !dbg !1706
  %10 = load i8, ptr %p.0, align 1, !dbg !1827, !tbaa !652
  switch i8 %10, label %while.body [
    i8 0, label %if.then21
    i8 60, label %for.cond.preheader
  ], !dbg !1828

for.cond.preheader:                               ; preds = %while.cond
  %call27 = tail call ptr @__ctype_b_loc() #24, !dbg !1706
  %cmp480 = icmp ne i8 %9, 62
  %cmp426.not = icmp eq i8 %9, 62
  %node.i872 = getelementptr inbounds %struct._XMLTreeRoot, ptr %call3, i64 0, i32 1
  %attributes77 = getelementptr inbounds %struct._XMLTreeRoot, ptr %call3, i64 0, i32 5
  %entities912 = getelementptr inbounds %struct._XMLTreeRoot, ptr %call3, i64 0, i32 4
  br label %for.cond, !dbg !1829

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8, ptr %p.0, i64 1, !dbg !1831
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1700, metadata !DIExpression()), !dbg !1706
  br label %while.cond, !dbg !1826, !llvm.loop !1832

if.then21:                                        ; preds = %while.cond
  %call22 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1987, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #20, !dbg !1833
  %call23 = tail call ptr @DestroyString(ptr noundef nonnull %retval.0.i911) #20, !dbg !1836
  call void @llvm.dbg.value(metadata ptr %call23, metadata !1696, metadata !DIExpression()), !dbg !1706
  br label %cleanup, !dbg !1837

for.cond:                                         ; preds = %for.cond.backedge, %for.cond.preheader
  %attribute.0 = phi ptr [ null, %for.cond.preheader ], [ %attribute.2, %for.cond.backedge ], !dbg !1706
  %p.0.pn = phi ptr [ %p.0, %for.cond.preheader ], [ %p.0.pn.be, %for.cond.backedge ]
  %p.1 = getelementptr inbounds i8, ptr %p.0.pn, i64 1, !dbg !1838
  call void @llvm.dbg.value(metadata ptr %p.1, metadata !1700, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata ptr %attribute.0, metadata !1693, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata ptr @sentinel, metadata !1694, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata ptr %p.1, metadata !1695, metadata !DIExpression()), !dbg !1706
  %11 = load i8, ptr %p.1, align 1, !dbg !1839, !tbaa !652
  call void @llvm.dbg.value(metadata i8 %11, metadata !1697, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1706
  %12 = load ptr, ptr %call27, align 8, !dbg !1842, !tbaa !312
  %13 = zext i8 %11 to i64
  %arrayidx29 = getelementptr inbounds i16, ptr %12, i64 %13, !dbg !1842
  %14 = load i16, ptr %arrayidx29, align 2, !dbg !1842, !tbaa !1844
  %15 = and i16 %14, 1024, !dbg !1842
  %cmp31.not = icmp ne i16 %15, 0, !dbg !1846
  %cmp35 = icmp eq i8 %11, 95
  %or.cond844 = select i1 %cmp31.not, i1 true, i1 %cmp35, !dbg !1847
  br i1 %or.cond844, label %if.then44, label %lor.lhs.false37, !dbg !1847

lor.lhs.false37:                                  ; preds = %for.cond
  %cmp39 = icmp eq i8 %11, 58, !dbg !1848
  %cmp42 = icmp slt i8 %11, 0
  %or.cond = or i1 %cmp39, %cmp42, !dbg !1849
  br i1 %or.cond, label %if.then44, label %if.else288, !dbg !1849

if.then44:                                        ; preds = %lor.lhs.false37, %for.cond
  %16 = load ptr, ptr %node.i872, align 8, !dbg !1850, !tbaa !1853
  %cmp45 = icmp eq ptr %16, null, !dbg !1854
  br i1 %cmp45, label %if.then47, label %if.end51, !dbg !1855

if.then47:                                        ; preds = %if.then44
  %call48 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2006, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #20, !dbg !1856
  %call49 = tail call ptr @DestroyString(ptr noundef nonnull %retval.0.i911) #20, !dbg !1858
  call void @llvm.dbg.value(metadata ptr %call49, metadata !1696, metadata !DIExpression()), !dbg !1706
  br label %cleanup, !dbg !1859

if.end51:                                         ; preds = %if.then44
  %call52 = tail call i64 @strcspn(ptr noundef nonnull %p.1, ptr noundef nonnull @.str.16) #21, !dbg !1860
  %add.ptr = getelementptr inbounds i8, ptr %p.1, i64 %call52, !dbg !1861
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1700, metadata !DIExpression()), !dbg !1706
  %17 = load i8, ptr %add.ptr, align 1, !dbg !1862, !tbaa !652
  %18 = zext i8 %17 to i64
  %arrayidx57966 = getelementptr inbounds i16, ptr %12, i64 %18, !dbg !1862
  %19 = load i16, ptr %arrayidx57966, align 2, !dbg !1862, !tbaa !1844
  %20 = and i16 %19, 8192, !dbg !1862
  %cmp60.not967 = icmp eq i16 %20, 0, !dbg !1863
  br i1 %cmp60.not967, label %while.end64, label %while.body62, !dbg !1864

while.body62:                                     ; preds = %if.end51, %while.body62
  %p.2968 = phi ptr [ %incdec.ptr63, %while.body62 ], [ %add.ptr, %if.end51 ]
  call void @llvm.dbg.value(metadata ptr %p.2968, metadata !1700, metadata !DIExpression()), !dbg !1706
  %incdec.ptr63 = getelementptr inbounds i8, ptr %p.2968, i64 1, !dbg !1865
  call void @llvm.dbg.value(metadata ptr %incdec.ptr63, metadata !1700, metadata !DIExpression()), !dbg !1706
  store i8 0, ptr %p.2968, align 1, !dbg !1866, !tbaa !652
  %21 = load ptr, ptr %call27, align 8, !dbg !1862, !tbaa !312
  %22 = load i8, ptr %incdec.ptr63, align 1, !dbg !1862, !tbaa !652
  %23 = zext i8 %22 to i64
  %arrayidx57 = getelementptr inbounds i16, ptr %21, i64 %23, !dbg !1862
  %24 = load i16, ptr %arrayidx57, align 2, !dbg !1862, !tbaa !1844
  %25 = and i16 %24, 8192, !dbg !1862
  %cmp60.not = icmp eq i16 %25, 0, !dbg !1863
  br i1 %cmp60.not, label %while.end64, label %while.body62, !dbg !1864, !llvm.loop !1867

while.end64:                                      ; preds = %while.body62, %if.end51
  %p.2.lcssa = phi ptr [ %add.ptr, %if.end51 ], [ %incdec.ptr63, %while.body62 ], !dbg !1869
  %.lcssa = phi i8 [ %17, %if.end51 ], [ %22, %while.body62 ], !dbg !1862
  switch i8 %.lcssa, label %while.cond76.preheader [
    i8 0, label %if.end93
    i8 47, label %if.end93
    i8 62, label %if.end93
  ], !dbg !1870

while.cond76.preheader:                           ; preds = %while.end64
  %26 = load ptr, ptr %attributes77, align 8, !tbaa !929
  call void @llvm.dbg.value(metadata i64 0, metadata !1701, metadata !DIExpression()), !dbg !1706
  %27 = load ptr, ptr %26, align 8, !dbg !1872, !tbaa !312
  %cmp79.not972 = icmp eq ptr %27, null, !dbg !1874
  br i1 %cmp79.not972, label %if.end93, label %land.rhs81, !dbg !1875

while.cond76:                                     ; preds = %land.rhs81
  %inc = add nuw nsw i64 %i.0973, 1, !dbg !1876
  call void @llvm.dbg.value(metadata i64 undef, metadata !1701, metadata !DIExpression()), !dbg !1706
  %arrayidx78 = getelementptr inbounds ptr, ptr %26, i64 %inc, !dbg !1872
  %28 = load ptr, ptr %arrayidx78, align 8, !dbg !1872, !tbaa !312
  %cmp79.not = icmp eq ptr %28, null, !dbg !1874
  br i1 %cmp79.not, label %if.end93, label %land.rhs81, !dbg !1875, !llvm.loop !1877

land.rhs81:                                       ; preds = %while.cond76.preheader, %while.cond76
  %29 = phi ptr [ %28, %while.cond76 ], [ %27, %while.cond76.preheader ]
  %i.0973 = phi i64 [ %inc, %while.cond76 ], [ 0, %while.cond76.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0973, metadata !1701, metadata !DIExpression()), !dbg !1706
  %30 = load ptr, ptr %29, align 8, !dbg !1879, !tbaa !312
  %call85 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull %p.1) #21, !dbg !1880
  %cmp86.not = icmp eq i32 %call85, 0, !dbg !1881
  call void @llvm.dbg.value(metadata i64 %i.0973, metadata !1701, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1706
  br i1 %cmp86.not, label %if.end93, label %while.cond76, !dbg !1878

if.end93:                                         ; preds = %while.cond76, %land.rhs81, %while.cond76.preheader, %while.end64, %while.end64, %while.end64
  %attribute.1 = phi ptr [ %attribute.0, %while.end64 ], [ %attribute.0, %while.end64 ], [ %attribute.0, %while.end64 ], [ null, %while.cond76.preheader ], [ null, %while.cond76 ], [ %29, %land.rhs81 ], !dbg !1706
  call void @llvm.dbg.value(metadata ptr %attribute.1, metadata !1693, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 0, metadata !1704, metadata !DIExpression()), !dbg !1706
  %cmp185.not = icmp eq ptr %attribute.1, null
  %arrayidx188977 = getelementptr inbounds ptr, ptr %attribute.1, i64 1
  br label %for.cond94, !dbg !1882

for.cond94:                                       ; preds = %while.cond220, %if.end93
  %31 = phi i8 [ %.lcssa, %if.end93 ], [ %52, %while.cond220 ], !dbg !1884
  %attributes.0 = phi ptr [ @sentinel, %if.end93 ], [ %attributes.1, %while.cond220 ], !dbg !1886
  %p.3 = phi ptr [ %p.2.lcssa, %if.end93 ], [ %p.7, %while.cond220 ], !dbg !1869
  %l.0 = phi i64 [ 0, %if.end93 ], [ %add120, %while.cond220 ], !dbg !1887
  call void @llvm.dbg.value(metadata i64 %l.0, metadata !1704, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata ptr %p.3, metadata !1700, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata ptr %attributes.0, metadata !1694, metadata !DIExpression()), !dbg !1706
  switch i8 %31, label %for.body [
    i8 47, label %if.then236
    i8 62, label %if.then275
    i8 0, label %lor.lhs.false268
  ], !dbg !1888

for.body:                                         ; preds = %for.cond94
  %cmp107 = icmp eq i64 %l.0, 0, !dbg !1889
  br i1 %cmp107, label %if.then109, label %if.else, !dbg !1892

if.then109:                                       ; preds = %for.body
  %call110 = tail call ptr @AcquireQuantumMemory(i64 noundef 4, i64 noundef 8) #22, !dbg !1893
  call void @llvm.dbg.value(metadata ptr %call110, metadata !1694, metadata !DIExpression()), !dbg !1706
  br label %if.end112, !dbg !1894

if.else:                                          ; preds = %for.body
  %add = add nuw nsw i64 %l.0, 4, !dbg !1895
  %call111 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %attributes.0, i64 noundef %add, i64 noundef 8) #23, !dbg !1896
  call void @llvm.dbg.value(metadata ptr %call111, metadata !1694, metadata !DIExpression()), !dbg !1706
  br label %if.end112

if.end112:                                        ; preds = %if.else, %if.then109
  %attributes.1 = phi ptr [ %call110, %if.then109 ], [ %call111, %if.else ], !dbg !1897
  call void @llvm.dbg.value(metadata ptr %attributes.1, metadata !1694, metadata !DIExpression()), !dbg !1706
  %cmp113 = icmp eq ptr %attributes.1, null, !dbg !1898
  br i1 %cmp113, label %if.then115, label %if.end119, !dbg !1900

if.then115:                                       ; preds = %if.end112
  %call116 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2037, i32 noundef 400, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str) #20, !dbg !1901
  %call117 = tail call ptr @DestroyString(ptr noundef nonnull %retval.0.i911) #20, !dbg !1903
  call void @llvm.dbg.value(metadata ptr %call117, metadata !1696, metadata !DIExpression()), !dbg !1706
  br label %cleanup, !dbg !1904

if.end119:                                        ; preds = %if.end112
  %add120 = add nuw nsw i64 %l.0, 2, !dbg !1905
  %arrayidx121 = getelementptr inbounds ptr, ptr %attributes.1, i64 %add120, !dbg !1906
  store ptr null, ptr %arrayidx121, align 8, !dbg !1907, !tbaa !312
  %add122 = or i64 %l.0, 1, !dbg !1908
  %arrayidx123 = getelementptr inbounds ptr, ptr %attributes.1, i64 %add122, !dbg !1909
  store ptr null, ptr %arrayidx123, align 8, !dbg !1910, !tbaa !312
  %arrayidx124 = getelementptr inbounds ptr, ptr %attributes.1, i64 %l.0, !dbg !1911
  store ptr %p.3, ptr %arrayidx124, align 8, !dbg !1912, !tbaa !312
  %call125 = tail call i64 @strcspn(ptr noundef nonnull %p.3, ptr noundef nonnull @.str.19) #21, !dbg !1913
  %add.ptr126 = getelementptr inbounds i8, ptr %p.3, i64 %call125, !dbg !1914
  call void @llvm.dbg.value(metadata ptr %add.ptr126, metadata !1700, metadata !DIExpression()), !dbg !1706
  %32 = load i8, ptr %add.ptr126, align 1, !dbg !1915, !tbaa !652
  %cmp128.not = icmp eq i8 %32, 61, !dbg !1917
  br i1 %cmp128.not, label %if.else142, label %land.lhs.true130, !dbg !1918

land.lhs.true130:                                 ; preds = %if.end119
  %33 = load ptr, ptr %call27, align 8, !dbg !1919, !tbaa !312
  %34 = zext i8 %32 to i64
  %arrayidx134 = getelementptr inbounds i16, ptr %33, i64 %34, !dbg !1919
  %35 = load i16, ptr %arrayidx134, align 2, !dbg !1919, !tbaa !1844
  %36 = and i16 %35, 8192, !dbg !1919
  %cmp137 = icmp eq i16 %36, 0, !dbg !1920
  br i1 %cmp137, label %if.then139, label %if.else142, !dbg !1921

if.then139:                                       ; preds = %land.lhs.true130
  %call140 = tail call ptr @ConstantString(ptr noundef nonnull @.str) #20, !dbg !1922
  br label %if.end219, !dbg !1923

if.else142:                                       ; preds = %land.lhs.true130, %if.end119
  %incdec.ptr143 = getelementptr inbounds i8, ptr %add.ptr126, i64 1, !dbg !1924
  call void @llvm.dbg.value(metadata ptr %incdec.ptr143, metadata !1700, metadata !DIExpression()), !dbg !1706
  store i8 0, ptr %add.ptr126, align 1, !dbg !1926, !tbaa !652
  %call144 = tail call i64 @strspn(ptr noundef nonnull %incdec.ptr143, ptr noundef nonnull @.str.20) #21, !dbg !1927
  %add.ptr145 = getelementptr inbounds i8, ptr %incdec.ptr143, i64 %call144, !dbg !1928
  call void @llvm.dbg.value(metadata ptr %add.ptr145, metadata !1700, metadata !DIExpression()), !dbg !1706
  %37 = load i8, ptr %add.ptr145, align 1, !dbg !1929, !tbaa !652
  call void @llvm.dbg.value(metadata i8 %37, metadata !1697, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1706
  switch i8 %37, label %if.end215 [
    i8 39, label %if.then152
    i8 34, label %if.then152
  ], !dbg !1930

if.then152:                                       ; preds = %if.else142, %if.else142
  %incdec.ptr153 = getelementptr inbounds i8, ptr %add.ptr145, i64 1, !dbg !1932
  call void @llvm.dbg.value(metadata ptr %incdec.ptr153, metadata !1700, metadata !DIExpression()), !dbg !1706
  store ptr %incdec.ptr153, ptr %arrayidx123, align 8, !dbg !1934, !tbaa !312
  br label %while.cond156, !dbg !1935

while.cond156:                                    ; preds = %while.cond156, %if.then152
  %p.4 = phi ptr [ %incdec.ptr153, %if.then152 ], [ %incdec.ptr166, %while.cond156 ], !dbg !1936
  call void @llvm.dbg.value(metadata ptr %p.4, metadata !1700, metadata !DIExpression()), !dbg !1706
  %38 = load i8, ptr %p.4, align 1, !dbg !1937, !tbaa !652
  %cmp158.not = icmp eq i8 %38, 0, !dbg !1938
  %cmp162.not = icmp eq i8 %38, %37
  %or.cond845 = select i1 %cmp158.not, i1 true, i1 %cmp162.not, !dbg !1939
  %incdec.ptr166 = getelementptr inbounds i8, ptr %p.4, i64 1, !dbg !1940
  call void @llvm.dbg.value(metadata ptr %incdec.ptr166, metadata !1700, metadata !DIExpression()), !dbg !1706
  br i1 %or.cond845, label %while.end167, label %while.cond156, !dbg !1939, !llvm.loop !1941

while.end167:                                     ; preds = %while.cond156
  br i1 %cmp158.not, label %if.else173, label %if.then171, !dbg !1942

if.then171:                                       ; preds = %while.end167
  call void @llvm.dbg.value(metadata ptr %incdec.ptr166, metadata !1700, metadata !DIExpression()), !dbg !1706
  store i8 0, ptr %p.4, align 1, !dbg !1943, !tbaa !652
  call void @llvm.dbg.value(metadata i64 1, metadata !1703, metadata !DIExpression()), !dbg !1706
  br i1 %cmp185.not, label %cond.end, label %land.lhs.true187.lr.ph.split, !dbg !1945

land.lhs.true187.lr.ph.split:                     ; preds = %if.then171
  call void @llvm.dbg.value(metadata i64 1, metadata !1703, metadata !DIExpression()), !dbg !1706
  %39 = load ptr, ptr %arrayidx188977, align 8, !dbg !1946, !tbaa !312
  %cmp189.not978 = icmp eq ptr %39, null, !dbg !1947
  br i1 %cmp189.not978, label %cond.end, label %land.rhs191.lr.ph, !dbg !1948

land.rhs191.lr.ph:                                ; preds = %land.lhs.true187.lr.ph.split
  %40 = load ptr, ptr %arrayidx124, align 8, !tbaa !312
  br label %land.rhs191, !dbg !1948

if.else173:                                       ; preds = %while.end167
  %conv146.le = sext i8 %37 to i32, !dbg !1949
  %call174 = tail call ptr @ConstantString(ptr noundef nonnull @.str) #20, !dbg !1950
  store ptr %call174, ptr %arrayidx124, align 8, !dbg !1952, !tbaa !312
  %call176 = tail call ptr @ConstantString(ptr noundef nonnull @.str) #20, !dbg !1953
  store ptr %call176, ptr %arrayidx123, align 8, !dbg !1954, !tbaa !312
  call void @llvm.dbg.value(metadata ptr %attributes.1, metadata !1026, metadata !DIExpression()) #20, !dbg !1955
  %cmp1.i848 = icmp eq ptr %attributes.1, @sentinel
  br i1 %cmp1.i848, label %DestroyXMLTreeAttributes.exit, label %for.cond.preheader.i, !dbg !1957

for.cond.preheader.i:                             ; preds = %if.else173
  call void @llvm.dbg.value(metadata i64 0, metadata !1031, metadata !DIExpression()) #20, !dbg !1955
  %41 = load ptr, ptr %attributes.1, align 8, !dbg !1958, !tbaa !312
  %cmp2.not1.i = icmp eq ptr %41, null, !dbg !1959
  br i1 %cmp2.not1.i, label %for.end.i, label %if.then5.i, !dbg !1960

if.then5.i:                                       ; preds = %for.cond.preheader.i, %for.inc.i
  %42 = phi ptr [ %44, %for.inc.i ], [ %41, %for.cond.preheader.i ]
  %arrayidx3.i = phi ptr [ %arrayidx.i, %for.inc.i ], [ %attributes.1, %for.cond.preheader.i ]
  %i.02.i = phi i64 [ %add18.i, %for.inc.i ], [ 0, %for.cond.preheader.i ]
  call void @llvm.dbg.value(metadata i64 %i.02.i, metadata !1031, metadata !DIExpression()) #20, !dbg !1955
  %call.i849 = tail call ptr @DestroyString(ptr noundef nonnull %42) #20, !dbg !1961
  store ptr %call.i849, ptr %arrayidx3.i, align 8, !dbg !1962, !tbaa !312
  %add.i850 = or i64 %i.02.i, 1, !dbg !1963
  %arrayidx9.i = getelementptr inbounds ptr, ptr %attributes.1, i64 %add.i850, !dbg !1964
  %43 = load ptr, ptr %arrayidx9.i, align 8, !dbg !1964, !tbaa !312
  %cmp10.not.i = icmp eq ptr %43, null, !dbg !1965
  br i1 %cmp10.not.i, label %for.inc.i, label %if.then11.i, !dbg !1966

if.then11.i:                                      ; preds = %if.then5.i
  %call14.i = tail call ptr @DestroyString(ptr noundef nonnull %43) #20, !dbg !1967
  store ptr %call14.i, ptr %arrayidx9.i, align 8, !dbg !1968, !tbaa !312
  br label %for.inc.i, !dbg !1969

for.inc.i:                                        ; preds = %if.then11.i, %if.then5.i
  %add18.i = add nuw nsw i64 %i.02.i, 2, !dbg !1970
  call void @llvm.dbg.value(metadata i64 %add18.i, metadata !1031, metadata !DIExpression()) #20, !dbg !1955
  %arrayidx.i = getelementptr inbounds ptr, ptr %attributes.1, i64 %add18.i, !dbg !1958
  %44 = load ptr, ptr %arrayidx.i, align 8, !dbg !1958, !tbaa !312
  %cmp2.not.i = icmp eq ptr %44, null, !dbg !1959
  br i1 %cmp2.not.i, label %for.end.i, label %if.then5.i, !dbg !1960, !llvm.loop !1971

for.end.i:                                        ; preds = %for.inc.i, %for.cond.preheader.i
  %call19.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %attributes.1) #20, !dbg !1973
  call void @llvm.dbg.value(metadata ptr %call19.i, metadata !1026, metadata !DIExpression()) #20, !dbg !1955
  br label %DestroyXMLTreeAttributes.exit, !dbg !1974

DestroyXMLTreeAttributes.exit:                    ; preds = %if.else173, %for.end.i
  %call180 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2069, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.21, i32 noundef %conv146.le) #20, !dbg !1975
  %call181 = tail call ptr @DestroyString(ptr noundef nonnull %retval.0.i911) #20, !dbg !1976
  call void @llvm.dbg.value(metadata ptr %call181, metadata !1696, metadata !DIExpression()), !dbg !1706
  br label %cleanup, !dbg !1977

land.rhs191:                                      ; preds = %land.rhs191.lr.ph, %while.body198
  %.pre.pre = phi ptr [ %39, %land.rhs191.lr.ph ], [ %45, %while.body198 ]
  %j.0976979 = phi i64 [ 1, %land.rhs191.lr.ph ], [ %add199, %while.body198 ]
  call void @llvm.dbg.value(metadata i64 %j.0976979, metadata !1703, metadata !DIExpression()), !dbg !1706
  %call194 = tail call i32 @strcmp(ptr noundef nonnull %.pre.pre, ptr noundef nonnull dereferenceable(1) %40) #21, !dbg !1978
  %cmp195.not = icmp eq i32 %call194, 0, !dbg !1979
  br i1 %cmp195.not, label %cond.true, label %while.body198, !dbg !1980

while.body198:                                    ; preds = %land.rhs191
  %add199 = add nuw nsw i64 %j.0976979, 3, !dbg !1981
  call void @llvm.dbg.value(metadata i64 %add199, metadata !1703, metadata !DIExpression()), !dbg !1706
  %arrayidx188 = getelementptr inbounds ptr, ptr %attribute.1, i64 %add199, !dbg !1946
  %45 = load ptr, ptr %arrayidx188, align 8, !dbg !1946, !tbaa !312
  %cmp189.not = icmp eq ptr %45, null, !dbg !1947
  br i1 %cmp189.not, label %cond.end, label %land.rhs191, !dbg !1948

cond.true:                                        ; preds = %land.rhs191
  %add209 = add nuw nsw i64 %j.0976979, 2, !dbg !1982
  %arrayidx210 = getelementptr inbounds ptr, ptr %attribute.1, i64 %add209, !dbg !1983
  %46 = load ptr, ptr %arrayidx210, align 8, !dbg !1983, !tbaa !312
  %47 = load i8, ptr %46, align 1, !dbg !1984, !tbaa !652
  %conv211 = sext i8 %47 to i32, !dbg !1984
  br label %cond.end, !dbg !1985

cond.end:                                         ; preds = %while.body198, %land.lhs.true187.lr.ph.split, %if.then171, %cond.true
  %cond = phi i32 [ %conv211, %cond.true ], [ 32, %if.then171 ], [ 32, %land.lhs.true187.lr.ph.split ], [ 32, %while.body198 ], !dbg !1985
  %48 = load ptr, ptr %arrayidx123, align 8, !dbg !1986, !tbaa !312
  %49 = load ptr, ptr %entities912, align 8, !dbg !1987, !tbaa !910
  %call212 = tail call fastcc ptr @ParseEntities(ptr noundef %48, ptr noundef %49, i32 noundef %cond), !dbg !1988
  store ptr %call212, ptr %arrayidx123, align 8, !dbg !1989, !tbaa !312
  br label %if.end215, !dbg !1990

if.end215:                                        ; preds = %if.else142, %cond.end
  %p.5 = phi ptr [ %incdec.ptr166, %cond.end ], [ %add.ptr145, %if.else142 ], !dbg !1991
  call void @llvm.dbg.value(metadata ptr %p.5, metadata !1700, metadata !DIExpression()), !dbg !1706
  %50 = load ptr, ptr %arrayidx124, align 8, !dbg !1992, !tbaa !312
  %call217 = tail call ptr @ConstantString(ptr noundef %50) #20, !dbg !1993
  br label %if.end219

if.end219:                                        ; preds = %if.end215, %if.then139
  %storemerge = phi ptr [ %call217, %if.end215 ], [ %call140, %if.then139 ], !dbg !1994
  %p.6 = phi ptr [ %p.5, %if.end215 ], [ %add.ptr126, %if.then139 ], !dbg !1995
  store ptr %storemerge, ptr %arrayidx124, align 8, !dbg !1994, !tbaa !312
  call void @llvm.dbg.value(metadata ptr %p.6, metadata !1700, metadata !DIExpression()), !dbg !1706
  %51 = load ptr, ptr %call27, align 8, !tbaa !312
  br label %while.cond220, !dbg !1996

while.cond220:                                    ; preds = %while.cond220, %if.end219
  %p.7 = phi ptr [ %p.6, %if.end219 ], [ %incdec.ptr230, %while.cond220 ], !dbg !1995
  call void @llvm.dbg.value(metadata ptr %p.7, metadata !1700, metadata !DIExpression()), !dbg !1706
  %52 = load i8, ptr %p.7, align 1, !dbg !1997, !tbaa !652
  %53 = zext i8 %52 to i64
  %arrayidx224 = getelementptr inbounds i16, ptr %51, i64 %53, !dbg !1997
  %54 = load i16, ptr %arrayidx224, align 2, !dbg !1997, !tbaa !1844
  %55 = and i16 %54, 8192, !dbg !1997
  %cmp227.not = icmp eq i16 %55, 0, !dbg !1998
  %incdec.ptr230 = getelementptr inbounds i8, ptr %p.7, i64 1, !dbg !1999
  call void @llvm.dbg.value(metadata ptr %incdec.ptr230, metadata !1700, metadata !DIExpression()), !dbg !1706
  br i1 %cmp227.not, label %for.cond94, label %while.cond220, !dbg !1996, !llvm.loop !2000

if.then236:                                       ; preds = %for.cond94
  %incdec.ptr237 = getelementptr inbounds i8, ptr %p.3, i64 1, !dbg !2003
  call void @llvm.dbg.value(metadata ptr %incdec.ptr237, metadata !1700, metadata !DIExpression()), !dbg !1706
  store i8 0, ptr %p.3, align 1, !dbg !2006, !tbaa !652
  %56 = load i8, ptr %incdec.ptr237, align 1, !dbg !2007, !tbaa !652
  switch i8 %56, label %if.then252 [
    i8 0, label %lor.lhs.false245
    i8 62, label %lor.lhs.false245
  ], !dbg !2009

lor.lhs.false245:                                 ; preds = %if.then236, %if.then236
  %cmp247 = icmp eq i8 %56, 0, !dbg !2010
  %or.cond583 = select i1 %cmp247, i1 %cmp480, i1 false, !dbg !2011
  br i1 %or.cond583, label %if.then252, label %if.end261, !dbg !2011

if.then252:                                       ; preds = %if.then236, %lor.lhs.false245
  %cmp253.not = icmp eq i64 %l.0, 0, !dbg !2012
  br i1 %cmp253.not, label %if.end257, label %if.then255, !dbg !2015

if.then255:                                       ; preds = %if.then252
  tail call fastcc void @DestroyXMLTreeAttributes(ptr noundef nonnull %attributes.0), !dbg !2016
  br label %if.end257, !dbg !2017

if.end257:                                        ; preds = %if.then255, %if.then252
  %call258 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2099, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.22) #20, !dbg !2018
  %call259 = tail call ptr @DestroyString(ptr noundef nonnull %retval.0.i911) #20, !dbg !2019
  call void @llvm.dbg.value(metadata ptr %call259, metadata !1696, metadata !DIExpression()), !dbg !1706
  br label %cleanup, !dbg !2020

if.end261:                                        ; preds = %lor.lhs.false245
  call void @llvm.dbg.value(metadata ptr %call3, metadata !2021, metadata !DIExpression()) #20, !dbg !2029
  call void @llvm.dbg.value(metadata ptr %p.1, metadata !2026, metadata !DIExpression()) #20, !dbg !2029
  call void @llvm.dbg.value(metadata ptr %attributes.0, metadata !2027, metadata !DIExpression()) #20, !dbg !2029
  %57 = load ptr, ptr %node.i872, align 8, !dbg !2031, !tbaa !1853
  call void @llvm.dbg.value(metadata ptr %57, metadata !2028, metadata !DIExpression()) #20, !dbg !2029
  %58 = load ptr, ptr %57, align 8, !dbg !2032, !tbaa !247
  %cmp.i851 = icmp eq ptr %58, null, !dbg !2034
  br i1 %cmp.i851, label %if.then.i, label %if.else.i, !dbg !2035

if.then.i:                                        ; preds = %if.end261
  %call.i852 = tail call ptr @ConstantString(ptr noundef nonnull %p.1) #20, !dbg !2036
  store ptr %call.i852, ptr %57, align 8, !dbg !2037, !tbaa !247
  br label %lor.lhs.false.i, !dbg !2038

if.else.i:                                        ; preds = %if.end261
  %content.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %57, i64 0, i32 2, !dbg !2039
  %59 = load ptr, ptr %content.i, align 8, !dbg !2039, !tbaa !259
  %call3.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %59) #21, !dbg !2040
  %call4.i = tail call ptr @AddChildToXMLTree(ptr noundef nonnull %57, ptr noundef nonnull %p.1, i64 noundef %call3.i) #20, !dbg !2041
  call void @llvm.dbg.value(metadata ptr %call4.i, metadata !2028, metadata !DIExpression()) #20, !dbg !2029
  %.pr = load ptr, ptr %call4.i, align 8, !dbg !2042, !tbaa !247
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.else.i, %if.then.i
  %60 = phi ptr [ %.pr, %if.else.i ], [ %call.i852, %if.then.i ], !dbg !2042
  %xml_info.0.i = phi ptr [ %call4.i, %if.else.i ], [ %57, %if.then.i ], !dbg !2029
  call void @llvm.dbg.value(metadata ptr %xml_info.0.i, metadata !2028, metadata !DIExpression()) #20, !dbg !2029
  %attributes5.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info.0.i, i64 0, i32 1, !dbg !2053
  store ptr %attributes.0, ptr %attributes5.i, align 8, !dbg !2054, !tbaa !255
  store ptr %xml_info.0.i, ptr %node.i872, align 8, !dbg !2055, !tbaa !1853
  call void @llvm.dbg.value(metadata ptr %call3, metadata !2048, metadata !DIExpression()) #20, !dbg !2056
  call void @llvm.dbg.value(metadata ptr %p.1, metadata !2049, metadata !DIExpression()) #20, !dbg !2056
  call void @llvm.dbg.value(metadata ptr undef, metadata !2050, metadata !DIExpression()) #20, !dbg !2056
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2051, metadata !DIExpression()) #20, !dbg !2056
  %cmp3.i = icmp eq ptr %60, null, !dbg !2057
  br i1 %cmp3.i, label %if.then.i857, label %lor.lhs.false4.i, !dbg !2058

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %call.i856 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %p.1, ptr noundef nonnull %60) #21, !dbg !2059
  %cmp7.not.i = icmp eq i32 %call.i856, 0, !dbg !2060
  br i1 %cmp7.not.i, label %if.end.i858, label %if.then.i857, !dbg !2061

if.then.i857:                                     ; preds = %lor.lhs.false4.i, %lor.lhs.false.i
  %call8.i = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1586, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.52, ptr noundef nonnull %p.1) #20, !dbg !2062
  br label %lor.lhs.false504thread-pre-split, !dbg !2064

if.end.i858:                                      ; preds = %lor.lhs.false4.i
  %parent.i = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info.0.i, i64 0, i32 4, !dbg !2065
  %61 = load ptr, ptr %parent.i, align 8, !dbg !2065, !tbaa !288
  store ptr %61, ptr %node.i872, align 8, !dbg !2066, !tbaa !1853
  br label %lor.lhs.false504thread-pre-split, !dbg !2067

lor.lhs.false268:                                 ; preds = %for.cond94
  br i1 %cmp426.not, label %if.then275, label %if.else277, !dbg !2068

if.then275:                                       ; preds = %for.cond94, %lor.lhs.false268
  store i8 0, ptr %p.3, align 1, !dbg !2071, !tbaa !652
  call void @llvm.dbg.value(metadata ptr %call3, metadata !2021, metadata !DIExpression()) #20, !dbg !2073
  call void @llvm.dbg.value(metadata ptr %p.1, metadata !2026, metadata !DIExpression()) #20, !dbg !2073
  call void @llvm.dbg.value(metadata ptr %attributes.0, metadata !2027, metadata !DIExpression()) #20, !dbg !2073
  %62 = load ptr, ptr %node.i872, align 8, !dbg !2075, !tbaa !1853
  call void @llvm.dbg.value(metadata ptr %62, metadata !2028, metadata !DIExpression()) #20, !dbg !2073
  %63 = load ptr, ptr %62, align 8, !dbg !2076, !tbaa !247
  %cmp.i861 = icmp eq ptr %63, null, !dbg !2077
  br i1 %cmp.i861, label %if.then.i863, label %if.else.i867, !dbg !2078

if.then.i863:                                     ; preds = %if.then275
  %call.i862 = tail call ptr @ConstantString(ptr noundef nonnull %p.1) #20, !dbg !2079
  store ptr %call.i862, ptr %62, align 8, !dbg !2080, !tbaa !247
  br label %ParseOpenTag.exit871, !dbg !2081

if.else.i867:                                     ; preds = %if.then275
  %content.i864 = getelementptr inbounds %struct._XMLTreeInfo, ptr %62, i64 0, i32 2, !dbg !2082
  %64 = load ptr, ptr %content.i864, align 8, !dbg !2082, !tbaa !259
  %call3.i865 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %64) #21, !dbg !2083
  %call4.i866 = tail call ptr @AddChildToXMLTree(ptr noundef nonnull %62, ptr noundef nonnull %p.1, i64 noundef %call3.i865) #20, !dbg !2084
  call void @llvm.dbg.value(metadata ptr %call4.i866, metadata !2028, metadata !DIExpression()) #20, !dbg !2073
  br label %ParseOpenTag.exit871

ParseOpenTag.exit871:                             ; preds = %if.then.i863, %if.else.i867
  %xml_info.0.i868 = phi ptr [ %62, %if.then.i863 ], [ %call4.i866, %if.else.i867 ], !dbg !2073
  call void @llvm.dbg.value(metadata ptr %xml_info.0.i868, metadata !2028, metadata !DIExpression()) #20, !dbg !2073
  %attributes5.i869 = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info.0.i868, i64 0, i32 1, !dbg !2085
  store ptr %attributes.0, ptr %attributes5.i869, align 8, !dbg !2086, !tbaa !255
  store ptr %xml_info.0.i868, ptr %node.i872, align 8, !dbg !2087, !tbaa !1853
  store i8 %31, ptr %p.3, align 1, !dbg !2088, !tbaa !652
  br label %lor.lhs.false504

if.else277:                                       ; preds = %lor.lhs.false268
  %cmp278.not = icmp eq i64 %l.0, 0, !dbg !2089
  br i1 %cmp278.not, label %if.end282, label %if.then280, !dbg !2092

if.then280:                                       ; preds = %if.else277
  tail call fastcc void @DestroyXMLTreeAttributes(ptr noundef nonnull %attributes.0), !dbg !2093
  br label %if.end282, !dbg !2094

if.end282:                                        ; preds = %if.then280, %if.else277
  %call283 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2120, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.22) #20, !dbg !2095
  %call284 = tail call ptr @DestroyString(ptr noundef nonnull %retval.0.i911) #20, !dbg !2096
  call void @llvm.dbg.value(metadata ptr %call284, metadata !1696, metadata !DIExpression()), !dbg !1706
  br label %cleanup, !dbg !2097

if.else288:                                       ; preds = %lor.lhs.false37
  %cmp290 = icmp eq i8 %11, 47, !dbg !2098
  br i1 %cmp290, label %if.then292, label %if.else328, !dbg !2100

if.then292:                                       ; preds = %if.else288
  %add.ptr293 = getelementptr inbounds i8, ptr %p.0.pn, i64 2, !dbg !2101
  call void @llvm.dbg.value(metadata ptr %add.ptr293, metadata !1695, metadata !DIExpression()), !dbg !1706
  %call294 = tail call i64 @strcspn(ptr noundef nonnull %add.ptr293, ptr noundef nonnull @.str.23) #21, !dbg !2103
  %add295 = add i64 %call294, 1, !dbg !2104
  %add.ptr296 = getelementptr inbounds i8, ptr %p.1, i64 %add295, !dbg !2105
  call void @llvm.dbg.value(metadata ptr %add.ptr296, metadata !1700, metadata !DIExpression()), !dbg !1706
  %65 = load i8, ptr %add.ptr296, align 1, !dbg !2106, !tbaa !652
  call void @llvm.dbg.value(metadata i8 %65, metadata !1697, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1706
  %cmp298 = icmp eq i8 %65, 0, !dbg !2107
  %or.cond585 = select i1 %cmp298, i1 %cmp480, i1 false, !dbg !2109
  br i1 %or.cond585, label %if.then303, label %if.end307, !dbg !2109

if.then303:                                       ; preds = %if.then292
  %call304 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2138, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.22) #20, !dbg !2110
  %call305 = tail call ptr @DestroyString(ptr noundef nonnull %retval.0.i911) #20, !dbg !2112
  call void @llvm.dbg.value(metadata ptr %call305, metadata !1696, metadata !DIExpression()), !dbg !1706
  br label %cleanup, !dbg !2113

if.end307:                                        ; preds = %if.then292
  store i8 0, ptr %add.ptr296, align 1, !dbg !2114, !tbaa !652
  call void @llvm.dbg.value(metadata ptr %call3, metadata !2048, metadata !DIExpression()) #20, !dbg !2115
  call void @llvm.dbg.value(metadata ptr %add.ptr293, metadata !2049, metadata !DIExpression()) #20, !dbg !2115
  call void @llvm.dbg.value(metadata ptr undef, metadata !2050, metadata !DIExpression()) #20, !dbg !2115
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2051, metadata !DIExpression()) #20, !dbg !2115
  %66 = load ptr, ptr %node.i872, align 8, !dbg !2118, !tbaa !1853
  %cmp.i873 = icmp eq ptr %66, null, !dbg !2119
  br i1 %cmp.i873, label %if.then311, label %lor.lhs.false.i875, !dbg !2120

lor.lhs.false.i875:                               ; preds = %if.end307
  %67 = load ptr, ptr %66, align 8, !dbg !2121, !tbaa !247
  %cmp3.i874 = icmp eq ptr %67, null, !dbg !2122
  br i1 %cmp3.i874, label %if.then311, label %lor.lhs.false4.i878, !dbg !2123

lor.lhs.false4.i878:                              ; preds = %lor.lhs.false.i875
  %call.i876 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr293, ptr noundef nonnull %67) #21, !dbg !2124
  %cmp7.not.i877 = icmp eq i32 %call.i876, 0, !dbg !2125
  br i1 %cmp7.not.i877, label %if.end314, label %if.then311, !dbg !2126

if.then311:                                       ; preds = %lor.lhs.false4.i878, %lor.lhs.false.i875, %if.end307
  %call8.i879 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1586, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.52, ptr noundef nonnull %add.ptr293) #20, !dbg !2127
  %call312 = tail call ptr @DestroyString(ptr noundef nonnull %retval.0.i911) #20, !dbg !2128
  call void @llvm.dbg.value(metadata ptr %call312, metadata !1696, metadata !DIExpression()), !dbg !1706
  br label %cleanup, !dbg !2130

if.end314:                                        ; preds = %lor.lhs.false4.i878
  %parent.i881 = getelementptr inbounds %struct._XMLTreeInfo, ptr %66, i64 0, i32 4, !dbg !2131
  %68 = load ptr, ptr %parent.i881, align 8, !dbg !2131, !tbaa !288
  store ptr %68, ptr %node.i872, align 8, !dbg !2132, !tbaa !1853
  store i8 %65, ptr %add.ptr296, align 1, !dbg !2133, !tbaa !652
  %69 = load ptr, ptr %call27, align 8, !dbg !2134, !tbaa !312
  %70 = zext i8 %65 to i64
  %arrayidx319 = getelementptr inbounds i16, ptr %69, i64 %70, !dbg !2134
  %71 = load i16, ptr %arrayidx319, align 2, !dbg !2134, !tbaa !1844
  %72 = and i16 %71, 8192, !dbg !2134
  %cmp322.not = icmp eq i16 %72, 0, !dbg !2136
  br i1 %cmp322.not, label %lor.lhs.false504thread-pre-split, label %if.then324, !dbg !2137

if.then324:                                       ; preds = %if.end314
  %call325 = tail call i64 @strspn(ptr noundef nonnull %add.ptr296, ptr noundef nonnull @.str.24) #21, !dbg !2138
  %add.ptr326 = getelementptr inbounds i8, ptr %add.ptr296, i64 %call325, !dbg !2139
  call void @llvm.dbg.value(metadata ptr %add.ptr326, metadata !1700, metadata !DIExpression()), !dbg !1706
  br label %lor.lhs.false504thread-pre-split, !dbg !2140

if.else328:                                       ; preds = %if.else288
  %call329 = tail call i32 @strncmp(ptr noundef nonnull %p.1, ptr noundef nonnull dereferenceable(4) @.str.25, i64 noundef 3) #21, !dbg !2141
  %cmp330 = icmp eq i32 %call329, 0, !dbg !2143
  br i1 %cmp330, label %if.then332, label %if.else358, !dbg !2144

if.then332:                                       ; preds = %if.else328
  %add.ptr333 = getelementptr inbounds i8, ptr %p.0.pn, i64 4, !dbg !2145
  %call334 = tail call ptr @strstr(ptr noundef nonnull %add.ptr333, ptr noundef nonnull @.str.26) #21, !dbg !2147
  call void @llvm.dbg.value(metadata ptr %call334, metadata !1700, metadata !DIExpression()), !dbg !1706
  %cmp335 = icmp eq ptr %call334, null, !dbg !2148
  br i1 %cmp335, label %if.then353, label %lor.lhs.false337, !dbg !2150

lor.lhs.false337:                                 ; preds = %if.then332
  %add.ptr338 = getelementptr inbounds i8, ptr %call334, i64 2, !dbg !2151
  call void @llvm.dbg.value(metadata ptr %add.ptr338, metadata !1700, metadata !DIExpression()), !dbg !1706
  %73 = load i8, ptr %add.ptr338, align 1, !dbg !2152, !tbaa !652
  switch i8 %73, label %if.then353 [
    i8 62, label %lor.lhs.false346
    i8 0, label %lor.lhs.false346
  ], !dbg !2153

lor.lhs.false346:                                 ; preds = %lor.lhs.false337, %lor.lhs.false337
  %cmp348 = icmp eq i8 %73, 0, !dbg !2154
  %or.cond586 = select i1 %cmp348, i1 %cmp480, i1 false, !dbg !2155
  br i1 %or.cond586, label %if.then353, label %lor.lhs.false504thread-pre-split, !dbg !2155

if.then353:                                       ; preds = %lor.lhs.false337, %lor.lhs.false346, %if.then332
  %call354 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2163, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.27) #20, !dbg !2156
  %call355 = tail call ptr @DestroyString(ptr noundef nonnull %retval.0.i911) #20, !dbg !2158
  call void @llvm.dbg.value(metadata ptr %call355, metadata !1696, metadata !DIExpression()), !dbg !1706
  br label %cleanup, !dbg !2159

if.else358:                                       ; preds = %if.else328
  %call359 = tail call i32 @strncmp(ptr noundef nonnull %p.1, ptr noundef nonnull dereferenceable(9) @.str.28, i64 noundef 8) #21, !dbg !2160
  %cmp360 = icmp eq i32 %call359, 0, !dbg !2162
  br i1 %cmp360, label %if.then362, label %if.else375, !dbg !2163

if.then362:                                       ; preds = %if.else358
  %call363 = tail call ptr @strstr(ptr noundef nonnull %p.1, ptr noundef nonnull @.str.29) #21, !dbg !2164
  call void @llvm.dbg.value(metadata ptr %call363, metadata !1700, metadata !DIExpression()), !dbg !1706
  %cmp364.not = icmp eq ptr %call363, null, !dbg !2166
  br i1 %cmp364.not, label %if.else370, label %if.then366, !dbg !2168

if.then366:                                       ; preds = %if.then362
  %add.ptr367 = getelementptr inbounds i8, ptr %call363, i64 2, !dbg !2169
  call void @llvm.dbg.value(metadata ptr %add.ptr367, metadata !1700, metadata !DIExpression()), !dbg !1706
  %add.ptr368 = getelementptr inbounds i8, ptr %p.0.pn, i64 9, !dbg !2171
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr367 to i64, !dbg !2172
  %sub.ptr.rhs.cast = ptrtoint ptr %p.1 to i64, !dbg !2172
  %sub.ptr.sub = sub i64 -10, %sub.ptr.rhs.cast, !dbg !2172
  %sub369 = add i64 %sub.ptr.sub, %sub.ptr.lhs.cast, !dbg !2173
  tail call fastcc void @ParseCharacterContent(ptr noundef %call3, ptr noundef nonnull %add.ptr368, i64 noundef %sub369, i8 noundef signext 99), !dbg !2174
  br label %lor.lhs.false504thread-pre-split, !dbg !2175

if.else370:                                       ; preds = %if.then362
  %call371 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2183, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.30) #20, !dbg !2176
  %call372 = tail call ptr @DestroyString(ptr noundef nonnull %retval.0.i911) #20, !dbg !2178
  call void @llvm.dbg.value(metadata ptr %call372, metadata !1696, metadata !DIExpression()), !dbg !1706
  br label %cleanup, !dbg !2179

if.else375:                                       ; preds = %if.else358
  %call376 = tail call i32 @strncmp(ptr noundef nonnull %p.1, ptr noundef nonnull dereferenceable(9) @.str.31, i64 noundef 8) #21, !dbg !2180
  %cmp377 = icmp eq i32 %call376, 0, !dbg !2182
  br i1 %cmp377, label %for.cond380thread-pre-split, label %if.else454, !dbg !2183

for.cond380thread-pre-split:                      ; preds = %if.else375
  call void @llvm.dbg.value(metadata i64 0, metadata !1704, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata ptr %p.1, metadata !1700, metadata !DIExpression()), !dbg !1706
  %cmp382.not960 = icmp eq i8 %11, 0, !dbg !2184
  br i1 %cmp382.not960, label %for.end421.thread, label %land.rhs384, !dbg !2188

land.rhs384:                                      ; preds = %for.cond380thread-pre-split, %for.body408
  %l.1963 = phi i64 [ %spec.select, %for.body408 ], [ 0, %for.cond380thread-pre-split ]
  %p.8961 = phi ptr [ %add.ptr412, %for.body408 ], [ %p.1, %for.cond380thread-pre-split ]
  %74 = phi i8 [ %76, %for.body408 ], [ %11, %for.cond380thread-pre-split ]
  call void @llvm.dbg.value(metadata i64 %l.1963, metadata !1704, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata ptr %p.8961, metadata !1700, metadata !DIExpression()), !dbg !1706
  %cmp385 = icmp ne i64 %l.1963, 0, !dbg !2189
  %cmp389.not = icmp eq i8 %74, 62
  %or.cond846 = select i1 %cmp385, i1 true, i1 %cmp389.not, !dbg !2190
  br i1 %or.cond846, label %lor.rhs, label %for.body408, !dbg !2190

lor.rhs:                                          ; preds = %land.rhs384
  %cmp391.not = icmp eq i64 %l.1963, 0, !dbg !2191
  br i1 %cmp391.not, label %lor.lhs.false504thread-pre-split, label %land.rhs393, !dbg !2192

land.rhs393:                                      ; preds = %lor.rhs
  %cmp395.not = icmp eq i8 %74, 93, !dbg !2193
  br i1 %cmp395.not, label %lor.rhs397, label %for.body408, !dbg !2194

lor.rhs397:                                       ; preds = %land.rhs393
  %add.ptr398 = getelementptr inbounds i8, ptr %p.8961, i64 1, !dbg !2195
  %call399 = tail call i64 @strspn(ptr noundef nonnull %add.ptr398, ptr noundef nonnull @.str.24) #21, !dbg !2196
  %add.ptr400 = getelementptr inbounds i8, ptr %p.8961, i64 1, !dbg !2197
  %add.ptr401 = getelementptr inbounds i8, ptr %add.ptr400, i64 %call399, !dbg !2198
  %75 = load i8, ptr %add.ptr401, align 1, !dbg !2199, !tbaa !652
  %cmp403.not = icmp eq i8 %75, 62, !dbg !2200
  br i1 %cmp403.not, label %if.then441, label %for.body408, !dbg !2201

for.body408:                                      ; preds = %land.rhs384, %land.rhs393, %lor.rhs397
  %add.ptr409 = getelementptr inbounds i8, ptr %p.8961, i64 1, !dbg !2202
  %call410 = tail call i64 @strcspn(ptr noundef nonnull %add.ptr409, ptr noundef nonnull @.str.32) #21, !dbg !2203
  %add411 = add i64 %call410, 1, !dbg !2204
  %add.ptr412 = getelementptr inbounds i8, ptr %p.8961, i64 %add411, !dbg !2205
  call void @llvm.dbg.value(metadata ptr %add.ptr412, metadata !1700, metadata !DIExpression()), !dbg !1706
  %76 = load i8, ptr %add.ptr412, align 1, !dbg !2206, !tbaa !652
  %cmp415 = icmp eq i8 %76, 91, !dbg !2207
  %spec.select = select i1 %cmp415, i64 1, i64 %l.1963, !dbg !2208
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !1704, metadata !DIExpression()), !dbg !1706
  %cmp382.not = icmp eq i8 %76, 0, !dbg !2184
  br i1 %cmp382.not, label %for.end421, label %land.rhs384, !dbg !2188, !llvm.loop !2209

for.end421:                                       ; preds = %for.body408
  br i1 %cmp426.not, label %if.end432, label %if.then428, !dbg !2211

for.end421.thread:                                ; preds = %for.cond380thread-pre-split
  br i1 %cmp426.not, label %lor.lhs.false504thread-pre-split, label %if.then428, !dbg !2211

if.then428:                                       ; preds = %for.end421.thread, %for.end421
  %call429 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2202, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.33) #20, !dbg !2213
  %call430 = tail call ptr @DestroyString(ptr noundef nonnull %retval.0.i911) #20, !dbg !2215
  call void @llvm.dbg.value(metadata ptr %call430, metadata !1696, metadata !DIExpression()), !dbg !1706
  br label %cleanup, !dbg !2216

if.end432:                                        ; preds = %for.end421
  %cmp433.not = icmp eq i64 %spec.select, 0, !dbg !2217
  br i1 %cmp433.not, label %lor.lhs.false504thread-pre-split, label %if.then441, !dbg !2219

if.then441:                                       ; preds = %lor.rhs397, %if.end432
  %p.8932 = phi ptr [ %add.ptr412, %if.end432 ], [ %p.8961, %lor.rhs397 ]
  %call436 = tail call ptr @strchr(ptr noundef nonnull %p.1, i32 noundef 91) #21, !dbg !2220
  %add.ptr437 = getelementptr inbounds i8, ptr %call436, i64 1, !dbg !2221
  call void @llvm.dbg.value(metadata ptr %add.ptr437, metadata !1695, metadata !DIExpression()), !dbg !1706
  %sub.ptr.lhs.cast442 = ptrtoint ptr %p.8932 to i64, !dbg !2222
  %sub.ptr.rhs.cast443 = ptrtoint ptr %add.ptr437 to i64, !dbg !2222
  %sub.ptr.sub444 = sub i64 %sub.ptr.lhs.cast442, %sub.ptr.rhs.cast443, !dbg !2222
  %call445 = tail call fastcc i32 @ParseInternalDoctype(ptr noundef %call3, ptr noundef nonnull %add.ptr437, i64 noundef %sub.ptr.sub444, ptr noundef %exception), !dbg !2225
  call void @llvm.dbg.value(metadata i32 %call445, metadata !1699, metadata !DIExpression()), !dbg !1706
  %cmp446 = icmp eq i32 %call445, 0, !dbg !2226
  br i1 %cmp446, label %if.then448, label %if.end451, !dbg !2228

if.then448:                                       ; preds = %if.then441
  %call449 = tail call ptr @DestroyString(ptr noundef nonnull %retval.0.i911) #20, !dbg !2229
  call void @llvm.dbg.value(metadata ptr %call449, metadata !1696, metadata !DIExpression()), !dbg !1706
  br label %cleanup, !dbg !2231

if.end451:                                        ; preds = %if.then441
  %incdec.ptr452 = getelementptr inbounds i8, ptr %p.8932, i64 1, !dbg !2232
  call void @llvm.dbg.value(metadata ptr %incdec.ptr452, metadata !1700, metadata !DIExpression()), !dbg !1706
  br label %lor.lhs.false504thread-pre-split, !dbg !2233

if.else454:                                       ; preds = %if.else375
  %cmp456 = icmp eq i8 %11, 63, !dbg !2234
  br i1 %cmp456, label %do.body, label %if.else492, !dbg !2236

do.body:                                          ; preds = %if.else454, %if.end463
  %p.9 = phi ptr [ %incdec.ptr464, %if.end463 ], [ %p.1, %if.else454 ], !dbg !1838
  call void @llvm.dbg.value(metadata ptr %p.9, metadata !1700, metadata !DIExpression()), !dbg !1706
  %call459 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %p.9, i32 noundef 63) #21, !dbg !2237
  call void @llvm.dbg.value(metadata ptr %call459, metadata !1700, metadata !DIExpression()), !dbg !1706
  %cmp460 = icmp eq ptr %call459, null, !dbg !2240
  br i1 %cmp460, label %if.then482, label %if.end463, !dbg !2242

if.end463:                                        ; preds = %do.body
  %incdec.ptr464 = getelementptr inbounds i8, ptr %call459, i64 1, !dbg !2243
  call void @llvm.dbg.value(metadata ptr %incdec.ptr464, metadata !1700, metadata !DIExpression()), !dbg !1706
  %77 = load i8, ptr %incdec.ptr464, align 1, !dbg !2244, !tbaa !652
  switch i8 %77, label %do.body [
    i8 0, label %lor.lhs.false475
    i8 62, label %lor.lhs.false475
  ], !dbg !2245

lor.lhs.false475:                                 ; preds = %if.end463, %if.end463
  call void @llvm.dbg.value(metadata ptr %incdec.ptr464, metadata !1700, metadata !DIExpression()), !dbg !1706
  %cmp477 = icmp eq i8 %77, 0, !dbg !2246
  %or.cond590 = select i1 %cmp477, i1 %cmp480, i1 false, !dbg !2248
  br i1 %or.cond590, label %if.then482, label %if.end486, !dbg !2248

if.then482:                                       ; preds = %lor.lhs.false475, %do.body
  %call483 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2237, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.34) #20, !dbg !2249
  %call484 = tail call ptr @DestroyString(ptr noundef nonnull %retval.0.i911) #20, !dbg !2251
  call void @llvm.dbg.value(metadata ptr %call484, metadata !1696, metadata !DIExpression()), !dbg !1706
  br label %cleanup, !dbg !2252

if.end486:                                        ; preds = %lor.lhs.false475
  %add.ptr487 = getelementptr inbounds i8, ptr %p.0.pn, i64 2, !dbg !2253
  %sub.ptr.lhs.cast488 = ptrtoint ptr %incdec.ptr464 to i64, !dbg !2254
  %sub.ptr.rhs.cast489 = ptrtoint ptr %p.1 to i64, !dbg !2254
  %sub.ptr.sub490 = sub i64 -2, %sub.ptr.rhs.cast489, !dbg !2254
  %sub491 = add i64 %sub.ptr.sub490, %sub.ptr.lhs.cast488, !dbg !2255
  tail call fastcc void @ParseProcessingInstructions(ptr noundef %call3, ptr noundef nonnull %add.ptr487, i64 noundef %sub491), !dbg !2256
  br label %lor.lhs.false504thread-pre-split

if.else492:                                       ; preds = %if.else454
  %call493 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2246, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.35) #20, !dbg !2257
  %call494 = tail call ptr @DestroyString(ptr noundef nonnull %retval.0.i911) #20, !dbg !2259
  call void @llvm.dbg.value(metadata ptr %call494, metadata !1696, metadata !DIExpression()), !dbg !1706
  br label %cleanup, !dbg !2260

lor.lhs.false504thread-pre-split:                 ; preds = %lor.rhs, %for.end421.thread, %if.end432, %if.then324, %if.end314, %if.then366, %if.end451, %if.end486, %lor.lhs.false346, %if.then.i857, %if.end.i858
  %attribute.2.ph = phi ptr [ %attribute.1, %if.end.i858 ], [ %attribute.1, %if.then.i857 ], [ %attribute.0, %if.end486 ], [ %attribute.0, %if.end451 ], [ %attribute.0, %if.then366 ], [ %attribute.0, %lor.lhs.false346 ], [ %attribute.0, %if.end314 ], [ %attribute.0, %if.then324 ], [ %attribute.0, %if.end432 ], [ %attribute.0, %for.end421.thread ], [ %attribute.0, %lor.rhs ]
  %p.11.ph = phi ptr [ %incdec.ptr237, %if.end.i858 ], [ %incdec.ptr237, %if.then.i857 ], [ %incdec.ptr464, %if.end486 ], [ %incdec.ptr452, %if.end451 ], [ %add.ptr367, %if.then366 ], [ %add.ptr338, %lor.lhs.false346 ], [ %add.ptr296, %if.end314 ], [ %add.ptr326, %if.then324 ], [ %add.ptr412, %if.end432 ], [ %p.1, %for.end421.thread ], [ %p.8961, %lor.rhs ]
  %.pr921 = load i8, ptr %p.11.ph, align 1, !dbg !2261, !tbaa !652
  br label %lor.lhs.false504, !dbg !2261

lor.lhs.false504:                                 ; preds = %lor.lhs.false504thread-pre-split, %ParseOpenTag.exit871
  %78 = phi i8 [ %.pr921, %lor.lhs.false504thread-pre-split ], [ %31, %ParseOpenTag.exit871 ], !dbg !2261
  %attribute.2 = phi ptr [ %attribute.2.ph, %lor.lhs.false504thread-pre-split ], [ %attribute.1, %ParseOpenTag.exit871 ], !dbg !1706
  %p.11 = phi ptr [ %p.11.ph, %lor.lhs.false504thread-pre-split ], [ %p.3, %ParseOpenTag.exit871 ], !dbg !1838
  call void @llvm.dbg.value(metadata ptr %p.11, metadata !1700, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata ptr %attribute.2, metadata !1693, metadata !DIExpression()), !dbg !1706
  %cmp506 = icmp eq i8 %78, 0, !dbg !2263
  br i1 %cmp506, label %for.end548, label %if.end509, !dbg !2264

if.end509:                                        ; preds = %lor.lhs.false504
  %incdec.ptr510.ptr = getelementptr inbounds i8, ptr %p.11, i64 1, !dbg !1706
  call void @llvm.dbg.value(metadata ptr %incdec.ptr510.ptr, metadata !1700, metadata !DIExpression()), !dbg !1706
  store i8 0, ptr %p.11, align 1, !dbg !2265, !tbaa !652
  call void @llvm.dbg.value(metadata ptr %incdec.ptr510.ptr, metadata !1695, metadata !DIExpression()), !dbg !1706
  %79 = load i8, ptr %incdec.ptr510.ptr, align 1, !dbg !2266, !tbaa !652
  switch i8 %79, label %while.cond519 [
    i8 0, label %for.end548
    i8 60, label %for.cond.backedge
  ], !dbg !2268

for.cond.backedge:                                ; preds = %if.end509, %if.then14.i, %if.then7.i, %lor.lhs.false.i890, %if.end535
  %p.0.pn.be = phi ptr [ %incdec.ptr510.ptr, %if.end509 ], [ %p.12.ptr.le, %if.then14.i ], [ %p.12.ptr.le, %if.then7.i ], [ %p.12.ptr.le, %lor.lhs.false.i890 ], [ %p.12.ptr.le, %if.end535 ]
  br label %for.cond, !dbg !1838, !llvm.loop !2269

while.cond519:                                    ; preds = %if.end509, %while.body528
  %80 = phi i8 [ %.pr922, %while.body528 ], [ %79, %if.end509 ], !dbg !2271
  %p.12.idx = phi i64 [ %p.12.add, %while.body528 ], [ 1, %if.end509 ]
  call void @llvm.dbg.value(metadata !DIArgList(ptr %p.11, i64 %p.12.idx), metadata !1700, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1706
  switch i8 %80, label %while.body528 [
    i8 0, label %for.end548
    i8 60, label %if.end535
  ], !dbg !2273

while.body528:                                    ; preds = %while.cond519
  %p.12.add = add nuw nsw i64 %p.12.idx, 1, !dbg !2274
  %incdec.ptr529.ptr = getelementptr inbounds i8, ptr %p.11, i64 %p.12.add, !dbg !1706
  call void @llvm.dbg.value(metadata ptr %incdec.ptr529.ptr, metadata !1700, metadata !DIExpression()), !dbg !1706
  %.pr922 = load i8, ptr %incdec.ptr529.ptr, align 1, !dbg !2271, !tbaa !652
  br label %while.cond519, !dbg !2275, !llvm.loop !2276

if.end535:                                        ; preds = %while.cond519
  %p.12.ptr.le = getelementptr inbounds i8, ptr %p.11, i64 %p.12.idx, !dbg !1706
  call void @llvm.dbg.value(metadata ptr %call3, metadata !2277, metadata !DIExpression()) #20, !dbg !2286
  call void @llvm.dbg.value(metadata ptr %incdec.ptr510.ptr, metadata !2282, metadata !DIExpression()) #20, !dbg !2286
  call void @llvm.dbg.value(metadata !DIArgList(ptr %p.12.ptr.le, ptr %incdec.ptr510.ptr), metadata !2283, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !2286
  call void @llvm.dbg.value(metadata i8 38, metadata !2284, metadata !DIExpression()) #20, !dbg !2286
  %81 = load ptr, ptr %node.i872, align 8, !dbg !2288, !tbaa !1853
  call void @llvm.dbg.value(metadata ptr %81, metadata !2285, metadata !DIExpression()) #20, !dbg !2286
  %cmp.i886 = icmp eq ptr %81, null, !dbg !2289
  br i1 %cmp.i886, label %for.cond.backedge, label %lor.lhs.false.i890, !dbg !2291

lor.lhs.false.i890:                               ; preds = %if.end535
  %82 = load ptr, ptr %81, align 8, !dbg !2292, !tbaa !247
  %cmp1.i887 = icmp eq ptr %82, null, !dbg !2293
  %cmp3.i888 = icmp eq i64 %p.12.idx, 1
  %or.cond.i889 = or i1 %cmp3.i888, %cmp1.i887, !dbg !2294
  br i1 %or.cond.i889, label %for.cond.backedge, label %if.end.i894, !dbg !2294

if.end.i894:                                      ; preds = %lor.lhs.false.i890
  store i8 0, ptr %p.12.ptr.le, align 1, !dbg !2295, !tbaa !652
  %83 = load ptr, ptr %entities912, align 8, !dbg !2296, !tbaa !910
  %call.i892 = tail call fastcc ptr @ParseEntities(ptr noundef nonnull %incdec.ptr510.ptr, ptr noundef %83, i32 noundef 38) #20, !dbg !2297
  call void @llvm.dbg.value(metadata ptr %call.i892, metadata !2282, metadata !DIExpression()) #20, !dbg !2286
  %content.i893 = getelementptr inbounds %struct._XMLTreeInfo, ptr %81, i64 0, i32 2, !dbg !2298
  %84 = load ptr, ptr %content.i893, align 8, !dbg !2298, !tbaa !259
  %85 = load i8, ptr %84, align 1, !dbg !2300, !tbaa !652
  %cmp5.not.i = icmp eq i8 %85, 0, !dbg !2301
  br i1 %cmp5.not.i, label %if.then14.i, label %if.then7.i, !dbg !2302

if.then7.i:                                       ; preds = %if.end.i894
  %call9.i = tail call i32 @ConcatenateString(ptr noundef nonnull %content.i893, ptr noundef %call.i892) #20, !dbg !2303
  %call10.i895 = tail call ptr @DestroyString(ptr noundef %call.i892) #20, !dbg !2305
  call void @llvm.dbg.value(metadata ptr %call10.i895, metadata !2282, metadata !DIExpression()) #20, !dbg !2286
  br label %for.cond.backedge, !dbg !2306

if.then14.i:                                      ; preds = %if.end.i894
  %call16.i = tail call ptr @DestroyString(ptr noundef nonnull %84) #20, !dbg !2307
  store ptr %call.i892, ptr %content.i893, align 8, !dbg !2310, !tbaa !259
  br label %for.cond.backedge

for.end548:                                       ; preds = %if.end509, %lor.lhs.false504, %while.cond519
  %call549 = tail call ptr @DestroyString(ptr noundef nonnull %retval.0.i911) #20, !dbg !2311
  call void @llvm.dbg.value(metadata ptr %call549, metadata !1696, metadata !DIExpression()), !dbg !1706
  %86 = load ptr, ptr %node.i872, align 8, !dbg !2312, !tbaa !1853
  %cmp551 = icmp eq ptr %86, null, !dbg !2314
  br i1 %cmp551, label %cleanup, label %if.end555, !dbg !2315

if.end555:                                        ; preds = %for.end548
  %87 = load ptr, ptr %86, align 8, !dbg !2316, !tbaa !247
  %cmp558 = icmp eq ptr %87, null, !dbg !2318
  br i1 %cmp558, label %if.then560, label %if.end563, !dbg !2319

if.then560:                                       ; preds = %if.end555
  %call561 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2275, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #20, !dbg !2320
  br label %cleanup, !dbg !2322

if.end563:                                        ; preds = %if.end555
  %call566 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2279, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.36, ptr noundef nonnull %87) #20, !dbg !2323
  br label %cleanup, !dbg !2324

cleanup:                                          ; preds = %for.end548, %if.end563, %if.then560, %if.else492, %if.then482, %if.then448, %if.then428, %if.else370, %if.then353, %if.then311, %if.then303, %if.end282, %if.end257, %DestroyXMLTreeAttributes.exit, %if.then115, %if.then47, %if.then21, %if.then7, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ null, %if.then7 ], [ null, %if.then21 ], [ %call3, %if.then47 ], [ %call3, %if.then115 ], [ %call3, %DestroyXMLTreeAttributes.exit ], [ %call3, %if.end257 ], [ %call3, %if.then560 ], [ %call3, %if.end563 ], [ %call3, %if.end282 ], [ %call3, %if.then303 ], [ %call3, %if.then311 ], [ %call3, %if.then353 ], [ %call3, %if.else370 ], [ %call3, %if.then428 ], [ %call3, %if.then448 ], [ %call3, %if.then482 ], [ %call3, %if.else492 ], [ %call3, %for.end548 ], !dbg !1706
  ret ptr %retval.0, !dbg !2325
}

declare !dbg !2326 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @NewXMLTreeTag(ptr noundef %tag) local_unnamed_addr #0 !dbg !208 {
entry:
  call void @llvm.dbg.value(metadata ptr %tag, metadata !212, metadata !DIExpression()), !dbg !2330
  %call = tail call ptr @AcquireMagickMemory(i64 noundef 160) #19, !dbg !2331
  call void @llvm.dbg.value(metadata ptr %call, metadata !213, metadata !DIExpression()), !dbg !2330
  %cmp = icmp eq ptr %call, null, !dbg !2332
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2334

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call, i32 noundef 0, i64 noundef 160) #20, !dbg !2335
  store ptr null, ptr %call, align 8, !dbg !2336, !tbaa !2337
  %cmp4.not = icmp eq ptr %tag, null, !dbg !2338
  br i1 %cmp4.not, label %if.end9, label %if.then5, !dbg !2340

if.then5:                                         ; preds = %if.end
  %call6 = tail call ptr @ConstantString(ptr noundef nonnull %tag) #20, !dbg !2341
  store ptr %call6, ptr %call, align 8, !dbg !2342, !tbaa !2337
  br label %if.end9, !dbg !2343

if.end9:                                          ; preds = %if.then5, %if.end
  %node = getelementptr inbounds %struct._XMLTreeRoot, ptr %call, i64 0, i32 1, !dbg !2344
  store ptr %call, ptr %node, align 8, !dbg !2345, !tbaa !1853
  %call11 = tail call ptr @ConstantString(ptr noundef nonnull @.str) #20, !dbg !2346
  %content = getelementptr inbounds %struct._XMLTreeInfo, ptr %call, i64 0, i32 2, !dbg !2347
  store ptr %call11, ptr %content, align 8, !dbg !2348, !tbaa !2349
  %call13 = tail call ptr @AcquireMagickMemory(i64 noundef 88) #19, !dbg !2350
  %entities = getelementptr inbounds %struct._XMLTreeRoot, ptr %call, i64 0, i32 4, !dbg !2351
  store ptr %call13, ptr %entities, align 8, !dbg !2352, !tbaa !910
  %cmp15 = icmp eq ptr %call13, null, !dbg !2353
  br i1 %cmp15, label %cleanup, label %if.end17, !dbg !2355

if.end17:                                         ; preds = %if.end9
  %call19 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %call13, ptr noundef nonnull @NewXMLTreeTag.predefined_entities, i64 noundef 88) #20, !dbg !2356
  %attributes = getelementptr inbounds %struct._XMLTreeInfo, ptr %call, i64 0, i32 1, !dbg !2357
  store ptr @sentinel, ptr %attributes, align 8, !dbg !2358, !tbaa !2359
  %attributes23 = getelementptr inbounds %struct._XMLTreeRoot, ptr %call, i64 0, i32 5, !dbg !2360
  store ptr @sentinel, ptr %attributes23, align 8, !dbg !2361, !tbaa !929
  %processing_instructions = getelementptr inbounds %struct._XMLTreeRoot, ptr %call, i64 0, i32 3, !dbg !2362
  store ptr @sentinel, ptr %processing_instructions, align 8, !dbg !2363, !tbaa !981
  %call26 = tail call i32 @IsEventLogging() #20, !dbg !2364
  %debug = getelementptr inbounds %struct._XMLTreeRoot, ptr %call, i64 0, i32 6, !dbg !2365
  store i32 %call26, ptr %debug, align 8, !dbg !2366, !tbaa !2367
  %signature = getelementptr inbounds %struct._XMLTreeRoot, ptr %call, i64 0, i32 8, !dbg !2368
  store i64 2880220587, ptr %signature, align 8, !dbg !2369, !tbaa !2370
  br label %cleanup, !dbg !2371

cleanup:                                          ; preds = %if.end9, %entry, %if.end17
  %retval.0 = phi ptr [ %call, %if.end17 ], [ null, %entry ], [ null, %if.end9 ], !dbg !2330
  ret ptr %retval.0, !dbg !2372
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #12

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ParseEntities(ptr noundef %xml, ptr nocapture noundef readonly %entities, i32 noundef %state) unnamed_addr #0 !dbg !2373 {
entry:
  %entity = alloca ptr, align 8
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %xml, metadata !2377, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata ptr %entities, metadata !2378, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 %state, metadata !2379, metadata !DIExpression()), !dbg !2406
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %entity) #20, !dbg !2407
  call void @llvm.dbg.value(metadata ptr %xml, metadata !2383, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata ptr %xml, metadata !2384, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata ptr %xml, metadata !2377, metadata !DIExpression()), !dbg !2406
  %0 = load i8, ptr %xml, align 1, !dbg !2408, !tbaa !652
  %cmp.not399 = icmp eq i8 %0, 0, !dbg !2411
  br i1 %cmp.not399, label %for.cond10.preheader, label %while.cond.preheader, !dbg !2412

while.cond.preheader:                             ; preds = %entry, %for.inc
  %1 = phi i8 [ %3, %for.inc ], [ %0, %entry ]
  %xml.addr.0400 = phi ptr [ %incdec.ptr9, %for.inc ], [ %xml, %entry ]
  call void @llvm.dbg.value(metadata ptr %xml.addr.0400, metadata !2377, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata ptr %xml.addr.0400, metadata !2377, metadata !DIExpression()), !dbg !2406
  %cmp3397 = icmp eq i8 %1, 13, !dbg !2413
  br i1 %cmp3397, label %while.body, label %for.inc, !dbg !2414

for.cond10.preheader:                             ; preds = %for.inc, %entry
  %cmp22.not = icmp eq i32 %state, 37
  %cmp37.not = icmp eq i32 %state, 99
  br label %for.cond10.outer.outer, !dbg !2415

while.body:                                       ; preds = %while.cond.preheader, %if.end
  %xml.addr.1398 = phi ptr [ %incdec.ptr, %if.end ], [ %xml.addr.0400, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata ptr %xml.addr.1398, metadata !2377, metadata !DIExpression()), !dbg !2406
  %incdec.ptr = getelementptr inbounds i8, ptr %xml.addr.1398, i64 1, !dbg !2416
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2377, metadata !DIExpression()), !dbg !2406
  store i8 10, ptr %xml.addr.1398, align 1, !dbg !2418, !tbaa !652
  %2 = load i8, ptr %incdec.ptr, align 1, !dbg !2419, !tbaa !652
  %cmp6 = icmp eq i8 %2, 10, !dbg !2421
  br i1 %cmp6, label %if.then, label %if.end, !dbg !2422

if.then:                                          ; preds = %while.body
  %add.ptr = getelementptr inbounds i8, ptr %xml.addr.1398, i64 2, !dbg !2423
  %call = tail call i64 @strlen(ptr noundef nonnull %incdec.ptr) #21, !dbg !2424
  %call8 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %incdec.ptr, ptr noundef nonnull %add.ptr, i64 noundef %call) #20, !dbg !2425
  %.pr.pre = load i8, ptr %incdec.ptr, align 1, !dbg !2426, !tbaa !652
  br label %if.end, !dbg !2427

if.end:                                           ; preds = %if.then, %while.body
  %.pr = phi i8 [ %.pr.pre, %if.then ], [ %2, %while.body ], !dbg !2426
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2377, metadata !DIExpression()), !dbg !2406
  %cmp3 = icmp eq i8 %.pr, 13, !dbg !2413
  br i1 %cmp3, label %while.body, label %for.inc, !dbg !2414, !llvm.loop !2428

for.inc:                                          ; preds = %if.end, %while.cond.preheader
  %xml.addr.1.lcssa = phi ptr [ %xml.addr.0400, %while.cond.preheader ], [ %incdec.ptr, %if.end ]
  %incdec.ptr9 = getelementptr inbounds i8, ptr %xml.addr.1.lcssa, i64 1, !dbg !2430
  call void @llvm.dbg.value(metadata ptr %incdec.ptr9, metadata !2377, metadata !DIExpression()), !dbg !2406
  %3 = load i8, ptr %incdec.ptr9, align 1, !dbg !2408, !tbaa !652
  %cmp.not = icmp eq i8 %3, 0, !dbg !2411
  br i1 %cmp.not, label %for.cond10.preheader, label %while.cond.preheader, !dbg !2412, !llvm.loop !2431

for.cond10:                                       ; preds = %for.cond10.outer, %if.then62
  %xml.addr.2 = phi ptr [ %incdec.ptr63, %if.then62 ], [ %xml.addr.2.ph, %for.cond10.outer ], !dbg !2433
  call void @llvm.dbg.value(metadata ptr %xml.addr.2, metadata !2377, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata ptr %p.0.ph.ph, metadata !2383, metadata !DIExpression()), !dbg !2406
  br i1 %cmp22.not, label %while.cond11, label %while.cond11.us

while.cond11.us:                                  ; preds = %for.cond10, %while.body29.us
  %xml.addr.3.us = phi ptr [ %incdec.ptr30.us, %while.body29.us ], [ %xml.addr.2, %for.cond10 ], !dbg !2433
  call void @llvm.dbg.value(metadata ptr %xml.addr.3.us, metadata !2377, metadata !DIExpression()), !dbg !2406
  %4 = load i8, ptr %xml.addr.3.us, align 1, !dbg !2434, !tbaa !652
  switch i8 %4, label %land.lhs.true18.us [
    i8 0, label %for.end212
    i8 38, label %if.end36
  ], !dbg !2435

land.lhs.true18.us:                               ; preds = %while.cond11.us
  %call24.us = tail call ptr @__ctype_b_loc() #24, !dbg !2436
  %5 = load ptr, ptr %call24.us, align 8, !dbg !2436, !tbaa !312
  %6 = load i16, ptr %5, align 2, !dbg !2436, !tbaa !1844
  %7 = and i16 %6, 8192, !dbg !2436
  %tobool.not.us = icmp eq i16 %7, 0, !dbg !2437
  br i1 %tobool.not.us, label %while.end31, label %while.body29.us, !dbg !2438

while.body29.us:                                  ; preds = %land.lhs.true18.us
  %incdec.ptr30.us = getelementptr inbounds i8, ptr %xml.addr.3.us, i64 1, !dbg !2439
  call void @llvm.dbg.value(metadata ptr %incdec.ptr30.us, metadata !2377, metadata !DIExpression()), !dbg !2406
  br label %while.cond11.us, !dbg !2438, !llvm.loop !2440

while.cond11:                                     ; preds = %for.cond10, %while.body29
  %xml.addr.3 = phi ptr [ %incdec.ptr30, %while.body29 ], [ %xml.addr.2, %for.cond10 ], !dbg !2433
  call void @llvm.dbg.value(metadata ptr %xml.addr.3, metadata !2377, metadata !DIExpression()), !dbg !2406
  %8 = load i8, ptr %xml.addr.3, align 1, !dbg !2434, !tbaa !652
  switch i8 %8, label %land.rhs [
    i8 0, label %for.end212
    i8 38, label %if.end36
    i8 37, label %land.lhs.true39
  ], !dbg !2435

land.rhs:                                         ; preds = %while.cond11
  %call24 = tail call ptr @__ctype_b_loc() #24, !dbg !2436
  %9 = load ptr, ptr %call24, align 8, !dbg !2436, !tbaa !312
  %10 = load i16, ptr %9, align 2, !dbg !2436, !tbaa !1844
  %11 = and i16 %10, 8192, !dbg !2436
  %tobool.not = icmp eq i16 %11, 0, !dbg !2437
  br i1 %tobool.not, label %while.end31, label %while.body29, !dbg !2438

while.body29:                                     ; preds = %land.rhs
  %incdec.ptr30 = getelementptr inbounds i8, ptr %xml.addr.3, i64 1, !dbg !2439
  call void @llvm.dbg.value(metadata ptr %incdec.ptr30, metadata !2377, metadata !DIExpression()), !dbg !2406
  br label %while.cond11, !dbg !2438, !llvm.loop !2440

while.end31:                                      ; preds = %land.lhs.true18.us, %land.rhs
  %.us-phi403 = phi ptr [ %xml.addr.3, %land.rhs ], [ %xml.addr.3.us, %land.lhs.true18.us ]
  %.us-phi404 = phi i8 [ %8, %land.rhs ], [ %4, %land.lhs.true18.us ]
  %cmp33 = icmp eq i8 %.us-phi404, 0, !dbg !2441
  br i1 %cmp33, label %for.end212, label %if.end36, !dbg !2443

if.end36:                                         ; preds = %while.cond11.us, %while.cond11, %while.end31
  %xml.addr.3388 = phi ptr [ %.us-phi403, %while.end31 ], [ %xml.addr.3, %while.cond11 ], [ %xml.addr.3.us, %while.cond11.us ]
  %12 = phi i8 [ %.us-phi404, %while.end31 ], [ %8, %while.cond11 ], [ %4, %while.cond11.us ]
  br i1 %cmp37.not, label %if.else100, label %land.lhs.true39, !dbg !2444

land.lhs.true39:                                  ; preds = %while.cond11, %if.end36
  %xml.addr.3387 = phi ptr [ %xml.addr.3388, %if.end36 ], [ %xml.addr.3, %while.cond11 ]
  %13 = phi i8 [ %12, %if.end36 ], [ %8, %while.cond11 ]
  %call40 = tail call i32 @strncmp(ptr noundef nonnull %xml.addr.3387, ptr noundef nonnull dereferenceable(3) @.str.51, i64 noundef 2) #21, !dbg !2445
  %cmp41 = icmp eq i32 %call40, 0, !dbg !2446
  br i1 %cmp41, label %if.then43, label %if.else100, !dbg !2447

if.then43:                                        ; preds = %land.lhs.true39
  %arrayidx44 = getelementptr inbounds i8, ptr %xml.addr.3387, i64 2, !dbg !2448
  %14 = load i8, ptr %arrayidx44, align 1, !dbg !2448, !tbaa !652
  %cmp46.not = icmp eq i8 %14, 120, !dbg !2451
  br i1 %cmp46.not, label %if.else, label %if.then48, !dbg !2452

if.then48:                                        ; preds = %if.then43
  call void @llvm.dbg.value(metadata ptr %entity, metadata !2380, metadata !DIExpression(DW_OP_deref)), !dbg !2406
  %call50 = call i64 @strtol(ptr noundef nonnull %arrayidx44, ptr noundef nonnull %entity, i32 noundef 10) #20, !dbg !2453
  call void @llvm.dbg.value(metadata i64 %call50, metadata !2382, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2406
  br label %if.end55, !dbg !2454

if.else:                                          ; preds = %if.then43
  %add.ptr52 = getelementptr inbounds i8, ptr %xml.addr.3387, i64 3, !dbg !2455
  call void @llvm.dbg.value(metadata ptr %entity, metadata !2380, metadata !DIExpression(DW_OP_deref)), !dbg !2406
  %call53 = call i64 @strtol(ptr noundef nonnull %add.ptr52, ptr noundef nonnull %entity, i32 noundef 16) #20, !dbg !2456
  call void @llvm.dbg.value(metadata i64 %call53, metadata !2382, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2406
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then48
  %c.0.in = phi i64 [ %call50, %if.then48 ], [ %call53, %if.else ]
  %c.0 = trunc i64 %c.0.in to i32, !dbg !2457
  call void @llvm.dbg.value(metadata i32 %c.0, metadata !2382, metadata !DIExpression()), !dbg !2406
  %cmp56 = icmp eq i32 %c.0, 0, !dbg !2458
  br i1 %cmp56, label %if.then62, label %lor.lhs.false58, !dbg !2460

lor.lhs.false58:                                  ; preds = %if.end55
  %15 = load ptr, ptr %entity, align 8, !dbg !2461, !tbaa !312
  call void @llvm.dbg.value(metadata ptr %15, metadata !2380, metadata !DIExpression()), !dbg !2406
  %16 = load i8, ptr %15, align 1, !dbg !2462, !tbaa !652
  %cmp60.not = icmp eq i8 %16, 59, !dbg !2463
  br i1 %cmp60.not, label %if.end64, label %if.then62, !dbg !2464

if.then62:                                        ; preds = %lor.lhs.false58, %if.end55
  %incdec.ptr63 = getelementptr inbounds i8, ptr %xml.addr.3387, i64 1, !dbg !2465
  call void @llvm.dbg.value(metadata ptr %incdec.ptr63, metadata !2377, metadata !DIExpression()), !dbg !2406
  br label %for.cond10, !dbg !2467, !llvm.loop !2468

if.end64:                                         ; preds = %lor.lhs.false58
  %c.0.le = trunc i64 %c.0.in to i32, !dbg !2457
  %cmp65 = icmp slt i32 %c.0.le, 128, !dbg !2470
  br i1 %cmp65, label %if.then67, label %for.body74, !dbg !2472

if.then67:                                        ; preds = %if.end64
  %conv68 = trunc i64 %c.0.in to i8, !dbg !2473
  %incdec.ptr69 = getelementptr inbounds i8, ptr %xml.addr.3387, i64 1, !dbg !2474
  call void @llvm.dbg.value(metadata ptr %incdec.ptr69, metadata !2377, metadata !DIExpression()), !dbg !2406
  store i8 %conv68, ptr %xml.addr.3387, align 1, !dbg !2475, !tbaa !652
  br label %if.end94, !dbg !2476

for.body74:                                       ; preds = %if.end64, %for.body74
  %byte.0408 = phi i32 [ %div, %for.body74 ], [ %c.0.le, %if.end64 ]
  %i.0407 = phi i64 [ %inc, %for.body74 ], [ 0, %if.end64 ]
  call void @llvm.dbg.value(metadata i32 %byte.0408, metadata !2381, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i64 %i.0407, metadata !2385, metadata !DIExpression()), !dbg !2406
  %inc = add nuw nsw i64 %i.0407, 1, !dbg !2477
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2385, metadata !DIExpression()), !dbg !2406
  %div = sdiv i32 %byte.0408, 2, !dbg !2481
  call void @llvm.dbg.value(metadata i32 %div, metadata !2381, metadata !DIExpression()), !dbg !2406
  %byte.0408.off = add i32 %byte.0408, 1, !dbg !2482
  %17 = icmp ult i32 %byte.0408.off, 3, !dbg !2482
  br i1 %17, label %for.end76, label %for.body74, !dbg !2483, !llvm.loop !2484

for.end76:                                        ; preds = %for.body74
  %sub = add nsw i64 %i.0407, -1, !dbg !2486
  %div77 = sdiv i64 %sub, 5, !dbg !2487
  call void @llvm.dbg.value(metadata i64 %div77, metadata !2385, metadata !DIExpression()), !dbg !2406
  %18 = trunc i64 %div77 to i32, !dbg !2488
  %sh_prom = sub i32 7, %18, !dbg !2488
  %shl = shl i32 255, %sh_prom, !dbg !2488
  %sh_prom79 = mul i32 %18, 6, !dbg !2489
  %shr = ashr i32 %c.0.le, %sh_prom79, !dbg !2489
  %or = or i32 %shl, %shr, !dbg !2490
  %conv80 = trunc i32 %or to i8, !dbg !2491
  store i8 %conv80, ptr %xml.addr.3387, align 1, !dbg !2492, !tbaa !652
  call void @llvm.dbg.value(metadata ptr %xml.addr.3387, metadata !2377, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2406
  %xml.addr.4410 = getelementptr inbounds i8, ptr %xml.addr.3387, i64 1, !dbg !2493
  call void @llvm.dbg.value(metadata ptr %xml.addr.4410, metadata !2377, metadata !DIExpression()), !dbg !2406
  %19 = icmp ult i64 %i.0407, 6, !dbg !2494
  br i1 %19, label %if.end94, label %while.body85, !dbg !2495

while.body85:                                     ; preds = %for.end76, %while.body85
  %xml.addr.4413 = phi ptr [ %xml.addr.4, %while.body85 ], [ %xml.addr.4410, %for.end76 ]
  %i.1412 = phi i64 [ %dec, %while.body85 ], [ %div77, %for.end76 ]
  call void @llvm.dbg.value(metadata i64 %i.1412, metadata !2385, metadata !DIExpression()), !dbg !2406
  %dec = add nsw i64 %i.1412, -1, !dbg !2496
  call void @llvm.dbg.value(metadata i64 %dec, metadata !2385, metadata !DIExpression()), !dbg !2406
  %20 = trunc i64 %dec to i32, !dbg !2498
  %sh_prom87 = mul i32 %20, 6, !dbg !2498
  %shr88 = ashr i32 %c.0.le, %sh_prom87, !dbg !2498
  %21 = trunc i32 %shr88 to i8, !dbg !2499
  %22 = and i8 %21, 63, !dbg !2499
  %conv91 = or i8 %22, -128, !dbg !2499
  store i8 %conv91, ptr %xml.addr.4413, align 1, !dbg !2500, !tbaa !652
  call void @llvm.dbg.value(metadata ptr %xml.addr.4413, metadata !2377, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2406
  %xml.addr.4 = getelementptr inbounds i8, ptr %xml.addr.4413, i64 1, !dbg !2493
  call void @llvm.dbg.value(metadata ptr %xml.addr.4, metadata !2377, metadata !DIExpression()), !dbg !2406
  %cmp83.not = icmp eq i64 %dec, 0, !dbg !2494
  br i1 %cmp83.not, label %if.end94, label %while.body85, !dbg !2495, !llvm.loop !2501

if.end94:                                         ; preds = %while.body85, %for.end76, %if.then67
  %xml.addr.5 = phi ptr [ %incdec.ptr69, %if.then67 ], [ %xml.addr.4410, %for.end76 ], [ %xml.addr.4, %while.body85 ], !dbg !2503
  call void @llvm.dbg.value(metadata ptr %xml.addr.5, metadata !2377, metadata !DIExpression()), !dbg !2406
  %call95 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %xml.addr.5, i32 noundef 59) #21, !dbg !2504
  %add.ptr96 = getelementptr inbounds i8, ptr %call95, i64 1, !dbg !2505
  %call98 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call95) #21, !dbg !2506
  %call99 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %xml.addr.5, ptr noundef nonnull %add.ptr96, i64 noundef %call98) #20, !dbg !2507
  br label %for.cond10.outer.backedge, !dbg !2508

if.else100:                                       ; preds = %land.lhs.true39, %if.end36
  %xml.addr.3389 = phi ptr [ %xml.addr.3387, %land.lhs.true39 ], [ %xml.addr.3388, %if.end36 ]
  %23 = phi i8 [ %13, %land.lhs.true39 ], [ %12, %if.end36 ]
  %cmp102 = icmp eq i8 %23, 38, !dbg !2509
  br i1 %cmp102, label %land.lhs.true104, label %lor.lhs.false113, !dbg !2510

land.lhs.true104:                                 ; preds = %if.else100
  switch i32 %state, label %if.else207 [
    i32 42, label %if.then120
    i32 38, label %if.then120
    i32 32, label %if.then120
  ], !dbg !2511

lor.lhs.false113:                                 ; preds = %if.else100
  switch i32 %state, label %if.else207 [
    i32 37, label %land.lhs.true116
    i32 42, label %land.lhs.true195
    i32 32, label %land.lhs.true195
  ], !dbg !2512

land.lhs.true116:                                 ; preds = %lor.lhs.false113
  %cmp118 = icmp eq i8 %23, 37, !dbg !2513
  br i1 %cmp118, label %if.then120, label %if.else207, !dbg !2514

if.then120:                                       ; preds = %land.lhs.true104, %land.lhs.true104, %land.lhs.true104, %land.lhs.true116
  call void @llvm.dbg.value(metadata i64 0, metadata !2385, metadata !DIExpression()), !dbg !2406
  %24 = load ptr, ptr %entities, align 8, !dbg !2515, !tbaa !312
  %cmp123.not415 = icmp eq ptr %24, null, !dbg !2516
  br i1 %cmp123.not415, label %if.then140, label %land.rhs125.lr.ph, !dbg !2517

land.rhs125.lr.ph:                                ; preds = %if.then120
  %add.ptr126 = getelementptr inbounds i8, ptr %xml.addr.3389, i64 1
  br label %land.rhs125, !dbg !2517

land.rhs125:                                      ; preds = %land.rhs125.lr.ph, %while.body134
  %25 = phi ptr [ %24, %land.rhs125.lr.ph ], [ %26, %while.body134 ]
  %i.2416 = phi i64 [ 0, %land.rhs125.lr.ph ], [ %add, %while.body134 ]
  call void @llvm.dbg.value(metadata i64 %i.2416, metadata !2385, metadata !DIExpression()), !dbg !2406
  %call129 = tail call i64 @strlen(ptr noundef nonnull %25) #21, !dbg !2518
  %call130 = tail call i32 @strncmp(ptr noundef nonnull %add.ptr126, ptr noundef nonnull %25, i64 noundef %call129) #21, !dbg !2519
  %cmp131.not = icmp eq i32 %call130, 0, !dbg !2520
  br i1 %cmp131.not, label %if.else142, label %while.body134, !dbg !2521

while.body134:                                    ; preds = %land.rhs125
  %add = add nuw nsw i64 %i.2416, 2, !dbg !2522
  call void @llvm.dbg.value(metadata i64 %add, metadata !2385, metadata !DIExpression()), !dbg !2406
  %arrayidx122 = getelementptr inbounds ptr, ptr %entities, i64 %add, !dbg !2515
  %26 = load ptr, ptr %arrayidx122, align 8, !dbg !2515, !tbaa !312
  %cmp123.not = icmp eq ptr %26, null, !dbg !2516
  br i1 %cmp123.not, label %if.then140, label %land.rhs125, !dbg !2517, !llvm.loop !2523

if.then140:                                       ; preds = %while.body134, %if.then120
  call void @llvm.dbg.value(metadata i64 undef, metadata !2385, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2406
  %incdec.ptr141 = getelementptr inbounds i8, ptr %xml.addr.3389, i64 1, !dbg !2525
  call void @llvm.dbg.value(metadata ptr %incdec.ptr141, metadata !2377, metadata !DIExpression()), !dbg !2406
  br label %for.cond10.outer.backedge, !dbg !2526

for.cond10.outer.backedge:                        ; preds = %if.then140, %if.else207, %if.then205, %if.end94
  %xml.addr.2.ph.be = phi ptr [ %xml.addr.5, %if.end94 ], [ %incdec.ptr141, %if.then140 ], [ %incdec.ptr206, %if.then205 ], [ %incdec.ptr208, %if.else207 ]
  br label %for.cond10.outer, !dbg !2415, !llvm.loop !2468

if.else142:                                       ; preds = %land.rhs125
  call void @llvm.dbg.value(metadata i64 %i.2416, metadata !2385, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2406
  %inc136 = or i64 %i.2416, 1, !dbg !2527
  call void @llvm.dbg.value(metadata i64 %inc136, metadata !2385, metadata !DIExpression()), !dbg !2406
  %arrayidx143 = getelementptr inbounds ptr, ptr %entities, i64 %inc136, !dbg !2528
  %27 = load ptr, ptr %arrayidx143, align 8, !dbg !2528, !tbaa !312
  %call144 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %27) #21, !dbg !2529
  call void @llvm.dbg.value(metadata i64 %call144, metadata !2387, metadata !DIExpression()), !dbg !2406
  %call145 = tail call ptr @strchr(ptr noundef nonnull %xml.addr.3389, i32 noundef 59) #21, !dbg !2530
  call void @llvm.dbg.value(metadata ptr %call145, metadata !2380, metadata !DIExpression()), !dbg !2406
  store ptr %call145, ptr %entity, align 8, !dbg !2531, !tbaa !312
  %sub146 = add i64 %call144, -1, !dbg !2532
  %sub.ptr.lhs.cast = ptrtoint ptr %call145 to i64, !dbg !2533
  %sub.ptr.rhs.cast = ptrtoint ptr %xml.addr.3389 to i64, !dbg !2533
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2533
  %cmp147.not = icmp ult i64 %sub146, %sub.ptr.sub, !dbg !2534
  br i1 %cmp147.not, label %if.end181, label %if.then149, !dbg !2535

if.then149:                                       ; preds = %if.else142
  %sub.ptr.rhs.cast151 = ptrtoint ptr %p.0.ph.ph to i64, !dbg !2536
  %sub.ptr.sub152 = sub i64 %sub.ptr.rhs.cast, %sub.ptr.rhs.cast151, !dbg !2536
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub152, metadata !2388, metadata !DIExpression()), !dbg !2406
  %add153 = add i64 %call144, %sub.ptr.sub152, !dbg !2537
  %call154 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call145) #21, !dbg !2538
  %add155 = add i64 %add153, %call154, !dbg !2539
  call void @llvm.dbg.value(metadata i64 %add155, metadata !2386, metadata !DIExpression()), !dbg !2406
  %cmp156.not = icmp eq ptr %p.0.ph.ph, %xml, !dbg !2540
  br i1 %cmp156.not, label %if.else160, label %if.then158, !dbg !2541

if.then158:                                       ; preds = %if.then149
  %call159 = tail call ptr @ResizeQuantumMemory(ptr noundef %p.0.ph.ph, i64 noundef %add155, i64 noundef 1) #23, !dbg !2542
  call void @llvm.dbg.value(metadata ptr %call159, metadata !2383, metadata !DIExpression()), !dbg !2406
  br label %if.end169, !dbg !2543

if.else160:                                       ; preds = %if.then149
  %call162 = tail call ptr @AcquireQuantumMemory(i64 noundef %add155, i64 noundef 1) #22, !dbg !2544
  call void @llvm.dbg.value(metadata ptr %call162, metadata !2389, metadata !DIExpression()), !dbg !2545
  %cmp163.not = icmp eq ptr %call162, null, !dbg !2546
  br i1 %cmp163.not, label %if.end169, label %if.end169.thread, !dbg !2548

if.end169.thread:                                 ; preds = %if.else160
  %call167 = tail call i64 @CopyMagickString(ptr noundef nonnull %call162, ptr noundef nonnull %xml, i64 noundef %add155) #20, !dbg !2549
  call void @llvm.dbg.value(metadata ptr %p.2, metadata !2383, metadata !DIExpression()), !dbg !2406
  br label %if.end178, !dbg !2551

if.end169:                                        ; preds = %if.else160, %if.then158
  %p.2 = phi ptr [ %call159, %if.then158 ], [ %xml, %if.else160 ], !dbg !2552
  call void @llvm.dbg.value(metadata ptr %p.2, metadata !2383, metadata !DIExpression()), !dbg !2406
  %cmp170 = icmp eq ptr %p.2, null, !dbg !2553
  br i1 %cmp170, label %if.then172, label %if.end178, !dbg !2551

if.then172:                                       ; preds = %if.end169
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #20, !dbg !2554
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !2405, metadata !DIExpression()), !dbg !2554
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #20, !dbg !2554
  %call173 = tail call ptr @__errno_location() #24, !dbg !2554
  %28 = load i32, ptr %call173, align 4, !dbg !2554, !tbaa !1205
  %call174 = call ptr @GetExceptionMessage(i32 noundef %28) #20, !dbg !2554
  call void @llvm.dbg.value(metadata ptr %call174, metadata !2402, metadata !DIExpression()), !dbg !2555
  %call175 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1518, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %call174) #20, !dbg !2554
  %call176 = call ptr @DestroyString(ptr noundef %call174) #20, !dbg !2554
  call void @llvm.dbg.value(metadata ptr %call176, metadata !2402, metadata !DIExpression()), !dbg !2555
  call void @CatchException(ptr noundef nonnull %exception) #20, !dbg !2554
  %call177 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #20, !dbg !2554
  call void @MagickCoreTerminus() #20, !dbg !2554
  call void @_exit(i32 noundef 1) #25, !dbg !2554
  unreachable, !dbg !2554

if.end178:                                        ; preds = %if.end169.thread, %if.end169
  %p.2379 = phi ptr [ %call162, %if.end169.thread ], [ %p.2, %if.end169 ]
  %add.ptr179 = getelementptr inbounds i8, ptr %p.2379, i64 %sub.ptr.sub152, !dbg !2556
  call void @llvm.dbg.value(metadata ptr %add.ptr179, metadata !2377, metadata !DIExpression()), !dbg !2406
  %call180 = tail call ptr @strchr(ptr noundef nonnull %add.ptr179, i32 noundef 59) #21, !dbg !2557
  call void @llvm.dbg.value(metadata ptr %call180, metadata !2380, metadata !DIExpression()), !dbg !2406
  store ptr %call180, ptr %entity, align 8, !dbg !2558, !tbaa !312
  br label %if.end181, !dbg !2559

if.end181:                                        ; preds = %if.end178, %if.else142
  %29 = phi ptr [ %call180, %if.end178 ], [ %call145, %if.else142 ], !dbg !2560
  %p.3 = phi ptr [ %p.2379, %if.end178 ], [ %p.0.ph.ph, %if.else142 ], !dbg !2406
  %xml.addr.6 = phi ptr [ %add.ptr179, %if.end178 ], [ %xml.addr.3389, %if.else142 ], !dbg !2433
  call void @llvm.dbg.value(metadata ptr %xml.addr.6, metadata !2377, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata ptr %p.3, metadata !2383, metadata !DIExpression()), !dbg !2406
  %add.ptr182 = getelementptr inbounds i8, ptr %xml.addr.6, i64 %call144, !dbg !2561
  call void @llvm.dbg.value(metadata ptr %29, metadata !2380, metadata !DIExpression()), !dbg !2406
  %add.ptr183 = getelementptr inbounds i8, ptr %29, i64 1, !dbg !2562
  %call184 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %29) #21, !dbg !2563
  %call185 = tail call ptr @CopyMagickMemory(ptr noundef %add.ptr182, ptr noundef nonnull %add.ptr183, i64 noundef %call184) #20, !dbg !2564
  %30 = load ptr, ptr %arrayidx143, align 8, !dbg !2565, !tbaa !312
  %call187 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %xml.addr.6, ptr noundef %30, i64 noundef %call144) #20, !dbg !2566
  br label %for.cond10.outer.outer, !llvm.loop !2468

for.cond10.outer.outer:                           ; preds = %if.end181, %for.cond10.preheader
  %p.0.ph.ph = phi ptr [ %p.3, %if.end181 ], [ %xml, %for.cond10.preheader ]
  %xml.addr.2.ph.ph = phi ptr [ %xml.addr.6, %if.end181 ], [ %xml, %for.cond10.preheader ]
  br label %for.cond10.outer, !dbg !2415

land.lhs.true195:                                 ; preds = %lor.lhs.false113, %lor.lhs.false113
  %call196 = tail call ptr @__ctype_b_loc() #24, !dbg !2567
  %31 = load ptr, ptr %call196, align 8, !dbg !2567, !tbaa !312
  %arrayidx201 = getelementptr inbounds i16, ptr %31, i64 1, !dbg !2567
  %32 = load i16, ptr %arrayidx201, align 2, !dbg !2567, !tbaa !1844
  %33 = and i16 %32, 8192, !dbg !2567
  %tobool204.not = icmp eq i16 %33, 0, !dbg !2567
  br i1 %tobool204.not, label %if.else207, label %if.then205, !dbg !2569

if.then205:                                       ; preds = %land.lhs.true195
  %incdec.ptr206 = getelementptr inbounds i8, ptr %xml.addr.3389, i64 1, !dbg !2570
  call void @llvm.dbg.value(metadata ptr %incdec.ptr206, metadata !2377, metadata !DIExpression()), !dbg !2406
  store i8 32, ptr %xml.addr.3389, align 1, !dbg !2571, !tbaa !652
  br label %for.cond10.outer.backedge, !dbg !2572

if.else207:                                       ; preds = %land.lhs.true116, %land.lhs.true104, %lor.lhs.false113, %land.lhs.true195
  %incdec.ptr208 = getelementptr inbounds i8, ptr %xml.addr.3389, i64 1, !dbg !2573
  call void @llvm.dbg.value(metadata ptr %incdec.ptr208, metadata !2377, metadata !DIExpression()), !dbg !2406
  br label %for.cond10.outer.backedge

for.cond10.outer:                                 ; preds = %for.cond10.outer.backedge, %for.cond10.outer.outer
  %xml.addr.2.ph = phi ptr [ %xml.addr.2.ph.ph, %for.cond10.outer.outer ], [ %xml.addr.2.ph.be, %for.cond10.outer.backedge ]
  br label %for.cond10, !dbg !2415

for.end212:                                       ; preds = %while.end31, %while.cond11.us, %while.cond11
  %cmp213 = icmp eq i32 %state, 42, !dbg !2574
  br i1 %cmp213, label %for.cond216.preheader, label %if.end255, !dbg !2576

for.cond216.preheader:                            ; preds = %for.end212
  call void @llvm.dbg.value(metadata ptr %p.0.ph.ph, metadata !2377, metadata !DIExpression()), !dbg !2406
  %34 = load i8, ptr %p.0.ph.ph, align 1, !dbg !2577, !tbaa !652
  %cmp218.not417 = icmp eq i8 %34, 0, !dbg !2581
  br i1 %cmp218.not417, label %for.end245, label %for.body220, !dbg !2582

for.body220:                                      ; preds = %for.cond216.preheader, %for.inc243
  %xml.addr.8418 = phi ptr [ %incdec.ptr244, %for.inc243 ], [ %p.0.ph.ph, %for.cond216.preheader ]
  call void @llvm.dbg.value(metadata ptr %xml.addr.8418, metadata !2377, metadata !DIExpression()), !dbg !2406
  %call221 = tail call i64 @strspn(ptr noundef nonnull %xml.addr.8418, ptr noundef nonnull @.str.49) #21, !dbg !2583
  call void @llvm.dbg.value(metadata i64 %call221, metadata !2385, metadata !DIExpression()), !dbg !2406
  %cmp222.not = icmp eq i64 %call221, 0, !dbg !2585
  br i1 %cmp222.not, label %while.cond231.preheader, label %if.then224, !dbg !2587

if.then224:                                       ; preds = %for.body220
  %add.ptr225 = getelementptr inbounds i8, ptr %xml.addr.8418, i64 %call221, !dbg !2588
  %call227 = tail call i64 @strlen(ptr noundef nonnull %add.ptr225) #21, !dbg !2589
  %add228 = add i64 %call227, 1, !dbg !2590
  %call229 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %xml.addr.8418, ptr noundef nonnull %add.ptr225, i64 noundef %add228) #20, !dbg !2591
  br label %while.cond231.preheader, !dbg !2592

while.cond231.preheader:                          ; preds = %if.then224, %for.body220
  br label %while.cond231, !dbg !2593

while.cond231:                                    ; preds = %while.cond231.preheader, %while.body240
  %xml.addr.9 = phi ptr [ %incdec.ptr241, %while.body240 ], [ %xml.addr.8418, %while.cond231.preheader ], !dbg !2594
  call void @llvm.dbg.value(metadata ptr %xml.addr.9, metadata !2377, metadata !DIExpression()), !dbg !2406
  %35 = load i8, ptr %xml.addr.9, align 1, !dbg !2595, !tbaa !652
  switch i8 %35, label %while.body240 [
    i8 0, label %for.inc243
    i8 32, label %for.inc243
  ], !dbg !2596

while.body240:                                    ; preds = %while.cond231
  %incdec.ptr241 = getelementptr inbounds i8, ptr %xml.addr.9, i64 1, !dbg !2597
  call void @llvm.dbg.value(metadata ptr %incdec.ptr241, metadata !2377, metadata !DIExpression()), !dbg !2406
  br label %while.cond231, !dbg !2593, !llvm.loop !2598

for.inc243:                                       ; preds = %while.cond231, %while.cond231
  %incdec.ptr244 = getelementptr inbounds i8, ptr %xml.addr.9, i64 1, !dbg !2599
  call void @llvm.dbg.value(metadata ptr %incdec.ptr244, metadata !2377, metadata !DIExpression()), !dbg !2406
  %36 = load i8, ptr %incdec.ptr244, align 1, !dbg !2577, !tbaa !652
  %cmp218.not = icmp eq i8 %36, 0, !dbg !2581
  br i1 %cmp218.not, label %for.end245, label %for.body220, !dbg !2582, !llvm.loop !2600

for.end245:                                       ; preds = %for.inc243, %for.cond216.preheader
  %xml.addr.8.lcssa = phi ptr [ %p.0.ph.ph, %for.cond216.preheader ], [ %incdec.ptr244, %for.inc243 ], !dbg !2594
  %incdec.ptr246 = getelementptr inbounds i8, ptr %xml.addr.8.lcssa, i64 -1, !dbg !2602
  call void @llvm.dbg.value(metadata ptr %incdec.ptr246, metadata !2377, metadata !DIExpression()), !dbg !2406
  %cmp247.not = icmp ult ptr %incdec.ptr246, %p.0.ph.ph, !dbg !2603
  br i1 %cmp247.not, label %if.end255, label %land.lhs.true249, !dbg !2605

land.lhs.true249:                                 ; preds = %for.end245
  %37 = load i8, ptr %incdec.ptr246, align 1, !dbg !2606, !tbaa !652
  %cmp251 = icmp eq i8 %37, 32, !dbg !2607
  br i1 %cmp251, label %if.then253, label %if.end255, !dbg !2608

if.then253:                                       ; preds = %land.lhs.true249
  store i8 0, ptr %incdec.ptr246, align 1, !dbg !2609, !tbaa !652
  br label %if.end255, !dbg !2610

if.end255:                                        ; preds = %for.end245, %land.lhs.true249, %if.then253, %for.end212
  %cmp256 = icmp eq ptr %p.0.ph.ph, %xml, !dbg !2611
  br i1 %cmp256, label %cond.true, label %cond.end, !dbg !2612

cond.true:                                        ; preds = %if.end255
  %call258 = tail call ptr @ConstantString(ptr noundef nonnull %xml) #20, !dbg !2613
  br label %cond.end, !dbg !2612

cond.end:                                         ; preds = %if.end255, %cond.true
  %cond = phi ptr [ %call258, %cond.true ], [ %p.0.ph.ph, %if.end255 ], !dbg !2612
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %entity) #20, !dbg !2614
  ret ptr %cond, !dbg !2615
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @ParseCharacterContent(ptr nocapture noundef readonly %root, ptr noundef %xml, i64 noundef %length, i8 noundef signext %state) unnamed_addr #0 !dbg !2278 {
entry:
  call void @llvm.dbg.value(metadata ptr %root, metadata !2277, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr %xml, metadata !2282, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %length, metadata !2283, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 %state, metadata !2284, metadata !DIExpression()), !dbg !2616
  %node = getelementptr inbounds %struct._XMLTreeRoot, ptr %root, i64 0, i32 1, !dbg !2617
  %0 = load ptr, ptr %node, align 8, !dbg !2617, !tbaa !1853
  call void @llvm.dbg.value(metadata ptr %0, metadata !2285, metadata !DIExpression()), !dbg !2616
  %cmp = icmp eq ptr %0, null, !dbg !2618
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !2619

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %0, align 8, !dbg !2620, !tbaa !247
  %cmp1 = icmp eq ptr %1, null, !dbg !2621
  %cmp3 = icmp eq i64 %length, 0
  %or.cond = or i1 %cmp3, %cmp1, !dbg !2622
  br i1 %or.cond, label %cleanup, label %if.end, !dbg !2622

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr inbounds i8, ptr %xml, i64 %length, !dbg !2623
  store i8 0, ptr %arrayidx, align 1, !dbg !2624, !tbaa !652
  %entities = getelementptr inbounds %struct._XMLTreeRoot, ptr %root, i64 0, i32 4, !dbg !2625
  %2 = load ptr, ptr %entities, align 8, !dbg !2625, !tbaa !910
  %3 = zext i8 %state to i32
  %call = tail call fastcc ptr @ParseEntities(ptr noundef %xml, ptr noundef %2, i32 noundef %3), !dbg !2626
  call void @llvm.dbg.value(metadata ptr %call, metadata !2282, metadata !DIExpression()), !dbg !2616
  %content = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 2, !dbg !2627
  %4 = load ptr, ptr %content, align 8, !dbg !2627, !tbaa !259
  %5 = load i8, ptr %4, align 1, !dbg !2628, !tbaa !652
  %cmp5.not = icmp eq i8 %5, 0, !dbg !2629
  br i1 %cmp5.not, label %if.then14, label %if.then7, !dbg !2630

if.then7:                                         ; preds = %if.end
  %call9 = tail call i32 @ConcatenateString(ptr noundef nonnull %content, ptr noundef %call) #20, !dbg !2631
  %call10 = tail call ptr @DestroyString(ptr noundef %call) #20, !dbg !2632
  call void @llvm.dbg.value(metadata ptr %call10, metadata !2282, metadata !DIExpression()), !dbg !2616
  br label %cleanup, !dbg !2633

if.then14:                                        ; preds = %if.end
  %call16 = tail call ptr @DestroyString(ptr noundef nonnull %4) #20, !dbg !2634
  store ptr %call, ptr %content, align 8, !dbg !2635, !tbaa !259
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.then14, %entry, %lor.lhs.false
  ret void, !dbg !2636
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ParseInternalDoctype(ptr nocapture noundef %root, ptr noundef %xml, i64 noundef %length, ptr noundef %exception) unnamed_addr #0 !dbg !2637 {
entry:
  %exception1 = alloca %struct._ExceptionInfo, align 8
  %exception62 = alloca %struct._ExceptionInfo, align 8
  %exception270 = alloca %struct._ExceptionInfo, align 8
  %exception286 = alloca %struct._ExceptionInfo, align 8
  %exception326 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %root, metadata !2641, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata ptr %xml, metadata !2642, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i64 %length, metadata !2643, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2644, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata ptr null, metadata !2647, metadata !DIExpression()), !dbg !2684
  %call = tail call ptr @AcquireMagickMemory(i64 noundef 8) #19, !dbg !2685
  call void @llvm.dbg.value(metadata ptr %call, metadata !2648, metadata !DIExpression()), !dbg !2684
  %cmp = icmp eq ptr %call, null, !dbg !2686
  br i1 %cmp, label %if.then, label %if.end, !dbg !2687

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception1) #20, !dbg !2688
  call void @llvm.dbg.declare(metadata ptr %exception1, metadata !2657, metadata !DIExpression()), !dbg !2688
  call void @GetExceptionInfo(ptr noundef nonnull %exception1) #20, !dbg !2688
  %call2 = tail call ptr @__errno_location() #24, !dbg !2688
  %0 = load i32, ptr %call2, align 4, !dbg !2688, !tbaa !1205
  %call3 = call ptr @GetExceptionMessage(i32 noundef %0) #20, !dbg !2688
  call void @llvm.dbg.value(metadata ptr %call3, metadata !2654, metadata !DIExpression()), !dbg !2689
  %call4 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1718, i32 noundef 400, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %call3) #20, !dbg !2688
  %call5 = call ptr @DestroyString(ptr noundef %call3) #20, !dbg !2688
  call void @llvm.dbg.value(metadata ptr %call5, metadata !2654, metadata !DIExpression()), !dbg !2689
  call void @CatchException(ptr noundef nonnull %exception1) #20, !dbg !2688
  %call6 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception1) #20, !dbg !2688
  call void @MagickCoreTerminus() #20, !dbg !2688
  call void @_exit(i32 noundef -299) #25, !dbg !2688
  unreachable, !dbg !2688

if.end:                                           ; preds = %entry
  %call7 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %call, ptr noundef nonnull @sentinel, i64 noundef 8) #20, !dbg !2690
  %arrayidx = getelementptr inbounds i8, ptr %xml, i64 %length, !dbg !2691
  store i8 0, ptr %arrayidx, align 1, !dbg !2692, !tbaa !652
  %standalone = getelementptr inbounds %struct._XMLTreeRoot, ptr %root, i64 0, i32 2
  %attributes = getelementptr inbounds %struct._XMLTreeRoot, ptr %root, i64 0, i32 5
  %entities349 = getelementptr inbounds %struct._XMLTreeRoot, ptr %root, i64 0, i32 4
  br label %for.cond.outer, !dbg !2691

for.cond.outer:                                   ; preds = %for.cond.outer.backedge, %if.end
  %predefined_entitites.0.ph = phi ptr [ %call, %if.end ], [ %predefined_entitites.0.ph.be, %for.cond.outer.backedge ]
  %n.0.ph = phi ptr [ null, %if.end ], [ %n.0.ph.be, %for.cond.outer.backedge ]
  %xml.addr.0.ph = phi ptr [ %xml, %if.end ], [ %xml.addr.0.ph.be, %for.cond.outer.backedge ]
  br label %for.cond.outer601, !dbg !2693

for.cond.outer601:                                ; preds = %for.cond.outer, %if.then44
  %n.0.ph602 = phi ptr [ %n.0.ph, %for.cond.outer ], [ %add.ptr29, %if.then44 ]
  %xml.addr.0.ph603 = phi ptr [ %xml.addr.0.ph, %for.cond.outer ], [ %call45, %if.then44 ]
  br label %for.cond, !dbg !2693

for.cond:                                         ; preds = %for.cond.outer601, %if.end125
  %xml.addr.0 = phi ptr [ %add.ptr127, %if.end125 ], [ %xml.addr.0.ph603, %for.cond.outer601 ]
  call void @llvm.dbg.value(metadata ptr %xml.addr.0, metadata !2642, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata ptr %n.0.ph602, metadata !2647, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata ptr %predefined_entitites.0.ph, metadata !2648, metadata !DIExpression()), !dbg !2684
  %cmp8.not = icmp eq ptr %xml.addr.0, null, !dbg !2694
  br i1 %cmp8.not, label %cleanup, label %while.cond, !dbg !2693

while.cond:                                       ; preds = %for.cond, %while.body
  %xml.addr.1 = phi ptr [ %incdec.ptr, %while.body ], [ %xml.addr.0, %for.cond ]
  call void @llvm.dbg.value(metadata ptr %xml.addr.1, metadata !2642, metadata !DIExpression()), !dbg !2684
  %1 = load i8, ptr %xml.addr.1, align 1, !dbg !2695, !tbaa !652
  switch i8 %1, label %while.body [
    i8 0, label %cleanup
    i8 37, label %if.end21
    i8 60, label %if.end21
  ], !dbg !2696

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8, ptr %xml.addr.1, i64 1, !dbg !2697
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2642, metadata !DIExpression()), !dbg !2684
  br label %while.cond, !dbg !2698, !llvm.loop !2699

if.end21:                                         ; preds = %while.cond, %while.cond
  %call22 = tail call i32 @strncmp(ptr noundef nonnull %xml.addr.1, ptr noundef nonnull dereferenceable(9) @.str.53, i64 noundef 8) #21, !dbg !2700
  %cmp23 = icmp eq i32 %call22, 0, !dbg !2701
  br i1 %cmp23, label %if.then25, label %if.else110, !dbg !2702

if.then25:                                        ; preds = %if.end21
  %add.ptr = getelementptr inbounds i8, ptr %xml.addr.1, i64 8, !dbg !2703
  %call26 = tail call i64 @strspn(ptr noundef nonnull %add.ptr, ptr noundef nonnull @.str.24) #21, !dbg !2704
  %add = add i64 %call26, 8, !dbg !2705
  %add.ptr27 = getelementptr inbounds i8, ptr %xml.addr.1, i64 %add, !dbg !2706
  call void @llvm.dbg.value(metadata ptr %add.ptr27, metadata !2642, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata ptr %add.ptr27, metadata !2645, metadata !DIExpression()), !dbg !2684
  %call28 = tail call i64 @strspn(ptr noundef nonnull %add.ptr27, ptr noundef nonnull @.str.54) #21, !dbg !2707
  %add.ptr29 = getelementptr inbounds i8, ptr %add.ptr27, i64 %call28, !dbg !2708
  call void @llvm.dbg.value(metadata ptr %add.ptr29, metadata !2647, metadata !DIExpression()), !dbg !2684
  %call30 = tail call i64 @strcspn(ptr noundef nonnull %add.ptr29, ptr noundef nonnull @.str.24) #21, !dbg !2709
  %add.ptr31 = getelementptr inbounds i8, ptr %add.ptr29, i64 %call30, !dbg !2710
  call void @llvm.dbg.value(metadata ptr %add.ptr31, metadata !2642, metadata !DIExpression()), !dbg !2684
  store i8 59, ptr %add.ptr31, align 1, !dbg !2711, !tbaa !652
  %add.ptr32 = getelementptr inbounds i8, ptr %add.ptr31, i64 1, !dbg !2712
  %call33 = tail call i64 @strspn(ptr noundef nonnull %add.ptr32, ptr noundef nonnull @.str.24) #21, !dbg !2713
  %add.ptr34 = getelementptr inbounds i8, ptr %add.ptr31, i64 1, !dbg !2714
  %add.ptr35 = getelementptr inbounds i8, ptr %add.ptr34, i64 %call33, !dbg !2715
  call void @llvm.dbg.value(metadata ptr %add.ptr35, metadata !2651, metadata !DIExpression()), !dbg !2684
  %2 = load i8, ptr %add.ptr35, align 1, !dbg !2716, !tbaa !652
  call void @llvm.dbg.value(metadata i8 %2, metadata !2649, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata ptr %add.ptr35, metadata !2651, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2684
  switch i8 %2, label %if.then44 [
    i8 39, label %if.end46
    i8 34, label %if.end46
  ], !dbg !2717

if.then44:                                        ; preds = %if.then25
  %call45 = tail call ptr @strchr(ptr noundef nonnull %add.ptr31, i32 noundef 62) #21, !dbg !2719
  call void @llvm.dbg.value(metadata ptr %call45, metadata !2642, metadata !DIExpression()), !dbg !2684
  br label %for.cond.outer601, !dbg !2721, !llvm.loop !2722

if.end46:                                         ; preds = %if.then25, %if.then25
  %add.ptr35.le = getelementptr inbounds i8, ptr %add.ptr34, i64 1, !dbg !2715
  %incdec.ptr36.le = getelementptr inbounds i8, ptr %add.ptr35.le, i64 %call33, !dbg !2724
  %conv37.le697 = zext i8 %2 to i32, !dbg !2725
  %3 = load i8, ptr %add.ptr27, align 1, !dbg !2726, !tbaa !652
  %cmp48 = icmp eq i8 %3, 37, !dbg !2727
  br i1 %cmp48, label %cond.end, label %cond.false, !dbg !2728

cond.false:                                       ; preds = %if.end46
  %4 = load ptr, ptr %entities349, align 8, !dbg !2729, !tbaa !910
  br label %cond.end, !dbg !2728

cond.end:                                         ; preds = %if.end46, %cond.false
  %cond = phi ptr [ %4, %cond.false ], [ %predefined_entitites.0.ph, %if.end46 ], !dbg !2728
  call void @llvm.dbg.value(metadata ptr %cond, metadata !2646, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i64 0, metadata !2652, metadata !DIExpression()), !dbg !2684
  br label %for.cond51, !dbg !2730

for.cond51:                                       ; preds = %for.cond51, %cond.end
  %i.0 = phi i64 [ 0, %cond.end ], [ %inc, %for.cond51 ], !dbg !2732
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !2652, metadata !DIExpression()), !dbg !2684
  %arrayidx52 = getelementptr inbounds ptr, ptr %cond, i64 %i.0, !dbg !2733
  %5 = load ptr, ptr %arrayidx52, align 8, !dbg !2733, !tbaa !312
  %cmp53.not = icmp eq ptr %5, null, !dbg !2735
  %inc = add nuw nsw i64 %i.0, 1, !dbg !2736
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2652, metadata !DIExpression()), !dbg !2684
  br i1 %cmp53.not, label %for.end, label %for.cond51, !dbg !2737, !llvm.loop !2738

for.end:                                          ; preds = %for.cond51
  %add56 = add nuw nsw i64 %i.0, 3, !dbg !2740
  %call57 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %cond, i64 noundef %add56, i64 noundef 8) #23, !dbg !2741
  call void @llvm.dbg.value(metadata ptr %call57, metadata !2646, metadata !DIExpression()), !dbg !2684
  %cmp58 = icmp eq ptr %call57, null, !dbg !2742
  br i1 %cmp58, label %if.then60, label %if.end68, !dbg !2743

if.then60:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception62) #20, !dbg !2744
  call void @llvm.dbg.declare(metadata ptr %exception62, metadata !2666, metadata !DIExpression()), !dbg !2744
  call void @GetExceptionInfo(ptr noundef nonnull %exception62) #20, !dbg !2744
  %call63 = tail call ptr @__errno_location() #24, !dbg !2744
  %6 = load i32, ptr %call63, align 4, !dbg !2744, !tbaa !1205
  %call64 = call ptr @GetExceptionMessage(i32 noundef %6) #20, !dbg !2744
  call void @llvm.dbg.value(metadata ptr %call64, metadata !2658, metadata !DIExpression()), !dbg !2745
  %call65 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception62, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1752, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %call64) #20, !dbg !2744
  %call66 = call ptr @DestroyString(ptr noundef %call64) #20, !dbg !2744
  call void @llvm.dbg.value(metadata ptr %call66, metadata !2658, metadata !DIExpression()), !dbg !2745
  call void @CatchException(ptr noundef nonnull %exception62) #20, !dbg !2744
  %call67 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception62) #20, !dbg !2744
  call void @MagickCoreTerminus() #20, !dbg !2744
  call void @_exit(i32 noundef 1) #25, !dbg !2744
  unreachable, !dbg !2744

if.end68:                                         ; preds = %for.end
  %7 = load i8, ptr %add.ptr27, align 1, !dbg !2746, !tbaa !652
  %cmp70 = icmp eq i8 %7, 37, !dbg !2748
  br i1 %cmp70, label %if.end74, label %if.else, !dbg !2749

if.else:                                          ; preds = %if.end68
  store ptr %call57, ptr %entities349, align 8, !dbg !2750, !tbaa !910
  br label %if.end74

if.end74:                                         ; preds = %if.end68, %if.else
  %predefined_entitites.1 = phi ptr [ %predefined_entitites.0.ph, %if.else ], [ %call57, %if.end68 ], !dbg !2684
  call void @llvm.dbg.value(metadata ptr %predefined_entitites.1, metadata !2648, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata ptr %add.ptr32, metadata !2642, metadata !DIExpression()), !dbg !2684
  store i8 0, ptr %add.ptr32, align 1, !dbg !2751, !tbaa !652
  %call77 = tail call ptr @strchr(ptr noundef nonnull %incdec.ptr36.le, i32 noundef %conv37.le697) #21, !dbg !2752
  call void @llvm.dbg.value(metadata ptr %call77, metadata !2642, metadata !DIExpression()), !dbg !2684
  %cmp78.not = icmp eq ptr %call77, null, !dbg !2753
  br i1 %cmp78.not, label %if.end82, label %if.then80, !dbg !2755

if.then80:                                        ; preds = %if.end74
  store i8 0, ptr %call77, align 1, !dbg !2756, !tbaa !652
  %incdec.ptr81 = getelementptr inbounds i8, ptr %call77, i64 1, !dbg !2758
  call void @llvm.dbg.value(metadata ptr %incdec.ptr81, metadata !2642, metadata !DIExpression()), !dbg !2684
  br label %if.end82, !dbg !2759

if.end82:                                         ; preds = %if.then80, %if.end74
  %xml.addr.2 = phi ptr [ %incdec.ptr81, %if.then80 ], [ null, %if.end74 ], !dbg !2760
  call void @llvm.dbg.value(metadata ptr %xml.addr.2, metadata !2642, metadata !DIExpression()), !dbg !2684
  %call83 = tail call fastcc ptr @ParseEntities(ptr noundef nonnull %incdec.ptr36.le, ptr noundef %predefined_entitites.1, i32 noundef 37), !dbg !2761
  %arrayidx85 = getelementptr inbounds ptr, ptr %call57, i64 %inc, !dbg !2762
  store ptr %call83, ptr %arrayidx85, align 8, !dbg !2763, !tbaa !312
  %add86 = add nuw nsw i64 %i.0, 2, !dbg !2764
  %arrayidx87 = getelementptr inbounds ptr, ptr %call57, i64 %add86, !dbg !2765
  store ptr null, ptr %arrayidx87, align 8, !dbg !2766, !tbaa !312
  %call90 = tail call fastcc i32 @ValidateEntities(ptr noundef nonnull %add.ptr29, ptr noundef %call83, ptr noundef nonnull %call57), !dbg !2767
  %cmp91.not = icmp eq i32 %call90, 0, !dbg !2769
  br i1 %cmp91.not, label %if.else95, label %if.then93, !dbg !2770

if.then93:                                        ; preds = %if.end82
  %arrayidx94 = getelementptr inbounds ptr, ptr %call57, i64 %i.0, !dbg !2771
  store ptr %add.ptr29, ptr %arrayidx94, align 8, !dbg !2772, !tbaa !312
  br label %for.cond.outer.backedge, !dbg !2773

if.else95:                                        ; preds = %if.end82
  %cmp98.not = icmp eq ptr %call83, %incdec.ptr36.le, !dbg !2774
  br i1 %cmp98.not, label %if.end106, label %if.then100, !dbg !2777

if.then100:                                       ; preds = %if.else95
  %arrayidx85.le = getelementptr inbounds ptr, ptr %call57, i64 %inc, !dbg !2762
  %call103 = tail call ptr @DestroyString(ptr noundef %call83) #20, !dbg !2778
  store ptr %call103, ptr %arrayidx85.le, align 8, !dbg !2779, !tbaa !312
  br label %if.end106, !dbg !2780

if.end106:                                        ; preds = %if.then100, %if.else95
  %call107 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1773, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.55, ptr noundef nonnull %add.ptr29) #20, !dbg !2781
  call void @llvm.dbg.value(metadata ptr undef, metadata !2648, metadata !DIExpression()), !dbg !2684
  br label %cleanup, !dbg !2782

if.else110:                                       ; preds = %if.end21
  %call111 = tail call i32 @strncmp(ptr noundef nonnull %xml.addr.1, ptr noundef nonnull dereferenceable(10) @.str.56, i64 noundef 9) #21, !dbg !2783
  %cmp112 = icmp eq i32 %call111, 0, !dbg !2784
  br i1 %cmp112, label %if.then114, label %if.else362, !dbg !2785

if.then114:                                       ; preds = %if.else110
  %add.ptr115 = getelementptr inbounds i8, ptr %xml.addr.1, i64 9, !dbg !2786
  %call116 = tail call i64 @strspn(ptr noundef nonnull %add.ptr115, ptr noundef nonnull @.str.24) #21, !dbg !2787
  %add.ptr117 = getelementptr inbounds i8, ptr %xml.addr.1, i64 9, !dbg !2788
  %add.ptr118 = getelementptr inbounds i8, ptr %add.ptr117, i64 %call116, !dbg !2789
  call void @llvm.dbg.value(metadata ptr %add.ptr118, metadata !2650, metadata !DIExpression()), !dbg !2684
  %8 = load i8, ptr %add.ptr118, align 1, !dbg !2790, !tbaa !652
  %cmp120 = icmp eq i8 %8, 0, !dbg !2792
  br i1 %cmp120, label %if.then122, label %if.end125, !dbg !2793

if.then122:                                       ; preds = %if.then114
  %call123 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1789, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.57) #20, !dbg !2794
  call void @llvm.dbg.value(metadata ptr undef, metadata !2648, metadata !DIExpression()), !dbg !2684
  br label %cleanup, !dbg !2796

if.end125:                                        ; preds = %if.then114
  %call126 = tail call i64 @strcspn(ptr noundef nonnull %add.ptr118, ptr noundef nonnull @.str.23) #21, !dbg !2797
  %add.ptr127 = getelementptr inbounds i8, ptr %add.ptr118, i64 %call126, !dbg !2798
  call void @llvm.dbg.value(metadata ptr %add.ptr127, metadata !2642, metadata !DIExpression()), !dbg !2684
  %9 = load i8, ptr %add.ptr127, align 1, !dbg !2799, !tbaa !652
  %cmp129 = icmp eq i8 %9, 62, !dbg !2801
  br i1 %cmp129, label %for.cond, label %if.end132, !dbg !2802, !llvm.loop !2722

if.end132:                                        ; preds = %if.end125
  store i8 0, ptr %add.ptr127, align 1, !dbg !2803, !tbaa !652
  call void @llvm.dbg.value(metadata i64 0, metadata !2652, metadata !DIExpression()), !dbg !2684
  %10 = load ptr, ptr %attributes, align 8, !tbaa !929
  %cmp138 = icmp ne ptr %n.0.ph602, null
  call void @llvm.dbg.value(metadata i64 0, metadata !2652, metadata !DIExpression()), !dbg !2684
  %11 = load ptr, ptr %10, align 8, !dbg !2804, !tbaa !312
  %cmp135648 = icmp ne ptr %11, null, !dbg !2805
  %or.cond413649 = select i1 %cmp135648, i1 %cmp138, i1 false, !dbg !2806
  br i1 %or.cond413649, label %land.rhs140, label %while.end150, !dbg !2806

land.rhs140:                                      ; preds = %if.end132, %while.body148
  %12 = phi ptr [ %14, %while.body148 ], [ %11, %if.end132 ]
  %i.1650 = phi i64 [ %inc149, %while.body148 ], [ 0, %if.end132 ]
  call void @llvm.dbg.value(metadata i64 %i.1650, metadata !2652, metadata !DIExpression()), !dbg !2684
  %13 = load ptr, ptr %12, align 8, !dbg !2807, !tbaa !312
  %call144 = tail call i32 @strcmp(ptr noundef nonnull %n.0.ph602, ptr noundef nonnull dereferenceable(1) %13) #21, !dbg !2808
  %cmp145.not = icmp eq i32 %call144, 0, !dbg !2809
  br i1 %cmp145.not, label %while.end150, label %while.body148, !dbg !2810

while.body148:                                    ; preds = %land.rhs140
  %inc149 = add nuw nsw i64 %i.1650, 1, !dbg !2811
  call void @llvm.dbg.value(metadata i64 %inc149, metadata !2652, metadata !DIExpression()), !dbg !2684
  %arrayidx134 = getelementptr inbounds ptr, ptr %10, i64 %inc149, !dbg !2804
  %14 = load ptr, ptr %arrayidx134, align 8, !dbg !2804, !tbaa !312
  %cmp135.not = icmp eq ptr %14, null, !dbg !2805
  br i1 %cmp135.not, label %while.end150, label %land.rhs140, !dbg !2806, !llvm.loop !2812

while.end150:                                     ; preds = %land.rhs140, %while.body148, %if.end132
  %i.1.lcssa = phi i64 [ 0, %if.end132 ], [ %inc149, %while.body148 ], [ %i.1650, %land.rhs140 ], !dbg !2813
  %cmp254 = icmp eq i64 %i.1.lcssa, 0
  %add261 = add nuw nsw i64 %i.1.lcssa, 2
  %add301 = add nuw nsw i64 %i.1.lcssa, 1
  br label %while.cond151, !dbg !2814

while.cond151:                                    ; preds = %while.cond151.backedge, %while.end150
  %xml.addr.3 = phi ptr [ %add.ptr127, %while.end150 ], [ %xml.addr.3.be, %while.cond151.backedge ], !dbg !2813
  call void @llvm.dbg.value(metadata ptr %xml.addr.3, metadata !2642, metadata !DIExpression()), !dbg !2684
  %add.ptr152 = getelementptr inbounds i8, ptr %xml.addr.3, i64 1, !dbg !2815
  %call153 = tail call i64 @strspn(ptr noundef nonnull %add.ptr152, ptr noundef nonnull @.str.24) #21, !dbg !2816
  %add.ptr154 = getelementptr inbounds i8, ptr %xml.addr.3, i64 1, !dbg !2817
  %add.ptr155 = getelementptr inbounds i8, ptr %add.ptr154, i64 %call153, !dbg !2818
  call void @llvm.dbg.value(metadata ptr %add.ptr155, metadata !2647, metadata !DIExpression()), !dbg !2684
  %15 = load i8, ptr %add.ptr155, align 1, !dbg !2819, !tbaa !652
  switch i8 %15, label %while.body164 [
    i8 0, label %for.cond.outer.backedge
    i8 62, label %for.cond.outer.backedge
  ], !dbg !2820, !llvm.loop !2722

while.body164:                                    ; preds = %while.cond151
  %call165 = tail call i64 @strcspn(ptr noundef nonnull %add.ptr155, ptr noundef nonnull @.str.24) #21, !dbg !2821
  %add.ptr166 = getelementptr inbounds i8, ptr %add.ptr155, i64 %call165, !dbg !2822
  call void @llvm.dbg.value(metadata ptr %add.ptr166, metadata !2642, metadata !DIExpression()), !dbg !2684
  %16 = load i8, ptr %add.ptr166, align 1, !dbg !2823, !tbaa !652
  %cmp168.not = icmp eq i8 %16, 0, !dbg !2825
  br i1 %cmp168.not, label %if.else171, label %if.then170, !dbg !2826

if.then170:                                       ; preds = %while.body164
  store i8 0, ptr %add.ptr166, align 1, !dbg !2827, !tbaa !652
  %add.ptr175 = getelementptr inbounds i8, ptr %add.ptr166, i64 1, !dbg !2828
  %call176 = tail call i64 @strspn(ptr noundef nonnull %add.ptr175, ptr noundef nonnull @.str.24) #21, !dbg !2829
  %add177 = add i64 %call176, 1, !dbg !2830
  %add.ptr178 = getelementptr inbounds i8, ptr %add.ptr166, i64 %add177, !dbg !2831
  call void @llvm.dbg.value(metadata ptr %add.ptr178, metadata !2642, metadata !DIExpression()), !dbg !2684
  %call179 = tail call i32 @strncmp(ptr noundef nonnull %add.ptr178, ptr noundef nonnull dereferenceable(6) @.str.59, i64 noundef 5) #21, !dbg !2832
  %cmp180.not = icmp eq i32 %call179, 0, !dbg !2833
  %cond182 = select i1 %cmp180.not, ptr @.str.49, ptr @.str.60, !dbg !2832
  call void @llvm.dbg.value(metadata ptr %cond182, metadata !2645, metadata !DIExpression()), !dbg !2684
  %call183 = tail call i32 @strncmp(ptr noundef nonnull %add.ptr178, ptr noundef nonnull dereferenceable(9) @.str.61, i64 noundef 8) #21, !dbg !2834
  %cmp184 = icmp eq i32 %call183, 0, !dbg !2836
  br i1 %cmp184, label %if.then186, label %if.end191, !dbg !2837

if.else171:                                       ; preds = %while.body164
  %call172 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1812, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.58) #20, !dbg !2838
  call void @llvm.dbg.value(metadata ptr undef, metadata !2648, metadata !DIExpression()), !dbg !2684
  br label %cleanup, !dbg !2840

if.then186:                                       ; preds = %if.then170
  %add.ptr187 = getelementptr inbounds i8, ptr %add.ptr178, i64 8, !dbg !2841
  %call188 = tail call i64 @strspn(ptr noundef nonnull %add.ptr187, ptr noundef nonnull @.str.24) #21, !dbg !2842
  %add189 = add i64 %call188, 8, !dbg !2843
  %add.ptr190 = getelementptr inbounds i8, ptr %add.ptr178, i64 %add189, !dbg !2844
  call void @llvm.dbg.value(metadata ptr %add.ptr190, metadata !2642, metadata !DIExpression()), !dbg !2684
  br label %if.end191, !dbg !2845

if.end191:                                        ; preds = %if.then186, %if.then170
  %xml.addr.4 = phi ptr [ %add.ptr190, %if.then186 ], [ %add.ptr178, %if.then170 ], !dbg !2846
  call void @llvm.dbg.value(metadata ptr %xml.addr.4, metadata !2642, metadata !DIExpression()), !dbg !2684
  %17 = load i8, ptr %xml.addr.4, align 1, !dbg !2847, !tbaa !652
  %cmp193 = icmp eq i8 %17, 40, !dbg !2848
  br i1 %cmp193, label %cond.true195, label %cond.false197, !dbg !2849

cond.true195:                                     ; preds = %if.end191
  %call196 = tail call ptr @strchr(ptr noundef nonnull %xml.addr.4, i32 noundef 41) #21, !dbg !2850
  br label %cond.end200, !dbg !2849

cond.false197:                                    ; preds = %if.end191
  %call198 = tail call i64 @strcspn(ptr noundef nonnull %xml.addr.4, ptr noundef nonnull @.str.24) #21, !dbg !2851
  %add.ptr199 = getelementptr inbounds i8, ptr %xml.addr.4, i64 %call198, !dbg !2852
  br label %cond.end200, !dbg !2849

cond.end200:                                      ; preds = %cond.false197, %cond.true195
  %cond201 = phi ptr [ %call196, %cond.true195 ], [ %add.ptr199, %cond.false197 ], !dbg !2849
  call void @llvm.dbg.value(metadata ptr %cond201, metadata !2642, metadata !DIExpression()), !dbg !2684
  %cmp202 = icmp eq ptr %cond201, null, !dbg !2853
  br i1 %cmp202, label %if.then204, label %if.end207, !dbg !2855

if.then204:                                       ; preds = %cond.end200
  %call205 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1826, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.58) #20, !dbg !2856
  call void @llvm.dbg.value(metadata ptr undef, metadata !2648, metadata !DIExpression()), !dbg !2684
  br label %cleanup, !dbg !2858

if.end207:                                        ; preds = %cond.end200
  %call208 = tail call i64 @strspn(ptr noundef nonnull %cond201, ptr noundef nonnull @.str.62) #21, !dbg !2859
  %add.ptr209 = getelementptr inbounds i8, ptr %cond201, i64 %call208, !dbg !2860
  call void @llvm.dbg.value(metadata ptr %add.ptr209, metadata !2642, metadata !DIExpression()), !dbg !2684
  %call210 = tail call i32 @strncmp(ptr noundef nonnull %add.ptr209, ptr noundef nonnull dereferenceable(7) @.str.63, i64 noundef 6) #21, !dbg !2861
  %cmp211 = icmp eq i32 %call210, 0, !dbg !2863
  br i1 %cmp211, label %if.then213, label %if.end218, !dbg !2864

if.then213:                                       ; preds = %if.end207
  %add.ptr214 = getelementptr inbounds i8, ptr %add.ptr209, i64 6, !dbg !2865
  %call215 = tail call i64 @strspn(ptr noundef nonnull %add.ptr214, ptr noundef nonnull @.str.24) #21, !dbg !2866
  %add216 = add i64 %call215, 6, !dbg !2867
  %add.ptr217 = getelementptr inbounds i8, ptr %add.ptr209, i64 %add216, !dbg !2868
  call void @llvm.dbg.value(metadata ptr %add.ptr217, metadata !2642, metadata !DIExpression()), !dbg !2684
  br label %if.end218, !dbg !2869

if.end218:                                        ; preds = %if.then213, %if.end207
  %xml.addr.5 = phi ptr [ %add.ptr217, %if.then213 ], [ %add.ptr209, %if.end207 ], !dbg !2846
  call void @llvm.dbg.value(metadata ptr %xml.addr.5, metadata !2642, metadata !DIExpression()), !dbg !2684
  %18 = load i8, ptr %xml.addr.5, align 1, !dbg !2870, !tbaa !652
  switch i8 %18, label %if.else244 [
    i8 35, label %if.then222
    i8 34, label %land.lhs.true237
    i8 39, label %land.lhs.true237
  ], !dbg !2872

if.then222:                                       ; preds = %if.end218
  %call223 = tail call i64 @strcspn(ptr noundef nonnull %xml.addr.5, ptr noundef nonnull @.str.23) #21, !dbg !2873
  %sub = add i64 %call223, -1, !dbg !2875
  %add.ptr224 = getelementptr inbounds i8, ptr %xml.addr.5, i64 %sub, !dbg !2876
  call void @llvm.dbg.value(metadata ptr %add.ptr224, metadata !2642, metadata !DIExpression()), !dbg !2684
  %19 = load i8, ptr %cond182, align 1, !dbg !2877, !tbaa !652
  %cmp226 = icmp eq i8 %19, 32, !dbg !2879
  br i1 %cmp226, label %while.cond151.backedge, label %if.end248, !dbg !2880

land.lhs.true237:                                 ; preds = %if.end218, %if.end218
  %add.ptr238 = getelementptr inbounds i8, ptr %xml.addr.5, i64 1, !dbg !2881
  call void @llvm.dbg.value(metadata ptr %add.ptr238, metadata !2651, metadata !DIExpression()), !dbg !2684
  %conv239599 = zext i8 %18 to i32, !dbg !2883
  %call240 = tail call ptr @strchr(ptr noundef nonnull %add.ptr238, i32 noundef %conv239599) #21, !dbg !2884
  call void @llvm.dbg.value(metadata ptr %call240, metadata !2642, metadata !DIExpression()), !dbg !2684
  %cmp241.not = icmp eq ptr %call240, null, !dbg !2885
  br i1 %cmp241.not, label %if.else244, label %if.then243, !dbg !2886

if.then243:                                       ; preds = %land.lhs.true237
  store i8 0, ptr %call240, align 1, !dbg !2887, !tbaa !652
  br label %if.end248

if.else244:                                       ; preds = %if.end218, %land.lhs.true237
  %call245 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1848, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.58) #20, !dbg !2888
  call void @llvm.dbg.value(metadata ptr undef, metadata !2648, metadata !DIExpression()), !dbg !2684
  br label %cleanup, !dbg !2890

if.end248:                                        ; preds = %if.then222, %if.then243
  %v.0 = phi ptr [ %add.ptr238, %if.then243 ], [ null, %if.then222 ], !dbg !2891
  %xml.addr.6 = phi ptr [ %call240, %if.then243 ], [ %add.ptr224, %if.then222 ], !dbg !2891
  call void @llvm.dbg.value(metadata ptr %xml.addr.6, metadata !2642, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata ptr %v.0, metadata !2651, metadata !DIExpression()), !dbg !2684
  %20 = load ptr, ptr %attributes, align 8, !dbg !2892, !tbaa !929
  %arrayidx250 = getelementptr inbounds ptr, ptr %20, i64 %i.1.lcssa, !dbg !2893
  %21 = load ptr, ptr %arrayidx250, align 8, !dbg !2893, !tbaa !312
  %cmp251 = icmp eq ptr %21, null, !dbg !2894
  br i1 %cmp251, label %if.then253, label %if.end303, !dbg !2895

if.then253:                                       ; preds = %if.end248
  br i1 %cmp254, label %if.then256, label %if.else259, !dbg !2896

if.then256:                                       ; preds = %if.then253
  %call257 = tail call ptr @AcquireQuantumMemory(i64 noundef 2, i64 noundef 8) #22, !dbg !2897
  br label %if.end264, !dbg !2899

if.else259:                                       ; preds = %if.then253
  %call262 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %20, i64 noundef %add261, i64 noundef 8) #23, !dbg !2900
  br label %if.end264

if.end264:                                        ; preds = %if.else259, %if.then256
  %storemerge = phi ptr [ %call262, %if.else259 ], [ %call257, %if.then256 ], !dbg !2901
  store ptr %storemerge, ptr %attributes, align 8, !dbg !2901, !tbaa !929
  %cmp266 = icmp eq ptr %storemerge, null, !dbg !2902
  br i1 %cmp266, label %if.then268, label %if.end276, !dbg !2903

if.then268:                                       ; preds = %if.end264
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception270) #20, !dbg !2904
  call void @llvm.dbg.declare(metadata ptr %exception270, metadata !2675, metadata !DIExpression()), !dbg !2904
  call void @GetExceptionInfo(ptr noundef nonnull %exception270) #20, !dbg !2904
  %call271 = tail call ptr @__errno_location() #24, !dbg !2904
  %22 = load i32, ptr %call271, align 4, !dbg !2904, !tbaa !1205
  %call272 = call ptr @GetExceptionMessage(i32 noundef %22) #20, !dbg !2904
  call void @llvm.dbg.value(metadata ptr %call272, metadata !2667, metadata !DIExpression()), !dbg !2905
  %call273 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception270, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1868, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %call272) #20, !dbg !2904
  %call274 = call ptr @DestroyString(ptr noundef %call272) #20, !dbg !2904
  call void @llvm.dbg.value(metadata ptr %call274, metadata !2667, metadata !DIExpression()), !dbg !2905
  call void @CatchException(ptr noundef nonnull %exception270) #20, !dbg !2904
  %call275 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception270) #20, !dbg !2904
  call void @MagickCoreTerminus() #20, !dbg !2904
  call void @_exit(i32 noundef 1) #25, !dbg !2904
  unreachable, !dbg !2904

if.end276:                                        ; preds = %if.end264
  %call277 = tail call ptr @AcquireQuantumMemory(i64 noundef 2, i64 noundef 8) #22, !dbg !2906
  %23 = load ptr, ptr %attributes, align 8, !dbg !2907, !tbaa !929
  %arrayidx279 = getelementptr inbounds ptr, ptr %23, i64 %i.1.lcssa, !dbg !2908
  store ptr %call277, ptr %arrayidx279, align 8, !dbg !2909, !tbaa !312
  %24 = load ptr, ptr %attributes, align 8, !dbg !2910, !tbaa !929
  %arrayidx281 = getelementptr inbounds ptr, ptr %24, i64 %i.1.lcssa, !dbg !2911
  %25 = load ptr, ptr %arrayidx281, align 8, !dbg !2911, !tbaa !312
  %cmp282 = icmp eq ptr %25, null, !dbg !2912
  br i1 %cmp282, label %if.then284, label %if.end292, !dbg !2913

if.then284:                                       ; preds = %if.end276
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception286) #20, !dbg !2914
  call void @llvm.dbg.declare(metadata ptr %exception286, metadata !2679, metadata !DIExpression()), !dbg !2914
  call void @GetExceptionInfo(ptr noundef nonnull %exception286) #20, !dbg !2914
  %call287 = tail call ptr @__errno_location() #24, !dbg !2914
  %26 = load i32, ptr %call287, align 4, !dbg !2914, !tbaa !1205
  %call288 = call ptr @GetExceptionMessage(i32 noundef %26) #20, !dbg !2914
  call void @llvm.dbg.value(metadata ptr %call288, metadata !2676, metadata !DIExpression()), !dbg !2915
  %call289 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception286, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1873, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %call288) #20, !dbg !2914
  %call290 = call ptr @DestroyString(ptr noundef %call288) #20, !dbg !2914
  call void @llvm.dbg.value(metadata ptr %call290, metadata !2676, metadata !DIExpression()), !dbg !2915
  call void @CatchException(ptr noundef nonnull %exception286) #20, !dbg !2914
  %call291 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception286) #20, !dbg !2914
  call void @MagickCoreTerminus() #20, !dbg !2914
  call void @_exit(i32 noundef 1) #25, !dbg !2914
  unreachable, !dbg !2914

if.end292:                                        ; preds = %if.end276
  %call293 = tail call ptr @ConstantString(ptr noundef nonnull %add.ptr118) #20, !dbg !2916
  %27 = load ptr, ptr %attributes, align 8, !dbg !2917, !tbaa !929
  %arrayidx295 = getelementptr inbounds ptr, ptr %27, i64 %i.1.lcssa, !dbg !2918
  %28 = load ptr, ptr %arrayidx295, align 8, !dbg !2918, !tbaa !312
  store ptr %call293, ptr %28, align 8, !dbg !2919, !tbaa !312
  %29 = load ptr, ptr %attributes, align 8, !dbg !2920, !tbaa !929
  %arrayidx298 = getelementptr inbounds ptr, ptr %29, i64 %i.1.lcssa, !dbg !2921
  %30 = load ptr, ptr %arrayidx298, align 8, !dbg !2921, !tbaa !312
  %arrayidx299 = getelementptr inbounds ptr, ptr %30, i64 1, !dbg !2921
  store ptr null, ptr %arrayidx299, align 8, !dbg !2922, !tbaa !312
  %31 = load ptr, ptr %attributes, align 8, !dbg !2923, !tbaa !929
  %arrayidx302 = getelementptr inbounds ptr, ptr %31, i64 %add301, !dbg !2924
  store ptr null, ptr %arrayidx302, align 8, !dbg !2925, !tbaa !312
  %.pre = load ptr, ptr %attributes, align 8, !tbaa !929
  %arrayidx306.phi.trans.insert = getelementptr inbounds ptr, ptr %.pre, i64 %i.1.lcssa
  %.pre696 = load ptr, ptr %arrayidx306.phi.trans.insert, align 8, !tbaa !312
  br label %if.end303, !dbg !2926

if.end303:                                        ; preds = %if.end292, %if.end248
  %32 = phi ptr [ %.pre696, %if.end292 ], [ %21, %if.end248 ]
  call void @llvm.dbg.value(metadata i64 1, metadata !2653, metadata !DIExpression()), !dbg !2684
  br label %for.cond304, !dbg !2927

for.cond304:                                      ; preds = %for.cond304, %if.end303
  %j.0 = phi i64 [ 1, %if.end303 ], [ %add312, %for.cond304 ], !dbg !2929
  call void @llvm.dbg.value(metadata i64 %j.0, metadata !2653, metadata !DIExpression()), !dbg !2684
  %arrayidx307 = getelementptr inbounds ptr, ptr %32, i64 %j.0, !dbg !2930
  %33 = load ptr, ptr %arrayidx307, align 8, !dbg !2930, !tbaa !312
  %cmp308.not = icmp eq ptr %33, null, !dbg !2932
  %add312 = add nuw nsw i64 %j.0, 3, !dbg !2933
  call void @llvm.dbg.value(metadata i64 %add312, metadata !2653, metadata !DIExpression()), !dbg !2684
  br i1 %cmp308.not, label %for.end313, label %for.cond304, !dbg !2934, !llvm.loop !2935

for.end313:                                       ; preds = %for.cond304
  %add316 = add nuw nsw i64 %j.0, 4, !dbg !2937
  %call317 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %32, i64 noundef %add316, i64 noundef 8) #23, !dbg !2938
  %34 = load ptr, ptr %attributes, align 8, !dbg !2939, !tbaa !929
  %arrayidx319 = getelementptr inbounds ptr, ptr %34, i64 %i.1.lcssa, !dbg !2940
  store ptr %call317, ptr %arrayidx319, align 8, !dbg !2941, !tbaa !312
  %35 = load ptr, ptr %attributes, align 8, !dbg !2942, !tbaa !929
  %arrayidx321 = getelementptr inbounds ptr, ptr %35, i64 %i.1.lcssa, !dbg !2943
  %36 = load ptr, ptr %arrayidx321, align 8, !dbg !2943, !tbaa !312
  %cmp322 = icmp eq ptr %36, null, !dbg !2944
  br i1 %cmp322, label %if.then324, label %if.end332, !dbg !2945

if.then324:                                       ; preds = %for.end313
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception326) #20, !dbg !2946
  call void @llvm.dbg.declare(metadata ptr %exception326, metadata !2683, metadata !DIExpression()), !dbg !2946
  call void @GetExceptionInfo(ptr noundef nonnull %exception326) #20, !dbg !2946
  %call327 = tail call ptr @__errno_location() #24, !dbg !2946
  %37 = load i32, ptr %call327, align 4, !dbg !2946, !tbaa !1205
  %call328 = call ptr @GetExceptionMessage(i32 noundef %37) #20, !dbg !2946
  call void @llvm.dbg.value(metadata ptr %call328, metadata !2680, metadata !DIExpression()), !dbg !2947
  %call329 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception326, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1883, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %call328) #20, !dbg !2946
  %call330 = call ptr @DestroyString(ptr noundef %call328) #20, !dbg !2946
  call void @llvm.dbg.value(metadata ptr %call330, metadata !2680, metadata !DIExpression()), !dbg !2947
  call void @CatchException(ptr noundef nonnull %exception326) #20, !dbg !2946
  %call331 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception326) #20, !dbg !2946
  call void @MagickCoreTerminus() #20, !dbg !2946
  call void @_exit(i32 noundef 1) #25, !dbg !2946
  unreachable, !dbg !2946

if.end332:                                        ; preds = %for.end313
  %arrayidx336 = getelementptr inbounds ptr, ptr %36, i64 %add312, !dbg !2948
  store ptr null, ptr %arrayidx336, align 8, !dbg !2949, !tbaa !312
  %call337 = tail call ptr @ConstantString(ptr noundef nonnull %cond182) #20, !dbg !2950
  %38 = load ptr, ptr %attributes, align 8, !dbg !2951, !tbaa !929
  %arrayidx339 = getelementptr inbounds ptr, ptr %38, i64 %i.1.lcssa, !dbg !2952
  %39 = load ptr, ptr %arrayidx339, align 8, !dbg !2952, !tbaa !312
  %add340 = add nuw nsw i64 %j.0, 2, !dbg !2953
  %arrayidx341 = getelementptr inbounds ptr, ptr %39, i64 %add340, !dbg !2952
  store ptr %call337, ptr %arrayidx341, align 8, !dbg !2954, !tbaa !312
  %40 = load ptr, ptr %attributes, align 8, !dbg !2955, !tbaa !929
  %arrayidx343 = getelementptr inbounds ptr, ptr %40, i64 %i.1.lcssa, !dbg !2956
  %41 = load ptr, ptr %arrayidx343, align 8, !dbg !2956, !tbaa !312
  %add344 = add nuw nsw i64 %j.0, 1, !dbg !2957
  %arrayidx345 = getelementptr inbounds ptr, ptr %41, i64 %add344, !dbg !2956
  store ptr null, ptr %arrayidx345, align 8, !dbg !2958, !tbaa !312
  %cmp346.not = icmp eq ptr %v.0, null, !dbg !2959
  br i1 %cmp346.not, label %if.end356, label %if.then348, !dbg !2961

if.then348:                                       ; preds = %if.end332
  %42 = load ptr, ptr %entities349, align 8, !dbg !2962, !tbaa !910
  %43 = load i8, ptr %cond182, align 1, !dbg !2963, !tbaa !652
  %conv350 = sext i8 %43 to i32, !dbg !2963
  %call351 = tail call fastcc ptr @ParseEntities(ptr noundef nonnull %v.0, ptr noundef %42, i32 noundef %conv350), !dbg !2964
  %44 = load ptr, ptr %attributes, align 8, !dbg !2965, !tbaa !929
  %arrayidx353 = getelementptr inbounds ptr, ptr %44, i64 %i.1.lcssa, !dbg !2966
  %45 = load ptr, ptr %arrayidx353, align 8, !dbg !2966, !tbaa !312
  %arrayidx355 = getelementptr inbounds ptr, ptr %45, i64 %add344, !dbg !2966
  store ptr %call351, ptr %arrayidx355, align 8, !dbg !2967, !tbaa !312
  br label %if.end356, !dbg !2966

if.end356:                                        ; preds = %if.then348, %if.end332
  %call357 = tail call ptr @ConstantString(ptr noundef nonnull %add.ptr155) #20, !dbg !2968
  %46 = load ptr, ptr %attributes, align 8, !dbg !2969, !tbaa !929
  %arrayidx359 = getelementptr inbounds ptr, ptr %46, i64 %i.1.lcssa, !dbg !2970
  %47 = load ptr, ptr %arrayidx359, align 8, !dbg !2970, !tbaa !312
  %arrayidx360 = getelementptr inbounds ptr, ptr %47, i64 %j.0, !dbg !2970
  store ptr %call357, ptr %arrayidx360, align 8, !dbg !2971, !tbaa !312
  br label %while.cond151.backedge, !dbg !2814

while.cond151.backedge:                           ; preds = %if.end356, %if.then222
  %xml.addr.3.be = phi ptr [ %add.ptr224, %if.then222 ], [ %xml.addr.6, %if.end356 ]
  br label %while.cond151, !dbg !2684, !llvm.loop !2972

if.else362:                                       ; preds = %if.else110
  %call363 = tail call i32 @strncmp(ptr noundef nonnull %xml.addr.1, ptr noundef nonnull dereferenceable(5) @.str.64, i64 noundef 4) #21, !dbg !2974
  %cmp364 = icmp eq i32 %call363, 0, !dbg !2976
  br i1 %cmp364, label %if.then366, label %if.else369, !dbg !2977

if.then366:                                       ; preds = %if.else362
  %add.ptr367 = getelementptr inbounds i8, ptr %xml.addr.1, i64 4, !dbg !2978
  %call368 = tail call ptr @strstr(ptr noundef nonnull %add.ptr367, ptr noundef nonnull @.str.65) #21, !dbg !2979
  call void @llvm.dbg.value(metadata ptr %call368, metadata !2642, metadata !DIExpression()), !dbg !2684
  br label %for.cond.outer.backedge, !dbg !2980

if.else369:                                       ; preds = %if.else362
  %call370 = tail call i32 @strncmp(ptr noundef nonnull %xml.addr.1, ptr noundef nonnull dereferenceable(3) @.str.66, i64 noundef 2) #21, !dbg !2981
  %cmp371 = icmp eq i32 %call370, 0, !dbg !2983
  br i1 %cmp371, label %if.then373, label %if.else381, !dbg !2984

if.then373:                                       ; preds = %if.else369
  %add.ptr374 = getelementptr inbounds i8, ptr %xml.addr.1, i64 2, !dbg !2985
  call void @llvm.dbg.value(metadata ptr %add.ptr374, metadata !2645, metadata !DIExpression()), !dbg !2684
  %call375 = tail call ptr @strstr(ptr noundef nonnull %add.ptr374, ptr noundef nonnull @.str.67) #21, !dbg !2987
  call void @llvm.dbg.value(metadata ptr %call375, metadata !2642, metadata !DIExpression()), !dbg !2684
  %cmp376.not = icmp eq ptr %call375, null, !dbg !2988
  br i1 %cmp376.not, label %for.cond.outer.backedge, label %if.then378, !dbg !2990

if.then378:                                       ; preds = %if.then373
  %sub.ptr.lhs.cast = ptrtoint ptr %call375 to i64, !dbg !2991
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr374 to i64, !dbg !2991
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2991
  tail call fastcc void @ParseProcessingInstructions(ptr noundef %root, ptr noundef nonnull %add.ptr374, i64 noundef %sub.ptr.sub), !dbg !2993
  %incdec.ptr379 = getelementptr inbounds i8, ptr %call375, i64 1, !dbg !2994
  call void @llvm.dbg.value(metadata ptr %incdec.ptr379, metadata !2642, metadata !DIExpression()), !dbg !2684
  br label %for.cond.outer.backedge, !dbg !2995

for.cond.outer.backedge:                          ; preds = %while.cond151, %while.cond151, %if.then378, %if.then373, %if.else387, %land.lhs.true392, %if.then385, %if.then366, %if.then93
  %predefined_entitites.0.ph.be = phi ptr [ %predefined_entitites.1, %if.then93 ], [ %predefined_entitites.0.ph, %if.then366 ], [ %predefined_entitites.0.ph, %if.then378 ], [ %predefined_entitites.0.ph, %if.then373 ], [ %predefined_entitites.0.ph, %if.then385 ], [ %predefined_entitites.0.ph, %land.lhs.true392 ], [ %predefined_entitites.0.ph, %if.else387 ], [ %predefined_entitites.0.ph, %while.cond151 ], [ %predefined_entitites.0.ph, %while.cond151 ]
  %n.0.ph.be = phi ptr [ %add.ptr29, %if.then93 ], [ %n.0.ph602, %if.then366 ], [ %n.0.ph602, %if.then378 ], [ %n.0.ph602, %if.then373 ], [ %n.0.ph602, %if.then385 ], [ %n.0.ph602, %land.lhs.true392 ], [ %n.0.ph602, %if.else387 ], [ %add.ptr155, %while.cond151 ], [ %add.ptr155, %while.cond151 ]
  %xml.addr.0.ph.be = phi ptr [ %xml.addr.2, %if.then93 ], [ %call368, %if.then366 ], [ %incdec.ptr379, %if.then378 ], [ null, %if.then373 ], [ %call386, %if.then385 ], [ %incdec.ptr388, %land.lhs.true392 ], [ %incdec.ptr388, %if.else387 ], [ %xml.addr.3, %while.cond151 ], [ %xml.addr.3, %while.cond151 ]
  br label %for.cond.outer, !dbg !2693, !llvm.loop !2722

if.else381:                                       ; preds = %if.else369
  %cmp383 = icmp eq i8 %1, 60, !dbg !2996
  br i1 %cmp383, label %if.then385, label %if.else387, !dbg !2998

if.then385:                                       ; preds = %if.else381
  %call386 = tail call ptr @strchr(ptr noundef nonnull %xml.addr.1, i32 noundef 62) #21, !dbg !2999
  call void @llvm.dbg.value(metadata ptr %call386, metadata !2642, metadata !DIExpression()), !dbg !2684
  br label %for.cond.outer.backedge, !dbg !3000

if.else387:                                       ; preds = %if.else381
  %incdec.ptr388 = getelementptr inbounds i8, ptr %xml.addr.1, i64 1, !dbg !3001
  call void @llvm.dbg.value(metadata ptr %incdec.ptr388, metadata !2642, metadata !DIExpression()), !dbg !2684
  %cmp390 = icmp eq i8 %1, 37, !dbg !3003
  br i1 %cmp390, label %land.lhs.true392, label %for.cond.outer.backedge, !dbg !3004

land.lhs.true392:                                 ; preds = %if.else387
  %48 = load i32, ptr %standalone, align 8, !dbg !3005, !tbaa !3006
  %cmp393 = icmp eq i32 %48, 0, !dbg !3007
  br i1 %cmp393, label %cleanup, label %for.cond.outer.backedge, !dbg !3008

cleanup:                                          ; preds = %land.lhs.true392, %for.cond, %while.cond, %if.else244, %if.then204, %if.else171, %if.then122, %if.end106
  %predefined_entitites.0.ph738.sink = phi ptr [ %predefined_entitites.0.ph, %if.else244 ], [ %predefined_entitites.0.ph, %if.then204 ], [ %predefined_entitites.0.ph, %if.else171 ], [ %predefined_entitites.0.ph, %if.then122 ], [ %predefined_entitites.1, %if.end106 ], [ %predefined_entitites.0.ph, %while.cond ], [ %predefined_entitites.0.ph, %for.cond ], [ %predefined_entitites.0.ph, %land.lhs.true392 ]
  %retval.0 = phi i32 [ 0, %if.else244 ], [ 0, %if.then204 ], [ 0, %if.else171 ], [ 0, %if.then122 ], [ 0, %if.end106 ], [ 1, %while.cond ], [ 1, %for.cond ], [ 1, %land.lhs.true392 ], !dbg !2684
  %call403 = tail call ptr @RelinquishMagickMemory(ptr noundef %predefined_entitites.0.ph738.sink) #20, !dbg !2684
  ret i32 %retval.0, !dbg !3009
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ParseProcessingInstructions(ptr nocapture noundef %root, ptr noundef %xml, i64 noundef %length) unnamed_addr #0 !dbg !3010 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  %exception64 = alloca %struct._ExceptionInfo, align 8
  %exception80 = alloca %struct._ExceptionInfo, align 8
  %exception129 = alloca %struct._ExceptionInfo, align 8
  %exception154 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %root, metadata !3014, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata ptr %xml, metadata !3015, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %length, metadata !3016, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata ptr %xml, metadata !3017, metadata !DIExpression()), !dbg !3044
  %arrayidx = getelementptr inbounds i8, ptr %xml, i64 %length, !dbg !3045
  store i8 0, ptr %arrayidx, align 1, !dbg !3046, !tbaa !652
  %call = tail call i64 @strcspn(ptr noundef %xml, ptr noundef nonnull @.str.24) #21, !dbg !3047
  %add.ptr = getelementptr inbounds i8, ptr %xml, i64 %call, !dbg !3048
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !3015, metadata !DIExpression()), !dbg !3044
  %0 = load i8, ptr %add.ptr, align 1, !dbg !3049, !tbaa !652
  %cmp.not = icmp eq i8 %0, 0, !dbg !3051
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3052

if.then:                                          ; preds = %entry
  store i8 0, ptr %add.ptr, align 1, !dbg !3053, !tbaa !652
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 1, !dbg !3055
  %call3 = tail call i64 @strspn(ptr noundef nonnull %add.ptr2, ptr noundef nonnull @.str.24) #21, !dbg !3056
  %add = add i64 %call3, 1, !dbg !3057
  %add.ptr4 = getelementptr inbounds i8, ptr %add.ptr, i64 %add, !dbg !3058
  call void @llvm.dbg.value(metadata ptr %add.ptr4, metadata !3015, metadata !DIExpression()), !dbg !3044
  br label %if.end, !dbg !3059

if.end:                                           ; preds = %if.then, %entry
  %xml.addr.0 = phi ptr [ %add.ptr4, %if.then ], [ %add.ptr, %entry ], !dbg !3044
  call void @llvm.dbg.value(metadata ptr %xml.addr.0, metadata !3015, metadata !DIExpression()), !dbg !3044
  %call5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %xml, ptr noundef nonnull dereferenceable(4) @.str.68) #21, !dbg !3060
  %cmp6 = icmp eq i32 %call5, 0, !dbg !3062
  br i1 %cmp6, label %if.then8, label %if.end21, !dbg !3063

if.then8:                                         ; preds = %if.end
  %call9 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %xml.addr.0, ptr noundef nonnull @.str.69) #21, !dbg !3064
  call void @llvm.dbg.value(metadata ptr %call9, metadata !3015, metadata !DIExpression()), !dbg !3044
  %cmp10.not = icmp eq ptr %call9, null, !dbg !3066
  br i1 %cmp10.not, label %cleanup, label %land.lhs.true, !dbg !3068

land.lhs.true:                                    ; preds = %if.then8
  %add.ptr12 = getelementptr inbounds i8, ptr %call9, i64 10, !dbg !3069
  %call13 = tail call i64 @strspn(ptr noundef nonnull %add.ptr12, ptr noundef nonnull @.str.70) #21, !dbg !3070
  %add.ptr14 = getelementptr inbounds i8, ptr %call9, i64 %call13, !dbg !3071
  %add.ptr15 = getelementptr inbounds i8, ptr %add.ptr14, i64 10, !dbg !3072
  %call16 = tail call i32 @strncmp(ptr noundef nonnull %add.ptr15, ptr noundef nonnull dereferenceable(4) @.str.71, i64 noundef 3) #21, !dbg !3073
  %cmp17 = icmp eq i32 %call16, 0, !dbg !3074
  br i1 %cmp17, label %if.then19, label %cleanup, !dbg !3075

if.then19:                                        ; preds = %land.lhs.true
  %standalone = getelementptr inbounds %struct._XMLTreeRoot, ptr %root, i64 0, i32 2, !dbg !3076
  store i32 1, ptr %standalone, align 8, !dbg !3077, !tbaa !3006
  br label %cleanup, !dbg !3078

if.end21:                                         ; preds = %if.end
  %processing_instructions = getelementptr inbounds %struct._XMLTreeRoot, ptr %root, i64 0, i32 3, !dbg !3079
  %1 = load ptr, ptr %processing_instructions, align 8, !dbg !3079, !tbaa !981
  %2 = load ptr, ptr %1, align 8, !dbg !3080, !tbaa !312
  %cmp23 = icmp eq ptr %2, null, !dbg !3081
  br i1 %cmp23, label %if.then25, label %land.rhs.preheader, !dbg !3082

if.then25:                                        ; preds = %if.end21
  %call26 = tail call ptr @AcquireMagickMemory(i64 noundef 8) #19, !dbg !3083
  store ptr %call26, ptr %processing_instructions, align 8, !dbg !3084, !tbaa !981
  %cmp29 = icmp eq ptr %call26, null, !dbg !3085
  br i1 %cmp29, label %if.then31, label %if.end39, !dbg !3086

if.then31:                                        ; preds = %if.then25
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #20, !dbg !3087
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !3025, metadata !DIExpression()), !dbg !3087
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #20, !dbg !3087
  %call32 = tail call ptr @__errno_location() #24, !dbg !3087
  %3 = load i32, ptr %call32, align 4, !dbg !3087, !tbaa !1205
  %call33 = call ptr @GetExceptionMessage(i32 noundef %3) #20, !dbg !3087
  call void @llvm.dbg.value(metadata ptr %call33, metadata !3020, metadata !DIExpression()), !dbg !3088
  %call34 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1653, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %call33) #20, !dbg !3087
  %call35 = call ptr @DestroyString(ptr noundef %call33) #20, !dbg !3087
  call void @llvm.dbg.value(metadata ptr %call35, metadata !3020, metadata !DIExpression()), !dbg !3088
  call void @CatchException(ptr noundef nonnull %exception) #20, !dbg !3087
  %call36 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #20, !dbg !3087
  call void @MagickCoreTerminus() #20, !dbg !3087
  call void @_exit(i32 noundef 1) #25, !dbg !3087
  unreachable, !dbg !3087

if.end39:                                         ; preds = %if.then25
  store ptr null, ptr %call26, align 8, !dbg !3089, !tbaa !312
  %.pre = load ptr, ptr %processing_instructions, align 8, !tbaa !981
  %.pre271 = load ptr, ptr %.pre, align 8, !dbg !3090, !tbaa !312
  call void @llvm.dbg.value(metadata i64 0, metadata !3018, metadata !DIExpression()), !dbg !3044
  %cmp42.not267 = icmp eq ptr %.pre271, null, !dbg !3091
  br i1 %cmp42.not267, label %if.then54, label %land.rhs.preheader, !dbg !3092

land.rhs.preheader:                               ; preds = %if.end21, %if.end39
  %4 = phi ptr [ %.pre, %if.end39 ], [ %1, %if.end21 ]
  %5 = phi ptr [ %.pre271, %if.end39 ], [ %2, %if.end21 ]
  br label %land.rhs, !dbg !3093

land.rhs:                                         ; preds = %land.rhs.preheader, %while.body
  %6 = phi ptr [ %8, %while.body ], [ %5, %land.rhs.preheader ]
  %i.0268 = phi i64 [ %inc, %while.body ], [ 0, %land.rhs.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0268, metadata !3018, metadata !DIExpression()), !dbg !3044
  %7 = load ptr, ptr %6, align 8, !dbg !3094, !tbaa !312
  %call47 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %xml, ptr noundef nonnull dereferenceable(1) %7) #21, !dbg !3095
  %cmp48.not = icmp eq i32 %call47, 0, !dbg !3096
  br i1 %cmp48.not, label %if.end107, label %while.body, !dbg !3093

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i64 %i.0268, 1, !dbg !3097
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3018, metadata !DIExpression()), !dbg !3044
  %arrayidx41 = getelementptr inbounds ptr, ptr %4, i64 %inc, !dbg !3090
  %8 = load ptr, ptr %arrayidx41, align 8, !dbg !3090, !tbaa !312
  %cmp42.not = icmp eq ptr %8, null, !dbg !3091
  br i1 %cmp42.not, label %if.then54, label %land.rhs, !dbg !3092, !llvm.loop !3098

if.then54:                                        ; preds = %while.body, %if.end39
  %9 = phi ptr [ %.pre, %if.end39 ], [ %4, %while.body ]
  %i.0.lcssa = phi i64 [ 0, %if.end39 ], [ %inc, %while.body ], !dbg !3044
  %add56 = add nuw nsw i64 %i.0.lcssa, 2, !dbg !3099
  %call57 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %9, i64 noundef %add56, i64 noundef 8) #23, !dbg !3100
  store ptr %call57, ptr %processing_instructions, align 8, !dbg !3101, !tbaa !981
  %cmp60 = icmp eq ptr %call57, null, !dbg !3102
  br i1 %cmp60, label %if.then62, label %if.end70, !dbg !3103

if.then62:                                        ; preds = %if.then54
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception64) #20, !dbg !3104
  call void @llvm.dbg.declare(metadata ptr %exception64, metadata !3031, metadata !DIExpression()), !dbg !3104
  call void @GetExceptionInfo(ptr noundef nonnull %exception64) #20, !dbg !3104
  %call65 = tail call ptr @__errno_location() #24, !dbg !3104
  %10 = load i32, ptr %call65, align 4, !dbg !3104, !tbaa !1205
  %call66 = call ptr @GetExceptionMessage(i32 noundef %10) #20, !dbg !3104
  call void @llvm.dbg.value(metadata ptr %call66, metadata !3026, metadata !DIExpression()), !dbg !3105
  %call67 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception64, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1666, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %call66) #20, !dbg !3104
  %call68 = call ptr @DestroyString(ptr noundef %call66) #20, !dbg !3104
  call void @llvm.dbg.value(metadata ptr %call68, metadata !3026, metadata !DIExpression()), !dbg !3105
  call void @CatchException(ptr noundef nonnull %exception64) #20, !dbg !3104
  %call69 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception64) #20, !dbg !3104
  call void @MagickCoreTerminus() #20, !dbg !3104
  call void @_exit(i32 noundef 1) #25, !dbg !3104
  unreachable, !dbg !3104

if.end70:                                         ; preds = %if.then54
  %call71 = tail call ptr @AcquireQuantumMemory(i64 noundef 3, i64 noundef 8) #22, !dbg !3106
  %11 = load ptr, ptr %processing_instructions, align 8, !dbg !3107, !tbaa !981
  %arrayidx73 = getelementptr inbounds ptr, ptr %11, i64 %i.0.lcssa, !dbg !3108
  store ptr %call71, ptr %arrayidx73, align 8, !dbg !3109, !tbaa !312
  %12 = load ptr, ptr %processing_instructions, align 8, !dbg !3110, !tbaa !981
  %arrayidx75 = getelementptr inbounds ptr, ptr %12, i64 %i.0.lcssa, !dbg !3111
  %13 = load ptr, ptr %arrayidx75, align 8, !dbg !3111, !tbaa !312
  %cmp76 = icmp eq ptr %13, null, !dbg !3112
  br i1 %cmp76, label %if.then78, label %if.end86, !dbg !3113

if.then78:                                        ; preds = %if.end70
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception80) #20, !dbg !3114
  call void @llvm.dbg.declare(metadata ptr %exception80, metadata !3035, metadata !DIExpression()), !dbg !3114
  call void @GetExceptionInfo(ptr noundef nonnull %exception80) #20, !dbg !3114
  %call81 = tail call ptr @__errno_location() #24, !dbg !3114
  %14 = load i32, ptr %call81, align 4, !dbg !3114, !tbaa !1205
  %call82 = call ptr @GetExceptionMessage(i32 noundef %14) #20, !dbg !3114
  call void @llvm.dbg.value(metadata ptr %call82, metadata !3032, metadata !DIExpression()), !dbg !3115
  %call83 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception80, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1670, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %call82) #20, !dbg !3114
  %call84 = call ptr @DestroyString(ptr noundef %call82) #20, !dbg !3114
  call void @llvm.dbg.value(metadata ptr %call84, metadata !3032, metadata !DIExpression()), !dbg !3115
  call void @CatchException(ptr noundef nonnull %exception80) #20, !dbg !3114
  %call85 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception80) #20, !dbg !3114
  call void @MagickCoreTerminus() #20, !dbg !3114
  call void @_exit(i32 noundef 1) #25, !dbg !3114
  unreachable, !dbg !3114

if.end86:                                         ; preds = %if.end70
  %add88 = add nuw nsw i64 %i.0.lcssa, 1, !dbg !3116
  %arrayidx89 = getelementptr inbounds ptr, ptr %12, i64 %add88, !dbg !3117
  store ptr null, ptr %arrayidx89, align 8, !dbg !3118, !tbaa !312
  %call90 = tail call ptr @ConstantString(ptr noundef %xml) #20, !dbg !3119
  %15 = load ptr, ptr %processing_instructions, align 8, !dbg !3120, !tbaa !981
  %arrayidx92 = getelementptr inbounds ptr, ptr %15, i64 %i.0.lcssa, !dbg !3121
  %16 = load ptr, ptr %arrayidx92, align 8, !dbg !3121, !tbaa !312
  store ptr %call90, ptr %16, align 8, !dbg !3122, !tbaa !312
  %17 = load ptr, ptr %processing_instructions, align 8, !dbg !3123, !tbaa !981
  %arrayidx96 = getelementptr inbounds ptr, ptr %17, i64 %add88, !dbg !3124
  %18 = load ptr, ptr %arrayidx96, align 8, !dbg !3124, !tbaa !312
  %arrayidx98 = getelementptr inbounds ptr, ptr %17, i64 %i.0.lcssa, !dbg !3125
  %19 = load ptr, ptr %arrayidx98, align 8, !dbg !3125, !tbaa !312
  %arrayidx99 = getelementptr inbounds ptr, ptr %19, i64 1, !dbg !3125
  store ptr %18, ptr %arrayidx99, align 8, !dbg !3126, !tbaa !312
  %20 = load ptr, ptr %processing_instructions, align 8, !dbg !3127, !tbaa !981
  %arrayidx102 = getelementptr inbounds ptr, ptr %20, i64 %add88, !dbg !3128
  store ptr null, ptr %arrayidx102, align 8, !dbg !3129, !tbaa !312
  %call103 = tail call ptr @ConstantString(ptr noundef nonnull @.str) #20, !dbg !3130
  %21 = load ptr, ptr %processing_instructions, align 8, !dbg !3131, !tbaa !981
  %arrayidx105 = getelementptr inbounds ptr, ptr %21, i64 %i.0.lcssa, !dbg !3132
  %22 = load ptr, ptr %arrayidx105, align 8, !dbg !3132, !tbaa !312
  %arrayidx106 = getelementptr inbounds ptr, ptr %22, i64 2, !dbg !3132
  store ptr %call103, ptr %arrayidx106, align 8, !dbg !3133, !tbaa !312
  %.pre272 = load ptr, ptr %processing_instructions, align 8, !tbaa !981
  br label %if.end107, !dbg !3134

if.end107:                                        ; preds = %land.rhs, %if.end86
  %23 = phi ptr [ %.pre272, %if.end86 ], [ %4, %land.rhs ]
  %i.0266 = phi i64 [ %i.0.lcssa, %if.end86 ], [ %i.0268, %land.rhs ]
  call void @llvm.dbg.value(metadata i64 1, metadata !3019, metadata !DIExpression()), !dbg !3044
  %arrayidx110 = getelementptr inbounds ptr, ptr %23, i64 %i.0266
  %24 = load ptr, ptr %arrayidx110, align 8, !tbaa !312
  br label %while.cond108, !dbg !3135

while.cond108:                                    ; preds = %while.cond108, %if.end107
  %j.0 = phi i64 [ 1, %if.end107 ], [ %inc115, %while.cond108 ], !dbg !3044
  call void @llvm.dbg.value(metadata i64 %j.0, metadata !3019, metadata !DIExpression()), !dbg !3044
  %arrayidx111 = getelementptr inbounds ptr, ptr %24, i64 %j.0, !dbg !3136
  %25 = load ptr, ptr %arrayidx111, align 8, !dbg !3136, !tbaa !312
  %cmp112.not = icmp eq ptr %25, null, !dbg !3137
  %inc115 = add nuw nsw i64 %j.0, 1, !dbg !3138
  call void @llvm.dbg.value(metadata i64 %inc115, metadata !3019, metadata !DIExpression()), !dbg !3044
  br i1 %cmp112.not, label %while.end116, label %while.cond108, !dbg !3135, !llvm.loop !3139

while.end116:                                     ; preds = %while.cond108
  %add119 = add nuw nsw i64 %j.0, 3, !dbg !3140
  %call120 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %24, i64 noundef %add119, i64 noundef 8) #23, !dbg !3141
  %26 = load ptr, ptr %processing_instructions, align 8, !dbg !3142, !tbaa !981
  %arrayidx122 = getelementptr inbounds ptr, ptr %26, i64 %i.0266, !dbg !3143
  store ptr %call120, ptr %arrayidx122, align 8, !dbg !3144, !tbaa !312
  %27 = load ptr, ptr %processing_instructions, align 8, !dbg !3145, !tbaa !981
  %arrayidx124 = getelementptr inbounds ptr, ptr %27, i64 %i.0266, !dbg !3146
  %28 = load ptr, ptr %arrayidx124, align 8, !dbg !3146, !tbaa !312
  %cmp125 = icmp eq ptr %28, null, !dbg !3147
  br i1 %cmp125, label %if.then127, label %if.end135, !dbg !3148

if.then127:                                       ; preds = %while.end116
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception129) #20, !dbg !3149
  call void @llvm.dbg.declare(metadata ptr %exception129, metadata !3039, metadata !DIExpression()), !dbg !3149
  call void @GetExceptionInfo(ptr noundef nonnull %exception129) #20, !dbg !3149
  %call130 = tail call ptr @__errno_location() #24, !dbg !3149
  %29 = load i32, ptr %call130, align 4, !dbg !3149, !tbaa !1205
  %call131 = call ptr @GetExceptionMessage(i32 noundef %29) #20, !dbg !3149
  call void @llvm.dbg.value(metadata ptr %call131, metadata !3036, metadata !DIExpression()), !dbg !3150
  %call132 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception129, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1685, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %call131) #20, !dbg !3149
  %call133 = call ptr @DestroyString(ptr noundef %call131) #20, !dbg !3149
  call void @llvm.dbg.value(metadata ptr %call133, metadata !3036, metadata !DIExpression()), !dbg !3150
  call void @CatchException(ptr noundef nonnull %exception129) #20, !dbg !3149
  %call134 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception129) #20, !dbg !3149
  call void @MagickCoreTerminus() #20, !dbg !3149
  call void @_exit(i32 noundef 1) #25, !dbg !3149
  unreachable, !dbg !3149

if.end135:                                        ; preds = %while.end116
  %arrayidx139 = getelementptr inbounds ptr, ptr %28, i64 %inc115, !dbg !3151
  %30 = load ptr, ptr %arrayidx139, align 8, !dbg !3151, !tbaa !312
  %call141 = tail call ptr @ResizeQuantumMemory(ptr noundef %30, i64 noundef %inc115, i64 noundef 8) #23, !dbg !3152
  %31 = load ptr, ptr %processing_instructions, align 8, !dbg !3153, !tbaa !981
  %arrayidx143 = getelementptr inbounds ptr, ptr %31, i64 %i.0266, !dbg !3154
  %32 = load ptr, ptr %arrayidx143, align 8, !dbg !3154, !tbaa !312
  %add144 = add nuw nsw i64 %j.0, 2, !dbg !3155
  %arrayidx145 = getelementptr inbounds ptr, ptr %32, i64 %add144, !dbg !3154
  store ptr %call141, ptr %arrayidx145, align 8, !dbg !3156, !tbaa !312
  %33 = load ptr, ptr %processing_instructions, align 8, !dbg !3157, !tbaa !981
  %arrayidx147 = getelementptr inbounds ptr, ptr %33, i64 %i.0266, !dbg !3158
  %34 = load ptr, ptr %arrayidx147, align 8, !dbg !3158, !tbaa !312
  %arrayidx149 = getelementptr inbounds ptr, ptr %34, i64 %add144, !dbg !3158
  %35 = load ptr, ptr %arrayidx149, align 8, !dbg !3158, !tbaa !312
  %cmp150 = icmp eq ptr %35, null, !dbg !3159
  br i1 %cmp150, label %if.then152, label %if.end160, !dbg !3160

if.then152:                                       ; preds = %if.end135
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception154) #20, !dbg !3161
  call void @llvm.dbg.declare(metadata ptr %exception154, metadata !3043, metadata !DIExpression()), !dbg !3161
  call void @GetExceptionInfo(ptr noundef nonnull %exception154) #20, !dbg !3161
  %call155 = tail call ptr @__errno_location() #24, !dbg !3161
  %36 = load i32, ptr %call155, align 4, !dbg !3161, !tbaa !1205
  %call156 = call ptr @GetExceptionMessage(i32 noundef %36) #20, !dbg !3161
  call void @llvm.dbg.value(metadata ptr %call156, metadata !3040, metadata !DIExpression()), !dbg !3162
  %call157 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception154, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1690, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %call156) #20, !dbg !3161
  %call158 = call ptr @DestroyString(ptr noundef %call156) #20, !dbg !3161
  call void @llvm.dbg.value(metadata ptr %call158, metadata !3040, metadata !DIExpression()), !dbg !3162
  call void @CatchException(ptr noundef nonnull %exception154) #20, !dbg !3161
  %call159 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception154) #20, !dbg !3161
  call void @MagickCoreTerminus() #20, !dbg !3161
  call void @_exit(i32 noundef 1) #25, !dbg !3161
  unreachable, !dbg !3161

if.end160:                                        ; preds = %if.end135
  %add.ptr165 = getelementptr inbounds i8, ptr %35, i64 %j.0, !dbg !3163
  %add.ptr166 = getelementptr inbounds i8, ptr %add.ptr165, i64 -1, !dbg !3164
  %37 = load ptr, ptr %root, align 8, !dbg !3165, !tbaa !2337
  %cmp168.not = icmp eq ptr %37, null, !dbg !3166
  %cond = select i1 %cmp168.not, ptr @.str.73, ptr @.str.72, !dbg !3167
  %call170 = tail call i64 @CopyMagickString(ptr noundef nonnull %add.ptr166, ptr noundef nonnull %cond, i64 noundef 2) #20, !dbg !3168
  %call171 = tail call ptr @ConstantString(ptr noundef %xml.addr.0) #20, !dbg !3169
  %38 = load ptr, ptr %processing_instructions, align 8, !dbg !3170, !tbaa !981
  %arrayidx173 = getelementptr inbounds ptr, ptr %38, i64 %i.0266, !dbg !3171
  %39 = load ptr, ptr %arrayidx173, align 8, !dbg !3171, !tbaa !312
  %arrayidx174 = getelementptr inbounds ptr, ptr %39, i64 %j.0, !dbg !3171
  store ptr %call171, ptr %arrayidx174, align 8, !dbg !3172, !tbaa !312
  %40 = load ptr, ptr %processing_instructions, align 8, !dbg !3173, !tbaa !981
  %arrayidx176 = getelementptr inbounds ptr, ptr %40, i64 %i.0266, !dbg !3174
  %41 = load ptr, ptr %arrayidx176, align 8, !dbg !3174, !tbaa !312
  %arrayidx178 = getelementptr inbounds ptr, ptr %41, i64 %inc115, !dbg !3174
  store ptr null, ptr %arrayidx178, align 8, !dbg !3175, !tbaa !312
  br label %cleanup, !dbg !3176

cleanup:                                          ; preds = %if.then8, %land.lhs.true, %if.then19, %if.end160
  ret void, !dbg !3176
}

declare !dbg !3177 ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @PruneTagFromXMLTree(ptr noundef returned %xml_info) local_unnamed_addr #0 !dbg !3180 {
entry:
  call void @llvm.dbg.value(metadata ptr %xml_info, metadata !3182, metadata !DIExpression()), !dbg !3184
  %debug = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 9, !dbg !3185
  %0 = load i32, ptr %debug, align 8, !dbg !3185, !tbaa !263
  %cmp.not = icmp eq i32 %0, 0, !dbg !3187
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3188

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2372, ptr noundef nonnull @.str.2) #20, !dbg !3189
  br label %if.end, !dbg !3190

if.end:                                           ; preds = %if.then, %entry
  %next = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 5, !dbg !3191
  %1 = load ptr, ptr %next, align 8, !dbg !3191, !tbaa !331
  %cmp1.not = icmp eq ptr %1, null, !dbg !3193
  br i1 %cmp1.not, label %if.end5, label %if.then2, !dbg !3194

if.then2:                                         ; preds = %if.end
  %sibling = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 6, !dbg !3195
  %2 = load ptr, ptr %sibling, align 8, !dbg !3195, !tbaa !321
  %sibling4 = getelementptr inbounds %struct._XMLTreeInfo, ptr %1, i64 0, i32 6, !dbg !3196
  store ptr %2, ptr %sibling4, align 8, !dbg !3197, !tbaa !321
  br label %if.end5, !dbg !3198

if.end5:                                          ; preds = %if.then2, %if.end
  %parent = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 4, !dbg !3199
  %3 = load ptr, ptr %parent, align 8, !dbg !3199, !tbaa !288
  %cmp6.not = icmp eq ptr %3, null, !dbg !3201
  br i1 %cmp6.not, label %if.end63, label %if.then7, !dbg !3202

if.then7:                                         ; preds = %if.end5
  %child = getelementptr inbounds %struct._XMLTreeInfo, ptr %3, i64 0, i32 8, !dbg !3203
  %4 = load ptr, ptr %child, align 8, !dbg !3203, !tbaa !291
  call void @llvm.dbg.value(metadata ptr %4, metadata !3183, metadata !DIExpression()), !dbg !3184
  %cmp9 = icmp eq ptr %4, %xml_info, !dbg !3205
  br i1 %cmp9, label %if.then10, label %while.cond, !dbg !3207

if.then10:                                        ; preds = %if.then7
  %ordered = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 7, !dbg !3208
  br label %if.end63.sink.split, !dbg !3209

while.cond:                                       ; preds = %if.then7, %while.cond
  %node.0 = phi ptr [ %5, %while.cond ], [ %4, %if.then7 ], !dbg !3210
  call void @llvm.dbg.value(metadata ptr %node.0, metadata !3183, metadata !DIExpression()), !dbg !3184
  %ordered13 = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.0, i64 0, i32 7, !dbg !3211
  %5 = load ptr, ptr %ordered13, align 8, !dbg !3211, !tbaa !301
  %cmp14.not = icmp eq ptr %5, %xml_info, !dbg !3213
  br i1 %cmp14.not, label %while.end, label %while.cond, !dbg !3214, !llvm.loop !3215

while.end:                                        ; preds = %while.cond
  %ordered13.le = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.0, i64 0, i32 7, !dbg !3211
  %ordered17 = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 7, !dbg !3217
  %6 = load ptr, ptr %ordered17, align 8, !dbg !3217, !tbaa !301
  store ptr %6, ptr %ordered13.le, align 8, !dbg !3218, !tbaa !301
  call void @llvm.dbg.value(metadata ptr %4, metadata !3183, metadata !DIExpression()), !dbg !3184
  %7 = load ptr, ptr %4, align 8, !dbg !3219, !tbaa !247
  %8 = load ptr, ptr %xml_info, align 8, !dbg !3221, !tbaa !247
  %call22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %8) #21, !dbg !3222
  %cmp23.not = icmp eq i32 %call22, 0, !dbg !3223
  br i1 %cmp23.not, label %while.cond47.preheader, label %while.cond25, !dbg !3224

while.cond25:                                     ; preds = %while.end, %while.cond25
  %node.1 = phi ptr [ %9, %while.cond25 ], [ %4, %while.end ], !dbg !3225
  call void @llvm.dbg.value(metadata ptr %node.1, metadata !3183, metadata !DIExpression()), !dbg !3184
  %sibling26 = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.1, i64 0, i32 6, !dbg !3226
  %9 = load ptr, ptr %sibling26, align 8, !dbg !3226, !tbaa !321
  %10 = load ptr, ptr %9, align 8, !dbg !3228, !tbaa !247
  %call29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %8) #21, !dbg !3229
  %cmp30.not = icmp eq i32 %call29, 0, !dbg !3230
  br i1 %cmp30.not, label %while.end33, label %while.cond25, !dbg !3231, !llvm.loop !3232

while.end33:                                      ; preds = %while.cond25
  %sibling26.le = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.1, i64 0, i32 6, !dbg !3226
  %cmp35.not = icmp eq ptr %9, %xml_info, !dbg !3234
  br i1 %cmp35.not, label %if.else38, label %while.cond47.preheader, !dbg !3236

if.else38:                                        ; preds = %while.end33
  br i1 %cmp1.not, label %cond.false, label %cond.end, !dbg !3237

cond.false:                                       ; preds = %if.else38
  %sibling43 = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 6, !dbg !3238
  %11 = load ptr, ptr %sibling43, align 8, !dbg !3238, !tbaa !321
  br label %cond.end, !dbg !3237

cond.end:                                         ; preds = %if.else38, %cond.false
  %cond = phi ptr [ %11, %cond.false ], [ %1, %if.else38 ], !dbg !3237
  store ptr %cond, ptr %sibling26.le, align 8, !dbg !3239, !tbaa !321
  br label %while.cond47.preheader

while.cond47.preheader:                           ; preds = %while.end33, %cond.end, %while.end
  %node.3.ph = phi ptr [ %9, %while.end33 ], [ %4, %while.end ], [ %node.1, %cond.end ]
  br label %while.cond47, !dbg !3240

while.cond47:                                     ; preds = %while.cond47.preheader, %while.cond47
  %node.3 = phi ptr [ %12, %while.cond47 ], [ %node.3.ph, %while.cond47.preheader ], !dbg !3225
  call void @llvm.dbg.value(metadata ptr %node.3, metadata !3183, metadata !DIExpression()), !dbg !3184
  %next48 = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.3, i64 0, i32 5, !dbg !3241
  %12 = load ptr, ptr %next48, align 8, !dbg !3241, !tbaa !331
  %cmp49.not = icmp eq ptr %12, null, !dbg !3242
  %cmp51.not = icmp eq ptr %12, %xml_info
  %or.cond = or i1 %cmp49.not, %cmp51.not, !dbg !3243
  br i1 %or.cond, label %while.end54, label %while.cond47, !dbg !3243, !llvm.loop !3244

while.end54:                                      ; preds = %while.cond47
  br i1 %cmp49.not, label %if.end63, label %if.then57, !dbg !3246

if.then57:                                        ; preds = %while.end54
  %next48.le = getelementptr inbounds %struct._XMLTreeInfo, ptr %node.3, i64 0, i32 5, !dbg !3241
  %next59 = getelementptr inbounds %struct._XMLTreeInfo, ptr %12, i64 0, i32 5, !dbg !3247
  br label %if.end63.sink.split, !dbg !3249

if.end63.sink.split:                              ; preds = %if.then57, %if.then10
  %ordered.sink = phi ptr [ %ordered, %if.then10 ], [ %next59, %if.then57 ]
  %child.sink = phi ptr [ %child, %if.then10 ], [ %next48.le, %if.then57 ]
  %13 = load ptr, ptr %ordered.sink, align 8, !dbg !3250, !tbaa !312
  store ptr %13, ptr %child.sink, align 8, !dbg !3250, !tbaa !312
  br label %if.end63, !dbg !3251

if.end63:                                         ; preds = %if.end63.sink.split, %while.end54, %if.end5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %next, i8 0, i64 24, i1 false), !dbg !3252
  ret ptr %xml_info, !dbg !3253
}

; Function Attrs: nounwind uwtable
define dso_local ptr @SetXMLTreeAttribute(ptr noundef returned %xml_info, ptr noundef %tag, ptr noundef %value) local_unnamed_addr #0 !dbg !3254 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  %exception97 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %xml_info, metadata !3258, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata ptr %tag, metadata !3259, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata ptr %value, metadata !3260, metadata !DIExpression()), !dbg !3273
  %debug = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 9, !dbg !3274
  %0 = load i32, ptr %debug, align 8, !dbg !3274, !tbaa !263
  %cmp.not = icmp eq i32 %0, 0, !dbg !3276
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3277

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2450, ptr noundef nonnull @.str.2) #20, !dbg !3278
  br label %if.end, !dbg !3279

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !3261, metadata !DIExpression()), !dbg !3273
  %attributes = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 1
  %1 = load ptr, ptr %attributes, align 8, !tbaa !255
  call void @llvm.dbg.value(metadata i64 0, metadata !3261, metadata !DIExpression()), !dbg !3273
  %2 = load ptr, ptr %1, align 8, !dbg !3280, !tbaa !312
  %cmp1.not200 = icmp eq ptr %2, null, !dbg !3281
  br i1 %cmp1.not200, label %if.then9, label %land.rhs, !dbg !3282

land.rhs:                                         ; preds = %if.end, %while.body
  %3 = phi ptr [ %4, %while.body ], [ %2, %if.end ]
  %i.0201 = phi i64 [ %add, %while.body ], [ 0, %if.end ]
  call void @llvm.dbg.value(metadata i64 %i.0201, metadata !3261, metadata !DIExpression()), !dbg !3273
  %call4 = tail call i32 @strcmp(ptr noundef nonnull %3, ptr noundef nonnull dereferenceable(1) %tag) #21, !dbg !3283
  %cmp5.not = icmp eq i32 %call4, 0, !dbg !3284
  br i1 %cmp5.not, label %if.end49, label %while.body, !dbg !3285

while.body:                                       ; preds = %land.rhs
  %add = add nuw nsw i64 %i.0201, 2, !dbg !3286
  call void @llvm.dbg.value(metadata i64 %add, metadata !3261, metadata !DIExpression()), !dbg !3273
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %add, !dbg !3280
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !3280, !tbaa !312
  %cmp1.not = icmp eq ptr %4, null, !dbg !3281
  br i1 %cmp1.not, label %if.then9, label %land.rhs, !dbg !3282, !llvm.loop !3287

if.then9:                                         ; preds = %while.body, %if.end
  %i.0.lcssa = phi i64 [ 0, %if.end ], [ %add, %while.body ], !dbg !3273
  %cmp10 = icmp eq ptr %value, null, !dbg !3289
  br i1 %cmp10, label %cleanup, label %if.end12, !dbg !3291

if.end12:                                         ; preds = %if.then9
  %cmp14.not = icmp eq ptr %1, @sentinel, !dbg !3292
  br i1 %cmp14.not, label %if.else, label %if.then15, !dbg !3294

if.then15:                                        ; preds = %if.end12
  %add17 = add nuw nsw i64 %i.0.lcssa, 4, !dbg !3295
  %call18 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %1, i64 noundef %add17, i64 noundef 8) #23, !dbg !3296
  store ptr %call18, ptr %attributes, align 8, !dbg !3297, !tbaa !255
  br label %if.end29, !dbg !3298

if.else:                                          ; preds = %if.end12
  %call20 = tail call ptr @AcquireQuantumMemory(i64 noundef 4, i64 noundef 8) #22, !dbg !3299
  store ptr %call20, ptr %attributes, align 8, !dbg !3301, !tbaa !255
  %cmp23.not = icmp eq ptr %call20, null, !dbg !3302
  br i1 %cmp23.not, label %if.then32, label %if.then24, !dbg !3304

if.then24:                                        ; preds = %if.else
  %call25 = tail call ptr @ConstantString(ptr noundef nonnull @.str) #20, !dbg !3305
  %5 = load ptr, ptr %attributes, align 8, !dbg !3306, !tbaa !255
  %arrayidx27 = getelementptr inbounds ptr, ptr %5, i64 1, !dbg !3307
  store ptr %call25, ptr %arrayidx27, align 8, !dbg !3308, !tbaa !312
  %.pr = load ptr, ptr %attributes, align 8, !dbg !3309, !tbaa !255
  br label %if.end29, !dbg !3307

if.end29:                                         ; preds = %if.then24, %if.then15
  %6 = phi ptr [ %.pr, %if.then24 ], [ %call18, %if.then15 ], !dbg !3309
  %cmp31 = icmp eq ptr %6, null, !dbg !3310
  br i1 %cmp31, label %if.then32, label %if.end38, !dbg !3311

if.then32:                                        ; preds = %if.else, %if.end29
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #20, !dbg !3312
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !3268, metadata !DIExpression()), !dbg !3312
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #20, !dbg !3312
  %call33 = tail call ptr @__errno_location() #24, !dbg !3312
  %7 = load i32, ptr %call33, align 4, !dbg !3312, !tbaa !1205
  %call34 = call ptr @GetExceptionMessage(i32 noundef %7) #20, !dbg !3312
  call void @llvm.dbg.value(metadata ptr %call34, metadata !3263, metadata !DIExpression()), !dbg !3313
  %call35 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2473, i32 noundef 700, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.18, ptr noundef %call34) #20, !dbg !3312
  %call36 = call ptr @DestroyString(ptr noundef %call34) #20, !dbg !3312
  call void @llvm.dbg.value(metadata ptr %call36, metadata !3263, metadata !DIExpression()), !dbg !3313
  call void @CatchException(ptr noundef nonnull %exception) #20, !dbg !3312
  %call37 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #20, !dbg !3312
  call void @MagickCoreTerminus() #20, !dbg !3312
  call void @_exit(i32 noundef 1) #25, !dbg !3312
  unreachable, !dbg !3312

if.end38:                                         ; preds = %if.end29
  %call39 = tail call ptr @ConstantString(ptr noundef %tag) #20, !dbg !3314
  %8 = load ptr, ptr %attributes, align 8, !dbg !3315, !tbaa !255
  %arrayidx41 = getelementptr inbounds ptr, ptr %8, i64 %i.0.lcssa, !dbg !3316
  store ptr %call39, ptr %arrayidx41, align 8, !dbg !3317, !tbaa !312
  %9 = load ptr, ptr %attributes, align 8, !dbg !3318, !tbaa !255
  %add43 = add nuw nsw i64 %i.0.lcssa, 2, !dbg !3319
  %arrayidx44 = getelementptr inbounds ptr, ptr %9, i64 %add43, !dbg !3320
  store ptr null, ptr %arrayidx44, align 8, !dbg !3321, !tbaa !312
  %.pre = load ptr, ptr %attributes, align 8, !tbaa !255
  br label %if.end49, !dbg !3322

if.end49:                                         ; preds = %land.rhs, %if.end38
  %10 = phi ptr [ %.pre, %if.end38 ], [ %1, %land.rhs ]
  %i.0198 = phi i64 [ %i.0.lcssa, %if.end38 ], [ %i.0201, %land.rhs ]
  call void @llvm.dbg.value(metadata i64 %i.0198, metadata !3262, metadata !DIExpression()), !dbg !3273
  br label %for.cond, !dbg !3323

for.cond:                                         ; preds = %for.cond, %if.end49
  %j.0 = phi i64 [ %i.0198, %if.end49 ], [ %add53, %for.cond ], !dbg !3325
  call void @llvm.dbg.value(metadata i64 %j.0, metadata !3262, metadata !DIExpression()), !dbg !3273
  %arrayidx51 = getelementptr inbounds ptr, ptr %10, i64 %j.0, !dbg !3326
  %11 = load ptr, ptr %arrayidx51, align 8, !dbg !3326, !tbaa !312
  %cmp52.not = icmp eq ptr %11, null, !dbg !3328
  %add53 = add nuw nsw i64 %j.0, 2, !dbg !3329
  call void @llvm.dbg.value(metadata i64 %add53, metadata !3262, metadata !DIExpression()), !dbg !3273
  br i1 %cmp52.not, label %for.end, label %for.cond, !dbg !3330, !llvm.loop !3331

for.end:                                          ; preds = %for.cond
  %add55 = or i64 %i.0198, 1, !dbg !3333
  %arrayidx56 = getelementptr inbounds ptr, ptr %10, i64 %add55, !dbg !3335
  %12 = load ptr, ptr %arrayidx56, align 8, !dbg !3335, !tbaa !312
  %cmp57.not = icmp eq ptr %12, null, !dbg !3336
  br i1 %cmp57.not, label %if.end66, label %if.then58, !dbg !3337

if.then58:                                        ; preds = %for.end
  %call62 = tail call ptr @DestroyString(ptr noundef nonnull %12) #20, !dbg !3338
  %13 = load ptr, ptr %attributes, align 8, !dbg !3339, !tbaa !255
  %arrayidx65 = getelementptr inbounds ptr, ptr %13, i64 %add55, !dbg !3340
  store ptr %call62, ptr %arrayidx65, align 8, !dbg !3341, !tbaa !312
  br label %if.end66, !dbg !3340

if.end66:                                         ; preds = %if.then58, %for.end
  %cmp67.not = icmp eq ptr %value, null, !dbg !3342
  br i1 %cmp67.not, label %if.end73, label %if.then68, !dbg !3344

if.then68:                                        ; preds = %if.end66
  %call69 = tail call ptr @ConstantString(ptr noundef nonnull %value) #20, !dbg !3345
  %14 = load ptr, ptr %attributes, align 8, !dbg !3347, !tbaa !255
  %arrayidx72 = getelementptr inbounds ptr, ptr %14, i64 %add55, !dbg !3348
  store ptr %call69, ptr %arrayidx72, align 8, !dbg !3349, !tbaa !312
  br label %cleanup, !dbg !3350

if.end73:                                         ; preds = %if.end66
  %15 = load ptr, ptr %attributes, align 8, !dbg !3351, !tbaa !255
  %arrayidx75 = getelementptr inbounds ptr, ptr %15, i64 %i.0198, !dbg !3353
  %16 = load ptr, ptr %arrayidx75, align 8, !dbg !3353, !tbaa !312
  %cmp76.not = icmp eq ptr %16, null, !dbg !3354
  br i1 %cmp76.not, label %if.end83, label %if.then77, !dbg !3355

if.then77:                                        ; preds = %if.end73
  %call80 = tail call ptr @DestroyString(ptr noundef nonnull %16) #20, !dbg !3356
  %17 = load ptr, ptr %attributes, align 8, !dbg !3357, !tbaa !255
  %arrayidx82 = getelementptr inbounds ptr, ptr %17, i64 %i.0198, !dbg !3358
  store ptr %call80, ptr %arrayidx82, align 8, !dbg !3359, !tbaa !312
  %.pre204 = load ptr, ptr %attributes, align 8, !dbg !3360, !tbaa !255
  br label %if.end83, !dbg !3358

if.end83:                                         ; preds = %if.then77, %if.end73
  %18 = phi ptr [ %.pre204, %if.then77 ], [ %15, %if.end73 ], !dbg !3360
  %add.ptr = getelementptr inbounds ptr, ptr %18, i64 %i.0198, !dbg !3361
  %add.ptr87 = getelementptr inbounds ptr, ptr %add.ptr, i64 2, !dbg !3362
  %sub = sub nsw i64 %j.0, %i.0198, !dbg !3363
  %mul = shl i64 %sub, 3, !dbg !3364
  %call88 = tail call ptr @CopyMagickMemory(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr87, i64 noundef %mul) #20, !dbg !3365
  %19 = load ptr, ptr %attributes, align 8, !dbg !3366, !tbaa !255
  %call91 = tail call ptr @ResizeQuantumMemory(ptr noundef %19, i64 noundef %add53, i64 noundef 8) #23, !dbg !3367
  store ptr %call91, ptr %attributes, align 8, !dbg !3368, !tbaa !255
  %cmp94 = icmp eq ptr %call91, null, !dbg !3369
  br i1 %cmp94, label %if.then95, label %if.end103, !dbg !3370

if.then95:                                        ; preds = %if.end83
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception97) #20, !dbg !3371
  call void @llvm.dbg.declare(metadata ptr %exception97, metadata !3272, metadata !DIExpression()), !dbg !3371
  call void @GetExceptionInfo(ptr noundef nonnull %exception97) #20, !dbg !3371
  %call98 = tail call ptr @__errno_location() #24, !dbg !3371
  %20 = load i32, ptr %call98, align 4, !dbg !3371, !tbaa !1205
  %call99 = call ptr @GetExceptionMessage(i32 noundef %20) #20, !dbg !3371
  call void @llvm.dbg.value(metadata ptr %call99, metadata !3269, metadata !DIExpression()), !dbg !3372
  %call100 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception97, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2496, i32 noundef 700, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.18, ptr noundef %call99) #20, !dbg !3371
  %call101 = call ptr @DestroyString(ptr noundef %call99) #20, !dbg !3371
  call void @llvm.dbg.value(metadata ptr %call101, metadata !3269, metadata !DIExpression()), !dbg !3372
  call void @CatchException(ptr noundef nonnull %exception97) #20, !dbg !3371
  %call102 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception97) #20, !dbg !3371
  call void @MagickCoreTerminus() #20, !dbg !3371
  call void @_exit(i32 noundef 1) #25, !dbg !3371
  unreachable, !dbg !3371

if.end103:                                        ; preds = %if.end83
  call void @llvm.dbg.value(metadata i64 %j.0, metadata !3262, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !3273
  %add106 = add nsw i64 %j.0, -1, !dbg !3373
  %arrayidx107 = getelementptr inbounds ptr, ptr %call91, i64 %add106, !dbg !3374
  %21 = load ptr, ptr %arrayidx107, align 8, !dbg !3374, !tbaa !312
  %div189 = lshr exact i64 %i.0198, 1, !dbg !3375
  %add.ptr108 = getelementptr inbounds i8, ptr %21, i64 %div189, !dbg !3376
  %add.ptr114 = getelementptr inbounds i8, ptr %add.ptr108, i64 1, !dbg !3377
  %div116190 = lshr exact i64 %j.0, 1, !dbg !3378
  %sub118 = sub nsw i64 %div116190, %div189, !dbg !3379
  %mul119 = shl i64 %sub118, 3, !dbg !3380
  %call120 = tail call ptr @CopyMagickMemory(ptr noundef %add.ptr108, ptr noundef nonnull %add.ptr114, i64 noundef %mul119) #20, !dbg !3381
  br label %cleanup, !dbg !3382

cleanup:                                          ; preds = %if.then9, %if.end103, %if.then68
  ret ptr %xml_info, !dbg !3383
}

declare !dbg !3384 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !3387 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #4

declare !dbg !3391 void @CatchException(ptr noundef) local_unnamed_addr #4

declare !dbg !3392 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !3395 void @MagickCoreTerminus() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local ptr @SetXMLTreeContent(ptr noundef returned %xml_info, ptr noundef %content) local_unnamed_addr #0 !dbg !3399 {
entry:
  call void @llvm.dbg.value(metadata ptr %xml_info, metadata !3401, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata ptr %content, metadata !3402, metadata !DIExpression()), !dbg !3403
  %debug = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 9, !dbg !3404
  %0 = load i32, ptr %debug, align 8, !dbg !3404, !tbaa !263
  %cmp.not = icmp eq i32 %0, 0, !dbg !3406
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3407

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2537, ptr noundef nonnull @.str.2) #20, !dbg !3408
  br label %if.end, !dbg !3409

if.end:                                           ; preds = %if.then, %entry
  %content1 = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 2, !dbg !3410
  %1 = load ptr, ptr %content1, align 8, !dbg !3410, !tbaa !259
  %cmp2.not = icmp eq ptr %1, null, !dbg !3412
  br i1 %cmp2.not, label %if.end7, label %if.then3, !dbg !3413

if.then3:                                         ; preds = %if.end
  %call5 = tail call ptr @DestroyString(ptr noundef nonnull %1) #20, !dbg !3414
  store ptr %call5, ptr %content1, align 8, !dbg !3415, !tbaa !259
  br label %if.end7, !dbg !3416

if.end7:                                          ; preds = %if.then3, %if.end
  %call8 = tail call ptr @ConstantString(ptr noundef %content) #20, !dbg !3417
  store ptr %call8, ptr %content1, align 8, !dbg !3418, !tbaa !259
  ret ptr %xml_info, !dbg !3419
}

; Function Attrs: nounwind uwtable
define dso_local ptr @XMLTreeInfoToXML(ptr nocapture noundef %xml_info) local_unnamed_addr #0 !dbg !3420 {
entry:
  %xml = alloca ptr, align 8
  %extent = alloca i64, align 8
  %length = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %xml_info, metadata !3424, metadata !DIExpression()), !dbg !3436
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xml) #20, !dbg !3437
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %extent) #20, !dbg !3438
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %length) #20, !dbg !3438
  %debug = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 9, !dbg !3439
  %0 = load i32, ptr %debug, align 8, !dbg !3439, !tbaa !263
  %cmp.not = icmp eq i32 %0, 0, !dbg !3441
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3442

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2738, ptr noundef nonnull @.str.2) #20, !dbg !3443
  br label %if.end, !dbg !3444

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %xml_info, align 8, !dbg !3445, !tbaa !247
  %cmp1 = icmp eq ptr %1, null, !dbg !3447
  br i1 %cmp1, label %cleanup, label %if.end3, !dbg !3448

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @AcquireString(ptr noundef null) #20, !dbg !3449
  call void @llvm.dbg.value(metadata ptr %call4, metadata !3425, metadata !DIExpression()), !dbg !3436
  store ptr %call4, ptr %xml, align 8, !dbg !3450, !tbaa !312
  call void @llvm.dbg.value(metadata i64 0, metadata !3430, metadata !DIExpression()), !dbg !3436
  store i64 0, ptr %length, align 8, !dbg !3451, !tbaa !480
  call void @llvm.dbg.value(metadata i64 4096, metadata !3429, metadata !DIExpression()), !dbg !3436
  store i64 4096, ptr %extent, align 8, !dbg !3452, !tbaa !480
  call void @llvm.dbg.value(metadata ptr %xml_info, metadata !3435, metadata !DIExpression()), !dbg !3436
  br label %while.cond, !dbg !3453

while.cond:                                       ; preds = %while.cond, %if.end3
  %root.0 = phi ptr [ %xml_info, %if.end3 ], [ %2, %while.cond ], !dbg !3436
  call void @llvm.dbg.value(metadata ptr %root.0, metadata !3435, metadata !DIExpression()), !dbg !3436
  %parent6 = getelementptr inbounds %struct._XMLTreeInfo, ptr %root.0, i64 0, i32 4, !dbg !3454
  %2 = load ptr, ptr %parent6, align 8, !dbg !3454, !tbaa !1440
  %cmp7.not = icmp eq ptr %2, null, !dbg !3455
  br i1 %cmp7.not, label %if.then11, label %while.cond, !dbg !3453, !llvm.loop !3456

if.then11:                                        ; preds = %while.cond
  call void @llvm.dbg.value(metadata ptr null, metadata !3434, metadata !DIExpression()), !dbg !3436
  %parent12 = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 4, !dbg !3458
  %3 = load ptr, ptr %parent12, align 8, !dbg !3458, !tbaa !288
  call void @llvm.dbg.value(metadata ptr %3, metadata !3434, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata ptr %3, metadata !3434, metadata !DIExpression()), !dbg !3436
  %cmp14 = icmp eq ptr %3, null, !dbg !3460
  br i1 %cmp14, label %for.cond.preheader, label %if.end163.critedge, !dbg !3462

for.cond.preheader:                               ; preds = %if.then11
  %processing_instructions = getelementptr inbounds %struct._XMLTreeRoot, ptr %root.0, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3428, metadata !DIExpression()), !dbg !3436
  %4 = load ptr, ptr %processing_instructions, align 8, !dbg !3463, !tbaa !981
  %5 = load ptr, ptr %4, align 8, !dbg !3466, !tbaa !312
  %cmp16.not252 = icmp eq ptr %5, null, !dbg !3467
  br i1 %cmp16.not252, label %for.cond89.preheader, label %for.cond17.preheader, !dbg !3468

for.cond17.preheader:                             ; preds = %for.cond.preheader, %for.inc72
  %6 = phi ptr [ %37, %for.inc72 ], [ %4, %for.cond.preheader ]
  %7 = phi i64 [ %38, %for.inc72 ], [ 4096, %for.cond.preheader ]
  %8 = phi ptr [ %39, %for.inc72 ], [ %call4, %for.cond.preheader ]
  %9 = phi ptr [ %40, %for.inc72 ], [ %call4, %for.cond.preheader ]
  %10 = phi i64 [ %41, %for.inc72 ], [ 4096, %for.cond.preheader ]
  %11 = phi i64 [ %42, %for.inc72 ], [ 0, %for.cond.preheader ]
  %12 = phi ptr [ %43, %for.inc72 ], [ %5, %for.cond.preheader ]
  %i.0253 = phi i64 [ %inc73, %for.inc72 ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0253, metadata !3428, metadata !DIExpression()), !dbg !3436
  br label %for.cond17, !dbg !3469

for.cond17:                                       ; preds = %for.cond17, %for.cond17.preheader
  %k.0 = phi i64 [ %inc, %for.cond17 ], [ 2, %for.cond17.preheader ], !dbg !3472
  call void @llvm.dbg.value(metadata i64 %k.0, metadata !3432, metadata !DIExpression()), !dbg !3436
  %sub = add nsw i64 %k.0, -1, !dbg !3473
  %arrayidx20 = getelementptr inbounds ptr, ptr %12, i64 %sub, !dbg !3475
  %13 = load ptr, ptr %arrayidx20, align 8, !dbg !3475, !tbaa !312
  %tobool.not = icmp eq ptr %13, null, !dbg !3469
  %inc = add nuw nsw i64 %k.0, 1, !dbg !3476
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3432, metadata !DIExpression()), !dbg !3436
  br i1 %tobool.not, label %for.end, label %for.cond17, !dbg !3469, !llvm.loop !3477

for.end:                                          ; preds = %for.cond17
  %arrayidx24 = getelementptr inbounds ptr, ptr %12, i64 1, !dbg !3479
  call void @llvm.dbg.value(metadata ptr undef, metadata !3426, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 1, metadata !3431, metadata !DIExpression()), !dbg !3436
  %p.0248 = load ptr, ptr %arrayidx24, align 8, !dbg !3480, !tbaa !312
  call void @llvm.dbg.value(metadata ptr %p.0248, metadata !3426, metadata !DIExpression()), !dbg !3436
  %cmp26.not249 = icmp eq ptr %p.0248, null, !dbg !3481
  br i1 %cmp26.not249, label %for.inc72, label %for.body27, !dbg !3484

for.body27:                                       ; preds = %for.end, %for.inc69
  %14 = phi ptr [ %30, %for.inc69 ], [ %6, %for.end ]
  %15 = phi i64 [ %31, %for.inc69 ], [ %7, %for.end ]
  %16 = phi ptr [ %32, %for.inc69 ], [ %8, %for.end ]
  %17 = phi ptr [ %33, %for.inc69 ], [ %9, %for.end ]
  %18 = phi i64 [ %34, %for.inc69 ], [ %10, %for.end ]
  %19 = phi i64 [ %35, %for.inc69 ], [ %11, %for.end ]
  %20 = phi ptr [ %36, %for.inc69 ], [ %6, %for.end ], !dbg !3485
  %p.0251 = phi ptr [ %p.0, %for.inc69 ], [ %p.0248, %for.end ]
  %j.0250 = phi i64 [ %inc70, %for.inc69 ], [ 1, %for.end ]
  call void @llvm.dbg.value(metadata i64 %j.0250, metadata !3431, metadata !DIExpression()), !dbg !3436
  %arrayidx29 = getelementptr inbounds ptr, ptr %20, i64 %i.0253, !dbg !3488
  %21 = load ptr, ptr %arrayidx29, align 8, !dbg !3488, !tbaa !312
  %arrayidx30 = getelementptr inbounds ptr, ptr %21, i64 %k.0, !dbg !3488
  %22 = load ptr, ptr %arrayidx30, align 8, !dbg !3488, !tbaa !312
  %sub31 = add nsw i64 %j.0250, -1, !dbg !3489
  %arrayidx32 = getelementptr inbounds i8, ptr %22, i64 %sub31, !dbg !3488
  %23 = load i8, ptr %arrayidx32, align 1, !dbg !3488, !tbaa !652
  %cmp33 = icmp eq i8 %23, 62, !dbg !3490
  br i1 %cmp33, label %for.inc69, label %if.end39, !dbg !3491

if.end39:                                         ; preds = %for.body27
  %24 = load ptr, ptr %21, align 8, !dbg !3492, !tbaa !312
  call void @llvm.dbg.value(metadata ptr %24, metadata !3427, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 %19, metadata !3430, metadata !DIExpression()), !dbg !3436
  %call43 = tail call i64 @strlen(ptr noundef nonnull %p.0251) #21, !dbg !3493
  %call44 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %24) #21, !dbg !3495
  %add = add i64 %19, 4096, !dbg !3496
  %add45 = add i64 %add, %call43, !dbg !3497
  %add46 = add i64 %add45, %call44, !dbg !3498
  call void @llvm.dbg.value(metadata i64 %18, metadata !3429, metadata !DIExpression()), !dbg !3436
  %cmp47 = icmp ugt i64 %add46, %18, !dbg !3499
  br i1 %cmp47, label %if.then49, label %if.end60, !dbg !3500

if.then49:                                        ; preds = %if.end39
  call void @llvm.dbg.value(metadata i64 %add46, metadata !3429, metadata !DIExpression()), !dbg !3436
  store i64 %add46, ptr %extent, align 8, !dbg !3501, !tbaa !480
  call void @llvm.dbg.value(metadata ptr %17, metadata !3425, metadata !DIExpression()), !dbg !3436
  %call55 = tail call ptr @ResizeQuantumMemory(ptr noundef %17, i64 noundef %add46, i64 noundef 1) #23, !dbg !3503
  call void @llvm.dbg.value(metadata ptr %call55, metadata !3425, metadata !DIExpression()), !dbg !3436
  store ptr %call55, ptr %xml, align 8, !dbg !3504, !tbaa !312
  %cmp56 = icmp eq ptr %call55, null, !dbg !3505
  br i1 %cmp56, label %cleanup, label %if.end60, !dbg !3507

if.end60:                                         ; preds = %if.then49, %if.end39
  %25 = phi i64 [ %add46, %if.then49 ], [ %15, %if.end39 ], !dbg !3508
  %26 = phi ptr [ %call55, %if.then49 ], [ %16, %if.end39 ], !dbg !3509
  call void @llvm.dbg.value(metadata ptr %26, metadata !3425, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 %19, metadata !3430, metadata !DIExpression()), !dbg !3436
  %add.ptr = getelementptr inbounds i8, ptr %26, i64 %19, !dbg !3510
  call void @llvm.dbg.value(metadata i64 %25, metadata !3429, metadata !DIExpression()), !dbg !3436
  %27 = load i8, ptr %p.0251, align 1, !dbg !3511, !tbaa !652
  %cmp62.not = icmp eq i8 %27, 0, !dbg !3512
  %cond = select i1 %cmp62.not, ptr @.str, ptr @.str.49, !dbg !3511
  %call64 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %add.ptr, i64 noundef %25, ptr noundef nonnull @.str.48, ptr noundef %24, ptr noundef nonnull %cond, ptr noundef nonnull %p.0251) #20, !dbg !3513
  call void @llvm.dbg.value(metadata i64 %19, metadata !3430, metadata !DIExpression()), !dbg !3436
  %add65 = add i64 %19, %call64, !dbg !3514
  call void @llvm.dbg.value(metadata i64 %add65, metadata !3430, metadata !DIExpression()), !dbg !3436
  store i64 %add65, ptr %length, align 8, !dbg !3514, !tbaa !480
  %28 = load ptr, ptr %processing_instructions, align 8, !dbg !3515, !tbaa !981
  %arrayidx67 = getelementptr inbounds ptr, ptr %28, i64 %i.0253, !dbg !3516
  %29 = load ptr, ptr %arrayidx67, align 8, !dbg !3516, !tbaa !312
  call void @llvm.dbg.value(metadata ptr undef, metadata !3426, metadata !DIExpression()), !dbg !3436
  br label %for.inc69, !dbg !3517

for.inc69:                                        ; preds = %for.body27, %if.end60
  %30 = phi ptr [ %28, %if.end60 ], [ %14, %for.body27 ]
  %31 = phi i64 [ %25, %if.end60 ], [ %15, %for.body27 ]
  %32 = phi ptr [ %26, %if.end60 ], [ %16, %for.body27 ]
  %33 = phi ptr [ %26, %if.end60 ], [ %17, %for.body27 ]
  %34 = phi i64 [ %25, %if.end60 ], [ %18, %for.body27 ]
  %35 = phi i64 [ %add65, %if.end60 ], [ %19, %for.body27 ]
  %36 = phi ptr [ %28, %if.end60 ], [ %20, %for.body27 ]
  %.pn246 = phi ptr [ %29, %if.end60 ], [ %21, %for.body27 ]
  %p.1.in = getelementptr inbounds ptr, ptr %.pn246, i64 %j.0250, !dbg !3518
  call void @llvm.dbg.value(metadata ptr undef, metadata !3426, metadata !DIExpression()), !dbg !3436
  %inc70 = add nuw nsw i64 %j.0250, 1, !dbg !3519
  call void @llvm.dbg.value(metadata i64 %inc70, metadata !3431, metadata !DIExpression()), !dbg !3436
  %p.0 = load ptr, ptr %p.1.in, align 8, !dbg !3480, !tbaa !312
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !3426, metadata !DIExpression()), !dbg !3436
  %cmp26.not = icmp eq ptr %p.0, null, !dbg !3481
  br i1 %cmp26.not, label %for.inc72, label %for.body27, !dbg !3484, !llvm.loop !3520

for.inc72:                                        ; preds = %for.inc69, %for.end
  %37 = phi ptr [ %6, %for.end ], [ %30, %for.inc69 ], !dbg !3463
  %38 = phi i64 [ %7, %for.end ], [ %31, %for.inc69 ]
  %39 = phi ptr [ %8, %for.end ], [ %32, %for.inc69 ]
  %40 = phi ptr [ %9, %for.end ], [ %33, %for.inc69 ]
  %41 = phi i64 [ %10, %for.end ], [ %34, %for.inc69 ]
  %42 = phi i64 [ %11, %for.end ], [ %35, %for.inc69 ]
  %inc73 = add nuw nsw i64 %i.0253, 1, !dbg !3522
  call void @llvm.dbg.value(metadata i64 %inc73, metadata !3428, metadata !DIExpression()), !dbg !3436
  %arrayidx = getelementptr inbounds ptr, ptr %37, i64 %inc73, !dbg !3466
  %43 = load ptr, ptr %arrayidx, align 8, !dbg !3466, !tbaa !312
  %cmp16.not = icmp eq ptr %43, null, !dbg !3467
  br i1 %cmp16.not, label %for.cond89.preheader, label %for.cond17.preheader, !dbg !3468, !llvm.loop !3523

for.cond89.preheader:                             ; preds = %for.inc72, %for.cond.preheader
  call void @llvm.dbg.value(metadata ptr undef, metadata !3433, metadata !DIExpression()), !dbg !3436
  %ordered79 = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 7, !dbg !3525
  %44 = load ptr, ptr %ordered79, align 8, !dbg !3525, !tbaa !301
  store ptr null, ptr %parent12, align 8, !dbg !3527, !tbaa !288
  store ptr null, ptr %ordered79, align 8, !dbg !3528, !tbaa !301
  %attributes = getelementptr inbounds %struct._XMLTreeRoot, ptr %root.0, i64 0, i32 5, !dbg !3529
  %45 = load ptr, ptr %attributes, align 8, !dbg !3529, !tbaa !929
  call void @llvm.dbg.value(metadata ptr %xml, metadata !3425, metadata !DIExpression(DW_OP_deref)), !dbg !3436
  call void @llvm.dbg.value(metadata ptr %extent, metadata !3429, metadata !DIExpression(DW_OP_deref)), !dbg !3436
  call void @llvm.dbg.value(metadata ptr %length, metadata !3430, metadata !DIExpression(DW_OP_deref)), !dbg !3436
  %call83 = call fastcc ptr @XMLTreeTagToXML(ptr noundef nonnull %xml_info, ptr noundef nonnull %xml, ptr noundef nonnull %length, ptr noundef nonnull %extent, i64 noundef 0, ptr noundef %45), !dbg !3530
  call void @llvm.dbg.value(metadata ptr %call83, metadata !3425, metadata !DIExpression()), !dbg !3436
  store ptr %call83, ptr %xml, align 8, !dbg !3531, !tbaa !312
  store ptr null, ptr %parent12, align 8, !dbg !3532, !tbaa !288
  store ptr %44, ptr %ordered79, align 8, !dbg !3533, !tbaa !301
  call void @llvm.dbg.value(metadata i64 0, metadata !3428, metadata !DIExpression()), !dbg !3436
  %46 = load ptr, ptr %processing_instructions, align 8, !dbg !3534, !tbaa !981
  %47 = load ptr, ptr %46, align 8, !dbg !3538, !tbaa !312
  %cmp92.not258 = icmp eq ptr %47, null, !dbg !3539
  br i1 %cmp92.not258, label %if.end163, label %for.cond95.preheader, !dbg !3540

for.cond95.preheader:                             ; preds = %for.cond89.preheader, %for.inc160
  %48 = phi ptr [ %69, %for.inc160 ], [ %46, %for.cond89.preheader ]
  %49 = phi ptr [ %70, %for.inc160 ], [ %47, %for.cond89.preheader ]
  %i.1259 = phi i64 [ %inc161, %for.inc160 ], [ 0, %for.cond89.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.1259, metadata !3428, metadata !DIExpression()), !dbg !3436
  br label %for.cond95, !dbg !3541

for.cond95:                                       ; preds = %for.cond95, %for.cond95.preheader
  %k.1 = phi i64 [ %inc103, %for.cond95 ], [ 2, %for.cond95.preheader ], !dbg !3544
  call void @llvm.dbg.value(metadata i64 %k.1, metadata !3432, metadata !DIExpression()), !dbg !3436
  %sub98 = add nsw i64 %k.1, -1, !dbg !3545
  %arrayidx99 = getelementptr inbounds ptr, ptr %49, i64 %sub98, !dbg !3547
  %50 = load ptr, ptr %arrayidx99, align 8, !dbg !3547, !tbaa !312
  %tobool100.not = icmp eq ptr %50, null, !dbg !3541
  %inc103 = add nuw nsw i64 %k.1, 1, !dbg !3548
  call void @llvm.dbg.value(metadata i64 %inc103, metadata !3432, metadata !DIExpression()), !dbg !3436
  br i1 %tobool100.not, label %for.end104, label %for.cond95, !dbg !3541, !llvm.loop !3549

for.end104:                                       ; preds = %for.cond95
  %arrayidx107 = getelementptr inbounds ptr, ptr %49, i64 1, !dbg !3551
  call void @llvm.dbg.value(metadata ptr undef, metadata !3426, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 1, metadata !3431, metadata !DIExpression()), !dbg !3436
  %p.2254 = load ptr, ptr %arrayidx107, align 8, !dbg !3552, !tbaa !312
  call void @llvm.dbg.value(metadata ptr %p.2254, metadata !3426, metadata !DIExpression()), !dbg !3436
  %cmp109.not255 = icmp eq ptr %p.2254, null, !dbg !3553
  br i1 %cmp109.not255, label %for.inc160, label %for.body111, !dbg !3556

for.body111:                                      ; preds = %for.end104, %for.inc157
  %51 = phi ptr [ %67, %for.inc157 ], [ %48, %for.end104 ]
  %52 = phi ptr [ %68, %for.inc157 ], [ %48, %for.end104 ], !dbg !3557
  %p.2257 = phi ptr [ %p.2, %for.inc157 ], [ %p.2254, %for.end104 ]
  %j.1256 = phi i64 [ %inc158, %for.inc157 ], [ 1, %for.end104 ]
  call void @llvm.dbg.value(metadata i64 %j.1256, metadata !3431, metadata !DIExpression()), !dbg !3436
  %arrayidx113 = getelementptr inbounds ptr, ptr %52, i64 %i.1259, !dbg !3560
  %53 = load ptr, ptr %arrayidx113, align 8, !dbg !3560, !tbaa !312
  %arrayidx114 = getelementptr inbounds ptr, ptr %53, i64 %k.1, !dbg !3560
  %54 = load ptr, ptr %arrayidx114, align 8, !dbg !3560, !tbaa !312
  %sub115 = add nsw i64 %j.1256, -1, !dbg !3561
  %arrayidx116 = getelementptr inbounds i8, ptr %54, i64 %sub115, !dbg !3560
  %55 = load i8, ptr %arrayidx116, align 1, !dbg !3560, !tbaa !652
  %cmp118 = icmp eq i8 %55, 60, !dbg !3562
  br i1 %cmp118, label %for.inc157, label %if.end124, !dbg !3563

if.end124:                                        ; preds = %for.body111
  %56 = load ptr, ptr %53, align 8, !dbg !3564, !tbaa !312
  call void @llvm.dbg.value(metadata ptr %56, metadata !3427, metadata !DIExpression()), !dbg !3436
  %57 = load i64, ptr %length, align 8, !dbg !3565, !tbaa !480
  call void @llvm.dbg.value(metadata i64 %57, metadata !3430, metadata !DIExpression()), !dbg !3436
  %call128 = call i64 @strlen(ptr noundef nonnull %p.2257) #21, !dbg !3567
  %call130 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %56) #21, !dbg !3568
  %add129 = add i64 %57, 4096, !dbg !3569
  %add131 = add i64 %add129, %call128, !dbg !3570
  %add132 = add i64 %add131, %call130, !dbg !3571
  %58 = load i64, ptr %extent, align 8, !dbg !3572, !tbaa !480
  call void @llvm.dbg.value(metadata i64 %58, metadata !3429, metadata !DIExpression()), !dbg !3436
  %cmp133 = icmp ugt i64 %add132, %58, !dbg !3573
  br i1 %cmp133, label %if.then135, label %if.end124.if.end146_crit_edge, !dbg !3574

if.end124.if.end146_crit_edge:                    ; preds = %if.end124
  %.pre = load ptr, ptr %xml, align 8, !dbg !3575, !tbaa !312
  br label %if.end146, !dbg !3574

if.then135:                                       ; preds = %if.end124
  call void @llvm.dbg.value(metadata i64 %add132, metadata !3429, metadata !DIExpression()), !dbg !3436
  store i64 %add132, ptr %extent, align 8, !dbg !3576, !tbaa !480
  %59 = load ptr, ptr %xml, align 8, !dbg !3578, !tbaa !312
  call void @llvm.dbg.value(metadata ptr %59, metadata !3425, metadata !DIExpression()), !dbg !3436
  %call141 = call ptr @ResizeQuantumMemory(ptr noundef %59, i64 noundef %add132, i64 noundef 1) #23, !dbg !3579
  call void @llvm.dbg.value(metadata ptr %call141, metadata !3425, metadata !DIExpression()), !dbg !3436
  store ptr %call141, ptr %xml, align 8, !dbg !3580, !tbaa !312
  %cmp142 = icmp eq ptr %call141, null, !dbg !3581
  br i1 %cmp142, label %cleanup, label %if.then135.if.end146_crit_edge, !dbg !3583

if.then135.if.end146_crit_edge:                   ; preds = %if.then135
  %.pre261 = load i64, ptr %length, align 8, !dbg !3584, !tbaa !480
  %.pre262 = load i64, ptr %extent, align 8, !dbg !3585, !tbaa !480
  br label %if.end146, !dbg !3583

if.end146:                                        ; preds = %if.then135.if.end146_crit_edge, %if.end124.if.end146_crit_edge
  %60 = phi i64 [ %58, %if.end124.if.end146_crit_edge ], [ %.pre262, %if.then135.if.end146_crit_edge ], !dbg !3585
  %61 = phi i64 [ %57, %if.end124.if.end146_crit_edge ], [ %.pre261, %if.then135.if.end146_crit_edge ], !dbg !3584
  %62 = phi ptr [ %.pre, %if.end124.if.end146_crit_edge ], [ %call141, %if.then135.if.end146_crit_edge ], !dbg !3575
  call void @llvm.dbg.value(metadata ptr %62, metadata !3425, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 %61, metadata !3430, metadata !DIExpression()), !dbg !3436
  %add.ptr147 = getelementptr inbounds i8, ptr %62, i64 %61, !dbg !3586
  call void @llvm.dbg.value(metadata i64 %60, metadata !3429, metadata !DIExpression()), !dbg !3436
  %63 = load i8, ptr %p.2257, align 1, !dbg !3587, !tbaa !652
  %cmp149.not = icmp eq i8 %63, 0, !dbg !3588
  %cond151 = select i1 %cmp149.not, ptr @.str, ptr @.str.49, !dbg !3587
  %call152 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %add.ptr147, i64 noundef %60, ptr noundef nonnull @.str.50, ptr noundef %56, ptr noundef nonnull %cond151, ptr noundef nonnull %p.2257) #20, !dbg !3589
  %64 = load i64, ptr %length, align 8, !dbg !3590, !tbaa !480
  call void @llvm.dbg.value(metadata i64 %64, metadata !3430, metadata !DIExpression()), !dbg !3436
  %add153 = add i64 %64, %call152, !dbg !3590
  call void @llvm.dbg.value(metadata i64 %add153, metadata !3430, metadata !DIExpression()), !dbg !3436
  store i64 %add153, ptr %length, align 8, !dbg !3590, !tbaa !480
  %65 = load ptr, ptr %processing_instructions, align 8, !dbg !3591, !tbaa !981
  %arrayidx155 = getelementptr inbounds ptr, ptr %65, i64 %i.1259, !dbg !3592
  %66 = load ptr, ptr %arrayidx155, align 8, !dbg !3592, !tbaa !312
  call void @llvm.dbg.value(metadata ptr undef, metadata !3426, metadata !DIExpression()), !dbg !3436
  br label %for.inc157, !dbg !3593

for.inc157:                                       ; preds = %for.body111, %if.end146
  %67 = phi ptr [ %65, %if.end146 ], [ %51, %for.body111 ]
  %68 = phi ptr [ %65, %if.end146 ], [ %52, %for.body111 ]
  %.pn = phi ptr [ %66, %if.end146 ], [ %53, %for.body111 ]
  %p.3.in = getelementptr inbounds ptr, ptr %.pn, i64 %j.1256, !dbg !3594
  call void @llvm.dbg.value(metadata ptr undef, metadata !3426, metadata !DIExpression()), !dbg !3436
  %inc158 = add nuw nsw i64 %j.1256, 1, !dbg !3595
  call void @llvm.dbg.value(metadata i64 %inc158, metadata !3431, metadata !DIExpression()), !dbg !3436
  %p.2 = load ptr, ptr %p.3.in, align 8, !dbg !3552, !tbaa !312
  call void @llvm.dbg.value(metadata ptr %p.2, metadata !3426, metadata !DIExpression()), !dbg !3436
  %cmp109.not = icmp eq ptr %p.2, null, !dbg !3553
  br i1 %cmp109.not, label %for.inc160, label %for.body111, !dbg !3556, !llvm.loop !3596

for.inc160:                                       ; preds = %for.inc157, %for.end104
  %69 = phi ptr [ %48, %for.end104 ], [ %67, %for.inc157 ], !dbg !3534
  %inc161 = add nuw nsw i64 %i.1259, 1, !dbg !3598
  call void @llvm.dbg.value(metadata i64 %inc161, metadata !3428, metadata !DIExpression()), !dbg !3436
  %arrayidx91 = getelementptr inbounds ptr, ptr %69, i64 %inc161, !dbg !3538
  %70 = load ptr, ptr %arrayidx91, align 8, !dbg !3538, !tbaa !312
  %cmp92.not = icmp eq ptr %70, null, !dbg !3539
  br i1 %cmp92.not, label %if.end163.loopexit, label %for.cond95.preheader, !dbg !3540, !llvm.loop !3599

if.end163.critedge:                               ; preds = %if.then11
  call void @llvm.dbg.value(metadata ptr undef, metadata !3433, metadata !DIExpression()), !dbg !3436
  %ordered79.c = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info, i64 0, i32 7, !dbg !3525
  %71 = load ptr, ptr %ordered79.c, align 8, !dbg !3525, !tbaa !301
  store ptr null, ptr %parent12, align 8, !dbg !3527, !tbaa !288
  store ptr null, ptr %ordered79.c, align 8, !dbg !3528, !tbaa !301
  %attributes.c = getelementptr inbounds %struct._XMLTreeRoot, ptr %root.0, i64 0, i32 5, !dbg !3529
  %72 = load ptr, ptr %attributes.c, align 8, !dbg !3529, !tbaa !929
  call void @llvm.dbg.value(metadata ptr %xml, metadata !3425, metadata !DIExpression(DW_OP_deref)), !dbg !3436
  call void @llvm.dbg.value(metadata ptr %extent, metadata !3429, metadata !DIExpression(DW_OP_deref)), !dbg !3436
  call void @llvm.dbg.value(metadata ptr %length, metadata !3430, metadata !DIExpression(DW_OP_deref)), !dbg !3436
  %call83.c = call fastcc ptr @XMLTreeTagToXML(ptr noundef nonnull %xml_info, ptr noundef nonnull %xml, ptr noundef nonnull %length, ptr noundef nonnull %extent, i64 noundef 0, ptr noundef %72), !dbg !3530
  call void @llvm.dbg.value(metadata ptr %call83, metadata !3425, metadata !DIExpression()), !dbg !3436
  store ptr %call83.c, ptr %xml, align 8, !dbg !3531, !tbaa !312
  store ptr %3, ptr %parent12, align 8, !dbg !3532, !tbaa !288
  store ptr %71, ptr %ordered79.c, align 8, !dbg !3533, !tbaa !301
  br label %if.end163, !dbg !3601

if.end163.loopexit:                               ; preds = %for.inc160
  %.pre263 = load ptr, ptr %xml, align 8, !dbg !3602, !tbaa !312
  br label %if.end163, !dbg !3602

if.end163:                                        ; preds = %if.end163.loopexit, %for.cond89.preheader, %if.end163.critedge
  %73 = phi ptr [ %.pre263, %if.end163.loopexit ], [ %call83, %for.cond89.preheader ], [ %call83.c, %if.end163.critedge ], !dbg !3602
  call void @llvm.dbg.value(metadata ptr %73, metadata !3425, metadata !DIExpression()), !dbg !3436
  %74 = load i64, ptr %length, align 8, !dbg !3603, !tbaa !480
  call void @llvm.dbg.value(metadata i64 %74, metadata !3430, metadata !DIExpression()), !dbg !3436
  %add164 = add i64 %74, 1, !dbg !3604
  %call165 = call ptr @ResizeQuantumMemory(ptr noundef %73, i64 noundef %add164, i64 noundef 1) #23, !dbg !3605
  br label %cleanup, !dbg !3606

cleanup:                                          ; preds = %if.then49, %if.then135, %if.end, %if.end163
  %retval.0 = phi ptr [ %call165, %if.end163 ], [ null, %if.end ], [ null, %if.then135 ], [ null, %if.then49 ], !dbg !3436
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %length) #20, !dbg !3607
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %extent) #20, !dbg !3607
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xml) #20, !dbg !3607
  ret ptr %retval.0, !dbg !3607
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @XMLTreeTagToXML(ptr nocapture noundef readonly %xml_info, ptr noundef %source, ptr noundef %length, ptr noundef %extent, i64 noundef %start, ptr noundef %attributes) unnamed_addr #0 !dbg !3608 {
entry:
  br label %tailrecurse, !dbg !3623

tailrecurse:                                      ; preds = %while.end174, %entry
  %xml_info.tr = phi ptr [ %xml_info, %entry ], [ %101, %while.end174 ]
  %start.tr = phi i64 [ %start, %entry ], [ %offset.0.lcssa431, %while.end174 ]
  call void @llvm.dbg.value(metadata ptr %xml_info.tr, metadata !3612, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata ptr %source, metadata !3613, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata ptr %length, metadata !3614, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata ptr %extent, metadata !3615, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i64 %start.tr, metadata !3616, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata ptr %attributes, metadata !3617, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata ptr @.str, metadata !3618, metadata !DIExpression()), !dbg !3625
  %parent = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info.tr, i64 0, i32 4, !dbg !3626
  %0 = load ptr, ptr %parent, align 8, !dbg !3626, !tbaa !288
  %cmp.not = icmp eq ptr %0, null, !dbg !3628
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3629

if.then:                                          ; preds = %tailrecurse
  %content2 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 2, !dbg !3630
  %1 = load ptr, ptr %content2, align 8, !dbg !3630, !tbaa !259
  call void @llvm.dbg.value(metadata ptr %1, metadata !3618, metadata !DIExpression()), !dbg !3625
  br label %if.end, !dbg !3631

if.end:                                           ; preds = %if.then, %tailrecurse
  %content.0 = phi ptr [ %1, %if.then ], [ @.str, %tailrecurse ], !dbg !3625
  call void @llvm.dbg.value(metadata ptr %content.0, metadata !3618, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i64 0, metadata !3621, metadata !DIExpression()), !dbg !3625
  %add.ptr = getelementptr inbounds i8, ptr %content.0, i64 %start.tr, !dbg !3632
  %offset3 = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info.tr, i64 0, i32 3, !dbg !3633
  %2 = load i64, ptr %offset3, align 8, !dbg !3633, !tbaa !285
  %sub = sub i64 %2, %start.tr, !dbg !3634
  %call = tail call fastcc ptr @EncodePredefinedEntities(ptr noundef %add.ptr, i64 noundef %sub, ptr noundef %source, ptr noundef %length, ptr noundef %extent, i32 noundef 0), !dbg !3635
  store ptr %call, ptr %source, align 8, !dbg !3636, !tbaa !312
  %3 = load i64, ptr %length, align 8, !dbg !3637, !tbaa !480
  %4 = load ptr, ptr %xml_info.tr, align 8, !dbg !3639, !tbaa !247
  %call4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #21, !dbg !3640
  %add = add i64 %3, 4096, !dbg !3641
  %add5 = add i64 %add, %call4, !dbg !3642
  %5 = load i64, ptr %extent, align 8, !dbg !3643, !tbaa !480
  %cmp6 = icmp ugt i64 %add5, %5, !dbg !3644
  br i1 %cmp6, label %if.then7, label %if.end16, !dbg !3645

if.then7:                                         ; preds = %if.end
  store i64 %add5, ptr %extent, align 8, !dbg !3646, !tbaa !480
  %call12 = tail call ptr @ResizeQuantumMemory(ptr noundef %call, i64 noundef %add5, i64 noundef 1) #23, !dbg !3648
  store ptr %call12, ptr %source, align 8, !dbg !3649, !tbaa !312
  %cmp13 = icmp eq ptr %call12, null, !dbg !3650
  br i1 %cmp13, label %cleanup, label %if.then7.if.end16_crit_edge, !dbg !3652

if.then7.if.end16_crit_edge:                      ; preds = %if.then7
  %.pre = load i64, ptr %length, align 8, !dbg !3653, !tbaa !480
  %.pre444 = load i64, ptr %extent, align 8, !dbg !3654, !tbaa !480
  %.pre445 = load ptr, ptr %xml_info.tr, align 8, !dbg !3655, !tbaa !247
  br label %if.end16, !dbg !3652

if.end16:                                         ; preds = %if.then7.if.end16_crit_edge, %if.end
  %6 = phi ptr [ %.pre445, %if.then7.if.end16_crit_edge ], [ %4, %if.end ], !dbg !3655
  %7 = phi i64 [ %.pre444, %if.then7.if.end16_crit_edge ], [ %5, %if.end ], !dbg !3654
  %8 = phi i64 [ %.pre, %if.then7.if.end16_crit_edge ], [ %3, %if.end ], !dbg !3653
  %9 = phi ptr [ %call12, %if.then7.if.end16_crit_edge ], [ %call, %if.end ], !dbg !3656
  %add.ptr17 = getelementptr inbounds i8, ptr %9, i64 %8, !dbg !3657
  %call19 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %add.ptr17, i64 noundef %7, ptr noundef nonnull @.str.74, ptr noundef %6) #20, !dbg !3658
  %10 = load i64, ptr %length, align 8, !dbg !3659, !tbaa !480
  %add20 = add i64 %10, %call19, !dbg !3659
  store i64 %add20, ptr %length, align 8, !dbg !3659, !tbaa !480
  call void @llvm.dbg.value(metadata i64 0, metadata !3620, metadata !DIExpression()), !dbg !3625
  %attributes21 = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info.tr, i64 0, i32 1
  call void @llvm.dbg.value(metadata i64 0, metadata !3620, metadata !DIExpression()), !dbg !3625
  %11 = load ptr, ptr %attributes21, align 8, !dbg !3660, !tbaa !255
  %12 = load ptr, ptr %11, align 8, !dbg !3663, !tbaa !312
  %tobool.not422 = icmp eq ptr %12, null, !dbg !3664
  br i1 %tobool.not422, label %while.cond.preheader, label %for.body, !dbg !3664

while.cond.preheader:                             ; preds = %for.inc, %if.end16
  call void @llvm.dbg.value(metadata i64 0, metadata !3620, metadata !DIExpression()), !dbg !3625
  %13 = load ptr, ptr %attributes, align 8, !dbg !3665, !tbaa !312
  %cmp62.not425 = icmp eq ptr %13, null, !dbg !3666
  br i1 %cmp62.not425, label %while.end121, label %land.rhs.lr.ph, !dbg !3667

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %14 = load ptr, ptr %xml_info.tr, align 8, !tbaa !247
  br label %land.rhs, !dbg !3667

for.body:                                         ; preds = %if.end16, %for.inc
  %15 = phi ptr [ %41, %for.inc ], [ %12, %if.end16 ]
  %i.0423 = phi i64 [ %add60, %for.inc ], [ 0, %if.end16 ]
  call void @llvm.dbg.value(metadata i64 %i.0423, metadata !3620, metadata !DIExpression()), !dbg !3625
  %call24 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %xml_info.tr, ptr noundef nonnull %15), !dbg !3668
  call void @llvm.dbg.value(metadata ptr %call24, metadata !3619, metadata !DIExpression()), !dbg !3625
  %16 = load ptr, ptr %attributes21, align 8, !dbg !3670, !tbaa !255
  %add26 = or i64 %i.0423, 1, !dbg !3672
  %arrayidx27 = getelementptr inbounds ptr, ptr %16, i64 %add26, !dbg !3673
  %17 = load ptr, ptr %arrayidx27, align 8, !dbg !3673, !tbaa !312
  %cmp28.not = icmp eq ptr %call24, %17, !dbg !3674
  br i1 %cmp28.not, label %if.end30, label %for.inc, !dbg !3675

if.end30:                                         ; preds = %for.body
  %18 = load i64, ptr %length, align 8, !dbg !3676, !tbaa !480
  %arrayidx32 = getelementptr inbounds ptr, ptr %16, i64 %i.0423, !dbg !3678
  %19 = load ptr, ptr %arrayidx32, align 8, !dbg !3678, !tbaa !312
  %call33 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #21, !dbg !3679
  %add34 = add i64 %18, 4096, !dbg !3680
  %add35 = add i64 %add34, %call33, !dbg !3681
  %20 = load i64, ptr %extent, align 8, !dbg !3682, !tbaa !480
  %cmp36 = icmp ugt i64 %add35, %20, !dbg !3683
  br i1 %cmp36, label %if.then37, label %if.end30.if.end47_crit_edge, !dbg !3684

if.end30.if.end47_crit_edge:                      ; preds = %if.end30
  %.pre446 = load ptr, ptr %source, align 8, !dbg !3685, !tbaa !312
  br label %if.end47, !dbg !3684

if.then37:                                        ; preds = %if.end30
  store i64 %add35, ptr %extent, align 8, !dbg !3686, !tbaa !480
  %21 = load ptr, ptr %source, align 8, !dbg !3688, !tbaa !312
  %call43 = tail call ptr @ResizeQuantumMemory(ptr noundef %21, i64 noundef %add35, i64 noundef 1) #23, !dbg !3689
  store ptr %call43, ptr %source, align 8, !dbg !3690, !tbaa !312
  %cmp44 = icmp eq ptr %call43, null, !dbg !3691
  br i1 %cmp44, label %cleanup, label %if.then37.if.end47_crit_edge, !dbg !3693

if.then37.if.end47_crit_edge:                     ; preds = %if.then37
  %.pre447 = load i64, ptr %length, align 8, !dbg !3694, !tbaa !480
  %.pre448 = load i64, ptr %extent, align 8, !dbg !3695, !tbaa !480
  %.pre449 = load ptr, ptr %attributes21, align 8, !dbg !3696, !tbaa !255
  %arrayidx50.phi.trans.insert = getelementptr inbounds ptr, ptr %.pre449, i64 %i.0423
  %.pre450 = load ptr, ptr %arrayidx50.phi.trans.insert, align 8, !dbg !3697, !tbaa !312
  br label %if.end47, !dbg !3693

if.end47:                                         ; preds = %if.then37.if.end47_crit_edge, %if.end30.if.end47_crit_edge
  %22 = phi ptr [ %19, %if.end30.if.end47_crit_edge ], [ %.pre450, %if.then37.if.end47_crit_edge ], !dbg !3697
  %23 = phi i64 [ %20, %if.end30.if.end47_crit_edge ], [ %.pre448, %if.then37.if.end47_crit_edge ], !dbg !3695
  %24 = phi i64 [ %18, %if.end30.if.end47_crit_edge ], [ %.pre447, %if.then37.if.end47_crit_edge ], !dbg !3694
  %25 = phi ptr [ %.pre446, %if.end30.if.end47_crit_edge ], [ %call43, %if.then37.if.end47_crit_edge ], !dbg !3685
  %add.ptr48 = getelementptr inbounds i8, ptr %25, i64 %24, !dbg !3698
  %call51 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %add.ptr48, i64 noundef %23, ptr noundef nonnull @.str.75, ptr noundef %22) #20, !dbg !3699
  %26 = load i64, ptr %length, align 8, !dbg !3700, !tbaa !480
  %add52 = add i64 %26, %call51, !dbg !3700
  store i64 %add52, ptr %length, align 8, !dbg !3700, !tbaa !480
  %27 = load ptr, ptr %attributes21, align 8, !dbg !3701, !tbaa !255
  %arrayidx55 = getelementptr inbounds ptr, ptr %27, i64 %add26, !dbg !3702
  %28 = load ptr, ptr %arrayidx55, align 8, !dbg !3702, !tbaa !312
  call void @llvm.dbg.value(metadata ptr %28, metadata !3703, metadata !DIExpression()) #20, !dbg !3717
  call void @llvm.dbg.value(metadata i64 -1, metadata !3708, metadata !DIExpression()) #20, !dbg !3717
  call void @llvm.dbg.value(metadata ptr %source, metadata !3709, metadata !DIExpression()) #20, !dbg !3717
  call void @llvm.dbg.value(metadata ptr %length, metadata !3710, metadata !DIExpression()) #20, !dbg !3717
  call void @llvm.dbg.value(metadata ptr %extent, metadata !3711, metadata !DIExpression()) #20, !dbg !3717
  call void @llvm.dbg.value(metadata i32 1, metadata !3712, metadata !DIExpression()) #20, !dbg !3717
  %call.i = tail call ptr @CanonicalXMLContent(ptr noundef %28, i32 noundef 1) #20, !dbg !3719
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !3713, metadata !DIExpression()) #20, !dbg !3717
  %cmp4.i = icmp eq ptr %call.i, null, !dbg !3720
  br i1 %cmp4.i, label %EncodePredefinedEntities.exit, label %if.end6.i, !dbg !3722

if.end6.i:                                        ; preds = %if.end47
  %29 = load i64, ptr %length, align 8, !dbg !3723, !tbaa !480
  %call7.i = tail call i64 @strlen(ptr noundef nonnull %call.i) #21, !dbg !3725
  %add.i = add i64 %29, 4096, !dbg !3726
  %add8.i = add i64 %add.i, %call7.i, !dbg !3727
  %30 = load i64, ptr %extent, align 8, !dbg !3728, !tbaa !480
  %cmp9.i = icmp ugt i64 %add8.i, %30, !dbg !3729
  br i1 %cmp9.i, label %if.then10.i, label %if.end6.if.end18_crit_edge.i, !dbg !3730

if.end6.if.end18_crit_edge.i:                     ; preds = %if.end6.i
  %.pre.i = load ptr, ptr %source, align 8, !dbg !3731, !tbaa !312
  br label %if.end18.i, !dbg !3730

if.then10.i:                                      ; preds = %if.end6.i
  store i64 %add8.i, ptr %extent, align 8, !dbg !3732, !tbaa !480
  %31 = load ptr, ptr %source, align 8, !dbg !3734, !tbaa !312
  %call14.i = tail call ptr @ResizeQuantumMemory(ptr noundef %31, i64 noundef %add8.i, i64 noundef 1) #23, !dbg !3735
  store ptr %call14.i, ptr %source, align 8, !dbg !3736, !tbaa !312
  %cmp15.i = icmp eq ptr %call14.i, null, !dbg !3737
  br i1 %cmp15.i, label %EncodePredefinedEntities.exit, label %if.then10.if.end18_crit_edge.i, !dbg !3739

if.then10.if.end18_crit_edge.i:                   ; preds = %if.then10.i
  %.pre43.i = load i64, ptr %length, align 8, !dbg !3740, !tbaa !480
  %.pre44.i = load i64, ptr %extent, align 8, !dbg !3741, !tbaa !480
  br label %if.end18.i, !dbg !3739

if.end18.i:                                       ; preds = %if.then10.if.end18_crit_edge.i, %if.end6.if.end18_crit_edge.i
  %32 = phi i64 [ %30, %if.end6.if.end18_crit_edge.i ], [ %.pre44.i, %if.then10.if.end18_crit_edge.i ], !dbg !3741
  %33 = phi i64 [ %29, %if.end6.if.end18_crit_edge.i ], [ %.pre43.i, %if.then10.if.end18_crit_edge.i ], !dbg !3740
  %34 = phi ptr [ %.pre.i, %if.end6.if.end18_crit_edge.i ], [ %call14.i, %if.then10.if.end18_crit_edge.i ], !dbg !3731
  %add.ptr.i = getelementptr inbounds i8, ptr %34, i64 %33, !dbg !3742
  %call19.i = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %add.ptr.i, i64 noundef %32, ptr noundef nonnull @.str.79, ptr noundef nonnull %call.i) #20, !dbg !3743
  %35 = load i64, ptr %length, align 8, !dbg !3744, !tbaa !480
  %add20.i = add i64 %35, %call19.i, !dbg !3744
  store i64 %add20.i, ptr %length, align 8, !dbg !3744, !tbaa !480
  %call21.i = tail call ptr @DestroyString(ptr noundef nonnull %call.i) #20, !dbg !3745
  call void @llvm.dbg.value(metadata ptr %call21.i, metadata !3713, metadata !DIExpression()) #20, !dbg !3717
  br label %EncodePredefinedEntities.exit, !dbg !3746

EncodePredefinedEntities.exit:                    ; preds = %if.end47, %if.end18.i, %if.then10.i
  %36 = load ptr, ptr %source, align 8, !dbg !3747, !tbaa !312
  %37 = load i64, ptr %length, align 8, !dbg !3748, !tbaa !480
  %add.ptr57 = getelementptr inbounds i8, ptr %36, i64 %37, !dbg !3749
  %38 = load i64, ptr %extent, align 8, !dbg !3750, !tbaa !480
  %call58 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %add.ptr57, i64 noundef %38, ptr noundef nonnull @.str.76) #20, !dbg !3751
  %39 = load i64, ptr %length, align 8, !dbg !3752, !tbaa !480
  %add59 = add i64 %39, %call58, !dbg !3752
  store i64 %add59, ptr %length, align 8, !dbg !3752, !tbaa !480
  %.pre451 = load ptr, ptr %attributes21, align 8, !dbg !3660, !tbaa !255
  br label %for.inc, !dbg !3753

for.inc:                                          ; preds = %for.body, %EncodePredefinedEntities.exit
  %40 = phi ptr [ %16, %for.body ], [ %.pre451, %EncodePredefinedEntities.exit ], !dbg !3660
  %add60 = add nuw nsw i64 %i.0423, 2, !dbg !3754
  call void @llvm.dbg.value(metadata i64 %add60, metadata !3620, metadata !DIExpression()), !dbg !3625
  %arrayidx = getelementptr inbounds ptr, ptr %40, i64 %add60, !dbg !3663
  %41 = load ptr, ptr %arrayidx, align 8, !dbg !3663, !tbaa !312
  %tobool.not = icmp eq ptr %41, null, !dbg !3664
  br i1 %tobool.not, label %while.cond.preheader, label %for.body, !dbg !3664, !llvm.loop !3755

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %.pre452.pre = phi ptr [ %13, %land.rhs.lr.ph ], [ %43, %while.body ]
  %i.1426 = phi i64 [ 0, %land.rhs.lr.ph ], [ %inc, %while.body ]
  call void @llvm.dbg.value(metadata i64 %i.1426, metadata !3620, metadata !DIExpression()), !dbg !3625
  %42 = load ptr, ptr %.pre452.pre, align 8, !dbg !3757, !tbaa !312
  %call66 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) %14) #21, !dbg !3758
  %cmp67.not = icmp eq i32 %call66, 0, !dbg !3759
  br i1 %cmp67.not, label %land.rhs71.preheader, label %while.body, !dbg !3760

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i64 %i.1426, 1, !dbg !3761
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3620, metadata !DIExpression()), !dbg !3625
  %arrayidx61 = getelementptr inbounds ptr, ptr %attributes, i64 %inc, !dbg !3665
  %43 = load ptr, ptr %arrayidx61, align 8, !dbg !3665, !tbaa !312
  %cmp62.not = icmp eq ptr %43, null, !dbg !3666
  br i1 %cmp62.not, label %while.end121, label %land.rhs, !dbg !3667, !llvm.loop !3762

land.rhs71.preheader:                             ; preds = %land.rhs
  %arrayidx61.le = getelementptr inbounds ptr, ptr %attributes, i64 %i.1426, !dbg !3665
  call void @llvm.dbg.value(metadata i64 1, metadata !3622, metadata !DIExpression()), !dbg !3625
  br label %land.rhs71, !dbg !3763

land.rhs71:                                       ; preds = %land.rhs71.preheader, %while.cond68.backedge
  %44 = phi ptr [ %49, %while.cond68.backedge ], [ %.pre452.pre, %land.rhs71.preheader ]
  %j.0429 = phi i64 [ %j.0.be, %while.cond68.backedge ], [ 1, %land.rhs71.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.0429, metadata !3622, metadata !DIExpression()), !dbg !3625
  %arrayidx73 = getelementptr inbounds ptr, ptr %44, i64 %j.0429, !dbg !3764
  %45 = load ptr, ptr %arrayidx73, align 8, !dbg !3764, !tbaa !312
  %cmp74.not = icmp eq ptr %45, null, !dbg !3765
  br i1 %cmp74.not, label %while.end121, label %while.body76, !dbg !3763

while.body76:                                     ; preds = %land.rhs71
  %add78 = add nuw nsw i64 %j.0429, 1, !dbg !3766
  %arrayidx79 = getelementptr inbounds ptr, ptr %44, i64 %add78, !dbg !3769
  %46 = load ptr, ptr %arrayidx79, align 8, !dbg !3769, !tbaa !312
  %cmp80 = icmp eq ptr %46, null, !dbg !3770
  br i1 %cmp80, label %while.cond68.backedge, label %lor.lhs.false, !dbg !3771

lor.lhs.false:                                    ; preds = %while.body76
  %call83 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %xml_info.tr, ptr noundef nonnull %45), !dbg !3772
  %47 = load ptr, ptr %arrayidx61.le, align 8, !dbg !3773, !tbaa !312
  %arrayidx86 = getelementptr inbounds ptr, ptr %47, i64 %add78, !dbg !3773
  %48 = load ptr, ptr %arrayidx86, align 8, !dbg !3773, !tbaa !312
  %cmp87.not = icmp eq ptr %call83, %48, !dbg !3774
  br i1 %cmp87.not, label %if.end90, label %while.cond68.backedge, !dbg !3775

while.cond68.backedge:                            ; preds = %while.body76, %lor.lhs.false, %EncodePredefinedEntities.exit372
  %49 = phi ptr [ %.pre458, %EncodePredefinedEntities.exit372 ], [ %47, %lor.lhs.false ], [ %44, %while.body76 ], !dbg !3776
  %j.0.be = add nuw nsw i64 %j.0429, 3, !dbg !3777
  call void @llvm.dbg.value(metadata i64 %j.0.be, metadata !3622, metadata !DIExpression()), !dbg !3625
  %cmp70.not = icmp eq ptr %49, null, !dbg !3778
  br i1 %cmp70.not, label %while.end121, label %land.rhs71, !dbg !3779, !llvm.loop !3780

if.end90:                                         ; preds = %lor.lhs.false
  %50 = load i64, ptr %length, align 8, !dbg !3782, !tbaa !480
  %arrayidx92 = getelementptr inbounds ptr, ptr %47, i64 %j.0429, !dbg !3784
  %51 = load ptr, ptr %arrayidx92, align 8, !dbg !3784, !tbaa !312
  %call93 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %51) #21, !dbg !3785
  %add94 = add i64 %50, 4096, !dbg !3786
  %add95 = add i64 %add94, %call93, !dbg !3787
  %52 = load i64, ptr %extent, align 8, !dbg !3788, !tbaa !480
  %cmp96 = icmp ugt i64 %add95, %52, !dbg !3789
  br i1 %cmp96, label %if.then97, label %if.end90.if.end107_crit_edge, !dbg !3790

if.end90.if.end107_crit_edge:                     ; preds = %if.end90
  %.pre453 = load ptr, ptr %source, align 8, !dbg !3791, !tbaa !312
  br label %if.end107, !dbg !3790

if.then97:                                        ; preds = %if.end90
  store i64 %add95, ptr %extent, align 8, !dbg !3792, !tbaa !480
  %53 = load ptr, ptr %source, align 8, !dbg !3794, !tbaa !312
  %call103 = tail call ptr @ResizeQuantumMemory(ptr noundef %53, i64 noundef %add95, i64 noundef 1) #23, !dbg !3795
  store ptr %call103, ptr %source, align 8, !dbg !3796, !tbaa !312
  %cmp104 = icmp eq ptr %call103, null, !dbg !3797
  br i1 %cmp104, label %cleanup, label %if.then97.if.end107_crit_edge, !dbg !3799

if.then97.if.end107_crit_edge:                    ; preds = %if.then97
  %.pre454 = load i64, ptr %length, align 8, !dbg !3800, !tbaa !480
  %.pre455 = load i64, ptr %extent, align 8, !dbg !3801, !tbaa !480
  %.pre456 = load ptr, ptr %arrayidx61.le, align 8, !dbg !3802, !tbaa !312
  %arrayidx110.phi.trans.insert = getelementptr inbounds ptr, ptr %.pre456, i64 %j.0429
  %.pre457 = load ptr, ptr %arrayidx110.phi.trans.insert, align 8, !dbg !3802, !tbaa !312
  br label %if.end107, !dbg !3799

if.end107:                                        ; preds = %if.then97.if.end107_crit_edge, %if.end90.if.end107_crit_edge
  %54 = phi ptr [ %51, %if.end90.if.end107_crit_edge ], [ %.pre457, %if.then97.if.end107_crit_edge ], !dbg !3802
  %55 = phi i64 [ %52, %if.end90.if.end107_crit_edge ], [ %.pre455, %if.then97.if.end107_crit_edge ], !dbg !3801
  %56 = phi i64 [ %50, %if.end90.if.end107_crit_edge ], [ %.pre454, %if.then97.if.end107_crit_edge ], !dbg !3800
  %57 = phi ptr [ %.pre453, %if.end90.if.end107_crit_edge ], [ %call103, %if.then97.if.end107_crit_edge ], !dbg !3791
  %add.ptr108 = getelementptr inbounds i8, ptr %57, i64 %56, !dbg !3803
  %call111 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %add.ptr108, i64 noundef %55, ptr noundef nonnull @.str.75, ptr noundef %54) #20, !dbg !3804
  %58 = load i64, ptr %length, align 8, !dbg !3805, !tbaa !480
  %add112 = add i64 %58, %call111, !dbg !3805
  store i64 %add112, ptr %length, align 8, !dbg !3805, !tbaa !480
  %59 = load ptr, ptr %arrayidx61.le, align 8, !dbg !3806, !tbaa !312
  %arrayidx115 = getelementptr inbounds ptr, ptr %59, i64 %add78, !dbg !3806
  %60 = load ptr, ptr %arrayidx115, align 8, !dbg !3806, !tbaa !312
  call void @llvm.dbg.value(metadata ptr %60, metadata !3703, metadata !DIExpression()) #20, !dbg !3807
  call void @llvm.dbg.value(metadata i64 -1, metadata !3708, metadata !DIExpression()) #20, !dbg !3807
  call void @llvm.dbg.value(metadata ptr %source, metadata !3709, metadata !DIExpression()) #20, !dbg !3807
  call void @llvm.dbg.value(metadata ptr %length, metadata !3710, metadata !DIExpression()) #20, !dbg !3807
  call void @llvm.dbg.value(metadata ptr %extent, metadata !3711, metadata !DIExpression()) #20, !dbg !3807
  call void @llvm.dbg.value(metadata i32 1, metadata !3712, metadata !DIExpression()) #20, !dbg !3807
  %call.i350 = tail call ptr @CanonicalXMLContent(ptr noundef %60, i32 noundef 1) #20, !dbg !3809
  call void @llvm.dbg.value(metadata ptr %call.i350, metadata !3713, metadata !DIExpression()) #20, !dbg !3807
  %cmp4.i351 = icmp eq ptr %call.i350, null, !dbg !3810
  br i1 %cmp4.i351, label %EncodePredefinedEntities.exit372, label %if.end6.i356, !dbg !3811

if.end6.i356:                                     ; preds = %if.end107
  %61 = load i64, ptr %length, align 8, !dbg !3812, !tbaa !480
  %call7.i352 = tail call i64 @strlen(ptr noundef nonnull %call.i350) #21, !dbg !3813
  %add.i353 = add i64 %61, 4096, !dbg !3814
  %add8.i354 = add i64 %add.i353, %call7.i352, !dbg !3815
  %62 = load i64, ptr %extent, align 8, !dbg !3816, !tbaa !480
  %cmp9.i355 = icmp ugt i64 %add8.i354, %62, !dbg !3817
  br i1 %cmp9.i355, label %if.then10.i361, label %if.end6.if.end18_crit_edge.i358, !dbg !3818

if.end6.if.end18_crit_edge.i358:                  ; preds = %if.end6.i356
  %.pre.i357 = load ptr, ptr %source, align 8, !dbg !3819, !tbaa !312
  br label %if.end18.i369, !dbg !3818

if.then10.i361:                                   ; preds = %if.end6.i356
  store i64 %add8.i354, ptr %extent, align 8, !dbg !3820, !tbaa !480
  %63 = load ptr, ptr %source, align 8, !dbg !3821, !tbaa !312
  %call14.i359 = tail call ptr @ResizeQuantumMemory(ptr noundef %63, i64 noundef %add8.i354, i64 noundef 1) #23, !dbg !3822
  store ptr %call14.i359, ptr %source, align 8, !dbg !3823, !tbaa !312
  %cmp15.i360 = icmp eq ptr %call14.i359, null, !dbg !3824
  br i1 %cmp15.i360, label %EncodePredefinedEntities.exit372, label %if.then10.if.end18_crit_edge.i364, !dbg !3825

if.then10.if.end18_crit_edge.i364:                ; preds = %if.then10.i361
  %.pre43.i362 = load i64, ptr %length, align 8, !dbg !3826, !tbaa !480
  %.pre44.i363 = load i64, ptr %extent, align 8, !dbg !3827, !tbaa !480
  br label %if.end18.i369, !dbg !3825

if.end18.i369:                                    ; preds = %if.then10.if.end18_crit_edge.i364, %if.end6.if.end18_crit_edge.i358
  %64 = phi i64 [ %62, %if.end6.if.end18_crit_edge.i358 ], [ %.pre44.i363, %if.then10.if.end18_crit_edge.i364 ], !dbg !3827
  %65 = phi i64 [ %61, %if.end6.if.end18_crit_edge.i358 ], [ %.pre43.i362, %if.then10.if.end18_crit_edge.i364 ], !dbg !3826
  %66 = phi ptr [ %.pre.i357, %if.end6.if.end18_crit_edge.i358 ], [ %call14.i359, %if.then10.if.end18_crit_edge.i364 ], !dbg !3819
  %add.ptr.i365 = getelementptr inbounds i8, ptr %66, i64 %65, !dbg !3828
  %call19.i366 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %add.ptr.i365, i64 noundef %64, ptr noundef nonnull @.str.79, ptr noundef nonnull %call.i350) #20, !dbg !3829
  %67 = load i64, ptr %length, align 8, !dbg !3830, !tbaa !480
  %add20.i367 = add i64 %67, %call19.i366, !dbg !3830
  store i64 %add20.i367, ptr %length, align 8, !dbg !3830, !tbaa !480
  %call21.i368 = tail call ptr @DestroyString(ptr noundef nonnull %call.i350) #20, !dbg !3831
  call void @llvm.dbg.value(metadata ptr %call21.i368, metadata !3713, metadata !DIExpression()) #20, !dbg !3807
  br label %EncodePredefinedEntities.exit372, !dbg !3832

EncodePredefinedEntities.exit372:                 ; preds = %if.end107, %if.end18.i369, %if.then10.i361
  %68 = load ptr, ptr %source, align 8, !dbg !3833, !tbaa !312
  %69 = load i64, ptr %length, align 8, !dbg !3834, !tbaa !480
  %add.ptr117 = getelementptr inbounds i8, ptr %68, i64 %69, !dbg !3835
  %70 = load i64, ptr %extent, align 8, !dbg !3836, !tbaa !480
  %call118 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %add.ptr117, i64 noundef %70, ptr noundef nonnull @.str.76) #20, !dbg !3837
  %71 = load i64, ptr %length, align 8, !dbg !3838, !tbaa !480
  %add119 = add i64 %71, %call118, !dbg !3838
  store i64 %add119, ptr %length, align 8, !dbg !3838, !tbaa !480
  call void @llvm.dbg.value(metadata i64 %j.0429, metadata !3622, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !3625
  %.pre458 = load ptr, ptr %arrayidx61.le, align 8, !dbg !3776, !tbaa !312
  br label %while.cond68.backedge, !dbg !3763

while.end121:                                     ; preds = %while.body, %land.rhs71, %while.cond68.backedge, %while.cond.preheader
  %72 = load ptr, ptr %source, align 8, !dbg !3839, !tbaa !312
  %73 = load i64, ptr %length, align 8, !dbg !3840, !tbaa !480
  %add.ptr122 = getelementptr inbounds i8, ptr %72, i64 %73, !dbg !3841
  %74 = load i64, ptr %extent, align 8, !dbg !3842, !tbaa !480
  %content123 = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info.tr, i64 0, i32 2, !dbg !3843
  %75 = load ptr, ptr %content123, align 8, !dbg !3843, !tbaa !259
  %76 = load i8, ptr %75, align 1, !dbg !3844, !tbaa !652
  %tobool124.not = icmp eq i8 %76, 0, !dbg !3844
  %cond = select i1 %tobool124.not, ptr @.str.77, ptr @.str.72, !dbg !3844
  %call125 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %add.ptr122, i64 noundef %74, ptr noundef nonnull %cond) #20, !dbg !3845
  %77 = load i64, ptr %length, align 8, !dbg !3846, !tbaa !480
  %add126 = add i64 %77, %call125, !dbg !3846
  store i64 %add126, ptr %length, align 8, !dbg !3846, !tbaa !480
  %child = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info.tr, i64 0, i32 8, !dbg !3847
  %78 = load ptr, ptr %child, align 8, !dbg !3847, !tbaa !291
  %cmp127.not = icmp eq ptr %78, null, !dbg !3849
  br i1 %cmp127.not, label %if.else, label %if.then129, !dbg !3850

if.then129:                                       ; preds = %while.end121
  %call131 = tail call fastcc ptr @XMLTreeTagToXML(ptr noundef nonnull %78, ptr noundef nonnull %source, ptr noundef nonnull %length, ptr noundef nonnull %extent, i64 noundef 0, ptr noundef nonnull %attributes), !dbg !3851
  br label %if.end134, !dbg !3852

if.else:                                          ; preds = %while.end121
  %79 = load ptr, ptr %content123, align 8, !dbg !3853, !tbaa !259
  call void @llvm.dbg.value(metadata ptr %79, metadata !3703, metadata !DIExpression()) #20, !dbg !3854
  call void @llvm.dbg.value(metadata i64 -1, metadata !3708, metadata !DIExpression()) #20, !dbg !3854
  call void @llvm.dbg.value(metadata ptr %source, metadata !3709, metadata !DIExpression()) #20, !dbg !3854
  call void @llvm.dbg.value(metadata ptr %length, metadata !3710, metadata !DIExpression()) #20, !dbg !3854
  call void @llvm.dbg.value(metadata ptr %extent, metadata !3711, metadata !DIExpression()) #20, !dbg !3854
  call void @llvm.dbg.value(metadata i32 0, metadata !3712, metadata !DIExpression()) #20, !dbg !3854
  %call.i373 = tail call ptr @CanonicalXMLContent(ptr noundef %79, i32 noundef 0) #20, !dbg !3856
  call void @llvm.dbg.value(metadata ptr %call.i373, metadata !3713, metadata !DIExpression()) #20, !dbg !3854
  %cmp4.i374 = icmp eq ptr %call.i373, null, !dbg !3857
  br i1 %cmp4.i374, label %cleanup.sink.split.i393, label %if.end6.i379, !dbg !3858

if.end6.i379:                                     ; preds = %if.else
  %80 = load i64, ptr %length, align 8, !dbg !3859, !tbaa !480
  %call7.i375 = tail call i64 @strlen(ptr noundef nonnull %call.i373) #21, !dbg !3860
  %add.i376 = add i64 %80, 4096, !dbg !3861
  %add8.i377 = add i64 %add.i376, %call7.i375, !dbg !3862
  %81 = load i64, ptr %extent, align 8, !dbg !3863, !tbaa !480
  %cmp9.i378 = icmp ugt i64 %add8.i377, %81, !dbg !3864
  br i1 %cmp9.i378, label %if.then10.i384, label %if.end6.if.end18_crit_edge.i381, !dbg !3865

if.end6.if.end18_crit_edge.i381:                  ; preds = %if.end6.i379
  %.pre.i380 = load ptr, ptr %source, align 8, !dbg !3866, !tbaa !312
  br label %if.end18.i392, !dbg !3865

if.then10.i384:                                   ; preds = %if.end6.i379
  store i64 %add8.i377, ptr %extent, align 8, !dbg !3867, !tbaa !480
  %82 = load ptr, ptr %source, align 8, !dbg !3868, !tbaa !312
  %call14.i382 = tail call ptr @ResizeQuantumMemory(ptr noundef %82, i64 noundef %add8.i377, i64 noundef 1) #23, !dbg !3869
  store ptr %call14.i382, ptr %source, align 8, !dbg !3870, !tbaa !312
  %cmp15.i383 = icmp eq ptr %call14.i382, null, !dbg !3871
  br i1 %cmp15.i383, label %if.end134, label %if.then10.if.end18_crit_edge.i387, !dbg !3872

if.then10.if.end18_crit_edge.i387:                ; preds = %if.then10.i384
  %.pre43.i385 = load i64, ptr %length, align 8, !dbg !3873, !tbaa !480
  %.pre44.i386 = load i64, ptr %extent, align 8, !dbg !3874, !tbaa !480
  br label %if.end18.i392, !dbg !3872

if.end18.i392:                                    ; preds = %if.then10.if.end18_crit_edge.i387, %if.end6.if.end18_crit_edge.i381
  %83 = phi i64 [ %81, %if.end6.if.end18_crit_edge.i381 ], [ %.pre44.i386, %if.then10.if.end18_crit_edge.i387 ], !dbg !3874
  %84 = phi i64 [ %80, %if.end6.if.end18_crit_edge.i381 ], [ %.pre43.i385, %if.then10.if.end18_crit_edge.i387 ], !dbg !3873
  %85 = phi ptr [ %.pre.i380, %if.end6.if.end18_crit_edge.i381 ], [ %call14.i382, %if.then10.if.end18_crit_edge.i387 ], !dbg !3866
  %add.ptr.i388 = getelementptr inbounds i8, ptr %85, i64 %84, !dbg !3875
  %call19.i389 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %add.ptr.i388, i64 noundef %83, ptr noundef nonnull @.str.79, ptr noundef nonnull %call.i373) #20, !dbg !3876
  %86 = load i64, ptr %length, align 8, !dbg !3877, !tbaa !480
  %add20.i390 = add i64 %86, %call19.i389, !dbg !3877
  store i64 %add20.i390, ptr %length, align 8, !dbg !3877, !tbaa !480
  %call21.i391 = tail call ptr @DestroyString(ptr noundef nonnull %call.i373) #20, !dbg !3878
  call void @llvm.dbg.value(metadata ptr %call21.i391, metadata !3713, metadata !DIExpression()) #20, !dbg !3854
  br label %cleanup.sink.split.i393, !dbg !3879

cleanup.sink.split.i393:                          ; preds = %if.end18.i392, %if.else
  %87 = load ptr, ptr %source, align 8, !dbg !3854, !tbaa !312
  br label %if.end134, !dbg !3880

if.end134:                                        ; preds = %cleanup.sink.split.i393, %if.then10.i384, %if.then129
  %storemerge = phi ptr [ %call131, %if.then129 ], [ null, %if.then10.i384 ], [ %87, %cleanup.sink.split.i393 ], !dbg !3881
  store ptr %storemerge, ptr %source, align 8, !dbg !3881, !tbaa !312
  %88 = load i64, ptr %length, align 8, !dbg !3882, !tbaa !480
  %89 = load ptr, ptr %xml_info.tr, align 8, !dbg !3884, !tbaa !247
  %call136 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %89) #21, !dbg !3885
  %add137 = add i64 %88, 4096, !dbg !3886
  %add138 = add i64 %add137, %call136, !dbg !3887
  %90 = load i64, ptr %extent, align 8, !dbg !3888, !tbaa !480
  %cmp139 = icmp ugt i64 %add138, %90, !dbg !3889
  br i1 %cmp139, label %if.then141, label %if.end151, !dbg !3890

if.then141:                                       ; preds = %if.end134
  store i64 %add138, ptr %extent, align 8, !dbg !3891, !tbaa !480
  %call146 = tail call ptr @ResizeQuantumMemory(ptr noundef %storemerge, i64 noundef %add138, i64 noundef 1) #23, !dbg !3893
  store ptr %call146, ptr %source, align 8, !dbg !3894, !tbaa !312
  %cmp147 = icmp eq ptr %call146, null, !dbg !3895
  br i1 %cmp147, label %cleanup, label %if.end151, !dbg !3897

if.end151:                                        ; preds = %if.then141, %if.end134
  %91 = phi ptr [ %call146, %if.then141 ], [ %storemerge, %if.end134 ]
  %92 = load ptr, ptr %content123, align 8, !dbg !3898, !tbaa !259
  %93 = load i8, ptr %92, align 1, !dbg !3900, !tbaa !652
  %cmp154.not = icmp eq i8 %93, 0, !dbg !3901
  br i1 %cmp154.not, label %if.end161, label %if.then156, !dbg !3902

if.then156:                                       ; preds = %if.end151
  %94 = load i64, ptr %length, align 8, !dbg !3903, !tbaa !480
  %add.ptr157 = getelementptr inbounds i8, ptr %91, i64 %94, !dbg !3904
  %95 = load i64, ptr %extent, align 8, !dbg !3905, !tbaa !480
  %96 = load ptr, ptr %xml_info.tr, align 8, !dbg !3906, !tbaa !247
  %call159 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %add.ptr157, i64 noundef %95, ptr noundef nonnull @.str.78, ptr noundef %96) #20, !dbg !3907
  %97 = load i64, ptr %length, align 8, !dbg !3908, !tbaa !480
  %add160 = add i64 %97, %call159, !dbg !3908
  store i64 %add160, ptr %length, align 8, !dbg !3908, !tbaa !480
  br label %if.end161, !dbg !3909

if.end161:                                        ; preds = %if.then156, %if.end151
  call void @llvm.dbg.value(metadata i64 0, metadata !3621, metadata !DIExpression()), !dbg !3625
  %98 = load i8, ptr %content.0, align 1, !dbg !3910, !tbaa !652
  %cmp165.not433 = icmp eq i8 %98, 0, !dbg !3911
  br i1 %cmp165.not433, label %while.end174, label %land.rhs167.lr.ph, !dbg !3912

land.rhs167.lr.ph:                                ; preds = %if.end161
  %99 = load i64, ptr %offset3, align 8, !tbaa !285
  br label %land.rhs167, !dbg !3912

land.rhs167:                                      ; preds = %land.rhs167.lr.ph, %while.body172
  %offset.0434 = phi i64 [ 0, %land.rhs167.lr.ph ], [ %inc173, %while.body172 ]
  call void @llvm.dbg.value(metadata i64 %offset.0434, metadata !3621, metadata !DIExpression()), !dbg !3625
  %exitcond.not = icmp eq i64 %offset.0434, %99, !dbg !3913
  br i1 %exitcond.not, label %while.end174, label %while.body172, !dbg !3914

while.body172:                                    ; preds = %land.rhs167
  %inc173 = add i64 %offset.0434, 1, !dbg !3915
  call void @llvm.dbg.value(metadata i64 %inc173, metadata !3621, metadata !DIExpression()), !dbg !3625
  %arrayidx163 = getelementptr inbounds i8, ptr %content.0, i64 %inc173, !dbg !3910
  %100 = load i8, ptr %arrayidx163, align 1, !dbg !3910, !tbaa !652
  %cmp165.not = icmp eq i8 %100, 0, !dbg !3911
  br i1 %cmp165.not, label %while.end174, label %land.rhs167, !dbg !3912, !llvm.loop !3916

while.end174:                                     ; preds = %land.rhs167, %while.body172, %if.end161
  %offset.0.lcssa431 = phi i64 [ 0, %if.end161 ], [ %inc173, %while.body172 ], [ %99, %land.rhs167 ]
  %ordered = getelementptr inbounds %struct._XMLTreeInfo, ptr %xml_info.tr, i64 0, i32 7, !dbg !3917
  %101 = load ptr, ptr %ordered, align 8, !dbg !3917, !tbaa !301
  %cmp175.not = icmp eq ptr %101, null, !dbg !3918
  br i1 %cmp175.not, label %if.else180, label %tailrecurse, !dbg !3919

if.else180:                                       ; preds = %while.end174
  %arrayidx163.le.le = getelementptr inbounds i8, ptr %content.0, i64 %offset.0.lcssa431, !dbg !3910
  call void @llvm.dbg.value(metadata ptr %arrayidx163.le.le, metadata !3703, metadata !DIExpression()) #20, !dbg !3920
  call void @llvm.dbg.value(metadata i64 -1, metadata !3708, metadata !DIExpression()) #20, !dbg !3920
  call void @llvm.dbg.value(metadata ptr %source, metadata !3709, metadata !DIExpression()) #20, !dbg !3920
  call void @llvm.dbg.value(metadata ptr %length, metadata !3710, metadata !DIExpression()) #20, !dbg !3920
  call void @llvm.dbg.value(metadata ptr %extent, metadata !3711, metadata !DIExpression()) #20, !dbg !3920
  call void @llvm.dbg.value(metadata i32 0, metadata !3712, metadata !DIExpression()) #20, !dbg !3920
  %call.i396 = tail call ptr @CanonicalXMLContent(ptr noundef nonnull %arrayidx163.le.le, i32 noundef 0) #20, !dbg !3922
  call void @llvm.dbg.value(metadata ptr %call.i396, metadata !3713, metadata !DIExpression()) #20, !dbg !3920
  %cmp4.i397 = icmp eq ptr %call.i396, null, !dbg !3923
  br i1 %cmp4.i397, label %cleanup.sink.split.i416, label %if.end6.i402, !dbg !3924

if.end6.i402:                                     ; preds = %if.else180
  %102 = load i64, ptr %length, align 8, !dbg !3925, !tbaa !480
  %call7.i398 = tail call i64 @strlen(ptr noundef nonnull %call.i396) #21, !dbg !3926
  %add.i399 = add i64 %102, 4096, !dbg !3927
  %add8.i400 = add i64 %add.i399, %call7.i398, !dbg !3928
  %103 = load i64, ptr %extent, align 8, !dbg !3929, !tbaa !480
  %cmp9.i401 = icmp ugt i64 %add8.i400, %103, !dbg !3930
  br i1 %cmp9.i401, label %if.then10.i407, label %if.end6.if.end18_crit_edge.i404, !dbg !3931

if.end6.if.end18_crit_edge.i404:                  ; preds = %if.end6.i402
  %.pre.i403 = load ptr, ptr %source, align 8, !dbg !3932, !tbaa !312
  br label %if.end18.i415, !dbg !3931

if.then10.i407:                                   ; preds = %if.end6.i402
  store i64 %add8.i400, ptr %extent, align 8, !dbg !3933, !tbaa !480
  %104 = load ptr, ptr %source, align 8, !dbg !3934, !tbaa !312
  %call14.i405 = tail call ptr @ResizeQuantumMemory(ptr noundef %104, i64 noundef %add8.i400, i64 noundef 1) #23, !dbg !3935
  store ptr %call14.i405, ptr %source, align 8, !dbg !3936, !tbaa !312
  %cmp15.i406 = icmp eq ptr %call14.i405, null, !dbg !3937
  br i1 %cmp15.i406, label %cleanup, label %if.then10.if.end18_crit_edge.i410, !dbg !3938

if.then10.if.end18_crit_edge.i410:                ; preds = %if.then10.i407
  %.pre43.i408 = load i64, ptr %length, align 8, !dbg !3939, !tbaa !480
  %.pre44.i409 = load i64, ptr %extent, align 8, !dbg !3940, !tbaa !480
  br label %if.end18.i415, !dbg !3938

if.end18.i415:                                    ; preds = %if.then10.if.end18_crit_edge.i410, %if.end6.if.end18_crit_edge.i404
  %105 = phi i64 [ %103, %if.end6.if.end18_crit_edge.i404 ], [ %.pre44.i409, %if.then10.if.end18_crit_edge.i410 ], !dbg !3940
  %106 = phi i64 [ %102, %if.end6.if.end18_crit_edge.i404 ], [ %.pre43.i408, %if.then10.if.end18_crit_edge.i410 ], !dbg !3939
  %107 = phi ptr [ %.pre.i403, %if.end6.if.end18_crit_edge.i404 ], [ %call14.i405, %if.then10.if.end18_crit_edge.i410 ], !dbg !3932
  %add.ptr.i411 = getelementptr inbounds i8, ptr %107, i64 %106, !dbg !3941
  %call19.i412 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %add.ptr.i411, i64 noundef %105, ptr noundef nonnull @.str.79, ptr noundef nonnull %call.i396) #20, !dbg !3942
  %108 = load i64, ptr %length, align 8, !dbg !3943, !tbaa !480
  %add20.i413 = add i64 %108, %call19.i412, !dbg !3943
  store i64 %add20.i413, ptr %length, align 8, !dbg !3943, !tbaa !480
  %call21.i414 = tail call ptr @DestroyString(ptr noundef nonnull %call.i396) #20, !dbg !3944
  call void @llvm.dbg.value(metadata ptr %call21.i414, metadata !3713, metadata !DIExpression()) #20, !dbg !3920
  br label %cleanup.sink.split.i416, !dbg !3945

cleanup.sink.split.i416:                          ; preds = %if.end18.i415, %if.else180
  %109 = load ptr, ptr %source, align 8, !dbg !3920, !tbaa !312
  br label %cleanup, !dbg !3946

cleanup:                                          ; preds = %if.then141, %if.then7, %if.then37, %if.then97, %cleanup.sink.split.i416, %if.then10.i407
  %retval.0 = phi ptr [ null, %if.then10.i407 ], [ %109, %cleanup.sink.split.i416 ], [ null, %if.then97 ], [ null, %if.then37 ], [ null, %if.then7 ], [ null, %if.then141 ], !dbg !3625
  ret ptr %retval.0, !dbg !3947
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nofree
declare !dbg !3948 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @__fxstat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

declare !dbg !3952 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind readonly uwtable
define internal fastcc i32 @ValidateEntities(ptr nocapture noundef readonly %tag, ptr nocapture noundef readonly %xml, ptr nocapture noundef readonly %entities) unnamed_addr #17 !dbg !3955 {
entry:
  call void @llvm.dbg.value(metadata ptr %tag, metadata !3959, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata ptr %xml, metadata !3960, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata ptr %entities, metadata !3961, metadata !DIExpression()), !dbg !3963
  br label %while.cond, !dbg !3964

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %xml.addr.1 = phi ptr [ %xml, %entry ], [ %xml.addr.1.be, %while.cond.backedge ]
  call void @llvm.dbg.value(metadata ptr %xml.addr.1, metadata !3960, metadata !DIExpression()), !dbg !3963
  %0 = load i8, ptr %xml.addr.1, align 1, !dbg !3965, !tbaa !652
  switch i8 %0, label %while.body [
    i8 0, label %cleanup
    i8 38, label %if.end
  ], !dbg !3969

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8, ptr %xml.addr.1, i64 1, !dbg !3970
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !3960, metadata !DIExpression()), !dbg !3963
  br label %while.cond.backedge, !dbg !3971

while.cond.backedge:                              ; preds = %while.body25, %while.body, %while.cond13.preheader, %land.lhs.true
  %xml.addr.1.be = phi ptr [ %incdec.ptr, %while.body ], [ %add.ptr, %while.cond13.preheader ], [ %add.ptr, %land.lhs.true ], [ %add.ptr, %while.body25 ]
  br label %while.cond, !dbg !3963, !llvm.loop !3972

if.end:                                           ; preds = %while.cond
  %add.ptr = getelementptr inbounds i8, ptr %xml.addr.1, i64 1, !dbg !3975
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %tag) #21, !dbg !3977
  %call8 = tail call i32 @strncmp(ptr noundef nonnull %add.ptr, ptr noundef %tag, i64 noundef %call) #21, !dbg !3978
  %cmp9 = icmp eq i32 %call8, 0, !dbg !3979
  br i1 %cmp9, label %cleanup, label %while.cond13.preheader, !dbg !3980

while.cond13.preheader:                           ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 0, metadata !3962, metadata !DIExpression()), !dbg !3963
  %1 = load ptr, ptr %entities, align 8, !dbg !3981, !tbaa !312
  %cmp14.not59 = icmp eq ptr %1, null, !dbg !3982
  br i1 %cmp14.not59, label %while.cond.backedge, label %land.rhs16, !dbg !3983

land.rhs16:                                       ; preds = %while.cond13.preheader, %while.body25
  %2 = phi ptr [ %3, %while.body25 ], [ %1, %while.cond13.preheader ]
  %i.060 = phi i64 [ %add, %while.body25 ], [ 0, %while.cond13.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.060, metadata !3962, metadata !DIExpression()), !dbg !3963
  %call20 = tail call i64 @strlen(ptr noundef nonnull %2) #21, !dbg !3984
  %call21 = tail call i32 @strncmp(ptr noundef nonnull %2, ptr noundef nonnull %add.ptr, i64 noundef %call20) #21, !dbg !3985
  %cmp22 = icmp eq i32 %call21, 0, !dbg !3986
  br i1 %cmp22, label %while.body25, label %land.lhs.true, !dbg !3987

while.body25:                                     ; preds = %land.rhs16
  %add = add nuw nsw i64 %i.060, 2, !dbg !3988
  call void @llvm.dbg.value(metadata i64 %add, metadata !3962, metadata !DIExpression()), !dbg !3963
  %arrayidx = getelementptr inbounds ptr, ptr %entities, i64 %add, !dbg !3981
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !3981, !tbaa !312
  %cmp14.not = icmp eq ptr %3, null, !dbg !3982
  br i1 %cmp14.not, label %while.cond.backedge, label %land.rhs16, !dbg !3983, !llvm.loop !3972

land.lhs.true:                                    ; preds = %land.rhs16
  %add30 = or i64 %i.060, 1, !dbg !3989
  %arrayidx31 = getelementptr inbounds ptr, ptr %entities, i64 %add30, !dbg !3991
  %4 = load ptr, ptr %arrayidx31, align 8, !dbg !3991, !tbaa !312
  %call32 = tail call fastcc i32 @ValidateEntities(ptr noundef %tag, ptr noundef %4, ptr noundef nonnull %entities), !dbg !3992
  %cmp33 = icmp eq i32 %call32, 0, !dbg !3993
  br i1 %cmp33, label %cleanup, label %while.cond.backedge, !dbg !3994

cleanup:                                          ; preds = %land.lhs.true, %if.end, %while.cond
  %retval.0 = phi i32 [ 1, %while.cond ], [ 0, %if.end ], [ 0, %land.lhs.true ], !dbg !3995
  ret i32 %retval.0, !dbg !3996
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @EncodePredefinedEntities(ptr noundef %source, i64 noundef %offset, ptr nocapture noundef %destination, ptr nocapture noundef %length, ptr nocapture noundef %extent, i32 noundef %pedantic) unnamed_addr #0 !dbg !3704 {
entry:
  call void @llvm.dbg.value(metadata ptr %source, metadata !3703, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata i64 %offset, metadata !3708, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata ptr %destination, metadata !3709, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata ptr %length, metadata !3710, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata ptr %extent, metadata !3711, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata i32 %pedantic, metadata !3712, metadata !DIExpression()), !dbg !3997
  %cmp = icmp slt i64 %offset, 0, !dbg !3998
  br i1 %cmp, label %if.then, label %if.else, !dbg !3999

if.then:                                          ; preds = %entry
  %call = tail call ptr @CanonicalXMLContent(ptr noundef %source, i32 noundef %pedantic), !dbg !4000
  call void @llvm.dbg.value(metadata ptr %call, metadata !3713, metadata !DIExpression()), !dbg !3997
  br label %if.end, !dbg !4001

if.else:                                          ; preds = %entry
  %call1 = tail call ptr @AcquireString(ptr noundef %source) #20, !dbg !4002
  call void @llvm.dbg.value(metadata ptr %call1, metadata !3714, metadata !DIExpression()), !dbg !4003
  %arrayidx = getelementptr inbounds i8, ptr %call1, i64 %offset, !dbg !4004
  store i8 0, ptr %arrayidx, align 1, !dbg !4005, !tbaa !652
  %call2 = tail call ptr @CanonicalXMLContent(ptr noundef %call1, i32 noundef %pedantic), !dbg !4006
  call void @llvm.dbg.value(metadata ptr %call2, metadata !3713, metadata !DIExpression()), !dbg !3997
  %call3 = tail call ptr @DestroyString(ptr noundef %call1) #20, !dbg !4007
  call void @llvm.dbg.value(metadata ptr %call3, metadata !3714, metadata !DIExpression()), !dbg !4003
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %canonical_content.0 = phi ptr [ %call, %if.then ], [ %call2, %if.else ], !dbg !4008
  call void @llvm.dbg.value(metadata ptr %canonical_content.0, metadata !3713, metadata !DIExpression()), !dbg !3997
  %cmp4 = icmp eq ptr %canonical_content.0, null, !dbg !4009
  br i1 %cmp4, label %cleanup.sink.split, label %if.end6, !dbg !4010

if.end6:                                          ; preds = %if.end
  %0 = load i64, ptr %length, align 8, !dbg !4011, !tbaa !480
  %call7 = tail call i64 @strlen(ptr noundef nonnull %canonical_content.0) #21, !dbg !4012
  %add = add i64 %0, 4096, !dbg !4013
  %add8 = add i64 %add, %call7, !dbg !4014
  %1 = load i64, ptr %extent, align 8, !dbg !4015, !tbaa !480
  %cmp9 = icmp ugt i64 %add8, %1, !dbg !4016
  br i1 %cmp9, label %if.then10, label %if.end6.if.end18_crit_edge, !dbg !4017

if.end6.if.end18_crit_edge:                       ; preds = %if.end6
  %.pre = load ptr, ptr %destination, align 8, !dbg !4018, !tbaa !312
  br label %if.end18, !dbg !4017

if.then10:                                        ; preds = %if.end6
  store i64 %add8, ptr %extent, align 8, !dbg !4019, !tbaa !480
  %2 = load ptr, ptr %destination, align 8, !dbg !4020, !tbaa !312
  %call14 = tail call ptr @ResizeQuantumMemory(ptr noundef %2, i64 noundef %add8, i64 noundef 1) #23, !dbg !4021
  store ptr %call14, ptr %destination, align 8, !dbg !4022, !tbaa !312
  %cmp15 = icmp eq ptr %call14, null, !dbg !4023
  br i1 %cmp15, label %cleanup, label %if.then10.if.end18_crit_edge, !dbg !4024

if.then10.if.end18_crit_edge:                     ; preds = %if.then10
  %.pre43 = load i64, ptr %length, align 8, !dbg !4025, !tbaa !480
  %.pre44 = load i64, ptr %extent, align 8, !dbg !4026, !tbaa !480
  br label %if.end18, !dbg !4024

if.end18:                                         ; preds = %if.then10.if.end18_crit_edge, %if.end6.if.end18_crit_edge
  %3 = phi i64 [ %1, %if.end6.if.end18_crit_edge ], [ %.pre44, %if.then10.if.end18_crit_edge ], !dbg !4026
  %4 = phi i64 [ %0, %if.end6.if.end18_crit_edge ], [ %.pre43, %if.then10.if.end18_crit_edge ], !dbg !4025
  %5 = phi ptr [ %.pre, %if.end6.if.end18_crit_edge ], [ %call14, %if.then10.if.end18_crit_edge ], !dbg !4018
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %4, !dbg !4027
  %call19 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %add.ptr, i64 noundef %3, ptr noundef nonnull @.str.79, ptr noundef nonnull %canonical_content.0) #20, !dbg !4028
  %6 = load i64, ptr %length, align 8, !dbg !4029, !tbaa !480
  %add20 = add i64 %6, %call19, !dbg !4029
  store i64 %add20, ptr %length, align 8, !dbg !4029, !tbaa !480
  %call21 = tail call ptr @DestroyString(ptr noundef nonnull %canonical_content.0) #20, !dbg !4030
  call void @llvm.dbg.value(metadata ptr %call21, metadata !3713, metadata !DIExpression()), !dbg !3997
  br label %cleanup.sink.split, !dbg !4031

cleanup.sink.split:                               ; preds = %if.end, %if.end18
  %7 = load ptr, ptr %destination, align 8, !dbg !3997, !tbaa !312
  br label %cleanup, !dbg !4032

cleanup:                                          ; preds = %cleanup.sink.split, %if.then10
  %retval.0 = phi ptr [ null, %if.then10 ], [ %7, %cleanup.sink.split ], !dbg !3997
  ret ptr %retval.0, !dbg !4032
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(1,2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { argmemonly nofree nounwind willreturn }
attributes #14 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { argmemonly nofree nounwind willreturn writeonly }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind }
attributes #21 = { nounwind readonly willreturn }
attributes #22 = { nounwind allocsize(0,1) }
attributes #23 = { nounwind allocsize(1,2) }
attributes #24 = { nounwind readnone willreturn }
attributes #25 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!220, !221, !222, !223, !224, !225}
!llvm.ident = !{!226}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sentinel", scope: !2, file: !147, line: 135, type: !217, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !142, globals: !205, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/xml-tree.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "21071739556752a89aac40182a991ff0")
!4 = !{!5, !11, !36, !48, !54, !127}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 211, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "MagickFalse", value: 0)
!10 = !DIEnumerator(name: "MagickTrue", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 34, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!14 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!15 = !DIEnumerator(name: "NoEvents", value: 0)
!16 = !DIEnumerator(name: "TraceEvent", value: 1)
!17 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!18 = !DIEnumerator(name: "BlobEvent", value: 4)
!19 = !DIEnumerator(name: "CacheEvent", value: 8)
!20 = !DIEnumerator(name: "CoderEvent", value: 16)
!21 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!22 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!23 = !DIEnumerator(name: "DrawEvent", value: 128)
!24 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!25 = !DIEnumerator(name: "ImageEvent", value: 512)
!26 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!27 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!28 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!29 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!30 = !DIEnumerator(name: "TransformEvent", value: 16384)
!31 = !DIEnumerator(name: "UserEvent", value: 36864)
!32 = !DIEnumerator(name: "WandEvent", value: 65536)
!33 = !DIEnumerator(name: "X11Event", value: 131072)
!34 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!35 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 25, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "apps/538.imagick_r/src/magick/utility.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7ccc9d0e9544cf426f040ba36e5bd04e")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47}
!39 = !DIEnumerator(name: "UndefinedPath", value: 0)
!40 = !DIEnumerator(name: "MagickPath", value: 1)
!41 = !DIEnumerator(name: "RootPath", value: 2)
!42 = !DIEnumerator(name: "HeadPath", value: 3)
!43 = !DIEnumerator(name: "TailPath", value: 4)
!44 = !DIEnumerator(name: "BasePath", value: 5)
!45 = !DIEnumerator(name: "ExtensionPath", value: 6)
!46 = !DIEnumerator(name: "SubimagePath", value: 7)
!47 = !DIEnumerator(name: "CanonicalPath", value: 8)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !49, line: 30, baseType: !7, size: 32, elements: !50)
!49 = !DIFile(filename: "apps/538.imagick_r/src/magick/blob.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "aeac60f5bee0fb1a4f0bd1456ae975f0")
!50 = !{!51, !52, !53}
!51 = !DIEnumerator(name: "ReadMode", value: 0)
!52 = !DIEnumerator(name: "WriteMode", value: 1)
!53 = !DIEnumerator(name: "IOMode", value: 2)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !55, line: 28, baseType: !7, size: 32, elements: !56)
!55 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!56 = !{!57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126}
!57 = !DIEnumerator(name: "UndefinedException", value: 0)
!58 = !DIEnumerator(name: "WarningException", value: 300)
!59 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!60 = !DIEnumerator(name: "TypeWarning", value: 305)
!61 = !DIEnumerator(name: "OptionWarning", value: 310)
!62 = !DIEnumerator(name: "DelegateWarning", value: 315)
!63 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!64 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!65 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!66 = !DIEnumerator(name: "BlobWarning", value: 335)
!67 = !DIEnumerator(name: "StreamWarning", value: 340)
!68 = !DIEnumerator(name: "CacheWarning", value: 345)
!69 = !DIEnumerator(name: "CoderWarning", value: 350)
!70 = !DIEnumerator(name: "FilterWarning", value: 352)
!71 = !DIEnumerator(name: "ModuleWarning", value: 355)
!72 = !DIEnumerator(name: "DrawWarning", value: 360)
!73 = !DIEnumerator(name: "ImageWarning", value: 365)
!74 = !DIEnumerator(name: "WandWarning", value: 370)
!75 = !DIEnumerator(name: "RandomWarning", value: 375)
!76 = !DIEnumerator(name: "XServerWarning", value: 380)
!77 = !DIEnumerator(name: "MonitorWarning", value: 385)
!78 = !DIEnumerator(name: "RegistryWarning", value: 390)
!79 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!80 = !DIEnumerator(name: "PolicyWarning", value: 399)
!81 = !DIEnumerator(name: "ErrorException", value: 400)
!82 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!83 = !DIEnumerator(name: "TypeError", value: 405)
!84 = !DIEnumerator(name: "OptionError", value: 410)
!85 = !DIEnumerator(name: "DelegateError", value: 415)
!86 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!87 = !DIEnumerator(name: "CorruptImageError", value: 425)
!88 = !DIEnumerator(name: "FileOpenError", value: 430)
!89 = !DIEnumerator(name: "BlobError", value: 435)
!90 = !DIEnumerator(name: "StreamError", value: 440)
!91 = !DIEnumerator(name: "CacheError", value: 445)
!92 = !DIEnumerator(name: "CoderError", value: 450)
!93 = !DIEnumerator(name: "FilterError", value: 452)
!94 = !DIEnumerator(name: "ModuleError", value: 455)
!95 = !DIEnumerator(name: "DrawError", value: 460)
!96 = !DIEnumerator(name: "ImageError", value: 465)
!97 = !DIEnumerator(name: "WandError", value: 470)
!98 = !DIEnumerator(name: "RandomError", value: 475)
!99 = !DIEnumerator(name: "XServerError", value: 480)
!100 = !DIEnumerator(name: "MonitorError", value: 485)
!101 = !DIEnumerator(name: "RegistryError", value: 490)
!102 = !DIEnumerator(name: "ConfigureError", value: 495)
!103 = !DIEnumerator(name: "PolicyError", value: 499)
!104 = !DIEnumerator(name: "FatalErrorException", value: 700)
!105 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!106 = !DIEnumerator(name: "TypeFatalError", value: 705)
!107 = !DIEnumerator(name: "OptionFatalError", value: 710)
!108 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!109 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!110 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!111 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!112 = !DIEnumerator(name: "BlobFatalError", value: 735)
!113 = !DIEnumerator(name: "StreamFatalError", value: 740)
!114 = !DIEnumerator(name: "CacheFatalError", value: 745)
!115 = !DIEnumerator(name: "CoderFatalError", value: 750)
!116 = !DIEnumerator(name: "FilterFatalError", value: 752)
!117 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!118 = !DIEnumerator(name: "DrawFatalError", value: 760)
!119 = !DIEnumerator(name: "ImageFatalError", value: 765)
!120 = !DIEnumerator(name: "WandFatalError", value: 770)
!121 = !DIEnumerator(name: "RandomFatalError", value: 775)
!122 = !DIEnumerator(name: "XServerFatalError", value: 780)
!123 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!124 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!125 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!126 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !128, line: 46, baseType: !7, size: 32, elements: !129)
!128 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141}
!130 = !DIEnumerator(name: "_ISupper", value: 256)
!131 = !DIEnumerator(name: "_ISlower", value: 512)
!132 = !DIEnumerator(name: "_ISalpha", value: 1024)
!133 = !DIEnumerator(name: "_ISdigit", value: 2048)
!134 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!135 = !DIEnumerator(name: "_ISspace", value: 8192)
!136 = !DIEnumerator(name: "_ISprint", value: 16384)
!137 = !DIEnumerator(name: "_ISgraph", value: 32768)
!138 = !DIEnumerator(name: "_ISblank", value: 1)
!139 = !DIEnumerator(name: "_IScntrl", value: 2)
!140 = !DIEnumerator(name: "_ISpunct", value: 4)
!141 = !DIEnumerator(name: "_ISalnum", value: 8)
!142 = !{!143, !172, !158, !153, !173, !178, !181, !150, !151, !182, !156, !184, !186, !188, !202, !203, !180, !204, !196}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "XMLTreeInfo", file: !145, line: 29, baseType: !146)
!145 = !DIFile(filename: "apps/538.imagick_r/src/magick/xml-tree.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5e544995a74b1ca30ba5edadca4a5927")
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_XMLTreeInfo", file: !147, line: 75, size: 768, elements: !148)
!147 = !DIFile(filename: "apps/538.imagick_r/src/magick/xml-tree.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "21071739556752a89aac40182a991ff0")
!148 = !{!149, !152, !154, !155, !159, !160, !161, !162, !163, !164, !166, !171}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !146, file: !147, line: 78, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !146, file: !147, line: 79, baseType: !153, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !146, file: !147, line: 80, baseType: !150, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !146, file: !147, line: 83, baseType: !156, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !157, line: 46, baseType: !158)
!157 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!158 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !146, file: !147, line: 86, baseType: !143, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !146, file: !147, line: 87, baseType: !143, size: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !146, file: !147, line: 88, baseType: !143, size: 64, offset: 384)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "ordered", scope: !146, file: !147, line: 89, baseType: !143, size: 64, offset: 448)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !146, file: !147, line: 90, baseType: !143, size: 64, offset: 512)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !146, file: !147, line: 93, baseType: !165, size: 32, offset: 576)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !6, line: 215, baseType: !5)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !146, file: !147, line: 96, baseType: !167, size: 64, offset: 640)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !169, line: 26, baseType: !170)
!169 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!170 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !169, line: 25, flags: DIFlagFwdDecl)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !146, file: !147, line: 99, baseType: !156, size: 64, offset: 704)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !174, line: 77, baseType: !175)
!174 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !176, line: 193, baseType: !177)
!176 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!177 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!180 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !6, line: 150, baseType: !183)
!183 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !6, line: 151, baseType: !185)
!185 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "XMLTreeRoot", file: !147, line: 103, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_XMLTreeRoot", file: !147, line: 105, size: 1280, elements: !191)
!191 = !{!192, !193, !194, !195, !197, !198, !199, !200, !201}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !190, file: !147, line: 108, baseType: !146, size: 768)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !190, file: !147, line: 111, baseType: !143, size: 64, offset: 768)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !190, file: !147, line: 114, baseType: !165, size: 32, offset: 832)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "processing_instructions", scope: !190, file: !147, line: 117, baseType: !196, size: 64, offset: 896)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !190, file: !147, line: 118, baseType: !153, size: 64, offset: 960)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !190, file: !147, line: 119, baseType: !196, size: 64, offset: 1024)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !190, file: !147, line: 122, baseType: !165, size: 32, offset: 1088)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !190, file: !147, line: 125, baseType: !167, size: 64, offset: 1152)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !190, file: !147, line: 128, baseType: !156, size: 64, offset: 1216)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!203 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!204 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!205 = !{!206, !0}
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "predefined_entities", scope: !208, file: !147, line: 2309, type: !214, isLocal: true, isDefinition: true)
!208 = distinct !DISubprogram(name: "NewXMLTreeTag", scope: !147, file: !147, line: 2306, type: !209, scopeLine: 2307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !211)
!209 = !DISubroutineType(types: !210)
!210 = !{!143, !186}
!211 = !{!212, !213}
!212 = !DILocalVariable(name: "tag", arg: 1, scope: !208, file: !147, line: 2306, type: !186)
!213 = !DILocalVariable(name: "root", scope: !208, file: !147, line: 2316, type: !188)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 704, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 11)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 64, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 1)
!220 = !{i32 7, !"Dwarf Version", i32 5}
!221 = !{i32 2, !"Debug Info Version", i32 3}
!222 = !{i32 1, !"wchar_size", i32 4}
!223 = !{i32 7, !"PIC Level", i32 2}
!224 = !{i32 7, !"PIE Level", i32 2}
!225 = !{i32 7, !"uwtable", i32 2}
!226 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!227 = distinct !DISubprogram(name: "AddChildToXMLTree", scope: !147, file: !147, line: 165, type: !228, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !231)
!228 = !DISubroutineType(types: !229)
!229 = !{!143, !143, !186, !230}
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!231 = !{!232, !233, !234, !235}
!232 = !DILocalVariable(name: "xml_info", arg: 1, scope: !227, file: !147, line: 165, type: !143)
!233 = !DILocalVariable(name: "tag", arg: 2, scope: !227, file: !147, line: 166, type: !186)
!234 = !DILocalVariable(name: "offset", arg: 3, scope: !227, file: !147, line: 166, type: !230)
!235 = !DILocalVariable(name: "child", scope: !227, file: !147, line: 169, type: !143)
!236 = !DILocation(line: 0, scope: !227)
!237 = !DILocation(line: 171, column: 16, scope: !238)
!238 = distinct !DILexicalBlock(scope: !227, file: !147, line: 171, column: 7)
!239 = !DILocation(line: 171, column: 7, scope: !227)
!240 = !DILocation(line: 173, column: 25, scope: !227)
!241 = !DILocation(line: 174, column: 13, scope: !242)
!242 = distinct !DILexicalBlock(scope: !227, file: !147, line: 174, column: 7)
!243 = !DILocation(line: 174, column: 7, scope: !227)
!244 = !DILocation(line: 176, column: 10, scope: !227)
!245 = !DILocation(line: 177, column: 14, scope: !227)
!246 = !DILocation(line: 177, column: 13, scope: !227)
!247 = !{!248, !249, i64 0}
!248 = !{!"_XMLTreeInfo", !249, i64 0, !249, i64 8, !249, i64 16, !252, i64 24, !249, i64 32, !249, i64 40, !249, i64 48, !249, i64 56, !249, i64 64, !250, i64 72, !249, i64 80, !252, i64 88}
!249 = !{!"any pointer", !250, i64 0}
!250 = !{!"omnipotent char", !251, i64 0}
!251 = !{!"Simple C/C++ TBAA"}
!252 = !{!"long", !250, i64 0}
!253 = !DILocation(line: 178, column: 10, scope: !227)
!254 = !DILocation(line: 178, column: 20, scope: !227)
!255 = !{!248, !249, i64 8}
!256 = !DILocation(line: 179, column: 18, scope: !227)
!257 = !DILocation(line: 179, column: 10, scope: !227)
!258 = !DILocation(line: 179, column: 17, scope: !227)
!259 = !{!248, !249, i64 16}
!260 = !DILocation(line: 180, column: 16, scope: !227)
!261 = !DILocation(line: 180, column: 10, scope: !227)
!262 = !DILocation(line: 180, column: 15, scope: !227)
!263 = !{!248, !250, i64 72}
!264 = !DILocation(line: 181, column: 10, scope: !227)
!265 = !DILocation(line: 181, column: 19, scope: !227)
!266 = !{!248, !252, i64 88}
!267 = !DILocalVariable(name: "xml_info", arg: 1, scope: !268, file: !147, line: 1219, type: !143)
!268 = distinct !DISubprogram(name: "InsertTagIntoXMLTree", scope: !147, file: !147, line: 1219, type: !269, scopeLine: 1221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !271)
!269 = !DISubroutineType(types: !270)
!270 = !{!143, !143, !143, !230}
!271 = !{!267, !272, !273, !274, !275, !276}
!272 = !DILocalVariable(name: "child", arg: 2, scope: !268, file: !147, line: 1220, type: !143)
!273 = !DILocalVariable(name: "offset", arg: 3, scope: !268, file: !147, line: 1220, type: !230)
!274 = !DILocalVariable(name: "head", scope: !268, file: !147, line: 1223, type: !143)
!275 = !DILocalVariable(name: "node", scope: !268, file: !147, line: 1224, type: !143)
!276 = !DILocalVariable(name: "previous", scope: !268, file: !147, line: 1225, type: !143)
!277 = !DILocation(line: 0, scope: !268, inlinedAt: !278)
!278 = distinct !DILocation(line: 182, column: 10, scope: !227)
!279 = !DILocation(line: 1227, column: 10, scope: !268, inlinedAt: !278)
!280 = !DILocation(line: 1228, column: 10, scope: !268, inlinedAt: !278)
!281 = !DILocation(line: 1229, column: 10, scope: !268, inlinedAt: !278)
!282 = !DILocation(line: 1230, column: 10, scope: !268, inlinedAt: !278)
!283 = !DILocation(line: 1228, column: 17, scope: !268, inlinedAt: !278)
!284 = !DILocation(line: 1230, column: 16, scope: !268, inlinedAt: !278)
!285 = !{!248, !252, i64 24}
!286 = !DILocation(line: 1231, column: 10, scope: !268, inlinedAt: !278)
!287 = !DILocation(line: 1231, column: 16, scope: !268, inlinedAt: !278)
!288 = !{!248, !249, i64 32}
!289 = !DILocation(line: 1232, column: 17, scope: !290, inlinedAt: !278)
!290 = distinct !DILexicalBlock(scope: !268, file: !147, line: 1232, column: 7)
!291 = !{!248, !249, i64 64}
!292 = !DILocation(line: 1232, column: 23, scope: !290, inlinedAt: !278)
!293 = !DILocation(line: 1232, column: 7, scope: !268, inlinedAt: !278)
!294 = !DILocation(line: 1238, column: 13, scope: !295, inlinedAt: !278)
!295 = distinct !DILexicalBlock(scope: !268, file: !147, line: 1238, column: 7)
!296 = !DILocation(line: 1238, column: 20, scope: !295, inlinedAt: !278)
!297 = !DILocation(line: 1238, column: 7, scope: !268, inlinedAt: !278)
!298 = !DILocation(line: 0, scope: !299, inlinedAt: !278)
!299 = distinct !DILexicalBlock(scope: !295, file: !147, line: 1244, column: 5)
!300 = !DILocation(line: 1246, column: 21, scope: !299, inlinedAt: !278)
!301 = !{!248, !249, i64 56}
!302 = !DILocation(line: 1246, column: 29, scope: !299, inlinedAt: !278)
!303 = !DILocation(line: 1246, column: 54, scope: !299, inlinedAt: !278)
!304 = !DILocation(line: 1247, column: 30, scope: !299, inlinedAt: !278)
!305 = !DILocation(line: 1247, column: 37, scope: !299, inlinedAt: !278)
!306 = !DILocation(line: 1246, column: 7, scope: !299, inlinedAt: !278)
!307 = distinct !{!307, !306, !308, !309, !310}
!308 = !DILocation(line: 1248, column: 20, scope: !299, inlinedAt: !278)
!309 = !{!"llvm.loop.mustprogress"}
!310 = !{!"llvm.loop.unroll.disable"}
!311 = !DILocation(line: 0, scope: !295, inlinedAt: !278)
!312 = !{!249, !249, i64 0}
!313 = !DILocation(line: 1254, column: 58, scope: !268, inlinedAt: !278)
!314 = !DILocation(line: 1254, column: 45, scope: !268, inlinedAt: !278)
!315 = !DILocation(line: 1254, column: 74, scope: !268, inlinedAt: !278)
!316 = !DILocation(line: 1254, column: 3, scope: !268, inlinedAt: !278)
!317 = distinct !{!317, !316, !318, !309, !310}
!318 = !DILocation(line: 1258, column: 3, scope: !268, inlinedAt: !278)
!319 = !DILocation(line: 1257, column: 16, scope: !320, inlinedAt: !278)
!320 = distinct !DILexicalBlock(scope: !268, file: !147, line: 1255, column: 3)
!321 = !{!248, !249, i64 48}
!322 = !DILocation(line: 1254, column: 16, scope: !268, inlinedAt: !278)
!323 = !DILocation(line: 1254, column: 41, scope: !268, inlinedAt: !278)
!324 = !DILocation(line: 1259, column: 48, scope: !325, inlinedAt: !278)
!325 = distinct !DILexicalBlock(scope: !268, file: !147, line: 1259, column: 7)
!326 = !DILocation(line: 1259, column: 55, scope: !325, inlinedAt: !278)
!327 = !DILocation(line: 1259, column: 7, scope: !268, inlinedAt: !278)
!328 = !DILocation(line: 1261, column: 7, scope: !329, inlinedAt: !278)
!329 = distinct !DILexicalBlock(scope: !325, file: !147, line: 1260, column: 5)
!330 = !DILocation(line: 1261, column: 21, scope: !329, inlinedAt: !278)
!331 = !{!248, !249, i64 40}
!332 = !DILocation(line: 1261, column: 26, scope: !329, inlinedAt: !278)
!333 = !DILocation(line: 1261, column: 51, scope: !329, inlinedAt: !278)
!334 = !DILocation(line: 1262, column: 27, scope: !329, inlinedAt: !278)
!335 = !DILocation(line: 1262, column: 34, scope: !329, inlinedAt: !278)
!336 = distinct !{!336, !328, !337, !309, !310}
!337 = !DILocation(line: 1263, column: 20, scope: !329, inlinedAt: !278)
!338 = !DILocation(line: 1264, column: 18, scope: !329, inlinedAt: !278)
!339 = !DILocation(line: 1266, column: 5, scope: !329, inlinedAt: !278)
!340 = !DILocation(line: 1270, column: 33, scope: !341, inlinedAt: !278)
!341 = distinct !DILexicalBlock(scope: !342, file: !147, line: 1269, column: 11)
!342 = distinct !DILexicalBlock(scope: !325, file: !147, line: 1268, column: 5)
!343 = !DILocation(line: 1270, column: 19, scope: !341, inlinedAt: !278)
!344 = !DILocation(line: 1270, column: 26, scope: !341, inlinedAt: !278)
!345 = !DILocation(line: 1270, column: 9, scope: !341, inlinedAt: !278)
!346 = !DILocation(line: 1271, column: 18, scope: !342, inlinedAt: !278)
!347 = !DILocation(line: 1274, column: 7, scope: !342, inlinedAt: !278)
!348 = !DILocation(line: 1279, column: 21, scope: !342, inlinedAt: !278)
!349 = !DILocation(line: 1280, column: 11, scope: !342, inlinedAt: !278)
!350 = !DILocation(line: 1277, column: 20, scope: !351, inlinedAt: !278)
!351 = distinct !DILexicalBlock(scope: !342, file: !147, line: 1275, column: 7)
!352 = !DILocation(line: 1274, column: 20, scope: !342, inlinedAt: !278)
!353 = !DILocation(line: 1274, column: 45, scope: !342, inlinedAt: !278)
!354 = distinct !{!354, !347, !355, !309, !310}
!355 = !DILocation(line: 1278, column: 7, scope: !342, inlinedAt: !278)
!356 = !DILocation(line: 1274, column: 55, scope: !342, inlinedAt: !278)
!357 = !DILocation(line: 1274, column: 62, scope: !342, inlinedAt: !278)
!358 = !DILocation(line: 1281, column: 19, scope: !359, inlinedAt: !278)
!359 = distinct !DILexicalBlock(scope: !342, file: !147, line: 1280, column: 11)
!360 = !DILocation(line: 1281, column: 9, scope: !359, inlinedAt: !278)
!361 = !DILocation(line: 1284, column: 1, scope: !268, inlinedAt: !278)
!362 = !DILocation(line: 183, column: 1, scope: !227)
!363 = !DISubprogram(name: "AcquireMagickMemory", scope: !364, file: !364, line: 40, type: !365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!364 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!365 = !DISubroutineType(types: !366)
!366 = !{!172, !230}
!367 = !{}
!368 = !DISubprogram(name: "ResetMagickMemory", scope: !364, file: !364, line: 52, type: !369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!369 = !DISubroutineType(types: !370)
!370 = !{!172, !172, !203, !230}
!371 = !DISubprogram(name: "ConstantString", scope: !372, file: !372, line: 45, type: !373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!372 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!373 = !DISubroutineType(types: !374)
!374 = !{!150, !186}
!375 = !DISubprogram(name: "IsEventLogging", scope: !12, file: !12, line: 80, type: !376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!376 = !DISubroutineType(types: !377)
!377 = !{!165}
!378 = !DILocation(line: 0, scope: !268)
!379 = !DILocation(line: 1227, column: 10, scope: !268)
!380 = !DILocation(line: 1228, column: 10, scope: !268)
!381 = !DILocation(line: 1229, column: 10, scope: !268)
!382 = !DILocation(line: 1230, column: 10, scope: !268)
!383 = !DILocation(line: 1228, column: 17, scope: !268)
!384 = !DILocation(line: 1230, column: 16, scope: !268)
!385 = !DILocation(line: 1231, column: 10, scope: !268)
!386 = !DILocation(line: 1231, column: 16, scope: !268)
!387 = !DILocation(line: 1232, column: 17, scope: !290)
!388 = !DILocation(line: 1232, column: 23, scope: !290)
!389 = !DILocation(line: 1232, column: 7, scope: !268)
!390 = !DILocation(line: 1238, column: 13, scope: !295)
!391 = !DILocation(line: 1238, column: 20, scope: !295)
!392 = !DILocation(line: 1238, column: 7, scope: !268)
!393 = !DILocation(line: 0, scope: !299)
!394 = !DILocation(line: 1246, column: 21, scope: !299)
!395 = !DILocation(line: 1246, column: 29, scope: !299)
!396 = !DILocation(line: 1246, column: 54, scope: !299)
!397 = !DILocation(line: 1247, column: 30, scope: !299)
!398 = !DILocation(line: 1247, column: 37, scope: !299)
!399 = !DILocation(line: 1246, column: 7, scope: !299)
!400 = distinct !{!400, !399, !401, !309, !310}
!401 = !DILocation(line: 1248, column: 20, scope: !299)
!402 = !DILocation(line: 0, scope: !295)
!403 = !DILocation(line: 1254, column: 58, scope: !268)
!404 = !DILocation(line: 1254, column: 45, scope: !268)
!405 = !DILocation(line: 1254, column: 74, scope: !268)
!406 = !DILocation(line: 1254, column: 3, scope: !268)
!407 = distinct !{!407, !406, !408, !309, !310}
!408 = !DILocation(line: 1258, column: 3, scope: !268)
!409 = !DILocation(line: 1257, column: 16, scope: !320)
!410 = !DILocation(line: 1254, column: 16, scope: !268)
!411 = !DILocation(line: 1254, column: 41, scope: !268)
!412 = !DILocation(line: 1259, column: 48, scope: !325)
!413 = !DILocation(line: 1259, column: 55, scope: !325)
!414 = !DILocation(line: 1259, column: 7, scope: !268)
!415 = !DILocation(line: 1261, column: 21, scope: !329)
!416 = !DILocation(line: 1261, column: 26, scope: !329)
!417 = !DILocation(line: 1261, column: 51, scope: !329)
!418 = !DILocation(line: 1262, column: 27, scope: !329)
!419 = !DILocation(line: 1262, column: 34, scope: !329)
!420 = !DILocation(line: 1261, column: 7, scope: !329)
!421 = distinct !{!421, !420, !422, !309, !310}
!422 = !DILocation(line: 1263, column: 20, scope: !329)
!423 = !DILocation(line: 1264, column: 18, scope: !329)
!424 = !DILocation(line: 1266, column: 5, scope: !329)
!425 = !DILocation(line: 1269, column: 21, scope: !341)
!426 = !DILocation(line: 1269, column: 46, scope: !341)
!427 = !DILocation(line: 1270, column: 33, scope: !341)
!428 = !DILocation(line: 1270, column: 19, scope: !341)
!429 = !DILocation(line: 1270, column: 26, scope: !341)
!430 = !DILocation(line: 1270, column: 9, scope: !341)
!431 = !DILocation(line: 1271, column: 18, scope: !342)
!432 = !DILocation(line: 1274, column: 62, scope: !342)
!433 = !DILocation(line: 1274, column: 7, scope: !342)
!434 = !DILocation(line: 1277, column: 20, scope: !351)
!435 = !DILocation(line: 1274, column: 20, scope: !342)
!436 = !DILocation(line: 1274, column: 45, scope: !342)
!437 = distinct !{!437, !433, !438, !309, !310}
!438 = !DILocation(line: 1278, column: 7, scope: !342)
!439 = !DILocation(line: 1279, column: 21, scope: !342)
!440 = !DILocation(line: 1280, column: 11, scope: !342)
!441 = !DILocation(line: 1274, column: 55, scope: !342)
!442 = !DILocation(line: 1280, column: 20, scope: !359)
!443 = !DILocation(line: 1281, column: 19, scope: !359)
!444 = !DILocation(line: 1281, column: 9, scope: !359)
!445 = !DILocation(line: 1284, column: 1, scope: !268)
!446 = distinct !DISubprogram(name: "AddPathToXMLTree", scope: !147, file: !147, line: 213, type: !228, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !447)
!447 = !{!448, !449, !450, !451, !452, !456, !457, !458, !459, !460, !461}
!448 = !DILocalVariable(name: "xml_info", arg: 1, scope: !446, file: !147, line: 213, type: !143)
!449 = !DILocalVariable(name: "path", arg: 2, scope: !446, file: !147, line: 214, type: !186)
!450 = !DILocalVariable(name: "offset", arg: 3, scope: !446, file: !147, line: 214, type: !230)
!451 = !DILocalVariable(name: "components", scope: !446, file: !147, line: 217, type: !153)
!452 = !DILocalVariable(name: "subnode", scope: !446, file: !147, line: 218, type: !453)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 32768, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 4096)
!456 = !DILocalVariable(name: "tag", scope: !446, file: !147, line: 219, type: !453)
!457 = !DILocalVariable(name: "i", scope: !446, file: !147, line: 222, type: !173)
!458 = !DILocalVariable(name: "number_components", scope: !446, file: !147, line: 225, type: !156)
!459 = !DILocalVariable(name: "j", scope: !446, file: !147, line: 228, type: !173)
!460 = !DILocalVariable(name: "child", scope: !446, file: !147, line: 231, type: !143)
!461 = !DILocalVariable(name: "node", scope: !446, file: !147, line: 232, type: !143)
!462 = !DILocation(line: 0, scope: !446)
!463 = !DILocation(line: 216, column: 3, scope: !446)
!464 = !DILocation(line: 218, column: 5, scope: !446)
!465 = !DILocation(line: 219, column: 5, scope: !446)
!466 = !DILocation(line: 224, column: 3, scope: !446)
!467 = !DILocation(line: 237, column: 17, scope: !468)
!468 = distinct !DILexicalBlock(scope: !446, file: !147, line: 237, column: 7)
!469 = !DILocation(line: 237, column: 23, scope: !468)
!470 = !DILocation(line: 237, column: 7, scope: !446)
!471 = !DILocation(line: 238, column: 12, scope: !468)
!472 = !DILocation(line: 238, column: 5, scope: !468)
!473 = !DILocation(line: 240, column: 14, scope: !446)
!474 = !DILocation(line: 241, column: 18, scope: !475)
!475 = distinct !DILexicalBlock(scope: !446, file: !147, line: 241, column: 7)
!476 = !DILocation(line: 241, column: 7, scope: !446)
!477 = !DILocation(line: 243, column: 27, scope: !478)
!478 = distinct !DILexicalBlock(scope: !479, file: !147, line: 243, column: 3)
!479 = distinct !DILexicalBlock(scope: !446, file: !147, line: 243, column: 3)
!480 = !{!252, !252, i64 0}
!481 = !DILocation(line: 243, column: 15, scope: !478)
!482 = !DILocation(line: 243, column: 3, scope: !479)
!483 = !DILocation(line: 245, column: 22, scope: !484)
!484 = distinct !DILexicalBlock(scope: !478, file: !147, line: 244, column: 3)
!485 = !DILocation(line: 245, column: 5, scope: !484)
!486 = !DILocation(line: 246, column: 22, scope: !484)
!487 = !DILocation(line: 246, column: 5, scope: !484)
!488 = !DILocalVariable(name: "xml_info", arg: 1, scope: !489, file: !147, line: 919, type: !143)
!489 = distinct !DISubprogram(name: "GetXMLTreeChild", scope: !147, file: !147, line: 919, type: !490, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !492)
!490 = !DISubroutineType(types: !491)
!491 = !{!143, !143, !186}
!492 = !{!488, !493, !494}
!493 = !DILocalVariable(name: "tag", arg: 2, scope: !489, file: !147, line: 919, type: !186)
!494 = !DILocalVariable(name: "child", scope: !489, file: !147, line: 922, type: !143)
!495 = !DILocation(line: 0, scope: !489, inlinedAt: !496)
!496 = distinct !DILocation(line: 247, column: 11, scope: !484)
!497 = !DILocation(line: 927, column: 17, scope: !498, inlinedAt: !496)
!498 = distinct !DILexicalBlock(scope: !489, file: !147, line: 927, column: 7)
!499 = !DILocation(line: 927, column: 23, scope: !498, inlinedAt: !496)
!500 = !DILocation(line: 927, column: 7, scope: !489, inlinedAt: !496)
!501 = !DILocation(line: 928, column: 12, scope: !498, inlinedAt: !496)
!502 = !DILocation(line: 928, column: 5, scope: !498, inlinedAt: !496)
!503 = !DILocation(line: 929, column: 19, scope: !489, inlinedAt: !496)
!504 = !DILocation(line: 930, column: 7, scope: !489, inlinedAt: !496)
!505 = !DILocation(line: 931, column: 62, scope: !506, inlinedAt: !496)
!506 = distinct !DILexicalBlock(scope: !489, file: !147, line: 930, column: 7)
!507 = !DILocation(line: 931, column: 48, scope: !506, inlinedAt: !496)
!508 = !DILocation(line: 931, column: 71, scope: !506, inlinedAt: !496)
!509 = !DILocation(line: 931, column: 5, scope: !506, inlinedAt: !496)
!510 = !DILocation(line: 932, column: 20, scope: !506, inlinedAt: !496)
!511 = !DILocation(line: 931, column: 19, scope: !506, inlinedAt: !496)
!512 = !DILocation(line: 931, column: 44, scope: !506, inlinedAt: !496)
!513 = !DILocation(line: 249, column: 13, scope: !514)
!514 = distinct !DILexicalBlock(scope: !484, file: !147, line: 248, column: 9)
!515 = !DILocation(line: 251, column: 14, scope: !516)
!516 = distinct !DILexicalBlock(scope: !484, file: !147, line: 251, column: 9)
!517 = !DILocation(line: 251, column: 9, scope: !484)
!518 = !DILocalVariable(name: "value", arg: 1, scope: !519, file: !520, line: 68, type: !523)
!519 = distinct !DISubprogram(name: "StringToLong", scope: !520, file: !520, line: 68, type: !521, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !524)
!520 = !DIFile(filename: "apps/538.imagick_r/src/magick/string-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "af275f9a9b26a4e8bc1a481724207dee")
!521 = !DISubroutineType(types: !522)
!522 = !{!177, !523}
!523 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !186)
!524 = !{!518}
!525 = !DILocation(line: 0, scope: !519, inlinedAt: !526)
!526 = distinct !DILocation(line: 253, column: 22, scope: !527)
!527 = distinct !DILexicalBlock(scope: !484, file: !147, line: 253, column: 5)
!528 = !DILocation(line: 70, column: 10, scope: !519, inlinedAt: !526)
!529 = !DILocation(line: 253, column: 10, scope: !527)
!530 = !DILocation(line: 0, scope: !484)
!531 = !DILocation(line: 0, scope: !527)
!532 = !DILocation(line: 253, column: 49, scope: !533)
!533 = distinct !DILexicalBlock(scope: !527, file: !147, line: 253, column: 5)
!534 = !DILocation(line: 253, column: 5, scope: !527)
!535 = !DILocalVariable(name: "xml_info", arg: 1, scope: !536, file: !147, line: 991, type: !143)
!536 = distinct !DISubprogram(name: "GetXMLTreeOrdered", scope: !147, file: !147, line: 991, type: !537, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !539)
!537 = !DISubroutineType(types: !538)
!538 = !{!143, !143}
!539 = !{!535}
!540 = !DILocation(line: 0, scope: !536, inlinedAt: !541)
!541 = distinct !DILocation(line: 255, column: 12, scope: !542)
!542 = distinct !DILexicalBlock(scope: !533, file: !147, line: 254, column: 5)
!543 = !DILocation(line: 996, column: 17, scope: !544, inlinedAt: !541)
!544 = distinct !DILexicalBlock(scope: !536, file: !147, line: 996, column: 7)
!545 = !DILocation(line: 996, column: 23, scope: !544, inlinedAt: !541)
!546 = !DILocation(line: 996, column: 7, scope: !536, inlinedAt: !541)
!547 = !DILocation(line: 997, column: 12, scope: !544, inlinedAt: !541)
!548 = !DILocation(line: 997, column: 5, scope: !544, inlinedAt: !541)
!549 = !DILocation(line: 998, column: 20, scope: !536, inlinedAt: !541)
!550 = !DILocation(line: 256, column: 16, scope: !551)
!551 = distinct !DILexicalBlock(scope: !542, file: !147, line: 256, column: 11)
!552 = !DILocation(line: 256, column: 11, scope: !542)
!553 = distinct !{!553, !534, !554, !309, !310}
!554 = !DILocation(line: 258, column: 5, scope: !527)
!555 = !DILocation(line: 261, column: 33, scope: !484)
!556 = !DILocation(line: 261, column: 19, scope: !484)
!557 = !DILocation(line: 261, column: 18, scope: !484)
!558 = !DILocation(line: 243, column: 47, scope: !478)
!559 = distinct !{!559, !482, !560, !309, !310}
!560 = !DILocation(line: 262, column: 3, scope: !479)
!561 = !DILocation(line: 263, column: 25, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !147, line: 263, column: 3)
!563 = distinct !DILexicalBlock(scope: !446, file: !147, line: 263, column: 3)
!564 = !DILocation(line: 263, column: 13, scope: !562)
!565 = !DILocation(line: 263, column: 3, scope: !563)
!566 = !DILocation(line: 264, column: 33, scope: !562)
!567 = !DILocation(line: 264, column: 19, scope: !562)
!568 = !DILocation(line: 264, column: 18, scope: !562)
!569 = !DILocation(line: 263, column: 45, scope: !562)
!570 = distinct !{!570, !565, !571, !309, !310}
!571 = !DILocation(line: 264, column: 46, scope: !563)
!572 = !DILocation(line: 265, column: 24, scope: !446)
!573 = !DILocation(line: 266, column: 3, scope: !446)
!574 = !DILocation(line: 267, column: 1, scope: !446)
!575 = !DISubprogram(name: "LogMagickEvent", scope: !12, file: !12, line: 83, type: !576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!576 = !DISubroutineType(types: !577)
!577 = !{!165, !578, !186, !186, !230, !186, null}
!578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !12, line: 58, baseType: !11)
!580 = !DISubprogram(name: "GetPathComponents", scope: !37, file: !37, line: 40, type: !581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!581 = !DISubroutineType(types: !582)
!582 = !{!153, !186, !583}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!584 = !DISubprogram(name: "GetPathComponent", scope: !37, file: !37, line: 68, type: !585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !186, !587, !150}
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "PathType", file: !37, line: 36, baseType: !36)
!588 = !DILocation(line: 0, scope: !489)
!589 = !DILocation(line: 927, column: 17, scope: !498)
!590 = !DILocation(line: 927, column: 23, scope: !498)
!591 = !DILocation(line: 927, column: 7, scope: !489)
!592 = !DILocation(line: 928, column: 12, scope: !498)
!593 = !DILocation(line: 928, column: 5, scope: !498)
!594 = !DILocation(line: 929, column: 19, scope: !489)
!595 = !DILocation(line: 930, column: 11, scope: !506)
!596 = !DILocation(line: 930, column: 7, scope: !489)
!597 = !DILocation(line: 931, column: 62, scope: !506)
!598 = !DILocation(line: 931, column: 48, scope: !506)
!599 = !DILocation(line: 931, column: 71, scope: !506)
!600 = !DILocation(line: 931, column: 5, scope: !506)
!601 = !DILocation(line: 932, column: 20, scope: !506)
!602 = !DILocation(line: 931, column: 19, scope: !506)
!603 = !DILocation(line: 931, column: 44, scope: !506)
!604 = !DILocation(line: 933, column: 3, scope: !489)
!605 = !DILocation(line: 0, scope: !536)
!606 = !DILocation(line: 996, column: 17, scope: !544)
!607 = !DILocation(line: 996, column: 23, scope: !544)
!608 = !DILocation(line: 996, column: 7, scope: !536)
!609 = !DILocation(line: 997, column: 12, scope: !544)
!610 = !DILocation(line: 997, column: 5, scope: !544)
!611 = !DILocation(line: 998, column: 20, scope: !536)
!612 = !DILocation(line: 998, column: 3, scope: !536)
!613 = !DISubprogram(name: "DestroyString", scope: !372, file: !372, line: 46, type: !614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!614 = !DISubroutineType(types: !615)
!615 = !{!150, !150}
!616 = !DISubprogram(name: "RelinquishMagickMemory", scope: !364, file: !364, line: 51, type: !617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!617 = !DISubroutineType(types: !618)
!618 = !{!172, !172}
!619 = distinct !DISubprogram(name: "CanonicalXMLContent", scope: !147, file: !147, line: 298, type: !620, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !623)
!620 = !DISubroutineType(types: !621)
!621 = !{!150, !186, !622}
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!623 = !{!624, !625, !626, !627, !628, !629, !630, !631, !632}
!624 = !DILocalVariable(name: "content", arg: 1, scope: !619, file: !147, line: 298, type: !186)
!625 = !DILocalVariable(name: "pedantic", arg: 2, scope: !619, file: !147, line: 299, type: !622)
!626 = !DILocalVariable(name: "base64", scope: !619, file: !147, line: 302, type: !150)
!627 = !DILocalVariable(name: "canonical_content", scope: !619, file: !147, line: 303, type: !150)
!628 = !DILocalVariable(name: "p", scope: !619, file: !147, line: 306, type: !178)
!629 = !DILocalVariable(name: "i", scope: !619, file: !147, line: 309, type: !173)
!630 = !DILocalVariable(name: "extent", scope: !619, file: !147, line: 312, type: !156)
!631 = !DILocalVariable(name: "length", scope: !619, file: !147, line: 313, type: !156)
!632 = !DILocalVariable(name: "utf8", scope: !619, file: !147, line: 316, type: !181)
!633 = !DILocation(line: 0, scope: !619)
!634 = !DILocation(line: 301, column: 3, scope: !619)
!635 = !DILocation(line: 311, column: 3, scope: !619)
!636 = !DILocalVariable(name: "content", arg: 1, scope: !637, file: !638, line: 51, type: !178)
!637 = distinct !DISubprogram(name: "ConvertLatin1ToUTF8", scope: !638, file: !638, line: 51, type: !639, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !641)
!638 = !DIFile(filename: "apps/538.imagick_r/src/magick/token-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a46756b24cd287baa0681a9d976f3bd8")
!639 = !DISubroutineType(types: !640)
!640 = !{!181, !178}
!641 = !{!636, !642, !643, !644, !645, !646}
!642 = !DILocalVariable(name: "p", scope: !637, file: !638, line: 54, type: !178)
!643 = !DILocalVariable(name: "q", scope: !637, file: !638, line: 57, type: !181)
!644 = !DILocalVariable(name: "length", scope: !637, file: !638, line: 60, type: !156)
!645 = !DILocalVariable(name: "utf8", scope: !637, file: !638, line: 63, type: !181)
!646 = !DILocalVariable(name: "c", scope: !637, file: !638, line: 66, type: !7)
!647 = !DILocation(line: 0, scope: !637, inlinedAt: !648)
!648 = distinct !DILocation(line: 318, column: 8, scope: !619)
!649 = !DILocation(line: 69, column: 19, scope: !650, inlinedAt: !648)
!650 = distinct !DILexicalBlock(scope: !651, file: !638, line: 69, column: 3)
!651 = distinct !DILexicalBlock(scope: !637, file: !638, line: 69, column: 3)
!652 = !{!250, !250, i64 0}
!653 = !DILocation(line: 69, column: 22, scope: !650, inlinedAt: !648)
!654 = !DILocation(line: 69, column: 3, scope: !651, inlinedAt: !648)
!655 = !DILocation(line: 70, column: 25, scope: !650, inlinedAt: !648)
!656 = !DILocation(line: 70, column: 13, scope: !650, inlinedAt: !648)
!657 = !DILocation(line: 70, column: 11, scope: !650, inlinedAt: !648)
!658 = !DILocation(line: 69, column: 32, scope: !650, inlinedAt: !648)
!659 = distinct !{!659, !654, !660, !309, !310}
!660 = !DILocation(line: 70, column: 36, scope: !651, inlinedAt: !648)
!661 = !DILocation(line: 72, column: 15, scope: !662, inlinedAt: !648)
!662 = distinct !DILexicalBlock(scope: !637, file: !638, line: 72, column: 7)
!663 = !DILocation(line: 72, column: 7, scope: !637, inlinedAt: !648)
!664 = !DILocation(line: 73, column: 55, scope: !662, inlinedAt: !648)
!665 = !DILocation(line: 73, column: 28, scope: !662, inlinedAt: !648)
!666 = !DILocation(line: 74, column: 12, scope: !667, inlinedAt: !648)
!667 = distinct !DILexicalBlock(scope: !637, file: !638, line: 74, column: 7)
!668 = !DILocation(line: 74, column: 7, scope: !637, inlinedAt: !648)
!669 = !DILocation(line: 77, column: 19, scope: !670, inlinedAt: !648)
!670 = distinct !DILexicalBlock(scope: !671, file: !638, line: 77, column: 3)
!671 = distinct !DILexicalBlock(scope: !637, file: !638, line: 77, column: 3)
!672 = !DILocation(line: 77, column: 22, scope: !670, inlinedAt: !648)
!673 = !DILocation(line: 77, column: 3, scope: !671, inlinedAt: !648)
!674 = !DILocation(line: 80, column: 20, scope: !675, inlinedAt: !648)
!675 = distinct !DILexicalBlock(scope: !676, file: !638, line: 80, column: 9)
!676 = distinct !DILexicalBlock(scope: !670, file: !638, line: 78, column: 3)
!677 = !DILocation(line: 80, column: 9, scope: !676, inlinedAt: !648)
!678 = !DILocation(line: 81, column: 9, scope: !675, inlinedAt: !648)
!679 = !DILocation(line: 81, column: 11, scope: !675, inlinedAt: !648)
!680 = !DILocation(line: 81, column: 7, scope: !675, inlinedAt: !648)
!681 = !DILocation(line: 84, column: 25, scope: !682, inlinedAt: !648)
!682 = distinct !DILexicalBlock(scope: !675, file: !638, line: 83, column: 7)
!683 = !DILocation(line: 84, column: 19, scope: !682, inlinedAt: !648)
!684 = !DILocation(line: 84, column: 11, scope: !682, inlinedAt: !648)
!685 = !DILocation(line: 84, column: 13, scope: !682, inlinedAt: !648)
!686 = !DILocation(line: 85, column: 24, scope: !682, inlinedAt: !648)
!687 = !DILocation(line: 85, column: 19, scope: !682, inlinedAt: !648)
!688 = !DILocation(line: 85, column: 11, scope: !682, inlinedAt: !648)
!689 = !DILocation(line: 85, column: 13, scope: !682, inlinedAt: !648)
!690 = !DILocation(line: 0, scope: !675, inlinedAt: !648)
!691 = !DILocation(line: 77, column: 32, scope: !670, inlinedAt: !648)
!692 = distinct !{!692, !673, !693, !309, !310}
!693 = !DILocation(line: 87, column: 3, scope: !671, inlinedAt: !648)
!694 = !DILocation(line: 88, column: 5, scope: !637, inlinedAt: !648)
!695 = !DILocation(line: 321, column: 16, scope: !696)
!696 = distinct !DILexicalBlock(scope: !697, file: !147, line: 321, column: 3)
!697 = distinct !DILexicalBlock(scope: !619, file: !147, line: 321, column: 3)
!698 = !DILocation(line: 321, column: 19, scope: !696)
!699 = !DILocation(line: 321, column: 3, scope: !697)
!700 = !DILocation(line: 322, column: 13, scope: !701)
!701 = distinct !DILexicalBlock(scope: !696, file: !147, line: 322, column: 9)
!702 = !DILocation(line: 322, column: 21, scope: !701)
!703 = !DILocation(line: 321, column: 29, scope: !696)
!704 = distinct !{!704, !699, !705, !309, !310}
!705 = !DILocation(line: 323, column: 7, scope: !697)
!706 = !DILocation(line: 329, column: 32, scope: !707)
!707 = distinct !DILexicalBlock(scope: !708, file: !147, line: 325, column: 5)
!708 = distinct !DILexicalBlock(scope: !619, file: !147, line: 324, column: 7)
!709 = !DILocation(line: 329, column: 14, scope: !707)
!710 = !DILocation(line: 330, column: 30, scope: !707)
!711 = !DILocation(line: 331, column: 18, scope: !712)
!712 = distinct !DILexicalBlock(scope: !707, file: !147, line: 331, column: 11)
!713 = !DILocation(line: 331, column: 11, scope: !707)
!714 = !DILocation(line: 333, column: 25, scope: !707)
!715 = !DILocation(line: 333, column: 24, scope: !707)
!716 = !DILocation(line: 334, column: 14, scope: !707)
!717 = !DILocation(line: 335, column: 14, scope: !707)
!718 = !DILocation(line: 336, column: 14, scope: !707)
!719 = !DILocation(line: 337, column: 14, scope: !707)
!720 = !DILocation(line: 337, column: 7, scope: !707)
!721 = !DILocation(line: 343, column: 21, scope: !619)
!722 = !DILocation(line: 343, column: 20, scope: !619)
!723 = !DILocation(line: 345, column: 16, scope: !724)
!724 = distinct !DILexicalBlock(scope: !725, file: !147, line: 345, column: 3)
!725 = distinct !DILexicalBlock(scope: !619, file: !147, line: 345, column: 3)
!726 = !DILocation(line: 345, column: 19, scope: !724)
!727 = !DILocation(line: 345, column: 3, scope: !725)
!728 = !DILocation(line: 347, column: 11, scope: !729)
!729 = distinct !DILexicalBlock(scope: !730, file: !147, line: 347, column: 9)
!730 = distinct !DILexicalBlock(scope: !724, file: !147, line: 346, column: 3)
!731 = !DILocation(line: 347, column: 27, scope: !729)
!732 = !DILocation(line: 347, column: 9, scope: !730)
!733 = !DILocation(line: 349, column: 15, scope: !734)
!734 = distinct !DILexicalBlock(scope: !729, file: !147, line: 348, column: 7)
!735 = !DILocation(line: 350, column: 56, scope: !734)
!736 = !DILocation(line: 350, column: 36, scope: !734)
!737 = !DILocation(line: 350, column: 26, scope: !734)
!738 = !DILocation(line: 352, column: 31, scope: !739)
!739 = distinct !DILexicalBlock(scope: !734, file: !147, line: 352, column: 13)
!740 = !DILocation(line: 352, column: 13, scope: !734)
!741 = !DILocation(line: 355, column: 13, scope: !730)
!742 = !DILocation(line: 355, column: 5, scope: !730)
!743 = !DILocation(line: 359, column: 31, scope: !744)
!744 = distinct !DILexicalBlock(scope: !745, file: !147, line: 358, column: 7)
!745 = distinct !DILexicalBlock(scope: !730, file: !147, line: 356, column: 5)
!746 = !DILocation(line: 359, column: 48, scope: !744)
!747 = !DILocation(line: 359, column: 12, scope: !744)
!748 = !DILocation(line: 359, column: 10, scope: !744)
!749 = !DILocation(line: 360, column: 9, scope: !744)
!750 = !DILocation(line: 364, column: 31, scope: !751)
!751 = distinct !DILexicalBlock(scope: !745, file: !147, line: 363, column: 7)
!752 = !DILocation(line: 364, column: 48, scope: !751)
!753 = !DILocation(line: 364, column: 12, scope: !751)
!754 = !DILocation(line: 364, column: 10, scope: !751)
!755 = !DILocation(line: 365, column: 9, scope: !751)
!756 = !DILocation(line: 369, column: 31, scope: !757)
!757 = distinct !DILexicalBlock(scope: !745, file: !147, line: 368, column: 7)
!758 = !DILocation(line: 369, column: 48, scope: !757)
!759 = !DILocation(line: 369, column: 12, scope: !757)
!760 = !DILocation(line: 369, column: 10, scope: !757)
!761 = !DILocation(line: 370, column: 9, scope: !757)
!762 = !DILocation(line: 374, column: 31, scope: !763)
!763 = distinct !DILexicalBlock(scope: !745, file: !147, line: 373, column: 7)
!764 = !DILocation(line: 374, column: 48, scope: !763)
!765 = !DILocation(line: 374, column: 12, scope: !763)
!766 = !DILocation(line: 374, column: 10, scope: !763)
!767 = !DILocation(line: 375, column: 9, scope: !763)
!768 = !DILocation(line: 0, scope: !769)
!769 = distinct !DILexicalBlock(scope: !745, file: !147, line: 378, column: 7)
!770 = !DILocation(line: 379, column: 13, scope: !769)
!771 = !DILocation(line: 381, column: 32, scope: !772)
!772 = distinct !DILexicalBlock(scope: !773, file: !147, line: 380, column: 11)
!773 = distinct !DILexicalBlock(scope: !769, file: !147, line: 379, column: 13)
!774 = !DILocation(line: 381, column: 13, scope: !772)
!775 = !DILocation(line: 381, column: 35, scope: !772)
!776 = !DILocation(line: 382, column: 13, scope: !772)
!777 = !DILocation(line: 384, column: 48, scope: !769)
!778 = !DILocation(line: 384, column: 12, scope: !769)
!779 = !DILocation(line: 384, column: 10, scope: !769)
!780 = !DILocation(line: 385, column: 9, scope: !769)
!781 = !DILocation(line: 0, scope: !782)
!782 = distinct !DILexicalBlock(scope: !745, file: !147, line: 388, column: 7)
!783 = !DILocation(line: 389, column: 13, scope: !782)
!784 = !DILocation(line: 391, column: 32, scope: !785)
!785 = distinct !DILexicalBlock(scope: !786, file: !147, line: 390, column: 11)
!786 = distinct !DILexicalBlock(scope: !782, file: !147, line: 389, column: 13)
!787 = !DILocation(line: 391, column: 13, scope: !785)
!788 = !DILocation(line: 391, column: 35, scope: !785)
!789 = !DILocation(line: 392, column: 13, scope: !785)
!790 = !DILocation(line: 394, column: 48, scope: !782)
!791 = !DILocation(line: 394, column: 12, scope: !782)
!792 = !DILocation(line: 394, column: 10, scope: !782)
!793 = !DILocation(line: 395, column: 9, scope: !782)
!794 = !DILocation(line: 399, column: 31, scope: !795)
!795 = distinct !DILexicalBlock(scope: !745, file: !147, line: 398, column: 7)
!796 = !DILocation(line: 399, column: 48, scope: !795)
!797 = !DILocation(line: 399, column: 12, scope: !795)
!798 = !DILocation(line: 399, column: 10, scope: !795)
!799 = !DILocation(line: 400, column: 9, scope: !795)
!800 = !DILocation(line: 404, column: 9, scope: !801)
!801 = distinct !DILexicalBlock(scope: !745, file: !147, line: 403, column: 7)
!802 = !DILocation(line: 404, column: 28, scope: !801)
!803 = !DILocation(line: 404, column: 31, scope: !801)
!804 = !DILocation(line: 405, column: 9, scope: !801)
!805 = !DILocation(line: 0, scope: !745)
!806 = !DILocation(line: 345, column: 29, scope: !724)
!807 = distinct !{!807, !727, !808, !309, !310}
!808 = !DILocation(line: 408, column: 3, scope: !725)
!809 = !DILocation(line: 409, column: 3, scope: !619)
!810 = !DILocation(line: 409, column: 23, scope: !619)
!811 = !DILocation(line: 410, column: 26, scope: !619)
!812 = !DILocation(line: 411, column: 10, scope: !619)
!813 = !DILocation(line: 411, column: 3, scope: !619)
!814 = !DILocation(line: 412, column: 1, scope: !619)
!815 = !DISubprogram(name: "Base64Encode", scope: !37, file: !37, line: 39, type: !816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!816 = !DISubroutineType(types: !817)
!817 = !{!150, !178, !230, !583}
!818 = !DISubprogram(name: "AcquireString", scope: !372, file: !372, line: 43, type: !373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!819 = !DISubprogram(name: "ConcatenateString", scope: !372, file: !372, line: 70, type: !820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!820 = !DISubroutineType(types: !821)
!821 = !{!165, !153, !186}
!822 = !DISubprogram(name: "ResizeQuantumMemory", scope: !364, file: !364, line: 55, type: !823, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!823 = !DISubroutineType(types: !824)
!824 = !{!172, !172, !230, !230}
!825 = !DISubprogram(name: "FormatLocaleString", scope: !826, file: !826, line: 71, type: !827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!826 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!827 = !DISubroutineType(types: !828)
!828 = !{!173, !829, !230, !523, null}
!829 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !150)
!830 = distinct !DISubprogram(name: "DestroyXMLTree", scope: !147, file: !147, line: 570, type: !537, scopeLine: 571, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !831)
!831 = !{!832}
!832 = !DILocalVariable(name: "xml_info", arg: 1, scope: !830, file: !147, line: 570, type: !143)
!833 = !DILocation(line: 0, scope: !830)
!834 = !DILocation(line: 575, column: 17, scope: !835)
!835 = distinct !DILexicalBlock(scope: !830, file: !147, line: 575, column: 7)
!836 = !DILocation(line: 575, column: 23, scope: !835)
!837 = !DILocation(line: 575, column: 7, scope: !830)
!838 = !DILocation(line: 576, column: 12, scope: !835)
!839 = !DILocation(line: 576, column: 5, scope: !835)
!840 = !DILocalVariable(name: "xml_info", arg: 1, scope: !841, file: !147, line: 461, type: !143)
!841 = distinct !DISubprogram(name: "DestroyXMLTreeChild", scope: !147, file: !147, line: 461, type: !842, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !844)
!842 = !DISubroutineType(types: !843)
!843 = !{null, !143}
!844 = !{!840, !845, !846}
!845 = !DILocalVariable(name: "node", scope: !841, file: !147, line: 464, type: !143)
!846 = !DILocalVariable(name: "prev", scope: !841, file: !147, line: 465, type: !143)
!847 = !DILocation(line: 0, scope: !841, inlinedAt: !848)
!848 = distinct !DILocation(line: 577, column: 3, scope: !830)
!849 = !DILocation(line: 467, column: 18, scope: !841, inlinedAt: !848)
!850 = !DILocation(line: 468, column: 14, scope: !841, inlinedAt: !848)
!851 = !DILocation(line: 468, column: 3, scope: !841, inlinedAt: !848)
!852 = !DILocation(line: 0, scope: !853, inlinedAt: !848)
!853 = distinct !DILexicalBlock(scope: !841, file: !147, line: 469, column: 3)
!854 = !DILocation(line: 471, column: 17, scope: !853, inlinedAt: !848)
!855 = !DILocation(line: 471, column: 23, scope: !853, inlinedAt: !848)
!856 = !DILocation(line: 471, column: 5, scope: !853, inlinedAt: !848)
!857 = distinct !{!857, !856, !858, !309, !310}
!858 = !DILocation(line: 475, column: 5, scope: !853, inlinedAt: !848)
!859 = !DILocation(line: 476, column: 12, scope: !853, inlinedAt: !848)
!860 = !DILocation(line: 477, column: 9, scope: !853, inlinedAt: !848)
!861 = !DILocation(line: 478, column: 13, scope: !862, inlinedAt: !848)
!862 = distinct !DILexicalBlock(scope: !853, file: !147, line: 477, column: 9)
!863 = !DILocation(line: 478, column: 18, scope: !862, inlinedAt: !848)
!864 = !DILocation(line: 481, column: 18, scope: !841, inlinedAt: !848)
!865 = !DILocalVariable(name: "xml_info", arg: 1, scope: !866, file: !147, line: 484, type: !143)
!866 = distinct !DISubprogram(name: "DestroyXMLTreeOrdered", scope: !147, file: !147, line: 484, type: !842, scopeLine: 485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !867)
!867 = !{!865, !868, !869}
!868 = !DILocalVariable(name: "node", scope: !866, file: !147, line: 487, type: !143)
!869 = !DILocalVariable(name: "prev", scope: !866, file: !147, line: 488, type: !143)
!870 = !DILocation(line: 0, scope: !866, inlinedAt: !871)
!871 = distinct !DILocation(line: 578, column: 3, scope: !830)
!872 = !DILocation(line: 490, column: 18, scope: !866, inlinedAt: !871)
!873 = !DILocation(line: 491, column: 14, scope: !866, inlinedAt: !871)
!874 = !DILocation(line: 491, column: 3, scope: !866, inlinedAt: !871)
!875 = !DILocation(line: 0, scope: !876, inlinedAt: !871)
!876 = distinct !DILexicalBlock(scope: !866, file: !147, line: 492, column: 3)
!877 = !DILocation(line: 494, column: 17, scope: !876, inlinedAt: !871)
!878 = !DILocation(line: 494, column: 25, scope: !876, inlinedAt: !871)
!879 = !DILocation(line: 494, column: 5, scope: !876, inlinedAt: !871)
!880 = distinct !{!880, !879, !881, !309, !310}
!881 = !DILocation(line: 498, column: 5, scope: !876, inlinedAt: !871)
!882 = !DILocation(line: 499, column: 12, scope: !876, inlinedAt: !871)
!883 = !DILocation(line: 500, column: 9, scope: !876, inlinedAt: !871)
!884 = !DILocation(line: 501, column: 13, scope: !885, inlinedAt: !871)
!885 = distinct !DILexicalBlock(scope: !876, file: !147, line: 500, column: 9)
!886 = !DILocation(line: 501, column: 20, scope: !885, inlinedAt: !871)
!887 = !DILocation(line: 504, column: 20, scope: !866, inlinedAt: !871)
!888 = !DILocalVariable(name: "xml_info", arg: 1, scope: !889, file: !147, line: 507, type: !143)
!889 = distinct !DISubprogram(name: "DestroyXMLTreeRoot", scope: !147, file: !147, line: 507, type: !842, scopeLine: 508, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !890)
!890 = !{!888, !891, !892, !893, !894}
!891 = !DILocalVariable(name: "attributes", scope: !889, file: !147, line: 510, type: !153)
!892 = !DILocalVariable(name: "i", scope: !889, file: !147, line: 513, type: !173)
!893 = !DILocalVariable(name: "j", scope: !889, file: !147, line: 516, type: !173)
!894 = !DILocalVariable(name: "root", scope: !889, file: !147, line: 519, type: !188)
!895 = !DILocation(line: 0, scope: !889, inlinedAt: !896)
!896 = distinct !DILocation(line: 579, column: 3, scope: !830)
!897 = !DILocation(line: 524, column: 17, scope: !898, inlinedAt: !896)
!898 = distinct !DILexicalBlock(scope: !889, file: !147, line: 524, column: 7)
!899 = !DILocation(line: 524, column: 23, scope: !898, inlinedAt: !896)
!900 = !DILocation(line: 524, column: 7, scope: !889, inlinedAt: !896)
!901 = !DILocation(line: 525, column: 12, scope: !898, inlinedAt: !896)
!902 = !DILocation(line: 525, column: 5, scope: !898, inlinedAt: !896)
!903 = !DILocation(line: 526, column: 17, scope: !904, inlinedAt: !896)
!904 = distinct !DILexicalBlock(scope: !889, file: !147, line: 526, column: 7)
!905 = !DILocation(line: 526, column: 24, scope: !904, inlinedAt: !896)
!906 = !DILocation(line: 526, column: 7, scope: !889, inlinedAt: !896)
!907 = !DILocation(line: 532, column: 42, scope: !908, inlinedAt: !896)
!908 = distinct !DILexicalBlock(scope: !909, file: !147, line: 532, column: 3)
!909 = distinct !DILexicalBlock(scope: !889, file: !147, line: 532, column: 3)
!910 = !{!911, !249, i64 120}
!911 = !{!"_XMLTreeRoot", !248, i64 0, !249, i64 96, !250, i64 104, !249, i64 112, !249, i64 120, !249, i64 128, !250, i64 136, !249, i64 144, !252, i64 152}
!912 = !DILocation(line: 532, column: 36, scope: !908, inlinedAt: !896)
!913 = !DILocation(line: 532, column: 54, scope: !908, inlinedAt: !896)
!914 = !DILocation(line: 532, column: 3, scope: !909, inlinedAt: !896)
!915 = !DILocation(line: 533, column: 55, scope: !908, inlinedAt: !896)
!916 = !DILocation(line: 533, column: 39, scope: !908, inlinedAt: !896)
!917 = !DILocation(line: 533, column: 25, scope: !908, inlinedAt: !896)
!918 = !DILocation(line: 533, column: 11, scope: !908, inlinedAt: !896)
!919 = !DILocation(line: 533, column: 5, scope: !908, inlinedAt: !896)
!920 = !DILocation(line: 533, column: 24, scope: !908, inlinedAt: !896)
!921 = !DILocation(line: 532, column: 73, scope: !908, inlinedAt: !896)
!922 = distinct !{!922, !914, !923, !309, !310}
!923 = !DILocation(line: 533, column: 58, scope: !909, inlinedAt: !896)
!924 = !DILocation(line: 534, column: 28, scope: !889, inlinedAt: !896)
!925 = !DILocation(line: 534, column: 17, scope: !889, inlinedAt: !896)
!926 = !DILocation(line: 535, column: 19, scope: !927, inlinedAt: !896)
!927 = distinct !DILexicalBlock(scope: !928, file: !147, line: 535, column: 3)
!928 = distinct !DILexicalBlock(scope: !889, file: !147, line: 535, column: 3)
!929 = !{!911, !249, i64 128}
!930 = !DILocation(line: 535, column: 13, scope: !927, inlinedAt: !896)
!931 = !DILocation(line: 535, column: 33, scope: !927, inlinedAt: !896)
!932 = !DILocation(line: 535, column: 3, scope: !928, inlinedAt: !896)
!933 = !DILocation(line: 538, column: 9, scope: !934, inlinedAt: !896)
!934 = distinct !DILexicalBlock(scope: !935, file: !147, line: 538, column: 9)
!935 = distinct !DILexicalBlock(scope: !927, file: !147, line: 536, column: 3)
!936 = !DILocation(line: 538, column: 23, scope: !934, inlinedAt: !896)
!937 = !DILocation(line: 538, column: 9, scope: !935, inlinedAt: !896)
!938 = !DILocation(line: 539, column: 21, scope: !934, inlinedAt: !896)
!939 = !DILocation(line: 539, column: 20, scope: !934, inlinedAt: !896)
!940 = !DILocation(line: 539, column: 7, scope: !934, inlinedAt: !896)
!941 = !DILocation(line: 540, column: 15, scope: !942, inlinedAt: !896)
!942 = distinct !DILexicalBlock(scope: !943, file: !147, line: 540, column: 5)
!943 = distinct !DILexicalBlock(scope: !935, file: !147, line: 540, column: 5)
!944 = !DILocation(line: 540, column: 29, scope: !942, inlinedAt: !896)
!945 = !DILocation(line: 540, column: 5, scope: !943, inlinedAt: !896)
!946 = !DILocation(line: 543, column: 23, scope: !947, inlinedAt: !896)
!947 = distinct !DILexicalBlock(scope: !948, file: !147, line: 542, column: 11)
!948 = distinct !DILexicalBlock(scope: !942, file: !147, line: 541, column: 5)
!949 = !DILocation(line: 543, column: 22, scope: !947, inlinedAt: !896)
!950 = !DILocation(line: 544, column: 23, scope: !951, inlinedAt: !896)
!951 = distinct !DILexicalBlock(scope: !948, file: !147, line: 544, column: 11)
!952 = !DILocation(line: 544, column: 11, scope: !951, inlinedAt: !896)
!953 = !DILocation(line: 544, column: 27, scope: !951, inlinedAt: !896)
!954 = !DILocation(line: 544, column: 11, scope: !948, inlinedAt: !896)
!955 = !DILocation(line: 545, column: 25, scope: !951, inlinedAt: !896)
!956 = !DILocation(line: 545, column: 24, scope: !951, inlinedAt: !896)
!957 = !DILocation(line: 545, column: 9, scope: !951, inlinedAt: !896)
!958 = !DILocation(line: 546, column: 23, scope: !959, inlinedAt: !896)
!959 = distinct !DILexicalBlock(scope: !948, file: !147, line: 546, column: 11)
!960 = !DILocation(line: 546, column: 11, scope: !959, inlinedAt: !896)
!961 = !DILocation(line: 546, column: 27, scope: !959, inlinedAt: !896)
!962 = !DILocation(line: 546, column: 11, scope: !948, inlinedAt: !896)
!963 = !DILocation(line: 547, column: 25, scope: !959, inlinedAt: !896)
!964 = !DILocation(line: 547, column: 24, scope: !959, inlinedAt: !896)
!965 = !DILocation(line: 547, column: 9, scope: !959, inlinedAt: !896)
!966 = !DILocation(line: 540, column: 48, scope: !942, inlinedAt: !896)
!967 = distinct !{!967, !945, !968, !309, !310}
!968 = !DILocation(line: 548, column: 5, scope: !943, inlinedAt: !896)
!969 = !DILocation(line: 549, column: 26, scope: !935, inlinedAt: !896)
!970 = !DILocation(line: 535, column: 53, scope: !927, inlinedAt: !896)
!971 = distinct !{!971, !932, !972, !309, !310}
!972 = !DILocation(line: 550, column: 3, scope: !928, inlinedAt: !896)
!973 = !DILocation(line: 551, column: 7, scope: !974, inlinedAt: !896)
!974 = distinct !DILexicalBlock(scope: !889, file: !147, line: 551, column: 7)
!975 = !DILocation(line: 551, column: 7, scope: !889, inlinedAt: !896)
!976 = !DILocation(line: 552, column: 33, scope: !974, inlinedAt: !896)
!977 = !DILocation(line: 552, column: 21, scope: !974, inlinedAt: !896)
!978 = !DILocation(line: 552, column: 5, scope: !974, inlinedAt: !896)
!979 = !DILocation(line: 553, column: 13, scope: !980, inlinedAt: !896)
!980 = distinct !DILexicalBlock(scope: !889, file: !147, line: 553, column: 7)
!981 = !{!911, !249, i64 112}
!982 = !DILocation(line: 553, column: 7, scope: !980, inlinedAt: !896)
!983 = !DILocation(line: 553, column: 40, scope: !980, inlinedAt: !896)
!984 = !DILocation(line: 553, column: 7, scope: !889, inlinedAt: !896)
!985 = !DILocation(line: 557, column: 19, scope: !986, inlinedAt: !896)
!986 = distinct !DILexicalBlock(scope: !987, file: !147, line: 557, column: 9)
!987 = distinct !DILexicalBlock(scope: !988, file: !147, line: 557, column: 9)
!988 = distinct !DILexicalBlock(scope: !989, file: !147, line: 556, column: 7)
!989 = distinct !DILexicalBlock(scope: !990, file: !147, line: 555, column: 7)
!990 = distinct !DILexicalBlock(scope: !991, file: !147, line: 555, column: 7)
!991 = distinct !DILexicalBlock(scope: !980, file: !147, line: 554, column: 5)
!992 = !DILocation(line: 557, column: 55, scope: !986, inlinedAt: !896)
!993 = !DILocation(line: 557, column: 9, scope: !987, inlinedAt: !896)
!994 = !DILocation(line: 558, column: 47, scope: !986, inlinedAt: !896)
!995 = !DILocation(line: 558, column: 17, scope: !986, inlinedAt: !896)
!996 = !DILocation(line: 558, column: 11, scope: !986, inlinedAt: !896)
!997 = !DILocation(line: 558, column: 46, scope: !986, inlinedAt: !896)
!998 = !DILocation(line: 557, column: 74, scope: !986, inlinedAt: !896)
!999 = !DILocation(line: 557, column: 25, scope: !986, inlinedAt: !896)
!1000 = distinct !{!1000, !993, !1001, !309, !310}
!1001 = !DILocation(line: 559, column: 48, scope: !987, inlinedAt: !896)
!1002 = !DILocation(line: 0, scope: !987, inlinedAt: !896)
!1003 = !DILocation(line: 561, column: 45, scope: !988, inlinedAt: !896)
!1004 = !DILocation(line: 561, column: 11, scope: !988, inlinedAt: !896)
!1005 = !DILocation(line: 560, column: 47, scope: !988, inlinedAt: !896)
!1006 = !DILocation(line: 560, column: 15, scope: !988, inlinedAt: !896)
!1007 = !DILocation(line: 560, column: 9, scope: !988, inlinedAt: !896)
!1008 = !DILocation(line: 560, column: 46, scope: !988, inlinedAt: !896)
!1009 = !DILocation(line: 563, column: 17, scope: !988, inlinedAt: !896)
!1010 = !DILocation(line: 563, column: 11, scope: !988, inlinedAt: !896)
!1011 = !DILocation(line: 562, column: 52, scope: !988, inlinedAt: !896)
!1012 = !DILocation(line: 562, column: 15, scope: !988, inlinedAt: !896)
!1013 = !DILocation(line: 562, column: 9, scope: !988, inlinedAt: !896)
!1014 = !DILocation(line: 562, column: 41, scope: !988, inlinedAt: !896)
!1015 = !DILocation(line: 555, column: 70, scope: !989, inlinedAt: !896)
!1016 = !DILocation(line: 555, column: 23, scope: !989, inlinedAt: !896)
!1017 = !DILocation(line: 555, column: 17, scope: !989, inlinedAt: !896)
!1018 = !DILocation(line: 555, column: 50, scope: !989, inlinedAt: !896)
!1019 = !DILocation(line: 555, column: 7, scope: !990, inlinedAt: !896)
!1020 = distinct !{!1020, !1019, !1021, !309, !310}
!1021 = !DILocation(line: 564, column: 7, scope: !990, inlinedAt: !896)
!1022 = !DILocation(line: 565, column: 48, scope: !991, inlinedAt: !896)
!1023 = !DILocation(line: 565, column: 36, scope: !991, inlinedAt: !896)
!1024 = !DILocation(line: 567, column: 5, scope: !991, inlinedAt: !896)
!1025 = !DILocation(line: 580, column: 59, scope: !830)
!1026 = !DILocalVariable(name: "attributes", arg: 1, scope: !1027, file: !147, line: 437, type: !153)
!1027 = distinct !DISubprogram(name: "DestroyXMLTreeAttributes", scope: !147, file: !147, line: 437, type: !1028, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1030)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!153, !153}
!1030 = !{!1026, !1031}
!1031 = !DILocalVariable(name: "i", scope: !1027, file: !147, line: 440, type: !173)
!1032 = !DILocation(line: 0, scope: !1027, inlinedAt: !1033)
!1033 = distinct !DILocation(line: 580, column: 24, scope: !830)
!1034 = !DILocation(line: 445, column: 19, scope: !1035, inlinedAt: !1033)
!1035 = distinct !DILexicalBlock(scope: !1027, file: !147, line: 445, column: 7)
!1036 = !DILocation(line: 445, column: 38, scope: !1035, inlinedAt: !1033)
!1037 = !DILocation(line: 447, column: 13, scope: !1038, inlinedAt: !1033)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !147, line: 447, column: 3)
!1039 = distinct !DILexicalBlock(scope: !1027, file: !147, line: 447, column: 3)
!1040 = !DILocation(line: 447, column: 27, scope: !1038, inlinedAt: !1033)
!1041 = !DILocation(line: 447, column: 3, scope: !1039, inlinedAt: !1033)
!1042 = !DILocation(line: 453, column: 21, scope: !1043, inlinedAt: !1033)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !147, line: 452, column: 9)
!1044 = distinct !DILexicalBlock(scope: !1038, file: !147, line: 448, column: 3)
!1045 = !DILocation(line: 453, column: 20, scope: !1043, inlinedAt: !1033)
!1046 = !DILocation(line: 454, column: 21, scope: !1047, inlinedAt: !1033)
!1047 = distinct !DILexicalBlock(scope: !1044, file: !147, line: 454, column: 9)
!1048 = !DILocation(line: 454, column: 9, scope: !1047, inlinedAt: !1033)
!1049 = !DILocation(line: 454, column: 25, scope: !1047, inlinedAt: !1033)
!1050 = !DILocation(line: 454, column: 9, scope: !1044, inlinedAt: !1033)
!1051 = !DILocation(line: 455, column: 23, scope: !1047, inlinedAt: !1033)
!1052 = !DILocation(line: 455, column: 22, scope: !1047, inlinedAt: !1033)
!1053 = !DILocation(line: 455, column: 7, scope: !1047, inlinedAt: !1033)
!1054 = !DILocation(line: 447, column: 46, scope: !1038, inlinedAt: !1033)
!1055 = distinct !{!1055, !1041, !1056, !309, !310}
!1056 = !DILocation(line: 456, column: 3, scope: !1039, inlinedAt: !1033)
!1057 = !DILocation(line: 457, column: 24, scope: !1027, inlinedAt: !1033)
!1058 = !DILocation(line: 458, column: 3, scope: !1027, inlinedAt: !1033)
!1059 = !DILocation(line: 580, column: 23, scope: !830)
!1060 = !DILocation(line: 581, column: 45, scope: !830)
!1061 = !DILocation(line: 581, column: 21, scope: !830)
!1062 = !DILocation(line: 581, column: 20, scope: !830)
!1063 = !DILocation(line: 582, column: 41, scope: !830)
!1064 = !DILocation(line: 582, column: 17, scope: !830)
!1065 = !DILocation(line: 582, column: 16, scope: !830)
!1066 = !DILocation(line: 583, column: 28, scope: !830)
!1067 = !DILocation(line: 584, column: 3, scope: !830)
!1068 = !DILocation(line: 0, scope: !1027)
!1069 = !DILocation(line: 445, column: 19, scope: !1035)
!1070 = !DILocation(line: 445, column: 38, scope: !1035)
!1071 = !DILocation(line: 447, column: 13, scope: !1038)
!1072 = !DILocation(line: 447, column: 27, scope: !1038)
!1073 = !DILocation(line: 447, column: 3, scope: !1039)
!1074 = !DILocation(line: 453, column: 21, scope: !1043)
!1075 = !DILocation(line: 453, column: 20, scope: !1043)
!1076 = !DILocation(line: 454, column: 21, scope: !1047)
!1077 = !DILocation(line: 454, column: 9, scope: !1047)
!1078 = !DILocation(line: 454, column: 25, scope: !1047)
!1079 = !DILocation(line: 454, column: 9, scope: !1044)
!1080 = !DILocation(line: 455, column: 23, scope: !1047)
!1081 = !DILocation(line: 455, column: 22, scope: !1047)
!1082 = !DILocation(line: 455, column: 7, scope: !1047)
!1083 = !DILocation(line: 447, column: 46, scope: !1038)
!1084 = distinct !{!1084, !1073, !1085, !309, !310}
!1085 = !DILocation(line: 456, column: 3, scope: !1039)
!1086 = !DILocation(line: 457, column: 24, scope: !1027)
!1087 = !DILocation(line: 458, column: 3, scope: !1027)
!1088 = !DILocation(line: 459, column: 1, scope: !1027)
!1089 = distinct !DISubprogram(name: "FileToXML", scope: !147, file: !147, line: 620, type: !1090, scopeLine: 621, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1092)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!150, !186, !230}
!1092 = !{!1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1105}
!1093 = !DILocalVariable(name: "filename", arg: 1, scope: !1089, file: !147, line: 620, type: !186)
!1094 = !DILocalVariable(name: "extent", arg: 2, scope: !1089, file: !147, line: 620, type: !230)
!1095 = !DILocalVariable(name: "xml", scope: !1089, file: !147, line: 623, type: !150)
!1096 = !DILocalVariable(name: "file", scope: !1089, file: !147, line: 626, type: !203)
!1097 = !DILocalVariable(name: "offset", scope: !1089, file: !147, line: 629, type: !182)
!1098 = !DILocalVariable(name: "i", scope: !1089, file: !147, line: 632, type: !156)
!1099 = !DILocalVariable(name: "length", scope: !1089, file: !147, line: 635, type: !156)
!1100 = !DILocalVariable(name: "count", scope: !1089, file: !147, line: 638, type: !173)
!1101 = !DILocalVariable(name: "map", scope: !1089, file: !147, line: 641, type: !172)
!1102 = !DILocalVariable(name: "quantum", scope: !1103, file: !147, line: 656, type: !156)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !147, line: 654, column: 5)
!1104 = distinct !DILexicalBlock(scope: !1089, file: !147, line: 652, column: 7)
!1105 = !DILocalVariable(name: "file_stats", scope: !1103, file: !147, line: 659, type: !1106)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1107, line: 46, size: 1152, elements: !1108)
!1107 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "f8d5b541c4f89219f8e8ff8c3e2940d9")
!1108 = !{!1109, !1111, !1113, !1115, !1117, !1119, !1121, !1122, !1123, !1125, !1127, !1129, !1137, !1138, !1139}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1106, file: !1107, line: 48, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !176, line: 145, baseType: !158)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1106, file: !1107, line: 53, baseType: !1112, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !176, line: 148, baseType: !158)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1106, file: !1107, line: 61, baseType: !1114, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !176, line: 151, baseType: !158)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1106, file: !1107, line: 62, baseType: !1116, size: 32, offset: 192)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !176, line: 150, baseType: !7)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1106, file: !1107, line: 64, baseType: !1118, size: 32, offset: 224)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !176, line: 146, baseType: !7)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1106, file: !1107, line: 65, baseType: !1120, size: 32, offset: 256)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !176, line: 147, baseType: !7)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1106, file: !1107, line: 67, baseType: !203, size: 32, offset: 288)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1106, file: !1107, line: 69, baseType: !1110, size: 64, offset: 320)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1106, file: !1107, line: 74, baseType: !1124, size: 64, offset: 384)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !176, line: 152, baseType: !177)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1106, file: !1107, line: 78, baseType: !1126, size: 64, offset: 448)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !176, line: 174, baseType: !177)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1106, file: !1107, line: 80, baseType: !1128, size: 64, offset: 512)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !176, line: 179, baseType: !177)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1106, file: !1107, line: 91, baseType: !1130, size: 128, offset: 576)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1131, line: 10, size: 128, elements: !1132)
!1131 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "33f28095c70788baa6982a79b13f774b")
!1132 = !{!1133, !1135}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1130, file: !1131, line: 12, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !176, line: 160, baseType: !177)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1130, file: !1131, line: 16, baseType: !1136, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !176, line: 196, baseType: !177)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1106, file: !1107, line: 92, baseType: !1130, size: 128, offset: 704)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1106, file: !1107, line: 93, baseType: !1130, size: 128, offset: 832)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1106, file: !1107, line: 106, baseType: !1140, size: 192, offset: 960)
!1140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1136, size: 192, elements: !1141)
!1141 = !{!1142}
!1142 = !DISubrange(count: 3)
!1143 = !DILocation(line: 0, scope: !1089)
!1144 = !DILocation(line: 645, column: 15, scope: !1089)
!1145 = !DILocation(line: 645, column: 8, scope: !1089)
!1146 = !DILocation(line: 646, column: 7, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1089, file: !147, line: 646, column: 7)
!1148 = !DILocation(line: 646, column: 35, scope: !1147)
!1149 = !DILocation(line: 646, column: 7, scope: !1089)
!1150 = !DILocalVariable(name: "path", arg: 1, scope: !1151, file: !1152, line: 136, type: !186)
!1151 = distinct !DISubprogram(name: "open_utf8", scope: !1152, file: !1152, line: 136, type: !1153, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1157)
!1152 = !DIFile(filename: "apps/538.imagick_r/src/magick/utility-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f0938b0b9be15949da14cdcfd7e813d9")
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!203, !186, !203, !1155}
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !1156, line: 59, baseType: !1116)
!1156 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "461013b06495e219438a7cca03a67307")
!1157 = !{!1150, !1158, !1159}
!1158 = !DILocalVariable(name: "flags", arg: 2, scope: !1151, file: !1152, line: 136, type: !203)
!1159 = !DILocalVariable(name: "mode", arg: 3, scope: !1151, file: !1152, line: 136, type: !1155)
!1160 = !DILocation(line: 0, scope: !1151, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 647, column: 10, scope: !1147)
!1162 = !DILocation(line: 139, column: 10, scope: !1151, inlinedAt: !1161)
!1163 = !DILocation(line: 647, column: 5, scope: !1147)
!1164 = !DILocation(line: 648, column: 12, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1089, file: !147, line: 648, column: 7)
!1166 = !DILocation(line: 648, column: 7, scope: !1089)
!1167 = !DILocation(line: 650, column: 29, scope: !1089)
!1168 = !DILocation(line: 652, column: 23, scope: !1104)
!1169 = !DILocation(line: 652, column: 16, scope: !1104)
!1170 = !DILocation(line: 652, column: 13, scope: !1104)
!1171 = !DILocation(line: 652, column: 31, scope: !1104)
!1172 = !DILocation(line: 658, column: 7, scope: !1103)
!1173 = !DILocation(line: 659, column: 9, scope: !1103)
!1174 = !DILocation(line: 664, column: 33, scope: !1103)
!1175 = !DILocation(line: 0, scope: !1103)
!1176 = !DILocalVariable(name: "__fd", arg: 1, scope: !1177, file: !1156, line: 467, type: !203)
!1177 = distinct !DISubprogram(name: "fstat", scope: !1156, file: !1156, line: 467, type: !1178, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1181)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!203, !203, !1180}
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1181 = !{!1176, !1182}
!1182 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1177, file: !1156, line: 467, type: !1180)
!1183 = !DILocation(line: 0, scope: !1177, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 666, column: 12, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1103, file: !147, line: 666, column: 11)
!1186 = !DILocation(line: 469, column: 10, scope: !1177, inlinedAt: !1184)
!1187 = !DILocation(line: 666, column: 36, scope: !1185)
!1188 = !DILocation(line: 666, column: 42, scope: !1185)
!1189 = !DILocation(line: 669, column: 20, scope: !1103)
!1190 = !DILocation(line: 670, column: 21, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !147, line: 670, column: 7)
!1192 = distinct !DILexicalBlock(scope: !1103, file: !147, line: 670, column: 7)
!1193 = !DILocation(line: 670, column: 7, scope: !1192)
!1194 = distinct !{!1194, !1193, !1195, !309, !310}
!1195 = !DILocation(line: 687, column: 7, scope: !1192)
!1196 = !DILocation(line: 672, column: 28, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1191, file: !147, line: 671, column: 7)
!1198 = !DILocation(line: 672, column: 15, scope: !1197)
!1199 = !DILocation(line: 673, column: 19, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1197, file: !147, line: 673, column: 13)
!1201 = !DILocation(line: 673, column: 13, scope: !1197)
!1202 = !DILocation(line: 676, column: 17, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !147, line: 676, column: 17)
!1204 = distinct !DILexicalBlock(scope: !1200, file: !147, line: 674, column: 11)
!1205 = !{!1206, !1206, i64 0}
!1206 = !{!"int", !250, i64 0}
!1207 = !DILocation(line: 676, column: 23, scope: !1203)
!1208 = !DILocation(line: 676, column: 17, scope: !1204)
!1209 = !DILocation(line: 0, scope: !1197)
!1210 = !DILocation(line: 679, column: 13, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1197, file: !147, line: 679, column: 13)
!1212 = !DILocation(line: 679, column: 27, scope: !1211)
!1213 = !DILocation(line: 679, column: 13, scope: !1197)
!1214 = !DILocation(line: 681, column: 26, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1211, file: !147, line: 680, column: 11)
!1216 = !DILocation(line: 682, column: 13, scope: !1215)
!1217 = !DILocation(line: 684, column: 55, scope: !1197)
!1218 = !DILocation(line: 684, column: 22, scope: !1197)
!1219 = !DILocation(line: 685, column: 24, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1197, file: !147, line: 685, column: 13)
!1221 = !DILocation(line: 685, column: 32, scope: !1220)
!1222 = !DILocation(line: 685, column: 13, scope: !1197)
!1223 = !DILocation(line: 688, column: 11, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1103, file: !147, line: 688, column: 11)
!1225 = !DILocation(line: 688, column: 39, scope: !1224)
!1226 = !DILocation(line: 688, column: 11, scope: !1103)
!1227 = !DILocation(line: 689, column: 14, scope: !1224)
!1228 = !DILocation(line: 689, column: 9, scope: !1224)
!1229 = !DILocation(line: 690, column: 15, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1103, file: !147, line: 690, column: 11)
!1231 = !DILocation(line: 690, column: 11, scope: !1103)
!1232 = !DILocation(line: 692, column: 16, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1103, file: !147, line: 692, column: 11)
!1234 = !DILocation(line: 692, column: 11, scope: !1103)
!1235 = !DILocation(line: 694, column: 24, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1233, file: !147, line: 693, column: 9)
!1237 = !DILocation(line: 695, column: 11, scope: !1236)
!1238 = !DILocation(line: 697, column: 34, scope: !1103)
!1239 = !DILocalVariable(name: "x", arg: 1, scope: !1240, file: !147, line: 612, type: !1243)
!1240 = distinct !DISubprogram(name: "MagickMin", scope: !147, file: !147, line: 612, type: !1241, scopeLine: 614, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1244)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!184, !1243, !1243}
!1243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!1244 = !{!1239, !1245}
!1245 = !DILocalVariable(name: "y", arg: 2, scope: !1240, file: !147, line: 613, type: !1243)
!1246 = !DILocation(line: 0, scope: !1240, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 697, column: 23, scope: !1103)
!1248 = !DILocation(line: 698, column: 7, scope: !1103)
!1249 = !DILocation(line: 698, column: 18, scope: !1103)
!1250 = !DILocation(line: 699, column: 7, scope: !1103)
!1251 = !DILocation(line: 700, column: 5, scope: !1104)
!1252 = !DILocation(line: 0, scope: !1240, inlinedAt: !1253)
!1253 = distinct !DILocation(line: 701, column: 19, scope: !1089)
!1254 = !DILocation(line: 704, column: 45, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1089, file: !147, line: 703, column: 7)
!1256 = !DILocation(line: 704, column: 18, scope: !1255)
!1257 = !DILocation(line: 705, column: 11, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1089, file: !147, line: 705, column: 7)
!1259 = !DILocation(line: 705, column: 7, scope: !1089)
!1260 = !DILocation(line: 707, column: 12, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1258, file: !147, line: 706, column: 5)
!1262 = !DILocation(line: 708, column: 7, scope: !1261)
!1263 = !DILocation(line: 710, column: 7, scope: !1089)
!1264 = !DILocation(line: 711, column: 11, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1089, file: !147, line: 711, column: 7)
!1266 = !DILocation(line: 711, column: 7, scope: !1089)
!1267 = !DILocation(line: 713, column: 14, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1265, file: !147, line: 712, column: 5)
!1269 = !DILocation(line: 714, column: 14, scope: !1268)
!1270 = !DILocation(line: 715, column: 5, scope: !1268)
!1271 = !DILocation(line: 718, column: 14, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1265, file: !147, line: 717, column: 5)
!1273 = !DILocation(line: 719, column: 19, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !147, line: 719, column: 7)
!1275 = distinct !DILexicalBlock(scope: !1272, file: !147, line: 719, column: 7)
!1276 = !DILocation(line: 719, column: 7, scope: !1275)
!1277 = !DILocation(line: 721, column: 28, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1274, file: !147, line: 720, column: 7)
!1279 = !DILocation(line: 721, column: 56, scope: !1278)
!1280 = !DILocation(line: 0, scope: !1240, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 721, column: 40, scope: !1278)
!1282 = !DILocation(line: 721, column: 15, scope: !1278)
!1283 = !DILocation(line: 723, column: 19, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1278, file: !147, line: 723, column: 13)
!1285 = !DILocation(line: 723, column: 13, scope: !1278)
!1286 = !DILocation(line: 726, column: 17, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !147, line: 726, column: 17)
!1288 = distinct !DILexicalBlock(scope: !1284, file: !147, line: 724, column: 11)
!1289 = !DILocation(line: 726, column: 23, scope: !1287)
!1290 = !DILocation(line: 726, column: 17, scope: !1288)
!1291 = !DILocation(line: 0, scope: !1278)
!1292 = !DILocation(line: 719, column: 30, scope: !1274)
!1293 = distinct !{!1293, !1276, !1294, !309, !310}
!1294 = !DILocation(line: 729, column: 7, scope: !1275)
!1295 = !DILocation(line: 732, column: 16, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !147, line: 731, column: 9)
!1297 = distinct !DILexicalBlock(scope: !1272, file: !147, line: 730, column: 11)
!1298 = !DILocation(line: 733, column: 24, scope: !1296)
!1299 = !DILocation(line: 734, column: 11, scope: !1296)
!1300 = !DILocation(line: 737, column: 3, scope: !1089)
!1301 = !DILocation(line: 737, column: 14, scope: !1089)
!1302 = !DILocation(line: 738, column: 7, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1089, file: !147, line: 738, column: 7)
!1304 = !DILocation(line: 738, column: 35, scope: !1303)
!1305 = !DILocation(line: 738, column: 7, scope: !1089)
!1306 = !DILocation(line: 739, column: 10, scope: !1303)
!1307 = !DILocation(line: 739, column: 5, scope: !1303)
!1308 = !DILocation(line: 740, column: 12, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1089, file: !147, line: 740, column: 7)
!1310 = !DILocation(line: 740, column: 7, scope: !1089)
!1311 = !DILocation(line: 741, column: 18, scope: !1309)
!1312 = !DILocation(line: 741, column: 5, scope: !1309)
!1313 = !DILocation(line: 743, column: 1, scope: !1089)
!1314 = !DISubprogram(name: "fileno", scope: !174, file: !174, line: 786, type: !1315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!203, !1317}
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1319, line: 7, baseType: !1320)
!1319 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1321, line: 49, size: 1728, elements: !1322)
!1321 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!1322 = !{!1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1338, !1340, !1341, !1342, !1343, !1344, !1346, !1348, !1351, !1353, !1356, !1359, !1360, !1361, !1362, !1363}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1320, file: !1321, line: 51, baseType: !203, size: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1320, file: !1321, line: 54, baseType: !150, size: 64, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1320, file: !1321, line: 55, baseType: !150, size: 64, offset: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1320, file: !1321, line: 56, baseType: !150, size: 64, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1320, file: !1321, line: 57, baseType: !150, size: 64, offset: 256)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1320, file: !1321, line: 58, baseType: !150, size: 64, offset: 320)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1320, file: !1321, line: 59, baseType: !150, size: 64, offset: 384)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1320, file: !1321, line: 60, baseType: !150, size: 64, offset: 448)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1320, file: !1321, line: 61, baseType: !150, size: 64, offset: 512)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1320, file: !1321, line: 64, baseType: !150, size: 64, offset: 576)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1320, file: !1321, line: 65, baseType: !150, size: 64, offset: 640)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1320, file: !1321, line: 66, baseType: !150, size: 64, offset: 704)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1320, file: !1321, line: 68, baseType: !1336, size: 64, offset: 768)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1321, line: 36, flags: DIFlagFwdDecl)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1320, file: !1321, line: 70, baseType: !1339, size: 64, offset: 832)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1320, file: !1321, line: 72, baseType: !203, size: 32, offset: 896)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1320, file: !1321, line: 73, baseType: !203, size: 32, offset: 928)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1320, file: !1321, line: 74, baseType: !1124, size: 64, offset: 960)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1320, file: !1321, line: 77, baseType: !204, size: 16, offset: 1024)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1320, file: !1321, line: 78, baseType: !1345, size: 8, offset: 1040)
!1345 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1320, file: !1321, line: 79, baseType: !1347, size: 8, offset: 1048)
!1347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 8, elements: !218)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1320, file: !1321, line: 81, baseType: !1349, size: 64, offset: 1088)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1321, line: 43, baseType: null)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1320, file: !1321, line: 89, baseType: !1352, size: 64, offset: 1152)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !176, line: 153, baseType: !177)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1320, file: !1321, line: 91, baseType: !1354, size: 64, offset: 1216)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1321, line: 37, flags: DIFlagFwdDecl)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1320, file: !1321, line: 92, baseType: !1357, size: 64, offset: 1280)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1321, line: 38, flags: DIFlagFwdDecl)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1320, file: !1321, line: 93, baseType: !1339, size: 64, offset: 1344)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1320, file: !1321, line: 94, baseType: !172, size: 64, offset: 1408)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1320, file: !1321, line: 95, baseType: !156, size: 64, offset: 1472)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1320, file: !1321, line: 96, baseType: !203, size: 32, offset: 1536)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1320, file: !1321, line: 98, baseType: !1364, size: 160, offset: 1568)
!1364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 160, elements: !1365)
!1365 = !{!1366}
!1366 = !DISubrange(count: 20)
!1367 = !DISubprogram(name: "LocaleCompare", scope: !372, file: !372, line: 66, type: !1368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!203, !186, !186}
!1370 = !DISubprogram(name: "lseek", scope: !1371, file: !1371, line: 334, type: !1372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!1371 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!1124, !203, !1124, !203}
!1374 = !DISubprogram(name: "AcquireQuantumMemory", scope: !364, file: !364, line: 42, type: !1375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!172, !230, !230}
!1377 = !DISubprogram(name: "read", scope: !1371, file: !1371, line: 360, type: !1378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!173, !203, !172, !156}
!1380 = !DISubprogram(name: "close", scope: !1371, file: !1371, line: 353, type: !1381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!203, !203}
!1383 = !DISubprogram(name: "MapBlob", scope: !1384, file: !1384, line: 112, type: !1385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!1384 = !DIFile(filename: "apps/538.imagick_r/src/magick/blob-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a66ea2eabdd36512a199f3a0075ea4ad")
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!181, !203, !1387, !1389, !230}
!1387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1388)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "MapMode", file: !49, line: 35, baseType: !48)
!1389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!1390 = !DISubprogram(name: "UnmapBlob", scope: !1384, file: !1384, line: 86, type: !1391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!165, !172, !230}
!1393 = distinct !DISubprogram(name: "GetNextXMLTreeTag", scope: !147, file: !147, line: 767, type: !537, scopeLine: 768, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1394)
!1394 = !{!1395}
!1395 = !DILocalVariable(name: "xml_info", arg: 1, scope: !1393, file: !147, line: 767, type: !143)
!1396 = !DILocation(line: 0, scope: !1393)
!1397 = !DILocation(line: 772, column: 17, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1393, file: !147, line: 772, column: 7)
!1399 = !DILocation(line: 772, column: 23, scope: !1398)
!1400 = !DILocation(line: 772, column: 7, scope: !1393)
!1401 = !DILocation(line: 773, column: 12, scope: !1398)
!1402 = !DILocation(line: 773, column: 5, scope: !1398)
!1403 = !DILocation(line: 774, column: 20, scope: !1393)
!1404 = !DILocation(line: 774, column: 3, scope: !1393)
!1405 = distinct !DISubprogram(name: "GetXMLTreeAttribute", scope: !147, file: !147, line: 802, type: !1406, scopeLine: 804, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1408)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!186, !143, !186}
!1408 = !{!1409, !1410, !1411, !1412, !1413}
!1409 = !DILocalVariable(name: "xml_info", arg: 1, scope: !1405, file: !147, line: 802, type: !143)
!1410 = !DILocalVariable(name: "tag", arg: 2, scope: !1405, file: !147, line: 803, type: !186)
!1411 = !DILocalVariable(name: "i", scope: !1405, file: !147, line: 806, type: !173)
!1412 = !DILocalVariable(name: "j", scope: !1405, file: !147, line: 809, type: !173)
!1413 = !DILocalVariable(name: "root", scope: !1405, file: !147, line: 812, type: !188)
!1414 = !DILocation(line: 0, scope: !1405)
!1415 = !DILocation(line: 817, column: 17, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1405, file: !147, line: 817, column: 7)
!1417 = !DILocation(line: 817, column: 23, scope: !1416)
!1418 = !DILocation(line: 817, column: 7, scope: !1405)
!1419 = !DILocation(line: 818, column: 12, scope: !1416)
!1420 = !DILocation(line: 818, column: 5, scope: !1416)
!1421 = !DILocation(line: 819, column: 17, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1405, file: !147, line: 819, column: 7)
!1423 = !DILocation(line: 819, column: 28, scope: !1422)
!1424 = !DILocation(line: 819, column: 7, scope: !1405)
!1425 = !DILocation(line: 822, column: 11, scope: !1405)
!1426 = !DILocation(line: 822, column: 35, scope: !1405)
!1427 = !DILocation(line: 822, column: 53, scope: !1405)
!1428 = !DILocation(line: 828, column: 3, scope: !1405)
!1429 = !DILocation(line: 823, column: 11, scope: !1405)
!1430 = !DILocation(line: 823, column: 47, scope: !1405)
!1431 = !DILocation(line: 822, column: 3, scope: !1405)
!1432 = !DILocation(line: 824, column: 6, scope: !1405)
!1433 = distinct !{!1433, !1431, !1434, !309, !310}
!1434 = !DILocation(line: 824, column: 8, scope: !1405)
!1435 = !DILocation(line: 826, column: 34, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1405, file: !147, line: 825, column: 7)
!1437 = !DILocation(line: 826, column: 12, scope: !1436)
!1438 = !DILocation(line: 826, column: 5, scope: !1436)
!1439 = !DILocation(line: 828, column: 21, scope: !1405)
!1440 = !{!911, !249, i64 32}
!1441 = !DILocation(line: 828, column: 28, scope: !1405)
!1442 = distinct !{!1442, !1428, !1443, !309, !310}
!1443 = !DILocation(line: 829, column: 37, scope: !1405)
!1444 = !DILocation(line: 831, column: 11, scope: !1405)
!1445 = !DILocation(line: 831, column: 31, scope: !1405)
!1446 = !DILocation(line: 831, column: 50, scope: !1405)
!1447 = !DILocation(line: 833, column: 6, scope: !1405)
!1448 = distinct !{!1448, !1449, !1447, !309, !310}
!1449 = !DILocation(line: 831, column: 3, scope: !1405)
!1450 = !DILocation(line: 832, column: 18, scope: !1405)
!1451 = !DILocation(line: 832, column: 11, scope: !1405)
!1452 = !DILocation(line: 832, column: 56, scope: !1405)
!1453 = !DILocation(line: 837, column: 11, scope: !1405)
!1454 = !DILocation(line: 837, column: 34, scope: !1405)
!1455 = !DILocation(line: 837, column: 52, scope: !1405)
!1456 = !DILocation(line: 838, column: 11, scope: !1405)
!1457 = !DILocation(line: 838, column: 46, scope: !1405)
!1458 = !DILocation(line: 837, column: 3, scope: !1405)
!1459 = !DILocation(line: 839, column: 6, scope: !1405)
!1460 = distinct !{!1460, !1458, !1461, !309, !310}
!1461 = !DILocation(line: 839, column: 8, scope: !1405)
!1462 = !DILocation(line: 842, column: 31, scope: !1405)
!1463 = !DILocation(line: 842, column: 10, scope: !1405)
!1464 = !DILocation(line: 842, column: 3, scope: !1405)
!1465 = !DILocation(line: 843, column: 1, scope: !1405)
!1466 = distinct !DISubprogram(name: "GetXMLTreeAttributes", scope: !147, file: !147, line: 871, type: !1467, scopeLine: 873, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1475)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!165, !1469, !1471}
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "SplayTreeInfo", file: !1473, line: 26, baseType: !1474)
!1473 = !DIFile(filename: "apps/538.imagick_r/src/magick/splay-tree.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9016e3627c0f26bd31d286f50189c16b")
!1474 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SplayTreeInfo", file: !1473, line: 25, flags: DIFlagFwdDecl)
!1475 = !{!1476, !1477, !1478}
!1476 = !DILocalVariable(name: "xml_info", arg: 1, scope: !1466, file: !147, line: 871, type: !1469)
!1477 = !DILocalVariable(name: "attributes", arg: 2, scope: !1466, file: !147, line: 872, type: !1471)
!1478 = !DILocalVariable(name: "i", scope: !1466, file: !147, line: 875, type: !173)
!1479 = !DILocation(line: 0, scope: !1466)
!1480 = !DILocation(line: 880, column: 17, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1466, file: !147, line: 880, column: 7)
!1482 = !DILocation(line: 880, column: 23, scope: !1481)
!1483 = !DILocation(line: 880, column: 7, scope: !1466)
!1484 = !DILocation(line: 881, column: 12, scope: !1481)
!1485 = !DILocation(line: 881, column: 5, scope: !1481)
!1486 = !DILocation(line: 883, column: 17, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1466, file: !147, line: 883, column: 7)
!1488 = !DILocation(line: 883, column: 28, scope: !1487)
!1489 = !DILocation(line: 883, column: 7, scope: !1466)
!1490 = !DILocation(line: 886, column: 10, scope: !1466)
!1491 = !DILocation(line: 886, column: 34, scope: !1466)
!1492 = !DILocation(line: 886, column: 3, scope: !1466)
!1493 = !DILocation(line: 889, column: 8, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1466, file: !147, line: 887, column: 3)
!1495 = !DILocation(line: 890, column: 33, scope: !1494)
!1496 = !DILocation(line: 890, column: 45, scope: !1494)
!1497 = !DILocation(line: 890, column: 23, scope: !1494)
!1498 = !DILocation(line: 890, column: 8, scope: !1494)
!1499 = !DILocation(line: 888, column: 13, scope: !1494)
!1500 = !DILocation(line: 891, column: 6, scope: !1494)
!1501 = !DILocation(line: 886, column: 20, scope: !1466)
!1502 = distinct !{!1502, !1492, !1503, !309, !310}
!1503 = !DILocation(line: 892, column: 3, scope: !1466)
!1504 = !DILocation(line: 894, column: 1, scope: !1466)
!1505 = !DISubprogram(name: "AddValueToSplayTree", scope: !1473, file: !1473, line: 29, type: !1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!165, !1471, !1508, !1508}
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1510 = distinct !DISubprogram(name: "GetXMLTreeContent", scope: !147, file: !147, line: 959, type: !1511, scopeLine: 960, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1513)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!186, !143}
!1513 = !{!1514}
!1514 = !DILocalVariable(name: "xml_info", arg: 1, scope: !1510, file: !147, line: 959, type: !143)
!1515 = !DILocation(line: 0, scope: !1510)
!1516 = !DILocation(line: 964, column: 17, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1510, file: !147, line: 964, column: 7)
!1518 = !DILocation(line: 964, column: 23, scope: !1517)
!1519 = !DILocation(line: 964, column: 7, scope: !1510)
!1520 = !DILocation(line: 965, column: 12, scope: !1517)
!1521 = !DILocation(line: 965, column: 5, scope: !1517)
!1522 = !DILocation(line: 966, column: 20, scope: !1510)
!1523 = !DILocation(line: 966, column: 3, scope: !1510)
!1524 = distinct !DISubprogram(name: "GetXMLTreePath", scope: !147, file: !147, line: 1026, type: !490, scopeLine: 1027, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1525)
!1525 = !{!1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534}
!1526 = !DILocalVariable(name: "xml_info", arg: 1, scope: !1524, file: !147, line: 1026, type: !143)
!1527 = !DILocalVariable(name: "path", arg: 2, scope: !1524, file: !147, line: 1026, type: !186)
!1528 = !DILocalVariable(name: "components", scope: !1524, file: !147, line: 1029, type: !153)
!1529 = !DILocalVariable(name: "subnode", scope: !1524, file: !147, line: 1030, type: !453)
!1530 = !DILocalVariable(name: "tag", scope: !1524, file: !147, line: 1031, type: !453)
!1531 = !DILocalVariable(name: "i", scope: !1524, file: !147, line: 1034, type: !173)
!1532 = !DILocalVariable(name: "number_components", scope: !1524, file: !147, line: 1037, type: !156)
!1533 = !DILocalVariable(name: "j", scope: !1524, file: !147, line: 1040, type: !173)
!1534 = !DILocalVariable(name: "node", scope: !1524, file: !147, line: 1043, type: !143)
!1535 = !DILocation(line: 0, scope: !1524)
!1536 = !DILocation(line: 1028, column: 3, scope: !1524)
!1537 = !DILocation(line: 1030, column: 5, scope: !1524)
!1538 = !DILocation(line: 1031, column: 5, scope: !1524)
!1539 = !DILocation(line: 1036, column: 3, scope: !1524)
!1540 = !DILocation(line: 1048, column: 17, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1524, file: !147, line: 1048, column: 7)
!1542 = !DILocation(line: 1048, column: 23, scope: !1541)
!1543 = !DILocation(line: 1048, column: 7, scope: !1524)
!1544 = !DILocation(line: 1049, column: 12, scope: !1541)
!1545 = !DILocation(line: 1049, column: 5, scope: !1541)
!1546 = !DILocation(line: 1051, column: 14, scope: !1524)
!1547 = !DILocation(line: 1052, column: 18, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1524, file: !147, line: 1052, column: 7)
!1549 = !DILocation(line: 1052, column: 7, scope: !1524)
!1550 = !DILocation(line: 1054, column: 27, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !147, line: 1054, column: 3)
!1552 = distinct !DILexicalBlock(scope: !1524, file: !147, line: 1054, column: 3)
!1553 = !DILocation(line: 1054, column: 15, scope: !1551)
!1554 = !DILocation(line: 1054, column: 3, scope: !1552)
!1555 = !DILocation(line: 1056, column: 22, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1551, file: !147, line: 1055, column: 3)
!1557 = !DILocation(line: 1056, column: 5, scope: !1556)
!1558 = !DILocation(line: 1057, column: 22, scope: !1556)
!1559 = !DILocation(line: 1057, column: 5, scope: !1556)
!1560 = !DILocation(line: 0, scope: !489, inlinedAt: !1561)
!1561 = distinct !DILocation(line: 1058, column: 10, scope: !1556)
!1562 = !DILocation(line: 927, column: 17, scope: !498, inlinedAt: !1561)
!1563 = !DILocation(line: 927, column: 23, scope: !498, inlinedAt: !1561)
!1564 = !DILocation(line: 927, column: 7, scope: !489, inlinedAt: !1561)
!1565 = !DILocation(line: 928, column: 12, scope: !498, inlinedAt: !1561)
!1566 = !DILocation(line: 928, column: 5, scope: !498, inlinedAt: !1561)
!1567 = !DILocation(line: 929, column: 19, scope: !489, inlinedAt: !1561)
!1568 = !DILocation(line: 930, column: 7, scope: !489, inlinedAt: !1561)
!1569 = !DILocation(line: 931, column: 62, scope: !506, inlinedAt: !1561)
!1570 = !DILocation(line: 931, column: 48, scope: !506, inlinedAt: !1561)
!1571 = !DILocation(line: 931, column: 71, scope: !506, inlinedAt: !1561)
!1572 = !DILocation(line: 931, column: 5, scope: !506, inlinedAt: !1561)
!1573 = !DILocation(line: 932, column: 20, scope: !506, inlinedAt: !1561)
!1574 = !DILocation(line: 931, column: 19, scope: !506, inlinedAt: !1561)
!1575 = !DILocation(line: 931, column: 44, scope: !506, inlinedAt: !1561)
!1576 = !DILocation(line: 0, scope: !519, inlinedAt: !1577)
!1577 = distinct !DILocation(line: 1061, column: 22, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1556, file: !147, line: 1061, column: 5)
!1579 = !DILocation(line: 70, column: 10, scope: !519, inlinedAt: !1577)
!1580 = !DILocation(line: 1061, column: 10, scope: !1578)
!1581 = !DILocation(line: 0, scope: !1556)
!1582 = !DILocation(line: 0, scope: !1578)
!1583 = !DILocation(line: 1061, column: 49, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1578, file: !147, line: 1061, column: 5)
!1585 = !DILocation(line: 1061, column: 5, scope: !1578)
!1586 = !DILocation(line: 0, scope: !536, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 1063, column: 12, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1584, file: !147, line: 1062, column: 5)
!1589 = !DILocation(line: 996, column: 17, scope: !544, inlinedAt: !1587)
!1590 = !DILocation(line: 996, column: 23, scope: !544, inlinedAt: !1587)
!1591 = !DILocation(line: 996, column: 7, scope: !536, inlinedAt: !1587)
!1592 = !DILocation(line: 997, column: 12, scope: !544, inlinedAt: !1587)
!1593 = !DILocation(line: 997, column: 5, scope: !544, inlinedAt: !1587)
!1594 = !DILocation(line: 998, column: 20, scope: !536, inlinedAt: !1587)
!1595 = !DILocation(line: 1064, column: 16, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1588, file: !147, line: 1064, column: 11)
!1597 = !DILocation(line: 1064, column: 11, scope: !1588)
!1598 = distinct !{!1598, !1585, !1599, !309, !310}
!1599 = !DILocation(line: 1066, column: 5, scope: !1578)
!1600 = !DILocation(line: 1069, column: 33, scope: !1556)
!1601 = !DILocation(line: 1069, column: 19, scope: !1556)
!1602 = !DILocation(line: 1069, column: 18, scope: !1556)
!1603 = !DILocation(line: 1054, column: 47, scope: !1551)
!1604 = distinct !{!1604, !1554, !1605, !309, !310}
!1605 = !DILocation(line: 1070, column: 3, scope: !1552)
!1606 = !DILocation(line: 1071, column: 25, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !147, line: 1071, column: 3)
!1608 = distinct !DILexicalBlock(scope: !1524, file: !147, line: 1071, column: 3)
!1609 = !DILocation(line: 1071, column: 13, scope: !1607)
!1610 = !DILocation(line: 1071, column: 3, scope: !1608)
!1611 = !DILocation(line: 1072, column: 33, scope: !1607)
!1612 = !DILocation(line: 1072, column: 19, scope: !1607)
!1613 = !DILocation(line: 1072, column: 18, scope: !1607)
!1614 = !DILocation(line: 1071, column: 45, scope: !1607)
!1615 = distinct !{!1615, !1610, !1616, !309, !310}
!1616 = !DILocation(line: 1072, column: 46, scope: !1608)
!1617 = !DILocation(line: 1073, column: 24, scope: !1524)
!1618 = !DILocation(line: 1074, column: 3, scope: !1524)
!1619 = !DILocation(line: 1075, column: 1, scope: !1524)
!1620 = distinct !DISubprogram(name: "GetXMLTreeProcessingInstructions", scope: !147, file: !147, line: 1101, type: !1621, scopeLine: 1103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1623)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!202, !143, !186}
!1623 = !{!1624, !1625, !1626, !1627}
!1624 = !DILocalVariable(name: "xml_info", arg: 1, scope: !1620, file: !147, line: 1102, type: !143)
!1625 = !DILocalVariable(name: "target", arg: 2, scope: !1620, file: !147, line: 1102, type: !186)
!1626 = !DILocalVariable(name: "i", scope: !1620, file: !147, line: 1105, type: !173)
!1627 = !DILocalVariable(name: "root", scope: !1620, file: !147, line: 1108, type: !188)
!1628 = !DILocation(line: 0, scope: !1620)
!1629 = !DILocation(line: 1113, column: 17, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1620, file: !147, line: 1113, column: 7)
!1631 = !DILocation(line: 1113, column: 23, scope: !1630)
!1632 = !DILocation(line: 1113, column: 7, scope: !1620)
!1633 = !DILocation(line: 1114, column: 12, scope: !1630)
!1634 = !DILocation(line: 1114, column: 5, scope: !1630)
!1635 = !DILocation(line: 1116, column: 3, scope: !1620)
!1636 = !DILocation(line: 1116, column: 21, scope: !1620)
!1637 = !DILocation(line: 1116, column: 28, scope: !1620)
!1638 = distinct !{!1638, !1635, !1639, !309, !310}
!1639 = !DILocation(line: 1117, column: 37, scope: !1620)
!1640 = !DILocation(line: 1119, column: 11, scope: !1620)
!1641 = !DILocation(line: 1119, column: 44, scope: !1620)
!1642 = !DILocation(line: 1119, column: 63, scope: !1620)
!1643 = !DILocation(line: 1121, column: 6, scope: !1620)
!1644 = distinct !{!1644, !1645, !1643, !309, !310}
!1645 = !DILocation(line: 1119, column: 3, scope: !1620)
!1646 = !DILocation(line: 1120, column: 18, scope: !1620)
!1647 = !DILocation(line: 1120, column: 11, scope: !1620)
!1648 = !DILocation(line: 1120, column: 62, scope: !1620)
!1649 = !DILocation(line: 1125, column: 1, scope: !1620)
!1650 = distinct !DISubprogram(name: "GetXMLTreeSibling", scope: !147, file: !147, line: 1149, type: !537, scopeLine: 1150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1651)
!1651 = !{!1652}
!1652 = !DILocalVariable(name: "xml_info", arg: 1, scope: !1650, file: !147, line: 1149, type: !143)
!1653 = !DILocation(line: 0, scope: !1650)
!1654 = !DILocation(line: 1154, column: 17, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1650, file: !147, line: 1154, column: 7)
!1656 = !DILocation(line: 1154, column: 23, scope: !1655)
!1657 = !DILocation(line: 1154, column: 7, scope: !1650)
!1658 = !DILocation(line: 1155, column: 12, scope: !1655)
!1659 = !DILocation(line: 1155, column: 5, scope: !1655)
!1660 = !DILocation(line: 1156, column: 20, scope: !1650)
!1661 = !DILocation(line: 1156, column: 3, scope: !1650)
!1662 = distinct !DISubprogram(name: "GetXMLTreeTag", scope: !147, file: !147, line: 1181, type: !1511, scopeLine: 1182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1663)
!1663 = !{!1664}
!1664 = !DILocalVariable(name: "xml_info", arg: 1, scope: !1662, file: !147, line: 1181, type: !143)
!1665 = !DILocation(line: 0, scope: !1662)
!1666 = !DILocation(line: 1186, column: 17, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1662, file: !147, line: 1186, column: 7)
!1668 = !DILocation(line: 1186, column: 23, scope: !1667)
!1669 = !DILocation(line: 1186, column: 7, scope: !1662)
!1670 = !DILocation(line: 1187, column: 12, scope: !1667)
!1671 = !DILocation(line: 1187, column: 5, scope: !1667)
!1672 = !DILocation(line: 1188, column: 20, scope: !1662)
!1673 = !DILocation(line: 1188, column: 3, scope: !1662)
!1674 = distinct !DISubprogram(name: "NewXMLTree", scope: !147, file: !147, line: 1931, type: !1675, scopeLine: 1932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1690)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!143, !186, !1677}
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !6, line: 219, baseType: !1679)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !55, line: 102, size: 448, elements: !1680)
!1680 = !{!1681, !1683, !1684, !1685, !1686, !1687, !1688, !1689}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !1679, file: !55, line: 105, baseType: !1682, size: 32)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !55, line: 100, baseType: !54)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !1679, file: !55, line: 108, baseType: !203, size: 32, offset: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !1679, file: !55, line: 111, baseType: !150, size: 64, offset: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1679, file: !55, line: 112, baseType: !150, size: 64, offset: 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !1679, file: !55, line: 115, baseType: !172, size: 64, offset: 192)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !1679, file: !55, line: 118, baseType: !165, size: 32, offset: 256)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !1679, file: !55, line: 121, baseType: !167, size: 64, offset: 320)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1679, file: !55, line: 124, baseType: !156, size: 64, offset: 384)
!1690 = !{!1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705}
!1691 = !DILocalVariable(name: "xml", arg: 1, scope: !1674, file: !147, line: 1931, type: !186)
!1692 = !DILocalVariable(name: "exception", arg: 2, scope: !1674, file: !147, line: 1931, type: !1677)
!1693 = !DILocalVariable(name: "attribute", scope: !1674, file: !147, line: 1934, type: !153)
!1694 = !DILocalVariable(name: "attributes", scope: !1674, file: !147, line: 1935, type: !153)
!1695 = !DILocalVariable(name: "tag", scope: !1674, file: !147, line: 1936, type: !150)
!1696 = !DILocalVariable(name: "utf8", scope: !1674, file: !147, line: 1937, type: !150)
!1697 = !DILocalVariable(name: "c", scope: !1674, file: !147, line: 1940, type: !203)
!1698 = !DILocalVariable(name: "terminal", scope: !1674, file: !147, line: 1941, type: !203)
!1699 = !DILocalVariable(name: "status", scope: !1674, file: !147, line: 1944, type: !165)
!1700 = !DILocalVariable(name: "p", scope: !1674, file: !147, line: 1947, type: !150)
!1701 = !DILocalVariable(name: "i", scope: !1674, file: !147, line: 1950, type: !173)
!1702 = !DILocalVariable(name: "length", scope: !1674, file: !147, line: 1953, type: !156)
!1703 = !DILocalVariable(name: "j", scope: !1674, file: !147, line: 1956, type: !173)
!1704 = !DILocalVariable(name: "l", scope: !1674, file: !147, line: 1957, type: !173)
!1705 = !DILocalVariable(name: "root", scope: !1674, file: !147, line: 1960, type: !188)
!1706 = !DILocation(line: 0, scope: !1674)
!1707 = !DILocation(line: 1965, column: 12, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1674, file: !147, line: 1965, column: 7)
!1709 = !DILocation(line: 1965, column: 36, scope: !1708)
!1710 = !DILocation(line: 1965, column: 40, scope: !1708)
!1711 = !DILocation(line: 1965, column: 52, scope: !1708)
!1712 = !DILocation(line: 1965, column: 7, scope: !1674)
!1713 = !DILocation(line: 1967, column: 14, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1708, file: !147, line: 1966, column: 5)
!1715 = !DILocation(line: 1969, column: 7, scope: !1714)
!1716 = !DILocation(line: 1971, column: 24, scope: !1674)
!1717 = !DILocation(line: 1972, column: 10, scope: !1674)
!1718 = !DILocalVariable(name: "content", arg: 1, scope: !1719, file: !147, line: 1312, type: !186)
!1719 = distinct !DISubprogram(name: "ConvertUTF16ToUTF8", scope: !147, file: !147, line: 1312, type: !1720, scopeLine: 1313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1722)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!150, !186, !583}
!1722 = !{!1718, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731}
!1723 = !DILocalVariable(name: "length", arg: 2, scope: !1719, file: !147, line: 1312, type: !583)
!1724 = !DILocalVariable(name: "utf8", scope: !1719, file: !147, line: 1315, type: !150)
!1725 = !DILocalVariable(name: "bits", scope: !1719, file: !147, line: 1318, type: !203)
!1726 = !DILocalVariable(name: "byte", scope: !1719, file: !147, line: 1319, type: !203)
!1727 = !DILocalVariable(name: "c", scope: !1719, file: !147, line: 1320, type: !203)
!1728 = !DILocalVariable(name: "encoding", scope: !1719, file: !147, line: 1321, type: !203)
!1729 = !DILocalVariable(name: "i", scope: !1719, file: !147, line: 1324, type: !173)
!1730 = !DILocalVariable(name: "extent", scope: !1719, file: !147, line: 1327, type: !156)
!1731 = !DILocalVariable(name: "j", scope: !1719, file: !147, line: 1330, type: !173)
!1732 = !DILocation(line: 0, scope: !1719, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 1973, column: 8, scope: !1674)
!1734 = !DILocation(line: 1332, column: 17, scope: !1719, inlinedAt: !1733)
!1735 = !DILocation(line: 1333, column: 12, scope: !1736, inlinedAt: !1733)
!1736 = distinct !DILexicalBlock(scope: !1719, file: !147, line: 1333, column: 7)
!1737 = !DILocation(line: 1333, column: 7, scope: !1719, inlinedAt: !1733)
!1738 = !DILocation(line: 1335, column: 13, scope: !1719, inlinedAt: !1733)
!1739 = !DILocation(line: 1335, column: 22, scope: !1719, inlinedAt: !1733)
!1740 = !DILocation(line: 1335, column: 12, scope: !1719, inlinedAt: !1733)
!1741 = !DILocation(line: 1341, column: 14, scope: !1742, inlinedAt: !1733)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !147, line: 1337, column: 5)
!1743 = distinct !DILexicalBlock(scope: !1719, file: !147, line: 1336, column: 7)
!1744 = !DILocation(line: 1974, column: 7, scope: !1674)
!1745 = !DILocation(line: 1346, column: 35, scope: !1746, inlinedAt: !1733)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !147, line: 1346, column: 3)
!1747 = distinct !DILexicalBlock(scope: !1719, file: !147, line: 1346, column: 3)
!1748 = !DILocation(line: 1346, column: 15, scope: !1746, inlinedAt: !1733)
!1749 = !DILocation(line: 1346, column: 3, scope: !1747, inlinedAt: !1733)
!1750 = !DILocation(line: 0, scope: !1751, inlinedAt: !1733)
!1751 = distinct !DILexicalBlock(scope: !1746, file: !147, line: 1347, column: 3)
!1752 = !DILocation(line: 1348, column: 7, scope: !1751, inlinedAt: !1733)
!1753 = !DILocation(line: 1350, column: 23, scope: !1754, inlinedAt: !1733)
!1754 = distinct !DILexicalBlock(scope: !1751, file: !147, line: 1350, column: 9)
!1755 = !DILocation(line: 1350, column: 46, scope: !1754, inlinedAt: !1733)
!1756 = !DILocation(line: 1350, column: 51, scope: !1754, inlinedAt: !1733)
!1757 = !DILocation(line: 1350, column: 9, scope: !1751, inlinedAt: !1733)
!1758 = !DILocation(line: 0, scope: !1759, inlinedAt: !1733)
!1759 = distinct !DILexicalBlock(scope: !1754, file: !147, line: 1351, column: 7)
!1760 = !DILocation(line: 1352, column: 14, scope: !1759, inlinedAt: !1733)
!1761 = !DILocation(line: 1355, column: 25, scope: !1759, inlinedAt: !1733)
!1762 = !DILocation(line: 1355, column: 40, scope: !1759, inlinedAt: !1733)
!1763 = !DILocation(line: 1355, column: 32, scope: !1759, inlinedAt: !1733)
!1764 = !DILocation(line: 1355, column: 49, scope: !1759, inlinedAt: !1733)
!1765 = !DILocation(line: 1356, column: 7, scope: !1759, inlinedAt: !1733)
!1766 = !DILocation(line: 0, scope: !1747, inlinedAt: !1733)
!1767 = !DILocation(line: 1357, column: 20, scope: !1768, inlinedAt: !1733)
!1768 = distinct !DILexicalBlock(scope: !1751, file: !147, line: 1357, column: 9)
!1769 = !DILocation(line: 1357, column: 36, scope: !1768, inlinedAt: !1733)
!1770 = !DILocation(line: 1357, column: 9, scope: !1751, inlinedAt: !1733)
!1771 = !DILocation(line: 1360, column: 23, scope: !1772, inlinedAt: !1733)
!1772 = distinct !DILexicalBlock(scope: !1768, file: !147, line: 1358, column: 7)
!1773 = !DILocation(line: 1361, column: 18, scope: !1774, inlinedAt: !1733)
!1774 = distinct !DILexicalBlock(scope: !1772, file: !147, line: 1361, column: 13)
!1775 = !DILocation(line: 1361, column: 13, scope: !1772, inlinedAt: !1733)
!1776 = !DILocation(line: 1364, column: 11, scope: !1777, inlinedAt: !1733)
!1777 = distinct !DILexicalBlock(scope: !1751, file: !147, line: 1364, column: 9)
!1778 = !DILocation(line: 1364, column: 9, scope: !1751, inlinedAt: !1733)
!1779 = !DILocation(line: 1366, column: 17, scope: !1780, inlinedAt: !1733)
!1780 = distinct !DILexicalBlock(scope: !1777, file: !147, line: 1365, column: 7)
!1781 = !DILocation(line: 1366, column: 9, scope: !1780, inlinedAt: !1733)
!1782 = !DILocation(line: 1366, column: 16, scope: !1780, inlinedAt: !1733)
!1783 = !DILocation(line: 1367, column: 10, scope: !1780, inlinedAt: !1733)
!1784 = !DILocation(line: 1368, column: 9, scope: !1780, inlinedAt: !1733)
!1785 = !DILocation(line: 1375, column: 11, scope: !1786, inlinedAt: !1733)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !147, line: 1374, column: 5)
!1787 = distinct !DILexicalBlock(scope: !1751, file: !147, line: 1374, column: 5)
!1788 = !DILocation(line: 1374, column: 33, scope: !1786, inlinedAt: !1733)
!1789 = !DILocation(line: 1374, column: 23, scope: !1786, inlinedAt: !1733)
!1790 = !DILocation(line: 1374, column: 5, scope: !1787, inlinedAt: !1733)
!1791 = distinct !{!1791, !1790, !1792, !309, !310}
!1792 = !DILocation(line: 1375, column: 11, scope: !1787, inlinedAt: !1733)
!1793 = !DILocation(line: 1376, column: 15, scope: !1751, inlinedAt: !1733)
!1794 = !DILocation(line: 1376, column: 18, scope: !1751, inlinedAt: !1733)
!1795 = !DILocation(line: 1377, column: 26, scope: !1751, inlinedAt: !1733)
!1796 = !DILocation(line: 1377, column: 21, scope: !1751, inlinedAt: !1733)
!1797 = !DILocation(line: 1377, column: 44, scope: !1751, inlinedAt: !1733)
!1798 = !DILocation(line: 1377, column: 39, scope: !1751, inlinedAt: !1733)
!1799 = !DILocation(line: 1377, column: 34, scope: !1751, inlinedAt: !1733)
!1800 = !DILocation(line: 1377, column: 15, scope: !1751, inlinedAt: !1733)
!1801 = !DILocation(line: 1377, column: 5, scope: !1751, inlinedAt: !1733)
!1802 = !DILocation(line: 1377, column: 14, scope: !1751, inlinedAt: !1733)
!1803 = !DILocation(line: 1378, column: 17, scope: !1751, inlinedAt: !1733)
!1804 = !DILocation(line: 1378, column: 5, scope: !1751, inlinedAt: !1733)
!1805 = !DILocation(line: 1380, column: 11, scope: !1806, inlinedAt: !1733)
!1806 = distinct !DILexicalBlock(scope: !1751, file: !147, line: 1379, column: 5)
!1807 = !DILocation(line: 1381, column: 31, scope: !1806, inlinedAt: !1733)
!1808 = !DILocation(line: 1381, column: 26, scope: !1806, inlinedAt: !1733)
!1809 = !DILocation(line: 1381, column: 15, scope: !1806, inlinedAt: !1733)
!1810 = !DILocation(line: 1381, column: 7, scope: !1806, inlinedAt: !1733)
!1811 = !DILocation(line: 1381, column: 14, scope: !1806, inlinedAt: !1733)
!1812 = distinct !{!1812, !1804, !1813, !309, !310}
!1813 = !DILocation(line: 1383, column: 5, scope: !1751, inlinedAt: !1733)
!1814 = !DILocation(line: 1346, column: 41, scope: !1746, inlinedAt: !1733)
!1815 = distinct !{!1815, !1749, !1816, !309, !310}
!1816 = !DILocation(line: 1384, column: 3, scope: !1747, inlinedAt: !1733)
!1817 = !DILocation(line: 1386, column: 19, scope: !1719, inlinedAt: !1733)
!1818 = !DILocation(line: 1974, column: 12, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1674, file: !147, line: 1974, column: 7)
!1820 = !DILocation(line: 1976, column: 14, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1819, file: !147, line: 1975, column: 5)
!1822 = !DILocation(line: 1978, column: 7, scope: !1821)
!1823 = !DILocation(line: 1980, column: 23, scope: !1674)
!1824 = !DILocation(line: 1980, column: 12, scope: !1674)
!1825 = !DILocation(line: 1981, column: 17, scope: !1674)
!1826 = !DILocation(line: 1983, column: 3, scope: !1674)
!1827 = !DILocation(line: 1983, column: 11, scope: !1674)
!1828 = !DILocation(line: 1983, column: 23, scope: !1674)
!1829 = !DILocation(line: 1993, column: 3, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1674, file: !147, line: 1993, column: 3)
!1831 = !DILocation(line: 1984, column: 6, scope: !1674)
!1832 = distinct !{!1832, !1826, !1831, !309, !310}
!1833 = !DILocation(line: 1987, column: 14, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !147, line: 1986, column: 5)
!1835 = distinct !DILexicalBlock(scope: !1674, file: !147, line: 1985, column: 7)
!1836 = !DILocation(line: 1989, column: 12, scope: !1834)
!1837 = !DILocation(line: 1990, column: 7, scope: !1834)
!1838 = !DILocation(line: 0, scope: !1830)
!1839 = !DILocation(line: 1997, column: 8, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !147, line: 1994, column: 3)
!1841 = distinct !DILexicalBlock(scope: !1830, file: !147, line: 1993, column: 3)
!1842 = !DILocation(line: 1998, column: 10, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1840, file: !147, line: 1998, column: 9)
!1844 = !{!1845, !1845, i64 0}
!1845 = !{!"short", !250, i64 0}
!1846 = !DILocation(line: 1998, column: 46, scope: !1843)
!1847 = !DILocation(line: 1998, column: 51, scope: !1843)
!1848 = !DILocation(line: 1999, column: 13, scope: !1843)
!1849 = !DILocation(line: 1999, column: 21, scope: !1843)
!1850 = !DILocation(line: 2004, column: 19, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !147, line: 2004, column: 13)
!1852 = distinct !DILexicalBlock(scope: !1843, file: !147, line: 2000, column: 7)
!1853 = !{!911, !249, i64 96}
!1854 = !DILocation(line: 2004, column: 24, scope: !1851)
!1855 = !DILocation(line: 2004, column: 13, scope: !1852)
!1856 = !DILocation(line: 2006, column: 20, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1851, file: !147, line: 2005, column: 11)
!1858 = !DILocation(line: 2008, column: 18, scope: !1857)
!1859 = !DILocation(line: 2009, column: 13, scope: !1857)
!1860 = !DILocation(line: 2011, column: 12, scope: !1852)
!1861 = !DILocation(line: 2011, column: 10, scope: !1852)
!1862 = !DILocation(line: 2012, column: 16, scope: !1852)
!1863 = !DILocation(line: 2012, column: 52, scope: !1852)
!1864 = !DILocation(line: 2012, column: 9, scope: !1852)
!1865 = !DILocation(line: 2013, column: 13, scope: !1852)
!1866 = !DILocation(line: 2013, column: 15, scope: !1852)
!1867 = distinct !{!1867, !1864, !1868, !309, !310}
!1868 = !DILocation(line: 2013, column: 16, scope: !1852)
!1869 = !DILocation(line: 0, scope: !1852)
!1870 = !DILocation(line: 2014, column: 26, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1852, file: !147, line: 2014, column: 13)
!1872 = !DILocation(line: 2020, column: 21, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1871, file: !147, line: 2015, column: 11)
!1874 = !DILocation(line: 2020, column: 41, scope: !1873)
!1875 = !DILocation(line: 2020, column: 60, scope: !1873)
!1876 = !DILocation(line: 2022, column: 16, scope: !1873)
!1877 = distinct !{!1877, !1878, !1876, !309, !310}
!1878 = !DILocation(line: 2020, column: 13, scope: !1873)
!1879 = !DILocation(line: 2021, column: 28, scope: !1873)
!1880 = !DILocation(line: 2021, column: 21, scope: !1873)
!1881 = !DILocation(line: 2021, column: 56, scope: !1873)
!1882 = !DILocation(line: 2025, column: 14, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1852, file: !147, line: 2025, column: 9)
!1884 = !DILocation(line: 2025, column: 20, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1883, file: !147, line: 2025, column: 9)
!1886 = !DILocation(line: 0, scope: !1840)
!1887 = !DILocation(line: 0, scope: !1883)
!1888 = !DILocation(line: 2025, column: 32, scope: !1885)
!1889 = !DILocation(line: 2030, column: 17, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !147, line: 2030, column: 15)
!1891 = distinct !DILexicalBlock(scope: !1885, file: !147, line: 2026, column: 9)
!1892 = !DILocation(line: 2030, column: 15, scope: !1891)
!1893 = !DILocation(line: 2031, column: 34, scope: !1890)
!1894 = !DILocation(line: 2031, column: 13, scope: !1890)
!1895 = !DILocation(line: 2033, column: 76, scope: !1890)
!1896 = !DILocation(line: 2033, column: 34, scope: !1890)
!1897 = !DILocation(line: 0, scope: !1890)
!1898 = !DILocation(line: 2035, column: 26, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1891, file: !147, line: 2035, column: 15)
!1900 = !DILocation(line: 2035, column: 15, scope: !1891)
!1901 = !DILocation(line: 2037, column: 22, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1899, file: !147, line: 2036, column: 13)
!1903 = !DILocation(line: 2039, column: 20, scope: !1902)
!1904 = !DILocation(line: 2040, column: 15, scope: !1902)
!1905 = !DILocation(line: 2042, column: 23, scope: !1891)
!1906 = !DILocation(line: 2042, column: 11, scope: !1891)
!1907 = !DILocation(line: 2042, column: 26, scope: !1891)
!1908 = !DILocation(line: 2043, column: 23, scope: !1891)
!1909 = !DILocation(line: 2043, column: 11, scope: !1891)
!1910 = !DILocation(line: 2043, column: 26, scope: !1891)
!1911 = !DILocation(line: 2044, column: 11, scope: !1891)
!1912 = !DILocation(line: 2044, column: 24, scope: !1891)
!1913 = !DILocation(line: 2045, column: 14, scope: !1891)
!1914 = !DILocation(line: 2045, column: 12, scope: !1891)
!1915 = !DILocation(line: 2046, column: 16, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1891, file: !147, line: 2046, column: 15)
!1917 = !DILocation(line: 2046, column: 19, scope: !1916)
!1918 = !DILocation(line: 2046, column: 27, scope: !1916)
!1919 = !DILocation(line: 2046, column: 31, scope: !1916)
!1920 = !DILocation(line: 2046, column: 67, scope: !1916)
!1921 = !DILocation(line: 2046, column: 15, scope: !1891)
!1922 = !DILocation(line: 2047, column: 27, scope: !1916)
!1923 = !DILocation(line: 2047, column: 13, scope: !1916)
!1924 = !DILocation(line: 2050, column: 17, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1916, file: !147, line: 2049, column: 13)
!1926 = !DILocation(line: 2050, column: 19, scope: !1925)
!1927 = !DILocation(line: 2051, column: 18, scope: !1925)
!1928 = !DILocation(line: 2051, column: 16, scope: !1925)
!1929 = !DILocation(line: 2052, column: 18, scope: !1925)
!1930 = !DILocation(line: 2053, column: 30, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1925, file: !147, line: 2053, column: 19)
!1932 = !DILocation(line: 2058, column: 20, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1931, file: !147, line: 2054, column: 17)
!1934 = !DILocation(line: 2059, column: 34, scope: !1933)
!1935 = !DILocation(line: 2060, column: 19, scope: !1933)
!1936 = !DILocation(line: 0, scope: !1933)
!1937 = !DILocation(line: 2060, column: 27, scope: !1933)
!1938 = !DILocation(line: 2060, column: 30, scope: !1933)
!1939 = !DILocation(line: 2060, column: 39, scope: !1933)
!1940 = !DILocation(line: 2061, column: 22, scope: !1933)
!1941 = distinct !{!1941, !1935, !1940, !309, !310}
!1942 = !DILocation(line: 2062, column: 23, scope: !1933)
!1943 = !DILocation(line: 2063, column: 25, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1933, file: !147, line: 2062, column: 23)
!1945 = !DILocation(line: 2075, column: 56, scope: !1933)
!1946 = !DILocation(line: 2076, column: 27, scope: !1933)
!1947 = !DILocation(line: 2076, column: 40, scope: !1933)
!1948 = !DILocation(line: 2076, column: 58, scope: !1933)
!1949 = !DILocation(line: 2052, column: 17, scope: !1925)
!1950 = !DILocation(line: 2066, column: 37, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1944, file: !147, line: 2065, column: 21)
!1952 = !DILocation(line: 2066, column: 36, scope: !1951)
!1953 = !DILocation(line: 2067, column: 39, scope: !1951)
!1954 = !DILocation(line: 2067, column: 38, scope: !1951)
!1955 = !DILocation(line: 0, scope: !1027, inlinedAt: !1956)
!1956 = distinct !DILocation(line: 2068, column: 30, scope: !1951)
!1957 = !DILocation(line: 445, column: 38, scope: !1035, inlinedAt: !1956)
!1958 = !DILocation(line: 447, column: 13, scope: !1038, inlinedAt: !1956)
!1959 = !DILocation(line: 447, column: 27, scope: !1038, inlinedAt: !1956)
!1960 = !DILocation(line: 447, column: 3, scope: !1039, inlinedAt: !1956)
!1961 = !DILocation(line: 453, column: 21, scope: !1043, inlinedAt: !1956)
!1962 = !DILocation(line: 453, column: 20, scope: !1043, inlinedAt: !1956)
!1963 = !DILocation(line: 454, column: 21, scope: !1047, inlinedAt: !1956)
!1964 = !DILocation(line: 454, column: 9, scope: !1047, inlinedAt: !1956)
!1965 = !DILocation(line: 454, column: 25, scope: !1047, inlinedAt: !1956)
!1966 = !DILocation(line: 454, column: 9, scope: !1044, inlinedAt: !1956)
!1967 = !DILocation(line: 455, column: 23, scope: !1047, inlinedAt: !1956)
!1968 = !DILocation(line: 455, column: 22, scope: !1047, inlinedAt: !1956)
!1969 = !DILocation(line: 455, column: 7, scope: !1047, inlinedAt: !1956)
!1970 = !DILocation(line: 447, column: 46, scope: !1038, inlinedAt: !1956)
!1971 = distinct !{!1971, !1960, !1972, !309, !310}
!1972 = !DILocation(line: 456, column: 3, scope: !1039, inlinedAt: !1956)
!1973 = !DILocation(line: 457, column: 24, scope: !1027, inlinedAt: !1956)
!1974 = !DILocation(line: 458, column: 3, scope: !1027, inlinedAt: !1956)
!1975 = !DILocation(line: 2069, column: 30, scope: !1951)
!1976 = !DILocation(line: 2071, column: 28, scope: !1951)
!1977 = !DILocation(line: 2072, column: 23, scope: !1951)
!1978 = !DILocation(line: 2077, column: 27, scope: !1933)
!1979 = !DILocation(line: 2077, column: 62, scope: !1933)
!1980 = !DILocation(line: 2075, column: 19, scope: !1933)
!1981 = !DILocation(line: 2078, column: 22, scope: !1933)
!1982 = !DILocation(line: 2081, column: 50, scope: !1933)
!1983 = !DILocation(line: 2081, column: 39, scope: !1933)
!1984 = !DILocation(line: 2081, column: 38, scope: !1933)
!1985 = !DILocation(line: 2080, column: 21, scope: !1933)
!1986 = !DILocation(line: 2079, column: 49, scope: !1933)
!1987 = !DILocation(line: 2079, column: 71, scope: !1933)
!1988 = !DILocation(line: 2079, column: 35, scope: !1933)
!1989 = !DILocation(line: 2079, column: 34, scope: !1933)
!1990 = !DILocation(line: 2082, column: 17, scope: !1933)
!1991 = !DILocation(line: 0, scope: !1925)
!1992 = !DILocation(line: 2083, column: 44, scope: !1925)
!1993 = !DILocation(line: 2083, column: 29, scope: !1925)
!1994 = !DILocation(line: 0, scope: !1916)
!1995 = !DILocation(line: 0, scope: !1891)
!1996 = !DILocation(line: 2085, column: 11, scope: !1891)
!1997 = !DILocation(line: 2085, column: 18, scope: !1891)
!1998 = !DILocation(line: 2085, column: 54, scope: !1891)
!1999 = !DILocation(line: 2086, column: 14, scope: !1891)
!2000 = distinct !{!2000, !2001, !2002, !309, !310}
!2001 = !DILocation(line: 2025, column: 9, scope: !1883)
!2002 = !DILocation(line: 2087, column: 9, scope: !1883)
!2003 = !DILocation(line: 2093, column: 15, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !147, line: 2089, column: 11)
!2005 = distinct !DILexicalBlock(scope: !1852, file: !147, line: 2088, column: 13)
!2006 = !DILocation(line: 2093, column: 17, scope: !2004)
!2007 = !DILocation(line: 2094, column: 19, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2004, file: !147, line: 2094, column: 17)
!2009 = !DILocation(line: 2094, column: 31, scope: !2008)
!2010 = !DILocation(line: 2095, column: 22, scope: !2008)
!2011 = !DILocation(line: 2095, column: 31, scope: !2008)
!2012 = !DILocation(line: 2097, column: 23, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !147, line: 2097, column: 21)
!2014 = distinct !DILexicalBlock(scope: !2008, file: !147, line: 2096, column: 15)
!2015 = !DILocation(line: 2097, column: 21, scope: !2014)
!2016 = !DILocation(line: 2098, column: 26, scope: !2013)
!2017 = !DILocation(line: 2098, column: 19, scope: !2013)
!2018 = !DILocation(line: 2099, column: 24, scope: !2014)
!2019 = !DILocation(line: 2101, column: 22, scope: !2014)
!2020 = !DILocation(line: 2102, column: 17, scope: !2014)
!2021 = !DILocalVariable(name: "root", arg: 1, scope: !2022, file: !147, line: 1917, type: !188)
!2022 = distinct !DISubprogram(name: "ParseOpenTag", scope: !147, file: !147, line: 1917, type: !2023, scopeLine: 1918, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2025)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{null, !188, !150, !153}
!2025 = !{!2021, !2026, !2027, !2028}
!2026 = !DILocalVariable(name: "tag", arg: 2, scope: !2022, file: !147, line: 1917, type: !150)
!2027 = !DILocalVariable(name: "attributes", arg: 3, scope: !2022, file: !147, line: 1917, type: !153)
!2028 = !DILocalVariable(name: "xml_info", scope: !2022, file: !147, line: 1920, type: !143)
!2029 = !DILocation(line: 0, scope: !2022, inlinedAt: !2030)
!2030 = distinct !DILocation(line: 2104, column: 13, scope: !2004)
!2031 = !DILocation(line: 1922, column: 18, scope: !2022, inlinedAt: !2030)
!2032 = !DILocation(line: 1923, column: 17, scope: !2033, inlinedAt: !2030)
!2033 = distinct !DILexicalBlock(scope: !2022, file: !147, line: 1923, column: 7)
!2034 = !DILocation(line: 1923, column: 21, scope: !2033, inlinedAt: !2030)
!2035 = !DILocation(line: 1923, column: 7, scope: !2022, inlinedAt: !2030)
!2036 = !DILocation(line: 1924, column: 19, scope: !2033, inlinedAt: !2030)
!2037 = !DILocation(line: 1924, column: 18, scope: !2033, inlinedAt: !2030)
!2038 = !DILocation(line: 1924, column: 5, scope: !2033, inlinedAt: !2030)
!2039 = !DILocation(line: 1926, column: 62, scope: !2033, inlinedAt: !2030)
!2040 = !DILocation(line: 1926, column: 45, scope: !2033, inlinedAt: !2030)
!2041 = !DILocation(line: 1926, column: 14, scope: !2033, inlinedAt: !2030)
!2042 = !DILocation(line: 1584, column: 20, scope: !2043, inlinedAt: !2052)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !147, line: 1583, column: 7)
!2044 = distinct !DISubprogram(name: "ParseCloseTag", scope: !147, file: !147, line: 1578, type: !2045, scopeLine: 1580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2047)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!143, !188, !150, !150, !1677}
!2047 = !{!2048, !2049, !2050, !2051}
!2048 = !DILocalVariable(name: "root", arg: 1, scope: !2044, file: !147, line: 1578, type: !188)
!2049 = !DILocalVariable(name: "tag", arg: 2, scope: !2044, file: !147, line: 1578, type: !150)
!2050 = !DILocalVariable(name: "xml", arg: 3, scope: !2044, file: !147, line: 1579, type: !150)
!2051 = !DILocalVariable(name: "exception", arg: 4, scope: !2044, file: !147, line: 1579, type: !1677)
!2052 = distinct !DILocation(line: 2105, column: 20, scope: !2004)
!2053 = !DILocation(line: 1927, column: 13, scope: !2022, inlinedAt: !2030)
!2054 = !DILocation(line: 1927, column: 23, scope: !2022, inlinedAt: !2030)
!2055 = !DILocation(line: 1928, column: 13, scope: !2022, inlinedAt: !2030)
!2056 = !DILocation(line: 0, scope: !2044, inlinedAt: !2052)
!2057 = !DILocation(line: 1584, column: 24, scope: !2043, inlinedAt: !2052)
!2058 = !DILocation(line: 1584, column: 42, scope: !2043, inlinedAt: !2052)
!2059 = !DILocation(line: 1584, column: 46, scope: !2043, inlinedAt: !2052)
!2060 = !DILocation(line: 1584, column: 74, scope: !2043, inlinedAt: !2052)
!2061 = !DILocation(line: 1583, column: 7, scope: !2044, inlinedAt: !2052)
!2062 = !DILocation(line: 1586, column: 14, scope: !2063, inlinedAt: !2052)
!2063 = distinct !DILexicalBlock(scope: !2043, file: !147, line: 1585, column: 5)
!2064 = !DILocation(line: 1588, column: 7, scope: !2063, inlinedAt: !2052)
!2065 = !DILocation(line: 1590, column: 26, scope: !2044, inlinedAt: !2052)
!2066 = !DILocation(line: 1590, column: 13, scope: !2044, inlinedAt: !2052)
!2067 = !DILocation(line: 1591, column: 3, scope: !2044, inlinedAt: !2052)
!2068 = !DILocation(line: 2110, column: 46, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !147, line: 2110, column: 17)
!2070 = distinct !DILexicalBlock(scope: !2005, file: !147, line: 2108, column: 11)
!2071 = !DILocation(line: 2112, column: 19, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2069, file: !147, line: 2111, column: 15)
!2073 = !DILocation(line: 0, scope: !2022, inlinedAt: !2074)
!2074 = distinct !DILocation(line: 2113, column: 17, scope: !2072)
!2075 = !DILocation(line: 1922, column: 18, scope: !2022, inlinedAt: !2074)
!2076 = !DILocation(line: 1923, column: 17, scope: !2033, inlinedAt: !2074)
!2077 = !DILocation(line: 1923, column: 21, scope: !2033, inlinedAt: !2074)
!2078 = !DILocation(line: 1923, column: 7, scope: !2022, inlinedAt: !2074)
!2079 = !DILocation(line: 1924, column: 19, scope: !2033, inlinedAt: !2074)
!2080 = !DILocation(line: 1924, column: 18, scope: !2033, inlinedAt: !2074)
!2081 = !DILocation(line: 1924, column: 5, scope: !2033, inlinedAt: !2074)
!2082 = !DILocation(line: 1926, column: 62, scope: !2033, inlinedAt: !2074)
!2083 = !DILocation(line: 1926, column: 45, scope: !2033, inlinedAt: !2074)
!2084 = !DILocation(line: 1926, column: 14, scope: !2033, inlinedAt: !2074)
!2085 = !DILocation(line: 1927, column: 13, scope: !2022, inlinedAt: !2074)
!2086 = !DILocation(line: 1927, column: 23, scope: !2022, inlinedAt: !2074)
!2087 = !DILocation(line: 1928, column: 13, scope: !2022, inlinedAt: !2074)
!2088 = !DILocation(line: 2114, column: 19, scope: !2072)
!2089 = !DILocation(line: 2118, column: 23, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !147, line: 2118, column: 21)
!2091 = distinct !DILexicalBlock(scope: !2069, file: !147, line: 2117, column: 15)
!2092 = !DILocation(line: 2118, column: 21, scope: !2091)
!2093 = !DILocation(line: 2119, column: 26, scope: !2090)
!2094 = !DILocation(line: 2119, column: 19, scope: !2090)
!2095 = !DILocation(line: 2120, column: 24, scope: !2091)
!2096 = !DILocation(line: 2122, column: 22, scope: !2091)
!2097 = !DILocation(line: 2123, column: 17, scope: !2091)
!2098 = !DILocation(line: 2128, column: 14, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !1843, file: !147, line: 2128, column: 11)
!2100 = !DILocation(line: 2128, column: 11, scope: !1843)
!2101 = !DILocation(line: 2133, column: 16, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2099, file: !147, line: 2129, column: 9)
!2103 = !DILocation(line: 2134, column: 14, scope: !2102)
!2104 = !DILocation(line: 2134, column: 44, scope: !2102)
!2105 = !DILocation(line: 2134, column: 12, scope: !2102)
!2106 = !DILocation(line: 2135, column: 14, scope: !2102)
!2107 = !DILocation(line: 2136, column: 18, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2102, file: !147, line: 2136, column: 15)
!2109 = !DILocation(line: 2136, column: 27, scope: !2108)
!2110 = !DILocation(line: 2138, column: 22, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2108, file: !147, line: 2137, column: 13)
!2112 = !DILocation(line: 2140, column: 20, scope: !2111)
!2113 = !DILocation(line: 2141, column: 15, scope: !2111)
!2114 = !DILocation(line: 2143, column: 13, scope: !2102)
!2115 = !DILocation(line: 0, scope: !2044, inlinedAt: !2116)
!2116 = distinct !DILocation(line: 2144, column: 15, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2102, file: !147, line: 2144, column: 15)
!2118 = !DILocation(line: 1583, column: 14, scope: !2043, inlinedAt: !2116)
!2119 = !DILocation(line: 1583, column: 19, scope: !2043, inlinedAt: !2116)
!2120 = !DILocation(line: 1583, column: 44, scope: !2043, inlinedAt: !2116)
!2121 = !DILocation(line: 1584, column: 20, scope: !2043, inlinedAt: !2116)
!2122 = !DILocation(line: 1584, column: 24, scope: !2043, inlinedAt: !2116)
!2123 = !DILocation(line: 1584, column: 42, scope: !2043, inlinedAt: !2116)
!2124 = !DILocation(line: 1584, column: 46, scope: !2043, inlinedAt: !2116)
!2125 = !DILocation(line: 1584, column: 74, scope: !2043, inlinedAt: !2116)
!2126 = !DILocation(line: 1583, column: 7, scope: !2044, inlinedAt: !2116)
!2127 = !DILocation(line: 1586, column: 14, scope: !2063, inlinedAt: !2116)
!2128 = !DILocation(line: 2146, column: 20, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2117, file: !147, line: 2145, column: 13)
!2130 = !DILocation(line: 2147, column: 15, scope: !2129)
!2131 = !DILocation(line: 1590, column: 26, scope: !2044, inlinedAt: !2116)
!2132 = !DILocation(line: 1590, column: 13, scope: !2044, inlinedAt: !2116)
!2133 = !DILocation(line: 2149, column: 13, scope: !2102)
!2134 = !DILocation(line: 2150, column: 15, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2102, file: !147, line: 2150, column: 15)
!2136 = !DILocation(line: 2150, column: 51, scope: !2135)
!2137 = !DILocation(line: 2150, column: 15, scope: !2102)
!2138 = !DILocation(line: 2151, column: 16, scope: !2135)
!2139 = !DILocation(line: 2151, column: 14, scope: !2135)
!2140 = !DILocation(line: 2151, column: 13, scope: !2135)
!2141 = !DILocation(line: 2154, column: 13, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2099, file: !147, line: 2154, column: 13)
!2143 = !DILocation(line: 2154, column: 32, scope: !2142)
!2144 = !DILocation(line: 2154, column: 13, scope: !2099)
!2145 = !DILocation(line: 2159, column: 23, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2142, file: !147, line: 2155, column: 11)
!2147 = !DILocation(line: 2159, column: 15, scope: !2146)
!2148 = !DILocation(line: 2160, column: 20, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2146, file: !147, line: 2160, column: 17)
!2150 = !DILocation(line: 2160, column: 38, scope: !2149)
!2151 = !DILocation(line: 2160, column: 46, scope: !2149)
!2152 = !DILocation(line: 2160, column: 43, scope: !2149)
!2153 = !DILocation(line: 2160, column: 59, scope: !2149)
!2154 = !DILocation(line: 2161, column: 22, scope: !2149)
!2155 = !DILocation(line: 2161, column: 31, scope: !2149)
!2156 = !DILocation(line: 2163, column: 24, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2149, file: !147, line: 2162, column: 15)
!2158 = !DILocation(line: 2165, column: 22, scope: !2157)
!2159 = !DILocation(line: 2166, column: 17, scope: !2157)
!2160 = !DILocation(line: 2170, column: 15, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2142, file: !147, line: 2170, column: 15)
!2162 = !DILocation(line: 2170, column: 39, scope: !2161)
!2163 = !DILocation(line: 2170, column: 15, scope: !2142)
!2164 = !DILocation(line: 2175, column: 17, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2161, file: !147, line: 2171, column: 13)
!2166 = !DILocation(line: 2176, column: 21, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2165, file: !147, line: 2176, column: 19)
!2168 = !DILocation(line: 2176, column: 19, scope: !2165)
!2169 = !DILocation(line: 2178, column: 20, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2167, file: !147, line: 2177, column: 17)
!2171 = !DILocation(line: 2179, column: 49, scope: !2170)
!2172 = !DILocation(line: 2179, column: 63, scope: !2170)
!2173 = !DILocation(line: 2179, column: 67, scope: !2170)
!2174 = !DILocation(line: 2179, column: 19, scope: !2170)
!2175 = !DILocation(line: 2188, column: 13, scope: !2165)
!2176 = !DILocation(line: 2183, column: 26, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2167, file: !147, line: 2182, column: 17)
!2178 = !DILocation(line: 2185, column: 24, scope: !2177)
!2179 = !DILocation(line: 2186, column: 19, scope: !2177)
!2180 = !DILocation(line: 2190, column: 17, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2161, file: !147, line: 2190, column: 17)
!2182 = !DILocation(line: 2190, column: 41, scope: !2181)
!2183 = !DILocation(line: 2190, column: 17, scope: !2161)
!2184 = !DILocation(line: 2195, column: 31, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !147, line: 2195, column: 17)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !147, line: 2195, column: 17)
!2187 = distinct !DILexicalBlock(scope: !2181, file: !147, line: 2191, column: 15)
!2188 = !DILocation(line: 2195, column: 40, scope: !2185)
!2189 = !DILocation(line: 2195, column: 48, scope: !2185)
!2190 = !DILocation(line: 2195, column: 54, scope: !2185)
!2191 = !DILocation(line: 2196, column: 26, scope: !2185)
!2192 = !DILocation(line: 2196, column: 32, scope: !2185)
!2193 = !DILocation(line: 2196, column: 40, scope: !2185)
!2194 = !DILocation(line: 2196, column: 48, scope: !2185)
!2195 = !DILocation(line: 2197, column: 35, scope: !2185)
!2196 = !DILocation(line: 2197, column: 27, scope: !2185)
!2197 = !DILocation(line: 2197, column: 26, scope: !2185)
!2198 = !DILocation(line: 2197, column: 52, scope: !2185)
!2199 = !DILocation(line: 2197, column: 23, scope: !2185)
!2200 = !DILocation(line: 2197, column: 56, scope: !2185)
!2201 = !DILocation(line: 2195, column: 17, scope: !2186)
!2202 = !DILocation(line: 2199, column: 29, scope: !2185)
!2203 = !DILocation(line: 2199, column: 20, scope: !2185)
!2204 = !DILocation(line: 2199, column: 38, scope: !2185)
!2205 = !DILocation(line: 2199, column: 18, scope: !2185)
!2206 = !DILocation(line: 2198, column: 33, scope: !2185)
!2207 = !DILocation(line: 2198, column: 36, scope: !2185)
!2208 = !DILocation(line: 2198, column: 32, scope: !2185)
!2209 = distinct !{!2209, !2201, !2210, !309, !310}
!2210 = !DILocation(line: 2199, column: 39, scope: !2186)
!2211 = !DILocation(line: 2200, column: 34, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2187, file: !147, line: 2200, column: 21)
!2213 = !DILocation(line: 2202, column: 28, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2212, file: !147, line: 2201, column: 19)
!2215 = !DILocation(line: 2204, column: 26, scope: !2214)
!2216 = !DILocation(line: 2205, column: 21, scope: !2214)
!2217 = !DILocation(line: 2207, column: 23, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2187, file: !147, line: 2207, column: 21)
!2219 = !DILocation(line: 2207, column: 21, scope: !2187)
!2220 = !DILocation(line: 2208, column: 23, scope: !2218)
!2221 = !DILocation(line: 2208, column: 38, scope: !2218)
!2222 = !DILocation(line: 2211, column: 69, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !147, line: 2210, column: 19)
!2224 = distinct !DILexicalBlock(scope: !2187, file: !147, line: 2209, column: 21)
!2225 = !DILocation(line: 2211, column: 28, scope: !2223)
!2226 = !DILocation(line: 2213, column: 32, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2223, file: !147, line: 2213, column: 25)
!2228 = !DILocation(line: 2213, column: 25, scope: !2223)
!2229 = !DILocation(line: 2215, column: 30, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2227, file: !147, line: 2214, column: 23)
!2231 = !DILocation(line: 2216, column: 25, scope: !2230)
!2232 = !DILocation(line: 2218, column: 22, scope: !2223)
!2233 = !DILocation(line: 2219, column: 19, scope: !2223)
!2234 = !DILocation(line: 2222, column: 22, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2181, file: !147, line: 2222, column: 19)
!2236 = !DILocation(line: 2222, column: 19, scope: !2181)
!2237 = !DILocation(line: 2229, column: 23, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !147, line: 2228, column: 19)
!2239 = distinct !DILexicalBlock(scope: !2235, file: !147, line: 2223, column: 17)
!2240 = !DILocation(line: 2230, column: 27, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2238, file: !147, line: 2230, column: 25)
!2242 = !DILocation(line: 2230, column: 25, scope: !2238)
!2243 = !DILocation(line: 2232, column: 22, scope: !2238)
!2244 = !DILocation(line: 2233, column: 29, scope: !2239)
!2245 = !DILocation(line: 2233, column: 41, scope: !2239)
!2246 = !DILocation(line: 2234, column: 52, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2239, file: !147, line: 2234, column: 23)
!2248 = !DILocation(line: 2234, column: 61, scope: !2247)
!2249 = !DILocation(line: 2237, column: 30, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2247, file: !147, line: 2236, column: 21)
!2251 = !DILocation(line: 2239, column: 28, scope: !2250)
!2252 = !DILocation(line: 2240, column: 23, scope: !2250)
!2253 = !DILocation(line: 2242, column: 55, scope: !2239)
!2254 = !DILocation(line: 2242, column: 69, scope: !2239)
!2255 = !DILocation(line: 2242, column: 73, scope: !2239)
!2256 = !DILocation(line: 2242, column: 19, scope: !2239)
!2257 = !DILocation(line: 2246, column: 26, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2235, file: !147, line: 2245, column: 17)
!2259 = !DILocation(line: 2248, column: 24, scope: !2258)
!2260 = !DILocation(line: 2249, column: 19, scope: !2258)
!2261 = !DILocation(line: 2251, column: 35, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !1840, file: !147, line: 2251, column: 10)
!2263 = !DILocation(line: 2251, column: 38, scope: !2262)
!2264 = !DILocation(line: 2251, column: 10, scope: !1840)
!2265 = !DILocation(line: 2253, column: 10, scope: !1840)
!2266 = !DILocation(line: 2255, column: 11, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !1840, file: !147, line: 2255, column: 10)
!2268 = !DILocation(line: 2255, column: 23, scope: !2267)
!2269 = distinct !{!2269, !1829, !2270, !310}
!2270 = !DILocation(line: 2269, column: 3, scope: !1830)
!2271 = !DILocation(line: 2260, column: 17, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2267, file: !147, line: 2256, column: 8)
!2273 = !DILocation(line: 2260, column: 29, scope: !2272)
!2274 = !DILocation(line: 2261, column: 12, scope: !2272)
!2275 = !DILocation(line: 2260, column: 9, scope: !2272)
!2276 = distinct !{!2276, !2275, !2274, !309, !310}
!2277 = !DILocalVariable(name: "root", arg: 1, scope: !2278, file: !147, line: 1553, type: !188)
!2278 = distinct !DISubprogram(name: "ParseCharacterContent", scope: !147, file: !147, line: 1553, type: !2279, scopeLine: 1555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2281)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{null, !188, !150, !230, !187}
!2281 = !{!2277, !2282, !2283, !2284, !2285}
!2282 = !DILocalVariable(name: "xml", arg: 2, scope: !2278, file: !147, line: 1553, type: !150)
!2283 = !DILocalVariable(name: "length", arg: 3, scope: !2278, file: !147, line: 1554, type: !230)
!2284 = !DILocalVariable(name: "state", arg: 4, scope: !2278, file: !147, line: 1554, type: !187)
!2285 = !DILocalVariable(name: "xml_info", scope: !2278, file: !147, line: 1557, type: !143)
!2286 = !DILocation(line: 0, scope: !2278, inlinedAt: !2287)
!2287 = distinct !DILocation(line: 2264, column: 9, scope: !2272)
!2288 = !DILocation(line: 1559, column: 18, scope: !2278, inlinedAt: !2287)
!2289 = !DILocation(line: 1560, column: 17, scope: !2290, inlinedAt: !2287)
!2290 = distinct !DILexicalBlock(scope: !2278, file: !147, line: 1560, column: 7)
!2291 = !DILocation(line: 1560, column: 42, scope: !2290, inlinedAt: !2287)
!2292 = !DILocation(line: 1560, column: 56, scope: !2290, inlinedAt: !2287)
!2293 = !DILocation(line: 1560, column: 60, scope: !2290, inlinedAt: !2287)
!2294 = !DILocation(line: 1560, column: 78, scope: !2290, inlinedAt: !2287)
!2295 = !DILocation(line: 1563, column: 14, scope: !2278, inlinedAt: !2287)
!2296 = !DILocation(line: 1564, column: 31, scope: !2278, inlinedAt: !2287)
!2297 = !DILocation(line: 1564, column: 7, scope: !2278, inlinedAt: !2287)
!2298 = !DILocation(line: 1565, column: 18, scope: !2299, inlinedAt: !2287)
!2299 = distinct !DILexicalBlock(scope: !2278, file: !147, line: 1565, column: 7)
!2300 = !DILocation(line: 1565, column: 7, scope: !2299, inlinedAt: !2287)
!2301 = !DILocation(line: 1565, column: 26, scope: !2299, inlinedAt: !2287)
!2302 = !DILocation(line: 1565, column: 7, scope: !2278, inlinedAt: !2287)
!2303 = !DILocation(line: 1567, column: 14, scope: !2304, inlinedAt: !2287)
!2304 = distinct !DILexicalBlock(scope: !2299, file: !147, line: 1566, column: 5)
!2305 = !DILocation(line: 1568, column: 11, scope: !2304, inlinedAt: !2287)
!2306 = !DILocation(line: 1569, column: 5, scope: !2304, inlinedAt: !2287)
!2307 = !DILocation(line: 1573, column: 27, scope: !2308, inlinedAt: !2287)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !147, line: 1572, column: 11)
!2309 = distinct !DILexicalBlock(scope: !2299, file: !147, line: 1571, column: 5)
!2310 = !DILocation(line: 1574, column: 24, scope: !2309, inlinedAt: !2287)
!2311 = !DILocation(line: 2270, column: 8, scope: !1674)
!2312 = !DILocation(line: 2271, column: 13, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !1674, file: !147, line: 2271, column: 7)
!2314 = !DILocation(line: 2271, column: 18, scope: !2313)
!2315 = !DILocation(line: 2271, column: 7, scope: !1674)
!2316 = !DILocation(line: 2273, column: 19, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !1674, file: !147, line: 2273, column: 7)
!2318 = !DILocation(line: 2273, column: 23, scope: !2317)
!2319 = !DILocation(line: 2273, column: 7, scope: !1674)
!2320 = !DILocation(line: 2275, column: 14, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2317, file: !147, line: 2274, column: 5)
!2322 = !DILocation(line: 2277, column: 7, scope: !2321)
!2323 = !DILocation(line: 2279, column: 10, scope: !1674)
!2324 = !DILocation(line: 2281, column: 3, scope: !1674)
!2325 = !DILocation(line: 2282, column: 1, scope: !1674)
!2326 = !DISubprogram(name: "ThrowMagickException", scope: !55, file: !55, line: 156, type: !2327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!165, !1677, !186, !186, !230, !2329, !186, !186, null}
!2329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1682)
!2330 = !DILocation(line: 0, scope: !208)
!2331 = !DILocation(line: 2318, column: 24, scope: !208)
!2332 = !DILocation(line: 2319, column: 12, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !208, file: !147, line: 2319, column: 7)
!2334 = !DILocation(line: 2319, column: 7, scope: !208)
!2335 = !DILocation(line: 2321, column: 10, scope: !208)
!2336 = !DILocation(line: 2322, column: 17, scope: !208)
!2337 = !{!911, !249, i64 0}
!2338 = !DILocation(line: 2323, column: 11, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !208, file: !147, line: 2323, column: 7)
!2340 = !DILocation(line: 2323, column: 7, scope: !208)
!2341 = !DILocation(line: 2324, column: 20, scope: !2339)
!2342 = !DILocation(line: 2324, column: 19, scope: !2339)
!2343 = !DILocation(line: 2324, column: 5, scope: !2339)
!2344 = !DILocation(line: 2325, column: 9, scope: !208)
!2345 = !DILocation(line: 2325, column: 13, scope: !208)
!2346 = !DILocation(line: 2326, column: 22, scope: !208)
!2347 = !DILocation(line: 2326, column: 14, scope: !208)
!2348 = !DILocation(line: 2326, column: 21, scope: !208)
!2349 = !{!911, !249, i64 16}
!2350 = !DILocation(line: 2327, column: 28, scope: !208)
!2351 = !DILocation(line: 2327, column: 9, scope: !208)
!2352 = !DILocation(line: 2327, column: 17, scope: !208)
!2353 = !DILocation(line: 2328, column: 22, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !208, file: !147, line: 2328, column: 7)
!2355 = !DILocation(line: 2328, column: 7, scope: !208)
!2356 = !DILocation(line: 2330, column: 10, scope: !208)
!2357 = !DILocation(line: 2332, column: 14, scope: !208)
!2358 = !DILocation(line: 2332, column: 24, scope: !208)
!2359 = !{!911, !249, i64 8}
!2360 = !DILocation(line: 2333, column: 9, scope: !208)
!2361 = !DILocation(line: 2333, column: 19, scope: !208)
!2362 = !DILocation(line: 2334, column: 9, scope: !208)
!2363 = !DILocation(line: 2334, column: 32, scope: !208)
!2364 = !DILocation(line: 2335, column: 15, scope: !208)
!2365 = !DILocation(line: 2335, column: 9, scope: !208)
!2366 = !DILocation(line: 2335, column: 14, scope: !208)
!2367 = !{!911, !250, i64 136}
!2368 = !DILocation(line: 2336, column: 9, scope: !208)
!2369 = !DILocation(line: 2336, column: 18, scope: !208)
!2370 = !{!911, !252, i64 152}
!2371 = !DILocation(line: 2337, column: 3, scope: !208)
!2372 = !DILocation(line: 2338, column: 1, scope: !208)
!2373 = distinct !DISubprogram(name: "ParseEntities", scope: !147, file: !147, line: 1389, type: !2374, scopeLine: 1390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2376)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!150, !150, !153, !203}
!2376 = !{!2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2402, !2405}
!2377 = !DILocalVariable(name: "xml", arg: 1, scope: !2373, file: !147, line: 1389, type: !150)
!2378 = !DILocalVariable(name: "entities", arg: 2, scope: !2373, file: !147, line: 1389, type: !153)
!2379 = !DILocalVariable(name: "state", arg: 3, scope: !2373, file: !147, line: 1389, type: !203)
!2380 = !DILocalVariable(name: "entity", scope: !2373, file: !147, line: 1392, type: !150)
!2381 = !DILocalVariable(name: "byte", scope: !2373, file: !147, line: 1395, type: !203)
!2382 = !DILocalVariable(name: "c", scope: !2373, file: !147, line: 1396, type: !203)
!2383 = !DILocalVariable(name: "p", scope: !2373, file: !147, line: 1399, type: !150)
!2384 = !DILocalVariable(name: "q", scope: !2373, file: !147, line: 1400, type: !150)
!2385 = !DILocalVariable(name: "i", scope: !2373, file: !147, line: 1403, type: !173)
!2386 = !DILocalVariable(name: "extent", scope: !2373, file: !147, line: 1406, type: !156)
!2387 = !DILocalVariable(name: "length", scope: !2373, file: !147, line: 1407, type: !156)
!2388 = !DILocalVariable(name: "offset", scope: !2373, file: !147, line: 1410, type: !173)
!2389 = !DILocalVariable(name: "xml", scope: !2390, file: !147, line: 1507, type: !150)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !147, line: 1505, column: 21)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !147, line: 1502, column: 23)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !147, line: 1499, column: 17)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !147, line: 1498, column: 19)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !147, line: 1492, column: 13)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !147, line: 1489, column: 15)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !147, line: 1481, column: 9)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !147, line: 1479, column: 11)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !147, line: 1439, column: 9)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !147, line: 1425, column: 3)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !147, line: 1424, column: 3)
!2401 = distinct !DILexicalBlock(scope: !2373, file: !147, line: 1424, column: 3)
!2402 = !DILocalVariable(name: "message", scope: !2403, file: !147, line: 1517, type: !150)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !147, line: 1517, column: 21)
!2404 = distinct !DILexicalBlock(scope: !2392, file: !147, line: 1516, column: 23)
!2405 = !DILocalVariable(name: "exception", scope: !2403, file: !147, line: 1517, type: !1678)
!2406 = !DILocation(line: 0, scope: !2373)
!2407 = !DILocation(line: 1391, column: 3, scope: !2373)
!2408 = !DILocation(line: 1417, column: 11, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !147, line: 1417, column: 3)
!2410 = distinct !DILexicalBlock(scope: !2373, file: !147, line: 1417, column: 3)
!2411 = !DILocation(line: 1417, column: 16, scope: !2409)
!2412 = !DILocation(line: 1417, column: 3, scope: !2410)
!2413 = !DILocation(line: 1418, column: 17, scope: !2409)
!2414 = !DILocation(line: 1418, column: 5, scope: !2409)
!2415 = !DILocation(line: 1424, column: 3, scope: !2401)
!2416 = !DILocation(line: 1420, column: 12, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2409, file: !147, line: 1419, column: 5)
!2418 = !DILocation(line: 1420, column: 15, scope: !2417)
!2419 = !DILocation(line: 1421, column: 11, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2417, file: !147, line: 1421, column: 11)
!2421 = !DILocation(line: 1421, column: 16, scope: !2420)
!2422 = !DILocation(line: 1421, column: 11, scope: !2417)
!2423 = !DILocation(line: 1422, column: 40, scope: !2420)
!2424 = !DILocation(line: 1422, column: 43, scope: !2420)
!2425 = !DILocation(line: 1422, column: 16, scope: !2420)
!2426 = !DILocation(line: 1418, column: 12, scope: !2409)
!2427 = !DILocation(line: 1422, column: 9, scope: !2420)
!2428 = distinct !{!2428, !2414, !2429, !309, !310}
!2429 = !DILocation(line: 1423, column: 5, scope: !2409)
!2430 = !DILocation(line: 1417, column: 28, scope: !2409)
!2431 = distinct !{!2431, !2412, !2432, !309, !310}
!2432 = !DILocation(line: 1423, column: 5, scope: !2410)
!2433 = !DILocation(line: 0, scope: !2401)
!2434 = !DILocation(line: 1426, column: 13, scope: !2399)
!2435 = !DILocation(line: 1426, column: 27, scope: !2399)
!2436 = !DILocation(line: 1427, column: 32, scope: !2399)
!2437 = !DILocation(line: 1427, column: 28, scope: !2399)
!2438 = !DILocation(line: 1426, column: 5, scope: !2399)
!2439 = !DILocation(line: 1428, column: 10, scope: !2399)
!2440 = distinct !{!2440, !2438, !2439, !309, !310}
!2441 = !DILocation(line: 1429, column: 14, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2399, file: !147, line: 1429, column: 9)
!2443 = !DILocation(line: 1429, column: 9, scope: !2399)
!2444 = !DILocation(line: 1439, column: 24, scope: !2398)
!2445 = !DILocation(line: 1439, column: 28, scope: !2398)
!2446 = !DILocation(line: 1439, column: 48, scope: !2398)
!2447 = !DILocation(line: 1439, column: 9, scope: !2399)
!2448 = !DILocation(line: 1444, column: 13, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !147, line: 1444, column: 13)
!2450 = distinct !DILexicalBlock(scope: !2398, file: !147, line: 1440, column: 7)
!2451 = !DILocation(line: 1444, column: 20, scope: !2449)
!2452 = !DILocation(line: 1444, column: 13, scope: !2450)
!2453 = !DILocation(line: 1445, column: 13, scope: !2449)
!2454 = !DILocation(line: 1445, column: 11, scope: !2449)
!2455 = !DILocation(line: 1447, column: 23, scope: !2449)
!2456 = !DILocation(line: 1447, column: 13, scope: !2449)
!2457 = !DILocation(line: 0, scope: !2449)
!2458 = !DILocation(line: 1448, column: 16, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2450, file: !147, line: 1448, column: 13)
!2460 = !DILocation(line: 1448, column: 22, scope: !2459)
!2461 = !DILocation(line: 1448, column: 27, scope: !2459)
!2462 = !DILocation(line: 1448, column: 26, scope: !2459)
!2463 = !DILocation(line: 1448, column: 34, scope: !2459)
!2464 = !DILocation(line: 1448, column: 13, scope: !2450)
!2465 = !DILocation(line: 1453, column: 16, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2459, file: !147, line: 1449, column: 11)
!2467 = !DILocation(line: 1454, column: 13, scope: !2466)
!2468 = distinct !{!2468, !2415, !2469, !310}
!2469 = !DILocation(line: 1532, column: 3, scope: !2401)
!2470 = !DILocation(line: 1456, column: 15, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2450, file: !147, line: 1456, column: 13)
!2472 = !DILocation(line: 1456, column: 13, scope: !2450)
!2473 = !DILocation(line: 1457, column: 20, scope: !2471)
!2474 = !DILocation(line: 1457, column: 16, scope: !2471)
!2475 = !DILocation(line: 1457, column: 19, scope: !2471)
!2476 = !DILocation(line: 1457, column: 11, scope: !2471)
!2477 = !DILocation(line: 1465, column: 16, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !147, line: 1464, column: 13)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !147, line: 1464, column: 13)
!2480 = distinct !DILexicalBlock(scope: !2471, file: !147, line: 1459, column: 11)
!2481 = !DILocation(line: 1464, column: 38, scope: !2478)
!2482 = !DILocation(line: 1464, column: 28, scope: !2478)
!2483 = !DILocation(line: 1464, column: 13, scope: !2479)
!2484 = distinct !{!2484, !2483, !2485, !309, !310}
!2485 = !DILocation(line: 1465, column: 16, scope: !2479)
!2486 = !DILocation(line: 1466, column: 17, scope: !2480)
!2487 = !DILocation(line: 1466, column: 20, scope: !2480)
!2488 = !DILocation(line: 1467, column: 32, scope: !2480)
!2489 = !DILocation(line: 1467, column: 47, scope: !2480)
!2490 = !DILocation(line: 1467, column: 42, scope: !2480)
!2491 = !DILocation(line: 1467, column: 18, scope: !2480)
!2492 = !DILocation(line: 1467, column: 17, scope: !2480)
!2493 = !DILocation(line: 0, scope: !2480)
!2494 = !DILocation(line: 1469, column: 22, scope: !2480)
!2495 = !DILocation(line: 1469, column: 13, scope: !2480)
!2496 = !DILocation(line: 1471, column: 16, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2480, file: !147, line: 1470, column: 13)
!2498 = !DILocation(line: 1472, column: 39, scope: !2497)
!2499 = !DILocation(line: 1472, column: 20, scope: !2497)
!2500 = !DILocation(line: 1472, column: 19, scope: !2497)
!2501 = distinct !{!2501, !2495, !2502, !309, !310}
!2502 = !DILocation(line: 1474, column: 13, scope: !2480)
!2503 = !DILocation(line: 0, scope: !2471)
!2504 = !DILocation(line: 1476, column: 37, scope: !2450)
!2505 = !DILocation(line: 1476, column: 52, scope: !2450)
!2506 = !DILocation(line: 1476, column: 55, scope: !2450)
!2507 = !DILocation(line: 1476, column: 16, scope: !2450)
!2508 = !DILocation(line: 1477, column: 7, scope: !2450)
!2509 = !DILocation(line: 1479, column: 18, scope: !2397)
!2510 = !DILocation(line: 1479, column: 26, scope: !2397)
!2511 = !DILocation(line: 1479, column: 45, scope: !2397)
!2512 = !DILocation(line: 1480, column: 47, scope: !2397)
!2513 = !DILocation(line: 1480, column: 56, scope: !2397)
!2514 = !DILocation(line: 1479, column: 11, scope: !2398)
!2515 = !DILocation(line: 1486, column: 19, scope: !2396)
!2516 = !DILocation(line: 1486, column: 31, scope: !2396)
!2517 = !DILocation(line: 1486, column: 49, scope: !2396)
!2518 = !DILocation(line: 1487, column: 45, scope: !2396)
!2519 = !DILocation(line: 1487, column: 19, scope: !2396)
!2520 = !DILocation(line: 1487, column: 66, scope: !2396)
!2521 = !DILocation(line: 1486, column: 11, scope: !2396)
!2522 = !DILocation(line: 1488, column: 14, scope: !2396)
!2523 = distinct !{!2523, !2521, !2524, !309, !310}
!2524 = !DILocation(line: 1488, column: 16, scope: !2396)
!2525 = !DILocation(line: 1490, column: 16, scope: !2395)
!2526 = !DILocation(line: 1490, column: 13, scope: !2395)
!2527 = !DILocation(line: 1489, column: 25, scope: !2395)
!2528 = !DILocation(line: 1496, column: 29, scope: !2394)
!2529 = !DILocation(line: 1496, column: 22, scope: !2394)
!2530 = !DILocation(line: 1497, column: 22, scope: !2394)
!2531 = !DILocation(line: 1497, column: 21, scope: !2394)
!2532 = !DILocation(line: 1498, column: 26, scope: !2393)
!2533 = !DILocation(line: 1498, column: 50, scope: !2393)
!2534 = !DILocation(line: 1498, column: 31, scope: !2393)
!2535 = !DILocation(line: 1498, column: 19, scope: !2394)
!2536 = !DILocation(line: 1500, column: 40, scope: !2392)
!2537 = !DILocation(line: 1501, column: 42, scope: !2392)
!2538 = !DILocation(line: 1501, column: 50, scope: !2392)
!2539 = !DILocation(line: 1501, column: 49, scope: !2392)
!2540 = !DILocation(line: 1502, column: 25, scope: !2391)
!2541 = !DILocation(line: 1502, column: 23, scope: !2392)
!2542 = !DILocation(line: 1503, column: 32, scope: !2391)
!2543 = !DILocation(line: 1503, column: 21, scope: !2391)
!2544 = !DILocation(line: 1509, column: 36, scope: !2390)
!2545 = !DILocation(line: 0, scope: !2390)
!2546 = !DILocation(line: 1510, column: 31, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2390, file: !147, line: 1510, column: 27)
!2548 = !DILocation(line: 1510, column: 27, scope: !2390)
!2549 = !DILocation(line: 1512, column: 34, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2547, file: !147, line: 1511, column: 25)
!2551 = !DILocation(line: 1516, column: 23, scope: !2392)
!2552 = !DILocation(line: 0, scope: !2391)
!2553 = !DILocation(line: 1516, column: 25, scope: !2404)
!2554 = !DILocation(line: 1517, column: 21, scope: !2403)
!2555 = !DILocation(line: 0, scope: !2403)
!2556 = !DILocation(line: 1519, column: 24, scope: !2392)
!2557 = !DILocation(line: 1520, column: 26, scope: !2392)
!2558 = !DILocation(line: 1520, column: 25, scope: !2392)
!2559 = !DILocation(line: 1521, column: 17, scope: !2392)
!2560 = !DILocation(line: 1522, column: 50, scope: !2394)
!2561 = !DILocation(line: 1522, column: 42, scope: !2394)
!2562 = !DILocation(line: 1522, column: 56, scope: !2394)
!2563 = !DILocation(line: 1522, column: 59, scope: !2394)
!2564 = !DILocation(line: 1522, column: 22, scope: !2394)
!2565 = !DILocation(line: 1523, column: 34, scope: !2394)
!2566 = !DILocation(line: 1523, column: 22, scope: !2394)
!2567 = !DILocation(line: 1528, column: 14, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2397, file: !147, line: 1527, column: 13)
!2569 = !DILocation(line: 1527, column: 13, scope: !2397)
!2570 = !DILocation(line: 1529, column: 16, scope: !2568)
!2571 = !DILocation(line: 1529, column: 19, scope: !2568)
!2572 = !DILocation(line: 1529, column: 11, scope: !2568)
!2573 = !DILocation(line: 1531, column: 14, scope: !2568)
!2574 = !DILocation(line: 1533, column: 13, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2373, file: !147, line: 1533, column: 7)
!2576 = !DILocation(line: 1533, column: 7, scope: !2373)
!2577 = !DILocation(line: 1538, column: 19, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !147, line: 1538, column: 7)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !147, line: 1538, column: 7)
!2580 = distinct !DILexicalBlock(scope: !2575, file: !147, line: 1534, column: 5)
!2581 = !DILocation(line: 1538, column: 24, scope: !2578)
!2582 = !DILocation(line: 1538, column: 7, scope: !2579)
!2583 = !DILocation(line: 1540, column: 21, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2578, file: !147, line: 1539, column: 7)
!2585 = !DILocation(line: 1541, column: 15, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2584, file: !147, line: 1541, column: 13)
!2587 = !DILocation(line: 1541, column: 13, scope: !2584)
!2588 = !DILocation(line: 1542, column: 42, scope: !2586)
!2589 = !DILocation(line: 1542, column: 45, scope: !2586)
!2590 = !DILocation(line: 1542, column: 58, scope: !2586)
!2591 = !DILocation(line: 1542, column: 18, scope: !2586)
!2592 = !DILocation(line: 1542, column: 11, scope: !2586)
!2593 = !DILocation(line: 1543, column: 9, scope: !2584)
!2594 = !DILocation(line: 0, scope: !2579)
!2595 = !DILocation(line: 1543, column: 17, scope: !2584)
!2596 = !DILocation(line: 1543, column: 31, scope: !2584)
!2597 = !DILocation(line: 1544, column: 14, scope: !2584)
!2598 = distinct !{!2598, !2593, !2597, !309, !310}
!2599 = !DILocation(line: 1538, column: 36, scope: !2578)
!2600 = distinct !{!2600, !2582, !2601, !309, !310}
!2601 = !DILocation(line: 1545, column: 7, scope: !2579)
!2602 = !DILocation(line: 1546, column: 10, scope: !2580)
!2603 = !DILocation(line: 1547, column: 16, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2580, file: !147, line: 1547, column: 11)
!2605 = !DILocation(line: 1547, column: 22, scope: !2604)
!2606 = !DILocation(line: 1547, column: 26, scope: !2604)
!2607 = !DILocation(line: 1547, column: 31, scope: !2604)
!2608 = !DILocation(line: 1547, column: 11, scope: !2580)
!2609 = !DILocation(line: 1548, column: 13, scope: !2604)
!2610 = !DILocation(line: 1548, column: 9, scope: !2604)
!2611 = !DILocation(line: 1550, column: 12, scope: !2373)
!2612 = !DILocation(line: 1550, column: 10, scope: !2373)
!2613 = !DILocation(line: 1550, column: 19, scope: !2373)
!2614 = !DILocation(line: 1551, column: 1, scope: !2373)
!2615 = !DILocation(line: 1550, column: 3, scope: !2373)
!2616 = !DILocation(line: 0, scope: !2278)
!2617 = !DILocation(line: 1559, column: 18, scope: !2278)
!2618 = !DILocation(line: 1560, column: 17, scope: !2290)
!2619 = !DILocation(line: 1560, column: 42, scope: !2290)
!2620 = !DILocation(line: 1560, column: 56, scope: !2290)
!2621 = !DILocation(line: 1560, column: 60, scope: !2290)
!2622 = !DILocation(line: 1560, column: 78, scope: !2290)
!2623 = !DILocation(line: 1563, column: 3, scope: !2278)
!2624 = !DILocation(line: 1563, column: 14, scope: !2278)
!2625 = !DILocation(line: 1564, column: 31, scope: !2278)
!2626 = !DILocation(line: 1564, column: 7, scope: !2278)
!2627 = !DILocation(line: 1565, column: 18, scope: !2299)
!2628 = !DILocation(line: 1565, column: 7, scope: !2299)
!2629 = !DILocation(line: 1565, column: 26, scope: !2299)
!2630 = !DILocation(line: 1565, column: 7, scope: !2278)
!2631 = !DILocation(line: 1567, column: 14, scope: !2304)
!2632 = !DILocation(line: 1568, column: 11, scope: !2304)
!2633 = !DILocation(line: 1569, column: 5, scope: !2304)
!2634 = !DILocation(line: 1573, column: 27, scope: !2308)
!2635 = !DILocation(line: 1574, column: 24, scope: !2309)
!2636 = !DILocation(line: 1576, column: 1, scope: !2278)
!2637 = distinct !DISubprogram(name: "ParseInternalDoctype", scope: !147, file: !147, line: 1697, type: !2638, scopeLine: 1699, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2640)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!165, !188, !150, !156, !1677}
!2640 = !{!2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2657, !2658, !2666, !2667, !2675, !2676, !2679, !2680, !2683}
!2641 = !DILocalVariable(name: "root", arg: 1, scope: !2637, file: !147, line: 1697, type: !188)
!2642 = !DILocalVariable(name: "xml", arg: 2, scope: !2637, file: !147, line: 1697, type: !150)
!2643 = !DILocalVariable(name: "length", arg: 3, scope: !2637, file: !147, line: 1698, type: !156)
!2644 = !DILocalVariable(name: "exception", arg: 4, scope: !2637, file: !147, line: 1698, type: !1677)
!2645 = !DILocalVariable(name: "c", scope: !2637, file: !147, line: 1701, type: !150)
!2646 = !DILocalVariable(name: "entities", scope: !2637, file: !147, line: 1702, type: !153)
!2647 = !DILocalVariable(name: "n", scope: !2637, file: !147, line: 1703, type: !150)
!2648 = !DILocalVariable(name: "predefined_entitites", scope: !2637, file: !147, line: 1704, type: !153)
!2649 = !DILocalVariable(name: "q", scope: !2637, file: !147, line: 1705, type: !151)
!2650 = !DILocalVariable(name: "t", scope: !2637, file: !147, line: 1706, type: !150)
!2651 = !DILocalVariable(name: "v", scope: !2637, file: !147, line: 1707, type: !150)
!2652 = !DILocalVariable(name: "i", scope: !2637, file: !147, line: 1710, type: !173)
!2653 = !DILocalVariable(name: "j", scope: !2637, file: !147, line: 1713, type: !173)
!2654 = !DILocalVariable(name: "message", scope: !2655, file: !147, line: 1718, type: !150)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !147, line: 1718, column: 5)
!2656 = distinct !DILexicalBlock(scope: !2637, file: !147, line: 1717, column: 7)
!2657 = !DILocalVariable(name: "exception", scope: !2655, file: !147, line: 1718, type: !1678)
!2658 = !DILocalVariable(name: "message", scope: !2659, file: !147, line: 1752, type: !150)
!2659 = distinct !DILexicalBlock(scope: !2660, file: !147, line: 1752, column: 11)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !147, line: 1751, column: 13)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !147, line: 1727, column: 7)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !147, line: 1726, column: 9)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !147, line: 1721, column: 3)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !147, line: 1720, column: 3)
!2665 = distinct !DILexicalBlock(scope: !2637, file: !147, line: 1720, column: 3)
!2666 = !DILocalVariable(name: "exception", scope: !2659, file: !147, line: 1752, type: !1678)
!2667 = !DILocalVariable(name: "message", scope: !2668, file: !147, line: 1867, type: !150)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !147, line: 1867, column: 21)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !147, line: 1866, column: 23)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !147, line: 1855, column: 17)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !147, line: 1854, column: 19)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !147, line: 1806, column: 13)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !147, line: 1782, column: 10)
!2674 = distinct !DILexicalBlock(scope: !2662, file: !147, line: 1781, column: 12)
!2675 = !DILocalVariable(name: "exception", scope: !2668, file: !147, line: 1867, type: !1678)
!2676 = !DILocalVariable(name: "message", scope: !2677, file: !147, line: 1872, type: !150)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !147, line: 1872, column: 21)
!2678 = distinct !DILexicalBlock(scope: !2670, file: !147, line: 1871, column: 23)
!2679 = !DILocalVariable(name: "exception", scope: !2677, file: !147, line: 1872, type: !1678)
!2680 = !DILocalVariable(name: "message", scope: !2681, file: !147, line: 1882, type: !150)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !147, line: 1882, column: 17)
!2682 = distinct !DILexicalBlock(scope: !2672, file: !147, line: 1881, column: 19)
!2683 = !DILocalVariable(name: "exception", scope: !2681, file: !147, line: 1882, type: !1678)
!2684 = !DILocation(line: 0, scope: !2637)
!2685 = !DILocation(line: 1716, column: 34, scope: !2637)
!2686 = !DILocation(line: 1717, column: 28, scope: !2656)
!2687 = !DILocation(line: 1717, column: 7, scope: !2637)
!2688 = !DILocation(line: 1718, column: 5, scope: !2655)
!2689 = !DILocation(line: 0, scope: !2655)
!2690 = !DILocation(line: 1719, column: 10, scope: !2637)
!2691 = !DILocation(line: 1720, column: 8, scope: !2665)
!2692 = !DILocation(line: 1720, column: 19, scope: !2665)
!2693 = !DILocation(line: 1720, column: 3, scope: !2665)
!2694 = !DILocation(line: 1720, column: 30, scope: !2664)
!2695 = !DILocation(line: 1722, column: 13, scope: !2663)
!2696 = !DILocation(line: 1722, column: 27, scope: !2663)
!2697 = !DILocation(line: 1723, column: 10, scope: !2663)
!2698 = !DILocation(line: 1722, column: 5, scope: !2663)
!2699 = distinct !{!2699, !2698, !2697, !309, !310}
!2700 = !DILocation(line: 1726, column: 9, scope: !2662)
!2701 = !DILocation(line: 1726, column: 35, scope: !2662)
!2702 = !DILocation(line: 1726, column: 9, scope: !2663)
!2703 = !DILocation(line: 1731, column: 24, scope: !2661)
!2704 = !DILocation(line: 1731, column: 14, scope: !2661)
!2705 = !DILocation(line: 1731, column: 41, scope: !2661)
!2706 = !DILocation(line: 1731, column: 12, scope: !2661)
!2707 = !DILocation(line: 1733, column: 15, scope: !2661)
!2708 = !DILocation(line: 1733, column: 14, scope: !2661)
!2709 = !DILocation(line: 1734, column: 15, scope: !2661)
!2710 = !DILocation(line: 1734, column: 14, scope: !2661)
!2711 = !DILocation(line: 1735, column: 13, scope: !2661)
!2712 = !DILocation(line: 1736, column: 25, scope: !2661)
!2713 = !DILocation(line: 1736, column: 15, scope: !2661)
!2714 = !DILocation(line: 1736, column: 14, scope: !2661)
!2715 = !DILocation(line: 1736, column: 42, scope: !2661)
!2716 = !DILocation(line: 1737, column: 12, scope: !2661)
!2717 = !DILocation(line: 1739, column: 24, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2661, file: !147, line: 1739, column: 13)
!2719 = !DILocation(line: 1744, column: 17, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2718, file: !147, line: 1740, column: 11)
!2721 = !DILocation(line: 1745, column: 13, scope: !2720)
!2722 = distinct !{!2722, !2693, !2723, !309, !310}
!2723 = !DILocation(line: 1912, column: 5, scope: !2665)
!2724 = !DILocation(line: 1738, column: 10, scope: !2661)
!2725 = !DILocation(line: 1739, column: 14, scope: !2718)
!2726 = !DILocation(line: 1747, column: 19, scope: !2661)
!2727 = !DILocation(line: 1747, column: 22, scope: !2661)
!2728 = !DILocation(line: 1747, column: 18, scope: !2661)
!2729 = !DILocation(line: 1747, column: 61, scope: !2661)
!2730 = !DILocation(line: 1748, column: 14, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2661, file: !147, line: 1748, column: 9)
!2732 = !DILocation(line: 0, scope: !2731)
!2733 = !DILocation(line: 1748, column: 19, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2731, file: !147, line: 1748, column: 9)
!2735 = !DILocation(line: 1748, column: 31, scope: !2734)
!2736 = !DILocation(line: 1748, column: 50, scope: !2734)
!2737 = !DILocation(line: 1748, column: 9, scope: !2731)
!2738 = distinct !{!2738, !2737, !2739, !309, !310}
!2739 = !DILocation(line: 1748, column: 54, scope: !2731)
!2740 = !DILocation(line: 1749, column: 68, scope: !2661)
!2741 = !DILocation(line: 1749, column: 28, scope: !2661)
!2742 = !DILocation(line: 1751, column: 22, scope: !2660)
!2743 = !DILocation(line: 1751, column: 13, scope: !2661)
!2744 = !DILocation(line: 1752, column: 11, scope: !2659)
!2745 = !DILocation(line: 0, scope: !2659)
!2746 = !DILocation(line: 1753, column: 13, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2661, file: !147, line: 1753, column: 13)
!2748 = !DILocation(line: 1753, column: 16, scope: !2747)
!2749 = !DILocation(line: 1753, column: 13, scope: !2661)
!2750 = !DILocation(line: 1756, column: 25, scope: !2747)
!2751 = !DILocation(line: 1758, column: 13, scope: !2661)
!2752 = !DILocation(line: 1759, column: 13, scope: !2661)
!2753 = !DILocation(line: 1760, column: 17, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2661, file: !147, line: 1760, column: 13)
!2755 = !DILocation(line: 1760, column: 13, scope: !2661)
!2756 = !DILocation(line: 1762, column: 17, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2754, file: !147, line: 1761, column: 11)
!2758 = !DILocation(line: 1763, column: 16, scope: !2757)
!2759 = !DILocation(line: 1764, column: 11, scope: !2757)
!2760 = !DILocation(line: 0, scope: !2661)
!2761 = !DILocation(line: 1765, column: 23, scope: !2661)
!2762 = !DILocation(line: 1765, column: 9, scope: !2661)
!2763 = !DILocation(line: 1765, column: 22, scope: !2661)
!2764 = !DILocation(line: 1766, column: 19, scope: !2661)
!2765 = !DILocation(line: 1766, column: 9, scope: !2661)
!2766 = !DILocation(line: 1766, column: 22, scope: !2661)
!2767 = !DILocation(line: 1767, column: 13, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2661, file: !147, line: 1767, column: 13)
!2769 = !DILocation(line: 1767, column: 56, scope: !2768)
!2770 = !DILocation(line: 1767, column: 13, scope: !2661)
!2771 = !DILocation(line: 1768, column: 11, scope: !2768)
!2772 = !DILocation(line: 1768, column: 22, scope: !2768)
!2773 = !DILocation(line: 1779, column: 9, scope: !2661)
!2774 = !DILocation(line: 1771, column: 31, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !147, line: 1771, column: 17)
!2776 = distinct !DILexicalBlock(scope: !2768, file: !147, line: 1770, column: 11)
!2777 = !DILocation(line: 1771, column: 17, scope: !2776)
!2778 = !DILocation(line: 1772, column: 29, scope: !2775)
!2779 = !DILocation(line: 1772, column: 28, scope: !2775)
!2780 = !DILocation(line: 1772, column: 15, scope: !2775)
!2781 = !DILocation(line: 1773, column: 20, scope: !2776)
!2782 = !DILocation(line: 1777, column: 13, scope: !2776)
!2783 = !DILocation(line: 1781, column: 12, scope: !2674)
!2784 = !DILocation(line: 1781, column: 39, scope: !2674)
!2785 = !DILocation(line: 1781, column: 12, scope: !2662)
!2786 = !DILocation(line: 1786, column: 29, scope: !2673)
!2787 = !DILocation(line: 1786, column: 19, scope: !2673)
!2788 = !DILocation(line: 1786, column: 18, scope: !2673)
!2789 = !DILocation(line: 1786, column: 46, scope: !2673)
!2790 = !DILocation(line: 1787, column: 17, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2673, file: !147, line: 1787, column: 17)
!2792 = !DILocation(line: 1787, column: 20, scope: !2791)
!2793 = !DILocation(line: 1787, column: 17, scope: !2673)
!2794 = !DILocation(line: 1789, column: 24, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2791, file: !147, line: 1788, column: 15)
!2796 = !DILocation(line: 1793, column: 17, scope: !2795)
!2797 = !DILocation(line: 1795, column: 19, scope: !2673)
!2798 = !DILocation(line: 1795, column: 18, scope: !2673)
!2799 = !DILocation(line: 1796, column: 17, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2673, file: !147, line: 1796, column: 17)
!2801 = !DILocation(line: 1796, column: 22, scope: !2800)
!2802 = !DILocation(line: 1796, column: 17, scope: !2673)
!2803 = !DILocation(line: 1798, column: 17, scope: !2673)
!2804 = !DILocation(line: 1800, column: 21, scope: !2673)
!2805 = !DILocation(line: 1800, column: 41, scope: !2673)
!2806 = !DILocation(line: 1800, column: 60, scope: !2673)
!2807 = !DILocation(line: 1802, column: 30, scope: !2673)
!2808 = !DILocation(line: 1802, column: 21, scope: !2673)
!2809 = !DILocation(line: 1802, column: 54, scope: !2673)
!2810 = !DILocation(line: 1800, column: 13, scope: !2673)
!2811 = !DILocation(line: 1803, column: 16, scope: !2673)
!2812 = distinct !{!2812, !2810, !2811, !309, !310}
!2813 = !DILocation(line: 0, scope: !2673)
!2814 = !DILocation(line: 1804, column: 13, scope: !2673)
!2815 = !DILocation(line: 1804, column: 39, scope: !2673)
!2816 = !DILocation(line: 1804, column: 29, scope: !2673)
!2817 = !DILocation(line: 1804, column: 28, scope: !2673)
!2818 = !DILocation(line: 1804, column: 56, scope: !2673)
!2819 = !DILocation(line: 1804, column: 21, scope: !2673)
!2820 = !DILocation(line: 1804, column: 69, scope: !2673)
!2821 = !DILocation(line: 1807, column: 21, scope: !2672)
!2822 = !DILocation(line: 1807, column: 20, scope: !2672)
!2823 = !DILocation(line: 1808, column: 19, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2672, file: !147, line: 1808, column: 19)
!2825 = !DILocation(line: 1808, column: 24, scope: !2824)
!2826 = !DILocation(line: 1808, column: 19, scope: !2672)
!2827 = !DILocation(line: 1809, column: 21, scope: !2824)
!2828 = !DILocation(line: 1818, column: 30, scope: !2672)
!2829 = !DILocation(line: 1818, column: 20, scope: !2672)
!2830 = !DILocation(line: 1818, column: 47, scope: !2672)
!2831 = !DILocation(line: 1818, column: 18, scope: !2672)
!2832 = !DILocation(line: 1819, column: 27, scope: !2672)
!2833 = !DILocation(line: 1819, column: 50, scope: !2672)
!2834 = !DILocation(line: 1820, column: 19, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2672, file: !147, line: 1820, column: 19)
!2836 = !DILocation(line: 1820, column: 45, scope: !2835)
!2837 = !DILocation(line: 1820, column: 19, scope: !2672)
!2838 = !DILocation(line: 1812, column: 26, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2824, file: !147, line: 1811, column: 17)
!2840 = !DILocation(line: 1816, column: 19, scope: !2839)
!2841 = !DILocation(line: 1821, column: 32, scope: !2835)
!2842 = !DILocation(line: 1821, column: 22, scope: !2835)
!2843 = !DILocation(line: 1821, column: 49, scope: !2835)
!2844 = !DILocation(line: 1821, column: 20, scope: !2835)
!2845 = !DILocation(line: 1821, column: 17, scope: !2835)
!2846 = !DILocation(line: 0, scope: !2672)
!2847 = !DILocation(line: 1822, column: 20, scope: !2672)
!2848 = !DILocation(line: 1822, column: 25, scope: !2672)
!2849 = !DILocation(line: 1822, column: 19, scope: !2672)
!2850 = !DILocation(line: 1822, column: 35, scope: !2672)
!2851 = !DILocation(line: 1823, column: 17, scope: !2672)
!2852 = !DILocation(line: 1822, column: 56, scope: !2672)
!2853 = !DILocation(line: 1824, column: 23, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2672, file: !147, line: 1824, column: 19)
!2855 = !DILocation(line: 1824, column: 19, scope: !2672)
!2856 = !DILocation(line: 1826, column: 26, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2854, file: !147, line: 1825, column: 17)
!2858 = !DILocation(line: 1830, column: 19, scope: !2857)
!2859 = !DILocation(line: 1832, column: 20, scope: !2672)
!2860 = !DILocation(line: 1832, column: 18, scope: !2672)
!2861 = !DILocation(line: 1833, column: 19, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2672, file: !147, line: 1833, column: 19)
!2863 = !DILocation(line: 1833, column: 43, scope: !2862)
!2864 = !DILocation(line: 1833, column: 19, scope: !2672)
!2865 = !DILocation(line: 1834, column: 32, scope: !2862)
!2866 = !DILocation(line: 1834, column: 22, scope: !2862)
!2867 = !DILocation(line: 1834, column: 49, scope: !2862)
!2868 = !DILocation(line: 1834, column: 20, scope: !2862)
!2869 = !DILocation(line: 1834, column: 17, scope: !2862)
!2870 = !DILocation(line: 1835, column: 19, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2672, file: !147, line: 1835, column: 19)
!2872 = !DILocation(line: 1835, column: 19, scope: !2672)
!2873 = !DILocation(line: 1837, column: 24, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2871, file: !147, line: 1836, column: 17)
!2875 = !DILocation(line: 1837, column: 54, scope: !2874)
!2876 = !DILocation(line: 1837, column: 22, scope: !2874)
!2877 = !DILocation(line: 1838, column: 23, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2874, file: !147, line: 1838, column: 23)
!2879 = !DILocation(line: 1838, column: 26, scope: !2878)
!2880 = !DILocation(line: 1838, column: 23, scope: !2874)
!2881 = !DILocation(line: 1844, column: 39, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2871, file: !147, line: 1843, column: 21)
!2883 = !DILocation(line: 1844, column: 42, scope: !2882)
!2884 = !DILocation(line: 1844, column: 27, scope: !2882)
!2885 = !DILocation(line: 1844, column: 49, scope: !2882)
!2886 = !DILocation(line: 1843, column: 21, scope: !2871)
!2887 = !DILocation(line: 1845, column: 23, scope: !2882)
!2888 = !DILocation(line: 1848, column: 28, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2882, file: !147, line: 1847, column: 19)
!2890 = !DILocation(line: 1852, column: 21, scope: !2889)
!2891 = !DILocation(line: 0, scope: !2871)
!2892 = !DILocation(line: 1854, column: 25, scope: !2671)
!2893 = !DILocation(line: 1854, column: 19, scope: !2671)
!2894 = !DILocation(line: 1854, column: 39, scope: !2671)
!2895 = !DILocation(line: 1854, column: 19, scope: !2672)
!2896 = !DILocation(line: 1859, column: 23, scope: !2670)
!2897 = !DILocation(line: 1860, column: 49, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2670, file: !147, line: 1859, column: 23)
!2899 = !DILocation(line: 1860, column: 21, scope: !2898)
!2900 = !DILocation(line: 1863, column: 49, scope: !2898)
!2901 = !DILocation(line: 0, scope: !2898)
!2902 = !DILocation(line: 1866, column: 40, scope: !2669)
!2903 = !DILocation(line: 1866, column: 23, scope: !2670)
!2904 = !DILocation(line: 1867, column: 21, scope: !2668)
!2905 = !DILocation(line: 0, scope: !2668)
!2906 = !DILocation(line: 1869, column: 49, scope: !2670)
!2907 = !DILocation(line: 1869, column: 25, scope: !2670)
!2908 = !DILocation(line: 1869, column: 19, scope: !2670)
!2909 = !DILocation(line: 1869, column: 38, scope: !2670)
!2910 = !DILocation(line: 1871, column: 29, scope: !2678)
!2911 = !DILocation(line: 1871, column: 23, scope: !2678)
!2912 = !DILocation(line: 1871, column: 43, scope: !2678)
!2913 = !DILocation(line: 1871, column: 23, scope: !2670)
!2914 = !DILocation(line: 1872, column: 21, scope: !2677)
!2915 = !DILocation(line: 0, scope: !2677)
!2916 = !DILocation(line: 1874, column: 42, scope: !2670)
!2917 = !DILocation(line: 1874, column: 25, scope: !2670)
!2918 = !DILocation(line: 1874, column: 19, scope: !2670)
!2919 = !DILocation(line: 1874, column: 41, scope: !2670)
!2920 = !DILocation(line: 1875, column: 25, scope: !2670)
!2921 = !DILocation(line: 1875, column: 19, scope: !2670)
!2922 = !DILocation(line: 1875, column: 41, scope: !2670)
!2923 = !DILocation(line: 1876, column: 25, scope: !2670)
!2924 = !DILocation(line: 1876, column: 19, scope: !2670)
!2925 = !DILocation(line: 1876, column: 40, scope: !2670)
!2926 = !DILocation(line: 1877, column: 17, scope: !2670)
!2927 = !DILocation(line: 1878, column: 20, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2672, file: !147, line: 1878, column: 15)
!2929 = !DILocation(line: 0, scope: !2928)
!2930 = !DILocation(line: 1878, column: 25, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2928, file: !147, line: 1878, column: 15)
!2932 = !DILocation(line: 1878, column: 48, scope: !2931)
!2933 = !DILocation(line: 1878, column: 67, scope: !2931)
!2934 = !DILocation(line: 1878, column: 15, scope: !2928)
!2935 = distinct !{!2935, !2934, !2936, !309, !310}
!2936 = !DILocation(line: 1878, column: 72, scope: !2928)
!2937 = !DILocation(line: 1880, column: 48, scope: !2672)
!2938 = !DILocation(line: 1879, column: 45, scope: !2672)
!2939 = !DILocation(line: 1879, column: 21, scope: !2672)
!2940 = !DILocation(line: 1879, column: 15, scope: !2672)
!2941 = !DILocation(line: 1879, column: 34, scope: !2672)
!2942 = !DILocation(line: 1881, column: 25, scope: !2682)
!2943 = !DILocation(line: 1881, column: 19, scope: !2682)
!2944 = !DILocation(line: 1881, column: 39, scope: !2682)
!2945 = !DILocation(line: 1881, column: 19, scope: !2672)
!2946 = !DILocation(line: 1882, column: 17, scope: !2681)
!2947 = !DILocation(line: 0, scope: !2681)
!2948 = !DILocation(line: 1884, column: 15, scope: !2672)
!2949 = !DILocation(line: 1884, column: 39, scope: !2672)
!2950 = !DILocation(line: 1885, column: 40, scope: !2672)
!2951 = !DILocation(line: 1885, column: 21, scope: !2672)
!2952 = !DILocation(line: 1885, column: 15, scope: !2672)
!2953 = !DILocation(line: 1885, column: 36, scope: !2672)
!2954 = !DILocation(line: 1885, column: 39, scope: !2672)
!2955 = !DILocation(line: 1886, column: 21, scope: !2672)
!2956 = !DILocation(line: 1886, column: 15, scope: !2672)
!2957 = !DILocation(line: 1886, column: 36, scope: !2672)
!2958 = !DILocation(line: 1886, column: 39, scope: !2672)
!2959 = !DILocation(line: 1887, column: 21, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2672, file: !147, line: 1887, column: 19)
!2961 = !DILocation(line: 1887, column: 19, scope: !2672)
!2962 = !DILocation(line: 1888, column: 64, scope: !2960)
!2963 = !DILocation(line: 1888, column: 73, scope: !2960)
!2964 = !DILocation(line: 1888, column: 42, scope: !2960)
!2965 = !DILocation(line: 1888, column: 23, scope: !2960)
!2966 = !DILocation(line: 1888, column: 17, scope: !2960)
!2967 = !DILocation(line: 1888, column: 41, scope: !2960)
!2968 = !DILocation(line: 1889, column: 38, scope: !2672)
!2969 = !DILocation(line: 1889, column: 21, scope: !2672)
!2970 = !DILocation(line: 1889, column: 15, scope: !2672)
!2971 = !DILocation(line: 1889, column: 37, scope: !2672)
!2972 = distinct !{!2972, !2814, !2973, !309, !310}
!2973 = !DILocation(line: 1890, column: 13, scope: !2673)
!2974 = !DILocation(line: 1893, column: 13, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2674, file: !147, line: 1893, column: 13)
!2976 = !DILocation(line: 1893, column: 37, scope: !2975)
!2977 = !DILocation(line: 1893, column: 13, scope: !2674)
!2978 = !DILocation(line: 1894, column: 25, scope: !2975)
!2979 = !DILocation(line: 1894, column: 15, scope: !2975)
!2980 = !DILocation(line: 1894, column: 11, scope: !2975)
!2981 = !DILocation(line: 1896, column: 15, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2975, file: !147, line: 1896, column: 15)
!2983 = !DILocation(line: 1896, column: 36, scope: !2982)
!2984 = !DILocation(line: 1896, column: 15, scope: !2975)
!2985 = !DILocation(line: 1898, column: 20, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2982, file: !147, line: 1897, column: 13)
!2987 = !DILocation(line: 1899, column: 19, scope: !2986)
!2988 = !DILocation(line: 1900, column: 23, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2986, file: !147, line: 1900, column: 19)
!2990 = !DILocation(line: 1900, column: 19, scope: !2986)
!2991 = !DILocation(line: 1902, column: 67, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2989, file: !147, line: 1901, column: 17)
!2993 = !DILocation(line: 1902, column: 19, scope: !2992)
!2994 = !DILocation(line: 1903, column: 22, scope: !2992)
!2995 = !DILocation(line: 1904, column: 17, scope: !2992)
!2996 = !DILocation(line: 1907, column: 23, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2982, file: !147, line: 1907, column: 18)
!2998 = !DILocation(line: 1907, column: 18, scope: !2982)
!2999 = !DILocation(line: 1908, column: 20, scope: !2997)
!3000 = !DILocation(line: 1908, column: 16, scope: !2997)
!3001 = !DILocation(line: 1910, column: 26, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2997, file: !147, line: 1910, column: 20)
!3003 = !DILocation(line: 1910, column: 30, scope: !3002)
!3004 = !DILocation(line: 1910, column: 38, scope: !3002)
!3005 = !DILocation(line: 1910, column: 48, scope: !3002)
!3006 = !{!911, !250, i64 104}
!3007 = !DILocation(line: 1910, column: 59, scope: !3002)
!3008 = !DILocation(line: 1910, column: 20, scope: !2997)
!3009 = !DILocation(line: 1915, column: 1, scope: !2637)
!3010 = distinct !DISubprogram(name: "ParseProcessingInstructions", scope: !147, file: !147, line: 1620, type: !3011, scopeLine: 1622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3013)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{null, !188, !150, !156}
!3013 = !{!3014, !3015, !3016, !3017, !3018, !3019, !3020, !3025, !3026, !3031, !3032, !3035, !3036, !3039, !3040, !3043}
!3014 = !DILocalVariable(name: "root", arg: 1, scope: !3010, file: !147, line: 1620, type: !188)
!3015 = !DILocalVariable(name: "xml", arg: 2, scope: !3010, file: !147, line: 1620, type: !150)
!3016 = !DILocalVariable(name: "length", arg: 3, scope: !3010, file: !147, line: 1621, type: !156)
!3017 = !DILocalVariable(name: "target", scope: !3010, file: !147, line: 1624, type: !150)
!3018 = !DILocalVariable(name: "i", scope: !3010, file: !147, line: 1627, type: !173)
!3019 = !DILocalVariable(name: "j", scope: !3010, file: !147, line: 1630, type: !173)
!3020 = !DILocalVariable(name: "message", scope: !3021, file: !147, line: 1653, type: !150)
!3021 = distinct !DILexicalBlock(scope: !3022, file: !147, line: 1653, column: 9)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !147, line: 1652, column: 11)
!3023 = distinct !DILexicalBlock(scope: !3024, file: !147, line: 1649, column: 5)
!3024 = distinct !DILexicalBlock(scope: !3010, file: !147, line: 1648, column: 7)
!3025 = !DILocalVariable(name: "exception", scope: !3021, file: !147, line: 1653, type: !1678)
!3026 = !DILocalVariable(name: "message", scope: !3027, file: !147, line: 1666, type: !150)
!3027 = distinct !DILexicalBlock(scope: !3028, file: !147, line: 1666, column: 9)
!3028 = distinct !DILexicalBlock(scope: !3029, file: !147, line: 1665, column: 11)
!3029 = distinct !DILexicalBlock(scope: !3030, file: !147, line: 1661, column: 5)
!3030 = distinct !DILexicalBlock(scope: !3010, file: !147, line: 1660, column: 7)
!3031 = !DILocalVariable(name: "exception", scope: !3027, file: !147, line: 1666, type: !1678)
!3032 = !DILocalVariable(name: "message", scope: !3033, file: !147, line: 1670, type: !150)
!3033 = distinct !DILexicalBlock(scope: !3034, file: !147, line: 1670, column: 9)
!3034 = distinct !DILexicalBlock(scope: !3029, file: !147, line: 1669, column: 11)
!3035 = !DILocalVariable(name: "exception", scope: !3033, file: !147, line: 1670, type: !1678)
!3036 = !DILocalVariable(name: "message", scope: !3037, file: !147, line: 1685, type: !150)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !147, line: 1685, column: 5)
!3038 = distinct !DILexicalBlock(scope: !3010, file: !147, line: 1684, column: 7)
!3039 = !DILocalVariable(name: "exception", scope: !3037, file: !147, line: 1685, type: !1678)
!3040 = !DILocalVariable(name: "message", scope: !3041, file: !147, line: 1690, type: !150)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !147, line: 1690, column: 5)
!3042 = distinct !DILexicalBlock(scope: !3010, file: !147, line: 1689, column: 7)
!3043 = !DILocalVariable(name: "exception", scope: !3041, file: !147, line: 1690, type: !1678)
!3044 = !DILocation(line: 0, scope: !3010)
!3045 = !DILocation(line: 1633, column: 3, scope: !3010)
!3046 = !DILocation(line: 1633, column: 14, scope: !3010)
!3047 = !DILocation(line: 1634, column: 8, scope: !3010)
!3048 = !DILocation(line: 1634, column: 6, scope: !3010)
!3049 = !DILocation(line: 1635, column: 7, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3010, file: !147, line: 1635, column: 7)
!3051 = !DILocation(line: 1635, column: 12, scope: !3050)
!3052 = !DILocation(line: 1635, column: 7, scope: !3010)
!3053 = !DILocation(line: 1637, column: 11, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3050, file: !147, line: 1636, column: 5)
!3055 = !DILocation(line: 1638, column: 22, scope: !3054)
!3056 = !DILocation(line: 1638, column: 12, scope: !3054)
!3057 = !DILocation(line: 1638, column: 39, scope: !3054)
!3058 = !DILocation(line: 1638, column: 10, scope: !3054)
!3059 = !DILocation(line: 1639, column: 5, scope: !3054)
!3060 = !DILocation(line: 1640, column: 7, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3010, file: !147, line: 1640, column: 7)
!3062 = !DILocation(line: 1640, column: 28, scope: !3061)
!3063 = !DILocation(line: 1640, column: 7, scope: !3010)
!3064 = !DILocation(line: 1642, column: 11, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3061, file: !147, line: 1641, column: 5)
!3066 = !DILocation(line: 1643, column: 16, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3065, file: !147, line: 1643, column: 11)
!3068 = !DILocation(line: 1643, column: 34, scope: !3067)
!3069 = !DILocation(line: 1644, column: 34, scope: !3067)
!3070 = !DILocation(line: 1644, column: 24, scope: !3067)
!3071 = !DILocation(line: 1644, column: 23, scope: !3067)
!3072 = !DILocation(line: 1644, column: 59, scope: !3067)
!3073 = !DILocation(line: 1644, column: 12, scope: !3067)
!3074 = !DILocation(line: 1644, column: 72, scope: !3067)
!3075 = !DILocation(line: 1643, column: 11, scope: !3065)
!3076 = !DILocation(line: 1645, column: 15, scope: !3067)
!3077 = !DILocation(line: 1645, column: 25, scope: !3067)
!3078 = !DILocation(line: 1645, column: 9, scope: !3067)
!3079 = !DILocation(line: 1648, column: 13, scope: !3024)
!3080 = !DILocation(line: 1648, column: 7, scope: !3024)
!3081 = !DILocation(line: 1648, column: 40, scope: !3024)
!3082 = !DILocation(line: 1648, column: 7, scope: !3010)
!3083 = !DILocation(line: 1650, column: 48, scope: !3023)
!3084 = !DILocation(line: 1650, column: 36, scope: !3023)
!3085 = !DILocation(line: 1652, column: 41, scope: !3022)
!3086 = !DILocation(line: 1652, column: 11, scope: !3023)
!3087 = !DILocation(line: 1653, column: 9, scope: !3021)
!3088 = !DILocation(line: 0, scope: !3021)
!3089 = !DILocation(line: 1654, column: 37, scope: !3023)
!3090 = !DILocation(line: 1657, column: 11, scope: !3010)
!3091 = !DILocation(line: 1657, column: 44, scope: !3010)
!3092 = !DILocation(line: 1657, column: 63, scope: !3010)
!3093 = !DILocation(line: 1657, column: 3, scope: !3010)
!3094 = !DILocation(line: 1658, column: 25, scope: !3010)
!3095 = !DILocation(line: 1658, column: 11, scope: !3010)
!3096 = !DILocation(line: 1658, column: 62, scope: !3010)
!3097 = !DILocation(line: 1659, column: 6, scope: !3010)
!3098 = distinct !{!3098, !3093, !3097, !309, !310}
!3099 = !DILocation(line: 1663, column: 50, scope: !3029)
!3100 = !DILocation(line: 1662, column: 48, scope: !3029)
!3101 = !DILocation(line: 1662, column: 36, scope: !3029)
!3102 = !DILocation(line: 1665, column: 41, scope: !3028)
!3103 = !DILocation(line: 1665, column: 11, scope: !3029)
!3104 = !DILocation(line: 1666, column: 9, scope: !3027)
!3105 = !DILocation(line: 0, scope: !3027)
!3106 = !DILocation(line: 1667, column: 50, scope: !3029)
!3107 = !DILocation(line: 1667, column: 13, scope: !3029)
!3108 = !DILocation(line: 1667, column: 7, scope: !3029)
!3109 = !DILocation(line: 1667, column: 39, scope: !3029)
!3110 = !DILocation(line: 1669, column: 17, scope: !3034)
!3111 = !DILocation(line: 1669, column: 11, scope: !3034)
!3112 = !DILocation(line: 1669, column: 44, scope: !3034)
!3113 = !DILocation(line: 1669, column: 11, scope: !3029)
!3114 = !DILocation(line: 1670, column: 9, scope: !3033)
!3115 = !DILocation(line: 0, scope: !3033)
!3116 = !DILocation(line: 1671, column: 38, scope: !3029)
!3117 = !DILocation(line: 1671, column: 7, scope: !3029)
!3118 = !DILocation(line: 1671, column: 41, scope: !3029)
!3119 = !DILocation(line: 1672, column: 43, scope: !3029)
!3120 = !DILocation(line: 1672, column: 13, scope: !3029)
!3121 = !DILocation(line: 1672, column: 7, scope: !3029)
!3122 = !DILocation(line: 1672, column: 42, scope: !3029)
!3123 = !DILocation(line: 1674, column: 15, scope: !3029)
!3124 = !DILocation(line: 1674, column: 9, scope: !3029)
!3125 = !DILocation(line: 1673, column: 7, scope: !3029)
!3126 = !DILocation(line: 1673, column: 42, scope: !3029)
!3127 = !DILocation(line: 1675, column: 13, scope: !3029)
!3128 = !DILocation(line: 1675, column: 7, scope: !3029)
!3129 = !DILocation(line: 1675, column: 41, scope: !3029)
!3130 = !DILocation(line: 1676, column: 43, scope: !3029)
!3131 = !DILocation(line: 1676, column: 13, scope: !3029)
!3132 = !DILocation(line: 1676, column: 7, scope: !3029)
!3133 = !DILocation(line: 1676, column: 42, scope: !3029)
!3134 = !DILocation(line: 1677, column: 5, scope: !3029)
!3135 = !DILocation(line: 1679, column: 3, scope: !3010)
!3136 = !DILocation(line: 1679, column: 10, scope: !3010)
!3137 = !DILocation(line: 1679, column: 46, scope: !3010)
!3138 = !DILocation(line: 1680, column: 6, scope: !3010)
!3139 = distinct !{!3139, !3135, !3138, !309, !310}
!3140 = !DILocation(line: 1682, column: 49, scope: !3010)
!3141 = !DILocation(line: 1681, column: 46, scope: !3010)
!3142 = !DILocation(line: 1681, column: 9, scope: !3010)
!3143 = !DILocation(line: 1681, column: 3, scope: !3010)
!3144 = !DILocation(line: 1681, column: 35, scope: !3010)
!3145 = !DILocation(line: 1684, column: 13, scope: !3038)
!3146 = !DILocation(line: 1684, column: 7, scope: !3038)
!3147 = !DILocation(line: 1684, column: 40, scope: !3038)
!3148 = !DILocation(line: 1684, column: 7, scope: !3010)
!3149 = !DILocation(line: 1685, column: 5, scope: !3037)
!3150 = !DILocation(line: 0, scope: !3037)
!3151 = !DILocation(line: 1687, column: 5, scope: !3010)
!3152 = !DILocation(line: 1686, column: 50, scope: !3010)
!3153 = !DILocation(line: 1686, column: 9, scope: !3010)
!3154 = !DILocation(line: 1686, column: 3, scope: !3010)
!3155 = !DILocation(line: 1686, column: 37, scope: !3010)
!3156 = !DILocation(line: 1686, column: 40, scope: !3010)
!3157 = !DILocation(line: 1689, column: 13, scope: !3042)
!3158 = !DILocation(line: 1689, column: 7, scope: !3042)
!3159 = !DILocation(line: 1689, column: 45, scope: !3042)
!3160 = !DILocation(line: 1689, column: 7, scope: !3010)
!3161 = !DILocation(line: 1690, column: 5, scope: !3041)
!3162 = !DILocation(line: 0, scope: !3041)
!3163 = !DILocation(line: 1691, column: 64, scope: !3010)
!3164 = !DILocation(line: 1691, column: 66, scope: !3010)
!3165 = !DILocation(line: 1692, column: 16, scope: !3010)
!3166 = !DILocation(line: 1692, column: 20, scope: !3010)
!3167 = !DILocation(line: 1692, column: 5, scope: !3010)
!3168 = !DILocation(line: 1691, column: 10, scope: !3010)
!3169 = !DILocation(line: 1693, column: 39, scope: !3010)
!3170 = !DILocation(line: 1693, column: 9, scope: !3010)
!3171 = !DILocation(line: 1693, column: 3, scope: !3010)
!3172 = !DILocation(line: 1693, column: 38, scope: !3010)
!3173 = !DILocation(line: 1694, column: 9, scope: !3010)
!3174 = !DILocation(line: 1694, column: 3, scope: !3010)
!3175 = !DILocation(line: 1694, column: 40, scope: !3010)
!3176 = !DILocation(line: 1695, column: 1, scope: !3010)
!3177 = !DISubprogram(name: "CopyMagickMemory", scope: !364, file: !364, line: 44, type: !3178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!172, !172, !1508, !230}
!3180 = distinct !DISubprogram(name: "PruneTagFromXMLTree", scope: !147, file: !147, line: 2363, type: !537, scopeLine: 2364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3181)
!3181 = !{!3182, !3183}
!3182 = !DILocalVariable(name: "xml_info", arg: 1, scope: !3180, file: !147, line: 2363, type: !143)
!3183 = !DILocalVariable(name: "node", scope: !3180, file: !147, line: 2366, type: !143)
!3184 = !DILocation(line: 0, scope: !3180)
!3185 = !DILocation(line: 2371, column: 17, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3180, file: !147, line: 2371, column: 7)
!3187 = !DILocation(line: 2371, column: 23, scope: !3186)
!3188 = !DILocation(line: 2371, column: 7, scope: !3180)
!3189 = !DILocation(line: 2372, column: 12, scope: !3186)
!3190 = !DILocation(line: 2372, column: 5, scope: !3186)
!3191 = !DILocation(line: 2373, column: 17, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3180, file: !147, line: 2373, column: 7)
!3193 = !DILocation(line: 2373, column: 22, scope: !3192)
!3194 = !DILocation(line: 2373, column: 7, scope: !3180)
!3195 = !DILocation(line: 2374, column: 39, scope: !3192)
!3196 = !DILocation(line: 2374, column: 21, scope: !3192)
!3197 = !DILocation(line: 2374, column: 28, scope: !3192)
!3198 = !DILocation(line: 2374, column: 5, scope: !3192)
!3199 = !DILocation(line: 2375, column: 17, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3180, file: !147, line: 2375, column: 7)
!3201 = !DILocation(line: 2375, column: 24, scope: !3200)
!3202 = !DILocation(line: 2375, column: 7, scope: !3180)
!3203 = !DILocation(line: 2377, column: 30, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3200, file: !147, line: 2376, column: 5)
!3205 = !DILocation(line: 2378, column: 16, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3204, file: !147, line: 2378, column: 11)
!3207 = !DILocation(line: 2378, column: 11, scope: !3204)
!3208 = !DILocation(line: 2379, column: 43, scope: !3206)
!3209 = !DILocation(line: 2379, column: 9, scope: !3206)
!3210 = !DILocation(line: 0, scope: !3204)
!3211 = !DILocation(line: 2382, column: 24, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3206, file: !147, line: 2381, column: 9)
!3213 = !DILocation(line: 2382, column: 32, scope: !3212)
!3214 = !DILocation(line: 2382, column: 11, scope: !3212)
!3215 = distinct !{!3215, !3214, !3216, !309, !310}
!3216 = !DILocation(line: 2383, column: 24, scope: !3212)
!3217 = !DILocation(line: 2384, column: 40, scope: !3212)
!3218 = !DILocation(line: 2384, column: 24, scope: !3212)
!3219 = !DILocation(line: 2386, column: 28, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3212, file: !147, line: 2386, column: 15)
!3221 = !DILocation(line: 2386, column: 42, scope: !3220)
!3222 = !DILocation(line: 2386, column: 15, scope: !3220)
!3223 = !DILocation(line: 2386, column: 47, scope: !3220)
!3224 = !DILocation(line: 2386, column: 15, scope: !3212)
!3225 = !DILocation(line: 0, scope: !3212)
!3226 = !DILocation(line: 2388, column: 35, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3220, file: !147, line: 2387, column: 13)
!3228 = !DILocation(line: 2388, column: 44, scope: !3227)
!3229 = !DILocation(line: 2388, column: 22, scope: !3227)
!3230 = !DILocation(line: 2388, column: 63, scope: !3227)
!3231 = !DILocation(line: 2388, column: 15, scope: !3227)
!3232 = distinct !{!3232, !3231, !3233, !309, !310}
!3233 = !DILocation(line: 2389, column: 28, scope: !3227)
!3234 = !DILocation(line: 2390, column: 33, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3227, file: !147, line: 2390, column: 19)
!3236 = !DILocation(line: 2390, column: 19, scope: !3227)
!3237 = !DILocation(line: 2393, column: 31, scope: !3235)
!3238 = !DILocation(line: 2394, column: 51, scope: !3235)
!3239 = !DILocation(line: 2393, column: 30, scope: !3235)
!3240 = !DILocation(line: 2396, column: 11, scope: !3212)
!3241 = !DILocation(line: 2396, column: 25, scope: !3212)
!3242 = !DILocation(line: 2396, column: 30, scope: !3212)
!3243 = !DILocation(line: 2396, column: 55, scope: !3212)
!3244 = distinct !{!3244, !3240, !3245, !309, !310}
!3245 = !DILocation(line: 2398, column: 24, scope: !3212)
!3246 = !DILocation(line: 2399, column: 15, scope: !3212)
!3247 = !DILocation(line: 2400, column: 36, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3212, file: !147, line: 2399, column: 15)
!3249 = !DILocation(line: 2400, column: 13, scope: !3248)
!3250 = !DILocation(line: 0, scope: !3206)
!3251 = !DILocation(line: 2403, column: 13, scope: !3180)
!3252 = !DILocation(line: 2404, column: 20, scope: !3180)
!3253 = !DILocation(line: 2406, column: 3, scope: !3180)
!3254 = distinct !DISubprogram(name: "SetXMLTreeAttribute", scope: !147, file: !147, line: 2437, type: !3255, scopeLine: 2439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3257)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!143, !143, !186, !186}
!3257 = !{!3258, !3259, !3260, !3261, !3262, !3263, !3268, !3269, !3272}
!3258 = !DILocalVariable(name: "xml_info", arg: 1, scope: !3254, file: !147, line: 2437, type: !143)
!3259 = !DILocalVariable(name: "tag", arg: 2, scope: !3254, file: !147, line: 2438, type: !186)
!3260 = !DILocalVariable(name: "value", arg: 3, scope: !3254, file: !147, line: 2438, type: !186)
!3261 = !DILocalVariable(name: "i", scope: !3254, file: !147, line: 2441, type: !173)
!3262 = !DILocalVariable(name: "j", scope: !3254, file: !147, line: 2444, type: !173)
!3263 = !DILocalVariable(name: "message", scope: !3264, file: !147, line: 2473, type: !150)
!3264 = distinct !DILexicalBlock(scope: !3265, file: !147, line: 2473, column: 9)
!3265 = distinct !DILexicalBlock(scope: !3266, file: !147, line: 2472, column: 11)
!3266 = distinct !DILexicalBlock(scope: !3267, file: !147, line: 2456, column: 5)
!3267 = distinct !DILexicalBlock(scope: !3254, file: !147, line: 2455, column: 7)
!3268 = !DILocalVariable(name: "exception", scope: !3264, file: !147, line: 2473, type: !1678)
!3269 = !DILocalVariable(name: "message", scope: !3270, file: !147, line: 2496, type: !150)
!3270 = distinct !DILexicalBlock(scope: !3271, file: !147, line: 2496, column: 5)
!3271 = distinct !DILexicalBlock(scope: !3254, file: !147, line: 2495, column: 7)
!3272 = !DILocalVariable(name: "exception", scope: !3270, file: !147, line: 2496, type: !1678)
!3273 = !DILocation(line: 0, scope: !3254)
!3274 = !DILocation(line: 2449, column: 17, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3254, file: !147, line: 2449, column: 7)
!3276 = !DILocation(line: 2449, column: 23, scope: !3275)
!3277 = !DILocation(line: 2449, column: 7, scope: !3254)
!3278 = !DILocation(line: 2450, column: 12, scope: !3275)
!3279 = !DILocation(line: 2450, column: 5, scope: !3275)
!3280 = !DILocation(line: 2452, column: 11, scope: !3254)
!3281 = !DILocation(line: 2452, column: 35, scope: !3254)
!3282 = !DILocation(line: 2452, column: 53, scope: !3254)
!3283 = !DILocation(line: 2453, column: 11, scope: !3254)
!3284 = !DILocation(line: 2453, column: 47, scope: !3254)
!3285 = !DILocation(line: 2452, column: 3, scope: !3254)
!3286 = !DILocation(line: 2454, column: 6, scope: !3254)
!3287 = distinct !{!3287, !3285, !3288, !309, !310}
!3288 = !DILocation(line: 2454, column: 8, scope: !3254)
!3289 = !DILocation(line: 2460, column: 17, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3266, file: !147, line: 2460, column: 11)
!3291 = !DILocation(line: 2460, column: 11, scope: !3266)
!3292 = !DILocation(line: 2462, column: 32, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3266, file: !147, line: 2462, column: 11)
!3294 = !DILocation(line: 2462, column: 11, scope: !3266)
!3295 = !DILocation(line: 2464, column: 43, scope: !3293)
!3296 = !DILocation(line: 2463, column: 40, scope: !3293)
!3297 = !DILocation(line: 2463, column: 29, scope: !3293)
!3298 = !DILocation(line: 2463, column: 9, scope: !3293)
!3299 = !DILocation(line: 2467, column: 42, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3293, file: !147, line: 2466, column: 9)
!3301 = !DILocation(line: 2467, column: 31, scope: !3300)
!3302 = !DILocation(line: 2469, column: 36, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3300, file: !147, line: 2469, column: 15)
!3304 = !DILocation(line: 2469, column: 15, scope: !3300)
!3305 = !DILocation(line: 2470, column: 37, scope: !3303)
!3306 = !DILocation(line: 2470, column: 23, scope: !3303)
!3307 = !DILocation(line: 2470, column: 13, scope: !3303)
!3308 = !DILocation(line: 2470, column: 36, scope: !3303)
!3309 = !DILocation(line: 2472, column: 21, scope: !3265)
!3310 = !DILocation(line: 2472, column: 32, scope: !3265)
!3311 = !DILocation(line: 2472, column: 11, scope: !3266)
!3312 = !DILocation(line: 2473, column: 9, scope: !3264)
!3313 = !DILocation(line: 0, scope: !3264)
!3314 = !DILocation(line: 2474, column: 31, scope: !3266)
!3315 = !DILocation(line: 2474, column: 17, scope: !3266)
!3316 = !DILocation(line: 2474, column: 7, scope: !3266)
!3317 = !DILocation(line: 2474, column: 30, scope: !3266)
!3318 = !DILocation(line: 2475, column: 17, scope: !3266)
!3319 = !DILocation(line: 2475, column: 29, scope: !3266)
!3320 = !DILocation(line: 2475, column: 7, scope: !3266)
!3321 = !DILocation(line: 2475, column: 32, scope: !3266)
!3322 = !DILocation(line: 2477, column: 5, scope: !3266)
!3323 = !DILocation(line: 2481, column: 8, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3254, file: !147, line: 2481, column: 3)
!3325 = !DILocation(line: 0, scope: !3324)
!3326 = !DILocation(line: 2481, column: 13, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3324, file: !147, line: 2481, column: 3)
!3328 = !DILocation(line: 2481, column: 37, scope: !3327)
!3329 = !DILocation(line: 2481, column: 56, scope: !3327)
!3330 = !DILocation(line: 2481, column: 3, scope: !3324)
!3331 = distinct !{!3331, !3330, !3332, !309, !310}
!3332 = !DILocation(line: 2481, column: 61, scope: !3324)
!3333 = !DILocation(line: 2482, column: 29, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3254, file: !147, line: 2482, column: 7)
!3335 = !DILocation(line: 2482, column: 7, scope: !3334)
!3336 = !DILocation(line: 2482, column: 33, scope: !3334)
!3337 = !DILocation(line: 2482, column: 7, scope: !3254)
!3338 = !DILocation(line: 2483, column: 31, scope: !3334)
!3339 = !DILocation(line: 2483, column: 15, scope: !3334)
!3340 = !DILocation(line: 2483, column: 5, scope: !3334)
!3341 = !DILocation(line: 2483, column: 30, scope: !3334)
!3342 = !DILocation(line: 2484, column: 13, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3254, file: !147, line: 2484, column: 7)
!3344 = !DILocation(line: 2484, column: 7, scope: !3254)
!3345 = !DILocation(line: 2486, column: 33, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3343, file: !147, line: 2485, column: 5)
!3347 = !DILocation(line: 2486, column: 17, scope: !3346)
!3348 = !DILocation(line: 2486, column: 7, scope: !3346)
!3349 = !DILocation(line: 2486, column: 32, scope: !3346)
!3350 = !DILocation(line: 2487, column: 7, scope: !3346)
!3351 = !DILocation(line: 2489, column: 17, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3254, file: !147, line: 2489, column: 7)
!3353 = !DILocation(line: 2489, column: 7, scope: !3352)
!3354 = !DILocation(line: 2489, column: 31, scope: !3352)
!3355 = !DILocation(line: 2489, column: 7, scope: !3254)
!3356 = !DILocation(line: 2490, column: 29, scope: !3352)
!3357 = !DILocation(line: 2490, column: 15, scope: !3352)
!3358 = !DILocation(line: 2490, column: 5, scope: !3352)
!3359 = !DILocation(line: 2490, column: 28, scope: !3352)
!3360 = !DILocation(line: 2491, column: 37, scope: !3254)
!3361 = !DILocation(line: 2491, column: 47, scope: !3254)
!3362 = !DILocation(line: 2491, column: 72, scope: !3254)
!3363 = !DILocation(line: 2492, column: 16, scope: !3254)
!3364 = !DILocation(line: 2492, column: 19, scope: !3254)
!3365 = !DILocation(line: 2491, column: 10, scope: !3254)
!3366 = !DILocation(line: 2493, column: 64, scope: !3254)
!3367 = !DILocation(line: 2493, column: 34, scope: !3254)
!3368 = !DILocation(line: 2493, column: 23, scope: !3254)
!3369 = !DILocation(line: 2495, column: 28, scope: !3271)
!3370 = !DILocation(line: 2495, column: 7, scope: !3254)
!3371 = !DILocation(line: 2496, column: 5, scope: !3270)
!3372 = !DILocation(line: 0, scope: !3270)
!3373 = !DILocation(line: 2498, column: 49, scope: !3254)
!3374 = !DILocation(line: 2498, column: 27, scope: !3254)
!3375 = !DILocation(line: 2498, column: 55, scope: !3254)
!3376 = !DILocation(line: 2498, column: 52, scope: !3254)
!3377 = !DILocation(line: 2499, column: 36, scope: !3254)
!3378 = !DILocation(line: 2499, column: 55, scope: !3254)
!3379 = !DILocation(line: 2499, column: 58, scope: !3254)
!3380 = !DILocation(line: 2499, column: 65, scope: !3254)
!3381 = !DILocation(line: 2498, column: 10, scope: !3254)
!3382 = !DILocation(line: 2501, column: 3, scope: !3254)
!3383 = !DILocation(line: 2502, column: 1, scope: !3254)
!3384 = !DISubprogram(name: "GetExceptionInfo", scope: !55, file: !55, line: 166, type: !3385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{null, !1677}
!3387 = !DISubprogram(name: "GetExceptionMessage", scope: !55, file: !55, line: 137, type: !3388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!150, !3390}
!3390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!3391 = !DISubprogram(name: "CatchException", scope: !55, file: !55, line: 164, type: !3385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!3392 = !DISubprogram(name: "DestroyExceptionInfo", scope: !55, file: !55, line: 148, type: !3393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!1677, !1677}
!3395 = !DISubprogram(name: "MagickCoreTerminus", scope: !3396, file: !3396, line: 147, type: !3397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!3396 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!3397 = !DISubroutineType(types: !3398)
!3398 = !{null}
!3399 = distinct !DISubprogram(name: "SetXMLTreeContent", scope: !147, file: !147, line: 2530, type: !490, scopeLine: 2532, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3400)
!3400 = !{!3401, !3402}
!3401 = !DILocalVariable(name: "xml_info", arg: 1, scope: !3399, file: !147, line: 2530, type: !143)
!3402 = !DILocalVariable(name: "content", arg: 2, scope: !3399, file: !147, line: 2531, type: !186)
!3403 = !DILocation(line: 0, scope: !3399)
!3404 = !DILocation(line: 2536, column: 17, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3399, file: !147, line: 2536, column: 7)
!3406 = !DILocation(line: 2536, column: 23, scope: !3405)
!3407 = !DILocation(line: 2536, column: 7, scope: !3399)
!3408 = !DILocation(line: 2537, column: 12, scope: !3405)
!3409 = !DILocation(line: 2537, column: 5, scope: !3405)
!3410 = !DILocation(line: 2538, column: 17, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3399, file: !147, line: 2538, column: 7)
!3412 = !DILocation(line: 2538, column: 25, scope: !3411)
!3413 = !DILocation(line: 2538, column: 7, scope: !3399)
!3414 = !DILocation(line: 2539, column: 23, scope: !3411)
!3415 = !DILocation(line: 2539, column: 22, scope: !3411)
!3416 = !DILocation(line: 2539, column: 5, scope: !3411)
!3417 = !DILocation(line: 2540, column: 30, scope: !3399)
!3418 = !DILocation(line: 2540, column: 20, scope: !3399)
!3419 = !DILocation(line: 2541, column: 3, scope: !3399)
!3420 = distinct !DISubprogram(name: "XMLTreeInfoToXML", scope: !147, file: !147, line: 2707, type: !3421, scopeLine: 2708, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3423)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!150, !143}
!3423 = !{!3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435}
!3424 = !DILocalVariable(name: "xml_info", arg: 1, scope: !3420, file: !147, line: 2707, type: !143)
!3425 = !DILocalVariable(name: "xml", scope: !3420, file: !147, line: 2710, type: !150)
!3426 = !DILocalVariable(name: "p", scope: !3420, file: !147, line: 2713, type: !150)
!3427 = !DILocalVariable(name: "q", scope: !3420, file: !147, line: 2714, type: !150)
!3428 = !DILocalVariable(name: "i", scope: !3420, file: !147, line: 2717, type: !173)
!3429 = !DILocalVariable(name: "extent", scope: !3420, file: !147, line: 2720, type: !156)
!3430 = !DILocalVariable(name: "length", scope: !3420, file: !147, line: 2721, type: !156)
!3431 = !DILocalVariable(name: "j", scope: !3420, file: !147, line: 2724, type: !173)
!3432 = !DILocalVariable(name: "k", scope: !3420, file: !147, line: 2725, type: !173)
!3433 = !DILocalVariable(name: "ordered", scope: !3420, file: !147, line: 2728, type: !143)
!3434 = !DILocalVariable(name: "parent", scope: !3420, file: !147, line: 2729, type: !143)
!3435 = !DILocalVariable(name: "root", scope: !3420, file: !147, line: 2732, type: !188)
!3436 = !DILocation(line: 0, scope: !3420)
!3437 = !DILocation(line: 2709, column: 3, scope: !3420)
!3438 = !DILocation(line: 2719, column: 3, scope: !3420)
!3439 = !DILocation(line: 2737, column: 17, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3420, file: !147, line: 2737, column: 7)
!3441 = !DILocation(line: 2737, column: 23, scope: !3440)
!3442 = !DILocation(line: 2737, column: 7, scope: !3420)
!3443 = !DILocation(line: 2738, column: 12, scope: !3440)
!3444 = !DILocation(line: 2738, column: 5, scope: !3440)
!3445 = !DILocation(line: 2739, column: 17, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3420, file: !147, line: 2739, column: 7)
!3447 = !DILocation(line: 2739, column: 21, scope: !3446)
!3448 = !DILocation(line: 2739, column: 7, scope: !3420)
!3449 = !DILocation(line: 2741, column: 7, scope: !3420)
!3450 = !DILocation(line: 2741, column: 6, scope: !3420)
!3451 = !DILocation(line: 2742, column: 9, scope: !3420)
!3452 = !DILocation(line: 2743, column: 9, scope: !3420)
!3453 = !DILocation(line: 2745, column: 3, scope: !3420)
!3454 = !DILocation(line: 2745, column: 21, scope: !3420)
!3455 = !DILocation(line: 2745, column: 28, scope: !3420)
!3456 = distinct !{!3456, !3453, !3457, !309, !310}
!3457 = !DILocation(line: 2746, column: 37, scope: !3420)
!3458 = !DILocation(line: 2749, column: 22, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3420, file: !147, line: 2748, column: 7)
!3460 = !DILocation(line: 2750, column: 14, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3420, file: !147, line: 2750, column: 7)
!3462 = !DILocation(line: 2750, column: 7, scope: !3420)
!3463 = !DILocation(line: 2751, column: 21, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3465, file: !147, line: 2751, column: 5)
!3465 = distinct !DILexicalBlock(scope: !3461, file: !147, line: 2751, column: 5)
!3466 = !DILocation(line: 2751, column: 15, scope: !3464)
!3467 = !DILocation(line: 2751, column: 48, scope: !3464)
!3468 = !DILocation(line: 2751, column: 5, scope: !3465)
!3469 = !DILocation(line: 2756, column: 7, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !147, line: 2756, column: 7)
!3471 = distinct !DILexicalBlock(scope: !3464, file: !147, line: 2752, column: 5)
!3472 = !DILocation(line: 0, scope: !3470)
!3473 = !DILocation(line: 2756, column: 51, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3470, file: !147, line: 2756, column: 7)
!3475 = !DILocation(line: 2756, column: 17, scope: !3474)
!3476 = !DILocation(line: 2756, column: 57, scope: !3474)
!3477 = distinct !{!3477, !3469, !3478, !309, !310}
!3478 = !DILocation(line: 2756, column: 61, scope: !3470)
!3479 = !DILocation(line: 2757, column: 9, scope: !3471)
!3480 = !DILocation(line: 0, scope: !3471)
!3481 = !DILocation(line: 2758, column: 19, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3483, file: !147, line: 2758, column: 7)
!3483 = distinct !DILexicalBlock(scope: !3471, file: !147, line: 2758, column: 7)
!3484 = !DILocation(line: 2758, column: 7, scope: !3483)
!3485 = !DILocation(line: 2760, column: 19, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3487, file: !147, line: 2760, column: 13)
!3487 = distinct !DILexicalBlock(scope: !3482, file: !147, line: 2759, column: 7)
!3488 = !DILocation(line: 2760, column: 13, scope: !3486)
!3489 = !DILocation(line: 2760, column: 50, scope: !3486)
!3490 = !DILocation(line: 2760, column: 54, scope: !3486)
!3491 = !DILocation(line: 2760, column: 13, scope: !3487)
!3492 = !DILocation(line: 2765, column: 11, scope: !3487)
!3493 = !DILocation(line: 2766, column: 21, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3487, file: !147, line: 2766, column: 13)
!3495 = !DILocation(line: 2766, column: 31, scope: !3494)
!3496 = !DILocation(line: 2766, column: 20, scope: !3494)
!3497 = !DILocation(line: 2766, column: 30, scope: !3494)
!3498 = !DILocation(line: 2766, column: 40, scope: !3494)
!3499 = !DILocation(line: 2766, column: 56, scope: !3494)
!3500 = !DILocation(line: 2766, column: 13, scope: !3487)
!3501 = !DILocation(line: 2768, column: 19, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3494, file: !147, line: 2767, column: 11)
!3503 = !DILocation(line: 2769, column: 26, scope: !3502)
!3504 = !DILocation(line: 2769, column: 16, scope: !3502)
!3505 = !DILocation(line: 2770, column: 21, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3502, file: !147, line: 2770, column: 17)
!3507 = !DILocation(line: 2770, column: 17, scope: !3502)
!3508 = !DILocation(line: 2773, column: 47, scope: !3487)
!3509 = !DILocation(line: 2773, column: 36, scope: !3487)
!3510 = !DILocation(line: 2773, column: 39, scope: !3487)
!3511 = !DILocation(line: 2774, column: 11, scope: !3487)
!3512 = !DILocation(line: 2774, column: 14, scope: !3487)
!3513 = !DILocation(line: 2773, column: 17, scope: !3487)
!3514 = !DILocation(line: 2773, column: 15, scope: !3487)
!3515 = !DILocation(line: 2775, column: 17, scope: !3487)
!3516 = !DILocation(line: 2775, column: 11, scope: !3487)
!3517 = !DILocation(line: 2776, column: 7, scope: !3487)
!3518 = !DILocation(line: 0, scope: !3487)
!3519 = !DILocation(line: 2758, column: 38, scope: !3482)
!3520 = distinct !{!3520, !3484, !3521, !309, !310}
!3521 = !DILocation(line: 2776, column: 7, scope: !3483)
!3522 = !DILocation(line: 2751, column: 68, scope: !3464)
!3523 = distinct !{!3523, !3468, !3524, !309, !310}
!3524 = !DILocation(line: 2777, column: 5, scope: !3465)
!3525 = !DILocation(line: 2780, column: 23, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3420, file: !147, line: 2779, column: 7)
!3527 = !DILocation(line: 2781, column: 19, scope: !3420)
!3528 = !DILocation(line: 2782, column: 20, scope: !3420)
!3529 = !DILocation(line: 2783, column: 61, scope: !3420)
!3530 = !DILocation(line: 2783, column: 7, scope: !3420)
!3531 = !DILocation(line: 2783, column: 6, scope: !3420)
!3532 = !DILocation(line: 2784, column: 19, scope: !3420)
!3533 = !DILocation(line: 2785, column: 20, scope: !3420)
!3534 = !DILocation(line: 2787, column: 21, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !147, line: 2787, column: 5)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !147, line: 2787, column: 5)
!3537 = distinct !DILexicalBlock(scope: !3420, file: !147, line: 2786, column: 7)
!3538 = !DILocation(line: 2787, column: 15, scope: !3535)
!3539 = !DILocation(line: 2787, column: 48, scope: !3535)
!3540 = !DILocation(line: 2787, column: 5, scope: !3536)
!3541 = !DILocation(line: 2792, column: 7, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3543, file: !147, line: 2792, column: 7)
!3543 = distinct !DILexicalBlock(scope: !3535, file: !147, line: 2788, column: 5)
!3544 = !DILocation(line: 0, scope: !3542)
!3545 = !DILocation(line: 2792, column: 51, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3542, file: !147, line: 2792, column: 7)
!3547 = !DILocation(line: 2792, column: 17, scope: !3546)
!3548 = !DILocation(line: 2792, column: 57, scope: !3546)
!3549 = distinct !{!3549, !3541, !3550, !309, !310}
!3550 = !DILocation(line: 2792, column: 61, scope: !3542)
!3551 = !DILocation(line: 2793, column: 9, scope: !3543)
!3552 = !DILocation(line: 0, scope: !3543)
!3553 = !DILocation(line: 2794, column: 19, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !147, line: 2794, column: 7)
!3555 = distinct !DILexicalBlock(scope: !3543, file: !147, line: 2794, column: 7)
!3556 = !DILocation(line: 2794, column: 7, scope: !3555)
!3557 = !DILocation(line: 2796, column: 19, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3559, file: !147, line: 2796, column: 13)
!3559 = distinct !DILexicalBlock(scope: !3554, file: !147, line: 2795, column: 7)
!3560 = !DILocation(line: 2796, column: 13, scope: !3558)
!3561 = !DILocation(line: 2796, column: 50, scope: !3558)
!3562 = !DILocation(line: 2796, column: 54, scope: !3558)
!3563 = !DILocation(line: 2796, column: 13, scope: !3559)
!3564 = !DILocation(line: 2801, column: 11, scope: !3559)
!3565 = !DILocation(line: 2802, column: 14, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3559, file: !147, line: 2802, column: 13)
!3567 = !DILocation(line: 2802, column: 21, scope: !3566)
!3568 = !DILocation(line: 2802, column: 31, scope: !3566)
!3569 = !DILocation(line: 2802, column: 20, scope: !3566)
!3570 = !DILocation(line: 2802, column: 30, scope: !3566)
!3571 = !DILocation(line: 2802, column: 40, scope: !3566)
!3572 = !DILocation(line: 2802, column: 58, scope: !3566)
!3573 = !DILocation(line: 2802, column: 56, scope: !3566)
!3574 = !DILocation(line: 2802, column: 13, scope: !3559)
!3575 = !DILocation(line: 2809, column: 36, scope: !3559)
!3576 = !DILocation(line: 2804, column: 19, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3566, file: !147, line: 2803, column: 11)
!3578 = !DILocation(line: 2805, column: 46, scope: !3577)
!3579 = !DILocation(line: 2805, column: 26, scope: !3577)
!3580 = !DILocation(line: 2805, column: 16, scope: !3577)
!3581 = !DILocation(line: 2806, column: 21, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3577, file: !147, line: 2806, column: 17)
!3583 = !DILocation(line: 2806, column: 17, scope: !3577)
!3584 = !DILocation(line: 2809, column: 40, scope: !3559)
!3585 = !DILocation(line: 2809, column: 47, scope: !3559)
!3586 = !DILocation(line: 2809, column: 39, scope: !3559)
!3587 = !DILocation(line: 2810, column: 11, scope: !3559)
!3588 = !DILocation(line: 2810, column: 14, scope: !3559)
!3589 = !DILocation(line: 2809, column: 17, scope: !3559)
!3590 = !DILocation(line: 2809, column: 15, scope: !3559)
!3591 = !DILocation(line: 2811, column: 17, scope: !3559)
!3592 = !DILocation(line: 2811, column: 11, scope: !3559)
!3593 = !DILocation(line: 2812, column: 7, scope: !3559)
!3594 = !DILocation(line: 0, scope: !3559)
!3595 = !DILocation(line: 2794, column: 38, scope: !3554)
!3596 = distinct !{!3596, !3556, !3597, !309, !310}
!3597 = !DILocation(line: 2812, column: 7, scope: !3555)
!3598 = !DILocation(line: 2787, column: 68, scope: !3535)
!3599 = distinct !{!3599, !3540, !3600, !309, !310}
!3600 = !DILocation(line: 2813, column: 5, scope: !3536)
!3601 = !DILocation(line: 2786, column: 7, scope: !3420)
!3602 = !DILocation(line: 2814, column: 39, scope: !3420)
!3603 = !DILocation(line: 2814, column: 43, scope: !3420)
!3604 = !DILocation(line: 2814, column: 49, scope: !3420)
!3605 = !DILocation(line: 2814, column: 19, scope: !3420)
!3606 = !DILocation(line: 2814, column: 3, scope: !3420)
!3607 = !DILocation(line: 2815, column: 1, scope: !3420)
!3608 = distinct !DISubprogram(name: "XMLTreeTagToXML", scope: !147, file: !147, line: 2601, type: !3609, scopeLine: 2603, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3611)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!150, !143, !153, !583, !583, !156, !196}
!3611 = !{!3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622}
!3612 = !DILocalVariable(name: "xml_info", arg: 1, scope: !3608, file: !147, line: 2601, type: !143)
!3613 = !DILocalVariable(name: "source", arg: 2, scope: !3608, file: !147, line: 2601, type: !153)
!3614 = !DILocalVariable(name: "length", arg: 3, scope: !3608, file: !147, line: 2601, type: !583)
!3615 = !DILocalVariable(name: "extent", arg: 4, scope: !3608, file: !147, line: 2602, type: !583)
!3616 = !DILocalVariable(name: "start", arg: 5, scope: !3608, file: !147, line: 2602, type: !156)
!3617 = !DILocalVariable(name: "attributes", arg: 6, scope: !3608, file: !147, line: 2602, type: !196)
!3618 = !DILocalVariable(name: "content", scope: !3608, file: !147, line: 2605, type: !150)
!3619 = !DILocalVariable(name: "attribute", scope: !3608, file: !147, line: 2608, type: !186)
!3620 = !DILocalVariable(name: "i", scope: !3608, file: !147, line: 2611, type: !173)
!3621 = !DILocalVariable(name: "offset", scope: !3608, file: !147, line: 2614, type: !156)
!3622 = !DILocalVariable(name: "j", scope: !3608, file: !147, line: 2617, type: !173)
!3623 = !DILocation(line: 2699, column: 13, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3608, file: !147, line: 2698, column: 7)
!3625 = !DILocation(line: 0, scope: !3608)
!3626 = !DILocation(line: 2620, column: 17, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3608, file: !147, line: 2620, column: 7)
!3628 = !DILocation(line: 2620, column: 24, scope: !3627)
!3629 = !DILocation(line: 2620, column: 7, scope: !3608)
!3630 = !DILocation(line: 2621, column: 31, scope: !3627)
!3631 = !DILocation(line: 2621, column: 5, scope: !3627)
!3632 = !DILocation(line: 2623, column: 43, scope: !3608)
!3633 = !DILocation(line: 2623, column: 71, scope: !3608)
!3634 = !DILocation(line: 2623, column: 77, scope: !3608)
!3635 = !DILocation(line: 2623, column: 11, scope: !3608)
!3636 = !DILocation(line: 2623, column: 10, scope: !3608)
!3637 = !DILocation(line: 2625, column: 8, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3608, file: !147, line: 2625, column: 7)
!3639 = !DILocation(line: 2625, column: 33, scope: !3638)
!3640 = !DILocation(line: 2625, column: 16, scope: !3638)
!3641 = !DILocation(line: 2625, column: 15, scope: !3638)
!3642 = !DILocation(line: 2625, column: 37, scope: !3638)
!3643 = !DILocation(line: 2625, column: 55, scope: !3638)
!3644 = !DILocation(line: 2625, column: 53, scope: !3638)
!3645 = !DILocation(line: 2625, column: 7, scope: !3608)
!3646 = !DILocation(line: 2627, column: 14, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3638, file: !147, line: 2626, column: 5)
!3648 = !DILocation(line: 2628, column: 24, scope: !3647)
!3649 = !DILocation(line: 2628, column: 14, scope: !3647)
!3650 = !DILocation(line: 2629, column: 19, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3647, file: !147, line: 2629, column: 11)
!3652 = !DILocation(line: 2629, column: 11, scope: !3647)
!3653 = !DILocation(line: 2632, column: 40, scope: !3608)
!3654 = !DILocation(line: 2632, column: 49, scope: !3608)
!3655 = !DILocation(line: 2632, column: 73, scope: !3608)
!3656 = !DILocation(line: 2632, column: 31, scope: !3608)
!3657 = !DILocation(line: 2632, column: 38, scope: !3608)
!3658 = !DILocation(line: 2632, column: 12, scope: !3608)
!3659 = !DILocation(line: 2632, column: 10, scope: !3608)
!3660 = !DILocation(line: 2633, column: 23, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3662, file: !147, line: 2633, column: 3)
!3662 = distinct !DILexicalBlock(scope: !3608, file: !147, line: 2633, column: 3)
!3663 = !DILocation(line: 2633, column: 13, scope: !3661)
!3664 = !DILocation(line: 2633, column: 3, scope: !3662)
!3665 = !DILocation(line: 2652, column: 11, scope: !3608)
!3666 = !DILocation(line: 2652, column: 25, scope: !3608)
!3667 = !DILocation(line: 2652, column: 44, scope: !3608)
!3668 = !DILocation(line: 2635, column: 15, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3661, file: !147, line: 2634, column: 3)
!3670 = !DILocation(line: 2636, column: 32, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3669, file: !147, line: 2636, column: 9)
!3672 = !DILocation(line: 2636, column: 44, scope: !3671)
!3673 = !DILocation(line: 2636, column: 22, scope: !3671)
!3674 = !DILocation(line: 2636, column: 19, scope: !3671)
!3675 = !DILocation(line: 2636, column: 9, scope: !3669)
!3676 = !DILocation(line: 2638, column: 10, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3669, file: !147, line: 2638, column: 9)
!3678 = !DILocation(line: 2638, column: 25, scope: !3677)
!3679 = !DILocation(line: 2638, column: 18, scope: !3677)
!3680 = !DILocation(line: 2638, column: 17, scope: !3677)
!3681 = !DILocation(line: 2638, column: 49, scope: !3677)
!3682 = !DILocation(line: 2638, column: 67, scope: !3677)
!3683 = !DILocation(line: 2638, column: 65, scope: !3677)
!3684 = !DILocation(line: 2638, column: 9, scope: !3669)
!3685 = !DILocation(line: 2645, column: 33, scope: !3669)
!3686 = !DILocation(line: 2640, column: 16, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3677, file: !147, line: 2639, column: 7)
!3688 = !DILocation(line: 2641, column: 46, scope: !3687)
!3689 = !DILocation(line: 2641, column: 26, scope: !3687)
!3690 = !DILocation(line: 2641, column: 16, scope: !3687)
!3691 = !DILocation(line: 2642, column: 21, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3687, file: !147, line: 2642, column: 13)
!3693 = !DILocation(line: 2642, column: 13, scope: !3687)
!3694 = !DILocation(line: 2645, column: 42, scope: !3669)
!3695 = !DILocation(line: 2645, column: 51, scope: !3669)
!3696 = !DILocation(line: 2646, column: 17, scope: !3669)
!3697 = !DILocation(line: 2646, column: 7, scope: !3669)
!3698 = !DILocation(line: 2645, column: 40, scope: !3669)
!3699 = !DILocation(line: 2645, column: 14, scope: !3669)
!3700 = !DILocation(line: 2645, column: 12, scope: !3669)
!3701 = !DILocation(line: 2647, column: 47, scope: !3669)
!3702 = !DILocation(line: 2647, column: 37, scope: !3669)
!3703 = !DILocalVariable(name: "source", arg: 1, scope: !3704, file: !147, line: 2567, type: !186)
!3704 = distinct !DISubprogram(name: "EncodePredefinedEntities", scope: !147, file: !147, line: 2567, type: !3705, scopeLine: 2569, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3707)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!150, !186, !173, !153, !583, !583, !165}
!3707 = !{!3703, !3708, !3709, !3710, !3711, !3712, !3713, !3714}
!3708 = !DILocalVariable(name: "offset", arg: 2, scope: !3704, file: !147, line: 2567, type: !173)
!3709 = !DILocalVariable(name: "destination", arg: 3, scope: !3704, file: !147, line: 2568, type: !153)
!3710 = !DILocalVariable(name: "length", arg: 4, scope: !3704, file: !147, line: 2568, type: !583)
!3711 = !DILocalVariable(name: "extent", arg: 5, scope: !3704, file: !147, line: 2568, type: !583)
!3712 = !DILocalVariable(name: "pedantic", arg: 6, scope: !3704, file: !147, line: 2568, type: !165)
!3713 = !DILocalVariable(name: "canonical_content", scope: !3704, file: !147, line: 2571, type: !150)
!3714 = !DILocalVariable(name: "content", scope: !3715, file: !147, line: 2578, type: !150)
!3715 = distinct !DILexicalBlock(scope: !3716, file: !147, line: 2576, column: 5)
!3716 = distinct !DILexicalBlock(scope: !3704, file: !147, line: 2573, column: 7)
!3717 = !DILocation(line: 0, scope: !3704, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 2647, column: 12, scope: !3669)
!3719 = !DILocation(line: 2574, column: 23, scope: !3716, inlinedAt: !3718)
!3720 = !DILocation(line: 2585, column: 25, scope: !3721, inlinedAt: !3718)
!3721 = distinct !DILexicalBlock(scope: !3704, file: !147, line: 2585, column: 7)
!3722 = !DILocation(line: 2585, column: 7, scope: !3704, inlinedAt: !3718)
!3723 = !DILocation(line: 2587, column: 8, scope: !3724, inlinedAt: !3718)
!3724 = distinct !DILexicalBlock(scope: !3704, file: !147, line: 2587, column: 7)
!3725 = !DILocation(line: 2587, column: 16, scope: !3724, inlinedAt: !3718)
!3726 = !DILocation(line: 2587, column: 15, scope: !3724, inlinedAt: !3718)
!3727 = !DILocation(line: 2587, column: 41, scope: !3724, inlinedAt: !3718)
!3728 = !DILocation(line: 2587, column: 59, scope: !3724, inlinedAt: !3718)
!3729 = !DILocation(line: 2587, column: 57, scope: !3724, inlinedAt: !3718)
!3730 = !DILocation(line: 2587, column: 7, scope: !3704, inlinedAt: !3718)
!3731 = !DILocation(line: 2595, column: 31, scope: !3704, inlinedAt: !3718)
!3732 = !DILocation(line: 2589, column: 14, scope: !3733, inlinedAt: !3718)
!3733 = distinct !DILexicalBlock(scope: !3724, file: !147, line: 2588, column: 5)
!3734 = !DILocation(line: 2590, column: 49, scope: !3733, inlinedAt: !3718)
!3735 = !DILocation(line: 2590, column: 29, scope: !3733, inlinedAt: !3718)
!3736 = !DILocation(line: 2590, column: 19, scope: !3733, inlinedAt: !3718)
!3737 = !DILocation(line: 2592, column: 24, scope: !3738, inlinedAt: !3718)
!3738 = distinct !DILexicalBlock(scope: !3733, file: !147, line: 2592, column: 11)
!3739 = !DILocation(line: 2592, column: 11, scope: !3733, inlinedAt: !3718)
!3740 = !DILocation(line: 2595, column: 45, scope: !3704, inlinedAt: !3718)
!3741 = !DILocation(line: 2595, column: 54, scope: !3704, inlinedAt: !3718)
!3742 = !DILocation(line: 2595, column: 43, scope: !3704, inlinedAt: !3718)
!3743 = !DILocation(line: 2595, column: 12, scope: !3704, inlinedAt: !3718)
!3744 = !DILocation(line: 2595, column: 10, scope: !3704, inlinedAt: !3718)
!3745 = !DILocation(line: 2597, column: 21, scope: !3704, inlinedAt: !3718)
!3746 = !DILocation(line: 2598, column: 3, scope: !3704, inlinedAt: !3718)
!3747 = !DILocation(line: 2649, column: 33, scope: !3669)
!3748 = !DILocation(line: 2649, column: 42, scope: !3669)
!3749 = !DILocation(line: 2649, column: 40, scope: !3669)
!3750 = !DILocation(line: 2649, column: 51, scope: !3669)
!3751 = !DILocation(line: 2649, column: 14, scope: !3669)
!3752 = !DILocation(line: 2649, column: 12, scope: !3669)
!3753 = !DILocation(line: 2650, column: 3, scope: !3669)
!3754 = !DILocation(line: 2633, column: 39, scope: !3661)
!3755 = distinct !{!3755, !3664, !3756, !309, !310}
!3756 = !DILocation(line: 2650, column: 3, scope: !3662)
!3757 = !DILocation(line: 2653, column: 18, scope: !3608)
!3758 = !DILocation(line: 2653, column: 11, scope: !3608)
!3759 = !DILocation(line: 2653, column: 50, scope: !3608)
!3760 = !DILocation(line: 2652, column: 3, scope: !3608)
!3761 = !DILocation(line: 2654, column: 6, scope: !3608)
!3762 = distinct !{!3762, !3760, !3761, !309, !310}
!3763 = !DILocation(line: 2656, column: 3, scope: !3608)
!3764 = !DILocation(line: 2657, column: 11, scope: !3608)
!3765 = !DILocation(line: 2657, column: 28, scope: !3608)
!3766 = !DILocation(line: 2659, column: 25, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3768, file: !147, line: 2659, column: 9)
!3768 = distinct !DILexicalBlock(scope: !3608, file: !147, line: 2658, column: 3)
!3769 = !DILocation(line: 2659, column: 10, scope: !3767)
!3770 = !DILocation(line: 2659, column: 29, scope: !3767)
!3771 = !DILocation(line: 2659, column: 47, scope: !3767)
!3772 = !DILocation(line: 2660, column: 10, scope: !3767)
!3773 = !DILocation(line: 2660, column: 60, scope: !3767)
!3774 = !DILocation(line: 2660, column: 57, scope: !3767)
!3775 = !DILocation(line: 2659, column: 9, scope: !3768)
!3776 = !DILocation(line: 2656, column: 11, scope: !3608)
!3777 = !DILocation(line: 0, scope: !3768)
!3778 = !DILocation(line: 2656, column: 25, scope: !3608)
!3779 = !DILocation(line: 2656, column: 44, scope: !3608)
!3780 = distinct !{!3780, !3763, !3781, !309, !310}
!3781 = !DILocation(line: 2678, column: 3, scope: !3608)
!3782 = !DILocation(line: 2665, column: 10, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3768, file: !147, line: 2665, column: 9)
!3784 = !DILocation(line: 2665, column: 25, scope: !3783)
!3785 = !DILocation(line: 2665, column: 18, scope: !3783)
!3786 = !DILocation(line: 2665, column: 17, scope: !3783)
!3787 = !DILocation(line: 2665, column: 42, scope: !3783)
!3788 = !DILocation(line: 2665, column: 60, scope: !3783)
!3789 = !DILocation(line: 2665, column: 58, scope: !3783)
!3790 = !DILocation(line: 2665, column: 9, scope: !3768)
!3791 = !DILocation(line: 2672, column: 33, scope: !3768)
!3792 = !DILocation(line: 2667, column: 16, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3783, file: !147, line: 2666, column: 7)
!3794 = !DILocation(line: 2668, column: 46, scope: !3793)
!3795 = !DILocation(line: 2668, column: 26, scope: !3793)
!3796 = !DILocation(line: 2668, column: 16, scope: !3793)
!3797 = !DILocation(line: 2669, column: 21, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3793, file: !147, line: 2669, column: 13)
!3799 = !DILocation(line: 2669, column: 13, scope: !3793)
!3800 = !DILocation(line: 2672, column: 42, scope: !3768)
!3801 = !DILocation(line: 2672, column: 51, scope: !3768)
!3802 = !DILocation(line: 2673, column: 7, scope: !3768)
!3803 = !DILocation(line: 2672, column: 40, scope: !3768)
!3804 = !DILocation(line: 2672, column: 14, scope: !3768)
!3805 = !DILocation(line: 2672, column: 12, scope: !3768)
!3806 = !DILocation(line: 2674, column: 37, scope: !3768)
!3807 = !DILocation(line: 0, scope: !3704, inlinedAt: !3808)
!3808 = distinct !DILocation(line: 2674, column: 12, scope: !3768)
!3809 = !DILocation(line: 2574, column: 23, scope: !3716, inlinedAt: !3808)
!3810 = !DILocation(line: 2585, column: 25, scope: !3721, inlinedAt: !3808)
!3811 = !DILocation(line: 2585, column: 7, scope: !3704, inlinedAt: !3808)
!3812 = !DILocation(line: 2587, column: 8, scope: !3724, inlinedAt: !3808)
!3813 = !DILocation(line: 2587, column: 16, scope: !3724, inlinedAt: !3808)
!3814 = !DILocation(line: 2587, column: 15, scope: !3724, inlinedAt: !3808)
!3815 = !DILocation(line: 2587, column: 41, scope: !3724, inlinedAt: !3808)
!3816 = !DILocation(line: 2587, column: 59, scope: !3724, inlinedAt: !3808)
!3817 = !DILocation(line: 2587, column: 57, scope: !3724, inlinedAt: !3808)
!3818 = !DILocation(line: 2587, column: 7, scope: !3704, inlinedAt: !3808)
!3819 = !DILocation(line: 2595, column: 31, scope: !3704, inlinedAt: !3808)
!3820 = !DILocation(line: 2589, column: 14, scope: !3733, inlinedAt: !3808)
!3821 = !DILocation(line: 2590, column: 49, scope: !3733, inlinedAt: !3808)
!3822 = !DILocation(line: 2590, column: 29, scope: !3733, inlinedAt: !3808)
!3823 = !DILocation(line: 2590, column: 19, scope: !3733, inlinedAt: !3808)
!3824 = !DILocation(line: 2592, column: 24, scope: !3738, inlinedAt: !3808)
!3825 = !DILocation(line: 2592, column: 11, scope: !3733, inlinedAt: !3808)
!3826 = !DILocation(line: 2595, column: 45, scope: !3704, inlinedAt: !3808)
!3827 = !DILocation(line: 2595, column: 54, scope: !3704, inlinedAt: !3808)
!3828 = !DILocation(line: 2595, column: 43, scope: !3704, inlinedAt: !3808)
!3829 = !DILocation(line: 2595, column: 12, scope: !3704, inlinedAt: !3808)
!3830 = !DILocation(line: 2595, column: 10, scope: !3704, inlinedAt: !3808)
!3831 = !DILocation(line: 2597, column: 21, scope: !3704, inlinedAt: !3808)
!3832 = !DILocation(line: 2598, column: 3, scope: !3704, inlinedAt: !3808)
!3833 = !DILocation(line: 2676, column: 33, scope: !3768)
!3834 = !DILocation(line: 2676, column: 42, scope: !3768)
!3835 = !DILocation(line: 2676, column: 40, scope: !3768)
!3836 = !DILocation(line: 2676, column: 51, scope: !3768)
!3837 = !DILocation(line: 2676, column: 14, scope: !3768)
!3838 = !DILocation(line: 2676, column: 12, scope: !3768)
!3839 = !DILocation(line: 2679, column: 31, scope: !3608)
!3840 = !DILocation(line: 2679, column: 40, scope: !3608)
!3841 = !DILocation(line: 2679, column: 38, scope: !3608)
!3842 = !DILocation(line: 2679, column: 49, scope: !3608)
!3843 = !DILocation(line: 2679, column: 68, scope: !3608)
!3844 = !DILocation(line: 2679, column: 57, scope: !3608)
!3845 = !DILocation(line: 2679, column: 12, scope: !3608)
!3846 = !DILocation(line: 2679, column: 10, scope: !3608)
!3847 = !DILocation(line: 2681, column: 17, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3608, file: !147, line: 2681, column: 7)
!3849 = !DILocation(line: 2681, column: 23, scope: !3848)
!3850 = !DILocation(line: 2681, column: 7, scope: !3608)
!3851 = !DILocation(line: 2682, column: 13, scope: !3848)
!3852 = !DILocation(line: 2682, column: 5, scope: !3848)
!3853 = !DILocation(line: 2684, column: 48, scope: !3848)
!3854 = !DILocation(line: 0, scope: !3704, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 2684, column: 13, scope: !3848)
!3856 = !DILocation(line: 2574, column: 23, scope: !3716, inlinedAt: !3855)
!3857 = !DILocation(line: 2585, column: 25, scope: !3721, inlinedAt: !3855)
!3858 = !DILocation(line: 2585, column: 7, scope: !3704, inlinedAt: !3855)
!3859 = !DILocation(line: 2587, column: 8, scope: !3724, inlinedAt: !3855)
!3860 = !DILocation(line: 2587, column: 16, scope: !3724, inlinedAt: !3855)
!3861 = !DILocation(line: 2587, column: 15, scope: !3724, inlinedAt: !3855)
!3862 = !DILocation(line: 2587, column: 41, scope: !3724, inlinedAt: !3855)
!3863 = !DILocation(line: 2587, column: 59, scope: !3724, inlinedAt: !3855)
!3864 = !DILocation(line: 2587, column: 57, scope: !3724, inlinedAt: !3855)
!3865 = !DILocation(line: 2587, column: 7, scope: !3704, inlinedAt: !3855)
!3866 = !DILocation(line: 2595, column: 31, scope: !3704, inlinedAt: !3855)
!3867 = !DILocation(line: 2589, column: 14, scope: !3733, inlinedAt: !3855)
!3868 = !DILocation(line: 2590, column: 49, scope: !3733, inlinedAt: !3855)
!3869 = !DILocation(line: 2590, column: 29, scope: !3733, inlinedAt: !3855)
!3870 = !DILocation(line: 2590, column: 19, scope: !3733, inlinedAt: !3855)
!3871 = !DILocation(line: 2592, column: 24, scope: !3738, inlinedAt: !3855)
!3872 = !DILocation(line: 2592, column: 11, scope: !3733, inlinedAt: !3855)
!3873 = !DILocation(line: 2595, column: 45, scope: !3704, inlinedAt: !3855)
!3874 = !DILocation(line: 2595, column: 54, scope: !3704, inlinedAt: !3855)
!3875 = !DILocation(line: 2595, column: 43, scope: !3704, inlinedAt: !3855)
!3876 = !DILocation(line: 2595, column: 12, scope: !3704, inlinedAt: !3855)
!3877 = !DILocation(line: 2595, column: 10, scope: !3704, inlinedAt: !3855)
!3878 = !DILocation(line: 2597, column: 21, scope: !3704, inlinedAt: !3855)
!3879 = !DILocation(line: 2598, column: 3, scope: !3704, inlinedAt: !3855)
!3880 = !DILocation(line: 2599, column: 1, scope: !3704, inlinedAt: !3855)
!3881 = !DILocation(line: 0, scope: !3848)
!3882 = !DILocation(line: 2686, column: 8, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3608, file: !147, line: 2686, column: 7)
!3884 = !DILocation(line: 2686, column: 33, scope: !3883)
!3885 = !DILocation(line: 2686, column: 16, scope: !3883)
!3886 = !DILocation(line: 2686, column: 15, scope: !3883)
!3887 = !DILocation(line: 2686, column: 37, scope: !3883)
!3888 = !DILocation(line: 2686, column: 55, scope: !3883)
!3889 = !DILocation(line: 2686, column: 53, scope: !3883)
!3890 = !DILocation(line: 2686, column: 7, scope: !3608)
!3891 = !DILocation(line: 2688, column: 14, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3883, file: !147, line: 2687, column: 5)
!3893 = !DILocation(line: 2689, column: 24, scope: !3892)
!3894 = !DILocation(line: 2689, column: 14, scope: !3892)
!3895 = !DILocation(line: 2690, column: 19, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3892, file: !147, line: 2690, column: 11)
!3897 = !DILocation(line: 2690, column: 11, scope: !3892)
!3898 = !DILocation(line: 2693, column: 18, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3608, file: !147, line: 2693, column: 7)
!3900 = !DILocation(line: 2693, column: 7, scope: !3899)
!3901 = !DILocation(line: 2693, column: 26, scope: !3899)
!3902 = !DILocation(line: 2693, column: 7, scope: !3608)
!3903 = !DILocation(line: 2694, column: 42, scope: !3899)
!3904 = !DILocation(line: 2694, column: 40, scope: !3899)
!3905 = !DILocation(line: 2694, column: 51, scope: !3899)
!3906 = !DILocation(line: 2695, column: 17, scope: !3899)
!3907 = !DILocation(line: 2694, column: 14, scope: !3899)
!3908 = !DILocation(line: 2694, column: 12, scope: !3899)
!3909 = !DILocation(line: 2694, column: 5, scope: !3899)
!3910 = !DILocation(line: 2696, column: 11, scope: !3608)
!3911 = !DILocation(line: 2696, column: 27, scope: !3608)
!3912 = !DILocation(line: 2696, column: 36, scope: !3608)
!3913 = !DILocation(line: 2696, column: 47, scope: !3608)
!3914 = !DILocation(line: 2696, column: 3, scope: !3608)
!3915 = !DILocation(line: 2697, column: 11, scope: !3608)
!3916 = distinct !{!3916, !3914, !3915, !309, !310}
!3917 = !DILocation(line: 2698, column: 17, scope: !3624)
!3918 = !DILocation(line: 2698, column: 25, scope: !3624)
!3919 = !DILocation(line: 2698, column: 7, scope: !3608)
!3920 = !DILocation(line: 0, scope: !3704, inlinedAt: !3921)
!3921 = distinct !DILocation(line: 2702, column: 13, scope: !3624)
!3922 = !DILocation(line: 2574, column: 23, scope: !3716, inlinedAt: !3921)
!3923 = !DILocation(line: 2585, column: 25, scope: !3721, inlinedAt: !3921)
!3924 = !DILocation(line: 2585, column: 7, scope: !3704, inlinedAt: !3921)
!3925 = !DILocation(line: 2587, column: 8, scope: !3724, inlinedAt: !3921)
!3926 = !DILocation(line: 2587, column: 16, scope: !3724, inlinedAt: !3921)
!3927 = !DILocation(line: 2587, column: 15, scope: !3724, inlinedAt: !3921)
!3928 = !DILocation(line: 2587, column: 41, scope: !3724, inlinedAt: !3921)
!3929 = !DILocation(line: 2587, column: 59, scope: !3724, inlinedAt: !3921)
!3930 = !DILocation(line: 2587, column: 57, scope: !3724, inlinedAt: !3921)
!3931 = !DILocation(line: 2587, column: 7, scope: !3704, inlinedAt: !3921)
!3932 = !DILocation(line: 2595, column: 31, scope: !3704, inlinedAt: !3921)
!3933 = !DILocation(line: 2589, column: 14, scope: !3733, inlinedAt: !3921)
!3934 = !DILocation(line: 2590, column: 49, scope: !3733, inlinedAt: !3921)
!3935 = !DILocation(line: 2590, column: 29, scope: !3733, inlinedAt: !3921)
!3936 = !DILocation(line: 2590, column: 19, scope: !3733, inlinedAt: !3921)
!3937 = !DILocation(line: 2592, column: 24, scope: !3738, inlinedAt: !3921)
!3938 = !DILocation(line: 2592, column: 11, scope: !3733, inlinedAt: !3921)
!3939 = !DILocation(line: 2595, column: 45, scope: !3704, inlinedAt: !3921)
!3940 = !DILocation(line: 2595, column: 54, scope: !3704, inlinedAt: !3921)
!3941 = !DILocation(line: 2595, column: 43, scope: !3704, inlinedAt: !3921)
!3942 = !DILocation(line: 2595, column: 12, scope: !3704, inlinedAt: !3921)
!3943 = !DILocation(line: 2595, column: 10, scope: !3704, inlinedAt: !3921)
!3944 = !DILocation(line: 2597, column: 21, scope: !3704, inlinedAt: !3921)
!3945 = !DILocation(line: 2598, column: 3, scope: !3704, inlinedAt: !3921)
!3946 = !DILocation(line: 2599, column: 1, scope: !3704, inlinedAt: !3921)
!3947 = !DILocation(line: 2705, column: 1, scope: !3608)
!3948 = !DISubprogram(name: "open", scope: !3949, file: !3949, line: 168, type: !3950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!3949 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "270596b098606fab5166d0114edf8288")
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!203, !186, !203, null}
!3952 = !DISubprogram(name: "CopyMagickString", scope: !372, file: !372, line: 78, type: !3953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !367)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!156, !150, !186, !230}
!3955 = distinct !DISubprogram(name: "ValidateEntities", scope: !147, file: !147, line: 1594, type: !3956, scopeLine: 1595, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3958)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!165, !150, !150, !153}
!3958 = !{!3959, !3960, !3961, !3962}
!3959 = !DILocalVariable(name: "tag", arg: 1, scope: !3955, file: !147, line: 1594, type: !150)
!3960 = !DILocalVariable(name: "xml", arg: 2, scope: !3955, file: !147, line: 1594, type: !150)
!3961 = !DILocalVariable(name: "entities", arg: 3, scope: !3955, file: !147, line: 1594, type: !153)
!3962 = !DILocalVariable(name: "i", scope: !3955, file: !147, line: 1597, type: !173)
!3963 = !DILocation(line: 0, scope: !3955)
!3964 = !DILocation(line: 1602, column: 3, scope: !3955)
!3965 = !DILocation(line: 1604, column: 13, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3967, file: !147, line: 1603, column: 3)
!3967 = distinct !DILexicalBlock(scope: !3968, file: !147, line: 1602, column: 3)
!3968 = distinct !DILexicalBlock(scope: !3955, file: !147, line: 1602, column: 3)
!3969 = !DILocation(line: 1604, column: 27, scope: !3966)
!3970 = !DILocation(line: 1605, column: 10, scope: !3966)
!3971 = !DILocation(line: 1604, column: 5, scope: !3966)
!3972 = distinct !{!3972, !3973, !3974, !310}
!3973 = !DILocation(line: 1602, column: 3, scope: !3968)
!3974 = !DILocation(line: 1617, column: 3, scope: !3968)
!3975 = !DILocation(line: 1608, column: 20, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3966, file: !147, line: 1608, column: 9)
!3977 = !DILocation(line: 1608, column: 27, scope: !3976)
!3978 = !DILocation(line: 1608, column: 9, scope: !3976)
!3979 = !DILocation(line: 1608, column: 40, scope: !3976)
!3980 = !DILocation(line: 1608, column: 9, scope: !3966)
!3981 = !DILocation(line: 1611, column: 13, scope: !3966)
!3982 = !DILocation(line: 1611, column: 25, scope: !3966)
!3983 = !DILocation(line: 1611, column: 43, scope: !3966)
!3984 = !DILocation(line: 1612, column: 39, scope: !3966)
!3985 = !DILocation(line: 1612, column: 13, scope: !3966)
!3986 = !DILocation(line: 1612, column: 60, scope: !3966)
!3987 = !DILocation(line: 1611, column: 5, scope: !3966)
!3988 = !DILocation(line: 1613, column: 8, scope: !3966)
!3989 = !DILocation(line: 1615, column: 41, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3966, file: !147, line: 1614, column: 9)
!3991 = !DILocation(line: 1615, column: 31, scope: !3990)
!3992 = !DILocation(line: 1615, column: 10, scope: !3990)
!3993 = !DILocation(line: 1615, column: 55, scope: !3990)
!3994 = !DILocation(line: 1614, column: 9, scope: !3966)
!3995 = !DILocation(line: 0, scope: !3966)
!3996 = !DILocation(line: 1618, column: 1, scope: !3955)
!3997 = !DILocation(line: 0, scope: !3704)
!3998 = !DILocation(line: 2573, column: 14, scope: !3716)
!3999 = !DILocation(line: 2573, column: 7, scope: !3704)
!4000 = !DILocation(line: 2574, column: 23, scope: !3716)
!4001 = !DILocation(line: 2574, column: 5, scope: !3716)
!4002 = !DILocation(line: 2580, column: 15, scope: !3715)
!4003 = !DILocation(line: 0, scope: !3715)
!4004 = !DILocation(line: 2581, column: 7, scope: !3715)
!4005 = !DILocation(line: 2581, column: 22, scope: !3715)
!4006 = !DILocation(line: 2582, column: 25, scope: !3715)
!4007 = !DILocation(line: 2583, column: 15, scope: !3715)
!4008 = !DILocation(line: 0, scope: !3716)
!4009 = !DILocation(line: 2585, column: 25, scope: !3721)
!4010 = !DILocation(line: 2585, column: 7, scope: !3704)
!4011 = !DILocation(line: 2587, column: 8, scope: !3724)
!4012 = !DILocation(line: 2587, column: 16, scope: !3724)
!4013 = !DILocation(line: 2587, column: 15, scope: !3724)
!4014 = !DILocation(line: 2587, column: 41, scope: !3724)
!4015 = !DILocation(line: 2587, column: 59, scope: !3724)
!4016 = !DILocation(line: 2587, column: 57, scope: !3724)
!4017 = !DILocation(line: 2587, column: 7, scope: !3704)
!4018 = !DILocation(line: 2595, column: 31, scope: !3704)
!4019 = !DILocation(line: 2589, column: 14, scope: !3733)
!4020 = !DILocation(line: 2590, column: 49, scope: !3733)
!4021 = !DILocation(line: 2590, column: 29, scope: !3733)
!4022 = !DILocation(line: 2590, column: 19, scope: !3733)
!4023 = !DILocation(line: 2592, column: 24, scope: !3738)
!4024 = !DILocation(line: 2592, column: 11, scope: !3733)
!4025 = !DILocation(line: 2595, column: 45, scope: !3704)
!4026 = !DILocation(line: 2595, column: 54, scope: !3704)
!4027 = !DILocation(line: 2595, column: 43, scope: !3704)
!4028 = !DILocation(line: 2595, column: 12, scope: !3704)
!4029 = !DILocation(line: 2595, column: 10, scope: !3704)
!4030 = !DILocation(line: 2597, column: 21, scope: !3704)
!4031 = !DILocation(line: 2598, column: 3, scope: !3704)
!4032 = !DILocation(line: 2599, column: 1, scope: !3704)
