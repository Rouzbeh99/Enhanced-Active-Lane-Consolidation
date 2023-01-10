; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/spec_mem_io/spec_mem_io.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/spec_mem_io/spec_mem_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spec_fd_t = type { i64, i64, i64, i32, ptr }
%struct.sha512_state = type { i64, [8 x i64], i32, [128 x i8] }

@dbglvl = dso_local local_unnamed_addr global i32 3, align 4, !dbg !0
@.str = private unnamed_addr constant [52 x i8] c"spec_mem_init(fds=0x%p, fd_limit=%u, touch_all=%d)\0A\00", align 1
@spec_fd = dso_local local_unnamed_addr global ptr null, align 8, !dbg !29
@stdout = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"spec_mem_init: Overflow in requested size (%ld) for fd %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"spec_mem_init: Error mallocing %ld bytes for fd %d@%p!\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c" fd[%d] limit is %ld bytes (%ld bytes allocated)\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"spec_mem_sum: Only SHA-512 is available\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"spec_mem_load: couldn't allocate %d chars for SHA-%d sum\0A\00", align 1
@.str.6 = private unnamed_addr constant [77 x i8] c"spec_mem_load: in-mem fd tmpfd %d@%p is out of range: < 0 || >= fd_limit %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [75 x i8] c"spec_mem_load: in-mem fd num %d@%p is out of range: < 0 || >= fd_limit %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Can't open file %s: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"spec_mem_load\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Error reading from %s: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"Compressed size: %ld; Uncompressed size: %ld\0A\00", align 1
@.str.12 = private unnamed_addr constant [67 x i8] c"Computed SHA-%d sum for decompressed input did not match expected\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"  Generated: \00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"\0A   Expected: \00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"SHA-%d of decompressed data compared successfully!\0A\00", align 1
@.str.17 = private unnamed_addr constant [63 x i8] c"Decompressed data too large; truncating to requested size %ld\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Duplicating %ld bytes\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"SHA-%d of input file: \00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"spec_mem_read: %d@%p, %p, %ld = \00", align 1
@.str.21 = private unnamed_addr constant [61 x i8] c"spec_mem_read: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"spec_mem_read(%p, %u, %d, %p, %ld) => EBADF\0A\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"pos (%ld) => len (%ld); returning EOF (0)\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"spec_mem_read: new pos for fd %d@%p is %ld\0A\00", align 1
@.str.26 = private unnamed_addr constant [47 x i8] c"spec_mem_fread(%p, %u, %p, (%ld x %d) fd %d) =\00", align 1
@.str.27 = private unnamed_addr constant [62 x i8] c"spec_mem_fread: fd=%d@%p out of range: < 0 || > fd_limit %d!\0A\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"spec_mem_fread: fd=%d@%p is not open\0A\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"spec_mem_fread: new pos for fd %d@%p is %ld\0A\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"spec_mem_getc(%p, %u, %d) = \00", align 1
@.str.33 = private unnamed_addr constant [61 x i8] c"spec_mem_getc: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"spec_mem_getc: fd=%d@%p is not open\0A\00", align 1
@.str.35 = private unnamed_addr constant [44 x i8] c"spec_mem_getc: new pos for fd %d@%p is %ld\0A\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"spec_mem_ungetc(%p, %u, 0x%02x, %d) = \00", align 1
@.str.37 = private unnamed_addr constant [63 x i8] c"spec_mem_ungetc: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"spec_mem_ungetc: fd=%d@%p is not open\0A\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"spec_mem_ungetc: pos %ld <= 0\0A\00", align 1
@.str.40 = private unnamed_addr constant [76 x i8] c"spec_mem_ungetc: can't unget something that wasn't what was in the buffer!\0A\00", align 1
@.str.41 = private unnamed_addr constant [46 x i8] c"spec_mem_ungetc: new pos for fd %d@%p is %ld\0A\00", align 1
@.str.42 = private unnamed_addr constant [62 x i8] c"spec_mem_lseek: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1
@.str.43 = private unnamed_addr constant [46 x i8] c"spec_mem_lseek(%p, %u, %d, %ld, %d) => EBADF\0A\00", align 1
@.str.44 = private unnamed_addr constant [82 x i8] c"spec_mem_lseek(%p, %u, fd=%d, offset=%ld, whence=0x%x): cur pos (%ld) => new pos \00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"(%ld) (WHENCE WAS BAD): EINVAL\0A\00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"(%ld) (NEW POS (%ld) WAS < 0): EINVAL\0A\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"(%ld)\0A\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"spec_rewind(%p, %u, %d) called\0A\00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"spec_mem_reset(%p, %u, %d) called\0A\00", align 1
@.str.50 = private unnamed_addr constant [45 x i8] c"spec_mem_reset: new pos for fd %d@%p is %ld\0A\00", align 1
@.str.51 = private unnamed_addr constant [45 x i8] c"spec_get_length(%p, %u, %d): file not open!\0A\00", align 1
@.str.52 = private unnamed_addr constant [40 x i8] c"spec_mem_get_length(%p, %u, %d) => %ld\0A\00", align 1
@.str.53 = private unnamed_addr constant [41 x i8] c"spec_mem_fopen(%p, %u, '%s', '%s') = %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [42 x i8] c"spec_mem_open(%p, %u, '%s', 0x%02x) = %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [66 x i8] c"spec_mem_write(fds=0x%p, fd_limit=%u, fd=%d, buf=0x%p, size=%ld)\0A\00", align 1
@.str.56 = private unnamed_addr constant [62 x i8] c"spec_mem_write: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1
@.str.57 = private unnamed_addr constant [46 x i8] c"spec_mem_write(%p, %u, %d, %p, %ld) => EBADF\0A\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"spec_mem_write\00", align 1
@.str.59 = private unnamed_addr constant [58 x i8] c"  spec_mem_write returns %ld (len=%ld pos=%ld limit=%ld)\0A\00", align 1
@.str.60 = private unnamed_addr constant [75 x i8] c"spec_mem_fwrite(fds=0x%p, fd_limit=%u, buf=0x%p, size=%ld, num=%d, fd=%d)\0A\00", align 1
@.str.61 = private unnamed_addr constant [63 x i8] c"spec_mem_fwrite: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1
@.str.62 = private unnamed_addr constant [39 x i8] c"spec_mem_fwrite: fd=%d@%p is not open\0A\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"spec_mem_fwrite\00", align 1
@.str.64 = private unnamed_addr constant [58 x i8] c"  spec_mem_fwrite returns %d (len=%ld pos=%ld limit=%ld)\0A\00", align 1
@.str.65 = private unnamed_addr constant [52 x i8] c"spec_putc(fds=0x%p, fd_limit=%u, ch=0x%x, fd=%d) = \00", align 1
@.str.66 = private unnamed_addr constant [61 x i8] c"spec_mem_putc: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1
@.str.67 = private unnamed_addr constant [37 x i8] c"spec_mem_putc: fd=%d@%p is not open\0A\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@.str.69 = private unnamed_addr constant [44 x i8] c"spec_mem_putc: new pos for fd %d@%p is %ld\0A\00", align 1
@.str.70 = private unnamed_addr constant [57 x i8] c"spec_feof: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1
@.str.71 = private unnamed_addr constant [86 x i8] c"spec_mem_feof(fds=0x%p, fd_limit=%u, fd=%d) = %d (len = %ld; pos = %ld; limit = %ld)\0A\00", align 1
@.str.72 = private unnamed_addr constant [62 x i8] c"spec_mem_close: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1
@.str.73 = private unnamed_addr constant [37 x i8] c"spec_mem_close(%p, %u, %d) => EBADF\0A\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.75 = private unnamed_addr constant [53 x i8] c"sum_str_to_hex: couldn't allocate %d chars for hash\0A\00", align 1
@.str.76 = private unnamed_addr constant [62 x i8] c"Hash mismatch at %d: '%02x' (expected) != '%02x' (generated)\0A\00", align 1
@.str.77 = private unnamed_addr constant [24 x i8] c"spec_mem_alloc_fds(%s)\0A\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"MAX_SPEC_FD\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"<variable>\00", align 1
@.str.80 = private unnamed_addr constant [53 x i8] c"Error mallocing space for list of spec_fd_t structs\0A\00", align 1
@.str.81 = private unnamed_addr constant [30 x i8] c"spec_mem_alloc_fds(%u) => %p\0A\00", align 1
@.str.82 = private unnamed_addr constant [23 x i8] c"spec_mem_free_fds(%s)\0A\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"spec_fd\00", align 1
@.str.84 = private unnamed_addr constant [26 x i8] c"  +-> fds=%p fd_limit=%u\0A\00", align 1
@.str.85 = private unnamed_addr constant [43 x i8] c"%s: Error growing buffer for fd %d@%p: %s\0A\00", align 1
@.str.86 = private unnamed_addr constant [36 x i8] c"  grew buffer for fd%d@0x%p to %ld\0A\00", align 1
@str.87 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @spec_mem_init(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %touch_all) local_unnamed_addr #0 !dbg !39 {
entry:
  call void @llvm.dbg.value(metadata ptr %fds, metadata !43, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i32 %fd_limit, metadata !44, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i32 %touch_all, metadata !45, metadata !DIExpression()), !dbg !52
  %0 = load i32, ptr @dbglvl, align 4, !dbg !53, !tbaa !56
  %cmp = icmp sgt i32 %0, 4, !dbg !53
  br i1 %cmp, label %if.then, label %if.end, !dbg !60

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @spec_fd, align 8, !dbg !61, !tbaa !63
  %cmp1 = icmp eq ptr %1, %fds, !dbg !61
  %spec.select = select i1 %cmp1, ptr null, ptr %fds, !dbg !61
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, ptr noundef %spec.select, i32 noundef %fd_limit, i32 noundef %touch_all), !dbg !61
  %2 = load ptr, ptr @stdout, align 8, !dbg !61, !tbaa !63
  %call2 = tail call i32 @fflush(ptr noundef %2), !dbg !61
  br label %if.end, !dbg !61

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !46, metadata !DIExpression()), !dbg !52
  %cmp386.not = icmp eq i32 %fd_limit, 0, !dbg !65
  br i1 %cmp386.not, label %for.end48, label %for.body.lr.ph, !dbg !66

for.body.lr.ph:                                   ; preds = %if.end
  %tobool.not = icmp eq i32 %touch_all, 0
  br i1 %tobool.not, label %for.body.us, label %for.body, !dbg !67

for.body.us:                                      ; preds = %for.body.lr.ph, %if.end36.us
  %i.087.us = phi i32 [ %inc.us, %if.end36.us ], [ 0, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i32 %i.087.us, metadata !46, metadata !DIExpression()), !dbg !52
  %idxprom.us = zext i32 %i.087.us to i64, !dbg !68
  %arrayidx.us = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom.us, !dbg !68
  %3 = load i64, ptr %arrayidx.us, align 8, !dbg !69, !tbaa !70
  call void @llvm.dbg.value(metadata i64 %3, metadata !48, metadata !DIExpression()), !dbg !73
  %4 = getelementptr inbounds i8, ptr %arrayidx.us, i64 8, !dbg !74
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 32, i1 false), !dbg !74
  store i64 %3, ptr %arrayidx.us, align 8, !dbg !75, !tbaa !70
  %open.us = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom.us, i32 3, !dbg !76
  store i32 0, ptr %open.us, align 8, !dbg !77, !tbaa !78
  %cmp12.us = icmp slt i64 %3, 0, !dbg !79
  br i1 %cmp12.us, label %if.then13, label %if.end15.us, !dbg !81

if.end15.us:                                      ; preds = %for.body.us
  %add16.us = add nuw nsw i64 %3, 1048576, !dbg !82
  %call17.us = tail call noalias ptr @malloc(i64 noundef %add16.us) #19, !dbg !83
  %buf.us = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom.us, i32 4, !dbg !84
  store ptr %call17.us, ptr %buf.us, align 8, !dbg !85, !tbaa !86
  %cmp23.us = icmp eq ptr %call17.us, null, !dbg !87
  br i1 %cmp23.us, label %if.then24, label %if.end27.us, !dbg !89

if.end27.us:                                      ; preds = %if.end15.us
  %5 = load i32, ptr @dbglvl, align 4, !dbg !90, !tbaa !56
  %cmp28.us = icmp sgt i32 %5, 4, !dbg !90
  br i1 %cmp28.us, label %if.then29.us, label %if.end36.us, !dbg !93

if.then29.us:                                     ; preds = %if.end27.us
  %call34.us = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3, i32 noundef %i.087.us, i64 noundef %3, i64 noundef %add16.us), !dbg !94
  %6 = load ptr, ptr @stdout, align 8, !dbg !94, !tbaa !63
  %call35.us = tail call i32 @fflush(ptr noundef %6), !dbg !94
  br label %if.end36.us, !dbg !94

if.end36.us:                                      ; preds = %if.then29.us, %if.end27.us
  %inc.us = add i32 %i.087.us, 1, !dbg !96
  call void @llvm.dbg.value(metadata i32 %inc.us, metadata !46, metadata !DIExpression()), !dbg !52
  %exitcond106.not = icmp eq i32 %inc.us, %fd_limit, !dbg !65
  br i1 %exitcond106.not, label %for.end48, label %for.body.us, !dbg !66, !llvm.loop !97

for.body:                                         ; preds = %for.body.lr.ph, %if.end46.loopexit
  %i.087 = phi i32 [ %inc, %if.end46.loopexit ], [ 0, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i32 %i.087, metadata !46, metadata !DIExpression()), !dbg !52
  %idxprom = zext i32 %i.087 to i64, !dbg !68
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, !dbg !68
  %7 = load i64, ptr %arrayidx, align 8, !dbg !69, !tbaa !70
  call void @llvm.dbg.value(metadata i64 %7, metadata !48, metadata !DIExpression()), !dbg !73
  %8 = getelementptr inbounds i8, ptr %arrayidx, i64 8, !dbg !74
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 32, i1 false), !dbg !74
  store i64 %7, ptr %arrayidx, align 8, !dbg !75, !tbaa !70
  %open = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, i32 3, !dbg !76
  store i32 0, ptr %open, align 8, !dbg !77, !tbaa !78
  %cmp12 = icmp slt i64 %7, 0, !dbg !79
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !81

if.then13:                                        ; preds = %for.body, %for.body.us
  %.us-phi = phi i64 [ %3, %for.body.us ], [ %7, %for.body ]
  %.us-phi89 = phi i32 [ %i.087.us, %for.body.us ], [ %i.087, %for.body ]
  %9 = load ptr, ptr @stderr, align 8, !dbg !101, !tbaa !63
  %add = add nsw i64 %.us-phi, 1048576, !dbg !103
  %call14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.1, i64 noundef %add, i32 noundef %.us-phi89) #20, !dbg !104
  tail call void @exit(i32 noundef 1) #21, !dbg !105
  unreachable, !dbg !105

if.end15:                                         ; preds = %for.body
  %add16 = add nuw nsw i64 %7, 1048576, !dbg !82
  %call17 = tail call noalias ptr @malloc(i64 noundef %add16) #19, !dbg !83
  %buf = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, i32 4, !dbg !84
  store ptr %call17, ptr %buf, align 8, !dbg !85, !tbaa !86
  %cmp23 = icmp eq ptr %call17, null, !dbg !87
  br i1 %cmp23, label %if.then24, label %if.end27, !dbg !89

if.then24:                                        ; preds = %if.end15, %if.end15.us
  %.us-phi90 = phi i64 [ %add16.us, %if.end15.us ], [ %add16, %if.end15 ]
  %.us-phi91 = phi i32 [ %i.087.us, %if.end15.us ], [ %i.087, %if.end15 ]
  %10 = load ptr, ptr @stderr, align 8, !dbg !106, !tbaa !63
  %call26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.2, i64 noundef %.us-phi90, i32 noundef %.us-phi91, ptr noundef nonnull %fds) #20, !dbg !108
  tail call void @exit(i32 noundef 1) #21, !dbg !109
  unreachable, !dbg !109

if.end27:                                         ; preds = %if.end15
  %11 = load i32, ptr @dbglvl, align 4, !dbg !90, !tbaa !56
  %cmp28 = icmp sgt i32 %11, 4, !dbg !90
  br i1 %cmp28, label %if.then29, label %if.end36, !dbg !93

if.then29:                                        ; preds = %if.end27
  %call34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3, i32 noundef %i.087, i64 noundef %7, i64 noundef %add16), !dbg !94
  %12 = load ptr, ptr @stdout, align 8, !dbg !94, !tbaa !63
  %call35 = tail call i32 @fflush(ptr noundef %12), !dbg !94
  br label %if.end36, !dbg !94

if.end36:                                         ; preds = %if.then29, %if.end27
  call void @llvm.dbg.value(metadata i64 0, metadata !47, metadata !DIExpression()), !dbg !52
  %cmp3984.not = icmp eq i64 %7, 0, !dbg !110
  br i1 %cmp3984.not, label %if.end46.loopexit, label %for.body40, !dbg !114

for.body40:                                       ; preds = %if.end36, %for.body40
  %j.085 = phi i64 [ %add45, %for.body40 ], [ 0, %if.end36 ]
  call void @llvm.dbg.value(metadata i64 %j.085, metadata !47, metadata !DIExpression()), !dbg !52
  %13 = load ptr, ptr %buf, align 8, !dbg !115, !tbaa !86
  %arrayidx44 = getelementptr inbounds i8, ptr %13, i64 %j.085, !dbg !117
  store i8 0, ptr %arrayidx44, align 1, !dbg !118, !tbaa !119
  %add45 = add nuw nsw i64 %j.085, 1024, !dbg !120
  call void @llvm.dbg.value(metadata i64 %add45, metadata !47, metadata !DIExpression()), !dbg !52
  %cmp39 = icmp slt i64 %add45, %7, !dbg !110
  br i1 %cmp39, label %for.body40, label %if.end46.loopexit, !dbg !114, !llvm.loop !121

if.end46.loopexit:                                ; preds = %for.body40, %if.end36
  %inc = add i32 %i.087, 1, !dbg !96
  call void @llvm.dbg.value(metadata i32 %inc, metadata !46, metadata !DIExpression()), !dbg !52
  %exitcond.not = icmp eq i32 %inc, %fd_limit, !dbg !65
  br i1 %exitcond.not, label %for.end48, label %for.body, !dbg !66, !llvm.loop !97

for.end48:                                        ; preds = %if.end46.loopexit, %if.end36.us, %if.end
  ret i32 0, !dbg !123
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !124 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @spec_mem_sum(ptr nocapture noundef readonly %fd, ptr noundef returned %sum, i32 noundef %bits) local_unnamed_addr #0 !dbg !186 {
entry:
  %ctx = alloca %struct.sha512_state, align 8
  call void @llvm.dbg.value(metadata ptr %fd, metadata !190, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata ptr %sum, metadata !191, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 %bits, metadata !192, metadata !DIExpression()), !dbg !215
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %ctx) #22, !dbg !216
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !193, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.value(metadata i64 0, metadata !213, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i64 0, metadata !214, metadata !DIExpression()), !dbg !215
  %cmp.not = icmp eq i32 %bits, 512, !dbg !218
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !220

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !221, !tbaa !63
  %1 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 40, i64 1, ptr %0) #20, !dbg !223
  tail call void @exit(i32 noundef 1) #21, !dbg !224
  unreachable, !dbg !224

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq ptr %sum, null, !dbg !225
  br i1 %cmp1.not, label %if.end10, label %if.then2, !dbg !227

if.then2:                                         ; preds = %if.end
  call void @sha_init(ptr noundef nonnull %ctx) #22, !dbg !228
  call void @llvm.dbg.value(metadata i64 0, metadata !213, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i64 2147483647, metadata !214, metadata !DIExpression()), !dbg !215
  %len = getelementptr inbounds %struct.spec_fd_t, ptr %fd, i64 0, i32 1
  call void @llvm.dbg.value(metadata i64 2147483647, metadata !214, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i64 0, metadata !213, metadata !DIExpression()), !dbg !215
  %2 = load i64, ptr %len, align 8, !dbg !230, !tbaa !233
  %cmp322 = icmp sgt i64 %2, 0, !dbg !234
  br i1 %cmp322, label %for.body.lr.ph, label %for.end, !dbg !235

for.body.lr.ph:                                   ; preds = %if.then2
  %buf = getelementptr inbounds %struct.spec_fd_t, ptr %fd, i64 0, i32 4
  br label %for.body, !dbg !235

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %3 = phi i64 [ %2, %for.body.lr.ph ], [ %6, %for.body ]
  %chunk.024 = phi i64 [ 2147483647, %for.body.lr.ph ], [ %4, %for.body ]
  %currpos.023 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %for.body ]
  call void @llvm.dbg.value(metadata i64 %chunk.024, metadata !214, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i64 %currpos.023, metadata !213, metadata !DIExpression()), !dbg !215
  %sub = sub nsw i64 %3, %currpos.023, !dbg !236
  %4 = call i64 @llvm.smin.i64(i64 %sub, i64 %chunk.024), !dbg !239
  call void @llvm.dbg.value(metadata i64 %4, metadata !214, metadata !DIExpression()), !dbg !215
  %5 = load ptr, ptr %buf, align 8, !dbg !240, !tbaa !86
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %currpos.023, !dbg !241
  %conv = trunc i64 %4 to i32, !dbg !242
  call void @sha_process(ptr noundef nonnull %ctx, ptr noundef %add.ptr, i32 noundef %conv) #22, !dbg !243
  %add = add nsw i64 %4, %currpos.023, !dbg !244
  call void @llvm.dbg.value(metadata i64 %add, metadata !213, metadata !DIExpression()), !dbg !215
  %6 = load i64, ptr %len, align 8, !dbg !230, !tbaa !233
  %cmp3 = icmp sgt i64 %6, %add, !dbg !234
  br i1 %cmp3, label %for.body, label %for.end, !dbg !235, !llvm.loop !245

for.end:                                          ; preds = %for.body, %if.then2
  call void @sha_done(ptr noundef nonnull %ctx, ptr noundef nonnull %sum) #22, !dbg !247
  br label %if.end10, !dbg !248

if.end10:                                         ; preds = %for.end, %if.end
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %ctx) #22, !dbg !249
  ret ptr %sum, !dbg !250
}

declare !dbg !251 void @sha_init(ptr noundef) local_unnamed_addr #7

declare !dbg !255 void @sha_process(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare !dbg !260 void @sha_done(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @spec_mem_load(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %num, ptr noundef %filename, i64 noundef %size, i32 noundef %tmpfd, ptr noundef readonly %sum, i32 noundef %bits) local_unnamed_addr #0 !dbg !263 {
entry:
  %ctx.i269 = alloca %struct.sha512_state, align 8
  %ctx.i = alloca %struct.sha512_state, align 8
  call void @llvm.dbg.value(metadata ptr %fds, metadata !267, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i32 %fd_limit, metadata !268, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i32 %num, metadata !269, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata ptr %filename, metadata !270, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i64 %size, metadata !271, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i32 %tmpfd, metadata !272, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata ptr %sum, metadata !273, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i32 %bits, metadata !274, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.declare(metadata ptr undef, metadata !276, metadata !DIExpression()), !dbg !282
  %conv = sext i32 %bits to i64, !dbg !283
  %div265 = lshr i64 %conv, 3, !dbg !284
  %call = tail call noalias ptr @malloc(i64 noundef %div265) #19, !dbg !285
  call void @llvm.dbg.value(metadata ptr %call, metadata !278, metadata !DIExpression()), !dbg !281
  %cmp = icmp eq ptr %call, null, !dbg !286
  br i1 %cmp, label %if.then, label %if.end, !dbg !288

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !289, !tbaa !63
  %div2 = sdiv i32 %bits, 8, !dbg !291
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %div2, i32 noundef %bits) #20, !dbg !292
  tail call void @exit(i32 noundef 1) #21, !dbg !293
  unreachable, !dbg !293

if.end:                                           ; preds = %entry
  %cmp4 = icmp sgt i32 %tmpfd, -1, !dbg !294
  %cmp6.not = icmp ult i32 %tmpfd, %fd_limit
  %or.cond = and i1 %cmp4, %cmp6.not, !dbg !296
  br i1 %or.cond, label %if.end10, label %if.then8, !dbg !296

if.then8:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !297, !tbaa !63
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %tmpfd, ptr noundef %fds, i32 noundef %fd_limit) #20, !dbg !299
  tail call void @exit(i32 noundef 1) #21, !dbg !300
  unreachable, !dbg !300

if.end10:                                         ; preds = %if.end
  %cmp11 = icmp sgt i32 %num, -1, !dbg !301
  %cmp14.not = icmp ult i32 %num, %fd_limit
  %or.cond266 = and i1 %cmp11, %cmp14.not, !dbg !303
  br i1 %or.cond266, label %if.end18, label %if.then16, !dbg !303

if.then16:                                        ; preds = %if.end10
  %2 = load ptr, ptr @stderr, align 8, !dbg !304, !tbaa !63
  %call17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %num, ptr noundef %fds, i32 noundef %fd_limit) #20, !dbg !306
  tail call void @exit(i32 noundef 1) #21, !dbg !307
  unreachable, !dbg !307

if.end18:                                         ; preds = %if.end10
  %call19 = tail call i32 (ptr, i32, ...) @open(ptr noundef %filename, i32 noundef 0) #22, !dbg !308
  call void @llvm.dbg.value(metadata i32 %call19, metadata !275, metadata !DIExpression()), !dbg !281
  %cmp20 = icmp slt i32 %call19, 0, !dbg !309
  br i1 %cmp20, label %if.then22, label %if.end26, !dbg !311

if.then22:                                        ; preds = %if.end18
  %3 = load ptr, ptr @stderr, align 8, !dbg !312, !tbaa !63
  %call23 = tail call ptr @__errno_location() #23, !dbg !314
  %4 = load i32, ptr %call23, align 4, !dbg !314, !tbaa !56
  %call24 = tail call ptr @strerror(i32 noundef %4) #22, !dbg !315
  %call25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.8, ptr noundef %filename, ptr noundef %call24) #20, !dbg !316
  tail call void @exit(i32 noundef 0) #21, !dbg !317
  unreachable, !dbg !317

if.end26:                                         ; preds = %if.end18
  %idxprom304 = zext i32 %tmpfd to i64, !dbg !318
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom304, !dbg !318
  %len = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom304, i32 1, !dbg !319
  %buf = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom304, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %len, i8 0, i64 20, i1 false), !dbg !320
  %5 = load ptr, ptr %buf, align 8, !dbg !321, !tbaa !86
  %call36311 = tail call i64 @read(i32 noundef %call19, ptr noundef %5, i64 noundef 266338304) #22, !dbg !322
  call void @llvm.dbg.value(metadata i64 %call36311, metadata !277, metadata !DIExpression()), !dbg !281
  %cmp37312 = icmp sgt i64 %call36311, 0, !dbg !323
  br i1 %cmp37312, label %while.body, label %while.end, !dbg !324

while.body:                                       ; preds = %if.end26, %if.end55
  %call36313 = phi i64 [ %call36, %if.end55 ], [ %call36311, %if.end26 ]
  %6 = load i64, ptr %len, align 8, !dbg !325, !tbaa !233
  %add = add nsw i64 %6, %call36313, !dbg !325
  store i64 %add, ptr %len, align 8, !dbg !325, !tbaa !233
  %cmp42 = icmp ult i64 %call36313, 266338304, !dbg !327
  br i1 %cmp42, label %if.end62, label %if.end45, !dbg !329

if.end45:                                         ; preds = %while.body
  %add49 = add nsw i64 %add, 266338304, !dbg !330
  %7 = load i64, ptr %arrayidx, align 8, !dbg !332, !tbaa !70
  %cmp52 = icmp sgt i64 %add49, %7, !dbg !333
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !334

if.then54:                                        ; preds = %if.end45
  tail call fastcc void @fd_grow(ptr noundef nonnull %fds, i32 noundef %tmpfd, ptr noundef nonnull @.str.9), !dbg !335
  %.pre = load i64, ptr %len, align 8, !dbg !337, !tbaa !233
  br label %if.end55, !dbg !338

if.end55:                                         ; preds = %if.then54, %if.end45
  %8 = phi i64 [ %.pre, %if.then54 ], [ %add, %if.end45 ], !dbg !337
  %9 = load ptr, ptr %buf, align 8, !dbg !321, !tbaa !86
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %8, !dbg !339
  %call36 = tail call i64 @read(i32 noundef %call19, ptr noundef %add.ptr, i64 noundef 266338304) #22, !dbg !322
  call void @llvm.dbg.value(metadata i64 %call36, metadata !277, metadata !DIExpression()), !dbg !281
  %cmp37 = icmp sgt i64 %call36, 0, !dbg !323
  br i1 %cmp37, label %while.body, label %while.end, !dbg !324, !llvm.loop !340

while.end:                                        ; preds = %if.end55, %if.end26
  %call36.lcssa = phi i64 [ %call36311, %if.end26 ], [ %call36, %if.end55 ], !dbg !322
  %cmp56 = icmp slt i64 %call36.lcssa, 0, !dbg !342
  br i1 %cmp56, label %if.then58, label %if.end62, !dbg !344

if.then58:                                        ; preds = %while.end
  %10 = load ptr, ptr @stderr, align 8, !dbg !345, !tbaa !63
  %call59 = tail call ptr @__errno_location() #23, !dbg !347
  %11 = load i32, ptr %call59, align 4, !dbg !347, !tbaa !56
  %call60 = tail call ptr @strerror(i32 noundef %11) #22, !dbg !348
  %call61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.10, ptr noundef %filename, ptr noundef %call60) #20, !dbg !349
  tail call void @exit(i32 noundef 1) #21, !dbg !350
  unreachable, !dbg !350

if.end62:                                         ; preds = %while.body, %while.end
  %call63 = tail call i32 @close(i32 noundef %call19) #22, !dbg !351
  %idxprom64 = sext i32 %num to i64, !dbg !352
  %len66 = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom64, i32 1, !dbg !353
  %pos69 = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom64, i32 2, !dbg !354
  call void @llvm.dbg.value(metadata i32 %tmpfd, metadata !355, metadata !DIExpression()) #22, !dbg !363
  call void @llvm.dbg.value(metadata i32 %num, metadata !360, metadata !DIExpression()) #22, !dbg !363
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %len66, i8 0, i64 16, i1 false), !dbg !365
  %12 = load ptr, ptr @spec_fd, align 8, !dbg !366, !tbaa !63
  %open.i = getelementptr inbounds %struct.spec_fd_t, ptr %12, i64 %idxprom304, i32 3, !dbg !367
  %13 = load i32, ptr %open.i, align 8, !dbg !367, !tbaa !78
  call void @llvm.dbg.value(metadata i32 %13, metadata !361, metadata !DIExpression()) #22, !dbg !363
  %open3.i = getelementptr inbounds %struct.spec_fd_t, ptr %12, i64 %idxprom64, i32 3, !dbg !368
  %14 = load i32, ptr %open3.i, align 8, !dbg !368, !tbaa !78
  call void @llvm.dbg.value(metadata i32 %14, metadata !362, metadata !DIExpression()) #22, !dbg !363
  store i32 1, ptr %open3.i, align 8, !dbg !369, !tbaa !78
  store i32 1, ptr %open.i, align 8, !dbg !370, !tbaa !78
  tail call void @uncompressStream(i32 noundef %tmpfd, i32 noundef %num) #22, !dbg !371
  %15 = load ptr, ptr @spec_fd, align 8, !dbg !372, !tbaa !63
  %open12.i = getelementptr inbounds %struct.spec_fd_t, ptr %15, i64 %idxprom304, i32 3, !dbg !373
  store i32 %13, ptr %open12.i, align 8, !dbg !374, !tbaa !78
  %open15.i = getelementptr inbounds %struct.spec_fd_t, ptr %15, i64 %idxprom64, i32 3, !dbg !375
  store i32 %14, ptr %open15.i, align 8, !dbg !376, !tbaa !78
  %16 = load i32, ptr @dbglvl, align 4, !dbg !377, !tbaa !56
  %cmp70 = icmp sgt i32 %16, 1, !dbg !377
  br i1 %cmp70, label %if.then72, label %if.end81, !dbg !380

if.then72:                                        ; preds = %if.end62
  %17 = load i64, ptr %len, align 8, !dbg !381, !tbaa !233
  %18 = load i64, ptr %len66, align 8, !dbg !381, !tbaa !233
  %call79 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.11, i64 noundef %17, i64 noundef %18), !dbg !381
  %19 = load ptr, ptr @stdout, align 8, !dbg !381, !tbaa !63
  %call80 = tail call i32 @fflush(ptr noundef %19), !dbg !381
  br label %if.end81, !dbg !381

if.end81:                                         ; preds = %if.then72, %if.end62
  call void @llvm.dbg.value(metadata !DIArgList(ptr %fds, i64 %idxprom64), metadata !190, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 40, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #22, !dbg !383
  call void @llvm.dbg.value(metadata ptr %call, metadata !191, metadata !DIExpression()) #22, !dbg !383
  call void @llvm.dbg.value(metadata i32 %bits, metadata !192, metadata !DIExpression()) #22, !dbg !383
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %len, i8 0, i64 16, i1 false), !dbg !385
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %ctx.i) #22, !dbg !386
  call void @llvm.dbg.declare(metadata ptr %ctx.i, metadata !193, metadata !DIExpression()) #22, !dbg !387
  call void @llvm.dbg.value(metadata i64 0, metadata !213, metadata !DIExpression()) #22, !dbg !383
  call void @llvm.dbg.value(metadata i64 0, metadata !214, metadata !DIExpression()) #22, !dbg !383
  %cmp.not.i = icmp eq i32 %bits, 512, !dbg !388
  br i1 %cmp.not.i, label %if.then2.i, label %if.then.i, !dbg !389

if.then.i:                                        ; preds = %if.end81
  %20 = load ptr, ptr @stderr, align 8, !dbg !390, !tbaa !63
  %21 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 40, i64 1, ptr %20) #24, !dbg !391
  tail call void @exit(i32 noundef 1) #21, !dbg !392
  unreachable, !dbg !392

if.then2.i:                                       ; preds = %if.end81
  call void @sha_init(ptr noundef nonnull %ctx.i) #22, !dbg !393
  call void @llvm.dbg.value(metadata i64 0, metadata !213, metadata !DIExpression()) #22, !dbg !383
  call void @llvm.dbg.value(metadata i64 2147483647, metadata !214, metadata !DIExpression()) #22, !dbg !383
  %22 = load i64, ptr %len66, align 8, !dbg !394, !tbaa !233
  %cmp322.i = icmp sgt i64 %22, 0, !dbg !395
  br i1 %cmp322.i, label %for.body.lr.ph.i, label %spec_mem_sum.exit.thread, !dbg !396

for.body.lr.ph.i:                                 ; preds = %if.then2.i
  %buf.i = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom64, i32 4
  br label %for.body.i, !dbg !396

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %23 = phi i64 [ %22, %for.body.lr.ph.i ], [ %26, %for.body.i ]
  %chunk.024.i = phi i64 [ 2147483647, %for.body.lr.ph.i ], [ %24, %for.body.i ]
  %currpos.023.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i ]
  call void @llvm.dbg.value(metadata i64 %chunk.024.i, metadata !214, metadata !DIExpression()) #22, !dbg !383
  call void @llvm.dbg.value(metadata i64 %currpos.023.i, metadata !213, metadata !DIExpression()) #22, !dbg !383
  %sub.i = sub nsw i64 %23, %currpos.023.i, !dbg !397
  %24 = call i64 @llvm.smin.i64(i64 %sub.i, i64 %chunk.024.i) #22, !dbg !398
  call void @llvm.dbg.value(metadata i64 %24, metadata !214, metadata !DIExpression()) #22, !dbg !383
  %25 = load ptr, ptr %buf.i, align 8, !dbg !399, !tbaa !86
  %add.ptr.i = getelementptr inbounds i8, ptr %25, i64 %currpos.023.i, !dbg !400
  %conv.i = trunc i64 %24 to i32, !dbg !401
  call void @sha_process(ptr noundef nonnull %ctx.i, ptr noundef %add.ptr.i, i32 noundef %conv.i) #22, !dbg !402
  %add.i = add nsw i64 %24, %currpos.023.i, !dbg !403
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !213, metadata !DIExpression()) #22, !dbg !383
  %26 = load i64, ptr %len66, align 8, !dbg !394, !tbaa !233
  %cmp3.i = icmp sgt i64 %26, %add.i, !dbg !395
  br i1 %cmp3.i, label %for.body.i, label %spec_mem_sum.exit, !dbg !396, !llvm.loop !404

spec_mem_sum.exit:                                ; preds = %for.body.i
  call void @sha_done(ptr noundef nonnull %ctx.i, ptr noundef nonnull %call) #22, !dbg !406
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %ctx.i) #22, !dbg !407
  call void @llvm.dbg.value(metadata ptr %sum, metadata !408, metadata !DIExpression()) #22, !dbg !417
  call void @llvm.dbg.value(metadata ptr %call, metadata !413, metadata !DIExpression()) #22, !dbg !417
  call void @llvm.dbg.value(metadata i32 %bits, metadata !414, metadata !DIExpression()) #22, !dbg !417
  %cmp.i = icmp eq ptr %sum, null, !dbg !420
  br i1 %cmp.i, label %if.then91, label %for.body.i267.preheader, !dbg !422

spec_mem_sum.exit.thread:                         ; preds = %if.then2.i
  call void @sha_done(ptr noundef nonnull %ctx.i, ptr noundef nonnull %call) #22, !dbg !406
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %ctx.i) #22, !dbg !407
  call void @llvm.dbg.value(metadata ptr %sum, metadata !408, metadata !DIExpression()) #22, !dbg !417
  call void @llvm.dbg.value(metadata ptr %call, metadata !413, metadata !DIExpression()) #22, !dbg !417
  call void @llvm.dbg.value(metadata i32 %bits, metadata !414, metadata !DIExpression()) #22, !dbg !417
  %cmp.i300 = icmp eq ptr %sum, null, !dbg !420
  br i1 %cmp.i300, label %if.then91, label %for.body.i267.preheader, !dbg !422

for.body.i267.preheader:                          ; preds = %spec_mem_sum.exit, %spec_mem_sum.exit.thread
  br label %for.body.i267, !dbg !423

for.body.i267:                                    ; preds = %for.body.i267.preheader, %for.inc.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ 0, %for.body.i267.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !415, metadata !DIExpression()) #22, !dbg !424
  %arrayidx.i = getelementptr inbounds i8, ptr %sum, i64 %indvars.iv.i, !dbg !425
  %27 = load i8, ptr %arrayidx.i, align 1, !dbg !425, !tbaa !119
  %arrayidx4.i = getelementptr inbounds i8, ptr %call, i64 %indvars.iv.i, !dbg !429
  %28 = load i8, ptr %arrayidx4.i, align 1, !dbg !429, !tbaa !119
  %cmp6.not.i = icmp eq i8 %27, %28, !dbg !430
  br i1 %cmp6.not.i, label %for.inc.i, label %if.then8.i, !dbg !431

if.then8.i:                                       ; preds = %for.body.i267
  %29 = trunc i64 %indvars.iv.i to i32, !dbg !425
  %conv5.i = zext i8 %28 to i32, !dbg !429
  %conv.i268 = zext i8 %27 to i32, !dbg !425
  %30 = load ptr, ptr @stderr, align 8, !dbg !432, !tbaa !63
  %call.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.76, i32 noundef %29, i32 noundef %conv.i268, i32 noundef %conv5.i) #24, !dbg !434
  br label %if.then91, !dbg !435

for.inc.i:                                        ; preds = %for.body.i267
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !436
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !415, metadata !DIExpression()) #22, !dbg !424
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 64, !dbg !437
  br i1 %exitcond.not.i, label %if.end96, label %for.body.i267, !dbg !423, !llvm.loop !438

if.then91:                                        ; preds = %spec_mem_sum.exit, %if.then8.i, %spec_mem_sum.exit.thread
  %31 = load ptr, ptr @stderr, align 8, !dbg !440, !tbaa !63
  %call92 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.12, i32 noundef 512) #20, !dbg !442
  %32 = load ptr, ptr @stderr, align 8, !dbg !443, !tbaa !63
  %33 = call i64 @fwrite(ptr nonnull @.str.13, i64 13, i64 1, ptr %32) #20, !dbg !444
  %34 = load ptr, ptr @stderr, align 8, !dbg !445, !tbaa !63
  call void @print_sum(ptr noundef %34, ptr noundef nonnull %call, i32 noundef 512), !dbg !446
  %35 = load ptr, ptr @stderr, align 8, !dbg !447, !tbaa !63
  %36 = call i64 @fwrite(ptr nonnull @.str.14, i64 14, i64 1, ptr %35) #20, !dbg !448
  %37 = load ptr, ptr @stderr, align 8, !dbg !449, !tbaa !63
  call void @print_sum(ptr noundef %37, ptr noundef %sum, i32 noundef 512), !dbg !450
  %38 = load ptr, ptr @stderr, align 8, !dbg !451, !tbaa !63
  %fputc = call i32 @fputc(i32 10, ptr %38), !dbg !452
  call void @exit(i32 noundef 1) #21, !dbg !453
  unreachable, !dbg !453

if.end96:                                         ; preds = %for.inc.i
  %39 = load i32, ptr @dbglvl, align 4, !dbg !454, !tbaa !56
  %cmp97 = icmp sgt i32 %39, 1, !dbg !454
  br i1 %cmp97, label %if.then99, label %if.end102, !dbg !457

if.then99:                                        ; preds = %if.end96
  %call100 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.16, i32 noundef 512), !dbg !458
  %40 = load ptr, ptr @stdout, align 8, !dbg !458, !tbaa !63
  %call101 = call i32 @fflush(ptr noundef %40), !dbg !458
  br label %if.end102, !dbg !458

if.end102:                                        ; preds = %if.then99, %if.end96
  %41 = load i64, ptr %len66, align 8, !dbg !460, !tbaa !233
  %cmp106 = icmp sgt i64 %41, %size, !dbg !462
  br i1 %cmp106, label %if.then108, label %if.end118, !dbg !463

if.then108:                                       ; preds = %if.end102
  %42 = load i32, ptr @dbglvl, align 4, !dbg !464, !tbaa !56
  %cmp109 = icmp sgt i32 %42, 1, !dbg !464
  br i1 %cmp109, label %if.then111, label %if.end118.thread, !dbg !468

if.then111:                                       ; preds = %if.then108
  %call112 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.17, i64 noundef %size), !dbg !469
  %43 = load ptr, ptr @stdout, align 8, !dbg !469, !tbaa !63
  %call113 = call i32 @fflush(ptr noundef %43), !dbg !469
  br label %if.end118.thread, !dbg !469

if.end118.thread:                                 ; preds = %if.then108, %if.then111
  store i64 %size, ptr %len66, align 8, !dbg !471, !tbaa !233
  store i64 0, ptr %pos69, align 8, !dbg !472, !tbaa !473
  br label %if.then2.i276, !dbg !474

if.end118:                                        ; preds = %if.end102
  store i64 0, ptr %pos69, align 8, !dbg !472, !tbaa !473
  %cmp126314 = icmp slt i64 %41, %size, !dbg !475
  br i1 %cmp126314, label %while.body128.lr.ph, label %if.then2.i276, !dbg !474

while.body128.lr.ph:                              ; preds = %if.end118
  %buf150 = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom64, i32 4
  br label %while.body128, !dbg !474

while.body128:                                    ; preds = %while.body128.lr.ph, %if.end147
  %44 = phi i64 [ %41, %while.body128.lr.ph ], [ %add161, %if.end147 ]
  %sub = sub nsw i64 %size, %44, !dbg !476
  call void @llvm.dbg.value(metadata i64 %sub, metadata !279, metadata !DIExpression()), !dbg !477
  %45 = call i64 @llvm.smin.i64(i64 %sub, i64 %44), !dbg !478
  call void @llvm.dbg.value(metadata i64 %45, metadata !279, metadata !DIExpression()), !dbg !477
  %46 = load i32, ptr @dbglvl, align 4, !dbg !479, !tbaa !56
  %cmp142 = icmp sgt i32 %46, 3, !dbg !479
  br i1 %cmp142, label %if.then144, label %if.end147, !dbg !482

if.then144:                                       ; preds = %while.body128
  %call145 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.18, i64 noundef %45), !dbg !483
  %47 = load ptr, ptr @stdout, align 8, !dbg !483, !tbaa !63
  %call146 = call i32 @fflush(ptr noundef %47), !dbg !483
  %.pre320 = load i64, ptr %len66, align 8, !dbg !485, !tbaa !233
  br label %if.end147, !dbg !483

if.end147:                                        ; preds = %if.then144, %while.body128
  %48 = phi i64 [ %.pre320, %if.then144 ], [ %44, %while.body128 ], !dbg !485
  %49 = load ptr, ptr %buf150, align 8, !dbg !486, !tbaa !86
  %add.ptr154 = getelementptr inbounds i8, ptr %49, i64 %48, !dbg !487
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr154, ptr align 1 %49, i64 %45, i1 false), !dbg !488
  %50 = load i64, ptr %len66, align 8, !dbg !489, !tbaa !233
  %add161 = add nsw i64 %50, %45, !dbg !489
  store i64 %add161, ptr %len66, align 8, !dbg !489, !tbaa !233
  %cmp126 = icmp slt i64 %add161, %size, !dbg !475
  br i1 %cmp126, label %while.body128, label %if.then2.i276, !dbg !474, !llvm.loop !490

if.then2.i276:                                    ; preds = %if.end147, %if.end118.thread, %if.end118
  call void @llvm.dbg.value(metadata !DIArgList(ptr %fds, i64 %idxprom64), metadata !190, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 40, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #22, !dbg !492
  call void @llvm.dbg.value(metadata ptr %call, metadata !191, metadata !DIExpression()) #22, !dbg !492
  call void @llvm.dbg.value(metadata i32 %bits, metadata !192, metadata !DIExpression()) #22, !dbg !492
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %ctx.i269) #22, !dbg !494
  call void @llvm.dbg.declare(metadata ptr %ctx.i269, metadata !193, metadata !DIExpression()) #22, !dbg !495
  call void @llvm.dbg.value(metadata i64 0, metadata !213, metadata !DIExpression()) #22, !dbg !492
  call void @llvm.dbg.value(metadata i64 0, metadata !214, metadata !DIExpression()) #22, !dbg !492
  call void @sha_init(ptr noundef nonnull %ctx.i269) #22, !dbg !496
  call void @llvm.dbg.value(metadata i64 2147483647, metadata !214, metadata !DIExpression()) #22, !dbg !492
  %51 = load i64, ptr %len66, align 8, !dbg !497, !tbaa !233
  %cmp322.i275 = icmp sgt i64 %51, 0, !dbg !498
  br i1 %cmp322.i275, label %for.body.lr.ph.i278, label %for.body.preheader.i291, !dbg !499

for.body.lr.ph.i278:                              ; preds = %if.then2.i276
  %buf.i277 = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom64, i32 4
  br label %for.body.i286, !dbg !499

for.body.i286:                                    ; preds = %for.body.i286, %for.body.lr.ph.i278
  %52 = phi i64 [ %51, %for.body.lr.ph.i278 ], [ %55, %for.body.i286 ]
  %chunk.024.i279 = phi i64 [ 2147483647, %for.body.lr.ph.i278 ], [ %53, %for.body.i286 ]
  %currpos.023.i280 = phi i64 [ 0, %for.body.lr.ph.i278 ], [ %add.i284, %for.body.i286 ]
  call void @llvm.dbg.value(metadata i64 %chunk.024.i279, metadata !214, metadata !DIExpression()) #22, !dbg !492
  call void @llvm.dbg.value(metadata i64 %currpos.023.i280, metadata !213, metadata !DIExpression()) #22, !dbg !492
  %sub.i281 = sub nsw i64 %52, %currpos.023.i280, !dbg !500
  %53 = call i64 @llvm.smin.i64(i64 %sub.i281, i64 %chunk.024.i279) #22, !dbg !501
  call void @llvm.dbg.value(metadata i64 %53, metadata !214, metadata !DIExpression()) #22, !dbg !492
  %54 = load ptr, ptr %buf.i277, align 8, !dbg !502, !tbaa !86
  %add.ptr.i282 = getelementptr inbounds i8, ptr %54, i64 %currpos.023.i280, !dbg !503
  %conv.i283 = trunc i64 %53 to i32, !dbg !504
  call void @sha_process(ptr noundef nonnull %ctx.i269, ptr noundef %add.ptr.i282, i32 noundef %conv.i283) #22, !dbg !505
  %add.i284 = add nsw i64 %53, %currpos.023.i280, !dbg !506
  call void @llvm.dbg.value(metadata i64 %add.i284, metadata !213, metadata !DIExpression()) #22, !dbg !492
  %55 = load i64, ptr %len66, align 8, !dbg !497, !tbaa !233
  %cmp3.i285 = icmp sgt i64 %55, %add.i284, !dbg !498
  br i1 %cmp3.i285, label %for.body.i286, label %for.body.preheader.i291, !dbg !499, !llvm.loop !507

for.body.preheader.i291:                          ; preds = %for.body.i286, %if.then2.i276
  call void @sha_done(ptr noundef nonnull %ctx.i269, ptr noundef nonnull %call) #22, !dbg !509
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %ctx.i269) #22, !dbg !510
  %call166 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.19, i32 noundef 512), !dbg !511
  %56 = load ptr, ptr @stdout, align 8, !dbg !512, !tbaa !63
  call void @llvm.dbg.value(metadata ptr %56, metadata !513, metadata !DIExpression()) #22, !dbg !522
  call void @llvm.dbg.value(metadata ptr %call, metadata !518, metadata !DIExpression()) #22, !dbg !522
  call void @llvm.dbg.value(metadata i32 %bits, metadata !519, metadata !DIExpression()) #22, !dbg !522
  call void @llvm.dbg.value(metadata i32 0, metadata !520, metadata !DIExpression()) #22, !dbg !524
  br label %for.body.i298, !dbg !525

for.body.i298:                                    ; preds = %for.body.i298, %for.body.preheader.i291
  %indvars.iv.i292 = phi i64 [ 0, %for.body.preheader.i291 ], [ %indvars.iv.next.i296, %for.body.i298 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i292, metadata !520, metadata !DIExpression()) #22, !dbg !524
  %arrayidx.i293 = getelementptr inbounds i8, ptr %call, i64 %indvars.iv.i292, !dbg !526
  %57 = load i8, ptr %arrayidx.i293, align 1, !dbg !526, !tbaa !119
  %conv.i294 = zext i8 %57 to i32, !dbg !526
  %call.i295 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef nonnull @.str.74, i32 noundef %conv.i294) #22, !dbg !529
  %indvars.iv.next.i296 = add nuw nsw i64 %indvars.iv.i292, 1, !dbg !530
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i296, metadata !520, metadata !DIExpression()) #22, !dbg !524
  %exitcond.not.i297 = icmp eq i64 %indvars.iv.next.i296, 64, !dbg !531
  br i1 %exitcond.not.i297, label %print_sum.exit, label %for.body.i298, !dbg !525, !llvm.loop !532

print_sum.exit:                                   ; preds = %for.body.i298
  %putchar = call i32 @putchar(i32 10), !dbg !534
  ret ptr %call, !dbg !535
}

; Function Attrs: nofree
declare !dbg !536 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: nofree
declare !dbg !542 noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc void @fd_grow(ptr noundef %fds, i32 noundef %fd, ptr noundef %funcname) unnamed_addr #0 !dbg !548 {
entry:
  call void @llvm.dbg.value(metadata ptr %fds, metadata !552, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.value(metadata i32 %fd, metadata !553, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.value(metadata ptr %funcname, metadata !554, metadata !DIExpression()), !dbg !555
  %idxprom = sext i32 %fd to i64, !dbg !556
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, !dbg !556
  %0 = load i64, ptr %arrayidx, align 8, !dbg !557, !tbaa !70
  %mul = shl nsw i64 %0, 1, !dbg !557
  store i64 %mul, ptr %arrayidx, align 8, !dbg !557, !tbaa !70
  %buf = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, i32 4, !dbg !558
  %1 = load ptr, ptr %buf, align 8, !dbg !558, !tbaa !86
  %call = tail call ptr @realloc(ptr noundef %1, i64 noundef %mul) #25, !dbg !559
  store ptr %call, ptr %buf, align 8, !dbg !560, !tbaa !86
  %cmp = icmp eq ptr %call, null, !dbg !561
  br i1 %cmp, label %if.then, label %if.end, !dbg !563

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !dbg !564, !tbaa !63
  %call12 = tail call ptr @__errno_location() #23, !dbg !566
  %3 = load i32, ptr %call12, align 4, !dbg !566, !tbaa !56
  %call13 = tail call ptr @strerror(i32 noundef %3) #22, !dbg !567
  %call14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.85, ptr noundef %funcname, i32 noundef %fd, ptr noundef nonnull %fds, ptr noundef %call13) #20, !dbg !568
  tail call void @exit(i32 noundef 1) #21, !dbg !569
  unreachable, !dbg !569

if.end:                                           ; preds = %entry
  %4 = load i32, ptr @dbglvl, align 4, !dbg !570, !tbaa !56
  %cmp15 = icmp sgt i32 %4, 5, !dbg !570
  br i1 %cmp15, label %if.then16, label %if.end22, !dbg !573

if.then16:                                        ; preds = %if.end
  %5 = load i64, ptr %arrayidx, align 8, !dbg !574, !tbaa !70
  %call20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.86, i32 noundef %fd, ptr noundef nonnull %fds, i64 noundef %5), !dbg !574
  %6 = load ptr, ptr @stdout, align 8, !dbg !574, !tbaa !63
  %call21 = tail call i32 @fflush(ptr noundef %6), !dbg !574
  br label %if.end22, !dbg !574

if.end22:                                         ; preds = %if.then16, %if.end
  ret void, !dbg !576
}

declare !dbg !577 i32 @close(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @spec_uncompress(i32 noundef %in, i32 noundef %out) local_unnamed_addr #0 !dbg !356 {
entry:
  call void @llvm.dbg.value(metadata i32 %in, metadata !355, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.value(metadata i32 %out, metadata !360, metadata !DIExpression()), !dbg !580
  %0 = load ptr, ptr @spec_fd, align 8, !dbg !581, !tbaa !63
  %idxprom = sext i32 %in to i64, !dbg !581
  %open = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %idxprom, i32 3, !dbg !582
  %1 = load i32, ptr %open, align 8, !dbg !582, !tbaa !78
  call void @llvm.dbg.value(metadata i32 %1, metadata !361, metadata !DIExpression()), !dbg !580
  %idxprom1 = sext i32 %out to i64, !dbg !583
  %open3 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %idxprom1, i32 3, !dbg !584
  %2 = load i32, ptr %open3, align 8, !dbg !584, !tbaa !78
  call void @llvm.dbg.value(metadata i32 %2, metadata !362, metadata !DIExpression()), !dbg !580
  store i32 1, ptr %open3, align 8, !dbg !585, !tbaa !78
  store i32 1, ptr %open, align 8, !dbg !586, !tbaa !78
  tail call void @uncompressStream(i32 noundef %in, i32 noundef %out) #22, !dbg !587
  %3 = load ptr, ptr @spec_fd, align 8, !dbg !588, !tbaa !63
  %open12 = getelementptr inbounds %struct.spec_fd_t, ptr %3, i64 %idxprom, i32 3, !dbg !589
  store i32 %1, ptr %open12, align 8, !dbg !590, !tbaa !78
  %open15 = getelementptr inbounds %struct.spec_fd_t, ptr %3, i64 %idxprom1, i32 3, !dbg !591
  store i32 %2, ptr %open15, align 8, !dbg !592, !tbaa !78
  ret void, !dbg !593
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @compare_sum(ptr noundef readonly %ref_sum, ptr noundef readonly %generated, i32 noundef %bits) local_unnamed_addr #11 !dbg !409 {
entry:
  call void @llvm.dbg.value(metadata ptr %ref_sum, metadata !408, metadata !DIExpression()), !dbg !594
  call void @llvm.dbg.value(metadata ptr %generated, metadata !413, metadata !DIExpression()), !dbg !594
  call void @llvm.dbg.value(metadata i32 %bits, metadata !414, metadata !DIExpression()), !dbg !594
  %cmp = icmp eq ptr %ref_sum, null, !dbg !595
  %cmp1 = icmp eq ptr %generated, null
  %or.cond = or i1 %cmp, %cmp1, !dbg !596
  br i1 %or.cond, label %return, label %for.cond.preheader, !dbg !596

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !415, metadata !DIExpression()), !dbg !597
  %cmp241 = icmp sgt i32 %bits, 7, !dbg !598
  br i1 %cmp241, label %for.body.preheader, label %return, !dbg !599

for.body.preheader:                               ; preds = %for.cond.preheader
  %div4853 = lshr i32 %bits, 3
  %wide.trip.count = zext i32 %div4853 to i64, !dbg !598
  br label %for.body, !dbg !599

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !415, metadata !DIExpression()), !dbg !597
  %arrayidx = getelementptr inbounds i8, ptr %ref_sum, i64 %indvars.iv, !dbg !600
  %0 = load i8, ptr %arrayidx, align 1, !dbg !600, !tbaa !119
  %arrayidx4 = getelementptr inbounds i8, ptr %generated, i64 %indvars.iv, !dbg !601
  %1 = load i8, ptr %arrayidx4, align 1, !dbg !601, !tbaa !119
  %cmp6.not = icmp eq i8 %0, %1, !dbg !602
  br i1 %cmp6.not, label %for.inc, label %if.then8, !dbg !603

if.then8:                                         ; preds = %for.body
  %2 = trunc i64 %indvars.iv to i32, !dbg !600
  %idxprom.le = and i64 %indvars.iv, 4294967295, !dbg !600
  %arrayidx.le = getelementptr inbounds i8, ptr %ref_sum, i64 %idxprom.le, !dbg !600
  %arrayidx4.le = getelementptr inbounds i8, ptr %generated, i64 %idxprom.le, !dbg !601
  %conv5 = zext i8 %1 to i32, !dbg !601
  %conv = zext i8 %0 to i32, !dbg !600
  %3 = load ptr, ptr @stderr, align 8, !dbg !604, !tbaa !63
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.76, i32 noundef %2, i32 noundef %conv, i32 noundef %conv5) #20, !dbg !605
  %4 = load i8, ptr %arrayidx.le, align 1, !dbg !606, !tbaa !119
  %5 = load i8, ptr %arrayidx4.le, align 1, !dbg !607, !tbaa !119
  %cmp21 = icmp ult i8 %4, %5, !dbg !608
  %cond = select i1 %cmp21, i32 -1, i32 1, !dbg !609
  br label %return, !dbg !610

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !611
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !415, metadata !DIExpression()), !dbg !597
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !598
  br i1 %exitcond.not, label %return, label %for.body, !dbg !599, !llvm.loop !612

return:                                           ; preds = %for.inc, %for.cond.preheader, %if.then8, %entry
  %retval.1 = phi i32 [ -1, %entry ], [ %cond, %if.then8 ], [ 0, %for.cond.preheader ], [ 0, %for.inc ], !dbg !594
  ret i32 %retval.1, !dbg !614
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_sum(ptr nocapture noundef %out, ptr nocapture noundef readonly %sum, i32 noundef %bits) local_unnamed_addr #11 !dbg !514 {
entry:
  call void @llvm.dbg.value(metadata ptr %out, metadata !513, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.value(metadata ptr %sum, metadata !518, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.value(metadata i32 %bits, metadata !519, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.value(metadata i32 0, metadata !520, metadata !DIExpression()), !dbg !616
  call void @llvm.dbg.value(metadata i32 0, metadata !520, metadata !DIExpression()), !dbg !616
  %cmp3 = icmp sgt i32 %bits, 7, !dbg !617
  br i1 %cmp3, label %for.body.preheader, label %for.cond.cleanup, !dbg !618

for.body.preheader:                               ; preds = %entry
  %div67 = lshr i32 %bits, 3
  %wide.trip.count = zext i32 %div67 to i64, !dbg !617
  br label %for.body, !dbg !618

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void, !dbg !619

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !520, metadata !DIExpression()), !dbg !616
  %arrayidx = getelementptr inbounds i8, ptr %sum, i64 %indvars.iv, !dbg !620
  %0 = load i8, ptr %arrayidx, align 1, !dbg !620, !tbaa !119
  %conv = zext i8 %0 to i32, !dbg !620
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %out, ptr noundef nonnull @.str.74, i32 noundef %conv), !dbg !621
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !622
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !520, metadata !DIExpression()), !dbg !616
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !617
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !618, !llvm.loop !623
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nounwind uwtable
define dso_local i64 @spec_mem_read(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd, ptr noundef %buf, i64 noundef %size) local_unnamed_addr #0 !dbg !625 {
entry:
  call void @llvm.dbg.value(metadata ptr %fds, metadata !629, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata i32 %fd_limit, metadata !630, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata i32 %fd, metadata !631, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata ptr %buf, metadata !632, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata i64 %size, metadata !633, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata i32 0, metadata !634, metadata !DIExpression()), !dbg !635
  %0 = load i32, ptr @dbglvl, align 4, !dbg !636, !tbaa !56
  %cmp = icmp sgt i32 %0, 5, !dbg !636
  br i1 %cmp, label %if.then, label %if.end, !dbg !639

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.20, i32 noundef %fd, ptr noundef %fds, ptr noundef %buf, i64 noundef %size), !dbg !640
  %1 = load ptr, ptr @stdout, align 8, !dbg !640, !tbaa !63
  %call1 = tail call i32 @fflush(ptr noundef %1), !dbg !640
  br label %if.end, !dbg !640

if.end:                                           ; preds = %if.then, %entry
  %cmp2 = icmp sgt i32 %fd, -1, !dbg !642
  %cmp3.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp2, %cmp3.not, !dbg !644
  br i1 %or.cond, label %if.end6, label %if.then4, !dbg !644

if.then4:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8, !dbg !645, !tbaa !63
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20, !dbg !647
  tail call void @exit(i32 noundef 1) #21, !dbg !648
  unreachable, !dbg !648

if.end6:                                          ; preds = %if.end
  %idxprom122 = zext i32 %fd to i64, !dbg !649
  %open = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom122, i32 3, !dbg !651
  %3 = load i32, ptr %open, align 8, !dbg !651, !tbaa !78
  %cmp7.not = icmp eq i32 %3, 1, !dbg !652
  br i1 %cmp7.not, label %if.end11, label %if.then8, !dbg !653

if.then8:                                         ; preds = %if.end6
  %4 = load ptr, ptr @stderr, align 8, !dbg !654, !tbaa !63
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.22, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %fd, ptr noundef %buf, i64 noundef %size) #20, !dbg !656
  %call10 = tail call ptr @__errno_location() #23, !dbg !657
  store i32 9, ptr %call10, align 4, !dbg !658, !tbaa !56
  br label %cleanup, !dbg !659

if.end11:                                         ; preds = %if.end6
  %pos = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom122, i32 2, !dbg !660
  %5 = load i64, ptr %pos, align 8, !dbg !660, !tbaa !473
  %len = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom122, i32 1, !dbg !662
  %6 = load i64, ptr %len, align 8, !dbg !662, !tbaa !233
  %cmp16.not = icmp sgt i64 %6, %5, !dbg !663
  br i1 %cmp16.not, label %if.end29, label %if.then17, !dbg !664

if.then17:                                        ; preds = %if.end11
  %7 = load i32, ptr @dbglvl, align 4, !dbg !665, !tbaa !56
  %cmp18 = icmp sgt i32 %7, 4, !dbg !665
  br i1 %cmp18, label %if.then19, label %cleanup, !dbg !669

if.then19:                                        ; preds = %if.then17
  %call26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.23, i64 noundef %5, i64 noundef %6), !dbg !670
  %8 = load ptr, ptr @stdout, align 8, !dbg !670, !tbaa !63
  %call27 = tail call i32 @fflush(ptr noundef %8), !dbg !670
  br label %cleanup, !dbg !670

if.end29:                                         ; preds = %if.end11
  %add = add nsw i64 %5, %size, !dbg !672
  %cmp36.not = icmp slt i64 %add, %6, !dbg !674
  %sub = sub nsw i64 %6, %5
  %spec.select = select i1 %cmp36.not, i64 %size, i64 %sub, !dbg !675
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !634, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !635
  %buf48 = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom122, i32 4, !dbg !676
  %9 = load ptr, ptr %buf48, align 8, !dbg !676, !tbaa !86
  %arrayidx52 = getelementptr inbounds i8, ptr %9, i64 %5, !dbg !677
  %sext = shl i64 %spec.select, 32, !dbg !678
  %conv53 = ashr exact i64 %sext, 32, !dbg !678
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %buf, ptr align 1 %arrayidx52, i64 %conv53, i1 false), !dbg !679
  %10 = load i64, ptr %pos, align 8, !dbg !680, !tbaa !473
  %add58 = add nsw i64 %10, %conv53, !dbg !680
  store i64 %add58, ptr %pos, align 8, !dbg !680, !tbaa !473
  %11 = load i32, ptr @dbglvl, align 4, !dbg !681, !tbaa !56
  %cmp59 = icmp sgt i32 %11, 5, !dbg !681
  br i1 %cmp59, label %if.end64, label %cleanup, !dbg !684

if.end64:                                         ; preds = %if.end29
  %rc.0 = trunc i64 %spec.select to i32, !dbg !685
  call void @llvm.dbg.value(metadata i32 %rc.0, metadata !634, metadata !DIExpression()), !dbg !635
  %call62 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.24, i32 noundef %rc.0), !dbg !686
  %12 = load ptr, ptr @stdout, align 8, !dbg !686, !tbaa !63
  %call63 = tail call i32 @fflush(ptr noundef %12), !dbg !686
  %.pr = load i32, ptr @dbglvl, align 4, !dbg !688, !tbaa !56
  %cmp65 = icmp sgt i32 %.pr, 5, !dbg !688
  br i1 %cmp65, label %if.then67, label %cleanup, !dbg !691

if.then67:                                        ; preds = %if.end64
  %13 = load i64, ptr %pos, align 8, !dbg !692, !tbaa !473
  %call71 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.25, i32 noundef %fd, ptr noundef nonnull %fds, i64 noundef %13), !dbg !692
  %14 = load ptr, ptr @stdout, align 8, !dbg !692, !tbaa !63
  %call72 = tail call i32 @fflush(ptr noundef %14), !dbg !692
  br label %cleanup, !dbg !692

cleanup:                                          ; preds = %if.end29, %if.end64, %if.then67, %if.then17, %if.then19, %if.then8
  %retval.0 = phi i64 [ -1, %if.then8 ], [ 0, %if.then19 ], [ 0, %if.then17 ], [ %conv53, %if.then67 ], [ %conv53, %if.end64 ], [ %conv53, %if.end29 ], !dbg !635
  ret i64 %retval.0, !dbg !694
}

; Function Attrs: nounwind uwtable
define dso_local i64 @spec_mem_fread(ptr noundef %fds, i32 noundef %fd_limit, ptr noundef %buf, i64 noundef %size, i32 noundef %num, i32 noundef %fd) local_unnamed_addr #0 !dbg !695 {
entry:
  call void @llvm.dbg.value(metadata ptr %fds, metadata !699, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.value(metadata i32 %fd_limit, metadata !700, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.value(metadata ptr %buf, metadata !701, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.value(metadata i64 %size, metadata !702, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.value(metadata i32 %num, metadata !703, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.value(metadata i32 %fd, metadata !704, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.value(metadata i64 0, metadata !705, metadata !DIExpression()), !dbg !706
  %0 = load i32, ptr @dbglvl, align 4, !dbg !707, !tbaa !56
  %cmp = icmp sgt i32 %0, 5, !dbg !707
  br i1 %cmp, label %if.then, label %if.end, !dbg !710

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.26, ptr noundef %fds, i32 noundef %fd_limit, ptr noundef %buf, i64 noundef %size, i32 noundef %num, i32 noundef %fd), !dbg !711
  %1 = load ptr, ptr @stdout, align 8, !dbg !711, !tbaa !63
  %call1 = tail call i32 @fflush(ptr noundef %1), !dbg !711
  br label %if.end, !dbg !711

if.end:                                           ; preds = %if.then, %entry
  %cmp2 = icmp sgt i32 %fd, -1, !dbg !713
  %cmp3.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp2, %cmp3.not, !dbg !715
  br i1 %or.cond, label %if.end6, label %if.then4, !dbg !715

if.then4:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8, !dbg !716, !tbaa !63
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20, !dbg !718
  tail call void @exit(i32 noundef 1) #21, !dbg !719
  unreachable, !dbg !719

if.end6:                                          ; preds = %if.end
  %idxprom112 = zext i32 %fd to i64, !dbg !720
  %open = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom112, i32 3, !dbg !722
  %3 = load i32, ptr %open, align 8, !dbg !722, !tbaa !78
  %cmp7.not = icmp eq i32 %3, 1, !dbg !723
  br i1 %cmp7.not, label %if.end10, label %if.then8, !dbg !724

if.then8:                                         ; preds = %if.end6
  %4 = load ptr, ptr @stderr, align 8, !dbg !725, !tbaa !63
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.28, i32 noundef %fd, ptr noundef nonnull %fds) #20, !dbg !727
  tail call void @exit(i32 noundef 1) #21, !dbg !728
  unreachable, !dbg !728

if.end10:                                         ; preds = %if.end6
  %pos = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom112, i32 2, !dbg !729
  %5 = load i64, ptr %pos, align 8, !dbg !729, !tbaa !473
  %len = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom112, i32 1, !dbg !731
  %6 = load i64, ptr %len, align 8, !dbg !731, !tbaa !233
  %cmp15.not = icmp sgt i64 %6, %5, !dbg !732
  br i1 %cmp15.not, label %if.end22, label %if.then16, !dbg !733

if.then16:                                        ; preds = %if.end10
  %7 = load i32, ptr @dbglvl, align 4, !dbg !734, !tbaa !56
  %cmp17 = icmp sgt i32 %7, 5, !dbg !734
  br i1 %cmp17, label %if.then18, label %cleanup, !dbg !738

if.then18:                                        ; preds = %if.then16
  %puts = tail call i32 @puts(ptr nonnull @str.87), !dbg !739
  br label %cleanup.sink.split, !dbg !739

if.end22:                                         ; preds = %if.end10
  %conv = sext i32 %num to i64, !dbg !741
  %mul = mul nsw i64 %conv, %size, !dbg !743
  %add = add nsw i64 %5, %mul, !dbg !744
  %cmp29.not = icmp slt i64 %add, %6, !dbg !745
  br i1 %cmp29.not, label %if.end39, label %if.then31, !dbg !746

if.then31:                                        ; preds = %if.end22
  %sub = sub nsw i64 %6, %5, !dbg !747
  %div = sdiv i64 %sub, %size, !dbg !749
  call void @llvm.dbg.value(metadata i64 %div, metadata !705, metadata !DIExpression()), !dbg !706
  %.pre = mul nsw i64 %div, %size, !dbg !750
  br label %if.end39, !dbg !751

if.end39:                                         ; preds = %if.end22, %if.then31
  %mul47.pre-phi = phi i64 [ %mul, %if.end22 ], [ %.pre, %if.then31 ], !dbg !750
  %rc.0 = phi i64 [ %conv, %if.end22 ], [ %div, %if.then31 ], !dbg !752
  call void @llvm.dbg.value(metadata i64 %rc.0, metadata !705, metadata !DIExpression()), !dbg !706
  %buf42 = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom112, i32 4, !dbg !753
  %8 = load ptr, ptr %buf42, align 8, !dbg !753, !tbaa !86
  %arrayidx46 = getelementptr inbounds i8, ptr %8, i64 %5, !dbg !754
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %buf, ptr align 1 %arrayidx46, i64 %rc.0, i1 false), !dbg !755
  %9 = load i64, ptr %pos, align 8, !dbg !756, !tbaa !473
  %add51 = add nsw i64 %9, %mul47.pre-phi, !dbg !756
  store i64 %add51, ptr %pos, align 8, !dbg !756, !tbaa !473
  %10 = load i32, ptr @dbglvl, align 4, !dbg !757, !tbaa !56
  %cmp52 = icmp sgt i32 %10, 5, !dbg !757
  br i1 %cmp52, label %if.end58, label %cleanup, !dbg !760

if.end58:                                         ; preds = %if.end39
  %call56 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.30, i64 noundef %mul47.pre-phi), !dbg !761
  %11 = load ptr, ptr @stdout, align 8, !dbg !761, !tbaa !63
  %call57 = tail call i32 @fflush(ptr noundef %11), !dbg !761
  %.pr = load i32, ptr @dbglvl, align 4, !dbg !763, !tbaa !56
  %cmp59 = icmp sgt i32 %.pr, 5, !dbg !763
  br i1 %cmp59, label %if.then61, label %cleanup, !dbg !766

if.then61:                                        ; preds = %if.end58
  %12 = load i64, ptr %pos, align 8, !dbg !767, !tbaa !473
  %call65 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.31, i32 noundef %fd, ptr noundef nonnull %fds, i64 noundef %12), !dbg !767
  br label %cleanup.sink.split, !dbg !767

cleanup.sink.split:                               ; preds = %if.then18, %if.then61
  %retval.0.ph = phi i64 [ %rc.0, %if.then61 ], [ 0, %if.then18 ]
  %13 = load ptr, ptr @stdout, align 8, !dbg !706, !tbaa !63
  %call66 = tail call i32 @fflush(ptr noundef %13), !dbg !706
  br label %cleanup, !dbg !769

cleanup:                                          ; preds = %cleanup.sink.split, %if.end39, %if.end58, %if.then16
  %retval.0 = phi i64 [ 0, %if.then16 ], [ %rc.0, %if.end58 ], [ %rc.0, %if.end39 ], [ %retval.0.ph, %cleanup.sink.split ], !dbg !706
  ret i64 %retval.0, !dbg !769
}

; Function Attrs: nounwind uwtable
define dso_local i32 @spec_mem_getc(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd) local_unnamed_addr #0 !dbg !770 {
entry:
  call void @llvm.dbg.value(metadata ptr %fds, metadata !774, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i32 %fd_limit, metadata !775, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i32 %fd, metadata !776, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i32 0, metadata !777, metadata !DIExpression()), !dbg !778
  %0 = load i32, ptr @dbglvl, align 4, !dbg !779, !tbaa !56
  %cmp = icmp sgt i32 %0, 6, !dbg !779
  br i1 %cmp, label %if.then, label %if.end, !dbg !782

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.32, ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd), !dbg !783
  %1 = load ptr, ptr @stdout, align 8, !dbg !783, !tbaa !63
  %call1 = tail call i32 @fflush(ptr noundef %1), !dbg !783
  br label %if.end, !dbg !783

if.end:                                           ; preds = %if.then, %entry
  %cmp2 = icmp sgt i32 %fd, -1, !dbg !785
  %cmp3.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp2, %cmp3.not, !dbg !787
  br i1 %or.cond, label %if.end6, label %if.then4, !dbg !787

if.then4:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8, !dbg !788, !tbaa !63
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.33, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20, !dbg !790
  tail call void @exit(i32 noundef 1) #21, !dbg !791
  unreachable, !dbg !791

if.end6:                                          ; preds = %if.end
  %idxprom67 = zext i32 %fd to i64, !dbg !792
  %open = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom67, i32 3, !dbg !794
  %3 = load i32, ptr %open, align 8, !dbg !794, !tbaa !78
  %cmp7.not = icmp eq i32 %3, 1, !dbg !795
  br i1 %cmp7.not, label %if.end10, label %if.then8, !dbg !796

if.then8:                                         ; preds = %if.end6
  %4 = load ptr, ptr @stderr, align 8, !dbg !797, !tbaa !63
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.34, i32 noundef %fd, ptr noundef nonnull %fds) #20, !dbg !799
  tail call void @exit(i32 noundef 1) #21, !dbg !800
  unreachable, !dbg !800

if.end10:                                         ; preds = %if.end6
  %pos = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom67, i32 2, !dbg !801
  %5 = load i64, ptr %pos, align 8, !dbg !801, !tbaa !473
  %len = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom67, i32 1, !dbg !803
  %6 = load i64, ptr %len, align 8, !dbg !803, !tbaa !233
  %cmp15.not = icmp slt i64 %5, %6, !dbg !804
  br i1 %cmp15.not, label %if.end22, label %if.then16, !dbg !805

if.then16:                                        ; preds = %if.end10
  %7 = load i32, ptr @dbglvl, align 4, !dbg !806, !tbaa !56
  %cmp17 = icmp sgt i32 %7, 6, !dbg !806
  br i1 %cmp17, label %if.then18, label %cleanup, !dbg !810

if.then18:                                        ; preds = %if.then16
  %puts = tail call i32 @puts(ptr nonnull @str.87), !dbg !811
  br label %cleanup.sink.split, !dbg !811

if.end22:                                         ; preds = %if.end10
  %buf = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom67, i32 4, !dbg !813
  %8 = load ptr, ptr %buf, align 8, !dbg !813, !tbaa !86
  %inc = add nsw i64 %5, 1, !dbg !814
  store i64 %inc, ptr %pos, align 8, !dbg !814, !tbaa !473
  %arrayidx28 = getelementptr inbounds i8, ptr %8, i64 %5, !dbg !815
  %9 = load i8, ptr %arrayidx28, align 1, !dbg !815, !tbaa !119
  %conv = zext i8 %9 to i32, !dbg !815
  call void @llvm.dbg.value(metadata i32 %conv, metadata !777, metadata !DIExpression()), !dbg !778
  %10 = load i32, ptr @dbglvl, align 4, !dbg !816, !tbaa !56
  %cmp29 = icmp sgt i32 %10, 6, !dbg !816
  br i1 %cmp29, label %if.then31, label %if.end34, !dbg !819

if.then31:                                        ; preds = %if.end22
  %call32 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.24, i32 noundef %conv), !dbg !820
  %11 = load ptr, ptr @stdout, align 8, !dbg !820, !tbaa !63
  %call33 = tail call i32 @fflush(ptr noundef %11), !dbg !820
  %.pr = load i32, ptr @dbglvl, align 4, !dbg !822, !tbaa !56
  br label %if.end34, !dbg !820

if.end34:                                         ; preds = %if.then31, %if.end22
  %12 = phi i32 [ %.pr, %if.then31 ], [ %10, %if.end22 ], !dbg !822
  %cmp35 = icmp sgt i32 %12, 5, !dbg !822
  br i1 %cmp35, label %if.then37, label %cleanup, !dbg !825

if.then37:                                        ; preds = %if.end34
  %13 = load i64, ptr %pos, align 8, !dbg !826, !tbaa !473
  %call41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.35, i32 noundef %fd, ptr noundef nonnull %fds, i64 noundef %13), !dbg !826
  br label %cleanup.sink.split, !dbg !826

cleanup.sink.split:                               ; preds = %if.then18, %if.then37
  %retval.0.ph = phi i32 [ %conv, %if.then37 ], [ -1, %if.then18 ]
  %14 = load ptr, ptr @stdout, align 8, !dbg !778, !tbaa !63
  %call42 = tail call i32 @fflush(ptr noundef %14), !dbg !778
  br label %cleanup, !dbg !828

cleanup:                                          ; preds = %cleanup.sink.split, %if.end34, %if.then16
  %retval.0 = phi i32 [ -1, %if.then16 ], [ %conv, %if.end34 ], [ %retval.0.ph, %cleanup.sink.split ], !dbg !778
  ret i32 %retval.0, !dbg !828
}

; Function Attrs: nounwind uwtable
define dso_local i32 @spec_mem_ungetc(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef returned %ch, i32 noundef %fd) local_unnamed_addr #0 !dbg !829 {
entry:
  call void @llvm.dbg.value(metadata ptr %fds, metadata !833, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i32 %fd_limit, metadata !834, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i32 %ch, metadata !835, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i32 %fd, metadata !836, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i32 0, metadata !837, metadata !DIExpression()), !dbg !838
  %0 = load i32, ptr @dbglvl, align 4, !dbg !839, !tbaa !56
  %cmp = icmp sgt i32 %0, 6, !dbg !839
  br i1 %cmp, label %if.then, label %if.end, !dbg !842

if.then:                                          ; preds = %entry
  %conv1 = and i32 %ch, 255, !dbg !843
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.36, ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %conv1, i32 noundef %fd), !dbg !843
  %1 = load ptr, ptr @stdout, align 8, !dbg !843, !tbaa !63
  %call2 = tail call i32 @fflush(ptr noundef %1), !dbg !843
  br label %if.end, !dbg !843

if.end:                                           ; preds = %if.then, %entry
  %cmp3 = icmp sgt i32 %fd, -1, !dbg !845
  %cmp5.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp3, %cmp5.not, !dbg !847
  br i1 %or.cond, label %if.end9, label %if.then7, !dbg !847

if.then7:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8, !dbg !848, !tbaa !63
  %call8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.37, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20, !dbg !850
  tail call void @exit(i32 noundef 1) #21, !dbg !851
  unreachable, !dbg !851

if.end9:                                          ; preds = %if.end
  %idxprom76 = zext i32 %fd to i64, !dbg !852
  %open = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom76, i32 3, !dbg !854
  %3 = load i32, ptr %open, align 8, !dbg !854, !tbaa !78
  %cmp10.not = icmp eq i32 %3, 1, !dbg !855
  br i1 %cmp10.not, label %if.end14, label %if.then12, !dbg !856

if.then12:                                        ; preds = %if.end9
  %4 = load ptr, ptr @stderr, align 8, !dbg !857, !tbaa !63
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.38, i32 noundef %fd, ptr noundef nonnull %fds) #20, !dbg !859
  tail call void @exit(i32 noundef 1) #21, !dbg !860
  unreachable, !dbg !860

if.end14:                                         ; preds = %if.end9
  %pos = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom76, i32 2, !dbg !861
  %5 = load i64, ptr %pos, align 8, !dbg !861, !tbaa !473
  %cmp17 = icmp slt i64 %5, 1, !dbg !863
  br i1 %cmp17, label %if.then19, label %if.end24, !dbg !864

if.then19:                                        ; preds = %if.end14
  %6 = load ptr, ptr @stderr, align 8, !dbg !865, !tbaa !63
  %call23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.39, i64 noundef %5) #20, !dbg !867
  tail call void @exit(i32 noundef 1) #21, !dbg !868
  unreachable, !dbg !868

if.end24:                                         ; preds = %if.end14
  %buf = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom76, i32 4, !dbg !869
  %7 = load ptr, ptr %buf, align 8, !dbg !869, !tbaa !86
  %dec = add nsw i64 %5, -1, !dbg !871
  store i64 %dec, ptr %pos, align 8, !dbg !871, !tbaa !473
  %arrayidx30 = getelementptr inbounds i8, ptr %7, i64 %dec, !dbg !872
  %8 = load i8, ptr %arrayidx30, align 1, !dbg !872, !tbaa !119
  %conv31 = zext i8 %8 to i32, !dbg !872
  %cmp32.not = icmp eq i32 %conv31, %ch, !dbg !873
  br i1 %cmp32.not, label %if.end36, label %if.then34, !dbg !874

if.then34:                                        ; preds = %if.end24
  %9 = load ptr, ptr @stderr, align 8, !dbg !875, !tbaa !63
  %10 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 75, i64 1, ptr %9) #20, !dbg !877
  tail call void @exit(i32 noundef 1) #21, !dbg !878
  unreachable, !dbg !878

if.end36:                                         ; preds = %if.end24
  %11 = load i32, ptr @dbglvl, align 4, !dbg !879, !tbaa !56
  %cmp37 = icmp sgt i32 %11, 6, !dbg !879
  br i1 %cmp37, label %if.then39, label %if.end42, !dbg !882

if.then39:                                        ; preds = %if.end36
  %call40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.24, i32 noundef 0), !dbg !883
  %12 = load ptr, ptr @stdout, align 8, !dbg !883, !tbaa !63
  %call41 = tail call i32 @fflush(ptr noundef %12), !dbg !883
  %.pr = load i32, ptr @dbglvl, align 4, !dbg !885, !tbaa !56
  br label %if.end42, !dbg !883

if.end42:                                         ; preds = %if.then39, %if.end36
  %13 = phi i32 [ %.pr, %if.then39 ], [ %11, %if.end36 ], !dbg !885
  %cmp43 = icmp sgt i32 %13, 5, !dbg !885
  br i1 %cmp43, label %if.then45, label %if.end51, !dbg !888

if.then45:                                        ; preds = %if.end42
  %14 = load i64, ptr %pos, align 8, !dbg !889, !tbaa !473
  %call49 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.41, i32 noundef %fd, ptr noundef nonnull %fds, i64 noundef %14), !dbg !889
  %15 = load ptr, ptr @stdout, align 8, !dbg !889, !tbaa !63
  %call50 = tail call i32 @fflush(ptr noundef %15), !dbg !889
  br label %if.end51, !dbg !889

if.end51:                                         ; preds = %if.then45, %if.end42
  ret i32 %ch, !dbg !891
}

; Function Attrs: nounwind uwtable
define dso_local i64 @spec_mem_lseek(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd, i64 noundef %offset, i32 noundef %whence) local_unnamed_addr #0 !dbg !892 {
entry:
  call void @llvm.dbg.value(metadata ptr %fds, metadata !896, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i32 %fd_limit, metadata !897, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i32 %fd, metadata !898, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i64 %offset, metadata !899, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i32 %whence, metadata !900, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i64 -1, metadata !901, metadata !DIExpression()), !dbg !902
  %cmp = icmp sgt i32 %fd, -1, !dbg !903
  %cmp1.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp, %cmp1.not, !dbg !905
  br i1 %or.cond, label %if.end, label %if.then, !dbg !905

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !906, !tbaa !63
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20, !dbg !908
  tail call void @exit(i32 noundef 1) #21, !dbg !909
  unreachable, !dbg !909

if.end:                                           ; preds = %entry
  %idxprom118 = zext i32 %fd to i64, !dbg !910
  %open = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom118, i32 3, !dbg !912
  %1 = load i32, ptr %open, align 8, !dbg !912, !tbaa !78
  %cmp2.not = icmp eq i32 %1, 1, !dbg !913
  br i1 %cmp2.not, label %if.end6, label %if.then3, !dbg !914

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8, !dbg !915, !tbaa !63
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.43, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %fd, i64 noundef %offset, i32 noundef %whence) #20, !dbg !917
  %call5 = tail call ptr @__errno_location() #23, !dbg !918
  store i32 9, ptr %call5, align 4, !dbg !919, !tbaa !56
  br label %cleanup, !dbg !920

if.end6:                                          ; preds = %if.end
  %pos = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom118, i32 2, !dbg !921
  %3 = load i64, ptr %pos, align 8, !dbg !921, !tbaa !473
  call void @llvm.dbg.value(metadata i64 %3, metadata !901, metadata !DIExpression()), !dbg !902
  %4 = load i32, ptr @dbglvl, align 4, !dbg !922, !tbaa !56
  %cmp9 = icmp sgt i32 %4, 4, !dbg !922
  br i1 %cmp9, label %if.then10, label %if.end13, !dbg !925

if.then10:                                        ; preds = %if.end6
  %call11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.44, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %fd, i64 noundef %offset, i32 noundef %whence, i64 noundef %3), !dbg !926
  %5 = load ptr, ptr @stdout, align 8, !dbg !926, !tbaa !63
  %call12 = tail call i32 @fflush(ptr noundef %5), !dbg !926
  br label %if.end13, !dbg !926

if.end13:                                         ; preds = %if.then10, %if.end6
  switch i32 %whence, label %if.else33 [
    i32 0, label %if.end45
    i32 1, label %if.end45.sink.split
    i32 2, label %if.then26
  ], !dbg !928

if.then26:                                        ; preds = %if.end13
  %len = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom118, i32 1, !dbg !929
  br label %if.end45.sink.split

if.else33:                                        ; preds = %if.end13
  %6 = load i32, ptr @dbglvl, align 4, !dbg !933, !tbaa !56
  %cmp34 = icmp sgt i32 %6, 4, !dbg !933
  br i1 %cmp34, label %if.then35, label %if.end41, !dbg !937

if.then35:                                        ; preds = %if.else33
  %7 = load i64, ptr %pos, align 8, !dbg !938, !tbaa !473
  %call39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.45, i64 noundef %7), !dbg !938
  %8 = load ptr, ptr @stdout, align 8, !dbg !938, !tbaa !63
  %call40 = tail call i32 @fflush(ptr noundef %8), !dbg !938
  br label %if.end41, !dbg !938

if.end41:                                         ; preds = %if.then35, %if.else33
  %call42 = tail call ptr @__errno_location() #23, !dbg !940
  store i32 22, ptr %call42, align 4, !dbg !941, !tbaa !56
  br label %cleanup, !dbg !942

if.end45.sink.split:                              ; preds = %if.end13, %if.then26
  %pos.sink = phi ptr [ %len, %if.then26 ], [ %pos, %if.end13 ]
  %9 = load i64, ptr %pos.sink, align 8, !dbg !943, !tbaa !944
  %add = add nsw i64 %9, %offset, !dbg !943
  br label %if.end45, !dbg !945

if.end45:                                         ; preds = %if.end45.sink.split, %if.end13
  %add.sink = phi i64 [ %offset, %if.end13 ], [ %add, %if.end45.sink.split ]
  store i64 %add.sink, ptr %pos, align 8, !dbg !945, !tbaa !473
  %cmp49 = icmp slt i64 %add.sink, 0, !dbg !946
  %10 = load i32, ptr @dbglvl, align 4, !dbg !902, !tbaa !56
  %cmp51 = icmp sgt i32 %10, 4, !dbg !902
  br i1 %cmp49, label %if.then50, label %if.end63, !dbg !948

if.then50:                                        ; preds = %if.end45
  br i1 %cmp51, label %if.then52, label %if.end58, !dbg !949

if.then52:                                        ; preds = %if.then50
  %call56 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.46, i64 noundef %3, i64 noundef %add.sink), !dbg !952
  %11 = load ptr, ptr @stdout, align 8, !dbg !952, !tbaa !63
  %call57 = tail call i32 @fflush(ptr noundef %11), !dbg !952
  br label %if.end58, !dbg !952

if.end58:                                         ; preds = %if.then52, %if.then50
  store i64 %3, ptr %pos, align 8, !dbg !955, !tbaa !473
  %call62 = tail call ptr @__errno_location() #23, !dbg !956
  store i32 22, ptr %call62, align 4, !dbg !957, !tbaa !56
  br label %cleanup, !dbg !958

if.end63:                                         ; preds = %if.end45
  br i1 %cmp51, label %if.then65, label %cleanup, !dbg !959

if.then65:                                        ; preds = %if.end63
  %call69 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.47, i64 noundef %add.sink), !dbg !961
  %12 = load ptr, ptr @stdout, align 8, !dbg !961, !tbaa !63
  %call70 = tail call i32 @fflush(ptr noundef %12), !dbg !961
  %.pre = load i64, ptr %pos, align 8, !dbg !964, !tbaa !473
  br label %cleanup, !dbg !961

cleanup:                                          ; preds = %if.end63, %if.then65, %if.end58, %if.end41, %if.then3
  %retval.0 = phi i64 [ -1, %if.then3 ], [ -1, %if.end58 ], [ -1, %if.end41 ], [ %.pre, %if.then65 ], [ %add.sink, %if.end63 ], !dbg !902
  ret i64 %retval.0, !dbg !965
}

; Function Attrs: nounwind uwtable
define dso_local i32 @spec_mem_rewind(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd) local_unnamed_addr #0 !dbg !966 {
entry:
  call void @llvm.dbg.value(metadata ptr %fds, metadata !968, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i32 %fd_limit, metadata !969, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i32 %fd, metadata !970, metadata !DIExpression()), !dbg !971
  %0 = load i32, ptr @dbglvl, align 4, !dbg !972, !tbaa !56
  %cmp = icmp sgt i32 %0, 4, !dbg !972
  br i1 %cmp, label %if.then, label %if.end, !dbg !975

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.48, ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd), !dbg !976
  %1 = load ptr, ptr @stdout, align 8, !dbg !976, !tbaa !63
  %call1 = tail call i32 @fflush(ptr noundef %1), !dbg !976
  br label %if.end, !dbg !976

if.end:                                           ; preds = %if.then, %entry
  %call2 = tail call i64 @spec_mem_lseek(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd, i64 noundef 0, i32 noundef 0), !dbg !978
  ret i32 0, !dbg !979
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @spec_mem_reset(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd) local_unnamed_addr #11 !dbg !980 {
entry:
  call void @llvm.dbg.value(metadata ptr %fds, metadata !982, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i32 %fd_limit, metadata !983, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i32 %fd, metadata !984, metadata !DIExpression()), !dbg !985
  %0 = load i32, ptr @dbglvl, align 4, !dbg !986, !tbaa !56
  %cmp = icmp sgt i32 %0, 4, !dbg !986
  br i1 %cmp, label %if.then, label %if.end, !dbg !989

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.49, ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd), !dbg !990
  %1 = load ptr, ptr @stdout, align 8, !dbg !990, !tbaa !63
  %call1 = tail call i32 @fflush(ptr noundef %1), !dbg !990
  br label %if.end, !dbg !990

if.end:                                           ; preds = %if.then, %entry
  %idxprom = sext i32 %fd to i64, !dbg !992
  %buf = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, i32 4, !dbg !993
  %2 = load ptr, ptr %buf, align 8, !dbg !993, !tbaa !86
  %len = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, i32 1, !dbg !994
  %3 = load i64, ptr %len, align 8, !dbg !994, !tbaa !233
  tail call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %3, i1 false), !dbg !995
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %len, i8 0, i64 16, i1 false), !dbg !996
  %4 = load i32, ptr @dbglvl, align 4, !dbg !997, !tbaa !56
  %cmp9 = icmp sgt i32 %4, 5, !dbg !997
  br i1 %cmp9, label %if.then10, label %if.end16, !dbg !1000

if.then10:                                        ; preds = %if.end
  %call14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.50, i32 noundef %fd, ptr noundef nonnull %fds, i64 noundef 0), !dbg !1001
  %5 = load ptr, ptr @stdout, align 8, !dbg !1001, !tbaa !63
  %call15 = tail call i32 @fflush(ptr noundef %5), !dbg !1001
  br label %if.end16, !dbg !1001

if.end16:                                         ; preds = %if.then10, %if.end
  ret i32 0, !dbg !1003
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @spec_mem_get_length(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd) local_unnamed_addr #11 !dbg !1004 {
entry:
  call void @llvm.dbg.value(metadata ptr %fds, metadata !1008, metadata !DIExpression()), !dbg !1011
  call void @llvm.dbg.value(metadata i32 %fd_limit, metadata !1009, metadata !DIExpression()), !dbg !1011
  call void @llvm.dbg.value(metadata i32 %fd, metadata !1010, metadata !DIExpression()), !dbg !1011
  %idxprom = sext i32 %fd to i64, !dbg !1012
  %open = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, i32 3, !dbg !1014
  %0 = load i32, ptr %open, align 8, !dbg !1014, !tbaa !78
  %cmp.not = icmp eq i32 %0, 1, !dbg !1015
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1016

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !1017, !tbaa !63
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.51, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %fd) #20, !dbg !1019
  br label %return, !dbg !1020

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @dbglvl, align 4, !dbg !1021, !tbaa !56
  %cmp1 = icmp sgt i32 %2, 4, !dbg !1021
  br i1 %cmp1, label %if.then2, label %if.end7, !dbg !1024

if.then2:                                         ; preds = %if.end
  %len = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, i32 1, !dbg !1025
  %3 = load i64, ptr %len, align 8, !dbg !1025, !tbaa !233
  %call5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.52, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %fd, i64 noundef %3), !dbg !1025
  %4 = load ptr, ptr @stdout, align 8, !dbg !1025, !tbaa !63
  %call6 = tail call i32 @fflush(ptr noundef %4), !dbg !1025
  br label %if.end7, !dbg !1025

if.end7:                                          ; preds = %if.then2, %if.end
  %len10 = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, i32 1, !dbg !1027
  %5 = load i64, ptr %len10, align 8, !dbg !1027, !tbaa !233
  br label %return, !dbg !1028

return:                                           ; preds = %if.end7, %if.then
  %retval.0 = phi i64 [ -1, %if.then ], [ %5, %if.end7 ], !dbg !1011
  ret i64 %retval.0, !dbg !1029
}

; Function Attrs: nounwind uwtable
define dso_local i32 @spec_mem_fopen(ptr noundef %fds, i32 noundef %fd_limit, ptr noundef %filename, ptr noundef %mode) local_unnamed_addr #0 !dbg !1030 {
entry:
  call void @llvm.dbg.value(metadata ptr %fds, metadata !1034, metadata !DIExpression()), !dbg !1039
  call void @llvm.dbg.value(metadata i32 %fd_limit, metadata !1035, metadata !DIExpression()), !dbg !1039
  call void @llvm.dbg.value(metadata ptr %filename, metadata !1036, metadata !DIExpression()), !dbg !1039
  call void @llvm.dbg.value(metadata ptr %mode, metadata !1037, metadata !DIExpression()), !dbg !1039
  %call = tail call i64 @strtol(ptr nocapture noundef %filename, ptr noundef null, i32 noundef 10) #22, !dbg !1040
  %conv = trunc i64 %call to i32, !dbg !1041
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1038, metadata !DIExpression()), !dbg !1039
  %cmp = icmp sgt i32 %conv, -1, !dbg !1042
  %cmp2.not = icmp ult i32 %conv, %fd_limit
  %or.cond = and i1 %cmp, %cmp2.not, !dbg !1044
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1044

if.then:                                          ; preds = %entry
  %call4 = tail call ptr @__errno_location() #23, !dbg !1045
  store i32 2, ptr %call4, align 4, !dbg !1047, !tbaa !56
  br label %cleanup, !dbg !1048

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @dbglvl, align 4, !dbg !1049, !tbaa !56
  %cmp5 = icmp sgt i32 %0, 4, !dbg !1049
  br i1 %cmp5, label %if.then7, label %if.end10, !dbg !1052

if.then7:                                         ; preds = %if.end
  %call8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.53, ptr noundef %fds, i32 noundef %fd_limit, ptr noundef %filename, ptr noundef %mode, i32 noundef %conv), !dbg !1053
  %1 = load ptr, ptr @stdout, align 8, !dbg !1053, !tbaa !63
  %call9 = tail call i32 @fflush(ptr noundef %1), !dbg !1053
  br label %if.end10, !dbg !1053

if.end10:                                         ; preds = %if.then7, %if.end
  %sext = shl i64 %call, 32, !dbg !1055
  %idxprom = ashr exact i64 %sext, 32, !dbg !1055
  %open = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, i32 3, !dbg !1056
  store i32 1, ptr %open, align 8, !dbg !1057, !tbaa !78
  %2 = load i8, ptr %mode, align 1, !dbg !1058, !tbaa !119
  switch i8 %2, label %cleanup [
    i8 119, label %if.then15
    i8 114, label %if.then31
  ], !dbg !1060

if.then15:                                        ; preds = %if.end10
  %arrayidx16 = getelementptr inbounds i8, ptr %mode, i64 1, !dbg !1061
  %3 = load i8, ptr %arrayidx16, align 1, !dbg !1061, !tbaa !119
  %cmp18 = icmp eq i8 %3, 43, !dbg !1064
  br i1 %cmp18, label %if.then20, label %if.else, !dbg !1065

if.then20:                                        ; preds = %if.then15
  %pos = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, i32 2, !dbg !1066
  %4 = load i64, ptr %pos, align 8, !dbg !1066, !tbaa !473
  %call23 = tail call i64 @spec_mem_lseek(ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv, i64 noundef %4, i32 noundef 0), !dbg !1067
  br label %cleanup, !dbg !1067

if.else:                                          ; preds = %if.then15
  call void @llvm.dbg.value(metadata ptr %fds, metadata !982, metadata !DIExpression()) #22, !dbg !1068
  call void @llvm.dbg.value(metadata i32 %fd_limit, metadata !983, metadata !DIExpression()) #22, !dbg !1068
  call void @llvm.dbg.value(metadata i32 %conv, metadata !984, metadata !DIExpression()) #22, !dbg !1068
  %5 = load i32, ptr @dbglvl, align 4, !dbg !1070, !tbaa !56
  %cmp.i = icmp sgt i32 %5, 4, !dbg !1070
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !1071

if.then.i:                                        ; preds = %if.else
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.49, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv) #22, !dbg !1072
  %6 = load ptr, ptr @stdout, align 8, !dbg !1072, !tbaa !63
  %call1.i = tail call i32 @fflush(ptr noundef %6) #22, !dbg !1072
  br label %if.end.i, !dbg !1072

if.end.i:                                         ; preds = %if.then.i, %if.else
  %idxprom.i61 = and i64 %call, 4294967295, !dbg !1073
  %buf.i = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom.i61, i32 4, !dbg !1074
  %7 = load ptr, ptr %buf.i, align 8, !dbg !1074, !tbaa !86
  %len.i = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom.i61, i32 1, !dbg !1075
  %8 = load i64, ptr %len.i, align 8, !dbg !1075, !tbaa !233
  tail call void @llvm.memset.p0.i64(ptr align 1 %7, i8 0, i64 %8, i1 false) #22, !dbg !1076
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %len.i, i8 0, i64 16, i1 false) #22, !dbg !1077
  %9 = load i32, ptr @dbglvl, align 4, !dbg !1078, !tbaa !56
  %cmp9.i = icmp sgt i32 %9, 5, !dbg !1078
  br i1 %cmp9.i, label %if.then10.i, label %cleanup, !dbg !1079

if.then10.i:                                      ; preds = %if.end.i
  %call14.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.50, i32 noundef %conv, ptr noundef nonnull %fds, i64 noundef 0) #22, !dbg !1080
  %10 = load ptr, ptr @stdout, align 8, !dbg !1080, !tbaa !63
  %call15.i = tail call i32 @fflush(ptr noundef %10) #22, !dbg !1080
  br label %cleanup, !dbg !1080

if.then31:                                        ; preds = %if.end10
  call void @llvm.dbg.value(metadata ptr %fds, metadata !968, metadata !DIExpression()) #22, !dbg !1081
  call void @llvm.dbg.value(metadata i32 %fd_limit, metadata !969, metadata !DIExpression()) #22, !dbg !1081
  call void @llvm.dbg.value(metadata i32 %conv, metadata !970, metadata !DIExpression()) #22, !dbg !1081
  %11 = load i32, ptr @dbglvl, align 4, !dbg !1084, !tbaa !56
  %cmp.i56 = icmp sgt i32 %11, 4, !dbg !1084
  br i1 %cmp.i56, label %if.then.i59, label %spec_mem_rewind.exit, !dbg !1085

if.then.i59:                                      ; preds = %if.then31
  %call.i57 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.48, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv) #22, !dbg !1086
  %12 = load ptr, ptr @stdout, align 8, !dbg !1086, !tbaa !63
  %call1.i58 = tail call i32 @fflush(ptr noundef %12) #22, !dbg !1086
  br label %spec_mem_rewind.exit, !dbg !1086

spec_mem_rewind.exit:                             ; preds = %if.then31, %if.then.i59
  %call2.i = tail call i64 @spec_mem_lseek(ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv, i64 noundef 0, i32 noundef 0) #22, !dbg !1087
  br label %cleanup, !dbg !1088

cleanup:                                          ; preds = %if.then10.i, %if.end.i, %if.then20, %spec_mem_rewind.exit, %if.end10, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %conv, %if.end10 ], [ %conv, %spec_mem_rewind.exit ], [ %conv, %if.then20 ], [ %conv, %if.end.i ], [ %conv, %if.then10.i ], !dbg !1039
  ret i32 %retval.0, !dbg !1089
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local i32 @spec_mem_open(ptr noundef %fds, i32 noundef %fd_limit, ptr noundef %filename, i32 noundef %mode) local_unnamed_addr #0 !dbg !1090 {
entry:
  call void @llvm.dbg.value(metadata ptr %fds, metadata !1094, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 %fd_limit, metadata !1095, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata ptr %filename, metadata !1096, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1097, metadata !DIExpression()), !dbg !1099
  %call = tail call i64 @strtol(ptr nocapture noundef %filename, ptr noundef null, i32 noundef 10) #22, !dbg !1100
  %conv = trunc i64 %call to i32, !dbg !1101
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1098, metadata !DIExpression()), !dbg !1099
  %cmp = icmp sgt i32 %conv, -1, !dbg !1102
  %cmp2.not = icmp ult i32 %conv, %fd_limit
  %or.cond = and i1 %cmp, %cmp2.not, !dbg !1104
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1104

if.then:                                          ; preds = %entry
  %call4 = tail call ptr @__errno_location() #23, !dbg !1105
  store i32 2, ptr %call4, align 4, !dbg !1107, !tbaa !56
  br label %cleanup, !dbg !1108

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @dbglvl, align 4, !dbg !1109, !tbaa !56
  %cmp5 = icmp sgt i32 %0, 4, !dbg !1109
  br i1 %cmp5, label %if.then7, label %if.end10, !dbg !1112

if.then7:                                         ; preds = %if.end
  %call8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.54, ptr noundef %fds, i32 noundef %fd_limit, ptr noundef %filename, i32 noundef %mode, i32 noundef %conv), !dbg !1113
  %1 = load ptr, ptr @stdout, align 8, !dbg !1113, !tbaa !63
  %call9 = tail call i32 @fflush(ptr noundef %1), !dbg !1113
  br label %if.end10, !dbg !1113

if.end10:                                         ; preds = %if.then7, %if.end
  %sext = shl i64 %call, 32, !dbg !1115
  %idxprom = ashr exact i64 %sext, 32, !dbg !1115
  %open = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, i32 3, !dbg !1116
  store i32 1, ptr %open, align 8, !dbg !1117, !tbaa !78
  %2 = and i32 %mode, 3, !dbg !1118
  %3 = icmp eq i32 %2, 0, !dbg !1118
  br i1 %3, label %if.else28, label %if.then14, !dbg !1118

if.then14:                                        ; preds = %if.end10
  %and15 = and i32 %mode, 512, !dbg !1120
  %tobool16.not = icmp eq i32 %and15, 0, !dbg !1120
  br i1 %tobool16.not, label %if.end19, label %if.then17, !dbg !1123

if.then17:                                        ; preds = %if.then14
  call void @llvm.dbg.value(metadata ptr %fds, metadata !982, metadata !DIExpression()) #22, !dbg !1124
  call void @llvm.dbg.value(metadata i32 %fd_limit, metadata !983, metadata !DIExpression()) #22, !dbg !1124
  call void @llvm.dbg.value(metadata i32 %conv, metadata !984, metadata !DIExpression()) #22, !dbg !1124
  %4 = load i32, ptr @dbglvl, align 4, !dbg !1126, !tbaa !56
  %cmp.i = icmp sgt i32 %4, 4, !dbg !1126
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !1127

if.then.i:                                        ; preds = %if.then17
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.49, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv) #22, !dbg !1128
  %5 = load ptr, ptr @stdout, align 8, !dbg !1128, !tbaa !63
  %call1.i = tail call i32 @fflush(ptr noundef %5) #22, !dbg !1128
  br label %if.end.i, !dbg !1128

if.end.i:                                         ; preds = %if.then.i, %if.then17
  %idxprom.i69 = and i64 %call, 4294967295, !dbg !1129
  %buf.i = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom.i69, i32 4, !dbg !1130
  %6 = load ptr, ptr %buf.i, align 8, !dbg !1130, !tbaa !86
  %len.i = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom.i69, i32 1, !dbg !1131
  %7 = load i64, ptr %len.i, align 8, !dbg !1131, !tbaa !233
  tail call void @llvm.memset.p0.i64(ptr align 1 %6, i8 0, i64 %7, i1 false) #22, !dbg !1132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %len.i, i8 0, i64 16, i1 false) #22, !dbg !1133
  %8 = load i32, ptr @dbglvl, align 4, !dbg !1134, !tbaa !56
  %cmp9.i = icmp sgt i32 %8, 5, !dbg !1134
  br i1 %cmp9.i, label %if.then10.i, label %if.end19, !dbg !1135

if.then10.i:                                      ; preds = %if.end.i
  %call14.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.50, i32 noundef %conv, ptr noundef nonnull %fds, i64 noundef 0) #22, !dbg !1136
  %9 = load ptr, ptr @stdout, align 8, !dbg !1136, !tbaa !63
  %call15.i = tail call i32 @fflush(ptr noundef %9) #22, !dbg !1136
  br label %if.end19, !dbg !1136

if.end19:                                         ; preds = %if.then10.i, %if.end.i, %if.then14
  %and20 = and i32 %mode, 1024, !dbg !1137
  %tobool21.not = icmp eq i32 %and20, 0, !dbg !1137
  br i1 %tobool21.not, label %if.else, label %if.then22, !dbg !1139

if.then22:                                        ; preds = %if.end19
  %pos = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, i32 2, !dbg !1140
  %10 = load i64, ptr %pos, align 8, !dbg !1140, !tbaa !473
  %call25 = tail call i64 @spec_mem_lseek(ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv, i64 noundef %10, i32 noundef 0), !dbg !1141
  br label %cleanup, !dbg !1141

if.else:                                          ; preds = %if.end19
  call void @llvm.dbg.value(metadata ptr %fds, metadata !968, metadata !DIExpression()) #22, !dbg !1142
  call void @llvm.dbg.value(metadata i32 %fd_limit, metadata !969, metadata !DIExpression()) #22, !dbg !1142
  call void @llvm.dbg.value(metadata i32 %conv, metadata !970, metadata !DIExpression()) #22, !dbg !1142
  %11 = load i32, ptr @dbglvl, align 4, !dbg !1144, !tbaa !56
  %cmp.i57 = icmp sgt i32 %11, 4, !dbg !1144
  br i1 %cmp.i57, label %if.then.i60, label %spec_mem_rewind.exit, !dbg !1145

if.then.i60:                                      ; preds = %if.else
  %call.i58 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.48, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv) #22, !dbg !1146
  %12 = load ptr, ptr @stdout, align 8, !dbg !1146, !tbaa !63
  %call1.i59 = tail call i32 @fflush(ptr noundef %12) #22, !dbg !1146
  br label %spec_mem_rewind.exit, !dbg !1146

spec_mem_rewind.exit:                             ; preds = %if.else, %if.then.i60
  %call2.i = tail call i64 @spec_mem_lseek(ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv, i64 noundef 0, i32 noundef 0) #22, !dbg !1147
  br label %cleanup

if.else28:                                        ; preds = %if.end10
  call void @llvm.dbg.value(metadata ptr %fds, metadata !968, metadata !DIExpression()) #22, !dbg !1148
  call void @llvm.dbg.value(metadata i32 %fd_limit, metadata !969, metadata !DIExpression()) #22, !dbg !1148
  call void @llvm.dbg.value(metadata i32 %conv, metadata !970, metadata !DIExpression()) #22, !dbg !1148
  %13 = load i32, ptr @dbglvl, align 4, !dbg !1150, !tbaa !56
  %cmp.i62 = icmp sgt i32 %13, 4, !dbg !1150
  br i1 %cmp.i62, label %if.then.i65, label %spec_mem_rewind.exit68, !dbg !1151

if.then.i65:                                      ; preds = %if.else28
  %call.i63 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.48, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv) #22, !dbg !1152
  %14 = load ptr, ptr @stdout, align 8, !dbg !1152, !tbaa !63
  %call1.i64 = tail call i32 @fflush(ptr noundef %14) #22, !dbg !1152
  br label %spec_mem_rewind.exit68, !dbg !1152

spec_mem_rewind.exit68:                           ; preds = %if.else28, %if.then.i65
  %call2.i66 = tail call i64 @spec_mem_lseek(ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv, i64 noundef 0, i32 noundef 0) #22, !dbg !1153
  br label %cleanup

cleanup:                                          ; preds = %spec_mem_rewind.exit68, %spec_mem_rewind.exit, %if.then22, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %conv, %if.then22 ], [ %conv, %spec_mem_rewind.exit ], [ %conv, %spec_mem_rewind.exit68 ], !dbg !1099
  ret i32 %retval.0, !dbg !1154
}

; Function Attrs: nounwind uwtable
define dso_local i64 @spec_mem_write(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd, ptr noundef %buf, i64 noundef %size) local_unnamed_addr #0 !dbg !1155 {
entry:
  call void @llvm.dbg.value(metadata ptr %fds, metadata !1157, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i32 %fd_limit, metadata !1158, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i32 %fd, metadata !1159, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata ptr %buf, metadata !1160, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i64 %size, metadata !1161, metadata !DIExpression()), !dbg !1162
  %0 = load i32, ptr @dbglvl, align 4, !dbg !1163, !tbaa !56
  %cmp = icmp sgt i32 %0, 5, !dbg !1163
  br i1 %cmp, label %if.then, label %if.end, !dbg !1166

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.55, ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd, ptr noundef %buf, i64 noundef %size), !dbg !1167
  %1 = load ptr, ptr @stdout, align 8, !dbg !1167, !tbaa !63
  %call1 = tail call i32 @fflush(ptr noundef %1), !dbg !1167
  br label %if.end, !dbg !1167

if.end:                                           ; preds = %if.then, %entry
  %cmp2 = icmp sgt i32 %fd, -1, !dbg !1169
  %cmp3.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp2, %cmp3.not, !dbg !1171
  br i1 %or.cond, label %if.end6, label %if.then4, !dbg !1171

if.then4:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8, !dbg !1172, !tbaa !63
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.56, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20, !dbg !1174
  tail call void @exit(i32 noundef 1) #21, !dbg !1175
  unreachable, !dbg !1175

if.end6:                                          ; preds = %if.end
  %idxprom100 = zext i32 %fd to i64, !dbg !1176
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom100, !dbg !1176
  %open = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom100, i32 3, !dbg !1178
  %3 = load i32, ptr %open, align 8, !dbg !1178, !tbaa !78
  %cmp7.not = icmp eq i32 %3, 1, !dbg !1179
  br i1 %cmp7.not, label %while.cond.preheader, label %if.then8, !dbg !1180

while.cond.preheader:                             ; preds = %if.end6
  %pos = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom100, i32 2
  %4 = load i64, ptr %pos, align 8, !dbg !1181, !tbaa !473
  %add101 = add nsw i64 %4, %size, !dbg !1182
  %5 = load i64, ptr %arrayidx, align 8, !dbg !1183, !tbaa !70
  %cmp16102 = icmp sgt i64 %add101, %5, !dbg !1184
  br i1 %cmp16102, label %while.body, label %while.end, !dbg !1185

if.then8:                                         ; preds = %if.end6
  %6 = load ptr, ptr @stderr, align 8, !dbg !1186, !tbaa !63
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.57, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %fd, ptr noundef %buf, i64 noundef %size) #20, !dbg !1188
  %call10 = tail call ptr @__errno_location() #23, !dbg !1189
  store i32 9, ptr %call10, align 4, !dbg !1190, !tbaa !56
  br label %return, !dbg !1191

while.body:                                       ; preds = %while.cond.preheader, %while.body
  tail call fastcc void @fd_grow(ptr noundef nonnull %fds, i32 noundef %fd, ptr noundef nonnull @.str.58), !dbg !1192
  %7 = load i64, ptr %pos, align 8, !dbg !1181, !tbaa !473
  %add = add nsw i64 %7, %size, !dbg !1182
  %8 = load i64, ptr %arrayidx, align 8, !dbg !1183, !tbaa !70
  %cmp16 = icmp sgt i64 %add, %8, !dbg !1184
  br i1 %cmp16, label %while.body, label %while.end, !dbg !1185, !llvm.loop !1194

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %.lcssa = phi i64 [ %4, %while.cond.preheader ], [ %7, %while.body ], !dbg !1181
  %buf19 = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom100, i32 4, !dbg !1196
  %9 = load ptr, ptr %buf19, align 8, !dbg !1196, !tbaa !86
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %.lcssa, !dbg !1197
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %buf, i64 %size, i1 false), !dbg !1198
  %10 = load i64, ptr %pos, align 8, !dbg !1199, !tbaa !473
  %add26 = add nsw i64 %10, %size, !dbg !1199
  store i64 %add26, ptr %pos, align 8, !dbg !1199, !tbaa !473
  %len = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom100, i32 1, !dbg !1200
  %11 = load i64, ptr %len, align 8, !dbg !1200, !tbaa !233
  %cmp32 = icmp sgt i64 %add26, %11, !dbg !1202
  br i1 %cmp32, label %if.then33, label %if.end40, !dbg !1203

if.then33:                                        ; preds = %while.end
  store i64 %add26, ptr %len, align 8, !dbg !1204, !tbaa !233
  br label %if.end40, !dbg !1205

if.end40:                                         ; preds = %if.then33, %while.end
  %12 = phi i64 [ %add26, %if.then33 ], [ %11, %while.end ]
  %13 = load i32, ptr @dbglvl, align 4, !dbg !1206, !tbaa !56
  %cmp41 = icmp sgt i32 %13, 5, !dbg !1206
  br i1 %cmp41, label %if.then42, label %return, !dbg !1209

if.then42:                                        ; preds = %if.end40
  %14 = load i64, ptr %arrayidx, align 8, !dbg !1210, !tbaa !70
  %call52 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.59, i64 noundef %size, i64 noundef %12, i64 noundef %add26, i64 noundef %14), !dbg !1210
  %15 = load ptr, ptr @stdout, align 8, !dbg !1210, !tbaa !63
  %call53 = tail call i32 @fflush(ptr noundef %15), !dbg !1210
  br label %return, !dbg !1210

return:                                           ; preds = %if.end40, %if.then42, %if.then8
  %retval.0 = phi i64 [ -1, %if.then8 ], [ %size, %if.then42 ], [ %size, %if.end40 ], !dbg !1162
  ret i64 %retval.0, !dbg !1212
}

; Function Attrs: nounwind uwtable
define dso_local i64 @spec_mem_fwrite(ptr noundef %fds, i32 noundef %fd_limit, ptr noundef %buf, i64 noundef %size, i32 noundef %num, i32 noundef %fd) local_unnamed_addr #0 !dbg !1213 {
entry:
  call void @llvm.dbg.value(metadata ptr %fds, metadata !1215, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i32 %fd_limit, metadata !1216, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata ptr %buf, metadata !1217, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i64 %size, metadata !1218, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i32 %num, metadata !1219, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i32 %fd, metadata !1220, metadata !DIExpression()), !dbg !1221
  %0 = load i32, ptr @dbglvl, align 4, !dbg !1222, !tbaa !56
  %cmp = icmp sgt i32 %0, 5, !dbg !1222
  br i1 %cmp, label %if.then, label %if.end, !dbg !1225

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.60, ptr noundef %fds, i32 noundef %fd_limit, ptr noundef %buf, i64 noundef %size, i32 noundef %num, i32 noundef %fd), !dbg !1226
  %1 = load ptr, ptr @stdout, align 8, !dbg !1226, !tbaa !63
  %call1 = tail call i32 @fflush(ptr noundef %1), !dbg !1226
  br label %if.end, !dbg !1226

if.end:                                           ; preds = %if.then, %entry
  %cmp2 = icmp sgt i32 %fd, -1, !dbg !1228
  %cmp3.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp2, %cmp3.not, !dbg !1230
  br i1 %or.cond, label %if.end6, label %if.then4, !dbg !1230

if.then4:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8, !dbg !1231, !tbaa !63
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.61, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20, !dbg !1233
  tail call void @exit(i32 noundef 1) #21, !dbg !1234
  unreachable, !dbg !1234

if.end6:                                          ; preds = %if.end
  %idxprom107 = zext i32 %fd to i64, !dbg !1235
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom107, !dbg !1235
  %open = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom107, i32 3, !dbg !1237
  %3 = load i32, ptr %open, align 8, !dbg !1237, !tbaa !78
  %cmp7.not = icmp eq i32 %3, 1, !dbg !1238
  br i1 %cmp7.not, label %while.cond.preheader, label %if.then8, !dbg !1239

while.cond.preheader:                             ; preds = %if.end6
  %pos = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom107, i32 2
  %conv = sext i32 %num to i64
  %mul = mul nsw i64 %conv, %size
  %4 = load i64, ptr %pos, align 8, !dbg !1240, !tbaa !473
  %add108 = add nsw i64 %4, %mul, !dbg !1241
  %5 = load i64, ptr %arrayidx, align 8, !dbg !1242, !tbaa !70
  %cmp15109 = icmp sgt i64 %add108, %5, !dbg !1243
  br i1 %cmp15109, label %while.body, label %while.end, !dbg !1244

if.then8:                                         ; preds = %if.end6
  %6 = load ptr, ptr @stderr, align 8, !dbg !1245, !tbaa !63
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.62, i32 noundef %fd, ptr noundef nonnull %fds) #20, !dbg !1247
  tail call void @exit(i32 noundef 1) #21, !dbg !1248
  unreachable, !dbg !1248

while.body:                                       ; preds = %while.cond.preheader, %while.body
  tail call fastcc void @fd_grow(ptr noundef nonnull %fds, i32 noundef %fd, ptr noundef nonnull @.str.63), !dbg !1249
  %7 = load i64, ptr %pos, align 8, !dbg !1240, !tbaa !473
  %add = add nsw i64 %7, %mul, !dbg !1241
  %8 = load i64, ptr %arrayidx, align 8, !dbg !1242, !tbaa !70
  %cmp15 = icmp sgt i64 %add, %8, !dbg !1243
  br i1 %cmp15, label %while.body, label %while.end, !dbg !1244, !llvm.loop !1251

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %.lcssa = phi i64 [ %4, %while.cond.preheader ], [ %7, %while.body ], !dbg !1240
  %buf19 = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom107, i32 4, !dbg !1253
  %9 = load ptr, ptr %buf19, align 8, !dbg !1253, !tbaa !86
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %.lcssa, !dbg !1254
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %buf, i64 %mul, i1 false), !dbg !1255
  %10 = load i64, ptr %pos, align 8, !dbg !1256, !tbaa !473
  %add30 = add nsw i64 %10, %mul, !dbg !1256
  store i64 %add30, ptr %pos, align 8, !dbg !1256, !tbaa !473
  %len = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom107, i32 1, !dbg !1257
  %11 = load i64, ptr %len, align 8, !dbg !1257, !tbaa !233
  %cmp36 = icmp sgt i64 %add30, %11, !dbg !1259
  br i1 %cmp36, label %if.then38, label %if.end45, !dbg !1260

if.then38:                                        ; preds = %while.end
  store i64 %add30, ptr %len, align 8, !dbg !1261, !tbaa !233
  br label %if.end45, !dbg !1262

if.end45:                                         ; preds = %if.then38, %while.end
  %12 = phi i64 [ %add30, %if.then38 ], [ %11, %while.end ]
  %13 = load i32, ptr @dbglvl, align 4, !dbg !1263, !tbaa !56
  %cmp46 = icmp sgt i32 %13, 5, !dbg !1263
  br i1 %cmp46, label %if.then48, label %if.end60, !dbg !1266

if.then48:                                        ; preds = %if.end45
  %14 = load i64, ptr %arrayidx, align 8, !dbg !1267, !tbaa !70
  %call58 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.64, i32 noundef %num, i64 noundef %12, i64 noundef %add30, i64 noundef %14), !dbg !1267
  %15 = load ptr, ptr @stdout, align 8, !dbg !1267, !tbaa !63
  %call59 = tail call i32 @fflush(ptr noundef %15), !dbg !1267
  br label %if.end60, !dbg !1267

if.end60:                                         ; preds = %if.then48, %if.end45
  ret i64 %conv, !dbg !1269
}

; Function Attrs: nounwind uwtable
define dso_local i32 @spec_mem_putc(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef returned %ch, i32 noundef %fd) local_unnamed_addr #0 !dbg !1270 {
entry:
  call void @llvm.dbg.value(metadata ptr %fds, metadata !1272, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata i32 %fd_limit, metadata !1273, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata i32 %ch, metadata !1274, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata i32 %fd, metadata !1275, metadata !DIExpression()), !dbg !1276
  %0 = load i32, ptr @dbglvl, align 4, !dbg !1277, !tbaa !56
  %cmp = icmp sgt i32 %0, 4, !dbg !1277
  br i1 %cmp, label %if.then, label %if.end, !dbg !1280

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.65, ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %ch, i32 noundef %fd), !dbg !1281
  %1 = load ptr, ptr @stdout, align 8, !dbg !1281, !tbaa !63
  %call1 = tail call i32 @fflush(ptr noundef %1), !dbg !1281
  br label %if.end, !dbg !1281

if.end:                                           ; preds = %if.then, %entry
  %cmp2 = icmp sgt i32 %fd, -1, !dbg !1283
  %cmp3.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp2, %cmp3.not, !dbg !1285
  br i1 %or.cond, label %if.end6, label %if.then4, !dbg !1285

if.then4:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8, !dbg !1286, !tbaa !63
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.66, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20, !dbg !1288
  tail call void @exit(i32 noundef 1) #21, !dbg !1289
  unreachable, !dbg !1289

if.end6:                                          ; preds = %if.end
  %idxprom76 = zext i32 %fd to i64, !dbg !1290
  %open = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom76, i32 3, !dbg !1292
  %3 = load i32, ptr %open, align 8, !dbg !1292, !tbaa !78
  %cmp7.not = icmp eq i32 %3, 1, !dbg !1293
  br i1 %cmp7.not, label %if.end10, label %if.then8, !dbg !1294

if.then8:                                         ; preds = %if.end6
  %4 = load ptr, ptr @stderr, align 8, !dbg !1295, !tbaa !63
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.67, i32 noundef %fd, ptr noundef nonnull %fds) #20, !dbg !1297
  tail call void @exit(i32 noundef 1) #21, !dbg !1298
  unreachable, !dbg !1298

if.end10:                                         ; preds = %if.end6
  %conv = trunc i32 %ch to i8, !dbg !1299
  %buf = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom76, i32 4, !dbg !1300
  %5 = load ptr, ptr %buf, align 8, !dbg !1300, !tbaa !86
  %pos = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom76, i32 2, !dbg !1301
  %6 = load i64, ptr %pos, align 8, !dbg !1302, !tbaa !473
  %inc = add nsw i64 %6, 1, !dbg !1302
  store i64 %inc, ptr %pos, align 8, !dbg !1302, !tbaa !473
  %arrayidx15 = getelementptr inbounds i8, ptr %5, i64 %6, !dbg !1303
  store i8 %conv, ptr %arrayidx15, align 1, !dbg !1304, !tbaa !119
  %7 = load i64, ptr %pos, align 8, !dbg !1305, !tbaa !473
  %len = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom76, i32 1, !dbg !1307
  %8 = load i64, ptr %len, align 8, !dbg !1307, !tbaa !233
  %cmp21 = icmp sgt i64 %7, %8, !dbg !1308
  br i1 %cmp21, label %if.then23, label %if.end30, !dbg !1309

if.then23:                                        ; preds = %if.end10
  store i64 %7, ptr %len, align 8, !dbg !1310, !tbaa !233
  br label %if.end30, !dbg !1311

if.end30:                                         ; preds = %if.then23, %if.end10
  %9 = load i32, ptr @dbglvl, align 4, !dbg !1312, !tbaa !56
  %cmp31 = icmp sgt i32 %9, 4, !dbg !1312
  br i1 %cmp31, label %if.end36, label %if.end45, !dbg !1315

if.end36:                                         ; preds = %if.end30
  %call34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.68, i32 noundef %ch), !dbg !1316
  %10 = load ptr, ptr @stdout, align 8, !dbg !1316, !tbaa !63
  %call35 = tail call i32 @fflush(ptr noundef %10), !dbg !1316
  %.pr = load i32, ptr @dbglvl, align 4, !dbg !1318, !tbaa !56
  %cmp37 = icmp sgt i32 %.pr, 5, !dbg !1318
  br i1 %cmp37, label %if.then39, label %if.end45, !dbg !1321

if.then39:                                        ; preds = %if.end36
  %11 = load i64, ptr %pos, align 8, !dbg !1322, !tbaa !473
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.69, i32 noundef %fd, ptr noundef nonnull %fds, i64 noundef %11), !dbg !1322
  %12 = load ptr, ptr @stdout, align 8, !dbg !1322, !tbaa !63
  %call44 = tail call i32 @fflush(ptr noundef %12), !dbg !1322
  br label %if.end45, !dbg !1322

if.end45:                                         ; preds = %if.end30, %if.then39, %if.end36
  ret i32 %ch, !dbg !1324
}

; Function Attrs: nounwind uwtable
define dso_local i32 @spec_mem_feof(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd) local_unnamed_addr #0 !dbg !1325 {
entry:
  call void @llvm.dbg.value(metadata ptr %fds, metadata !1327, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i32 %fd_limit, metadata !1328, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i32 %fd, metadata !1329, metadata !DIExpression()), !dbg !1330
  %cmp = icmp sgt i32 %fd, -1, !dbg !1331
  %cmp1.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp, %cmp1.not, !dbg !1333
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1333

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !1334, !tbaa !63
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.70, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20, !dbg !1336
  tail call void @exit(i32 noundef 1) #21, !dbg !1337
  unreachable, !dbg !1337

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @dbglvl, align 4, !dbg !1338, !tbaa !56
  %cmp2 = icmp sgt i32 %1, 4, !dbg !1338
  %idxprom46 = zext i32 %fd to i64, !dbg !1330
  br i1 %cmp2, label %if.then3, label %if.end17, !dbg !1341

if.then3:                                         ; preds = %if.end
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom46, !dbg !1342
  %pos = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom46, i32 2, !dbg !1342
  %2 = load i64, ptr %pos, align 8, !dbg !1342, !tbaa !473
  %len = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom46, i32 1, !dbg !1342
  %3 = load i64, ptr %len, align 8, !dbg !1342, !tbaa !233
  %cmp6 = icmp sge i64 %2, %3, !dbg !1342
  %conv = zext i1 %cmp6 to i32, !dbg !1342
  %4 = load i64, ptr %arrayidx, align 8, !dbg !1342, !tbaa !70
  %call15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.71, ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd, i32 noundef %conv, i64 noundef %3, i64 noundef %2, i64 noundef %4), !dbg !1342
  %5 = load ptr, ptr @stdout, align 8, !dbg !1342, !tbaa !63
  %call16 = tail call i32 @fflush(ptr noundef %5), !dbg !1342
  br label %if.end17, !dbg !1342

if.end17:                                         ; preds = %if.end, %if.then3
  %pos20 = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom46, i32 2, !dbg !1344
  %6 = load i64, ptr %pos20, align 8, !dbg !1344, !tbaa !473
  %len23 = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom46, i32 1, !dbg !1345
  %7 = load i64, ptr %len23, align 8, !dbg !1345, !tbaa !233
  %cmp24 = icmp sge i64 %6, %7, !dbg !1346
  %conv25 = zext i1 %cmp24 to i32, !dbg !1346
  ret i32 %conv25, !dbg !1347
}

; Function Attrs: nounwind uwtable
define dso_local i32 @spec_mem_close(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd) local_unnamed_addr #0 !dbg !1348 {
entry:
  call void @llvm.dbg.value(metadata ptr %fds, metadata !1350, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata i32 %fd_limit, metadata !1351, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata i32 %fd, metadata !1352, metadata !DIExpression()), !dbg !1353
  %cmp = icmp sgt i32 %fd, -1, !dbg !1354
  %cmp1.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp, %cmp1.not, !dbg !1356
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1356

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !1357, !tbaa !63
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.72, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20, !dbg !1359
  tail call void @exit(i32 noundef 1) #21, !dbg !1360
  unreachable, !dbg !1360

if.end:                                           ; preds = %entry
  %idxprom20 = zext i32 %fd to i64, !dbg !1361
  %open = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom20, i32 3, !dbg !1363
  %1 = load i32, ptr %open, align 8, !dbg !1363, !tbaa !78
  %cmp2.not = icmp eq i32 %1, 1, !dbg !1364
  br i1 %cmp2.not, label %if.end6, label %if.then3, !dbg !1365

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8, !dbg !1366, !tbaa !63
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.73, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %fd) #20, !dbg !1368
  %call5 = tail call ptr @__errno_location() #23, !dbg !1369
  store i32 9, ptr %call5, align 4, !dbg !1370, !tbaa !56
  br label %return, !dbg !1371

if.end6:                                          ; preds = %if.end
  store i32 0, ptr %open, align 8, !dbg !1372, !tbaa !78
  br label %return, !dbg !1373

return:                                           ; preds = %if.end6, %if.then3
  %retval.0 = phi i32 [ -1, %if.then3 ], [ 0, %if.end6 ], !dbg !1353
  ret i32 %retval.0, !dbg !1374
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @spec_empty(i32 noundef %fd) local_unnamed_addr #14 !dbg !1375 {
entry:
  call void @llvm.dbg.value(metadata i32 %fd, metadata !1377, metadata !DIExpression()), !dbg !1378
  ret i32 0, !dbg !1379
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @spec_initbufs() local_unnamed_addr #14 !dbg !1380 {
entry:
  ret void, !dbg !1383
}

; Function Attrs: nounwind uwtable
define dso_local void @spec_compress(i32 noundef %in, i32 noundef %out, i32 noundef %lev) local_unnamed_addr #0 !dbg !1384 {
entry:
  call void @llvm.dbg.value(metadata i32 %in, metadata !1388, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %out, metadata !1389, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %lev, metadata !1390, metadata !DIExpression()), !dbg !1393
  %0 = load ptr, ptr @spec_fd, align 8, !dbg !1394, !tbaa !63
  %idxprom = sext i32 %in to i64, !dbg !1394
  %open = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %idxprom, i32 3, !dbg !1395
  %1 = load i32, ptr %open, align 8, !dbg !1395, !tbaa !78
  call void @llvm.dbg.value(metadata i32 %1, metadata !1391, metadata !DIExpression()), !dbg !1393
  %idxprom1 = sext i32 %out to i64, !dbg !1396
  %open3 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %idxprom1, i32 3, !dbg !1397
  %2 = load i32, ptr %open3, align 8, !dbg !1397, !tbaa !78
  call void @llvm.dbg.value(metadata i32 %2, metadata !1392, metadata !DIExpression()), !dbg !1393
  store i32 1, ptr %open3, align 8, !dbg !1398, !tbaa !78
  store i32 1, ptr %open, align 8, !dbg !1399, !tbaa !78
  tail call void @compressStream(i32 noundef %in, i32 noundef %out, i32 noundef %lev) #22, !dbg !1400
  %3 = load ptr, ptr @spec_fd, align 8, !dbg !1401, !tbaa !63
  %open12 = getelementptr inbounds %struct.spec_fd_t, ptr %3, i64 %idxprom, i32 3, !dbg !1402
  store i32 %1, ptr %open12, align 8, !dbg !1403, !tbaa !78
  %open15 = getelementptr inbounds %struct.spec_fd_t, ptr %3, i64 %idxprom1, i32 3, !dbg !1404
  store i32 %2, ptr %open15, align 8, !dbg !1405, !tbaa !78
  ret void, !dbg !1406
}

declare !dbg !1407 void @compressStream(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare !dbg !1410 void @uncompressStream(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @debug_time() local_unnamed_addr #14 !dbg !1411 {
entry:
  ret i32 0, !dbg !1414
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @sum_str_to_hex(ptr nocapture noundef readonly %sum, i32 noundef %bits) local_unnamed_addr #0 !dbg !1415 {
entry:
  call void @llvm.dbg.value(metadata ptr %sum, metadata !1419, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i32 %bits, metadata !1420, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i32 0, metadata !1421, metadata !DIExpression()), !dbg !1423
  %conv = sext i32 %bits to i64, !dbg !1424
  %div27 = lshr i64 %conv, 3, !dbg !1425
  %call = tail call noalias ptr @malloc(i64 noundef %div27) #19, !dbg !1426
  call void @llvm.dbg.value(metadata ptr %call, metadata !1422, metadata !DIExpression()), !dbg !1423
  %cmp = icmp eq ptr %call, null, !dbg !1427
  br i1 %cmp, label %if.then, label %for.cond.preheader, !dbg !1429

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !1421, metadata !DIExpression()), !dbg !1423
  %cmp538 = icmp sgt i32 %bits, 7, !dbg !1430
  br i1 %cmp538, label %for.body.preheader, label %for.end, !dbg !1433

for.body.preheader:                               ; preds = %for.cond.preheader
  %div44344 = lshr i32 %bits, 3
  %wide.trip.count = zext i32 %div44344 to i64, !dbg !1430
  br label %for.body, !dbg !1433

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !1434, !tbaa !63
  %div2 = sdiv i32 %bits, 8, !dbg !1436
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %div2) #20, !dbg !1437
  tail call void @exit(i32 noundef 1) #21, !dbg !1438
  unreachable, !dbg !1438

for.body:                                         ; preds = %for.body.preheader, %hex_char_to_num.exit37
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %hex_char_to_num.exit37 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1421, metadata !DIExpression()), !dbg !1423
  %1 = shl nuw nsw i64 %indvars.iv, 1, !dbg !1439
  %arrayidx = getelementptr inbounds i8, ptr %sum, i64 %1, !dbg !1441
  %2 = load i8, ptr %arrayidx, align 1, !dbg !1441, !tbaa !119
  call void @llvm.dbg.value(metadata i8 %2, metadata !1442, metadata !DIExpression()) #22, !dbg !1450
  %cmp.i = icmp sgt i8 %2, 57, !dbg !1452
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !1453

if.then.i:                                        ; preds = %for.body
  %call.i = tail call ptr @__ctype_tolower_loc() #23, !dbg !1454
  %3 = load ptr, ptr %call.i, align 8, !dbg !1454, !tbaa !63
  %idxprom10.i = zext i8 %2 to i64, !dbg !1454
  %arrayidx.i = getelementptr inbounds i32, ptr %3, i64 %idxprom10.i, !dbg !1454
  %4 = load i32, ptr %arrayidx.i, align 4, !dbg !1454, !tbaa !56
  call void @llvm.dbg.value(metadata i32 %4, metadata !1447, metadata !DIExpression()) #22, !dbg !1456
  %5 = trunc i32 %4 to i8, !dbg !1457
  %conv4.i = add i8 %5, -87, !dbg !1457
  br label %hex_char_to_num.exit, !dbg !1458

if.else.i:                                        ; preds = %for.body
  %sub.i = add i8 %2, -48, !dbg !1459
  br label %hex_char_to_num.exit, !dbg !1460

hex_char_to_num.exit:                             ; preds = %if.then.i, %if.else.i
  %retval.0.i = phi i8 [ %conv4.i, %if.then.i ], [ %sub.i, %if.else.i ], !dbg !1461
  %shl = shl i8 %retval.0.i, 4, !dbg !1462
  %6 = or i64 %1, 1, !dbg !1463
  %arrayidx12 = getelementptr inbounds i8, ptr %sum, i64 %6, !dbg !1464
  %7 = load i8, ptr %arrayidx12, align 1, !dbg !1464, !tbaa !119
  call void @llvm.dbg.value(metadata i8 %7, metadata !1442, metadata !DIExpression()) #22, !dbg !1465
  %cmp.i28 = icmp sgt i8 %7, 57, !dbg !1467
  br i1 %cmp.i28, label %if.then.i33, label %if.else.i35, !dbg !1468

if.then.i33:                                      ; preds = %hex_char_to_num.exit
  %call.i29 = tail call ptr @__ctype_tolower_loc() #23, !dbg !1469
  %8 = load ptr, ptr %call.i29, align 8, !dbg !1469, !tbaa !63
  %idxprom10.i30 = zext i8 %7 to i64, !dbg !1469
  %arrayidx.i31 = getelementptr inbounds i32, ptr %8, i64 %idxprom10.i30, !dbg !1469
  %9 = load i32, ptr %arrayidx.i31, align 4, !dbg !1469, !tbaa !56
  call void @llvm.dbg.value(metadata i32 %9, metadata !1447, metadata !DIExpression()) #22, !dbg !1470
  %10 = trunc i32 %9 to i8, !dbg !1471
  %conv4.i32 = add i8 %10, -87, !dbg !1471
  br label %hex_char_to_num.exit37, !dbg !1472

if.else.i35:                                      ; preds = %hex_char_to_num.exit
  %sub.i34 = add i8 %7, -48, !dbg !1473
  br label %hex_char_to_num.exit37, !dbg !1474

hex_char_to_num.exit37:                           ; preds = %if.then.i33, %if.else.i35
  %retval.0.i36 = phi i8 [ %conv4.i32, %if.then.i33 ], [ %sub.i34, %if.else.i35 ], !dbg !1475
  %or = or i8 %retval.0.i36, %shl, !dbg !1476
  %arrayidx17 = getelementptr inbounds i8, ptr %call, i64 %indvars.iv, !dbg !1477
  store i8 %or, ptr %arrayidx17, align 1, !dbg !1478, !tbaa !119
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1479
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1421, metadata !DIExpression()), !dbg !1423
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1430
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1433, !llvm.loop !1480

for.end:                                          ; preds = %hex_char_to_num.exit37, %for.cond.preheader
  ret ptr %call, !dbg !1482
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @spec_mem_alloc_fds(i32 noundef %fd_limit) local_unnamed_addr #11 !dbg !1483 {
entry:
  call void @llvm.dbg.value(metadata i32 %fd_limit, metadata !1487, metadata !DIExpression()), !dbg !1489
  %0 = load i32, ptr @dbglvl, align 4, !dbg !1490, !tbaa !56
  %cmp = icmp sgt i32 %0, 3, !dbg !1490
  br i1 %cmp, label %if.then, label %if.end, !dbg !1493

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %fd_limit, 3, !dbg !1494
  %cond = select i1 %cmp1, ptr @.str.78, ptr @.str.79, !dbg !1494
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.77, ptr noundef nonnull %cond), !dbg !1494
  %1 = load ptr, ptr @stdout, align 8, !dbg !1494, !tbaa !63
  %call2 = tail call i32 @fflush(ptr noundef %1), !dbg !1494
  br label %if.end, !dbg !1494

if.end:                                           ; preds = %if.then, %entry
  %add = add i32 %fd_limit, 1, !dbg !1496
  %conv = zext i32 %add to i64, !dbg !1497
  %mul = mul nuw nsw i64 %conv, 40, !dbg !1498
  %calloc = call ptr @calloc(i64 1, i64 %mul), !dbg !1499
  call void @llvm.dbg.value(metadata ptr %calloc, metadata !1488, metadata !DIExpression()), !dbg !1489
  %cmp4 = icmp eq ptr %calloc, null, !dbg !1500
  br i1 %cmp4, label %if.then6, label %if.end8, !dbg !1502

if.then6:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8, !dbg !1503, !tbaa !63
  %3 = tail call i64 @fwrite(ptr nonnull @.str.80, i64 52, i64 1, ptr %2) #20, !dbg !1505
  br label %cleanup, !dbg !1506

if.end8:                                          ; preds = %if.end
  %4 = load i32, ptr @dbglvl, align 4, !dbg !1507, !tbaa !56
  %cmp12 = icmp sgt i32 %4, 4, !dbg !1507
  br i1 %cmp12, label %if.then14, label %cleanup, !dbg !1510

if.then14:                                        ; preds = %if.end8
  %call15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.81, i32 noundef %fd_limit, ptr noundef nonnull %calloc), !dbg !1511
  %5 = load ptr, ptr @stdout, align 8, !dbg !1511, !tbaa !63
  %call16 = tail call i32 @fflush(ptr noundef %5), !dbg !1511
  br label %cleanup, !dbg !1511

cleanup:                                          ; preds = %if.end8, %if.then14, %if.then6
  ret ptr %calloc, !dbg !1513
}

; Function Attrs: nounwind uwtable
define dso_local void @spec_mem_free_fds(ptr noundef %fds, i32 noundef %fd_limit) local_unnamed_addr #0 !dbg !1514 {
entry:
  call void @llvm.dbg.value(metadata ptr %fds, metadata !1518, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i32 %fd_limit, metadata !1519, metadata !DIExpression()), !dbg !1521
  %0 = load i32, ptr @dbglvl, align 4, !dbg !1522, !tbaa !56
  %cmp = icmp sgt i32 %0, 3, !dbg !1522
  br i1 %cmp, label %if.end, label %if.end7, !dbg !1525

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @spec_fd, align 8, !dbg !1526, !tbaa !63
  %cmp1 = icmp eq ptr %1, %fds, !dbg !1526
  %cond = select i1 %cmp1, ptr @.str.83, ptr @.str.79, !dbg !1526
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.82, ptr noundef nonnull %cond), !dbg !1526
  %2 = load ptr, ptr @stdout, align 8, !dbg !1526, !tbaa !63
  %call2 = tail call i32 @fflush(ptr noundef %2), !dbg !1526
  %.pr = load i32, ptr @dbglvl, align 4, !dbg !1528, !tbaa !56
  %cmp3 = icmp sgt i32 %.pr, 4, !dbg !1528
  br i1 %cmp3, label %if.then4, label %if.end7, !dbg !1531

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.84, ptr noundef %fds, i32 noundef %fd_limit), !dbg !1532
  %3 = load ptr, ptr @stdout, align 8, !dbg !1532, !tbaa !63
  %call6 = tail call i32 @fflush(ptr noundef %3), !dbg !1532
  br label %if.end7, !dbg !1532

if.end7:                                          ; preds = %entry, %if.then4, %if.end
  %cmp8.not = icmp ne ptr %fds, null, !dbg !1534
  %cmp1033 = icmp ne i32 %fd_limit, 0
  %or.cond = and i1 %cmp8.not, %cmp1033, !dbg !1536
  call void @llvm.dbg.value(metadata i32 0, metadata !1520, metadata !DIExpression()), !dbg !1521
  br i1 %or.cond, label %for.body.preheader, label %if.end20, !dbg !1536

for.body.preheader:                               ; preds = %if.end7
  %wide.trip.count = zext i32 %fd_limit to i64, !dbg !1537
  br label %for.body, !dbg !1540

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1520, metadata !DIExpression()), !dbg !1521
  %buf = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %indvars.iv, i32 4, !dbg !1541
  %4 = load ptr, ptr %buf, align 8, !dbg !1541, !tbaa !86
  %cmp11.not = icmp eq ptr %4, null, !dbg !1544
  br i1 %cmp11.not, label %for.inc, label %if.then12, !dbg !1545

if.then12:                                        ; preds = %for.body
  tail call void @free(ptr noundef nonnull %4) #22, !dbg !1546
  store ptr null, ptr %buf, align 8, !dbg !1548, !tbaa !86
  br label %for.inc, !dbg !1549

for.inc:                                          ; preds = %for.body, %if.then12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1550
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1520, metadata !DIExpression()), !dbg !1521
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1537
  br i1 %exitcond.not, label %if.end20, label %for.body, !dbg !1540, !llvm.loop !1551

if.end20:                                         ; preds = %for.inc, %if.end7
  tail call void @free(ptr noundef %fds) #22, !dbg !1553
  ret void, !dbg !1554
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1)
declare noalias noundef ptr @realloc(ptr nocapture noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_tolower_loc() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #18

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly nofree nounwind willreturn }
attributes #13 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { inaccessiblememonly nofree nounwind willreturn allocsize(0,1) }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { cold }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind }
attributes #23 = { nounwind readnone willreturn }
attributes #24 = { cold nounwind }
attributes #25 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dbglvl", scope: !2, file: !31, line: 26, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !28, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/spec_mem_io/spec_mem_io.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "047cbb8fb8ff391b745246463800d41f")
!4 = !{!5, !6, !8, !7, !9, !10, !13}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "spec_fd_t", file: !15, line: 40, baseType: !16)
!15 = !DIFile(filename: "apps/557.xz_r/src/spec_mem_io/spec_mem_io.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "20f82235716911ab040d2b344ceb3e0d")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 34, size: 320, elements: !17)
!17 = !{!18, !24, !25, !26, !27}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !16, file: !15, line: 35, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !20, line: 27, baseType: !21)
!20 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !22, line: 44, baseType: !23)
!22 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!23 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !16, file: !15, line: 36, baseType: !19, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !16, file: !15, line: 37, baseType: !19, size: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !16, file: !15, line: 38, baseType: !9, size: 32, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !16, file: !15, line: 39, baseType: !6, size: 64, offset: 256)
!28 = !{!0, !29}
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "spec_fd", scope: !2, file: !31, line: 22, type: !13, isLocal: false, isDefinition: true)
!31 = !DIFile(filename: "apps/557.xz_r/src/spec_mem_io/spec_mem_io.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "047cbb8fb8ff391b745246463800d41f")
!32 = !{i32 7, !"Dwarf Version", i32 5}
!33 = !{i32 2, !"Debug Info Version", i32 3}
!34 = !{i32 1, !"wchar_size", i32 4}
!35 = !{i32 7, !"PIC Level", i32 2}
!36 = !{i32 7, !"PIE Level", i32 2}
!37 = !{i32 7, !"uwtable", i32 2}
!38 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!39 = distinct !DISubprogram(name: "spec_mem_init", scope: !31, file: !31, line: 67, type: !40, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !42)
!40 = !DISubroutineType(types: !41)
!41 = !{!9, !13, !8, !8}
!42 = !{!43, !44, !45, !46, !47, !48}
!43 = !DILocalVariable(name: "fds", arg: 1, scope: !39, file: !31, line: 67, type: !13)
!44 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !39, file: !31, line: 67, type: !8)
!45 = !DILocalVariable(name: "touch_all", arg: 3, scope: !39, file: !31, line: 67, type: !8)
!46 = !DILocalVariable(name: "i", scope: !39, file: !31, line: 68, type: !8)
!47 = !DILocalVariable(name: "j", scope: !39, file: !31, line: 69, type: !19)
!48 = !DILocalVariable(name: "limit", scope: !49, file: !31, line: 77, type: !19)
!49 = distinct !DILexicalBlock(scope: !50, file: !31, line: 76, column: 36)
!50 = distinct !DILexicalBlock(scope: !51, file: !31, line: 76, column: 5)
!51 = distinct !DILexicalBlock(scope: !39, file: !31, line: 76, column: 5)
!52 = !DILocation(line: 0, scope: !39)
!53 = !DILocation(line: 71, column: 5, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !31, line: 71, column: 5)
!55 = distinct !DILexicalBlock(scope: !39, file: !31, line: 71, column: 5)
!56 = !{!57, !57, i64 0}
!57 = !{!"int", !58, i64 0}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C/C++ TBAA"}
!60 = !DILocation(line: 71, column: 5, scope: !55)
!61 = !DILocation(line: 71, column: 5, scope: !62)
!62 = distinct !DILexicalBlock(scope: !54, file: !31, line: 71, column: 5)
!63 = !{!64, !64, i64 0}
!64 = !{!"any pointer", !58, i64 0}
!65 = !DILocation(line: 76, column: 19, scope: !50)
!66 = !DILocation(line: 76, column: 5, scope: !51)
!67 = !DILocation(line: 93, column: 13, scope: !49)
!68 = !DILocation(line: 77, column: 18, scope: !49)
!69 = !DILocation(line: 77, column: 25, scope: !49)
!70 = !{!71, !72, i64 0}
!71 = !{!"", !72, i64 0, !72, i64 8, !72, i64 16, !57, i64 24, !64, i64 32}
!72 = !{!"long", !58, i64 0}
!73 = !DILocation(line: 0, scope: !49)
!74 = !DILocation(line: 78, column: 9, scope: !49)
!75 = !DILocation(line: 79, column: 15, scope: !49)
!76 = !DILocation(line: 80, column: 9, scope: !49)
!77 = !DILocation(line: 80, column: 14, scope: !49)
!78 = !{!71, !57, i64 24}
!79 = !DILocation(line: 81, column: 12, scope: !80)
!80 = distinct !DILexicalBlock(scope: !49, file: !31, line: 81, column: 6)
!81 = !DILocation(line: 81, column: 6, scope: !49)
!82 = !DILocation(line: 86, column: 44, scope: !49)
!83 = !DILocation(line: 86, column: 32, scope: !49)
!84 = !DILocation(line: 86, column: 9, scope: !49)
!85 = !DILocation(line: 86, column: 13, scope: !49)
!86 = !{!71, !64, i64 32}
!87 = !DILocation(line: 87, column: 17, scope: !88)
!88 = distinct !DILexicalBlock(scope: !49, file: !31, line: 87, column: 6)
!89 = !DILocation(line: 87, column: 6, scope: !49)
!90 = !DILocation(line: 92, column: 9, scope: !91)
!91 = distinct !DILexicalBlock(scope: !92, file: !31, line: 92, column: 9)
!92 = distinct !DILexicalBlock(scope: !49, file: !31, line: 92, column: 9)
!93 = !DILocation(line: 92, column: 9, scope: !92)
!94 = !DILocation(line: 92, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !91, file: !31, line: 92, column: 9)
!96 = !DILocation(line: 76, column: 32, scope: !50)
!97 = distinct !{!97, !66, !98, !99, !100}
!98 = !DILocation(line: 97, column: 5, scope: !51)
!99 = !{!"llvm.loop.mustprogress"}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = !DILocation(line: 82, column: 14, scope: !102)
!102 = distinct !DILexicalBlock(scope: !80, file: !31, line: 81, column: 17)
!103 = !DILocation(line: 82, column: 98, scope: !102)
!104 = !DILocation(line: 82, column: 6, scope: !102)
!105 = !DILocation(line: 83, column: 6, scope: !102)
!106 = !DILocation(line: 88, column: 14, scope: !107)
!107 = distinct !DILexicalBlock(scope: !88, file: !31, line: 87, column: 26)
!108 = !DILocation(line: 88, column: 6, scope: !107)
!109 = !DILocation(line: 89, column: 6, scope: !107)
!110 = !DILocation(line: 94, column: 27, scope: !111)
!111 = distinct !DILexicalBlock(scope: !112, file: !31, line: 94, column: 13)
!112 = distinct !DILexicalBlock(scope: !113, file: !31, line: 94, column: 13)
!113 = distinct !DILexicalBlock(scope: !49, file: !31, line: 93, column: 13)
!114 = !DILocation(line: 94, column: 13, scope: !112)
!115 = !DILocation(line: 95, column: 24, scope: !116)
!116 = distinct !DILexicalBlock(scope: !111, file: !31, line: 94, column: 47)
!117 = !DILocation(line: 95, column: 17, scope: !116)
!118 = !DILocation(line: 95, column: 31, scope: !116)
!119 = !{!58, !58, i64 0}
!120 = !DILocation(line: 94, column: 38, scope: !111)
!121 = distinct !{!121, !114, !122, !99, !100}
!122 = !DILocation(line: 96, column: 13, scope: !112)
!123 = !DILocation(line: 98, column: 5, scope: !39)
!124 = !DISubprogram(name: "fflush", scope: !125, file: !125, line: 218, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !185)
!125 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!126 = !DISubroutineType(types: !127)
!127 = !{!9, !128}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !130, line: 7, baseType: !131)
!130 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !132, line: 49, size: 1728, elements: !133)
!132 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !149, !151, !152, !153, !155, !157, !159, !163, !166, !168, !171, !174, !175, !176, !180, !181}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !131, file: !132, line: 51, baseType: !9, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !131, file: !132, line: 54, baseType: !11, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !131, file: !132, line: 55, baseType: !11, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !131, file: !132, line: 56, baseType: !11, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !131, file: !132, line: 57, baseType: !11, size: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !131, file: !132, line: 58, baseType: !11, size: 64, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !131, file: !132, line: 59, baseType: !11, size: 64, offset: 384)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !131, file: !132, line: 60, baseType: !11, size: 64, offset: 448)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !131, file: !132, line: 61, baseType: !11, size: 64, offset: 512)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !131, file: !132, line: 64, baseType: !11, size: 64, offset: 576)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !131, file: !132, line: 65, baseType: !11, size: 64, offset: 640)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !131, file: !132, line: 66, baseType: !11, size: 64, offset: 704)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !131, file: !132, line: 68, baseType: !147, size: 64, offset: 768)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !132, line: 36, flags: DIFlagFwdDecl)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !131, file: !132, line: 70, baseType: !150, size: 64, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !131, file: !132, line: 72, baseType: !9, size: 32, offset: 896)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !131, file: !132, line: 73, baseType: !9, size: 32, offset: 928)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !131, file: !132, line: 74, baseType: !154, size: 64, offset: 960)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !22, line: 152, baseType: !23)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !131, file: !132, line: 77, baseType: !156, size: 16, offset: 1024)
!156 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !131, file: !132, line: 78, baseType: !158, size: 8, offset: 1040)
!158 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !131, file: !132, line: 79, baseType: !160, size: 8, offset: 1048)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 1)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !131, file: !132, line: 81, baseType: !164, size: 64, offset: 1088)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !132, line: 43, baseType: null)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !131, file: !132, line: 89, baseType: !167, size: 64, offset: 1152)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !22, line: 153, baseType: !23)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !131, file: !132, line: 91, baseType: !169, size: 64, offset: 1216)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !132, line: 37, flags: DIFlagFwdDecl)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !131, file: !132, line: 92, baseType: !172, size: 64, offset: 1280)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !132, line: 38, flags: DIFlagFwdDecl)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !131, file: !132, line: 93, baseType: !150, size: 64, offset: 1344)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !131, file: !132, line: 94, baseType: !5, size: 64, offset: 1408)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !131, file: !132, line: 95, baseType: !177, size: 64, offset: 1472)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !178, line: 46, baseType: !179)
!178 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!179 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !131, file: !132, line: 96, baseType: !9, size: 32, offset: 1536)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !131, file: !132, line: 98, baseType: !182, size: 160, offset: 1568)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 160, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 20)
!185 = !{}
!186 = distinct !DISubprogram(name: "spec_mem_sum", scope: !31, file: !31, line: 101, type: !187, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !189)
!187 = !DISubroutineType(types: !188)
!188 = !{!6, !13, !6, !9}
!189 = !{!190, !191, !192, !193, !213, !214}
!190 = !DILocalVariable(name: "fd", arg: 1, scope: !186, file: !31, line: 101, type: !13)
!191 = !DILocalVariable(name: "sum", arg: 2, scope: !186, file: !31, line: 101, type: !6)
!192 = !DILocalVariable(name: "bits", arg: 3, scope: !186, file: !31, line: 101, type: !9)
!193 = !DILocalVariable(name: "ctx", scope: !186, file: !31, line: 102, type: !194)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha512_state", file: !195, line: 13, baseType: !196)
!195 = !DIFile(filename: "apps/557.xz_r/src/sha-2/sha512.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "81a9972f2f4bb45d8b6de350a024786c")
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !195, line: 7, size: 1664, elements: !197)
!197 = !{!198, !202, !206, !209}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !196, file: !195, line: 9, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !200, line: 27, baseType: !201)
!200 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !22, line: 45, baseType: !179)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !196, file: !195, line: 10, baseType: !203, size: 512, offset: 64)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 512, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 8)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "curlen", scope: !196, file: !195, line: 11, baseType: !207, size: 32, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !200, line: 26, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !22, line: 42, baseType: !8)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !196, file: !195, line: 12, baseType: !210, size: 1024, offset: 608)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 128)
!213 = !DILocalVariable(name: "currpos", scope: !186, file: !31, line: 103, type: !19)
!214 = !DILocalVariable(name: "chunk", scope: !186, file: !31, line: 104, type: !23)
!215 = !DILocation(line: 0, scope: !186)
!216 = !DILocation(line: 102, column: 5, scope: !186)
!217 = !DILocation(line: 102, column: 18, scope: !186)
!218 = !DILocation(line: 107, column: 14, scope: !219)
!219 = distinct !DILexicalBlock(scope: !186, file: !31, line: 107, column: 9)
!220 = !DILocation(line: 107, column: 9, scope: !186)
!221 = !DILocation(line: 108, column: 15, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !31, line: 107, column: 22)
!223 = !DILocation(line: 108, column: 7, scope: !222)
!224 = !DILocation(line: 109, column: 7, scope: !222)
!225 = !DILocation(line: 112, column: 13, scope: !226)
!226 = distinct !DILexicalBlock(scope: !186, file: !31, line: 112, column: 9)
!227 = !DILocation(line: 112, column: 9, scope: !186)
!228 = !DILocation(line: 113, column: 9, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !31, line: 112, column: 22)
!230 = !DILocation(line: 114, column: 59, scope: !231)
!231 = distinct !DILexicalBlock(scope: !232, file: !31, line: 114, column: 9)
!232 = distinct !DILexicalBlock(scope: !229, file: !31, line: 114, column: 9)
!233 = !{!71, !72, i64 8}
!234 = !DILocation(line: 114, column: 53, scope: !231)
!235 = !DILocation(line: 114, column: 9, scope: !232)
!236 = !DILocation(line: 115, column: 25, scope: !237)
!237 = distinct !DILexicalBlock(scope: !238, file: !31, line: 115, column: 17)
!238 = distinct !DILexicalBlock(scope: !231, file: !31, line: 114, column: 82)
!239 = !DILocation(line: 115, column: 17, scope: !238)
!240 = !DILocation(line: 117, column: 35, scope: !238)
!241 = !DILocation(line: 117, column: 39, scope: !238)
!242 = !DILocation(line: 117, column: 50, scope: !238)
!243 = !DILocation(line: 117, column: 13, scope: !238)
!244 = !DILocation(line: 114, column: 72, scope: !231)
!245 = distinct !{!245, !235, !246, !99, !100}
!246 = !DILocation(line: 118, column: 9, scope: !232)
!247 = !DILocation(line: 119, column: 9, scope: !229)
!248 = !DILocation(line: 120, column: 5, scope: !229)
!249 = !DILocation(line: 122, column: 1, scope: !186)
!250 = !DILocation(line: 121, column: 5, scope: !186)
!251 = !DISubprogram(name: "sha_init", scope: !195, file: !195, line: 15, type: !252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !185)
!252 = !DISubroutineType(types: !253)
!253 = !{null, !254}
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!255 = !DISubprogram(name: "sha_process", scope: !195, file: !195, line: 16, type: !256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !185)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !254, !258, !207}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!260 = !DISubprogram(name: "sha_done", scope: !195, file: !195, line: 17, type: !261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !185)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !254, !5}
!263 = distinct !DISubprogram(name: "spec_mem_load", scope: !31, file: !31, line: 124, type: !264, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !266)
!264 = !DISubroutineType(types: !265)
!265 = !{!6, !13, !8, !9, !11, !19, !9, !6, !9}
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279}
!267 = !DILocalVariable(name: "fds", arg: 1, scope: !263, file: !31, line: 124, type: !13)
!268 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !263, file: !31, line: 124, type: !8)
!269 = !DILocalVariable(name: "num", arg: 3, scope: !263, file: !31, line: 124, type: !9)
!270 = !DILocalVariable(name: "filename", arg: 4, scope: !263, file: !31, line: 124, type: !11)
!271 = !DILocalVariable(name: "size", arg: 5, scope: !263, file: !31, line: 124, type: !19)
!272 = !DILocalVariable(name: "tmpfd", arg: 6, scope: !263, file: !31, line: 124, type: !9)
!273 = !DILocalVariable(name: "sum", arg: 7, scope: !263, file: !31, line: 124, type: !6)
!274 = !DILocalVariable(name: "bits", arg: 8, scope: !263, file: !31, line: 124, type: !9)
!275 = !DILocalVariable(name: "fd", scope: !263, file: !31, line: 125, type: !9)
!276 = !DILocalVariable(name: "i", scope: !263, file: !31, line: 126, type: !19)
!277 = !DILocalVariable(name: "rc", scope: !263, file: !31, line: 126, type: !19)
!278 = !DILocalVariable(name: "gen_sum", scope: !263, file: !31, line: 127, type: !6)
!279 = !DILocalVariable(name: "tmp", scope: !280, file: !31, line: 209, type: !19)
!280 = distinct !DILexicalBlock(scope: !263, file: !31, line: 208, column: 33)
!281 = !DILocation(line: 0, scope: !263)
!282 = !DILocation(line: 126, column: 13, scope: !263)
!283 = !DILocation(line: 131, column: 54, scope: !263)
!284 = !DILocation(line: 131, column: 59, scope: !263)
!285 = !DILocation(line: 131, column: 32, scope: !263)
!286 = !DILocation(line: 132, column: 17, scope: !287)
!287 = distinct !DILexicalBlock(scope: !263, file: !31, line: 132, column: 9)
!288 = !DILocation(line: 132, column: 9, scope: !263)
!289 = !DILocation(line: 133, column: 17, scope: !290)
!290 = distinct !DILexicalBlock(scope: !287, file: !31, line: 132, column: 26)
!291 = !DILocation(line: 133, column: 92, scope: !290)
!292 = !DILocation(line: 133, column: 9, scope: !290)
!293 = !DILocation(line: 134, column: 9, scope: !290)
!294 = !DILocation(line: 138, column: 15, scope: !295)
!295 = distinct !DILexicalBlock(scope: !263, file: !31, line: 138, column: 9)
!296 = !DILocation(line: 138, column: 19, scope: !295)
!297 = !DILocation(line: 139, column: 17, scope: !298)
!298 = distinct !DILexicalBlock(scope: !295, file: !31, line: 138, column: 51)
!299 = !DILocation(line: 139, column: 9, scope: !298)
!300 = !DILocation(line: 140, column: 9, scope: !298)
!301 = !DILocation(line: 142, column: 13, scope: !302)
!302 = distinct !DILexicalBlock(scope: !263, file: !31, line: 142, column: 9)
!303 = !DILocation(line: 142, column: 17, scope: !302)
!304 = !DILocation(line: 143, column: 17, scope: !305)
!305 = distinct !DILexicalBlock(scope: !302, file: !31, line: 142, column: 47)
!306 = !DILocation(line: 143, column: 9, scope: !305)
!307 = !DILocation(line: 144, column: 9, scope: !305)
!308 = !DILocation(line: 151, column: 10, scope: !263)
!309 = !DILocation(line: 152, column: 12, scope: !310)
!310 = distinct !DILexicalBlock(scope: !263, file: !31, line: 152, column: 9)
!311 = !DILocation(line: 152, column: 9, scope: !263)
!312 = !DILocation(line: 153, column: 10, scope: !313)
!313 = distinct !DILexicalBlock(scope: !310, file: !31, line: 152, column: 17)
!314 = !DILocation(line: 153, column: 65, scope: !313)
!315 = !DILocation(line: 153, column: 56, scope: !313)
!316 = !DILocation(line: 153, column: 2, scope: !313)
!317 = !DILocation(line: 154, column: 2, scope: !313)
!318 = !DILocation(line: 157, column: 39, scope: !263)
!319 = !DILocation(line: 157, column: 33, scope: !263)
!320 = !DILocation(line: 157, column: 37, scope: !263)
!321 = !DILocation(line: 158, column: 37, scope: !263)
!322 = !DILocation(line: 158, column: 17, scope: !263)
!323 = !DILocation(line: 158, column: 72, scope: !263)
!324 = !DILocation(line: 158, column: 5, scope: !263)
!325 = !DILocation(line: 159, column: 17, scope: !326)
!326 = distinct !DILexicalBlock(scope: !263, file: !31, line: 158, column: 77)
!327 = !DILocation(line: 160, column: 16, scope: !328)
!328 = distinct !DILexicalBlock(scope: !326, file: !31, line: 160, column: 13)
!329 = !DILocation(line: 160, column: 13, scope: !326)
!330 = !DILocation(line: 170, column: 28, scope: !331)
!331 = distinct !DILexicalBlock(scope: !326, file: !31, line: 170, column: 13)
!332 = !DILocation(line: 170, column: 54, scope: !331)
!333 = !DILocation(line: 170, column: 41, scope: !331)
!334 = !DILocation(line: 170, column: 13, scope: !326)
!335 = !DILocation(line: 174, column: 13, scope: !336)
!336 = distinct !DILexicalBlock(scope: !331, file: !31, line: 170, column: 61)
!337 = !DILocation(line: 158, column: 54, scope: !263)
!338 = !DILocation(line: 175, column: 9, scope: !336)
!339 = !DILocation(line: 158, column: 41, scope: !263)
!340 = distinct !{!340, !324, !341, !99, !100}
!341 = !DILocation(line: 176, column: 5, scope: !263)
!342 = !DILocation(line: 177, column: 12, scope: !343)
!343 = distinct !DILexicalBlock(scope: !263, file: !31, line: 177, column: 9)
!344 = !DILocation(line: 177, column: 9, scope: !263)
!345 = !DILocation(line: 178, column: 17, scope: !346)
!346 = distinct !DILexicalBlock(scope: !343, file: !31, line: 177, column: 17)
!347 = !DILocation(line: 178, column: 75, scope: !346)
!348 = !DILocation(line: 178, column: 66, scope: !346)
!349 = !DILocation(line: 178, column: 9, scope: !346)
!350 = !DILocation(line: 179, column: 9, scope: !346)
!351 = !DILocation(line: 181, column: 5, scope: !263)
!352 = !DILocation(line: 184, column: 20, scope: !263)
!353 = !DILocation(line: 184, column: 29, scope: !263)
!354 = !DILocation(line: 184, column: 14, scope: !263)
!355 = !DILocalVariable(name: "in", arg: 1, scope: !356, file: !31, line: 547, type: !9)
!356 = distinct !DISubprogram(name: "spec_uncompress", scope: !31, file: !31, line: 547, type: !357, scopeLine: 547, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !359)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !9, !9}
!359 = !{!355, !360, !361, !362}
!360 = !DILocalVariable(name: "out", arg: 2, scope: !356, file: !31, line: 547, type: !9)
!361 = !DILocalVariable(name: "in_open", scope: !356, file: !31, line: 549, type: !9)
!362 = !DILocalVariable(name: "out_open", scope: !356, file: !31, line: 550, type: !9)
!363 = !DILocation(line: 0, scope: !356, inlinedAt: !364)
!364 = distinct !DILocation(line: 185, column: 5, scope: !263)
!365 = !DILocation(line: 184, column: 18, scope: !263)
!366 = !DILocation(line: 549, column: 19, scope: !356, inlinedAt: !364)
!367 = !DILocation(line: 549, column: 31, scope: !356, inlinedAt: !364)
!368 = !DILocation(line: 550, column: 33, scope: !356, inlinedAt: !364)
!369 = !DILocation(line: 551, column: 42, scope: !356, inlinedAt: !364)
!370 = !DILocation(line: 551, column: 22, scope: !356, inlinedAt: !364)
!371 = !DILocation(line: 555, column: 5, scope: !356, inlinedAt: !364)
!372 = !DILocation(line: 557, column: 5, scope: !356, inlinedAt: !364)
!373 = !DILocation(line: 557, column: 17, scope: !356, inlinedAt: !364)
!374 = !DILocation(line: 557, column: 22, scope: !356, inlinedAt: !364)
!375 = !DILocation(line: 558, column: 18, scope: !356, inlinedAt: !364)
!376 = !DILocation(line: 558, column: 23, scope: !356, inlinedAt: !364)
!377 = !DILocation(line: 186, column: 5, scope: !378)
!378 = distinct !DILexicalBlock(scope: !379, file: !31, line: 186, column: 5)
!379 = distinct !DILexicalBlock(scope: !263, file: !31, line: 186, column: 5)
!380 = !DILocation(line: 186, column: 5, scope: !379)
!381 = !DILocation(line: 186, column: 5, scope: !382)
!382 = distinct !DILexicalBlock(scope: !378, file: !31, line: 186, column: 5)
!383 = !DILocation(line: 0, scope: !186, inlinedAt: !384)
!384 = distinct !DILocation(line: 189, column: 5, scope: !263)
!385 = !DILocation(line: 187, column: 20, scope: !263)
!386 = !DILocation(line: 102, column: 5, scope: !186, inlinedAt: !384)
!387 = !DILocation(line: 102, column: 18, scope: !186, inlinedAt: !384)
!388 = !DILocation(line: 107, column: 14, scope: !219, inlinedAt: !384)
!389 = !DILocation(line: 107, column: 9, scope: !186, inlinedAt: !384)
!390 = !DILocation(line: 108, column: 15, scope: !222, inlinedAt: !384)
!391 = !DILocation(line: 108, column: 7, scope: !222, inlinedAt: !384)
!392 = !DILocation(line: 109, column: 7, scope: !222, inlinedAt: !384)
!393 = !DILocation(line: 113, column: 9, scope: !229, inlinedAt: !384)
!394 = !DILocation(line: 114, column: 59, scope: !231, inlinedAt: !384)
!395 = !DILocation(line: 114, column: 53, scope: !231, inlinedAt: !384)
!396 = !DILocation(line: 114, column: 9, scope: !232, inlinedAt: !384)
!397 = !DILocation(line: 115, column: 25, scope: !237, inlinedAt: !384)
!398 = !DILocation(line: 115, column: 17, scope: !238, inlinedAt: !384)
!399 = !DILocation(line: 117, column: 35, scope: !238, inlinedAt: !384)
!400 = !DILocation(line: 117, column: 39, scope: !238, inlinedAt: !384)
!401 = !DILocation(line: 117, column: 50, scope: !238, inlinedAt: !384)
!402 = !DILocation(line: 117, column: 13, scope: !238, inlinedAt: !384)
!403 = !DILocation(line: 114, column: 72, scope: !231, inlinedAt: !384)
!404 = distinct !{!404, !396, !405, !99, !100}
!405 = !DILocation(line: 118, column: 9, scope: !232, inlinedAt: !384)
!406 = !DILocation(line: 119, column: 9, scope: !229, inlinedAt: !384)
!407 = !DILocation(line: 122, column: 1, scope: !186, inlinedAt: !384)
!408 = !DILocalVariable(name: "ref_sum", arg: 1, scope: !409, file: !31, line: 623, type: !6)
!409 = distinct !DISubprogram(name: "compare_sum", scope: !31, file: !31, line: 623, type: !410, scopeLine: 624, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !412)
!410 = !DISubroutineType(types: !411)
!411 = !{!9, !6, !6, !9}
!412 = !{!408, !413, !414, !415}
!413 = !DILocalVariable(name: "generated", arg: 2, scope: !409, file: !31, line: 623, type: !6)
!414 = !DILocalVariable(name: "bits", arg: 3, scope: !409, file: !31, line: 623, type: !9)
!415 = !DILocalVariable(name: "i", scope: !416, file: !31, line: 628, type: !9)
!416 = distinct !DILexicalBlock(scope: !409, file: !31, line: 628, column: 5)
!417 = !DILocation(line: 0, scope: !409, inlinedAt: !418)
!418 = distinct !DILocation(line: 190, column: 9, scope: !419)
!419 = distinct !DILexicalBlock(scope: !263, file: !31, line: 190, column: 9)
!420 = !DILocation(line: 625, column: 17, scope: !421, inlinedAt: !418)
!421 = distinct !DILexicalBlock(scope: !409, file: !31, line: 625, column: 9)
!422 = !DILocation(line: 625, column: 25, scope: !421, inlinedAt: !418)
!423 = !DILocation(line: 628, column: 5, scope: !416, inlinedAt: !418)
!424 = !DILocation(line: 0, scope: !416, inlinedAt: !418)
!425 = !DILocation(line: 629, column: 13, scope: !426, inlinedAt: !418)
!426 = distinct !DILexicalBlock(scope: !427, file: !31, line: 629, column: 13)
!427 = distinct !DILexicalBlock(scope: !428, file: !31, line: 628, column: 39)
!428 = distinct !DILexicalBlock(scope: !416, file: !31, line: 628, column: 5)
!429 = !DILocation(line: 629, column: 27, scope: !426, inlinedAt: !418)
!430 = !DILocation(line: 629, column: 24, scope: !426, inlinedAt: !418)
!431 = !DILocation(line: 629, column: 13, scope: !427, inlinedAt: !418)
!432 = !DILocation(line: 630, column: 21, scope: !433, inlinedAt: !418)
!433 = distinct !DILexicalBlock(scope: !426, file: !31, line: 629, column: 41)
!434 = !DILocation(line: 630, column: 13, scope: !433, inlinedAt: !418)
!435 = !DILocation(line: 631, column: 13, scope: !433, inlinedAt: !418)
!436 = !DILocation(line: 628, column: 35, scope: !428, inlinedAt: !418)
!437 = !DILocation(line: 628, column: 22, scope: !428, inlinedAt: !418)
!438 = distinct !{!438, !423, !439, !99, !100}
!439 = !DILocation(line: 633, column: 5, scope: !416, inlinedAt: !418)
!440 = !DILocation(line: 191, column: 17, scope: !441)
!441 = distinct !DILexicalBlock(scope: !419, file: !31, line: 190, column: 42)
!442 = !DILocation(line: 191, column: 9, scope: !441)
!443 = !DILocation(line: 192, column: 17, scope: !441)
!444 = !DILocation(line: 192, column: 9, scope: !441)
!445 = !DILocation(line: 193, column: 19, scope: !441)
!446 = !DILocation(line: 193, column: 9, scope: !441)
!447 = !DILocation(line: 194, column: 17, scope: !441)
!448 = !DILocation(line: 194, column: 9, scope: !441)
!449 = !DILocation(line: 195, column: 19, scope: !441)
!450 = !DILocation(line: 195, column: 9, scope: !441)
!451 = !DILocation(line: 196, column: 17, scope: !441)
!452 = !DILocation(line: 196, column: 9, scope: !441)
!453 = !DILocation(line: 197, column: 9, scope: !441)
!454 = !DILocation(line: 199, column: 5, scope: !455)
!455 = distinct !DILexicalBlock(scope: !456, file: !31, line: 199, column: 5)
!456 = distinct !DILexicalBlock(scope: !263, file: !31, line: 199, column: 5)
!457 = !DILocation(line: 199, column: 5, scope: !456)
!458 = !DILocation(line: 199, column: 5, scope: !459)
!459 = distinct !DILexicalBlock(scope: !455, file: !31, line: 199, column: 5)
!460 = !DILocation(line: 201, column: 18, scope: !461)
!461 = distinct !DILexicalBlock(scope: !263, file: !31, line: 201, column: 9)
!462 = !DILocation(line: 201, column: 22, scope: !461)
!463 = !DILocation(line: 201, column: 9, scope: !263)
!464 = !DILocation(line: 203, column: 9, scope: !465)
!465 = distinct !DILexicalBlock(scope: !466, file: !31, line: 203, column: 9)
!466 = distinct !DILexicalBlock(scope: !467, file: !31, line: 203, column: 9)
!467 = distinct !DILexicalBlock(scope: !461, file: !31, line: 202, column: 5)
!468 = !DILocation(line: 203, column: 9, scope: !466)
!469 = !DILocation(line: 203, column: 9, scope: !470)
!470 = distinct !DILexicalBlock(scope: !465, file: !31, line: 203, column: 9)
!471 = !DILocation(line: 204, column: 22, scope: !467)
!472 = !DILocation(line: 206, column: 18, scope: !263)
!473 = !{!71, !72, i64 16}
!474 = !DILocation(line: 208, column: 5, scope: !263)
!475 = !DILocation(line: 208, column: 25, scope: !263)
!476 = !DILocation(line: 209, column: 21, scope: !280)
!477 = !DILocation(line: 0, scope: !280)
!478 = !DILocation(line: 210, column: 6, scope: !280)
!479 = !DILocation(line: 211, column: 2, scope: !480)
!480 = distinct !DILexicalBlock(scope: !481, file: !31, line: 211, column: 2)
!481 = distinct !DILexicalBlock(scope: !280, file: !31, line: 211, column: 2)
!482 = !DILocation(line: 211, column: 2, scope: !481)
!483 = !DILocation(line: 211, column: 2, scope: !484)
!484 = distinct !DILexicalBlock(scope: !480, file: !31, line: 211, column: 2)
!485 = !DILocation(line: 212, column: 31, scope: !280)
!486 = !DILocation(line: 212, column: 18, scope: !280)
!487 = !DILocation(line: 212, column: 21, scope: !280)
!488 = !DILocation(line: 212, column: 2, scope: !280)
!489 = !DILocation(line: 213, column: 15, scope: !280)
!490 = distinct !{!490, !474, !491, !99, !100}
!491 = !DILocation(line: 214, column: 5, scope: !263)
!492 = !DILocation(line: 0, scope: !186, inlinedAt: !493)
!493 = distinct !DILocation(line: 217, column: 5, scope: !263)
!494 = !DILocation(line: 102, column: 5, scope: !186, inlinedAt: !493)
!495 = !DILocation(line: 102, column: 18, scope: !186, inlinedAt: !493)
!496 = !DILocation(line: 113, column: 9, scope: !229, inlinedAt: !493)
!497 = !DILocation(line: 114, column: 59, scope: !231, inlinedAt: !493)
!498 = !DILocation(line: 114, column: 53, scope: !231, inlinedAt: !493)
!499 = !DILocation(line: 114, column: 9, scope: !232, inlinedAt: !493)
!500 = !DILocation(line: 115, column: 25, scope: !237, inlinedAt: !493)
!501 = !DILocation(line: 115, column: 17, scope: !238, inlinedAt: !493)
!502 = !DILocation(line: 117, column: 35, scope: !238, inlinedAt: !493)
!503 = !DILocation(line: 117, column: 39, scope: !238, inlinedAt: !493)
!504 = !DILocation(line: 117, column: 50, scope: !238, inlinedAt: !493)
!505 = !DILocation(line: 117, column: 13, scope: !238, inlinedAt: !493)
!506 = !DILocation(line: 114, column: 72, scope: !231, inlinedAt: !493)
!507 = distinct !{!507, !499, !508, !99, !100}
!508 = !DILocation(line: 118, column: 9, scope: !232, inlinedAt: !493)
!509 = !DILocation(line: 119, column: 9, scope: !229, inlinedAt: !493)
!510 = !DILocation(line: 122, column: 1, scope: !186, inlinedAt: !493)
!511 = !DILocation(line: 218, column: 5, scope: !263)
!512 = !DILocation(line: 219, column: 15, scope: !263)
!513 = !DILocalVariable(name: "out", arg: 1, scope: !514, file: !31, line: 572, type: !128)
!514 = distinct !DISubprogram(name: "print_sum", scope: !31, file: !31, line: 572, type: !515, scopeLine: 573, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !517)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !128, !6, !9}
!517 = !{!513, !518, !519, !520}
!518 = !DILocalVariable(name: "sum", arg: 2, scope: !514, file: !31, line: 572, type: !6)
!519 = !DILocalVariable(name: "bits", arg: 3, scope: !514, file: !31, line: 572, type: !9)
!520 = !DILocalVariable(name: "i", scope: !521, file: !31, line: 574, type: !9)
!521 = distinct !DILexicalBlock(scope: !514, file: !31, line: 574, column: 3)
!522 = !DILocation(line: 0, scope: !514, inlinedAt: !523)
!523 = distinct !DILocation(line: 219, column: 5, scope: !263)
!524 = !DILocation(line: 0, scope: !521, inlinedAt: !523)
!525 = !DILocation(line: 574, column: 3, scope: !521, inlinedAt: !523)
!526 = !DILocation(line: 575, column: 26, scope: !527, inlinedAt: !523)
!527 = distinct !DILexicalBlock(scope: !528, file: !31, line: 574, column: 35)
!528 = distinct !DILexicalBlock(scope: !521, file: !31, line: 574, column: 3)
!529 = !DILocation(line: 575, column: 5, scope: !527, inlinedAt: !523)
!530 = !DILocation(line: 574, column: 31, scope: !528, inlinedAt: !523)
!531 = !DILocation(line: 574, column: 20, scope: !528, inlinedAt: !523)
!532 = distinct !{!532, !525, !533, !99, !100}
!533 = !DILocation(line: 576, column: 3, scope: !521, inlinedAt: !523)
!534 = !DILocation(line: 220, column: 5, scope: !263)
!535 = !DILocation(line: 222, column: 5, scope: !263)
!536 = !DISubprogram(name: "open", scope: !537, file: !537, line: 168, type: !538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !185)
!537 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "270596b098606fab5166d0114edf8288")
!538 = !DISubroutineType(types: !539)
!539 = !{!9, !540, !9, null}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!542 = !DISubprogram(name: "read", scope: !543, file: !543, line: 360, type: !544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !185)
!543 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!544 = !DISubroutineType(types: !545)
!545 = !{!546, !9, !5, !177}
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !125, line: 77, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !22, line: 193, baseType: !23)
!548 = distinct !DISubprogram(name: "fd_grow", scope: !31, file: !31, line: 579, type: !549, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !551)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !13, !9, !540}
!551 = !{!552, !553, !554}
!552 = !DILocalVariable(name: "fds", arg: 1, scope: !548, file: !31, line: 579, type: !13)
!553 = !DILocalVariable(name: "fd", arg: 2, scope: !548, file: !31, line: 579, type: !9)
!554 = !DILocalVariable(name: "funcname", arg: 3, scope: !548, file: !31, line: 579, type: !540)
!555 = !DILocation(line: 0, scope: !548)
!556 = !DILocation(line: 583, column: 5, scope: !548)
!557 = !DILocation(line: 583, column: 19, scope: !548)
!558 = !DILocation(line: 585, column: 35, scope: !548)
!559 = !DILocation(line: 585, column: 19, scope: !548)
!560 = !DILocation(line: 585, column: 17, scope: !548)
!561 = !DILocation(line: 586, column: 21, scope: !562)
!562 = distinct !DILexicalBlock(scope: !548, file: !31, line: 586, column: 9)
!563 = !DILocation(line: 586, column: 9, scope: !548)
!564 = !DILocation(line: 588, column: 10, scope: !565)
!565 = distinct !DILexicalBlock(scope: !562, file: !31, line: 587, column: 5)
!566 = !DILocation(line: 588, column: 101, scope: !565)
!567 = !DILocation(line: 588, column: 92, scope: !565)
!568 = !DILocation(line: 588, column: 2, scope: !565)
!569 = !DILocation(line: 589, column: 2, scope: !565)
!570 = !DILocation(line: 592, column: 5, scope: !571)
!571 = distinct !DILexicalBlock(scope: !572, file: !31, line: 592, column: 5)
!572 = distinct !DILexicalBlock(scope: !548, file: !31, line: 592, column: 5)
!573 = !DILocation(line: 592, column: 5, scope: !572)
!574 = !DILocation(line: 592, column: 5, scope: !575)
!575 = distinct !DILexicalBlock(scope: !571, file: !31, line: 592, column: 5)
!576 = !DILocation(line: 593, column: 1, scope: !548)
!577 = !DISubprogram(name: "close", scope: !543, file: !543, line: 353, type: !578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !185)
!578 = !DISubroutineType(types: !579)
!579 = !{!9, !9}
!580 = !DILocation(line: 0, scope: !356)
!581 = !DILocation(line: 549, column: 19, scope: !356)
!582 = !DILocation(line: 549, column: 31, scope: !356)
!583 = !DILocation(line: 550, column: 20, scope: !356)
!584 = !DILocation(line: 550, column: 33, scope: !356)
!585 = !DILocation(line: 551, column: 42, scope: !356)
!586 = !DILocation(line: 551, column: 22, scope: !356)
!587 = !DILocation(line: 555, column: 5, scope: !356)
!588 = !DILocation(line: 557, column: 5, scope: !356)
!589 = !DILocation(line: 557, column: 17, scope: !356)
!590 = !DILocation(line: 557, column: 22, scope: !356)
!591 = !DILocation(line: 558, column: 18, scope: !356)
!592 = !DILocation(line: 558, column: 23, scope: !356)
!593 = !DILocation(line: 559, column: 1, scope: !356)
!594 = !DILocation(line: 0, scope: !409)
!595 = !DILocation(line: 625, column: 17, scope: !421)
!596 = !DILocation(line: 625, column: 25, scope: !421)
!597 = !DILocation(line: 0, scope: !416)
!598 = !DILocation(line: 628, column: 22, scope: !428)
!599 = !DILocation(line: 628, column: 5, scope: !416)
!600 = !DILocation(line: 629, column: 13, scope: !426)
!601 = !DILocation(line: 629, column: 27, scope: !426)
!602 = !DILocation(line: 629, column: 24, scope: !426)
!603 = !DILocation(line: 629, column: 13, scope: !427)
!604 = !DILocation(line: 630, column: 21, scope: !433)
!605 = !DILocation(line: 630, column: 13, scope: !433)
!606 = !DILocation(line: 631, column: 22, scope: !433)
!607 = !DILocation(line: 631, column: 35, scope: !433)
!608 = !DILocation(line: 631, column: 33, scope: !433)
!609 = !DILocation(line: 631, column: 21, scope: !433)
!610 = !DILocation(line: 631, column: 13, scope: !433)
!611 = !DILocation(line: 628, column: 35, scope: !428)
!612 = distinct !{!612, !599, !613, !99, !100}
!613 = !DILocation(line: 633, column: 5, scope: !416)
!614 = !DILocation(line: 636, column: 1, scope: !409)
!615 = !DILocation(line: 0, scope: !514)
!616 = !DILocation(line: 0, scope: !521)
!617 = !DILocation(line: 574, column: 20, scope: !528)
!618 = !DILocation(line: 574, column: 3, scope: !521)
!619 = !DILocation(line: 577, column: 1, scope: !514)
!620 = !DILocation(line: 575, column: 26, scope: !527)
!621 = !DILocation(line: 575, column: 5, scope: !527)
!622 = !DILocation(line: 574, column: 31, scope: !528)
!623 = distinct !{!623, !618, !624, !99, !100}
!624 = !DILocation(line: 576, column: 3, scope: !521)
!625 = distinct !DISubprogram(name: "spec_mem_read", scope: !31, file: !31, line: 225, type: !626, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !628)
!626 = !DISubroutineType(types: !627)
!627 = !{!19, !13, !8, !9, !6, !19}
!628 = !{!629, !630, !631, !632, !633, !634}
!629 = !DILocalVariable(name: "fds", arg: 1, scope: !625, file: !31, line: 225, type: !13)
!630 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !625, file: !31, line: 225, type: !8)
!631 = !DILocalVariable(name: "fd", arg: 3, scope: !625, file: !31, line: 225, type: !9)
!632 = !DILocalVariable(name: "buf", arg: 4, scope: !625, file: !31, line: 225, type: !6)
!633 = !DILocalVariable(name: "size", arg: 5, scope: !625, file: !31, line: 225, type: !19)
!634 = !DILocalVariable(name: "rc", scope: !625, file: !31, line: 226, type: !9)
!635 = !DILocation(line: 0, scope: !625)
!636 = !DILocation(line: 227, column: 5, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !31, line: 227, column: 5)
!638 = distinct !DILexicalBlock(scope: !625, file: !31, line: 227, column: 5)
!639 = !DILocation(line: 227, column: 5, scope: !638)
!640 = !DILocation(line: 227, column: 5, scope: !641)
!641 = distinct !DILexicalBlock(scope: !637, file: !31, line: 227, column: 5)
!642 = !DILocation(line: 228, column: 12, scope: !643)
!643 = distinct !DILexicalBlock(scope: !625, file: !31, line: 228, column: 9)
!644 = !DILocation(line: 228, column: 16, scope: !643)
!645 = !DILocation(line: 229, column: 10, scope: !646)
!646 = distinct !DILexicalBlock(scope: !643, file: !31, line: 228, column: 45)
!647 = !DILocation(line: 229, column: 2, scope: !646)
!648 = !DILocation(line: 230, column: 2, scope: !646)
!649 = !DILocation(line: 232, column: 9, scope: !650)
!650 = distinct !DILexicalBlock(scope: !625, file: !31, line: 232, column: 9)
!651 = !DILocation(line: 232, column: 17, scope: !650)
!652 = !DILocation(line: 232, column: 22, scope: !650)
!653 = !DILocation(line: 232, column: 9, scope: !625)
!654 = !DILocation(line: 233, column: 17, scope: !655)
!655 = distinct !DILexicalBlock(scope: !650, file: !31, line: 232, column: 28)
!656 = !DILocation(line: 233, column: 9, scope: !655)
!657 = !DILocation(line: 234, column: 2, scope: !655)
!658 = !DILocation(line: 234, column: 8, scope: !655)
!659 = !DILocation(line: 235, column: 2, scope: !655)
!660 = !DILocation(line: 237, column: 17, scope: !661)
!661 = distinct !DILexicalBlock(scope: !625, file: !31, line: 237, column: 9)
!662 = !DILocation(line: 237, column: 32, scope: !661)
!663 = !DILocation(line: 237, column: 21, scope: !661)
!664 = !DILocation(line: 237, column: 9, scope: !625)
!665 = !DILocation(line: 238, column: 2, scope: !666)
!666 = distinct !DILexicalBlock(scope: !667, file: !31, line: 238, column: 2)
!667 = distinct !DILexicalBlock(scope: !668, file: !31, line: 238, column: 2)
!668 = distinct !DILexicalBlock(scope: !661, file: !31, line: 237, column: 37)
!669 = !DILocation(line: 238, column: 2, scope: !667)
!670 = !DILocation(line: 238, column: 2, scope: !671)
!671 = distinct !DILexicalBlock(scope: !666, file: !31, line: 238, column: 2)
!672 = !DILocation(line: 241, column: 21, scope: !673)
!673 = distinct !DILexicalBlock(scope: !625, file: !31, line: 241, column: 9)
!674 = !DILocation(line: 241, column: 28, scope: !673)
!675 = !DILocation(line: 241, column: 9, scope: !625)
!676 = !DILocation(line: 246, column: 27, scope: !625)
!677 = !DILocation(line: 246, column: 19, scope: !625)
!678 = !DILocation(line: 246, column: 46, scope: !625)
!679 = !DILocation(line: 246, column: 5, scope: !625)
!680 = !DILocation(line: 247, column: 17, scope: !625)
!681 = !DILocation(line: 248, column: 5, scope: !682)
!682 = distinct !DILexicalBlock(scope: !683, file: !31, line: 248, column: 5)
!683 = distinct !DILexicalBlock(scope: !625, file: !31, line: 248, column: 5)
!684 = !DILocation(line: 248, column: 5, scope: !683)
!685 = !DILocation(line: 0, scope: !673)
!686 = !DILocation(line: 248, column: 5, scope: !687)
!687 = distinct !DILexicalBlock(scope: !682, file: !31, line: 248, column: 5)
!688 = !DILocation(line: 249, column: 5, scope: !689)
!689 = distinct !DILexicalBlock(scope: !690, file: !31, line: 249, column: 5)
!690 = distinct !DILexicalBlock(scope: !625, file: !31, line: 249, column: 5)
!691 = !DILocation(line: 249, column: 5, scope: !690)
!692 = !DILocation(line: 249, column: 5, scope: !693)
!693 = distinct !DILexicalBlock(scope: !689, file: !31, line: 249, column: 5)
!694 = !DILocation(line: 251, column: 1, scope: !625)
!695 = distinct !DISubprogram(name: "spec_mem_fread", scope: !31, file: !31, line: 253, type: !696, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !698)
!696 = !DISubroutineType(types: !697)
!697 = !{!19, !13, !8, !6, !19, !9, !9}
!698 = !{!699, !700, !701, !702, !703, !704, !705}
!699 = !DILocalVariable(name: "fds", arg: 1, scope: !695, file: !31, line: 253, type: !13)
!700 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !695, file: !31, line: 253, type: !8)
!701 = !DILocalVariable(name: "buf", arg: 3, scope: !695, file: !31, line: 253, type: !6)
!702 = !DILocalVariable(name: "size", arg: 4, scope: !695, file: !31, line: 253, type: !19)
!703 = !DILocalVariable(name: "num", arg: 5, scope: !695, file: !31, line: 253, type: !9)
!704 = !DILocalVariable(name: "fd", arg: 6, scope: !695, file: !31, line: 253, type: !9)
!705 = !DILocalVariable(name: "rc", scope: !695, file: !31, line: 254, type: !19)
!706 = !DILocation(line: 0, scope: !695)
!707 = !DILocation(line: 255, column: 5, scope: !708)
!708 = distinct !DILexicalBlock(scope: !709, file: !31, line: 255, column: 5)
!709 = distinct !DILexicalBlock(scope: !695, file: !31, line: 255, column: 5)
!710 = !DILocation(line: 255, column: 5, scope: !709)
!711 = !DILocation(line: 255, column: 5, scope: !712)
!712 = distinct !DILexicalBlock(scope: !708, file: !31, line: 255, column: 5)
!713 = !DILocation(line: 256, column: 12, scope: !714)
!714 = distinct !DILexicalBlock(scope: !695, file: !31, line: 256, column: 9)
!715 = !DILocation(line: 256, column: 16, scope: !714)
!716 = !DILocation(line: 257, column: 10, scope: !717)
!717 = distinct !DILexicalBlock(scope: !714, file: !31, line: 256, column: 45)
!718 = !DILocation(line: 257, column: 2, scope: !717)
!719 = !DILocation(line: 258, column: 2, scope: !717)
!720 = !DILocation(line: 260, column: 9, scope: !721)
!721 = distinct !DILexicalBlock(scope: !695, file: !31, line: 260, column: 9)
!722 = !DILocation(line: 260, column: 17, scope: !721)
!723 = !DILocation(line: 260, column: 22, scope: !721)
!724 = !DILocation(line: 260, column: 9, scope: !695)
!725 = !DILocation(line: 261, column: 10, scope: !726)
!726 = distinct !DILexicalBlock(scope: !721, file: !31, line: 260, column: 28)
!727 = !DILocation(line: 261, column: 2, scope: !726)
!728 = !DILocation(line: 262, column: 2, scope: !726)
!729 = !DILocation(line: 264, column: 17, scope: !730)
!730 = distinct !DILexicalBlock(scope: !695, file: !31, line: 264, column: 9)
!731 = !DILocation(line: 264, column: 32, scope: !730)
!732 = !DILocation(line: 264, column: 21, scope: !730)
!733 = !DILocation(line: 264, column: 9, scope: !695)
!734 = !DILocation(line: 265, column: 2, scope: !735)
!735 = distinct !DILexicalBlock(scope: !736, file: !31, line: 265, column: 2)
!736 = distinct !DILexicalBlock(scope: !737, file: !31, line: 265, column: 2)
!737 = distinct !DILexicalBlock(scope: !730, file: !31, line: 264, column: 37)
!738 = !DILocation(line: 265, column: 2, scope: !736)
!739 = !DILocation(line: 265, column: 2, scope: !740)
!740 = distinct !DILexicalBlock(scope: !735, file: !31, line: 265, column: 2)
!741 = !DILocation(line: 268, column: 29, scope: !742)
!742 = distinct !DILexicalBlock(scope: !695, file: !31, line: 268, column: 9)
!743 = !DILocation(line: 268, column: 28, scope: !742)
!744 = !DILocation(line: 268, column: 21, scope: !742)
!745 = !DILocation(line: 268, column: 34, scope: !742)
!746 = !DILocation(line: 268, column: 9, scope: !695)
!747 = !DILocation(line: 269, column: 20, scope: !748)
!748 = distinct !DILexicalBlock(scope: !742, file: !31, line: 268, column: 50)
!749 = !DILocation(line: 269, column: 35, scope: !748)
!750 = !DILocation(line: 274, column: 23, scope: !695)
!751 = !DILocation(line: 270, column: 5, scope: !748)
!752 = !DILocation(line: 0, scope: !742)
!753 = !DILocation(line: 273, column: 27, scope: !695)
!754 = !DILocation(line: 273, column: 19, scope: !695)
!755 = !DILocation(line: 273, column: 5, scope: !695)
!756 = !DILocation(line: 274, column: 17, scope: !695)
!757 = !DILocation(line: 275, column: 5, scope: !758)
!758 = distinct !DILexicalBlock(scope: !759, file: !31, line: 275, column: 5)
!759 = distinct !DILexicalBlock(scope: !695, file: !31, line: 275, column: 5)
!760 = !DILocation(line: 275, column: 5, scope: !759)
!761 = !DILocation(line: 275, column: 5, scope: !762)
!762 = distinct !DILexicalBlock(scope: !758, file: !31, line: 275, column: 5)
!763 = !DILocation(line: 276, column: 5, scope: !764)
!764 = distinct !DILexicalBlock(scope: !765, file: !31, line: 276, column: 5)
!765 = distinct !DILexicalBlock(scope: !695, file: !31, line: 276, column: 5)
!766 = !DILocation(line: 276, column: 5, scope: !765)
!767 = !DILocation(line: 276, column: 5, scope: !768)
!768 = distinct !DILexicalBlock(scope: !764, file: !31, line: 276, column: 5)
!769 = !DILocation(line: 278, column: 1, scope: !695)
!770 = distinct !DISubprogram(name: "spec_mem_getc", scope: !31, file: !31, line: 280, type: !771, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !773)
!771 = !DISubroutineType(types: !772)
!772 = !{!9, !13, !8, !9}
!773 = !{!774, !775, !776, !777}
!774 = !DILocalVariable(name: "fds", arg: 1, scope: !770, file: !31, line: 280, type: !13)
!775 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !770, file: !31, line: 280, type: !8)
!776 = !DILocalVariable(name: "fd", arg: 3, scope: !770, file: !31, line: 280, type: !9)
!777 = !DILocalVariable(name: "rc", scope: !770, file: !31, line: 281, type: !9)
!778 = !DILocation(line: 0, scope: !770)
!779 = !DILocation(line: 282, column: 5, scope: !780)
!780 = distinct !DILexicalBlock(scope: !781, file: !31, line: 282, column: 5)
!781 = distinct !DILexicalBlock(scope: !770, file: !31, line: 282, column: 5)
!782 = !DILocation(line: 282, column: 5, scope: !781)
!783 = !DILocation(line: 282, column: 5, scope: !784)
!784 = distinct !DILexicalBlock(scope: !780, file: !31, line: 282, column: 5)
!785 = !DILocation(line: 283, column: 12, scope: !786)
!786 = distinct !DILexicalBlock(scope: !770, file: !31, line: 283, column: 9)
!787 = !DILocation(line: 283, column: 16, scope: !786)
!788 = !DILocation(line: 284, column: 10, scope: !789)
!789 = distinct !DILexicalBlock(scope: !786, file: !31, line: 283, column: 45)
!790 = !DILocation(line: 284, column: 2, scope: !789)
!791 = !DILocation(line: 285, column: 2, scope: !789)
!792 = !DILocation(line: 287, column: 9, scope: !793)
!793 = distinct !DILexicalBlock(scope: !770, file: !31, line: 287, column: 9)
!794 = !DILocation(line: 287, column: 17, scope: !793)
!795 = !DILocation(line: 287, column: 22, scope: !793)
!796 = !DILocation(line: 287, column: 9, scope: !770)
!797 = !DILocation(line: 288, column: 10, scope: !798)
!798 = distinct !DILexicalBlock(scope: !793, file: !31, line: 287, column: 28)
!799 = !DILocation(line: 288, column: 2, scope: !798)
!800 = !DILocation(line: 289, column: 2, scope: !798)
!801 = !DILocation(line: 291, column: 17, scope: !802)
!802 = distinct !DILexicalBlock(scope: !770, file: !31, line: 291, column: 9)
!803 = !DILocation(line: 291, column: 32, scope: !802)
!804 = !DILocation(line: 291, column: 21, scope: !802)
!805 = !DILocation(line: 291, column: 9, scope: !770)
!806 = !DILocation(line: 292, column: 2, scope: !807)
!807 = distinct !DILexicalBlock(scope: !808, file: !31, line: 292, column: 2)
!808 = distinct !DILexicalBlock(scope: !809, file: !31, line: 292, column: 2)
!809 = distinct !DILexicalBlock(scope: !802, file: !31, line: 291, column: 37)
!810 = !DILocation(line: 292, column: 2, scope: !808)
!811 = !DILocation(line: 292, column: 2, scope: !812)
!812 = distinct !DILexicalBlock(scope: !807, file: !31, line: 292, column: 2)
!813 = !DILocation(line: 295, column: 18, scope: !770)
!814 = !DILocation(line: 295, column: 33, scope: !770)
!815 = !DILocation(line: 295, column: 10, scope: !770)
!816 = !DILocation(line: 296, column: 5, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !31, line: 296, column: 5)
!818 = distinct !DILexicalBlock(scope: !770, file: !31, line: 296, column: 5)
!819 = !DILocation(line: 296, column: 5, scope: !818)
!820 = !DILocation(line: 296, column: 5, scope: !821)
!821 = distinct !DILexicalBlock(scope: !817, file: !31, line: 296, column: 5)
!822 = !DILocation(line: 297, column: 5, scope: !823)
!823 = distinct !DILexicalBlock(scope: !824, file: !31, line: 297, column: 5)
!824 = distinct !DILexicalBlock(scope: !770, file: !31, line: 297, column: 5)
!825 = !DILocation(line: 297, column: 5, scope: !824)
!826 = !DILocation(line: 297, column: 5, scope: !827)
!827 = distinct !DILexicalBlock(scope: !823, file: !31, line: 297, column: 5)
!828 = !DILocation(line: 299, column: 1, scope: !770)
!829 = distinct !DISubprogram(name: "spec_mem_ungetc", scope: !31, file: !31, line: 301, type: !830, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !832)
!830 = !DISubroutineType(types: !831)
!831 = !{!9, !13, !8, !9, !9}
!832 = !{!833, !834, !835, !836, !837}
!833 = !DILocalVariable(name: "fds", arg: 1, scope: !829, file: !31, line: 301, type: !13)
!834 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !829, file: !31, line: 301, type: !8)
!835 = !DILocalVariable(name: "ch", arg: 3, scope: !829, file: !31, line: 301, type: !9)
!836 = !DILocalVariable(name: "fd", arg: 4, scope: !829, file: !31, line: 301, type: !9)
!837 = !DILocalVariable(name: "rc", scope: !829, file: !31, line: 302, type: !9)
!838 = !DILocation(line: 0, scope: !829)
!839 = !DILocation(line: 303, column: 5, scope: !840)
!840 = distinct !DILexicalBlock(scope: !841, file: !31, line: 303, column: 5)
!841 = distinct !DILexicalBlock(scope: !829, file: !31, line: 303, column: 5)
!842 = !DILocation(line: 303, column: 5, scope: !841)
!843 = !DILocation(line: 303, column: 5, scope: !844)
!844 = distinct !DILexicalBlock(scope: !840, file: !31, line: 303, column: 5)
!845 = !DILocation(line: 304, column: 12, scope: !846)
!846 = distinct !DILexicalBlock(scope: !829, file: !31, line: 304, column: 9)
!847 = !DILocation(line: 304, column: 16, scope: !846)
!848 = !DILocation(line: 305, column: 10, scope: !849)
!849 = distinct !DILexicalBlock(scope: !846, file: !31, line: 304, column: 45)
!850 = !DILocation(line: 305, column: 2, scope: !849)
!851 = !DILocation(line: 306, column: 2, scope: !849)
!852 = !DILocation(line: 308, column: 9, scope: !853)
!853 = distinct !DILexicalBlock(scope: !829, file: !31, line: 308, column: 9)
!854 = !DILocation(line: 308, column: 17, scope: !853)
!855 = !DILocation(line: 308, column: 22, scope: !853)
!856 = !DILocation(line: 308, column: 9, scope: !829)
!857 = !DILocation(line: 309, column: 10, scope: !858)
!858 = distinct !DILexicalBlock(scope: !853, file: !31, line: 308, column: 28)
!859 = !DILocation(line: 309, column: 2, scope: !858)
!860 = !DILocation(line: 310, column: 2, scope: !858)
!861 = !DILocation(line: 312, column: 17, scope: !862)
!862 = distinct !DILexicalBlock(scope: !829, file: !31, line: 312, column: 9)
!863 = !DILocation(line: 312, column: 21, scope: !862)
!864 = !DILocation(line: 312, column: 9, scope: !829)
!865 = !DILocation(line: 313, column: 10, scope: !866)
!866 = distinct !DILexicalBlock(scope: !862, file: !31, line: 312, column: 27)
!867 = !DILocation(line: 313, column: 2, scope: !866)
!868 = !DILocation(line: 314, column: 2, scope: !866)
!869 = !DILocation(line: 316, column: 17, scope: !870)
!870 = distinct !DILexicalBlock(scope: !829, file: !31, line: 316, column: 9)
!871 = !DILocation(line: 316, column: 21, scope: !870)
!872 = !DILocation(line: 316, column: 9, scope: !870)
!873 = !DILocation(line: 316, column: 36, scope: !870)
!874 = !DILocation(line: 316, column: 9, scope: !829)
!875 = !DILocation(line: 317, column: 10, scope: !876)
!876 = distinct !DILexicalBlock(scope: !870, file: !31, line: 316, column: 43)
!877 = !DILocation(line: 317, column: 2, scope: !876)
!878 = !DILocation(line: 318, column: 2, scope: !876)
!879 = !DILocation(line: 320, column: 5, scope: !880)
!880 = distinct !DILexicalBlock(scope: !881, file: !31, line: 320, column: 5)
!881 = distinct !DILexicalBlock(scope: !829, file: !31, line: 320, column: 5)
!882 = !DILocation(line: 320, column: 5, scope: !881)
!883 = !DILocation(line: 320, column: 5, scope: !884)
!884 = distinct !DILexicalBlock(scope: !880, file: !31, line: 320, column: 5)
!885 = !DILocation(line: 321, column: 5, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !31, line: 321, column: 5)
!887 = distinct !DILexicalBlock(scope: !829, file: !31, line: 321, column: 5)
!888 = !DILocation(line: 321, column: 5, scope: !887)
!889 = !DILocation(line: 321, column: 5, scope: !890)
!890 = distinct !DILexicalBlock(scope: !886, file: !31, line: 321, column: 5)
!891 = !DILocation(line: 322, column: 5, scope: !829)
!892 = distinct !DISubprogram(name: "spec_mem_lseek", scope: !31, file: !31, line: 325, type: !893, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !895)
!893 = !DISubroutineType(types: !894)
!894 = !{!19, !13, !8, !9, !19, !9}
!895 = !{!896, !897, !898, !899, !900, !901}
!896 = !DILocalVariable(name: "fds", arg: 1, scope: !892, file: !31, line: 325, type: !13)
!897 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !892, file: !31, line: 325, type: !8)
!898 = !DILocalVariable(name: "fd", arg: 3, scope: !892, file: !31, line: 325, type: !9)
!899 = !DILocalVariable(name: "offset", arg: 4, scope: !892, file: !31, line: 325, type: !19)
!900 = !DILocalVariable(name: "whence", arg: 5, scope: !892, file: !31, line: 325, type: !9)
!901 = !DILocalVariable(name: "cur_pos", scope: !892, file: !31, line: 326, type: !19)
!902 = !DILocation(line: 0, scope: !892)
!903 = !DILocation(line: 328, column: 12, scope: !904)
!904 = distinct !DILexicalBlock(scope: !892, file: !31, line: 328, column: 9)
!905 = !DILocation(line: 328, column: 16, scope: !904)
!906 = !DILocation(line: 329, column: 10, scope: !907)
!907 = distinct !DILexicalBlock(scope: !904, file: !31, line: 328, column: 45)
!908 = !DILocation(line: 329, column: 2, scope: !907)
!909 = !DILocation(line: 330, column: 2, scope: !907)
!910 = !DILocation(line: 332, column: 9, scope: !911)
!911 = distinct !DILexicalBlock(scope: !892, file: !31, line: 332, column: 9)
!912 = !DILocation(line: 332, column: 17, scope: !911)
!913 = !DILocation(line: 332, column: 22, scope: !911)
!914 = !DILocation(line: 332, column: 9, scope: !892)
!915 = !DILocation(line: 333, column: 17, scope: !916)
!916 = distinct !DILexicalBlock(scope: !911, file: !31, line: 332, column: 28)
!917 = !DILocation(line: 333, column: 9, scope: !916)
!918 = !DILocation(line: 334, column: 2, scope: !916)
!919 = !DILocation(line: 334, column: 8, scope: !916)
!920 = !DILocation(line: 335, column: 2, scope: !916)
!921 = !DILocation(line: 338, column: 23, scope: !892)
!922 = !DILocation(line: 339, column: 5, scope: !923)
!923 = distinct !DILexicalBlock(scope: !924, file: !31, line: 339, column: 5)
!924 = distinct !DILexicalBlock(scope: !892, file: !31, line: 339, column: 5)
!925 = !DILocation(line: 339, column: 5, scope: !924)
!926 = !DILocation(line: 339, column: 5, scope: !927)
!927 = distinct !DILexicalBlock(scope: !923, file: !31, line: 339, column: 5)
!928 = !DILocation(line: 340, column: 9, scope: !892)
!929 = !DILocation(line: 345, column: 31, scope: !930)
!930 = distinct !DILexicalBlock(scope: !931, file: !31, line: 344, column: 14)
!931 = distinct !DILexicalBlock(scope: !932, file: !31, line: 342, column: 14)
!932 = distinct !DILexicalBlock(scope: !892, file: !31, line: 340, column: 9)
!933 = !DILocation(line: 347, column: 9, scope: !934)
!934 = distinct !DILexicalBlock(scope: !935, file: !31, line: 347, column: 9)
!935 = distinct !DILexicalBlock(scope: !936, file: !31, line: 347, column: 9)
!936 = distinct !DILexicalBlock(scope: !930, file: !31, line: 346, column: 10)
!937 = !DILocation(line: 347, column: 9, scope: !935)
!938 = !DILocation(line: 347, column: 9, scope: !939)
!939 = distinct !DILexicalBlock(scope: !934, file: !31, line: 347, column: 9)
!940 = !DILocation(line: 348, column: 9, scope: !936)
!941 = !DILocation(line: 348, column: 15, scope: !936)
!942 = !DILocation(line: 349, column: 9, scope: !936)
!943 = !DILocation(line: 0, scope: !931)
!944 = !{!72, !72, i64 0}
!945 = !DILocation(line: 0, scope: !932)
!946 = !DILocation(line: 352, column: 21, scope: !947)
!947 = distinct !DILexicalBlock(scope: !892, file: !31, line: 352, column: 9)
!948 = !DILocation(line: 352, column: 9, scope: !892)
!949 = !DILocation(line: 353, column: 9, scope: !950)
!950 = distinct !DILexicalBlock(scope: !951, file: !31, line: 353, column: 9)
!951 = distinct !DILexicalBlock(scope: !947, file: !31, line: 352, column: 26)
!952 = !DILocation(line: 353, column: 9, scope: !953)
!953 = distinct !DILexicalBlock(scope: !954, file: !31, line: 353, column: 9)
!954 = distinct !DILexicalBlock(scope: !950, file: !31, line: 353, column: 9)
!955 = !DILocation(line: 354, column: 21, scope: !951)
!956 = !DILocation(line: 355, column: 9, scope: !951)
!957 = !DILocation(line: 355, column: 15, scope: !951)
!958 = !DILocation(line: 356, column: 9, scope: !951)
!959 = !DILocation(line: 359, column: 5, scope: !960)
!960 = distinct !DILexicalBlock(scope: !892, file: !31, line: 359, column: 5)
!961 = !DILocation(line: 359, column: 5, scope: !962)
!962 = distinct !DILexicalBlock(scope: !963, file: !31, line: 359, column: 5)
!963 = distinct !DILexicalBlock(scope: !960, file: !31, line: 359, column: 5)
!964 = !DILocation(line: 360, column: 20, scope: !892)
!965 = !DILocation(line: 361, column: 1, scope: !892)
!966 = distinct !DISubprogram(name: "spec_mem_rewind", scope: !31, file: !31, line: 363, type: !771, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !967)
!967 = !{!968, !969, !970}
!968 = !DILocalVariable(name: "fds", arg: 1, scope: !966, file: !31, line: 363, type: !13)
!969 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !966, file: !31, line: 363, type: !8)
!970 = !DILocalVariable(name: "fd", arg: 3, scope: !966, file: !31, line: 363, type: !9)
!971 = !DILocation(line: 0, scope: !966)
!972 = !DILocation(line: 364, column: 5, scope: !973)
!973 = distinct !DILexicalBlock(scope: !974, file: !31, line: 364, column: 5)
!974 = distinct !DILexicalBlock(scope: !966, file: !31, line: 364, column: 5)
!975 = !DILocation(line: 364, column: 5, scope: !974)
!976 = !DILocation(line: 364, column: 5, scope: !977)
!977 = distinct !DILexicalBlock(scope: !973, file: !31, line: 364, column: 5)
!978 = !DILocation(line: 365, column: 5, scope: !966)
!979 = !DILocation(line: 366, column: 5, scope: !966)
!980 = distinct !DISubprogram(name: "spec_mem_reset", scope: !31, file: !31, line: 369, type: !771, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !981)
!981 = !{!982, !983, !984}
!982 = !DILocalVariable(name: "fds", arg: 1, scope: !980, file: !31, line: 369, type: !13)
!983 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !980, file: !31, line: 369, type: !8)
!984 = !DILocalVariable(name: "fd", arg: 3, scope: !980, file: !31, line: 369, type: !9)
!985 = !DILocation(line: 0, scope: !980)
!986 = !DILocation(line: 370, column: 5, scope: !987)
!987 = distinct !DILexicalBlock(scope: !988, file: !31, line: 370, column: 5)
!988 = distinct !DILexicalBlock(scope: !980, file: !31, line: 370, column: 5)
!989 = !DILocation(line: 370, column: 5, scope: !988)
!990 = !DILocation(line: 370, column: 5, scope: !991)
!991 = distinct !DILexicalBlock(scope: !987, file: !31, line: 370, column: 5)
!992 = !DILocation(line: 371, column: 12, scope: !980)
!993 = !DILocation(line: 371, column: 20, scope: !980)
!994 = !DILocation(line: 371, column: 36, scope: !980)
!995 = !DILocation(line: 371, column: 5, scope: !980)
!996 = !DILocation(line: 372, column: 17, scope: !980)
!997 = !DILocation(line: 373, column: 5, scope: !998)
!998 = distinct !DILexicalBlock(scope: !999, file: !31, line: 373, column: 5)
!999 = distinct !DILexicalBlock(scope: !980, file: !31, line: 373, column: 5)
!1000 = !DILocation(line: 373, column: 5, scope: !999)
!1001 = !DILocation(line: 373, column: 5, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !998, file: !31, line: 373, column: 5)
!1003 = !DILocation(line: 374, column: 5, scope: !980)
!1004 = distinct !DISubprogram(name: "spec_mem_get_length", scope: !31, file: !31, line: 377, type: !1005, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1007)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!19, !13, !8, !9}
!1007 = !{!1008, !1009, !1010}
!1008 = !DILocalVariable(name: "fds", arg: 1, scope: !1004, file: !31, line: 377, type: !13)
!1009 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !1004, file: !31, line: 377, type: !8)
!1010 = !DILocalVariable(name: "fd", arg: 3, scope: !1004, file: !31, line: 377, type: !9)
!1011 = !DILocation(line: 0, scope: !1004)
!1012 = !DILocation(line: 378, column: 9, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1004, file: !31, line: 378, column: 9)
!1014 = !DILocation(line: 378, column: 17, scope: !1013)
!1015 = !DILocation(line: 378, column: 22, scope: !1013)
!1016 = !DILocation(line: 378, column: 9, scope: !1004)
!1017 = !DILocation(line: 379, column: 10, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1013, file: !31, line: 378, column: 28)
!1019 = !DILocation(line: 379, column: 2, scope: !1018)
!1020 = !DILocation(line: 380, column: 2, scope: !1018)
!1021 = !DILocation(line: 382, column: 5, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !31, line: 382, column: 5)
!1023 = distinct !DILexicalBlock(scope: !1004, file: !31, line: 382, column: 5)
!1024 = !DILocation(line: 382, column: 5, scope: !1023)
!1025 = !DILocation(line: 382, column: 5, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1022, file: !31, line: 382, column: 5)
!1027 = !DILocation(line: 383, column: 20, scope: !1004)
!1028 = !DILocation(line: 383, column: 5, scope: !1004)
!1029 = !DILocation(line: 384, column: 1, scope: !1004)
!1030 = distinct !DISubprogram(name: "spec_mem_fopen", scope: !31, file: !31, line: 386, type: !1031, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1033)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!9, !13, !8, !540, !540}
!1033 = !{!1034, !1035, !1036, !1037, !1038}
!1034 = !DILocalVariable(name: "fds", arg: 1, scope: !1030, file: !31, line: 386, type: !13)
!1035 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !1030, file: !31, line: 386, type: !8)
!1036 = !DILocalVariable(name: "filename", arg: 3, scope: !1030, file: !31, line: 386, type: !540)
!1037 = !DILocalVariable(name: "mode", arg: 4, scope: !1030, file: !31, line: 386, type: !540)
!1038 = !DILocalVariable(name: "fd", scope: !1030, file: !31, line: 387, type: !9)
!1039 = !DILocation(line: 0, scope: !1030)
!1040 = !DILocation(line: 387, column: 19, scope: !1030)
!1041 = !DILocation(line: 387, column: 14, scope: !1030)
!1042 = !DILocation(line: 388, column: 12, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1030, file: !31, line: 388, column: 9)
!1044 = !DILocation(line: 388, column: 16, scope: !1043)
!1045 = !DILocation(line: 389, column: 9, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1043, file: !31, line: 388, column: 45)
!1047 = !DILocation(line: 389, column: 15, scope: !1046)
!1048 = !DILocation(line: 390, column: 9, scope: !1046)
!1049 = !DILocation(line: 392, column: 5, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !31, line: 392, column: 5)
!1051 = distinct !DILexicalBlock(scope: !1030, file: !31, line: 392, column: 5)
!1052 = !DILocation(line: 392, column: 5, scope: !1051)
!1053 = !DILocation(line: 392, column: 5, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1050, file: !31, line: 392, column: 5)
!1055 = !DILocation(line: 393, column: 5, scope: !1030)
!1056 = !DILocation(line: 393, column: 13, scope: !1030)
!1057 = !DILocation(line: 393, column: 18, scope: !1030)
!1058 = !DILocation(line: 397, column: 9, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1030, file: !31, line: 397, column: 9)
!1060 = !DILocation(line: 397, column: 9, scope: !1030)
!1061 = !DILocation(line: 398, column: 13, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !31, line: 398, column: 13)
!1063 = distinct !DILexicalBlock(scope: !1059, file: !31, line: 397, column: 25)
!1064 = !DILocation(line: 398, column: 21, scope: !1062)
!1065 = !DILocation(line: 398, column: 13, scope: !1063)
!1066 = !DILocation(line: 399, column: 55, scope: !1062)
!1067 = !DILocation(line: 399, column: 13, scope: !1062)
!1068 = !DILocation(line: 0, scope: !980, inlinedAt: !1069)
!1069 = distinct !DILocation(line: 401, column: 13, scope: !1062)
!1070 = !DILocation(line: 370, column: 5, scope: !987, inlinedAt: !1069)
!1071 = !DILocation(line: 370, column: 5, scope: !988, inlinedAt: !1069)
!1072 = !DILocation(line: 370, column: 5, scope: !991, inlinedAt: !1069)
!1073 = !DILocation(line: 371, column: 12, scope: !980, inlinedAt: !1069)
!1074 = !DILocation(line: 371, column: 20, scope: !980, inlinedAt: !1069)
!1075 = !DILocation(line: 371, column: 36, scope: !980, inlinedAt: !1069)
!1076 = !DILocation(line: 371, column: 5, scope: !980, inlinedAt: !1069)
!1077 = !DILocation(line: 372, column: 17, scope: !980, inlinedAt: !1069)
!1078 = !DILocation(line: 373, column: 5, scope: !998, inlinedAt: !1069)
!1079 = !DILocation(line: 373, column: 5, scope: !999, inlinedAt: !1069)
!1080 = !DILocation(line: 373, column: 5, scope: !1002, inlinedAt: !1069)
!1081 = !DILocation(line: 0, scope: !966, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 403, column: 9, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1059, file: !31, line: 402, column: 16)
!1084 = !DILocation(line: 364, column: 5, scope: !973, inlinedAt: !1082)
!1085 = !DILocation(line: 364, column: 5, scope: !974, inlinedAt: !1082)
!1086 = !DILocation(line: 364, column: 5, scope: !977, inlinedAt: !1082)
!1087 = !DILocation(line: 365, column: 5, scope: !966, inlinedAt: !1082)
!1088 = !DILocation(line: 403, column: 9, scope: !1083)
!1089 = !DILocation(line: 406, column: 1, scope: !1030)
!1090 = distinct !DISubprogram(name: "spec_mem_open", scope: !31, file: !31, line: 408, type: !1091, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1093)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!9, !13, !8, !11, !9}
!1093 = !{!1094, !1095, !1096, !1097, !1098}
!1094 = !DILocalVariable(name: "fds", arg: 1, scope: !1090, file: !31, line: 408, type: !13)
!1095 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !1090, file: !31, line: 408, type: !8)
!1096 = !DILocalVariable(name: "filename", arg: 3, scope: !1090, file: !31, line: 408, type: !11)
!1097 = !DILocalVariable(name: "mode", arg: 4, scope: !1090, file: !31, line: 408, type: !9)
!1098 = !DILocalVariable(name: "fd", scope: !1090, file: !31, line: 409, type: !9)
!1099 = !DILocation(line: 0, scope: !1090)
!1100 = !DILocation(line: 409, column: 19, scope: !1090)
!1101 = !DILocation(line: 409, column: 14, scope: !1090)
!1102 = !DILocation(line: 410, column: 12, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1090, file: !31, line: 410, column: 9)
!1104 = !DILocation(line: 410, column: 16, scope: !1103)
!1105 = !DILocation(line: 411, column: 9, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1103, file: !31, line: 410, column: 45)
!1107 = !DILocation(line: 411, column: 15, scope: !1106)
!1108 = !DILocation(line: 412, column: 9, scope: !1106)
!1109 = !DILocation(line: 414, column: 5, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !31, line: 414, column: 5)
!1111 = distinct !DILexicalBlock(scope: !1090, file: !31, line: 414, column: 5)
!1112 = !DILocation(line: 414, column: 5, scope: !1111)
!1113 = !DILocation(line: 414, column: 5, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1110, file: !31, line: 414, column: 5)
!1115 = !DILocation(line: 415, column: 5, scope: !1090)
!1116 = !DILocation(line: 415, column: 13, scope: !1090)
!1117 = !DILocation(line: 415, column: 18, scope: !1090)
!1118 = !DILocation(line: 416, column: 27, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1090, file: !31, line: 416, column: 9)
!1120 = !DILocation(line: 417, column: 18, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !31, line: 417, column: 13)
!1122 = distinct !DILexicalBlock(scope: !1119, file: !31, line: 416, column: 47)
!1123 = !DILocation(line: 417, column: 13, scope: !1122)
!1124 = !DILocation(line: 0, scope: !980, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 418, column: 13, scope: !1121)
!1126 = !DILocation(line: 370, column: 5, scope: !987, inlinedAt: !1125)
!1127 = !DILocation(line: 370, column: 5, scope: !988, inlinedAt: !1125)
!1128 = !DILocation(line: 370, column: 5, scope: !991, inlinedAt: !1125)
!1129 = !DILocation(line: 371, column: 12, scope: !980, inlinedAt: !1125)
!1130 = !DILocation(line: 371, column: 20, scope: !980, inlinedAt: !1125)
!1131 = !DILocation(line: 371, column: 36, scope: !980, inlinedAt: !1125)
!1132 = !DILocation(line: 371, column: 5, scope: !980, inlinedAt: !1125)
!1133 = !DILocation(line: 372, column: 17, scope: !980, inlinedAt: !1125)
!1134 = !DILocation(line: 373, column: 5, scope: !998, inlinedAt: !1125)
!1135 = !DILocation(line: 373, column: 5, scope: !999, inlinedAt: !1125)
!1136 = !DILocation(line: 373, column: 5, scope: !1002, inlinedAt: !1125)
!1137 = !DILocation(line: 419, column: 18, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1122, file: !31, line: 419, column: 13)
!1139 = !DILocation(line: 419, column: 13, scope: !1122)
!1140 = !DILocation(line: 420, column: 55, scope: !1138)
!1141 = !DILocation(line: 420, column: 13, scope: !1138)
!1142 = !DILocation(line: 0, scope: !966, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 422, column: 13, scope: !1138)
!1144 = !DILocation(line: 364, column: 5, scope: !973, inlinedAt: !1143)
!1145 = !DILocation(line: 364, column: 5, scope: !974, inlinedAt: !1143)
!1146 = !DILocation(line: 364, column: 5, scope: !977, inlinedAt: !1143)
!1147 = !DILocation(line: 365, column: 5, scope: !966, inlinedAt: !1143)
!1148 = !DILocation(line: 0, scope: !966, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 424, column: 9, scope: !1119)
!1150 = !DILocation(line: 364, column: 5, scope: !973, inlinedAt: !1149)
!1151 = !DILocation(line: 364, column: 5, scope: !974, inlinedAt: !1149)
!1152 = !DILocation(line: 364, column: 5, scope: !977, inlinedAt: !1149)
!1153 = !DILocation(line: 365, column: 5, scope: !966, inlinedAt: !1149)
!1154 = !DILocation(line: 427, column: 1, scope: !1090)
!1155 = distinct !DISubprogram(name: "spec_mem_write", scope: !31, file: !31, line: 429, type: !626, scopeLine: 429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1156)
!1156 = !{!1157, !1158, !1159, !1160, !1161}
!1157 = !DILocalVariable(name: "fds", arg: 1, scope: !1155, file: !31, line: 429, type: !13)
!1158 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !1155, file: !31, line: 429, type: !8)
!1159 = !DILocalVariable(name: "fd", arg: 3, scope: !1155, file: !31, line: 429, type: !9)
!1160 = !DILocalVariable(name: "buf", arg: 4, scope: !1155, file: !31, line: 429, type: !6)
!1161 = !DILocalVariable(name: "size", arg: 5, scope: !1155, file: !31, line: 429, type: !19)
!1162 = !DILocation(line: 0, scope: !1155)
!1163 = !DILocation(line: 430, column: 5, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !31, line: 430, column: 5)
!1165 = distinct !DILexicalBlock(scope: !1155, file: !31, line: 430, column: 5)
!1166 = !DILocation(line: 430, column: 5, scope: !1165)
!1167 = !DILocation(line: 430, column: 5, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1164, file: !31, line: 430, column: 5)
!1169 = !DILocation(line: 431, column: 12, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1155, file: !31, line: 431, column: 9)
!1171 = !DILocation(line: 431, column: 16, scope: !1170)
!1172 = !DILocation(line: 432, column: 10, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1170, file: !31, line: 431, column: 45)
!1174 = !DILocation(line: 432, column: 2, scope: !1173)
!1175 = !DILocation(line: 433, column: 2, scope: !1173)
!1176 = !DILocation(line: 435, column: 9, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1155, file: !31, line: 435, column: 9)
!1178 = !DILocation(line: 435, column: 17, scope: !1177)
!1179 = !DILocation(line: 435, column: 22, scope: !1177)
!1180 = !DILocation(line: 435, column: 9, scope: !1155)
!1181 = !DILocation(line: 440, column: 20, scope: !1155)
!1182 = !DILocation(line: 440, column: 24, scope: !1155)
!1183 = !DILocation(line: 440, column: 41, scope: !1155)
!1184 = !DILocation(line: 440, column: 31, scope: !1155)
!1185 = !DILocation(line: 440, column: 5, scope: !1155)
!1186 = !DILocation(line: 436, column: 17, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1177, file: !31, line: 435, column: 28)
!1188 = !DILocation(line: 436, column: 9, scope: !1187)
!1189 = !DILocation(line: 437, column: 2, scope: !1187)
!1190 = !DILocation(line: 437, column: 8, scope: !1187)
!1191 = !DILocation(line: 438, column: 2, scope: !1187)
!1192 = !DILocation(line: 441, column: 9, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1155, file: !31, line: 440, column: 48)
!1194 = distinct !{!1194, !1185, !1195, !99, !100}
!1195 = !DILocation(line: 442, column: 5, scope: !1155)
!1196 = !DILocation(line: 443, column: 20, scope: !1155)
!1197 = !DILocation(line: 443, column: 24, scope: !1155)
!1198 = !DILocation(line: 443, column: 5, scope: !1155)
!1199 = !DILocation(line: 444, column: 17, scope: !1155)
!1200 = !DILocation(line: 445, column: 31, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1155, file: !31, line: 445, column: 9)
!1202 = !DILocation(line: 445, column: 21, scope: !1201)
!1203 = !DILocation(line: 445, column: 9, scope: !1155)
!1204 = !DILocation(line: 446, column: 21, scope: !1201)
!1205 = !DILocation(line: 446, column: 9, scope: !1201)
!1206 = !DILocation(line: 447, column: 5, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !31, line: 447, column: 5)
!1208 = distinct !DILexicalBlock(scope: !1155, file: !31, line: 447, column: 5)
!1209 = !DILocation(line: 447, column: 5, scope: !1208)
!1210 = !DILocation(line: 447, column: 5, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1207, file: !31, line: 447, column: 5)
!1212 = !DILocation(line: 449, column: 1, scope: !1155)
!1213 = distinct !DISubprogram(name: "spec_mem_fwrite", scope: !31, file: !31, line: 451, type: !696, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1214)
!1214 = !{!1215, !1216, !1217, !1218, !1219, !1220}
!1215 = !DILocalVariable(name: "fds", arg: 1, scope: !1213, file: !31, line: 451, type: !13)
!1216 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !1213, file: !31, line: 451, type: !8)
!1217 = !DILocalVariable(name: "buf", arg: 3, scope: !1213, file: !31, line: 451, type: !6)
!1218 = !DILocalVariable(name: "size", arg: 4, scope: !1213, file: !31, line: 451, type: !19)
!1219 = !DILocalVariable(name: "num", arg: 5, scope: !1213, file: !31, line: 451, type: !9)
!1220 = !DILocalVariable(name: "fd", arg: 6, scope: !1213, file: !31, line: 451, type: !9)
!1221 = !DILocation(line: 0, scope: !1213)
!1222 = !DILocation(line: 452, column: 5, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !31, line: 452, column: 5)
!1224 = distinct !DILexicalBlock(scope: !1213, file: !31, line: 452, column: 5)
!1225 = !DILocation(line: 452, column: 5, scope: !1224)
!1226 = !DILocation(line: 452, column: 5, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1223, file: !31, line: 452, column: 5)
!1228 = !DILocation(line: 453, column: 12, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1213, file: !31, line: 453, column: 9)
!1230 = !DILocation(line: 453, column: 16, scope: !1229)
!1231 = !DILocation(line: 454, column: 10, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1229, file: !31, line: 453, column: 45)
!1233 = !DILocation(line: 454, column: 2, scope: !1232)
!1234 = !DILocation(line: 455, column: 2, scope: !1232)
!1235 = !DILocation(line: 457, column: 9, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1213, file: !31, line: 457, column: 9)
!1237 = !DILocation(line: 457, column: 17, scope: !1236)
!1238 = !DILocation(line: 457, column: 22, scope: !1236)
!1239 = !DILocation(line: 457, column: 9, scope: !1213)
!1240 = !DILocation(line: 461, column: 20, scope: !1213)
!1241 = !DILocation(line: 461, column: 24, scope: !1213)
!1242 = !DILocation(line: 461, column: 49, scope: !1213)
!1243 = !DILocation(line: 461, column: 39, scope: !1213)
!1244 = !DILocation(line: 461, column: 5, scope: !1213)
!1245 = !DILocation(line: 458, column: 10, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1236, file: !31, line: 457, column: 28)
!1247 = !DILocation(line: 458, column: 2, scope: !1246)
!1248 = !DILocation(line: 459, column: 2, scope: !1246)
!1249 = !DILocation(line: 462, column: 9, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1213, file: !31, line: 461, column: 56)
!1251 = distinct !{!1251, !1244, !1252, !99, !100}
!1252 = !DILocation(line: 463, column: 5, scope: !1213)
!1253 = !DILocation(line: 464, column: 20, scope: !1213)
!1254 = !DILocation(line: 464, column: 24, scope: !1213)
!1255 = !DILocation(line: 464, column: 5, scope: !1213)
!1256 = !DILocation(line: 465, column: 17, scope: !1213)
!1257 = !DILocation(line: 466, column: 31, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1213, file: !31, line: 466, column: 9)
!1259 = !DILocation(line: 466, column: 21, scope: !1258)
!1260 = !DILocation(line: 466, column: 9, scope: !1213)
!1261 = !DILocation(line: 467, column: 21, scope: !1258)
!1262 = !DILocation(line: 467, column: 9, scope: !1258)
!1263 = !DILocation(line: 468, column: 5, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !31, line: 468, column: 5)
!1265 = distinct !DILexicalBlock(scope: !1213, file: !31, line: 468, column: 5)
!1266 = !DILocation(line: 468, column: 5, scope: !1265)
!1267 = !DILocation(line: 468, column: 5, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1264, file: !31, line: 468, column: 5)
!1269 = !DILocation(line: 469, column: 5, scope: !1213)
!1270 = distinct !DISubprogram(name: "spec_mem_putc", scope: !31, file: !31, line: 472, type: !830, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1271)
!1271 = !{!1272, !1273, !1274, !1275}
!1272 = !DILocalVariable(name: "fds", arg: 1, scope: !1270, file: !31, line: 472, type: !13)
!1273 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !1270, file: !31, line: 472, type: !8)
!1274 = !DILocalVariable(name: "ch", arg: 3, scope: !1270, file: !31, line: 472, type: !9)
!1275 = !DILocalVariable(name: "fd", arg: 4, scope: !1270, file: !31, line: 472, type: !9)
!1276 = !DILocation(line: 0, scope: !1270)
!1277 = !DILocation(line: 473, column: 5, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !31, line: 473, column: 5)
!1279 = distinct !DILexicalBlock(scope: !1270, file: !31, line: 473, column: 5)
!1280 = !DILocation(line: 473, column: 5, scope: !1279)
!1281 = !DILocation(line: 473, column: 5, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1278, file: !31, line: 473, column: 5)
!1283 = !DILocation(line: 474, column: 12, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1270, file: !31, line: 474, column: 9)
!1285 = !DILocation(line: 474, column: 16, scope: !1284)
!1286 = !DILocation(line: 475, column: 10, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1284, file: !31, line: 474, column: 45)
!1288 = !DILocation(line: 475, column: 2, scope: !1287)
!1289 = !DILocation(line: 476, column: 2, scope: !1287)
!1290 = !DILocation(line: 478, column: 9, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1270, file: !31, line: 478, column: 9)
!1292 = !DILocation(line: 478, column: 17, scope: !1291)
!1293 = !DILocation(line: 478, column: 22, scope: !1291)
!1294 = !DILocation(line: 478, column: 9, scope: !1270)
!1295 = !DILocation(line: 479, column: 10, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1291, file: !31, line: 478, column: 28)
!1297 = !DILocation(line: 479, column: 2, scope: !1296)
!1298 = !DILocation(line: 480, column: 2, scope: !1296)
!1299 = !DILocation(line: 482, column: 34, scope: !1270)
!1300 = !DILocation(line: 482, column: 13, scope: !1270)
!1301 = !DILocation(line: 482, column: 25, scope: !1270)
!1302 = !DILocation(line: 482, column: 28, scope: !1270)
!1303 = !DILocation(line: 482, column: 5, scope: !1270)
!1304 = !DILocation(line: 482, column: 32, scope: !1270)
!1305 = !DILocation(line: 483, column: 17, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1270, file: !31, line: 483, column: 9)
!1307 = !DILocation(line: 483, column: 31, scope: !1306)
!1308 = !DILocation(line: 483, column: 21, scope: !1306)
!1309 = !DILocation(line: 483, column: 9, scope: !1270)
!1310 = !DILocation(line: 484, column: 21, scope: !1306)
!1311 = !DILocation(line: 484, column: 9, scope: !1306)
!1312 = !DILocation(line: 485, column: 5, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !31, line: 485, column: 5)
!1314 = distinct !DILexicalBlock(scope: !1270, file: !31, line: 485, column: 5)
!1315 = !DILocation(line: 485, column: 5, scope: !1314)
!1316 = !DILocation(line: 485, column: 5, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1313, file: !31, line: 485, column: 5)
!1318 = !DILocation(line: 486, column: 5, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !31, line: 486, column: 5)
!1320 = distinct !DILexicalBlock(scope: !1270, file: !31, line: 486, column: 5)
!1321 = !DILocation(line: 486, column: 5, scope: !1320)
!1322 = !DILocation(line: 486, column: 5, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1319, file: !31, line: 486, column: 5)
!1324 = !DILocation(line: 487, column: 5, scope: !1270)
!1325 = distinct !DISubprogram(name: "spec_mem_feof", scope: !31, file: !31, line: 490, type: !771, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1326)
!1326 = !{!1327, !1328, !1329}
!1327 = !DILocalVariable(name: "fds", arg: 1, scope: !1325, file: !31, line: 490, type: !13)
!1328 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !1325, file: !31, line: 490, type: !8)
!1329 = !DILocalVariable(name: "fd", arg: 3, scope: !1325, file: !31, line: 490, type: !9)
!1330 = !DILocation(line: 0, scope: !1325)
!1331 = !DILocation(line: 491, column: 12, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1325, file: !31, line: 491, column: 9)
!1333 = !DILocation(line: 491, column: 16, scope: !1332)
!1334 = !DILocation(line: 492, column: 10, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1332, file: !31, line: 491, column: 45)
!1336 = !DILocation(line: 492, column: 2, scope: !1335)
!1337 = !DILocation(line: 493, column: 2, scope: !1335)
!1338 = !DILocation(line: 495, column: 5, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !31, line: 495, column: 5)
!1340 = distinct !DILexicalBlock(scope: !1325, file: !31, line: 495, column: 5)
!1341 = !DILocation(line: 495, column: 5, scope: !1340)
!1342 = !DILocation(line: 495, column: 5, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1339, file: !31, line: 495, column: 5)
!1344 = !DILocation(line: 496, column: 21, scope: !1325)
!1345 = !DILocation(line: 496, column: 36, scope: !1325)
!1346 = !DILocation(line: 496, column: 25, scope: !1325)
!1347 = !DILocation(line: 496, column: 5, scope: !1325)
!1348 = distinct !DISubprogram(name: "spec_mem_close", scope: !31, file: !31, line: 499, type: !771, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1349)
!1349 = !{!1350, !1351, !1352}
!1350 = !DILocalVariable(name: "fds", arg: 1, scope: !1348, file: !31, line: 499, type: !13)
!1351 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !1348, file: !31, line: 499, type: !8)
!1352 = !DILocalVariable(name: "fd", arg: 3, scope: !1348, file: !31, line: 499, type: !9)
!1353 = !DILocation(line: 0, scope: !1348)
!1354 = !DILocation(line: 500, column: 12, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1348, file: !31, line: 500, column: 9)
!1356 = !DILocation(line: 500, column: 16, scope: !1355)
!1357 = !DILocation(line: 501, column: 10, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1355, file: !31, line: 500, column: 45)
!1359 = !DILocation(line: 501, column: 2, scope: !1358)
!1360 = !DILocation(line: 502, column: 2, scope: !1358)
!1361 = !DILocation(line: 504, column: 9, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1348, file: !31, line: 504, column: 9)
!1363 = !DILocation(line: 504, column: 17, scope: !1362)
!1364 = !DILocation(line: 504, column: 22, scope: !1362)
!1365 = !DILocation(line: 504, column: 9, scope: !1348)
!1366 = !DILocation(line: 505, column: 17, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1362, file: !31, line: 504, column: 28)
!1368 = !DILocation(line: 505, column: 9, scope: !1367)
!1369 = !DILocation(line: 506, column: 2, scope: !1367)
!1370 = !DILocation(line: 506, column: 8, scope: !1367)
!1371 = !DILocation(line: 507, column: 2, scope: !1367)
!1372 = !DILocation(line: 509, column: 18, scope: !1348)
!1373 = !DILocation(line: 511, column: 5, scope: !1348)
!1374 = !DILocation(line: 512, column: 1, scope: !1348)
!1375 = distinct !DISubprogram(name: "spec_empty", scope: !31, file: !31, line: 514, type: !578, scopeLine: 514, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1376)
!1376 = !{!1377}
!1377 = !DILocalVariable(name: "fd", arg: 1, scope: !1375, file: !31, line: 514, type: !9)
!1378 = !DILocation(line: 0, scope: !1375)
!1379 = !DILocation(line: 515, column: 5, scope: !1375)
!1380 = distinct !DISubprogram(name: "spec_initbufs", scope: !31, file: !31, line: 518, type: !1381, scopeLine: 518, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !185)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{null}
!1383 = !DILocation(line: 527, column: 1, scope: !1380)
!1384 = distinct !DISubprogram(name: "spec_compress", scope: !31, file: !31, line: 529, type: !1385, scopeLine: 529, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1387)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{null, !9, !9, !8}
!1387 = !{!1388, !1389, !1390, !1391, !1392}
!1388 = !DILocalVariable(name: "in", arg: 1, scope: !1384, file: !31, line: 529, type: !9)
!1389 = !DILocalVariable(name: "out", arg: 2, scope: !1384, file: !31, line: 529, type: !9)
!1390 = !DILocalVariable(name: "lev", arg: 3, scope: !1384, file: !31, line: 529, type: !8)
!1391 = !DILocalVariable(name: "in_open", scope: !1384, file: !31, line: 531, type: !9)
!1392 = !DILocalVariable(name: "out_open", scope: !1384, file: !31, line: 532, type: !9)
!1393 = !DILocation(line: 0, scope: !1384)
!1394 = !DILocation(line: 531, column: 19, scope: !1384)
!1395 = !DILocation(line: 531, column: 31, scope: !1384)
!1396 = !DILocation(line: 532, column: 20, scope: !1384)
!1397 = !DILocation(line: 532, column: 33, scope: !1384)
!1398 = !DILocation(line: 533, column: 42, scope: !1384)
!1399 = !DILocation(line: 533, column: 22, scope: !1384)
!1400 = !DILocation(line: 538, column: 5, scope: !1384)
!1401 = !DILocation(line: 543, column: 5, scope: !1384)
!1402 = !DILocation(line: 543, column: 17, scope: !1384)
!1403 = !DILocation(line: 543, column: 22, scope: !1384)
!1404 = !DILocation(line: 544, column: 18, scope: !1384)
!1405 = !DILocation(line: 544, column: 23, scope: !1384)
!1406 = !DILocation(line: 545, column: 1, scope: !1384)
!1407 = !DISubprogram(name: "compressStream", scope: !31, file: !31, line: 46, type: !1408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !185)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{null, !9, !9, !207}
!1410 = !DISubprogram(name: "uncompressStream", scope: !31, file: !31, line: 45, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !185)
!1411 = distinct !DISubprogram(name: "debug_time", scope: !31, file: !31, line: 561, type: !1412, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !185)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!9}
!1414 = !DILocation(line: 569, column: 5, scope: !1411)
!1415 = distinct !DISubprogram(name: "sum_str_to_hex", scope: !31, file: !31, line: 603, type: !1416, scopeLine: 604, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1418)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!6, !11, !9}
!1418 = !{!1419, !1420, !1421, !1422}
!1419 = !DILocalVariable(name: "sum", arg: 1, scope: !1415, file: !31, line: 603, type: !11)
!1420 = !DILocalVariable(name: "bits", arg: 2, scope: !1415, file: !31, line: 603, type: !9)
!1421 = !DILocalVariable(name: "i", scope: !1415, file: !31, line: 605, type: !9)
!1422 = !DILocalVariable(name: "gen_sum", scope: !1415, file: !31, line: 606, type: !6)
!1423 = !DILocation(line: 0, scope: !1415)
!1424 = !DILocation(line: 610, column: 63, scope: !1415)
!1425 = !DILocation(line: 610, column: 68, scope: !1415)
!1426 = !DILocation(line: 610, column: 32, scope: !1415)
!1427 = !DILocation(line: 611, column: 17, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1415, file: !31, line: 611, column: 9)
!1429 = !DILocation(line: 611, column: 9, scope: !1415)
!1430 = !DILocation(line: 616, column: 18, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !31, line: 616, column: 5)
!1432 = distinct !DILexicalBlock(scope: !1415, file: !31, line: 616, column: 5)
!1433 = !DILocation(line: 616, column: 5, scope: !1432)
!1434 = !DILocation(line: 612, column: 17, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1428, file: !31, line: 611, column: 26)
!1436 = !DILocation(line: 612, column: 87, scope: !1435)
!1437 = !DILocation(line: 612, column: 9, scope: !1435)
!1438 = !DILocation(line: 613, column: 9, scope: !1435)
!1439 = !DILocation(line: 617, column: 44, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1431, file: !31, line: 616, column: 35)
!1441 = !DILocation(line: 617, column: 39, scope: !1440)
!1442 = !DILocalVariable(name: "digit", arg: 1, scope: !1443, file: !31, line: 595, type: !12)
!1443 = distinct !DISubprogram(name: "hex_char_to_num", scope: !31, file: !31, line: 595, type: !1444, scopeLine: 596, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1446)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!7, !12}
!1446 = !{!1442, !1447}
!1447 = !DILocalVariable(name: "__res", scope: !1448, file: !31, line: 598, type: !9)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !31, line: 598, column: 14)
!1449 = distinct !DILexicalBlock(scope: !1443, file: !31, line: 597, column: 9)
!1450 = !DILocation(line: 0, scope: !1443, inlinedAt: !1451)
!1451 = distinct !DILocation(line: 617, column: 23, scope: !1440)
!1452 = !DILocation(line: 597, column: 21, scope: !1449, inlinedAt: !1451)
!1453 = !DILocation(line: 597, column: 9, scope: !1443, inlinedAt: !1451)
!1454 = !DILocation(line: 598, column: 14, scope: !1455, inlinedAt: !1451)
!1455 = distinct !DILexicalBlock(scope: !1448, file: !31, line: 598, column: 14)
!1456 = !DILocation(line: 0, scope: !1448, inlinedAt: !1451)
!1457 = !DILocation(line: 598, column: 14, scope: !1449, inlinedAt: !1451)
!1458 = !DILocation(line: 598, column: 7, scope: !1449, inlinedAt: !1451)
!1459 = !DILocation(line: 597, column: 15, scope: !1449, inlinedAt: !1451)
!1460 = !DILocation(line: 600, column: 7, scope: !1449, inlinedAt: !1451)
!1461 = !DILocation(line: 0, scope: !1449, inlinedAt: !1451)
!1462 = !DILocation(line: 617, column: 49, scope: !1440)
!1463 = !DILocation(line: 617, column: 81, scope: !1440)
!1464 = !DILocation(line: 617, column: 73, scope: !1440)
!1465 = !DILocation(line: 0, scope: !1443, inlinedAt: !1466)
!1466 = distinct !DILocation(line: 617, column: 57, scope: !1440)
!1467 = !DILocation(line: 597, column: 21, scope: !1449, inlinedAt: !1466)
!1468 = !DILocation(line: 597, column: 9, scope: !1443, inlinedAt: !1466)
!1469 = !DILocation(line: 598, column: 14, scope: !1455, inlinedAt: !1466)
!1470 = !DILocation(line: 0, scope: !1448, inlinedAt: !1466)
!1471 = !DILocation(line: 598, column: 14, scope: !1449, inlinedAt: !1466)
!1472 = !DILocation(line: 598, column: 7, scope: !1449, inlinedAt: !1466)
!1473 = !DILocation(line: 597, column: 15, scope: !1449, inlinedAt: !1466)
!1474 = !DILocation(line: 600, column: 7, scope: !1449, inlinedAt: !1466)
!1475 = !DILocation(line: 0, scope: !1449, inlinedAt: !1466)
!1476 = !DILocation(line: 617, column: 55, scope: !1440)
!1477 = !DILocation(line: 617, column: 9, scope: !1440)
!1478 = !DILocation(line: 617, column: 20, scope: !1440)
!1479 = !DILocation(line: 616, column: 31, scope: !1431)
!1480 = distinct !{!1480, !1433, !1481, !99, !100}
!1481 = !DILocation(line: 618, column: 5, scope: !1432)
!1482 = !DILocation(line: 620, column: 5, scope: !1415)
!1483 = distinct !DISubprogram(name: "spec_mem_alloc_fds", scope: !31, file: !31, line: 638, type: !1484, scopeLine: 638, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1486)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!13, !8}
!1486 = !{!1487, !1488}
!1487 = !DILocalVariable(name: "fd_limit", arg: 1, scope: !1483, file: !31, line: 638, type: !8)
!1488 = !DILocalVariable(name: "fds", scope: !1483, file: !31, line: 639, type: !13)
!1489 = !DILocation(line: 0, scope: !1483)
!1490 = !DILocation(line: 642, column: 5, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !31, line: 642, column: 5)
!1492 = distinct !DILexicalBlock(scope: !1483, file: !31, line: 642, column: 5)
!1493 = !DILocation(line: 642, column: 5, scope: !1492)
!1494 = !DILocation(line: 642, column: 5, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1491, file: !31, line: 642, column: 5)
!1496 = !DILocation(line: 644, column: 61, scope: !1483)
!1497 = !DILocation(line: 644, column: 51, scope: !1483)
!1498 = !DILocation(line: 644, column: 49, scope: !1483)
!1499 = !DILocation(line: 644, column: 24, scope: !1483)
!1500 = !DILocation(line: 645, column: 13, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1483, file: !31, line: 645, column: 9)
!1502 = !DILocation(line: 645, column: 9, scope: !1483)
!1503 = !DILocation(line: 646, column: 17, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1501, file: !31, line: 645, column: 22)
!1505 = !DILocation(line: 646, column: 9, scope: !1504)
!1506 = !DILocation(line: 647, column: 9, scope: !1504)
!1507 = !DILocation(line: 651, column: 5, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !31, line: 651, column: 5)
!1509 = distinct !DILexicalBlock(scope: !1483, file: !31, line: 651, column: 5)
!1510 = !DILocation(line: 651, column: 5, scope: !1509)
!1511 = !DILocation(line: 651, column: 5, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1508, file: !31, line: 651, column: 5)
!1513 = !DILocation(line: 654, column: 1, scope: !1483)
!1514 = distinct !DISubprogram(name: "spec_mem_free_fds", scope: !31, file: !31, line: 656, type: !1515, scopeLine: 656, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1517)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{null, !13, !8}
!1517 = !{!1518, !1519, !1520}
!1518 = !DILocalVariable(name: "fds", arg: 1, scope: !1514, file: !31, line: 656, type: !13)
!1519 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !1514, file: !31, line: 656, type: !8)
!1520 = !DILocalVariable(name: "i", scope: !1514, file: !31, line: 657, type: !8)
!1521 = !DILocation(line: 0, scope: !1514)
!1522 = !DILocation(line: 660, column: 5, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !31, line: 660, column: 5)
!1524 = distinct !DILexicalBlock(scope: !1514, file: !31, line: 660, column: 5)
!1525 = !DILocation(line: 660, column: 5, scope: !1524)
!1526 = !DILocation(line: 660, column: 5, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1523, file: !31, line: 660, column: 5)
!1528 = !DILocation(line: 661, column: 5, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !31, line: 661, column: 5)
!1530 = distinct !DILexicalBlock(scope: !1514, file: !31, line: 661, column: 5)
!1531 = !DILocation(line: 661, column: 5, scope: !1530)
!1532 = !DILocation(line: 661, column: 5, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1529, file: !31, line: 661, column: 5)
!1534 = !DILocation(line: 662, column: 13, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1514, file: !31, line: 662, column: 9)
!1536 = !DILocation(line: 662, column: 9, scope: !1514)
!1537 = !DILocation(line: 663, column: 22, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !31, line: 663, column: 9)
!1539 = distinct !DILexicalBlock(scope: !1535, file: !31, line: 663, column: 9)
!1540 = !DILocation(line: 663, column: 9, scope: !1539)
!1541 = !DILocation(line: 664, column: 24, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !31, line: 664, column: 17)
!1543 = distinct !DILexicalBlock(scope: !1538, file: !31, line: 663, column: 39)
!1544 = !DILocation(line: 664, column: 28, scope: !1542)
!1545 = !DILocation(line: 664, column: 17, scope: !1543)
!1546 = !DILocation(line: 666, column: 17, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1542, file: !31, line: 664, column: 37)
!1548 = !DILocation(line: 668, column: 28, scope: !1547)
!1549 = !DILocation(line: 669, column: 13, scope: !1547)
!1550 = !DILocation(line: 663, column: 35, scope: !1538)
!1551 = distinct !{!1551, !1540, !1552, !99, !100}
!1552 = !DILocation(line: 670, column: 9, scope: !1539)
!1553 = !DILocation(line: 673, column: 5, scope: !1514)
!1554 = !DILocation(line: 675, column: 1, scope: !1514)
