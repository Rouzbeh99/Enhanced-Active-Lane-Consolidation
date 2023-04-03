; ModuleID = 'lu.c'
source_filename = "lu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.GlobalMemory = type { ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, %struct.anon, %union.pthread_mutex_t }
%struct.anon = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.anon, %union.anon.1, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon = type { i64 }
%union.anon.1 = type { i64 }
%struct.LocalCopies = type { double, double, double, double }

@__threads__ = dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@n = dso_local local_unnamed_addr global i64 128, align 8, !dbg !112
@P = dso_local local_unnamed_addr global i64 1, align 8, !dbg !114
@block_size = dso_local local_unnamed_addr global i64 16, align 8, !dbg !116
@test_result = dso_local local_unnamed_addr global i64 0, align 8, !dbg !118
@doprint = dso_local local_unnamed_addr global i64 0, align 8, !dbg !120
@dostats = dso_local local_unnamed_addr global i64 0, align 8, !dbg !122
@.str = private unnamed_addr constant [12 x i8] c"n:p:b:cstoh\00", align 1
@optarg = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [31 x i8] c"Default: LU -n%1d -p%1d -b%1d\0A\00", align 1
@__tid__ = dso_local global [256 x i64] zeroinitializer, align 16, !dbg !124
@.str.15 = private unnamed_addr constant [24 x i8] c"     %ld by %ld Matrix\0A\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"     %ld Processors\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"     %ld by %ld Element Blocks\0A\00", align 1
@num_rows = dso_local local_unnamed_addr global i64 0, align 8, !dbg !136
@num_cols = dso_local local_unnamed_addr global i64 0, align 8, !dbg !138
@nblocks = dso_local local_unnamed_addr global i64 0, align 8, !dbg !134
@a = dso_local local_unnamed_addr global ptr null, align 8, !dbg !140
@.str.18 = private unnamed_addr constant [32 x i8] c"Could not malloc memory for a.\0A\00", align 1
@rhs = dso_local local_unnamed_addr global ptr null, align 8, !dbg !142
@.str.19 = private unnamed_addr constant [34 x i8] c"Could not malloc memory for rhs.\0A\00", align 1
@Global = dso_local local_unnamed_addr global ptr null, align 8, !dbg !132
@.str.21 = private unnamed_addr constant [46 x i8] c"Could not malloc memory for Global->t_in_fac\0A\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"Could not malloc memory for Global->t_in_mod\0A\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"Could not malloc memory for Global->t_in_solve\0A\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"Could not malloc memory for Global->t_in_bar\0A\00", align 1
@.str.25 = private unnamed_addr constant [48 x i8] c"Could not malloc memory for Global->completion\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"__threads__<__MAX_THREADS__\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"lu.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@__intern__ = dso_local global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !130
@.str.34 = private unnamed_addr constant [57 x i8] c"    0    %10.0f    %10.0f    %10.0f    %10.0f    %10.0f\0A\00", align 1
@.str.35 = private unnamed_addr constant [58 x i8] c"  %3ld    %10.0f    %10.0f    %10.0f    %10.0f    %10.0f\0A\00", align 1
@.str.36 = private unnamed_addr constant [57 x i8] c"  Avg    %10.0f    %10.0f    %10.0f    %10.0f    %10.0f\0A\00", align 1
@.str.37 = private unnamed_addr constant [57 x i8] c"  Min    %10.0f    %10.0f    %10.0f    %10.0f    %10.0f\0A\00", align 1
@.str.38 = private unnamed_addr constant [57 x i8] c"  Max    %10.0f    %10.0f    %10.0f    %10.0f    %10.0f\0A\00", align 1
@.str.40 = private unnamed_addr constant [43 x i8] c"Start time                        : %16lu\0A\00", align 1
@.str.41 = private unnamed_addr constant [43 x i8] c"Initialization finish time        : %16lu\0A\00", align 1
@.str.42 = private unnamed_addr constant [43 x i8] c"Overall finish time               : %16lu\0A\00", align 1
@.str.43 = private unnamed_addr constant [43 x i8] c"Total time with initialization    : %16lu\0A\00", align 1
@.str.44 = private unnamed_addr constant [43 x i8] c"Total time without initialization : %16lu\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.46 = private unnamed_addr constant [41 x i8] c"Proc %ld could not malloc memory for lc\0A\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"%8.1f \00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"Could not malloc memory for y\0A\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"TEST FAILED: (%.5f diff)\0A\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"ERROR: %s\0A\00", align 1
@proc_bytes = dso_local local_unnamed_addr global ptr null, align 8, !dbg !144
@str = private unnamed_addr constant [31 x i8] c"Blocked Dense LU Factorization\00", align 1
@str.52 = private unnamed_addr constant [47 x i8] c"                            PROCESS STATISTICS\00", align 1
@str.53 = private unnamed_addr constant [76 x i8] c"              Total      Diagonal     Perimeter      Interior       Barrier\00", align 1
@str.54 = private unnamed_addr constant [74 x i8] c" Proc         Time         Time         Time           Time          Time\00", align 1
@str.55 = private unnamed_addr constant [47 x i8] c"                            TIMING INFORMATION\00", align 1
@str.56 = private unnamed_addr constant [45 x i8] c"                             TESTING RESULTS\00", align 1
@str.57 = private unnamed_addr constant [29 x i8] c"\0AMatrix after decomposition:\00", align 1
@str.58 = private unnamed_addr constant [27 x i8] c"Error in pthread_create().\00", align 1
@str.59 = private unnamed_addr constant [29 x i8] c"Matrix before decomposition:\00", align 1
@str.60 = private unnamed_addr constant [21 x i8] c"Usage: LU <options>\0A\00", align 1
@str.61 = private unnamed_addr constant [9 x i8] c"options:\00", align 1
@str.62 = private unnamed_addr constant [30 x i8] c"  -nN : Decompose NxN matrix.\00", align 1
@str.63 = private unnamed_addr constant [34 x i8] c"  -pP : P = number of processors.\00", align 1
@str.64 = private unnamed_addr constant [69 x i8] c"  -bB : Use a block size of B. BxB elements should fit in cache for \00", align 1
@str.65 = private unnamed_addr constant [67 x i8] c"        good performance. Small block sizes (B=8, B=16) work well.\00", align 1
@str.66 = private unnamed_addr constant [70 x i8] c"  -c  : Copy non-locally allocated blocks to local memory before use.\00", align 1
@str.67 = private unnamed_addr constant [54 x i8] c"  -s  : Print individual processor timing statistics.\00", align 1
@str.68 = private unnamed_addr constant [21 x i8] c"  -t  : Test output.\00", align 1
@str.69 = private unnamed_addr constant [33 x i8] c"  -o  : Print out matrix values.\00", align 1
@str.70 = private unnamed_addr constant [41 x i8] c"  -h  : Print out command line options.\0A\00", align 1
@str.71 = private unnamed_addr constant [12 x i8] c"TEST PASSED\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) local_unnamed_addr #0 !dbg !154 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !160, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata ptr %argv, metadata !161, metadata !DIExpression()), !dbg !185
  %call = tail call i64 @time(ptr noundef null) #20, !dbg !186
  call void @llvm.dbg.value(metadata i64 %call, metadata !179, metadata !DIExpression()), !dbg !185
  %call1435 = tail call i32 @__posix_getopt(i32 noundef %argc, ptr noundef %argv, ptr noundef nonnull @.str) #20, !dbg !188
  call void @llvm.dbg.value(metadata i32 %call1435, metadata !163, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !185
  %cmp.not436 = icmp eq i32 %call1435, -1, !dbg !189
  br i1 %cmp.not436, label %while.end, label %while.body, !dbg !190

while.body:                                       ; preds = %entry, %sw.epilog
  %call1437 = phi i32 [ %call1, %sw.epilog ], [ %call1435, %entry ]
  %conv = sext i32 %call1437 to i64, !dbg !188
  call void @llvm.dbg.value(metadata i64 %conv, metadata !163, metadata !DIExpression()), !dbg !185
  switch i64 %conv, label %sw.epilog [
    i64 110, label %sw.bb
    i64 112, label %sw.bb5
    i64 98, label %sw.bb8
    i64 115, label %sw.bb11
    i64 116, label %sw.bb12
    i64 111, label %sw.bb14
    i64 104, label %sw.bb19
  ], !dbg !191

sw.bb:                                            ; preds = %while.body
  %0 = load ptr, ptr @optarg, align 8, !dbg !193
  %call3 = tail call i32 @atoi(ptr noundef %0) #21, !dbg !195
  %conv4 = sext i32 %call3 to i64, !dbg !195
  store i64 %conv4, ptr @n, align 8, !dbg !196
  br label %sw.epilog, !dbg !197

sw.bb5:                                           ; preds = %while.body
  %1 = load ptr, ptr @optarg, align 8, !dbg !198
  %call6 = tail call i32 @atoi(ptr noundef %1) #21, !dbg !199
  %conv7 = sext i32 %call6 to i64, !dbg !199
  store i64 %conv7, ptr @P, align 8, !dbg !200
  br label %sw.epilog, !dbg !201

sw.bb8:                                           ; preds = %while.body
  %2 = load ptr, ptr @optarg, align 8, !dbg !202
  %call9 = tail call i32 @atoi(ptr noundef %2) #21, !dbg !203
  %conv10 = sext i32 %call9 to i64, !dbg !203
  store i64 %conv10, ptr @block_size, align 8, !dbg !204
  br label %sw.epilog, !dbg !205

sw.bb11:                                          ; preds = %while.body
  store i64 1, ptr @dostats, align 8, !dbg !206
  br label %sw.epilog, !dbg !207

sw.bb12:                                          ; preds = %while.body
  %3 = load i64, ptr @test_result, align 8, !dbg !208
  %tobool.not = icmp eq i64 %3, 0, !dbg !209
  %4 = zext i1 %tobool.not to i64
  store i64 %4, ptr @test_result, align 8, !dbg !210
  br label %sw.epilog, !dbg !211

sw.bb14:                                          ; preds = %while.body
  %5 = load i64, ptr @doprint, align 8, !dbg !212
  %tobool15.not = icmp eq i64 %5, 0, !dbg !213
  %6 = zext i1 %tobool15.not to i64
  store i64 %6, ptr @doprint, align 8, !dbg !214
  br label %sw.epilog, !dbg !215

sw.bb19:                                          ; preds = %while.body
  %puts423 = tail call i32 @puts(ptr nonnull @str.60), !dbg !216
  %puts424 = tail call i32 @puts(ptr nonnull @str.61), !dbg !217
  %puts425 = tail call i32 @puts(ptr nonnull @str.62), !dbg !218
  %puts426 = tail call i32 @puts(ptr nonnull @str.63), !dbg !219
  %puts427 = tail call i32 @puts(ptr nonnull @str.64), !dbg !220
  %puts428 = tail call i32 @puts(ptr nonnull @str.65), !dbg !221
  %puts429 = tail call i32 @puts(ptr nonnull @str.66), !dbg !222
  %puts430 = tail call i32 @puts(ptr nonnull @str.67), !dbg !223
  %puts431 = tail call i32 @puts(ptr nonnull @str.68), !dbg !224
  %puts432 = tail call i32 @puts(ptr nonnull @str.69), !dbg !225
  %puts433 = tail call i32 @puts(ptr nonnull @str.70), !dbg !226
  %call31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.12, i32 noundef 128, i32 noundef 1, i32 noundef 16), !dbg !227
  tail call void @exit(i32 noundef 0) #22, !dbg !228
  unreachable, !dbg !228

sw.epilog:                                        ; preds = %while.body, %sw.bb14, %sw.bb12, %sw.bb11, %sw.bb8, %sw.bb5, %sw.bb
  %call1 = tail call i32 @__posix_getopt(i32 noundef %argc, ptr noundef %argv, ptr noundef nonnull @.str) #20, !dbg !188
  call void @llvm.dbg.value(metadata i32 %call1, metadata !163, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !185
  %cmp.not = icmp eq i32 %call1, -1, !dbg !189
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !190, !llvm.loop !229

while.end:                                        ; preds = %sw.epilog, %entry
  %call32 = tail call i64 @pthread_self() #23, !dbg !233
  %7 = load i32, ptr @__threads__, align 4, !dbg !235
  %inc = add i32 %7, 1, !dbg !235
  store i32 %inc, ptr @__threads__, align 4, !dbg !235
  %idxprom = zext i32 %7 to i64, !dbg !236
  %arrayidx = getelementptr inbounds [256 x i64], ptr @__tid__, i64 0, i64 %idxprom, !dbg !236
  store i64 %call32, ptr %arrayidx, align 8, !dbg !237
  %putchar = tail call i32 @putchar(i32 10), !dbg !238
  %puts = tail call i32 @puts(ptr nonnull @str), !dbg !239
  %8 = load i64, ptr @n, align 8, !dbg !240
  %call35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.15, i64 noundef %8, i64 noundef %8), !dbg !241
  %9 = load i64, ptr @P, align 8, !dbg !242
  %call36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.16, i64 noundef %9), !dbg !243
  %10 = load i64, ptr @block_size, align 8, !dbg !244
  %call37 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.17, i64 noundef %10, i64 noundef %10), !dbg !245
  %putchar410 = tail call i32 @putchar(i32 10), !dbg !246
  %putchar411 = tail call i32 @putchar(i32 10), !dbg !247
  %11 = load i64, ptr @P, align 8, !dbg !248
  %conv40 = sitofp i64 %11 to double, !dbg !249
  %call41 = tail call double @sqrt(double noundef %conv40) #20, !dbg !250
  %conv42 = fptosi double %call41 to i64, !dbg !251
  %12 = load i64, ptr @P, align 8
  br label %for.cond, !dbg !252

for.cond:                                         ; preds = %for.cond, %while.end
  %storemerge = phi i64 [ %conv42, %while.end ], [ %dec, %for.cond ], !dbg !185
  %div = sdiv i64 %12, %storemerge, !dbg !253
  %mul = mul nsw i64 %div, %storemerge, !dbg !257
  %cmp43 = icmp eq i64 %mul, %12, !dbg !259
  %dec = add nsw i64 %storemerge, -1, !dbg !260
  br i1 %cmp43, label %for.end, label %for.cond, !dbg !261, !llvm.loop !262

for.end:                                          ; preds = %for.cond
  store i64 %storemerge, ptr @num_rows, align 8, !dbg !185
  store i64 %div, ptr @num_cols, align 8, !dbg !265
  %13 = load i64, ptr @n, align 8, !dbg !266
  %14 = load i64, ptr @block_size, align 8, !dbg !267
  %div45 = sdiv i64 %13, %14, !dbg !268
  %mul46 = mul nsw i64 %div45, %14, !dbg !269
  %cmp47.not = icmp ne i64 %mul46, %13, !dbg !271
  %inc50 = zext i1 %cmp47.not to i64, !dbg !272
  %spec.select = add nsw i64 %div45, %inc50, !dbg !272
  store i64 %spec.select, ptr @nblocks, align 8, !dbg !185
  %mul52 = shl i64 %13, 3, !dbg !273
  %mul53 = mul i64 %mul52, %13, !dbg !274
  %call54 = tail call noalias ptr @malloc(i64 noundef %mul53) #24, !dbg !275
  store ptr %call54, ptr @a, align 8, !dbg !276
  %cmp55 = icmp eq ptr %call54, null, !dbg !277
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !279

if.then57:                                        ; preds = %for.end
  tail call void @printerr(ptr noundef nonnull @.str.18), !dbg !280
  tail call void @exit(i32 noundef -1) #22, !dbg !282
  unreachable, !dbg !282

if.end58:                                         ; preds = %for.end
  %call60 = tail call noalias ptr @malloc(i64 noundef %mul52) #24, !dbg !283
  store ptr %call60, ptr @rhs, align 8, !dbg !284
  %cmp61 = icmp eq ptr %call60, null, !dbg !285
  br i1 %cmp61, label %if.then63, label %if.else, !dbg !287

if.then63:                                        ; preds = %if.end58
  tail call void @printerr(ptr noundef nonnull @.str.19), !dbg !288
  tail call void @exit(i32 noundef -1) #22, !dbg !290
  unreachable, !dbg !290

if.else:                                          ; preds = %if.end58
  %call65 = tail call noalias dereferenceable_or_null(216) ptr @malloc(i64 noundef 216) #24, !dbg !291
  store ptr %call65, ptr @Global, align 8, !dbg !292
  %mul66 = shl i64 %12, 3, !dbg !293
  %call67 = tail call noalias ptr @malloc(i64 noundef %mul66) #24, !dbg !294
  store ptr %call67, ptr %call65, align 8, !dbg !295
  %call69 = tail call noalias ptr @malloc(i64 noundef %mul66) #24, !dbg !296
  %t_in_mod = getelementptr inbounds %struct.GlobalMemory, ptr %call65, i64 0, i32 2, !dbg !297
  store ptr %call69, ptr %t_in_mod, align 8, !dbg !298
  %call71 = tail call noalias ptr @malloc(i64 noundef %mul66) #24, !dbg !299
  %t_in_solve = getelementptr inbounds %struct.GlobalMemory, ptr %call65, i64 0, i32 1, !dbg !300
  store ptr %call71, ptr %t_in_solve, align 8, !dbg !301
  %call73 = tail call noalias ptr @malloc(i64 noundef %mul66) #24, !dbg !302
  %t_in_bar = getelementptr inbounds %struct.GlobalMemory, ptr %call65, i64 0, i32 3, !dbg !303
  store ptr %call73, ptr %t_in_bar, align 8, !dbg !304
  %call75 = tail call noalias ptr @malloc(i64 noundef %mul66) #24, !dbg !305
  %completion = getelementptr inbounds %struct.GlobalMemory, ptr %call65, i64 0, i32 4, !dbg !306
  store ptr %call75, ptr %completion, align 8, !dbg !307
  %cmp80 = icmp eq ptr %call67, null, !dbg !308
  br i1 %cmp80, label %if.then82, label %if.else83, !dbg !311

if.then82:                                        ; preds = %if.else
  tail call void @printerr(ptr noundef nonnull @.str.21), !dbg !312
  tail call void @exit(i32 noundef -1) #22, !dbg !314
  unreachable, !dbg !314

if.else83:                                        ; preds = %if.else
  %cmp85 = icmp eq ptr %call69, null, !dbg !315
  br i1 %cmp85, label %if.then87, label %if.else88, !dbg !317

if.then87:                                        ; preds = %if.else83
  tail call void @printerr(ptr noundef nonnull @.str.22), !dbg !318
  tail call void @exit(i32 noundef -1) #22, !dbg !320
  unreachable, !dbg !320

if.else88:                                        ; preds = %if.else83
  %cmp90 = icmp eq ptr %call71, null, !dbg !321
  br i1 %cmp90, label %if.then92, label %if.else93, !dbg !323

if.then92:                                        ; preds = %if.else88
  tail call void @printerr(ptr noundef nonnull @.str.23), !dbg !324
  tail call void @exit(i32 noundef -1) #22, !dbg !326
  unreachable, !dbg !326

if.else93:                                        ; preds = %if.else88
  %cmp95 = icmp eq ptr %call73, null, !dbg !327
  br i1 %cmp95, label %if.then97, label %if.else98, !dbg !329

if.then97:                                        ; preds = %if.else93
  tail call void @printerr(ptr noundef nonnull @.str.24), !dbg !330
  tail call void @exit(i32 noundef -1) #22, !dbg !332
  unreachable, !dbg !332

if.else98:                                        ; preds = %if.else93
  %cmp100 = icmp eq ptr %call75, null, !dbg !333
  br i1 %cmp100, label %if.then102, label %if.end108, !dbg !335

if.then102:                                       ; preds = %if.else98
  tail call void @printerr(ptr noundef nonnull @.str.25), !dbg !336
  tail call void @exit(i32 noundef -1) #22, !dbg !338
  unreachable, !dbg !338

if.end108:                                        ; preds = %if.else98
  %start109 = getelementptr inbounds %struct.GlobalMemory, ptr %call65, i64 0, i32 10, !dbg !339
  %call110 = tail call i32 @pthread_mutex_init(ptr noundef nonnull %start109, ptr noundef null) #20, !dbg !341
  %15 = load ptr, ptr @Global, align 8, !dbg !342
  %bar_cond = getelementptr inbounds %struct.GlobalMemory, ptr %15, i64 0, i32 10, i32 1, !dbg !343
  %call112 = tail call i32 @pthread_cond_init(ptr noundef nonnull %bar_cond, ptr noundef null) #20, !dbg !344
  %16 = load ptr, ptr @Global, align 8, !dbg !345
  %bar_teller = getelementptr inbounds %struct.GlobalMemory, ptr %16, i64 0, i32 10, i32 2, !dbg !346
  store i32 0, ptr %bar_teller, align 8, !dbg !347
  %idlock = getelementptr inbounds %struct.GlobalMemory, ptr %16, i64 0, i32 11, !dbg !348
  %call114 = tail call i32 @pthread_mutex_init(ptr noundef nonnull %idlock, ptr noundef null) #20, !dbg !350
  %17 = load ptr, ptr @Global, align 8, !dbg !351
  %id = getelementptr inbounds %struct.GlobalMemory, ptr %17, i64 0, i32 9, !dbg !352
  store i64 0, ptr %id, align 8, !dbg !353
  %18 = load ptr, ptr @rhs, align 8, !dbg !354
  tail call void @InitA(ptr noundef %18), !dbg !355
  %19 = load i64, ptr @doprint, align 8, !dbg !356
  %tobool115.not = icmp eq i64 %19, 0, !dbg !356
  br i1 %tobool115.not, label %if.end118, label %if.then116, !dbg !358

if.then116:                                       ; preds = %if.end108
  %puts421 = tail call i32 @puts(ptr nonnull @str.59), !dbg !359
  tail call void @PrintA(), !dbg !361
  br label %if.end118, !dbg !362

if.end118:                                        ; preds = %if.then116, %if.end108
  %20 = load i32, ptr @__threads__, align 4, !dbg !363
  %cmp120 = icmp ult i32 %20, 256, !dbg !363
  br i1 %cmp120, label %cond.end, label %cond.false, !dbg !363

cond.false:                                       ; preds = %if.end118
  tail call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 243, ptr noundef nonnull @__PRETTY_FUNCTION__.main) #22, !dbg !363
  unreachable, !dbg !363

cond.end:                                         ; preds = %if.end118
  %call122 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @__intern__) #20, !dbg !364
  call void @llvm.dbg.value(metadata i64 0, metadata !180, metadata !DIExpression()), !dbg !365
  %21 = load i64, ptr @P, align 8, !dbg !366
  %cmp124439 = icmp sgt i64 %21, 1, !dbg !369
  br i1 %cmp124439, label %for.body, label %for.end137, !dbg !370

for.cond123:                                      ; preds = %for.body
  %inc136 = add nuw nsw i64 %i119.0440, 1, !dbg !371
  call void @llvm.dbg.value(metadata i64 %i119.0440, metadata !180, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !365
  %22 = load i64, ptr @P, align 8, !dbg !366
  %sub = add nsw i64 %22, -1, !dbg !372
  %cmp124 = icmp slt i64 %inc136, %sub, !dbg !369
  br i1 %cmp124, label %for.body, label %for.end137, !dbg !370, !llvm.loop !373

for.body:                                         ; preds = %cond.end, %for.cond123
  %i119.0440 = phi i64 [ %inc136, %for.cond123 ], [ 0, %cond.end ]
  call void @llvm.dbg.value(metadata i64 %i119.0440, metadata !180, metadata !DIExpression()), !dbg !365
  %23 = load i32, ptr @__threads__, align 4, !dbg !375
  %inc126 = add i32 %23, 1, !dbg !375
  store i32 %inc126, ptr @__threads__, align 4, !dbg !375
  %idxprom127 = zext i32 %23 to i64, !dbg !377
  %arrayidx128 = getelementptr inbounds [256 x i64], ptr @__tid__, i64 0, i64 %idxprom127, !dbg !377
  %call129 = tail call i32 @pthread_create(ptr noundef nonnull %arrayidx128, ptr noundef null, ptr noundef nonnull @SlaveStart, ptr noundef null) #20, !dbg !378
  call void @llvm.dbg.value(metadata i32 %call129, metadata !182, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !365
  %cmp131.not = icmp eq i32 %call129, 0, !dbg !379
  call void @llvm.dbg.value(metadata i64 %i119.0440, metadata !180, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !365
  br i1 %cmp131.not, label %for.cond123, label %if.then133, !dbg !381

if.then133:                                       ; preds = %for.body
  %puts420 = tail call i32 @puts(ptr nonnull @str.58), !dbg !382
  tail call void @exit(i32 noundef -1) #22, !dbg !384
  unreachable, !dbg !384

for.end137:                                       ; preds = %for.cond123, %cond.end
  %call138 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @__intern__) #20, !dbg !385
  tail call void @SlaveStart(), !dbg !386
  %24 = load i64, ptr @P, align 8, !dbg !387
  %conv139 = trunc i64 %24 to i32, !dbg !387
  call void @llvm.dbg.value(metadata i32 %conv139, metadata !183, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !388
  %tobool142.not441 = icmp eq i32 %conv139, 0, !dbg !389
  br i1 %tobool142.not441, label %while.end147, label %while.body143.preheader, !dbg !389

while.body143.preheader:                          ; preds = %for.end137
  %sext = shl i64 %24, 32, !dbg !389
  %25 = ashr exact i64 %sext, 32, !dbg !389
  br label %while.body143, !dbg !389

while.body143:                                    ; preds = %while.body143.preheader, %while.body143
  %indvars.iv = phi i64 [ %25, %while.body143.preheader ], [ %indvars.iv.next, %while.body143 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !183, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !388
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !390
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !183, metadata !DIExpression()), !dbg !388
  %arrayidx145 = getelementptr inbounds [256 x i64], ptr @__tid__, i64 0, i64 %indvars.iv.next, !dbg !391
  %26 = load i64, ptr %arrayidx145, align 8, !dbg !391
  %call146 = tail call i32 @pthread_join(i64 noundef %26, ptr noundef null) #20, !dbg !392
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !183, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !388
  %27 = trunc i64 %indvars.iv.next to i32, !dbg !389
  %tobool142.not = icmp eq i32 %27, 0, !dbg !389
  br i1 %tobool142.not, label %while.end147, label %while.body143, !dbg !389, !llvm.loop !393

while.end147:                                     ; preds = %while.body143, %for.end137
  %28 = load i64, ptr @doprint, align 8, !dbg !395
  %tobool148.not = icmp eq i64 %28, 0, !dbg !395
  br i1 %tobool148.not, label %if.end151, label %if.then149, !dbg !397

if.then149:                                       ; preds = %while.end147
  %puts419 = tail call i32 @puts(ptr nonnull @str.57), !dbg !398
  tail call void @PrintA(), !dbg !400
  br label %if.end151, !dbg !401

if.end151:                                        ; preds = %if.then149, %while.end147
  %29 = load i64, ptr @dostats, align 8, !dbg !402
  %tobool152.not = icmp eq i64 %29, 0, !dbg !402
  br i1 %tobool152.not, label %if.end282, label %if.then153, !dbg !404

if.then153:                                       ; preds = %if.end151
  %30 = load ptr, ptr @Global, align 8, !dbg !405
  %completion154 = getelementptr inbounds %struct.GlobalMemory, ptr %30, i64 0, i32 4, !dbg !407
  %31 = load ptr, ptr %completion154, align 8, !dbg !407
  %32 = load double, ptr %31, align 8, !dbg !405
  call void @llvm.dbg.value(metadata double %32, metadata !164, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %32, metadata !166, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %32, metadata !165, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 1, metadata !162, metadata !DIExpression()), !dbg !185
  %33 = load i64, ptr @P, align 8
  %cmp157443 = icmp sgt i64 %33, 1, !dbg !408
  br i1 %cmp157443, label %for.body159, label %for.end180, !dbg !411

for.body159:                                      ; preds = %if.then153, %if.end175
  %i.0447 = phi i64 [ %inc179, %if.end175 ], [ 1, %if.then153 ]
  %mint.0446 = phi double [ %mint.1, %if.end175 ], [ %32, %if.then153 ]
  %avgt.0445 = phi double [ %add, %if.end175 ], [ %32, %if.then153 ]
  %maxt.0444 = phi double [ %maxt.1, %if.end175 ], [ %32, %if.then153 ]
  call void @llvm.dbg.value(metadata i64 %i.0447, metadata !162, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %mint.0446, metadata !164, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %avgt.0445, metadata !166, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %maxt.0444, metadata !165, metadata !DIExpression()), !dbg !185
  %arrayidx161 = getelementptr inbounds double, ptr %31, i64 %i.0447, !dbg !412
  %34 = load double, ptr %arrayidx161, align 8, !dbg !412
  %cmp162 = fcmp ogt double %34, %maxt.0444, !dbg !415
  br i1 %cmp162, label %if.then164, label %if.end167, !dbg !416

if.then164:                                       ; preds = %for.body159
  call void @llvm.dbg.value(metadata double %34, metadata !165, metadata !DIExpression()), !dbg !185
  br label %if.end167, !dbg !417

if.end167:                                        ; preds = %if.then164, %for.body159
  %maxt.1 = phi double [ %34, %if.then164 ], [ %maxt.0444, %for.body159 ], !dbg !419
  call void @llvm.dbg.value(metadata double %maxt.1, metadata !165, metadata !DIExpression()), !dbg !185
  %cmp170 = fcmp olt double %34, %mint.0446, !dbg !420
  br i1 %cmp170, label %if.then172, label %if.end175, !dbg !422

if.then172:                                       ; preds = %if.end167
  call void @llvm.dbg.value(metadata double %34, metadata !164, metadata !DIExpression()), !dbg !185
  br label %if.end175, !dbg !423

if.end175:                                        ; preds = %if.then172, %if.end167
  %mint.1 = phi double [ %34, %if.then172 ], [ %mint.0446, %if.end167 ], !dbg !419
  call void @llvm.dbg.value(metadata double %mint.1, metadata !164, metadata !DIExpression()), !dbg !185
  %add = fadd double %avgt.0445, %34, !dbg !425
  call void @llvm.dbg.value(metadata double %add, metadata !166, metadata !DIExpression()), !dbg !185
  %inc179 = add nuw nsw i64 %i.0447, 1, !dbg !426
  call void @llvm.dbg.value(metadata i64 %inc179, metadata !162, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %maxt.1, metadata !165, metadata !DIExpression()), !dbg !185
  %exitcond.not = icmp eq i64 %inc179, %33, !dbg !408
  br i1 %exitcond.not, label %for.end180, label %for.body159, !dbg !411, !llvm.loop !427

for.end180:                                       ; preds = %if.end175, %if.then153
  %maxt.0.lcssa = phi double [ %32, %if.then153 ], [ %maxt.1, %if.end175 ], !dbg !419
  %avgt.0.lcssa = phi double [ %32, %if.then153 ], [ %add, %if.end175 ], !dbg !419
  %mint.0.lcssa = phi double [ %32, %if.then153 ], [ %mint.1, %if.end175 ], !dbg !419
  %conv181 = sitofp i64 %33 to double, !dbg !429
  %div182 = fdiv double %avgt.0.lcssa, %conv181, !dbg !430
  call void @llvm.dbg.value(metadata double %div182, metadata !166, metadata !DIExpression()), !dbg !185
  %35 = load ptr, ptr %30, align 8, !dbg !431
  %36 = load double, ptr %35, align 8, !dbg !432
  call void @llvm.dbg.value(metadata double %36, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %36, metadata !171, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %36, metadata !167, metadata !DIExpression()), !dbg !185
  %t_in_solve185 = getelementptr inbounds %struct.GlobalMemory, ptr %30, i64 0, i32 1, !dbg !433
  %37 = load ptr, ptr %t_in_solve185, align 8, !dbg !433
  %38 = load double, ptr %37, align 8, !dbg !434
  call void @llvm.dbg.value(metadata double %38, metadata !176, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %38, metadata !172, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %38, metadata !168, metadata !DIExpression()), !dbg !185
  %t_in_mod187 = getelementptr inbounds %struct.GlobalMemory, ptr %30, i64 0, i32 2, !dbg !435
  %39 = load ptr, ptr %t_in_mod187, align 8, !dbg !435
  %40 = load double, ptr %39, align 8, !dbg !436
  call void @llvm.dbg.value(metadata double %40, metadata !177, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %40, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %40, metadata !169, metadata !DIExpression()), !dbg !185
  %t_in_bar189 = getelementptr inbounds %struct.GlobalMemory, ptr %30, i64 0, i32 3, !dbg !437
  %41 = load ptr, ptr %t_in_bar189, align 8, !dbg !437
  %42 = load double, ptr %41, align 8, !dbg !438
  call void @llvm.dbg.value(metadata double %42, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %42, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %42, metadata !170, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 1, metadata !162, metadata !DIExpression()), !dbg !185
  br i1 %cmp157443, label %for.body194, label %for.end273, !dbg !439

for.body194:                                      ; preds = %for.end180, %if.end258
  %i.1464 = phi i64 [ %inc272, %if.end258 ], [ 1, %for.end180 ]
  %avg_bar.0463 = phi double [ %add270, %if.end258 ], [ %42, %for.end180 ]
  %avg_mod.0462 = phi double [ %add267, %if.end258 ], [ %40, %for.end180 ]
  %avg_solve.0461 = phi double [ %add264, %if.end258 ], [ %38, %for.end180 ]
  %avg_fac.0460 = phi double [ %add261, %if.end258 ], [ %36, %for.end180 ]
  %max_bar.0459 = phi double [ %max_bar.1, %if.end258 ], [ %42, %for.end180 ]
  %max_mod.0458 = phi double [ %max_mod.1, %if.end258 ], [ %40, %for.end180 ]
  %max_solve.0457 = phi double [ %max_solve.1, %if.end258 ], [ %38, %for.end180 ]
  %max_fac.0456 = phi double [ %max_fac.1, %if.end258 ], [ %36, %for.end180 ]
  %min_bar.0455 = phi double [ %min_bar.1, %if.end258 ], [ %42, %for.end180 ]
  %min_mod.0454 = phi double [ %min_mod.1, %if.end258 ], [ %40, %for.end180 ]
  %min_solve.0453 = phi double [ %min_solve.1, %if.end258 ], [ %38, %for.end180 ]
  %min_fac.0452 = phi double [ %min_fac.1, %if.end258 ], [ %36, %for.end180 ]
  call void @llvm.dbg.value(metadata i64 %i.1464, metadata !162, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %avg_bar.0463, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %avg_mod.0462, metadata !177, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %avg_solve.0461, metadata !176, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %avg_fac.0460, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %max_bar.0459, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %max_mod.0458, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %max_solve.0457, metadata !172, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %max_fac.0456, metadata !171, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %min_bar.0455, metadata !170, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %min_mod.0454, metadata !169, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %min_solve.0453, metadata !168, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %min_fac.0452, metadata !167, metadata !DIExpression()), !dbg !185
  %arrayidx196 = getelementptr inbounds double, ptr %35, i64 %i.1464, !dbg !441
  %43 = load double, ptr %arrayidx196, align 8, !dbg !441
  %cmp197 = fcmp ogt double %43, %max_fac.0456, !dbg !445
  br i1 %cmp197, label %if.then199, label %if.end202, !dbg !446

if.then199:                                       ; preds = %for.body194
  call void @llvm.dbg.value(metadata double %43, metadata !171, metadata !DIExpression()), !dbg !185
  br label %if.end202, !dbg !447

if.end202:                                        ; preds = %if.then199, %for.body194
  %max_fac.1 = phi double [ %43, %if.then199 ], [ %max_fac.0456, %for.body194 ], !dbg !419
  call void @llvm.dbg.value(metadata double %max_fac.1, metadata !171, metadata !DIExpression()), !dbg !185
  %cmp205 = fcmp olt double %43, %min_fac.0452, !dbg !449
  br i1 %cmp205, label %if.then207, label %if.end210, !dbg !451

if.then207:                                       ; preds = %if.end202
  call void @llvm.dbg.value(metadata double %43, metadata !167, metadata !DIExpression()), !dbg !185
  br label %if.end210, !dbg !452

if.end210:                                        ; preds = %if.then207, %if.end202
  %min_fac.1 = phi double [ %43, %if.then207 ], [ %min_fac.0452, %if.end202 ], !dbg !419
  call void @llvm.dbg.value(metadata double %min_fac.1, metadata !167, metadata !DIExpression()), !dbg !185
  %arrayidx212 = getelementptr inbounds double, ptr %37, i64 %i.1464, !dbg !454
  %44 = load double, ptr %arrayidx212, align 8, !dbg !454
  %cmp213 = fcmp ogt double %44, %max_solve.0457, !dbg !456
  br i1 %cmp213, label %if.then215, label %if.end218, !dbg !457

if.then215:                                       ; preds = %if.end210
  call void @llvm.dbg.value(metadata double %44, metadata !172, metadata !DIExpression()), !dbg !185
  br label %if.end218, !dbg !458

if.end218:                                        ; preds = %if.then215, %if.end210
  %max_solve.1 = phi double [ %44, %if.then215 ], [ %max_solve.0457, %if.end210 ], !dbg !419
  call void @llvm.dbg.value(metadata double %max_solve.1, metadata !172, metadata !DIExpression()), !dbg !185
  %cmp221 = fcmp olt double %44, %min_solve.0453, !dbg !460
  br i1 %cmp221, label %if.then223, label %if.end226, !dbg !462

if.then223:                                       ; preds = %if.end218
  call void @llvm.dbg.value(metadata double %44, metadata !168, metadata !DIExpression()), !dbg !185
  br label %if.end226, !dbg !463

if.end226:                                        ; preds = %if.then223, %if.end218
  %min_solve.1 = phi double [ %44, %if.then223 ], [ %min_solve.0453, %if.end218 ], !dbg !419
  call void @llvm.dbg.value(metadata double %min_solve.1, metadata !168, metadata !DIExpression()), !dbg !185
  %arrayidx228 = getelementptr inbounds double, ptr %39, i64 %i.1464, !dbg !465
  %45 = load double, ptr %arrayidx228, align 8, !dbg !465
  %cmp229 = fcmp ogt double %45, %max_mod.0458, !dbg !467
  br i1 %cmp229, label %if.then231, label %if.end234, !dbg !468

if.then231:                                       ; preds = %if.end226
  call void @llvm.dbg.value(metadata double %45, metadata !173, metadata !DIExpression()), !dbg !185
  br label %if.end234, !dbg !469

if.end234:                                        ; preds = %if.then231, %if.end226
  %max_mod.1 = phi double [ %45, %if.then231 ], [ %max_mod.0458, %if.end226 ], !dbg !419
  call void @llvm.dbg.value(metadata double %max_mod.1, metadata !173, metadata !DIExpression()), !dbg !185
  %cmp237 = fcmp olt double %45, %min_mod.0454, !dbg !471
  br i1 %cmp237, label %if.then239, label %if.end242, !dbg !473

if.then239:                                       ; preds = %if.end234
  call void @llvm.dbg.value(metadata double %45, metadata !169, metadata !DIExpression()), !dbg !185
  br label %if.end242, !dbg !474

if.end242:                                        ; preds = %if.then239, %if.end234
  %min_mod.1 = phi double [ %45, %if.then239 ], [ %min_mod.0454, %if.end234 ], !dbg !419
  call void @llvm.dbg.value(metadata double %min_mod.1, metadata !169, metadata !DIExpression()), !dbg !185
  %arrayidx244 = getelementptr inbounds double, ptr %41, i64 %i.1464, !dbg !476
  %46 = load double, ptr %arrayidx244, align 8, !dbg !476
  %cmp245 = fcmp ogt double %46, %max_bar.0459, !dbg !478
  br i1 %cmp245, label %if.then247, label %if.end250, !dbg !479

if.then247:                                       ; preds = %if.end242
  call void @llvm.dbg.value(metadata double %46, metadata !174, metadata !DIExpression()), !dbg !185
  br label %if.end250, !dbg !480

if.end250:                                        ; preds = %if.then247, %if.end242
  %max_bar.1 = phi double [ %46, %if.then247 ], [ %max_bar.0459, %if.end242 ], !dbg !419
  call void @llvm.dbg.value(metadata double %max_bar.1, metadata !174, metadata !DIExpression()), !dbg !185
  %cmp253 = fcmp olt double %46, %min_bar.0455, !dbg !482
  br i1 %cmp253, label %if.then255, label %if.end258, !dbg !484

if.then255:                                       ; preds = %if.end250
  call void @llvm.dbg.value(metadata double %46, metadata !170, metadata !DIExpression()), !dbg !185
  br label %if.end258, !dbg !485

if.end258:                                        ; preds = %if.then255, %if.end250
  %min_bar.1 = phi double [ %46, %if.then255 ], [ %min_bar.0455, %if.end250 ], !dbg !419
  call void @llvm.dbg.value(metadata double %min_bar.1, metadata !170, metadata !DIExpression()), !dbg !185
  %add261 = fadd double %avg_fac.0460, %43, !dbg !487
  call void @llvm.dbg.value(metadata double %add261, metadata !175, metadata !DIExpression()), !dbg !185
  %add264 = fadd double %avg_solve.0461, %44, !dbg !488
  call void @llvm.dbg.value(metadata double %add264, metadata !176, metadata !DIExpression()), !dbg !185
  %add267 = fadd double %avg_mod.0462, %45, !dbg !489
  call void @llvm.dbg.value(metadata double %add267, metadata !177, metadata !DIExpression()), !dbg !185
  %add270 = fadd double %avg_bar.0463, %46, !dbg !490
  call void @llvm.dbg.value(metadata double %add270, metadata !178, metadata !DIExpression()), !dbg !185
  %inc272 = add nuw nsw i64 %i.1464, 1, !dbg !491
  call void @llvm.dbg.value(metadata i64 %inc272, metadata !162, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %max_bar.1, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %max_mod.1, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %max_solve.1, metadata !172, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %max_fac.1, metadata !171, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %min_mod.1, metadata !169, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %min_solve.1, metadata !168, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %min_fac.1, metadata !167, metadata !DIExpression()), !dbg !185
  %exitcond480.not = icmp eq i64 %inc272, %33, !dbg !492
  br i1 %exitcond480.not, label %for.end273, label %for.body194, !dbg !439, !llvm.loop !493

for.end273:                                       ; preds = %if.end258, %for.end180
  %min_fac.0.lcssa = phi double [ %36, %for.end180 ], [ %min_fac.1, %if.end258 ], !dbg !419
  %min_solve.0.lcssa = phi double [ %38, %for.end180 ], [ %min_solve.1, %if.end258 ], !dbg !419
  %min_mod.0.lcssa = phi double [ %40, %for.end180 ], [ %min_mod.1, %if.end258 ], !dbg !419
  %min_bar.0.lcssa = phi double [ %42, %for.end180 ], [ %min_bar.1, %if.end258 ], !dbg !419
  %max_fac.0.lcssa = phi double [ %36, %for.end180 ], [ %max_fac.1, %if.end258 ], !dbg !419
  %max_solve.0.lcssa = phi double [ %38, %for.end180 ], [ %max_solve.1, %if.end258 ], !dbg !419
  %max_mod.0.lcssa = phi double [ %40, %for.end180 ], [ %max_mod.1, %if.end258 ], !dbg !419
  %max_bar.0.lcssa = phi double [ %42, %for.end180 ], [ %max_bar.1, %if.end258 ], !dbg !419
  %avg_fac.0.lcssa = phi double [ %36, %for.end180 ], [ %add261, %if.end258 ], !dbg !419
  %avg_solve.0.lcssa = phi double [ %38, %for.end180 ], [ %add264, %if.end258 ], !dbg !419
  %avg_mod.0.lcssa = phi double [ %40, %for.end180 ], [ %add267, %if.end258 ], !dbg !419
  %avg_bar.0.lcssa = phi double [ %42, %for.end180 ], [ %add270, %if.end258 ], !dbg !419
  %div275 = fdiv double %avg_fac.0.lcssa, %conv181, !dbg !495
  call void @llvm.dbg.value(metadata double %div275, metadata !175, metadata !DIExpression()), !dbg !185
  %div277 = fdiv double %avg_solve.0.lcssa, %conv181, !dbg !496
  call void @llvm.dbg.value(metadata double %div277, metadata !176, metadata !DIExpression()), !dbg !185
  %div279 = fdiv double %avg_mod.0.lcssa, %conv181, !dbg !497
  call void @llvm.dbg.value(metadata double %div279, metadata !177, metadata !DIExpression()), !dbg !185
  %div281 = fdiv double %avg_bar.0.lcssa, %conv181, !dbg !498
  call void @llvm.dbg.value(metadata double %div281, metadata !178, metadata !DIExpression()), !dbg !185
  br label %if.end282, !dbg !499

if.end282:                                        ; preds = %for.end273, %if.end151
  %maxt.2 = phi double [ %maxt.0.lcssa, %for.end273 ], [ undef, %if.end151 ]
  %avgt.1 = phi double [ %div182, %for.end273 ], [ undef, %if.end151 ]
  %min_fac.2 = phi double [ %min_fac.0.lcssa, %for.end273 ], [ undef, %if.end151 ]
  %min_solve.2 = phi double [ %min_solve.0.lcssa, %for.end273 ], [ undef, %if.end151 ]
  %min_mod.2 = phi double [ %min_mod.0.lcssa, %for.end273 ], [ undef, %if.end151 ]
  %min_bar.2 = phi double [ %min_bar.0.lcssa, %for.end273 ], [ undef, %if.end151 ]
  %max_fac.2 = phi double [ %max_fac.0.lcssa, %for.end273 ], [ undef, %if.end151 ]
  %max_solve.2 = phi double [ %max_solve.0.lcssa, %for.end273 ], [ undef, %if.end151 ]
  %max_mod.2 = phi double [ %max_mod.0.lcssa, %for.end273 ], [ undef, %if.end151 ]
  %max_bar.2 = phi double [ %max_bar.0.lcssa, %for.end273 ], [ undef, %if.end151 ]
  %avg_fac.1 = phi double [ %div275, %for.end273 ], [ undef, %if.end151 ]
  %avg_solve.1 = phi double [ %div277, %for.end273 ], [ undef, %if.end151 ]
  %avg_mod.1 = phi double [ %div279, %for.end273 ], [ undef, %if.end151 ]
  %avg_bar.1 = phi double [ %div281, %for.end273 ], [ undef, %if.end151 ]
  %mint.2 = phi double [ %mint.0.lcssa, %for.end273 ], [ undef, %if.end151 ]
  call void @llvm.dbg.value(metadata double %mint.2, metadata !164, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %avg_bar.1, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %avg_mod.1, metadata !177, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %avg_solve.1, metadata !176, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %avg_fac.1, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %max_bar.2, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %max_mod.2, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %max_solve.2, metadata !172, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %max_fac.2, metadata !171, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %min_bar.2, metadata !170, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %min_mod.2, metadata !169, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %min_solve.2, metadata !168, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %min_fac.2, metadata !167, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %avgt.1, metadata !166, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %maxt.2, metadata !165, metadata !DIExpression()), !dbg !185
  %puts412 = tail call i32 @puts(ptr nonnull @str.52), !dbg !500
  %puts413 = tail call i32 @puts(ptr nonnull @str.53), !dbg !501
  %puts414 = tail call i32 @puts(ptr nonnull @str.54), !dbg !502
  %47 = load ptr, ptr @Global, align 8, !dbg !503
  %completion286 = getelementptr inbounds %struct.GlobalMemory, ptr %47, i64 0, i32 4, !dbg !504
  %48 = load ptr, ptr %completion286, align 8, !dbg !504
  %49 = load double, ptr %48, align 8, !dbg !503
  %50 = load ptr, ptr %47, align 8, !dbg !505
  %51 = load double, ptr %50, align 8, !dbg !506
  %t_in_solve290 = getelementptr inbounds %struct.GlobalMemory, ptr %47, i64 0, i32 1, !dbg !507
  %52 = load ptr, ptr %t_in_solve290, align 8, !dbg !507
  %53 = load double, ptr %52, align 8, !dbg !508
  %t_in_mod292 = getelementptr inbounds %struct.GlobalMemory, ptr %47, i64 0, i32 2, !dbg !509
  %54 = load ptr, ptr %t_in_mod292, align 8, !dbg !509
  %55 = load double, ptr %54, align 8, !dbg !510
  %t_in_bar294 = getelementptr inbounds %struct.GlobalMemory, ptr %47, i64 0, i32 3, !dbg !511
  %56 = load ptr, ptr %t_in_bar294, align 8, !dbg !511
  %57 = load double, ptr %56, align 8, !dbg !512
  %call296 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.34, double noundef %49, double noundef %51, double noundef %53, double noundef %55, double noundef %57), !dbg !513
  %58 = load i64, ptr @dostats, align 8, !dbg !514
  %tobool297.not = icmp eq i64 %58, 0, !dbg !514
  br i1 %tobool297.not, label %if.end320, label %for.cond299.preheader, !dbg !516

for.cond299.preheader:                            ; preds = %if.end282
  call void @llvm.dbg.value(metadata i64 1, metadata !162, metadata !DIExpression()), !dbg !185
  %59 = load i64, ptr @P, align 8, !dbg !517
  %cmp300477 = icmp sgt i64 %59, 1, !dbg !521
  br i1 %cmp300477, label %for.body302, label %for.end316, !dbg !522

for.body302:                                      ; preds = %for.cond299.preheader, %for.body302
  %i.2478 = phi i64 [ %inc315, %for.body302 ], [ 1, %for.cond299.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.2478, metadata !162, metadata !DIExpression()), !dbg !185
  %60 = load ptr, ptr @Global, align 8, !dbg !523
  %completion303 = getelementptr inbounds %struct.GlobalMemory, ptr %60, i64 0, i32 4, !dbg !525
  %61 = load ptr, ptr %completion303, align 8, !dbg !525
  %arrayidx304 = getelementptr inbounds double, ptr %61, i64 %i.2478, !dbg !523
  %62 = load double, ptr %arrayidx304, align 8, !dbg !523
  %63 = load ptr, ptr %60, align 8, !dbg !526
  %arrayidx306 = getelementptr inbounds double, ptr %63, i64 %i.2478, !dbg !527
  %64 = load double, ptr %arrayidx306, align 8, !dbg !527
  %t_in_solve307 = getelementptr inbounds %struct.GlobalMemory, ptr %60, i64 0, i32 1, !dbg !528
  %65 = load ptr, ptr %t_in_solve307, align 8, !dbg !528
  %arrayidx308 = getelementptr inbounds double, ptr %65, i64 %i.2478, !dbg !529
  %66 = load double, ptr %arrayidx308, align 8, !dbg !529
  %t_in_mod309 = getelementptr inbounds %struct.GlobalMemory, ptr %60, i64 0, i32 2, !dbg !530
  %67 = load ptr, ptr %t_in_mod309, align 8, !dbg !530
  %arrayidx310 = getelementptr inbounds double, ptr %67, i64 %i.2478, !dbg !531
  %68 = load double, ptr %arrayidx310, align 8, !dbg !531
  %t_in_bar311 = getelementptr inbounds %struct.GlobalMemory, ptr %60, i64 0, i32 3, !dbg !532
  %69 = load ptr, ptr %t_in_bar311, align 8, !dbg !532
  %arrayidx312 = getelementptr inbounds double, ptr %69, i64 %i.2478, !dbg !533
  %70 = load double, ptr %arrayidx312, align 8, !dbg !533
  %call313 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.35, i64 noundef %i.2478, double noundef %62, double noundef %64, double noundef %66, double noundef %68, double noundef %70), !dbg !534
  %inc315 = add nuw nsw i64 %i.2478, 1, !dbg !535
  call void @llvm.dbg.value(metadata i64 %inc315, metadata !162, metadata !DIExpression()), !dbg !185
  %71 = load i64, ptr @P, align 8, !dbg !517
  %cmp300 = icmp slt i64 %inc315, %71, !dbg !521
  br i1 %cmp300, label %for.body302, label %for.end316, !dbg !522, !llvm.loop !536

for.end316:                                       ; preds = %for.body302, %for.cond299.preheader
  %call317 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.36, double noundef %avgt.1, double noundef %avg_fac.1, double noundef %avg_solve.1, double noundef %avg_mod.1, double noundef %avg_bar.1), !dbg !538
  %call318 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.37, double noundef %mint.2, double noundef %min_fac.2, double noundef %min_solve.2, double noundef %min_mod.2, double noundef %min_bar.2), !dbg !539
  %call319 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.38, double noundef %maxt.2, double noundef %max_fac.2, double noundef %max_solve.2, double noundef %max_mod.2, double noundef %max_bar.2), !dbg !540
  br label %if.end320, !dbg !541

if.end320:                                        ; preds = %for.end316, %if.end282
  %putchar415 = tail call i32 @putchar(i32 10), !dbg !542
  %72 = load ptr, ptr @Global, align 8, !dbg !543
  %starttime = getelementptr inbounds %struct.GlobalMemory, ptr %72, i64 0, i32 5, !dbg !544
  store i64 %call, ptr %starttime, align 8, !dbg !545
  %puts416 = tail call i32 @puts(ptr nonnull @str.55), !dbg !546
  %73 = load ptr, ptr @Global, align 8, !dbg !547
  %starttime323 = getelementptr inbounds %struct.GlobalMemory, ptr %73, i64 0, i32 5, !dbg !548
  %74 = load i64, ptr %starttime323, align 8, !dbg !548
  %call324 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.40, i64 noundef %74), !dbg !549
  %75 = load ptr, ptr @Global, align 8, !dbg !550
  %rs = getelementptr inbounds %struct.GlobalMemory, ptr %75, i64 0, i32 7, !dbg !551
  %76 = load i64, ptr %rs, align 8, !dbg !551
  %call325 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.41, i64 noundef %76), !dbg !552
  %77 = load ptr, ptr @Global, align 8, !dbg !553
  %rf = getelementptr inbounds %struct.GlobalMemory, ptr %77, i64 0, i32 6, !dbg !554
  %78 = load i64, ptr %rf, align 8, !dbg !554
  %call326 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.42, i64 noundef %78), !dbg !555
  %79 = load ptr, ptr @Global, align 8, !dbg !556
  %rf327 = getelementptr inbounds %struct.GlobalMemory, ptr %79, i64 0, i32 6, !dbg !557
  %80 = load i64, ptr %rf327, align 8, !dbg !557
  %starttime328 = getelementptr inbounds %struct.GlobalMemory, ptr %79, i64 0, i32 5, !dbg !558
  %81 = load i64, ptr %starttime328, align 8, !dbg !558
  %sub329 = sub i64 %80, %81, !dbg !559
  %call330 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.43, i64 noundef %sub329), !dbg !560
  %82 = load ptr, ptr @Global, align 8, !dbg !561
  %rf331 = getelementptr inbounds %struct.GlobalMemory, ptr %82, i64 0, i32 6, !dbg !562
  %83 = load i64, ptr %rf331, align 8, !dbg !562
  %rs332 = getelementptr inbounds %struct.GlobalMemory, ptr %82, i64 0, i32 7, !dbg !563
  %84 = load i64, ptr %rs332, align 8, !dbg !563
  %sub333 = sub i64 %83, %84, !dbg !564
  %call334 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.44, i64 noundef %sub333), !dbg !565
  %putchar417 = tail call i32 @putchar(i32 10), !dbg !566
  %85 = load i64, ptr @test_result, align 8, !dbg !567
  %tobool336.not = icmp eq i64 %85, 0, !dbg !567
  br i1 %tobool336.not, label %if.end339, label %if.then337, !dbg !569

if.then337:                                       ; preds = %if.end320
  %puts418 = tail call i32 @puts(ptr nonnull @str.56), !dbg !570
  %86 = load i64, ptr @n, align 8, !dbg !572
  %87 = load ptr, ptr @a, align 8, !dbg !573
  %88 = load ptr, ptr @rhs, align 8, !dbg !574
  tail call void @CheckResult(i64 noundef %86, ptr noundef %87, ptr noundef %88), !dbg !575
  br label %if.end339, !dbg !576

if.end339:                                        ; preds = %if.then337, %if.end320
  tail call void @exit(i32 noundef 0) #22, !dbg !577
  unreachable, !dbg !577
}

; Function Attrs: nounwind
declare !dbg !579 i64 @time(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !587 i32 @__posix_getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !595 i32 @atoi(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare !dbg !599 i64 @pthread_self() local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @printerr(ptr noundef %s) local_unnamed_addr #8 !dbg !603 {
entry:
  call void @llvm.dbg.value(metadata ptr %s, metadata !607, metadata !DIExpression()), !dbg !608
  %0 = load ptr, ptr @stderr, align 8, !dbg !609
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.51, ptr noundef %s) #25, !dbg !610
  ret void, !dbg !611
}

; Function Attrs: nounwind
declare !dbg !612 i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !626 i32 @pthread_cond_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @InitA(ptr nocapture noundef %rhs) local_unnamed_addr #9 !dbg !639 {
entry:
  call void @llvm.dbg.value(metadata ptr %rhs, metadata !643, metadata !DIExpression()), !dbg !646
  tail call void @srand48(i64 noundef 1) #20, !dbg !647
  call void @llvm.dbg.value(metadata i64 0, metadata !645, metadata !DIExpression()), !dbg !646
  %0 = load i64, ptr @n, align 8, !dbg !648
  %cmp62 = icmp sgt i64 %0, 0, !dbg !651
  br i1 %cmp62, label %for.cond1.preheader, label %for.end39, !dbg !652

for.cond1.preheader:                              ; preds = %entry, %for.inc10
  %1 = phi i64 [ %8, %for.inc10 ], [ %0, %entry ]
  %j.063 = phi i64 [ %inc11, %for.inc10 ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %j.063, metadata !645, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i64 0, metadata !644, metadata !DIExpression()), !dbg !646
  %cmp259 = icmp sgt i64 %1, 0, !dbg !653
  br i1 %cmp259, label %for.body3, label %for.inc10, !dbg !657

for.cond13.preheader:                             ; preds = %for.inc10
  call void @llvm.dbg.value(metadata i64 0, metadata !645, metadata !DIExpression()), !dbg !646
  %cmp1465 = icmp sgt i64 %8, 0, !dbg !658
  br i1 %cmp1465, label %for.body16, label %for.end39, !dbg !661

for.body3:                                        ; preds = %for.cond1.preheader, %for.inc
  %i.060 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond1.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.060, metadata !644, metadata !DIExpression()), !dbg !646
  %call = tail call i64 @lrand48() #20, !dbg !662
  %conv = sitofp i64 %call to double, !dbg !664
  %div = fdiv double %conv, 3.276700e+04, !dbg !665
  %2 = load ptr, ptr @a, align 8, !dbg !666
  %3 = load i64, ptr @n, align 8, !dbg !667
  %mul = mul nsw i64 %3, %j.063, !dbg !668
  %add = add nsw i64 %mul, %i.060, !dbg !669
  %arrayidx = getelementptr inbounds double, ptr %2, i64 %add, !dbg !666
  store double %div, ptr %arrayidx, align 8, !dbg !670
  %cmp4 = icmp eq i64 %i.060, %j.063, !dbg !671
  br i1 %cmp4, label %if.then, label %for.inc, !dbg !673

if.then:                                          ; preds = %for.body3
  %4 = load ptr, ptr @a, align 8, !dbg !674
  %5 = load i64, ptr @n, align 8, !dbg !676
  %mul6 = mul nsw i64 %5, %j.063, !dbg !677
  %add7 = add nsw i64 %mul6, %j.063, !dbg !678
  %arrayidx8 = getelementptr inbounds double, ptr %4, i64 %add7, !dbg !674
  %6 = load double, ptr %arrayidx8, align 8, !dbg !679
  %mul9 = fmul double %6, 1.000000e+01, !dbg !679
  store double %mul9, ptr %arrayidx8, align 8, !dbg !679
  br label %for.inc, !dbg !680

for.inc:                                          ; preds = %for.body3, %if.then
  %inc = add nuw nsw i64 %i.060, 1, !dbg !681
  call void @llvm.dbg.value(metadata i64 %inc, metadata !644, metadata !DIExpression()), !dbg !646
  %7 = load i64, ptr @n, align 8, !dbg !682
  %cmp2 = icmp slt i64 %inc, %7, !dbg !653
  br i1 %cmp2, label %for.body3, label %for.inc10, !dbg !657, !llvm.loop !683

for.inc10:                                        ; preds = %for.inc, %for.cond1.preheader
  %8 = phi i64 [ %1, %for.cond1.preheader ], [ %7, %for.inc ], !dbg !648
  %inc11 = add nuw nsw i64 %j.063, 1, !dbg !685
  call void @llvm.dbg.value(metadata i64 %inc11, metadata !645, metadata !DIExpression()), !dbg !646
  %cmp = icmp slt i64 %inc11, %8, !dbg !651
  br i1 %cmp, label %for.cond1.preheader, label %for.cond13.preheader, !dbg !652, !llvm.loop !686

for.cond21.preheader:                             ; preds = %for.body16
  call void @llvm.dbg.value(metadata i64 0, metadata !645, metadata !DIExpression()), !dbg !646
  %cmp2269 = icmp sgt i64 %9, 0, !dbg !689
  br i1 %cmp2269, label %for.cond25.preheader, label %for.end39, !dbg !692

for.body16:                                       ; preds = %for.cond13.preheader, %for.body16
  %j.166 = phi i64 [ %inc19, %for.body16 ], [ 0, %for.cond13.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.166, metadata !645, metadata !DIExpression()), !dbg !646
  %arrayidx17 = getelementptr inbounds double, ptr %rhs, i64 %j.166, !dbg !693
  store double 0.000000e+00, ptr %arrayidx17, align 8, !dbg !695
  %inc19 = add nuw nsw i64 %j.166, 1, !dbg !696
  call void @llvm.dbg.value(metadata i64 %inc19, metadata !645, metadata !DIExpression()), !dbg !646
  %9 = load i64, ptr @n, align 8, !dbg !697
  %cmp14 = icmp slt i64 %inc19, %9, !dbg !658
  br i1 %cmp14, label %for.body16, label %for.cond21.preheader, !dbg !661, !llvm.loop !698

for.cond25.preheader:                             ; preds = %for.cond21.preheader, %for.inc37
  %10 = phi i64 [ %16, %for.inc37 ], [ %9, %for.cond21.preheader ]
  %j.270 = phi i64 [ %inc38, %for.inc37 ], [ 0, %for.cond21.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.270, metadata !645, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i64 0, metadata !644, metadata !DIExpression()), !dbg !646
  %cmp2667 = icmp sgt i64 %10, 0, !dbg !700
  br i1 %cmp2667, label %for.body28, label %for.inc37, !dbg !704

for.body28:                                       ; preds = %for.cond25.preheader, %for.body28
  %11 = phi i64 [ %15, %for.body28 ], [ %10, %for.cond25.preheader ]
  %i.168 = phi i64 [ %inc35, %for.body28 ], [ 0, %for.cond25.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.168, metadata !644, metadata !DIExpression()), !dbg !646
  %12 = load ptr, ptr @a, align 8, !dbg !705
  %mul29 = mul nsw i64 %11, %j.270, !dbg !707
  %add30 = add nsw i64 %mul29, %i.168, !dbg !708
  %arrayidx31 = getelementptr inbounds double, ptr %12, i64 %add30, !dbg !705
  %13 = load double, ptr %arrayidx31, align 8, !dbg !705
  %arrayidx32 = getelementptr inbounds double, ptr %rhs, i64 %i.168, !dbg !709
  %14 = load double, ptr %arrayidx32, align 8, !dbg !710
  %add33 = fadd double %13, %14, !dbg !710
  store double %add33, ptr %arrayidx32, align 8, !dbg !710
  %inc35 = add nuw nsw i64 %i.168, 1, !dbg !711
  call void @llvm.dbg.value(metadata i64 %inc35, metadata !644, metadata !DIExpression()), !dbg !646
  %15 = load i64, ptr @n, align 8, !dbg !712
  %cmp26 = icmp slt i64 %inc35, %15, !dbg !700
  br i1 %cmp26, label %for.body28, label %for.inc37, !dbg !704, !llvm.loop !713

for.inc37:                                        ; preds = %for.body28, %for.cond25.preheader
  %16 = phi i64 [ %10, %for.cond25.preheader ], [ %15, %for.body28 ], !dbg !715
  %inc38 = add nuw nsw i64 %j.270, 1, !dbg !716
  call void @llvm.dbg.value(metadata i64 %inc38, metadata !645, metadata !DIExpression()), !dbg !646
  %cmp22 = icmp slt i64 %inc38, %16, !dbg !689
  br i1 %cmp22, label %for.cond25.preheader, label %for.end39, !dbg !692, !llvm.loop !717

for.end39:                                        ; preds = %for.inc37, %entry, %for.cond13.preheader, %for.cond21.preheader
  ret void, !dbg !719
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @PrintA() local_unnamed_addr #8 !dbg !720 {
entry:
  call void @llvm.dbg.value(metadata i64 0, metadata !724, metadata !DIExpression()), !dbg !726
  %0 = load i64, ptr @n, align 8, !dbg !727
  %cmp14 = icmp sgt i64 %0, 0, !dbg !730
  br i1 %cmp14, label %for.cond1.preheader, label %for.end7, !dbg !731

for.cond1.preheader:                              ; preds = %entry, %for.end
  %1 = phi i64 [ %6, %for.end ], [ %0, %entry ], !dbg !732
  %i.015 = phi i64 [ %inc6, %for.end ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.015, metadata !724, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i64 0, metadata !725, metadata !DIExpression()), !dbg !726
  %cmp212 = icmp sgt i64 %1, 0, !dbg !736
  br i1 %cmp212, label %for.body3, label %for.end, !dbg !737

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %2 = phi i64 [ %5, %for.body3 ], [ %1, %for.cond1.preheader ]
  %j.013 = phi i64 [ %inc, %for.body3 ], [ 0, %for.cond1.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.013, metadata !725, metadata !DIExpression()), !dbg !726
  %3 = load ptr, ptr @a, align 8, !dbg !738
  %mul = mul nsw i64 %2, %j.013, !dbg !740
  %add = add nsw i64 %mul, %i.015, !dbg !741
  %arrayidx = getelementptr inbounds double, ptr %3, i64 %add, !dbg !738
  %4 = load double, ptr %arrayidx, align 8, !dbg !738
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.47, double noundef %4), !dbg !742
  %inc = add nuw nsw i64 %j.013, 1, !dbg !743
  call void @llvm.dbg.value(metadata i64 %inc, metadata !725, metadata !DIExpression()), !dbg !726
  %5 = load i64, ptr @n, align 8, !dbg !732
  %cmp2 = icmp slt i64 %inc, %5, !dbg !736
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !737, !llvm.loop !744

for.end:                                          ; preds = %for.body3, %for.cond1.preheader
  %putchar = tail call i32 @putchar(i32 10), !dbg !746
  %inc6 = add nuw nsw i64 %i.015, 1, !dbg !747
  call void @llvm.dbg.value(metadata i64 %inc6, metadata !724, metadata !DIExpression()), !dbg !726
  %6 = load i64, ptr @n, align 8, !dbg !727
  %cmp = icmp slt i64 %inc6, %6, !dbg !730
  br i1 %cmp, label %for.cond1.preheader, label %for.end7, !dbg !731, !llvm.loop !748

for.end7:                                         ; preds = %for.end, %entry
  ret void, !dbg !750
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !751 i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !754 i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @SlaveStart() #9 !dbg !771 {
entry:
  %0 = load ptr, ptr @Global, align 8, !dbg !774
  %idlock = getelementptr inbounds %struct.GlobalMemory, ptr %0, i64 0, i32 11, !dbg !776
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %idlock) #20, !dbg !777
  %1 = load ptr, ptr @Global, align 8, !dbg !778
  %id = getelementptr inbounds %struct.GlobalMemory, ptr %1, i64 0, i32 9, !dbg !779
  %2 = load i64, ptr %id, align 8, !dbg !779
  call void @llvm.dbg.value(metadata i64 %2, metadata !773, metadata !DIExpression()), !dbg !780
  %inc = add nsw i64 %2, 1, !dbg !781
  store i64 %inc, ptr %id, align 8, !dbg !781
  %idlock2 = getelementptr inbounds %struct.GlobalMemory, ptr %1, i64 0, i32 11, !dbg !782
  %call3 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %idlock2) #20, !dbg !784
  %3 = load i64, ptr @n, align 8, !dbg !785
  %4 = load i64, ptr @block_size, align 8, !dbg !786
  %5 = load i64, ptr @dostats, align 8, !dbg !787
  tail call void @OneSolve(i64 noundef %3, i64 noundef %4, i64 noundef %2, i64 noundef %5), !dbg !788
  ret void, !dbg !789
}

; Function Attrs: nounwind
declare !dbg !790 i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #1

declare !dbg !791 i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind uwtable
define dso_local void @CheckResult(i64 noundef %n, ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %rhs) local_unnamed_addr #9 !dbg !795 {
entry:
  call void @llvm.dbg.value(metadata i64 %n, metadata !799, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata ptr %a, metadata !800, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata ptr %rhs, metadata !801, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata i64 0, metadata !804, metadata !DIExpression()), !dbg !808
  %mul = shl i64 %n, 3, !dbg !809
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #24, !dbg !810
  call void @llvm.dbg.value(metadata ptr %call, metadata !805, metadata !DIExpression()), !dbg !808
  %cmp = icmp eq ptr %call, null, !dbg !811
  br i1 %cmp, label %if.then, label %for.cond.preheader, !dbg !813

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !803, metadata !DIExpression()), !dbg !808
  %cmp1106 = icmp sgt i64 %n, 0, !dbg !814
  br i1 %cmp1106, label %for.body5.preheader, label %if.else, !dbg !817

if.then:                                          ; preds = %entry
  tail call void @printerr(ptr noundef nonnull @.str.48), !dbg !818
  tail call void @exit(i32 noundef -1) #22, !dbg !820
  unreachable, !dbg !820

for.body5.preheader:                              ; preds = %for.cond.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %call, ptr align 8 %rhs, i64 %mul, i1 false), !dbg !821
  call void @llvm.dbg.value(metadata i64 0, metadata !803, metadata !DIExpression()), !dbg !808
  br label %for.body5, !dbg !823

for.cond3.loopexit:                               ; preds = %for.body13.for.body13_crit_edge, %for.body13.preheader, %for.body5
  call void @llvm.dbg.value(metadata i64 %add10, metadata !803, metadata !DIExpression()), !dbg !808
  %exitcond.not = icmp eq i64 %add10, %n, !dbg !825
  br i1 %exitcond.not, label %for.cond26.preheader, label %for.body5, !dbg !823, !llvm.loop !827

for.cond26.preheader:                             ; preds = %for.cond3.loopexit
  call void @llvm.dbg.value(metadata i64 %n, metadata !803, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !808
  br i1 %cmp1106, label %for.cond29.preheader, label %if.else, !dbg !829

for.body5:                                        ; preds = %for.body5.preheader, %for.cond3.loopexit
  %j.1111 = phi i64 [ %add10, %for.cond3.loopexit ], [ 0, %for.body5.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.1111, metadata !803, metadata !DIExpression()), !dbg !808
  %arrayidx6 = getelementptr inbounds double, ptr %call, i64 %j.1111, !dbg !831
  %0 = load double, ptr %arrayidx6, align 8, !dbg !831
  %mul7 = mul nsw i64 %j.1111, %n, !dbg !833
  %add = add nsw i64 %mul7, %j.1111, !dbg !834
  %arrayidx8 = getelementptr inbounds double, ptr %a, i64 %add, !dbg !835
  %1 = load double, ptr %arrayidx8, align 8, !dbg !835
  %div = fdiv double %0, %1, !dbg !836
  store double %div, ptr %arrayidx6, align 8, !dbg !837
  %add10 = add nuw nsw i64 %j.1111, 1, !dbg !838
  call void @llvm.dbg.value(metadata i64 %add10, metadata !802, metadata !DIExpression()), !dbg !808
  %cmp12108 = icmp slt i64 %add10, %n, !dbg !840
  br i1 %cmp12108, label %for.body13.preheader, label %for.cond3.loopexit, !dbg !842

for.body13.preheader:                             ; preds = %for.body5
  call void @llvm.dbg.value(metadata i64 %add10, metadata !802, metadata !DIExpression()), !dbg !808
  %add15126 = add nsw i64 %add10, %mul7, !dbg !843
  %arrayidx16127 = getelementptr inbounds double, ptr %a, i64 %add15126, !dbg !845
  %2 = load double, ptr %arrayidx16127, align 8, !dbg !845
  %arrayidx19128 = getelementptr inbounds double, ptr %call, i64 %add10, !dbg !846
  %3 = load double, ptr %arrayidx19128, align 8, !dbg !847
  %neg129 = fneg double %2, !dbg !847
  %4 = tail call double @llvm.fmuladd.f64(double %neg129, double %div, double %3), !dbg !847
  store double %4, ptr %arrayidx19128, align 8, !dbg !847
  %inc21130 = add nuw nsw i64 %j.1111, 2, !dbg !848
  call void @llvm.dbg.value(metadata i64 %inc21130, metadata !802, metadata !DIExpression()), !dbg !808
  %cmp12131 = icmp slt i64 %inc21130, %n, !dbg !840
  br i1 %cmp12131, label %for.body13.for.body13_crit_edge, label %for.cond3.loopexit, !dbg !842, !llvm.loop !849

for.body13.for.body13_crit_edge:                  ; preds = %for.body13.preheader, %for.body13.for.body13_crit_edge
  %inc21132 = phi i64 [ %inc21, %for.body13.for.body13_crit_edge ], [ %inc21130, %for.body13.preheader ]
  %.pre = load double, ptr %arrayidx6, align 8, !dbg !851
  call void @llvm.dbg.value(metadata i64 %inc21132, metadata !802, metadata !DIExpression()), !dbg !808
  %add15 = add nsw i64 %inc21132, %mul7, !dbg !843
  %arrayidx16 = getelementptr inbounds double, ptr %a, i64 %add15, !dbg !845
  %5 = load double, ptr %arrayidx16, align 8, !dbg !845
  %arrayidx19 = getelementptr inbounds double, ptr %call, i64 %inc21132, !dbg !846
  %6 = load double, ptr %arrayidx19, align 8, !dbg !847
  %neg = fneg double %5, !dbg !847
  %7 = tail call double @llvm.fmuladd.f64(double %neg, double %.pre, double %6), !dbg !847
  store double %7, ptr %arrayidx19, align 8, !dbg !847
  %inc21 = add nuw nsw i64 %inc21132, 1, !dbg !848
  call void @llvm.dbg.value(metadata i64 %inc21, metadata !802, metadata !DIExpression()), !dbg !808
  %cmp12 = icmp slt i64 %inc21, %n, !dbg !840
  br i1 %cmp12, label %for.body13.for.body13_crit_edge, label %for.cond3.loopexit, !dbg !842, !llvm.loop !849

for.cond26.loopexit:                              ; preds = %for.body31
  call void @llvm.dbg.value(metadata i64 %j.2116, metadata !803, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !808
  br i1 %cmp30112, label %for.cond29.preheader, label %for.cond44.preheader, !dbg !829, !llvm.loop !852

for.cond29.preheader:                             ; preds = %for.cond26.preheader, %for.cond26.loopexit
  %j.2116.in = phi i64 [ %j.2116, %for.cond26.loopexit ], [ %n, %for.cond26.preheader ]
  %j.2116 = add nsw i64 %j.2116.in, -1, !dbg !854
  call void @llvm.dbg.value(metadata i64 0, metadata !802, metadata !DIExpression()), !dbg !808
  %cmp30112 = icmp ugt i64 %j.2116.in, 1, !dbg !855
  br i1 %cmp30112, label %for.body31.lr.ph, label %for.cond44.preheader, !dbg !860

for.body31.lr.ph:                                 ; preds = %for.cond29.preheader
  %mul32 = mul nsw i64 %j.2116, %n
  %arrayidx35 = getelementptr inbounds double, ptr %call, i64 %j.2116
  br label %for.body31, !dbg !860

for.cond44.preheader:                             ; preds = %for.cond26.loopexit, %for.cond29.preheader
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !807, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata i64 0, metadata !803, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata i64 0, metadata !804, metadata !DIExpression()), !dbg !808
  br i1 %cmp1106, label %for.body46, label %if.else, !dbg !861

for.body31:                                       ; preds = %for.body31.lr.ph, %for.body31
  %i.1113 = phi i64 [ 0, %for.body31.lr.ph ], [ %inc40, %for.body31 ]
  call void @llvm.dbg.value(metadata i64 %i.1113, metadata !802, metadata !DIExpression()), !dbg !808
  %add33 = add nsw i64 %i.1113, %mul32, !dbg !863
  %arrayidx34 = getelementptr inbounds double, ptr %a, i64 %add33, !dbg !865
  %8 = load double, ptr %arrayidx34, align 8, !dbg !865
  %9 = load double, ptr %arrayidx35, align 8, !dbg !866
  %arrayidx37 = getelementptr inbounds double, ptr %call, i64 %i.1113, !dbg !867
  %10 = load double, ptr %arrayidx37, align 8, !dbg !868
  %neg38 = fneg double %8, !dbg !868
  %11 = tail call double @llvm.fmuladd.f64(double %neg38, double %9, double %10), !dbg !868
  store double %11, ptr %arrayidx37, align 8, !dbg !868
  %inc40 = add nuw nsw i64 %i.1113, 1, !dbg !869
  call void @llvm.dbg.value(metadata i64 %inc40, metadata !802, metadata !DIExpression()), !dbg !808
  %cmp30 = icmp slt i64 %inc40, %j.2116, !dbg !855
  br i1 %cmp30, label %for.body31, label %for.cond26.loopexit, !dbg !860, !llvm.loop !870

for.body46:                                       ; preds = %for.cond44.preheader, %for.inc52
  %max_diff.0120 = phi double [ %max_diff.1, %for.inc52 ], [ 0.000000e+00, %for.cond44.preheader ]
  %j.3119 = phi i64 [ %inc53, %for.inc52 ], [ 0, %for.cond44.preheader ]
  %bogus.0118 = phi i64 [ %bogus.1, %for.inc52 ], [ 0, %for.cond44.preheader ]
  call void @llvm.dbg.value(metadata double %max_diff.0120, metadata !807, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata i64 %j.3119, metadata !803, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata i64 %bogus.0118, metadata !804, metadata !DIExpression()), !dbg !808
  %arrayidx47 = getelementptr inbounds double, ptr %call, i64 %j.3119, !dbg !872
  %12 = load double, ptr %arrayidx47, align 8, !dbg !872
  %sub48 = fadd double %12, -1.000000e+00, !dbg !875
  call void @llvm.dbg.value(metadata double %sub48, metadata !806, metadata !DIExpression()), !dbg !808
  %13 = tail call double @llvm.fabs.f64(double %sub48), !dbg !876
  %cmp49 = fcmp ogt double %13, 1.000000e-05, !dbg !878
  br i1 %cmp49, label %if.then50, label %for.inc52, !dbg !879

if.then50:                                        ; preds = %for.body46
  call void @llvm.dbg.value(metadata i64 1, metadata !804, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata double %sub48, metadata !807, metadata !DIExpression()), !dbg !808
  br label %for.inc52, !dbg !880

for.inc52:                                        ; preds = %for.body46, %if.then50
  %bogus.1 = phi i64 [ 1, %if.then50 ], [ %bogus.0118, %for.body46 ], !dbg !808
  %max_diff.1 = phi double [ %sub48, %if.then50 ], [ %max_diff.0120, %for.body46 ], !dbg !808
  call void @llvm.dbg.value(metadata double %max_diff.1, metadata !807, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata i64 %bogus.1, metadata !804, metadata !DIExpression()), !dbg !808
  %inc53 = add nuw nsw i64 %j.3119, 1, !dbg !882
  call void @llvm.dbg.value(metadata i64 %inc53, metadata !803, metadata !DIExpression()), !dbg !808
  %exitcond122.not = icmp eq i64 %inc53, %n, !dbg !883
  br i1 %exitcond122.not, label %for.end54, label %for.body46, !dbg !861, !llvm.loop !884

for.end54:                                        ; preds = %for.inc52
  %tobool.not = icmp eq i64 %bogus.1, 0, !dbg !886
  br i1 %tobool.not, label %if.else, label %if.then55, !dbg !888

if.then55:                                        ; preds = %for.end54
  %call56 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.49, double noundef %max_diff.1), !dbg !889
  br label %if.end58, !dbg !891

if.else:                                          ; preds = %for.cond.preheader, %for.cond26.preheader, %for.cond44.preheader, %for.end54
  %puts = tail call i32 @puts(ptr nonnull @str.71), !dbg !892
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then55
  tail call void @free(ptr noundef %call) #20, !dbg !894
  ret void, !dbg !895
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @OneSolve(i64 noundef %n, i64 noundef %block_size, i64 noundef %MyNum, i64 noundef %dostats) local_unnamed_addr #9 !dbg !896 {
entry:
  call void @llvm.dbg.value(metadata i64 %n, metadata !900, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i64 %block_size, metadata !901, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i64 %MyNum, metadata !902, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i64 %dostats, metadata !903, metadata !DIExpression()), !dbg !908
  %calloc = call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32), !dbg !909
  call void @llvm.dbg.value(metadata ptr %calloc, metadata !907, metadata !DIExpression()), !dbg !908
  %cmp = icmp eq ptr %calloc, null, !dbg !910
  br i1 %cmp, label %if.then, label %if.end, !dbg !912

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !913
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.46, i64 noundef %MyNum) #25, !dbg !915
  tail call void @exit(i32 noundef -1) #22, !dbg !916
  unreachable, !dbg !916

if.end:                                           ; preds = %entry
  %t_in_solve = getelementptr inbounds %struct.LocalCopies, ptr %calloc, i64 0, i32 1, !dbg !917
  %t_in_mod = getelementptr inbounds %struct.LocalCopies, ptr %calloc, i64 0, i32 2, !dbg !918
  %t_in_bar = getelementptr inbounds %struct.LocalCopies, ptr %calloc, i64 0, i32 3, !dbg !919
  %1 = load ptr, ptr @Global, align 8, !dbg !920
  %start = getelementptr inbounds %struct.GlobalMemory, ptr %1, i64 0, i32 10, !dbg !922
  %call2 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %start) #20, !dbg !923
  %2 = load ptr, ptr @Global, align 8, !dbg !924
  %bar_teller = getelementptr inbounds %struct.GlobalMemory, ptr %2, i64 0, i32 10, i32 2, !dbg !925
  %3 = load i32, ptr %bar_teller, align 8, !dbg !926
  %inc = add i32 %3, 1, !dbg !926
  store i32 %inc, ptr %bar_teller, align 8, !dbg !926
  %conv = zext i32 %inc to i64, !dbg !927
  %4 = load i64, ptr @P, align 8, !dbg !929
  %cmp6 = icmp eq i64 %4, %conv, !dbg !930
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !931

if.then8:                                         ; preds = %if.end
  store i32 0, ptr %bar_teller, align 8, !dbg !932
  %bar_cond = getelementptr inbounds %struct.GlobalMemory, ptr %2, i64 0, i32 10, i32 1, !dbg !934
  %call12 = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %bar_cond) #20, !dbg !935
  br label %if.end18, !dbg !936

if.else:                                          ; preds = %if.end
  %start4 = getelementptr inbounds %struct.GlobalMemory, ptr %2, i64 0, i32 10, !dbg !937
  %bar_cond14 = getelementptr inbounds %struct.GlobalMemory, ptr %2, i64 0, i32 10, i32 1, !dbg !938
  %call17 = tail call i32 @pthread_cond_wait(ptr noundef nonnull %bar_cond14, ptr noundef nonnull %start4) #20, !dbg !940
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then8
  %5 = load ptr, ptr @Global, align 8, !dbg !941
  %start19 = getelementptr inbounds %struct.GlobalMemory, ptr %5, i64 0, i32 10, !dbg !942
  %call21 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %start19) #20, !dbg !943
  %call22 = tail call double @TouchA(i64 noundef %block_size, i64 noundef %MyNum), !dbg !944
  %6 = load ptr, ptr @Global, align 8, !dbg !945
  %start23 = getelementptr inbounds %struct.GlobalMemory, ptr %6, i64 0, i32 10, !dbg !947
  %call25 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %start23) #20, !dbg !948
  %7 = load ptr, ptr @Global, align 8, !dbg !949
  %bar_teller27 = getelementptr inbounds %struct.GlobalMemory, ptr %7, i64 0, i32 10, i32 2, !dbg !950
  %8 = load i32, ptr %bar_teller27, align 8, !dbg !951
  %inc28 = add i32 %8, 1, !dbg !951
  store i32 %inc28, ptr %bar_teller27, align 8, !dbg !951
  %conv31 = zext i32 %inc28 to i64, !dbg !952
  %9 = load i64, ptr @P, align 8, !dbg !954
  %cmp32 = icmp eq i64 %9, %conv31, !dbg !955
  br i1 %cmp32, label %if.then34, label %if.else40, !dbg !956

if.then34:                                        ; preds = %if.end18
  store i32 0, ptr %bar_teller27, align 8, !dbg !957
  %bar_cond38 = getelementptr inbounds %struct.GlobalMemory, ptr %7, i64 0, i32 10, i32 1, !dbg !959
  %call39 = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %bar_cond38) #20, !dbg !960
  br label %if.end46, !dbg !961

if.else40:                                        ; preds = %if.end18
  %start29 = getelementptr inbounds %struct.GlobalMemory, ptr %7, i64 0, i32 10, !dbg !962
  %bar_cond42 = getelementptr inbounds %struct.GlobalMemory, ptr %7, i64 0, i32 10, i32 1, !dbg !963
  %call45 = tail call i32 @pthread_cond_wait(ptr noundef nonnull %bar_cond42, ptr noundef nonnull %start29) #20, !dbg !965
  br label %if.end46

if.end46:                                         ; preds = %if.else40, %if.then34
  %10 = load ptr, ptr @Global, align 8, !dbg !966
  %start47 = getelementptr inbounds %struct.GlobalMemory, ptr %10, i64 0, i32 10, !dbg !967
  %call49 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %start47) #20, !dbg !968
  %cmp50 = icmp eq i64 %MyNum, 0, !dbg !969
  %tobool = icmp ne i64 %dostats, 0
  %or.cond = or i1 %cmp50, %tobool, !dbg !971
  br i1 %or.cond, label %if.then59, label %if.end54, !dbg !971

if.end54:                                         ; preds = %if.end46
  call void @llvm.dbg.value(metadata i64 undef, metadata !904, metadata !DIExpression()), !dbg !908
  tail call void @lu(i64 noundef %n, i64 noundef %block_size, i64 noundef %MyNum, ptr noundef nonnull %calloc, i64 noundef 0), !dbg !972
  br label %if.end61

if.then59:                                        ; preds = %if.end46
  %call53 = tail call i64 @time(ptr noundef null) #20, !dbg !973
  call void @llvm.dbg.value(metadata i64 undef, metadata !904, metadata !DIExpression()), !dbg !908
  tail call void @lu(i64 noundef %n, i64 noundef %block_size, i64 noundef %MyNum, ptr noundef nonnull %calloc, i64 noundef %dostats), !dbg !972
  %call60 = tail call i64 @time(ptr noundef null) #20, !dbg !976
  call void @llvm.dbg.value(metadata i64 %call60, metadata !906, metadata !DIExpression()), !dbg !908
  br label %if.end61, !dbg !980

if.end61:                                         ; preds = %if.end54, %if.then59
  %myrs.0142 = phi i64 [ %call53, %if.then59 ], [ undef, %if.end54 ]
  %mydone.0 = phi i64 [ %call60, %if.then59 ], [ undef, %if.end54 ]
  call void @llvm.dbg.value(metadata i64 %mydone.0, metadata !906, metadata !DIExpression()), !dbg !908
  %11 = load ptr, ptr @Global, align 8, !dbg !981
  %start62 = getelementptr inbounds %struct.GlobalMemory, ptr %11, i64 0, i32 10, !dbg !983
  %call64 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %start62) #20, !dbg !984
  %12 = load ptr, ptr @Global, align 8, !dbg !985
  %bar_teller66 = getelementptr inbounds %struct.GlobalMemory, ptr %12, i64 0, i32 10, i32 2, !dbg !986
  %13 = load i32, ptr %bar_teller66, align 8, !dbg !987
  %inc67 = add i32 %13, 1, !dbg !987
  store i32 %inc67, ptr %bar_teller66, align 8, !dbg !987
  %conv70 = zext i32 %inc67 to i64, !dbg !988
  %14 = load i64, ptr @P, align 8, !dbg !990
  %cmp71 = icmp eq i64 %14, %conv70, !dbg !991
  br i1 %cmp71, label %if.then73, label %if.else79, !dbg !992

if.then73:                                        ; preds = %if.end61
  store i32 0, ptr %bar_teller66, align 8, !dbg !993
  %bar_cond77 = getelementptr inbounds %struct.GlobalMemory, ptr %12, i64 0, i32 10, i32 1, !dbg !995
  %call78 = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %bar_cond77) #20, !dbg !996
  br label %if.end85, !dbg !997

if.else79:                                        ; preds = %if.end61
  %start68 = getelementptr inbounds %struct.GlobalMemory, ptr %12, i64 0, i32 10, !dbg !998
  %bar_cond81 = getelementptr inbounds %struct.GlobalMemory, ptr %12, i64 0, i32 10, i32 1, !dbg !999
  %call84 = tail call i32 @pthread_cond_wait(ptr noundef nonnull %bar_cond81, ptr noundef nonnull %start68) #20, !dbg !1001
  br label %if.end85

if.end85:                                         ; preds = %if.else79, %if.then73
  %15 = load ptr, ptr @Global, align 8, !dbg !1002
  %start86 = getelementptr inbounds %struct.GlobalMemory, ptr %15, i64 0, i32 10, !dbg !1003
  %call88 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %start86) #20, !dbg !1004
  br i1 %or.cond, label %if.then93, label %if.end108, !dbg !1005

if.then93:                                        ; preds = %if.end85
  %call94 = tail call i64 @time(ptr noundef null) #20, !dbg !1007
  call void @llvm.dbg.value(metadata i64 %call94, metadata !905, metadata !DIExpression()), !dbg !908
  %16 = load double, ptr %calloc, align 8, !dbg !1010
  %17 = load ptr, ptr @Global, align 8, !dbg !1011
  %18 = load ptr, ptr %17, align 8, !dbg !1012
  %arrayidx = getelementptr inbounds double, ptr %18, i64 %MyNum, !dbg !1011
  store double %16, ptr %arrayidx, align 8, !dbg !1013
  %19 = load double, ptr %t_in_solve, align 8, !dbg !1014
  %20 = load ptr, ptr @Global, align 8, !dbg !1015
  %t_in_solve98 = getelementptr inbounds %struct.GlobalMemory, ptr %20, i64 0, i32 1, !dbg !1016
  %21 = load ptr, ptr %t_in_solve98, align 8, !dbg !1016
  %arrayidx99 = getelementptr inbounds double, ptr %21, i64 %MyNum, !dbg !1015
  store double %19, ptr %arrayidx99, align 8, !dbg !1017
  %22 = load double, ptr %t_in_mod, align 8, !dbg !1018
  %23 = load ptr, ptr @Global, align 8, !dbg !1019
  %t_in_mod101 = getelementptr inbounds %struct.GlobalMemory, ptr %23, i64 0, i32 2, !dbg !1020
  %24 = load ptr, ptr %t_in_mod101, align 8, !dbg !1020
  %arrayidx102 = getelementptr inbounds double, ptr %24, i64 %MyNum, !dbg !1019
  store double %22, ptr %arrayidx102, align 8, !dbg !1021
  %25 = load double, ptr %t_in_bar, align 8, !dbg !1022
  %26 = load ptr, ptr @Global, align 8, !dbg !1023
  %t_in_bar104 = getelementptr inbounds %struct.GlobalMemory, ptr %26, i64 0, i32 3, !dbg !1024
  %27 = load ptr, ptr %t_in_bar104, align 8, !dbg !1024
  %arrayidx105 = getelementptr inbounds double, ptr %27, i64 %MyNum, !dbg !1023
  store double %25, ptr %arrayidx105, align 8, !dbg !1025
  %sub = sub i64 %mydone.0, %myrs.0142, !dbg !1026
  %conv106 = uitofp i64 %sub to double, !dbg !1027
  %28 = load ptr, ptr @Global, align 8, !dbg !1028
  %completion = getelementptr inbounds %struct.GlobalMemory, ptr %28, i64 0, i32 4, !dbg !1029
  %29 = load ptr, ptr %completion, align 8, !dbg !1029
  %arrayidx107 = getelementptr inbounds double, ptr %29, i64 %MyNum, !dbg !1028
  store double %conv106, ptr %arrayidx107, align 8, !dbg !1030
  br label %if.end108, !dbg !1031

if.end108:                                        ; preds = %if.end85, %if.then93
  %myrf.0 = phi i64 [ %call94, %if.then93 ], [ undef, %if.end85 ]
  call void @llvm.dbg.value(metadata i64 %myrf.0, metadata !905, metadata !DIExpression()), !dbg !908
  br i1 %cmp50, label %if.then111, label %if.end112, !dbg !1032

if.then111:                                       ; preds = %if.end108
  %30 = load ptr, ptr @Global, align 8, !dbg !1033
  %rs = getelementptr inbounds %struct.GlobalMemory, ptr %30, i64 0, i32 7, !dbg !1036
  store i64 %myrs.0142, ptr %rs, align 8, !dbg !1037
  %done = getelementptr inbounds %struct.GlobalMemory, ptr %30, i64 0, i32 8, !dbg !1038
  store i64 %mydone.0, ptr %done, align 8, !dbg !1039
  %rf = getelementptr inbounds %struct.GlobalMemory, ptr %30, i64 0, i32 6, !dbg !1040
  store i64 %myrf.0, ptr %rf, align 8, !dbg !1041
  br label %if.end112, !dbg !1042

if.end112:                                        ; preds = %if.then111, %if.end108
  ret void, !dbg !1043
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1044 i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #1

declare !dbg !1047 i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local double @TouchA(i64 noundef %bs, i64 noundef %MyNum) local_unnamed_addr #11 !dbg !1051 {
entry:
  call void @llvm.dbg.value(metadata i64 %bs, metadata !1055, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i64 %MyNum, metadata !1056, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1061, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i64 0, metadata !1060, metadata !DIExpression()), !dbg !1062
  %0 = load i64, ptr @n, align 8
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1061, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i64 0, metadata !1060, metadata !DIExpression()), !dbg !1062
  %cmp80 = icmp sgt i64 %0, 0, !dbg !1063
  br i1 %cmp80, label %for.cond1.preheader.lr.ph, label %for.end32, !dbg !1066

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %1 = load ptr, ptr @a, align 8
  br label %for.cond1.preheader.us, !dbg !1066

for.cond1.preheader.us:                           ; preds = %for.cond1.for.inc30_crit_edge.us, %for.cond1.preheader.lr.ph
  %mul85.us = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %mul8.us, %for.cond1.for.inc30_crit_edge.us ]
  %tot.084.us = phi double [ 0.000000e+00, %for.cond1.preheader.lr.ph ], [ %.us-phi79.us, %for.cond1.for.inc30_crit_edge.us ]
  %J.081.us = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %add.us, %for.cond1.for.inc30_crit_edge.us ]
  call void @llvm.dbg.value(metadata double %tot.084.us, metadata !1061, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i64 %J.081.us, metadata !1060, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata double %tot.084.us, metadata !1061, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i64 0, metadata !1059, metadata !DIExpression()), !dbg !1062
  %add.us = add nuw nsw i64 %J.081.us, 1
  %mul8.us = mul nsw i64 %add.us, %bs
  %cmp959.us = icmp slt i64 %mul85.us, %mul8.us
  br i1 %cmp959.us, label %for.body4.us.us, label %for.cond1.for.inc30_crit_edge.us, !dbg !1067

for.cond1.for.inc30_crit_edge.us:                 ; preds = %for.inc27.us.us, %for.cond1.preheader.us
  %.us-phi79.us = phi double [ %tot.084.us, %for.cond1.preheader.us ], [ %tot.4.us.us, %for.inc27.us.us ]
  call void @llvm.dbg.value(metadata double undef, metadata !1061, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i64 %add.us, metadata !1060, metadata !DIExpression()), !dbg !1062
  %cmp.us = icmp slt i64 %mul8.us, %0, !dbg !1063
  br i1 %cmp.us, label %for.cond1.preheader.us, label %for.end32, !dbg !1066, !llvm.loop !1076

for.body4.us.us:                                  ; preds = %for.cond1.preheader.us, %for.inc27.us.us
  %mul269.us.us = phi i64 [ %mul15.us.us, %for.inc27.us.us ], [ 0, %for.cond1.preheader.us ]
  %tot.168.us.us = phi double [ %tot.4.us.us, %for.inc27.us.us ], [ %tot.084.us, %for.cond1.preheader.us ]
  %I.067.us.us = phi i64 [ %add14.us.us, %for.inc27.us.us ], [ 0, %for.cond1.preheader.us ]
  call void @llvm.dbg.value(metadata double %tot.168.us.us, metadata !1061, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i64 %I.067.us.us, metadata !1059, metadata !DIExpression()), !dbg !1062
  %call.us.us = tail call i64 @BlockOwner(i64 noundef %I.067.us.us, i64 noundef %J.081.us), !dbg !1078
  %cmp5.us.us = icmp eq i64 %call.us.us, %MyNum, !dbg !1079
  %add14.us.us = add nuw nsw i64 %I.067.us.us, 1
  %mul15.us.us = mul nsw i64 %add14.us.us, %bs
  %cmp1654.us.us = icmp slt i64 %mul269.us.us, %mul15.us.us
  %or.cond = select i1 %cmp5.us.us, i1 %cmp1654.us.us, i1 false, !dbg !1080
  call void @llvm.dbg.value(metadata double %tot.168.us.us, metadata !1061, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i64 %mul85.us, metadata !1058, metadata !DIExpression()), !dbg !1062
  br i1 %or.cond, label %for.cond13.preheader.us.us.us, label %for.inc27.us.us, !dbg !1080

for.inc27.us.us:                                  ; preds = %for.cond13.for.inc24_crit_edge.us.us.us, %for.body4.us.us
  %tot.4.us.us = phi double [ %tot.168.us.us, %for.body4.us.us ], [ %add23.us.us.us, %for.cond13.for.inc24_crit_edge.us.us.us ], !dbg !1081
  call void @llvm.dbg.value(metadata double %tot.4.us.us, metadata !1061, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i64 %add14.us.us, metadata !1059, metadata !DIExpression()), !dbg !1062
  %cmp3.us.us = icmp slt i64 %mul15.us.us, %0, !dbg !1082
  br i1 %cmp3.us.us, label %for.body4.us.us, label %for.cond1.for.inc30_crit_edge.us, !dbg !1083, !llvm.loop !1084

for.cond13.preheader.us.us.us:                    ; preds = %for.body4.us.us, %for.cond13.for.inc24_crit_edge.us.us.us
  %tot.264.us.us.us = phi double [ %add23.us.us.us, %for.cond13.for.inc24_crit_edge.us.us.us ], [ %tot.168.us.us, %for.body4.us.us ]
  %j.062.us.us.us = phi i64 [ %inc25.us.us.us, %for.cond13.for.inc24_crit_edge.us.us.us ], [ %mul85.us, %for.body4.us.us ]
  call void @llvm.dbg.value(metadata i64 %j.062.us.us.us, metadata !1058, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata double %tot.264.us.us.us, metadata !1061, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i64 %mul269.us.us, metadata !1057, metadata !DIExpression()), !dbg !1062
  %mul21.us.us.us = mul nsw i64 %j.062.us.us.us, %0
  br label %for.body20.us.us.us, !dbg !1086

for.body20.us.us.us:                              ; preds = %for.body20.us.us.us, %for.cond13.preheader.us.us.us
  %tot.358.us.us.us = phi double [ %tot.264.us.us.us, %for.cond13.preheader.us.us.us ], [ %add23.us.us.us, %for.body20.us.us.us ]
  %i.057.us.us.us = phi i64 [ %mul269.us.us, %for.cond13.preheader.us.us.us ], [ %inc.us.us.us, %for.body20.us.us.us ]
  call void @llvm.dbg.value(metadata double %tot.358.us.us.us, metadata !1061, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i64 %i.057.us.us.us, metadata !1057, metadata !DIExpression()), !dbg !1062
  %add22.us.us.us = add nsw i64 %i.057.us.us.us, %mul21.us.us.us, !dbg !1090
  %arrayidx.us.us.us = getelementptr inbounds double, ptr %1, i64 %add22.us.us.us, !dbg !1092
  %2 = load double, ptr %arrayidx.us.us.us, align 8, !dbg !1092
  %add23.us.us.us = fadd double %tot.358.us.us.us, %2, !dbg !1093
  call void @llvm.dbg.value(metadata double %add23.us.us.us, metadata !1061, metadata !DIExpression()), !dbg !1062
  %inc.us.us.us = add nsw i64 %i.057.us.us.us, 1, !dbg !1094
  call void @llvm.dbg.value(metadata i64 %inc.us.us.us, metadata !1057, metadata !DIExpression()), !dbg !1062
  %cmp16.us.us.us = icmp slt i64 %inc.us.us.us, %mul15.us.us, !dbg !1095
  %cmp18.us.us.us = icmp slt i64 %inc.us.us.us, %0
  %or.cond53.us.us.us = select i1 %cmp16.us.us.us, i1 %cmp18.us.us.us, i1 false, !dbg !1086
  br i1 %or.cond53.us.us.us, label %for.body20.us.us.us, label %for.cond13.for.inc24_crit_edge.us.us.us, !dbg !1086, !llvm.loop !1096

for.cond13.for.inc24_crit_edge.us.us.us:          ; preds = %for.body20.us.us.us
  %inc25.us.us.us = add nsw i64 %j.062.us.us.us, 1, !dbg !1099
  call void @llvm.dbg.value(metadata double undef, metadata !1061, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i64 %inc25.us.us.us, metadata !1058, metadata !DIExpression()), !dbg !1062
  %cmp9.us.us.us = icmp slt i64 %inc25.us.us.us, %mul8.us, !dbg !1100
  %cmp10.us.us.us = icmp slt i64 %inc25.us.us.us, %0
  %or.cond.us.us.us = select i1 %cmp9.us.us.us, i1 %cmp10.us.us.us, i1 false, !dbg !1067
  br i1 %or.cond.us.us.us, label %for.cond13.preheader.us.us.us, label %for.inc27.us.us, !dbg !1067, !llvm.loop !1101

for.end32:                                        ; preds = %for.cond1.for.inc30_crit_edge.us, %entry
  %tot.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %.us-phi79.us, %for.cond1.for.inc30_crit_edge.us ], !dbg !1081
  ret double %tot.0.lcssa, !dbg !1104
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @lu(i64 noundef %n, i64 noundef %bs, i64 noundef %MyNum, ptr nocapture noundef %lc, i64 noundef %dostats) local_unnamed_addr #9 !dbg !1105 {
entry:
  call void @llvm.dbg.value(metadata i64 %n, metadata !1109, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %bs, metadata !1110, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %MyNum, metadata !1111, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata ptr %lc, metadata !1112, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %dostats, metadata !1113, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %n, metadata !1127, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 0, metadata !1118, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 0, metadata !1122, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 undef, metadata !1133, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 undef, metadata !1132, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 undef, metadata !1130, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 undef, metadata !1129, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 undef, metadata !1128, metadata !DIExpression()), !dbg !1134
  %cmp349 = icmp sgt i64 %n, 0, !dbg !1135
  br i1 %cmp349, label %for.body.lr.ph, label %for.end202, !dbg !1138

for.body.lr.ph:                                   ; preds = %entry
  %cmp2 = icmp eq i64 %MyNum, 0
  %tobool = icmp ne i64 %dostats, 0
  %or.cond = or i1 %cmp2, %tobool
  %t_in_solve = getelementptr inbounds %struct.LocalCopies, ptr %lc, i64 0, i32 1
  %t_in_mod = getelementptr inbounds %struct.LocalCopies, ptr %lc, i64 0, i32 2
  %t_in_bar = getelementptr inbounds %struct.LocalCopies, ptr %lc, i64 0, i32 3
  br label %for.body, !dbg !1138

for.body:                                         ; preds = %for.body.lr.ph, %for.inc199
  %t22.0356 = phi i64 [ undef, %for.body.lr.ph ], [ %t22.1, %for.inc199 ]
  %t11.0355 = phi i64 [ undef, %for.body.lr.ph ], [ %t11.1, %for.inc199 ]
  %t3.0354 = phi i64 [ undef, %for.body.lr.ph ], [ %t3.1, %for.inc199 ]
  %t2.0353 = phi i64 [ undef, %for.body.lr.ph ], [ %t2.1, %for.inc199 ]
  %t1.0352 = phi i64 [ undef, %for.body.lr.ph ], [ %t1.1, %for.inc199 ]
  %k.0351 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %for.inc199 ]
  %K.0350 = phi i64 [ 0, %for.body.lr.ph ], [ %add46, %for.inc199 ]
  call void @llvm.dbg.value(metadata i64 %t22.0356, metadata !1133, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %t11.0355, metadata !1132, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %t3.0354, metadata !1130, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %t2.0353, metadata !1129, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %t1.0352, metadata !1128, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %k.0351, metadata !1118, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %K.0350, metadata !1122, metadata !DIExpression()), !dbg !1134
  %add = add nsw i64 %k.0351, %bs, !dbg !1139
  call void @llvm.dbg.value(metadata i64 %add, metadata !1119, metadata !DIExpression()), !dbg !1134
  %0 = tail call i64 @llvm.smin.i64(i64 %add, i64 %n), !dbg !1141
  call void @llvm.dbg.value(metadata i64 %0, metadata !1119, metadata !DIExpression()), !dbg !1134
  br i1 %or.cond, label %if.then3, label %if.end4, !dbg !1142

if.then3:                                         ; preds = %for.body
  %call = tail call i64 @time(ptr noundef null) #20, !dbg !1144
  call void @llvm.dbg.value(metadata i64 %call, metadata !1128, metadata !DIExpression()), !dbg !1134
  br label %if.end4, !dbg !1147

if.end4:                                          ; preds = %for.body, %if.then3
  %t1.1 = phi i64 [ %call, %if.then3 ], [ %t1.0352, %for.body ]
  call void @llvm.dbg.value(metadata i64 %t1.1, metadata !1128, metadata !DIExpression()), !dbg !1134
  %call5 = tail call i64 @BlockOwner(i64 noundef %K.0350, i64 noundef %K.0350), !dbg !1148
  %cmp6 = icmp eq i64 %call5, %MyNum, !dbg !1150
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !1151

if.then7:                                         ; preds = %if.end4
  %1 = load ptr, ptr @a, align 8, !dbg !1152
  %mul = mul nsw i64 %k.0351, %n, !dbg !1154
  %add8 = add nsw i64 %mul, %k.0351, !dbg !1155
  %arrayidx = getelementptr inbounds double, ptr %1, i64 %add8, !dbg !1152
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !1123, metadata !DIExpression()), !dbg !1134
  %sub = sub nsw i64 %0, %k.0351, !dbg !1156
  tail call void @lu0(ptr noundef %arrayidx, i64 noundef %sub, i64 noundef %n), !dbg !1157
  br label %if.end9, !dbg !1158

if.end9:                                          ; preds = %if.then7, %if.end4
  br i1 %or.cond, label %if.then13, label %if.end15, !dbg !1159

if.then13:                                        ; preds = %if.end9
  %call14 = tail call i64 @time(ptr noundef null) #20, !dbg !1161
  call void @llvm.dbg.value(metadata i64 %call14, metadata !1132, metadata !DIExpression()), !dbg !1134
  br label %if.end15, !dbg !1164

if.end15:                                         ; preds = %if.end9, %if.then13
  %t11.1 = phi i64 [ %call14, %if.then13 ], [ %t11.0355, %if.end9 ]
  call void @llvm.dbg.value(metadata i64 %t11.1, metadata !1132, metadata !DIExpression()), !dbg !1134
  %2 = load ptr, ptr @Global, align 8, !dbg !1165
  %start = getelementptr inbounds %struct.GlobalMemory, ptr %2, i64 0, i32 10, !dbg !1167
  %call16 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %start) #20, !dbg !1168
  %3 = load ptr, ptr @Global, align 8, !dbg !1169
  %bar_teller = getelementptr inbounds %struct.GlobalMemory, ptr %3, i64 0, i32 10, i32 2, !dbg !1170
  %4 = load i32, ptr %bar_teller, align 8, !dbg !1171
  %inc = add i32 %4, 1, !dbg !1171
  store i32 %inc, ptr %bar_teller, align 8, !dbg !1171
  %conv = zext i32 %inc to i64, !dbg !1172
  %5 = load i64, ptr @P, align 8, !dbg !1174
  %cmp20 = icmp eq i64 %5, %conv, !dbg !1175
  br i1 %cmp20, label %if.then22, label %if.else, !dbg !1176

if.then22:                                        ; preds = %if.end15
  store i32 0, ptr %bar_teller, align 8, !dbg !1177
  %bar_cond = getelementptr inbounds %struct.GlobalMemory, ptr %3, i64 0, i32 10, i32 1, !dbg !1179
  %call26 = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %bar_cond) #20, !dbg !1180
  br label %if.end32, !dbg !1181

if.else:                                          ; preds = %if.end15
  %start18 = getelementptr inbounds %struct.GlobalMemory, ptr %3, i64 0, i32 10, !dbg !1182
  %bar_cond28 = getelementptr inbounds %struct.GlobalMemory, ptr %3, i64 0, i32 10, i32 1, !dbg !1183
  %call31 = tail call i32 @pthread_cond_wait(ptr noundef nonnull %bar_cond28, ptr noundef nonnull %start18) #20, !dbg !1185
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then22
  %6 = load ptr, ptr @Global, align 8, !dbg !1186
  %start33 = getelementptr inbounds %struct.GlobalMemory, ptr %6, i64 0, i32 10, !dbg !1187
  %call35 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %start33) #20, !dbg !1188
  br i1 %or.cond, label %if.then40, label %if.end42, !dbg !1189

if.then40:                                        ; preds = %if.end32
  %call41 = tail call i64 @time(ptr noundef null) #20, !dbg !1191
  call void @llvm.dbg.value(metadata i64 %call41, metadata !1129, metadata !DIExpression()), !dbg !1134
  br label %if.end42, !dbg !1194

if.end42:                                         ; preds = %if.end32, %if.then40
  %t2.1 = phi i64 [ %call41, %if.then40 ], [ %t2.0353, %if.end32 ]
  call void @llvm.dbg.value(metadata i64 %t2.1, metadata !1129, metadata !DIExpression()), !dbg !1134
  %7 = load ptr, ptr @a, align 8, !dbg !1195
  %mul43 = mul nsw i64 %k.0351, %n, !dbg !1196
  %add44 = add nsw i64 %mul43, %k.0351, !dbg !1197
  %arrayidx45 = getelementptr inbounds double, ptr %7, i64 %add44, !dbg !1195
  call void @llvm.dbg.value(metadata ptr %arrayidx45, metadata !1126, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %0, metadata !1114, metadata !DIExpression()), !dbg !1134
  %add46 = add nuw nsw i64 %K.0350, 1, !dbg !1198
  call void @llvm.dbg.value(metadata i64 %add46, metadata !1120, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %0, metadata !1114, metadata !DIExpression()), !dbg !1134
  %cmp48335 = icmp slt i64 %add, %n, !dbg !1200
  br i1 %cmp48335, label %for.body50.lr.ph, label %for.end91, !dbg !1202

for.body50.lr.ph:                                 ; preds = %if.end42
  %sub64 = sub nsw i64 %0, %k.0351
  br label %for.body50, !dbg !1202

for.cond69.preheader:                             ; preds = %for.inc
  call void @llvm.dbg.value(metadata i64 %0, metadata !1116, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %add46, metadata !1121, metadata !DIExpression()), !dbg !1134
  br i1 %cmp48335, label %for.body72.lr.ph, label %for.end91, !dbg !1203

for.body72.lr.ph:                                 ; preds = %for.cond69.preheader
  %sub85 = sub nsw i64 %0, %k.0351
  br label %for.body72, !dbg !1203

for.body50:                                       ; preds = %for.body50.lr.ph, %for.inc
  %i.0337 = phi i64 [ %0, %for.body50.lr.ph ], [ %add55, %for.inc ]
  %I.0336 = phi i64 [ %add46, %for.body50.lr.ph ], [ %inc67, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.0337, metadata !1114, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %I.0336, metadata !1120, metadata !DIExpression()), !dbg !1134
  %call51 = tail call i64 @BlockOwner(i64 noundef %I.0336, i64 noundef %K.0350), !dbg !1205
  %cmp52 = icmp eq i64 %call51, %MyNum, !dbg !1208
  %add55 = add nsw i64 %i.0337, %bs, !dbg !1209
  br i1 %cmp52, label %if.then54, label %for.inc, !dbg !1210

if.then54:                                        ; preds = %for.body50
  call void @llvm.dbg.value(metadata i64 %add55, metadata !1115, metadata !DIExpression()), !dbg !1134
  %8 = tail call i64 @llvm.smin.i64(i64 %add55, i64 %n), !dbg !1211
  call void @llvm.dbg.value(metadata i64 %8, metadata !1115, metadata !DIExpression()), !dbg !1134
  %9 = load ptr, ptr @a, align 8, !dbg !1213
  %add61 = add nsw i64 %i.0337, %mul43, !dbg !1214
  %arrayidx62 = getelementptr inbounds double, ptr %9, i64 %add61, !dbg !1213
  call void @llvm.dbg.value(metadata ptr %arrayidx62, metadata !1123, metadata !DIExpression()), !dbg !1134
  %sub63 = sub nsw i64 %8, %i.0337, !dbg !1215
  tail call void @bdiv(ptr noundef %arrayidx62, ptr noundef %arrayidx45, i64 noundef %n, i64 noundef %n, i64 noundef %sub63, i64 noundef %sub64), !dbg !1216
  br label %for.inc, !dbg !1217

for.inc:                                          ; preds = %for.body50, %if.then54
  call void @llvm.dbg.value(metadata i64 %add55, metadata !1114, metadata !DIExpression()), !dbg !1134
  %inc67 = add nuw nsw i64 %I.0336, 1, !dbg !1218
  call void @llvm.dbg.value(metadata i64 %inc67, metadata !1120, metadata !DIExpression()), !dbg !1134
  %cmp48 = icmp slt i64 %add55, %n, !dbg !1200
  br i1 %cmp48, label %for.body50, label %for.cond69.preheader, !dbg !1202, !llvm.loop !1219

for.body72:                                       ; preds = %for.body72.lr.ph, %for.inc88
  %j.0341 = phi i64 [ %0, %for.body72.lr.ph ], [ %add77, %for.inc88 ]
  %J.0340 = phi i64 [ %add46, %for.body72.lr.ph ], [ %inc90, %for.inc88 ]
  call void @llvm.dbg.value(metadata i64 %j.0341, metadata !1116, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %J.0340, metadata !1121, metadata !DIExpression()), !dbg !1134
  %call73 = tail call i64 @BlockOwner(i64 noundef %K.0350, i64 noundef %J.0340), !dbg !1221
  %cmp74 = icmp eq i64 %call73, %MyNum, !dbg !1225
  %add77 = add nsw i64 %j.0341, %bs, !dbg !1226
  br i1 %cmp74, label %if.then76, label %for.inc88, !dbg !1227

if.then76:                                        ; preds = %for.body72
  call void @llvm.dbg.value(metadata i64 %add77, metadata !1117, metadata !DIExpression()), !dbg !1134
  %10 = tail call i64 @llvm.smin.i64(i64 %add77, i64 %n), !dbg !1228
  call void @llvm.dbg.value(metadata i64 %10, metadata !1117, metadata !DIExpression()), !dbg !1134
  %11 = load ptr, ptr @a, align 8, !dbg !1230
  %mul82 = mul nsw i64 %j.0341, %n, !dbg !1231
  %add83 = add nsw i64 %mul82, %k.0351, !dbg !1232
  %arrayidx84 = getelementptr inbounds double, ptr %11, i64 %add83, !dbg !1230
  call void @llvm.dbg.value(metadata ptr %arrayidx84, metadata !1123, metadata !DIExpression()), !dbg !1134
  %sub86 = sub nsw i64 %10, %j.0341, !dbg !1233
  tail call void @bmodd(ptr noundef %arrayidx45, ptr noundef %arrayidx84, i64 noundef %sub85, i64 noundef %sub86, i64 noundef %n, i64 noundef %n), !dbg !1234
  br label %for.inc88, !dbg !1235

for.inc88:                                        ; preds = %for.body72, %if.then76
  call void @llvm.dbg.value(metadata i64 %add77, metadata !1116, metadata !DIExpression()), !dbg !1134
  %inc90 = add nuw nsw i64 %J.0340, 1, !dbg !1236
  call void @llvm.dbg.value(metadata i64 %inc90, metadata !1121, metadata !DIExpression()), !dbg !1134
  %cmp70 = icmp slt i64 %add77, %n, !dbg !1237
  br i1 %cmp70, label %for.body72, label %for.end91, !dbg !1203, !llvm.loop !1238

for.end91:                                        ; preds = %for.inc88, %if.end42, %for.cond69.preheader
  br i1 %or.cond, label %if.then96, label %if.end98, !dbg !1240

if.then96:                                        ; preds = %for.end91
  %call97 = tail call i64 @time(ptr noundef null) #20, !dbg !1242
  call void @llvm.dbg.value(metadata i64 %call97, metadata !1133, metadata !DIExpression()), !dbg !1134
  br label %if.end98, !dbg !1245

if.end98:                                         ; preds = %for.end91, %if.then96
  %t22.1 = phi i64 [ %call97, %if.then96 ], [ %t22.0356, %for.end91 ]
  call void @llvm.dbg.value(metadata i64 %t22.1, metadata !1133, metadata !DIExpression()), !dbg !1134
  %12 = load ptr, ptr @Global, align 8, !dbg !1246
  %start99 = getelementptr inbounds %struct.GlobalMemory, ptr %12, i64 0, i32 10, !dbg !1248
  %call101 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %start99) #20, !dbg !1249
  %13 = load ptr, ptr @Global, align 8, !dbg !1250
  %bar_teller103 = getelementptr inbounds %struct.GlobalMemory, ptr %13, i64 0, i32 10, i32 2, !dbg !1251
  %14 = load i32, ptr %bar_teller103, align 8, !dbg !1252
  %inc104 = add i32 %14, 1, !dbg !1252
  store i32 %inc104, ptr %bar_teller103, align 8, !dbg !1252
  %conv107 = zext i32 %inc104 to i64, !dbg !1253
  %15 = load i64, ptr @P, align 8, !dbg !1255
  %cmp108 = icmp eq i64 %15, %conv107, !dbg !1256
  br i1 %cmp108, label %if.then110, label %if.else116, !dbg !1257

if.then110:                                       ; preds = %if.end98
  store i32 0, ptr %bar_teller103, align 8, !dbg !1258
  %bar_cond114 = getelementptr inbounds %struct.GlobalMemory, ptr %13, i64 0, i32 10, i32 1, !dbg !1260
  %call115 = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %bar_cond114) #20, !dbg !1261
  br label %if.end122, !dbg !1262

if.else116:                                       ; preds = %if.end98
  %start105 = getelementptr inbounds %struct.GlobalMemory, ptr %13, i64 0, i32 10, !dbg !1263
  %bar_cond118 = getelementptr inbounds %struct.GlobalMemory, ptr %13, i64 0, i32 10, i32 1, !dbg !1264
  %call121 = tail call i32 @pthread_cond_wait(ptr noundef nonnull %bar_cond118, ptr noundef nonnull %start105) #20, !dbg !1266
  br label %if.end122

if.end122:                                        ; preds = %if.else116, %if.then110
  %16 = load ptr, ptr @Global, align 8, !dbg !1267
  %start123 = getelementptr inbounds %struct.GlobalMemory, ptr %16, i64 0, i32 10, !dbg !1268
  %call125 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %start123) #20, !dbg !1269
  br i1 %or.cond, label %if.then130, label %if.end132, !dbg !1270

if.then130:                                       ; preds = %if.end122
  %call131 = tail call i64 @time(ptr noundef null) #20, !dbg !1272
  call void @llvm.dbg.value(metadata i64 %call131, metadata !1130, metadata !DIExpression()), !dbg !1134
  br label %if.end132, !dbg !1275

if.end132:                                        ; preds = %if.end122, %if.then130
  %t3.1 = phi i64 [ %call131, %if.then130 ], [ %t3.0354, %if.end122 ]
  call void @llvm.dbg.value(metadata i64 %t3.1, metadata !1130, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %0, metadata !1114, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %add46, metadata !1120, metadata !DIExpression()), !dbg !1134
  br i1 %cmp48335, label %for.body137.lr.ph, label %for.end177, !dbg !1276

for.body137.lr.ph:                                ; preds = %if.end132
  %sub168 = sub nsw i64 %0, %k.0351
  br label %for.body137.us, !dbg !1276

for.body137.us:                                   ; preds = %for.cond147.for.inc174_crit_edge.us, %for.body137.lr.ph
  %i.1348.us = phi i64 [ %0, %for.body137.lr.ph ], [ %add138.us, %for.cond147.for.inc174_crit_edge.us ]
  %I.1347.us = phi i64 [ %add46, %for.body137.lr.ph ], [ %inc176.us, %for.cond147.for.inc174_crit_edge.us ]
  call void @llvm.dbg.value(metadata i64 %i.1348.us, metadata !1114, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %I.1347.us, metadata !1120, metadata !DIExpression()), !dbg !1134
  %add138.us = add nsw i64 %i.1348.us, %bs, !dbg !1278
  call void @llvm.dbg.value(metadata i64 %add138.us, metadata !1115, metadata !DIExpression()), !dbg !1134
  %17 = tail call i64 @llvm.smin.i64(i64 %add138.us, i64 %n), !dbg !1281
  call void @llvm.dbg.value(metadata i64 %17, metadata !1115, metadata !DIExpression()), !dbg !1134
  %18 = load ptr, ptr @a, align 8, !dbg !1282
  %add144.us = add nsw i64 %i.1348.us, %mul43, !dbg !1283
  %arrayidx145.us = getelementptr inbounds double, ptr %18, i64 %add144.us, !dbg !1282
  call void @llvm.dbg.value(metadata ptr %arrayidx145.us, metadata !1123, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %0, metadata !1116, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %add46, metadata !1121, metadata !DIExpression()), !dbg !1134
  %sub166.us = sub nsw i64 %17, %i.1348.us
  br label %for.body150.us, !dbg !1284

for.body150.us:                                   ; preds = %for.body137.us, %for.inc170.us
  %j.1345.us = phi i64 [ %0, %for.body137.us ], [ %add151.us, %for.inc170.us ]
  %J.1344.us = phi i64 [ %add46, %for.body137.us ], [ %inc172.us, %for.inc170.us ]
  call void @llvm.dbg.value(metadata i64 %j.1345.us, metadata !1116, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %J.1344.us, metadata !1121, metadata !DIExpression()), !dbg !1134
  %add151.us = add nsw i64 %j.1345.us, %bs, !dbg !1286
  call void @llvm.dbg.value(metadata i64 undef, metadata !1117, metadata !DIExpression()), !dbg !1134
  %call156.us = tail call i64 @BlockOwner(i64 noundef %I.1347.us, i64 noundef %J.1344.us), !dbg !1289
  %cmp157.us = icmp eq i64 %call156.us, %MyNum, !dbg !1291
  br i1 %cmp157.us, label %if.then159.us, label %for.inc170.us, !dbg !1292

if.then159.us:                                    ; preds = %for.body150.us
  %19 = tail call i64 @llvm.smin.i64(i64 %add151.us, i64 %n), !dbg !1293
  call void @llvm.dbg.value(metadata i64 %19, metadata !1117, metadata !DIExpression()), !dbg !1134
  %20 = load ptr, ptr @a, align 8, !dbg !1294
  %mul160.us = mul nsw i64 %j.1345.us, %n, !dbg !1296
  %add161.us = add nsw i64 %mul160.us, %k.0351, !dbg !1297
  %arrayidx162.us = getelementptr inbounds double, ptr %20, i64 %add161.us, !dbg !1294
  call void @llvm.dbg.value(metadata ptr %arrayidx162.us, metadata !1124, metadata !DIExpression()), !dbg !1134
  %add164.us = add nsw i64 %mul160.us, %i.1348.us, !dbg !1298
  %arrayidx165.us = getelementptr inbounds double, ptr %20, i64 %add164.us, !dbg !1299
  call void @llvm.dbg.value(metadata ptr %arrayidx165.us, metadata !1125, metadata !DIExpression()), !dbg !1134
  %sub167.us = sub nsw i64 %19, %j.1345.us, !dbg !1300
  tail call void @bmod(ptr noundef %arrayidx145.us, ptr noundef %arrayidx162.us, ptr noundef %arrayidx165.us, i64 noundef %sub166.us, i64 noundef %sub167.us, i64 noundef %sub168, i64 noundef %n), !dbg !1301
  br label %for.inc170.us, !dbg !1302

for.inc170.us:                                    ; preds = %if.then159.us, %for.body150.us
  call void @llvm.dbg.value(metadata i64 %add151.us, metadata !1116, metadata !DIExpression()), !dbg !1134
  %inc172.us = add nuw nsw i64 %J.1344.us, 1, !dbg !1303
  call void @llvm.dbg.value(metadata i64 %inc172.us, metadata !1121, metadata !DIExpression()), !dbg !1134
  %cmp148.us = icmp slt i64 %add151.us, %n, !dbg !1304
  br i1 %cmp148.us, label %for.body150.us, label %for.cond147.for.inc174_crit_edge.us, !dbg !1284, !llvm.loop !1305

for.cond147.for.inc174_crit_edge.us:              ; preds = %for.inc170.us
  call void @llvm.dbg.value(metadata i64 %add138.us, metadata !1114, metadata !DIExpression()), !dbg !1134
  %inc176.us = add nuw nsw i64 %I.1347.us, 1, !dbg !1307
  call void @llvm.dbg.value(metadata i64 %inc176.us, metadata !1120, metadata !DIExpression()), !dbg !1134
  %cmp135.us = icmp slt i64 %add138.us, %n, !dbg !1308
  br i1 %cmp135.us, label %for.body137.us, label %for.end177, !dbg !1276, !llvm.loop !1309

for.end177:                                       ; preds = %for.cond147.for.inc174_crit_edge.us, %if.end132
  br i1 %or.cond, label %if.then182, label %for.inc199, !dbg !1311

if.then182:                                       ; preds = %for.end177
  %call183 = tail call i64 @time(ptr noundef null) #20, !dbg !1313
  call void @llvm.dbg.value(metadata i64 %call183, metadata !1131, metadata !DIExpression()), !dbg !1134
  %sub184 = sub i64 %t11.1, %t1.1, !dbg !1316
  %conv185 = uitofp i64 %sub184 to double, !dbg !1317
  %21 = load double, ptr %lc, align 8, !dbg !1318
  %add186 = fadd double %21, %conv185, !dbg !1318
  store double %add186, ptr %lc, align 8, !dbg !1318
  %sub187 = sub i64 %t22.1, %t2.1, !dbg !1319
  %conv188 = uitofp i64 %sub187 to double, !dbg !1320
  %22 = load double, ptr %t_in_solve, align 8, !dbg !1321
  %add189 = fadd double %22, %conv188, !dbg !1321
  store double %add189, ptr %t_in_solve, align 8, !dbg !1321
  %sub190 = sub i64 %call183, %t3.1, !dbg !1322
  %conv191 = uitofp i64 %sub190 to double, !dbg !1323
  %23 = load double, ptr %t_in_mod, align 8, !dbg !1324
  %add192 = fadd double %23, %conv191, !dbg !1324
  store double %add192, ptr %t_in_mod, align 8, !dbg !1324
  %24 = add i64 %t11.1, %t22.1, !dbg !1325
  %sub193 = sub i64 %t2.1, %24, !dbg !1325
  %add195 = add i64 %sub193, %t3.1, !dbg !1326
  %conv196 = uitofp i64 %add195 to double, !dbg !1327
  %25 = load double, ptr %t_in_bar, align 8, !dbg !1328
  %add197 = fadd double %25, %conv196, !dbg !1328
  store double %add197, ptr %t_in_bar, align 8, !dbg !1328
  br label %for.inc199, !dbg !1329

for.inc199:                                       ; preds = %if.then182, %for.end177
  call void @llvm.dbg.value(metadata i64 %t22.1, metadata !1133, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %t11.1, metadata !1132, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %t3.1, metadata !1130, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %t2.1, metadata !1129, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %t1.1, metadata !1128, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %add, metadata !1118, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %add46, metadata !1122, metadata !DIExpression()), !dbg !1134
  br i1 %cmp48335, label %for.body, label %for.end202, !dbg !1138, !llvm.loop !1330

for.end202:                                       ; preds = %for.inc199, %entry
  ret void, !dbg !1332
}

; Function Attrs: argmemonly nofree noinline nosync nounwind uwtable
define dso_local void @lu0(ptr nocapture noundef %a, i64 noundef %n, i64 noundef %stride) local_unnamed_addr #12 !dbg !1333 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !1337, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.value(metadata i64 %n, metadata !1338, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.value(metadata i64 %stride, metadata !1339, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.value(metadata i64 0, metadata !1341, metadata !DIExpression()), !dbg !1344
  %cmp53 = icmp sgt i64 %n, 0, !dbg !1345
  br i1 %cmp53, label %for.body, label %for.end24, !dbg !1348

for.cond.loopexit:                                ; preds = %for.body3, %for.body
  call void @llvm.dbg.value(metadata i64 %add, metadata !1341, metadata !DIExpression()), !dbg !1344
  %exitcond.not = icmp eq i64 %add, %n, !dbg !1345
  br i1 %exitcond.not, label %for.end24, label %for.body, !dbg !1348, !llvm.loop !1349

for.body:                                         ; preds = %entry, %for.cond.loopexit
  %k.054 = phi i64 [ %add, %for.cond.loopexit ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %k.054, metadata !1341, metadata !DIExpression()), !dbg !1344
  %add = add nuw nsw i64 %k.054, 1, !dbg !1351
  call void @llvm.dbg.value(metadata i64 %add, metadata !1340, metadata !DIExpression()), !dbg !1344
  %cmp251 = icmp slt i64 %add, %n, !dbg !1354
  br i1 %cmp251, label %for.body3.lr.ph, label %for.cond.loopexit, !dbg !1356

for.body3.lr.ph:                                  ; preds = %for.body
  %mul = mul nsw i64 %k.054, %stride
  %add4 = add nsw i64 %mul, %k.054
  %arrayidx = getelementptr inbounds double, ptr %a, i64 %add4
  %add18 = add nsw i64 %add, %mul
  %arrayidx19 = getelementptr inbounds double, ptr %a, i64 %add18
  %0 = xor i64 %k.054, -1
  %sub21 = add i64 %0, %n
  br label %for.body3, !dbg !1356

for.body3:                                        ; preds = %for.body3.lr.ph, %for.body3
  %j.052 = phi i64 [ %add, %for.body3.lr.ph ], [ %inc, %for.body3 ]
  call void @llvm.dbg.value(metadata i64 %j.052, metadata !1340, metadata !DIExpression()), !dbg !1344
  %1 = load double, ptr %arrayidx, align 8, !dbg !1357
  %mul5 = mul nsw i64 %j.052, %stride, !dbg !1359
  %add6 = add nsw i64 %mul5, %k.054, !dbg !1360
  %arrayidx7 = getelementptr inbounds double, ptr %a, i64 %add6, !dbg !1361
  %2 = load double, ptr %arrayidx7, align 8, !dbg !1362
  %div = fdiv double %2, %1, !dbg !1362
  store double %div, ptr %arrayidx7, align 8, !dbg !1362
  %fneg = fneg double %div, !dbg !1363
  call void @llvm.dbg.value(metadata double %fneg, metadata !1343, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.value(metadata !DIArgList(i64 %n, i64 %k.054), metadata !1342, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1344
  %add14 = add nsw i64 %mul5, %add, !dbg !1364
  %arrayidx15 = getelementptr inbounds double, ptr %a, i64 %add14, !dbg !1365
  tail call void @daxpy(ptr noundef %arrayidx15, ptr noundef %arrayidx19, i64 noundef %sub21, double noundef %fneg), !dbg !1366
  %inc = add nuw nsw i64 %j.052, 1, !dbg !1367
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1340, metadata !DIExpression()), !dbg !1344
  %cmp2 = icmp slt i64 %inc, %n, !dbg !1354
  br i1 %cmp2, label %for.body3, label %for.cond.loopexit, !dbg !1356, !llvm.loop !1368

for.end24:                                        ; preds = %for.cond.loopexit, %entry
  ret void, !dbg !1370
}

; Function Attrs: argmemonly nofree noinline nosync nounwind uwtable
define dso_local void @daxpy(ptr nocapture noundef %a, ptr nocapture noundef readonly %b, i64 noundef %n, double noundef %alpha) local_unnamed_addr #12 !dbg !1371 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !1375, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.value(metadata ptr %b, metadata !1376, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.value(metadata i64 %n, metadata !1377, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.value(metadata double %alpha, metadata !1378, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.value(metadata i64 0, metadata !1379, metadata !DIExpression()), !dbg !1380
  %cmp5 = icmp sgt i64 %n, 0, !dbg !1381
  br i1 %cmp5, label %for.body, label %for.end, !dbg !1384

for.body:                                         ; preds = %entry, %for.body
  %i.06 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.06, metadata !1379, metadata !DIExpression()), !dbg !1380
  %arrayidx = getelementptr inbounds double, ptr %b, i64 %i.06, !dbg !1385
  %0 = load double, ptr %arrayidx, align 8, !dbg !1385
  %arrayidx1 = getelementptr inbounds double, ptr %a, i64 %i.06, !dbg !1387
  %1 = load double, ptr %arrayidx1, align 8, !dbg !1388
  %2 = tail call double @llvm.fmuladd.f64(double %alpha, double %0, double %1), !dbg !1388
  store double %2, ptr %arrayidx1, align 8, !dbg !1388
  %inc = add nuw nsw i64 %i.06, 1, !dbg !1389
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1379, metadata !DIExpression()), !dbg !1380
  %exitcond.not = icmp eq i64 %inc, %n, !dbg !1381
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1384, !llvm.loop !1390

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !1392
}

; Function Attrs: argmemonly nofree noinline nosync nounwind uwtable
define dso_local void @bdiv(ptr nocapture noundef %a, ptr nocapture noundef readonly %diag, i64 noundef %stride_a, i64 noundef %stride_diag, i64 noundef %dimi, i64 noundef %dimk) local_unnamed_addr #12 !dbg !1393 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !1397, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata ptr %diag, metadata !1398, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %stride_a, metadata !1399, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %stride_diag, metadata !1400, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %dimi, metadata !1401, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %dimk, metadata !1402, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 0, metadata !1404, metadata !DIExpression()), !dbg !1406
  %cmp24 = icmp sgt i64 %dimk, 0, !dbg !1407
  br i1 %cmp24, label %for.body, label %for.end11, !dbg !1410

for.cond.loopexit:                                ; preds = %for.body3, %for.body
  call void @llvm.dbg.value(metadata i64 %add, metadata !1404, metadata !DIExpression()), !dbg !1406
  %exitcond.not = icmp eq i64 %add, %dimk, !dbg !1407
  br i1 %exitcond.not, label %for.end11, label %for.body, !dbg !1410, !llvm.loop !1411

for.body:                                         ; preds = %entry, %for.cond.loopexit
  %k.025 = phi i64 [ %add, %for.cond.loopexit ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %k.025, metadata !1404, metadata !DIExpression()), !dbg !1406
  %add = add nuw nsw i64 %k.025, 1, !dbg !1413
  call void @llvm.dbg.value(metadata i64 %add, metadata !1403, metadata !DIExpression()), !dbg !1406
  %cmp222 = icmp slt i64 %add, %dimk, !dbg !1416
  br i1 %cmp222, label %for.body3.lr.ph, label %for.cond.loopexit, !dbg !1418

for.body3.lr.ph:                                  ; preds = %for.body
  %mul7 = mul nsw i64 %k.025, %stride_a
  %arrayidx8 = getelementptr inbounds double, ptr %a, i64 %mul7
  br label %for.body3, !dbg !1418

for.body3:                                        ; preds = %for.body3.lr.ph, %for.body3
  %j.023 = phi i64 [ %add, %for.body3.lr.ph ], [ %inc, %for.body3 ]
  call void @llvm.dbg.value(metadata i64 %j.023, metadata !1403, metadata !DIExpression()), !dbg !1406
  %mul = mul nsw i64 %j.023, %stride_diag, !dbg !1419
  %add4 = add nsw i64 %mul, %k.025, !dbg !1421
  %arrayidx = getelementptr inbounds double, ptr %diag, i64 %add4, !dbg !1422
  %0 = load double, ptr %arrayidx, align 8, !dbg !1422
  %fneg = fneg double %0, !dbg !1423
  call void @llvm.dbg.value(metadata double %fneg, metadata !1405, metadata !DIExpression()), !dbg !1406
  %mul5 = mul nsw i64 %j.023, %stride_a, !dbg !1424
  %arrayidx6 = getelementptr inbounds double, ptr %a, i64 %mul5, !dbg !1425
  tail call void @daxpy(ptr noundef %arrayidx6, ptr noundef %arrayidx8, i64 noundef %dimi, double noundef %fneg), !dbg !1426
  %inc = add nuw nsw i64 %j.023, 1, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1403, metadata !DIExpression()), !dbg !1406
  %cmp2 = icmp slt i64 %inc, %dimk, !dbg !1416
  br i1 %cmp2, label %for.body3, label %for.cond.loopexit, !dbg !1418, !llvm.loop !1428

for.end11:                                        ; preds = %for.cond.loopexit, %entry
  ret void, !dbg !1430
}

; Function Attrs: argmemonly nofree noinline nosync nounwind uwtable
define dso_local void @bmodd(ptr nocapture noundef readonly %a, ptr nocapture noundef %c, i64 noundef %dimi, i64 noundef %dimj, i64 noundef %stride_a, i64 noundef %stride_c) local_unnamed_addr #12 !dbg !1431 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !1433, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata ptr %c, metadata !1434, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i64 %dimi, metadata !1435, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i64 %dimj, metadata !1436, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i64 %stride_a, metadata !1437, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i64 %stride_c, metadata !1438, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i64 0, metadata !1440, metadata !DIExpression()), !dbg !1443
  %cmp48 = icmp sgt i64 %dimi, 0, !dbg !1444
  %cmp246 = icmp sgt i64 %dimj, 0
  %or.cond = and i1 %cmp48, %cmp246, !dbg !1447
  br i1 %or.cond, label %for.cond1.preheader.us, label %for.end23, !dbg !1447

for.cond1.preheader.us:                           ; preds = %entry, %for.cond1.for.inc21_crit_edge.us
  %k.049.us = phi i64 [ %add11.us, %for.cond1.for.inc21_crit_edge.us ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %k.049.us, metadata !1440, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i64 0, metadata !1439, metadata !DIExpression()), !dbg !1443
  %mul.us = mul nsw i64 %k.049.us, %stride_a
  %add.us = add nsw i64 %mul.us, %k.049.us
  %arrayidx.us = getelementptr inbounds double, ptr %a, i64 %add.us
  %add11.us = add nuw nsw i64 %k.049.us, 1
  %add17.us = add nsw i64 %add11.us, %mul.us
  %arrayidx18.us = getelementptr inbounds double, ptr %a, i64 %add17.us
  %0 = xor i64 %k.049.us, -1
  %sub20.us = add i64 %0, %dimi
  br label %for.body3.us, !dbg !1448

for.body3.us:                                     ; preds = %for.cond1.preheader.us, %for.body3.us
  %j.047.us = phi i64 [ 0, %for.cond1.preheader.us ], [ %inc.us, %for.body3.us ]
  call void @llvm.dbg.value(metadata i64 %j.047.us, metadata !1439, metadata !DIExpression()), !dbg !1443
  %1 = load double, ptr %arrayidx.us, align 8, !dbg !1450
  %mul4.us = mul nsw i64 %j.047.us, %stride_c, !dbg !1453
  %add5.us = add nsw i64 %mul4.us, %k.049.us, !dbg !1454
  %arrayidx6.us = getelementptr inbounds double, ptr %c, i64 %add5.us, !dbg !1455
  %2 = load double, ptr %arrayidx6.us, align 8, !dbg !1456
  %div.us = fdiv double %2, %1, !dbg !1456
  store double %div.us, ptr %arrayidx6.us, align 8, !dbg !1456
  %fneg.us = fneg double %div.us, !dbg !1457
  call void @llvm.dbg.value(metadata double %fneg.us, metadata !1442, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata !DIArgList(i64 %dimi, i64 %k.049.us), metadata !1441, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1443
  %add13.us = add nsw i64 %mul4.us, %add11.us, !dbg !1458
  %arrayidx14.us = getelementptr inbounds double, ptr %c, i64 %add13.us, !dbg !1459
  tail call void @daxpy(ptr noundef %arrayidx14.us, ptr noundef %arrayidx18.us, i64 noundef %sub20.us, double noundef %fneg.us), !dbg !1460
  %inc.us = add nuw nsw i64 %j.047.us, 1, !dbg !1461
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !1439, metadata !DIExpression()), !dbg !1443
  %exitcond.not = icmp eq i64 %inc.us, %dimj, !dbg !1462
  br i1 %exitcond.not, label %for.cond1.for.inc21_crit_edge.us, label %for.body3.us, !dbg !1448, !llvm.loop !1463

for.cond1.for.inc21_crit_edge.us:                 ; preds = %for.body3.us
  call void @llvm.dbg.value(metadata i64 %add11.us, metadata !1440, metadata !DIExpression()), !dbg !1443
  %exitcond52.not = icmp eq i64 %add11.us, %dimi, !dbg !1444
  br i1 %exitcond52.not, label %for.end23, label %for.cond1.preheader.us, !dbg !1447, !llvm.loop !1465

for.end23:                                        ; preds = %for.cond1.for.inc21_crit_edge.us, %entry
  ret void, !dbg !1467
}

; Function Attrs: argmemonly nofree noinline nosync nounwind uwtable
define dso_local void @bmod(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b, ptr nocapture noundef %c, i64 noundef %dimi, i64 noundef %dimj, i64 noundef %dimk, i64 noundef %stride) local_unnamed_addr #12 !dbg !1468 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !1472, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata ptr %b, metadata !1473, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata ptr %c, metadata !1474, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i64 %dimi, metadata !1475, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i64 %dimj, metadata !1476, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i64 %dimk, metadata !1477, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i64 %stride, metadata !1478, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i64 0, metadata !1480, metadata !DIExpression()), !dbg !1482
  %cmp21 = icmp sgt i64 %dimk, 0, !dbg !1483
  %cmp219 = icmp sgt i64 %dimj, 0
  %or.cond = and i1 %cmp21, %cmp219, !dbg !1486
  br i1 %or.cond, label %for.cond1.preheader.us, label %for.end10, !dbg !1486

for.cond1.preheader.us:                           ; preds = %entry, %for.cond1.for.inc8_crit_edge.us
  %k.022.us = phi i64 [ %inc9.us, %for.cond1.for.inc8_crit_edge.us ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %k.022.us, metadata !1480, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i64 0, metadata !1479, metadata !DIExpression()), !dbg !1482
  %mul6.us = mul nsw i64 %k.022.us, %stride
  %arrayidx7.us = getelementptr inbounds double, ptr %a, i64 %mul6.us
  br label %for.body3.us, !dbg !1487

for.body3.us:                                     ; preds = %for.cond1.preheader.us, %for.body3.us
  %j.020.us = phi i64 [ 0, %for.cond1.preheader.us ], [ %inc.us, %for.body3.us ]
  call void @llvm.dbg.value(metadata i64 %j.020.us, metadata !1479, metadata !DIExpression()), !dbg !1482
  %mul.us = mul nsw i64 %j.020.us, %stride, !dbg !1490
  %add.us = add nsw i64 %mul.us, %k.022.us, !dbg !1493
  %arrayidx.us = getelementptr inbounds double, ptr %b, i64 %add.us, !dbg !1494
  %0 = load double, ptr %arrayidx.us, align 8, !dbg !1494
  %fneg.us = fneg double %0, !dbg !1495
  call void @llvm.dbg.value(metadata double %fneg.us, metadata !1481, metadata !DIExpression()), !dbg !1482
  %arrayidx5.us = getelementptr inbounds double, ptr %c, i64 %mul.us, !dbg !1496
  tail call void @daxpy(ptr noundef %arrayidx5.us, ptr noundef %arrayidx7.us, i64 noundef %dimi, double noundef %fneg.us), !dbg !1497
  %inc.us = add nuw nsw i64 %j.020.us, 1, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !1479, metadata !DIExpression()), !dbg !1482
  %exitcond.not = icmp eq i64 %inc.us, %dimj, !dbg !1499
  br i1 %exitcond.not, label %for.cond1.for.inc8_crit_edge.us, label %for.body3.us, !dbg !1487, !llvm.loop !1500

for.cond1.for.inc8_crit_edge.us:                  ; preds = %for.body3.us
  %inc9.us = add nuw nsw i64 %k.022.us, 1, !dbg !1502
  call void @llvm.dbg.value(metadata i64 %inc9.us, metadata !1480, metadata !DIExpression()), !dbg !1482
  %exitcond25.not = icmp eq i64 %inc9.us, %dimk, !dbg !1483
  br i1 %exitcond25.not, label %for.end10, label %for.cond1.preheader.us, !dbg !1486, !llvm.loop !1503

for.end10:                                        ; preds = %for.cond1.for.inc8_crit_edge.us, %entry
  ret void, !dbg !1505
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn uwtable
define dso_local i64 @BlockOwner(i64 noundef %I, i64 noundef %J) local_unnamed_addr #14 !dbg !1506 {
entry:
  call void @llvm.dbg.value(metadata i64 %I, metadata !1510, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata i64 %J, metadata !1511, metadata !DIExpression()), !dbg !1512
  %0 = load i64, ptr @nblocks, align 8, !dbg !1513
  %mul = mul nsw i64 %0, %J, !dbg !1514
  %add = add nsw i64 %mul, %I, !dbg !1515
  %1 = load i64, ptr @P, align 8, !dbg !1516
  %rem = srem i64 %add, %1, !dbg !1517
  ret i64 %rem, !dbg !1518
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn uwtable
define dso_local i64 @BlockOwnerColumn(i64 noundef %I, i64 noundef %J) local_unnamed_addr #14 !dbg !1519 {
entry:
  call void @llvm.dbg.value(metadata i64 %I, metadata !1521, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %J, metadata !1522, metadata !DIExpression()), !dbg !1523
  %0 = load i64, ptr @P, align 8, !dbg !1524
  %rem = srem i64 %I, %0, !dbg !1525
  ret i64 %rem, !dbg !1526
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn uwtable
define dso_local i64 @BlockOwnerRow(i64 noundef %I, i64 noundef %J) local_unnamed_addr #14 !dbg !1527 {
entry:
  call void @llvm.dbg.value(metadata i64 %I, metadata !1529, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i64 %J, metadata !1530, metadata !DIExpression()), !dbg !1531
  %0 = load i64, ptr @P, align 8, !dbg !1532
  %rem = srem i64 %J, %0, !dbg !1533
  %div = sdiv i64 %0, 2, !dbg !1534
  %add = add nsw i64 %rem, %div, !dbg !1535
  %rem1 = srem i64 %add, %0, !dbg !1536
  ret i64 %rem1, !dbg !1537
}

; Function Attrs: nounwind
declare !dbg !1538 void @srand48(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !1541 i64 @lrand48() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #13

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #16

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: inaccessiblememonly nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #19

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nofree nounwind }
attributes #18 = { inaccessiblememonly nofree nounwind willreturn allocsize(0,1) }
attributes #19 = { argmemonly nofree nounwind willreturn }
attributes #20 = { nounwind }
attributes #21 = { nounwind readonly willreturn }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind readnone willreturn }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { cold }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__threads__", scope: !2, file: !3, line: 59, type: !38, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !111, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lu.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/kernels/lu/non_contiguous_blocks", checksumkind: CSK_MD5, checksum: "16becf0d90fbf5eb3d66cf4e663c64d5")
!4 = !{!5, !6, !7, !8, !9, !101, !104}
!5 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!6 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GlobalMemory", file: !3, line: 70, size: 1728, elements: !11)
!11 = !{!12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !100}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "t_in_fac", scope: !10, file: !3, line: 71, baseType: !7, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "t_in_solve", scope: !10, file: !3, line: 72, baseType: !7, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "t_in_mod", scope: !10, file: !3, line: 73, baseType: !7, size: 64, offset: 128)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "t_in_bar", scope: !10, file: !3, line: 74, baseType: !7, size: 64, offset: 192)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !10, file: !3, line: 75, baseType: !7, size: 64, offset: 256)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !10, file: !3, line: 76, baseType: !18, size: 64, offset: 320)
!18 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !10, file: !3, line: 77, baseType: !18, size: 64, offset: 384)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !10, file: !3, line: 78, baseType: !18, size: 64, offset: 448)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !10, file: !3, line: 79, baseType: !18, size: 64, offset: 512)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !10, file: !3, line: 80, baseType: !5, size: 64, offset: 576)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !10, file: !3, line: 81, baseType: !24, size: 768, offset: 640)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !10, file: !3, line: 81, size: 768, elements: !25)
!25 = !{!26, !59, !99}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "bar_mutex", scope: !24, file: !3, line: 81, baseType: !27, size: 320)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !28, line: 72, baseType: !29)
!28 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!29 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !28, line: 67, size: 320, elements: !30)
!30 = !{!31, !53, !58}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !29, file: !28, line: 69, baseType: !32, size: 320)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !33, line: 22, size: 320, elements: !34)
!33 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!34 = !{!35, !37, !39, !40, !41, !42, !44, !45}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !32, file: !33, line: 24, baseType: !36, size: 32)
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !32, file: !33, line: 25, baseType: !38, size: 32, offset: 32)
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !32, file: !33, line: 26, baseType: !36, size: 32, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !32, file: !33, line: 28, baseType: !38, size: 32, offset: 96)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !32, file: !33, line: 32, baseType: !36, size: 32, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !32, file: !33, line: 34, baseType: !43, size: 16, offset: 160)
!43 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !32, file: !33, line: 35, baseType: !43, size: 16, offset: 176)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !32, file: !33, line: 36, baseType: !46, size: 128, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !47, line: 53, baseType: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !47, line: 49, size: 128, elements: !49)
!49 = !{!50, !52}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !48, file: !47, line: 51, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !48, file: !47, line: 52, baseType: !51, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !29, file: !28, line: 70, baseType: !54, size: 320)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 320, elements: !56)
!55 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!56 = !{!57}
!57 = !DISubrange(count: 40)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !29, file: !28, line: 71, baseType: !5, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "bar_cond", scope: !24, file: !3, line: 81, baseType: !60, size: 384, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !28, line: 80, baseType: !61)
!61 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !28, line: 75, size: 384, elements: !62)
!62 = !{!63, !93, !97}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !61, file: !28, line: 77, baseType: !64, size: 384)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !47, line: 92, size: 384, elements: !65)
!65 = !{!66, !76, !85, !89, !90, !91, !92}
!66 = !DIDerivedType(tag: DW_TAG_member, scope: !64, file: !47, line: 94, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !64, file: !47, line: 94, size: 64, elements: !68)
!68 = !{!69, !71}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !67, file: !47, line: 96, baseType: !70, size: 64)
!70 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq32", scope: !67, file: !47, line: 101, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !67, file: !47, line: 97, size: 64, elements: !73)
!73 = !{!74, !75}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !72, file: !47, line: 99, baseType: !38, size: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !72, file: !47, line: 100, baseType: !38, size: 32, offset: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, scope: !64, file: !47, line: 103, baseType: !77, size: 64, offset: 64)
!77 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !64, file: !47, line: 103, size: 64, elements: !78)
!78 = !{!79, !80}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !77, file: !47, line: 105, baseType: !70, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start32", scope: !77, file: !47, line: 110, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !77, file: !47, line: 106, size: 64, elements: !82)
!82 = !{!83, !84}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !81, file: !47, line: 108, baseType: !38, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !81, file: !47, line: 109, baseType: !38, size: 32, offset: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !64, file: !47, line: 112, baseType: !86, size: 64, offset: 128)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 64, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 2)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !64, file: !47, line: 113, baseType: !86, size: 64, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !64, file: !47, line: 114, baseType: !38, size: 32, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !64, file: !47, line: 115, baseType: !38, size: 32, offset: 288)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !64, file: !47, line: 116, baseType: !86, size: 64, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !61, file: !28, line: 78, baseType: !94, size: 384)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 384, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 48)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !61, file: !28, line: 79, baseType: !98, size: 64)
!98 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "bar_teller", scope: !24, file: !3, line: 81, baseType: !38, size: 32, offset: 704)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "idlock", scope: !10, file: !3, line: 82, baseType: !27, size: 320, offset: 1408)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{!8, !8}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LocalCopies", file: !3, line: 85, size: 256, elements: !106)
!106 = !{!107, !108, !109, !110}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "t_in_fac", scope: !105, file: !3, line: 86, baseType: !6, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "t_in_solve", scope: !105, file: !3, line: 87, baseType: !6, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "t_in_mod", scope: !105, file: !3, line: 88, baseType: !6, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "t_in_bar", scope: !105, file: !3, line: 89, baseType: !6, size: 64, offset: 192)
!111 = !{!0, !112, !114, !116, !118, !120, !122, !124, !130, !132, !134, !136, !138, !140, !142, !144}
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "n", scope: !2, file: !3, line: 92, type: !5, isLocal: false, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "P", scope: !2, file: !3, line: 93, type: !5, isLocal: false, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "block_size", scope: !2, file: !3, line: 94, type: !5, isLocal: false, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "test_result", scope: !2, file: !3, line: 101, type: !5, isLocal: false, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "doprint", scope: !2, file: !3, line: 102, type: !5, isLocal: false, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "dostats", scope: !2, file: !3, line: 103, type: !5, isLocal: false, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "__tid__", scope: !2, file: !3, line: 58, type: !126, isLocal: false, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 16384, elements: !128)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !28, line: 27, baseType: !18)
!128 = !{!129}
!129 = !DISubrange(count: 256)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "__intern__", scope: !2, file: !3, line: 60, type: !27, isLocal: false, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "Global", scope: !2, file: !3, line: 83, type: !9, isLocal: false, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "nblocks", scope: !2, file: !3, line: 95, type: !5, isLocal: false, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "num_rows", scope: !2, file: !3, line: 96, type: !5, isLocal: false, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "num_cols", scope: !2, file: !3, line: 97, type: !5, isLocal: false, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 98, type: !7, isLocal: false, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "rhs", scope: !2, file: !3, line: 99, type: !7, isLocal: false, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "proc_bytes", scope: !2, file: !3, line: 100, type: !146, isLocal: false, isDefinition: true)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!147 = !{i32 7, !"Dwarf Version", i32 5}
!148 = !{i32 2, !"Debug Info Version", i32 3}
!149 = !{i32 1, !"wchar_size", i32 4}
!150 = !{i32 7, !"PIC Level", i32 2}
!151 = !{i32 7, !"PIE Level", i32 2}
!152 = !{i32 7, !"uwtable", i32 2}
!153 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!154 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 122, type: !155, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !159)
!155 = !DISubroutineType(types: !156)
!156 = !{!36, !36, !157}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !182, !183}
!160 = !DILocalVariable(name: "argc", arg: 1, scope: !154, file: !3, line: 122, type: !36)
!161 = !DILocalVariable(name: "argv", arg: 2, scope: !154, file: !3, line: 122, type: !157)
!162 = !DILocalVariable(name: "i", scope: !154, file: !3, line: 124, type: !5)
!163 = !DILocalVariable(name: "ch", scope: !154, file: !3, line: 124, type: !5)
!164 = !DILocalVariable(name: "mint", scope: !154, file: !3, line: 126, type: !6)
!165 = !DILocalVariable(name: "maxt", scope: !154, file: !3, line: 126, type: !6)
!166 = !DILocalVariable(name: "avgt", scope: !154, file: !3, line: 126, type: !6)
!167 = !DILocalVariable(name: "min_fac", scope: !154, file: !3, line: 127, type: !6)
!168 = !DILocalVariable(name: "min_solve", scope: !154, file: !3, line: 127, type: !6)
!169 = !DILocalVariable(name: "min_mod", scope: !154, file: !3, line: 127, type: !6)
!170 = !DILocalVariable(name: "min_bar", scope: !154, file: !3, line: 127, type: !6)
!171 = !DILocalVariable(name: "max_fac", scope: !154, file: !3, line: 128, type: !6)
!172 = !DILocalVariable(name: "max_solve", scope: !154, file: !3, line: 128, type: !6)
!173 = !DILocalVariable(name: "max_mod", scope: !154, file: !3, line: 128, type: !6)
!174 = !DILocalVariable(name: "max_bar", scope: !154, file: !3, line: 128, type: !6)
!175 = !DILocalVariable(name: "avg_fac", scope: !154, file: !3, line: 129, type: !6)
!176 = !DILocalVariable(name: "avg_solve", scope: !154, file: !3, line: 129, type: !6)
!177 = !DILocalVariable(name: "avg_mod", scope: !154, file: !3, line: 129, type: !6)
!178 = !DILocalVariable(name: "avg_bar", scope: !154, file: !3, line: 129, type: !6)
!179 = !DILocalVariable(name: "start", scope: !154, file: !3, line: 130, type: !18)
!180 = !DILocalVariable(name: "i", scope: !181, file: !3, line: 241, type: !5)
!181 = distinct !DILexicalBlock(scope: !154, file: !3, line: 240, column: 3)
!182 = !DILocalVariable(name: "Error", scope: !181, file: !3, line: 241, type: !5)
!183 = !DILocalVariable(name: "aantal", scope: !184, file: !3, line: 256, type: !36)
!184 = distinct !DILexicalBlock(scope: !154, file: !3, line: 256, column: 3)
!185 = !DILocation(line: 0, scope: !154)
!186 = !DILocation(line: 132, column: 27, scope: !187)
!187 = distinct !DILexicalBlock(scope: !154, file: !3, line: 132, column: 3)
!188 = !DILocation(line: 134, column: 16, scope: !154)
!189 = !DILocation(line: 134, column: 51, scope: !154)
!190 = !DILocation(line: 134, column: 3, scope: !154)
!191 = !DILocation(line: 135, column: 5, scope: !192)
!192 = distinct !DILexicalBlock(scope: !154, file: !3, line: 134, column: 58)
!193 = !DILocation(line: 136, column: 24, scope: !194)
!194 = distinct !DILexicalBlock(scope: !192, file: !3, line: 135, column: 16)
!195 = !DILocation(line: 136, column: 19, scope: !194)
!196 = !DILocation(line: 136, column: 17, scope: !194)
!197 = !DILocation(line: 136, column: 33, scope: !194)
!198 = !DILocation(line: 137, column: 24, scope: !194)
!199 = !DILocation(line: 137, column: 19, scope: !194)
!200 = !DILocation(line: 137, column: 17, scope: !194)
!201 = !DILocation(line: 137, column: 33, scope: !194)
!202 = !DILocation(line: 138, column: 33, scope: !194)
!203 = !DILocation(line: 138, column: 28, scope: !194)
!204 = !DILocation(line: 138, column: 26, scope: !194)
!205 = !DILocation(line: 138, column: 42, scope: !194)
!206 = !DILocation(line: 139, column: 23, scope: !194)
!207 = !DILocation(line: 139, column: 28, scope: !194)
!208 = !DILocation(line: 140, column: 30, scope: !194)
!209 = !DILocation(line: 140, column: 29, scope: !194)
!210 = !DILocation(line: 140, column: 27, scope: !194)
!211 = !DILocation(line: 140, column: 43, scope: !194)
!212 = !DILocation(line: 141, column: 26, scope: !194)
!213 = !DILocation(line: 141, column: 25, scope: !194)
!214 = !DILocation(line: 141, column: 23, scope: !194)
!215 = !DILocation(line: 141, column: 35, scope: !194)
!216 = !DILocation(line: 142, column: 15, scope: !194)
!217 = !DILocation(line: 143, column: 15, scope: !194)
!218 = !DILocation(line: 144, column: 15, scope: !194)
!219 = !DILocation(line: 145, column: 15, scope: !194)
!220 = !DILocation(line: 146, column: 15, scope: !194)
!221 = !DILocation(line: 147, column: 15, scope: !194)
!222 = !DILocation(line: 148, column: 15, scope: !194)
!223 = !DILocation(line: 149, column: 15, scope: !194)
!224 = !DILocation(line: 150, column: 15, scope: !194)
!225 = !DILocation(line: 151, column: 15, scope: !194)
!226 = !DILocation(line: 152, column: 15, scope: !194)
!227 = !DILocation(line: 153, column: 15, scope: !194)
!228 = !DILocation(line: 155, column: 15, scope: !194)
!229 = distinct !{!229, !190, !230, !231, !232}
!230 = !DILocation(line: 158, column: 3, scope: !154)
!231 = !{!"llvm.loop.mustprogress"}
!232 = !{!"llvm.loop.unroll.disable"}
!233 = !DILocation(line: 160, column: 27, scope: !234)
!234 = distinct !DILexicalBlock(scope: !154, file: !3, line: 160, column: 3)
!235 = !DILocation(line: 160, column: 23, scope: !234)
!236 = !DILocation(line: 160, column: 4, scope: !234)
!237 = !DILocation(line: 160, column: 26, scope: !234)
!238 = !DILocation(line: 162, column: 3, scope: !154)
!239 = !DILocation(line: 163, column: 3, scope: !154)
!240 = !DILocation(line: 164, column: 37, scope: !154)
!241 = !DILocation(line: 164, column: 3, scope: !154)
!242 = !DILocation(line: 165, column: 34, scope: !154)
!243 = !DILocation(line: 165, column: 3, scope: !154)
!244 = !DILocation(line: 166, column: 45, scope: !154)
!245 = !DILocation(line: 166, column: 3, scope: !154)
!246 = !DILocation(line: 167, column: 3, scope: !154)
!247 = !DILocation(line: 168, column: 3, scope: !154)
!248 = !DILocation(line: 170, column: 35, scope: !154)
!249 = !DILocation(line: 170, column: 26, scope: !154)
!250 = !DILocation(line: 170, column: 21, scope: !154)
!251 = !DILocation(line: 170, column: 14, scope: !154)
!252 = !DILocation(line: 171, column: 3, scope: !154)
!253 = !DILocation(line: 172, column: 17, scope: !254)
!254 = distinct !DILexicalBlock(scope: !255, file: !3, line: 171, column: 12)
!255 = distinct !DILexicalBlock(scope: !256, file: !3, line: 171, column: 3)
!256 = distinct !DILexicalBlock(scope: !154, file: !3, line: 171, column: 3)
!257 = !DILocation(line: 173, column: 17, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !3, line: 173, column: 9)
!259 = !DILocation(line: 173, column: 27, scope: !258)
!260 = !DILocation(line: 175, column: 13, scope: !254)
!261 = !DILocation(line: 173, column: 9, scope: !254)
!262 = distinct !{!262, !263, !264, !232}
!263 = !DILocation(line: 171, column: 3, scope: !256)
!264 = !DILocation(line: 176, column: 3, scope: !256)
!265 = !DILocation(line: 172, column: 14, scope: !254)
!266 = !DILocation(line: 177, column: 13, scope: !154)
!267 = !DILocation(line: 177, column: 15, scope: !154)
!268 = !DILocation(line: 177, column: 14, scope: !154)
!269 = !DILocation(line: 178, column: 18, scope: !270)
!270 = distinct !DILexicalBlock(scope: !154, file: !3, line: 178, column: 7)
!271 = !DILocation(line: 178, column: 28, scope: !270)
!272 = !DILocation(line: 178, column: 7, scope: !154)
!273 = !DILocation(line: 182, column: 26, scope: !154)
!274 = !DILocation(line: 182, column: 28, scope: !154)
!275 = !DILocation(line: 182, column: 18, scope: !154)
!276 = !DILocation(line: 182, column: 5, scope: !154)
!277 = !DILocation(line: 183, column: 9, scope: !278)
!278 = distinct !DILexicalBlock(scope: !154, file: !3, line: 183, column: 7)
!279 = !DILocation(line: 183, column: 7, scope: !154)
!280 = !DILocation(line: 184, column: 4, scope: !281)
!281 = distinct !DILexicalBlock(scope: !278, file: !3, line: 183, column: 18)
!282 = !DILocation(line: 185, column: 4, scope: !281)
!283 = !DILocation(line: 187, column: 20, scope: !154)
!284 = !DILocation(line: 187, column: 7, scope: !154)
!285 = !DILocation(line: 188, column: 11, scope: !286)
!286 = distinct !DILexicalBlock(scope: !154, file: !3, line: 188, column: 7)
!287 = !DILocation(line: 188, column: 7, scope: !154)
!288 = !DILocation(line: 189, column: 4, scope: !289)
!289 = distinct !DILexicalBlock(scope: !286, file: !3, line: 188, column: 20)
!290 = !DILocation(line: 190, column: 4, scope: !289)
!291 = !DILocation(line: 193, column: 36, scope: !154)
!292 = !DILocation(line: 193, column: 10, scope: !154)
!293 = !DILocation(line: 194, column: 41, scope: !154)
!294 = !DILocation(line: 194, column: 33, scope: !154)
!295 = !DILocation(line: 194, column: 20, scope: !154)
!296 = !DILocation(line: 195, column: 33, scope: !154)
!297 = !DILocation(line: 195, column: 11, scope: !154)
!298 = !DILocation(line: 195, column: 20, scope: !154)
!299 = !DILocation(line: 196, column: 35, scope: !154)
!300 = !DILocation(line: 196, column: 11, scope: !154)
!301 = !DILocation(line: 196, column: 22, scope: !154)
!302 = !DILocation(line: 197, column: 33, scope: !154)
!303 = !DILocation(line: 197, column: 11, scope: !154)
!304 = !DILocation(line: 197, column: 20, scope: !154)
!305 = !DILocation(line: 198, column: 35, scope: !154)
!306 = !DILocation(line: 198, column: 11, scope: !154)
!307 = !DILocation(line: 198, column: 22, scope: !154)
!308 = !DILocation(line: 203, column: 31, scope: !309)
!309 = distinct !DILexicalBlock(scope: !310, file: !3, line: 203, column: 14)
!310 = distinct !DILexicalBlock(scope: !154, file: !3, line: 200, column: 7)
!311 = !DILocation(line: 203, column: 14, scope: !310)
!312 = !DILocation(line: 204, column: 5, scope: !313)
!313 = distinct !DILexicalBlock(scope: !309, file: !3, line: 203, column: 40)
!314 = !DILocation(line: 205, column: 5, scope: !313)
!315 = !DILocation(line: 206, column: 31, scope: !316)
!316 = distinct !DILexicalBlock(scope: !309, file: !3, line: 206, column: 14)
!317 = !DILocation(line: 206, column: 14, scope: !309)
!318 = !DILocation(line: 207, column: 5, scope: !319)
!319 = distinct !DILexicalBlock(scope: !316, file: !3, line: 206, column: 40)
!320 = !DILocation(line: 208, column: 5, scope: !319)
!321 = !DILocation(line: 209, column: 33, scope: !322)
!322 = distinct !DILexicalBlock(scope: !316, file: !3, line: 209, column: 14)
!323 = !DILocation(line: 209, column: 14, scope: !316)
!324 = !DILocation(line: 210, column: 5, scope: !325)
!325 = distinct !DILexicalBlock(scope: !322, file: !3, line: 209, column: 42)
!326 = !DILocation(line: 211, column: 5, scope: !325)
!327 = !DILocation(line: 212, column: 31, scope: !328)
!328 = distinct !DILexicalBlock(scope: !322, file: !3, line: 212, column: 14)
!329 = !DILocation(line: 212, column: 14, scope: !322)
!330 = !DILocation(line: 213, column: 5, scope: !331)
!331 = distinct !DILexicalBlock(scope: !328, file: !3, line: 212, column: 40)
!332 = !DILocation(line: 214, column: 5, scope: !331)
!333 = !DILocation(line: 215, column: 33, scope: !334)
!334 = distinct !DILexicalBlock(scope: !328, file: !3, line: 215, column: 14)
!335 = !DILocation(line: 215, column: 14, scope: !328)
!336 = !DILocation(line: 216, column: 5, scope: !337)
!337 = distinct !DILexicalBlock(scope: !334, file: !3, line: 215, column: 42)
!338 = !DILocation(line: 217, column: 5, scope: !337)
!339 = !DILocation(line: 225, column: 32, scope: !340)
!340 = distinct !DILexicalBlock(scope: !154, file: !3, line: 224, column: 3)
!341 = !DILocation(line: 225, column: 2, scope: !340)
!342 = !DILocation(line: 226, column: 23, scope: !340)
!343 = !DILocation(line: 226, column: 38, scope: !340)
!344 = !DILocation(line: 226, column: 2, scope: !340)
!345 = !DILocation(line: 227, column: 3, scope: !340)
!346 = !DILocation(line: 227, column: 18, scope: !340)
!347 = !DILocation(line: 227, column: 28, scope: !340)
!348 = !DILocation(line: 229, column: 33, scope: !349)
!349 = distinct !DILexicalBlock(scope: !154, file: !3, line: 229, column: 3)
!350 = !DILocation(line: 229, column: 4, scope: !349)
!351 = !DILocation(line: 230, column: 3, scope: !154)
!352 = !DILocation(line: 230, column: 11, scope: !154)
!353 = !DILocation(line: 230, column: 14, scope: !154)
!354 = !DILocation(line: 232, column: 9, scope: !154)
!355 = !DILocation(line: 232, column: 3, scope: !154)
!356 = !DILocation(line: 233, column: 7, scope: !357)
!357 = distinct !DILexicalBlock(scope: !154, file: !3, line: 233, column: 7)
!358 = !DILocation(line: 233, column: 7, scope: !154)
!359 = !DILocation(line: 234, column: 5, scope: !360)
!360 = distinct !DILexicalBlock(scope: !357, file: !3, line: 233, column: 16)
!361 = !DILocation(line: 235, column: 5, scope: !360)
!362 = !DILocation(line: 236, column: 3, scope: !360)
!363 = !DILocation(line: 243, column: 2, scope: !181)
!364 = !DILocation(line: 244, column: 2, scope: !181)
!365 = !DILocation(line: 0, scope: !181)
!366 = !DILocation(line: 245, column: 19, scope: !367)
!367 = distinct !DILexicalBlock(scope: !368, file: !3, line: 245, column: 2)
!368 = distinct !DILexicalBlock(scope: !181, file: !3, line: 245, column: 2)
!369 = !DILocation(line: 245, column: 16, scope: !367)
!370 = !DILocation(line: 245, column: 2, scope: !368)
!371 = !DILocation(line: 245, column: 28, scope: !367)
!372 = !DILocation(line: 245, column: 22, scope: !367)
!373 = distinct !{!373, !370, !374, !231, !232}
!374 = !DILocation(line: 251, column: 2, scope: !368)
!375 = !DILocation(line: 246, column: 46, scope: !376)
!376 = distinct !DILexicalBlock(scope: !367, file: !3, line: 245, column: 32)
!377 = !DILocation(line: 246, column: 27, scope: !376)
!378 = !DILocation(line: 246, column: 11, scope: !376)
!379 = !DILocation(line: 247, column: 13, scope: !380)
!380 = distinct !DILexicalBlock(scope: !376, file: !3, line: 247, column: 7)
!381 = !DILocation(line: 247, column: 7, scope: !376)
!382 = !DILocation(line: 248, column: 4, scope: !383)
!383 = distinct !DILexicalBlock(scope: !380, file: !3, line: 247, column: 19)
!384 = !DILocation(line: 249, column: 4, scope: !383)
!385 = !DILocation(line: 252, column: 2, scope: !181)
!386 = !DILocation(line: 254, column: 2, scope: !181)
!387 = !DILocation(line: 256, column: 15, scope: !184)
!388 = !DILocation(line: 0, scope: !184)
!389 = !DILocation(line: 256, column: 18, scope: !184)
!390 = !DILocation(line: 256, column: 31, scope: !184)
!391 = !DILocation(line: 256, column: 48, scope: !184)
!392 = !DILocation(line: 256, column: 35, scope: !184)
!393 = distinct !{!393, !389, !394, !231, !232}
!394 = !DILocation(line: 256, column: 69, scope: !184)
!395 = !DILocation(line: 260, column: 7, scope: !396)
!396 = distinct !DILexicalBlock(scope: !154, file: !3, line: 260, column: 7)
!397 = !DILocation(line: 260, column: 7, scope: !154)
!398 = !DILocation(line: 261, column: 5, scope: !399)
!399 = distinct !DILexicalBlock(scope: !396, file: !3, line: 260, column: 16)
!400 = !DILocation(line: 262, column: 5, scope: !399)
!401 = !DILocation(line: 263, column: 3, scope: !399)
!402 = !DILocation(line: 265, column: 7, scope: !403)
!403 = distinct !DILexicalBlock(scope: !154, file: !3, line: 265, column: 7)
!404 = !DILocation(line: 265, column: 7, scope: !154)
!405 = !DILocation(line: 266, column: 26, scope: !406)
!406 = distinct !DILexicalBlock(scope: !403, file: !3, line: 265, column: 16)
!407 = !DILocation(line: 266, column: 34, scope: !406)
!408 = !DILocation(line: 267, column: 16, scope: !409)
!409 = distinct !DILexicalBlock(scope: !410, file: !3, line: 267, column: 5)
!410 = distinct !DILexicalBlock(scope: !406, file: !3, line: 267, column: 5)
!411 = !DILocation(line: 267, column: 5, scope: !410)
!412 = !DILocation(line: 268, column: 11, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !3, line: 268, column: 11)
!414 = distinct !DILexicalBlock(scope: !409, file: !3, line: 267, column: 25)
!415 = !DILocation(line: 268, column: 33, scope: !413)
!416 = !DILocation(line: 268, column: 11, scope: !414)
!417 = !DILocation(line: 270, column: 7, scope: !418)
!418 = distinct !DILexicalBlock(scope: !413, file: !3, line: 268, column: 41)
!419 = !DILocation(line: 0, scope: !406)
!420 = !DILocation(line: 271, column: 33, scope: !421)
!421 = distinct !DILexicalBlock(scope: !414, file: !3, line: 271, column: 11)
!422 = !DILocation(line: 271, column: 11, scope: !414)
!423 = !DILocation(line: 273, column: 7, scope: !424)
!424 = distinct !DILexicalBlock(scope: !421, file: !3, line: 271, column: 41)
!425 = !DILocation(line: 274, column: 12, scope: !414)
!426 = !DILocation(line: 267, column: 21, scope: !409)
!427 = distinct !{!427, !411, !428, !231, !232}
!428 = !DILocation(line: 275, column: 5, scope: !410)
!429 = !DILocation(line: 276, column: 19, scope: !406)
!430 = !DILocation(line: 276, column: 17, scope: !406)
!431 = !DILocation(line: 278, column: 43, scope: !406)
!432 = !DILocation(line: 278, column: 35, scope: !406)
!433 = !DILocation(line: 279, column: 49, scope: !406)
!434 = !DILocation(line: 279, column: 41, scope: !406)
!435 = !DILocation(line: 280, column: 43, scope: !406)
!436 = !DILocation(line: 280, column: 35, scope: !406)
!437 = !DILocation(line: 281, column: 43, scope: !406)
!438 = !DILocation(line: 281, column: 35, scope: !406)
!439 = !DILocation(line: 283, column: 5, scope: !440)
!440 = distinct !DILexicalBlock(scope: !406, file: !3, line: 283, column: 5)
!441 = !DILocation(line: 284, column: 11, scope: !442)
!442 = distinct !DILexicalBlock(scope: !443, file: !3, line: 284, column: 11)
!443 = distinct !DILexicalBlock(scope: !444, file: !3, line: 283, column: 25)
!444 = distinct !DILexicalBlock(scope: !440, file: !3, line: 283, column: 5)
!445 = !DILocation(line: 284, column: 31, scope: !442)
!446 = !DILocation(line: 284, column: 11, scope: !443)
!447 = !DILocation(line: 286, column: 7, scope: !448)
!448 = distinct !DILexicalBlock(scope: !442, file: !3, line: 284, column: 42)
!449 = !DILocation(line: 287, column: 31, scope: !450)
!450 = distinct !DILexicalBlock(scope: !443, file: !3, line: 287, column: 11)
!451 = !DILocation(line: 287, column: 11, scope: !443)
!452 = !DILocation(line: 289, column: 7, scope: !453)
!453 = distinct !DILexicalBlock(scope: !450, file: !3, line: 287, column: 42)
!454 = !DILocation(line: 290, column: 11, scope: !455)
!455 = distinct !DILexicalBlock(scope: !443, file: !3, line: 290, column: 11)
!456 = !DILocation(line: 290, column: 33, scope: !455)
!457 = !DILocation(line: 290, column: 11, scope: !443)
!458 = !DILocation(line: 292, column: 7, scope: !459)
!459 = distinct !DILexicalBlock(scope: !455, file: !3, line: 290, column: 46)
!460 = !DILocation(line: 293, column: 33, scope: !461)
!461 = distinct !DILexicalBlock(scope: !443, file: !3, line: 293, column: 11)
!462 = !DILocation(line: 293, column: 11, scope: !443)
!463 = !DILocation(line: 295, column: 7, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !3, line: 293, column: 46)
!465 = !DILocation(line: 296, column: 11, scope: !466)
!466 = distinct !DILexicalBlock(scope: !443, file: !3, line: 296, column: 11)
!467 = !DILocation(line: 296, column: 31, scope: !466)
!468 = !DILocation(line: 296, column: 11, scope: !443)
!469 = !DILocation(line: 298, column: 7, scope: !470)
!470 = distinct !DILexicalBlock(scope: !466, file: !3, line: 296, column: 42)
!471 = !DILocation(line: 299, column: 31, scope: !472)
!472 = distinct !DILexicalBlock(scope: !443, file: !3, line: 299, column: 11)
!473 = !DILocation(line: 299, column: 11, scope: !443)
!474 = !DILocation(line: 301, column: 7, scope: !475)
!475 = distinct !DILexicalBlock(scope: !472, file: !3, line: 299, column: 42)
!476 = !DILocation(line: 302, column: 11, scope: !477)
!477 = distinct !DILexicalBlock(scope: !443, file: !3, line: 302, column: 11)
!478 = !DILocation(line: 302, column: 31, scope: !477)
!479 = !DILocation(line: 302, column: 11, scope: !443)
!480 = !DILocation(line: 304, column: 7, scope: !481)
!481 = distinct !DILexicalBlock(scope: !477, file: !3, line: 302, column: 42)
!482 = !DILocation(line: 305, column: 31, scope: !483)
!483 = distinct !DILexicalBlock(scope: !443, file: !3, line: 305, column: 11)
!484 = !DILocation(line: 305, column: 11, scope: !443)
!485 = !DILocation(line: 307, column: 7, scope: !486)
!486 = distinct !DILexicalBlock(scope: !483, file: !3, line: 305, column: 42)
!487 = !DILocation(line: 308, column: 15, scope: !443)
!488 = !DILocation(line: 309, column: 17, scope: !443)
!489 = !DILocation(line: 310, column: 15, scope: !443)
!490 = !DILocation(line: 311, column: 15, scope: !443)
!491 = !DILocation(line: 283, column: 21, scope: !444)
!492 = !DILocation(line: 283, column: 16, scope: !444)
!493 = distinct !{!493, !439, !494, !231, !232}
!494 = !DILocation(line: 312, column: 5, scope: !440)
!495 = !DILocation(line: 313, column: 22, scope: !406)
!496 = !DILocation(line: 314, column: 26, scope: !406)
!497 = !DILocation(line: 315, column: 22, scope: !406)
!498 = !DILocation(line: 316, column: 22, scope: !406)
!499 = !DILocation(line: 317, column: 3, scope: !406)
!500 = !DILocation(line: 318, column: 3, scope: !154)
!501 = !DILocation(line: 319, column: 3, scope: !154)
!502 = !DILocation(line: 320, column: 3, scope: !154)
!503 = !DILocation(line: 322, column: 11, scope: !154)
!504 = !DILocation(line: 322, column: 19, scope: !154)
!505 = !DILocation(line: 322, column: 41, scope: !154)
!506 = !DILocation(line: 322, column: 33, scope: !154)
!507 = !DILocation(line: 323, column: 19, scope: !154)
!508 = !DILocation(line: 323, column: 11, scope: !154)
!509 = !DILocation(line: 323, column: 41, scope: !154)
!510 = !DILocation(line: 323, column: 33, scope: !154)
!511 = !DILocation(line: 324, column: 19, scope: !154)
!512 = !DILocation(line: 324, column: 11, scope: !154)
!513 = !DILocation(line: 321, column: 3, scope: !154)
!514 = !DILocation(line: 325, column: 7, scope: !515)
!515 = distinct !DILexicalBlock(scope: !154, file: !3, line: 325, column: 7)
!516 = !DILocation(line: 325, column: 7, scope: !154)
!517 = !DILocation(line: 326, column: 17, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !3, line: 326, column: 5)
!519 = distinct !DILexicalBlock(scope: !520, file: !3, line: 326, column: 5)
!520 = distinct !DILexicalBlock(scope: !515, file: !3, line: 325, column: 16)
!521 = !DILocation(line: 326, column: 16, scope: !518)
!522 = !DILocation(line: 326, column: 5, scope: !519)
!523 = !DILocation(line: 328, column: 17, scope: !524)
!524 = distinct !DILexicalBlock(scope: !518, file: !3, line: 326, column: 25)
!525 = !DILocation(line: 328, column: 25, scope: !524)
!526 = !DILocation(line: 328, column: 47, scope: !524)
!527 = !DILocation(line: 328, column: 39, scope: !524)
!528 = !DILocation(line: 329, column: 23, scope: !524)
!529 = !DILocation(line: 329, column: 15, scope: !524)
!530 = !DILocation(line: 329, column: 45, scope: !524)
!531 = !DILocation(line: 329, column: 37, scope: !524)
!532 = !DILocation(line: 330, column: 23, scope: !524)
!533 = !DILocation(line: 330, column: 15, scope: !524)
!534 = !DILocation(line: 327, column: 7, scope: !524)
!535 = !DILocation(line: 326, column: 21, scope: !518)
!536 = distinct !{!536, !522, !537, !231, !232}
!537 = !DILocation(line: 331, column: 5, scope: !519)
!538 = !DILocation(line: 332, column: 5, scope: !520)
!539 = !DILocation(line: 334, column: 5, scope: !520)
!540 = !DILocation(line: 336, column: 5, scope: !520)
!541 = !DILocation(line: 338, column: 3, scope: !520)
!542 = !DILocation(line: 339, column: 3, scope: !154)
!543 = !DILocation(line: 340, column: 3, scope: !154)
!544 = !DILocation(line: 340, column: 11, scope: !154)
!545 = !DILocation(line: 340, column: 21, scope: !154)
!546 = !DILocation(line: 341, column: 3, scope: !154)
!547 = !DILocation(line: 342, column: 57, scope: !154)
!548 = !DILocation(line: 342, column: 65, scope: !154)
!549 = !DILocation(line: 342, column: 3, scope: !154)
!550 = !DILocation(line: 343, column: 57, scope: !154)
!551 = !DILocation(line: 343, column: 65, scope: !154)
!552 = !DILocation(line: 343, column: 3, scope: !154)
!553 = !DILocation(line: 344, column: 57, scope: !154)
!554 = !DILocation(line: 344, column: 65, scope: !154)
!555 = !DILocation(line: 344, column: 3, scope: !154)
!556 = !DILocation(line: 345, column: 57, scope: !154)
!557 = !DILocation(line: 345, column: 65, scope: !154)
!558 = !DILocation(line: 345, column: 76, scope: !154)
!559 = !DILocation(line: 345, column: 67, scope: !154)
!560 = !DILocation(line: 345, column: 3, scope: !154)
!561 = !DILocation(line: 346, column: 57, scope: !154)
!562 = !DILocation(line: 346, column: 65, scope: !154)
!563 = !DILocation(line: 346, column: 76, scope: !154)
!564 = !DILocation(line: 346, column: 67, scope: !154)
!565 = !DILocation(line: 346, column: 3, scope: !154)
!566 = !DILocation(line: 347, column: 3, scope: !154)
!567 = !DILocation(line: 349, column: 7, scope: !568)
!568 = distinct !DILexicalBlock(scope: !154, file: !3, line: 349, column: 7)
!569 = !DILocation(line: 349, column: 7, scope: !154)
!570 = !DILocation(line: 350, column: 5, scope: !571)
!571 = distinct !DILexicalBlock(scope: !568, file: !3, line: 349, column: 20)
!572 = !DILocation(line: 351, column: 17, scope: !571)
!573 = !DILocation(line: 351, column: 20, scope: !571)
!574 = !DILocation(line: 351, column: 23, scope: !571)
!575 = !DILocation(line: 351, column: 5, scope: !571)
!576 = !DILocation(line: 352, column: 3, scope: !571)
!577 = !DILocation(line: 354, column: 4, scope: !578)
!578 = distinct !DILexicalBlock(scope: !154, file: !3, line: 354, column: 3)
!579 = !DISubprogram(name: "time", scope: !3, file: !3, line: 132, type: !580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!580 = !DISubroutineType(types: !581)
!581 = !{!582, !146}
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !583, line: 7, baseType: !584)
!583 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !585, line: 160, baseType: !5)
!585 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!586 = !{}
!587 = !DISubprogram(name: "getopt", linkageName: "__posix_getopt", scope: !588, file: !588, line: 38, type: !589, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!588 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_posix.h", directory: "", checksumkind: CSK_MD5, checksum: "840dc87272c72d515e0114d4ecf10e54")
!589 = !DISubroutineType(types: !590)
!590 = !{!36, !36, !591, !593}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!595 = !DISubprogram(name: "atoi", scope: !596, file: !596, line: 104, type: !597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!596 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!597 = !DISubroutineType(types: !598)
!598 = !{!36, !593}
!599 = !DISubprogram(name: "pthread_self", scope: !600, file: !600, line: 251, type: !601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!600 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!601 = !DISubroutineType(types: !602)
!602 = !{!127}
!603 = distinct !DISubprogram(name: "printerr", scope: !3, file: !3, line: 765, type: !604, scopeLine: 766, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !606)
!604 = !DISubroutineType(types: !605)
!605 = !{null, !158}
!606 = !{!607}
!607 = !DILocalVariable(name: "s", arg: 1, scope: !603, file: !3, line: 765, type: !158)
!608 = !DILocation(line: 0, scope: !603)
!609 = !DILocation(line: 767, column: 11, scope: !603)
!610 = !DILocation(line: 767, column: 3, scope: !603)
!611 = !DILocation(line: 768, column: 1, scope: !603)
!612 = !DISubprogram(name: "pthread_mutex_init", scope: !600, file: !600, line: 725, type: !613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!613 = !DISubroutineType(types: !614)
!614 = !{!36, !615, !616}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutexattr_t", file: !28, line: 36, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !28, line: 32, size: 32, elements: !620)
!620 = !{!621, !625}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !619, file: !28, line: 34, baseType: !622, size: 32)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 32, elements: !623)
!623 = !{!624}
!624 = !DISubrange(count: 4)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !619, file: !28, line: 35, baseType: !36, size: 32)
!626 = !DISubprogram(name: "pthread_cond_init", scope: !600, file: !600, line: 965, type: !627, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!627 = !DISubroutineType(types: !628)
!628 = !{!36, !629, !631}
!629 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !630)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_condattr_t", file: !28, line: 45, baseType: !635)
!635 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !28, line: 41, size: 32, elements: !636)
!636 = !{!637, !638}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !635, file: !28, line: 43, baseType: !622, size: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !635, file: !28, line: 44, baseType: !36, size: 32)
!639 = distinct !DISubprogram(name: "InitA", scope: !3, file: !3, line: 664, type: !640, scopeLine: 665, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !642)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !7}
!642 = !{!643, !644, !645}
!643 = !DILocalVariable(name: "rhs", arg: 1, scope: !639, file: !3, line: 664, type: !7)
!644 = !DILocalVariable(name: "i", scope: !639, file: !3, line: 666, type: !5)
!645 = !DILocalVariable(name: "j", scope: !639, file: !3, line: 666, type: !5)
!646 = !DILocation(line: 0, scope: !639)
!647 = !DILocation(line: 668, column: 3, scope: !639)
!648 = !DILocation(line: 669, column: 15, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !3, line: 669, column: 3)
!650 = distinct !DILexicalBlock(scope: !639, file: !3, line: 669, column: 3)
!651 = !DILocation(line: 669, column: 14, scope: !649)
!652 = !DILocation(line: 669, column: 3, scope: !650)
!653 = !DILocation(line: 670, column: 16, scope: !654)
!654 = distinct !DILexicalBlock(scope: !655, file: !3, line: 670, column: 5)
!655 = distinct !DILexicalBlock(scope: !656, file: !3, line: 670, column: 5)
!656 = distinct !DILexicalBlock(scope: !649, file: !3, line: 669, column: 23)
!657 = !DILocation(line: 670, column: 5, scope: !655)
!658 = !DILocation(line: 678, column: 14, scope: !659)
!659 = distinct !DILexicalBlock(scope: !660, file: !3, line: 678, column: 3)
!660 = distinct !DILexicalBlock(scope: !639, file: !3, line: 678, column: 3)
!661 = !DILocation(line: 678, column: 3, scope: !660)
!662 = !DILocation(line: 671, column: 27, scope: !663)
!663 = distinct !DILexicalBlock(scope: !654, file: !3, line: 670, column: 25)
!664 = !DILocation(line: 671, column: 18, scope: !663)
!665 = !DILocation(line: 671, column: 36, scope: !663)
!666 = !DILocation(line: 671, column: 7, scope: !663)
!667 = !DILocation(line: 671, column: 13, scope: !663)
!668 = !DILocation(line: 671, column: 12, scope: !663)
!669 = !DILocation(line: 671, column: 10, scope: !663)
!670 = !DILocation(line: 671, column: 16, scope: !663)
!671 = !DILocation(line: 672, column: 13, scope: !672)
!672 = distinct !DILexicalBlock(scope: !663, file: !3, line: 672, column: 11)
!673 = !DILocation(line: 672, column: 11, scope: !663)
!674 = !DILocation(line: 673, column: 2, scope: !675)
!675 = distinct !DILexicalBlock(scope: !672, file: !3, line: 672, column: 19)
!676 = !DILocation(line: 673, column: 8, scope: !675)
!677 = !DILocation(line: 673, column: 7, scope: !675)
!678 = !DILocation(line: 673, column: 5, scope: !675)
!679 = !DILocation(line: 673, column: 11, scope: !675)
!680 = !DILocation(line: 674, column: 7, scope: !675)
!681 = !DILocation(line: 670, column: 21, scope: !654)
!682 = !DILocation(line: 670, column: 17, scope: !654)
!683 = distinct !{!683, !657, !684, !231, !232}
!684 = !DILocation(line: 675, column: 5, scope: !655)
!685 = !DILocation(line: 669, column: 19, scope: !649)
!686 = distinct !{!686, !652, !687, !231, !232, !688}
!687 = !DILocation(line: 676, column: 3, scope: !650)
!688 = !{!"llvm.loop.unswitch.partial.disable"}
!689 = !DILocation(line: 681, column: 14, scope: !690)
!690 = distinct !DILexicalBlock(scope: !691, file: !3, line: 681, column: 3)
!691 = distinct !DILexicalBlock(scope: !639, file: !3, line: 681, column: 3)
!692 = !DILocation(line: 681, column: 3, scope: !691)
!693 = !DILocation(line: 679, column: 5, scope: !694)
!694 = distinct !DILexicalBlock(scope: !659, file: !3, line: 678, column: 23)
!695 = !DILocation(line: 679, column: 12, scope: !694)
!696 = !DILocation(line: 678, column: 19, scope: !659)
!697 = !DILocation(line: 678, column: 15, scope: !659)
!698 = distinct !{!698, !661, !699, !231, !232}
!699 = !DILocation(line: 680, column: 3, scope: !660)
!700 = !DILocation(line: 682, column: 16, scope: !701)
!701 = distinct !DILexicalBlock(scope: !702, file: !3, line: 682, column: 5)
!702 = distinct !DILexicalBlock(scope: !703, file: !3, line: 682, column: 5)
!703 = distinct !DILexicalBlock(scope: !690, file: !3, line: 681, column: 23)
!704 = !DILocation(line: 682, column: 5, scope: !702)
!705 = !DILocation(line: 683, column: 17, scope: !706)
!706 = distinct !DILexicalBlock(scope: !701, file: !3, line: 682, column: 25)
!707 = !DILocation(line: 683, column: 22, scope: !706)
!708 = !DILocation(line: 683, column: 20, scope: !706)
!709 = !DILocation(line: 683, column: 7, scope: !706)
!710 = !DILocation(line: 683, column: 14, scope: !706)
!711 = !DILocation(line: 682, column: 21, scope: !701)
!712 = !DILocation(line: 682, column: 17, scope: !701)
!713 = distinct !{!713, !704, !714, !231, !232}
!714 = !DILocation(line: 684, column: 5, scope: !702)
!715 = !DILocation(line: 681, column: 15, scope: !690)
!716 = !DILocation(line: 681, column: 19, scope: !690)
!717 = distinct !{!717, !692, !718, !231, !232, !688}
!718 = !DILocation(line: 685, column: 3, scope: !691)
!719 = !DILocation(line: 686, column: 1, scope: !639)
!720 = distinct !DISubprogram(name: "PrintA", scope: !3, file: !3, line: 709, type: !721, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !723)
!721 = !DISubroutineType(types: !722)
!722 = !{null}
!723 = !{!724, !725}
!724 = !DILocalVariable(name: "i", scope: !720, file: !3, line: 711, type: !5)
!725 = !DILocalVariable(name: "j", scope: !720, file: !3, line: 711, type: !5)
!726 = !DILocation(line: 0, scope: !720)
!727 = !DILocation(line: 713, column: 15, scope: !728)
!728 = distinct !DILexicalBlock(scope: !729, file: !3, line: 713, column: 3)
!729 = distinct !DILexicalBlock(scope: !720, file: !3, line: 713, column: 3)
!730 = !DILocation(line: 713, column: 14, scope: !728)
!731 = !DILocation(line: 713, column: 3, scope: !729)
!732 = !DILocation(line: 714, column: 17, scope: !733)
!733 = distinct !DILexicalBlock(scope: !734, file: !3, line: 714, column: 5)
!734 = distinct !DILexicalBlock(scope: !735, file: !3, line: 714, column: 5)
!735 = distinct !DILexicalBlock(scope: !728, file: !3, line: 713, column: 23)
!736 = !DILocation(line: 714, column: 16, scope: !733)
!737 = !DILocation(line: 714, column: 5, scope: !734)
!738 = !DILocation(line: 715, column: 24, scope: !739)
!739 = distinct !DILexicalBlock(scope: !733, file: !3, line: 714, column: 25)
!740 = !DILocation(line: 715, column: 29, scope: !739)
!741 = !DILocation(line: 715, column: 27, scope: !739)
!742 = !DILocation(line: 715, column: 7, scope: !739)
!743 = !DILocation(line: 714, column: 21, scope: !733)
!744 = distinct !{!744, !737, !745, !231, !232}
!745 = !DILocation(line: 716, column: 5, scope: !734)
!746 = !DILocation(line: 717, column: 5, scope: !735)
!747 = !DILocation(line: 713, column: 19, scope: !728)
!748 = distinct !{!748, !731, !749, !231, !232}
!749 = !DILocation(line: 718, column: 3, scope: !729)
!750 = !DILocation(line: 719, column: 1, scope: !720)
!751 = !DISubprogram(name: "pthread_mutex_lock", scope: !600, file: !600, line: 738, type: !752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!752 = !DISubroutineType(types: !753)
!753 = !{!36, !615}
!754 = !DISubprogram(name: "pthread_create", scope: !600, file: !600, line: 198, type: !755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!755 = !DISubroutineType(types: !756)
!756 = !{!36, !757, !759, !101, !770}
!757 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !758)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !760)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !762)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !28, line: 62, baseType: !763)
!763 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !28, line: 56, size: 448, elements: !764)
!764 = !{!765, !769}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !763, file: !28, line: 58, baseType: !766, size: 448)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 448, elements: !767)
!767 = !{!768}
!768 = !DISubrange(count: 56)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !763, file: !28, line: 59, baseType: !5, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!771 = distinct !DISubprogram(name: "SlaveStart", scope: !3, file: !3, line: 357, type: !721, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !772)
!772 = !{!773}
!773 = !DILocalVariable(name: "MyNum", scope: !771, file: !3, line: 359, type: !5)
!774 = !DILocation(line: 361, column: 25, scope: !775)
!775 = distinct !DILexicalBlock(scope: !771, file: !3, line: 361, column: 3)
!776 = !DILocation(line: 361, column: 33, scope: !775)
!777 = !DILocation(line: 361, column: 4, scope: !775)
!778 = !DILocation(line: 362, column: 13, scope: !771)
!779 = !DILocation(line: 362, column: 21, scope: !771)
!780 = !DILocation(line: 0, scope: !771)
!781 = !DILocation(line: 363, column: 16, scope: !771)
!782 = !DILocation(line: 364, column: 35, scope: !783)
!783 = distinct !DILexicalBlock(scope: !771, file: !3, line: 364, column: 3)
!784 = !DILocation(line: 364, column: 4, scope: !783)
!785 = !DILocation(line: 369, column: 12, scope: !771)
!786 = !DILocation(line: 369, column: 15, scope: !771)
!787 = !DILocation(line: 369, column: 34, scope: !771)
!788 = !DILocation(line: 369, column: 3, scope: !771)
!789 = !DILocation(line: 370, column: 1, scope: !771)
!790 = !DISubprogram(name: "pthread_mutex_unlock", scope: !600, file: !600, line: 756, type: !752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!791 = !DISubprogram(name: "pthread_join", scope: !600, file: !600, line: 215, type: !792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!792 = !DISubroutineType(types: !793)
!793 = !{!36, !127, !794}
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!795 = distinct !DISubprogram(name: "CheckResult", scope: !3, file: !3, line: 722, type: !796, scopeLine: 723, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !798)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !5, !7, !7}
!798 = !{!799, !800, !801, !802, !803, !804, !805, !806, !807}
!799 = !DILocalVariable(name: "n", arg: 1, scope: !795, file: !3, line: 722, type: !5)
!800 = !DILocalVariable(name: "a", arg: 2, scope: !795, file: !3, line: 722, type: !7)
!801 = !DILocalVariable(name: "rhs", arg: 3, scope: !795, file: !3, line: 722, type: !7)
!802 = !DILocalVariable(name: "i", scope: !795, file: !3, line: 724, type: !5)
!803 = !DILocalVariable(name: "j", scope: !795, file: !3, line: 724, type: !5)
!804 = !DILocalVariable(name: "bogus", scope: !795, file: !3, line: 724, type: !5)
!805 = !DILocalVariable(name: "y", scope: !795, file: !3, line: 725, type: !7)
!806 = !DILocalVariable(name: "diff", scope: !795, file: !3, line: 725, type: !6)
!807 = !DILocalVariable(name: "max_diff", scope: !795, file: !3, line: 725, type: !6)
!808 = !DILocation(line: 0, scope: !795)
!809 = !DILocation(line: 727, column: 26, scope: !795)
!810 = !DILocation(line: 727, column: 18, scope: !795)
!811 = !DILocation(line: 728, column: 9, scope: !812)
!812 = distinct !DILexicalBlock(scope: !795, file: !3, line: 728, column: 7)
!813 = !DILocation(line: 728, column: 7, scope: !795)
!814 = !DILocation(line: 732, column: 14, scope: !815)
!815 = distinct !DILexicalBlock(scope: !816, file: !3, line: 732, column: 3)
!816 = distinct !DILexicalBlock(scope: !795, file: !3, line: 732, column: 3)
!817 = !DILocation(line: 732, column: 3, scope: !816)
!818 = !DILocation(line: 729, column: 5, scope: !819)
!819 = distinct !DILexicalBlock(scope: !812, file: !3, line: 728, column: 18)
!820 = !DILocation(line: 730, column: 5, scope: !819)
!821 = !DILocation(line: 733, column: 10, scope: !822)
!822 = distinct !DILexicalBlock(scope: !815, file: !3, line: 732, column: 23)
!823 = !DILocation(line: 735, column: 3, scope: !824)
!824 = distinct !DILexicalBlock(scope: !795, file: !3, line: 735, column: 3)
!825 = !DILocation(line: 735, column: 14, scope: !826)
!826 = distinct !DILexicalBlock(scope: !824, file: !3, line: 735, column: 3)
!827 = distinct !{!827, !823, !828, !231, !232}
!828 = !DILocation(line: 740, column: 3, scope: !824)
!829 = !DILocation(line: 742, column: 3, scope: !830)
!830 = distinct !DILexicalBlock(scope: !795, file: !3, line: 742, column: 3)
!831 = !DILocation(line: 736, column: 12, scope: !832)
!832 = distinct !DILexicalBlock(scope: !826, file: !3, line: 735, column: 23)
!833 = !DILocation(line: 736, column: 22, scope: !832)
!834 = !DILocation(line: 736, column: 20, scope: !832)
!835 = !DILocation(line: 736, column: 17, scope: !832)
!836 = !DILocation(line: 736, column: 16, scope: !832)
!837 = !DILocation(line: 736, column: 10, scope: !832)
!838 = !DILocation(line: 737, column: 13, scope: !839)
!839 = distinct !DILexicalBlock(scope: !832, file: !3, line: 737, column: 5)
!840 = !DILocation(line: 737, column: 18, scope: !841)
!841 = distinct !DILexicalBlock(scope: !839, file: !3, line: 737, column: 5)
!842 = !DILocation(line: 737, column: 5, scope: !839)
!843 = !DILocation(line: 738, column: 18, scope: !844)
!844 = distinct !DILexicalBlock(scope: !841, file: !3, line: 737, column: 27)
!845 = !DILocation(line: 738, column: 15, scope: !844)
!846 = !DILocation(line: 738, column: 7, scope: !844)
!847 = !DILocation(line: 738, column: 12, scope: !844)
!848 = !DILocation(line: 737, column: 23, scope: !841)
!849 = distinct !{!849, !842, !850, !231, !232}
!850 = !DILocation(line: 739, column: 5, scope: !839)
!851 = !DILocation(line: 738, column: 24, scope: !844)
!852 = distinct !{!852, !829, !853, !231, !232}
!853 = !DILocation(line: 746, column: 3, scope: !830)
!854 = !DILocation(line: 0, scope: !830)
!855 = !DILocation(line: 743, column: 16, scope: !856)
!856 = distinct !DILexicalBlock(scope: !857, file: !3, line: 743, column: 5)
!857 = distinct !DILexicalBlock(scope: !858, file: !3, line: 743, column: 5)
!858 = distinct !DILexicalBlock(scope: !859, file: !3, line: 742, column: 26)
!859 = distinct !DILexicalBlock(scope: !830, file: !3, line: 742, column: 3)
!860 = !DILocation(line: 743, column: 5, scope: !857)
!861 = !DILocation(line: 749, column: 3, scope: !862)
!862 = distinct !DILexicalBlock(scope: !795, file: !3, line: 749, column: 3)
!863 = !DILocation(line: 744, column: 18, scope: !864)
!864 = distinct !DILexicalBlock(scope: !856, file: !3, line: 743, column: 25)
!865 = !DILocation(line: 744, column: 15, scope: !864)
!866 = !DILocation(line: 744, column: 24, scope: !864)
!867 = !DILocation(line: 744, column: 7, scope: !864)
!868 = !DILocation(line: 744, column: 12, scope: !864)
!869 = !DILocation(line: 743, column: 21, scope: !856)
!870 = distinct !{!870, !860, !871, !231, !232}
!871 = !DILocation(line: 745, column: 5, scope: !857)
!872 = !DILocation(line: 750, column: 12, scope: !873)
!873 = distinct !DILexicalBlock(scope: !874, file: !3, line: 749, column: 23)
!874 = distinct !DILexicalBlock(scope: !862, file: !3, line: 749, column: 3)
!875 = !DILocation(line: 750, column: 17, scope: !873)
!876 = !DILocation(line: 751, column: 9, scope: !877)
!877 = distinct !DILexicalBlock(scope: !873, file: !3, line: 751, column: 9)
!878 = !DILocation(line: 751, column: 20, scope: !877)
!879 = !DILocation(line: 751, column: 9, scope: !873)
!880 = !DILocation(line: 754, column: 5, scope: !881)
!881 = distinct !DILexicalBlock(scope: !877, file: !3, line: 751, column: 31)
!882 = !DILocation(line: 749, column: 19, scope: !874)
!883 = !DILocation(line: 749, column: 14, scope: !874)
!884 = distinct !{!884, !861, !885, !231, !232}
!885 = !DILocation(line: 755, column: 3, scope: !862)
!886 = !DILocation(line: 756, column: 7, scope: !887)
!887 = distinct !DILexicalBlock(scope: !795, file: !3, line: 756, column: 7)
!888 = !DILocation(line: 756, column: 7, scope: !795)
!889 = !DILocation(line: 757, column: 5, scope: !890)
!890 = distinct !DILexicalBlock(scope: !887, file: !3, line: 756, column: 14)
!891 = !DILocation(line: 758, column: 3, scope: !890)
!892 = !DILocation(line: 759, column: 5, scope: !893)
!893 = distinct !DILexicalBlock(scope: !887, file: !3, line: 758, column: 10)
!894 = !DILocation(line: 761, column: 3, scope: !795)
!895 = !DILocation(line: 762, column: 1, scope: !795)
!896 = distinct !DISubprogram(name: "OneSolve", scope: !3, file: !3, line: 373, type: !897, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !899)
!897 = !DISubroutineType(types: !898)
!898 = !{null, !5, !5, !5, !5}
!899 = !{!900, !901, !902, !903, !904, !905, !906, !907}
!900 = !DILocalVariable(name: "n", arg: 1, scope: !896, file: !3, line: 373, type: !5)
!901 = !DILocalVariable(name: "block_size", arg: 2, scope: !896, file: !3, line: 373, type: !5)
!902 = !DILocalVariable(name: "MyNum", arg: 3, scope: !896, file: !3, line: 373, type: !5)
!903 = !DILocalVariable(name: "dostats", arg: 4, scope: !896, file: !3, line: 373, type: !5)
!904 = !DILocalVariable(name: "myrs", scope: !896, file: !3, line: 375, type: !18)
!905 = !DILocalVariable(name: "myrf", scope: !896, file: !3, line: 375, type: !18)
!906 = !DILocalVariable(name: "mydone", scope: !896, file: !3, line: 375, type: !18)
!907 = !DILocalVariable(name: "lc", scope: !896, file: !3, line: 376, type: !104)
!908 = !DILocation(line: 0, scope: !896)
!909 = !DILocation(line: 378, column: 31, scope: !896)
!910 = !DILocation(line: 379, column: 10, scope: !911)
!911 = distinct !DILexicalBlock(scope: !896, file: !3, line: 379, column: 7)
!912 = !DILocation(line: 379, column: 7, scope: !896)
!913 = !DILocation(line: 380, column: 13, scope: !914)
!914 = distinct !DILexicalBlock(scope: !911, file: !3, line: 379, column: 19)
!915 = !DILocation(line: 380, column: 5, scope: !914)
!916 = !DILocation(line: 381, column: 5, scope: !914)
!917 = !DILocation(line: 384, column: 7, scope: !896)
!918 = !DILocation(line: 385, column: 7, scope: !896)
!919 = !DILocation(line: 386, column: 7, scope: !896)
!920 = !DILocation(line: 390, column: 23, scope: !921)
!921 = distinct !DILexicalBlock(scope: !896, file: !3, line: 389, column: 3)
!922 = !DILocation(line: 390, column: 31, scope: !921)
!923 = !DILocation(line: 390, column: 1, scope: !921)
!924 = !DILocation(line: 391, column: 2, scope: !921)
!925 = !DILocation(line: 391, column: 17, scope: !921)
!926 = !DILocation(line: 391, column: 27, scope: !921)
!927 = !DILocation(line: 392, column: 5, scope: !928)
!928 = distinct !DILexicalBlock(scope: !921, file: !3, line: 392, column: 5)
!929 = !DILocation(line: 392, column: 36, scope: !928)
!930 = !DILocation(line: 392, column: 32, scope: !928)
!931 = !DILocation(line: 392, column: 5, scope: !921)
!932 = !DILocation(line: 393, column: 29, scope: !933)
!933 = distinct !DILexicalBlock(scope: !928, file: !3, line: 392, column: 40)
!934 = !DILocation(line: 394, column: 43, scope: !933)
!935 = !DILocation(line: 394, column: 2, scope: !933)
!936 = !DILocation(line: 395, column: 1, scope: !933)
!937 = !DILocation(line: 392, column: 14, scope: !928)
!938 = !DILocation(line: 396, column: 38, scope: !939)
!939 = distinct !DILexicalBlock(scope: !928, file: !3, line: 395, column: 8)
!940 = !DILocation(line: 396, column: 2, scope: !939)
!941 = !DILocation(line: 398, column: 25, scope: !921)
!942 = !DILocation(line: 398, column: 33, scope: !921)
!943 = !DILocation(line: 398, column: 1, scope: !921)
!944 = !DILocation(line: 402, column: 3, scope: !896)
!945 = !DILocation(line: 405, column: 23, scope: !946)
!946 = distinct !DILexicalBlock(scope: !896, file: !3, line: 404, column: 3)
!947 = !DILocation(line: 405, column: 31, scope: !946)
!948 = !DILocation(line: 405, column: 1, scope: !946)
!949 = !DILocation(line: 406, column: 2, scope: !946)
!950 = !DILocation(line: 406, column: 17, scope: !946)
!951 = !DILocation(line: 406, column: 27, scope: !946)
!952 = !DILocation(line: 407, column: 5, scope: !953)
!953 = distinct !DILexicalBlock(scope: !946, file: !3, line: 407, column: 5)
!954 = !DILocation(line: 407, column: 36, scope: !953)
!955 = !DILocation(line: 407, column: 32, scope: !953)
!956 = !DILocation(line: 407, column: 5, scope: !946)
!957 = !DILocation(line: 408, column: 29, scope: !958)
!958 = distinct !DILexicalBlock(scope: !953, file: !3, line: 407, column: 40)
!959 = !DILocation(line: 409, column: 43, scope: !958)
!960 = !DILocation(line: 409, column: 2, scope: !958)
!961 = !DILocation(line: 410, column: 1, scope: !958)
!962 = !DILocation(line: 407, column: 14, scope: !953)
!963 = !DILocation(line: 411, column: 38, scope: !964)
!964 = distinct !DILexicalBlock(scope: !953, file: !3, line: 410, column: 8)
!965 = !DILocation(line: 411, column: 2, scope: !964)
!966 = !DILocation(line: 413, column: 25, scope: !946)
!967 = !DILocation(line: 413, column: 33, scope: !946)
!968 = !DILocation(line: 413, column: 1, scope: !946)
!969 = !DILocation(line: 419, column: 14, scope: !970)
!970 = distinct !DILexicalBlock(scope: !896, file: !3, line: 419, column: 7)
!971 = !DILocation(line: 419, column: 20, scope: !970)
!972 = !DILocation(line: 423, column: 3, scope: !896)
!973 = !DILocation(line: 420, column: 28, scope: !974)
!974 = distinct !DILexicalBlock(scope: !975, file: !3, line: 420, column: 5)
!975 = distinct !DILexicalBlock(scope: !970, file: !3, line: 419, column: 34)
!976 = !DILocation(line: 426, column: 30, scope: !977)
!977 = distinct !DILexicalBlock(scope: !978, file: !3, line: 426, column: 5)
!978 = distinct !DILexicalBlock(scope: !979, file: !3, line: 425, column: 34)
!979 = distinct !DILexicalBlock(scope: !896, file: !3, line: 425, column: 7)
!980 = !DILocation(line: 427, column: 3, scope: !978)
!981 = !DILocation(line: 430, column: 23, scope: !982)
!982 = distinct !DILexicalBlock(scope: !896, file: !3, line: 429, column: 3)
!983 = !DILocation(line: 430, column: 31, scope: !982)
!984 = !DILocation(line: 430, column: 1, scope: !982)
!985 = !DILocation(line: 431, column: 2, scope: !982)
!986 = !DILocation(line: 431, column: 17, scope: !982)
!987 = !DILocation(line: 431, column: 27, scope: !982)
!988 = !DILocation(line: 432, column: 5, scope: !989)
!989 = distinct !DILexicalBlock(scope: !982, file: !3, line: 432, column: 5)
!990 = !DILocation(line: 432, column: 36, scope: !989)
!991 = !DILocation(line: 432, column: 32, scope: !989)
!992 = !DILocation(line: 432, column: 5, scope: !982)
!993 = !DILocation(line: 433, column: 29, scope: !994)
!994 = distinct !DILexicalBlock(scope: !989, file: !3, line: 432, column: 40)
!995 = !DILocation(line: 434, column: 43, scope: !994)
!996 = !DILocation(line: 434, column: 2, scope: !994)
!997 = !DILocation(line: 435, column: 1, scope: !994)
!998 = !DILocation(line: 432, column: 14, scope: !989)
!999 = !DILocation(line: 436, column: 38, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !989, file: !3, line: 435, column: 8)
!1001 = !DILocation(line: 436, column: 2, scope: !1000)
!1002 = !DILocation(line: 438, column: 25, scope: !982)
!1003 = !DILocation(line: 438, column: 33, scope: !982)
!1004 = !DILocation(line: 438, column: 1, scope: !982)
!1005 = !DILocation(line: 441, column: 20, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !896, file: !3, line: 441, column: 7)
!1007 = !DILocation(line: 442, column: 28, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 442, column: 5)
!1009 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 441, column: 34)
!1010 = !DILocation(line: 443, column: 35, scope: !1009)
!1011 = !DILocation(line: 443, column: 5, scope: !1009)
!1012 = !DILocation(line: 443, column: 13, scope: !1009)
!1013 = !DILocation(line: 443, column: 29, scope: !1009)
!1014 = !DILocation(line: 444, column: 37, scope: !1009)
!1015 = !DILocation(line: 444, column: 5, scope: !1009)
!1016 = !DILocation(line: 444, column: 13, scope: !1009)
!1017 = !DILocation(line: 444, column: 31, scope: !1009)
!1018 = !DILocation(line: 445, column: 35, scope: !1009)
!1019 = !DILocation(line: 445, column: 5, scope: !1009)
!1020 = !DILocation(line: 445, column: 13, scope: !1009)
!1021 = !DILocation(line: 445, column: 29, scope: !1009)
!1022 = !DILocation(line: 446, column: 35, scope: !1009)
!1023 = !DILocation(line: 446, column: 5, scope: !1009)
!1024 = !DILocation(line: 446, column: 13, scope: !1009)
!1025 = !DILocation(line: 446, column: 29, scope: !1009)
!1026 = !DILocation(line: 447, column: 39, scope: !1009)
!1027 = !DILocation(line: 447, column: 33, scope: !1009)
!1028 = !DILocation(line: 447, column: 5, scope: !1009)
!1029 = !DILocation(line: 447, column: 13, scope: !1009)
!1030 = !DILocation(line: 447, column: 31, scope: !1009)
!1031 = !DILocation(line: 448, column: 3, scope: !1009)
!1032 = !DILocation(line: 449, column: 7, scope: !896)
!1033 = !DILocation(line: 450, column: 5, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 449, column: 19)
!1035 = distinct !DILexicalBlock(scope: !896, file: !3, line: 449, column: 7)
!1036 = !DILocation(line: 450, column: 13, scope: !1034)
!1037 = !DILocation(line: 450, column: 16, scope: !1034)
!1038 = !DILocation(line: 451, column: 13, scope: !1034)
!1039 = !DILocation(line: 451, column: 18, scope: !1034)
!1040 = !DILocation(line: 452, column: 13, scope: !1034)
!1041 = !DILocation(line: 452, column: 16, scope: !1034)
!1042 = !DILocation(line: 453, column: 3, scope: !1034)
!1043 = !DILocation(line: 454, column: 1, scope: !896)
!1044 = !DISubprogram(name: "pthread_cond_broadcast", scope: !600, file: !600, line: 978, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!36, !630}
!1047 = !DISubprogram(name: "pthread_cond_wait", scope: !600, file: !600, line: 986, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!36, !629, !1050}
!1050 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !615)
!1051 = distinct !DISubprogram(name: "TouchA", scope: !3, file: !3, line: 689, type: !1052, scopeLine: 690, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1054)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!6, !5, !5}
!1054 = !{!1055, !1056, !1057, !1058, !1059, !1060, !1061}
!1055 = !DILocalVariable(name: "bs", arg: 1, scope: !1051, file: !3, line: 689, type: !5)
!1056 = !DILocalVariable(name: "MyNum", arg: 2, scope: !1051, file: !3, line: 689, type: !5)
!1057 = !DILocalVariable(name: "i", scope: !1051, file: !3, line: 691, type: !5)
!1058 = !DILocalVariable(name: "j", scope: !1051, file: !3, line: 691, type: !5)
!1059 = !DILocalVariable(name: "I", scope: !1051, file: !3, line: 691, type: !5)
!1060 = !DILocalVariable(name: "J", scope: !1051, file: !3, line: 691, type: !5)
!1061 = !DILocalVariable(name: "tot", scope: !1051, file: !3, line: 692, type: !6)
!1062 = !DILocation(line: 0, scope: !1051)
!1063 = !DILocation(line: 694, column: 17, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 694, column: 3)
!1065 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 694, column: 3)
!1066 = !DILocation(line: 694, column: 3, scope: !1065)
!1067 = !DILocation(line: 697, column: 33, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 697, column: 9)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 697, column: 9)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 696, column: 38)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 696, column: 11)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 695, column: 28)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 695, column: 5)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 695, column: 5)
!1075 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 694, column: 26)
!1076 = distinct !{!1076, !1066, !1077, !231, !232}
!1077 = !DILocation(line: 704, column: 3, scope: !1065)
!1078 = !DILocation(line: 696, column: 11, scope: !1071)
!1079 = !DILocation(line: 696, column: 28, scope: !1071)
!1080 = !DILocation(line: 696, column: 11, scope: !1072)
!1081 = !DILocation(line: 692, column: 10, scope: !1051)
!1082 = !DILocation(line: 695, column: 19, scope: !1073)
!1083 = !DILocation(line: 695, column: 5, scope: !1074)
!1084 = distinct !{!1084, !1083, !1085, !231, !232}
!1085 = !DILocation(line: 703, column: 5, scope: !1074)
!1086 = !DILocation(line: 698, column: 35, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 698, column: 11)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 698, column: 11)
!1089 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 697, column: 46)
!1090 = !DILocation(line: 699, column: 23, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 698, column: 48)
!1092 = !DILocation(line: 699, column: 20, scope: !1091)
!1093 = !DILocation(line: 699, column: 17, scope: !1091)
!1094 = !DILocation(line: 698, column: 44, scope: !1087)
!1095 = !DILocation(line: 698, column: 25, scope: !1087)
!1096 = distinct !{!1096, !1097, !1098, !231, !232}
!1097 = !DILocation(line: 698, column: 11, scope: !1088)
!1098 = !DILocation(line: 700, column: 11, scope: !1088)
!1099 = !DILocation(line: 697, column: 42, scope: !1068)
!1100 = !DILocation(line: 697, column: 23, scope: !1068)
!1101 = distinct !{!1101, !1102, !1103, !231, !232}
!1102 = !DILocation(line: 697, column: 9, scope: !1069)
!1103 = !DILocation(line: 701, column: 9, scope: !1069)
!1104 = !DILocation(line: 705, column: 3, scope: !1051)
!1105 = distinct !DISubprogram(name: "lu", scope: !3, file: !3, line: 543, type: !1106, scopeLine: 544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1108)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{null, !5, !5, !5, !104, !5}
!1108 = !{!1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133}
!1109 = !DILocalVariable(name: "n", arg: 1, scope: !1105, file: !3, line: 543, type: !5)
!1110 = !DILocalVariable(name: "bs", arg: 2, scope: !1105, file: !3, line: 543, type: !5)
!1111 = !DILocalVariable(name: "MyNum", arg: 3, scope: !1105, file: !3, line: 543, type: !5)
!1112 = !DILocalVariable(name: "lc", arg: 4, scope: !1105, file: !3, line: 543, type: !104)
!1113 = !DILocalVariable(name: "dostats", arg: 5, scope: !1105, file: !3, line: 543, type: !5)
!1114 = !DILocalVariable(name: "i", scope: !1105, file: !3, line: 545, type: !5)
!1115 = !DILocalVariable(name: "il", scope: !1105, file: !3, line: 545, type: !5)
!1116 = !DILocalVariable(name: "j", scope: !1105, file: !3, line: 545, type: !5)
!1117 = !DILocalVariable(name: "jl", scope: !1105, file: !3, line: 545, type: !5)
!1118 = !DILocalVariable(name: "k", scope: !1105, file: !3, line: 545, type: !5)
!1119 = !DILocalVariable(name: "kl", scope: !1105, file: !3, line: 545, type: !5)
!1120 = !DILocalVariable(name: "I", scope: !1105, file: !3, line: 545, type: !5)
!1121 = !DILocalVariable(name: "J", scope: !1105, file: !3, line: 545, type: !5)
!1122 = !DILocalVariable(name: "K", scope: !1105, file: !3, line: 545, type: !5)
!1123 = !DILocalVariable(name: "A", scope: !1105, file: !3, line: 546, type: !7)
!1124 = !DILocalVariable(name: "B", scope: !1105, file: !3, line: 546, type: !7)
!1125 = !DILocalVariable(name: "C", scope: !1105, file: !3, line: 546, type: !7)
!1126 = !DILocalVariable(name: "D", scope: !1105, file: !3, line: 546, type: !7)
!1127 = !DILocalVariable(name: "strI", scope: !1105, file: !3, line: 547, type: !5)
!1128 = !DILocalVariable(name: "t1", scope: !1105, file: !3, line: 548, type: !18)
!1129 = !DILocalVariable(name: "t2", scope: !1105, file: !3, line: 548, type: !18)
!1130 = !DILocalVariable(name: "t3", scope: !1105, file: !3, line: 548, type: !18)
!1131 = !DILocalVariable(name: "t4", scope: !1105, file: !3, line: 548, type: !18)
!1132 = !DILocalVariable(name: "t11", scope: !1105, file: !3, line: 548, type: !18)
!1133 = !DILocalVariable(name: "t22", scope: !1105, file: !3, line: 548, type: !18)
!1134 = !DILocation(line: 0, scope: !1105)
!1135 = !DILocation(line: 551, column: 19, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 551, column: 3)
!1137 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 551, column: 3)
!1138 = !DILocation(line: 551, column: 3, scope: !1137)
!1139 = !DILocation(line: 552, column: 11, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 551, column: 35)
!1141 = !DILocation(line: 553, column: 9, scope: !1140)
!1142 = !DILocation(line: 557, column: 22, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 557, column: 9)
!1144 = !DILocation(line: 558, column: 28, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 558, column: 7)
!1146 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 557, column: 36)
!1147 = !DILocation(line: 559, column: 5, scope: !1146)
!1148 = !DILocation(line: 562, column: 9, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 562, column: 9)
!1150 = !DILocation(line: 562, column: 26, scope: !1149)
!1151 = !DILocation(line: 562, column: 9, scope: !1140)
!1152 = !DILocation(line: 563, column: 13, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 562, column: 36)
!1154 = !DILocation(line: 563, column: 18, scope: !1153)
!1155 = !DILocation(line: 563, column: 16, scope: !1153)
!1156 = !DILocation(line: 564, column: 16, scope: !1153)
!1157 = !DILocation(line: 564, column: 7, scope: !1153)
!1158 = !DILocation(line: 565, column: 5, scope: !1153)
!1159 = !DILocation(line: 567, column: 22, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 567, column: 9)
!1161 = !DILocation(line: 568, column: 29, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 568, column: 7)
!1163 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 567, column: 36)
!1164 = !DILocation(line: 569, column: 5, scope: !1163)
!1165 = !DILocation(line: 572, column: 23, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 571, column: 5)
!1167 = !DILocation(line: 572, column: 31, scope: !1166)
!1168 = !DILocation(line: 572, column: 1, scope: !1166)
!1169 = !DILocation(line: 573, column: 2, scope: !1166)
!1170 = !DILocation(line: 573, column: 17, scope: !1166)
!1171 = !DILocation(line: 573, column: 27, scope: !1166)
!1172 = !DILocation(line: 574, column: 5, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 574, column: 5)
!1174 = !DILocation(line: 574, column: 36, scope: !1173)
!1175 = !DILocation(line: 574, column: 32, scope: !1173)
!1176 = !DILocation(line: 574, column: 5, scope: !1166)
!1177 = !DILocation(line: 575, column: 29, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 574, column: 40)
!1179 = !DILocation(line: 576, column: 43, scope: !1178)
!1180 = !DILocation(line: 576, column: 2, scope: !1178)
!1181 = !DILocation(line: 577, column: 1, scope: !1178)
!1182 = !DILocation(line: 574, column: 14, scope: !1173)
!1183 = !DILocation(line: 578, column: 38, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 577, column: 8)
!1185 = !DILocation(line: 578, column: 2, scope: !1184)
!1186 = !DILocation(line: 580, column: 25, scope: !1166)
!1187 = !DILocation(line: 580, column: 33, scope: !1166)
!1188 = !DILocation(line: 580, column: 1, scope: !1166)
!1189 = !DILocation(line: 583, column: 22, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 583, column: 9)
!1191 = !DILocation(line: 584, column: 28, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 584, column: 7)
!1193 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 583, column: 36)
!1194 = !DILocation(line: 585, column: 5, scope: !1193)
!1195 = !DILocation(line: 588, column: 11, scope: !1140)
!1196 = !DILocation(line: 588, column: 16, scope: !1140)
!1197 = !DILocation(line: 588, column: 14, scope: !1140)
!1198 = !DILocation(line: 589, column: 19, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 589, column: 5)
!1200 = !DILocation(line: 589, column: 24, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 589, column: 5)
!1202 = !DILocation(line: 589, column: 5, scope: !1199)
!1203 = !DILocation(line: 601, column: 5, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 601, column: 5)
!1205 = !DILocation(line: 590, column: 11, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 590, column: 11)
!1207 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 589, column: 40)
!1208 = !DILocation(line: 590, column: 38, scope: !1206)
!1209 = !DILocation(line: 0, scope: !1201)
!1210 = !DILocation(line: 590, column: 11, scope: !1207)
!1211 = !DILocation(line: 593, column: 13, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 590, column: 48)
!1213 = !DILocation(line: 596, column: 15, scope: !1212)
!1214 = !DILocation(line: 596, column: 18, scope: !1212)
!1215 = !DILocation(line: 597, column: 31, scope: !1212)
!1216 = !DILocation(line: 597, column: 9, scope: !1212)
!1217 = !DILocation(line: 598, column: 7, scope: !1212)
!1218 = !DILocation(line: 589, column: 36, scope: !1201)
!1219 = distinct !{!1219, !1202, !1220, !231, !232}
!1220 = !DILocation(line: 599, column: 5, scope: !1199)
!1221 = !DILocation(line: 602, column: 11, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 602, column: 11)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 601, column: 40)
!1224 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 601, column: 5)
!1225 = !DILocation(line: 602, column: 35, scope: !1222)
!1226 = !DILocation(line: 0, scope: !1224)
!1227 = !DILocation(line: 602, column: 11, scope: !1223)
!1228 = !DILocation(line: 605, column: 13, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 602, column: 45)
!1230 = !DILocation(line: 608, column: 15, scope: !1229)
!1231 = !DILocation(line: 608, column: 20, scope: !1229)
!1232 = !DILocation(line: 608, column: 18, scope: !1229)
!1233 = !DILocation(line: 609, column: 29, scope: !1229)
!1234 = !DILocation(line: 609, column: 9, scope: !1229)
!1235 = !DILocation(line: 610, column: 7, scope: !1229)
!1236 = !DILocation(line: 601, column: 36, scope: !1224)
!1237 = !DILocation(line: 601, column: 24, scope: !1224)
!1238 = distinct !{!1238, !1203, !1239, !231, !232}
!1239 = !DILocation(line: 611, column: 5, scope: !1204)
!1240 = !DILocation(line: 613, column: 22, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 613, column: 9)
!1242 = !DILocation(line: 614, column: 29, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 614, column: 7)
!1244 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 613, column: 36)
!1245 = !DILocation(line: 615, column: 5, scope: !1244)
!1246 = !DILocation(line: 618, column: 23, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 617, column: 5)
!1248 = !DILocation(line: 618, column: 31, scope: !1247)
!1249 = !DILocation(line: 618, column: 1, scope: !1247)
!1250 = !DILocation(line: 619, column: 2, scope: !1247)
!1251 = !DILocation(line: 619, column: 17, scope: !1247)
!1252 = !DILocation(line: 619, column: 27, scope: !1247)
!1253 = !DILocation(line: 620, column: 5, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 620, column: 5)
!1255 = !DILocation(line: 620, column: 36, scope: !1254)
!1256 = !DILocation(line: 620, column: 32, scope: !1254)
!1257 = !DILocation(line: 620, column: 5, scope: !1247)
!1258 = !DILocation(line: 621, column: 29, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 620, column: 40)
!1260 = !DILocation(line: 622, column: 43, scope: !1259)
!1261 = !DILocation(line: 622, column: 2, scope: !1259)
!1262 = !DILocation(line: 623, column: 1, scope: !1259)
!1263 = !DILocation(line: 620, column: 14, scope: !1254)
!1264 = !DILocation(line: 624, column: 38, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 623, column: 8)
!1266 = !DILocation(line: 624, column: 2, scope: !1265)
!1267 = !DILocation(line: 626, column: 25, scope: !1247)
!1268 = !DILocation(line: 626, column: 33, scope: !1247)
!1269 = !DILocation(line: 626, column: 1, scope: !1247)
!1270 = !DILocation(line: 629, column: 22, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 629, column: 9)
!1272 = !DILocation(line: 630, column: 28, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 630, column: 7)
!1274 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 629, column: 36)
!1275 = !DILocation(line: 631, column: 5, scope: !1274)
!1276 = !DILocation(line: 634, column: 5, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 634, column: 5)
!1278 = !DILocation(line: 635, column: 13, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 634, column: 40)
!1280 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 634, column: 5)
!1281 = !DILocation(line: 636, column: 11, scope: !1279)
!1282 = !DILocation(line: 639, column: 13, scope: !1279)
!1283 = !DILocation(line: 639, column: 16, scope: !1279)
!1284 = !DILocation(line: 640, column: 7, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 640, column: 7)
!1286 = !DILocation(line: 641, column: 16, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 640, column: 42)
!1288 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 640, column: 7)
!1289 = !DILocation(line: 645, column: 13, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 645, column: 13)
!1291 = !DILocation(line: 645, column: 30, scope: !1290)
!1292 = !DILocation(line: 645, column: 13, scope: !1287)
!1293 = !DILocation(line: 642, column: 13, scope: !1287)
!1294 = !DILocation(line: 647, column: 17, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 645, column: 40)
!1296 = !DILocation(line: 647, column: 22, scope: !1295)
!1297 = !DILocation(line: 647, column: 20, scope: !1295)
!1298 = !DILocation(line: 648, column: 20, scope: !1295)
!1299 = !DILocation(line: 648, column: 17, scope: !1295)
!1300 = !DILocation(line: 649, column: 33, scope: !1295)
!1301 = !DILocation(line: 649, column: 11, scope: !1295)
!1302 = !DILocation(line: 650, column: 9, scope: !1295)
!1303 = !DILocation(line: 640, column: 38, scope: !1288)
!1304 = !DILocation(line: 640, column: 26, scope: !1288)
!1305 = distinct !{!1305, !1284, !1306, !231, !232}
!1306 = !DILocation(line: 651, column: 7, scope: !1285)
!1307 = !DILocation(line: 634, column: 36, scope: !1280)
!1308 = !DILocation(line: 634, column: 24, scope: !1280)
!1309 = distinct !{!1309, !1276, !1310, !231, !232}
!1310 = !DILocation(line: 652, column: 5, scope: !1277)
!1311 = !DILocation(line: 653, column: 22, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 653, column: 9)
!1313 = !DILocation(line: 654, column: 28, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 654, column: 7)
!1315 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 653, column: 36)
!1316 = !DILocation(line: 655, column: 27, scope: !1315)
!1317 = !DILocation(line: 655, column: 23, scope: !1315)
!1318 = !DILocation(line: 655, column: 20, scope: !1315)
!1319 = !DILocation(line: 656, column: 29, scope: !1315)
!1320 = !DILocation(line: 656, column: 25, scope: !1315)
!1321 = !DILocation(line: 656, column: 22, scope: !1315)
!1322 = !DILocation(line: 657, column: 26, scope: !1315)
!1323 = !DILocation(line: 657, column: 23, scope: !1315)
!1324 = !DILocation(line: 657, column: 20, scope: !1315)
!1325 = !DILocation(line: 658, column: 26, scope: !1315)
!1326 = !DILocation(line: 658, column: 32, scope: !1315)
!1327 = !DILocation(line: 658, column: 23, scope: !1315)
!1328 = !DILocation(line: 658, column: 20, scope: !1315)
!1329 = !DILocation(line: 659, column: 5, scope: !1315)
!1330 = distinct !{!1330, !1138, !1331, !231, !232}
!1331 = !DILocation(line: 660, column: 3, scope: !1137)
!1332 = !DILocation(line: 661, column: 1, scope: !1105)
!1333 = distinct !DISubprogram(name: "lu0", scope: !3, file: !3, line: 457, type: !1334, scopeLine: 458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1336)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{null, !7, !5, !5}
!1336 = !{!1337, !1338, !1339, !1340, !1341, !1342, !1343}
!1337 = !DILocalVariable(name: "a", arg: 1, scope: !1333, file: !3, line: 457, type: !7)
!1338 = !DILocalVariable(name: "n", arg: 2, scope: !1333, file: !3, line: 457, type: !5)
!1339 = !DILocalVariable(name: "stride", arg: 3, scope: !1333, file: !3, line: 457, type: !5)
!1340 = !DILocalVariable(name: "j", scope: !1333, file: !3, line: 459, type: !5)
!1341 = !DILocalVariable(name: "k", scope: !1333, file: !3, line: 459, type: !5)
!1342 = !DILocalVariable(name: "length", scope: !1333, file: !3, line: 459, type: !5)
!1343 = !DILocalVariable(name: "alpha", scope: !1333, file: !3, line: 460, type: !6)
!1344 = !DILocation(line: 0, scope: !1333)
!1345 = !DILocation(line: 462, column: 14, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 462, column: 3)
!1347 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 462, column: 3)
!1348 = !DILocation(line: 462, column: 3, scope: !1347)
!1349 = distinct !{!1349, !1348, !1350, !231, !232}
!1350 = !DILocation(line: 470, column: 3, scope: !1347)
!1351 = !DILocation(line: 464, column: 13, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 464, column: 5)
!1353 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 462, column: 23)
!1354 = !DILocation(line: 464, column: 18, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 464, column: 5)
!1356 = !DILocation(line: 464, column: 5, scope: !1352)
!1357 = !DILocation(line: 465, column: 24, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 464, column: 27)
!1359 = !DILocation(line: 465, column: 12, scope: !1358)
!1360 = !DILocation(line: 465, column: 10, scope: !1358)
!1361 = !DILocation(line: 465, column: 7, scope: !1358)
!1362 = !DILocation(line: 465, column: 21, scope: !1358)
!1363 = !DILocation(line: 466, column: 15, scope: !1358)
!1364 = !DILocation(line: 468, column: 19, scope: !1358)
!1365 = !DILocation(line: 468, column: 14, scope: !1358)
!1366 = !DILocation(line: 468, column: 7, scope: !1358)
!1367 = !DILocation(line: 464, column: 23, scope: !1355)
!1368 = distinct !{!1368, !1356, !1369, !231, !232}
!1369 = !DILocation(line: 469, column: 5, scope: !1352)
!1370 = !DILocation(line: 471, column: 1, scope: !1333)
!1371 = distinct !DISubprogram(name: "daxpy", scope: !3, file: !3, line: 517, type: !1372, scopeLine: 518, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1374)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{null, !7, !7, !5, !6}
!1374 = !{!1375, !1376, !1377, !1378, !1379}
!1375 = !DILocalVariable(name: "a", arg: 1, scope: !1371, file: !3, line: 517, type: !7)
!1376 = !DILocalVariable(name: "b", arg: 2, scope: !1371, file: !3, line: 517, type: !7)
!1377 = !DILocalVariable(name: "n", arg: 3, scope: !1371, file: !3, line: 517, type: !5)
!1378 = !DILocalVariable(name: "alpha", arg: 4, scope: !1371, file: !3, line: 517, type: !6)
!1379 = !DILocalVariable(name: "i", scope: !1371, file: !3, line: 519, type: !5)
!1380 = !DILocation(line: 0, scope: !1371)
!1381 = !DILocation(line: 521, column: 14, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 521, column: 3)
!1383 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 521, column: 3)
!1384 = !DILocation(line: 521, column: 3, scope: !1383)
!1385 = !DILocation(line: 522, column: 19, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 521, column: 23)
!1387 = !DILocation(line: 522, column: 5, scope: !1386)
!1388 = !DILocation(line: 522, column: 10, scope: !1386)
!1389 = !DILocation(line: 521, column: 19, scope: !1382)
!1390 = distinct !{!1390, !1384, !1391, !231, !232}
!1391 = !DILocation(line: 523, column: 3, scope: !1383)
!1392 = !DILocation(line: 524, column: 1, scope: !1371)
!1393 = distinct !DISubprogram(name: "bdiv", scope: !3, file: !3, line: 474, type: !1394, scopeLine: 475, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1396)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{null, !7, !7, !5, !5, !5, !5}
!1396 = !{!1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405}
!1397 = !DILocalVariable(name: "a", arg: 1, scope: !1393, file: !3, line: 474, type: !7)
!1398 = !DILocalVariable(name: "diag", arg: 2, scope: !1393, file: !3, line: 474, type: !7)
!1399 = !DILocalVariable(name: "stride_a", arg: 3, scope: !1393, file: !3, line: 474, type: !5)
!1400 = !DILocalVariable(name: "stride_diag", arg: 4, scope: !1393, file: !3, line: 474, type: !5)
!1401 = !DILocalVariable(name: "dimi", arg: 5, scope: !1393, file: !3, line: 474, type: !5)
!1402 = !DILocalVariable(name: "dimk", arg: 6, scope: !1393, file: !3, line: 474, type: !5)
!1403 = !DILocalVariable(name: "j", scope: !1393, file: !3, line: 476, type: !5)
!1404 = !DILocalVariable(name: "k", scope: !1393, file: !3, line: 476, type: !5)
!1405 = !DILocalVariable(name: "alpha", scope: !1393, file: !3, line: 477, type: !6)
!1406 = !DILocation(line: 0, scope: !1393)
!1407 = !DILocation(line: 479, column: 14, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 479, column: 3)
!1409 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 479, column: 3)
!1410 = !DILocation(line: 479, column: 3, scope: !1409)
!1411 = distinct !{!1411, !1410, !1412, !231, !232}
!1412 = !DILocation(line: 484, column: 3, scope: !1409)
!1413 = !DILocation(line: 480, column: 13, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 480, column: 5)
!1415 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 479, column: 26)
!1416 = !DILocation(line: 480, column: 18, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 480, column: 5)
!1418 = !DILocation(line: 480, column: 5, scope: !1414)
!1419 = !DILocation(line: 481, column: 24, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 480, column: 30)
!1421 = !DILocation(line: 481, column: 22, scope: !1420)
!1422 = !DILocation(line: 481, column: 16, scope: !1420)
!1423 = !DILocation(line: 481, column: 15, scope: !1420)
!1424 = !DILocation(line: 482, column: 17, scope: !1420)
!1425 = !DILocation(line: 482, column: 14, scope: !1420)
!1426 = !DILocation(line: 482, column: 7, scope: !1420)
!1427 = !DILocation(line: 480, column: 26, scope: !1417)
!1428 = distinct !{!1428, !1418, !1429, !231, !232}
!1429 = !DILocation(line: 483, column: 5, scope: !1414)
!1430 = !DILocation(line: 485, column: 1, scope: !1393)
!1431 = distinct !DISubprogram(name: "bmodd", scope: !3, file: !3, line: 488, type: !1394, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1432)
!1432 = !{!1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442}
!1433 = !DILocalVariable(name: "a", arg: 1, scope: !1431, file: !3, line: 488, type: !7)
!1434 = !DILocalVariable(name: "c", arg: 2, scope: !1431, file: !3, line: 488, type: !7)
!1435 = !DILocalVariable(name: "dimi", arg: 3, scope: !1431, file: !3, line: 488, type: !5)
!1436 = !DILocalVariable(name: "dimj", arg: 4, scope: !1431, file: !3, line: 488, type: !5)
!1437 = !DILocalVariable(name: "stride_a", arg: 5, scope: !1431, file: !3, line: 488, type: !5)
!1438 = !DILocalVariable(name: "stride_c", arg: 6, scope: !1431, file: !3, line: 488, type: !5)
!1439 = !DILocalVariable(name: "j", scope: !1431, file: !3, line: 490, type: !5)
!1440 = !DILocalVariable(name: "k", scope: !1431, file: !3, line: 490, type: !5)
!1441 = !DILocalVariable(name: "length", scope: !1431, file: !3, line: 490, type: !5)
!1442 = !DILocalVariable(name: "alpha", scope: !1431, file: !3, line: 491, type: !6)
!1443 = !DILocation(line: 0, scope: !1431)
!1444 = !DILocation(line: 493, column: 14, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 493, column: 3)
!1446 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 493, column: 3)
!1447 = !DILocation(line: 493, column: 3, scope: !1446)
!1448 = !DILocation(line: 494, column: 5, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 494, column: 5)
!1450 = !DILocation(line: 495, column: 26, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 494, column: 28)
!1452 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 494, column: 5)
!1453 = !DILocation(line: 495, column: 12, scope: !1451)
!1454 = !DILocation(line: 495, column: 10, scope: !1451)
!1455 = !DILocation(line: 495, column: 7, scope: !1451)
!1456 = !DILocation(line: 495, column: 23, scope: !1451)
!1457 = !DILocation(line: 496, column: 15, scope: !1451)
!1458 = !DILocation(line: 498, column: 19, scope: !1451)
!1459 = !DILocation(line: 498, column: 14, scope: !1451)
!1460 = !DILocation(line: 498, column: 7, scope: !1451)
!1461 = !DILocation(line: 494, column: 24, scope: !1452)
!1462 = !DILocation(line: 494, column: 16, scope: !1452)
!1463 = distinct !{!1463, !1448, !1464, !231, !232}
!1464 = !DILocation(line: 499, column: 5, scope: !1449)
!1465 = distinct !{!1465, !1447, !1466, !231, !232}
!1466 = !DILocation(line: 499, column: 5, scope: !1446)
!1467 = !DILocation(line: 500, column: 1, scope: !1431)
!1468 = distinct !DISubprogram(name: "bmod", scope: !3, file: !3, line: 503, type: !1469, scopeLine: 504, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1471)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{null, !7, !7, !7, !5, !5, !5, !5}
!1471 = !{!1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481}
!1472 = !DILocalVariable(name: "a", arg: 1, scope: !1468, file: !3, line: 503, type: !7)
!1473 = !DILocalVariable(name: "b", arg: 2, scope: !1468, file: !3, line: 503, type: !7)
!1474 = !DILocalVariable(name: "c", arg: 3, scope: !1468, file: !3, line: 503, type: !7)
!1475 = !DILocalVariable(name: "dimi", arg: 4, scope: !1468, file: !3, line: 503, type: !5)
!1476 = !DILocalVariable(name: "dimj", arg: 5, scope: !1468, file: !3, line: 503, type: !5)
!1477 = !DILocalVariable(name: "dimk", arg: 6, scope: !1468, file: !3, line: 503, type: !5)
!1478 = !DILocalVariable(name: "stride", arg: 7, scope: !1468, file: !3, line: 503, type: !5)
!1479 = !DILocalVariable(name: "j", scope: !1468, file: !3, line: 505, type: !5)
!1480 = !DILocalVariable(name: "k", scope: !1468, file: !3, line: 505, type: !5)
!1481 = !DILocalVariable(name: "alpha", scope: !1468, file: !3, line: 506, type: !6)
!1482 = !DILocation(line: 0, scope: !1468)
!1483 = !DILocation(line: 508, column: 14, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 508, column: 3)
!1485 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 508, column: 3)
!1486 = !DILocation(line: 508, column: 3, scope: !1485)
!1487 = !DILocation(line: 509, column: 5, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 509, column: 5)
!1489 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 508, column: 26)
!1490 = !DILocation(line: 510, column: 21, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 509, column: 28)
!1492 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 509, column: 5)
!1493 = !DILocation(line: 510, column: 19, scope: !1491)
!1494 = !DILocation(line: 510, column: 16, scope: !1491)
!1495 = !DILocation(line: 510, column: 15, scope: !1491)
!1496 = !DILocation(line: 511, column: 14, scope: !1491)
!1497 = !DILocation(line: 511, column: 7, scope: !1491)
!1498 = !DILocation(line: 509, column: 24, scope: !1492)
!1499 = !DILocation(line: 509, column: 16, scope: !1492)
!1500 = distinct !{!1500, !1487, !1501, !231, !232}
!1501 = !DILocation(line: 512, column: 5, scope: !1488)
!1502 = !DILocation(line: 508, column: 22, scope: !1484)
!1503 = distinct !{!1503, !1486, !1504, !231, !232}
!1504 = !DILocation(line: 513, column: 3, scope: !1485)
!1505 = !DILocation(line: 514, column: 1, scope: !1468)
!1506 = distinct !DISubprogram(name: "BlockOwner", scope: !3, file: !3, line: 527, type: !1507, scopeLine: 528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1509)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!5, !5, !5}
!1509 = !{!1510, !1511}
!1510 = !DILocalVariable(name: "I", arg: 1, scope: !1506, file: !3, line: 527, type: !5)
!1511 = !DILocalVariable(name: "J", arg: 2, scope: !1506, file: !3, line: 527, type: !5)
!1512 = !DILocation(line: 0, scope: !1506)
!1513 = !DILocation(line: 530, column: 16, scope: !1506)
!1514 = !DILocation(line: 530, column: 15, scope: !1506)
!1515 = !DILocation(line: 530, column: 12, scope: !1506)
!1516 = !DILocation(line: 530, column: 27, scope: !1506)
!1517 = !DILocation(line: 530, column: 25, scope: !1506)
!1518 = !DILocation(line: 530, column: 2, scope: !1506)
!1519 = distinct !DISubprogram(name: "BlockOwnerColumn", scope: !3, file: !3, line: 533, type: !1507, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1520)
!1520 = !{!1521, !1522}
!1521 = !DILocalVariable(name: "I", arg: 1, scope: !1519, file: !3, line: 533, type: !5)
!1522 = !DILocalVariable(name: "J", arg: 2, scope: !1519, file: !3, line: 533, type: !5)
!1523 = !DILocation(line: 0, scope: !1519)
!1524 = !DILocation(line: 535, column: 13, scope: !1519)
!1525 = !DILocation(line: 535, column: 11, scope: !1519)
!1526 = !DILocation(line: 535, column: 2, scope: !1519)
!1527 = distinct !DISubprogram(name: "BlockOwnerRow", scope: !3, file: !3, line: 538, type: !1507, scopeLine: 539, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1528)
!1528 = !{!1529, !1530}
!1529 = !DILocalVariable(name: "I", arg: 1, scope: !1527, file: !3, line: 538, type: !5)
!1530 = !DILocalVariable(name: "J", arg: 2, scope: !1527, file: !3, line: 538, type: !5)
!1531 = !DILocation(line: 0, scope: !1527)
!1532 = !DILocation(line: 540, column: 15, scope: !1527)
!1533 = !DILocation(line: 540, column: 13, scope: !1527)
!1534 = !DILocation(line: 540, column: 23, scope: !1527)
!1535 = !DILocation(line: 540, column: 18, scope: !1527)
!1536 = !DILocation(line: 540, column: 29, scope: !1527)
!1537 = !DILocation(line: 540, column: 2, scope: !1527)
!1538 = !DISubprogram(name: "srand48", scope: !596, file: !596, line: 481, type: !1539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{null, !5}
!1541 = !DISubprogram(name: "lrand48", scope: !596, file: !596, line: 471, type: !1542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!5}
