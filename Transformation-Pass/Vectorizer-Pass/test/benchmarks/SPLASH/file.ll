; ModuleID = 'file.c'
source_filename = "file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"    Can't create %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"    Can't open %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"    Write failed on file %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"    Read failed on file %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"    Can't close file %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Create_File(ptr noundef %filename) local_unnamed_addr #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata ptr %filename, metadata !16, metadata !DIExpression()), !dbg !18
  %call = tail call i32 @creat(ptr noundef %filename, i32 noundef 420) #4, !dbg !19
  call void @llvm.dbg.value(metadata i32 %call, metadata !17, metadata !DIExpression()), !dbg !18
  %cmp = icmp eq i32 %call, -1, !dbg !21
  br i1 %cmp, label %if.then, label %if.end, !dbg !22

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @Error(ptr noundef nonnull @.str, ptr noundef %filename) #4, !dbg !23
  br label %if.end, !dbg !25

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call, !dbg !26
}

declare !dbg !27 i32 @creat(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !38 void @Error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Open_File(ptr noundef %filename) local_unnamed_addr #0 !dbg !42 {
entry:
  call void @llvm.dbg.value(metadata ptr %filename, metadata !44, metadata !DIExpression()), !dbg !46
  %call = tail call i32 (ptr, i32, ...) @open(ptr noundef %filename, i32 noundef 0) #4, !dbg !47
  call void @llvm.dbg.value(metadata i32 %call, metadata !45, metadata !DIExpression()), !dbg !46
  %cmp = icmp eq i32 %call, -1, !dbg !49
  br i1 %cmp, label %if.then, label %if.end, !dbg !50

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @Error(ptr noundef nonnull @.str.1, ptr noundef %filename) #4, !dbg !51
  br label %if.end, !dbg !53

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call, !dbg !54
}

; Function Attrs: nofree
declare !dbg !55 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @Write_Bytes(i32 noundef %fd, ptr nocapture noundef readonly %array, i64 noundef %length) local_unnamed_addr #0 !dbg !58 {
entry:
  call void @llvm.dbg.value(metadata i32 %fd, metadata !65, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata ptr %array, metadata !66, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i64 %length, metadata !67, metadata !DIExpression()), !dbg !70
  %0 = tail call i64 @llvm.smin.i64(i64 %length, i64 32766), !dbg !71
  %call = tail call i64 @write(i32 noundef %fd, ptr noundef %array, i64 noundef %0) #4, !dbg !72
  call void @llvm.dbg.value(metadata i64 %call, metadata !68, metadata !DIExpression()), !dbg !70
  %cmp1.not = icmp eq i64 %call, -1, !dbg !73
  br i1 %cmp1.not, label %if.end12, label %while.cond.preheader, !dbg !75

while.cond.preheader:                             ; preds = %entry
  call void @llvm.dbg.value(metadata i64 %call, metadata !68, metadata !DIExpression()), !dbg !70
  %cmp232 = icmp slt i64 %call, %length, !dbg !76
  br i1 %cmp232, label %while.body, label %if.end12, !dbg !78

while.cond:                                       ; preds = %while.body
  %add = add nsw i64 %call9, %n_written.033, !dbg !79
  call void @llvm.dbg.value(metadata i64 %add, metadata !68, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata !DIArgList(i64 %call9, i64 %n_written.033), metadata !68, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !70
  %cmp2 = icmp slt i64 %add, %length, !dbg !76
  br i1 %cmp2, label %while.body, label %if.end12, !dbg !78, !llvm.loop !81

while.body:                                       ; preds = %while.cond.preheader, %while.cond
  %n_written.033 = phi i64 [ %add, %while.cond ], [ %call, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %n_written.033, metadata !68, metadata !DIExpression()), !dbg !70
  %arrayidx = getelementptr inbounds i8, ptr %array, i64 %n_written.033, !dbg !85
  %sub = sub nsw i64 %length, %n_written.033, !dbg !86
  %1 = tail call i64 @llvm.smin.i64(i64 %sub, i64 32766), !dbg !86
  %call9 = tail call i64 @write(i32 noundef %fd, ptr noundef %arrayidx, i64 noundef %1) #4, !dbg !87
  call void @llvm.dbg.value(metadata i64 %call9, metadata !69, metadata !DIExpression()), !dbg !70
  %cmp10 = icmp eq i64 %call9, -1, !dbg !88
  call void @llvm.dbg.value(metadata !DIArgList(i64 %call9, i64 %n_written.033), metadata !68, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !70
  br i1 %cmp10, label %if.end12, label %while.cond, !dbg !90

if.end12:                                         ; preds = %while.body, %while.cond, %while.cond.preheader, %entry
  %n_written.1 = phi i64 [ -1, %entry ], [ %call, %while.cond.preheader ], [ %n_written.033, %while.body ], [ %add, %while.cond ], !dbg !91
  call void @llvm.dbg.value(metadata i64 %n_written.1, metadata !68, metadata !DIExpression()), !dbg !70
  %cmp13.not = icmp eq i64 %n_written.1, %length, !dbg !92
  br i1 %cmp13.not, label %if.end15, label %if.then14, !dbg !94

if.then14:                                        ; preds = %if.end12
  tail call void @Close_File(i32 noundef %fd), !dbg !95
  tail call void (ptr, ...) @Error(ptr noundef nonnull @.str.2, i32 noundef %fd) #4, !dbg !97
  br label %if.end15, !dbg !98

if.end15:                                         ; preds = %if.then14, %if.end12
  ret void, !dbg !99
}

; Function Attrs: nofree
declare !dbg !100 noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @Close_File(i32 noundef %fd) local_unnamed_addr #0 !dbg !111 {
entry:
  call void @llvm.dbg.value(metadata i32 %fd, metadata !115, metadata !DIExpression()), !dbg !116
  %call = tail call i32 @close(i32 noundef %fd) #4, !dbg !117
  %cmp = icmp eq i32 %call, -1, !dbg !119
  br i1 %cmp, label %if.then, label %if.end, !dbg !120

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @Error(ptr noundef nonnull @.str.4, i32 noundef %fd) #4, !dbg !121
  br label %if.end, !dbg !123

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !124
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Write_Shorts(i32 noundef %fd, ptr nocapture noundef readonly %array, i64 noundef %length) local_unnamed_addr #0 !dbg !125 {
entry:
  call void @llvm.dbg.value(metadata i32 %fd, metadata !127, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata ptr %array, metadata !128, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata i64 %length, metadata !129, metadata !DIExpression()), !dbg !132
  %0 = tail call i64 @llvm.smin.i64(i64 %length, i64 32766), !dbg !133
  %call = tail call i64 @write(i32 noundef %fd, ptr noundef %array, i64 noundef %0) #4, !dbg !134
  call void @llvm.dbg.value(metadata i64 %call, metadata !130, metadata !DIExpression()), !dbg !132
  %cmp1.not = icmp eq i64 %call, -1, !dbg !135
  br i1 %cmp1.not, label %if.end12, label %while.cond.preheader, !dbg !137

while.cond.preheader:                             ; preds = %entry
  call void @llvm.dbg.value(metadata i64 %call, metadata !130, metadata !DIExpression()), !dbg !132
  %cmp232 = icmp slt i64 %call, %length, !dbg !138
  br i1 %cmp232, label %while.body, label %if.end12, !dbg !140

while.cond:                                       ; preds = %while.body
  %add = add nsw i64 %call9, %n_written.033, !dbg !141
  call void @llvm.dbg.value(metadata i64 %add, metadata !130, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata !DIArgList(i64 %call9, i64 %n_written.033), metadata !130, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !132
  %cmp2 = icmp slt i64 %add, %length, !dbg !138
  br i1 %cmp2, label %while.body, label %if.end12, !dbg !140, !llvm.loop !143

while.body:                                       ; preds = %while.cond.preheader, %while.cond
  %n_written.033 = phi i64 [ %add, %while.cond ], [ %call, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %n_written.033, metadata !130, metadata !DIExpression()), !dbg !132
  %arrayidx = getelementptr inbounds i8, ptr %array, i64 %n_written.033, !dbg !145
  %sub = sub nsw i64 %length, %n_written.033, !dbg !146
  %1 = tail call i64 @llvm.smin.i64(i64 %sub, i64 32766), !dbg !146
  %call9 = tail call i64 @write(i32 noundef %fd, ptr noundef %arrayidx, i64 noundef %1) #4, !dbg !147
  call void @llvm.dbg.value(metadata i64 %call9, metadata !131, metadata !DIExpression()), !dbg !132
  %cmp10 = icmp eq i64 %call9, -1, !dbg !148
  call void @llvm.dbg.value(metadata !DIArgList(i64 %call9, i64 %n_written.033), metadata !130, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !132
  br i1 %cmp10, label %if.end12, label %while.cond, !dbg !150

if.end12:                                         ; preds = %while.body, %while.cond, %while.cond.preheader, %entry
  %n_written.1 = phi i64 [ -1, %entry ], [ %call, %while.cond.preheader ], [ %n_written.033, %while.body ], [ %add, %while.cond ], !dbg !151
  call void @llvm.dbg.value(metadata i64 %n_written.1, metadata !130, metadata !DIExpression()), !dbg !132
  %cmp13.not = icmp eq i64 %n_written.1, %length, !dbg !152
  br i1 %cmp13.not, label %if.end15, label %if.then14, !dbg !154

if.then14:                                        ; preds = %if.end12
  tail call void @Close_File(i32 noundef %fd), !dbg !155
  tail call void (ptr, ...) @Error(ptr noundef nonnull @.str.2, i32 noundef %fd) #4, !dbg !157
  br label %if.end15, !dbg !158

if.end15:                                         ; preds = %if.then14, %if.end12
  ret void, !dbg !159
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Write_Longs(i32 noundef %fd, ptr nocapture noundef readonly %array, i64 noundef %length) local_unnamed_addr #0 !dbg !160 {
entry:
  call void @llvm.dbg.value(metadata i32 %fd, metadata !162, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.value(metadata ptr %array, metadata !163, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.value(metadata i64 %length, metadata !164, metadata !DIExpression()), !dbg !167
  %0 = tail call i64 @llvm.smin.i64(i64 %length, i64 32766), !dbg !168
  %call = tail call i64 @write(i32 noundef %fd, ptr noundef %array, i64 noundef %0) #4, !dbg !169
  call void @llvm.dbg.value(metadata i64 %call, metadata !165, metadata !DIExpression()), !dbg !167
  %cmp1.not = icmp eq i64 %call, -1, !dbg !170
  br i1 %cmp1.not, label %if.end12, label %while.cond.preheader, !dbg !172

while.cond.preheader:                             ; preds = %entry
  call void @llvm.dbg.value(metadata i64 %call, metadata !165, metadata !DIExpression()), !dbg !167
  %cmp232 = icmp slt i64 %call, %length, !dbg !173
  br i1 %cmp232, label %while.body, label %if.end12, !dbg !175

while.cond:                                       ; preds = %while.body
  %add = add nsw i64 %call9, %n_written.033, !dbg !176
  call void @llvm.dbg.value(metadata i64 %add, metadata !165, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.value(metadata !DIArgList(i64 %call9, i64 %n_written.033), metadata !165, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !167
  %cmp2 = icmp slt i64 %add, %length, !dbg !173
  br i1 %cmp2, label %while.body, label %if.end12, !dbg !175, !llvm.loop !178

while.body:                                       ; preds = %while.cond.preheader, %while.cond
  %n_written.033 = phi i64 [ %add, %while.cond ], [ %call, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %n_written.033, metadata !165, metadata !DIExpression()), !dbg !167
  %arrayidx = getelementptr inbounds i8, ptr %array, i64 %n_written.033, !dbg !180
  %sub = sub nsw i64 %length, %n_written.033, !dbg !181
  %1 = tail call i64 @llvm.smin.i64(i64 %sub, i64 32766), !dbg !181
  %call9 = tail call i64 @write(i32 noundef %fd, ptr noundef %arrayidx, i64 noundef %1) #4, !dbg !182
  call void @llvm.dbg.value(metadata i64 %call9, metadata !166, metadata !DIExpression()), !dbg !167
  %cmp10 = icmp eq i64 %call9, -1, !dbg !183
  call void @llvm.dbg.value(metadata !DIArgList(i64 %call9, i64 %n_written.033), metadata !165, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !167
  br i1 %cmp10, label %if.end12, label %while.cond, !dbg !185

if.end12:                                         ; preds = %while.body, %while.cond, %while.cond.preheader, %entry
  %n_written.1 = phi i64 [ -1, %entry ], [ %call, %while.cond.preheader ], [ %n_written.033, %while.body ], [ %add, %while.cond ], !dbg !186
  call void @llvm.dbg.value(metadata i64 %n_written.1, metadata !165, metadata !DIExpression()), !dbg !167
  %cmp13.not = icmp eq i64 %n_written.1, %length, !dbg !187
  br i1 %cmp13.not, label %if.end15, label %if.then14, !dbg !189

if.then14:                                        ; preds = %if.end12
  tail call void @Close_File(i32 noundef %fd), !dbg !190
  tail call void (ptr, ...) @Error(ptr noundef nonnull @.str.2, i32 noundef %fd) #4, !dbg !192
  br label %if.end15, !dbg !193

if.end15:                                         ; preds = %if.then14, %if.end12
  ret void, !dbg !194
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Read_Bytes(i32 noundef %fd, ptr nocapture noundef %array, i64 noundef %length) local_unnamed_addr #0 !dbg !195 {
entry:
  call void @llvm.dbg.value(metadata i32 %fd, metadata !197, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata ptr %array, metadata !198, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata i64 %length, metadata !199, metadata !DIExpression()), !dbg !202
  %0 = tail call i64 @llvm.smin.i64(i64 %length, i64 32766), !dbg !203
  %call = tail call i64 @read(i32 noundef %fd, ptr noundef %array, i64 noundef %0) #4, !dbg !204
  call void @llvm.dbg.value(metadata i64 %call, metadata !200, metadata !DIExpression()), !dbg !202
  %1 = add i64 %call, -1, !dbg !205
  %2 = icmp ult i64 %1, -2, !dbg !205
  %cmp337 = icmp slt i64 %call, %length
  %or.cond = and i1 %2, %cmp337, !dbg !205
  call void @llvm.dbg.value(metadata i64 %call, metadata !200, metadata !DIExpression()), !dbg !202
  br i1 %or.cond, label %while.body, label %if.end14, !dbg !205

while.cond:                                       ; preds = %while.body
  %add = add nsw i64 %call10, %n_read.038, !dbg !207
  call void @llvm.dbg.value(metadata i64 %add, metadata !200, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata !DIArgList(i64 %call10, i64 %n_read.038), metadata !200, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !202
  %cmp3 = icmp slt i64 %add, %length, !dbg !210
  br i1 %cmp3, label %while.body, label %if.end14, !dbg !211, !llvm.loop !212

while.body:                                       ; preds = %entry, %while.cond
  %n_read.038 = phi i64 [ %add, %while.cond ], [ %call, %entry ]
  call void @llvm.dbg.value(metadata i64 %n_read.038, metadata !200, metadata !DIExpression()), !dbg !202
  %arrayidx = getelementptr inbounds i8, ptr %array, i64 %n_read.038, !dbg !214
  %sub = sub nsw i64 %length, %n_read.038, !dbg !215
  %3 = tail call i64 @llvm.smin.i64(i64 %sub, i64 32766), !dbg !215
  %call10 = tail call i64 @read(i32 noundef %fd, ptr noundef %arrayidx, i64 noundef %3) #4, !dbg !216
  call void @llvm.dbg.value(metadata i64 %call10, metadata !201, metadata !DIExpression()), !dbg !202
  %4 = add i64 %call10, 1, !dbg !217
  %5 = icmp ult i64 %4, 2, !dbg !217
  call void @llvm.dbg.value(metadata !DIArgList(i64 %call10, i64 %n_read.038), metadata !200, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !202
  br i1 %5, label %if.end14, label %while.cond, !dbg !217

if.end14:                                         ; preds = %while.body, %while.cond, %entry
  %n_read.1 = phi i64 [ %call, %entry ], [ %n_read.038, %while.body ], [ %add, %while.cond ], !dbg !219
  call void @llvm.dbg.value(metadata i64 %n_read.1, metadata !200, metadata !DIExpression()), !dbg !202
  %cmp15.not = icmp eq i64 %n_read.1, %length, !dbg !220
  br i1 %cmp15.not, label %if.end17, label %if.then16, !dbg !222

if.then16:                                        ; preds = %if.end14
  tail call void @Close_File(i32 noundef %fd), !dbg !223
  tail call void (ptr, ...) @Error(ptr noundef nonnull @.str.3, i32 noundef %fd) #4, !dbg !225
  br label %if.end17, !dbg !226

if.end17:                                         ; preds = %if.then16, %if.end14
  ret void, !dbg !227
}

; Function Attrs: nofree
declare !dbg !228 noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @Read_Shorts(i32 noundef %fd, ptr nocapture noundef %array, i64 noundef %length) local_unnamed_addr #0 !dbg !232 {
entry:
  call void @llvm.dbg.value(metadata i32 %fd, metadata !234, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata ptr %array, metadata !235, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata i64 %length, metadata !236, metadata !DIExpression()), !dbg !239
  %0 = tail call i64 @llvm.smin.i64(i64 %length, i64 32766), !dbg !240
  %call = tail call i64 @read(i32 noundef %fd, ptr noundef %array, i64 noundef %0) #4, !dbg !241
  call void @llvm.dbg.value(metadata i64 %call, metadata !237, metadata !DIExpression()), !dbg !239
  %1 = add i64 %call, -1, !dbg !242
  %2 = icmp ult i64 %1, -2, !dbg !242
  %cmp337 = icmp slt i64 %call, %length
  %or.cond = and i1 %2, %cmp337, !dbg !242
  call void @llvm.dbg.value(metadata i64 %call, metadata !237, metadata !DIExpression()), !dbg !239
  br i1 %or.cond, label %while.body, label %if.end14, !dbg !242

while.cond:                                       ; preds = %while.body
  %add = add nsw i64 %call10, %n_read.038, !dbg !244
  call void @llvm.dbg.value(metadata i64 %add, metadata !237, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata !DIArgList(i64 %call10, i64 %n_read.038), metadata !237, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !239
  %cmp3 = icmp slt i64 %add, %length, !dbg !247
  br i1 %cmp3, label %while.body, label %if.end14, !dbg !248, !llvm.loop !249

while.body:                                       ; preds = %entry, %while.cond
  %n_read.038 = phi i64 [ %add, %while.cond ], [ %call, %entry ]
  call void @llvm.dbg.value(metadata i64 %n_read.038, metadata !237, metadata !DIExpression()), !dbg !239
  %arrayidx = getelementptr inbounds i8, ptr %array, i64 %n_read.038, !dbg !251
  %sub = sub nsw i64 %length, %n_read.038, !dbg !252
  %3 = tail call i64 @llvm.smin.i64(i64 %sub, i64 32766), !dbg !252
  %call10 = tail call i64 @read(i32 noundef %fd, ptr noundef %arrayidx, i64 noundef %3) #4, !dbg !253
  call void @llvm.dbg.value(metadata i64 %call10, metadata !238, metadata !DIExpression()), !dbg !239
  %4 = add i64 %call10, 1, !dbg !254
  %5 = icmp ult i64 %4, 2, !dbg !254
  call void @llvm.dbg.value(metadata !DIArgList(i64 %call10, i64 %n_read.038), metadata !237, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !239
  br i1 %5, label %if.end14, label %while.cond, !dbg !254

if.end14:                                         ; preds = %while.body, %while.cond, %entry
  %n_read.1 = phi i64 [ %call, %entry ], [ %n_read.038, %while.body ], [ %add, %while.cond ], !dbg !256
  call void @llvm.dbg.value(metadata i64 %n_read.1, metadata !237, metadata !DIExpression()), !dbg !239
  %cmp15.not = icmp eq i64 %n_read.1, %length, !dbg !257
  br i1 %cmp15.not, label %if.end17, label %if.then16, !dbg !259

if.then16:                                        ; preds = %if.end14
  tail call void @Close_File(i32 noundef %fd), !dbg !260
  tail call void (ptr, ...) @Error(ptr noundef nonnull @.str.3, i32 noundef %fd) #4, !dbg !262
  br label %if.end17, !dbg !263

if.end17:                                         ; preds = %if.then16, %if.end14
  ret void, !dbg !264
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Read_Longs(i32 noundef %fd, ptr nocapture noundef %array, i64 noundef %length) local_unnamed_addr #0 !dbg !265 {
entry:
  call void @llvm.dbg.value(metadata i32 %fd, metadata !267, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata ptr %array, metadata !268, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i64 %length, metadata !269, metadata !DIExpression()), !dbg !272
  %0 = tail call i64 @llvm.smin.i64(i64 %length, i64 32766), !dbg !273
  %call = tail call i64 @read(i32 noundef %fd, ptr noundef %array, i64 noundef %0) #4, !dbg !274
  call void @llvm.dbg.value(metadata i64 %call, metadata !270, metadata !DIExpression()), !dbg !272
  %1 = add i64 %call, -1, !dbg !275
  %2 = icmp ult i64 %1, -2, !dbg !275
  %cmp337 = icmp slt i64 %call, %length
  %or.cond = and i1 %2, %cmp337, !dbg !275
  call void @llvm.dbg.value(metadata i64 %call, metadata !270, metadata !DIExpression()), !dbg !272
  br i1 %or.cond, label %while.body, label %if.end14, !dbg !275

while.cond:                                       ; preds = %while.body
  %add = add nsw i64 %call10, %n_read.038, !dbg !277
  call void @llvm.dbg.value(metadata i64 %add, metadata !270, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata !DIArgList(i64 %call10, i64 %n_read.038), metadata !270, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !272
  %cmp3 = icmp slt i64 %add, %length, !dbg !280
  br i1 %cmp3, label %while.body, label %if.end14, !dbg !281, !llvm.loop !282

while.body:                                       ; preds = %entry, %while.cond
  %n_read.038 = phi i64 [ %add, %while.cond ], [ %call, %entry ]
  call void @llvm.dbg.value(metadata i64 %n_read.038, metadata !270, metadata !DIExpression()), !dbg !272
  %arrayidx = getelementptr inbounds i8, ptr %array, i64 %n_read.038, !dbg !284
  %sub = sub nsw i64 %length, %n_read.038, !dbg !285
  %3 = tail call i64 @llvm.smin.i64(i64 %sub, i64 32766), !dbg !285
  %call10 = tail call i64 @read(i32 noundef %fd, ptr noundef %arrayidx, i64 noundef %3) #4, !dbg !286
  call void @llvm.dbg.value(metadata i64 %call10, metadata !271, metadata !DIExpression()), !dbg !272
  %4 = add i64 %call10, 1, !dbg !287
  %5 = icmp ult i64 %4, 2, !dbg !287
  call void @llvm.dbg.value(metadata !DIArgList(i64 %call10, i64 %n_read.038), metadata !270, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !272
  br i1 %5, label %if.end14, label %while.cond, !dbg !287

if.end14:                                         ; preds = %while.body, %while.cond, %entry
  %n_read.1 = phi i64 [ %call, %entry ], [ %n_read.038, %while.body ], [ %add, %while.cond ], !dbg !289
  call void @llvm.dbg.value(metadata i64 %n_read.1, metadata !270, metadata !DIExpression()), !dbg !272
  %cmp15.not = icmp eq i64 %n_read.1, %length, !dbg !290
  br i1 %cmp15.not, label %if.end17, label %if.then16, !dbg !292

if.then16:                                        ; preds = %if.end14
  tail call void @Close_File(i32 noundef %fd), !dbg !293
  tail call void (ptr, ...) @Error(ptr noundef nonnull @.str.3, i32 noundef %fd) #4, !dbg !295
  br label %if.end17, !dbg !296

if.end17:                                         ; preds = %if.then16, %if.end14
  ret void, !dbg !297
}

declare !dbg !298 i32 @close(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "file.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "3621d529b13dc892cc986d77e04299c4")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!9 = distinct !DISubprogram(name: "Create_File", scope: !1, file: !1, line: 46, type: !10, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !15)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !{!16, !17}
!16 = !DILocalVariable(name: "filename", arg: 1, scope: !9, file: !1, line: 46, type: !13)
!17 = !DILocalVariable(name: "fd", scope: !9, file: !1, line: 48, type: !12)
!18 = !DILocation(line: 0, scope: !9)
!19 = !DILocation(line: 49, column: 13, scope: !20)
!20 = distinct !DILexicalBlock(scope: !9, file: !1, line: 49, column: 7)
!21 = !DILocation(line: 49, column: 36, scope: !20)
!22 = !DILocation(line: 49, column: 7, scope: !9)
!23 = !DILocation(line: 50, column: 5, scope: !24)
!24 = distinct !DILexicalBlock(scope: !20, file: !1, line: 49, column: 43)
!25 = !DILocation(line: 51, column: 3, scope: !24)
!26 = !DILocation(line: 52, column: 3, scope: !9)
!27 = !DISubprogram(name: "creat", scope: !28, file: !28, line: 214, type: !29, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !37)
!28 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "270596b098606fab5166d0114edf8288")
!29 = !DISubroutineType(types: !30)
!30 = !{!12, !31, !33}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !28, line: 50, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !35, line: 150, baseType: !36)
!35 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!36 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!37 = !{}
!38 = !DISubprogram(name: "Error", scope: !39, file: !39, line: 187, type: !40, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !37)
!39 = !DIFile(filename: "./global.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "f049690031a7f12768b0765e4f4983eb")
!40 = !DISubroutineType(types: !41)
!41 = !{null, !13, null}
!42 = distinct !DISubprogram(name: "Open_File", scope: !1, file: !1, line: 56, type: !10, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !43)
!43 = !{!44, !45}
!44 = !DILocalVariable(name: "filename", arg: 1, scope: !42, file: !1, line: 56, type: !13)
!45 = !DILocalVariable(name: "fd", scope: !42, file: !1, line: 58, type: !12)
!46 = !DILocation(line: 0, scope: !42)
!47 = !DILocation(line: 59, column: 13, scope: !48)
!48 = distinct !DILexicalBlock(scope: !42, file: !1, line: 59, column: 7)
!49 = !DILocation(line: 59, column: 36, scope: !48)
!50 = !DILocation(line: 59, column: 7, scope: !42)
!51 = !DILocation(line: 60, column: 5, scope: !52)
!52 = distinct !DILexicalBlock(scope: !48, file: !1, line: 59, column: 43)
!53 = !DILocation(line: 61, column: 3, scope: !52)
!54 = !DILocation(line: 62, column: 3, scope: !42)
!55 = !DISubprogram(name: "open", scope: !28, file: !28, line: 168, type: !56, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !37)
!56 = !DISubroutineType(types: !57)
!57 = !{!12, !31, !12, null}
!58 = distinct !DISubprogram(name: "Write_Bytes", scope: !1, file: !1, line: 66, type: !59, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !64)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !12, !61, !63}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!63 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!64 = !{!65, !66, !67, !68, !69}
!65 = !DILocalVariable(name: "fd", arg: 1, scope: !58, file: !1, line: 66, type: !12)
!66 = !DILocalVariable(name: "array", arg: 2, scope: !58, file: !1, line: 66, type: !61)
!67 = !DILocalVariable(name: "length", arg: 3, scope: !58, file: !1, line: 66, type: !63)
!68 = !DILocalVariable(name: "n_written", scope: !58, file: !1, line: 68, type: !63)
!69 = !DILocalVariable(name: "more_written", scope: !58, file: !1, line: 69, type: !63)
!70 = !DILocation(line: 0, scope: !58)
!71 = !DILocation(line: 70, column: 30, scope: !58)
!72 = !DILocation(line: 70, column: 15, scope: !58)
!73 = !DILocation(line: 71, column: 17, scope: !74)
!74 = distinct !DILexicalBlock(scope: !58, file: !1, line: 71, column: 7)
!75 = !DILocation(line: 71, column: 7, scope: !58)
!76 = !DILocation(line: 72, column: 22, scope: !77)
!77 = distinct !DILexicalBlock(scope: !74, file: !1, line: 71, column: 24)
!78 = !DILocation(line: 72, column: 5, scope: !77)
!79 = !DILocation(line: 76, column: 17, scope: !80)
!80 = distinct !DILexicalBlock(scope: !77, file: !1, line: 72, column: 32)
!81 = distinct !{!81, !78, !82, !83, !84}
!82 = !DILocation(line: 77, column: 5, scope: !77)
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{!"llvm.loop.unroll.disable"}
!85 = !DILocation(line: 73, column: 32, scope: !80)
!86 = !DILocation(line: 74, column: 7, scope: !80)
!87 = !DILocation(line: 73, column: 22, scope: !80)
!88 = !DILocation(line: 75, column: 24, scope: !89)
!89 = distinct !DILexicalBlock(scope: !80, file: !1, line: 75, column: 11)
!90 = !DILocation(line: 75, column: 11, scope: !80)
!91 = !DILocation(line: 70, column: 13, scope: !58)
!92 = !DILocation(line: 79, column: 17, scope: !93)
!93 = distinct !DILexicalBlock(scope: !58, file: !1, line: 79, column: 7)
!94 = !DILocation(line: 79, column: 7, scope: !58)
!95 = !DILocation(line: 80, column: 5, scope: !96)
!96 = distinct !DILexicalBlock(scope: !93, file: !1, line: 79, column: 28)
!97 = !DILocation(line: 81, column: 5, scope: !96)
!98 = !DILocation(line: 82, column: 3, scope: !96)
!99 = !DILocation(line: 83, column: 1, scope: !58)
!100 = !DISubprogram(name: "write", scope: !101, file: !101, line: 366, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !37)
!101 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!102 = !DISubroutineType(types: !103)
!103 = !{!104, !12, !106, !108}
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !101, line: 220, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !35, line: 193, baseType: !63)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 46, baseType: !110)
!109 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!110 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!111 = distinct !DISubprogram(name: "Close_File", scope: !1, file: !1, line: 237, type: !112, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !114)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !12}
!114 = !{!115}
!115 = !DILocalVariable(name: "fd", arg: 1, scope: !111, file: !1, line: 237, type: !12)
!116 = !DILocation(line: 0, scope: !111)
!117 = !DILocation(line: 239, column: 7, scope: !118)
!118 = distinct !DILexicalBlock(scope: !111, file: !1, line: 239, column: 7)
!119 = !DILocation(line: 239, column: 17, scope: !118)
!120 = !DILocation(line: 239, column: 7, scope: !111)
!121 = !DILocation(line: 240, column: 5, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !1, line: 239, column: 24)
!123 = !DILocation(line: 241, column: 3, scope: !122)
!124 = !DILocation(line: 242, column: 1, scope: !111)
!125 = distinct !DISubprogram(name: "Write_Shorts", scope: !1, file: !1, line: 86, type: !59, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !126)
!126 = !{!127, !128, !129, !130, !131}
!127 = !DILocalVariable(name: "fd", arg: 1, scope: !125, file: !1, line: 86, type: !12)
!128 = !DILocalVariable(name: "array", arg: 2, scope: !125, file: !1, line: 86, type: !61)
!129 = !DILocalVariable(name: "length", arg: 3, scope: !125, file: !1, line: 86, type: !63)
!130 = !DILocalVariable(name: "n_written", scope: !125, file: !1, line: 88, type: !63)
!131 = !DILocalVariable(name: "more_written", scope: !125, file: !1, line: 89, type: !63)
!132 = !DILocation(line: 0, scope: !125)
!133 = !DILocation(line: 97, column: 30, scope: !125)
!134 = !DILocation(line: 97, column: 15, scope: !125)
!135 = !DILocation(line: 98, column: 17, scope: !136)
!136 = distinct !DILexicalBlock(scope: !125, file: !1, line: 98, column: 7)
!137 = !DILocation(line: 98, column: 7, scope: !125)
!138 = !DILocation(line: 99, column: 22, scope: !139)
!139 = distinct !DILexicalBlock(scope: !136, file: !1, line: 98, column: 24)
!140 = !DILocation(line: 99, column: 5, scope: !139)
!141 = !DILocation(line: 103, column: 17, scope: !142)
!142 = distinct !DILexicalBlock(scope: !139, file: !1, line: 99, column: 32)
!143 = distinct !{!143, !140, !144, !83, !84}
!144 = !DILocation(line: 104, column: 5, scope: !139)
!145 = !DILocation(line: 100, column: 32, scope: !142)
!146 = !DILocation(line: 101, column: 7, scope: !142)
!147 = !DILocation(line: 100, column: 22, scope: !142)
!148 = !DILocation(line: 102, column: 24, scope: !149)
!149 = distinct !DILexicalBlock(scope: !142, file: !1, line: 102, column: 11)
!150 = !DILocation(line: 102, column: 11, scope: !142)
!151 = !DILocation(line: 97, column: 13, scope: !125)
!152 = !DILocation(line: 106, column: 17, scope: !153)
!153 = distinct !DILexicalBlock(scope: !125, file: !1, line: 106, column: 7)
!154 = !DILocation(line: 106, column: 7, scope: !125)
!155 = !DILocation(line: 107, column: 5, scope: !156)
!156 = distinct !DILexicalBlock(scope: !153, file: !1, line: 106, column: 28)
!157 = !DILocation(line: 108, column: 5, scope: !156)
!158 = !DILocation(line: 109, column: 3, scope: !156)
!159 = !DILocation(line: 117, column: 1, scope: !125)
!160 = distinct !DISubprogram(name: "Write_Longs", scope: !1, file: !1, line: 120, type: !59, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !161)
!161 = !{!162, !163, !164, !165, !166}
!162 = !DILocalVariable(name: "fd", arg: 1, scope: !160, file: !1, line: 120, type: !12)
!163 = !DILocalVariable(name: "array", arg: 2, scope: !160, file: !1, line: 120, type: !61)
!164 = !DILocalVariable(name: "length", arg: 3, scope: !160, file: !1, line: 120, type: !63)
!165 = !DILocalVariable(name: "n_written", scope: !160, file: !1, line: 122, type: !63)
!166 = !DILocalVariable(name: "more_written", scope: !160, file: !1, line: 123, type: !63)
!167 = !DILocation(line: 0, scope: !160)
!168 = !DILocation(line: 134, column: 30, scope: !160)
!169 = !DILocation(line: 134, column: 15, scope: !160)
!170 = !DILocation(line: 135, column: 17, scope: !171)
!171 = distinct !DILexicalBlock(scope: !160, file: !1, line: 135, column: 7)
!172 = !DILocation(line: 135, column: 7, scope: !160)
!173 = !DILocation(line: 136, column: 22, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !1, line: 135, column: 24)
!175 = !DILocation(line: 136, column: 5, scope: !174)
!176 = !DILocation(line: 140, column: 17, scope: !177)
!177 = distinct !DILexicalBlock(scope: !174, file: !1, line: 136, column: 32)
!178 = distinct !{!178, !175, !179, !83, !84}
!179 = !DILocation(line: 141, column: 5, scope: !174)
!180 = !DILocation(line: 137, column: 32, scope: !177)
!181 = !DILocation(line: 138, column: 7, scope: !177)
!182 = !DILocation(line: 137, column: 22, scope: !177)
!183 = !DILocation(line: 139, column: 24, scope: !184)
!184 = distinct !DILexicalBlock(scope: !177, file: !1, line: 139, column: 11)
!185 = !DILocation(line: 139, column: 11, scope: !177)
!186 = !DILocation(line: 134, column: 13, scope: !160)
!187 = !DILocation(line: 143, column: 17, scope: !188)
!188 = distinct !DILexicalBlock(scope: !160, file: !1, line: 143, column: 7)
!189 = !DILocation(line: 143, column: 7, scope: !160)
!190 = !DILocation(line: 144, column: 5, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !1, line: 143, column: 28)
!192 = !DILocation(line: 145, column: 5, scope: !191)
!193 = !DILocation(line: 146, column: 3, scope: !191)
!194 = !DILocation(line: 157, column: 1, scope: !160)
!195 = distinct !DISubprogram(name: "Read_Bytes", scope: !1, file: !1, line: 160, type: !59, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !196)
!196 = !{!197, !198, !199, !200, !201}
!197 = !DILocalVariable(name: "fd", arg: 1, scope: !195, file: !1, line: 160, type: !12)
!198 = !DILocalVariable(name: "array", arg: 2, scope: !195, file: !1, line: 160, type: !61)
!199 = !DILocalVariable(name: "length", arg: 3, scope: !195, file: !1, line: 160, type: !63)
!200 = !DILocalVariable(name: "n_read", scope: !195, file: !1, line: 162, type: !63)
!201 = !DILocalVariable(name: "more_read", scope: !195, file: !1, line: 163, type: !63)
!202 = !DILocation(line: 0, scope: !195)
!203 = !DILocation(line: 164, column: 26, scope: !195)
!204 = !DILocation(line: 164, column: 12, scope: !195)
!205 = !DILocation(line: 165, column: 20, scope: !206)
!206 = distinct !DILexicalBlock(scope: !195, file: !1, line: 165, column: 7)
!207 = !DILocation(line: 170, column: 14, scope: !208)
!208 = distinct !DILexicalBlock(scope: !209, file: !1, line: 166, column: 29)
!209 = distinct !DILexicalBlock(scope: !206, file: !1, line: 165, column: 36)
!210 = !DILocation(line: 166, column: 19, scope: !209)
!211 = !DILocation(line: 166, column: 5, scope: !209)
!212 = distinct !{!212, !211, !213, !83, !84}
!213 = !DILocation(line: 171, column: 5, scope: !209)
!214 = !DILocation(line: 167, column: 28, scope: !208)
!215 = !DILocation(line: 168, column: 10, scope: !208)
!216 = !DILocation(line: 167, column: 19, scope: !208)
!217 = !DILocation(line: 169, column: 27, scope: !218)
!218 = distinct !DILexicalBlock(scope: !208, file: !1, line: 169, column: 11)
!219 = !DILocation(line: 164, column: 10, scope: !195)
!220 = !DILocation(line: 173, column: 14, scope: !221)
!221 = distinct !DILexicalBlock(scope: !195, file: !1, line: 173, column: 7)
!222 = !DILocation(line: 173, column: 7, scope: !195)
!223 = !DILocation(line: 174, column: 5, scope: !224)
!224 = distinct !DILexicalBlock(scope: !221, file: !1, line: 173, column: 25)
!225 = !DILocation(line: 175, column: 5, scope: !224)
!226 = !DILocation(line: 176, column: 3, scope: !224)
!227 = !DILocation(line: 177, column: 1, scope: !195)
!228 = !DISubprogram(name: "read", scope: !101, file: !101, line: 360, type: !229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !37)
!229 = !DISubroutineType(types: !230)
!230 = !{!104, !12, !231, !108}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!232 = distinct !DISubprogram(name: "Read_Shorts", scope: !1, file: !1, line: 180, type: !59, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !233)
!233 = !{!234, !235, !236, !237, !238}
!234 = !DILocalVariable(name: "fd", arg: 1, scope: !232, file: !1, line: 180, type: !12)
!235 = !DILocalVariable(name: "array", arg: 2, scope: !232, file: !1, line: 180, type: !61)
!236 = !DILocalVariable(name: "length", arg: 3, scope: !232, file: !1, line: 180, type: !63)
!237 = !DILocalVariable(name: "n_read", scope: !232, file: !1, line: 182, type: !63)
!238 = !DILocalVariable(name: "more_read", scope: !232, file: !1, line: 183, type: !63)
!239 = !DILocation(line: 0, scope: !232)
!240 = !DILocation(line: 184, column: 26, scope: !232)
!241 = !DILocation(line: 184, column: 12, scope: !232)
!242 = !DILocation(line: 185, column: 20, scope: !243)
!243 = distinct !DILexicalBlock(scope: !232, file: !1, line: 185, column: 7)
!244 = !DILocation(line: 190, column: 14, scope: !245)
!245 = distinct !DILexicalBlock(scope: !246, file: !1, line: 186, column: 29)
!246 = distinct !DILexicalBlock(scope: !243, file: !1, line: 185, column: 36)
!247 = !DILocation(line: 186, column: 19, scope: !246)
!248 = !DILocation(line: 186, column: 5, scope: !246)
!249 = distinct !{!249, !248, !250, !83, !84}
!250 = !DILocation(line: 191, column: 5, scope: !246)
!251 = !DILocation(line: 187, column: 28, scope: !245)
!252 = !DILocation(line: 188, column: 10, scope: !245)
!253 = !DILocation(line: 187, column: 19, scope: !245)
!254 = !DILocation(line: 189, column: 27, scope: !255)
!255 = distinct !DILexicalBlock(scope: !245, file: !1, line: 189, column: 11)
!256 = !DILocation(line: 184, column: 10, scope: !232)
!257 = !DILocation(line: 193, column: 14, scope: !258)
!258 = distinct !DILexicalBlock(scope: !232, file: !1, line: 193, column: 7)
!259 = !DILocation(line: 193, column: 7, scope: !232)
!260 = !DILocation(line: 194, column: 5, scope: !261)
!261 = distinct !DILexicalBlock(scope: !258, file: !1, line: 193, column: 25)
!262 = !DILocation(line: 195, column: 5, scope: !261)
!263 = !DILocation(line: 196, column: 3, scope: !261)
!264 = !DILocation(line: 204, column: 1, scope: !232)
!265 = distinct !DISubprogram(name: "Read_Longs", scope: !1, file: !1, line: 207, type: !59, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !266)
!266 = !{!267, !268, !269, !270, !271}
!267 = !DILocalVariable(name: "fd", arg: 1, scope: !265, file: !1, line: 207, type: !12)
!268 = !DILocalVariable(name: "array", arg: 2, scope: !265, file: !1, line: 207, type: !61)
!269 = !DILocalVariable(name: "length", arg: 3, scope: !265, file: !1, line: 207, type: !63)
!270 = !DILocalVariable(name: "n_read", scope: !265, file: !1, line: 209, type: !63)
!271 = !DILocalVariable(name: "more_read", scope: !265, file: !1, line: 210, type: !63)
!272 = !DILocation(line: 0, scope: !265)
!273 = !DILocation(line: 211, column: 26, scope: !265)
!274 = !DILocation(line: 211, column: 12, scope: !265)
!275 = !DILocation(line: 212, column: 20, scope: !276)
!276 = distinct !DILexicalBlock(scope: !265, file: !1, line: 212, column: 7)
!277 = !DILocation(line: 217, column: 14, scope: !278)
!278 = distinct !DILexicalBlock(scope: !279, file: !1, line: 213, column: 29)
!279 = distinct !DILexicalBlock(scope: !276, file: !1, line: 212, column: 36)
!280 = !DILocation(line: 213, column: 19, scope: !279)
!281 = !DILocation(line: 213, column: 5, scope: !279)
!282 = distinct !{!282, !281, !283, !83, !84}
!283 = !DILocation(line: 218, column: 5, scope: !279)
!284 = !DILocation(line: 214, column: 28, scope: !278)
!285 = !DILocation(line: 215, column: 10, scope: !278)
!286 = !DILocation(line: 214, column: 19, scope: !278)
!287 = !DILocation(line: 216, column: 27, scope: !288)
!288 = distinct !DILexicalBlock(scope: !278, file: !1, line: 216, column: 11)
!289 = !DILocation(line: 211, column: 10, scope: !265)
!290 = !DILocation(line: 220, column: 14, scope: !291)
!291 = distinct !DILexicalBlock(scope: !265, file: !1, line: 220, column: 7)
!292 = !DILocation(line: 220, column: 7, scope: !265)
!293 = !DILocation(line: 221, column: 5, scope: !294)
!294 = distinct !DILexicalBlock(scope: !291, file: !1, line: 220, column: 25)
!295 = !DILocation(line: 222, column: 5, scope: !294)
!296 = !DILocation(line: 223, column: 3, scope: !294)
!297 = !DILocation(line: 234, column: 1, scope: !265)
!298 = !DISubprogram(name: "close", scope: !101, file: !101, line: 353, type: !299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !37)
!299 = !DISubroutineType(types: !300)
!300 = !{!12, !12}
