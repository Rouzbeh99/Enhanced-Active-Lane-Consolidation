; ModuleID = 'jidctint.c'
source_filename = "jidctint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @jpeg_idct_islow(ptr nocapture noundef readonly %cinfo, ptr nocapture noundef readonly %compptr, ptr nocapture noundef readonly %coef_block, ptr nocapture noundef readonly %output_buf, i32 noundef %output_col) local_unnamed_addr #0 {
entry:
  %workspace = alloca [64 x i32], align 16
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 61
  %0 = load ptr, ptr %sample_range_limit, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %workspace) #3
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr, i64 0, i32 20
  %1 = load ptr, ptr %dct_table, align 8, !tbaa !13
  br label %for.body

for.cond152.preheader:                            ; preds = %for.inc
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 128
  %idx.ext = zext i32 %output_col to i64
  br label %for.body155

for.body:                                         ; preds = %entry, %for.inc
  %ctr.0551 = phi i32 [ 8, %entry ], [ %dec, %for.inc ]
  %wsptr.0550 = phi ptr [ %workspace, %entry ], [ %wsptr.1, %for.inc ]
  %quantptr.0549 = phi ptr [ %1, %entry ], [ %quantptr.1, %for.inc ]
  %inptr.0548 = phi ptr [ %coef_block, %entry ], [ %inptr.1, %for.inc ]
  %arrayidx = getelementptr inbounds i16, ptr %inptr.0548, i64 8
  %2 = load i16, ptr %arrayidx, align 2, !tbaa !15
  %arrayidx1 = getelementptr inbounds i16, ptr %inptr.0548, i64 16
  %3 = load i16, ptr %arrayidx1, align 2, !tbaa !15
  %or542 = or i16 %3, %2
  %arrayidx3 = getelementptr inbounds i16, ptr %inptr.0548, i64 24
  %4 = load i16, ptr %arrayidx3, align 2, !tbaa !15
  %or5543 = or i16 %or542, %4
  %arrayidx6 = getelementptr inbounds i16, ptr %inptr.0548, i64 32
  %5 = load i16, ptr %arrayidx6, align 2, !tbaa !15
  %or8544 = or i16 %or5543, %5
  %arrayidx9 = getelementptr inbounds i16, ptr %inptr.0548, i64 40
  %6 = load i16, ptr %arrayidx9, align 2, !tbaa !15
  %or11545 = or i16 %or8544, %6
  %arrayidx12 = getelementptr inbounds i16, ptr %inptr.0548, i64 48
  %7 = load i16, ptr %arrayidx12, align 2, !tbaa !15
  %or14546 = or i16 %or11545, %7
  %arrayidx15 = getelementptr inbounds i16, ptr %inptr.0548, i64 56
  %8 = load i16, ptr %arrayidx15, align 2, !tbaa !15
  %or17547 = or i16 %or14546, %8
  %cmp18 = icmp eq i16 %or17547, 0
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i16, ptr %inptr.0548, align 2, !tbaa !15
  %conv21 = sext i16 %9 to i32
  %10 = load i32, ptr %quantptr.0549, align 4, !tbaa !16
  %mul = shl nsw i32 %conv21, 2
  %shl = mul i32 %mul, %10
  store i32 %shl, ptr %wsptr.0550, align 4, !tbaa !16
  %arrayidx24 = getelementptr inbounds i32, ptr %wsptr.0550, i64 8
  store i32 %shl, ptr %arrayidx24, align 4, !tbaa !16
  %arrayidx25 = getelementptr inbounds i32, ptr %wsptr.0550, i64 16
  store i32 %shl, ptr %arrayidx25, align 4, !tbaa !16
  %arrayidx26 = getelementptr inbounds i32, ptr %wsptr.0550, i64 24
  store i32 %shl, ptr %arrayidx26, align 4, !tbaa !16
  %arrayidx27 = getelementptr inbounds i32, ptr %wsptr.0550, i64 32
  store i32 %shl, ptr %arrayidx27, align 4, !tbaa !16
  %arrayidx28 = getelementptr inbounds i32, ptr %wsptr.0550, i64 40
  store i32 %shl, ptr %arrayidx28, align 4, !tbaa !16
  br label %for.inc

if.end:                                           ; preds = %for.body
  %conv16 = sext i16 %8 to i32
  %conv13 = sext i16 %7 to i32
  %conv10 = sext i16 %6 to i32
  %conv7 = sext i16 %5 to i32
  %conv4 = sext i16 %4 to i32
  %conv2 = sext i16 %3 to i32
  %conv = sext i16 %2 to i32
  %arrayidx35 = getelementptr inbounds i32, ptr %quantptr.0549, i64 16
  %11 = load i32, ptr %arrayidx35, align 4, !tbaa !16
  %mul36 = mul nsw i32 %11, %conv2
  %conv37 = sext i32 %mul36 to i64
  %arrayidx40 = getelementptr inbounds i32, ptr %quantptr.0549, i64 48
  %12 = load i32, ptr %arrayidx40, align 4, !tbaa !16
  %mul41 = mul nsw i32 %12, %conv13
  %conv42 = sext i32 %mul41 to i64
  %add = add nsw i64 %conv42, %conv37
  %mul43 = mul nsw i64 %add, 4433
  %mul44 = mul nsw i64 %conv42, -15137
  %add45 = add nsw i64 %mul43, %mul44
  %mul46 = mul nsw i64 %conv37, 6270
  %add47 = add nsw i64 %mul43, %mul46
  %13 = load i16, ptr %inptr.0548, align 2, !tbaa !15
  %conv49 = sext i16 %13 to i32
  %14 = load i32, ptr %quantptr.0549, align 4, !tbaa !16
  %mul51 = mul nsw i32 %14, %conv49
  %conv52 = sext i32 %mul51 to i64
  %arrayidx55 = getelementptr inbounds i32, ptr %quantptr.0549, i64 32
  %15 = load i32, ptr %arrayidx55, align 4, !tbaa !16
  %mul56 = mul nsw i32 %15, %conv7
  %conv57 = sext i32 %mul56 to i64
  %add58 = add nsw i64 %conv57, %conv52
  %shl59 = shl nsw i64 %add58, 13
  %sub = sub nsw i64 %conv52, %conv57
  %shl60 = shl nsw i64 %sub, 13
  %add61 = add nsw i64 %shl59, %add47
  %sub62 = sub nsw i64 %shl59, %add47
  %add63 = add nsw i64 %shl60, %add45
  %sub64 = sub nsw i64 %shl60, %add45
  %arrayidx67 = getelementptr inbounds i32, ptr %quantptr.0549, i64 56
  %16 = load i32, ptr %arrayidx67, align 4, !tbaa !16
  %mul68 = mul nsw i32 %16, %conv16
  %conv69 = sext i32 %mul68 to i64
  %arrayidx72 = getelementptr inbounds i32, ptr %quantptr.0549, i64 40
  %17 = load i32, ptr %arrayidx72, align 4, !tbaa !16
  %mul73 = mul nsw i32 %17, %conv10
  %conv74 = sext i32 %mul73 to i64
  %arrayidx77 = getelementptr inbounds i32, ptr %quantptr.0549, i64 24
  %18 = load i32, ptr %arrayidx77, align 4, !tbaa !16
  %mul78 = mul nsw i32 %18, %conv4
  %conv79 = sext i32 %mul78 to i64
  %arrayidx82 = getelementptr inbounds i32, ptr %quantptr.0549, i64 8
  %19 = load i32, ptr %arrayidx82, align 4, !tbaa !16
  %mul83 = mul nsw i32 %19, %conv
  %conv84 = sext i32 %mul83 to i64
  %add85 = add nsw i64 %conv84, %conv69
  %add86 = add nsw i64 %conv79, %conv74
  %add87 = add nsw i64 %conv79, %conv69
  %add88 = add nsw i64 %conv84, %conv74
  %add89 = add nsw i64 %add88, %add87
  %mul90 = mul nsw i64 %add89, 9633
  %mul91 = mul nsw i64 %conv69, 2446
  %mul92 = mul nsw i64 %conv74, 16819
  %mul93 = mul nsw i64 %conv79, 25172
  %mul94 = mul nsw i64 %conv84, 12299
  %mul95 = mul nsw i64 %add85, -7373
  %mul96 = mul nsw i64 %add86, -20995
  %mul97 = mul nsw i64 %add87, -16069
  %mul98 = mul nsw i64 %add88, -3196
  %add99 = add nsw i64 %mul90, %mul97
  %add100 = add nsw i64 %mul90, %mul98
  %add101 = add nsw i64 %mul95, %mul91
  %add102 = add nsw i64 %add101, %add99
  %add103 = add nsw i64 %mul96, %mul92
  %add104 = add nsw i64 %add103, %add100
  %add105 = add nsw i64 %mul96, %mul93
  %add106 = add nsw i64 %add105, %add99
  %add107 = add nsw i64 %mul95, %mul94
  %add108 = add nsw i64 %add107, %add100
  %add109 = add nsw i64 %add61, 1024
  %add110 = add nsw i64 %add109, %add108
  %20 = lshr i64 %add110, 11
  %conv111 = trunc i64 %20 to i32
  store i32 %conv111, ptr %wsptr.0550, align 4, !tbaa !16
  %add114 = sub nsw i64 %add109, %add108
  %21 = lshr i64 %add114, 11
  %conv116 = trunc i64 %21 to i32
  %add118 = add nsw i64 %add63, 1024
  %add119 = add nsw i64 %add118, %add106
  %22 = lshr i64 %add119, 11
  %conv121 = trunc i64 %22 to i32
  %arrayidx122 = getelementptr inbounds i32, ptr %wsptr.0550, i64 8
  store i32 %conv121, ptr %arrayidx122, align 4, !tbaa !16
  %add124 = sub nsw i64 %add118, %add106
  %23 = lshr i64 %add124, 11
  %conv126 = trunc i64 %23 to i32
  %arrayidx127 = getelementptr inbounds i32, ptr %wsptr.0550, i64 48
  store i32 %conv126, ptr %arrayidx127, align 4, !tbaa !16
  %add128 = add nsw i64 %sub64, 1024
  %add129 = add nsw i64 %add128, %add104
  %24 = lshr i64 %add129, 11
  %conv131 = trunc i64 %24 to i32
  %arrayidx132 = getelementptr inbounds i32, ptr %wsptr.0550, i64 16
  store i32 %conv131, ptr %arrayidx132, align 4, !tbaa !16
  %add134 = sub nsw i64 %add128, %add104
  %25 = lshr i64 %add134, 11
  %conv136 = trunc i64 %25 to i32
  %arrayidx137 = getelementptr inbounds i32, ptr %wsptr.0550, i64 40
  store i32 %conv136, ptr %arrayidx137, align 4, !tbaa !16
  %add138 = add nsw i64 %sub62, 1024
  %add139 = add nsw i64 %add138, %add102
  %26 = lshr i64 %add139, 11
  %conv141 = trunc i64 %26 to i32
  %arrayidx142 = getelementptr inbounds i32, ptr %wsptr.0550, i64 24
  store i32 %conv141, ptr %arrayidx142, align 4, !tbaa !16
  %add144 = sub nsw i64 %add138, %add102
  %27 = lshr i64 %add144, 11
  %conv146 = trunc i64 %27 to i32
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %.sink = phi i64 [ 32, %if.end ], [ 48, %if.then ]
  %conv146.sink = phi i32 [ %conv146, %if.end ], [ %shl, %if.then ]
  %conv116.sink = phi i32 [ %conv116, %if.end ], [ %shl, %if.then ]
  %arrayidx147 = getelementptr inbounds i32, ptr %wsptr.0550, i64 %.sink
  store i32 %conv146.sink, ptr %arrayidx147, align 4, !tbaa !16
  %28 = getelementptr inbounds i32, ptr %wsptr.0550, i64 56
  store i32 %conv116.sink, ptr %28, align 4
  %wsptr.1 = getelementptr inbounds i32, ptr %wsptr.0550, i64 1
  %quantptr.1 = getelementptr inbounds i32, ptr %quantptr.0549, i64 1
  %inptr.1 = getelementptr inbounds i16, ptr %inptr.0548, i64 1
  %dec = add nsw i32 %ctr.0551, -1
  %cmp = icmp ugt i32 %ctr.0551, 1
  br i1 %cmp, label %for.body, label %for.cond152.preheader, !llvm.loop !17

for.body155:                                      ; preds = %for.cond152.preheader, %for.inc315
  %indvars.iv = phi i64 [ 0, %for.cond152.preheader ], [ %indvars.iv.next, %for.inc315 ]
  %wsptr.2552 = phi ptr [ %workspace, %for.cond152.preheader ], [ %wsptr.3, %for.inc315 ]
  %arrayidx156 = getelementptr inbounds ptr, ptr %output_buf, i64 %indvars.iv
  %29 = load ptr, ptr %arrayidx156, align 8, !tbaa !19
  %add.ptr157 = getelementptr inbounds i8, ptr %29, i64 %idx.ext
  %arrayidx158 = getelementptr inbounds i32, ptr %wsptr.2552, i64 1
  %30 = load i32, ptr %arrayidx158, align 4, !tbaa !16
  %arrayidx159 = getelementptr inbounds i32, ptr %wsptr.2552, i64 2
  %31 = load i32, ptr %arrayidx159, align 4, !tbaa !16
  %or160 = or i32 %31, %30
  %arrayidx161 = getelementptr inbounds i32, ptr %wsptr.2552, i64 3
  %32 = load i32, ptr %arrayidx161, align 4, !tbaa !16
  %or162 = or i32 %or160, %32
  %arrayidx163 = getelementptr inbounds i32, ptr %wsptr.2552, i64 4
  %33 = load i32, ptr %arrayidx163, align 4, !tbaa !16
  %or164 = or i32 %or162, %33
  %arrayidx165 = getelementptr inbounds i32, ptr %wsptr.2552, i64 5
  %34 = load i32, ptr %arrayidx165, align 4, !tbaa !16
  %or166 = or i32 %or164, %34
  %arrayidx167 = getelementptr inbounds i32, ptr %wsptr.2552, i64 6
  %35 = load i32, ptr %arrayidx167, align 4, !tbaa !16
  %or168 = or i32 %or166, %35
  %arrayidx169 = getelementptr inbounds i32, ptr %wsptr.2552, i64 7
  %36 = load i32, ptr %arrayidx169, align 4, !tbaa !16
  %or170 = or i32 %or168, %36
  %cmp171 = icmp eq i32 %or170, 0
  br i1 %cmp171, label %if.then173, label %if.end191

if.then173:                                       ; preds = %for.body155
  %37 = load i32, ptr %wsptr.2552, align 4, !tbaa !16
  %add177 = add i32 %37, 16
  %38 = lshr i32 %add177, 5
  %and = and i32 %38, 1023
  %39 = zext i32 %and to i64
  %arrayidx181 = getelementptr inbounds i8, ptr %add.ptr, i64 %39
  %40 = load i8, ptr %arrayidx181, align 1, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %add.ptr157, i8 %40, i64 8, i1 false)
  br label %for.inc315

if.end191:                                        ; preds = %for.body155
  %conv193555 = zext i32 %31 to i64
  %conv195556 = zext i32 %35 to i64
  %add196 = add nuw nsw i64 %conv195556, %conv193555
  %mul197 = mul nuw nsw i64 %add196, 4433
  %mul198 = mul nsw i64 %conv195556, -15137
  %add199 = add nsw i64 %mul197, %mul198
  %mul200 = mul nuw nsw i64 %conv193555, 6270
  %add201 = add nuw nsw i64 %mul197, %mul200
  %41 = load i32, ptr %wsptr.2552, align 4, !tbaa !16
  %conv203 = sext i32 %41 to i64
  %conv205 = sext i32 %33 to i64
  %add206 = add nsw i64 %conv203, %conv205
  %shl207 = shl nsw i64 %add206, 13
  %sub212 = sub nsw i64 %conv203, %conv205
  %shl213 = shl nsw i64 %sub212, 13
  %add214 = add nsw i64 %shl207, %add201
  %sub215 = sub nsw i64 %shl207, %add201
  %add216 = add nsw i64 %shl213, %add199
  %sub217 = sub nsw i64 %shl213, %add199
  %conv219557 = zext i32 %36 to i64
  %conv221558 = zext i32 %34 to i64
  %conv223559 = zext i32 %32 to i64
  %conv225560 = zext i32 %30 to i64
  %add226 = add nuw nsw i64 %conv219557, %conv225560
  %add227 = add nuw nsw i64 %conv221558, %conv223559
  %add228 = add nuw nsw i64 %conv219557, %conv223559
  %add229 = add nuw nsw i64 %conv221558, %conv225560
  %add230 = add nuw nsw i64 %add228, %add229
  %mul231 = mul nuw nsw i64 %add230, 9633
  %mul232 = mul nuw nsw i64 %conv219557, 2446
  %mul233 = mul nuw nsw i64 %conv221558, 16819
  %mul234 = mul nuw nsw i64 %conv223559, 25172
  %mul235 = mul nuw nsw i64 %conv225560, 12299
  %mul236 = mul nsw i64 %add226, -7373
  %mul237 = mul nsw i64 %add227, -20995
  %mul238 = mul nsw i64 %add228, -16069
  %mul239 = mul nsw i64 %add229, -3196
  %add240 = add nsw i64 %mul231, %mul238
  %add241 = add nsw i64 %mul231, %mul239
  %add242 = add nsw i64 %mul236, %mul232
  %add243 = add nsw i64 %add242, %add240
  %add244 = add nsw i64 %mul237, %mul233
  %add245 = add nsw i64 %add244, %add241
  %add246 = add nsw i64 %mul237, %mul234
  %add247 = add nsw i64 %add246, %add240
  %add248 = add nsw i64 %mul236, %mul235
  %add249 = add nsw i64 %add248, %add241
  %add250 = add nsw i64 %add249, 131072
  %42 = add i64 %add250, %add214
  %43 = lshr i64 %42, 18
  %and254 = and i64 %43, 1023
  %arrayidx256 = getelementptr inbounds i8, ptr %add.ptr, i64 %and254
  %44 = load i8, ptr %arrayidx256, align 1, !tbaa !20
  store i8 %44, ptr %add.ptr157, align 1, !tbaa !20
  %sub258 = sub nsw i64 131072, %add249
  %45 = add i64 %sub258, %add214
  %46 = lshr i64 %45, 18
  %and262 = and i64 %46, 1023
  %arrayidx264 = getelementptr inbounds i8, ptr %add.ptr, i64 %and262
  %47 = load i8, ptr %arrayidx264, align 1, !tbaa !20
  %arrayidx265 = getelementptr inbounds i8, ptr %add.ptr157, i64 7
  store i8 %47, ptr %arrayidx265, align 1, !tbaa !20
  %add266 = add nsw i64 %add247, 131072
  %48 = add i64 %add266, %add216
  %49 = lshr i64 %48, 18
  %and270 = and i64 %49, 1023
  %arrayidx272 = getelementptr inbounds i8, ptr %add.ptr, i64 %and270
  %50 = load i8, ptr %arrayidx272, align 1, !tbaa !20
  %arrayidx273 = getelementptr inbounds i8, ptr %add.ptr157, i64 1
  store i8 %50, ptr %arrayidx273, align 1, !tbaa !20
  %sub274 = sub nsw i64 131072, %add247
  %51 = add i64 %sub274, %add216
  %52 = lshr i64 %51, 18
  %and278 = and i64 %52, 1023
  %arrayidx280 = getelementptr inbounds i8, ptr %add.ptr, i64 %and278
  %53 = load i8, ptr %arrayidx280, align 1, !tbaa !20
  %arrayidx281 = getelementptr inbounds i8, ptr %add.ptr157, i64 6
  store i8 %53, ptr %arrayidx281, align 1, !tbaa !20
  %add282 = add nsw i64 %add245, 131072
  %54 = add i64 %add282, %sub217
  %55 = lshr i64 %54, 18
  %and286 = and i64 %55, 1023
  %arrayidx288 = getelementptr inbounds i8, ptr %add.ptr, i64 %and286
  %56 = load i8, ptr %arrayidx288, align 1, !tbaa !20
  %arrayidx289 = getelementptr inbounds i8, ptr %add.ptr157, i64 2
  store i8 %56, ptr %arrayidx289, align 1, !tbaa !20
  %sub290 = sub nsw i64 131072, %add245
  %57 = add i64 %sub290, %sub217
  %58 = lshr i64 %57, 18
  %and294 = and i64 %58, 1023
  %arrayidx296 = getelementptr inbounds i8, ptr %add.ptr, i64 %and294
  %59 = load i8, ptr %arrayidx296, align 1, !tbaa !20
  %arrayidx297 = getelementptr inbounds i8, ptr %add.ptr157, i64 5
  store i8 %59, ptr %arrayidx297, align 1, !tbaa !20
  %add298 = add nsw i64 %add243, 131072
  %60 = add i64 %add298, %sub215
  %61 = lshr i64 %60, 18
  %and302 = and i64 %61, 1023
  %arrayidx304 = getelementptr inbounds i8, ptr %add.ptr, i64 %and302
  %62 = load i8, ptr %arrayidx304, align 1, !tbaa !20
  %arrayidx305 = getelementptr inbounds i8, ptr %add.ptr157, i64 3
  store i8 %62, ptr %arrayidx305, align 1, !tbaa !20
  %sub306 = sub nsw i64 131072, %add243
  %63 = add i64 %sub306, %sub215
  %64 = lshr i64 %63, 18
  %and310 = and i64 %64, 1023
  %arrayidx312 = getelementptr inbounds i8, ptr %add.ptr, i64 %and310
  %65 = load i8, ptr %arrayidx312, align 1, !tbaa !20
  %arrayidx313 = getelementptr inbounds i8, ptr %add.ptr157, i64 4
  store i8 %65, ptr %arrayidx313, align 1, !tbaa !20
  br label %for.inc315

for.inc315:                                       ; preds = %if.end191, %if.then173
  %wsptr.3 = getelementptr inbounds i32, ptr %wsptr.2552, i64 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.end316, label %for.body155, !llvm.loop !21

for.end316:                                       ; preds = %for.inc315
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %workspace) #3
  ret void
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !7, i64 408}
!6 = !{!"jpeg_decompress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !8, i64 52, !8, i64 56, !10, i64 60, !10, i64 64, !11, i64 72, !10, i64 80, !10, i64 84, !8, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !8, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !7, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !7, i64 184, !8, i64 192, !8, i64 224, !8, i64 256, !10, i64 288, !7, i64 296, !10, i64 304, !10, i64 308, !8, i64 312, !8, i64 328, !8, i64 344, !10, i64 360, !10, i64 364, !8, i64 368, !12, i64 370, !12, i64 372, !10, i64 376, !8, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !7, i64 408, !10, i64 416, !8, i64 424, !10, i64 456, !10, i64 460, !10, i64 464, !8, i64 468, !10, i64 508, !10, i64 512, !10, i64 516, !10, i64 520, !10, i64 524, !7, i64 528, !7, i64 536, !7, i64 544, !7, i64 552, !7, i64 560, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !7, i64 88}
!14 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!15 = !{!12, !12, i64 0}
!16 = !{!10, !10, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!7, !7, i64 0}
!20 = !{!8, !8, i64 0}
!21 = distinct !{!21, !18}
