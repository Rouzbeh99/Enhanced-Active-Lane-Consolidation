; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@EventSet = dso_local global i32 -1, align 4, !dbg !0
@CounterValues = dso_local global [4 x i64] zeroinitializer, align 8, !dbg !11
@EventCodes = dso_local global [4 x i32] [i32 -2147483598, i32 -2147483589, i32 -2147483648, i32 -2147483602], align 4, !dbg !17
@ExecutionTime = dso_local local_unnamed_addr global double 0.000000e+00, align 8, !dbg !20
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Error %d %s:line %d: \0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"test.c\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@a = dso_local local_unnamed_addr global ptr null, align 8, !dbg !23
@b = dso_local local_unnamed_addr global ptr null, align 8, !dbg !25
@c = dso_local local_unnamed_addr global ptr null, align 8, !dbg !27
@cond = dso_local local_unnamed_addr global ptr null, align 8, !dbg !29
@.str.4 = private unnamed_addr constant [16 x i8] c"checksum:  %d \0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"\0ATotal instructions executed: %lld\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Total cycles: %lld\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Total L1 data cache misses: %lld\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Total branch mispredicted: %lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Execution time: %lf ms\0A\00", align 1
@str.10 = private unnamed_addr constant [33 x i8] c"error: failed to allocate memory\00", align 1

; Function Attrs: nounwind uwtable
define dso_local double @getTimeMiliSeconds() local_unnamed_addr #0 !dbg !43 {
entry:
  %ts = alloca %struct.timespec, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #12, !dbg !57
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !47, metadata !DIExpression()), !dbg !58
  %call = call i32 @clock_gettime(i32 noundef 2, ptr noundef nonnull %ts) #12, !dbg !59
  %0 = load i64, ptr %ts, align 8, !dbg !60, !tbaa !61
  %conv = sitofp i64 %0 to double, !dbg !66
  %tv_nsec = getelementptr inbounds %struct.timespec, ptr %ts, i64 0, i32 1, !dbg !67
  %1 = load i64, ptr %tv_nsec, align 8, !dbg !67, !tbaa !68
  %conv1 = sitofp i64 %1 to double, !dbg !69
  %mul2 = fmul double %conv1, 0x3EB0C6F7A0B5ED8D, !dbg !70
  %2 = call double @llvm.fmuladd.f64(double %conv, double 1.000000e+03, double %mul2), !dbg !71
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #12, !dbg !72
  ret double %2, !dbg !73
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare !dbg !74 i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @simple_if_else(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !83 {
entry:
  %ts.i169 = alloca %struct.timespec, align 8
  %ts.i = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata ptr %a, metadata !89, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata ptr %b, metadata !90, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata ptr %c, metadata !91, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata ptr %cond, metadata !92, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i32 %n, metadata !93, metadata !DIExpression()), !dbg !98
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #12, !dbg !99
  call void @llvm.dbg.declare(metadata ptr %ts.i, metadata !47, metadata !DIExpression()) #12, !dbg !101
  %call.i = call i32 @clock_gettime(i32 noundef 2, ptr noundef nonnull %ts.i) #12, !dbg !102
  %0 = load i64, ptr %ts.i, align 8, !dbg !103, !tbaa !61
  %tv_nsec.i = getelementptr inbounds %struct.timespec, ptr %ts.i, i64 0, i32 1, !dbg !104
  %1 = load i64, ptr %tv_nsec.i, align 8, !dbg !104, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #12, !dbg !105
  call void @llvm.dbg.value(metadata double undef, metadata !95, metadata !DIExpression()), !dbg !98
  %2 = load i32, ptr @EventSet, align 4, !dbg !106, !tbaa !108
  %call1 = call i32 @PAPI_start(i32 noundef %2) #12, !dbg !110
  call void @llvm.dbg.value(metadata i32 %call1, metadata !94, metadata !DIExpression()), !dbg !98
  %cmp.not = icmp eq i32 %call1, 0, !dbg !111
  br i1 %cmp.not, label %for.cond.preheader, label %if.then, !dbg !112

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !96, metadata !DIExpression()), !dbg !113
  %cmp3178 = icmp sgt i32 %n, 0, !dbg !114
  br i1 %cmp3178, label %for.body.preheader, label %for.cond.cleanup, !dbg !116

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !114
  %min.iters.check = icmp ult i32 %n, 4, !dbg !116
  br i1 %min.iters.check, label %for.body.preheader262, label %vector.ph, !dbg !116

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292, !dbg !116
  br label %vector.body, !dbg !116

vector.body:                                      ; preds = %pred.store.continue261, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue261 ], !dbg !117
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %pred.store.continue261 ], !dbg !118
  %vec.ind184 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next185, %pred.store.continue261 ], !dbg !122
  %3 = or i64 %index, 1, !dbg !116
  %4 = or i64 %index, 2, !dbg !116
  %5 = or i64 %index, 3, !dbg !116
  %6 = getelementptr inbounds i8, ptr %cond, i64 %index, !dbg !123
  %wide.load = load <4 x i8>, ptr %6, align 1, !dbg !123, !tbaa !124
  %7 = icmp eq <4 x i8> %wide.load, zeroinitializer, !dbg !123
  %8 = getelementptr inbounds i32, ptr %a, i64 %index, !dbg !126
  %9 = getelementptr inbounds i32, ptr %a, i64 %3, !dbg !126
  %10 = getelementptr inbounds i32, ptr %a, i64 %4, !dbg !126
  %11 = getelementptr inbounds i32, ptr %a, i64 %5, !dbg !126
  %12 = getelementptr inbounds i32, ptr %c, i64 %index, !dbg !127
  %13 = getelementptr inbounds i32, ptr %c, i64 %3, !dbg !127
  %14 = getelementptr inbounds i32, ptr %c, i64 %4, !dbg !127
  %15 = getelementptr inbounds i32, ptr %c, i64 %5, !dbg !127
  %16 = xor <4 x i1> %7, <i1 true, i1 true, i1 true, i1 true>, !dbg !128
  %17 = extractelement <4 x i1> %16, i64 0, !dbg !128
  br i1 %17, label %pred.load.if, label %pred.load.continue, !dbg !116

pred.load.if:                                     ; preds = %vector.body
  %18 = load i32, ptr %12, align 4, !dbg !127, !tbaa !108
  %19 = insertelement <4 x i32> poison, i32 %18, i64 0, !dbg !127
  br label %pred.load.continue, !dbg !128

pred.load.continue:                               ; preds = %pred.load.if, %vector.body
  %20 = phi <4 x i32> [ poison, %vector.body ], [ %19, %pred.load.if ], !dbg !127
  %21 = extractelement <4 x i1> %16, i64 1, !dbg !127
  br i1 %21, label %pred.load.if186, label %pred.load.continue187, !dbg !127

pred.load.if186:                                  ; preds = %pred.load.continue
  %22 = load i32, ptr %13, align 4, !dbg !127, !tbaa !108
  %23 = insertelement <4 x i32> %20, i32 %22, i64 1, !dbg !127
  br label %pred.load.continue187, !dbg !127

pred.load.continue187:                            ; preds = %pred.load.if186, %pred.load.continue
  %24 = phi <4 x i32> [ %20, %pred.load.continue ], [ %23, %pred.load.if186 ], !dbg !127
  %25 = extractelement <4 x i1> %16, i64 2, !dbg !127
  br i1 %25, label %pred.load.if188, label %pred.load.continue189, !dbg !127

pred.load.if188:                                  ; preds = %pred.load.continue187
  %26 = load i32, ptr %14, align 4, !dbg !127, !tbaa !108
  %27 = insertelement <4 x i32> %24, i32 %26, i64 2, !dbg !127
  br label %pred.load.continue189, !dbg !127

pred.load.continue189:                            ; preds = %pred.load.if188, %pred.load.continue187
  %28 = phi <4 x i32> [ %24, %pred.load.continue187 ], [ %27, %pred.load.if188 ], !dbg !127
  %29 = extractelement <4 x i1> %16, i64 3, !dbg !127
  br i1 %29, label %pred.load.if190, label %pred.load.continue191, !dbg !127

pred.load.if190:                                  ; preds = %pred.load.continue189
  %30 = load i32, ptr %15, align 4, !dbg !127, !tbaa !108
  %31 = insertelement <4 x i32> %28, i32 %30, i64 3, !dbg !127
  br label %pred.load.continue191, !dbg !127

pred.load.continue191:                            ; preds = %pred.load.if190, %pred.load.continue189
  %32 = phi <4 x i32> [ %28, %pred.load.continue189 ], [ %31, %pred.load.if190 ], !dbg !127
  %33 = getelementptr inbounds i32, ptr %b, i64 %index, !dbg !129
  %34 = getelementptr inbounds i32, ptr %b, i64 %3, !dbg !129
  %35 = getelementptr inbounds i32, ptr %b, i64 %4, !dbg !129
  %36 = getelementptr inbounds i32, ptr %b, i64 %5, !dbg !129
  %37 = extractelement <4 x i1> %16, i64 0, !dbg !129
  br i1 %37, label %pred.load.if192, label %pred.load.continue193, !dbg !127

pred.load.if192:                                  ; preds = %pred.load.continue191
  %38 = load i32, ptr %33, align 4, !dbg !129, !tbaa !108
  %39 = insertelement <4 x i32> poison, i32 %38, i64 0, !dbg !129
  br label %pred.load.continue193, !dbg !129

pred.load.continue193:                            ; preds = %pred.load.if192, %pred.load.continue191
  %40 = phi <4 x i32> [ poison, %pred.load.continue191 ], [ %39, %pred.load.if192 ], !dbg !129
  %41 = extractelement <4 x i1> %16, i64 1, !dbg !129
  br i1 %41, label %pred.load.if194, label %pred.load.continue195, !dbg !129

pred.load.if194:                                  ; preds = %pred.load.continue193
  %42 = load i32, ptr %34, align 4, !dbg !129, !tbaa !108
  %43 = insertelement <4 x i32> %40, i32 %42, i64 1, !dbg !129
  br label %pred.load.continue195, !dbg !129

pred.load.continue195:                            ; preds = %pred.load.if194, %pred.load.continue193
  %44 = phi <4 x i32> [ %40, %pred.load.continue193 ], [ %43, %pred.load.if194 ], !dbg !129
  %45 = extractelement <4 x i1> %16, i64 2, !dbg !129
  br i1 %45, label %pred.load.if196, label %pred.load.continue197, !dbg !129

pred.load.if196:                                  ; preds = %pred.load.continue195
  %46 = load i32, ptr %35, align 4, !dbg !129, !tbaa !108
  %47 = insertelement <4 x i32> %44, i32 %46, i64 2, !dbg !129
  br label %pred.load.continue197, !dbg !129

pred.load.continue197:                            ; preds = %pred.load.if196, %pred.load.continue195
  %48 = phi <4 x i32> [ %44, %pred.load.continue195 ], [ %47, %pred.load.if196 ], !dbg !129
  %49 = extractelement <4 x i1> %16, i64 3, !dbg !129
  br i1 %49, label %pred.load.if198, label %pred.load.continue199, !dbg !129

pred.load.if198:                                  ; preds = %pred.load.continue197
  %50 = load i32, ptr %36, align 4, !dbg !129, !tbaa !108
  %51 = insertelement <4 x i32> %48, i32 %50, i64 3, !dbg !129
  br label %pred.load.continue199, !dbg !129

pred.load.continue199:                            ; preds = %pred.load.if198, %pred.load.continue197
  %52 = phi <4 x i32> [ %48, %pred.load.continue197 ], [ %51, %pred.load.if198 ], !dbg !129
  %53 = mul nsw <4 x i32> %52, %vec.ind, !dbg !118
  %54 = mul <4 x i32> %32, <i32 -2, i32 -2, i32 -2, i32 -2>
  %55 = shl <4 x i32> %vec.ind184, <i32 1, i32 1, i32 1, i32 1>, !dbg !122
  %56 = add <4 x i32> %52, %55, !dbg !122
  %57 = add <4 x i32> %56, %53, !dbg !130
  %58 = add <4 x i32> %57, %54, !dbg !131
  %59 = extractelement <4 x i1> %16, i64 0, !dbg !131
  br i1 %59, label %pred.store.if, label %pred.store.continue, !dbg !129

pred.store.if:                                    ; preds = %pred.load.continue199
  %60 = extractelement <4 x i32> %58, i64 0, !dbg !131
  store i32 %60, ptr %8, align 4, !dbg !131, !tbaa !108
  br label %pred.store.continue, !dbg !131

pred.store.continue:                              ; preds = %pred.store.if, %pred.load.continue199
  %61 = extractelement <4 x i1> %16, i64 1, !dbg !131
  br i1 %61, label %pred.store.if200, label %pred.store.continue201, !dbg !131

pred.store.if200:                                 ; preds = %pred.store.continue
  %62 = extractelement <4 x i32> %58, i64 1, !dbg !131
  store i32 %62, ptr %9, align 4, !dbg !131, !tbaa !108
  br label %pred.store.continue201, !dbg !131

pred.store.continue201:                           ; preds = %pred.store.if200, %pred.store.continue
  %63 = extractelement <4 x i1> %16, i64 2, !dbg !131
  br i1 %63, label %pred.store.if202, label %pred.store.continue203, !dbg !131

pred.store.if202:                                 ; preds = %pred.store.continue201
  %64 = extractelement <4 x i32> %58, i64 2, !dbg !131
  store i32 %64, ptr %10, align 4, !dbg !131, !tbaa !108
  br label %pred.store.continue203, !dbg !131

pred.store.continue203:                           ; preds = %pred.store.if202, %pred.store.continue201
  %65 = extractelement <4 x i1> %16, i64 3, !dbg !131
  br i1 %65, label %pred.store.if204, label %pred.store.continue205, !dbg !131

pred.store.if204:                                 ; preds = %pred.store.continue203
  %66 = extractelement <4 x i32> %58, i64 3, !dbg !131
  store i32 %66, ptr %11, align 4, !dbg !131, !tbaa !108
  br label %pred.store.continue205, !dbg !131

pred.store.continue205:                           ; preds = %pred.store.if204, %pred.store.continue203
  %67 = sub <4 x i32> <i32 -3, i32 -3, i32 -3, i32 -3>, %32, !dbg !132
  %68 = mul <4 x i32> %67, %vec.ind, !dbg !132
  %69 = add <4 x i32> %32, %52
  %70 = sub <4 x i32> %58, %69
  %71 = shl <4 x i32> %70, <i32 1, i32 1, i32 1, i32 1>
  %72 = add <4 x i32> %68, <i32 2, i32 2, i32 2, i32 2>, !dbg !133
  %73 = add <4 x i32> %72, %71, !dbg !134
  %74 = extractelement <4 x i1> %16, i64 0, !dbg !134
  br i1 %74, label %pred.store.if206, label %pred.store.continue207, !dbg !131

pred.store.if206:                                 ; preds = %pred.store.continue205
  %75 = extractelement <4 x i32> %73, i64 0, !dbg !134
  store i32 %75, ptr %33, align 4, !dbg !134, !tbaa !108
  br label %pred.store.continue207, !dbg !134

pred.store.continue207:                           ; preds = %pred.store.if206, %pred.store.continue205
  %76 = extractelement <4 x i1> %16, i64 1, !dbg !134
  br i1 %76, label %pred.store.if208, label %pred.store.continue209, !dbg !134

pred.store.if208:                                 ; preds = %pred.store.continue207
  %77 = extractelement <4 x i32> %73, i64 1, !dbg !134
  store i32 %77, ptr %34, align 4, !dbg !134, !tbaa !108
  br label %pred.store.continue209, !dbg !134

pred.store.continue209:                           ; preds = %pred.store.if208, %pred.store.continue207
  %78 = extractelement <4 x i1> %16, i64 2, !dbg !134
  br i1 %78, label %pred.store.if210, label %pred.store.continue211, !dbg !134

pred.store.if210:                                 ; preds = %pred.store.continue209
  %79 = extractelement <4 x i32> %73, i64 2, !dbg !134
  store i32 %79, ptr %35, align 4, !dbg !134, !tbaa !108
  br label %pred.store.continue211, !dbg !134

pred.store.continue211:                           ; preds = %pred.store.if210, %pred.store.continue209
  %80 = extractelement <4 x i1> %16, i64 3, !dbg !134
  br i1 %80, label %pred.store.if212, label %pred.store.continue213, !dbg !134

pred.store.if212:                                 ; preds = %pred.store.continue211
  %81 = extractelement <4 x i32> %73, i64 3, !dbg !134
  store i32 %81, ptr %36, align 4, !dbg !134, !tbaa !108
  br label %pred.store.continue213, !dbg !134

pred.store.continue213:                           ; preds = %pred.store.if212, %pred.store.continue211
  %82 = add nsw <4 x i32> %73, %58, !dbg !135
  %83 = sub nsw <4 x i32> %32, %73, !dbg !136
  %84 = shl nsw <4 x i32> %83, <i32 1, i32 1, i32 1, i32 1>, !dbg !136
  %85 = mul nsw <4 x i32> %vec.ind, %vec.ind, !dbg !137
  %86 = add nsw <4 x i32> %84, %85, !dbg !138
  %87 = mul <4 x i32> %86, <i32 -3, i32 -3, i32 -3, i32 -3>, !dbg !139
  %88 = sub <4 x i32> %82, %vec.ind, !dbg !140
  %89 = shl <4 x i32> %88, <i32 1, i32 1, i32 1, i32 1>, !dbg !140
  %90 = add <4 x i32> %89, %87, !dbg !141
  %91 = extractelement <4 x i1> %16, i64 0, !dbg !141
  br i1 %91, label %pred.store.if214, label %pred.store.continue215, !dbg !134

pred.store.if214:                                 ; preds = %pred.store.continue213
  %92 = extractelement <4 x i32> %90, i64 0, !dbg !141
  store i32 %92, ptr %12, align 4, !dbg !141, !tbaa !108
  br label %pred.store.continue215, !dbg !141

pred.store.continue215:                           ; preds = %pred.store.if214, %pred.store.continue213
  %93 = extractelement <4 x i1> %16, i64 1, !dbg !141
  br i1 %93, label %pred.store.if216, label %pred.store.continue217, !dbg !141

pred.store.if216:                                 ; preds = %pred.store.continue215
  %94 = extractelement <4 x i32> %90, i64 1, !dbg !141
  store i32 %94, ptr %13, align 4, !dbg !141, !tbaa !108
  br label %pred.store.continue217, !dbg !141

pred.store.continue217:                           ; preds = %pred.store.if216, %pred.store.continue215
  %95 = extractelement <4 x i1> %16, i64 2, !dbg !141
  br i1 %95, label %pred.store.if218, label %pred.store.continue219, !dbg !141

pred.store.if218:                                 ; preds = %pred.store.continue217
  %96 = extractelement <4 x i32> %90, i64 2, !dbg !141
  store i32 %96, ptr %14, align 4, !dbg !141, !tbaa !108
  br label %pred.store.continue219, !dbg !141

pred.store.continue219:                           ; preds = %pred.store.if218, %pred.store.continue217
  %97 = extractelement <4 x i1> %16, i64 3, !dbg !141
  br i1 %97, label %pred.store.if220, label %pred.store.continue221, !dbg !141

pred.store.if220:                                 ; preds = %pred.store.continue219
  %98 = extractelement <4 x i32> %90, i64 3, !dbg !141
  store i32 %98, ptr %15, align 4, !dbg !141, !tbaa !108
  br label %pred.store.continue221, !dbg !141

pred.store.continue221:                           ; preds = %pred.store.if220, %pred.store.continue219
  %99 = extractelement <4 x i1> %7, i64 0, !dbg !141
  br i1 %99, label %pred.load.if222, label %pred.load.continue223, !dbg !141

pred.load.if222:                                  ; preds = %pred.store.continue221
  %100 = load i32, ptr %8, align 4, !dbg !142, !tbaa !108
  %101 = insertelement <4 x i32> poison, i32 %100, i64 0, !dbg !142
  br label %pred.load.continue223, !dbg !141

pred.load.continue223:                            ; preds = %pred.load.if222, %pred.store.continue221
  %102 = phi <4 x i32> [ poison, %pred.store.continue221 ], [ %101, %pred.load.if222 ], !dbg !142
  %103 = extractelement <4 x i1> %7, i64 1, !dbg !142
  br i1 %103, label %pred.load.if224, label %pred.load.continue225, !dbg !142

pred.load.if224:                                  ; preds = %pred.load.continue223
  %104 = load i32, ptr %9, align 4, !dbg !142, !tbaa !108
  %105 = insertelement <4 x i32> %102, i32 %104, i64 1, !dbg !142
  br label %pred.load.continue225, !dbg !142

pred.load.continue225:                            ; preds = %pred.load.if224, %pred.load.continue223
  %106 = phi <4 x i32> [ %102, %pred.load.continue223 ], [ %105, %pred.load.if224 ], !dbg !142
  %107 = extractelement <4 x i1> %7, i64 2, !dbg !142
  br i1 %107, label %pred.load.if226, label %pred.load.continue227, !dbg !142

pred.load.if226:                                  ; preds = %pred.load.continue225
  %108 = load i32, ptr %10, align 4, !dbg !142, !tbaa !108
  %109 = insertelement <4 x i32> %106, i32 %108, i64 2, !dbg !142
  br label %pred.load.continue227, !dbg !142

pred.load.continue227:                            ; preds = %pred.load.if226, %pred.load.continue225
  %110 = phi <4 x i32> [ %106, %pred.load.continue225 ], [ %109, %pred.load.if226 ], !dbg !142
  %111 = extractelement <4 x i1> %7, i64 3, !dbg !142
  br i1 %111, label %pred.load.if228, label %pred.load.continue229, !dbg !142

pred.load.if228:                                  ; preds = %pred.load.continue227
  %112 = load i32, ptr %11, align 4, !dbg !142, !tbaa !108
  %113 = insertelement <4 x i32> %110, i32 %112, i64 3, !dbg !142
  br label %pred.load.continue229, !dbg !142

pred.load.continue229:                            ; preds = %pred.load.if228, %pred.load.continue227
  %114 = phi <4 x i32> [ %110, %pred.load.continue227 ], [ %113, %pred.load.if228 ], !dbg !142
  %115 = mul nsw <4 x i32> %114, <i32 3, i32 3, i32 3, i32 3>, !dbg !144
  %116 = getelementptr inbounds i32, ptr %c, i64 %index, !dbg !145
  %117 = getelementptr inbounds i32, ptr %c, i64 %3, !dbg !145
  %118 = getelementptr inbounds i32, ptr %c, i64 %4, !dbg !145
  %119 = getelementptr inbounds i32, ptr %c, i64 %5, !dbg !145
  %120 = extractelement <4 x i1> %7, i64 0, !dbg !145
  br i1 %120, label %pred.load.if230, label %pred.load.continue231, !dbg !142

pred.load.if230:                                  ; preds = %pred.load.continue229
  %121 = load i32, ptr %116, align 4, !dbg !145, !tbaa !108
  %122 = insertelement <4 x i32> poison, i32 %121, i64 0, !dbg !145
  br label %pred.load.continue231, !dbg !145

pred.load.continue231:                            ; preds = %pred.load.if230, %pred.load.continue229
  %123 = phi <4 x i32> [ poison, %pred.load.continue229 ], [ %122, %pred.load.if230 ], !dbg !145
  %124 = extractelement <4 x i1> %7, i64 1, !dbg !145
  br i1 %124, label %pred.load.if232, label %pred.load.continue233, !dbg !145

pred.load.if232:                                  ; preds = %pred.load.continue231
  %125 = load i32, ptr %117, align 4, !dbg !145, !tbaa !108
  %126 = insertelement <4 x i32> %123, i32 %125, i64 1, !dbg !145
  br label %pred.load.continue233, !dbg !145

pred.load.continue233:                            ; preds = %pred.load.if232, %pred.load.continue231
  %127 = phi <4 x i32> [ %123, %pred.load.continue231 ], [ %126, %pred.load.if232 ], !dbg !145
  %128 = extractelement <4 x i1> %7, i64 2, !dbg !145
  br i1 %128, label %pred.load.if234, label %pred.load.continue235, !dbg !145

pred.load.if234:                                  ; preds = %pred.load.continue233
  %129 = load i32, ptr %118, align 4, !dbg !145, !tbaa !108
  %130 = insertelement <4 x i32> %127, i32 %129, i64 2, !dbg !145
  br label %pred.load.continue235, !dbg !145

pred.load.continue235:                            ; preds = %pred.load.if234, %pred.load.continue233
  %131 = phi <4 x i32> [ %127, %pred.load.continue233 ], [ %130, %pred.load.if234 ], !dbg !145
  %132 = extractelement <4 x i1> %7, i64 3, !dbg !145
  br i1 %132, label %pred.load.if236, label %pred.load.continue237, !dbg !145

pred.load.if236:                                  ; preds = %pred.load.continue235
  %133 = load i32, ptr %119, align 4, !dbg !145, !tbaa !108
  %134 = insertelement <4 x i32> %131, i32 %133, i64 3, !dbg !145
  br label %pred.load.continue237, !dbg !145

pred.load.continue237:                            ; preds = %pred.load.if236, %pred.load.continue235
  %135 = phi <4 x i32> [ %131, %pred.load.continue235 ], [ %134, %pred.load.if236 ], !dbg !145
  %136 = sub nsw <4 x i32> %115, %135, !dbg !146
  %137 = extractelement <4 x i1> %7, i64 0, !dbg !146
  br i1 %137, label %pred.store.if238, label %pred.store.continue239, !dbg !145

pred.store.if238:                                 ; preds = %pred.load.continue237
  %138 = getelementptr inbounds i32, ptr %b, i64 %index, !dbg !147
  %139 = extractelement <4 x i32> %136, i64 0, !dbg !148
  store i32 %139, ptr %138, align 4, !dbg !148, !tbaa !108
  br label %pred.store.continue239, !dbg !146

pred.store.continue239:                           ; preds = %pred.store.if238, %pred.load.continue237
  %140 = extractelement <4 x i1> %7, i64 1, !dbg !148
  br i1 %140, label %pred.store.if240, label %pred.store.continue241, !dbg !148

pred.store.if240:                                 ; preds = %pred.store.continue239
  %141 = getelementptr inbounds i32, ptr %b, i64 %3, !dbg !147
  %142 = extractelement <4 x i32> %136, i64 1, !dbg !148
  store i32 %142, ptr %141, align 4, !dbg !148, !tbaa !108
  br label %pred.store.continue241, !dbg !148

pred.store.continue241:                           ; preds = %pred.store.if240, %pred.store.continue239
  %143 = extractelement <4 x i1> %7, i64 2, !dbg !148
  br i1 %143, label %pred.store.if242, label %pred.store.continue243, !dbg !148

pred.store.if242:                                 ; preds = %pred.store.continue241
  %144 = getelementptr inbounds i32, ptr %b, i64 %4, !dbg !147
  %145 = extractelement <4 x i32> %136, i64 2, !dbg !148
  store i32 %145, ptr %144, align 4, !dbg !148, !tbaa !108
  br label %pred.store.continue243, !dbg !148

pred.store.continue243:                           ; preds = %pred.store.if242, %pred.store.continue241
  %146 = extractelement <4 x i1> %7, i64 3, !dbg !148
  br i1 %146, label %pred.store.if244, label %pred.store.continue245, !dbg !148

pred.store.if244:                                 ; preds = %pred.store.continue243
  %147 = getelementptr inbounds i32, ptr %b, i64 %5, !dbg !147
  %148 = extractelement <4 x i32> %136, i64 3, !dbg !148
  store i32 %148, ptr %147, align 4, !dbg !148, !tbaa !108
  br label %pred.store.continue245, !dbg !148

pred.store.continue245:                           ; preds = %pred.store.if244, %pred.store.continue243
  %149 = mul <4 x i32> %136, <i32 -2, i32 -2, i32 -2, i32 -2>, !dbg !149
  %150 = add <4 x i32> %114, <i32 -4, i32 -4, i32 -4, i32 -4>, !dbg !150
  %151 = add <4 x i32> %150, %149, !dbg !151
  %152 = extractelement <4 x i1> %7, i64 0, !dbg !151
  br i1 %152, label %pred.store.if246, label %pred.store.continue247, !dbg !148

pred.store.if246:                                 ; preds = %pred.store.continue245
  %153 = extractelement <4 x i32> %151, i64 0, !dbg !151
  store i32 %153, ptr %8, align 4, !dbg !151, !tbaa !108
  br label %pred.store.continue247, !dbg !151

pred.store.continue247:                           ; preds = %pred.store.if246, %pred.store.continue245
  %154 = extractelement <4 x i1> %7, i64 1, !dbg !151
  br i1 %154, label %pred.store.if248, label %pred.store.continue249, !dbg !151

pred.store.if248:                                 ; preds = %pred.store.continue247
  %155 = extractelement <4 x i32> %151, i64 1, !dbg !151
  store i32 %155, ptr %9, align 4, !dbg !151, !tbaa !108
  br label %pred.store.continue249, !dbg !151

pred.store.continue249:                           ; preds = %pred.store.if248, %pred.store.continue247
  %156 = extractelement <4 x i1> %7, i64 2, !dbg !151
  br i1 %156, label %pred.store.if250, label %pred.store.continue251, !dbg !151

pred.store.if250:                                 ; preds = %pred.store.continue249
  %157 = extractelement <4 x i32> %151, i64 2, !dbg !151
  store i32 %157, ptr %10, align 4, !dbg !151, !tbaa !108
  br label %pred.store.continue251, !dbg !151

pred.store.continue251:                           ; preds = %pred.store.if250, %pred.store.continue249
  %158 = extractelement <4 x i1> %7, i64 3, !dbg !151
  br i1 %158, label %pred.store.if252, label %pred.store.continue253, !dbg !151

pred.store.if252:                                 ; preds = %pred.store.continue251
  %159 = extractelement <4 x i32> %151, i64 3, !dbg !151
  store i32 %159, ptr %11, align 4, !dbg !151, !tbaa !108
  br label %pred.store.continue253, !dbg !151

pred.store.continue253:                           ; preds = %pred.store.if252, %pred.store.continue251
  %160 = mul nsw <4 x i32> %151, <i32 7, i32 7, i32 7, i32 7>, !dbg !152
  %161 = add nsw <4 x i32> %160, <i32 2, i32 2, i32 2, i32 2>, !dbg !153
  %162 = extractelement <4 x i1> %7, i64 0, !dbg !153
  br i1 %162, label %pred.store.if254, label %pred.store.continue255, !dbg !151

pred.store.if254:                                 ; preds = %pred.store.continue253
  %163 = extractelement <4 x i32> %161, i64 0, !dbg !154
  store i32 %163, ptr %116, align 4, !dbg !154, !tbaa !108
  br label %pred.store.continue255, !dbg !153

pred.store.continue255:                           ; preds = %pred.store.if254, %pred.store.continue253
  %164 = extractelement <4 x i1> %7, i64 1, !dbg !154
  br i1 %164, label %pred.store.if256, label %pred.store.continue257, !dbg !154

pred.store.if256:                                 ; preds = %pred.store.continue255
  %165 = extractelement <4 x i32> %161, i64 1, !dbg !154
  store i32 %165, ptr %117, align 4, !dbg !154, !tbaa !108
  br label %pred.store.continue257, !dbg !154

pred.store.continue257:                           ; preds = %pred.store.if256, %pred.store.continue255
  %166 = extractelement <4 x i1> %7, i64 2, !dbg !154
  br i1 %166, label %pred.store.if258, label %pred.store.continue259, !dbg !154

pred.store.if258:                                 ; preds = %pred.store.continue257
  %167 = extractelement <4 x i32> %161, i64 2, !dbg !154
  store i32 %167, ptr %118, align 4, !dbg !154, !tbaa !108
  br label %pred.store.continue259, !dbg !154

pred.store.continue259:                           ; preds = %pred.store.if258, %pred.store.continue257
  %168 = extractelement <4 x i1> %7, i64 3, !dbg !154
  br i1 %168, label %pred.store.if260, label %pred.store.continue261, !dbg !154

pred.store.if260:                                 ; preds = %pred.store.continue259
  %169 = extractelement <4 x i32> %161, i64 3, !dbg !154
  store i32 %169, ptr %119, align 4, !dbg !154, !tbaa !108
  br label %pred.store.continue261, !dbg !154

pred.store.continue261:                           ; preds = %pred.store.if260, %pred.store.continue259
  %index.next = add nuw i64 %index, 4, !dbg !117
  %vec.ind.next = add <4 x i32> %vec.ind, <i32 4, i32 4, i32 4, i32 4>, !dbg !118
  %vec.ind.next185 = add <4 x i32> %vec.ind184, <i32 4, i32 4, i32 4, i32 4>, !dbg !122
  %170 = icmp eq i64 %index.next, %n.vec, !dbg !117
  br i1 %170, label %middle.block, label %vector.body, !dbg !117, !llvm.loop !155

middle.block:                                     ; preds = %pred.store.continue261
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count, !dbg !116
  br i1 %cmp.n, label %for.cond.cleanup, label %for.body.preheader262, !dbg !116

for.body.preheader262:                            ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  br label %for.body, !dbg !116

if.then:                                          ; preds = %entry
  %171 = load ptr, ptr @stderr, align 8, !dbg !159, !tbaa !161
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %171, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 65) #13, !dbg !159
  call void @exit(i32 noundef %call1) #14, !dbg !159
  unreachable, !dbg !159

for.cond.cleanup:                                 ; preds = %for.inc, %middle.block, %for.cond.preheader
  %172 = load i32, ptr @EventSet, align 4, !dbg !163, !tbaa !108
  %call98 = call i32 @PAPI_stop(i32 noundef %172, ptr noundef nonnull @CounterValues) #12, !dbg !165
  call void @llvm.dbg.value(metadata i32 %call98, metadata !94, metadata !DIExpression()), !dbg !98
  %cmp99.not = icmp eq i32 %call98, 0, !dbg !166
  br i1 %cmp99.not, label %if.end102, label %if.then100, !dbg !167

for.body:                                         ; preds = %for.body.preheader262, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %indvars.iv.ph, %for.body.preheader262 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !96, metadata !DIExpression()), !dbg !113
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !123
  %173 = load i8, ptr %arrayidx, align 1, !dbg !123, !tbaa !124, !range !168
  %tobool.not = icmp eq i8 %173, 0, !dbg !123
  %arrayidx73 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !126
  br i1 %tobool.not, label %if.else, label %if.then4, !dbg !128

if.then4:                                         ; preds = %for.body
  %arrayidx8 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !127
  %174 = load i32, ptr %arrayidx8, align 4, !dbg !127, !tbaa !108
  %arrayidx11 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !129
  %175 = load i32, ptr %arrayidx11, align 4, !dbg !129, !tbaa !108
  %176 = trunc i64 %indvars.iv to i32, !dbg !118
  %mul21 = mul nsw i32 %175, %176, !dbg !118
  %.neg = mul i32 %174, -2
  %indvars.iv.tr = trunc i64 %indvars.iv to i32, !dbg !122
  %177 = shl i32 %indvars.iv.tr, 1, !dbg !122
  %sub15 = add i32 %175, %177, !dbg !122
  %add = add i32 %sub15, %mul21, !dbg !130
  %add25 = add i32 %add, %.neg, !dbg !131
  store i32 %add25, ptr %arrayidx73, align 4, !dbg !131, !tbaa !108
  %mul43168.neg = sub i32 -3, %174, !dbg !132
  %add44.neg181 = mul i32 %mul43168.neg, %176, !dbg !132
  %178 = add i32 %174, %175
  %reass.add176 = sub i32 %add25, %178
  %reass.mul177 = shl i32 %reass.add176, 1
  %add37 = add i32 %add44.neg181, 2, !dbg !133
  %sub47 = add i32 %add37, %reass.mul177, !dbg !134
  store i32 %sub47, ptr %arrayidx11, align 4, !dbg !134, !tbaa !108
  %179 = add nsw i32 %sub47, %add25, !dbg !135
  %180 = sub nsw i32 %174, %sub47, !dbg !136
  %sub61 = shl nsw i32 %180, 1, !dbg !136
  %mul62 = mul nsw i32 %176, %176, !dbg !137
  %add63 = add nsw i32 %sub61, %mul62, !dbg !138
  %mul64.neg = mul i32 %add63, -3, !dbg !139
  %181 = sub i32 %179, %176, !dbg !140
  %sub65 = shl i32 %181, 1, !dbg !140
  %sub71 = add i32 %sub65, %mul64.neg, !dbg !141
  store i32 %sub71, ptr %arrayidx8, align 4, !dbg !141, !tbaa !108
  br label %for.inc, !dbg !169

if.else:                                          ; preds = %for.body
  %182 = load i32, ptr %arrayidx73, align 4, !dbg !142, !tbaa !108
  %mul74 = mul nsw i32 %182, 3, !dbg !144
  %arrayidx76 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !145
  %183 = load i32, ptr %arrayidx76, align 4, !dbg !145, !tbaa !108
  %sub77 = sub nsw i32 %mul74, %183, !dbg !146
  %arrayidx79 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !147
  store i32 %sub77, ptr %arrayidx79, align 4, !dbg !148, !tbaa !108
  %mul82.neg = mul i32 %sub77, -2, !dbg !149
  %add83.neg = add i32 %182, -4, !dbg !150
  %sub86 = add i32 %add83.neg, %mul82.neg, !dbg !151
  store i32 %sub86, ptr %arrayidx73, align 4, !dbg !151, !tbaa !108
  %add93 = mul nsw i32 %sub86, 7, !dbg !152
  %add94 = add nsw i32 %add93, 2, !dbg !153
  store i32 %add94, ptr %arrayidx76, align 4, !dbg !154, !tbaa !108
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %if.else
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !117
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !96, metadata !DIExpression()), !dbg !113
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !114
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !116, !llvm.loop !170

if.then100:                                       ; preds = %for.cond.cleanup
  %184 = load ptr, ptr @stderr, align 8, !dbg !172, !tbaa !161
  %call101 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %184, ptr noundef nonnull @.str, i32 noundef %call98, ptr noundef nonnull @.str.1, i32 noundef 86) #13, !dbg !172
  call void @exit(i32 noundef %call98) #14, !dbg !172
  unreachable, !dbg !172

if.end102:                                        ; preds = %for.cond.cleanup
  %conv.i = sitofp i64 %0 to double, !dbg !174
  %conv1.i = sitofp i64 %1 to double, !dbg !175
  %mul2.i = fmul double %conv1.i, 0x3EB0C6F7A0B5ED8D, !dbg !176
  %185 = call double @llvm.fmuladd.f64(double %conv.i, double 1.000000e+03, double %mul2.i) #12, !dbg !177
  call void @llvm.dbg.value(metadata double %185, metadata !95, metadata !DIExpression()), !dbg !98
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i169) #12, !dbg !178
  call void @llvm.dbg.declare(metadata ptr %ts.i169, metadata !47, metadata !DIExpression()) #12, !dbg !180
  %call.i170 = call i32 @clock_gettime(i32 noundef 2, ptr noundef nonnull %ts.i169) #12, !dbg !181
  %186 = load i64, ptr %ts.i169, align 8, !dbg !182, !tbaa !61
  %conv.i171 = sitofp i64 %186 to double, !dbg !183
  %tv_nsec.i172 = getelementptr inbounds %struct.timespec, ptr %ts.i169, i64 0, i32 1, !dbg !184
  %187 = load i64, ptr %tv_nsec.i172, align 8, !dbg !184, !tbaa !68
  %conv1.i173 = sitofp i64 %187 to double, !dbg !185
  %mul2.i174 = fmul double %conv1.i173, 0x3EB0C6F7A0B5ED8D, !dbg !186
  %188 = call double @llvm.fmuladd.f64(double %conv.i171, double 1.000000e+03, double %mul2.i174) #12, !dbg !187
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i169) #12, !dbg !188
  %sub104 = fsub double %188, %185, !dbg !189
  store double %sub104, ptr @ExecutionTime, align 8, !dbg !190, !tbaa !191
  ret void, !dbg !193
}

declare !dbg !194 i32 @PAPI_start(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare !dbg !198 i32 @PAPI_stop(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #0 !dbg !202 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !206, metadata !DIExpression()), !dbg !208
  %conv = sext i32 %n to i64, !dbg !209
  %mul = shl nsw i64 %conv, 2, !dbg !210
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #15, !dbg !211
  call void @llvm.dbg.value(metadata ptr %call, metadata !207, metadata !DIExpression()), !dbg !208
  %cmp = icmp eq ptr %call, null, !dbg !212
  br i1 %cmp, label %if.then, label %if.end, !dbg !214

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !215
  tail call void @exit(i32 noundef 1) #14, !dbg !217
  unreachable, !dbg !217

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !218
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #0 !dbg !219 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !223, metadata !DIExpression()), !dbg !225
  %conv = sext i32 %n to i64, !dbg !226
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #15, !dbg !227
  call void @llvm.dbg.value(metadata ptr %call, metadata !224, metadata !DIExpression()), !dbg !225
  %cmp = icmp eq ptr %call, null, !dbg !228
  br i1 %cmp, label %if.then, label %if.end, !dbg !230

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !231
  tail call void @exit(i32 noundef 1) #14, !dbg !233
  unreachable, !dbg !233

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !234
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !235 {
entry:
  %errstring = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %errstring) #12, !dbg !251
  call void @llvm.dbg.declare(metadata ptr %errstring, metadata !240, metadata !DIExpression()), !dbg !252
  %call = tail call i32 @PAPI_library_init(i32 noundef 117440512) #12, !dbg !253
  %cmp.not = icmp eq i32 %call, 117440512, !dbg !255
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !256

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !257, !tbaa !161
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %errstring) #13, !dbg !259
  call void @exit(i32 noundef 1) #14, !dbg !260
  unreachable, !dbg !260

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @PAPI_create_eventset(ptr noundef nonnull @EventSet) #12, !dbg !261
  call void @llvm.dbg.value(metadata i32 %call2, metadata !239, metadata !DIExpression()), !dbg !263
  %cmp3.not = icmp eq i32 %call2, 0, !dbg !264
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !265

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !266, !tbaa !161
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call2, ptr noundef nonnull @.str.1, i32 noundef 301) #13, !dbg !266
  tail call void @exit(i32 noundef %call2) #14, !dbg !266
  unreachable, !dbg !266

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr @EventSet, align 4, !dbg !268, !tbaa !108
  %call7 = tail call i32 @PAPI_add_events(i32 noundef %2, ptr noundef nonnull @EventCodes, i32 noundef 4) #12, !dbg !270
  call void @llvm.dbg.value(metadata i32 %call7, metadata !239, metadata !DIExpression()), !dbg !263
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !271
  br i1 %cmp8.not, label %if.end11, label %if.then9, !dbg !272

if.then9:                                         ; preds = %if.end6
  %3 = load ptr, ptr @stderr, align 8, !dbg !273, !tbaa !161
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call7, ptr noundef nonnull @.str.1, i32 noundef 304) #13, !dbg !273
  tail call void @exit(i32 noundef %call7) #14, !dbg !273
  unreachable, !dbg !273

if.end11:                                         ; preds = %if.end6
  call void @llvm.dbg.value(metadata i32 5000000, metadata !245, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 5000000, metadata !206, metadata !DIExpression()) #12, !dbg !275
  %call.i = tail call noalias dereferenceable_or_null(20000000) ptr @malloc(i64 noundef 20000000) #15, !dbg !277
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !207, metadata !DIExpression()) #12, !dbg !275
  %cmp.i = icmp eq ptr %call.i, null, !dbg !278
  br i1 %cmp.i, label %if.then.i, label %checked_malloc_int_array.exit, !dbg !279

if.then.i:                                        ; preds = %if.end11
  %puts.i = tail call i32 @puts(ptr nonnull @str.10) #12, !dbg !280
  tail call void @exit(i32 noundef 1) #14, !dbg !281
  unreachable, !dbg !281

checked_malloc_int_array.exit:                    ; preds = %if.end11
  store ptr %call.i, ptr @a, align 8, !dbg !282, !tbaa !161
  call void @llvm.dbg.value(metadata i32 5000000, metadata !206, metadata !DIExpression()) #12, !dbg !283
  %call.i80 = tail call noalias dereferenceable_or_null(20000000) ptr @malloc(i64 noundef 20000000) #15, !dbg !285
  call void @llvm.dbg.value(metadata ptr %call.i80, metadata !207, metadata !DIExpression()) #12, !dbg !283
  %cmp.i81 = icmp eq ptr %call.i80, null, !dbg !286
  br i1 %cmp.i81, label %if.then.i83, label %checked_malloc_int_array.exit84, !dbg !287

if.then.i83:                                      ; preds = %checked_malloc_int_array.exit
  %puts.i82 = tail call i32 @puts(ptr nonnull @str.10) #12, !dbg !288
  tail call void @exit(i32 noundef 1) #14, !dbg !289
  unreachable, !dbg !289

checked_malloc_int_array.exit84:                  ; preds = %checked_malloc_int_array.exit
  store ptr %call.i80, ptr @b, align 8, !dbg !290, !tbaa !161
  call void @llvm.dbg.value(metadata i32 5000000, metadata !206, metadata !DIExpression()) #12, !dbg !291
  %call.i85 = tail call noalias dereferenceable_or_null(20000000) ptr @malloc(i64 noundef 20000000) #15, !dbg !293
  call void @llvm.dbg.value(metadata ptr %call.i85, metadata !207, metadata !DIExpression()) #12, !dbg !291
  %cmp.i86 = icmp eq ptr %call.i85, null, !dbg !294
  br i1 %cmp.i86, label %if.then.i88, label %checked_malloc_int_array.exit89, !dbg !295

if.then.i88:                                      ; preds = %checked_malloc_int_array.exit84
  %puts.i87 = tail call i32 @puts(ptr nonnull @str.10) #12, !dbg !296
  tail call void @exit(i32 noundef 1) #14, !dbg !297
  unreachable, !dbg !297

checked_malloc_int_array.exit89:                  ; preds = %checked_malloc_int_array.exit84
  store ptr %call.i85, ptr @c, align 8, !dbg !298, !tbaa !161
  call void @llvm.dbg.value(metadata i32 5000000, metadata !223, metadata !DIExpression()) #12, !dbg !299
  %call.i90 = tail call noalias dereferenceable_or_null(5000000) ptr @malloc(i64 noundef 5000000) #15, !dbg !301
  call void @llvm.dbg.value(metadata ptr %call.i90, metadata !224, metadata !DIExpression()) #12, !dbg !299
  %cmp.i91 = icmp eq ptr %call.i90, null, !dbg !302
  br i1 %cmp.i91, label %if.then.i93, label %checked_malloc_bool_array.exit, !dbg !303

if.then.i93:                                      ; preds = %checked_malloc_int_array.exit89
  %puts.i92 = tail call i32 @puts(ptr nonnull @str.10) #12, !dbg !304
  tail call void @exit(i32 noundef 1) #14, !dbg !305
  unreachable, !dbg !305

checked_malloc_bool_array.exit:                   ; preds = %checked_malloc_int_array.exit89
  store ptr %call.i90, ptr @cond, align 8, !dbg !306, !tbaa !161
  store i8 0, ptr %call.i90, align 1, !dbg !307, !tbaa !124
  %call16 = tail call i64 @time(ptr noundef null) #12, !dbg !308
  %conv = trunc i64 %call16 to i32, !dbg !308
  tail call void @srand(i32 noundef %conv) #12, !dbg !309
  call void @llvm.dbg.value(metadata i32 1, metadata !246, metadata !DIExpression()), !dbg !310
  %4 = load ptr, ptr @a, align 8, !tbaa !161
  %5 = load ptr, ptr @b, align 8, !tbaa !161
  %6 = load ptr, ptr @c, align 8, !tbaa !161
  %7 = load ptr, ptr @cond, align 8, !tbaa !161
  call void @llvm.dbg.value(metadata i32 1, metadata !246, metadata !DIExpression()), !dbg !310
  %uglygep = getelementptr i8, ptr %4, i64 4, !dbg !311
  %uglygep102 = getelementptr i8, ptr %4, i64 20000000, !dbg !311
  %uglygep103 = getelementptr i8, ptr %5, i64 4, !dbg !311
  %uglygep104 = getelementptr i8, ptr %5, i64 20000000, !dbg !311
  %uglygep105 = getelementptr i8, ptr %6, i64 4, !dbg !311
  %uglygep106 = getelementptr i8, ptr %6, i64 20000000, !dbg !311
  %bound0 = icmp ult ptr %uglygep, %uglygep104, !dbg !311
  %bound1 = icmp ult ptr %uglygep103, %uglygep102, !dbg !311
  %found.conflict = and i1 %bound0, %bound1, !dbg !311
  %bound0107 = icmp ult ptr %uglygep, %uglygep106, !dbg !311
  %bound1108 = icmp ult ptr %uglygep105, %uglygep102, !dbg !311
  %found.conflict109 = and i1 %bound0107, %bound1108, !dbg !311
  %conflict.rdx = or i1 %found.conflict, %found.conflict109, !dbg !311
  %bound0110 = icmp ult ptr %uglygep103, %uglygep106, !dbg !311
  %bound1111 = icmp ult ptr %uglygep105, %uglygep104, !dbg !311
  %found.conflict112 = and i1 %bound0110, %bound1111, !dbg !311
  %conflict.rdx113 = or i1 %conflict.rdx, %found.conflict112, !dbg !311
  br i1 %conflict.rdx113, label %for.body.preheader, label %vector.body, !dbg !311

for.body.preheader:                               ; preds = %vector.body, %checked_malloc_bool_array.exit
  %indvars.iv.ph = phi i64 [ 1, %checked_malloc_bool_array.exit ], [ 4999997, %vector.body ]
  br label %for.body, !dbg !311

vector.body:                                      ; preds = %checked_malloc_bool_array.exit, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %checked_malloc_bool_array.exit ]
  %vec.ind = phi <4 x i32> [ %vec.ind.next, %vector.body ], [ <i32 1, i32 2, i32 3, i32 4>, %checked_malloc_bool_array.exit ], !dbg !312
  %offset.idx = or i64 %index, 1, !dbg !311
  %8 = getelementptr inbounds i32, ptr %4, i64 %offset.idx, !dbg !315
  store <4 x i32> %vec.ind, ptr %8, align 4, !dbg !312, !tbaa !108, !alias.scope !316, !noalias !319
  %9 = getelementptr inbounds i32, ptr %5, i64 %offset.idx, !dbg !322
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %9, align 4, !dbg !323, !tbaa !108, !alias.scope !324, !noalias !325
  %10 = getelementptr inbounds i32, ptr %6, i64 %offset.idx, !dbg !326
  store <4 x i32> zeroinitializer, ptr %10, align 4, !dbg !327, !tbaa !108, !alias.scope !325
  %11 = urem <4 x i32> %vec.ind, <i32 10, i32 10, i32 10, i32 10>, !dbg !328
  %12 = icmp eq <4 x i32> %11, zeroinitializer, !dbg !329
  %13 = getelementptr inbounds i8, ptr %7, i64 %offset.idx, !dbg !330
  %14 = zext <4 x i1> %12 to <4 x i8>, !dbg !331
  store <4 x i8> %14, ptr %13, align 1, !dbg !331, !tbaa !124
  %index.next = add nuw i64 %index, 4
  %vec.ind.next = add <4 x i32> %vec.ind, <i32 4, i32 4, i32 4, i32 4>, !dbg !312
  %15 = icmp eq i64 %index.next, 4999996
  br i1 %15, label %for.body.preheader, label %vector.body, !llvm.loop !332

for.cond.cleanup:                                 ; preds = %for.body
  tail call void @simple_if_else(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 5000000), !dbg !334
  call void @llvm.dbg.value(metadata i32 0, metadata !248, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 0, metadata !249, metadata !DIExpression()), !dbg !335
  %16 = load ptr, ptr @c, align 8, !tbaa !161
  call void @llvm.dbg.value(metadata i32 0, metadata !249, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata i32 0, metadata !248, metadata !DIExpression()), !dbg !263
  br label %vector.body119, !dbg !336

vector.body119:                                   ; preds = %vector.body119, %for.cond.cleanup
  %index120 = phi i64 [ 0, %for.cond.cleanup ], [ %index.next123, %vector.body119 ], !dbg !337
  %vec.phi = phi <4 x i32> [ zeroinitializer, %for.cond.cleanup ], [ %19, %vector.body119 ]
  %vec.phi121 = phi <4 x i32> [ zeroinitializer, %for.cond.cleanup ], [ %20, %vector.body119 ]
  %17 = getelementptr inbounds i32, ptr %16, i64 %index120, !dbg !339
  %wide.load = load <4 x i32>, ptr %17, align 4, !dbg !339, !tbaa !108
  %18 = getelementptr inbounds i32, ptr %17, i64 4, !dbg !339
  %wide.load122 = load <4 x i32>, ptr %18, align 4, !dbg !339, !tbaa !108
  %19 = add <4 x i32> %wide.load, %vec.phi, !dbg !341
  %20 = add <4 x i32> %wide.load122, %vec.phi121, !dbg !341
  %index.next123 = add nuw i64 %index120, 8, !dbg !337
  %21 = icmp eq i64 %index.next123, 5000000, !dbg !337
  br i1 %21, label %middle.block114, label %vector.body119, !dbg !337, !llvm.loop !342

middle.block114:                                  ; preds = %vector.body119
  %bin.rdx = add <4 x i32> %20, %19, !dbg !336
  %22 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx), !dbg !336
  %call39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %22), !dbg !344
  %23 = load ptr, ptr @a, align 8, !dbg !345, !tbaa !161
  tail call void @free(ptr noundef %23) #12, !dbg !346
  %24 = load ptr, ptr @b, align 8, !dbg !347, !tbaa !161
  tail call void @free(ptr noundef %24) #12, !dbg !348
  %25 = load ptr, ptr @c, align 8, !dbg !349, !tbaa !161
  tail call void @free(ptr noundef %25) #12, !dbg !350
  %26 = load ptr, ptr @cond, align 8, !dbg !351, !tbaa !161
  tail call void @free(ptr noundef %26) #12, !dbg !352
  %27 = load i64, ptr @CounterValues, align 8, !dbg !353, !tbaa !354
  %call40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i64 noundef %27), !dbg !356
  %28 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 1), align 8, !dbg !357, !tbaa !354
  %call41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %28), !dbg !358
  %29 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 2), align 8, !dbg !359, !tbaa !354
  %call42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %29), !dbg !360
  %30 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 3), align 8, !dbg !361, !tbaa !354
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %30), !dbg !362
  %31 = load double, ptr @ExecutionTime, align 8, !dbg !363, !tbaa !191
  %call44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, double noundef %31), !dbg !364
  %32 = load i32, ptr @EventSet, align 4, !dbg !365, !tbaa !108
  %call45 = tail call i32 @PAPI_remove_events(i32 noundef %32, ptr noundef nonnull @EventCodes, i32 noundef 4) #12, !dbg !367
  call void @llvm.dbg.value(metadata i32 %call45, metadata !239, metadata !DIExpression()), !dbg !263
  %cmp46.not = icmp eq i32 %call45, 0, !dbg !368
  br i1 %cmp46.not, label %if.end50, label %if.then48, !dbg !369

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !246, metadata !DIExpression()), !dbg !310
  %arrayidx19 = getelementptr inbounds i32, ptr %4, i64 %indvars.iv, !dbg !315
  %33 = trunc i64 %indvars.iv to i32, !dbg !312
  store i32 %33, ptr %arrayidx19, align 4, !dbg !312, !tbaa !108
  %arrayidx21 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv, !dbg !322
  store i32 2, ptr %arrayidx21, align 4, !dbg !323, !tbaa !108
  %arrayidx23 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv, !dbg !326
  store i32 0, ptr %arrayidx23, align 4, !dbg !327, !tbaa !108
  %rem = urem i32 %33, 10, !dbg !328
  %cmp24 = icmp eq i32 %rem, 0, !dbg !329
  %arrayidx27 = getelementptr inbounds i8, ptr %7, i64 %indvars.iv, !dbg !330
  %frombool = zext i1 %cmp24 to i8, !dbg !331
  store i8 %frombool, ptr %arrayidx27, align 1, !dbg !331, !tbaa !124
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !370
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !246, metadata !DIExpression()), !dbg !310
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5000000, !dbg !371
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !311, !llvm.loop !372

if.then48:                                        ; preds = %middle.block114
  %34 = load ptr, ptr @stderr, align 8, !dbg !373, !tbaa !161
  %call49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str, i32 noundef %call45, ptr noundef nonnull @.str.1, i32 noundef 348) #13, !dbg !373
  tail call void @exit(i32 noundef %call45) #14, !dbg !373
  unreachable, !dbg !373

if.end50:                                         ; preds = %middle.block114
  %call51 = tail call i32 @PAPI_destroy_eventset(ptr noundef nonnull @EventSet) #12, !dbg !375
  call void @llvm.dbg.value(metadata i32 %call51, metadata !239, metadata !DIExpression()), !dbg !263
  %cmp52.not = icmp eq i32 %call51, 0, !dbg !377
  br i1 %cmp52.not, label %if.end56, label %if.then54, !dbg !378

if.then54:                                        ; preds = %if.end50
  %35 = load ptr, ptr @stderr, align 8, !dbg !379, !tbaa !161
  %call55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str, i32 noundef %call51, ptr noundef nonnull @.str.1, i32 noundef 351) #13, !dbg !379
  tail call void @exit(i32 noundef %call51) #14, !dbg !379
  unreachable, !dbg !379

if.end56:                                         ; preds = %if.end50
  tail call void @PAPI_shutdown() #12, !dbg !381
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %errstring) #12, !dbg !382
  ret i32 0, !dbg !383
}

declare !dbg !384 i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #4

declare !dbg !385 i32 @PAPI_create_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !388 i32 @PAPI_add_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !391 void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !396 i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !402 i32 @PAPI_remove_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !403 i32 @PAPI_destroy_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !404 void @PAPI_shutdown() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #11

attributes #0 = { nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #5 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #6 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #7 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #8 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "EventSet", scope: !2, file: !3, line: 22, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "880cc40520c53a5a6184bf02070b8bd9")
!4 = !{!5, !7, !8}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!10 = !{!0, !11, !17, !20, !23, !25, !27, !29}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "CounterValues", scope: !2, file: !3, line: 24, type: !13, isLocal: false, isDefinition: true)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !15)
!14 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!15 = !{!16}
!16 = !DISubrange(count: 4)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "EventCodes", scope: !2, file: !3, line: 26, type: !19, isLocal: false, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, elements: !15)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "ExecutionTime", scope: !2, file: !3, line: 27, type: !22, isLocal: false, isDefinition: true)
!22 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 268, type: !5, isLocal: false, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 269, type: !5, isLocal: false, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 270, type: !5, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "cond", scope: !2, file: !3, line: 271, type: !8, isLocal: false, isDefinition: true)
!31 = !{i32 7, !"Dwarf Version", i32 5}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"PIC Level", i32 2}
!39 = !{i32 7, !"PIE Level", i32 2}
!40 = !{i32 7, !"uwtable", i32 2}
!41 = !{i32 7, !"frame-pointer", i32 1}
!42 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!43 = distinct !DISubprogram(name: "getTimeMiliSeconds", scope: !3, file: !3, line: 15, type: !44, scopeLine: 15, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !46)
!44 = !DISubroutineType(types: !45)
!45 = !{!22}
!46 = !{!47}
!47 = !DILocalVariable(name: "ts", scope: !43, file: !3, line: 16, type: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !49, line: 10, size: 128, elements: !50)
!49 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "33f28095c70788baa6982a79b13f774b")
!50 = !{!51, !55}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !48, file: !49, line: 12, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !53, line: 160, baseType: !54)
!53 = !DIFile(filename: "/usr/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!54 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !48, file: !49, line: 16, baseType: !56, size: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !53, line: 196, baseType: !54)
!57 = !DILocation(line: 16, column: 5, scope: !43)
!58 = !DILocation(line: 16, column: 21, scope: !43)
!59 = !DILocation(line: 17, column: 5, scope: !43)
!60 = !DILocation(line: 18, column: 15, scope: !43)
!61 = !{!62, !63, i64 0}
!62 = !{!"timespec", !63, i64 0, !63, i64 8}
!63 = !{!"long", !64, i64 0}
!64 = !{!"omnipotent char", !65, i64 0}
!65 = !{!"Simple C/C++ TBAA"}
!66 = !DILocation(line: 18, column: 12, scope: !43)
!67 = !DILocation(line: 18, column: 35, scope: !43)
!68 = !{!62, !63, i64 8}
!69 = !DILocation(line: 18, column: 32, scope: !43)
!70 = !DILocation(line: 18, column: 43, scope: !43)
!71 = !DILocation(line: 18, column: 30, scope: !43)
!72 = !DILocation(line: 19, column: 1, scope: !43)
!73 = !DILocation(line: 18, column: 5, scope: !43)
!74 = !DISubprogram(name: "clock_gettime", scope: !75, file: !75, line: 213, type: !76, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!75 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "2dc9fb937b28c900f98919b5c35320c2")
!76 = !DISubroutineType(types: !77)
!77 = !{!6, !78, !81}
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !79, line: 7, baseType: !80)
!79 = !DIFile(filename: "/usr/include/bits/types/clockid_t.h", directory: "", checksumkind: CSK_MD5, checksum: "099a80153c2ad48bc7f5f4a188cb6d24")
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clockid_t", file: !53, line: 168, baseType: !6)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!82 = !{}
!83 = distinct !DISubprogram(name: "simple_if_else", scope: !3, file: !3, line: 58, type: !84, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !88)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !86, !86, !86, !87, !6}
!86 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!87 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96}
!89 = !DILocalVariable(name: "a", arg: 1, scope: !83, file: !3, line: 58, type: !86)
!90 = !DILocalVariable(name: "b", arg: 2, scope: !83, file: !3, line: 58, type: !86)
!91 = !DILocalVariable(name: "c", arg: 3, scope: !83, file: !3, line: 58, type: !86)
!92 = !DILocalVariable(name: "cond", arg: 4, scope: !83, file: !3, line: 59, type: !87)
!93 = !DILocalVariable(name: "n", arg: 5, scope: !83, file: !3, line: 59, type: !6)
!94 = !DILocalVariable(name: "status", scope: !83, file: !3, line: 61, type: !6)
!95 = !DILocalVariable(name: "t", scope: !83, file: !3, line: 63, type: !22)
!96 = !DILocalVariable(name: "i", scope: !97, file: !3, line: 69, type: !6)
!97 = distinct !DILexicalBlock(scope: !83, file: !3, line: 69, column: 5)
!98 = !DILocation(line: 0, scope: !83)
!99 = !DILocation(line: 16, column: 5, scope: !43, inlinedAt: !100)
!100 = distinct !DILocation(line: 63, column: 16, scope: !83)
!101 = !DILocation(line: 16, column: 21, scope: !43, inlinedAt: !100)
!102 = !DILocation(line: 17, column: 5, scope: !43, inlinedAt: !100)
!103 = !DILocation(line: 18, column: 15, scope: !43, inlinedAt: !100)
!104 = !DILocation(line: 18, column: 35, scope: !43, inlinedAt: !100)
!105 = !DILocation(line: 19, column: 1, scope: !43, inlinedAt: !100)
!106 = !DILocation(line: 65, column: 30, scope: !107)
!107 = distinct !DILexicalBlock(scope: !83, file: !3, line: 65, column: 9)
!108 = !{!109, !109, i64 0}
!109 = !{!"int", !64, i64 0}
!110 = !DILocation(line: 65, column: 19, scope: !107)
!111 = !DILocation(line: 65, column: 41, scope: !107)
!112 = !DILocation(line: 65, column: 9, scope: !83)
!113 = !DILocation(line: 0, scope: !97)
!114 = !DILocation(line: 69, column: 23, scope: !115)
!115 = distinct !DILexicalBlock(scope: !97, file: !3, line: 69, column: 5)
!116 = !DILocation(line: 69, column: 5, scope: !97)
!117 = !DILocation(line: 69, column: 28, scope: !115)
!118 = !DILocation(line: 72, column: 31, scope: !119)
!119 = distinct !DILexicalBlock(scope: !120, file: !3, line: 70, column: 22)
!120 = distinct !DILexicalBlock(scope: !121, file: !3, line: 70, column: 13)
!121 = distinct !DILexicalBlock(scope: !115, file: !3, line: 69, column: 33)
!122 = !DILocation(line: 71, column: 50, scope: !119)
!123 = !DILocation(line: 70, column: 13, scope: !120)
!124 = !{!125, !125, i64 0}
!125 = !{!"_Bool", !64, i64 0}
!126 = !DILocation(line: 0, scope: !120)
!127 = !DILocation(line: 71, column: 36, scope: !119)
!128 = !DILocation(line: 70, column: 13, scope: !121)
!129 = !DILocation(line: 71, column: 45, scope: !119)
!130 = !DILocation(line: 71, column: 42, scope: !119)
!131 = !DILocation(line: 72, column: 18, scope: !119)
!132 = !DILocation(line: 74, column: 27, scope: !119)
!133 = !DILocation(line: 73, column: 33, scope: !119)
!134 = !DILocation(line: 74, column: 18, scope: !119)
!135 = !DILocation(line: 75, column: 29, scope: !119)
!136 = !DILocation(line: 75, column: 56, scope: !119)
!137 = !DILocation(line: 75, column: 71, scope: !119)
!138 = !DILocation(line: 75, column: 67, scope: !119)
!139 = !DILocation(line: 75, column: 44, scope: !119)
!140 = !DILocation(line: 75, column: 40, scope: !119)
!141 = !DILocation(line: 76, column: 18, scope: !119)
!142 = !DILocation(line: 78, column: 23, scope: !143)
!143 = distinct !DILexicalBlock(scope: !120, file: !3, line: 77, column: 16)
!144 = !DILocation(line: 78, column: 21, scope: !143)
!145 = !DILocation(line: 78, column: 30, scope: !143)
!146 = !DILocation(line: 78, column: 28, scope: !143)
!147 = !DILocation(line: 78, column: 13, scope: !143)
!148 = !DILocation(line: 78, column: 18, scope: !143)
!149 = !DILocation(line: 79, column: 30, scope: !143)
!150 = !DILocation(line: 79, column: 23, scope: !143)
!151 = !DILocation(line: 79, column: 18, scope: !143)
!152 = !DILocation(line: 80, column: 27, scope: !143)
!153 = !DILocation(line: 80, column: 36, scope: !143)
!154 = !DILocation(line: 80, column: 18, scope: !143)
!155 = distinct !{!155, !116, !156, !157, !158}
!156 = !DILocation(line: 82, column: 5, scope: !97)
!157 = !{!"llvm.loop.mustprogress"}
!158 = !{!"llvm.loop.isvectorized", i32 1}
!159 = !DILocation(line: 65, column: 53, scope: !160)
!160 = distinct !DILexicalBlock(scope: !107, file: !3, line: 65, column: 53)
!161 = !{!162, !162, i64 0}
!162 = !{!"any pointer", !64, i64 0}
!163 = !DILocation(line: 86, column: 29, scope: !164)
!164 = distinct !DILexicalBlock(scope: !83, file: !3, line: 86, column: 9)
!165 = !DILocation(line: 86, column: 19, scope: !164)
!166 = !DILocation(line: 86, column: 55, scope: !164)
!167 = !DILocation(line: 86, column: 9, scope: !83)
!168 = !{i8 0, i8 2}
!169 = !DILocation(line: 77, column: 9, scope: !119)
!170 = distinct !{!170, !116, !156, !157, !171, !158}
!171 = !{!"llvm.loop.unroll.runtime.disable"}
!172 = !DILocation(line: 86, column: 67, scope: !173)
!173 = distinct !DILexicalBlock(scope: !164, file: !3, line: 86, column: 67)
!174 = !DILocation(line: 18, column: 12, scope: !43, inlinedAt: !100)
!175 = !DILocation(line: 18, column: 32, scope: !43, inlinedAt: !100)
!176 = !DILocation(line: 18, column: 43, scope: !43, inlinedAt: !100)
!177 = !DILocation(line: 18, column: 30, scope: !43, inlinedAt: !100)
!178 = !DILocation(line: 16, column: 5, scope: !43, inlinedAt: !179)
!179 = distinct !DILocation(line: 88, column: 21, scope: !83)
!180 = !DILocation(line: 16, column: 21, scope: !43, inlinedAt: !179)
!181 = !DILocation(line: 17, column: 5, scope: !43, inlinedAt: !179)
!182 = !DILocation(line: 18, column: 15, scope: !43, inlinedAt: !179)
!183 = !DILocation(line: 18, column: 12, scope: !43, inlinedAt: !179)
!184 = !DILocation(line: 18, column: 35, scope: !43, inlinedAt: !179)
!185 = !DILocation(line: 18, column: 32, scope: !43, inlinedAt: !179)
!186 = !DILocation(line: 18, column: 43, scope: !43, inlinedAt: !179)
!187 = !DILocation(line: 18, column: 30, scope: !43, inlinedAt: !179)
!188 = !DILocation(line: 19, column: 1, scope: !43, inlinedAt: !179)
!189 = !DILocation(line: 88, column: 42, scope: !83)
!190 = !DILocation(line: 88, column: 19, scope: !83)
!191 = !{!192, !192, i64 0}
!192 = !{!"double", !64, i64 0}
!193 = !DILocation(line: 89, column: 1, scope: !83)
!194 = !DISubprogram(name: "PAPI_start", scope: !195, file: !195, line: 1204, type: !196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!195 = !DIFile(filename: "PAPI/papi-install/include/papi.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation", checksumkind: CSK_MD5, checksum: "0d2c40ce608b3a2c077982ffb1e7b529")
!196 = !DISubroutineType(types: !197)
!197 = !{!6, !6}
!198 = !DISubprogram(name: "PAPI_stop", scope: !195, file: !195, line: 1206, type: !199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!199 = !DISubroutineType(types: !200)
!200 = !{!6, !6, !201}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!202 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 273, type: !203, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !205)
!203 = !DISubroutineType(types: !204)
!204 = !{!5, !6}
!205 = !{!206, !207}
!206 = !DILocalVariable(name: "n", arg: 1, scope: !202, file: !3, line: 273, type: !6)
!207 = !DILocalVariable(name: "ptr", scope: !202, file: !3, line: 274, type: !5)
!208 = !DILocation(line: 0, scope: !202)
!209 = !DILocation(line: 274, column: 45, scope: !202)
!210 = !DILocation(line: 274, column: 43, scope: !202)
!211 = !DILocation(line: 274, column: 24, scope: !202)
!212 = !DILocation(line: 275, column: 13, scope: !213)
!213 = distinct !DILexicalBlock(scope: !202, file: !3, line: 275, column: 9)
!214 = !DILocation(line: 275, column: 9, scope: !202)
!215 = !DILocation(line: 276, column: 9, scope: !216)
!216 = distinct !DILexicalBlock(scope: !213, file: !3, line: 275, column: 22)
!217 = !DILocation(line: 277, column: 9, scope: !216)
!218 = !DILocation(line: 279, column: 5, scope: !202)
!219 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 282, type: !220, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !222)
!220 = !DISubroutineType(types: !221)
!221 = !{!8, !6}
!222 = !{!223, !224}
!223 = !DILocalVariable(name: "n", arg: 1, scope: !219, file: !3, line: 282, type: !6)
!224 = !DILocalVariable(name: "ptr", scope: !219, file: !3, line: 283, type: !8)
!225 = !DILocation(line: 0, scope: !219)
!226 = !DILocation(line: 283, column: 48, scope: !219)
!227 = !DILocation(line: 283, column: 26, scope: !219)
!228 = !DILocation(line: 284, column: 13, scope: !229)
!229 = distinct !DILexicalBlock(scope: !219, file: !3, line: 284, column: 9)
!230 = !DILocation(line: 284, column: 9, scope: !219)
!231 = !DILocation(line: 285, column: 9, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !3, line: 284, column: 22)
!233 = !DILocation(line: 286, column: 9, scope: !232)
!234 = !DILocation(line: 288, column: 5, scope: !219)
!235 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 291, type: !236, scopeLine: 291, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !238)
!236 = !DISubroutineType(types: !237)
!237 = !{!6}
!238 = !{!239, !240, !245, !246, !248, !249}
!239 = !DILocalVariable(name: "status", scope: !235, file: !3, line: 292, type: !6)
!240 = !DILocalVariable(name: "errstring", scope: !235, file: !3, line: 293, type: !241)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 1024, elements: !243)
!242 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!243 = !{!244}
!244 = !DISubrange(count: 128)
!245 = !DILocalVariable(name: "n", scope: !235, file: !3, line: 306, type: !6)
!246 = !DILocalVariable(name: "i", scope: !247, file: !3, line: 317, type: !6)
!247 = distinct !DILexicalBlock(scope: !235, file: !3, line: 317, column: 5)
!248 = !DILocalVariable(name: "sum", scope: !235, file: !3, line: 329, type: !6)
!249 = !DILocalVariable(name: "i", scope: !250, file: !3, line: 331, type: !6)
!250 = distinct !DILexicalBlock(scope: !235, file: !3, line: 331, column: 5)
!251 = !DILocation(line: 293, column: 5, scope: !235)
!252 = !DILocation(line: 293, column: 10, scope: !235)
!253 = !DILocation(line: 295, column: 9, scope: !254)
!254 = distinct !DILexicalBlock(scope: !235, file: !3, line: 295, column: 9)
!255 = !DILocation(line: 295, column: 45, scope: !254)
!256 = !DILocation(line: 295, column: 9, scope: !235)
!257 = !DILocation(line: 296, column: 17, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !3, line: 295, column: 66)
!259 = !DILocation(line: 296, column: 9, scope: !258)
!260 = !DILocation(line: 297, column: 9, scope: !258)
!261 = !DILocation(line: 301, column: 19, scope: !262)
!262 = distinct !DILexicalBlock(scope: !235, file: !3, line: 301, column: 9)
!263 = !DILocation(line: 0, scope: !235)
!264 = !DILocation(line: 301, column: 52, scope: !262)
!265 = !DILocation(line: 301, column: 9, scope: !235)
!266 = !DILocation(line: 301, column: 64, scope: !267)
!267 = distinct !DILexicalBlock(scope: !262, file: !3, line: 301, column: 64)
!268 = !DILocation(line: 304, column: 35, scope: !269)
!269 = distinct !DILexicalBlock(scope: !235, file: !3, line: 304, column: 9)
!270 = !DILocation(line: 304, column: 19, scope: !269)
!271 = !DILocation(line: 304, column: 69, scope: !269)
!272 = !DILocation(line: 304, column: 9, scope: !235)
!273 = !DILocation(line: 304, column: 81, scope: !274)
!274 = distinct !DILexicalBlock(scope: !269, file: !3, line: 304, column: 81)
!275 = !DILocation(line: 0, scope: !202, inlinedAt: !276)
!276 = distinct !DILocation(line: 308, column: 9, scope: !235)
!277 = !DILocation(line: 274, column: 24, scope: !202, inlinedAt: !276)
!278 = !DILocation(line: 275, column: 13, scope: !213, inlinedAt: !276)
!279 = !DILocation(line: 275, column: 9, scope: !202, inlinedAt: !276)
!280 = !DILocation(line: 276, column: 9, scope: !216, inlinedAt: !276)
!281 = !DILocation(line: 277, column: 9, scope: !216, inlinedAt: !276)
!282 = !DILocation(line: 308, column: 7, scope: !235)
!283 = !DILocation(line: 0, scope: !202, inlinedAt: !284)
!284 = distinct !DILocation(line: 309, column: 9, scope: !235)
!285 = !DILocation(line: 274, column: 24, scope: !202, inlinedAt: !284)
!286 = !DILocation(line: 275, column: 13, scope: !213, inlinedAt: !284)
!287 = !DILocation(line: 275, column: 9, scope: !202, inlinedAt: !284)
!288 = !DILocation(line: 276, column: 9, scope: !216, inlinedAt: !284)
!289 = !DILocation(line: 277, column: 9, scope: !216, inlinedAt: !284)
!290 = !DILocation(line: 309, column: 7, scope: !235)
!291 = !DILocation(line: 0, scope: !202, inlinedAt: !292)
!292 = distinct !DILocation(line: 310, column: 9, scope: !235)
!293 = !DILocation(line: 274, column: 24, scope: !202, inlinedAt: !292)
!294 = !DILocation(line: 275, column: 13, scope: !213, inlinedAt: !292)
!295 = !DILocation(line: 275, column: 9, scope: !202, inlinedAt: !292)
!296 = !DILocation(line: 276, column: 9, scope: !216, inlinedAt: !292)
!297 = !DILocation(line: 277, column: 9, scope: !216, inlinedAt: !292)
!298 = !DILocation(line: 310, column: 7, scope: !235)
!299 = !DILocation(line: 0, scope: !219, inlinedAt: !300)
!300 = distinct !DILocation(line: 311, column: 12, scope: !235)
!301 = !DILocation(line: 283, column: 26, scope: !219, inlinedAt: !300)
!302 = !DILocation(line: 284, column: 13, scope: !229, inlinedAt: !300)
!303 = !DILocation(line: 284, column: 9, scope: !219, inlinedAt: !300)
!304 = !DILocation(line: 285, column: 9, scope: !232, inlinedAt: !300)
!305 = !DILocation(line: 286, column: 9, scope: !232, inlinedAt: !300)
!306 = !DILocation(line: 311, column: 10, scope: !235)
!307 = !DILocation(line: 313, column: 13, scope: !235)
!308 = !DILocation(line: 315, column: 11, scope: !235)
!309 = !DILocation(line: 315, column: 5, scope: !235)
!310 = !DILocation(line: 0, scope: !247)
!311 = !DILocation(line: 317, column: 5, scope: !247)
!312 = !DILocation(line: 318, column: 14, scope: !313)
!313 = distinct !DILexicalBlock(scope: !314, file: !3, line: 317, column: 33)
!314 = distinct !DILexicalBlock(scope: !247, file: !3, line: 317, column: 5)
!315 = !DILocation(line: 318, column: 9, scope: !313)
!316 = !{!317}
!317 = distinct !{!317, !318}
!318 = distinct !{!318, !"LVerDomain"}
!319 = !{!320, !321}
!320 = distinct !{!320, !318}
!321 = distinct !{!321, !318}
!322 = !DILocation(line: 319, column: 9, scope: !313)
!323 = !DILocation(line: 319, column: 14, scope: !313)
!324 = !{!320}
!325 = !{!321}
!326 = !DILocation(line: 320, column: 9, scope: !313)
!327 = !DILocation(line: 320, column: 14, scope: !313)
!328 = !DILocation(line: 321, column: 22, scope: !313)
!329 = !DILocation(line: 321, column: 27, scope: !313)
!330 = !DILocation(line: 321, column: 9, scope: !313)
!331 = !DILocation(line: 321, column: 17, scope: !313)
!332 = distinct !{!332, !311, !333, !157, !158}
!333 = !DILocation(line: 322, column: 5, scope: !247)
!334 = !DILocation(line: 326, column: 5, scope: !235)
!335 = !DILocation(line: 0, scope: !250)
!336 = !DILocation(line: 331, column: 5, scope: !250)
!337 = !DILocation(line: 331, column: 28, scope: !338)
!338 = distinct !DILexicalBlock(scope: !250, file: !3, line: 331, column: 5)
!339 = !DILocation(line: 332, column: 16, scope: !340)
!340 = distinct !DILexicalBlock(scope: !338, file: !3, line: 331, column: 33)
!341 = !DILocation(line: 332, column: 13, scope: !340)
!342 = distinct !{!342, !336, !343, !157, !158}
!343 = !DILocation(line: 333, column: 5, scope: !250)
!344 = !DILocation(line: 335, column: 5, scope: !235)
!345 = !DILocation(line: 337, column: 10, scope: !235)
!346 = !DILocation(line: 337, column: 5, scope: !235)
!347 = !DILocation(line: 338, column: 10, scope: !235)
!348 = !DILocation(line: 338, column: 5, scope: !235)
!349 = !DILocation(line: 339, column: 10, scope: !235)
!350 = !DILocation(line: 339, column: 5, scope: !235)
!351 = !DILocation(line: 340, column: 10, scope: !235)
!352 = !DILocation(line: 340, column: 5, scope: !235)
!353 = !DILocation(line: 342, column: 53, scope: !235)
!354 = !{!355, !355, i64 0}
!355 = !{!"long long", !64, i64 0}
!356 = !DILocation(line: 342, column: 5, scope: !235)
!357 = !DILocation(line: 343, column: 36, scope: !235)
!358 = !DILocation(line: 343, column: 5, scope: !235)
!359 = !DILocation(line: 344, column: 50, scope: !235)
!360 = !DILocation(line: 344, column: 5, scope: !235)
!361 = !DILocation(line: 345, column: 49, scope: !235)
!362 = !DILocation(line: 345, column: 5, scope: !235)
!363 = !DILocation(line: 346, column: 40, scope: !235)
!364 = !DILocation(line: 346, column: 5, scope: !235)
!365 = !DILocation(line: 348, column: 38, scope: !366)
!366 = distinct !DILexicalBlock(scope: !235, file: !3, line: 348, column: 9)
!367 = !DILocation(line: 348, column: 19, scope: !366)
!368 = !DILocation(line: 348, column: 72, scope: !366)
!369 = !DILocation(line: 348, column: 9, scope: !235)
!370 = !DILocation(line: 317, column: 28, scope: !314)
!371 = !DILocation(line: 317, column: 23, scope: !314)
!372 = distinct !{!372, !311, !333, !157, !158}
!373 = !DILocation(line: 348, column: 84, scope: !374)
!374 = distinct !DILexicalBlock(scope: !366, file: !3, line: 348, column: 84)
!375 = !DILocation(line: 351, column: 19, scope: !376)
!376 = distinct !DILexicalBlock(scope: !235, file: !3, line: 351, column: 9)
!377 = !DILocation(line: 351, column: 53, scope: !376)
!378 = !DILocation(line: 351, column: 9, scope: !235)
!379 = !DILocation(line: 351, column: 65, scope: !380)
!380 = distinct !DILexicalBlock(scope: !376, file: !3, line: 351, column: 65)
!381 = !DILocation(line: 354, column: 5, scope: !235)
!382 = !DILocation(line: 357, column: 1, scope: !235)
!383 = !DILocation(line: 356, column: 5, scope: !235)
!384 = !DISubprogram(name: "PAPI_library_init", scope: !195, file: !195, line: 1172, type: !196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!385 = !DISubprogram(name: "PAPI_create_eventset", scope: !195, file: !195, line: 1147, type: !386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!386 = !DISubroutineType(types: !387)
!387 = !{!6, !5}
!388 = !DISubprogram(name: "PAPI_add_events", scope: !195, file: !195, line: 1143, type: !389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!389 = !DISubroutineType(types: !390)
!390 = !{!6, !6, !5, !6}
!391 = !DISubprogram(name: "srand", scope: !392, file: !392, line: 455, type: !393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!392 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!393 = !DISubroutineType(types: !394)
!394 = !{null, !395}
!395 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!396 = !DISubprogram(name: "time", scope: !75, file: !75, line: 75, type: !397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!397 = !DISubroutineType(types: !398)
!398 = !{!399, !401}
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !400, line: 7, baseType: !52)
!400 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!402 = !DISubprogram(name: "PAPI_remove_events", scope: !195, file: !195, line: 1192, type: !389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!403 = !DISubprogram(name: "PAPI_destroy_eventset", scope: !195, file: !195, line: 1149, type: !386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!404 = !DISubprogram(name: "PAPI_shutdown", scope: !195, file: !195, line: 1202, type: !405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!405 = !DISubroutineType(types: !406)
!406 = !{null}
