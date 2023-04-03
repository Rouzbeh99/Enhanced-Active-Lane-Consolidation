; ModuleID = 'rdswitch.c'
source_filename = "rdswitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't open table file %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Too many tables in file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Invalid table data in file %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Non-numeric data in file %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Can't open scan definition file %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Too many scans defined in file %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Too many components in one scan in file %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Invalid scan entry format in file %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"JPEG quantization tables are numbered 0..%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"%d%c%d%c\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"JPEG sampling factors must be 1..4\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @read_quant_tables(ptr noundef %cinfo, ptr noundef %filename, i32 noundef %scale_factor, i32 noundef %force_baseline) local_unnamed_addr #0 {
entry:
  %termchar = alloca i32, align 4
  %val = alloca i64, align 8
  %table = alloca [64 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %termchar) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %table) #8
  %call = tail call ptr @fopen(ptr noundef %filename, ptr noundef nonnull @.str)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %call259 = call fastcc i32 @read_text_integer(ptr noundef nonnull %call, ptr noundef nonnull %val, ptr noundef nonnull %termchar)
  %tobool.not60 = icmp eq i32 %call259, 0
  br i1 %tobool.not60, label %while.end, label %while.body

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %filename) #9
  br label %cleanup

while.body:                                       ; preds = %while.cond.preheader, %for.end
  %tblno.061 = phi i32 [ %inc18, %for.end ], [ 0, %while.cond.preheader ]
  %exitcond69 = icmp eq i32 %tblno.061, 4
  br i1 %exitcond69, label %if.then4, label %if.end7

if.then4:                                         ; preds = %while.body
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef %filename) #9
  %call6 = call i32 @fclose(ptr noundef nonnull %call)
  br label %cleanup

if.end7:                                          ; preds = %while.body
  %2 = load i64, ptr %val, align 8, !tbaa !9
  %conv = trunc i64 %2 to i32
  store i32 %conv, ptr %table, align 16, !tbaa !11
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.end7, %if.end15
  %indvars.iv = phi i64 [ 1, %if.end7 ], [ %indvars.iv.next, %if.end15 ]
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.preheader, %do.cond.i
  %call.i.i = call i32 @getc(ptr noundef nonnull %call) #8
  %cmp.i.i = icmp eq i32 %call.i.i, 35
  br i1 %cmp.i.i, label %do.body.i.i, label %text_getc.exit.i

do.body.i.i:                                      ; preds = %do.body.i, %do.body.i.i
  %call1.i.i = call i32 @getc(ptr noundef nonnull %call) #8
  switch i32 %call1.i.i, label %do.body.i.i [
    i32 -1, label %text_getc.exit.i
    i32 10, label %text_getc.exit.i
  ]

text_getc.exit.i:                                 ; preds = %do.body.i.i, %do.body.i.i, %do.body.i
  %ch.0.i.i = phi i32 [ %call.i.i, %do.body.i ], [ %call1.i.i, %do.body.i.i ], [ %call1.i.i, %do.body.i.i ]
  %cmp.i = icmp eq i32 %ch.0.i.i, -1
  br i1 %cmp.i, label %if.then12, label %do.cond.i

do.cond.i:                                        ; preds = %text_getc.exit.i
  %call1.i = tail call ptr @__ctype_b_loc() #10
  %3 = load ptr, ptr %call1.i, align 8, !tbaa !5
  %idxprom.i = sext i32 %ch.0.i.i to i64
  %arrayidx.i = getelementptr inbounds i16, ptr %3, i64 %idxprom.i
  %4 = load i16, ptr %arrayidx.i, align 2, !tbaa !13
  %5 = and i16 %4, 8192
  %tobool.not.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i, label %do.end.i, label %do.body.i, !llvm.loop !15

do.end.i:                                         ; preds = %do.cond.i
  %6 = and i16 %4, 2048
  %tobool7.not.i = icmp eq i16 %6, 0
  br i1 %tobool7.not.i, label %if.then12, label %if.end9.i

if.end9.i:                                        ; preds = %do.end.i
  %sub.i = add nsw i32 %ch.0.i.i, -48
  %conv10.i = sext i32 %sub.i to i64
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end21.i, %if.end9.i
  %val.0.i = phi i64 [ %conv10.i, %if.end9.i ], [ %add.i, %if.end21.i ]
  %call.i38.i = call i32 @getc(ptr noundef nonnull %call) #8
  %cmp.i39.i = icmp eq i32 %call.i38.i, 35
  br i1 %cmp.i39.i, label %do.body.i41.i, label %text_getc.exit43.i

do.body.i41.i:                                    ; preds = %while.cond.i, %do.body.i41.i
  %call1.i40.i = call i32 @getc(ptr noundef nonnull %call) #8
  switch i32 %call1.i40.i, label %do.body.i41.i [
    i32 -1, label %text_getc.exit43.i
    i32 10, label %text_getc.exit43.i
  ]

text_getc.exit43.i:                               ; preds = %do.body.i41.i, %do.body.i41.i, %while.cond.i
  %ch.0.i42.i = phi i32 [ %call.i38.i, %while.cond.i ], [ %call1.i40.i, %do.body.i41.i ], [ %call1.i40.i, %do.body.i41.i ]
  %cmp12.not.i = icmp eq i32 %ch.0.i42.i, -1
  br i1 %cmp12.not.i, label %if.end15, label %while.body.i

while.body.i:                                     ; preds = %text_getc.exit43.i
  %7 = load ptr, ptr %call1.i, align 8, !tbaa !5
  %idxprom15.i = sext i32 %ch.0.i42.i to i64
  %arrayidx16.i = getelementptr inbounds i16, ptr %7, i64 %idxprom15.i
  %8 = load i16, ptr %arrayidx16.i, align 2, !tbaa !13
  %9 = and i16 %8, 2048
  %tobool19.not.i = icmp eq i16 %9, 0
  br i1 %tobool19.not.i, label %if.end15, label %if.end21.i

if.end21.i:                                       ; preds = %while.body.i
  %mul.i = mul nsw i64 %val.0.i, 10
  %sub22.i = add nsw i32 %ch.0.i42.i, -48
  %conv23.i = sext i32 %sub22.i to i64
  %add.i = add nsw i64 %mul.i, %conv23.i
  br label %while.cond.i, !llvm.loop !17

if.then12:                                        ; preds = %do.end.i, %text_getc.exit.i
  %10 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef %filename) #9
  %call14 = call i32 @fclose(ptr noundef nonnull %call)
  br label %cleanup

if.end15:                                         ; preds = %while.body.i, %text_getc.exit43.i
  %conv16 = trunc i64 %val.0.i to i32
  %arrayidx17 = getelementptr inbounds [64 x i32], ptr %table, i64 0, i64 %indvars.iv
  store i32 %conv16, ptr %arrayidx17, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %for.end, label %do.body.i.preheader, !llvm.loop !18

for.end:                                          ; preds = %if.end15
  store i64 %val.0.i, ptr %val, align 8, !tbaa !9
  store i32 %ch.0.i42.i, ptr %termchar, align 4, !tbaa !11
  call void @jpeg_add_quant_table(ptr noundef %cinfo, i32 noundef %tblno.061, ptr noundef nonnull %table, i32 noundef %scale_factor, i32 noundef %force_baseline) #8
  %inc18 = add nuw nsw i32 %tblno.061, 1
  %call2 = call fastcc i32 @read_text_integer(ptr noundef nonnull %call, ptr noundef nonnull %val, ptr noundef nonnull %termchar)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !19

while.end:                                        ; preds = %for.end, %while.cond.preheader
  %11 = load i32, ptr %termchar, align 4, !tbaa !11
  %cmp19.not = icmp eq i32 %11, -1
  br i1 %cmp19.not, label %if.end24, label %if.then21

if.then21:                                        ; preds = %while.end
  %12 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.4, ptr noundef %filename) #9
  %call23 = call i32 @fclose(ptr noundef nonnull %call)
  br label %cleanup

if.end24:                                         ; preds = %while.end
  %call25 = call i32 @fclose(ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then21, %if.then12, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then12 ], [ 0, %if.then21 ], [ 1, %if.end24 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %table) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %termchar) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc i32 @read_text_integer(ptr nocapture noundef %file, ptr nocapture noundef writeonly %result, ptr nocapture noundef writeonly %termchar) unnamed_addr #3 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %call.i = tail call i32 @getc(ptr noundef %file) #8
  %cmp.i = icmp eq i32 %call.i, 35
  br i1 %cmp.i, label %do.body.i, label %text_getc.exit

do.body.i:                                        ; preds = %do.body, %do.body.i
  %call1.i = tail call i32 @getc(ptr noundef %file) #8
  switch i32 %call1.i, label %do.body.i [
    i32 -1, label %text_getc.exit
    i32 10, label %text_getc.exit
  ]

text_getc.exit:                                   ; preds = %do.body.i, %do.body.i, %do.body
  %ch.0.i = phi i32 [ %call.i, %do.body ], [ %call1.i, %do.body.i ], [ %call1.i, %do.body.i ]
  %cmp = icmp eq i32 %ch.0.i, -1
  br i1 %cmp, label %cleanup, label %do.cond

do.cond:                                          ; preds = %text_getc.exit
  %call1 = tail call ptr @__ctype_b_loc() #10
  %0 = load ptr, ptr %call1, align 8, !tbaa !5
  %idxprom = sext i32 %ch.0.i to i64
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 %idxprom
  %1 = load i16, ptr %arrayidx, align 2, !tbaa !13
  %2 = and i16 %1, 8192
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %do.end, label %do.body, !llvm.loop !15

do.end:                                           ; preds = %do.cond
  %3 = and i16 %1, 2048
  %tobool7.not = icmp eq i16 %3, 0
  br i1 %tobool7.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %do.end
  %sub = add nsw i32 %ch.0.i, -48
  %conv10 = sext i32 %sub to i64
  br label %while.cond

while.cond:                                       ; preds = %if.end21, %if.end9
  %val.0 = phi i64 [ %conv10, %if.end9 ], [ %add, %if.end21 ]
  %call.i38 = tail call i32 @getc(ptr noundef %file) #8
  %cmp.i39 = icmp eq i32 %call.i38, 35
  br i1 %cmp.i39, label %do.body.i41, label %text_getc.exit43

do.body.i41:                                      ; preds = %while.cond, %do.body.i41
  %call1.i40 = tail call i32 @getc(ptr noundef %file) #8
  switch i32 %call1.i40, label %do.body.i41 [
    i32 -1, label %text_getc.exit43
    i32 10, label %text_getc.exit43
  ]

text_getc.exit43:                                 ; preds = %do.body.i41, %do.body.i41, %while.cond
  %ch.0.i42 = phi i32 [ %call.i38, %while.cond ], [ %call1.i40, %do.body.i41 ], [ %call1.i40, %do.body.i41 ]
  %cmp12.not = icmp eq i32 %ch.0.i42, -1
  br i1 %cmp12.not, label %while.end, label %while.body

while.body:                                       ; preds = %text_getc.exit43
  %4 = load ptr, ptr %call1, align 8, !tbaa !5
  %idxprom15 = sext i32 %ch.0.i42 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %4, i64 %idxprom15
  %5 = load i16, ptr %arrayidx16, align 2, !tbaa !13
  %6 = and i16 %5, 2048
  %tobool19.not = icmp eq i16 %6, 0
  br i1 %tobool19.not, label %while.end, label %if.end21

if.end21:                                         ; preds = %while.body
  %mul = mul nsw i64 %val.0, 10
  %sub22 = add nsw i32 %ch.0.i42, -48
  %conv23 = sext i32 %sub22 to i64
  %add = add nsw i64 %mul, %conv23
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.body, %text_getc.exit43
  store i64 %val.0, ptr %result, align 8, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %text_getc.exit, %do.end, %while.end
  %ch.0.i42.lcssa.sink = phi i32 [ %ch.0.i42, %while.end ], [ %ch.0.i, %do.end ], [ -1, %text_getc.exit ]
  %retval.0 = phi i32 [ 1, %while.end ], [ 0, %do.end ], [ 0, %text_getc.exit ]
  store i32 %ch.0.i42.lcssa.sink, ptr %termchar, align 4, !tbaa !11
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

declare void @jpeg_add_quant_table(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @read_scan_script(ptr noundef %cinfo, ptr noundef %filename) local_unnamed_addr #0 {
entry:
  %termchar = alloca i32, align 4
  %val = alloca i64, align 8
  %scans = alloca [100 x %struct.jpeg_scan_info], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %termchar) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #8
  call void @llvm.lifetime.start.p0(i64 3600, ptr nonnull %scans) #8
  %call = tail call ptr @fopen(ptr noundef %filename, ptr noundef nonnull @.str)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %call2187 = call fastcc i32 @read_scan_integer(ptr noundef nonnull %call, ptr noundef nonnull %val, ptr noundef nonnull %termchar)
  %tobool.not188 = icmp eq i32 %call2187, 0
  br i1 %tobool.not188, label %while.end70.thread, label %while.body

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %filename) #9
  br label %cleanup

while.body:                                       ; preds = %while.cond.preheader, %if.end68
  %scanptr.0190 = phi ptr [ %incdec.ptr, %if.end68 ], [ %scans, %while.cond.preheader ]
  %scanno.0189 = phi i32 [ %inc69, %if.end68 ], [ 0, %while.cond.preheader ]
  %exitcond212 = icmp eq i32 %scanno.0189, 100
  br i1 %exitcond212, label %if.then4, label %if.end7

if.then4:                                         ; preds = %while.body
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef %filename) #9
  %call6 = tail call i32 @fclose(ptr noundef nonnull %call)
  br label %cleanup

if.end7:                                          ; preds = %while.body
  %2 = load i64, ptr %val, align 8, !tbaa !9
  %conv = trunc i64 %2 to i32
  %component_index = getelementptr inbounds %struct.jpeg_scan_info, ptr %scanptr.0190, i64 0, i32 1
  store i32 %conv, ptr %component_index, align 4, !tbaa !11
  %termchar.promoted = load i32, ptr %termchar, align 4, !tbaa !11
  %cmp9180 = icmp eq i32 %termchar.promoted, 32
  br i1 %cmp9180, label %while.body11, label %while.end

while.body11:                                     ; preds = %if.end7, %if.end21
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end21 ], [ 1, %if.end7 ]
  %val.0.i.lcssa176181 = phi i64 [ %val.0.i, %if.end21 ], [ %2, %if.end7 ]
  %exitcond = icmp eq i64 %indvars.iv, 4
  br i1 %exitcond, label %if.then14, label %do.body.i

if.then14:                                        ; preds = %while.body11
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.7, ptr noundef %filename) #9
  %call16 = tail call i32 @fclose(ptr noundef nonnull %call)
  br label %cleanup

do.body.i:                                        ; preds = %while.body11, %do.cond.i
  %call.i.i135 = tail call i32 @getc(ptr noundef nonnull %call) #8
  %cmp.i.i136 = icmp eq i32 %call.i.i135, 35
  br i1 %cmp.i.i136, label %do.body.i.i138, label %text_getc.exit.i140

do.body.i.i138:                                   ; preds = %do.body.i, %do.body.i.i138
  %call1.i.i137 = tail call i32 @getc(ptr noundef nonnull %call) #8
  switch i32 %call1.i.i137, label %do.body.i.i138 [
    i32 -1, label %text_getc.exit.i140
    i32 10, label %text_getc.exit.i140
  ]

text_getc.exit.i140:                              ; preds = %do.body.i.i138, %do.body.i.i138, %do.body.i
  %ch.0.i.i139 = phi i32 [ %call.i.i135, %do.body.i ], [ %call1.i.i137, %do.body.i.i138 ], [ %call1.i.i137, %do.body.i.i138 ]
  %cmp.i = icmp eq i32 %ch.0.i.i139, -1
  br i1 %cmp.i, label %read_text_integer.exit.thread, label %do.cond.i

do.cond.i:                                        ; preds = %text_getc.exit.i140
  %call1.i = tail call ptr @__ctype_b_loc() #10
  %4 = load ptr, ptr %call1.i, align 8, !tbaa !5
  %idxprom.i141 = sext i32 %ch.0.i.i139 to i64
  %arrayidx.i142 = getelementptr inbounds i16, ptr %4, i64 %idxprom.i141
  %5 = load i16, ptr %arrayidx.i142, align 2, !tbaa !13
  %6 = and i16 %5, 8192
  %tobool.not.i143 = icmp eq i16 %6, 0
  br i1 %tobool.not.i143, label %do.end.i, label %do.body.i, !llvm.loop !15

do.end.i:                                         ; preds = %do.cond.i
  %7 = and i16 %5, 2048
  %tobool7.not.i = icmp eq i16 %7, 0
  br i1 %tobool7.not.i, label %read_text_integer.exit.thread, label %if.end9.i

if.end9.i:                                        ; preds = %do.end.i
  %sub.i = add nsw i32 %ch.0.i.i139, -48
  %conv10.i = sext i32 %sub.i to i64
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end21.i, %if.end9.i
  %val.0.i = phi i64 [ %conv10.i, %if.end9.i ], [ %add.i, %if.end21.i ]
  %call.i38.i = tail call i32 @getc(ptr noundef nonnull %call) #8
  %cmp.i39.i = icmp eq i32 %call.i38.i, 35
  br i1 %cmp.i39.i, label %do.body.i41.i, label %text_getc.exit43.i

do.body.i41.i:                                    ; preds = %while.cond.i, %do.body.i41.i
  %call1.i40.i = tail call i32 @getc(ptr noundef nonnull %call) #8
  switch i32 %call1.i40.i, label %do.body.i41.i [
    i32 -1, label %text_getc.exit43.i
    i32 10, label %text_getc.exit43.i
  ]

text_getc.exit43.i:                               ; preds = %do.body.i41.i, %do.body.i41.i, %while.cond.i
  %ch.0.i42.i = phi i32 [ %call.i38.i, %while.cond.i ], [ %call1.i40.i, %do.body.i41.i ], [ %call1.i40.i, %do.body.i41.i ]
  %cmp12.not.i = icmp eq i32 %ch.0.i42.i, -1
  br i1 %cmp12.not.i, label %while.end.i, label %while.body.i144

while.body.i144:                                  ; preds = %text_getc.exit43.i
  %8 = load ptr, ptr %call1.i, align 8, !tbaa !5
  %idxprom15.i = sext i32 %ch.0.i42.i to i64
  %arrayidx16.i = getelementptr inbounds i16, ptr %8, i64 %idxprom15.i
  %9 = load i16, ptr %arrayidx16.i, align 2, !tbaa !13
  %10 = and i16 %9, 2048
  %tobool19.not.i = icmp eq i16 %10, 0
  br i1 %tobool19.not.i, label %land.rhs.i, label %if.end21.i

if.end21.i:                                       ; preds = %while.body.i144
  %mul.i = mul nsw i64 %val.0.i, 10
  %sub22.i = add nsw i32 %ch.0.i42.i, -48
  %conv23.i = sext i32 %sub22.i to i64
  %add.i = add nsw i64 %mul.i, %conv23.i
  br label %while.cond.i, !llvm.loop !17

read_text_integer.exit.thread:                    ; preds = %do.end.i, %text_getc.exit.i140
  store i64 %val.0.i.lcssa176181, ptr %val, align 8, !tbaa !9
  store i32 %ch.0.i.i139, ptr %termchar, align 4, !tbaa !11
  br label %bogus

land.rhs.i:                                       ; preds = %while.body.i144, %text_getc.exit.i
  %ch.039.i = phi i32 [ %ch.0.i.i, %text_getc.exit.i ], [ %ch.0.i42.i, %while.body.i144 ]
  %11 = load ptr, ptr %call1.i, align 8, !tbaa !5
  %idxprom.i = sext i32 %ch.039.i to i64
  %arrayidx.i = getelementptr inbounds i16, ptr %11, i64 %idxprom.i
  %12 = load i16, ptr %arrayidx.i, align 2, !tbaa !13
  %13 = and i16 %12, 8192
  %tobool2.not.i = icmp eq i16 %13, 0
  br i1 %tobool2.not.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %call.i.i = tail call i32 @getc(ptr noundef nonnull %call) #8
  %cmp.i.i = icmp eq i32 %call.i.i, 35
  br i1 %cmp.i.i, label %do.body.i.i, label %text_getc.exit.i

do.body.i.i:                                      ; preds = %while.body.i, %do.body.i.i
  %call1.i.i = tail call i32 @getc(ptr noundef nonnull %call) #8
  switch i32 %call1.i.i, label %do.body.i.i [
    i32 -1, label %text_getc.exit.i
    i32 10, label %text_getc.exit.i
  ]

text_getc.exit.i:                                 ; preds = %do.body.i.i, %do.body.i.i, %while.body.i
  %ch.0.i.i = phi i32 [ %call.i.i, %while.body.i ], [ %call1.i.i, %do.body.i.i ], [ %call1.i.i, %do.body.i.i ]
  %cmp.not.i = icmp eq i32 %ch.0.i.i, -1
  br i1 %cmp.not.i, label %while.end.i, label %land.rhs.i, !llvm.loop !20

while.end.i:                                      ; preds = %text_getc.exit43.i, %text_getc.exit.i, %land.rhs.i
  %ch.0.i42.i.lcssa215 = phi i32 [ %ch.0.i42.i, %land.rhs.i ], [ %ch.0.i42.i, %text_getc.exit.i ], [ -1, %text_getc.exit43.i ]
  %ch.0.lcssa.i = phi i32 [ -1, %text_getc.exit.i ], [ %ch.039.i, %land.rhs.i ], [ -1, %text_getc.exit43.i ]
  %cmp.lcssa.i = phi i1 [ %tobool2.not.i, %text_getc.exit.i ], [ true, %land.rhs.i ], [ false, %text_getc.exit43.i ]
  %14 = load ptr, ptr %call1.i, align 8, !tbaa !5
  %idxprom5.i = sext i32 %ch.0.lcssa.i to i64
  %arrayidx6.i = getelementptr inbounds i16, ptr %14, i64 %idxprom5.i
  %15 = load i16, ptr %arrayidx6.i, align 2, !tbaa !13
  %16 = and i16 %15, 2048
  %tobool9.not.i = icmp eq i16 %16, 0
  br i1 %tobool9.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %while.end.i
  %call11.i = tail call i32 @ungetc(i32 noundef %ch.0.lcssa.i, ptr noundef nonnull %call) #8
  %cmp12.i = icmp eq i32 %call11.i, -1
  br i1 %cmp12.i, label %bogus.loopexit, label %if.end21

if.else.i:                                        ; preds = %while.end.i
  %17 = and i32 %ch.0.lcssa.i, -2
  %18 = icmp ne i32 %17, 58
  %19 = and i1 %cmp.lcssa.i, %18
  %spec.select = select i1 %19, i32 32, i32 %ch.0.lcssa.i
  br label %if.end21

if.end21:                                         ; preds = %if.else.i, %if.then10.i
  %ch.1.i = phi i32 [ 32, %if.then10.i ], [ %spec.select, %if.else.i ]
  %conv22 = trunc i64 %val.0.i to i32
  %arrayidx24 = getelementptr inbounds %struct.jpeg_scan_info, ptr %scanptr.0190, i64 0, i32 1, i64 %indvars.iv
  store i32 %conv22, ptr %arrayidx24, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp9 = icmp eq i32 %ch.1.i, 32
  br i1 %cmp9, label %while.body11, label %while.end.loopexit, !llvm.loop !21

while.end.loopexit:                               ; preds = %if.end21
  %20 = trunc i64 %indvars.iv.next to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end7
  %val.0.i.lcssa176.lcssa = phi i64 [ %2, %if.end7 ], [ %val.0.i, %while.end.loopexit ]
  %ch.0.i42.i.lcssa172.lcssa = phi i32 [ %termchar.promoted, %if.end7 ], [ %ch.1.i, %while.end.loopexit ]
  %ncomps.0.lcssa = phi i32 [ 1, %if.end7 ], [ %20, %while.end.loopexit ]
  store i32 %ch.0.i42.i.lcssa172.lcssa, ptr %termchar, align 4, !tbaa !11
  store i64 %val.0.i.lcssa176.lcssa, ptr %val, align 8, !tbaa !9
  store i32 %ncomps.0.lcssa, ptr %scanptr.0190, align 4, !tbaa !22
  %cmp25 = icmp eq i32 %ch.0.i42.i.lcssa172.lcssa, 58
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %while.end
  %call28 = call fastcc i32 @read_scan_integer(ptr noundef nonnull %call, ptr noundef nonnull %val, ptr noundef nonnull %termchar)
  %tobool29 = icmp eq i32 %call28, 0
  %21 = load i32, ptr %termchar, align 4
  %cmp30 = icmp ne i32 %21, 32
  %or.cond = select i1 %tobool29, i1 true, i1 %cmp30
  br i1 %or.cond, label %bogus, label %if.end33

if.end33:                                         ; preds = %if.then27
  %22 = load i64, ptr %val, align 8, !tbaa !9
  %conv34 = trunc i64 %22 to i32
  %Ss = getelementptr inbounds %struct.jpeg_scan_info, ptr %scanptr.0190, i64 0, i32 2
  store i32 %conv34, ptr %Ss, align 4, !tbaa !24
  %call35 = call fastcc i32 @read_scan_integer(ptr noundef nonnull %call, ptr noundef nonnull %val, ptr noundef nonnull %termchar)
  %tobool36 = icmp eq i32 %call35, 0
  %23 = load i32, ptr %termchar, align 4
  %cmp38 = icmp ne i32 %23, 32
  %or.cond93 = select i1 %tobool36, i1 true, i1 %cmp38
  br i1 %or.cond93, label %bogus, label %if.end41

if.end41:                                         ; preds = %if.end33
  %24 = load i64, ptr %val, align 8, !tbaa !9
  %conv42 = trunc i64 %24 to i32
  %Se = getelementptr inbounds %struct.jpeg_scan_info, ptr %scanptr.0190, i64 0, i32 3
  store i32 %conv42, ptr %Se, align 4, !tbaa !25
  %call43 = call fastcc i32 @read_scan_integer(ptr noundef nonnull %call, ptr noundef nonnull %val, ptr noundef nonnull %termchar)
  %tobool44 = icmp eq i32 %call43, 0
  %25 = load i32, ptr %termchar, align 4
  %cmp46 = icmp ne i32 %25, 32
  %or.cond94 = select i1 %tobool44, i1 true, i1 %cmp46
  br i1 %or.cond94, label %bogus, label %if.end49

if.end49:                                         ; preds = %if.end41
  %26 = load i64, ptr %val, align 8, !tbaa !9
  %conv50 = trunc i64 %26 to i32
  %Ah = getelementptr inbounds %struct.jpeg_scan_info, ptr %scanptr.0190, i64 0, i32 4
  store i32 %conv50, ptr %Ah, align 4, !tbaa !26
  %call51 = call fastcc i32 @read_scan_integer(ptr noundef nonnull %call, ptr noundef nonnull %val, ptr noundef nonnull %termchar)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %bogus, label %if.end54

if.end54:                                         ; preds = %if.end49
  %27 = load i64, ptr %val, align 8, !tbaa !9
  %conv55 = trunc i64 %27 to i32
  %Al = getelementptr inbounds %struct.jpeg_scan_info, ptr %scanptr.0190, i64 0, i32 5
  store i32 %conv55, ptr %Al, align 4, !tbaa !27
  %.pre = load i32, ptr %termchar, align 4, !tbaa !11
  br label %if.end60

if.else:                                          ; preds = %while.end
  %Ss56 = getelementptr inbounds %struct.jpeg_scan_info, ptr %scanptr.0190, i64 0, i32 2
  store <4 x i32> <i32 0, i32 63, i32 0, i32 0>, ptr %Ss56, align 4, !tbaa !11
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.end54
  %28 = phi i32 [ %ch.0.i42.i.lcssa172.lcssa, %if.else ], [ %.pre, %if.end54 ]
  switch i32 %28, label %bogus [
    i32 -1, label %if.end68
    i32 59, label %if.end68
  ]

bogus.loopexit:                                   ; preds = %if.then10.i
  store i32 %ch.0.i42.i.lcssa215, ptr %termchar, align 4, !tbaa !11
  store i64 %val.0.i, ptr %val, align 8, !tbaa !9
  br label %bogus

bogus:                                            ; preds = %if.end60, %if.end49, %if.end41, %if.end33, %if.then27, %bogus.loopexit, %read_text_integer.exit.thread
  %29 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.8, ptr noundef %filename) #9
  %call67 = tail call i32 @fclose(ptr noundef nonnull %call)
  br label %cleanup

if.end68:                                         ; preds = %if.end60, %if.end60
  %incdec.ptr = getelementptr inbounds %struct.jpeg_scan_info, ptr %scanptr.0190, i64 1
  %inc69 = add nuw nsw i32 %scanno.0189, 1
  %call2 = call fastcc i32 @read_scan_integer(ptr noundef nonnull %call, ptr noundef nonnull %val, ptr noundef nonnull %termchar)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %while.end70, label %while.body, !llvm.loop !28

while.end70:                                      ; preds = %if.end68
  %30 = load i32, ptr %termchar, align 4, !tbaa !11
  %cmp71.not = icmp eq i32 %30, -1
  br i1 %cmp71.not, label %if.then79, label %if.then73

while.end70.thread:                               ; preds = %while.cond.preheader
  %31 = load i32, ptr %termchar, align 4, !tbaa !11
  %cmp71.not217 = icmp eq i32 %31, -1
  br i1 %cmp71.not217, label %if.end85, label %if.then73

if.then73:                                        ; preds = %while.end70.thread, %while.end70
  %32 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.4, ptr noundef %filename) #9
  %call75 = tail call i32 @fclose(ptr noundef nonnull %call)
  br label %cleanup

if.then79:                                        ; preds = %while.end70
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 1
  %33 = load ptr, ptr %mem, align 8, !tbaa !29
  %34 = load ptr, ptr %33, align 8, !tbaa !32
  %conv80 = zext i32 %inc69 to i64
  %mul = mul nuw nsw i64 %conv80, 36
  %call81 = tail call ptr %34(ptr noundef %cinfo, i32 noundef 1, i64 noundef %mul) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %call81, ptr noundef nonnull align 16 %scans, i64 %mul, i1 false)
  %scan_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 22
  store ptr %call81, ptr %scan_info, align 8, !tbaa !34
  %num_scans = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 21
  store i32 %inc69, ptr %num_scans, align 8, !tbaa !35
  br label %if.end85

if.end85:                                         ; preds = %while.end70.thread, %if.then79
  %call86 = tail call i32 @fclose(ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.then73, %bogus, %if.then14, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then14 ], [ 0, %bogus ], [ 0, %if.then73 ], [ 1, %if.end85 ]
  call void @llvm.lifetime.end.p0(i64 3600, ptr nonnull %scans) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %termchar) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc i32 @read_scan_integer(ptr nocapture noundef %file, ptr nocapture noundef writeonly %result, ptr nocapture noundef %termchar) unnamed_addr #3 {
entry:
  %call = tail call fastcc i32 @read_text_integer(ptr noundef %file, ptr noundef %result, ptr noundef %termchar)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %termchar, align 4, !tbaa !11
  %cmp38.not = icmp eq i32 %0, -1
  %.pre = tail call ptr @__ctype_b_loc() #10
  br i1 %cmp38.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %if.end, %text_getc.exit
  %ch.039 = phi i32 [ %ch.0.i, %text_getc.exit ], [ %0, %if.end ]
  %1 = load ptr, ptr %.pre, align 8, !tbaa !5
  %idxprom = sext i32 %ch.039 to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %2 = load i16, ptr %arrayidx, align 2, !tbaa !13
  %3 = and i16 %2, 8192
  %tobool2.not = icmp eq i16 %3, 0
  br i1 %tobool2.not, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %call.i = tail call i32 @getc(ptr noundef %file) #8
  %cmp.i = icmp eq i32 %call.i, 35
  br i1 %cmp.i, label %do.body.i, label %text_getc.exit

do.body.i:                                        ; preds = %while.body, %do.body.i
  %call1.i = tail call i32 @getc(ptr noundef %file) #8
  switch i32 %call1.i, label %do.body.i [
    i32 -1, label %text_getc.exit
    i32 10, label %text_getc.exit
  ]

text_getc.exit:                                   ; preds = %do.body.i, %do.body.i, %while.body
  %ch.0.i = phi i32 [ %call.i, %while.body ], [ %call1.i, %do.body.i ], [ %call1.i, %do.body.i ]
  %cmp.not = icmp eq i32 %ch.0.i, -1
  br i1 %cmp.not, label %while.end, label %land.rhs, !llvm.loop !20

while.end:                                        ; preds = %land.rhs, %text_getc.exit, %if.end
  %ch.0.lcssa = phi i32 [ -1, %if.end ], [ -1, %text_getc.exit ], [ %ch.039, %land.rhs ]
  %cmp.lcssa = phi i1 [ false, %if.end ], [ %tobool2.not, %text_getc.exit ], [ true, %land.rhs ]
  %4 = load ptr, ptr %.pre, align 8, !tbaa !5
  %idxprom5 = sext i32 %ch.0.lcssa to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %5 = load i16, ptr %arrayidx6, align 2, !tbaa !13
  %6 = and i16 %5, 2048
  %tobool9.not = icmp eq i16 %6, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %while.end
  %call11 = tail call i32 @ungetc(i32 noundef %ch.0.lcssa, ptr noundef %file)
  %cmp12 = icmp eq i32 %call11, -1
  br i1 %cmp12, label %cleanup, label %if.end25

if.else:                                          ; preds = %while.end
  %7 = and i32 %ch.0.lcssa, -2
  %8 = icmp ne i32 %7, 58
  %9 = and i1 %cmp.lcssa, %8
  %spec.store.select = select i1 %9, i32 32, i32 %ch.0.lcssa
  br label %if.end25

if.end25:                                         ; preds = %if.then10, %if.else
  %ch.1 = phi i32 [ %spec.store.select, %if.else ], [ 32, %if.then10 ]
  store i32 %ch.1, ptr %termchar, align 4, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %entry, %if.end25
  %retval.0 = phi i32 [ 1, %if.end25 ], [ 0, %entry ], [ 0, %if.then10 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @set_quant_slots(ptr nocapture noundef readonly %cinfo, ptr nocapture noundef readonly %arg) local_unnamed_addr #3 {
entry:
  %val = alloca i32, align 4
  %ch = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  store i32 0, ptr %val, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ch) #8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 14
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %arg.addr.033 = phi ptr [ %arg, %entry ], [ %arg.addr.2, %for.inc ]
  %0 = load i8, ptr %arg.addr.033, align 1, !tbaa !36
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  store i8 44, ptr %ch, align 1, !tbaa !36
  %call = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %arg.addr.033, ptr noundef nonnull @.str.9, ptr noundef nonnull %val, ptr noundef nonnull %ch) #8
  %cmp1 = icmp sgt i32 %call, 0
  %1 = load i8, ptr %ch, align 1
  %cmp3.not = icmp eq i8 %1, 44
  %or.cond = select i1 %cmp1, i1 %cmp3.not, i1 false
  br i1 %or.cond, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.then
  %2 = load i32, ptr %val, align 4, !tbaa !11
  %3 = icmp ugt i32 %2, 3
  br i1 %3, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end6
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef 3) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %5 = load ptr, ptr %comp_info, align 8, !tbaa !37
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %5, i64 %indvars.iv, i32 4
  store i32 %2, ptr %quant_tbl_no, align 8, !tbaa !38
  br label %while.cond

while.cond:                                       ; preds = %land.rhs, %if.end13
  %arg.addr.1 = phi ptr [ %arg.addr.033, %if.end13 ], [ %incdec.ptr, %land.rhs ]
  %6 = load i8, ptr %arg.addr.1, align 1, !tbaa !36
  %tobool15.not = icmp eq i8 %6, 0
  br i1 %tobool15.not, label %for.inc, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8, ptr %arg.addr.1, i64 1
  %cmp17.not = icmp eq i8 %6, 44
  br i1 %cmp17.not, label %for.inc, label %while.cond, !llvm.loop !40

if.else:                                          ; preds = %for.body
  %7 = load i32, ptr %val, align 4, !tbaa !11
  %8 = load ptr, ptr %comp_info, align 8, !tbaa !37
  %quant_tbl_no22 = getelementptr inbounds %struct.jpeg_component_info, ptr %8, i64 %indvars.iv, i32 4
  store i32 %7, ptr %quant_tbl_no22, align 8, !tbaa !38
  br label %for.inc

for.inc:                                          ; preds = %while.cond, %land.rhs, %if.else
  %arg.addr.2 = phi ptr [ %arg.addr.033, %if.else ], [ %arg.addr.1, %while.cond ], [ %incdec.ptr, %land.rhs ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !41

cleanup:                                          ; preds = %for.inc, %if.then, %if.then11
  %retval.0 = phi i32 [ 0, %if.then11 ], [ 1, %for.inc ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ch) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @set_sample_factors(ptr nocapture noundef readonly %cinfo, ptr nocapture noundef readonly %arg) local_unnamed_addr #3 {
entry:
  %val1 = alloca i32, align 4
  %val2 = alloca i32, align 4
  %ch1 = alloca i8, align 1
  %ch2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val2) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ch1) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ch2) #8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 14
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %arg.addr.063 = phi ptr [ %arg, %entry ], [ %arg.addr.2, %for.inc ]
  %0 = load i8, ptr %arg.addr.063, align 1, !tbaa !36
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  store i8 44, ptr %ch2, align 1, !tbaa !36
  %call = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %arg.addr.063, ptr noundef nonnull @.str.11, ptr noundef nonnull %val1, ptr noundef nonnull %ch1, ptr noundef nonnull %val2, ptr noundef nonnull %ch2) #8
  %cmp1 = icmp slt i32 %call, 3
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %1 = load i8, ptr %ch1, align 1, !tbaa !36
  %2 = and i8 %1, -33
  %3 = icmp ne i8 %2, 88
  %4 = load i8, ptr %ch2, align 1
  %cmp9 = icmp ne i8 %4, 44
  %or.cond48 = select i1 %3, i1 true, i1 %cmp9
  br i1 %or.cond48, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end
  %5 = load i32, ptr %val1, align 4, !tbaa !11
  %6 = add i32 %5, -5
  %7 = icmp ult i32 %6, -4
  %8 = load i32, ptr %val2, align 4
  %cmp19 = icmp slt i32 %8, 1
  %or.cond50 = select i1 %7, i1 true, i1 %cmp19
  %cmp22 = icmp sgt i32 %8, 4
  %or.cond51 = select i1 %or.cond50, i1 true, i1 %cmp22
  br i1 %or.cond51, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end12
  %9 = load ptr, ptr @stderr, align 8, !tbaa !5
  %10 = call i64 @fwrite(ptr nonnull @.str.12, i64 35, i64 1, ptr %9) #9
  br label %cleanup

if.end26:                                         ; preds = %if.end12
  %11 = load ptr, ptr %comp_info, align 8, !tbaa !37
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %11, i64 %indvars.iv, i32 2
  store i32 %5, ptr %h_samp_factor, align 8, !tbaa !42
  %12 = load i32, ptr %val2, align 4, !tbaa !11
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %11, i64 %indvars.iv, i32 3
  store i32 %12, ptr %v_samp_factor, align 4, !tbaa !43
  br label %while.cond

while.cond:                                       ; preds = %land.rhs, %if.end26
  %arg.addr.1 = phi ptr [ %arg.addr.063, %if.end26 ], [ %incdec.ptr, %land.rhs ]
  %13 = load i8, ptr %arg.addr.1, align 1, !tbaa !36
  %tobool31.not = icmp eq i8 %13, 0
  br i1 %tobool31.not, label %for.inc, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8, ptr %arg.addr.1, i64 1
  %cmp33.not = icmp eq i8 %13, 44
  br i1 %cmp33.not, label %for.inc, label %while.cond, !llvm.loop !44

if.else:                                          ; preds = %for.body
  %14 = load ptr, ptr %comp_info, align 8, !tbaa !37
  %h_samp_factor38 = getelementptr inbounds %struct.jpeg_component_info, ptr %14, i64 %indvars.iv, i32 2
  store i32 1, ptr %h_samp_factor38, align 8, !tbaa !42
  %v_samp_factor42 = getelementptr inbounds %struct.jpeg_component_info, ptr %14, i64 %indvars.iv, i32 3
  store i32 1, ptr %v_samp_factor42, align 4, !tbaa !43
  br label %for.inc

for.inc:                                          ; preds = %while.cond, %land.rhs, %if.else
  %arg.addr.2 = phi ptr [ %arg.addr.063, %if.else ], [ %arg.addr.1, %while.cond ], [ %incdec.ptr, %land.rhs ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !45

cleanup:                                          ; preds = %for.inc, %if.end, %if.then, %if.then24
  %retval.0 = phi i32 [ 0, %if.then24 ], [ 1, %for.inc ], [ 0, %if.end ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ch2) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ch1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val1) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @ungetc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { nounwind readnone willreturn }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !7, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = !{!23, !12, i64 0}
!23 = !{!"", !12, i64 0, !7, i64 4, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32}
!24 = !{!23, !12, i64 20}
!25 = !{!23, !12, i64 24}
!26 = !{!23, !12, i64 28}
!27 = !{!23, !12, i64 32}
!28 = distinct !{!28, !16}
!29 = !{!30, !6, i64 8}
!30 = !{!"jpeg_compress_struct", !6, i64 0, !6, i64 8, !6, i64 16, !12, i64 24, !12, i64 28, !6, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !7, i64 52, !31, i64 56, !12, i64 64, !12, i64 68, !7, i64 72, !6, i64 80, !7, i64 88, !7, i64 120, !7, i64 152, !7, i64 184, !7, i64 200, !7, i64 216, !12, i64 232, !6, i64 240, !12, i64 248, !12, i64 252, !12, i64 256, !12, i64 260, !12, i64 264, !7, i64 268, !12, i64 272, !12, i64 276, !12, i64 280, !7, i64 284, !14, i64 286, !14, i64 288, !12, i64 292, !12, i64 296, !12, i64 300, !12, i64 304, !12, i64 308, !12, i64 312, !12, i64 316, !7, i64 320, !12, i64 352, !12, i64 356, !12, i64 360, !7, i64 364, !12, i64 404, !12, i64 408, !12, i64 412, !12, i64 416, !6, i64 424, !6, i64 432, !6, i64 440, !6, i64 448, !6, i64 456, !6, i64 464, !6, i64 472, !6, i64 480, !6, i64 488}
!31 = !{!"double", !7, i64 0}
!32 = !{!33, !6, i64 0}
!33 = !{!"jpeg_memory_mgr", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !10, i64 88}
!34 = !{!30, !6, i64 240}
!35 = !{!30, !12, i64 232}
!36 = !{!7, !7, i64 0}
!37 = !{!30, !6, i64 80}
!38 = !{!39, !12, i64 16}
!39 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !6, i64 80, !6, i64 88}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16}
!42 = !{!39, !12, i64 8}
!43 = !{!39, !12, i64 12}
!44 = distinct !{!44, !16}
!45 = distinct !{!45, !16}
