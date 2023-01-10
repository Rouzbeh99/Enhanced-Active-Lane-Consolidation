; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/gem.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/gem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._AffineMatrix = type { double, double, double, double, double, double }

@.str = private unnamed_addr constant [82 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/gem.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1

; Function Attrs: mustprogress nofree nounwind willreturn writeonly uwtable
define dso_local void @ConvertHCLToRGB(double noundef %hue, double noundef %chroma, double noundef %luma, ptr nocapture noundef writeonly %red, ptr nocapture noundef writeonly %green, ptr nocapture noundef writeonly %blue) local_unnamed_addr #0 !dbg !67 {
entry:
  call void @llvm.dbg.value(metadata double %hue, metadata !74, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata double %chroma, metadata !75, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata double %luma, metadata !76, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata ptr %red, metadata !77, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata ptr %green, metadata !78, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata ptr %blue, metadata !79, metadata !DIExpression()), !dbg !87
  %mul = fmul double %hue, 6.000000e+00, !dbg !88
  call void @llvm.dbg.value(metadata double %mul, metadata !83, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata double %chroma, metadata !81, metadata !DIExpression()), !dbg !87
  %call = tail call double @fmod(double noundef %mul, double noundef 2.000000e+00) #11, !dbg !89
  %sub = fadd double %call, -1.000000e+00, !dbg !90
  %0 = tail call double @llvm.fabs.f64(double %sub), !dbg !91
  %sub1 = fsub double 1.000000e+00, %0, !dbg !92
  %mul2 = fmul double %sub1, %chroma, !dbg !93
  call void @llvm.dbg.value(metadata double %mul2, metadata !86, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !85, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !82, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !80, metadata !DIExpression()), !dbg !87
  %cmp = fcmp oge double %mul, 0.000000e+00, !dbg !94
  %cmp3 = fcmp olt double %mul, 1.000000e+00
  %or.cond = and i1 %cmp, %cmp3, !dbg !96
  br i1 %or.cond, label %if.end32, label %if.else, !dbg !96

if.else:                                          ; preds = %entry
  %cmp4 = fcmp oge double %mul, 1.000000e+00, !dbg !97
  %cmp6 = fcmp olt double %mul, 2.000000e+00
  %or.cond47 = and i1 %cmp4, %cmp6, !dbg !99
  br i1 %or.cond47, label %if.end32, label %if.else8, !dbg !99

if.else8:                                         ; preds = %if.else
  %cmp9 = fcmp oge double %mul, 2.000000e+00, !dbg !100
  %cmp11 = fcmp olt double %mul, 3.000000e+00
  %or.cond48 = and i1 %cmp9, %cmp11, !dbg !102
  br i1 %or.cond48, label %if.end32, label %if.else13, !dbg !102

if.else13:                                        ; preds = %if.else8
  %cmp14 = fcmp oge double %mul, 3.000000e+00, !dbg !103
  %cmp16 = fcmp olt double %mul, 4.000000e+00
  %or.cond49 = and i1 %cmp14, %cmp16, !dbg !105
  br i1 %or.cond49, label %if.end32, label %if.else18, !dbg !105

if.else18:                                        ; preds = %if.else13
  %cmp19 = fcmp oge double %mul, 4.000000e+00, !dbg !106
  %cmp21 = fcmp olt double %mul, 5.000000e+00
  %or.cond50 = and i1 %cmp19, %cmp21, !dbg !108
  br i1 %or.cond50, label %if.end32, label %if.else23, !dbg !108

if.else23:                                        ; preds = %if.else18
  %cmp24 = fcmp oge double %mul, 5.000000e+00, !dbg !109
  %cmp26 = fcmp olt double %mul, 6.000000e+00
  %or.cond51 = and i1 %cmp24, %cmp26, !dbg !111
  %spec.select = select i1 %or.cond51, double %chroma, double 0.000000e+00, !dbg !111
  %spec.select80 = select i1 %or.cond51, double %mul2, double 0.000000e+00, !dbg !111
  br label %if.end32, !dbg !111

if.end32:                                         ; preds = %if.else23, %if.else18, %if.else13, %if.else8, %if.else, %entry
  %g.0 = phi double [ %mul2, %entry ], [ %chroma, %if.else ], [ %chroma, %if.else8 ], [ %mul2, %if.else13 ], [ 0.000000e+00, %if.else18 ], [ 0.000000e+00, %if.else23 ], !dbg !87
  %r.0 = phi double [ %chroma, %entry ], [ %mul2, %if.else ], [ 0.000000e+00, %if.else8 ], [ 0.000000e+00, %if.else13 ], [ %mul2, %if.else18 ], [ %spec.select, %if.else23 ], !dbg !87
  %b.0 = phi double [ 0.000000e+00, %entry ], [ 0.000000e+00, %if.else ], [ %mul2, %if.else8 ], [ %chroma, %if.else13 ], [ %chroma, %if.else18 ], [ %spec.select80, %if.else23 ], !dbg !87
  call void @llvm.dbg.value(metadata double %b.0, metadata !80, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata double %r.0, metadata !85, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata double %g.0, metadata !82, metadata !DIExpression()), !dbg !87
  %mul34 = fmul double %g.0, 5.868110e-01, !dbg !112
  %1 = tail call double @llvm.fmuladd.f64(double %r.0, double 2.988390e-01, double %mul34), !dbg !113
  %2 = tail call double @llvm.fmuladd.f64(double %b.0, double 1.143500e-01, double %1), !dbg !114
  %sub36 = fsub double %luma, %2, !dbg !115
  call void @llvm.dbg.value(metadata double %sub36, metadata !84, metadata !DIExpression()), !dbg !87
  %add = fadd double %r.0, %sub36, !dbg !116
  %mul37 = fmul double %add, 6.553500e+04, !dbg !117
  %conv = fptrunc double %mul37 to float, !dbg !118
  call void @llvm.dbg.value(metadata float %conv, metadata !119, metadata !DIExpression()), !dbg !126
  %cmp.i = fcmp ugt float %conv, 0.000000e+00, !dbg !128
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !130

if.end.i:                                         ; preds = %if.end32
  %cmp1.i = fcmp ult float %conv, 6.553500e+04, !dbg !131
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !133

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %conv, 5.000000e-01, !dbg !134
  %conv.i = fptoui float %add.i to i16, !dbg !135
  br label %ClampToQuantum.exit, !dbg !136

ClampToQuantum.exit:                              ; preds = %if.end32, %if.end.i, %if.end3.i
  %retval.0.i = phi i16 [ %conv.i, %if.end3.i ], [ 0, %if.end32 ], [ -1, %if.end.i ], !dbg !126
  store i16 %retval.0.i, ptr %red, align 2, !dbg !137, !tbaa !138
  %add39 = fadd double %g.0, %sub36, !dbg !142
  %mul40 = fmul double %add39, 6.553500e+04, !dbg !143
  %conv41 = fptrunc double %mul40 to float, !dbg !144
  call void @llvm.dbg.value(metadata float %conv41, metadata !119, metadata !DIExpression()), !dbg !145
  %cmp.i81 = fcmp ugt float %conv41, 0.000000e+00, !dbg !147
  br i1 %cmp.i81, label %if.end.i83, label %ClampToQuantum.exit88, !dbg !148

if.end.i83:                                       ; preds = %ClampToQuantum.exit
  %cmp1.i82 = fcmp ult float %conv41, 6.553500e+04, !dbg !149
  br i1 %cmp1.i82, label %if.end3.i86, label %ClampToQuantum.exit88, !dbg !150

if.end3.i86:                                      ; preds = %if.end.i83
  %add.i84 = fadd float %conv41, 5.000000e-01, !dbg !151
  %conv.i85 = fptoui float %add.i84 to i16, !dbg !152
  br label %ClampToQuantum.exit88, !dbg !153

ClampToQuantum.exit88:                            ; preds = %ClampToQuantum.exit, %if.end.i83, %if.end3.i86
  %retval.0.i87 = phi i16 [ %conv.i85, %if.end3.i86 ], [ 0, %ClampToQuantum.exit ], [ -1, %if.end.i83 ], !dbg !145
  store i16 %retval.0.i87, ptr %green, align 2, !dbg !154, !tbaa !138
  %add43 = fadd double %b.0, %sub36, !dbg !155
  %mul44 = fmul double %add43, 6.553500e+04, !dbg !156
  %conv45 = fptrunc double %mul44 to float, !dbg !157
  call void @llvm.dbg.value(metadata float %conv45, metadata !119, metadata !DIExpression()), !dbg !158
  %cmp.i89 = fcmp ugt float %conv45, 0.000000e+00, !dbg !160
  br i1 %cmp.i89, label %if.end.i91, label %ClampToQuantum.exit96, !dbg !161

if.end.i91:                                       ; preds = %ClampToQuantum.exit88
  %cmp1.i90 = fcmp ult float %conv45, 6.553500e+04, !dbg !162
  br i1 %cmp1.i90, label %if.end3.i94, label %ClampToQuantum.exit96, !dbg !163

if.end3.i94:                                      ; preds = %if.end.i91
  %add.i92 = fadd float %conv45, 5.000000e-01, !dbg !164
  %conv.i93 = fptoui float %add.i92 to i16, !dbg !165
  br label %ClampToQuantum.exit96, !dbg !166

ClampToQuantum.exit96:                            ; preds = %ClampToQuantum.exit88, %if.end.i91, %if.end3.i94
  %retval.0.i95 = phi i16 [ %conv.i93, %if.end3.i94 ], [ 0, %ClampToQuantum.exit88 ], [ -1, %if.end.i91 ], !dbg !158
  store i16 %retval.0.i95, ptr %blue, align 2, !dbg !167, !tbaa !138
  ret void, !dbg !168
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @fmod(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nofree nounwind willreturn writeonly uwtable
define dso_local void @ConvertHCLpToRGB(double noundef %hue, double noundef %chroma, double noundef %luma, ptr nocapture noundef writeonly %red, ptr nocapture noundef writeonly %green, ptr nocapture noundef writeonly %blue) local_unnamed_addr #0 !dbg !169 {
entry:
  call void @llvm.dbg.value(metadata double %hue, metadata !171, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %chroma, metadata !172, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %luma, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata ptr %red, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata ptr %green, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata ptr %blue, metadata !176, metadata !DIExpression()), !dbg !185
  %mul = fmul double %hue, 6.000000e+00, !dbg !186
  call void @llvm.dbg.value(metadata double %mul, metadata !180, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %chroma, metadata !178, metadata !DIExpression()), !dbg !185
  %call = tail call double @fmod(double noundef %mul, double noundef 2.000000e+00) #11, !dbg !187
  %sub = fadd double %call, -1.000000e+00, !dbg !188
  %0 = tail call double @llvm.fabs.f64(double %sub), !dbg !189
  %sub1 = fsub double 1.000000e+00, %0, !dbg !190
  %mul2 = fmul double %sub1, %chroma, !dbg !191
  call void @llvm.dbg.value(metadata double %mul2, metadata !183, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !182, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !179, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !177, metadata !DIExpression()), !dbg !185
  %cmp = fcmp oge double %mul, 0.000000e+00, !dbg !192
  %cmp3 = fcmp olt double %mul, 1.000000e+00
  %or.cond = and i1 %cmp, %cmp3, !dbg !194
  br i1 %or.cond, label %if.end32, label %if.else, !dbg !194

if.else:                                          ; preds = %entry
  %cmp4 = fcmp oge double %mul, 1.000000e+00, !dbg !195
  %cmp6 = fcmp olt double %mul, 2.000000e+00
  %or.cond61 = and i1 %cmp4, %cmp6, !dbg !197
  br i1 %or.cond61, label %if.end32, label %if.else8, !dbg !197

if.else8:                                         ; preds = %if.else
  %cmp9 = fcmp oge double %mul, 2.000000e+00, !dbg !198
  %cmp11 = fcmp olt double %mul, 3.000000e+00
  %or.cond62 = and i1 %cmp9, %cmp11, !dbg !200
  br i1 %or.cond62, label %if.end32, label %if.else13, !dbg !200

if.else13:                                        ; preds = %if.else8
  %cmp14 = fcmp oge double %mul, 3.000000e+00, !dbg !201
  %cmp16 = fcmp olt double %mul, 4.000000e+00
  %or.cond63 = and i1 %cmp14, %cmp16, !dbg !203
  br i1 %or.cond63, label %if.end32, label %if.else18, !dbg !203

if.else18:                                        ; preds = %if.else13
  %cmp19 = fcmp oge double %mul, 4.000000e+00, !dbg !204
  %cmp21 = fcmp olt double %mul, 5.000000e+00
  %or.cond64 = and i1 %cmp19, %cmp21, !dbg !206
  br i1 %or.cond64, label %if.end32, label %if.else23, !dbg !206

if.else23:                                        ; preds = %if.else18
  %cmp24 = fcmp oge double %mul, 5.000000e+00, !dbg !207
  %cmp26 = fcmp olt double %mul, 6.000000e+00
  %or.cond65 = and i1 %cmp24, %cmp26, !dbg !209
  %spec.select = select i1 %or.cond65, double %chroma, double 0.000000e+00, !dbg !209
  %spec.select108 = select i1 %or.cond65, double %mul2, double 0.000000e+00, !dbg !209
  br label %if.end32, !dbg !209

if.end32:                                         ; preds = %if.else23, %if.else18, %if.else13, %if.else8, %if.else, %entry
  %g.0 = phi double [ %mul2, %entry ], [ %chroma, %if.else ], [ %chroma, %if.else8 ], [ %mul2, %if.else13 ], [ 0.000000e+00, %if.else18 ], [ 0.000000e+00, %if.else23 ], !dbg !185
  %r.0 = phi double [ %chroma, %entry ], [ %mul2, %if.else ], [ 0.000000e+00, %if.else8 ], [ 0.000000e+00, %if.else13 ], [ %mul2, %if.else18 ], [ %spec.select, %if.else23 ], !dbg !185
  %b.0 = phi double [ 0.000000e+00, %entry ], [ 0.000000e+00, %if.else ], [ %mul2, %if.else8 ], [ %chroma, %if.else13 ], [ %chroma, %if.else18 ], [ %spec.select108, %if.else23 ], !dbg !185
  call void @llvm.dbg.value(metadata double %b.0, metadata !177, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %r.0, metadata !182, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %g.0, metadata !179, metadata !DIExpression()), !dbg !185
  %mul34 = fmul double %g.0, 5.868110e-01, !dbg !210
  %1 = tail call double @llvm.fmuladd.f64(double %r.0, double 2.988390e-01, double %mul34), !dbg !211
  %2 = tail call double @llvm.fmuladd.f64(double %b.0, double 1.143500e-01, double %1), !dbg !212
  %sub36 = fsub double %luma, %2, !dbg !213
  call void @llvm.dbg.value(metadata double %sub36, metadata !181, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !184, metadata !DIExpression()), !dbg !185
  %cmp37 = fcmp olt double %sub36, 0.000000e+00, !dbg !214
  br i1 %cmp37, label %if.then38, label %if.else40, !dbg !216

if.then38:                                        ; preds = %if.end32
  %sub39 = fsub double %luma, %sub36, !dbg !217
  %div = fdiv double %luma, %sub39, !dbg !219
  call void @llvm.dbg.value(metadata double %div, metadata !184, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !181, metadata !DIExpression()), !dbg !185
  br label %if.end49, !dbg !220

if.else40:                                        ; preds = %if.end32
  %add = fadd double %sub36, %chroma, !dbg !221
  %cmp41 = fcmp ogt double %add, 1.000000e+00, !dbg !223
  br i1 %cmp41, label %if.then42, label %if.end49, !dbg !224

if.then42:                                        ; preds = %if.else40
  %sub43 = fsub double 1.000000e+00, %luma, !dbg !225
  %sub45 = fsub double %add, %luma, !dbg !227
  %div46 = fdiv double %sub43, %sub45, !dbg !228
  call void @llvm.dbg.value(metadata double %div46, metadata !184, metadata !DIExpression()), !dbg !185
  %neg = fneg double %div46, !dbg !229
  %3 = tail call double @llvm.fmuladd.f64(double %neg, double %chroma, double 1.000000e+00), !dbg !229
  call void @llvm.dbg.value(metadata double %3, metadata !181, metadata !DIExpression()), !dbg !185
  br label %if.end49, !dbg !230

if.end49:                                         ; preds = %if.else40, %if.then42, %if.then38
  %m.0 = phi double [ 0.000000e+00, %if.then38 ], [ %3, %if.then42 ], [ %sub36, %if.else40 ], !dbg !185
  %z.0 = phi double [ %div, %if.then38 ], [ %div46, %if.then42 ], [ 1.000000e+00, %if.else40 ], !dbg !185
  call void @llvm.dbg.value(metadata double %z.0, metadata !184, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %m.0, metadata !181, metadata !DIExpression()), !dbg !185
  %4 = tail call double @llvm.fmuladd.f64(double %z.0, double %r.0, double %m.0), !dbg !231
  %mul51 = fmul double %4, 6.553500e+04, !dbg !232
  %conv = fptrunc double %mul51 to float, !dbg !233
  call void @llvm.dbg.value(metadata float %conv, metadata !119, metadata !DIExpression()), !dbg !234
  %cmp.i = fcmp ugt float %conv, 0.000000e+00, !dbg !236
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !237

if.end.i:                                         ; preds = %if.end49
  %cmp1.i = fcmp ult float %conv, 6.553500e+04, !dbg !238
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !239

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %conv, 5.000000e-01, !dbg !240
  %conv.i = fptoui float %add.i to i16, !dbg !241
  br label %ClampToQuantum.exit, !dbg !242

ClampToQuantum.exit:                              ; preds = %if.end49, %if.end.i, %if.end3.i
  %retval.0.i = phi i16 [ %conv.i, %if.end3.i ], [ 0, %if.end49 ], [ -1, %if.end.i ], !dbg !234
  store i16 %retval.0.i, ptr %red, align 2, !dbg !243, !tbaa !138
  %5 = tail call double @llvm.fmuladd.f64(double %z.0, double %g.0, double %m.0), !dbg !244
  %mul54 = fmul double %5, 6.553500e+04, !dbg !245
  %conv55 = fptrunc double %mul54 to float, !dbg !246
  call void @llvm.dbg.value(metadata float %conv55, metadata !119, metadata !DIExpression()), !dbg !247
  %cmp.i109 = fcmp ugt float %conv55, 0.000000e+00, !dbg !249
  br i1 %cmp.i109, label %if.end.i111, label %ClampToQuantum.exit116, !dbg !250

if.end.i111:                                      ; preds = %ClampToQuantum.exit
  %cmp1.i110 = fcmp ult float %conv55, 6.553500e+04, !dbg !251
  br i1 %cmp1.i110, label %if.end3.i114, label %ClampToQuantum.exit116, !dbg !252

if.end3.i114:                                     ; preds = %if.end.i111
  %add.i112 = fadd float %conv55, 5.000000e-01, !dbg !253
  %conv.i113 = fptoui float %add.i112 to i16, !dbg !254
  br label %ClampToQuantum.exit116, !dbg !255

ClampToQuantum.exit116:                           ; preds = %ClampToQuantum.exit, %if.end.i111, %if.end3.i114
  %retval.0.i115 = phi i16 [ %conv.i113, %if.end3.i114 ], [ 0, %ClampToQuantum.exit ], [ -1, %if.end.i111 ], !dbg !247
  store i16 %retval.0.i115, ptr %green, align 2, !dbg !256, !tbaa !138
  %6 = tail call double @llvm.fmuladd.f64(double %z.0, double %b.0, double %m.0), !dbg !257
  %mul58 = fmul double %6, 6.553500e+04, !dbg !258
  %conv59 = fptrunc double %mul58 to float, !dbg !259
  call void @llvm.dbg.value(metadata float %conv59, metadata !119, metadata !DIExpression()), !dbg !260
  %cmp.i117 = fcmp ugt float %conv59, 0.000000e+00, !dbg !262
  br i1 %cmp.i117, label %if.end.i119, label %ClampToQuantum.exit124, !dbg !263

if.end.i119:                                      ; preds = %ClampToQuantum.exit116
  %cmp1.i118 = fcmp ult float %conv59, 6.553500e+04, !dbg !264
  br i1 %cmp1.i118, label %if.end3.i122, label %ClampToQuantum.exit124, !dbg !265

if.end3.i122:                                     ; preds = %if.end.i119
  %add.i120 = fadd float %conv59, 5.000000e-01, !dbg !266
  %conv.i121 = fptoui float %add.i120 to i16, !dbg !267
  br label %ClampToQuantum.exit124, !dbg !268

ClampToQuantum.exit124:                           ; preds = %ClampToQuantum.exit116, %if.end.i119, %if.end3.i122
  %retval.0.i123 = phi i16 [ %conv.i121, %if.end3.i122 ], [ 0, %ClampToQuantum.exit116 ], [ -1, %if.end.i119 ], !dbg !260
  store i16 %retval.0.i123, ptr %blue, align 2, !dbg !269, !tbaa !138
  ret void, !dbg !270
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn uwtable
define dso_local void @ConvertHSBToRGB(double noundef %hue, double noundef %saturation, double noundef %brightness, ptr nocapture noundef %red, ptr nocapture noundef writeonly %green, ptr nocapture noundef writeonly %blue) local_unnamed_addr #3 !dbg !271 {
entry:
  call void @llvm.dbg.value(metadata double %hue, metadata !273, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata double %saturation, metadata !274, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata double %brightness, metadata !275, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata ptr %red, metadata !276, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata ptr %green, metadata !277, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata ptr %blue, metadata !278, metadata !DIExpression()), !dbg !284
  %cmp = fcmp oeq double %saturation, 0.000000e+00, !dbg !285
  br i1 %cmp, label %if.then, label %if.end, !dbg !287

if.then:                                          ; preds = %entry
  %mul = fmul double %brightness, 6.553500e+04, !dbg !288
  %conv = fptrunc double %mul to float, !dbg !290
  call void @llvm.dbg.value(metadata float %conv, metadata !119, metadata !DIExpression()), !dbg !291
  %cmp.i = fcmp ugt float %conv, 0.000000e+00, !dbg !293
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !294

if.end.i:                                         ; preds = %if.then
  %cmp1.i = fcmp ult float %conv, 6.553500e+04, !dbg !295
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !296

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %conv, 5.000000e-01, !dbg !297
  %conv.i = fptoui float %add.i to i16, !dbg !298
  br label %ClampToQuantum.exit, !dbg !299

ClampToQuantum.exit:                              ; preds = %if.then, %if.end.i, %if.end3.i
  %retval.0.i = phi i16 [ %conv.i, %if.end3.i ], [ 0, %if.then ], [ -1, %if.end.i ], !dbg !291
  store i16 %retval.0.i, ptr %red, align 2, !dbg !300, !tbaa !138
  store i16 %retval.0.i, ptr %green, align 2, !dbg !301, !tbaa !138
  %0 = load i16, ptr %red, align 2, !dbg !302, !tbaa !138
  br label %cleanup, !dbg !303

if.end:                                           ; preds = %entry
  %1 = tail call double @llvm.floor.f64(double %hue), !dbg !304
  %sub = fsub double %hue, %1, !dbg !305
  %mul1 = fmul double %sub, 6.000000e+00, !dbg !306
  call void @llvm.dbg.value(metadata double %mul1, metadata !280, metadata !DIExpression()), !dbg !284
  %2 = tail call double @llvm.floor.f64(double %mul1), !dbg !307
  %sub2 = fsub double %mul1, %2, !dbg !308
  call void @llvm.dbg.value(metadata double %sub2, metadata !279, metadata !DIExpression()), !dbg !284
  %sub3 = fsub double 1.000000e+00, %saturation, !dbg !309
  %mul4 = fmul double %sub3, %brightness, !dbg !310
  call void @llvm.dbg.value(metadata double %mul4, metadata !281, metadata !DIExpression()), !dbg !284
  %neg = fneg double %saturation, !dbg !311
  %3 = tail call double @llvm.fmuladd.f64(double %neg, double %sub2, double 1.000000e+00), !dbg !311
  %mul6 = fmul double %3, %brightness, !dbg !312
  call void @llvm.dbg.value(metadata double %mul6, metadata !282, metadata !DIExpression()), !dbg !284
  %sub7 = fsub double 1.000000e+00, %sub2, !dbg !313
  %4 = tail call double @llvm.fmuladd.f64(double %neg, double %sub7, double 1.000000e+00), !dbg !314
  %mul10 = fmul double %4, %brightness, !dbg !315
  call void @llvm.dbg.value(metadata double %mul10, metadata !283, metadata !DIExpression()), !dbg !284
  %conv11 = fptosi double %mul1 to i32, !dbg !316
  switch i32 %conv11, label %sw.default [
    i32 5, label %sw.bb61
    i32 1, label %sw.bb21
    i32 2, label %sw.bb31
    i32 3, label %sw.bb41
    i32 4, label %sw.bb51
  ], !dbg !317

sw.default:                                       ; preds = %if.end
  %mul12 = fmul double %brightness, 6.553500e+04, !dbg !318
  %conv13 = fptrunc double %mul12 to float, !dbg !321
  call void @llvm.dbg.value(metadata float %conv13, metadata !119, metadata !DIExpression()), !dbg !322
  %cmp.i120 = fcmp ugt float %conv13, 0.000000e+00, !dbg !324
  br i1 %cmp.i120, label %if.end.i122, label %ClampToQuantum.exit127, !dbg !325

if.end.i122:                                      ; preds = %sw.default
  %cmp1.i121 = fcmp ult float %conv13, 6.553500e+04, !dbg !326
  br i1 %cmp1.i121, label %if.end3.i125, label %ClampToQuantum.exit127, !dbg !327

if.end3.i125:                                     ; preds = %if.end.i122
  %add.i123 = fadd float %conv13, 5.000000e-01, !dbg !328
  %conv.i124 = fptoui float %add.i123 to i16, !dbg !329
  br label %ClampToQuantum.exit127, !dbg !330

ClampToQuantum.exit127:                           ; preds = %sw.default, %if.end.i122, %if.end3.i125
  %retval.0.i126 = phi i16 [ %conv.i124, %if.end3.i125 ], [ 0, %sw.default ], [ -1, %if.end.i122 ], !dbg !322
  store i16 %retval.0.i126, ptr %red, align 2, !dbg !331, !tbaa !138
  %mul15 = fmul double %mul10, 6.553500e+04, !dbg !332
  %conv16 = fptrunc double %mul15 to float, !dbg !333
  call void @llvm.dbg.value(metadata float %conv16, metadata !119, metadata !DIExpression()), !dbg !334
  %cmp.i128 = fcmp ugt float %conv16, 0.000000e+00, !dbg !336
  br i1 %cmp.i128, label %if.end.i130, label %ClampToQuantum.exit135, !dbg !337

if.end.i130:                                      ; preds = %ClampToQuantum.exit127
  %cmp1.i129 = fcmp ult float %conv16, 6.553500e+04, !dbg !338
  br i1 %cmp1.i129, label %if.end3.i133, label %ClampToQuantum.exit135, !dbg !339

if.end3.i133:                                     ; preds = %if.end.i130
  %add.i131 = fadd float %conv16, 5.000000e-01, !dbg !340
  %conv.i132 = fptoui float %add.i131 to i16, !dbg !341
  br label %ClampToQuantum.exit135, !dbg !342

ClampToQuantum.exit135:                           ; preds = %ClampToQuantum.exit127, %if.end.i130, %if.end3.i133
  %retval.0.i134 = phi i16 [ %conv.i132, %if.end3.i133 ], [ 0, %ClampToQuantum.exit127 ], [ -1, %if.end.i130 ], !dbg !334
  store i16 %retval.0.i134, ptr %green, align 2, !dbg !343, !tbaa !138
  %mul18 = fmul double %mul4, 6.553500e+04, !dbg !344
  %conv19 = fptrunc double %mul18 to float, !dbg !345
  call void @llvm.dbg.value(metadata float %conv19, metadata !119, metadata !DIExpression()), !dbg !346
  %cmp.i136 = fcmp ugt float %conv19, 0.000000e+00, !dbg !348
  br i1 %cmp.i136, label %if.end.i138, label %cleanup, !dbg !349

if.end.i138:                                      ; preds = %ClampToQuantum.exit135
  %cmp1.i137 = fcmp ult float %conv19, 6.553500e+04, !dbg !350
  br i1 %cmp1.i137, label %if.end3.i141, label %cleanup, !dbg !351

if.end3.i141:                                     ; preds = %if.end.i138
  %add.i139 = fadd float %conv19, 5.000000e-01, !dbg !352
  %conv.i140 = fptoui float %add.i139 to i16, !dbg !353
  br label %cleanup, !dbg !354

sw.bb21:                                          ; preds = %if.end
  %mul22 = fmul double %mul6, 6.553500e+04, !dbg !355
  %conv23 = fptrunc double %mul22 to float, !dbg !357
  call void @llvm.dbg.value(metadata float %conv23, metadata !119, metadata !DIExpression()), !dbg !358
  %cmp.i144 = fcmp ugt float %conv23, 0.000000e+00, !dbg !360
  br i1 %cmp.i144, label %if.end.i146, label %ClampToQuantum.exit151, !dbg !361

if.end.i146:                                      ; preds = %sw.bb21
  %cmp1.i145 = fcmp ult float %conv23, 6.553500e+04, !dbg !362
  br i1 %cmp1.i145, label %if.end3.i149, label %ClampToQuantum.exit151, !dbg !363

if.end3.i149:                                     ; preds = %if.end.i146
  %add.i147 = fadd float %conv23, 5.000000e-01, !dbg !364
  %conv.i148 = fptoui float %add.i147 to i16, !dbg !365
  br label %ClampToQuantum.exit151, !dbg !366

ClampToQuantum.exit151:                           ; preds = %sw.bb21, %if.end.i146, %if.end3.i149
  %retval.0.i150 = phi i16 [ %conv.i148, %if.end3.i149 ], [ 0, %sw.bb21 ], [ -1, %if.end.i146 ], !dbg !358
  store i16 %retval.0.i150, ptr %red, align 2, !dbg !367, !tbaa !138
  %mul25 = fmul double %brightness, 6.553500e+04, !dbg !368
  %conv26 = fptrunc double %mul25 to float, !dbg !369
  call void @llvm.dbg.value(metadata float %conv26, metadata !119, metadata !DIExpression()), !dbg !370
  %cmp.i152 = fcmp ugt float %conv26, 0.000000e+00, !dbg !372
  br i1 %cmp.i152, label %if.end.i154, label %ClampToQuantum.exit159, !dbg !373

if.end.i154:                                      ; preds = %ClampToQuantum.exit151
  %cmp1.i153 = fcmp ult float %conv26, 6.553500e+04, !dbg !374
  br i1 %cmp1.i153, label %if.end3.i157, label %ClampToQuantum.exit159, !dbg !375

if.end3.i157:                                     ; preds = %if.end.i154
  %add.i155 = fadd float %conv26, 5.000000e-01, !dbg !376
  %conv.i156 = fptoui float %add.i155 to i16, !dbg !377
  br label %ClampToQuantum.exit159, !dbg !378

ClampToQuantum.exit159:                           ; preds = %ClampToQuantum.exit151, %if.end.i154, %if.end3.i157
  %retval.0.i158 = phi i16 [ %conv.i156, %if.end3.i157 ], [ 0, %ClampToQuantum.exit151 ], [ -1, %if.end.i154 ], !dbg !370
  store i16 %retval.0.i158, ptr %green, align 2, !dbg !379, !tbaa !138
  %mul28 = fmul double %mul4, 6.553500e+04, !dbg !380
  %conv29 = fptrunc double %mul28 to float, !dbg !381
  call void @llvm.dbg.value(metadata float %conv29, metadata !119, metadata !DIExpression()), !dbg !382
  %cmp.i160 = fcmp ugt float %conv29, 0.000000e+00, !dbg !384
  br i1 %cmp.i160, label %if.end.i162, label %cleanup, !dbg !385

if.end.i162:                                      ; preds = %ClampToQuantum.exit159
  %cmp1.i161 = fcmp ult float %conv29, 6.553500e+04, !dbg !386
  br i1 %cmp1.i161, label %if.end3.i165, label %cleanup, !dbg !387

if.end3.i165:                                     ; preds = %if.end.i162
  %add.i163 = fadd float %conv29, 5.000000e-01, !dbg !388
  %conv.i164 = fptoui float %add.i163 to i16, !dbg !389
  br label %cleanup, !dbg !390

sw.bb31:                                          ; preds = %if.end
  %mul32 = fmul double %mul4, 6.553500e+04, !dbg !391
  %conv33 = fptrunc double %mul32 to float, !dbg !393
  call void @llvm.dbg.value(metadata float %conv33, metadata !119, metadata !DIExpression()), !dbg !394
  %cmp.i168 = fcmp ugt float %conv33, 0.000000e+00, !dbg !396
  br i1 %cmp.i168, label %if.end.i170, label %ClampToQuantum.exit175, !dbg !397

if.end.i170:                                      ; preds = %sw.bb31
  %cmp1.i169 = fcmp ult float %conv33, 6.553500e+04, !dbg !398
  br i1 %cmp1.i169, label %if.end3.i173, label %ClampToQuantum.exit175, !dbg !399

if.end3.i173:                                     ; preds = %if.end.i170
  %add.i171 = fadd float %conv33, 5.000000e-01, !dbg !400
  %conv.i172 = fptoui float %add.i171 to i16, !dbg !401
  br label %ClampToQuantum.exit175, !dbg !402

ClampToQuantum.exit175:                           ; preds = %sw.bb31, %if.end.i170, %if.end3.i173
  %retval.0.i174 = phi i16 [ %conv.i172, %if.end3.i173 ], [ 0, %sw.bb31 ], [ -1, %if.end.i170 ], !dbg !394
  store i16 %retval.0.i174, ptr %red, align 2, !dbg !403, !tbaa !138
  %mul35 = fmul double %brightness, 6.553500e+04, !dbg !404
  %conv36 = fptrunc double %mul35 to float, !dbg !405
  call void @llvm.dbg.value(metadata float %conv36, metadata !119, metadata !DIExpression()), !dbg !406
  %cmp.i176 = fcmp ugt float %conv36, 0.000000e+00, !dbg !408
  br i1 %cmp.i176, label %if.end.i178, label %ClampToQuantum.exit183, !dbg !409

if.end.i178:                                      ; preds = %ClampToQuantum.exit175
  %cmp1.i177 = fcmp ult float %conv36, 6.553500e+04, !dbg !410
  br i1 %cmp1.i177, label %if.end3.i181, label %ClampToQuantum.exit183, !dbg !411

if.end3.i181:                                     ; preds = %if.end.i178
  %add.i179 = fadd float %conv36, 5.000000e-01, !dbg !412
  %conv.i180 = fptoui float %add.i179 to i16, !dbg !413
  br label %ClampToQuantum.exit183, !dbg !414

ClampToQuantum.exit183:                           ; preds = %ClampToQuantum.exit175, %if.end.i178, %if.end3.i181
  %retval.0.i182 = phi i16 [ %conv.i180, %if.end3.i181 ], [ 0, %ClampToQuantum.exit175 ], [ -1, %if.end.i178 ], !dbg !406
  store i16 %retval.0.i182, ptr %green, align 2, !dbg !415, !tbaa !138
  %mul38 = fmul double %mul10, 6.553500e+04, !dbg !416
  %conv39 = fptrunc double %mul38 to float, !dbg !417
  call void @llvm.dbg.value(metadata float %conv39, metadata !119, metadata !DIExpression()), !dbg !418
  %cmp.i184 = fcmp ugt float %conv39, 0.000000e+00, !dbg !420
  br i1 %cmp.i184, label %if.end.i186, label %cleanup, !dbg !421

if.end.i186:                                      ; preds = %ClampToQuantum.exit183
  %cmp1.i185 = fcmp ult float %conv39, 6.553500e+04, !dbg !422
  br i1 %cmp1.i185, label %if.end3.i189, label %cleanup, !dbg !423

if.end3.i189:                                     ; preds = %if.end.i186
  %add.i187 = fadd float %conv39, 5.000000e-01, !dbg !424
  %conv.i188 = fptoui float %add.i187 to i16, !dbg !425
  br label %cleanup, !dbg !426

sw.bb41:                                          ; preds = %if.end
  %mul42 = fmul double %mul4, 6.553500e+04, !dbg !427
  %conv43 = fptrunc double %mul42 to float, !dbg !429
  call void @llvm.dbg.value(metadata float %conv43, metadata !119, metadata !DIExpression()), !dbg !430
  %cmp.i192 = fcmp ugt float %conv43, 0.000000e+00, !dbg !432
  br i1 %cmp.i192, label %if.end.i194, label %ClampToQuantum.exit199, !dbg !433

if.end.i194:                                      ; preds = %sw.bb41
  %cmp1.i193 = fcmp ult float %conv43, 6.553500e+04, !dbg !434
  br i1 %cmp1.i193, label %if.end3.i197, label %ClampToQuantum.exit199, !dbg !435

if.end3.i197:                                     ; preds = %if.end.i194
  %add.i195 = fadd float %conv43, 5.000000e-01, !dbg !436
  %conv.i196 = fptoui float %add.i195 to i16, !dbg !437
  br label %ClampToQuantum.exit199, !dbg !438

ClampToQuantum.exit199:                           ; preds = %sw.bb41, %if.end.i194, %if.end3.i197
  %retval.0.i198 = phi i16 [ %conv.i196, %if.end3.i197 ], [ 0, %sw.bb41 ], [ -1, %if.end.i194 ], !dbg !430
  store i16 %retval.0.i198, ptr %red, align 2, !dbg !439, !tbaa !138
  %mul45 = fmul double %mul6, 6.553500e+04, !dbg !440
  %conv46 = fptrunc double %mul45 to float, !dbg !441
  call void @llvm.dbg.value(metadata float %conv46, metadata !119, metadata !DIExpression()), !dbg !442
  %cmp.i200 = fcmp ugt float %conv46, 0.000000e+00, !dbg !444
  br i1 %cmp.i200, label %if.end.i202, label %ClampToQuantum.exit207, !dbg !445

if.end.i202:                                      ; preds = %ClampToQuantum.exit199
  %cmp1.i201 = fcmp ult float %conv46, 6.553500e+04, !dbg !446
  br i1 %cmp1.i201, label %if.end3.i205, label %ClampToQuantum.exit207, !dbg !447

if.end3.i205:                                     ; preds = %if.end.i202
  %add.i203 = fadd float %conv46, 5.000000e-01, !dbg !448
  %conv.i204 = fptoui float %add.i203 to i16, !dbg !449
  br label %ClampToQuantum.exit207, !dbg !450

ClampToQuantum.exit207:                           ; preds = %ClampToQuantum.exit199, %if.end.i202, %if.end3.i205
  %retval.0.i206 = phi i16 [ %conv.i204, %if.end3.i205 ], [ 0, %ClampToQuantum.exit199 ], [ -1, %if.end.i202 ], !dbg !442
  store i16 %retval.0.i206, ptr %green, align 2, !dbg !451, !tbaa !138
  %mul48 = fmul double %brightness, 6.553500e+04, !dbg !452
  %conv49 = fptrunc double %mul48 to float, !dbg !453
  call void @llvm.dbg.value(metadata float %conv49, metadata !119, metadata !DIExpression()), !dbg !454
  %cmp.i208 = fcmp ugt float %conv49, 0.000000e+00, !dbg !456
  br i1 %cmp.i208, label %if.end.i210, label %cleanup, !dbg !457

if.end.i210:                                      ; preds = %ClampToQuantum.exit207
  %cmp1.i209 = fcmp ult float %conv49, 6.553500e+04, !dbg !458
  br i1 %cmp1.i209, label %if.end3.i213, label %cleanup, !dbg !459

if.end3.i213:                                     ; preds = %if.end.i210
  %add.i211 = fadd float %conv49, 5.000000e-01, !dbg !460
  %conv.i212 = fptoui float %add.i211 to i16, !dbg !461
  br label %cleanup, !dbg !462

sw.bb51:                                          ; preds = %if.end
  %mul52 = fmul double %mul10, 6.553500e+04, !dbg !463
  %conv53 = fptrunc double %mul52 to float, !dbg !465
  call void @llvm.dbg.value(metadata float %conv53, metadata !119, metadata !DIExpression()), !dbg !466
  %cmp.i216 = fcmp ugt float %conv53, 0.000000e+00, !dbg !468
  br i1 %cmp.i216, label %if.end.i218, label %ClampToQuantum.exit223, !dbg !469

if.end.i218:                                      ; preds = %sw.bb51
  %cmp1.i217 = fcmp ult float %conv53, 6.553500e+04, !dbg !470
  br i1 %cmp1.i217, label %if.end3.i221, label %ClampToQuantum.exit223, !dbg !471

if.end3.i221:                                     ; preds = %if.end.i218
  %add.i219 = fadd float %conv53, 5.000000e-01, !dbg !472
  %conv.i220 = fptoui float %add.i219 to i16, !dbg !473
  br label %ClampToQuantum.exit223, !dbg !474

ClampToQuantum.exit223:                           ; preds = %sw.bb51, %if.end.i218, %if.end3.i221
  %retval.0.i222 = phi i16 [ %conv.i220, %if.end3.i221 ], [ 0, %sw.bb51 ], [ -1, %if.end.i218 ], !dbg !466
  store i16 %retval.0.i222, ptr %red, align 2, !dbg !475, !tbaa !138
  %mul55 = fmul double %mul4, 6.553500e+04, !dbg !476
  %conv56 = fptrunc double %mul55 to float, !dbg !477
  call void @llvm.dbg.value(metadata float %conv56, metadata !119, metadata !DIExpression()), !dbg !478
  %cmp.i224 = fcmp ugt float %conv56, 0.000000e+00, !dbg !480
  br i1 %cmp.i224, label %if.end.i226, label %ClampToQuantum.exit231, !dbg !481

if.end.i226:                                      ; preds = %ClampToQuantum.exit223
  %cmp1.i225 = fcmp ult float %conv56, 6.553500e+04, !dbg !482
  br i1 %cmp1.i225, label %if.end3.i229, label %ClampToQuantum.exit231, !dbg !483

if.end3.i229:                                     ; preds = %if.end.i226
  %add.i227 = fadd float %conv56, 5.000000e-01, !dbg !484
  %conv.i228 = fptoui float %add.i227 to i16, !dbg !485
  br label %ClampToQuantum.exit231, !dbg !486

ClampToQuantum.exit231:                           ; preds = %ClampToQuantum.exit223, %if.end.i226, %if.end3.i229
  %retval.0.i230 = phi i16 [ %conv.i228, %if.end3.i229 ], [ 0, %ClampToQuantum.exit223 ], [ -1, %if.end.i226 ], !dbg !478
  store i16 %retval.0.i230, ptr %green, align 2, !dbg !487, !tbaa !138
  %mul58 = fmul double %brightness, 6.553500e+04, !dbg !488
  %conv59 = fptrunc double %mul58 to float, !dbg !489
  call void @llvm.dbg.value(metadata float %conv59, metadata !119, metadata !DIExpression()), !dbg !490
  %cmp.i232 = fcmp ugt float %conv59, 0.000000e+00, !dbg !492
  br i1 %cmp.i232, label %if.end.i234, label %cleanup, !dbg !493

if.end.i234:                                      ; preds = %ClampToQuantum.exit231
  %cmp1.i233 = fcmp ult float %conv59, 6.553500e+04, !dbg !494
  br i1 %cmp1.i233, label %if.end3.i237, label %cleanup, !dbg !495

if.end3.i237:                                     ; preds = %if.end.i234
  %add.i235 = fadd float %conv59, 5.000000e-01, !dbg !496
  %conv.i236 = fptoui float %add.i235 to i16, !dbg !497
  br label %cleanup, !dbg !498

sw.bb61:                                          ; preds = %if.end
  %mul62 = fmul double %brightness, 6.553500e+04, !dbg !499
  %conv63 = fptrunc double %mul62 to float, !dbg !501
  call void @llvm.dbg.value(metadata float %conv63, metadata !119, metadata !DIExpression()), !dbg !502
  %cmp.i240 = fcmp ugt float %conv63, 0.000000e+00, !dbg !504
  br i1 %cmp.i240, label %if.end.i242, label %ClampToQuantum.exit247, !dbg !505

if.end.i242:                                      ; preds = %sw.bb61
  %cmp1.i241 = fcmp ult float %conv63, 6.553500e+04, !dbg !506
  br i1 %cmp1.i241, label %if.end3.i245, label %ClampToQuantum.exit247, !dbg !507

if.end3.i245:                                     ; preds = %if.end.i242
  %add.i243 = fadd float %conv63, 5.000000e-01, !dbg !508
  %conv.i244 = fptoui float %add.i243 to i16, !dbg !509
  br label %ClampToQuantum.exit247, !dbg !510

ClampToQuantum.exit247:                           ; preds = %sw.bb61, %if.end.i242, %if.end3.i245
  %retval.0.i246 = phi i16 [ %conv.i244, %if.end3.i245 ], [ 0, %sw.bb61 ], [ -1, %if.end.i242 ], !dbg !502
  store i16 %retval.0.i246, ptr %red, align 2, !dbg !511, !tbaa !138
  %mul65 = fmul double %mul4, 6.553500e+04, !dbg !512
  %conv66 = fptrunc double %mul65 to float, !dbg !513
  call void @llvm.dbg.value(metadata float %conv66, metadata !119, metadata !DIExpression()), !dbg !514
  %cmp.i248 = fcmp ugt float %conv66, 0.000000e+00, !dbg !516
  br i1 %cmp.i248, label %if.end.i250, label %ClampToQuantum.exit255, !dbg !517

if.end.i250:                                      ; preds = %ClampToQuantum.exit247
  %cmp1.i249 = fcmp ult float %conv66, 6.553500e+04, !dbg !518
  br i1 %cmp1.i249, label %if.end3.i253, label %ClampToQuantum.exit255, !dbg !519

if.end3.i253:                                     ; preds = %if.end.i250
  %add.i251 = fadd float %conv66, 5.000000e-01, !dbg !520
  %conv.i252 = fptoui float %add.i251 to i16, !dbg !521
  br label %ClampToQuantum.exit255, !dbg !522

ClampToQuantum.exit255:                           ; preds = %ClampToQuantum.exit247, %if.end.i250, %if.end3.i253
  %retval.0.i254 = phi i16 [ %conv.i252, %if.end3.i253 ], [ 0, %ClampToQuantum.exit247 ], [ -1, %if.end.i250 ], !dbg !514
  store i16 %retval.0.i254, ptr %green, align 2, !dbg !523, !tbaa !138
  %mul68 = fmul double %mul6, 6.553500e+04, !dbg !524
  %conv69 = fptrunc double %mul68 to float, !dbg !525
  call void @llvm.dbg.value(metadata float %conv69, metadata !119, metadata !DIExpression()), !dbg !526
  %cmp.i256 = fcmp ugt float %conv69, 0.000000e+00, !dbg !528
  br i1 %cmp.i256, label %if.end.i258, label %cleanup, !dbg !529

if.end.i258:                                      ; preds = %ClampToQuantum.exit255
  %cmp1.i257 = fcmp ult float %conv69, 6.553500e+04, !dbg !530
  br i1 %cmp1.i257, label %if.end3.i261, label %cleanup, !dbg !531

if.end3.i261:                                     ; preds = %if.end.i258
  %add.i259 = fadd float %conv69, 5.000000e-01, !dbg !532
  %conv.i260 = fptoui float %add.i259 to i16, !dbg !533
  br label %cleanup, !dbg !534

cleanup:                                          ; preds = %if.end3.i261, %if.end.i258, %ClampToQuantum.exit255, %if.end3.i237, %if.end.i234, %ClampToQuantum.exit231, %if.end3.i213, %if.end.i210, %ClampToQuantum.exit207, %if.end3.i189, %if.end.i186, %ClampToQuantum.exit183, %if.end3.i165, %if.end.i162, %ClampToQuantum.exit159, %if.end3.i141, %if.end.i138, %ClampToQuantum.exit135, %ClampToQuantum.exit
  %retval.0.i142.sink = phi i16 [ %0, %ClampToQuantum.exit ], [ %conv.i140, %if.end3.i141 ], [ 0, %ClampToQuantum.exit135 ], [ -1, %if.end.i138 ], [ %conv.i164, %if.end3.i165 ], [ 0, %ClampToQuantum.exit159 ], [ -1, %if.end.i162 ], [ %conv.i188, %if.end3.i189 ], [ 0, %ClampToQuantum.exit183 ], [ -1, %if.end.i186 ], [ %conv.i212, %if.end3.i213 ], [ 0, %ClampToQuantum.exit207 ], [ -1, %if.end.i210 ], [ %conv.i236, %if.end3.i237 ], [ 0, %ClampToQuantum.exit231 ], [ -1, %if.end.i234 ], [ %conv.i260, %if.end3.i261 ], [ 0, %ClampToQuantum.exit255 ], [ -1, %if.end.i258 ]
  store i16 %retval.0.i142.sink, ptr %blue, align 2, !dbg !284, !tbaa !138
  ret void, !dbg !535
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

; Function Attrs: mustprogress nofree nounwind willreturn writeonly uwtable
define dso_local void @ConvertHSIToRGB(double noundef %hue, double noundef %saturation, double noundef %intensity, ptr nocapture noundef writeonly %red, ptr nocapture noundef writeonly %green, ptr nocapture noundef writeonly %blue) local_unnamed_addr #0 !dbg !536 {
entry:
  call void @llvm.dbg.value(metadata double %hue, metadata !538, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.value(metadata double %saturation, metadata !539, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.value(metadata double %intensity, metadata !540, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.value(metadata ptr %red, metadata !541, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.value(metadata ptr %green, metadata !542, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.value(metadata ptr %blue, metadata !543, metadata !DIExpression()), !dbg !548
  %mul = fmul double %hue, 3.600000e+02, !dbg !549
  call void @llvm.dbg.value(metadata double %mul, metadata !546, metadata !DIExpression()), !dbg !548
  %div = fdiv double %mul, 3.600000e+02, !dbg !550
  %0 = tail call double @llvm.floor.f64(double %div), !dbg !551
  %1 = tail call double @llvm.fmuladd.f64(double %0, double -3.600000e+02, double %mul), !dbg !552
  call void @llvm.dbg.value(metadata double %1, metadata !546, metadata !DIExpression()), !dbg !548
  %cmp = fcmp olt double %1, 1.200000e+02, !dbg !553
  br i1 %cmp, label %if.then, label %if.else, !dbg !555

if.then:                                          ; preds = %entry
  %sub = fsub double 1.000000e+00, %saturation, !dbg !556
  %mul2 = fmul double %sub, %intensity, !dbg !558
  call void @llvm.dbg.value(metadata double %mul2, metadata !544, metadata !DIExpression()), !dbg !548
  %mul3 = fmul double %1, 0x3F91DF46A2529D39, !dbg !559
  %call = tail call double @cos(double noundef %mul3) #11, !dbg !560
  %mul4 = fmul double %call, %saturation, !dbg !561
  %sub5 = fsub double 6.000000e+01, %1, !dbg !562
  %mul6 = fmul double %sub5, 0x3F91DF46A2529D39, !dbg !563
  %call7 = tail call double @cos(double noundef %mul6) #11, !dbg !564
  %div8 = fdiv double %mul4, %call7, !dbg !565
  %add = fadd double %div8, 1.000000e+00, !dbg !566
  %mul9 = fmul double %add, %intensity, !dbg !567
  call void @llvm.dbg.value(metadata double %mul9, metadata !547, metadata !DIExpression()), !dbg !548
  %neg = fneg double %mul9, !dbg !568
  %2 = tail call double @llvm.fmuladd.f64(double %intensity, double 3.000000e+00, double %neg), !dbg !568
  %sub11 = fsub double %2, %mul2, !dbg !569
  call void @llvm.dbg.value(metadata double %sub11, metadata !545, metadata !DIExpression()), !dbg !548
  br label %if.end45, !dbg !570

if.else:                                          ; preds = %entry
  %cmp12 = fcmp olt double %1, 2.400000e+02, !dbg !571
  br i1 %cmp12, label %if.then13, label %if.else29, !dbg !573

if.then13:                                        ; preds = %if.else
  %sub14 = fadd double %1, -1.200000e+02, !dbg !574
  call void @llvm.dbg.value(metadata double %sub14, metadata !546, metadata !DIExpression()), !dbg !548
  %sub15 = fsub double 1.000000e+00, %saturation, !dbg !576
  %mul16 = fmul double %sub15, %intensity, !dbg !577
  call void @llvm.dbg.value(metadata double %mul16, metadata !547, metadata !DIExpression()), !dbg !548
  %mul17 = fmul double %sub14, 0x3F91DF46A2529D39, !dbg !578
  %call18 = tail call double @cos(double noundef %mul17) #11, !dbg !579
  %mul19 = fmul double %call18, %saturation, !dbg !580
  %sub20 = fsub double 6.000000e+01, %sub14, !dbg !581
  %mul21 = fmul double %sub20, 0x3F91DF46A2529D39, !dbg !582
  %call22 = tail call double @cos(double noundef %mul21) #11, !dbg !583
  %div23 = fdiv double %mul19, %call22, !dbg !584
  %add24 = fadd double %div23, 1.000000e+00, !dbg !585
  %mul25 = fmul double %add24, %intensity, !dbg !586
  call void @llvm.dbg.value(metadata double %mul25, metadata !545, metadata !DIExpression()), !dbg !548
  %neg27 = fneg double %mul16, !dbg !587
  %3 = tail call double @llvm.fmuladd.f64(double %intensity, double 3.000000e+00, double %neg27), !dbg !587
  %sub28 = fsub double %3, %mul25, !dbg !588
  call void @llvm.dbg.value(metadata double %sub28, metadata !544, metadata !DIExpression()), !dbg !548
  br label %if.end45, !dbg !589

if.else29:                                        ; preds = %if.else
  %sub30 = fadd double %1, -2.400000e+02, !dbg !590
  call void @llvm.dbg.value(metadata double %sub30, metadata !546, metadata !DIExpression()), !dbg !548
  %sub31 = fsub double 1.000000e+00, %saturation, !dbg !592
  %mul32 = fmul double %sub31, %intensity, !dbg !593
  call void @llvm.dbg.value(metadata double %mul32, metadata !545, metadata !DIExpression()), !dbg !548
  %mul33 = fmul double %sub30, 0x3F91DF46A2529D39, !dbg !594
  %call34 = tail call double @cos(double noundef %mul33) #11, !dbg !595
  %mul35 = fmul double %call34, %saturation, !dbg !596
  %sub36 = fsub double 6.000000e+01, %sub30, !dbg !597
  %mul37 = fmul double %sub36, 0x3F91DF46A2529D39, !dbg !598
  %call38 = tail call double @cos(double noundef %mul37) #11, !dbg !599
  %div39 = fdiv double %mul35, %call38, !dbg !600
  %add40 = fadd double %div39, 1.000000e+00, !dbg !601
  %mul41 = fmul double %add40, %intensity, !dbg !602
  call void @llvm.dbg.value(metadata double %mul41, metadata !544, metadata !DIExpression()), !dbg !548
  %neg43 = fneg double %mul32, !dbg !603
  %4 = tail call double @llvm.fmuladd.f64(double %intensity, double 3.000000e+00, double %neg43), !dbg !603
  %sub44 = fsub double %4, %mul41, !dbg !604
  call void @llvm.dbg.value(metadata double %sub44, metadata !547, metadata !DIExpression()), !dbg !548
  br label %if.end45

if.end45:                                         ; preds = %if.then13, %if.else29, %if.then
  %b.0 = phi double [ %mul2, %if.then ], [ %sub28, %if.then13 ], [ %mul41, %if.else29 ], !dbg !605
  %g.0 = phi double [ %sub11, %if.then ], [ %mul25, %if.then13 ], [ %mul32, %if.else29 ], !dbg !605
  %r.0 = phi double [ %mul9, %if.then ], [ %mul16, %if.then13 ], [ %sub44, %if.else29 ], !dbg !605
  call void @llvm.dbg.value(metadata double %r.0, metadata !547, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.value(metadata double %g.0, metadata !545, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.value(metadata double %b.0, metadata !544, metadata !DIExpression()), !dbg !548
  %mul46 = fmul double %r.0, 6.553500e+04, !dbg !606
  %conv = fptrunc double %mul46 to float, !dbg !607
  call void @llvm.dbg.value(metadata float %conv, metadata !119, metadata !DIExpression()), !dbg !608
  %cmp.i = fcmp ugt float %conv, 0.000000e+00, !dbg !610
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !611

if.end.i:                                         ; preds = %if.end45
  %cmp1.i = fcmp ult float %conv, 6.553500e+04, !dbg !612
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !613

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %conv, 5.000000e-01, !dbg !614
  %conv.i = fptoui float %add.i to i16, !dbg !615
  br label %ClampToQuantum.exit, !dbg !616

ClampToQuantum.exit:                              ; preds = %if.end45, %if.end.i, %if.end3.i
  %retval.0.i = phi i16 [ %conv.i, %if.end3.i ], [ 0, %if.end45 ], [ -1, %if.end.i ], !dbg !608
  store i16 %retval.0.i, ptr %red, align 2, !dbg !617, !tbaa !138
  %mul48 = fmul double %g.0, 6.553500e+04, !dbg !618
  %conv49 = fptrunc double %mul48 to float, !dbg !619
  call void @llvm.dbg.value(metadata float %conv49, metadata !119, metadata !DIExpression()), !dbg !620
  %cmp.i84 = fcmp ugt float %conv49, 0.000000e+00, !dbg !622
  br i1 %cmp.i84, label %if.end.i86, label %ClampToQuantum.exit91, !dbg !623

if.end.i86:                                       ; preds = %ClampToQuantum.exit
  %cmp1.i85 = fcmp ult float %conv49, 6.553500e+04, !dbg !624
  br i1 %cmp1.i85, label %if.end3.i89, label %ClampToQuantum.exit91, !dbg !625

if.end3.i89:                                      ; preds = %if.end.i86
  %add.i87 = fadd float %conv49, 5.000000e-01, !dbg !626
  %conv.i88 = fptoui float %add.i87 to i16, !dbg !627
  br label %ClampToQuantum.exit91, !dbg !628

ClampToQuantum.exit91:                            ; preds = %ClampToQuantum.exit, %if.end.i86, %if.end3.i89
  %retval.0.i90 = phi i16 [ %conv.i88, %if.end3.i89 ], [ 0, %ClampToQuantum.exit ], [ -1, %if.end.i86 ], !dbg !620
  store i16 %retval.0.i90, ptr %green, align 2, !dbg !629, !tbaa !138
  %mul51 = fmul double %b.0, 6.553500e+04, !dbg !630
  %conv52 = fptrunc double %mul51 to float, !dbg !631
  call void @llvm.dbg.value(metadata float %conv52, metadata !119, metadata !DIExpression()), !dbg !632
  %cmp.i92 = fcmp ugt float %conv52, 0.000000e+00, !dbg !634
  br i1 %cmp.i92, label %if.end.i94, label %ClampToQuantum.exit99, !dbg !635

if.end.i94:                                       ; preds = %ClampToQuantum.exit91
  %cmp1.i93 = fcmp ult float %conv52, 6.553500e+04, !dbg !636
  br i1 %cmp1.i93, label %if.end3.i97, label %ClampToQuantum.exit99, !dbg !637

if.end3.i97:                                      ; preds = %if.end.i94
  %add.i95 = fadd float %conv52, 5.000000e-01, !dbg !638
  %conv.i96 = fptoui float %add.i95 to i16, !dbg !639
  br label %ClampToQuantum.exit99, !dbg !640

ClampToQuantum.exit99:                            ; preds = %ClampToQuantum.exit91, %if.end.i94, %if.end3.i97
  %retval.0.i98 = phi i16 [ %conv.i96, %if.end3.i97 ], [ 0, %ClampToQuantum.exit91 ], [ -1, %if.end.i94 ], !dbg !632
  store i16 %retval.0.i98, ptr %blue, align 2, !dbg !641, !tbaa !138
  ret void, !dbg !642
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @cos(double noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn writeonly uwtable
define dso_local void @ConvertHSLToRGB(double noundef %hue, double noundef %saturation, double noundef %lightness, ptr nocapture noundef writeonly %red, ptr nocapture noundef writeonly %green, ptr nocapture noundef writeonly %blue) local_unnamed_addr #4 !dbg !643 {
entry:
  call void @llvm.dbg.value(metadata double %hue, metadata !645, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata double %saturation, metadata !646, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata double %lightness, metadata !647, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata ptr %red, metadata !648, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata ptr %green, metadata !649, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata ptr %blue, metadata !650, metadata !DIExpression()), !dbg !658
  %mul = fmul double %hue, 3.600000e+02, !dbg !659
  call void @llvm.dbg.value(metadata double %mul, metadata !654, metadata !DIExpression()), !dbg !658
  %cmp = fcmp ugt double %lightness, 5.000000e-01, !dbg !660
  br i1 %cmp, label %if.else, label %if.then, !dbg !662

if.then:                                          ; preds = %entry
  %mul1 = fmul double %lightness, 2.000000e+00, !dbg !663
  call void @llvm.dbg.value(metadata double undef, metadata !652, metadata !DIExpression()), !dbg !658
  br label %if.end, !dbg !664

if.else:                                          ; preds = %entry
  %0 = tail call double @llvm.fmuladd.f64(double %lightness, double -2.000000e+00, double 2.000000e+00), !dbg !665
  call void @llvm.dbg.value(metadata double undef, metadata !652, metadata !DIExpression()), !dbg !658
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %mul1.pn = phi double [ %mul1, %if.then ], [ %0, %if.else ]
  %c.0 = fmul double %mul1.pn, %saturation, !dbg !666
  call void @llvm.dbg.value(metadata double %c.0, metadata !652, metadata !DIExpression()), !dbg !658
  %1 = tail call double @llvm.fmuladd.f64(double %c.0, double -5.000000e-01, double %lightness), !dbg !667
  call void @llvm.dbg.value(metadata double %1, metadata !655, metadata !DIExpression()), !dbg !658
  %div = fdiv double %mul, 3.600000e+02, !dbg !668
  %2 = tail call double @llvm.floor.f64(double %div), !dbg !669
  %3 = tail call double @llvm.fmuladd.f64(double %2, double -3.600000e+02, double %mul), !dbg !670
  call void @llvm.dbg.value(metadata double %3, metadata !654, metadata !DIExpression()), !dbg !658
  %div7 = fdiv double %3, 6.000000e+01, !dbg !671
  call void @llvm.dbg.value(metadata double %div7, metadata !654, metadata !DIExpression()), !dbg !658
  %div8 = fmul double %div7, 5.000000e-01, !dbg !672
  %4 = tail call double @llvm.floor.f64(double %div8), !dbg !673
  %5 = tail call double @llvm.fmuladd.f64(double %4, double -2.000000e+00, double %div7), !dbg !674
  %sub = fadd double %5, -1.000000e+00, !dbg !675
  %6 = tail call double @llvm.fabs.f64(double %sub), !dbg !676
  %sub10 = fsub double 1.000000e+00, %6, !dbg !677
  %mul11 = fmul double %sub10, %c.0, !dbg !678
  call void @llvm.dbg.value(metadata double %mul11, metadata !657, metadata !DIExpression()), !dbg !658
  %7 = tail call double @llvm.floor.f64(double %div7), !dbg !679
  %conv = fptosi double %7 to i32, !dbg !680
  switch i32 %conv, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
    i32 2, label %sw.bb16
    i32 3, label %sw.bb19
    i32 4, label %sw.bb22
    i32 5, label %sw.bb25
  ], !dbg !681

sw.bb:                                            ; preds = %if.end
  %add = fadd double %c.0, %1, !dbg !682
  call void @llvm.dbg.value(metadata double %add, metadata !656, metadata !DIExpression()), !dbg !658
  %add12 = fadd double %1, %mul11, !dbg !685
  call void @llvm.dbg.value(metadata double %add12, metadata !653, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata double %1, metadata !651, metadata !DIExpression()), !dbg !658
  br label %sw.epilog, !dbg !686

sw.bb13:                                          ; preds = %if.end
  %add14 = fadd double %1, %mul11, !dbg !687
  call void @llvm.dbg.value(metadata double %add14, metadata !656, metadata !DIExpression()), !dbg !658
  %add15 = fadd double %c.0, %1, !dbg !689
  call void @llvm.dbg.value(metadata double %add15, metadata !653, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata double %1, metadata !651, metadata !DIExpression()), !dbg !658
  br label %sw.epilog, !dbg !690

sw.bb16:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata double %1, metadata !656, metadata !DIExpression()), !dbg !658
  %add17 = fadd double %c.0, %1, !dbg !691
  call void @llvm.dbg.value(metadata double %add17, metadata !653, metadata !DIExpression()), !dbg !658
  %add18 = fadd double %1, %mul11, !dbg !693
  call void @llvm.dbg.value(metadata double %add18, metadata !651, metadata !DIExpression()), !dbg !658
  br label %sw.epilog, !dbg !694

sw.bb19:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata double %1, metadata !656, metadata !DIExpression()), !dbg !658
  %add20 = fadd double %1, %mul11, !dbg !695
  call void @llvm.dbg.value(metadata double %add20, metadata !653, metadata !DIExpression()), !dbg !658
  %add21 = fadd double %c.0, %1, !dbg !697
  call void @llvm.dbg.value(metadata double %add21, metadata !651, metadata !DIExpression()), !dbg !658
  br label %sw.epilog, !dbg !698

sw.bb22:                                          ; preds = %if.end
  %add23 = fadd double %1, %mul11, !dbg !699
  call void @llvm.dbg.value(metadata double %add23, metadata !656, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata double %1, metadata !653, metadata !DIExpression()), !dbg !658
  %add24 = fadd double %c.0, %1, !dbg !701
  call void @llvm.dbg.value(metadata double %add24, metadata !651, metadata !DIExpression()), !dbg !658
  br label %sw.epilog, !dbg !702

sw.bb25:                                          ; preds = %if.end
  %add26 = fadd double %c.0, %1, !dbg !703
  call void @llvm.dbg.value(metadata double %add26, metadata !656, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata double %1, metadata !653, metadata !DIExpression()), !dbg !658
  %add27 = fadd double %1, %mul11, !dbg !705
  call void @llvm.dbg.value(metadata double %add27, metadata !651, metadata !DIExpression()), !dbg !658
  br label %sw.epilog, !dbg !706

sw.epilog:                                        ; preds = %if.end, %sw.bb25, %sw.bb22, %sw.bb19, %sw.bb16, %sw.bb13, %sw.bb
  %g.0 = phi double [ %1, %sw.bb25 ], [ %1, %sw.bb22 ], [ %add20, %sw.bb19 ], [ %add17, %sw.bb16 ], [ %add15, %sw.bb13 ], [ %add12, %sw.bb ], [ 0.000000e+00, %if.end ], !dbg !707
  %r.0 = phi double [ %add26, %sw.bb25 ], [ %add23, %sw.bb22 ], [ %1, %sw.bb19 ], [ %1, %sw.bb16 ], [ %add14, %sw.bb13 ], [ %add, %sw.bb ], [ 0.000000e+00, %if.end ], !dbg !707
  %b.0 = phi double [ %add27, %sw.bb25 ], [ %add24, %sw.bb22 ], [ %add21, %sw.bb19 ], [ %add18, %sw.bb16 ], [ %1, %sw.bb13 ], [ %1, %sw.bb ], [ 0.000000e+00, %if.end ], !dbg !707
  call void @llvm.dbg.value(metadata double %b.0, metadata !651, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata double %r.0, metadata !656, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata double %g.0, metadata !653, metadata !DIExpression()), !dbg !658
  %mul28 = fmul double %r.0, 6.553500e+04, !dbg !708
  %conv29 = fptrunc double %mul28 to float, !dbg !709
  call void @llvm.dbg.value(metadata float %conv29, metadata !119, metadata !DIExpression()), !dbg !710
  %cmp.i = fcmp ugt float %conv29, 0.000000e+00, !dbg !712
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !713

if.end.i:                                         ; preds = %sw.epilog
  %cmp1.i = fcmp ult float %conv29, 6.553500e+04, !dbg !714
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !715

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %conv29, 5.000000e-01, !dbg !716
  %conv.i = fptoui float %add.i to i16, !dbg !717
  br label %ClampToQuantum.exit, !dbg !718

ClampToQuantum.exit:                              ; preds = %sw.epilog, %if.end.i, %if.end3.i
  %retval.0.i = phi i16 [ %conv.i, %if.end3.i ], [ 0, %sw.epilog ], [ -1, %if.end.i ], !dbg !710
  store i16 %retval.0.i, ptr %red, align 2, !dbg !719, !tbaa !138
  %mul30 = fmul double %g.0, 6.553500e+04, !dbg !720
  %conv31 = fptrunc double %mul30 to float, !dbg !721
  call void @llvm.dbg.value(metadata float %conv31, metadata !119, metadata !DIExpression()), !dbg !722
  %cmp.i74 = fcmp ugt float %conv31, 0.000000e+00, !dbg !724
  br i1 %cmp.i74, label %if.end.i76, label %ClampToQuantum.exit81, !dbg !725

if.end.i76:                                       ; preds = %ClampToQuantum.exit
  %cmp1.i75 = fcmp ult float %conv31, 6.553500e+04, !dbg !726
  br i1 %cmp1.i75, label %if.end3.i79, label %ClampToQuantum.exit81, !dbg !727

if.end3.i79:                                      ; preds = %if.end.i76
  %add.i77 = fadd float %conv31, 5.000000e-01, !dbg !728
  %conv.i78 = fptoui float %add.i77 to i16, !dbg !729
  br label %ClampToQuantum.exit81, !dbg !730

ClampToQuantum.exit81:                            ; preds = %ClampToQuantum.exit, %if.end.i76, %if.end3.i79
  %retval.0.i80 = phi i16 [ %conv.i78, %if.end3.i79 ], [ 0, %ClampToQuantum.exit ], [ -1, %if.end.i76 ], !dbg !722
  store i16 %retval.0.i80, ptr %green, align 2, !dbg !731, !tbaa !138
  %mul33 = fmul double %b.0, 6.553500e+04, !dbg !732
  %conv34 = fptrunc double %mul33 to float, !dbg !733
  call void @llvm.dbg.value(metadata float %conv34, metadata !119, metadata !DIExpression()), !dbg !734
  %cmp.i82 = fcmp ugt float %conv34, 0.000000e+00, !dbg !736
  br i1 %cmp.i82, label %if.end.i84, label %ClampToQuantum.exit89, !dbg !737

if.end.i84:                                       ; preds = %ClampToQuantum.exit81
  %cmp1.i83 = fcmp ult float %conv34, 6.553500e+04, !dbg !738
  br i1 %cmp1.i83, label %if.end3.i87, label %ClampToQuantum.exit89, !dbg !739

if.end3.i87:                                      ; preds = %if.end.i84
  %add.i85 = fadd float %conv34, 5.000000e-01, !dbg !740
  %conv.i86 = fptoui float %add.i85 to i16, !dbg !741
  br label %ClampToQuantum.exit89, !dbg !742

ClampToQuantum.exit89:                            ; preds = %ClampToQuantum.exit81, %if.end.i84, %if.end3.i87
  %retval.0.i88 = phi i16 [ %conv.i86, %if.end3.i87 ], [ 0, %ClampToQuantum.exit81 ], [ -1, %if.end.i84 ], !dbg !734
  store i16 %retval.0.i88, ptr %blue, align 2, !dbg !743, !tbaa !138
  ret void, !dbg !744
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn writeonly uwtable
define dso_local void @ConvertHSVToRGB(double noundef %hue, double noundef %saturation, double noundef %value, ptr nocapture noundef writeonly %red, ptr nocapture noundef writeonly %green, ptr nocapture noundef writeonly %blue) local_unnamed_addr #4 !dbg !745 {
entry:
  call void @llvm.dbg.value(metadata double %hue, metadata !747, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata double %saturation, metadata !748, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata double %value, metadata !749, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata ptr %red, metadata !750, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata ptr %green, metadata !751, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata ptr %blue, metadata !752, metadata !DIExpression()), !dbg !760
  %mul = fmul double %hue, 3.600000e+02, !dbg !761
  call void @llvm.dbg.value(metadata double %mul, metadata !756, metadata !DIExpression()), !dbg !760
  %mul1 = fmul double %saturation, %value, !dbg !762
  call void @llvm.dbg.value(metadata double %mul1, metadata !754, metadata !DIExpression()), !dbg !760
  %sub = fsub double %value, %mul1, !dbg !763
  call void @llvm.dbg.value(metadata double %sub, metadata !757, metadata !DIExpression()), !dbg !760
  %div = fdiv double %mul, 3.600000e+02, !dbg !764
  %0 = tail call double @llvm.floor.f64(double %div), !dbg !765
  %1 = tail call double @llvm.fmuladd.f64(double %0, double -3.600000e+02, double %mul), !dbg !766
  call void @llvm.dbg.value(metadata double %1, metadata !756, metadata !DIExpression()), !dbg !760
  %div3 = fdiv double %1, 6.000000e+01, !dbg !767
  call void @llvm.dbg.value(metadata double %div3, metadata !756, metadata !DIExpression()), !dbg !760
  %div4 = fmul double %div3, 5.000000e-01, !dbg !768
  %2 = tail call double @llvm.floor.f64(double %div4), !dbg !769
  %3 = tail call double @llvm.fmuladd.f64(double %2, double -2.000000e+00, double %div3), !dbg !770
  %sub6 = fadd double %3, -1.000000e+00, !dbg !771
  %4 = tail call double @llvm.fabs.f64(double %sub6), !dbg !772
  %sub7 = fsub double 1.000000e+00, %4, !dbg !773
  %mul8 = fmul double %mul1, %sub7, !dbg !774
  call void @llvm.dbg.value(metadata double %mul8, metadata !759, metadata !DIExpression()), !dbg !760
  %5 = tail call double @llvm.floor.f64(double %div3), !dbg !775
  %conv = fptosi double %5 to i32, !dbg !776
  switch i32 %conv, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb13
    i32 3, label %sw.bb16
    i32 4, label %sw.bb19
    i32 5, label %sw.bb22
  ], !dbg !777

sw.bb:                                            ; preds = %entry
  %add = fadd double %mul1, %sub, !dbg !778
  call void @llvm.dbg.value(metadata double %add, metadata !758, metadata !DIExpression()), !dbg !760
  %add9 = fadd double %sub, %mul8, !dbg !781
  call void @llvm.dbg.value(metadata double %add9, metadata !755, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata double %sub, metadata !753, metadata !DIExpression()), !dbg !760
  br label %sw.epilog, !dbg !782

sw.bb10:                                          ; preds = %entry
  %add11 = fadd double %sub, %mul8, !dbg !783
  call void @llvm.dbg.value(metadata double %add11, metadata !758, metadata !DIExpression()), !dbg !760
  %add12 = fadd double %mul1, %sub, !dbg !785
  call void @llvm.dbg.value(metadata double %add12, metadata !755, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata double %sub, metadata !753, metadata !DIExpression()), !dbg !760
  br label %sw.epilog, !dbg !786

sw.bb13:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata double %sub, metadata !758, metadata !DIExpression()), !dbg !760
  %add14 = fadd double %mul1, %sub, !dbg !787
  call void @llvm.dbg.value(metadata double %add14, metadata !755, metadata !DIExpression()), !dbg !760
  %add15 = fadd double %sub, %mul8, !dbg !789
  call void @llvm.dbg.value(metadata double %add15, metadata !753, metadata !DIExpression()), !dbg !760
  br label %sw.epilog, !dbg !790

sw.bb16:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata double %sub, metadata !758, metadata !DIExpression()), !dbg !760
  %add17 = fadd double %sub, %mul8, !dbg !791
  call void @llvm.dbg.value(metadata double %add17, metadata !755, metadata !DIExpression()), !dbg !760
  %add18 = fadd double %mul1, %sub, !dbg !793
  call void @llvm.dbg.value(metadata double %add18, metadata !753, metadata !DIExpression()), !dbg !760
  br label %sw.epilog, !dbg !794

sw.bb19:                                          ; preds = %entry
  %add20 = fadd double %sub, %mul8, !dbg !795
  call void @llvm.dbg.value(metadata double %add20, metadata !758, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata double %sub, metadata !755, metadata !DIExpression()), !dbg !760
  %add21 = fadd double %mul1, %sub, !dbg !797
  call void @llvm.dbg.value(metadata double %add21, metadata !753, metadata !DIExpression()), !dbg !760
  br label %sw.epilog, !dbg !798

sw.bb22:                                          ; preds = %entry
  %add23 = fadd double %mul1, %sub, !dbg !799
  call void @llvm.dbg.value(metadata double %add23, metadata !758, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata double %sub, metadata !755, metadata !DIExpression()), !dbg !760
  %add24 = fadd double %sub, %mul8, !dbg !801
  call void @llvm.dbg.value(metadata double %add24, metadata !753, metadata !DIExpression()), !dbg !760
  br label %sw.epilog, !dbg !802

sw.epilog:                                        ; preds = %entry, %sw.bb22, %sw.bb19, %sw.bb16, %sw.bb13, %sw.bb10, %sw.bb
  %g.0 = phi double [ %sub, %sw.bb22 ], [ %sub, %sw.bb19 ], [ %add17, %sw.bb16 ], [ %add14, %sw.bb13 ], [ %add12, %sw.bb10 ], [ %add9, %sw.bb ], [ 0.000000e+00, %entry ], !dbg !803
  %r.0 = phi double [ %add23, %sw.bb22 ], [ %add20, %sw.bb19 ], [ %sub, %sw.bb16 ], [ %sub, %sw.bb13 ], [ %add11, %sw.bb10 ], [ %add, %sw.bb ], [ 0.000000e+00, %entry ], !dbg !803
  %b.0 = phi double [ %add24, %sw.bb22 ], [ %add21, %sw.bb19 ], [ %add18, %sw.bb16 ], [ %add15, %sw.bb13 ], [ %sub, %sw.bb10 ], [ %sub, %sw.bb ], [ 0.000000e+00, %entry ], !dbg !803
  call void @llvm.dbg.value(metadata double %b.0, metadata !753, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata double %r.0, metadata !758, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata double %g.0, metadata !755, metadata !DIExpression()), !dbg !760
  %mul25 = fmul double %r.0, 6.553500e+04, !dbg !804
  %conv26 = fptrunc double %mul25 to float, !dbg !805
  call void @llvm.dbg.value(metadata float %conv26, metadata !119, metadata !DIExpression()), !dbg !806
  %cmp.i = fcmp ugt float %conv26, 0.000000e+00, !dbg !808
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !809

if.end.i:                                         ; preds = %sw.epilog
  %cmp1.i = fcmp ult float %conv26, 6.553500e+04, !dbg !810
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !811

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %conv26, 5.000000e-01, !dbg !812
  %conv.i = fptoui float %add.i to i16, !dbg !813
  br label %ClampToQuantum.exit, !dbg !814

ClampToQuantum.exit:                              ; preds = %sw.epilog, %if.end.i, %if.end3.i
  %retval.0.i = phi i16 [ %conv.i, %if.end3.i ], [ 0, %sw.epilog ], [ -1, %if.end.i ], !dbg !806
  store i16 %retval.0.i, ptr %red, align 2, !dbg !815, !tbaa !138
  %mul27 = fmul double %g.0, 6.553500e+04, !dbg !816
  %conv28 = fptrunc double %mul27 to float, !dbg !817
  call void @llvm.dbg.value(metadata float %conv28, metadata !119, metadata !DIExpression()), !dbg !818
  %cmp.i68 = fcmp ugt float %conv28, 0.000000e+00, !dbg !820
  br i1 %cmp.i68, label %if.end.i70, label %ClampToQuantum.exit75, !dbg !821

if.end.i70:                                       ; preds = %ClampToQuantum.exit
  %cmp1.i69 = fcmp ult float %conv28, 6.553500e+04, !dbg !822
  br i1 %cmp1.i69, label %if.end3.i73, label %ClampToQuantum.exit75, !dbg !823

if.end3.i73:                                      ; preds = %if.end.i70
  %add.i71 = fadd float %conv28, 5.000000e-01, !dbg !824
  %conv.i72 = fptoui float %add.i71 to i16, !dbg !825
  br label %ClampToQuantum.exit75, !dbg !826

ClampToQuantum.exit75:                            ; preds = %ClampToQuantum.exit, %if.end.i70, %if.end3.i73
  %retval.0.i74 = phi i16 [ %conv.i72, %if.end3.i73 ], [ 0, %ClampToQuantum.exit ], [ -1, %if.end.i70 ], !dbg !818
  store i16 %retval.0.i74, ptr %green, align 2, !dbg !827, !tbaa !138
  %mul30 = fmul double %b.0, 6.553500e+04, !dbg !828
  %conv31 = fptrunc double %mul30 to float, !dbg !829
  call void @llvm.dbg.value(metadata float %conv31, metadata !119, metadata !DIExpression()), !dbg !830
  %cmp.i76 = fcmp ugt float %conv31, 0.000000e+00, !dbg !832
  br i1 %cmp.i76, label %if.end.i78, label %ClampToQuantum.exit83, !dbg !833

if.end.i78:                                       ; preds = %ClampToQuantum.exit75
  %cmp1.i77 = fcmp ult float %conv31, 6.553500e+04, !dbg !834
  br i1 %cmp1.i77, label %if.end3.i81, label %ClampToQuantum.exit83, !dbg !835

if.end3.i81:                                      ; preds = %if.end.i78
  %add.i79 = fadd float %conv31, 5.000000e-01, !dbg !836
  %conv.i80 = fptoui float %add.i79 to i16, !dbg !837
  br label %ClampToQuantum.exit83, !dbg !838

ClampToQuantum.exit83:                            ; preds = %ClampToQuantum.exit75, %if.end.i78, %if.end3.i81
  %retval.0.i82 = phi i16 [ %conv.i80, %if.end3.i81 ], [ 0, %ClampToQuantum.exit75 ], [ -1, %if.end.i78 ], !dbg !830
  store i16 %retval.0.i82, ptr %blue, align 2, !dbg !839, !tbaa !138
  ret void, !dbg !840
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn writeonly uwtable
define dso_local void @ConvertHWBToRGB(double noundef %hue, double noundef %whiteness, double noundef %blackness, ptr nocapture noundef writeonly %red, ptr nocapture noundef writeonly %green, ptr nocapture noundef writeonly %blue) local_unnamed_addr #4 !dbg !841 {
entry:
  call void @llvm.dbg.value(metadata double %hue, metadata !843, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata double %whiteness, metadata !844, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata double %blackness, metadata !845, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata ptr %red, metadata !846, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata ptr %green, metadata !847, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata ptr %blue, metadata !848, metadata !DIExpression()), !dbg !856
  %sub = fsub double 1.000000e+00, %blackness, !dbg !857
  call void @llvm.dbg.value(metadata double %sub, metadata !854, metadata !DIExpression()), !dbg !856
  %cmp = fcmp oeq double %hue, -1.000000e+00, !dbg !858
  br i1 %cmp, label %if.then, label %if.end, !dbg !860

if.then:                                          ; preds = %entry
  %mul = fmul double %sub, 6.553500e+04, !dbg !861
  %conv = fptrunc double %mul to float, !dbg !863
  call void @llvm.dbg.value(metadata float %conv, metadata !119, metadata !DIExpression()), !dbg !864
  %cmp.i = fcmp ugt float %conv, 0.000000e+00, !dbg !866
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit74, !dbg !867

if.end.i:                                         ; preds = %if.then
  %cmp1.i = fcmp ult float %conv, 6.553500e+04, !dbg !868
  br i1 %cmp1.i, label %if.end3.i80, label %if.end.i77, !dbg !869

ClampToQuantum.exit74:                            ; preds = %if.then
  store i16 0, ptr %red, align 2, !dbg !870, !tbaa !138
  call void @llvm.dbg.value(metadata float %conv, metadata !119, metadata !DIExpression()), !dbg !871
  store i16 0, ptr %green, align 2, !dbg !873, !tbaa !138
  call void @llvm.dbg.value(metadata float %conv, metadata !119, metadata !DIExpression()), !dbg !874
  br label %cleanup

if.end.i77:                                       ; preds = %if.end.i
  store i16 -1, ptr %red, align 2, !dbg !870, !tbaa !138
  call void @llvm.dbg.value(metadata float %conv, metadata !119, metadata !DIExpression()), !dbg !871
  store i16 -1, ptr %green, align 2, !dbg !873, !tbaa !138
  call void @llvm.dbg.value(metadata float %conv, metadata !119, metadata !DIExpression()), !dbg !874
  br label %cleanup

if.end3.i80:                                      ; preds = %if.end.i
  %add.i = fadd float %conv, 5.000000e-01, !dbg !876
  %conv.i = fptoui float %add.i to i16, !dbg !877
  store i16 %conv.i, ptr %red, align 2, !dbg !870, !tbaa !138
  call void @llvm.dbg.value(metadata float %conv, metadata !119, metadata !DIExpression()), !dbg !871
  %add.i70 = fadd float %conv, 5.000000e-01, !dbg !878
  %conv.i71 = fptoui float %add.i70 to i16, !dbg !879
  store i16 %conv.i71, ptr %green, align 2, !dbg !873, !tbaa !138
  call void @llvm.dbg.value(metadata float %conv, metadata !119, metadata !DIExpression()), !dbg !874
  %add.i78 = fadd float %conv, 5.000000e-01, !dbg !880
  %conv.i79 = fptoui float %add.i78 to i16, !dbg !881
  br label %cleanup, !dbg !882

if.end:                                           ; preds = %entry
  %mul7 = fmul double %hue, 6.000000e+00, !dbg !883
  %0 = tail call double @llvm.floor.f64(double %mul7), !dbg !884
  %conv8 = fptosi double %0 to i64, !dbg !885
  call void @llvm.dbg.value(metadata i64 %conv8, metadata !855, metadata !DIExpression()), !dbg !856
  %conv10 = sitofp i64 %conv8 to double, !dbg !886
  %neg = fneg double %conv10, !dbg !887
  %1 = tail call double @llvm.fmuladd.f64(double %hue, double 6.000000e+00, double %neg), !dbg !887
  call void @llvm.dbg.value(metadata double %1, metadata !850, metadata !DIExpression()), !dbg !856
  %and = and i64 %conv8, 1, !dbg !888
  %cmp11.not = icmp eq i64 %and, 0, !dbg !890
  %sub14 = fsub double 1.000000e+00, %1
  %spec.select = select i1 %cmp11.not, double %1, double %sub14, !dbg !891
  call void @llvm.dbg.value(metadata double %spec.select, metadata !850, metadata !DIExpression()), !dbg !856
  %sub16 = fsub double %sub, %whiteness, !dbg !892
  %2 = tail call double @llvm.fmuladd.f64(double %spec.select, double %sub16, double %whiteness), !dbg !893
  call void @llvm.dbg.value(metadata double %2, metadata !852, metadata !DIExpression()), !dbg !856
  switch i64 %conv8, label %sw.epilog [
    i64 5, label %sw.bb22
    i64 4, label %sw.bb21
    i64 1, label %sw.bb18
    i64 2, label %sw.bb19
    i64 3, label %sw.bb20
  ], !dbg !894

sw.bb18:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata double %2, metadata !853, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata double %sub, metadata !851, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata double %whiteness, metadata !849, metadata !DIExpression()), !dbg !856
  br label %sw.epilog, !dbg !895

sw.bb19:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata double %whiteness, metadata !853, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata double %sub, metadata !851, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata double %2, metadata !849, metadata !DIExpression()), !dbg !856
  br label %sw.epilog, !dbg !897

sw.bb20:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata double %whiteness, metadata !853, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata double %2, metadata !851, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata double %sub, metadata !849, metadata !DIExpression()), !dbg !856
  br label %sw.epilog, !dbg !898

sw.bb21:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata double %2, metadata !853, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata double %whiteness, metadata !851, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata double %sub, metadata !849, metadata !DIExpression()), !dbg !856
  br label %sw.epilog, !dbg !899

sw.bb22:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata double %sub, metadata !853, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata double %whiteness, metadata !851, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata double %2, metadata !849, metadata !DIExpression()), !dbg !856
  br label %sw.epilog, !dbg !900

sw.epilog:                                        ; preds = %if.end, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18
  %g.0 = phi double [ %2, %sw.bb20 ], [ %sub, %sw.bb19 ], [ %sub, %sw.bb18 ], [ %whiteness, %sw.bb21 ], [ %whiteness, %sw.bb22 ], [ %2, %if.end ], !dbg !901
  %r.0 = phi double [ %whiteness, %sw.bb20 ], [ %whiteness, %sw.bb19 ], [ %2, %sw.bb18 ], [ %2, %sw.bb21 ], [ %sub, %sw.bb22 ], [ %sub, %if.end ], !dbg !901
  %b.0 = phi double [ %sub, %sw.bb20 ], [ %2, %sw.bb19 ], [ %whiteness, %sw.bb18 ], [ %sub, %sw.bb21 ], [ %2, %sw.bb22 ], [ %whiteness, %if.end ], !dbg !901
  call void @llvm.dbg.value(metadata double %b.0, metadata !849, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata double %r.0, metadata !853, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata double %g.0, metadata !851, metadata !DIExpression()), !dbg !856
  %mul23 = fmul double %r.0, 6.553500e+04, !dbg !902
  %conv24 = fptrunc double %mul23 to float, !dbg !903
  call void @llvm.dbg.value(metadata float %conv24, metadata !119, metadata !DIExpression()), !dbg !904
  %cmp.i83 = fcmp ugt float %conv24, 0.000000e+00, !dbg !906
  br i1 %cmp.i83, label %if.end.i85, label %ClampToQuantum.exit90, !dbg !907

if.end.i85:                                       ; preds = %sw.epilog
  %cmp1.i84 = fcmp ult float %conv24, 6.553500e+04, !dbg !908
  br i1 %cmp1.i84, label %if.end3.i88, label %ClampToQuantum.exit90, !dbg !909

if.end3.i88:                                      ; preds = %if.end.i85
  %add.i86 = fadd float %conv24, 5.000000e-01, !dbg !910
  %conv.i87 = fptoui float %add.i86 to i16, !dbg !911
  br label %ClampToQuantum.exit90, !dbg !912

ClampToQuantum.exit90:                            ; preds = %sw.epilog, %if.end.i85, %if.end3.i88
  %retval.0.i89 = phi i16 [ %conv.i87, %if.end3.i88 ], [ 0, %sw.epilog ], [ -1, %if.end.i85 ], !dbg !904
  store i16 %retval.0.i89, ptr %red, align 2, !dbg !913, !tbaa !138
  %mul26 = fmul double %g.0, 6.553500e+04, !dbg !914
  %conv27 = fptrunc double %mul26 to float, !dbg !915
  call void @llvm.dbg.value(metadata float %conv27, metadata !119, metadata !DIExpression()), !dbg !916
  %cmp.i91 = fcmp ugt float %conv27, 0.000000e+00, !dbg !918
  br i1 %cmp.i91, label %if.end.i93, label %ClampToQuantum.exit98, !dbg !919

if.end.i93:                                       ; preds = %ClampToQuantum.exit90
  %cmp1.i92 = fcmp ult float %conv27, 6.553500e+04, !dbg !920
  br i1 %cmp1.i92, label %if.end3.i96, label %ClampToQuantum.exit98, !dbg !921

if.end3.i96:                                      ; preds = %if.end.i93
  %add.i94 = fadd float %conv27, 5.000000e-01, !dbg !922
  %conv.i95 = fptoui float %add.i94 to i16, !dbg !923
  br label %ClampToQuantum.exit98, !dbg !924

ClampToQuantum.exit98:                            ; preds = %ClampToQuantum.exit90, %if.end.i93, %if.end3.i96
  %retval.0.i97 = phi i16 [ %conv.i95, %if.end3.i96 ], [ 0, %ClampToQuantum.exit90 ], [ -1, %if.end.i93 ], !dbg !916
  store i16 %retval.0.i97, ptr %green, align 2, !dbg !925, !tbaa !138
  %mul29 = fmul double %b.0, 6.553500e+04, !dbg !926
  %conv30 = fptrunc double %mul29 to float, !dbg !927
  call void @llvm.dbg.value(metadata float %conv30, metadata !119, metadata !DIExpression()), !dbg !928
  %cmp.i99 = fcmp ugt float %conv30, 0.000000e+00, !dbg !930
  br i1 %cmp.i99, label %if.end.i101, label %cleanup, !dbg !931

if.end.i101:                                      ; preds = %ClampToQuantum.exit98
  %cmp1.i100 = fcmp ult float %conv30, 6.553500e+04, !dbg !932
  br i1 %cmp1.i100, label %if.end3.i104, label %cleanup, !dbg !933

if.end3.i104:                                     ; preds = %if.end.i101
  %add.i102 = fadd float %conv30, 5.000000e-01, !dbg !934
  %conv.i103 = fptoui float %add.i102 to i16, !dbg !935
  br label %cleanup, !dbg !936

cleanup:                                          ; preds = %if.end.i77, %if.end3.i104, %if.end.i101, %ClampToQuantum.exit98, %if.end3.i80, %ClampToQuantum.exit74
  %storemerge = phi i16 [ %conv.i79, %if.end3.i80 ], [ 0, %ClampToQuantum.exit74 ], [ -1, %if.end.i77 ], [ %conv.i103, %if.end3.i104 ], [ 0, %ClampToQuantum.exit98 ], [ -1, %if.end.i101 ], !dbg !856
  store i16 %storemerge, ptr %blue, align 2, !dbg !856, !tbaa !138
  ret void, !dbg !937
}

; Function Attrs: nounwind uwtable
define dso_local void @ConvertLCHabToRGB(double noundef %luma, double noundef %chroma, double noundef %hue, ptr nocapture noundef writeonly %red, ptr nocapture noundef writeonly %green, ptr nocapture noundef writeonly %blue) local_unnamed_addr #5 !dbg !938 {
entry:
  call void @llvm.dbg.value(metadata double %luma, metadata !940, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata double %chroma, metadata !941, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata double %hue, metadata !942, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata ptr %red, metadata !943, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata ptr %green, metadata !944, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata ptr %blue, metadata !945, metadata !DIExpression()), !dbg !949
  %mul = fmul double %luma, 1.000000e+02, !dbg !950
  %sub = fadd double %chroma, -5.000000e-01, !dbg !951
  %mul1 = fmul double %sub, 2.550000e+02, !dbg !952
  %mul2 = fmul double %hue, 3.600000e+02, !dbg !953
  call void @llvm.dbg.value(metadata double %mul, metadata !954, metadata !DIExpression()) #11, !dbg !965
  call void @llvm.dbg.value(metadata double %mul1, metadata !960, metadata !DIExpression()) #11, !dbg !965
  call void @llvm.dbg.value(metadata double %mul2, metadata !961, metadata !DIExpression()) #11, !dbg !965
  call void @llvm.dbg.value(metadata ptr undef, metadata !962, metadata !DIExpression()) #11, !dbg !965
  call void @llvm.dbg.value(metadata ptr undef, metadata !963, metadata !DIExpression()) #11, !dbg !965
  call void @llvm.dbg.value(metadata ptr undef, metadata !964, metadata !DIExpression()) #11, !dbg !965
  %mul.i = fmul double %mul2, 0x400921FB54442D18, !dbg !967
  %div.i = fdiv double %mul.i, 1.800000e+02, !dbg !968
  %call.i = tail call double @cos(double noundef %div.i) #11, !dbg !969
  %mul1.i = fmul double %mul1, %call.i, !dbg !970
  %call4.i = tail call double @sin(double noundef %div.i) #11, !dbg !971
  %mul5.i = fmul double %mul1, %call4.i, !dbg !972
  call void @llvm.dbg.value(metadata double %mul, metadata !973, metadata !DIExpression()) #11, !dbg !985
  call void @llvm.dbg.value(metadata double %mul1.i, metadata !977, metadata !DIExpression()) #11, !dbg !985
  call void @llvm.dbg.value(metadata double %mul5.i, metadata !978, metadata !DIExpression()) #11, !dbg !985
  call void @llvm.dbg.value(metadata ptr undef, metadata !979, metadata !DIExpression()) #11, !dbg !985
  call void @llvm.dbg.value(metadata ptr undef, metadata !980, metadata !DIExpression()) #11, !dbg !985
  call void @llvm.dbg.value(metadata ptr undef, metadata !981, metadata !DIExpression()) #11, !dbg !985
  %add.i.i = fadd double %mul, 1.600000e+01, !dbg !987
  %div.i.i = fdiv double %add.i.i, 1.160000e+02, !dbg !988
  call void @llvm.dbg.value(metadata double %div.i.i, metadata !983, metadata !DIExpression()) #11, !dbg !985
  %div1.i.i = fdiv double %mul1.i, 5.000000e+02, !dbg !989
  %add2.i.i = fadd double %div.i.i, %div1.i.i, !dbg !990
  call void @llvm.dbg.value(metadata double %add2.i.i, metadata !982, metadata !DIExpression()) #11, !dbg !985
  %div3.i.i = fdiv double %mul5.i, 2.000000e+02, !dbg !991
  %sub.i.i = fsub double %div.i.i, %div3.i.i, !dbg !992
  call void @llvm.dbg.value(metadata double %sub.i.i, metadata !984, metadata !DIExpression()) #11, !dbg !985
  %mul.i.i = fmul double %add2.i.i, %add2.i.i, !dbg !993
  %mul4.i.i = fmul double %add2.i.i, %mul.i.i, !dbg !995
  %cmp.i.i = fcmp ogt double %mul4.i.i, 0x3F822354D28F7CD6, !dbg !996
  br i1 %cmp.i.i, label %if.end.i.i, label %if.else.i.i, !dbg !997

if.else.i.i:                                      ; preds = %entry
  %0 = tail call double @llvm.fmuladd.f64(double %add2.i.i, double 1.160000e+02, double -1.600000e+01) #11, !dbg !998
  %div8.i.i = fdiv double %0, 0x408C3A5ED097B426, !dbg !999
  call void @llvm.dbg.value(metadata double %div8.i.i, metadata !982, metadata !DIExpression()) #11, !dbg !985
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %entry
  %x.0.i.i = phi double [ %div8.i.i, %if.else.i.i ], [ %mul4.i.i, %entry ], !dbg !1000
  call void @llvm.dbg.value(metadata double %x.0.i.i, metadata !982, metadata !DIExpression()) #11, !dbg !985
  %mul9.i.i = fmul double %div.i.i, %div.i.i, !dbg !1001
  %mul10.i.i = fmul double %div.i.i, %mul9.i.i, !dbg !1003
  %cmp11.i.i = fcmp ogt double %mul10.i.i, 0x3F822354D28F7CD6, !dbg !1004
  br i1 %cmp11.i.i, label %if.end17.i.i, label %if.else15.i.i, !dbg !1005

if.else15.i.i:                                    ; preds = %if.end.i.i
  %div16.i.i = fdiv double %mul, 0x408C3A5ED097B426, !dbg !1006
  call void @llvm.dbg.value(metadata double %div16.i.i, metadata !983, metadata !DIExpression()) #11, !dbg !985
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.else15.i.i, %if.end.i.i
  %y.0.i.i = phi double [ %div16.i.i, %if.else15.i.i ], [ %mul10.i.i, %if.end.i.i ], !dbg !1007
  call void @llvm.dbg.value(metadata double %y.0.i.i, metadata !983, metadata !DIExpression()) #11, !dbg !985
  %mul18.i.i = fmul double %sub.i.i, %sub.i.i, !dbg !1008
  %mul19.i.i = fmul double %sub.i.i, %mul18.i.i, !dbg !1010
  %cmp20.i.i = fcmp ogt double %mul19.i.i, 0x3F822354D28F7CD6, !dbg !1011
  br i1 %cmp20.i.i, label %ConvertLCHabToXYZ.exit, label %if.else24.i.i, !dbg !1012

if.else24.i.i:                                    ; preds = %if.end17.i.i
  %1 = tail call double @llvm.fmuladd.f64(double %sub.i.i, double 1.160000e+02, double -1.600000e+01) #11, !dbg !1013
  %div26.i.i = fdiv double %1, 0x408C3A5ED097B426, !dbg !1014
  call void @llvm.dbg.value(metadata double %div26.i.i, metadata !984, metadata !DIExpression()) #11, !dbg !985
  br label %ConvertLCHabToXYZ.exit

ConvertLCHabToXYZ.exit:                           ; preds = %if.end17.i.i, %if.else24.i.i
  %z.0.i.i = phi double [ %div26.i.i, %if.else24.i.i ], [ %mul19.i.i, %if.end17.i.i ], !dbg !1015
  call void @llvm.dbg.value(metadata double %z.0.i.i, metadata !984, metadata !DIExpression()) #11, !dbg !985
  %mul28.i.i = fmul double %x.0.i.i, 0x3FEE6A22B3892EE8, !dbg !1016
  %mul30.i.i = fmul double %z.0.i.i, 0x3FF16B8950763A19, !dbg !1017
  call void @llvm.dbg.value(metadata double %mul28.i.i, metadata !946, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata double %y.0.i.i, metadata !947, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata double %mul30.i.i, metadata !948, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata double %mul28.i.i, metadata !1018, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata double %y.0.i.i, metadata !1021, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata double %mul30.i.i, metadata !1022, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata ptr %red, metadata !1023, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata ptr %green, metadata !1024, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata ptr %blue, metadata !1025, metadata !DIExpression()) #11, !dbg !1029
  %neg.i = fmul double %y.0.i.i, -1.537200e+00, !dbg !1031
  %2 = tail call double @llvm.fmuladd.f64(double %mul28.i.i, double 3.240600e+00, double %neg.i) #11, !dbg !1031
  %3 = tail call double @llvm.fmuladd.f64(double %mul30.i.i, double -4.986000e-01, double %2) #11, !dbg !1032
  call void @llvm.dbg.value(metadata double %3, metadata !1028, metadata !DIExpression()) #11, !dbg !1029
  %mul2.i = fmul double %y.0.i.i, 1.875800e+00, !dbg !1033
  %4 = tail call double @llvm.fmuladd.f64(double %mul28.i.i, double 0xBFEF013A92A30553, double %mul2.i) #11, !dbg !1034
  %5 = tail call double @llvm.fmuladd.f64(double %mul30.i.i, double 4.150000e-02, double %4) #11, !dbg !1035
  call void @llvm.dbg.value(metadata double %5, metadata !1027, metadata !DIExpression()) #11, !dbg !1029
  %neg4.i = fmul double %y.0.i.i, -2.040000e-01, !dbg !1036
  %6 = tail call double @llvm.fmuladd.f64(double %mul28.i.i, double 5.570000e-02, double %neg4.i) #11, !dbg !1036
  %7 = tail call double @llvm.fmuladd.f64(double %mul30.i.i, double 1.057000e+00, double %6) #11, !dbg !1037
  call void @llvm.dbg.value(metadata double %7, metadata !1026, metadata !DIExpression()) #11, !dbg !1029
  %mul.i3 = fmul double %3, 6.553500e+04, !dbg !1038
  %conv.i = fptrunc double %mul.i3 to float, !dbg !1039
  %call.i4 = tail call float @EncodePixelGamma(float noundef %conv.i) #12, !dbg !1040
  call void @llvm.dbg.value(metadata float %call.i4, metadata !119, metadata !DIExpression()) #11, !dbg !1041
  %cmp.i.i5 = fcmp ugt float %call.i4, 0.000000e+00, !dbg !1043
  br i1 %cmp.i.i5, label %if.end.i.i6, label %ClampToQuantum.exit.i, !dbg !1044

if.end.i.i6:                                      ; preds = %ConvertLCHabToXYZ.exit
  %cmp1.i.i = fcmp ult float %call.i4, 6.553500e+04, !dbg !1045
  br i1 %cmp1.i.i, label %if.end3.i.i, label %ClampToQuantum.exit.i, !dbg !1046

if.end3.i.i:                                      ; preds = %if.end.i.i6
  %add.i.i7 = fadd float %call.i4, 5.000000e-01, !dbg !1047
  %conv.i.i = fptoui float %add.i.i7 to i16, !dbg !1048
  br label %ClampToQuantum.exit.i, !dbg !1049

ClampToQuantum.exit.i:                            ; preds = %if.end3.i.i, %if.end.i.i6, %ConvertLCHabToXYZ.exit
  %retval.0.i.i = phi i16 [ %conv.i.i, %if.end3.i.i ], [ 0, %ConvertLCHabToXYZ.exit ], [ -1, %if.end.i.i6 ], !dbg !1041
  store i16 %retval.0.i.i, ptr %red, align 2, !dbg !1050, !tbaa !138
  %mul6.i = fmul double %5, 6.553500e+04, !dbg !1051
  %conv7.i = fptrunc double %mul6.i to float, !dbg !1052
  %call8.i = tail call float @EncodePixelGamma(float noundef %conv7.i) #12, !dbg !1053
  call void @llvm.dbg.value(metadata float %call8.i, metadata !119, metadata !DIExpression()) #11, !dbg !1054
  %cmp.i20.i = fcmp ugt float %call8.i, 0.000000e+00, !dbg !1056
  br i1 %cmp.i20.i, label %if.end.i22.i, label %ClampToQuantum.exit27.i, !dbg !1057

if.end.i22.i:                                     ; preds = %ClampToQuantum.exit.i
  %cmp1.i21.i = fcmp ult float %call8.i, 6.553500e+04, !dbg !1058
  br i1 %cmp1.i21.i, label %if.end3.i25.i, label %ClampToQuantum.exit27.i, !dbg !1059

if.end3.i25.i:                                    ; preds = %if.end.i22.i
  %add.i23.i = fadd float %call8.i, 5.000000e-01, !dbg !1060
  %conv.i24.i = fptoui float %add.i23.i to i16, !dbg !1061
  br label %ClampToQuantum.exit27.i, !dbg !1062

ClampToQuantum.exit27.i:                          ; preds = %if.end3.i25.i, %if.end.i22.i, %ClampToQuantum.exit.i
  %retval.0.i26.i = phi i16 [ %conv.i24.i, %if.end3.i25.i ], [ 0, %ClampToQuantum.exit.i ], [ -1, %if.end.i22.i ], !dbg !1054
  store i16 %retval.0.i26.i, ptr %green, align 2, !dbg !1063, !tbaa !138
  %mul10.i = fmul double %7, 6.553500e+04, !dbg !1064
  %conv11.i = fptrunc double %mul10.i to float, !dbg !1065
  %call12.i = tail call float @EncodePixelGamma(float noundef %conv11.i) #12, !dbg !1066
  call void @llvm.dbg.value(metadata float %call12.i, metadata !119, metadata !DIExpression()) #11, !dbg !1067
  %cmp.i28.i = fcmp ugt float %call12.i, 0.000000e+00, !dbg !1069
  br i1 %cmp.i28.i, label %if.end.i30.i, label %ConvertXYZToRGB.exit, !dbg !1070

if.end.i30.i:                                     ; preds = %ClampToQuantum.exit27.i
  %cmp1.i29.i = fcmp ult float %call12.i, 6.553500e+04, !dbg !1071
  br i1 %cmp1.i29.i, label %if.end3.i33.i, label %ConvertXYZToRGB.exit, !dbg !1072

if.end3.i33.i:                                    ; preds = %if.end.i30.i
  %add.i31.i = fadd float %call12.i, 5.000000e-01, !dbg !1073
  %conv.i32.i = fptoui float %add.i31.i to i16, !dbg !1074
  br label %ConvertXYZToRGB.exit, !dbg !1075

ConvertXYZToRGB.exit:                             ; preds = %ClampToQuantum.exit27.i, %if.end.i30.i, %if.end3.i33.i
  %retval.0.i34.i = phi i16 [ %conv.i32.i, %if.end3.i33.i ], [ 0, %ClampToQuantum.exit27.i ], [ -1, %if.end.i30.i ], !dbg !1067
  store i16 %retval.0.i34.i, ptr %blue, align 2, !dbg !1076, !tbaa !138
  ret void, !dbg !1077
}

; Function Attrs: nounwind uwtable
define dso_local void @ConvertLCHuvToRGB(double noundef %luma, double noundef %chroma, double noundef %hue, ptr nocapture noundef writeonly %red, ptr nocapture noundef writeonly %green, ptr nocapture noundef writeonly %blue) local_unnamed_addr #5 !dbg !1078 {
entry:
  call void @llvm.dbg.value(metadata double %luma, metadata !1080, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata double %chroma, metadata !1081, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata double %hue, metadata !1082, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata ptr %red, metadata !1083, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata ptr %green, metadata !1084, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata ptr %blue, metadata !1085, metadata !DIExpression()), !dbg !1089
  %mul = fmul double %luma, 1.000000e+02, !dbg !1090
  %sub = fadd double %chroma, -5.000000e-01, !dbg !1091
  %mul1 = fmul double %sub, 2.550000e+02, !dbg !1092
  %mul2 = fmul double %hue, 3.600000e+02, !dbg !1093
  call void @llvm.dbg.value(metadata double %mul, metadata !1094, metadata !DIExpression()) #11, !dbg !1102
  call void @llvm.dbg.value(metadata double %mul1, metadata !1097, metadata !DIExpression()) #11, !dbg !1102
  call void @llvm.dbg.value(metadata double %mul2, metadata !1098, metadata !DIExpression()) #11, !dbg !1102
  call void @llvm.dbg.value(metadata ptr undef, metadata !1099, metadata !DIExpression()) #11, !dbg !1102
  call void @llvm.dbg.value(metadata ptr undef, metadata !1100, metadata !DIExpression()) #11, !dbg !1102
  call void @llvm.dbg.value(metadata ptr undef, metadata !1101, metadata !DIExpression()) #11, !dbg !1102
  %mul.i = fmul double %mul2, 0x400921FB54442D18, !dbg !1104
  %div.i = fdiv double %mul.i, 1.800000e+02, !dbg !1105
  %call.i = tail call double @cos(double noundef %div.i) #11, !dbg !1106
  %call4.i = tail call double @sin(double noundef %div.i) #11, !dbg !1107
  call void @llvm.dbg.value(metadata double %mul, metadata !1108, metadata !DIExpression()) #11, !dbg !1116
  call void @llvm.dbg.value(metadata double undef, metadata !1111, metadata !DIExpression()) #11, !dbg !1116
  call void @llvm.dbg.value(metadata double undef, metadata !1112, metadata !DIExpression()) #11, !dbg !1116
  call void @llvm.dbg.value(metadata ptr undef, metadata !1113, metadata !DIExpression()) #11, !dbg !1116
  call void @llvm.dbg.value(metadata ptr undef, metadata !1114, metadata !DIExpression()) #11, !dbg !1116
  call void @llvm.dbg.value(metadata ptr undef, metadata !1115, metadata !DIExpression()) #11, !dbg !1116
  %cmp.i.i = fcmp ogt double %mul, 8.000000e+00, !dbg !1118
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i, !dbg !1120

if.then.i.i:                                      ; preds = %entry
  %add.i.i = fadd double %mul, 1.600000e+01, !dbg !1121
  %div.i.i = fdiv double %add.i.i, 1.160000e+02, !dbg !1122
  %call.i.i = tail call double @pow(double noundef %div.i.i, double noundef 3.000000e+00) #11, !dbg !1123
  br label %ConvertLCHuvToXYZ.exit, !dbg !1124

if.else.i.i:                                      ; preds = %entry
  %div1.i.i = fdiv double %mul, 0x408C3A5ED097B426, !dbg !1125
  br label %ConvertLCHuvToXYZ.exit

ConvertLCHuvToXYZ.exit:                           ; preds = %if.then.i.i, %if.else.i.i
  %storemerge.i.i = phi double [ %div1.i.i, %if.else.i.i ], [ %call.i.i, %if.then.i.i ], !dbg !1126
  %mul5.i = fmul double %mul1, %call4.i, !dbg !1127
  call void @llvm.dbg.value(metadata double %mul5.i, metadata !1112, metadata !DIExpression()) #11, !dbg !1116
  %mul1.i = fmul double %mul1, %call.i, !dbg !1128
  call void @llvm.dbg.value(metadata double %mul1.i, metadata !1111, metadata !DIExpression()) #11, !dbg !1116
  %mul.i.i = fmul double %mul, 3.900000e+01, !dbg !1129
  %mul2.i.i = fmul double %mul, 1.300000e+01, !dbg !1130
  %0 = tail call double @llvm.fmuladd.f64(double %mul2.i.i, double 0x3FDDF95190ED8BC1, double %mul5.i) #11, !dbg !1131
  %div4.i.i = fdiv double %mul.i.i, %0, !dbg !1132
  %sub.i.i = fadd double %div4.i.i, -5.000000e+00, !dbg !1133
  %mul6.i.i = fmul double %storemerge.i.i, 5.000000e+00, !dbg !1134
  %1 = tail call double @llvm.fmuladd.f64(double %storemerge.i.i, double %sub.i.i, double %mul6.i.i) #11, !dbg !1135
  %mul7.i.i = fmul double %mul, 5.200000e+01, !dbg !1136
  %2 = tail call double @llvm.fmuladd.f64(double %mul2.i.i, double 0x3FC952CD31007F87, double %mul1.i) #11, !dbg !1137
  %div10.i.i = fdiv double %mul7.i.i, %2, !dbg !1138
  %sub11.i.i = fadd double %div10.i.i, -1.000000e+00, !dbg !1139
  %div12.i.i = fdiv double %sub11.i.i, 3.000000e+00, !dbg !1140
  %sub13.i.i = fadd double %div12.i.i, 0x3FD5555555555555, !dbg !1141
  %div14.i.i = fdiv double %1, %sub13.i.i, !dbg !1142
  %neg.i.i = fmul double %storemerge.i.i, -5.000000e+00, !dbg !1143
  %3 = tail call double @llvm.fmuladd.f64(double %div14.i.i, double %div12.i.i, double %neg.i.i) #11, !dbg !1143
  call void @llvm.dbg.value(metadata double %div14.i.i, metadata !1086, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata double %storemerge.i.i, metadata !1087, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata double %3, metadata !1088, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata double %div14.i.i, metadata !1018, metadata !DIExpression()) #11, !dbg !1144
  call void @llvm.dbg.value(metadata double %storemerge.i.i, metadata !1021, metadata !DIExpression()) #11, !dbg !1144
  call void @llvm.dbg.value(metadata double %3, metadata !1022, metadata !DIExpression()) #11, !dbg !1144
  call void @llvm.dbg.value(metadata ptr %red, metadata !1023, metadata !DIExpression()) #11, !dbg !1144
  call void @llvm.dbg.value(metadata ptr %green, metadata !1024, metadata !DIExpression()) #11, !dbg !1144
  call void @llvm.dbg.value(metadata ptr %blue, metadata !1025, metadata !DIExpression()) #11, !dbg !1144
  %neg.i = fmul double %storemerge.i.i, -1.537200e+00, !dbg !1146
  %4 = tail call double @llvm.fmuladd.f64(double %div14.i.i, double 3.240600e+00, double %neg.i) #11, !dbg !1146
  %5 = tail call double @llvm.fmuladd.f64(double %3, double -4.986000e-01, double %4) #11, !dbg !1147
  call void @llvm.dbg.value(metadata double %5, metadata !1028, metadata !DIExpression()) #11, !dbg !1144
  %mul2.i = fmul double %storemerge.i.i, 1.875800e+00, !dbg !1148
  %6 = tail call double @llvm.fmuladd.f64(double %div14.i.i, double 0xBFEF013A92A30553, double %mul2.i) #11, !dbg !1149
  %7 = tail call double @llvm.fmuladd.f64(double %3, double 4.150000e-02, double %6) #11, !dbg !1150
  call void @llvm.dbg.value(metadata double %7, metadata !1027, metadata !DIExpression()) #11, !dbg !1144
  %neg4.i = fmul double %storemerge.i.i, -2.040000e-01, !dbg !1151
  %8 = tail call double @llvm.fmuladd.f64(double %div14.i.i, double 5.570000e-02, double %neg4.i) #11, !dbg !1151
  %9 = tail call double @llvm.fmuladd.f64(double %3, double 1.057000e+00, double %8) #11, !dbg !1152
  call void @llvm.dbg.value(metadata double %9, metadata !1026, metadata !DIExpression()) #11, !dbg !1144
  %mul.i3 = fmul double %5, 6.553500e+04, !dbg !1153
  %conv.i = fptrunc double %mul.i3 to float, !dbg !1154
  %call.i4 = tail call float @EncodePixelGamma(float noundef %conv.i) #12, !dbg !1155
  call void @llvm.dbg.value(metadata float %call.i4, metadata !119, metadata !DIExpression()) #11, !dbg !1156
  %cmp.i.i5 = fcmp ugt float %call.i4, 0.000000e+00, !dbg !1158
  br i1 %cmp.i.i5, label %if.end.i.i, label %ClampToQuantum.exit.i, !dbg !1159

if.end.i.i:                                       ; preds = %ConvertLCHuvToXYZ.exit
  %cmp1.i.i = fcmp ult float %call.i4, 6.553500e+04, !dbg !1160
  br i1 %cmp1.i.i, label %if.end3.i.i, label %ClampToQuantum.exit.i, !dbg !1161

if.end3.i.i:                                      ; preds = %if.end.i.i
  %add.i.i6 = fadd float %call.i4, 5.000000e-01, !dbg !1162
  %conv.i.i = fptoui float %add.i.i6 to i16, !dbg !1163
  br label %ClampToQuantum.exit.i, !dbg !1164

ClampToQuantum.exit.i:                            ; preds = %if.end3.i.i, %if.end.i.i, %ConvertLCHuvToXYZ.exit
  %retval.0.i.i = phi i16 [ %conv.i.i, %if.end3.i.i ], [ 0, %ConvertLCHuvToXYZ.exit ], [ -1, %if.end.i.i ], !dbg !1156
  store i16 %retval.0.i.i, ptr %red, align 2, !dbg !1165, !tbaa !138
  %mul6.i = fmul double %7, 6.553500e+04, !dbg !1166
  %conv7.i = fptrunc double %mul6.i to float, !dbg !1167
  %call8.i = tail call float @EncodePixelGamma(float noundef %conv7.i) #12, !dbg !1168
  call void @llvm.dbg.value(metadata float %call8.i, metadata !119, metadata !DIExpression()) #11, !dbg !1169
  %cmp.i20.i = fcmp ugt float %call8.i, 0.000000e+00, !dbg !1171
  br i1 %cmp.i20.i, label %if.end.i22.i, label %ClampToQuantum.exit27.i, !dbg !1172

if.end.i22.i:                                     ; preds = %ClampToQuantum.exit.i
  %cmp1.i21.i = fcmp ult float %call8.i, 6.553500e+04, !dbg !1173
  br i1 %cmp1.i21.i, label %if.end3.i25.i, label %ClampToQuantum.exit27.i, !dbg !1174

if.end3.i25.i:                                    ; preds = %if.end.i22.i
  %add.i23.i = fadd float %call8.i, 5.000000e-01, !dbg !1175
  %conv.i24.i = fptoui float %add.i23.i to i16, !dbg !1176
  br label %ClampToQuantum.exit27.i, !dbg !1177

ClampToQuantum.exit27.i:                          ; preds = %if.end3.i25.i, %if.end.i22.i, %ClampToQuantum.exit.i
  %retval.0.i26.i = phi i16 [ %conv.i24.i, %if.end3.i25.i ], [ 0, %ClampToQuantum.exit.i ], [ -1, %if.end.i22.i ], !dbg !1169
  store i16 %retval.0.i26.i, ptr %green, align 2, !dbg !1178, !tbaa !138
  %mul10.i = fmul double %9, 6.553500e+04, !dbg !1179
  %conv11.i = fptrunc double %mul10.i to float, !dbg !1180
  %call12.i = tail call float @EncodePixelGamma(float noundef %conv11.i) #12, !dbg !1181
  call void @llvm.dbg.value(metadata float %call12.i, metadata !119, metadata !DIExpression()) #11, !dbg !1182
  %cmp.i28.i = fcmp ugt float %call12.i, 0.000000e+00, !dbg !1184
  br i1 %cmp.i28.i, label %if.end.i30.i, label %ConvertXYZToRGB.exit, !dbg !1185

if.end.i30.i:                                     ; preds = %ClampToQuantum.exit27.i
  %cmp1.i29.i = fcmp ult float %call12.i, 6.553500e+04, !dbg !1186
  br i1 %cmp1.i29.i, label %if.end3.i33.i, label %ConvertXYZToRGB.exit, !dbg !1187

if.end3.i33.i:                                    ; preds = %if.end.i30.i
  %add.i31.i = fadd float %call12.i, 5.000000e-01, !dbg !1188
  %conv.i32.i = fptoui float %add.i31.i to i16, !dbg !1189
  br label %ConvertXYZToRGB.exit, !dbg !1190

ConvertXYZToRGB.exit:                             ; preds = %ClampToQuantum.exit27.i, %if.end.i30.i, %if.end3.i33.i
  %retval.0.i34.i = phi i16 [ %conv.i32.i, %if.end3.i33.i ], [ 0, %ClampToQuantum.exit27.i ], [ -1, %if.end.i30.i ], !dbg !1182
  store i16 %retval.0.i34.i, ptr %blue, align 2, !dbg !1191, !tbaa !138
  ret void, !dbg !1192
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly uwtable
define dso_local void @ConvertRGBToHCL(i16 noundef zeroext %red, i16 noundef zeroext %green, i16 noundef zeroext %blue, ptr nocapture noundef writeonly %hue, ptr nocapture noundef writeonly %chroma, ptr nocapture noundef writeonly %luma) local_unnamed_addr #0 !dbg !1193 {
entry:
  call void @llvm.dbg.value(metadata i16 %red, metadata !1198, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i16 %green, metadata !1199, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i16 %blue, metadata !1200, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata ptr %hue, metadata !1201, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata ptr %chroma, metadata !1202, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata ptr %luma, metadata !1203, metadata !DIExpression()), !dbg !1210
  %conv = uitofp i16 %red to double, !dbg !1211
  call void @llvm.dbg.value(metadata double %conv, metadata !1209, metadata !DIExpression()), !dbg !1210
  %conv1 = uitofp i16 %green to double, !dbg !1212
  call void @llvm.dbg.value(metadata double %conv1, metadata !1206, metadata !DIExpression()), !dbg !1210
  %conv2 = uitofp i16 %blue to double, !dbg !1213
  call void @llvm.dbg.value(metadata double %conv2, metadata !1204, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata double %conv1, metadata !1214, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata double %conv2, metadata !1219, metadata !DIExpression()), !dbg !1220
  %cmp.i = fcmp ogt double %conv1, %conv2, !dbg !1222
  %x.y.i = select i1 %cmp.i, double %conv1, double %conv2, !dbg !1220
  call void @llvm.dbg.value(metadata double %conv, metadata !1214, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata double %x.y.i, metadata !1219, metadata !DIExpression()), !dbg !1224
  %cmp.i65 = fcmp olt double %x.y.i, %conv, !dbg !1226
  %x.y.i66 = select i1 %cmp.i65, double %conv, double %x.y.i, !dbg !1224
  call void @llvm.dbg.value(metadata double %x.y.i66, metadata !1208, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata double %conv1, metadata !1227, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata double %conv2, metadata !1230, metadata !DIExpression()), !dbg !1231
  %cmp.i67 = fcmp olt double %conv1, %conv2, !dbg !1233
  %x.y.i68 = select i1 %cmp.i67, double %conv1, double %conv2, !dbg !1231
  call void @llvm.dbg.value(metadata double %conv, metadata !1227, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata double %x.y.i68, metadata !1230, metadata !DIExpression()), !dbg !1235
  %cmp.i69 = fcmp ogt double %x.y.i68, %conv, !dbg !1237
  %x.y.i70 = select i1 %cmp.i69, double %conv, double %x.y.i68, !dbg !1235
  %sub = fsub double %x.y.i66, %x.y.i70, !dbg !1238
  call void @llvm.dbg.value(metadata double %sub, metadata !1205, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1207, metadata !DIExpression()), !dbg !1210
  %cmp = fcmp oeq double %sub, 0.000000e+00, !dbg !1239
  br i1 %cmp, label %if.end37, label %if.else, !dbg !1241

if.else:                                          ; preds = %entry
  %conv8 = fptoui double %x.y.i66 to i16, !dbg !1242
  %cmp10 = icmp eq i16 %conv8, %red, !dbg !1244
  br i1 %cmp10, label %if.then12, label %if.else15, !dbg !1245

if.then12:                                        ; preds = %if.else
  %sub13 = fsub double %conv1, %conv2, !dbg !1246
  %div = fdiv double %sub13, %sub, !dbg !1247
  %add = fadd double %div, 6.000000e+00, !dbg !1248
  %call14 = tail call double @fmod(double noundef %add, double noundef 6.000000e+00) #11, !dbg !1249
  call void @llvm.dbg.value(metadata double %call14, metadata !1207, metadata !DIExpression()), !dbg !1210
  br label %if.end37, !dbg !1250

if.else15:                                        ; preds = %if.else
  %cmp19 = icmp eq i16 %conv8, %green, !dbg !1251
  br i1 %cmp19, label %if.then21, label %if.else25, !dbg !1253

if.then21:                                        ; preds = %if.else15
  %sub22 = fsub double %conv2, %conv, !dbg !1254
  %div23 = fdiv double %sub22, %sub, !dbg !1255
  %add24 = fadd double %div23, 2.000000e+00, !dbg !1256
  call void @llvm.dbg.value(metadata double %add24, metadata !1207, metadata !DIExpression()), !dbg !1210
  br label %if.end37, !dbg !1257

if.else25:                                        ; preds = %if.else15
  %cmp29 = icmp eq i16 %conv8, %blue, !dbg !1258
  br i1 %cmp29, label %if.then31, label %if.end37, !dbg !1260

if.then31:                                        ; preds = %if.else25
  %sub32 = fsub double %conv, %conv1, !dbg !1261
  %div33 = fdiv double %sub32, %sub, !dbg !1262
  %add34 = fadd double %div33, 4.000000e+00, !dbg !1263
  call void @llvm.dbg.value(metadata double %add34, metadata !1207, metadata !DIExpression()), !dbg !1210
  br label %if.end37, !dbg !1264

if.end37:                                         ; preds = %entry, %if.then12, %if.else25, %if.then31, %if.then21
  %h.0 = phi double [ %call14, %if.then12 ], [ %add24, %if.then21 ], [ %add34, %if.then31 ], [ 0.000000e+00, %if.else25 ], [ 0.000000e+00, %entry ], !dbg !1210
  call void @llvm.dbg.value(metadata double %h.0, metadata !1207, metadata !DIExpression()), !dbg !1210
  %div38 = fdiv double %h.0, 6.000000e+00, !dbg !1265
  store double %div38, ptr %hue, align 8, !dbg !1266, !tbaa !1267
  %mul = fmul double %sub, 0x3EF0001000100010, !dbg !1269
  store double %mul, ptr %chroma, align 8, !dbg !1270, !tbaa !1267
  %mul40 = fmul double %conv1, 5.868110e-01, !dbg !1271
  %0 = tail call double @llvm.fmuladd.f64(double %conv, double 2.988390e-01, double %mul40), !dbg !1272
  %1 = tail call double @llvm.fmuladd.f64(double %conv2, double 1.143500e-01, double %0), !dbg !1273
  %mul42 = fmul double %1, 0x3EF0001000100010, !dbg !1274
  store double %mul42, ptr %luma, align 8, !dbg !1275, !tbaa !1267
  ret void, !dbg !1276
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly uwtable
define dso_local void @ConvertRGBToHCLp(i16 noundef zeroext %red, i16 noundef zeroext %green, i16 noundef zeroext %blue, ptr nocapture noundef writeonly %hue, ptr nocapture noundef writeonly %chroma, ptr nocapture noundef writeonly %luma) local_unnamed_addr #0 !dbg !1277 {
entry:
  call void @llvm.dbg.value(metadata i16 %red, metadata !1279, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i16 %green, metadata !1280, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i16 %blue, metadata !1281, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata ptr %hue, metadata !1282, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata ptr %chroma, metadata !1283, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata ptr %luma, metadata !1284, metadata !DIExpression()), !dbg !1291
  %conv = uitofp i16 %red to double, !dbg !1292
  call void @llvm.dbg.value(metadata double %conv, metadata !1290, metadata !DIExpression()), !dbg !1291
  %conv1 = uitofp i16 %green to double, !dbg !1293
  call void @llvm.dbg.value(metadata double %conv1, metadata !1287, metadata !DIExpression()), !dbg !1291
  %conv2 = uitofp i16 %blue to double, !dbg !1294
  call void @llvm.dbg.value(metadata double %conv2, metadata !1285, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata double %conv1, metadata !1214, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata double %conv2, metadata !1219, metadata !DIExpression()), !dbg !1295
  %cmp.i = fcmp ogt double %conv1, %conv2, !dbg !1297
  %x.y.i = select i1 %cmp.i, double %conv1, double %conv2, !dbg !1295
  call void @llvm.dbg.value(metadata double %conv, metadata !1214, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata double %x.y.i, metadata !1219, metadata !DIExpression()), !dbg !1298
  %cmp.i65 = fcmp olt double %x.y.i, %conv, !dbg !1300
  %x.y.i66 = select i1 %cmp.i65, double %conv, double %x.y.i, !dbg !1298
  call void @llvm.dbg.value(metadata double %x.y.i66, metadata !1289, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata double %conv1, metadata !1227, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata double %conv2, metadata !1230, metadata !DIExpression()), !dbg !1301
  %cmp.i67 = fcmp olt double %conv1, %conv2, !dbg !1303
  %x.y.i68 = select i1 %cmp.i67, double %conv1, double %conv2, !dbg !1301
  call void @llvm.dbg.value(metadata double %conv, metadata !1227, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata double %x.y.i68, metadata !1230, metadata !DIExpression()), !dbg !1304
  %cmp.i69 = fcmp ogt double %x.y.i68, %conv, !dbg !1306
  %x.y.i70 = select i1 %cmp.i69, double %conv, double %x.y.i68, !dbg !1304
  %sub = fsub double %x.y.i66, %x.y.i70, !dbg !1307
  call void @llvm.dbg.value(metadata double %sub, metadata !1286, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1288, metadata !DIExpression()), !dbg !1291
  %cmp = fcmp oeq double %sub, 0.000000e+00, !dbg !1308
  br i1 %cmp, label %if.end37, label %if.else, !dbg !1310

if.else:                                          ; preds = %entry
  %conv8 = fptoui double %x.y.i66 to i16, !dbg !1311
  %cmp10 = icmp eq i16 %conv8, %red, !dbg !1313
  br i1 %cmp10, label %if.then12, label %if.else15, !dbg !1314

if.then12:                                        ; preds = %if.else
  %sub13 = fsub double %conv1, %conv2, !dbg !1315
  %div = fdiv double %sub13, %sub, !dbg !1316
  %add = fadd double %div, 6.000000e+00, !dbg !1317
  %call14 = tail call double @fmod(double noundef %add, double noundef 6.000000e+00) #11, !dbg !1318
  call void @llvm.dbg.value(metadata double %call14, metadata !1288, metadata !DIExpression()), !dbg !1291
  br label %if.end37, !dbg !1319

if.else15:                                        ; preds = %if.else
  %cmp19 = icmp eq i16 %conv8, %green, !dbg !1320
  br i1 %cmp19, label %if.then21, label %if.else25, !dbg !1322

if.then21:                                        ; preds = %if.else15
  %sub22 = fsub double %conv2, %conv, !dbg !1323
  %div23 = fdiv double %sub22, %sub, !dbg !1324
  %add24 = fadd double %div23, 2.000000e+00, !dbg !1325
  call void @llvm.dbg.value(metadata double %add24, metadata !1288, metadata !DIExpression()), !dbg !1291
  br label %if.end37, !dbg !1326

if.else25:                                        ; preds = %if.else15
  %cmp29 = icmp eq i16 %conv8, %blue, !dbg !1327
  br i1 %cmp29, label %if.then31, label %if.end37, !dbg !1329

if.then31:                                        ; preds = %if.else25
  %sub32 = fsub double %conv, %conv1, !dbg !1330
  %div33 = fdiv double %sub32, %sub, !dbg !1331
  %add34 = fadd double %div33, 4.000000e+00, !dbg !1332
  call void @llvm.dbg.value(metadata double %add34, metadata !1288, metadata !DIExpression()), !dbg !1291
  br label %if.end37, !dbg !1333

if.end37:                                         ; preds = %entry, %if.then12, %if.else25, %if.then31, %if.then21
  %h.0 = phi double [ %call14, %if.then12 ], [ %add24, %if.then21 ], [ %add34, %if.then31 ], [ 0.000000e+00, %if.else25 ], [ 0.000000e+00, %entry ], !dbg !1291
  call void @llvm.dbg.value(metadata double %h.0, metadata !1288, metadata !DIExpression()), !dbg !1291
  %div38 = fdiv double %h.0, 6.000000e+00, !dbg !1334
  store double %div38, ptr %hue, align 8, !dbg !1335, !tbaa !1267
  %mul = fmul double %sub, 0x3EF0001000100010, !dbg !1336
  store double %mul, ptr %chroma, align 8, !dbg !1337, !tbaa !1267
  %mul40 = fmul double %conv1, 5.868110e-01, !dbg !1338
  %0 = tail call double @llvm.fmuladd.f64(double %conv, double 2.988390e-01, double %mul40), !dbg !1339
  %1 = tail call double @llvm.fmuladd.f64(double %conv2, double 1.143500e-01, double %0), !dbg !1340
  %mul42 = fmul double %1, 0x3EF0001000100010, !dbg !1341
  store double %mul42, ptr %luma, align 8, !dbg !1342, !tbaa !1267
  ret void, !dbg !1343
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @ConvertRGBToHSB(i16 noundef zeroext %red, i16 noundef zeroext %green, i16 noundef zeroext %blue, ptr nocapture noundef %hue, ptr nocapture noundef writeonly %saturation, ptr nocapture noundef writeonly %brightness) local_unnamed_addr #6 !dbg !1344 {
entry:
  call void @llvm.dbg.value(metadata i16 %red, metadata !1346, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i16 %green, metadata !1347, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i16 %blue, metadata !1348, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata ptr %hue, metadata !1349, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata ptr %saturation, metadata !1350, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata ptr %brightness, metadata !1351, metadata !DIExpression()), !dbg !1358
  store double 0.000000e+00, ptr %hue, align 8, !dbg !1359, !tbaa !1267
  store double 0.000000e+00, ptr %saturation, align 8, !dbg !1360, !tbaa !1267
  store double 0.000000e+00, ptr %brightness, align 8, !dbg !1361, !tbaa !1267
  %conv = uitofp i16 %red to double, !dbg !1362
  call void @llvm.dbg.value(metadata double %conv, metadata !1357, metadata !DIExpression()), !dbg !1358
  %conv1 = uitofp i16 %green to double, !dbg !1363
  call void @llvm.dbg.value(metadata double %conv1, metadata !1354, metadata !DIExpression()), !dbg !1358
  %conv2 = uitofp i16 %blue to double, !dbg !1364
  call void @llvm.dbg.value(metadata double %conv2, metadata !1352, metadata !DIExpression()), !dbg !1358
  %cmp = fcmp olt double %conv, %conv1, !dbg !1365
  %conv.conv1 = select i1 %cmp, double %conv, double %conv1, !dbg !1366
  call void @llvm.dbg.value(metadata double %conv.conv1, metadata !1356, metadata !DIExpression()), !dbg !1358
  %cmp4 = fcmp ogt double %conv.conv1, %conv2, !dbg !1367
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1369

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata double %conv2, metadata !1356, metadata !DIExpression()), !dbg !1358
  br label %if.end, !dbg !1370

if.end:                                           ; preds = %if.then, %entry
  %min.0 = phi double [ %conv2, %if.then ], [ %conv.conv1, %entry ], !dbg !1358
  call void @llvm.dbg.value(metadata double %min.0, metadata !1356, metadata !DIExpression()), !dbg !1358
  %cmp6 = fcmp ogt double %conv, %conv1, !dbg !1371
  %conv.conv187 = select i1 %cmp6, double %conv, double %conv1, !dbg !1372
  call void @llvm.dbg.value(metadata double %conv.conv187, metadata !1355, metadata !DIExpression()), !dbg !1358
  %cmp12 = fcmp olt double %conv.conv187, %conv2, !dbg !1373
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !1375

if.then14:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata double %conv2, metadata !1355, metadata !DIExpression()), !dbg !1358
  br label %if.end15, !dbg !1376

if.end15:                                         ; preds = %if.then14, %if.end
  %max.0 = phi double [ %conv2, %if.then14 ], [ %conv.conv187, %if.end ], !dbg !1358
  call void @llvm.dbg.value(metadata double %max.0, metadata !1355, metadata !DIExpression()), !dbg !1358
  %cmp16 = fcmp oeq double %max.0, 0.000000e+00, !dbg !1377
  br i1 %cmp16, label %cleanup, label %if.end19, !dbg !1379

if.end19:                                         ; preds = %if.end15
  %sub = fsub double %max.0, %min.0, !dbg !1380
  call void @llvm.dbg.value(metadata double %sub, metadata !1353, metadata !DIExpression()), !dbg !1358
  %div = fdiv double %sub, %max.0, !dbg !1381
  store double %div, ptr %saturation, align 8, !dbg !1382, !tbaa !1267
  %mul = fmul double %max.0, 0x3EF0001000100010, !dbg !1383
  store double %mul, ptr %brightness, align 8, !dbg !1384, !tbaa !1267
  %cmp20 = fcmp oeq double %sub, 0.000000e+00, !dbg !1385
  br i1 %cmp20, label %cleanup, label %if.end23, !dbg !1387

if.end23:                                         ; preds = %if.end19
  %cmp24 = fcmp oeq double %max.0, %conv, !dbg !1388
  br i1 %cmp24, label %if.then26, label %if.else, !dbg !1390

if.then26:                                        ; preds = %if.end23
  %sub27 = fsub double %conv1, %conv2, !dbg !1391
  %div28 = fdiv double %sub27, %sub, !dbg !1392
  br label %if.end39, !dbg !1393

if.else:                                          ; preds = %if.end23
  %cmp29 = fcmp oeq double %max.0, %conv1, !dbg !1394
  br i1 %cmp29, label %if.then31, label %if.else34, !dbg !1396

if.then31:                                        ; preds = %if.else
  %sub32 = fsub double %conv2, %conv, !dbg !1397
  %div33 = fdiv double %sub32, %sub, !dbg !1398
  %add = fadd double %div33, 2.000000e+00, !dbg !1399
  br label %if.end39, !dbg !1400

if.else34:                                        ; preds = %if.else
  %sub35 = fsub double %conv, %conv1, !dbg !1401
  %div36 = fdiv double %sub35, %sub, !dbg !1402
  %add37 = fadd double %div36, 4.000000e+00, !dbg !1403
  br label %if.end39

if.end39:                                         ; preds = %if.then31, %if.else34, %if.then26
  %0 = phi double [ %add, %if.then31 ], [ %add37, %if.else34 ], [ %div28, %if.then26 ], !dbg !1404
  %div40 = fdiv double %0, 6.000000e+00, !dbg !1404
  %cmp41 = fcmp olt double %div40, 0.000000e+00, !dbg !1405
  br i1 %cmp41, label %if.then43, label %if.end45, !dbg !1407

if.then43:                                        ; preds = %if.end39
  %add44 = fadd double %div40, 1.000000e+00, !dbg !1408
  br label %if.end45, !dbg !1409

if.end45:                                         ; preds = %if.then43, %if.end39
  %storemerge = phi double [ %add44, %if.then43 ], [ %div40, %if.end39 ], !dbg !1358
  store double %storemerge, ptr %hue, align 8, !dbg !1358, !tbaa !1267
  br label %cleanup, !dbg !1410

cleanup:                                          ; preds = %if.end19, %if.end15, %if.end45
  ret void, !dbg !1410
}

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local void @ConvertRGBToHSI(i16 noundef zeroext %red, i16 noundef zeroext %green, i16 noundef zeroext %blue, ptr nocapture noundef writeonly %hue, ptr nocapture noundef writeonly %saturation, ptr nocapture noundef %intensity) local_unnamed_addr #7 !dbg !1411 {
entry:
  call void @llvm.dbg.value(metadata i16 %red, metadata !1413, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i16 %green, metadata !1414, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i16 %blue, metadata !1415, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata ptr %hue, metadata !1416, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata ptr %saturation, metadata !1417, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata ptr %intensity, metadata !1418, metadata !DIExpression()), !dbg !1421
  %conv1 = uitofp i16 %red to double, !dbg !1422
  %conv3 = uitofp i16 %green to double, !dbg !1423
  %mul4 = fmul double %conv3, 0x3EF0001000100010, !dbg !1424
  %0 = tail call double @llvm.fmuladd.f64(double %conv1, double 0x3EF0001000100010, double %mul4), !dbg !1425
  %conv6 = uitofp i16 %blue to double, !dbg !1426
  %1 = tail call double @llvm.fmuladd.f64(double %conv6, double 0x3EF0001000100010, double %0), !dbg !1427
  %div = fdiv double %1, 3.000000e+00, !dbg !1428
  store double %div, ptr %intensity, align 8, !dbg !1429, !tbaa !1267
  %cmp = fcmp ugt double %div, 0.000000e+00, !dbg !1430
  br i1 %cmp, label %if.end, label %if.then, !dbg !1432

if.then:                                          ; preds = %entry
  store double 0.000000e+00, ptr %hue, align 8, !dbg !1433, !tbaa !1267
  store double 0.000000e+00, ptr %saturation, align 8, !dbg !1435, !tbaa !1267
  br label %cleanup, !dbg !1436

if.end:                                           ; preds = %entry
  %mul = fmul double %conv1, 0x3EF0001000100010, !dbg !1437
  %mul15 = fmul double %conv6, 0x3EF0001000100010, !dbg !1438
  call void @llvm.dbg.value(metadata double %mul4, metadata !1227, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata double %mul15, metadata !1230, metadata !DIExpression()), !dbg !1439
  %cmp.i = fcmp olt double %mul4, %mul15, !dbg !1441
  %x.y.i = select i1 %cmp.i, double %mul4, double %mul15, !dbg !1439
  call void @llvm.dbg.value(metadata double %mul, metadata !1227, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata double %x.y.i, metadata !1230, metadata !DIExpression()), !dbg !1442
  %cmp.i58 = fcmp olt double %mul, %x.y.i, !dbg !1444
  %x.y.i59 = select i1 %cmp.i58, double %mul, double %x.y.i, !dbg !1442
  %div17 = fdiv double %x.y.i59, %div, !dbg !1445
  %sub = fsub double 1.000000e+00, %div17, !dbg !1446
  store double %sub, ptr %saturation, align 8, !dbg !1447, !tbaa !1267
  %neg = fneg double %mul4, !dbg !1448
  %2 = tail call double @llvm.fmuladd.f64(double %conv1, double 0x3F00001000100010, double %neg), !dbg !1448
  %3 = tail call double @llvm.fmuladd.f64(double %conv6, double 0xBEF0001000100010, double %2), !dbg !1449
  %mul27 = fmul double %3, 5.000000e-01, !dbg !1450
  call void @llvm.dbg.value(metadata double %mul27, metadata !1419, metadata !DIExpression()), !dbg !1421
  %neg34 = fneg double %mul15, !dbg !1451
  %4 = tail call double @llvm.fmuladd.f64(double %conv3, double 0x3EF0001000100010, double %neg34), !dbg !1451
  %mul35 = fmul double %4, 0x3FEBB67AE8584CA9, !dbg !1452
  call void @llvm.dbg.value(metadata double %mul35, metadata !1420, metadata !DIExpression()), !dbg !1421
  %call36 = tail call double @atan2(double noundef %mul35, double noundef %mul27) #11, !dbg !1453
  %mul37 = fmul double %call36, 0x404CA5DC1A63C1F8, !dbg !1454
  %div38 = fdiv double %mul37, 3.600000e+02, !dbg !1455
  %cmp39 = fcmp olt double %div38, 0.000000e+00, !dbg !1456
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !1458

if.then41:                                        ; preds = %if.end
  %add = fadd double %div38, 1.000000e+00, !dbg !1459
  br label %if.end42, !dbg !1460

if.end42:                                         ; preds = %if.then41, %if.end
  %storemerge = phi double [ %add, %if.then41 ], [ %div38, %if.end ], !dbg !1421
  store double %storemerge, ptr %hue, align 8, !dbg !1421, !tbaa !1267
  br label %cleanup, !dbg !1461

cleanup:                                          ; preds = %if.end42, %if.then
  ret void, !dbg !1461
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @atan2(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn uwtable
define dso_local void @ConvertRGBToHSL(i16 noundef zeroext %red, i16 noundef zeroext %green, i16 noundef zeroext %blue, ptr nocapture noundef %hue, ptr nocapture noundef writeonly %saturation, ptr nocapture noundef %lightness) local_unnamed_addr #3 !dbg !1462 {
entry:
  call void @llvm.dbg.value(metadata i16 %red, metadata !1464, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i16 %green, metadata !1465, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i16 %blue, metadata !1466, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata ptr %hue, metadata !1467, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata ptr %saturation, metadata !1468, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata ptr %lightness, metadata !1469, metadata !DIExpression()), !dbg !1473
  %conv1 = uitofp i16 %red to double, !dbg !1474
  %mul = fmul double %conv1, 0x3EF0001000100010, !dbg !1475
  %conv3 = uitofp i16 %green to double, !dbg !1476
  %mul4 = fmul double %conv3, 0x3EF0001000100010, !dbg !1477
  %conv6 = uitofp i16 %blue to double, !dbg !1478
  %mul7 = fmul double %conv6, 0x3EF0001000100010, !dbg !1479
  call void @llvm.dbg.value(metadata double %mul4, metadata !1214, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata double %mul7, metadata !1219, metadata !DIExpression()), !dbg !1480
  %cmp.i = fcmp ogt double %mul4, %mul7, !dbg !1482
  %x.y.i = select i1 %cmp.i, double %mul4, double %mul7, !dbg !1480
  call void @llvm.dbg.value(metadata double %mul, metadata !1214, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata double %x.y.i, metadata !1219, metadata !DIExpression()), !dbg !1483
  %cmp.i117 = fcmp ogt double %mul, %x.y.i, !dbg !1485
  %x.y.i118 = select i1 %cmp.i117, double %mul, double %x.y.i, !dbg !1483
  call void @llvm.dbg.value(metadata double %x.y.i118, metadata !1471, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata double %mul4, metadata !1227, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata double %mul7, metadata !1230, metadata !DIExpression()), !dbg !1486
  %cmp.i119 = fcmp olt double %mul4, %mul7, !dbg !1488
  %x.y.i120 = select i1 %cmp.i119, double %mul4, double %mul7, !dbg !1486
  call void @llvm.dbg.value(metadata double %mul, metadata !1227, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata double %x.y.i120, metadata !1230, metadata !DIExpression()), !dbg !1489
  %cmp.i121 = fcmp olt double %mul, %x.y.i120, !dbg !1491
  %x.y.i122 = select i1 %cmp.i121, double %mul, double %x.y.i120, !dbg !1489
  call void @llvm.dbg.value(metadata double %x.y.i122, metadata !1472, metadata !DIExpression()), !dbg !1473
  %sub = fsub double %x.y.i118, %x.y.i122, !dbg !1492
  call void @llvm.dbg.value(metadata double %sub, metadata !1470, metadata !DIExpression()), !dbg !1473
  %add = fadd double %x.y.i118, %x.y.i122, !dbg !1493
  %div = fmul double %add, 5.000000e-01, !dbg !1494
  store double %div, ptr %lightness, align 8, !dbg !1495, !tbaa !1267
  %cmp = fcmp ugt double %sub, 0.000000e+00, !dbg !1496
  br i1 %cmp, label %if.end, label %if.then, !dbg !1498

if.then:                                          ; preds = %entry
  store double 0.000000e+00, ptr %hue, align 8, !dbg !1499, !tbaa !1267
  br label %cleanup, !dbg !1501

if.end:                                           ; preds = %entry
  %cmp24 = fcmp oeq double %x.y.i118, %mul, !dbg !1502
  br i1 %cmp24, label %if.then26, label %if.else, !dbg !1504

if.then26:                                        ; preds = %if.end
  %neg = fneg double %mul7, !dbg !1505
  %0 = tail call double @llvm.fmuladd.f64(double %conv3, double 0x3EF0001000100010, double %neg), !dbg !1505
  %div33 = fdiv double %0, %sub, !dbg !1507
  br i1 %cmp.i119, label %if.then42, label %if.end71, !dbg !1508

if.then42:                                        ; preds = %if.then26
  %add43 = fadd double %div33, 6.000000e+00, !dbg !1509
  br label %if.end71, !dbg !1511

if.else:                                          ; preds = %if.end
  %cmp48 = fcmp oeq double %x.y.i118, %mul4, !dbg !1512
  br i1 %cmp48, label %if.then50, label %if.else60, !dbg !1514

if.then50:                                        ; preds = %if.else
  %neg57 = fneg double %mul, !dbg !1515
  %1 = tail call double @llvm.fmuladd.f64(double %conv6, double 0x3EF0001000100010, double %neg57), !dbg !1515
  %div58 = fdiv double %1, %sub, !dbg !1516
  %add59 = fadd double %div58, 2.000000e+00, !dbg !1517
  br label %if.end71, !dbg !1518

if.else60:                                        ; preds = %if.else
  %neg67 = fneg double %mul4, !dbg !1519
  %2 = tail call double @llvm.fmuladd.f64(double %conv1, double 0x3EF0001000100010, double %neg67), !dbg !1519
  %div68 = fdiv double %2, %sub, !dbg !1520
  %add69 = fadd double %div68, 4.000000e+00, !dbg !1521
  br label %if.end71

if.end71:                                         ; preds = %if.then50, %if.else60, %if.then26, %if.then42
  %3 = phi double [ %add59, %if.then50 ], [ %add69, %if.else60 ], [ %div33, %if.then26 ], [ %add43, %if.then42 ], !dbg !1522
  %mul72 = fmul double %3, 0x3FC5555555555555, !dbg !1522
  store double %mul72, ptr %hue, align 8, !dbg !1522, !tbaa !1267
  %4 = load double, ptr %lightness, align 8, !dbg !1523, !tbaa !1267
  %cmp73 = fcmp ugt double %4, 5.000000e-01, !dbg !1525
  br i1 %cmp73, label %if.else78, label %if.then75, !dbg !1526

if.then75:                                        ; preds = %if.end71
  %mul76 = fmul double %4, 2.000000e+00, !dbg !1527
  br label %if.end81, !dbg !1528

if.else78:                                        ; preds = %if.end71
  %5 = tail call double @llvm.fmuladd.f64(double %4, double -2.000000e+00, double 2.000000e+00), !dbg !1529
  br label %if.end81

if.end81:                                         ; preds = %if.else78, %if.then75
  %.pn = phi double [ %5, %if.else78 ], [ %mul76, %if.then75 ]
  %storemerge = fdiv double %sub, %.pn, !dbg !1530
  br label %cleanup, !dbg !1531

cleanup:                                          ; preds = %if.end81, %if.then
  %storemerge116 = phi double [ %storemerge, %if.end81 ], [ 0.000000e+00, %if.then ], !dbg !1473
  store double %storemerge116, ptr %saturation, align 8, !dbg !1473, !tbaa !1267
  ret void, !dbg !1531
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn uwtable
define dso_local void @ConvertRGBToHSV(i16 noundef zeroext %red, i16 noundef zeroext %green, i16 noundef zeroext %blue, ptr nocapture noundef %hue, ptr nocapture noundef writeonly %saturation, ptr nocapture noundef writeonly %value) local_unnamed_addr #3 !dbg !1532 {
entry:
  call void @llvm.dbg.value(metadata i16 %red, metadata !1534, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i16 %green, metadata !1535, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i16 %blue, metadata !1536, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata ptr %hue, metadata !1537, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata ptr %saturation, metadata !1538, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata ptr %value, metadata !1539, metadata !DIExpression()), !dbg !1543
  %conv1 = uitofp i16 %red to double, !dbg !1544
  %mul = fmul double %conv1, 0x3EF0001000100010, !dbg !1545
  %conv3 = uitofp i16 %green to double, !dbg !1546
  %mul4 = fmul double %conv3, 0x3EF0001000100010, !dbg !1547
  %conv6 = uitofp i16 %blue to double, !dbg !1548
  %mul7 = fmul double %conv6, 0x3EF0001000100010, !dbg !1549
  call void @llvm.dbg.value(metadata double %mul4, metadata !1214, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata double %mul7, metadata !1219, metadata !DIExpression()), !dbg !1550
  %cmp.i = fcmp ogt double %mul4, %mul7, !dbg !1552
  %x.y.i = select i1 %cmp.i, double %mul4, double %mul7, !dbg !1550
  call void @llvm.dbg.value(metadata double %mul, metadata !1214, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata double %x.y.i, metadata !1219, metadata !DIExpression()), !dbg !1553
  %cmp.i101 = fcmp ogt double %mul, %x.y.i, !dbg !1555
  %x.y.i102 = select i1 %cmp.i101, double %mul, double %x.y.i, !dbg !1553
  call void @llvm.dbg.value(metadata double %x.y.i102, metadata !1541, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata double %mul4, metadata !1227, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata double %mul7, metadata !1230, metadata !DIExpression()), !dbg !1556
  %cmp.i103 = fcmp olt double %mul4, %mul7, !dbg !1558
  %x.y.i104 = select i1 %cmp.i103, double %mul4, double %mul7, !dbg !1556
  call void @llvm.dbg.value(metadata double %mul, metadata !1227, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata double %x.y.i104, metadata !1230, metadata !DIExpression()), !dbg !1559
  %cmp.i105 = fcmp olt double %mul, %x.y.i104, !dbg !1561
  %x.y.i106 = select i1 %cmp.i105, double %mul, double %x.y.i104, !dbg !1559
  call void @llvm.dbg.value(metadata double %x.y.i106, metadata !1542, metadata !DIExpression()), !dbg !1543
  %sub = fsub double %x.y.i102, %x.y.i106, !dbg !1562
  call void @llvm.dbg.value(metadata double %sub, metadata !1540, metadata !DIExpression()), !dbg !1543
  store double %x.y.i102, ptr %value, align 8, !dbg !1563, !tbaa !1267
  %cmp = fcmp ugt double %sub, 0.000000e+00, !dbg !1564
  br i1 %cmp, label %if.end, label %if.then, !dbg !1566

if.then:                                          ; preds = %entry
  store double 0.000000e+00, ptr %hue, align 8, !dbg !1567, !tbaa !1267
  br label %cleanup, !dbg !1569

if.end:                                           ; preds = %entry
  %cmp24 = fcmp oeq double %x.y.i102, %mul, !dbg !1570
  br i1 %cmp24, label %if.then26, label %if.else, !dbg !1572

if.then26:                                        ; preds = %if.end
  %neg = fneg double %mul7, !dbg !1573
  %0 = tail call double @llvm.fmuladd.f64(double %conv3, double 0x3EF0001000100010, double %neg), !dbg !1573
  %div = fdiv double %0, %sub, !dbg !1575
  br i1 %cmp.i103, label %if.then41, label %if.end69, !dbg !1576

if.then41:                                        ; preds = %if.then26
  %add = fadd double %div, 6.000000e+00, !dbg !1577
  br label %if.end69, !dbg !1579

if.else:                                          ; preds = %if.end
  %cmp46 = fcmp oeq double %x.y.i102, %mul4, !dbg !1580
  br i1 %cmp46, label %if.then48, label %if.else58, !dbg !1582

if.then48:                                        ; preds = %if.else
  %neg55 = fneg double %mul, !dbg !1583
  %1 = tail call double @llvm.fmuladd.f64(double %conv6, double 0x3EF0001000100010, double %neg55), !dbg !1583
  %div56 = fdiv double %1, %sub, !dbg !1584
  %add57 = fadd double %div56, 2.000000e+00, !dbg !1585
  br label %if.end69, !dbg !1586

if.else58:                                        ; preds = %if.else
  %neg65 = fneg double %mul4, !dbg !1587
  %2 = tail call double @llvm.fmuladd.f64(double %conv1, double 0x3EF0001000100010, double %neg65), !dbg !1587
  %div66 = fdiv double %2, %sub, !dbg !1588
  %add67 = fadd double %div66, 4.000000e+00, !dbg !1589
  br label %if.end69

if.end69:                                         ; preds = %if.then48, %if.else58, %if.then26, %if.then41
  %3 = phi double [ %add57, %if.then48 ], [ %add67, %if.else58 ], [ %div, %if.then26 ], [ %add, %if.then41 ], !dbg !1590
  %mul70 = fmul double %3, 0x3FC5555555555555, !dbg !1590
  store double %mul70, ptr %hue, align 8, !dbg !1590, !tbaa !1267
  %div71 = fdiv double %sub, %x.y.i102, !dbg !1591
  br label %cleanup, !dbg !1592

cleanup:                                          ; preds = %if.end69, %if.then
  %storemerge = phi double [ %div71, %if.end69 ], [ 0.000000e+00, %if.then ], !dbg !1543
  store double %storemerge, ptr %saturation, align 8, !dbg !1543, !tbaa !1267
  ret void, !dbg !1592
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn writeonly uwtable
define dso_local void @ConvertRGBToHWB(i16 noundef zeroext %red, i16 noundef zeroext %green, i16 noundef zeroext %blue, ptr nocapture noundef writeonly %hue, ptr nocapture noundef writeonly %whiteness, ptr nocapture noundef writeonly %blackness) local_unnamed_addr #4 !dbg !1593 {
entry:
  call void @llvm.dbg.value(metadata i16 %red, metadata !1595, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata i16 %green, metadata !1596, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata i16 %blue, metadata !1597, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata ptr %hue, metadata !1598, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata ptr %whiteness, metadata !1599, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata ptr %blackness, metadata !1600, metadata !DIExpression()), !dbg !1608
  %conv = uitofp i16 %red to double, !dbg !1609
  call void @llvm.dbg.value(metadata double %conv, metadata !1605, metadata !DIExpression()), !dbg !1608
  %conv1 = uitofp i16 %green to double, !dbg !1610
  call void @llvm.dbg.value(metadata double %conv1, metadata !1603, metadata !DIExpression()), !dbg !1608
  %conv2 = uitofp i16 %blue to double, !dbg !1611
  call void @llvm.dbg.value(metadata double %conv2, metadata !1601, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata double %conv1, metadata !1227, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata double %conv2, metadata !1230, metadata !DIExpression()), !dbg !1612
  %cmp.i = fcmp olt double %conv1, %conv2, !dbg !1614
  %x.y.i = select i1 %cmp.i, double %conv1, double %conv2, !dbg !1612
  call void @llvm.dbg.value(metadata double %conv, metadata !1227, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata double %x.y.i, metadata !1230, metadata !DIExpression()), !dbg !1615
  %cmp.i57 = fcmp ogt double %x.y.i, %conv, !dbg !1617
  %x.y.i58 = select i1 %cmp.i57, double %conv, double %x.y.i, !dbg !1615
  call void @llvm.dbg.value(metadata double %x.y.i58, metadata !1607, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata double %conv1, metadata !1214, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata double %conv2, metadata !1219, metadata !DIExpression()), !dbg !1618
  %cmp.i59 = fcmp ogt double %conv1, %conv2, !dbg !1620
  %x.y.i60 = select i1 %cmp.i59, double %conv1, double %conv2, !dbg !1618
  call void @llvm.dbg.value(metadata double %conv, metadata !1214, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata double %x.y.i60, metadata !1219, metadata !DIExpression()), !dbg !1621
  %cmp.i61 = fcmp olt double %x.y.i60, %conv, !dbg !1623
  %x.y.i62 = select i1 %cmp.i61, double %conv, double %x.y.i60, !dbg !1621
  call void @llvm.dbg.value(metadata double %x.y.i62, metadata !1606, metadata !DIExpression()), !dbg !1608
  %0 = tail call double @llvm.fmuladd.f64(double %x.y.i62, double 0xBEF0001000100010, double 1.000000e+00), !dbg !1624
  store double %0, ptr %blackness, align 8, !dbg !1625, !tbaa !1267
  %mul = fmul double %x.y.i58, 0x3EF0001000100010, !dbg !1626
  store double %mul, ptr %whiteness, align 8, !dbg !1627, !tbaa !1267
  %cmp = fcmp oeq double %x.y.i62, %x.y.i58, !dbg !1628
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1630

if.end:                                           ; preds = %entry
  %cmp7 = fcmp oeq double %x.y.i58, %conv, !dbg !1631
  br i1 %cmp7, label %cond.end15, label %cond.false, !dbg !1632

cond.false:                                       ; preds = %if.end
  %cmp9 = fcmp oeq double %x.y.i58, %conv1, !dbg !1633
  br i1 %cmp9, label %cond.true11, label %cond.false13, !dbg !1634

cond.true11:                                      ; preds = %cond.false
  %sub12 = fsub double %conv2, %conv, !dbg !1635
  br label %cond.end24, !dbg !1634

cond.false13:                                     ; preds = %cond.false
  %sub14 = fsub double %conv, %conv1, !dbg !1636
  br label %cond.end24, !dbg !1634

cond.end15:                                       ; preds = %if.end
  %sub = fsub double %conv1, %conv2, !dbg !1637
  call void @llvm.dbg.value(metadata double %sub, metadata !1602, metadata !DIExpression()), !dbg !1608
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false13, %cond.true11, %cond.end15
  %cond1665 = phi double [ %sub, %cond.end15 ], [ %sub12, %cond.true11 ], [ %sub14, %cond.false13 ]
  %cond25 = phi double [ 3.000000e+00, %cond.end15 ], [ 5.000000e+00, %cond.true11 ], [ 1.000000e+00, %cond.false13 ], !dbg !1638
  call void @llvm.dbg.value(metadata double %cond25, metadata !1604, metadata !DIExpression()), !dbg !1608
  %1 = tail call double @llvm.fmuladd.f64(double %x.y.i58, double -1.000000e+00, double %x.y.i62), !dbg !1639
  %div = fdiv double %cond1665, %1, !dbg !1640
  %sub27 = fsub double %cond25, %div, !dbg !1641
  %div28 = fdiv double %sub27, 6.000000e+00, !dbg !1642
  br label %cleanup, !dbg !1643

cleanup:                                          ; preds = %entry, %cond.end24
  %storemerge = phi double [ %div28, %cond.end24 ], [ -1.000000e+00, %entry ], !dbg !1608
  store double %storemerge, ptr %hue, align 8, !dbg !1608, !tbaa !1267
  ret void, !dbg !1643
}

; Function Attrs: nounwind uwtable
define dso_local void @ConvertRGBToLCHab(i16 noundef zeroext %red, i16 noundef zeroext %green, i16 noundef zeroext %blue, ptr nocapture noundef writeonly %luma, ptr nocapture noundef writeonly %chroma, ptr nocapture noundef writeonly %hue) local_unnamed_addr #5 !dbg !1644 {
entry:
  call void @llvm.dbg.value(metadata i16 %red, metadata !1646, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i16 %green, metadata !1647, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i16 %blue, metadata !1648, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata ptr %luma, metadata !1649, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata ptr %chroma, metadata !1650, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata ptr %hue, metadata !1651, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i16 %red, metadata !1656, metadata !DIExpression()) #11, !dbg !1667
  call void @llvm.dbg.value(metadata i16 %green, metadata !1659, metadata !DIExpression()) #11, !dbg !1667
  call void @llvm.dbg.value(metadata i16 %blue, metadata !1660, metadata !DIExpression()) #11, !dbg !1667
  call void @llvm.dbg.value(metadata ptr undef, metadata !1661, metadata !DIExpression()) #11, !dbg !1667
  call void @llvm.dbg.value(metadata ptr undef, metadata !1662, metadata !DIExpression()) #11, !dbg !1667
  call void @llvm.dbg.value(metadata ptr undef, metadata !1663, metadata !DIExpression()) #11, !dbg !1667
  %conv.i = uitofp i16 %red to float, !dbg !1669
  %call.i = tail call float @DecodePixelGamma(float noundef %conv.i) #12, !dbg !1670
  %conv1.i = fpext float %call.i to double, !dbg !1670
  %mul.i = fmul double %conv1.i, 0x3EF0001000100010, !dbg !1671
  call void @llvm.dbg.value(metadata double %mul.i, metadata !1666, metadata !DIExpression()) #11, !dbg !1667
  %conv2.i = uitofp i16 %green to float, !dbg !1672
  %call3.i = tail call float @DecodePixelGamma(float noundef %conv2.i) #12, !dbg !1673
  %conv4.i = fpext float %call3.i to double, !dbg !1673
  %mul5.i = fmul double %conv4.i, 0x3EF0001000100010, !dbg !1674
  call void @llvm.dbg.value(metadata double %mul5.i, metadata !1665, metadata !DIExpression()) #11, !dbg !1667
  %conv6.i = uitofp i16 %blue to float, !dbg !1675
  %call7.i = tail call float @DecodePixelGamma(float noundef %conv6.i) #12, !dbg !1676
  %conv8.i = fpext float %call7.i to double, !dbg !1676
  %mul9.i = fmul double %conv8.i, 0x3EF0001000100010, !dbg !1677
  call void @llvm.dbg.value(metadata double %mul9.i, metadata !1664, metadata !DIExpression()) #11, !dbg !1667
  %mul11.i = fmul double %mul5.i, 0x3FD6E2A59D2E2F46, !dbg !1678
  %0 = tail call double @llvm.fmuladd.f64(double %mul.i, double 0x3FDA64B077E84D0C, double %mul11.i) #11, !dbg !1679
  %1 = tail call double @llvm.fmuladd.f64(double %mul9.i, double 0x3FC71A6210D6208C, double %0) #11, !dbg !1680
  %mul14.i = fmul double %mul5.i, 0x3FE6E2ACD52F3FCB, !dbg !1681
  %2 = tail call double @llvm.fmuladd.f64(double %mul.i, double 0x3FCB36068E66EAD3, double %mul14.i) #11, !dbg !1682
  %3 = tail call double @llvm.fmuladd.f64(double %mul9.i, double 0x3FB27BBB5C6D92D1, double %2) #11, !dbg !1683
  %mul17.i = fmul double %mul5.i, 0x3FBE82D57095EC52, !dbg !1684
  %4 = tail call double @llvm.fmuladd.f64(double %mul.i, double 0x3F93C2A635C37FED, double %mul17.i) #11, !dbg !1685
  %5 = tail call double @llvm.fmuladd.f64(double %mul9.i, double 0x3FEE6A78F26C3A9D, double %4) #11, !dbg !1686
  call void @llvm.dbg.value(metadata double %1, metadata !1652, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata double %3, metadata !1653, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata double %5, metadata !1654, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata double %1, metadata !1687, metadata !DIExpression()) #11, !dbg !1697
  call void @llvm.dbg.value(metadata double %3, metadata !1690, metadata !DIExpression()) #11, !dbg !1697
  call void @llvm.dbg.value(metadata double %5, metadata !1691, metadata !DIExpression()) #11, !dbg !1697
  call void @llvm.dbg.value(metadata ptr %luma, metadata !1692, metadata !DIExpression()) #11, !dbg !1697
  call void @llvm.dbg.value(metadata ptr %chroma, metadata !1693, metadata !DIExpression()) #11, !dbg !1697
  call void @llvm.dbg.value(metadata ptr %hue, metadata !1694, metadata !DIExpression()) #11, !dbg !1697
  call void @llvm.dbg.value(metadata double %1, metadata !1699, metadata !DIExpression()) #11, !dbg !1710
  call void @llvm.dbg.value(metadata double %3, metadata !1702, metadata !DIExpression()) #11, !dbg !1710
  call void @llvm.dbg.value(metadata double %5, metadata !1703, metadata !DIExpression()) #11, !dbg !1710
  call void @llvm.dbg.value(metadata ptr %luma, metadata !1704, metadata !DIExpression()) #11, !dbg !1710
  call void @llvm.dbg.value(metadata ptr undef, metadata !1705, metadata !DIExpression()) #11, !dbg !1710
  call void @llvm.dbg.value(metadata ptr undef, metadata !1706, metadata !DIExpression()) #11, !dbg !1710
  %div.i.i = fdiv double %1, 0x3FEE6A22B3892EE8, !dbg !1712
  %cmp.i.i = fcmp ogt double %div.i.i, 0x3F822354D28F7CD6, !dbg !1714
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i, !dbg !1715

if.then.i.i:                                      ; preds = %entry
  %call.i.i = tail call double @pow(double noundef %div.i.i, double noundef 0x3FD5555555555555) #11, !dbg !1716
  call void @llvm.dbg.value(metadata double %call.i.i, metadata !1707, metadata !DIExpression()) #11, !dbg !1710
  br label %if.end.i.i, !dbg !1717

if.else.i.i:                                      ; preds = %entry
  %mul.i.i = fmul double %1, 0x408C3A5ED097B426, !dbg !1718
  %div2.i.i = fdiv double %mul.i.i, 0x3FEE6A22B3892EE8, !dbg !1719
  %add.i.i = fadd double %div2.i.i, 1.600000e+01, !dbg !1720
  %div3.i.i = fdiv double %add.i.i, 1.160000e+02, !dbg !1721
  call void @llvm.dbg.value(metadata double %div3.i.i, metadata !1707, metadata !DIExpression()) #11, !dbg !1710
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %x.0.i.i = phi double [ %call.i.i, %if.then.i.i ], [ %div3.i.i, %if.else.i.i ], !dbg !1722
  call void @llvm.dbg.value(metadata double %x.0.i.i, metadata !1707, metadata !DIExpression()) #11, !dbg !1710
  %cmp5.i.i = fcmp ogt double %3, 0x3F822354D28F7CD6, !dbg !1723
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.else9.i.i, !dbg !1725

if.then6.i.i:                                     ; preds = %if.end.i.i
  %call8.i.i = tail call double @pow(double noundef %3, double noundef 0x3FD5555555555555) #11, !dbg !1726
  call void @llvm.dbg.value(metadata double %call8.i.i, metadata !1708, metadata !DIExpression()) #11, !dbg !1710
  br label %if.end14.i.i, !dbg !1727

if.else9.i.i:                                     ; preds = %if.end.i.i
  %mul10.i.i = fmul double %3, 0x408C3A5ED097B426, !dbg !1728
  %add12.i.i = fadd double %mul10.i.i, 1.600000e+01, !dbg !1729
  %div13.i.i = fdiv double %add12.i.i, 1.160000e+02, !dbg !1730
  call void @llvm.dbg.value(metadata double %div13.i.i, metadata !1708, metadata !DIExpression()) #11, !dbg !1710
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.else9.i.i, %if.then6.i.i
  %y.0.i.i = phi double [ %call8.i.i, %if.then6.i.i ], [ %div13.i.i, %if.else9.i.i ], !dbg !1731
  call void @llvm.dbg.value(metadata double %y.0.i.i, metadata !1708, metadata !DIExpression()) #11, !dbg !1710
  %div15.i.i = fdiv double %5, 0x3FF16B8950763A19, !dbg !1732
  %cmp16.i.i = fcmp ogt double %div15.i.i, 0x3F822354D28F7CD6, !dbg !1734
  br i1 %cmp16.i.i, label %if.then17.i.i, label %if.else20.i.i, !dbg !1735

if.then17.i.i:                                    ; preds = %if.end14.i.i
  %call19.i.i = tail call double @pow(double noundef %div15.i.i, double noundef 0x3FD5555555555555) #11, !dbg !1736
  call void @llvm.dbg.value(metadata double %call19.i.i, metadata !1709, metadata !DIExpression()) #11, !dbg !1710
  br label %ConvertXYZToLab.exit.i, !dbg !1737

if.else20.i.i:                                    ; preds = %if.end14.i.i
  %mul21.i.i = fmul double %5, 0x408C3A5ED097B426, !dbg !1738
  %div22.i.i = fdiv double %mul21.i.i, 0x3FF16B8950763A19, !dbg !1739
  %add23.i.i = fadd double %div22.i.i, 1.600000e+01, !dbg !1740
  %div24.i.i = fdiv double %add23.i.i, 1.160000e+02, !dbg !1741
  call void @llvm.dbg.value(metadata double %div24.i.i, metadata !1709, metadata !DIExpression()) #11, !dbg !1710
  br label %ConvertXYZToLab.exit.i

ConvertXYZToLab.exit.i:                           ; preds = %if.else20.i.i, %if.then17.i.i
  %z.0.i.i = phi double [ %call19.i.i, %if.then17.i.i ], [ %div24.i.i, %if.else20.i.i ], !dbg !1742
  call void @llvm.dbg.value(metadata double %z.0.i.i, metadata !1709, metadata !DIExpression()) #11, !dbg !1710
  %6 = tail call double @llvm.fmuladd.f64(double %y.0.i.i, double 1.160000e+02, double -1.600000e+01) #11, !dbg !1743
  %div27.i.i = fdiv double %6, 1.000000e+02, !dbg !1744
  store double %div27.i.i, ptr %luma, align 8, !dbg !1745, !tbaa !1267
  %sub.i.i = fsub double %x.0.i.i, %y.0.i.i, !dbg !1746
  %mul28.i.i = fmul double %sub.i.i, 5.000000e+02, !dbg !1747
  %div29.i.i = fdiv double %mul28.i.i, 2.550000e+02, !dbg !1748
  %add30.i.i = fadd double %div29.i.i, 5.000000e-01, !dbg !1749
  %sub31.i.i = fsub double %y.0.i.i, %z.0.i.i, !dbg !1750
  %mul32.i.i = fmul double %sub31.i.i, 2.000000e+02, !dbg !1751
  %div33.i.i = fdiv double %mul32.i.i, 2.550000e+02, !dbg !1752
  %add34.i.i = fadd double %div33.i.i, 5.000000e-01, !dbg !1753
  call void @llvm.dbg.value(metadata double %add30.i.i, metadata !1695, metadata !DIExpression()) #11, !dbg !1697
  %sub.i = fadd double %add30.i.i, -5.000000e-01, !dbg !1754
  %mul.i1 = fmul double %sub.i, 2.550000e+02, !dbg !1755
  call void @llvm.dbg.value(metadata double %add34.i.i, metadata !1696, metadata !DIExpression()) #11, !dbg !1697
  %sub1.i = fadd double %add34.i.i, -5.000000e-01, !dbg !1756
  %mul2.i = fmul double %sub1.i, 2.550000e+02, !dbg !1757
  %call.i2 = tail call double @hypot(double noundef %mul.i1, double noundef %mul2.i) #11, !dbg !1758
  %div.i = fdiv double %call.i2, 2.550000e+02, !dbg !1759
  %add.i = fadd double %div.i, 5.000000e-01, !dbg !1760
  store double %add.i, ptr %chroma, align 8, !dbg !1761, !tbaa !1267
  call void @llvm.dbg.value(metadata double %add34.i.i, metadata !1696, metadata !DIExpression()) #11, !dbg !1697
  call void @llvm.dbg.value(metadata double %add30.i.i, metadata !1695, metadata !DIExpression()) #11, !dbg !1697
  %call7.i3 = tail call double @atan2(double noundef %mul2.i, double noundef %mul.i1) #11, !dbg !1762
  %mul8.i = fmul double %call7.i3, 1.800000e+02, !dbg !1763
  %div9.i = fdiv double %mul8.i, 0x400921FB54442D18, !dbg !1764
  %div10.i = fdiv double %div9.i, 3.600000e+02, !dbg !1765
  %cmp.i = fcmp olt double %div10.i, 0.000000e+00, !dbg !1766
  br i1 %cmp.i, label %if.then.i, label %ConvertXYZToLCHab.exit, !dbg !1768

if.then.i:                                        ; preds = %ConvertXYZToLab.exit.i
  %add11.i = fadd double %div10.i, 1.000000e+00, !dbg !1769
  br label %ConvertXYZToLCHab.exit, !dbg !1770

ConvertXYZToLCHab.exit:                           ; preds = %ConvertXYZToLab.exit.i, %if.then.i
  %storemerge.i = phi double [ %add11.i, %if.then.i ], [ %div10.i, %ConvertXYZToLab.exit.i ], !dbg !1697
  store double %storemerge.i, ptr %hue, align 8, !dbg !1697, !tbaa !1267
  ret void, !dbg !1771
}

; Function Attrs: nounwind uwtable
define dso_local void @ConvertRGBToLCHuv(i16 noundef zeroext %red, i16 noundef zeroext %green, i16 noundef zeroext %blue, ptr nocapture noundef writeonly %luma, ptr nocapture noundef writeonly %chroma, ptr nocapture noundef writeonly %hue) local_unnamed_addr #5 !dbg !1772 {
entry:
  call void @llvm.dbg.value(metadata i16 %red, metadata !1774, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i16 %green, metadata !1775, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i16 %blue, metadata !1776, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata ptr %luma, metadata !1777, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata ptr %chroma, metadata !1778, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata ptr %hue, metadata !1779, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i16 %red, metadata !1656, metadata !DIExpression()) #11, !dbg !1784
  call void @llvm.dbg.value(metadata i16 %green, metadata !1659, metadata !DIExpression()) #11, !dbg !1784
  call void @llvm.dbg.value(metadata i16 %blue, metadata !1660, metadata !DIExpression()) #11, !dbg !1784
  call void @llvm.dbg.value(metadata ptr undef, metadata !1661, metadata !DIExpression()) #11, !dbg !1784
  call void @llvm.dbg.value(metadata ptr undef, metadata !1662, metadata !DIExpression()) #11, !dbg !1784
  call void @llvm.dbg.value(metadata ptr undef, metadata !1663, metadata !DIExpression()) #11, !dbg !1784
  %conv.i = uitofp i16 %red to float, !dbg !1786
  %call.i = tail call float @DecodePixelGamma(float noundef %conv.i) #12, !dbg !1787
  %conv1.i = fpext float %call.i to double, !dbg !1787
  %mul.i = fmul double %conv1.i, 0x3EF0001000100010, !dbg !1788
  call void @llvm.dbg.value(metadata double %mul.i, metadata !1666, metadata !DIExpression()) #11, !dbg !1784
  %conv2.i = uitofp i16 %green to float, !dbg !1789
  %call3.i = tail call float @DecodePixelGamma(float noundef %conv2.i) #12, !dbg !1790
  %conv4.i = fpext float %call3.i to double, !dbg !1790
  %mul5.i = fmul double %conv4.i, 0x3EF0001000100010, !dbg !1791
  call void @llvm.dbg.value(metadata double %mul5.i, metadata !1665, metadata !DIExpression()) #11, !dbg !1784
  %conv6.i = uitofp i16 %blue to float, !dbg !1792
  %call7.i = tail call float @DecodePixelGamma(float noundef %conv6.i) #12, !dbg !1793
  %conv8.i = fpext float %call7.i to double, !dbg !1793
  %mul9.i = fmul double %conv8.i, 0x3EF0001000100010, !dbg !1794
  call void @llvm.dbg.value(metadata double %mul9.i, metadata !1664, metadata !DIExpression()) #11, !dbg !1784
  %mul11.i = fmul double %mul5.i, 0x3FD6E2A59D2E2F46, !dbg !1795
  %0 = tail call double @llvm.fmuladd.f64(double %mul.i, double 0x3FDA64B077E84D0C, double %mul11.i) #11, !dbg !1796
  %1 = tail call double @llvm.fmuladd.f64(double %mul9.i, double 0x3FC71A6210D6208C, double %0) #11, !dbg !1797
  %mul14.i = fmul double %mul5.i, 0x3FE6E2ACD52F3FCB, !dbg !1798
  %2 = tail call double @llvm.fmuladd.f64(double %mul.i, double 0x3FCB36068E66EAD3, double %mul14.i) #11, !dbg !1799
  %3 = tail call double @llvm.fmuladd.f64(double %mul9.i, double 0x3FB27BBB5C6D92D1, double %2) #11, !dbg !1800
  %mul17.i = fmul double %mul5.i, 0x3FBE82D57095EC52, !dbg !1801
  %4 = tail call double @llvm.fmuladd.f64(double %mul.i, double 0x3F93C2A635C37FED, double %mul17.i) #11, !dbg !1802
  %5 = tail call double @llvm.fmuladd.f64(double %mul9.i, double 0x3FEE6A78F26C3A9D, double %4) #11, !dbg !1803
  call void @llvm.dbg.value(metadata double %1, metadata !1780, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata double %3, metadata !1781, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata double %5, metadata !1782, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata double %1, metadata !1804, metadata !DIExpression()) #11, !dbg !1814
  call void @llvm.dbg.value(metadata double %3, metadata !1807, metadata !DIExpression()) #11, !dbg !1814
  call void @llvm.dbg.value(metadata double %5, metadata !1808, metadata !DIExpression()) #11, !dbg !1814
  call void @llvm.dbg.value(metadata ptr %luma, metadata !1809, metadata !DIExpression()) #11, !dbg !1814
  call void @llvm.dbg.value(metadata ptr %chroma, metadata !1810, metadata !DIExpression()) #11, !dbg !1814
  call void @llvm.dbg.value(metadata ptr %hue, metadata !1811, metadata !DIExpression()) #11, !dbg !1814
  call void @llvm.dbg.value(metadata double %1, metadata !1816, metadata !DIExpression()) #11, !dbg !1825
  call void @llvm.dbg.value(metadata double %3, metadata !1819, metadata !DIExpression()) #11, !dbg !1825
  call void @llvm.dbg.value(metadata double %5, metadata !1820, metadata !DIExpression()) #11, !dbg !1825
  call void @llvm.dbg.value(metadata ptr %luma, metadata !1821, metadata !DIExpression()) #11, !dbg !1825
  call void @llvm.dbg.value(metadata ptr undef, metadata !1822, metadata !DIExpression()) #11, !dbg !1825
  call void @llvm.dbg.value(metadata ptr undef, metadata !1823, metadata !DIExpression()) #11, !dbg !1825
  %cmp.i.i = fcmp ogt double %3, 0x3F822354D28F7CD6, !dbg !1827
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i, !dbg !1829

if.then.i.i:                                      ; preds = %entry
  %call.i.i = tail call double @pow(double noundef %3, double noundef 0x3FD5555555555555) #11, !dbg !1830
  %6 = tail call double @llvm.fmuladd.f64(double %call.i.i, double 1.160000e+02, double -1.600000e+01) #11, !dbg !1831
  br label %if.end.i.i, !dbg !1832

if.else.i.i:                                      ; preds = %entry
  %mul.i.i = fmul double %3, 0x408C3A5ED097B426, !dbg !1833
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %storemerge.i.i = phi double [ %mul.i.i, %if.else.i.i ], [ %6, %if.then.i.i ], !dbg !1834
  %7 = tail call double @llvm.fmuladd.f64(double %3, double 1.500000e+01, double %1) #11, !dbg !1835
  %8 = tail call double @llvm.fmuladd.f64(double %5, double 3.000000e+00, double %7) #11, !dbg !1836
  call void @llvm.dbg.value(metadata double %8, metadata !1837, metadata !DIExpression()) #11, !dbg !1844
  %cmp.i.i.i = fcmp olt double %8, 0.000000e+00, !dbg !1846
  %cond.i.i.i = select i1 %cmp.i.i.i, double -1.000000e+00, double 1.000000e+00, !dbg !1847
  call void @llvm.dbg.value(metadata double %cond.i.i.i, metadata !1843, metadata !DIExpression()) #11, !dbg !1844
  %mul.i.i.i = fmul double %8, %cond.i.i.i, !dbg !1848
  %cmp1.i.i.i = fcmp ult double %mul.i.i.i, 1.000000e-15, !dbg !1850
  br i1 %cmp1.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !dbg !1851

if.then.i.i.i:                                    ; preds = %if.end.i.i
  %div.i.i.i = fdiv double 1.000000e+00, %8, !dbg !1852
  br label %ConvertXYZToLuv.exit.i, !dbg !1853

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %div2.i.i.i = fdiv double %cond.i.i.i, 1.000000e-15, !dbg !1854
  br label %ConvertXYZToLuv.exit.i, !dbg !1855

ConvertXYZToLuv.exit.i:                           ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi double [ %div.i.i.i, %if.then.i.i.i ], [ %div2.i.i.i, %if.end.i.i.i ], !dbg !1844
  call void @llvm.dbg.value(metadata double %retval.0.i.i.i, metadata !1824, metadata !DIExpression()) #11, !dbg !1825
  %mul6.i.i = fmul double %storemerge.i.i, 1.300000e+01, !dbg !1856
  %mul7.i.i = fmul double %retval.0.i.i.i, 4.000000e+00, !dbg !1857
  %9 = tail call double @llvm.fmuladd.f64(double %mul7.i.i, double %1, double 0xBFC952CD31007F87) #11, !dbg !1858
  %mul9.i.i = fmul double %mul6.i.i, %9, !dbg !1859
  %mul11.i.i = fmul double %retval.0.i.i.i, 9.000000e+00, !dbg !1860
  %10 = tail call double @llvm.fmuladd.f64(double %mul11.i.i, double %3, double 0xBFDDF95190ED8BC1) #11, !dbg !1861
  %mul13.i.i = fmul double %mul6.i.i, %10, !dbg !1862
  %div14.i.i = fdiv double %storemerge.i.i, 1.000000e+02, !dbg !1863
  store double %div14.i.i, ptr %luma, align 8, !dbg !1863, !tbaa !1267
  %add.i.i = fadd double %mul9.i.i, 1.340000e+02, !dbg !1864
  %div15.i.i = fdiv double %add.i.i, 3.540000e+02, !dbg !1865
  %add16.i.i = fadd double %mul13.i.i, 1.400000e+02, !dbg !1866
  %div17.i.i = fdiv double %add16.i.i, 2.620000e+02, !dbg !1867
  call void @llvm.dbg.value(metadata double %div15.i.i, metadata !1812, metadata !DIExpression()) #11, !dbg !1814
  %11 = tail call double @llvm.fmuladd.f64(double %div15.i.i, double 3.540000e+02, double -1.340000e+02) #11, !dbg !1868
  call void @llvm.dbg.value(metadata double %div17.i.i, metadata !1813, metadata !DIExpression()) #11, !dbg !1814
  %12 = tail call double @llvm.fmuladd.f64(double %div17.i.i, double 2.620000e+02, double -1.400000e+02) #11, !dbg !1869
  %call.i1 = tail call double @hypot(double noundef %11, double noundef %12) #11, !dbg !1870
  %div.i = fdiv double %call.i1, 2.550000e+02, !dbg !1871
  %add.i = fadd double %div.i, 5.000000e-01, !dbg !1872
  store double %add.i, ptr %chroma, align 8, !dbg !1873, !tbaa !1267
  call void @llvm.dbg.value(metadata double %div17.i.i, metadata !1813, metadata !DIExpression()) #11, !dbg !1814
  call void @llvm.dbg.value(metadata double %div15.i.i, metadata !1812, metadata !DIExpression()) #11, !dbg !1814
  %call1.i = tail call double @atan2(double noundef %12, double noundef %11) #11, !dbg !1874
  %mul.i2 = fmul double %call1.i, 1.800000e+02, !dbg !1875
  %div2.i = fdiv double %mul.i2, 0x400921FB54442D18, !dbg !1876
  %div3.i = fdiv double %div2.i, 3.600000e+02, !dbg !1877
  %cmp.i = fcmp olt double %div3.i, 0.000000e+00, !dbg !1878
  br i1 %cmp.i, label %if.then.i, label %ConvertXYZToLCHuv.exit, !dbg !1880

if.then.i:                                        ; preds = %ConvertXYZToLuv.exit.i
  %add4.i = fadd double %div3.i, 1.000000e+00, !dbg !1881
  br label %ConvertXYZToLCHuv.exit, !dbg !1882

ConvertXYZToLCHuv.exit:                           ; preds = %ConvertXYZToLuv.exit.i, %if.then.i
  %storemerge.i = phi double [ %add4.i, %if.then.i ], [ %div3.i, %ConvertXYZToLuv.exit.i ], !dbg !1814
  store double %storemerge.i, ptr %hue, align 8, !dbg !1814, !tbaa !1267
  ret void, !dbg !1883
}

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local double @ExpandAffine(ptr nocapture noundef readonly %affine) local_unnamed_addr #7 !dbg !1884 {
entry:
  call void @llvm.dbg.value(metadata ptr %affine, metadata !1900, metadata !DIExpression()), !dbg !1901
  %0 = load double, ptr %affine, align 8, !dbg !1902, !tbaa !1903
  %sy = getelementptr inbounds %struct._AffineMatrix, ptr %affine, i64 0, i32 3, !dbg !1905
  %1 = load double, ptr %sy, align 8, !dbg !1905, !tbaa !1906
  %rx = getelementptr inbounds %struct._AffineMatrix, ptr %affine, i64 0, i32 1, !dbg !1907
  %2 = load double, ptr %rx, align 8, !dbg !1907, !tbaa !1908
  %ry = getelementptr inbounds %struct._AffineMatrix, ptr %affine, i64 0, i32 2, !dbg !1909
  %3 = load double, ptr %ry, align 8, !dbg !1909, !tbaa !1910
  %4 = fneg double %2, !dbg !1911
  %neg = fmul double %3, %4, !dbg !1911
  %5 = tail call double @llvm.fmuladd.f64(double %0, double %1, double %neg), !dbg !1911
  %6 = tail call double @llvm.fabs.f64(double %5), !dbg !1912
  %call = tail call double @sqrt(double noundef %6) #11, !dbg !1913
  ret double %call, !dbg !1914
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local double @GenerateDifferentialNoise(ptr noundef %random_info, i16 noundef zeroext %pixel, i32 noundef %noise_type, float noundef %attenuate) local_unnamed_addr #5 !dbg !1915 {
entry:
  call void @llvm.dbg.value(metadata ptr %random_info, metadata !1925, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata i16 %pixel, metadata !1926, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata i32 %noise_type, metadata !1927, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata float %attenuate, metadata !1928, metadata !DIExpression()), !dbg !1940
  %call = tail call double @GetPseudoRandomValue(ptr noundef %random_info) #11, !dbg !1941
  call void @llvm.dbg.value(metadata double %call, metadata !1929, metadata !DIExpression()), !dbg !1940
  switch i32 %noise_type, label %sw.default [
    i32 7, label %sw.bb124
    i32 2, label %sw.bb5
    i32 4, label %sw.bb29
    i32 5, label %sw.bb46
    i32 3, label %sw.bb85
    i32 6, label %sw.bb107
  ], !dbg !1942

sw.default:                                       ; preds = %entry
  %conv1 = uitofp i16 %pixel to double, !dbg !1943
  %conv2 = fpext float %attenuate to double, !dbg !1945
  %mul = fmul double %conv2, 1.562500e-02, !dbg !1945
  %mul3 = fmul double %mul, 6.553500e+04, !dbg !1946
  %sub = fadd double %call, -5.000000e-01, !dbg !1947
  %0 = tail call double @llvm.fmuladd.f64(double %mul3, double %sub, double %conv1), !dbg !1948
  call void @llvm.dbg.value(metadata double %0, metadata !1931, metadata !DIExpression()), !dbg !1940
  br label %sw.epilog, !dbg !1949

sw.bb5:                                           ; preds = %entry
  %cmp = fcmp oeq double %call, 0.000000e+00, !dbg !1950
  br i1 %cmp, label %if.then, label %if.end, !dbg !1952

if.then:                                          ; preds = %sw.bb5
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1929, metadata !DIExpression()), !dbg !1940
  br label %if.end, !dbg !1953

if.end:                                           ; preds = %if.then, %sw.bb5
  %alpha.0 = phi double [ 1.000000e+00, %if.then ], [ %call, %sw.bb5 ], !dbg !1940
  call void @llvm.dbg.value(metadata double %alpha.0, metadata !1929, metadata !DIExpression()), !dbg !1940
  %call7 = tail call double @GetPseudoRandomValue(ptr noundef %random_info) #11, !dbg !1954
  call void @llvm.dbg.value(metadata double %call7, metadata !1930, metadata !DIExpression()), !dbg !1940
  %call8 = tail call double @log(double noundef %alpha.0) #11, !dbg !1955
  %mul9 = fmul double %call8, -2.000000e+00, !dbg !1956
  %call10 = tail call double @sqrt(double noundef %mul9) #11, !dbg !1957
  call void @llvm.dbg.value(metadata double %call10, metadata !1933, metadata !DIExpression()), !dbg !1958
  %mul11 = fmul double %call7, 0x401921FB54442D18, !dbg !1959
  %call12 = tail call double @cos(double noundef %mul11) #11, !dbg !1960
  %mul13 = fmul double %call10, %call12, !dbg !1961
  call void @llvm.dbg.value(metadata double %mul13, metadata !1932, metadata !DIExpression()), !dbg !1940
  %call15 = tail call double @sin(double noundef %mul11) #11, !dbg !1962
  %mul16 = fmul double %call10, %call15, !dbg !1963
  call void @llvm.dbg.value(metadata double %mul16, metadata !1936, metadata !DIExpression()), !dbg !1958
  %conv18 = uitofp i16 %pixel to double, !dbg !1964
  %call20 = tail call double @sqrt(double noundef %conv18) #11, !dbg !1965
  %conv21 = fpext float %attenuate to double, !dbg !1966
  %mul22 = fmul double %conv21, 1.562500e-02, !dbg !1966
  %mul23 = fmul double %mul22, %call20, !dbg !1967
  %1 = tail call double @llvm.fmuladd.f64(double %mul23, double %mul13, double %conv18), !dbg !1968
  %mul26 = fmul double %conv21, 7.812500e-02, !dbg !1969
  %mul27 = fmul double %mul26, 6.553500e+04, !dbg !1970
  %2 = tail call double @llvm.fmuladd.f64(double %mul27, double %mul16, double %1), !dbg !1971
  call void @llvm.dbg.value(metadata double %2, metadata !1931, metadata !DIExpression()), !dbg !1940
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  %conv30 = fpext float %attenuate to double, !dbg !1972
  %mul31 = fmul double %conv30, 1.000000e-01, !dbg !1972
  %div = fmul double %mul31, 5.000000e-01, !dbg !1975
  %cmp32 = fcmp olt double %call, %div, !dbg !1976
  br i1 %cmp32, label %sw.epilog, label %if.else, !dbg !1977

if.else:                                          ; preds = %sw.bb29
  %sub38 = fsub double 1.000000e+00, %div, !dbg !1978
  %cmp39 = fcmp ult double %call, %sub38, !dbg !1980
  br i1 %cmp39, label %if.else42, label %sw.epilog, !dbg !1981

if.else42:                                        ; preds = %if.else
  %conv43 = uitofp i16 %pixel to double, !dbg !1982
  call void @llvm.dbg.value(metadata double %conv43, metadata !1931, metadata !DIExpression()), !dbg !1940
  br label %sw.epilog

sw.bb46:                                          ; preds = %entry
  %cmp47 = fcmp ugt double %call, 5.000000e-01, !dbg !1983
  br i1 %cmp47, label %if.end66, label %if.then49, !dbg !1986

if.then49:                                        ; preds = %sw.bb46
  %cmp50 = fcmp ugt double %call, 1.000000e-15, !dbg !1987
  br i1 %cmp50, label %if.else56, label %if.then52, !dbg !1990

if.then52:                                        ; preds = %if.then49
  %conv53 = zext i16 %pixel to i32, !dbg !1991
  %sub54 = add nsw i32 %conv53, -65535, !dbg !1992
  %conv55 = sitofp i32 %sub54 to double, !dbg !1993
  call void @llvm.dbg.value(metadata double %conv55, metadata !1931, metadata !DIExpression()), !dbg !1940
  br label %sw.epilog, !dbg !1994

if.else56:                                        ; preds = %if.then49
  %conv58 = uitofp i16 %pixel to double, !dbg !1995
  %conv59 = fpext float %attenuate to double, !dbg !1996
  %mul60 = fmul double %conv59, 3.906250e-02, !dbg !1996
  %mul61 = fmul double %mul60, 6.553500e+04, !dbg !1997
  %mul62 = fmul double %call, 2.000000e+00, !dbg !1998
  %call63 = tail call double @log(double noundef %mul62) #11, !dbg !1999
  %3 = tail call double @llvm.fmuladd.f64(double %mul61, double %call63, double %conv58), !dbg !2000
  %add = fadd double %3, 5.000000e-01, !dbg !2001
  call void @llvm.dbg.value(metadata double %add, metadata !1931, metadata !DIExpression()), !dbg !1940
  br label %sw.epilog

if.end66:                                         ; preds = %sw.bb46
  %sub67 = fsub double 1.000000e+00, %call, !dbg !2002
  call void @llvm.dbg.value(metadata double %sub67, metadata !1930, metadata !DIExpression()), !dbg !1940
  %cmp68 = fcmp ugt double %sub67, 5.000000e-16, !dbg !2003
  br i1 %cmp68, label %if.else74, label %if.then70, !dbg !2005

if.then70:                                        ; preds = %if.end66
  %conv71 = zext i16 %pixel to i32, !dbg !2006
  %add72 = add nuw nsw i32 %conv71, 65535, !dbg !2007
  %conv73 = sitofp i32 %add72 to double, !dbg !2008
  call void @llvm.dbg.value(metadata double %conv73, metadata !1931, metadata !DIExpression()), !dbg !1940
  br label %sw.epilog, !dbg !2009

if.else74:                                        ; preds = %if.end66
  %conv76 = uitofp i16 %pixel to double, !dbg !2010
  %conv77 = fpext float %attenuate to double, !dbg !2011
  %mul78 = fmul double %conv77, 3.906250e-02, !dbg !2011
  %mul80 = fmul double %sub67, 2.000000e+00, !dbg !2012
  %call81 = tail call double @log(double noundef %mul80) #11, !dbg !2013
  %neg = fmul double %mul78, -6.553500e+04, !dbg !2014
  %4 = tail call double @llvm.fmuladd.f64(double %neg, double %call81, double %conv76), !dbg !2014
  %add83 = fadd double %4, 5.000000e-01, !dbg !2015
  call void @llvm.dbg.value(metadata double %add83, metadata !1931, metadata !DIExpression()), !dbg !1940
  br label %sw.epilog

sw.bb85:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1932, metadata !DIExpression()), !dbg !1940
  %cmp86 = fcmp ogt double %call, 1.000000e-15, !dbg !2016
  br i1 %cmp86, label %if.then88, label %if.end92, !dbg !2019

if.then88:                                        ; preds = %sw.bb85
  %call89 = tail call double @log(double noundef %call) #11, !dbg !2020
  %mul90 = fmul double %call89, -2.000000e+00, !dbg !2021
  %call91 = tail call double @sqrt(double noundef %mul90) #11, !dbg !2022
  call void @llvm.dbg.value(metadata double %call91, metadata !1932, metadata !DIExpression()), !dbg !1940
  br label %if.end92, !dbg !2023

if.end92:                                         ; preds = %if.then88, %sw.bb85
  %sigma.0 = phi double [ %call91, %if.then88 ], [ 1.000000e+00, %sw.bb85 ], !dbg !2024
  call void @llvm.dbg.value(metadata double %sigma.0, metadata !1932, metadata !DIExpression()), !dbg !1940
  %call93 = tail call double @GetPseudoRandomValue(ptr noundef %random_info) #11, !dbg !2025
  call void @llvm.dbg.value(metadata double %call93, metadata !1930, metadata !DIExpression()), !dbg !1940
  %conv95 = uitofp i16 %pixel to double, !dbg !2026
  %conv98 = fpext float %attenuate to double, !dbg !2027
  %mul99 = fmul double %conv98, 5.000000e-01, !dbg !2027
  %mul100 = fmul double %mul99, %conv95, !dbg !2028
  %mul101 = fmul double %mul100, %sigma.0, !dbg !2029
  %mul102 = fmul double %call93, 0x401921FB54442D18, !dbg !2030
  %call103 = tail call double @cos(double noundef %mul102) #11, !dbg !2031
  %mul104 = fmul double %mul101, %call103, !dbg !2032
  %div105 = fmul double %mul104, 5.000000e-01, !dbg !2033
  %add106 = fadd double %div105, %conv95, !dbg !2034
  call void @llvm.dbg.value(metadata double %add106, metadata !1931, metadata !DIExpression()), !dbg !1940
  br label %sw.epilog, !dbg !2035

sw.bb107:                                         ; preds = %entry
  %conv108 = fpext float %attenuate to double, !dbg !2036
  %mul109 = fmul double %conv108, 1.250000e+01, !dbg !2036
  %mul110 = fmul double %mul109, 0xBEF0001000100010, !dbg !2037
  %conv112 = uitofp i16 %pixel to double, !dbg !2038
  %mul113 = fmul double %mul110, %conv112, !dbg !2039
  %call114 = tail call double @exp(double noundef %mul113) #11, !dbg !2040
  call void @llvm.dbg.value(metadata double %call114, metadata !1937, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i64 0, metadata !1939, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata double %call, metadata !1929, metadata !DIExpression()), !dbg !1940
  %cmp115172 = fcmp ogt double %call, %call114, !dbg !2042
  br i1 %cmp115172, label %for.body, label %for.end, !dbg !2045

for.body:                                         ; preds = %sw.bb107, %for.body
  %i.0174 = phi i64 [ %inc, %for.body ], [ 0, %sw.bb107 ]
  %alpha.1173 = phi double [ %mul118, %for.body ], [ %call, %sw.bb107 ]
  call void @llvm.dbg.value(metadata i64 %i.0174, metadata !1939, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata double %alpha.1173, metadata !1929, metadata !DIExpression()), !dbg !1940
  %call117 = tail call double @GetPseudoRandomValue(ptr noundef %random_info) #11, !dbg !2046
  call void @llvm.dbg.value(metadata double %call117, metadata !1930, metadata !DIExpression()), !dbg !1940
  %mul118 = fmul double %alpha.1173, %call117, !dbg !2048
  call void @llvm.dbg.value(metadata double %mul118, metadata !1929, metadata !DIExpression()), !dbg !1940
  %inc = add nuw nsw i64 %i.0174, 1, !dbg !2049
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1939, metadata !DIExpression()), !dbg !2041
  %cmp115 = fcmp ogt double %mul118, %call114, !dbg !2042
  br i1 %cmp115, label %for.body, label %for.end.loopexit, !dbg !2045, !llvm.loop !2050

for.end.loopexit:                                 ; preds = %for.body
  %phi.bo = mul i64 %inc, 65535, !dbg !2054
  %phi.cast = sitofp i64 %phi.bo to double, !dbg !2054
  br label %for.end, !dbg !2054

for.end:                                          ; preds = %for.end.loopexit, %sw.bb107
  %i.0.lcssa = phi double [ 0.000000e+00, %sw.bb107 ], [ %phi.cast, %for.end.loopexit ]
  %div123 = fdiv double %i.0.lcssa, %mul109, !dbg !2055
  call void @llvm.dbg.value(metadata double %div123, metadata !1931, metadata !DIExpression()), !dbg !1940
  br label %sw.epilog

sw.bb124:                                         ; preds = %entry
  %mul125 = fmul float %attenuate, 6.553500e+04, !dbg !2056
  %conv126 = fpext float %mul125 to double, !dbg !2058
  %mul127 = fmul double %call, %conv126, !dbg !2059
  call void @llvm.dbg.value(metadata double %mul127, metadata !1931, metadata !DIExpression()), !dbg !1940
  br label %sw.epilog, !dbg !2060

sw.epilog:                                        ; preds = %if.else, %sw.bb29, %if.then70, %if.else74, %if.then52, %if.else56, %if.else42, %sw.bb124, %for.end, %if.end92, %if.end, %sw.default
  %noise.0 = phi double [ %0, %sw.default ], [ %div123, %for.end ], [ %add106, %if.end92 ], [ %conv55, %if.then52 ], [ %add, %if.else56 ], [ %conv73, %if.then70 ], [ %add83, %if.else74 ], [ %conv43, %if.else42 ], [ %2, %if.end ], [ %mul127, %sw.bb124 ], [ 0.000000e+00, %sw.bb29 ], [ 6.553500e+04, %if.else ], !dbg !2061
  call void @llvm.dbg.value(metadata double %noise.0, metadata !1931, metadata !DIExpression()), !dbg !1940
  ret double %noise.0, !dbg !2062
}

declare !dbg !2063 double @GetPseudoRandomValue(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @log(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sin(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @exp(double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @GetOptimalKernelWidth1D(double noundef %radius, double noundef %sigma) local_unnamed_addr #5 !dbg !2067 {
entry:
  call void @llvm.dbg.value(metadata double %radius, metadata !2071, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata double %sigma, metadata !2072, metadata !DIExpression()), !dbg !2081
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1656, ptr noundef nonnull @.str.2) #11, !dbg !2082
  %cmp = fcmp ogt double %radius, 1.000000e-15, !dbg !2083
  br i1 %cmp, label %if.then, label %if.end, !dbg !2085

if.then:                                          ; preds = %entry
  %0 = tail call double @llvm.ceil.f64(double %radius), !dbg !2086
  %1 = tail call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double 1.000000e+00), !dbg !2087
  %conv = fptoui double %1 to i64, !dbg !2088
  br label %cleanup, !dbg !2089

if.end:                                           ; preds = %entry
  %2 = tail call double @llvm.fabs.f64(double %sigma), !dbg !2090
  call void @llvm.dbg.value(metadata double %2, metadata !2075, metadata !DIExpression()), !dbg !2081
  %cmp1 = fcmp ugt double %2, 1.000000e-15, !dbg !2091
  br i1 %cmp1, label %if.end4, label %cleanup, !dbg !2093

if.end4:                                          ; preds = %if.end
  %mul = fmul double %2, 2.000000e+00, !dbg !2094
  %mul5 = fmul double %2, %mul, !dbg !2095
  call void @llvm.dbg.value(metadata double %mul5, metadata !1837, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1843, metadata !DIExpression()), !dbg !2096
  %cmp1.i = fcmp ult double %mul5, 1.000000e-15, !dbg !2098
  br i1 %cmp1.i, label %PerceptibleReciprocal.exit, label %if.then.i, !dbg !2099

if.then.i:                                        ; preds = %if.end4
  %div.i = fdiv double 1.000000e+00, %mul5, !dbg !2100
  br label %PerceptibleReciprocal.exit, !dbg !2101

PerceptibleReciprocal.exit:                       ; preds = %if.end4, %if.then.i
  %retval.0.i = phi double [ %div.i, %if.then.i ], [ 0x430C6BF52633FFFF, %if.end4 ], !dbg !2096
  call void @llvm.dbg.value(metadata double %retval.0.i, metadata !2073, metadata !DIExpression()), !dbg !2081
  %mul7 = fmul double %2, 0x40040D931FF62705, !dbg !2102
  call void @llvm.dbg.value(metadata double %mul7, metadata !1837, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1843, metadata !DIExpression()), !dbg !2103
  %cmp1.i56 = fcmp ult double %mul7, 1.000000e-15, !dbg !2105
  br i1 %cmp1.i56, label %PerceptibleReciprocal.exit61, label %if.then.i58, !dbg !2106

if.then.i58:                                      ; preds = %PerceptibleReciprocal.exit
  %div.i57 = fdiv double 1.000000e+00, %mul7, !dbg !2107
  br label %PerceptibleReciprocal.exit61, !dbg !2108

PerceptibleReciprocal.exit61:                     ; preds = %PerceptibleReciprocal.exit, %if.then.i58
  %retval.0.i60 = phi double [ %div.i57, %if.then.i58 ], [ 0x430C6BF52633FFFF, %PerceptibleReciprocal.exit ], !dbg !2103
  call void @llvm.dbg.value(metadata double %retval.0.i60, metadata !2074, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i64 5, metadata !2079, metadata !DIExpression()), !dbg !2081
  br label %for.cond, !dbg !2109

for.cond:                                         ; preds = %for.end, %PerceptibleReciprocal.exit61
  %width.0 = phi i64 [ 5, %PerceptibleReciprocal.exit61 ], [ %add, %for.end ], !dbg !2111
  call void @llvm.dbg.value(metadata i64 %width.0, metadata !2079, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2076, metadata !DIExpression()), !dbg !2081
  %sub = add nsw i64 %width.0, -1, !dbg !2112
  %div = sdiv i64 %sub, 2, !dbg !2115
  call void @llvm.dbg.value(metadata i64 %div, metadata !2080, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata !DIArgList(i64 0, i64 %div), metadata !2078, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2081
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2076, metadata !DIExpression()), !dbg !2081
  %cmp11.not62 = icmp ugt i64 %width.0, -9223372036854775808, !dbg !2116
  br i1 %cmp11.not62, label %for.end, label %for.body.preheader, !dbg !2119

for.body.preheader:                               ; preds = %for.cond
  %sub9 = sub nsw i64 0, %div, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %sub9, metadata !2078, metadata !DIExpression()), !dbg !2081
  %3 = call i64 @llvm.abs.i64(i64 %div, i1 true), !dbg !2119
  br label %for.body, !dbg !2119

for.body:                                         ; preds = %for.body.preheader, %for.body
  %i.064 = phi i64 [ %inc, %for.body ], [ %sub9, %for.body.preheader ]
  %normalize.063 = phi double [ %4, %for.body ], [ 0.000000e+00, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.064, metadata !2078, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata double %normalize.063, metadata !2076, metadata !DIExpression()), !dbg !2081
  %mul13 = mul nsw i64 %i.064, %i.064, !dbg !2121
  %conv14 = sitofp i64 %mul13 to double, !dbg !2122
  %fneg = fneg double %conv14, !dbg !2123
  %mul15 = fmul double %retval.0.i, %fneg, !dbg !2124
  %call16 = tail call double @exp(double noundef %mul15) #11, !dbg !2125
  %4 = tail call double @llvm.fmuladd.f64(double %call16, double %retval.0.i60, double %normalize.063), !dbg !2126
  call void @llvm.dbg.value(metadata double %4, metadata !2076, metadata !DIExpression()), !dbg !2081
  %inc = add i64 %i.064, 1, !dbg !2127
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2078, metadata !DIExpression()), !dbg !2081
  %exitcond.not = icmp eq i64 %i.064, %3, !dbg !2116
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2119, !llvm.loop !2128

for.end:                                          ; preds = %for.body, %for.cond
  %normalize.0.lcssa = phi double [ 0.000000e+00, %for.cond ], [ %4, %for.body ], !dbg !2130
  %mul18 = mul nsw i64 %div, %div, !dbg !2131
  %conv19 = sitofp i64 %mul18 to double, !dbg !2132
  %fneg20 = fneg double %conv19, !dbg !2133
  %mul21 = fmul double %retval.0.i, %fneg20, !dbg !2134
  %call22 = tail call double @exp(double noundef %mul21) #11, !dbg !2135
  %mul23 = fmul double %retval.0.i60, %call22, !dbg !2136
  %div24 = fdiv double %mul23, %normalize.0.lcssa, !dbg !2137
  call void @llvm.dbg.value(metadata double %div24, metadata !2077, metadata !DIExpression()), !dbg !2081
  %cmp25 = fcmp olt double %div24, 0x3EF0001000100010, !dbg !2138
  %cmp27 = fcmp olt double %div24, 1.000000e-15
  %or.cond = or i1 %cmp25, %cmp27, !dbg !2140
  %add = add i64 %width.0, 2, !dbg !2141
  call void @llvm.dbg.value(metadata i64 %add, metadata !2079, metadata !DIExpression()), !dbg !2081
  br i1 %or.cond, label %for.end31, label %for.cond, !dbg !2140, !llvm.loop !2142

for.end31:                                        ; preds = %for.end
  %sub32 = add i64 %width.0, -2, !dbg !2145
  br label %cleanup, !dbg !2146

cleanup:                                          ; preds = %if.end, %for.end31, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %sub32, %for.end31 ], [ 3, %if.end ], !dbg !2081
  ret i64 %retval.0, !dbg !2147
}

declare !dbg !2148 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #2

; Function Attrs: nounwind uwtable
define dso_local i64 @GetOptimalKernelWidth2D(double noundef %radius, double noundef %sigma) local_unnamed_addr #5 !dbg !2158 {
entry:
  call void @llvm.dbg.value(metadata double %radius, metadata !2160, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata double %sigma, metadata !2161, metadata !DIExpression()), !dbg !2171
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1696, ptr noundef nonnull @.str.2) #11, !dbg !2172
  %cmp = fcmp ogt double %radius, 1.000000e-15, !dbg !2173
  br i1 %cmp, label %if.then, label %if.end, !dbg !2175

if.then:                                          ; preds = %entry
  %0 = tail call double @llvm.ceil.f64(double %radius), !dbg !2176
  %1 = tail call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double 1.000000e+00), !dbg !2177
  %conv = fptoui double %1 to i64, !dbg !2178
  br label %cleanup, !dbg !2179

if.end:                                           ; preds = %entry
  %2 = tail call double @llvm.fabs.f64(double %sigma), !dbg !2180
  call void @llvm.dbg.value(metadata double %2, metadata !2164, metadata !DIExpression()), !dbg !2171
  %cmp1 = fcmp ugt double %2, 1.000000e-15, !dbg !2181
  br i1 %cmp1, label %if.end4, label %cleanup, !dbg !2183

if.end4:                                          ; preds = %if.end
  %mul = fmul double %2, 2.000000e+00, !dbg !2184
  %mul5 = fmul double %2, %mul, !dbg !2185
  call void @llvm.dbg.value(metadata double %mul5, metadata !1837, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1843, metadata !DIExpression()), !dbg !2186
  %cmp1.i = fcmp ult double %mul5, 1.000000e-15, !dbg !2188
  br i1 %cmp1.i, label %PerceptibleReciprocal.exit, label %if.then.i, !dbg !2189

if.then.i:                                        ; preds = %if.end4
  %div.i = fdiv double 1.000000e+00, %mul5, !dbg !2190
  br label %PerceptibleReciprocal.exit, !dbg !2191

PerceptibleReciprocal.exit:                       ; preds = %if.end4, %if.then.i
  %retval.0.i = phi double [ %div.i, %if.then.i ], [ 0x430C6BF52633FFFF, %if.end4 ], !dbg !2186
  call void @llvm.dbg.value(metadata double %retval.0.i, metadata !2162, metadata !DIExpression()), !dbg !2171
  %mul7 = fmul double %2, 0x401921FB54442D18, !dbg !2192
  %mul8 = fmul double %2, %mul7, !dbg !2193
  call void @llvm.dbg.value(metadata double %mul8, metadata !1837, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1843, metadata !DIExpression()), !dbg !2194
  %cmp1.i74 = fcmp ult double %mul8, 1.000000e-15, !dbg !2196
  br i1 %cmp1.i74, label %PerceptibleReciprocal.exit79, label %if.then.i76, !dbg !2197

if.then.i76:                                      ; preds = %PerceptibleReciprocal.exit
  %div.i75 = fdiv double 1.000000e+00, %mul8, !dbg !2198
  br label %PerceptibleReciprocal.exit79, !dbg !2199

PerceptibleReciprocal.exit79:                     ; preds = %PerceptibleReciprocal.exit, %if.then.i76
  %retval.0.i78 = phi double [ %div.i75, %if.then.i76 ], [ 0x430C6BF52633FFFF, %PerceptibleReciprocal.exit ], !dbg !2194
  call void @llvm.dbg.value(metadata double %retval.0.i78, metadata !2163, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i64 5, metadata !2167, metadata !DIExpression()), !dbg !2171
  br label %for.cond, !dbg !2200

for.cond:                                         ; preds = %for.end27, %PerceptibleReciprocal.exit79
  %width.0 = phi i64 [ 5, %PerceptibleReciprocal.exit79 ], [ %add41, %for.end27 ], !dbg !2202
  call void @llvm.dbg.value(metadata i64 %width.0, metadata !2167, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2165, metadata !DIExpression()), !dbg !2171
  %sub = add nsw i64 %width.0, -1, !dbg !2203
  %div = sdiv i64 %sub, 2, !dbg !2206
  call void @llvm.dbg.value(metadata i64 %div, metadata !2168, metadata !DIExpression()), !dbg !2171
  %sub10 = sub nsw i64 0, %div, !dbg !2207
  call void @llvm.dbg.value(metadata i64 %sub10, metadata !2170, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2165, metadata !DIExpression()), !dbg !2171
  %cmp12.not83 = icmp ugt i64 %width.0, -9223372036854775808, !dbg !2209
  br i1 %cmp12.not83, label %for.end27, label %for.cond15.preheader.preheader, !dbg !2211

for.cond15.preheader.preheader:                   ; preds = %for.cond
  %3 = call i64 @llvm.abs.i64(i64 %div, i1 true), !dbg !2211
  br label %for.cond15.preheader, !dbg !2211

for.cond15.preheader:                             ; preds = %for.cond15.preheader.preheader, %for.cond15.for.inc25_crit_edge
  %v.085 = phi i64 [ %inc26, %for.cond15.for.inc25_crit_edge ], [ %sub10, %for.cond15.preheader.preheader ]
  %normalize.084 = phi double [ %4, %for.cond15.for.inc25_crit_edge ], [ 0.000000e+00, %for.cond15.preheader.preheader ]
  call void @llvm.dbg.value(metadata i64 %v.085, metadata !2170, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata double %normalize.084, metadata !2165, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i64 %sub10, metadata !2169, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata double %normalize.084, metadata !2165, metadata !DIExpression()), !dbg !2171
  %mul20 = mul nsw i64 %v.085, %v.085
  br label %for.body18, !dbg !2212

for.body18:                                       ; preds = %for.cond15.preheader, %for.body18
  %u.082 = phi i64 [ %sub10, %for.cond15.preheader ], [ %inc, %for.body18 ]
  %normalize.181 = phi double [ %normalize.084, %for.cond15.preheader ], [ %4, %for.body18 ]
  call void @llvm.dbg.value(metadata i64 %u.082, metadata !2169, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata double %normalize.181, metadata !2165, metadata !DIExpression()), !dbg !2171
  %mul19 = mul nsw i64 %u.082, %u.082, !dbg !2214
  %add = add nuw nsw i64 %mul19, %mul20, !dbg !2216
  %conv21 = sitofp i64 %add to double, !dbg !2217
  %fneg = fneg double %conv21, !dbg !2218
  %mul22 = fmul double %retval.0.i, %fneg, !dbg !2219
  %call23 = tail call double @exp(double noundef %mul22) #11, !dbg !2220
  %4 = tail call double @llvm.fmuladd.f64(double %call23, double %retval.0.i78, double %normalize.181), !dbg !2221
  call void @llvm.dbg.value(metadata double %4, metadata !2165, metadata !DIExpression()), !dbg !2171
  %inc = add i64 %u.082, 1, !dbg !2222
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2169, metadata !DIExpression()), !dbg !2171
  %exitcond.not = icmp eq i64 %u.082, %3, !dbg !2223
  br i1 %exitcond.not, label %for.cond15.for.inc25_crit_edge, label %for.body18, !dbg !2212, !llvm.loop !2224

for.cond15.for.inc25_crit_edge:                   ; preds = %for.body18
  %inc26 = add i64 %v.085, 1, !dbg !2226
  call void @llvm.dbg.value(metadata i64 %inc26, metadata !2170, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata double undef, metadata !2165, metadata !DIExpression()), !dbg !2171
  %exitcond88.not = icmp eq i64 %v.085, %3, !dbg !2209
  br i1 %exitcond88.not, label %for.end27, label %for.cond15.preheader, !dbg !2211, !llvm.loop !2227

for.end27:                                        ; preds = %for.cond15.for.inc25_crit_edge, %for.cond
  %normalize.0.lcssa = phi double [ 0.000000e+00, %for.cond ], [ %4, %for.cond15.for.inc25_crit_edge ], !dbg !2229
  %mul28 = mul nsw i64 %div, %div, !dbg !2230
  %conv29 = sitofp i64 %mul28 to double, !dbg !2231
  %fneg30 = fneg double %conv29, !dbg !2232
  %mul31 = fmul double %retval.0.i, %fneg30, !dbg !2233
  %call32 = tail call double @exp(double noundef %mul31) #11, !dbg !2234
  %mul33 = fmul double %retval.0.i78, %call32, !dbg !2235
  %div34 = fdiv double %mul33, %normalize.0.lcssa, !dbg !2236
  call void @llvm.dbg.value(metadata double %div34, metadata !2166, metadata !DIExpression()), !dbg !2171
  %cmp35 = fcmp olt double %div34, 0x3EF0001000100010, !dbg !2237
  %cmp37 = fcmp olt double %div34, 1.000000e-15
  %or.cond = or i1 %cmp35, %cmp37, !dbg !2239
  %add41 = add i64 %width.0, 2, !dbg !2240
  call void @llvm.dbg.value(metadata i64 %add41, metadata !2167, metadata !DIExpression()), !dbg !2171
  br i1 %or.cond, label %for.end42, label %for.cond, !dbg !2239, !llvm.loop !2241

for.end42:                                        ; preds = %for.end27
  %sub43 = add i64 %width.0, -2, !dbg !2244
  br label %cleanup, !dbg !2245

cleanup:                                          ; preds = %if.end, %for.end42, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %sub43, %for.end42 ], [ 3, %if.end ], !dbg !2171
  ret i64 %retval.0, !dbg !2246
}

; Function Attrs: nounwind uwtable
define dso_local i64 @GetOptimalKernelWidth(double noundef %radius, double noundef %sigma) local_unnamed_addr #5 !dbg !2247 {
entry:
  call void @llvm.dbg.value(metadata double %radius, metadata !2249, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata double %sigma, metadata !2250, metadata !DIExpression()), !dbg !2251
  %call = tail call i64 @GetOptimalKernelWidth1D(double noundef %radius, double noundef %sigma), !dbg !2252
  ret i64 %call, !dbg !2253
}

; Function Attrs: hot
declare !dbg !2254 float @EncodePixelGamma(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @pow(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: hot
declare !dbg !2258 float @DecodePixelGamma(float noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare double @hypot(double noundef, double noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #2

attributes #0 = { mustprogress nofree nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { hot "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { hot nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/gem.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "71fc1b50afc9e1e856e7fde42f2382a0")
!2 = !{!3, !15, !40}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 27, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/538.imagick_r/src/magick/fx.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd08d328d828970731689944b1df77bd")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14}
!7 = !DIEnumerator(name: "UndefinedNoise", value: 0)
!8 = !DIEnumerator(name: "UniformNoise", value: 1)
!9 = !DIEnumerator(name: "GaussianNoise", value: 2)
!10 = !DIEnumerator(name: "MultiplicativeGaussianNoise", value: 3)
!11 = !DIEnumerator(name: "ImpulseNoise", value: 4)
!12 = !DIEnumerator(name: "LaplacianNoise", value: 5)
!13 = !DIEnumerator(name: "PoissonNoise", value: 6)
!14 = !DIEnumerator(name: "RandomNoise", value: 7)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 34, baseType: !5, size: 32, elements: !17)
!16 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39}
!18 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!19 = !DIEnumerator(name: "NoEvents", value: 0)
!20 = !DIEnumerator(name: "TraceEvent", value: 1)
!21 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!22 = !DIEnumerator(name: "BlobEvent", value: 4)
!23 = !DIEnumerator(name: "CacheEvent", value: 8)
!24 = !DIEnumerator(name: "CoderEvent", value: 16)
!25 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!26 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!27 = !DIEnumerator(name: "DrawEvent", value: 128)
!28 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!29 = !DIEnumerator(name: "ImageEvent", value: 512)
!30 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!31 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!32 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!33 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!34 = !DIEnumerator(name: "TransformEvent", value: 16384)
!35 = !DIEnumerator(name: "UserEvent", value: 36864)
!36 = !DIEnumerator(name: "WandEvent", value: 65536)
!37 = !DIEnumerator(name: "X11Event", value: 131072)
!38 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!39 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 211, baseType: !5, size: 32, elements: !42)
!41 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!42 = !{!43, !44}
!43 = !DIEnumerator(name: "MagickFalse", value: 0)
!44 = !DIEnumerator(name: "MagickTrue", value: 1)
!45 = !{!46, !48, !49, !50, !55, !56, !58}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !41, line: 93, baseType: !47)
!47 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!48 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!49 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !51, line: 77, baseType: !52)
!51 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !53, line: 193, baseType: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!54 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!55 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !57, line: 46, baseType: !55)
!57 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !41, line: 78, baseType: !59)
!59 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!60 = !{i32 7, !"Dwarf Version", i32 5}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{i32 1, !"wchar_size", i32 4}
!63 = !{i32 7, !"PIC Level", i32 2}
!64 = !{i32 7, !"PIE Level", i32 2}
!65 = !{i32 7, !"uwtable", i32 2}
!66 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!67 = distinct !DISubprogram(name: "ConvertHCLToRGB", scope: !68, file: !68, line: 86, type: !69, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!68 = !DIFile(filename: "apps/538.imagick_r/src/magick/gem.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "71fc1b50afc9e1e856e7fde42f2382a0")
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71, !71, !71, !72, !72, !72}
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!73 = !{!74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86}
!74 = !DILocalVariable(name: "hue", arg: 1, scope: !67, file: !68, line: 86, type: !71)
!75 = !DILocalVariable(name: "chroma", arg: 2, scope: !67, file: !68, line: 86, type: !71)
!76 = !DILocalVariable(name: "luma", arg: 3, scope: !67, file: !68, line: 87, type: !71)
!77 = !DILocalVariable(name: "red", arg: 4, scope: !67, file: !68, line: 87, type: !72)
!78 = !DILocalVariable(name: "green", arg: 5, scope: !67, file: !68, line: 87, type: !72)
!79 = !DILocalVariable(name: "blue", arg: 6, scope: !67, file: !68, line: 87, type: !72)
!80 = !DILocalVariable(name: "b", scope: !67, file: !68, line: 90, type: !48)
!81 = !DILocalVariable(name: "c", scope: !67, file: !68, line: 91, type: !48)
!82 = !DILocalVariable(name: "g", scope: !67, file: !68, line: 92, type: !48)
!83 = !DILocalVariable(name: "h", scope: !67, file: !68, line: 93, type: !48)
!84 = !DILocalVariable(name: "m", scope: !67, file: !68, line: 94, type: !48)
!85 = !DILocalVariable(name: "r", scope: !67, file: !68, line: 95, type: !48)
!86 = !DILocalVariable(name: "x", scope: !67, file: !68, line: 96, type: !48)
!87 = !DILocation(line: 0, scope: !67)
!88 = !DILocation(line: 104, column: 8, scope: !67)
!89 = !DILocation(line: 106, column: 17, scope: !67)
!90 = !DILocation(line: 106, column: 28, scope: !67)
!91 = !DILocation(line: 106, column: 12, scope: !67)
!92 = !DILocation(line: 106, column: 11, scope: !67)
!93 = !DILocation(line: 106, column: 6, scope: !67)
!94 = !DILocation(line: 110, column: 12, scope: !95)
!95 = distinct !DILexicalBlock(scope: !67, file: !68, line: 110, column: 7)
!96 = !DILocation(line: 110, column: 18, scope: !95)
!97 = !DILocation(line: 116, column: 14, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !68, line: 116, column: 9)
!99 = !DILocation(line: 116, column: 20, scope: !98)
!100 = !DILocation(line: 122, column: 16, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !68, line: 122, column: 11)
!102 = !DILocation(line: 122, column: 22, scope: !101)
!103 = !DILocation(line: 128, column: 18, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !68, line: 128, column: 13)
!105 = !DILocation(line: 128, column: 24, scope: !104)
!106 = !DILocation(line: 134, column: 20, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !68, line: 134, column: 15)
!108 = !DILocation(line: 134, column: 26, scope: !107)
!109 = !DILocation(line: 140, column: 22, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !68, line: 140, column: 17)
!111 = !DILocation(line: 140, column: 28, scope: !110)
!112 = !DILocation(line: 145, column: 30, scope: !67)
!113 = !DILocation(line: 145, column: 21, scope: !67)
!114 = !DILocation(line: 145, column: 32, scope: !67)
!115 = !DILocation(line: 145, column: 9, scope: !67)
!116 = !DILocation(line: 146, column: 38, scope: !67)
!117 = !DILocation(line: 146, column: 35, scope: !67)
!118 = !DILocation(line: 146, column: 23, scope: !67)
!119 = !DILocalVariable(name: "value", arg: 1, scope: !120, file: !121, line: 87, type: !124)
!120 = distinct !DISubprogram(name: "ClampToQuantum", scope: !121, file: !121, line: 87, type: !122, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !125)
!121 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f6eaed79d9a4eaf712cd066f6ff022a")
!122 = !DISubroutineType(types: !123)
!123 = !{!46, !124}
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!125 = !{!119}
!126 = !DILocation(line: 0, scope: !120, inlinedAt: !127)
!127 = distinct !DILocation(line: 146, column: 8, scope: !67)
!128 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !127)
!129 = distinct !DILexicalBlock(scope: !120, file: !121, line: 92, column: 7)
!130 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !127)
!131 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !127)
!132 = distinct !DILexicalBlock(scope: !120, file: !121, line: 94, column: 7)
!133 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !127)
!134 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !127)
!135 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !127)
!136 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !127)
!137 = !DILocation(line: 146, column: 7, scope: !67)
!138 = !{!139, !139, i64 0}
!139 = !{!"short", !140, i64 0}
!140 = !{!"omnipotent char", !141, i64 0}
!141 = !{!"Simple C/C++ TBAA"}
!142 = !DILocation(line: 147, column: 40, scope: !67)
!143 = !DILocation(line: 147, column: 37, scope: !67)
!144 = !DILocation(line: 147, column: 25, scope: !67)
!145 = !DILocation(line: 0, scope: !120, inlinedAt: !146)
!146 = distinct !DILocation(line: 147, column: 10, scope: !67)
!147 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !146)
!148 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !146)
!149 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !146)
!150 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !146)
!151 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !146)
!152 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !146)
!153 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !146)
!154 = !DILocation(line: 147, column: 9, scope: !67)
!155 = !DILocation(line: 148, column: 39, scope: !67)
!156 = !DILocation(line: 148, column: 36, scope: !67)
!157 = !DILocation(line: 148, column: 24, scope: !67)
!158 = !DILocation(line: 0, scope: !120, inlinedAt: !159)
!159 = distinct !DILocation(line: 148, column: 9, scope: !67)
!160 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !159)
!161 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !159)
!162 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !159)
!163 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !159)
!164 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !159)
!165 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !159)
!166 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !159)
!167 = !DILocation(line: 148, column: 8, scope: !67)
!168 = !DILocation(line: 149, column: 1, scope: !67)
!169 = distinct !DISubprogram(name: "ConvertHCLpToRGB", scope: !68, file: !68, line: 179, type: !69, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !170)
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184}
!171 = !DILocalVariable(name: "hue", arg: 1, scope: !169, file: !68, line: 179, type: !71)
!172 = !DILocalVariable(name: "chroma", arg: 2, scope: !169, file: !68, line: 179, type: !71)
!173 = !DILocalVariable(name: "luma", arg: 3, scope: !169, file: !68, line: 180, type: !71)
!174 = !DILocalVariable(name: "red", arg: 4, scope: !169, file: !68, line: 180, type: !72)
!175 = !DILocalVariable(name: "green", arg: 5, scope: !169, file: !68, line: 180, type: !72)
!176 = !DILocalVariable(name: "blue", arg: 6, scope: !169, file: !68, line: 180, type: !72)
!177 = !DILocalVariable(name: "b", scope: !169, file: !68, line: 183, type: !48)
!178 = !DILocalVariable(name: "c", scope: !169, file: !68, line: 184, type: !48)
!179 = !DILocalVariable(name: "g", scope: !169, file: !68, line: 185, type: !48)
!180 = !DILocalVariable(name: "h", scope: !169, file: !68, line: 186, type: !48)
!181 = !DILocalVariable(name: "m", scope: !169, file: !68, line: 187, type: !48)
!182 = !DILocalVariable(name: "r", scope: !169, file: !68, line: 188, type: !48)
!183 = !DILocalVariable(name: "x", scope: !169, file: !68, line: 189, type: !48)
!184 = !DILocalVariable(name: "z", scope: !169, file: !68, line: 190, type: !48)
!185 = !DILocation(line: 0, scope: !169)
!186 = !DILocation(line: 198, column: 8, scope: !169)
!187 = !DILocation(line: 200, column: 17, scope: !169)
!188 = !DILocation(line: 200, column: 28, scope: !169)
!189 = !DILocation(line: 200, column: 12, scope: !169)
!190 = !DILocation(line: 200, column: 11, scope: !169)
!191 = !DILocation(line: 200, column: 6, scope: !169)
!192 = !DILocation(line: 204, column: 12, scope: !193)
!193 = distinct !DILexicalBlock(scope: !169, file: !68, line: 204, column: 7)
!194 = !DILocation(line: 204, column: 18, scope: !193)
!195 = !DILocation(line: 210, column: 14, scope: !196)
!196 = distinct !DILexicalBlock(scope: !193, file: !68, line: 210, column: 9)
!197 = !DILocation(line: 210, column: 20, scope: !196)
!198 = !DILocation(line: 216, column: 16, scope: !199)
!199 = distinct !DILexicalBlock(scope: !196, file: !68, line: 216, column: 11)
!200 = !DILocation(line: 216, column: 22, scope: !199)
!201 = !DILocation(line: 222, column: 18, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !68, line: 222, column: 13)
!203 = !DILocation(line: 222, column: 24, scope: !202)
!204 = !DILocation(line: 228, column: 20, scope: !205)
!205 = distinct !DILexicalBlock(scope: !202, file: !68, line: 228, column: 15)
!206 = !DILocation(line: 228, column: 26, scope: !205)
!207 = !DILocation(line: 234, column: 22, scope: !208)
!208 = distinct !DILexicalBlock(scope: !205, file: !68, line: 234, column: 17)
!209 = !DILocation(line: 234, column: 28, scope: !208)
!210 = !DILocation(line: 239, column: 30, scope: !169)
!211 = !DILocation(line: 239, column: 21, scope: !169)
!212 = !DILocation(line: 239, column: 32, scope: !169)
!213 = !DILocation(line: 239, column: 9, scope: !169)
!214 = !DILocation(line: 241, column: 9, scope: !215)
!215 = distinct !DILexicalBlock(scope: !169, file: !68, line: 241, column: 7)
!216 = !DILocation(line: 241, column: 7, scope: !169)
!217 = !DILocation(line: 243, column: 19, scope: !218)
!218 = distinct !DILexicalBlock(scope: !215, file: !68, line: 242, column: 5)
!219 = !DILocation(line: 243, column: 13, scope: !218)
!220 = !DILocation(line: 245, column: 5, scope: !218)
!221 = !DILocation(line: 247, column: 10, scope: !222)
!222 = distinct !DILexicalBlock(scope: !215, file: !68, line: 247, column: 9)
!223 = !DILocation(line: 247, column: 13, scope: !222)
!224 = !DILocation(line: 247, column: 9, scope: !215)
!225 = !DILocation(line: 249, column: 15, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !68, line: 248, column: 7)
!227 = !DILocation(line: 249, column: 26, scope: !226)
!228 = !DILocation(line: 249, column: 21, scope: !226)
!229 = !DILocation(line: 250, column: 14, scope: !226)
!230 = !DILocation(line: 251, column: 7, scope: !226)
!231 = !DILocation(line: 252, column: 40, scope: !169)
!232 = !DILocation(line: 252, column: 35, scope: !169)
!233 = !DILocation(line: 252, column: 23, scope: !169)
!234 = !DILocation(line: 0, scope: !120, inlinedAt: !235)
!235 = distinct !DILocation(line: 252, column: 8, scope: !169)
!236 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !235)
!237 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !235)
!238 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !235)
!239 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !235)
!240 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !235)
!241 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !235)
!242 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !235)
!243 = !DILocation(line: 252, column: 7, scope: !169)
!244 = !DILocation(line: 253, column: 42, scope: !169)
!245 = !DILocation(line: 253, column: 37, scope: !169)
!246 = !DILocation(line: 253, column: 25, scope: !169)
!247 = !DILocation(line: 0, scope: !120, inlinedAt: !248)
!248 = distinct !DILocation(line: 253, column: 10, scope: !169)
!249 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !248)
!250 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !248)
!251 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !248)
!252 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !248)
!253 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !248)
!254 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !248)
!255 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !248)
!256 = !DILocation(line: 253, column: 9, scope: !169)
!257 = !DILocation(line: 254, column: 41, scope: !169)
!258 = !DILocation(line: 254, column: 36, scope: !169)
!259 = !DILocation(line: 254, column: 24, scope: !169)
!260 = !DILocation(line: 0, scope: !120, inlinedAt: !261)
!261 = distinct !DILocation(line: 254, column: 9, scope: !169)
!262 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !261)
!263 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !261)
!264 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !261)
!265 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !261)
!266 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !261)
!267 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !261)
!268 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !261)
!269 = !DILocation(line: 254, column: 8, scope: !169)
!270 = !DILocation(line: 255, column: 1, scope: !169)
!271 = distinct !DISubprogram(name: "ConvertHSBToRGB", scope: !68, file: !68, line: 284, type: !69, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !272)
!272 = !{!273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283}
!273 = !DILocalVariable(name: "hue", arg: 1, scope: !271, file: !68, line: 284, type: !71)
!274 = !DILocalVariable(name: "saturation", arg: 2, scope: !271, file: !68, line: 284, type: !71)
!275 = !DILocalVariable(name: "brightness", arg: 3, scope: !271, file: !68, line: 285, type: !71)
!276 = !DILocalVariable(name: "red", arg: 4, scope: !271, file: !68, line: 285, type: !72)
!277 = !DILocalVariable(name: "green", arg: 5, scope: !271, file: !68, line: 285, type: !72)
!278 = !DILocalVariable(name: "blue", arg: 6, scope: !271, file: !68, line: 285, type: !72)
!279 = !DILocalVariable(name: "f", scope: !271, file: !68, line: 288, type: !48)
!280 = !DILocalVariable(name: "h", scope: !271, file: !68, line: 289, type: !48)
!281 = !DILocalVariable(name: "p", scope: !271, file: !68, line: 290, type: !48)
!282 = !DILocalVariable(name: "q", scope: !271, file: !68, line: 291, type: !48)
!283 = !DILocalVariable(name: "t", scope: !271, file: !68, line: 292, type: !48)
!284 = !DILocation(line: 0, scope: !271)
!285 = !DILocation(line: 300, column: 18, scope: !286)
!286 = distinct !DILexicalBlock(scope: !271, file: !68, line: 300, column: 7)
!287 = !DILocation(line: 300, column: 7, scope: !271)
!288 = !DILocation(line: 302, column: 39, scope: !289)
!289 = distinct !DILexicalBlock(scope: !286, file: !68, line: 301, column: 5)
!290 = !DILocation(line: 302, column: 27, scope: !289)
!291 = !DILocation(line: 0, scope: !120, inlinedAt: !292)
!292 = distinct !DILocation(line: 302, column: 12, scope: !289)
!293 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !292)
!294 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !292)
!295 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !292)
!296 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !292)
!297 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !292)
!298 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !292)
!299 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !292)
!300 = !DILocation(line: 302, column: 11, scope: !289)
!301 = !DILocation(line: 303, column: 13, scope: !289)
!302 = !DILocation(line: 304, column: 14, scope: !289)
!303 = !DILocation(line: 305, column: 7, scope: !289)
!304 = !DILocation(line: 307, column: 14, scope: !271)
!305 = !DILocation(line: 307, column: 13, scope: !271)
!306 = !DILocation(line: 307, column: 8, scope: !271)
!307 = !DILocation(line: 308, column: 7, scope: !271)
!308 = !DILocation(line: 308, column: 6, scope: !271)
!309 = !DILocation(line: 309, column: 20, scope: !271)
!310 = !DILocation(line: 309, column: 15, scope: !271)
!311 = !DILocation(line: 310, column: 20, scope: !271)
!312 = !DILocation(line: 310, column: 15, scope: !271)
!313 = !DILocation(line: 311, column: 37, scope: !271)
!314 = !DILocation(line: 311, column: 20, scope: !271)
!315 = !DILocation(line: 311, column: 15, scope: !271)
!316 = !DILocation(line: 312, column: 11, scope: !271)
!317 = !DILocation(line: 312, column: 3, scope: !271)
!318 = !DILocation(line: 317, column: 39, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !68, line: 316, column: 5)
!320 = distinct !DILexicalBlock(scope: !271, file: !68, line: 313, column: 3)
!321 = !DILocation(line: 317, column: 27, scope: !319)
!322 = !DILocation(line: 0, scope: !120, inlinedAt: !323)
!323 = distinct !DILocation(line: 317, column: 12, scope: !319)
!324 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !323)
!325 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !323)
!326 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !323)
!327 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !323)
!328 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !323)
!329 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !323)
!330 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !323)
!331 = !DILocation(line: 317, column: 11, scope: !319)
!332 = !DILocation(line: 318, column: 41, scope: !319)
!333 = !DILocation(line: 318, column: 29, scope: !319)
!334 = !DILocation(line: 0, scope: !120, inlinedAt: !335)
!335 = distinct !DILocation(line: 318, column: 14, scope: !319)
!336 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !335)
!337 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !335)
!338 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !335)
!339 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !335)
!340 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !335)
!341 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !335)
!342 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !335)
!343 = !DILocation(line: 318, column: 13, scope: !319)
!344 = !DILocation(line: 319, column: 40, scope: !319)
!345 = !DILocation(line: 319, column: 28, scope: !319)
!346 = !DILocation(line: 0, scope: !120, inlinedAt: !347)
!347 = distinct !DILocation(line: 319, column: 13, scope: !319)
!348 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !347)
!349 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !347)
!350 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !347)
!351 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !347)
!352 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !347)
!353 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !347)
!354 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !347)
!355 = !DILocation(line: 324, column: 39, scope: !356)
!356 = distinct !DILexicalBlock(scope: !320, file: !68, line: 323, column: 5)
!357 = !DILocation(line: 324, column: 27, scope: !356)
!358 = !DILocation(line: 0, scope: !120, inlinedAt: !359)
!359 = distinct !DILocation(line: 324, column: 12, scope: !356)
!360 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !359)
!361 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !359)
!362 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !359)
!363 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !359)
!364 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !359)
!365 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !359)
!366 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !359)
!367 = !DILocation(line: 324, column: 11, scope: !356)
!368 = !DILocation(line: 325, column: 41, scope: !356)
!369 = !DILocation(line: 325, column: 29, scope: !356)
!370 = !DILocation(line: 0, scope: !120, inlinedAt: !371)
!371 = distinct !DILocation(line: 325, column: 14, scope: !356)
!372 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !371)
!373 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !371)
!374 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !371)
!375 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !371)
!376 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !371)
!377 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !371)
!378 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !371)
!379 = !DILocation(line: 325, column: 13, scope: !356)
!380 = !DILocation(line: 326, column: 40, scope: !356)
!381 = !DILocation(line: 326, column: 28, scope: !356)
!382 = !DILocation(line: 0, scope: !120, inlinedAt: !383)
!383 = distinct !DILocation(line: 326, column: 13, scope: !356)
!384 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !383)
!385 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !383)
!386 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !383)
!387 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !383)
!388 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !383)
!389 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !383)
!390 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !383)
!391 = !DILocation(line: 331, column: 39, scope: !392)
!392 = distinct !DILexicalBlock(scope: !320, file: !68, line: 330, column: 5)
!393 = !DILocation(line: 331, column: 27, scope: !392)
!394 = !DILocation(line: 0, scope: !120, inlinedAt: !395)
!395 = distinct !DILocation(line: 331, column: 12, scope: !392)
!396 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !395)
!397 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !395)
!398 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !395)
!399 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !395)
!400 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !395)
!401 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !395)
!402 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !395)
!403 = !DILocation(line: 331, column: 11, scope: !392)
!404 = !DILocation(line: 332, column: 41, scope: !392)
!405 = !DILocation(line: 332, column: 29, scope: !392)
!406 = !DILocation(line: 0, scope: !120, inlinedAt: !407)
!407 = distinct !DILocation(line: 332, column: 14, scope: !392)
!408 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !407)
!409 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !407)
!410 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !407)
!411 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !407)
!412 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !407)
!413 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !407)
!414 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !407)
!415 = !DILocation(line: 332, column: 13, scope: !392)
!416 = !DILocation(line: 333, column: 40, scope: !392)
!417 = !DILocation(line: 333, column: 28, scope: !392)
!418 = !DILocation(line: 0, scope: !120, inlinedAt: !419)
!419 = distinct !DILocation(line: 333, column: 13, scope: !392)
!420 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !419)
!421 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !419)
!422 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !419)
!423 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !419)
!424 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !419)
!425 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !419)
!426 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !419)
!427 = !DILocation(line: 338, column: 39, scope: !428)
!428 = distinct !DILexicalBlock(scope: !320, file: !68, line: 337, column: 5)
!429 = !DILocation(line: 338, column: 27, scope: !428)
!430 = !DILocation(line: 0, scope: !120, inlinedAt: !431)
!431 = distinct !DILocation(line: 338, column: 12, scope: !428)
!432 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !431)
!433 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !431)
!434 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !431)
!435 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !431)
!436 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !431)
!437 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !431)
!438 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !431)
!439 = !DILocation(line: 338, column: 11, scope: !428)
!440 = !DILocation(line: 339, column: 41, scope: !428)
!441 = !DILocation(line: 339, column: 29, scope: !428)
!442 = !DILocation(line: 0, scope: !120, inlinedAt: !443)
!443 = distinct !DILocation(line: 339, column: 14, scope: !428)
!444 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !443)
!445 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !443)
!446 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !443)
!447 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !443)
!448 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !443)
!449 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !443)
!450 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !443)
!451 = !DILocation(line: 339, column: 13, scope: !428)
!452 = !DILocation(line: 340, column: 40, scope: !428)
!453 = !DILocation(line: 340, column: 28, scope: !428)
!454 = !DILocation(line: 0, scope: !120, inlinedAt: !455)
!455 = distinct !DILocation(line: 340, column: 13, scope: !428)
!456 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !455)
!457 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !455)
!458 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !455)
!459 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !455)
!460 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !455)
!461 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !455)
!462 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !455)
!463 = !DILocation(line: 345, column: 39, scope: !464)
!464 = distinct !DILexicalBlock(scope: !320, file: !68, line: 344, column: 5)
!465 = !DILocation(line: 345, column: 27, scope: !464)
!466 = !DILocation(line: 0, scope: !120, inlinedAt: !467)
!467 = distinct !DILocation(line: 345, column: 12, scope: !464)
!468 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !467)
!469 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !467)
!470 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !467)
!471 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !467)
!472 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !467)
!473 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !467)
!474 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !467)
!475 = !DILocation(line: 345, column: 11, scope: !464)
!476 = !DILocation(line: 346, column: 41, scope: !464)
!477 = !DILocation(line: 346, column: 29, scope: !464)
!478 = !DILocation(line: 0, scope: !120, inlinedAt: !479)
!479 = distinct !DILocation(line: 346, column: 14, scope: !464)
!480 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !479)
!481 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !479)
!482 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !479)
!483 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !479)
!484 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !479)
!485 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !479)
!486 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !479)
!487 = !DILocation(line: 346, column: 13, scope: !464)
!488 = !DILocation(line: 347, column: 40, scope: !464)
!489 = !DILocation(line: 347, column: 28, scope: !464)
!490 = !DILocation(line: 0, scope: !120, inlinedAt: !491)
!491 = distinct !DILocation(line: 347, column: 13, scope: !464)
!492 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !491)
!493 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !491)
!494 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !491)
!495 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !491)
!496 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !491)
!497 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !491)
!498 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !491)
!499 = !DILocation(line: 352, column: 39, scope: !500)
!500 = distinct !DILexicalBlock(scope: !320, file: !68, line: 351, column: 5)
!501 = !DILocation(line: 352, column: 27, scope: !500)
!502 = !DILocation(line: 0, scope: !120, inlinedAt: !503)
!503 = distinct !DILocation(line: 352, column: 12, scope: !500)
!504 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !503)
!505 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !503)
!506 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !503)
!507 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !503)
!508 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !503)
!509 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !503)
!510 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !503)
!511 = !DILocation(line: 352, column: 11, scope: !500)
!512 = !DILocation(line: 353, column: 41, scope: !500)
!513 = !DILocation(line: 353, column: 29, scope: !500)
!514 = !DILocation(line: 0, scope: !120, inlinedAt: !515)
!515 = distinct !DILocation(line: 353, column: 14, scope: !500)
!516 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !515)
!517 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !515)
!518 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !515)
!519 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !515)
!520 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !515)
!521 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !515)
!522 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !515)
!523 = !DILocation(line: 353, column: 13, scope: !500)
!524 = !DILocation(line: 354, column: 40, scope: !500)
!525 = !DILocation(line: 354, column: 28, scope: !500)
!526 = !DILocation(line: 0, scope: !120, inlinedAt: !527)
!527 = distinct !DILocation(line: 354, column: 13, scope: !500)
!528 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !527)
!529 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !527)
!530 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !527)
!531 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !527)
!532 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !527)
!533 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !527)
!534 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !527)
!535 = !DILocation(line: 358, column: 1, scope: !271)
!536 = distinct !DISubprogram(name: "ConvertHSIToRGB", scope: !68, file: !68, line: 387, type: !69, scopeLine: 389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !537)
!537 = !{!538, !539, !540, !541, !542, !543, !544, !545, !546, !547}
!538 = !DILocalVariable(name: "hue", arg: 1, scope: !536, file: !68, line: 387, type: !71)
!539 = !DILocalVariable(name: "saturation", arg: 2, scope: !536, file: !68, line: 387, type: !71)
!540 = !DILocalVariable(name: "intensity", arg: 3, scope: !536, file: !68, line: 388, type: !71)
!541 = !DILocalVariable(name: "red", arg: 4, scope: !536, file: !68, line: 388, type: !72)
!542 = !DILocalVariable(name: "green", arg: 5, scope: !536, file: !68, line: 388, type: !72)
!543 = !DILocalVariable(name: "blue", arg: 6, scope: !536, file: !68, line: 388, type: !72)
!544 = !DILocalVariable(name: "b", scope: !536, file: !68, line: 391, type: !48)
!545 = !DILocalVariable(name: "g", scope: !536, file: !68, line: 392, type: !48)
!546 = !DILocalVariable(name: "h", scope: !536, file: !68, line: 393, type: !48)
!547 = !DILocalVariable(name: "r", scope: !536, file: !68, line: 394, type: !48)
!548 = !DILocation(line: 0, scope: !536)
!549 = !DILocation(line: 402, column: 10, scope: !536)
!550 = !DILocation(line: 403, column: 19, scope: !536)
!551 = !DILocation(line: 403, column: 12, scope: !536)
!552 = !DILocation(line: 403, column: 4, scope: !536)
!553 = !DILocation(line: 404, column: 9, scope: !554)
!554 = distinct !DILexicalBlock(scope: !536, file: !68, line: 404, column: 7)
!555 = !DILocation(line: 404, column: 7, scope: !536)
!556 = !DILocation(line: 406, column: 23, scope: !557)
!557 = distinct !DILexicalBlock(scope: !554, file: !68, line: 405, column: 5)
!558 = !DILocation(line: 406, column: 18, scope: !557)
!559 = !DILocation(line: 407, column: 40, scope: !557)
!560 = !DILocation(line: 407, column: 35, scope: !557)
!561 = !DILocation(line: 407, column: 34, scope: !557)
!562 = !DILocation(line: 407, column: 68, scope: !557)
!563 = !DILocation(line: 407, column: 71, scope: !557)
!564 = !DILocation(line: 407, column: 59, scope: !557)
!565 = !DILocation(line: 407, column: 58, scope: !557)
!566 = !DILocation(line: 407, column: 23, scope: !557)
!567 = !DILocation(line: 407, column: 18, scope: !557)
!568 = !DILocation(line: 409, column: 22, scope: !557)
!569 = !DILocation(line: 409, column: 24, scope: !557)
!570 = !DILocation(line: 410, column: 5, scope: !557)
!571 = !DILocation(line: 412, column: 11, scope: !572)
!572 = distinct !DILexicalBlock(scope: !554, file: !68, line: 412, column: 9)
!573 = !DILocation(line: 412, column: 9, scope: !554)
!574 = !DILocation(line: 414, column: 10, scope: !575)
!575 = distinct !DILexicalBlock(scope: !572, file: !68, line: 413, column: 7)
!576 = !DILocation(line: 415, column: 25, scope: !575)
!577 = !DILocation(line: 415, column: 20, scope: !575)
!578 = !DILocation(line: 416, column: 42, scope: !575)
!579 = !DILocation(line: 416, column: 37, scope: !575)
!580 = !DILocation(line: 416, column: 36, scope: !575)
!581 = !DILocation(line: 416, column: 70, scope: !575)
!582 = !DILocation(line: 416, column: 73, scope: !575)
!583 = !DILocation(line: 416, column: 61, scope: !575)
!584 = !DILocation(line: 416, column: 60, scope: !575)
!585 = !DILocation(line: 416, column: 25, scope: !575)
!586 = !DILocation(line: 416, column: 20, scope: !575)
!587 = !DILocation(line: 418, column: 24, scope: !575)
!588 = !DILocation(line: 418, column: 26, scope: !575)
!589 = !DILocation(line: 419, column: 7, scope: !575)
!590 = !DILocation(line: 422, column: 10, scope: !591)
!591 = distinct !DILexicalBlock(scope: !572, file: !68, line: 421, column: 7)
!592 = !DILocation(line: 423, column: 25, scope: !591)
!593 = !DILocation(line: 423, column: 20, scope: !591)
!594 = !DILocation(line: 424, column: 42, scope: !591)
!595 = !DILocation(line: 424, column: 37, scope: !591)
!596 = !DILocation(line: 424, column: 36, scope: !591)
!597 = !DILocation(line: 424, column: 70, scope: !591)
!598 = !DILocation(line: 424, column: 73, scope: !591)
!599 = !DILocation(line: 424, column: 61, scope: !591)
!600 = !DILocation(line: 424, column: 60, scope: !591)
!601 = !DILocation(line: 424, column: 25, scope: !591)
!602 = !DILocation(line: 424, column: 20, scope: !591)
!603 = !DILocation(line: 426, column: 24, scope: !591)
!604 = !DILocation(line: 426, column: 26, scope: !591)
!605 = !DILocation(line: 0, scope: !554)
!606 = !DILocation(line: 428, column: 35, scope: !536)
!607 = !DILocation(line: 428, column: 23, scope: !536)
!608 = !DILocation(line: 0, scope: !120, inlinedAt: !609)
!609 = distinct !DILocation(line: 428, column: 8, scope: !536)
!610 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !609)
!611 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !609)
!612 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !609)
!613 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !609)
!614 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !609)
!615 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !609)
!616 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !609)
!617 = !DILocation(line: 428, column: 7, scope: !536)
!618 = !DILocation(line: 429, column: 37, scope: !536)
!619 = !DILocation(line: 429, column: 25, scope: !536)
!620 = !DILocation(line: 0, scope: !120, inlinedAt: !621)
!621 = distinct !DILocation(line: 429, column: 10, scope: !536)
!622 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !621)
!623 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !621)
!624 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !621)
!625 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !621)
!626 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !621)
!627 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !621)
!628 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !621)
!629 = !DILocation(line: 429, column: 9, scope: !536)
!630 = !DILocation(line: 430, column: 36, scope: !536)
!631 = !DILocation(line: 430, column: 24, scope: !536)
!632 = !DILocation(line: 0, scope: !120, inlinedAt: !633)
!633 = distinct !DILocation(line: 430, column: 9, scope: !536)
!634 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !633)
!635 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !633)
!636 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !633)
!637 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !633)
!638 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !633)
!639 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !633)
!640 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !633)
!641 = !DILocation(line: 430, column: 8, scope: !536)
!642 = !DILocation(line: 431, column: 1, scope: !536)
!643 = distinct !DISubprogram(name: "ConvertHSLToRGB", scope: !68, file: !68, line: 460, type: !69, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !644)
!644 = !{!645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657}
!645 = !DILocalVariable(name: "hue", arg: 1, scope: !643, file: !68, line: 460, type: !71)
!646 = !DILocalVariable(name: "saturation", arg: 2, scope: !643, file: !68, line: 460, type: !71)
!647 = !DILocalVariable(name: "lightness", arg: 3, scope: !643, file: !68, line: 461, type: !71)
!648 = !DILocalVariable(name: "red", arg: 4, scope: !643, file: !68, line: 461, type: !72)
!649 = !DILocalVariable(name: "green", arg: 5, scope: !643, file: !68, line: 461, type: !72)
!650 = !DILocalVariable(name: "blue", arg: 6, scope: !643, file: !68, line: 461, type: !72)
!651 = !DILocalVariable(name: "b", scope: !643, file: !68, line: 464, type: !48)
!652 = !DILocalVariable(name: "c", scope: !643, file: !68, line: 465, type: !48)
!653 = !DILocalVariable(name: "g", scope: !643, file: !68, line: 466, type: !48)
!654 = !DILocalVariable(name: "h", scope: !643, file: !68, line: 467, type: !48)
!655 = !DILocalVariable(name: "min", scope: !643, file: !68, line: 468, type: !48)
!656 = !DILocalVariable(name: "r", scope: !643, file: !68, line: 469, type: !48)
!657 = !DILocalVariable(name: "x", scope: !643, file: !68, line: 470, type: !48)
!658 = !DILocation(line: 0, scope: !643)
!659 = !DILocation(line: 478, column: 8, scope: !643)
!660 = !DILocation(line: 479, column: 17, scope: !661)
!661 = distinct !DILexicalBlock(scope: !643, file: !68, line: 479, column: 7)
!662 = !DILocation(line: 479, column: 7, scope: !643)
!663 = !DILocation(line: 480, column: 10, scope: !661)
!664 = !DILocation(line: 480, column: 5, scope: !661)
!665 = !DILocation(line: 482, column: 11, scope: !661)
!666 = !DILocation(line: 0, scope: !661)
!667 = !DILocation(line: 483, column: 16, scope: !643)
!668 = !DILocation(line: 484, column: 19, scope: !643)
!669 = !DILocation(line: 484, column: 12, scope: !643)
!670 = !DILocation(line: 484, column: 4, scope: !643)
!671 = !DILocation(line: 485, column: 4, scope: !643)
!672 = !DILocation(line: 486, column: 30, scope: !643)
!673 = !DILocation(line: 486, column: 23, scope: !643)
!674 = !DILocation(line: 486, column: 18, scope: !643)
!675 = !DILocation(line: 486, column: 35, scope: !643)
!676 = !DILocation(line: 486, column: 12, scope: !643)
!677 = !DILocation(line: 486, column: 11, scope: !643)
!678 = !DILocation(line: 486, column: 6, scope: !643)
!679 = !DILocation(line: 487, column: 17, scope: !643)
!680 = !DILocation(line: 487, column: 11, scope: !643)
!681 = !DILocation(line: 487, column: 3, scope: !643)
!682 = !DILocation(line: 491, column: 12, scope: !683)
!683 = distinct !DILexicalBlock(scope: !684, file: !68, line: 490, column: 5)
!684 = distinct !DILexicalBlock(scope: !643, file: !68, line: 488, column: 3)
!685 = !DILocation(line: 492, column: 12, scope: !683)
!686 = !DILocation(line: 494, column: 7, scope: !683)
!687 = !DILocation(line: 498, column: 12, scope: !688)
!688 = distinct !DILexicalBlock(scope: !684, file: !68, line: 497, column: 5)
!689 = !DILocation(line: 499, column: 12, scope: !688)
!690 = !DILocation(line: 501, column: 7, scope: !688)
!691 = !DILocation(line: 506, column: 12, scope: !692)
!692 = distinct !DILexicalBlock(scope: !684, file: !68, line: 504, column: 5)
!693 = !DILocation(line: 507, column: 12, scope: !692)
!694 = !DILocation(line: 508, column: 7, scope: !692)
!695 = !DILocation(line: 513, column: 12, scope: !696)
!696 = distinct !DILexicalBlock(scope: !684, file: !68, line: 511, column: 5)
!697 = !DILocation(line: 514, column: 12, scope: !696)
!698 = !DILocation(line: 515, column: 7, scope: !696)
!699 = !DILocation(line: 519, column: 12, scope: !700)
!700 = distinct !DILexicalBlock(scope: !684, file: !68, line: 518, column: 5)
!701 = !DILocation(line: 521, column: 12, scope: !700)
!702 = !DILocation(line: 522, column: 7, scope: !700)
!703 = !DILocation(line: 526, column: 12, scope: !704)
!704 = distinct !DILexicalBlock(scope: !684, file: !68, line: 525, column: 5)
!705 = !DILocation(line: 528, column: 12, scope: !704)
!706 = !DILocation(line: 529, column: 7, scope: !704)
!707 = !DILocation(line: 0, scope: !684)
!708 = !DILocation(line: 538, column: 35, scope: !643)
!709 = !DILocation(line: 538, column: 23, scope: !643)
!710 = !DILocation(line: 0, scope: !120, inlinedAt: !711)
!711 = distinct !DILocation(line: 538, column: 8, scope: !643)
!712 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !711)
!713 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !711)
!714 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !711)
!715 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !711)
!716 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !711)
!717 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !711)
!718 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !711)
!719 = !DILocation(line: 538, column: 7, scope: !643)
!720 = !DILocation(line: 539, column: 37, scope: !643)
!721 = !DILocation(line: 539, column: 25, scope: !643)
!722 = !DILocation(line: 0, scope: !120, inlinedAt: !723)
!723 = distinct !DILocation(line: 539, column: 10, scope: !643)
!724 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !723)
!725 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !723)
!726 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !723)
!727 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !723)
!728 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !723)
!729 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !723)
!730 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !723)
!731 = !DILocation(line: 539, column: 9, scope: !643)
!732 = !DILocation(line: 540, column: 36, scope: !643)
!733 = !DILocation(line: 540, column: 24, scope: !643)
!734 = !DILocation(line: 0, scope: !120, inlinedAt: !735)
!735 = distinct !DILocation(line: 540, column: 9, scope: !643)
!736 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !735)
!737 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !735)
!738 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !735)
!739 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !735)
!740 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !735)
!741 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !735)
!742 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !735)
!743 = !DILocation(line: 540, column: 8, scope: !643)
!744 = !DILocation(line: 541, column: 1, scope: !643)
!745 = distinct !DISubprogram(name: "ConvertHSVToRGB", scope: !68, file: !68, line: 570, type: !69, scopeLine: 572, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !746)
!746 = !{!747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759}
!747 = !DILocalVariable(name: "hue", arg: 1, scope: !745, file: !68, line: 570, type: !71)
!748 = !DILocalVariable(name: "saturation", arg: 2, scope: !745, file: !68, line: 570, type: !71)
!749 = !DILocalVariable(name: "value", arg: 3, scope: !745, file: !68, line: 571, type: !71)
!750 = !DILocalVariable(name: "red", arg: 4, scope: !745, file: !68, line: 571, type: !72)
!751 = !DILocalVariable(name: "green", arg: 5, scope: !745, file: !68, line: 571, type: !72)
!752 = !DILocalVariable(name: "blue", arg: 6, scope: !745, file: !68, line: 571, type: !72)
!753 = !DILocalVariable(name: "b", scope: !745, file: !68, line: 574, type: !48)
!754 = !DILocalVariable(name: "c", scope: !745, file: !68, line: 575, type: !48)
!755 = !DILocalVariable(name: "g", scope: !745, file: !68, line: 576, type: !48)
!756 = !DILocalVariable(name: "h", scope: !745, file: !68, line: 577, type: !48)
!757 = !DILocalVariable(name: "min", scope: !745, file: !68, line: 578, type: !48)
!758 = !DILocalVariable(name: "r", scope: !745, file: !68, line: 579, type: !48)
!759 = !DILocalVariable(name: "x", scope: !745, file: !68, line: 580, type: !48)
!760 = !DILocation(line: 0, scope: !745)
!761 = !DILocation(line: 588, column: 8, scope: !745)
!762 = !DILocation(line: 589, column: 10, scope: !745)
!763 = !DILocation(line: 590, column: 12, scope: !745)
!764 = !DILocation(line: 591, column: 19, scope: !745)
!765 = !DILocation(line: 591, column: 12, scope: !745)
!766 = !DILocation(line: 591, column: 4, scope: !745)
!767 = !DILocation(line: 592, column: 4, scope: !745)
!768 = !DILocation(line: 593, column: 30, scope: !745)
!769 = !DILocation(line: 593, column: 23, scope: !745)
!770 = !DILocation(line: 593, column: 18, scope: !745)
!771 = !DILocation(line: 593, column: 35, scope: !745)
!772 = !DILocation(line: 593, column: 12, scope: !745)
!773 = !DILocation(line: 593, column: 11, scope: !745)
!774 = !DILocation(line: 593, column: 6, scope: !745)
!775 = !DILocation(line: 594, column: 17, scope: !745)
!776 = !DILocation(line: 594, column: 11, scope: !745)
!777 = !DILocation(line: 594, column: 3, scope: !745)
!778 = !DILocation(line: 598, column: 12, scope: !779)
!779 = distinct !DILexicalBlock(scope: !780, file: !68, line: 597, column: 5)
!780 = distinct !DILexicalBlock(scope: !745, file: !68, line: 595, column: 3)
!781 = !DILocation(line: 599, column: 12, scope: !779)
!782 = !DILocation(line: 601, column: 7, scope: !779)
!783 = !DILocation(line: 605, column: 12, scope: !784)
!784 = distinct !DILexicalBlock(scope: !780, file: !68, line: 604, column: 5)
!785 = !DILocation(line: 606, column: 12, scope: !784)
!786 = !DILocation(line: 608, column: 7, scope: !784)
!787 = !DILocation(line: 613, column: 12, scope: !788)
!788 = distinct !DILexicalBlock(scope: !780, file: !68, line: 611, column: 5)
!789 = !DILocation(line: 614, column: 12, scope: !788)
!790 = !DILocation(line: 615, column: 7, scope: !788)
!791 = !DILocation(line: 620, column: 12, scope: !792)
!792 = distinct !DILexicalBlock(scope: !780, file: !68, line: 618, column: 5)
!793 = !DILocation(line: 621, column: 12, scope: !792)
!794 = !DILocation(line: 622, column: 7, scope: !792)
!795 = !DILocation(line: 626, column: 12, scope: !796)
!796 = distinct !DILexicalBlock(scope: !780, file: !68, line: 625, column: 5)
!797 = !DILocation(line: 628, column: 12, scope: !796)
!798 = !DILocation(line: 629, column: 7, scope: !796)
!799 = !DILocation(line: 633, column: 12, scope: !800)
!800 = distinct !DILexicalBlock(scope: !780, file: !68, line: 632, column: 5)
!801 = !DILocation(line: 635, column: 12, scope: !800)
!802 = !DILocation(line: 636, column: 7, scope: !800)
!803 = !DILocation(line: 0, scope: !780)
!804 = !DILocation(line: 645, column: 35, scope: !745)
!805 = !DILocation(line: 645, column: 23, scope: !745)
!806 = !DILocation(line: 0, scope: !120, inlinedAt: !807)
!807 = distinct !DILocation(line: 645, column: 8, scope: !745)
!808 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !807)
!809 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !807)
!810 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !807)
!811 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !807)
!812 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !807)
!813 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !807)
!814 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !807)
!815 = !DILocation(line: 645, column: 7, scope: !745)
!816 = !DILocation(line: 646, column: 37, scope: !745)
!817 = !DILocation(line: 646, column: 25, scope: !745)
!818 = !DILocation(line: 0, scope: !120, inlinedAt: !819)
!819 = distinct !DILocation(line: 646, column: 10, scope: !745)
!820 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !819)
!821 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !819)
!822 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !819)
!823 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !819)
!824 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !819)
!825 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !819)
!826 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !819)
!827 = !DILocation(line: 646, column: 9, scope: !745)
!828 = !DILocation(line: 647, column: 36, scope: !745)
!829 = !DILocation(line: 647, column: 24, scope: !745)
!830 = !DILocation(line: 0, scope: !120, inlinedAt: !831)
!831 = distinct !DILocation(line: 647, column: 9, scope: !745)
!832 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !831)
!833 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !831)
!834 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !831)
!835 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !831)
!836 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !831)
!837 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !831)
!838 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !831)
!839 = !DILocation(line: 647, column: 8, scope: !745)
!840 = !DILocation(line: 648, column: 1, scope: !745)
!841 = distinct !DISubprogram(name: "ConvertHWBToRGB", scope: !68, file: !68, line: 677, type: !69, scopeLine: 679, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !842)
!842 = !{!843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855}
!843 = !DILocalVariable(name: "hue", arg: 1, scope: !841, file: !68, line: 677, type: !71)
!844 = !DILocalVariable(name: "whiteness", arg: 2, scope: !841, file: !68, line: 677, type: !71)
!845 = !DILocalVariable(name: "blackness", arg: 3, scope: !841, file: !68, line: 678, type: !71)
!846 = !DILocalVariable(name: "red", arg: 4, scope: !841, file: !68, line: 678, type: !72)
!847 = !DILocalVariable(name: "green", arg: 5, scope: !841, file: !68, line: 678, type: !72)
!848 = !DILocalVariable(name: "blue", arg: 6, scope: !841, file: !68, line: 678, type: !72)
!849 = !DILocalVariable(name: "b", scope: !841, file: !68, line: 681, type: !48)
!850 = !DILocalVariable(name: "f", scope: !841, file: !68, line: 682, type: !48)
!851 = !DILocalVariable(name: "g", scope: !841, file: !68, line: 683, type: !48)
!852 = !DILocalVariable(name: "n", scope: !841, file: !68, line: 684, type: !48)
!853 = !DILocalVariable(name: "r", scope: !841, file: !68, line: 685, type: !48)
!854 = !DILocalVariable(name: "v", scope: !841, file: !68, line: 686, type: !48)
!855 = !DILocalVariable(name: "i", scope: !841, file: !68, line: 689, type: !50)
!856 = !DILocation(line: 0, scope: !841)
!857 = !DILocation(line: 697, column: 8, scope: !841)
!858 = !DILocation(line: 698, column: 11, scope: !859)
!859 = distinct !DILexicalBlock(scope: !841, file: !68, line: 698, column: 7)
!860 = !DILocation(line: 698, column: 7, scope: !841)
!861 = !DILocation(line: 700, column: 39, scope: !862)
!862 = distinct !DILexicalBlock(scope: !859, file: !68, line: 699, column: 5)
!863 = !DILocation(line: 700, column: 27, scope: !862)
!864 = !DILocation(line: 0, scope: !120, inlinedAt: !865)
!865 = distinct !DILocation(line: 700, column: 12, scope: !862)
!866 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !865)
!867 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !865)
!868 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !865)
!869 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !865)
!870 = !DILocation(line: 700, column: 11, scope: !862)
!871 = !DILocation(line: 0, scope: !120, inlinedAt: !872)
!872 = distinct !DILocation(line: 701, column: 14, scope: !862)
!873 = !DILocation(line: 701, column: 13, scope: !862)
!874 = !DILocation(line: 0, scope: !120, inlinedAt: !875)
!875 = distinct !DILocation(line: 702, column: 13, scope: !862)
!876 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !865)
!877 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !865)
!878 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !872)
!879 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !872)
!880 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !875)
!881 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !875)
!882 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !875)
!883 = !DILocation(line: 705, column: 24, scope: !841)
!884 = !DILocation(line: 705, column: 15, scope: !841)
!885 = !DILocation(line: 705, column: 5, scope: !841)
!886 = !DILocation(line: 706, column: 13, scope: !841)
!887 = !DILocation(line: 706, column: 12, scope: !841)
!888 = !DILocation(line: 707, column: 10, scope: !889)
!889 = distinct !DILexicalBlock(scope: !841, file: !68, line: 707, column: 7)
!890 = !DILocation(line: 707, column: 18, scope: !889)
!891 = !DILocation(line: 707, column: 7, scope: !841)
!892 = !DILocation(line: 709, column: 19, scope: !841)
!893 = !DILocation(line: 709, column: 14, scope: !841)
!894 = !DILocation(line: 710, column: 3, scope: !841)
!895 = !DILocation(line: 715, column: 36, scope: !896)
!896 = distinct !DILexicalBlock(scope: !841, file: !68, line: 711, column: 3)
!897 = !DILocation(line: 716, column: 36, scope: !896)
!898 = !DILocation(line: 717, column: 36, scope: !896)
!899 = !DILocation(line: 718, column: 36, scope: !896)
!900 = !DILocation(line: 719, column: 36, scope: !896)
!901 = !DILocation(line: 0, scope: !896)
!902 = !DILocation(line: 721, column: 35, scope: !841)
!903 = !DILocation(line: 721, column: 23, scope: !841)
!904 = !DILocation(line: 0, scope: !120, inlinedAt: !905)
!905 = distinct !DILocation(line: 721, column: 8, scope: !841)
!906 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !905)
!907 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !905)
!908 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !905)
!909 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !905)
!910 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !905)
!911 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !905)
!912 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !905)
!913 = !DILocation(line: 721, column: 7, scope: !841)
!914 = !DILocation(line: 722, column: 37, scope: !841)
!915 = !DILocation(line: 722, column: 25, scope: !841)
!916 = !DILocation(line: 0, scope: !120, inlinedAt: !917)
!917 = distinct !DILocation(line: 722, column: 10, scope: !841)
!918 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !917)
!919 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !917)
!920 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !917)
!921 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !917)
!922 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !917)
!923 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !917)
!924 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !917)
!925 = !DILocation(line: 722, column: 9, scope: !841)
!926 = !DILocation(line: 723, column: 36, scope: !841)
!927 = !DILocation(line: 723, column: 24, scope: !841)
!928 = !DILocation(line: 0, scope: !120, inlinedAt: !929)
!929 = distinct !DILocation(line: 723, column: 9, scope: !841)
!930 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !929)
!931 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !929)
!932 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !929)
!933 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !929)
!934 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !929)
!935 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !929)
!936 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !929)
!937 = !DILocation(line: 724, column: 1, scope: !841)
!938 = distinct !DISubprogram(name: "ConvertLCHabToRGB", scope: !68, file: !68, line: 761, type: !69, scopeLine: 763, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !939)
!939 = !{!940, !941, !942, !943, !944, !945, !946, !947, !948}
!940 = !DILocalVariable(name: "luma", arg: 1, scope: !938, file: !68, line: 761, type: !71)
!941 = !DILocalVariable(name: "chroma", arg: 2, scope: !938, file: !68, line: 761, type: !71)
!942 = !DILocalVariable(name: "hue", arg: 3, scope: !938, file: !68, line: 762, type: !71)
!943 = !DILocalVariable(name: "red", arg: 4, scope: !938, file: !68, line: 762, type: !72)
!944 = !DILocalVariable(name: "green", arg: 5, scope: !938, file: !68, line: 762, type: !72)
!945 = !DILocalVariable(name: "blue", arg: 6, scope: !938, file: !68, line: 762, type: !72)
!946 = !DILocalVariable(name: "X", scope: !938, file: !68, line: 765, type: !48)
!947 = !DILocalVariable(name: "Y", scope: !938, file: !68, line: 766, type: !48)
!948 = !DILocalVariable(name: "Z", scope: !938, file: !68, line: 767, type: !48)
!949 = !DILocation(line: 0, scope: !938)
!950 = !DILocation(line: 775, column: 26, scope: !938)
!951 = !DILocation(line: 775, column: 45, scope: !938)
!952 = !DILocation(line: 775, column: 37, scope: !938)
!953 = !DILocation(line: 775, column: 56, scope: !938)
!954 = !DILocalVariable(name: "luma", arg: 1, scope: !955, file: !68, line: 754, type: !71)
!955 = distinct !DISubprogram(name: "ConvertLCHabToXYZ", scope: !68, file: !68, line: 754, type: !956, scopeLine: 756, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !959)
!956 = !DISubroutineType(types: !957)
!957 = !{null, !71, !71, !71, !958, !958, !958}
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!959 = !{!954, !960, !961, !962, !963, !964}
!960 = !DILocalVariable(name: "chroma", arg: 2, scope: !955, file: !68, line: 754, type: !71)
!961 = !DILocalVariable(name: "hue", arg: 3, scope: !955, file: !68, line: 755, type: !71)
!962 = !DILocalVariable(name: "X", arg: 4, scope: !955, file: !68, line: 755, type: !958)
!963 = !DILocalVariable(name: "Y", arg: 5, scope: !955, file: !68, line: 755, type: !958)
!964 = !DILocalVariable(name: "Z", arg: 6, scope: !955, file: !68, line: 755, type: !958)
!965 = !DILocation(line: 0, scope: !955, inlinedAt: !966)
!966 = distinct !DILocation(line: 775, column: 3, scope: !938)
!967 = !DILocation(line: 757, column: 38, scope: !955, inlinedAt: !966)
!968 = !DILocation(line: 757, column: 47, scope: !955, inlinedAt: !966)
!969 = !DILocation(line: 757, column: 31, scope: !955, inlinedAt: !966)
!970 = !DILocation(line: 757, column: 30, scope: !955, inlinedAt: !966)
!971 = !DILocation(line: 758, column: 5, scope: !955, inlinedAt: !966)
!972 = !DILocation(line: 757, column: 61, scope: !955, inlinedAt: !966)
!973 = !DILocalVariable(name: "L", arg: 1, scope: !974, file: !975, line: 33, type: !71)
!974 = distinct !DISubprogram(name: "ConvertLabToXYZ", scope: !975, file: !975, line: 33, type: !956, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !976)
!975 = !DIFile(filename: "apps/538.imagick_r/src/magick/gem-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cc19af222b216542ec5ce0444e91635c")
!976 = !{!973, !977, !978, !979, !980, !981, !982, !983, !984}
!977 = !DILocalVariable(name: "a", arg: 2, scope: !974, file: !975, line: 33, type: !71)
!978 = !DILocalVariable(name: "b", arg: 3, scope: !974, file: !975, line: 33, type: !71)
!979 = !DILocalVariable(name: "X", arg: 4, scope: !974, file: !975, line: 34, type: !958)
!980 = !DILocalVariable(name: "Y", arg: 5, scope: !974, file: !975, line: 34, type: !958)
!981 = !DILocalVariable(name: "Z", arg: 6, scope: !974, file: !975, line: 34, type: !958)
!982 = !DILocalVariable(name: "x", scope: !974, file: !975, line: 37, type: !48)
!983 = !DILocalVariable(name: "y", scope: !974, file: !975, line: 38, type: !48)
!984 = !DILocalVariable(name: "z", scope: !974, file: !975, line: 39, type: !48)
!985 = !DILocation(line: 0, scope: !974, inlinedAt: !986)
!986 = distinct !DILocation(line: 757, column: 3, scope: !955, inlinedAt: !966)
!987 = !DILocation(line: 44, column: 7, scope: !974, inlinedAt: !986)
!988 = !DILocation(line: 44, column: 13, scope: !974, inlinedAt: !986)
!989 = !DILocation(line: 45, column: 8, scope: !974, inlinedAt: !986)
!990 = !DILocation(line: 45, column: 6, scope: !974, inlinedAt: !986)
!991 = !DILocation(line: 46, column: 8, scope: !974, inlinedAt: !986)
!992 = !DILocation(line: 46, column: 6, scope: !974, inlinedAt: !986)
!993 = !DILocation(line: 47, column: 9, scope: !994, inlinedAt: !986)
!994 = distinct !DILexicalBlock(scope: !974, file: !975, line: 47, column: 7)
!995 = !DILocation(line: 47, column: 11, scope: !994, inlinedAt: !986)
!996 = !DILocation(line: 47, column: 15, scope: !994, inlinedAt: !986)
!997 = !DILocation(line: 47, column: 7, scope: !974, inlinedAt: !986)
!998 = !DILocation(line: 50, column: 15, scope: !994, inlinedAt: !986)
!999 = !DILocation(line: 50, column: 21, scope: !994, inlinedAt: !986)
!1000 = !DILocation(line: 0, scope: !994, inlinedAt: !986)
!1001 = !DILocation(line: 51, column: 9, scope: !1002, inlinedAt: !986)
!1002 = distinct !DILexicalBlock(scope: !974, file: !975, line: 51, column: 7)
!1003 = !DILocation(line: 51, column: 11, scope: !1002, inlinedAt: !986)
!1004 = !DILocation(line: 51, column: 15, scope: !1002, inlinedAt: !986)
!1005 = !DILocation(line: 51, column: 7, scope: !974, inlinedAt: !986)
!1006 = !DILocation(line: 54, column: 8, scope: !1002, inlinedAt: !986)
!1007 = !DILocation(line: 0, scope: !1002, inlinedAt: !986)
!1008 = !DILocation(line: 55, column: 9, scope: !1009, inlinedAt: !986)
!1009 = distinct !DILexicalBlock(scope: !974, file: !975, line: 55, column: 7)
!1010 = !DILocation(line: 55, column: 11, scope: !1009, inlinedAt: !986)
!1011 = !DILocation(line: 55, column: 15, scope: !1009, inlinedAt: !986)
!1012 = !DILocation(line: 55, column: 7, scope: !974, inlinedAt: !986)
!1013 = !DILocation(line: 58, column: 15, scope: !1009, inlinedAt: !986)
!1014 = !DILocation(line: 58, column: 21, scope: !1009, inlinedAt: !986)
!1015 = !DILocation(line: 0, scope: !1009, inlinedAt: !986)
!1016 = !DILocation(line: 59, column: 10, scope: !974, inlinedAt: !986)
!1017 = !DILocation(line: 61, column: 10, scope: !974, inlinedAt: !986)
!1018 = !DILocalVariable(name: "X", arg: 1, scope: !1019, file: !975, line: 149, type: !71)
!1019 = distinct !DISubprogram(name: "ConvertXYZToRGB", scope: !975, file: !975, line: 149, type: !69, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1020)
!1020 = !{!1018, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028}
!1021 = !DILocalVariable(name: "Y", arg: 2, scope: !1019, file: !975, line: 149, type: !71)
!1022 = !DILocalVariable(name: "Z", arg: 3, scope: !1019, file: !975, line: 149, type: !71)
!1023 = !DILocalVariable(name: "red", arg: 4, scope: !1019, file: !975, line: 150, type: !72)
!1024 = !DILocalVariable(name: "green", arg: 5, scope: !1019, file: !975, line: 150, type: !72)
!1025 = !DILocalVariable(name: "blue", arg: 6, scope: !1019, file: !975, line: 150, type: !72)
!1026 = !DILocalVariable(name: "b", scope: !1019, file: !975, line: 153, type: !48)
!1027 = !DILocalVariable(name: "g", scope: !1019, file: !975, line: 154, type: !48)
!1028 = !DILocalVariable(name: "r", scope: !1019, file: !975, line: 155, type: !48)
!1029 = !DILocation(line: 0, scope: !1019, inlinedAt: !1030)
!1030 = distinct !DILocation(line: 776, column: 3, scope: !938)
!1031 = !DILocation(line: 160, column: 13, scope: !1019, inlinedAt: !1030)
!1032 = !DILocation(line: 160, column: 22, scope: !1019, inlinedAt: !1030)
!1033 = !DILocation(line: 161, column: 23, scope: !1019, inlinedAt: !1030)
!1034 = !DILocation(line: 161, column: 16, scope: !1019, inlinedAt: !1030)
!1035 = !DILocation(line: 161, column: 25, scope: !1019, inlinedAt: !1030)
!1036 = !DILocation(line: 162, column: 13, scope: !1019, inlinedAt: !1030)
!1037 = !DILocation(line: 162, column: 22, scope: !1019, inlinedAt: !1030)
!1038 = !DILocation(line: 163, column: 69, scope: !1019, inlinedAt: !1030)
!1039 = !DILocation(line: 163, column: 57, scope: !1019, inlinedAt: !1030)
!1040 = !DILocation(line: 163, column: 40, scope: !1019, inlinedAt: !1030)
!1041 = !DILocation(line: 0, scope: !120, inlinedAt: !1042)
!1042 = distinct !DILocation(line: 163, column: 8, scope: !1019, inlinedAt: !1030)
!1043 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !1042)
!1044 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !1042)
!1045 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !1042)
!1046 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !1042)
!1047 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !1042)
!1048 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !1042)
!1049 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !1042)
!1050 = !DILocation(line: 163, column: 7, scope: !1019, inlinedAt: !1030)
!1051 = !DILocation(line: 164, column: 71, scope: !1019, inlinedAt: !1030)
!1052 = !DILocation(line: 164, column: 59, scope: !1019, inlinedAt: !1030)
!1053 = !DILocation(line: 164, column: 42, scope: !1019, inlinedAt: !1030)
!1054 = !DILocation(line: 0, scope: !120, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 164, column: 10, scope: !1019, inlinedAt: !1030)
!1056 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !1055)
!1057 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !1055)
!1058 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !1055)
!1059 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !1055)
!1060 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !1055)
!1061 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !1055)
!1062 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !1055)
!1063 = !DILocation(line: 164, column: 9, scope: !1019, inlinedAt: !1030)
!1064 = !DILocation(line: 165, column: 70, scope: !1019, inlinedAt: !1030)
!1065 = !DILocation(line: 165, column: 58, scope: !1019, inlinedAt: !1030)
!1066 = !DILocation(line: 165, column: 41, scope: !1019, inlinedAt: !1030)
!1067 = !DILocation(line: 0, scope: !120, inlinedAt: !1068)
!1068 = distinct !DILocation(line: 165, column: 9, scope: !1019, inlinedAt: !1030)
!1069 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !1068)
!1070 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !1068)
!1071 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !1068)
!1072 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !1068)
!1073 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !1068)
!1074 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !1068)
!1075 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !1068)
!1076 = !DILocation(line: 165, column: 8, scope: !1019, inlinedAt: !1030)
!1077 = !DILocation(line: 777, column: 1, scope: !938)
!1078 = distinct !DISubprogram(name: "ConvertLCHuvToRGB", scope: !68, file: !68, line: 814, type: !69, scopeLine: 816, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1079)
!1079 = !{!1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088}
!1080 = !DILocalVariable(name: "luma", arg: 1, scope: !1078, file: !68, line: 814, type: !71)
!1081 = !DILocalVariable(name: "chroma", arg: 2, scope: !1078, file: !68, line: 814, type: !71)
!1082 = !DILocalVariable(name: "hue", arg: 3, scope: !1078, file: !68, line: 815, type: !71)
!1083 = !DILocalVariable(name: "red", arg: 4, scope: !1078, file: !68, line: 815, type: !72)
!1084 = !DILocalVariable(name: "green", arg: 5, scope: !1078, file: !68, line: 815, type: !72)
!1085 = !DILocalVariable(name: "blue", arg: 6, scope: !1078, file: !68, line: 815, type: !72)
!1086 = !DILocalVariable(name: "X", scope: !1078, file: !68, line: 818, type: !48)
!1087 = !DILocalVariable(name: "Y", scope: !1078, file: !68, line: 819, type: !48)
!1088 = !DILocalVariable(name: "Z", scope: !1078, file: !68, line: 820, type: !48)
!1089 = !DILocation(line: 0, scope: !1078)
!1090 = !DILocation(line: 828, column: 26, scope: !1078)
!1091 = !DILocation(line: 828, column: 45, scope: !1078)
!1092 = !DILocation(line: 828, column: 37, scope: !1078)
!1093 = !DILocation(line: 828, column: 56, scope: !1078)
!1094 = !DILocalVariable(name: "luma", arg: 1, scope: !1095, file: !68, line: 807, type: !71)
!1095 = distinct !DISubprogram(name: "ConvertLCHuvToXYZ", scope: !68, file: !68, line: 807, type: !956, scopeLine: 809, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1096)
!1096 = !{!1094, !1097, !1098, !1099, !1100, !1101}
!1097 = !DILocalVariable(name: "chroma", arg: 2, scope: !1095, file: !68, line: 807, type: !71)
!1098 = !DILocalVariable(name: "hue", arg: 3, scope: !1095, file: !68, line: 808, type: !71)
!1099 = !DILocalVariable(name: "X", arg: 4, scope: !1095, file: !68, line: 808, type: !958)
!1100 = !DILocalVariable(name: "Y", arg: 5, scope: !1095, file: !68, line: 808, type: !958)
!1101 = !DILocalVariable(name: "Z", arg: 6, scope: !1095, file: !68, line: 808, type: !958)
!1102 = !DILocation(line: 0, scope: !1095, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 828, column: 3, scope: !1078)
!1104 = !DILocation(line: 810, column: 38, scope: !1095, inlinedAt: !1103)
!1105 = !DILocation(line: 810, column: 47, scope: !1095, inlinedAt: !1103)
!1106 = !DILocation(line: 810, column: 31, scope: !1095, inlinedAt: !1103)
!1107 = !DILocation(line: 811, column: 5, scope: !1095, inlinedAt: !1103)
!1108 = !DILocalVariable(name: "L", arg: 1, scope: !1109, file: !975, line: 132, type: !71)
!1109 = distinct !DISubprogram(name: "ConvertLuvToXYZ", scope: !975, file: !975, line: 132, type: !956, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1110)
!1110 = !{!1108, !1111, !1112, !1113, !1114, !1115}
!1111 = !DILocalVariable(name: "u", arg: 2, scope: !1109, file: !975, line: 132, type: !71)
!1112 = !DILocalVariable(name: "v", arg: 3, scope: !1109, file: !975, line: 132, type: !71)
!1113 = !DILocalVariable(name: "X", arg: 4, scope: !1109, file: !975, line: 133, type: !958)
!1114 = !DILocalVariable(name: "Y", arg: 5, scope: !1109, file: !975, line: 133, type: !958)
!1115 = !DILocalVariable(name: "Z", arg: 6, scope: !1109, file: !975, line: 133, type: !958)
!1116 = !DILocation(line: 0, scope: !1109, inlinedAt: !1117)
!1117 = distinct !DILocation(line: 810, column: 3, scope: !1095, inlinedAt: !1103)
!1118 = !DILocation(line: 138, column: 9, scope: !1119, inlinedAt: !1117)
!1119 = distinct !DILexicalBlock(scope: !1109, file: !975, line: 138, column: 7)
!1120 = !DILocation(line: 138, column: 7, scope: !1109, inlinedAt: !1117)
!1121 = !DILocation(line: 139, column: 23, scope: !1119, inlinedAt: !1117)
!1122 = !DILocation(line: 139, column: 29, scope: !1119, inlinedAt: !1117)
!1123 = !DILocation(line: 139, column: 17, scope: !1119, inlinedAt: !1117)
!1124 = !DILocation(line: 139, column: 5, scope: !1119, inlinedAt: !1117)
!1125 = !DILocation(line: 141, column: 9, scope: !1119, inlinedAt: !1117)
!1126 = !DILocation(line: 0, scope: !1119, inlinedAt: !1117)
!1127 = !DILocation(line: 810, column: 61, scope: !1095, inlinedAt: !1103)
!1128 = !DILocation(line: 810, column: 30, scope: !1095, inlinedAt: !1103)
!1129 = !DILocation(line: 142, column: 17, scope: !1109, inlinedAt: !1117)
!1130 = !DILocation(line: 142, column: 27, scope: !1109, inlinedAt: !1117)
!1131 = !DILocation(line: 142, column: 22, scope: !1109, inlinedAt: !1117)
!1132 = !DILocation(line: 142, column: 19, scope: !1109, inlinedAt: !1117)
!1133 = !DILocation(line: 142, column: 68, scope: !1109, inlinedAt: !1117)
!1134 = !DILocation(line: 143, column: 8, scope: !1109, inlinedAt: !1117)
!1135 = !DILocation(line: 142, column: 74, scope: !1109, inlinedAt: !1117)
!1136 = !DILocation(line: 143, column: 24, scope: !1109, inlinedAt: !1117)
!1137 = !DILocation(line: 143, column: 29, scope: !1109, inlinedAt: !1117)
!1138 = !DILocation(line: 143, column: 26, scope: !1109, inlinedAt: !1117)
!1139 = !DILocation(line: 143, column: 75, scope: !1109, inlinedAt: !1117)
!1140 = !DILocation(line: 143, column: 80, scope: !1109, inlinedAt: !1117)
!1141 = !DILocation(line: 144, column: 9, scope: !1109, inlinedAt: !1117)
!1142 = !DILocation(line: 143, column: 14, scope: !1109, inlinedAt: !1117)
!1143 = !DILocation(line: 145, column: 80, scope: !1109, inlinedAt: !1117)
!1144 = !DILocation(line: 0, scope: !1019, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 829, column: 3, scope: !1078)
!1146 = !DILocation(line: 160, column: 13, scope: !1019, inlinedAt: !1145)
!1147 = !DILocation(line: 160, column: 22, scope: !1019, inlinedAt: !1145)
!1148 = !DILocation(line: 161, column: 23, scope: !1019, inlinedAt: !1145)
!1149 = !DILocation(line: 161, column: 16, scope: !1019, inlinedAt: !1145)
!1150 = !DILocation(line: 161, column: 25, scope: !1019, inlinedAt: !1145)
!1151 = !DILocation(line: 162, column: 13, scope: !1019, inlinedAt: !1145)
!1152 = !DILocation(line: 162, column: 22, scope: !1019, inlinedAt: !1145)
!1153 = !DILocation(line: 163, column: 69, scope: !1019, inlinedAt: !1145)
!1154 = !DILocation(line: 163, column: 57, scope: !1019, inlinedAt: !1145)
!1155 = !DILocation(line: 163, column: 40, scope: !1019, inlinedAt: !1145)
!1156 = !DILocation(line: 0, scope: !120, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 163, column: 8, scope: !1019, inlinedAt: !1145)
!1158 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !1157)
!1159 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !1157)
!1160 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !1157)
!1161 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !1157)
!1162 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !1157)
!1163 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !1157)
!1164 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !1157)
!1165 = !DILocation(line: 163, column: 7, scope: !1019, inlinedAt: !1145)
!1166 = !DILocation(line: 164, column: 71, scope: !1019, inlinedAt: !1145)
!1167 = !DILocation(line: 164, column: 59, scope: !1019, inlinedAt: !1145)
!1168 = !DILocation(line: 164, column: 42, scope: !1019, inlinedAt: !1145)
!1169 = !DILocation(line: 0, scope: !120, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 164, column: 10, scope: !1019, inlinedAt: !1145)
!1171 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !1170)
!1172 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !1170)
!1173 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !1170)
!1174 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !1170)
!1175 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !1170)
!1176 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !1170)
!1177 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !1170)
!1178 = !DILocation(line: 164, column: 9, scope: !1019, inlinedAt: !1145)
!1179 = !DILocation(line: 165, column: 70, scope: !1019, inlinedAt: !1145)
!1180 = !DILocation(line: 165, column: 58, scope: !1019, inlinedAt: !1145)
!1181 = !DILocation(line: 165, column: 41, scope: !1019, inlinedAt: !1145)
!1182 = !DILocation(line: 0, scope: !120, inlinedAt: !1183)
!1183 = distinct !DILocation(line: 165, column: 9, scope: !1019, inlinedAt: !1145)
!1184 = !DILocation(line: 92, column: 13, scope: !129, inlinedAt: !1183)
!1185 = !DILocation(line: 92, column: 7, scope: !120, inlinedAt: !1183)
!1186 = !DILocation(line: 94, column: 13, scope: !132, inlinedAt: !1183)
!1187 = !DILocation(line: 94, column: 7, scope: !120, inlinedAt: !1183)
!1188 = !DILocation(line: 96, column: 26, scope: !120, inlinedAt: !1183)
!1189 = !DILocation(line: 96, column: 10, scope: !120, inlinedAt: !1183)
!1190 = !DILocation(line: 96, column: 3, scope: !120, inlinedAt: !1183)
!1191 = !DILocation(line: 165, column: 8, scope: !1019, inlinedAt: !1145)
!1192 = !DILocation(line: 830, column: 1, scope: !1078)
!1193 = distinct !DISubprogram(name: "ConvertRGBToHCL", scope: !68, file: !68, line: 875, type: !1194, scopeLine: 877, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1197)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null, !1196, !1196, !1196, !958, !958, !958}
!1196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1197 = !{!1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209}
!1198 = !DILocalVariable(name: "red", arg: 1, scope: !1193, file: !68, line: 875, type: !1196)
!1199 = !DILocalVariable(name: "green", arg: 2, scope: !1193, file: !68, line: 875, type: !1196)
!1200 = !DILocalVariable(name: "blue", arg: 3, scope: !1193, file: !68, line: 876, type: !1196)
!1201 = !DILocalVariable(name: "hue", arg: 4, scope: !1193, file: !68, line: 876, type: !958)
!1202 = !DILocalVariable(name: "chroma", arg: 5, scope: !1193, file: !68, line: 876, type: !958)
!1203 = !DILocalVariable(name: "luma", arg: 6, scope: !1193, file: !68, line: 876, type: !958)
!1204 = !DILocalVariable(name: "b", scope: !1193, file: !68, line: 879, type: !48)
!1205 = !DILocalVariable(name: "c", scope: !1193, file: !68, line: 880, type: !48)
!1206 = !DILocalVariable(name: "g", scope: !1193, file: !68, line: 881, type: !48)
!1207 = !DILocalVariable(name: "h", scope: !1193, file: !68, line: 882, type: !48)
!1208 = !DILocalVariable(name: "max", scope: !1193, file: !68, line: 883, type: !48)
!1209 = !DILocalVariable(name: "r", scope: !1193, file: !68, line: 884, type: !48)
!1210 = !DILocation(line: 0, scope: !1193)
!1211 = !DILocation(line: 892, column: 5, scope: !1193)
!1212 = !DILocation(line: 893, column: 5, scope: !1193)
!1213 = !DILocation(line: 894, column: 5, scope: !1193)
!1214 = !DILocalVariable(name: "x", arg: 1, scope: !1215, file: !68, line: 861, type: !71)
!1215 = distinct !DISubprogram(name: "MagickMax", scope: !68, file: !68, line: 861, type: !1216, scopeLine: 862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1218)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!48, !71, !71}
!1218 = !{!1214, !1219}
!1219 = !DILocalVariable(name: "y", arg: 2, scope: !1215, file: !68, line: 861, type: !71)
!1220 = !DILocation(line: 0, scope: !1215, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 895, column: 19, scope: !1193)
!1222 = !DILocation(line: 863, column: 9, scope: !1223, inlinedAt: !1221)
!1223 = distinct !DILexicalBlock(scope: !1215, file: !68, line: 863, column: 7)
!1224 = !DILocation(line: 0, scope: !1215, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 895, column: 7, scope: !1193)
!1226 = !DILocation(line: 863, column: 9, scope: !1223, inlinedAt: !1225)
!1227 = !DILocalVariable(name: "x", arg: 1, scope: !1228, file: !68, line: 868, type: !71)
!1228 = distinct !DISubprogram(name: "MagickMin", scope: !68, file: !68, line: 868, type: !1216, scopeLine: 869, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1229)
!1229 = !{!1227, !1230}
!1230 = !DILocalVariable(name: "y", arg: 2, scope: !1228, file: !68, line: 868, type: !71)
!1231 = !DILocation(line: 0, scope: !1228, inlinedAt: !1232)
!1232 = distinct !DILocation(line: 896, column: 30, scope: !1193)
!1233 = !DILocation(line: 870, column: 9, scope: !1234, inlinedAt: !1232)
!1234 = distinct !DILexicalBlock(scope: !1228, file: !68, line: 870, column: 7)
!1235 = !DILocation(line: 0, scope: !1228, inlinedAt: !1236)
!1236 = distinct !DILocation(line: 896, column: 18, scope: !1193)
!1237 = !DILocation(line: 870, column: 9, scope: !1234, inlinedAt: !1236)
!1238 = !DILocation(line: 896, column: 8, scope: !1193)
!1239 = !DILocation(line: 898, column: 9, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1193, file: !68, line: 898, column: 7)
!1241 = !DILocation(line: 898, column: 7, scope: !1193)
!1242 = !DILocation(line: 901, column: 16, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1240, file: !68, line: 901, column: 9)
!1244 = !DILocation(line: 901, column: 13, scope: !1243)
!1245 = !DILocation(line: 901, column: 9, scope: !1240)
!1246 = !DILocation(line: 902, column: 16, scope: !1243)
!1247 = !DILocation(line: 902, column: 19, scope: !1243)
!1248 = !DILocation(line: 902, column: 21, scope: !1243)
!1249 = !DILocation(line: 902, column: 9, scope: !1243)
!1250 = !DILocation(line: 902, column: 7, scope: !1243)
!1251 = !DILocation(line: 904, column: 17, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1243, file: !68, line: 904, column: 11)
!1253 = !DILocation(line: 904, column: 11, scope: !1243)
!1254 = !DILocation(line: 905, column: 14, scope: !1252)
!1255 = !DILocation(line: 905, column: 17, scope: !1252)
!1256 = !DILocation(line: 905, column: 20, scope: !1252)
!1257 = !DILocation(line: 905, column: 9, scope: !1252)
!1258 = !DILocation(line: 907, column: 18, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1252, file: !68, line: 907, column: 13)
!1260 = !DILocation(line: 907, column: 13, scope: !1252)
!1261 = !DILocation(line: 908, column: 16, scope: !1259)
!1262 = !DILocation(line: 908, column: 19, scope: !1259)
!1263 = !DILocation(line: 908, column: 22, scope: !1259)
!1264 = !DILocation(line: 908, column: 11, scope: !1259)
!1265 = !DILocation(line: 909, column: 10, scope: !1193)
!1266 = !DILocation(line: 909, column: 7, scope: !1193)
!1267 = !{!1268, !1268, i64 0}
!1268 = !{!"double", !140, i64 0}
!1269 = !DILocation(line: 910, column: 23, scope: !1193)
!1270 = !DILocation(line: 910, column: 10, scope: !1193)
!1271 = !DILocation(line: 911, column: 42, scope: !1193)
!1272 = !DILocation(line: 911, column: 33, scope: !1193)
!1273 = !DILocation(line: 911, column: 44, scope: !1193)
!1274 = !DILocation(line: 911, column: 21, scope: !1193)
!1275 = !DILocation(line: 911, column: 8, scope: !1193)
!1276 = !DILocation(line: 912, column: 1, scope: !1193)
!1277 = distinct !DISubprogram(name: "ConvertRGBToHCLp", scope: !68, file: !68, line: 942, type: !1194, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1278)
!1278 = !{!1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290}
!1279 = !DILocalVariable(name: "red", arg: 1, scope: !1277, file: !68, line: 942, type: !1196)
!1280 = !DILocalVariable(name: "green", arg: 2, scope: !1277, file: !68, line: 942, type: !1196)
!1281 = !DILocalVariable(name: "blue", arg: 3, scope: !1277, file: !68, line: 943, type: !1196)
!1282 = !DILocalVariable(name: "hue", arg: 4, scope: !1277, file: !68, line: 943, type: !958)
!1283 = !DILocalVariable(name: "chroma", arg: 5, scope: !1277, file: !68, line: 943, type: !958)
!1284 = !DILocalVariable(name: "luma", arg: 6, scope: !1277, file: !68, line: 943, type: !958)
!1285 = !DILocalVariable(name: "b", scope: !1277, file: !68, line: 946, type: !48)
!1286 = !DILocalVariable(name: "c", scope: !1277, file: !68, line: 947, type: !48)
!1287 = !DILocalVariable(name: "g", scope: !1277, file: !68, line: 948, type: !48)
!1288 = !DILocalVariable(name: "h", scope: !1277, file: !68, line: 949, type: !48)
!1289 = !DILocalVariable(name: "max", scope: !1277, file: !68, line: 950, type: !48)
!1290 = !DILocalVariable(name: "r", scope: !1277, file: !68, line: 951, type: !48)
!1291 = !DILocation(line: 0, scope: !1277)
!1292 = !DILocation(line: 959, column: 5, scope: !1277)
!1293 = !DILocation(line: 960, column: 5, scope: !1277)
!1294 = !DILocation(line: 961, column: 5, scope: !1277)
!1295 = !DILocation(line: 0, scope: !1215, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 962, column: 19, scope: !1277)
!1297 = !DILocation(line: 863, column: 9, scope: !1223, inlinedAt: !1296)
!1298 = !DILocation(line: 0, scope: !1215, inlinedAt: !1299)
!1299 = distinct !DILocation(line: 962, column: 7, scope: !1277)
!1300 = !DILocation(line: 863, column: 9, scope: !1223, inlinedAt: !1299)
!1301 = !DILocation(line: 0, scope: !1228, inlinedAt: !1302)
!1302 = distinct !DILocation(line: 963, column: 30, scope: !1277)
!1303 = !DILocation(line: 870, column: 9, scope: !1234, inlinedAt: !1302)
!1304 = !DILocation(line: 0, scope: !1228, inlinedAt: !1305)
!1305 = distinct !DILocation(line: 963, column: 18, scope: !1277)
!1306 = !DILocation(line: 870, column: 9, scope: !1234, inlinedAt: !1305)
!1307 = !DILocation(line: 963, column: 8, scope: !1277)
!1308 = !DILocation(line: 965, column: 9, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1277, file: !68, line: 965, column: 7)
!1310 = !DILocation(line: 965, column: 7, scope: !1277)
!1311 = !DILocation(line: 968, column: 16, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1309, file: !68, line: 968, column: 9)
!1313 = !DILocation(line: 968, column: 13, scope: !1312)
!1314 = !DILocation(line: 968, column: 9, scope: !1309)
!1315 = !DILocation(line: 969, column: 16, scope: !1312)
!1316 = !DILocation(line: 969, column: 19, scope: !1312)
!1317 = !DILocation(line: 969, column: 21, scope: !1312)
!1318 = !DILocation(line: 969, column: 9, scope: !1312)
!1319 = !DILocation(line: 969, column: 7, scope: !1312)
!1320 = !DILocation(line: 971, column: 17, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1312, file: !68, line: 971, column: 11)
!1322 = !DILocation(line: 971, column: 11, scope: !1312)
!1323 = !DILocation(line: 972, column: 14, scope: !1321)
!1324 = !DILocation(line: 972, column: 17, scope: !1321)
!1325 = !DILocation(line: 972, column: 20, scope: !1321)
!1326 = !DILocation(line: 972, column: 9, scope: !1321)
!1327 = !DILocation(line: 974, column: 18, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1321, file: !68, line: 974, column: 13)
!1329 = !DILocation(line: 974, column: 13, scope: !1321)
!1330 = !DILocation(line: 975, column: 16, scope: !1328)
!1331 = !DILocation(line: 975, column: 19, scope: !1328)
!1332 = !DILocation(line: 975, column: 22, scope: !1328)
!1333 = !DILocation(line: 975, column: 11, scope: !1328)
!1334 = !DILocation(line: 976, column: 10, scope: !1277)
!1335 = !DILocation(line: 976, column: 7, scope: !1277)
!1336 = !DILocation(line: 977, column: 23, scope: !1277)
!1337 = !DILocation(line: 977, column: 10, scope: !1277)
!1338 = !DILocation(line: 978, column: 42, scope: !1277)
!1339 = !DILocation(line: 978, column: 33, scope: !1277)
!1340 = !DILocation(line: 978, column: 44, scope: !1277)
!1341 = !DILocation(line: 978, column: 21, scope: !1277)
!1342 = !DILocation(line: 978, column: 8, scope: !1277)
!1343 = !DILocation(line: 979, column: 1, scope: !1277)
!1344 = distinct !DISubprogram(name: "ConvertRGBToHSB", scope: !68, file: !68, line: 1009, type: !1194, scopeLine: 1011, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1345)
!1345 = !{!1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357}
!1346 = !DILocalVariable(name: "red", arg: 1, scope: !1344, file: !68, line: 1009, type: !1196)
!1347 = !DILocalVariable(name: "green", arg: 2, scope: !1344, file: !68, line: 1009, type: !1196)
!1348 = !DILocalVariable(name: "blue", arg: 3, scope: !1344, file: !68, line: 1010, type: !1196)
!1349 = !DILocalVariable(name: "hue", arg: 4, scope: !1344, file: !68, line: 1010, type: !958)
!1350 = !DILocalVariable(name: "saturation", arg: 5, scope: !1344, file: !68, line: 1010, type: !958)
!1351 = !DILocalVariable(name: "brightness", arg: 6, scope: !1344, file: !68, line: 1010, type: !958)
!1352 = !DILocalVariable(name: "b", scope: !1344, file: !68, line: 1013, type: !48)
!1353 = !DILocalVariable(name: "delta", scope: !1344, file: !68, line: 1014, type: !48)
!1354 = !DILocalVariable(name: "g", scope: !1344, file: !68, line: 1015, type: !48)
!1355 = !DILocalVariable(name: "max", scope: !1344, file: !68, line: 1016, type: !48)
!1356 = !DILocalVariable(name: "min", scope: !1344, file: !68, line: 1017, type: !48)
!1357 = !DILocalVariable(name: "r", scope: !1344, file: !68, line: 1018, type: !48)
!1358 = !DILocation(line: 0, scope: !1344)
!1359 = !DILocation(line: 1026, column: 7, scope: !1344)
!1360 = !DILocation(line: 1027, column: 14, scope: !1344)
!1361 = !DILocation(line: 1028, column: 14, scope: !1344)
!1362 = !DILocation(line: 1029, column: 5, scope: !1344)
!1363 = !DILocation(line: 1030, column: 5, scope: !1344)
!1364 = !DILocation(line: 1031, column: 5, scope: !1344)
!1365 = !DILocation(line: 1032, column: 9, scope: !1344)
!1366 = !DILocation(line: 1032, column: 7, scope: !1344)
!1367 = !DILocation(line: 1033, column: 9, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1344, file: !68, line: 1033, column: 7)
!1369 = !DILocation(line: 1033, column: 7, scope: !1344)
!1370 = !DILocation(line: 1034, column: 5, scope: !1368)
!1371 = !DILocation(line: 1035, column: 9, scope: !1344)
!1372 = !DILocation(line: 1035, column: 7, scope: !1344)
!1373 = !DILocation(line: 1036, column: 9, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1344, file: !68, line: 1036, column: 7)
!1375 = !DILocation(line: 1036, column: 7, scope: !1344)
!1376 = !DILocation(line: 1037, column: 5, scope: !1374)
!1377 = !DILocation(line: 1038, column: 11, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1344, file: !68, line: 1038, column: 7)
!1379 = !DILocation(line: 1038, column: 7, scope: !1344)
!1380 = !DILocation(line: 1040, column: 12, scope: !1344)
!1381 = !DILocation(line: 1041, column: 20, scope: !1344)
!1382 = !DILocation(line: 1041, column: 14, scope: !1344)
!1383 = !DILocation(line: 1042, column: 27, scope: !1344)
!1384 = !DILocation(line: 1042, column: 14, scope: !1344)
!1385 = !DILocation(line: 1043, column: 13, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1344, file: !68, line: 1043, column: 7)
!1387 = !DILocation(line: 1043, column: 7, scope: !1344)
!1388 = !DILocation(line: 1045, column: 9, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1344, file: !68, line: 1045, column: 7)
!1390 = !DILocation(line: 1045, column: 7, scope: !1344)
!1391 = !DILocation(line: 1046, column: 12, scope: !1389)
!1392 = !DILocation(line: 1046, column: 15, scope: !1389)
!1393 = !DILocation(line: 1046, column: 5, scope: !1389)
!1394 = !DILocation(line: 1048, column: 11, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1389, file: !68, line: 1048, column: 9)
!1396 = !DILocation(line: 1048, column: 9, scope: !1389)
!1397 = !DILocation(line: 1049, column: 18, scope: !1395)
!1398 = !DILocation(line: 1049, column: 21, scope: !1395)
!1399 = !DILocation(line: 1049, column: 15, scope: !1395)
!1400 = !DILocation(line: 1049, column: 7, scope: !1395)
!1401 = !DILocation(line: 1051, column: 18, scope: !1395)
!1402 = !DILocation(line: 1051, column: 21, scope: !1395)
!1403 = !DILocation(line: 1051, column: 15, scope: !1395)
!1404 = !DILocation(line: 1052, column: 7, scope: !1344)
!1405 = !DILocation(line: 1053, column: 12, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1344, file: !68, line: 1053, column: 7)
!1407 = !DILocation(line: 1053, column: 7, scope: !1344)
!1408 = !DILocation(line: 1054, column: 9, scope: !1406)
!1409 = !DILocation(line: 1054, column: 5, scope: !1406)
!1410 = !DILocation(line: 1055, column: 1, scope: !1344)
!1411 = distinct !DISubprogram(name: "ConvertRGBToHSI", scope: !68, file: !68, line: 1085, type: !1194, scopeLine: 1087, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1412)
!1412 = !{!1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420}
!1413 = !DILocalVariable(name: "red", arg: 1, scope: !1411, file: !68, line: 1085, type: !1196)
!1414 = !DILocalVariable(name: "green", arg: 2, scope: !1411, file: !68, line: 1085, type: !1196)
!1415 = !DILocalVariable(name: "blue", arg: 3, scope: !1411, file: !68, line: 1086, type: !1196)
!1416 = !DILocalVariable(name: "hue", arg: 4, scope: !1411, file: !68, line: 1086, type: !958)
!1417 = !DILocalVariable(name: "saturation", arg: 5, scope: !1411, file: !68, line: 1086, type: !958)
!1418 = !DILocalVariable(name: "intensity", arg: 6, scope: !1411, file: !68, line: 1086, type: !958)
!1419 = !DILocalVariable(name: "alpha", scope: !1411, file: !68, line: 1089, type: !48)
!1420 = !DILocalVariable(name: "beta", scope: !1411, file: !68, line: 1090, type: !48)
!1421 = !DILocation(line: 0, scope: !1411)
!1422 = !DILocation(line: 1098, column: 28, scope: !1411)
!1423 = !DILocation(line: 1098, column: 45, scope: !1411)
!1424 = !DILocation(line: 1098, column: 44, scope: !1411)
!1425 = !DILocation(line: 1098, column: 31, scope: !1411)
!1426 = !DILocation(line: 1098, column: 64, scope: !1411)
!1427 = !DILocation(line: 1098, column: 50, scope: !1411)
!1428 = !DILocation(line: 1098, column: 69, scope: !1411)
!1429 = !DILocation(line: 1098, column: 13, scope: !1411)
!1430 = !DILocation(line: 1099, column: 18, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1411, file: !68, line: 1099, column: 7)
!1432 = !DILocation(line: 1099, column: 7, scope: !1411)
!1433 = !DILocation(line: 1101, column: 11, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1431, file: !68, line: 1100, column: 5)
!1435 = !DILocation(line: 1102, column: 18, scope: !1434)
!1436 = !DILocation(line: 1103, column: 7, scope: !1434)
!1437 = !DILocation(line: 1105, column: 41, scope: !1411)
!1438 = !DILocation(line: 1106, column: 17, scope: !1411)
!1439 = !DILocation(line: 0, scope: !1228, inlinedAt: !1440)
!1440 = distinct !DILocation(line: 1105, column: 46, scope: !1411)
!1441 = !DILocation(line: 870, column: 9, scope: !1234, inlinedAt: !1440)
!1442 = !DILocation(line: 0, scope: !1228, inlinedAt: !1443)
!1443 = distinct !DILocation(line: 1105, column: 19, scope: !1411)
!1444 = !DILocation(line: 870, column: 9, scope: !1234, inlinedAt: !1443)
!1445 = !DILocation(line: 1106, column: 24, scope: !1411)
!1446 = !DILocation(line: 1105, column: 18, scope: !1411)
!1447 = !DILocation(line: 1105, column: 14, scope: !1411)
!1448 = !DILocation(line: 1107, column: 34, scope: !1411)
!1449 = !DILocation(line: 1107, column: 53, scope: !1411)
!1450 = !DILocation(line: 1107, column: 12, scope: !1411)
!1451 = !DILocation(line: 1108, column: 46, scope: !1411)
!1452 = !DILocation(line: 1108, column: 26, scope: !1411)
!1453 = !DILocation(line: 1109, column: 8, scope: !1411)
!1454 = !DILocation(line: 1109, column: 25, scope: !1411)
!1455 = !DILocation(line: 1109, column: 42, scope: !1411)
!1456 = !DILocation(line: 1110, column: 12, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1411, file: !68, line: 1110, column: 7)
!1458 = !DILocation(line: 1110, column: 7, scope: !1411)
!1459 = !DILocation(line: 1111, column: 9, scope: !1457)
!1460 = !DILocation(line: 1111, column: 5, scope: !1457)
!1461 = !DILocation(line: 1112, column: 1, scope: !1411)
!1462 = distinct !DISubprogram(name: "ConvertRGBToHSL", scope: !68, file: !68, line: 1142, type: !1194, scopeLine: 1144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1463)
!1463 = !{!1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472}
!1464 = !DILocalVariable(name: "red", arg: 1, scope: !1462, file: !68, line: 1142, type: !1196)
!1465 = !DILocalVariable(name: "green", arg: 2, scope: !1462, file: !68, line: 1142, type: !1196)
!1466 = !DILocalVariable(name: "blue", arg: 3, scope: !1462, file: !68, line: 1143, type: !1196)
!1467 = !DILocalVariable(name: "hue", arg: 4, scope: !1462, file: !68, line: 1143, type: !958)
!1468 = !DILocalVariable(name: "saturation", arg: 5, scope: !1462, file: !68, line: 1143, type: !958)
!1469 = !DILocalVariable(name: "lightness", arg: 6, scope: !1462, file: !68, line: 1143, type: !958)
!1470 = !DILocalVariable(name: "c", scope: !1462, file: !68, line: 1146, type: !48)
!1471 = !DILocalVariable(name: "max", scope: !1462, file: !68, line: 1147, type: !48)
!1472 = !DILocalVariable(name: "min", scope: !1462, file: !68, line: 1148, type: !48)
!1473 = !DILocation(line: 0, scope: !1462)
!1474 = !DILocation(line: 1156, column: 30, scope: !1462)
!1475 = !DILocation(line: 1156, column: 29, scope: !1462)
!1476 = !DILocation(line: 1156, column: 57, scope: !1462)
!1477 = !DILocation(line: 1156, column: 56, scope: !1462)
!1478 = !DILocation(line: 1157, column: 18, scope: !1462)
!1479 = !DILocation(line: 1157, column: 17, scope: !1462)
!1480 = !DILocation(line: 0, scope: !1215, inlinedAt: !1481)
!1481 = distinct !DILocation(line: 1156, column: 34, scope: !1462)
!1482 = !DILocation(line: 863, column: 9, scope: !1223, inlinedAt: !1481)
!1483 = !DILocation(line: 0, scope: !1215, inlinedAt: !1484)
!1484 = distinct !DILocation(line: 1156, column: 7, scope: !1462)
!1485 = !DILocation(line: 863, column: 9, scope: !1223, inlinedAt: !1484)
!1486 = !DILocation(line: 0, scope: !1228, inlinedAt: !1487)
!1487 = distinct !DILocation(line: 1158, column: 34, scope: !1462)
!1488 = !DILocation(line: 870, column: 9, scope: !1234, inlinedAt: !1487)
!1489 = !DILocation(line: 0, scope: !1228, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 1158, column: 7, scope: !1462)
!1491 = !DILocation(line: 870, column: 9, scope: !1234, inlinedAt: !1490)
!1492 = !DILocation(line: 1160, column: 8, scope: !1462)
!1493 = !DILocation(line: 1161, column: 18, scope: !1462)
!1494 = !DILocation(line: 1161, column: 23, scope: !1462)
!1495 = !DILocation(line: 1161, column: 13, scope: !1462)
!1496 = !DILocation(line: 1162, column: 9, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1462, file: !68, line: 1162, column: 7)
!1498 = !DILocation(line: 1162, column: 7, scope: !1462)
!1499 = !DILocation(line: 1164, column: 11, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1497, file: !68, line: 1163, column: 5)
!1501 = !DILocation(line: 1166, column: 7, scope: !1500)
!1502 = !DILocation(line: 1168, column: 11, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1462, file: !68, line: 1168, column: 7)
!1504 = !DILocation(line: 1168, column: 7, scope: !1462)
!1505 = !DILocation(line: 1170, column: 31, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1503, file: !68, line: 1169, column: 5)
!1507 = !DILocation(line: 1170, column: 50, scope: !1506)
!1508 = !DILocation(line: 1171, column: 11, scope: !1506)
!1509 = !DILocation(line: 1172, column: 13, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1506, file: !68, line: 1171, column: 11)
!1511 = !DILocation(line: 1172, column: 9, scope: !1510)
!1512 = !DILocation(line: 1175, column: 13, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1503, file: !68, line: 1175, column: 9)
!1514 = !DILocation(line: 1175, column: 9, scope: !1503)
!1515 = !DILocation(line: 1176, column: 34, scope: !1513)
!1516 = !DILocation(line: 1176, column: 52, scope: !1513)
!1517 = !DILocation(line: 1176, column: 15, scope: !1513)
!1518 = !DILocation(line: 1176, column: 7, scope: !1513)
!1519 = !DILocation(line: 1178, column: 33, scope: !1513)
!1520 = !DILocation(line: 1178, column: 53, scope: !1513)
!1521 = !DILocation(line: 1178, column: 15, scope: !1513)
!1522 = !DILocation(line: 1179, column: 7, scope: !1462)
!1523 = !DILocation(line: 1180, column: 7, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1462, file: !68, line: 1180, column: 7)
!1525 = !DILocation(line: 1180, column: 18, scope: !1524)
!1526 = !DILocation(line: 1180, column: 7, scope: !1462)
!1527 = !DILocation(line: 1181, column: 23, scope: !1524)
!1528 = !DILocation(line: 1181, column: 5, scope: !1524)
!1529 = !DILocation(line: 1183, column: 23, scope: !1524)
!1530 = !DILocation(line: 0, scope: !1524)
!1531 = !DILocation(line: 1184, column: 1, scope: !1462)
!1532 = distinct !DISubprogram(name: "ConvertRGBToHSV", scope: !68, file: !68, line: 1214, type: !1194, scopeLine: 1216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1533)
!1533 = !{!1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542}
!1534 = !DILocalVariable(name: "red", arg: 1, scope: !1532, file: !68, line: 1214, type: !1196)
!1535 = !DILocalVariable(name: "green", arg: 2, scope: !1532, file: !68, line: 1214, type: !1196)
!1536 = !DILocalVariable(name: "blue", arg: 3, scope: !1532, file: !68, line: 1215, type: !1196)
!1537 = !DILocalVariable(name: "hue", arg: 4, scope: !1532, file: !68, line: 1215, type: !958)
!1538 = !DILocalVariable(name: "saturation", arg: 5, scope: !1532, file: !68, line: 1215, type: !958)
!1539 = !DILocalVariable(name: "value", arg: 6, scope: !1532, file: !68, line: 1215, type: !958)
!1540 = !DILocalVariable(name: "c", scope: !1532, file: !68, line: 1218, type: !48)
!1541 = !DILocalVariable(name: "max", scope: !1532, file: !68, line: 1219, type: !48)
!1542 = !DILocalVariable(name: "min", scope: !1532, file: !68, line: 1220, type: !48)
!1543 = !DILocation(line: 0, scope: !1532)
!1544 = !DILocation(line: 1228, column: 30, scope: !1532)
!1545 = !DILocation(line: 1228, column: 29, scope: !1532)
!1546 = !DILocation(line: 1228, column: 57, scope: !1532)
!1547 = !DILocation(line: 1228, column: 56, scope: !1532)
!1548 = !DILocation(line: 1229, column: 18, scope: !1532)
!1549 = !DILocation(line: 1229, column: 17, scope: !1532)
!1550 = !DILocation(line: 0, scope: !1215, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 1228, column: 34, scope: !1532)
!1552 = !DILocation(line: 863, column: 9, scope: !1223, inlinedAt: !1551)
!1553 = !DILocation(line: 0, scope: !1215, inlinedAt: !1554)
!1554 = distinct !DILocation(line: 1228, column: 7, scope: !1532)
!1555 = !DILocation(line: 863, column: 9, scope: !1223, inlinedAt: !1554)
!1556 = !DILocation(line: 0, scope: !1228, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 1230, column: 34, scope: !1532)
!1558 = !DILocation(line: 870, column: 9, scope: !1234, inlinedAt: !1557)
!1559 = !DILocation(line: 0, scope: !1228, inlinedAt: !1560)
!1560 = distinct !DILocation(line: 1230, column: 7, scope: !1532)
!1561 = !DILocation(line: 870, column: 9, scope: !1234, inlinedAt: !1560)
!1562 = !DILocation(line: 1232, column: 8, scope: !1532)
!1563 = !DILocation(line: 1233, column: 9, scope: !1532)
!1564 = !DILocation(line: 1234, column: 9, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1532, file: !68, line: 1234, column: 7)
!1566 = !DILocation(line: 1234, column: 7, scope: !1532)
!1567 = !DILocation(line: 1236, column: 11, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1565, file: !68, line: 1235, column: 5)
!1569 = !DILocation(line: 1238, column: 7, scope: !1568)
!1570 = !DILocation(line: 1240, column: 11, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1532, file: !68, line: 1240, column: 7)
!1572 = !DILocation(line: 1240, column: 7, scope: !1532)
!1573 = !DILocation(line: 1242, column: 31, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1571, file: !68, line: 1241, column: 5)
!1575 = !DILocation(line: 1242, column: 50, scope: !1574)
!1576 = !DILocation(line: 1243, column: 11, scope: !1574)
!1577 = !DILocation(line: 1244, column: 13, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1574, file: !68, line: 1243, column: 11)
!1579 = !DILocation(line: 1244, column: 9, scope: !1578)
!1580 = !DILocation(line: 1247, column: 13, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1571, file: !68, line: 1247, column: 9)
!1582 = !DILocation(line: 1247, column: 9, scope: !1571)
!1583 = !DILocation(line: 1248, column: 34, scope: !1581)
!1584 = !DILocation(line: 1248, column: 52, scope: !1581)
!1585 = !DILocation(line: 1248, column: 15, scope: !1581)
!1586 = !DILocation(line: 1248, column: 7, scope: !1581)
!1587 = !DILocation(line: 1250, column: 33, scope: !1581)
!1588 = !DILocation(line: 1250, column: 53, scope: !1581)
!1589 = !DILocation(line: 1250, column: 15, scope: !1581)
!1590 = !DILocation(line: 1251, column: 7, scope: !1532)
!1591 = !DILocation(line: 1252, column: 16, scope: !1532)
!1592 = !DILocation(line: 1253, column: 1, scope: !1532)
!1593 = distinct !DISubprogram(name: "ConvertRGBToHWB", scope: !68, file: !68, line: 1283, type: !1194, scopeLine: 1285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1594)
!1594 = !{!1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607}
!1595 = !DILocalVariable(name: "red", arg: 1, scope: !1593, file: !68, line: 1283, type: !1196)
!1596 = !DILocalVariable(name: "green", arg: 2, scope: !1593, file: !68, line: 1283, type: !1196)
!1597 = !DILocalVariable(name: "blue", arg: 3, scope: !1593, file: !68, line: 1284, type: !1196)
!1598 = !DILocalVariable(name: "hue", arg: 4, scope: !1593, file: !68, line: 1284, type: !958)
!1599 = !DILocalVariable(name: "whiteness", arg: 5, scope: !1593, file: !68, line: 1284, type: !958)
!1600 = !DILocalVariable(name: "blackness", arg: 6, scope: !1593, file: !68, line: 1284, type: !958)
!1601 = !DILocalVariable(name: "b", scope: !1593, file: !68, line: 1287, type: !48)
!1602 = !DILocalVariable(name: "f", scope: !1593, file: !68, line: 1288, type: !48)
!1603 = !DILocalVariable(name: "g", scope: !1593, file: !68, line: 1289, type: !48)
!1604 = !DILocalVariable(name: "p", scope: !1593, file: !68, line: 1290, type: !48)
!1605 = !DILocalVariable(name: "r", scope: !1593, file: !68, line: 1291, type: !48)
!1606 = !DILocalVariable(name: "v", scope: !1593, file: !68, line: 1292, type: !48)
!1607 = !DILocalVariable(name: "w", scope: !1593, file: !68, line: 1293, type: !48)
!1608 = !DILocation(line: 0, scope: !1593)
!1609 = !DILocation(line: 1301, column: 5, scope: !1593)
!1610 = !DILocation(line: 1302, column: 5, scope: !1593)
!1611 = !DILocation(line: 1303, column: 5, scope: !1593)
!1612 = !DILocation(line: 0, scope: !1228, inlinedAt: !1613)
!1613 = distinct !DILocation(line: 1304, column: 17, scope: !1593)
!1614 = !DILocation(line: 870, column: 9, scope: !1234, inlinedAt: !1613)
!1615 = !DILocation(line: 0, scope: !1228, inlinedAt: !1616)
!1616 = distinct !DILocation(line: 1304, column: 5, scope: !1593)
!1617 = !DILocation(line: 870, column: 9, scope: !1234, inlinedAt: !1616)
!1618 = !DILocation(line: 0, scope: !1215, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 1305, column: 17, scope: !1593)
!1620 = !DILocation(line: 863, column: 9, scope: !1223, inlinedAt: !1619)
!1621 = !DILocation(line: 0, scope: !1215, inlinedAt: !1622)
!1622 = distinct !DILocation(line: 1305, column: 5, scope: !1593)
!1623 = !DILocation(line: 863, column: 9, scope: !1223, inlinedAt: !1622)
!1624 = !DILocation(line: 1306, column: 17, scope: !1593)
!1625 = !DILocation(line: 1306, column: 13, scope: !1593)
!1626 = !DILocation(line: 1307, column: 26, scope: !1593)
!1627 = !DILocation(line: 1307, column: 13, scope: !1593)
!1628 = !DILocation(line: 1308, column: 9, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1593, file: !68, line: 1308, column: 7)
!1630 = !DILocation(line: 1308, column: 7, scope: !1593)
!1631 = !DILocation(line: 1313, column: 8, scope: !1593)
!1632 = !DILocation(line: 1313, column: 5, scope: !1593)
!1633 = !DILocation(line: 1313, column: 26, scope: !1593)
!1634 = !DILocation(line: 1313, column: 23, scope: !1593)
!1635 = !DILocation(line: 1313, column: 35, scope: !1593)
!1636 = !DILocation(line: 1313, column: 41, scope: !1593)
!1637 = !DILocation(line: 1313, column: 17, scope: !1593)
!1638 = !DILocation(line: 1314, column: 5, scope: !1593)
!1639 = !DILocation(line: 1315, column: 15, scope: !1593)
!1640 = !DILocation(line: 1315, column: 12, scope: !1593)
!1641 = !DILocation(line: 1315, column: 10, scope: !1593)
!1642 = !DILocation(line: 1315, column: 23, scope: !1593)
!1643 = !DILocation(line: 1316, column: 1, scope: !1593)
!1644 = distinct !DISubprogram(name: "ConvertRGBToLCHab", scope: !68, file: !68, line: 1360, type: !1194, scopeLine: 1362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1645)
!1645 = !{!1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654}
!1646 = !DILocalVariable(name: "red", arg: 1, scope: !1644, file: !68, line: 1360, type: !1196)
!1647 = !DILocalVariable(name: "green", arg: 2, scope: !1644, file: !68, line: 1360, type: !1196)
!1648 = !DILocalVariable(name: "blue", arg: 3, scope: !1644, file: !68, line: 1361, type: !1196)
!1649 = !DILocalVariable(name: "luma", arg: 4, scope: !1644, file: !68, line: 1361, type: !958)
!1650 = !DILocalVariable(name: "chroma", arg: 5, scope: !1644, file: !68, line: 1361, type: !958)
!1651 = !DILocalVariable(name: "hue", arg: 6, scope: !1644, file: !68, line: 1361, type: !958)
!1652 = !DILocalVariable(name: "X", scope: !1644, file: !68, line: 1364, type: !48)
!1653 = !DILocalVariable(name: "Y", scope: !1644, file: !68, line: 1365, type: !48)
!1654 = !DILocalVariable(name: "Z", scope: !1644, file: !68, line: 1366, type: !48)
!1655 = !DILocation(line: 0, scope: !1644)
!1656 = !DILocalVariable(name: "red", arg: 1, scope: !1657, file: !975, line: 85, type: !1196)
!1657 = distinct !DISubprogram(name: "ConvertRGBToXYZ", scope: !975, file: !975, line: 85, type: !1194, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1658)
!1658 = !{!1656, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666}
!1659 = !DILocalVariable(name: "green", arg: 2, scope: !1657, file: !975, line: 85, type: !1196)
!1660 = !DILocalVariable(name: "blue", arg: 3, scope: !1657, file: !975, line: 86, type: !1196)
!1661 = !DILocalVariable(name: "X", arg: 4, scope: !1657, file: !975, line: 86, type: !958)
!1662 = !DILocalVariable(name: "Y", arg: 5, scope: !1657, file: !975, line: 86, type: !958)
!1663 = !DILocalVariable(name: "Z", arg: 6, scope: !1657, file: !975, line: 86, type: !958)
!1664 = !DILocalVariable(name: "b", scope: !1657, file: !975, line: 89, type: !48)
!1665 = !DILocalVariable(name: "g", scope: !1657, file: !975, line: 90, type: !48)
!1666 = !DILocalVariable(name: "r", scope: !1657, file: !975, line: 91, type: !48)
!1667 = !DILocation(line: 0, scope: !1657, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 1374, column: 3, scope: !1644)
!1669 = !DILocation(line: 96, column: 35, scope: !1657, inlinedAt: !1668)
!1670 = !DILocation(line: 96, column: 18, scope: !1657, inlinedAt: !1668)
!1671 = !DILocation(line: 96, column: 17, scope: !1657, inlinedAt: !1668)
!1672 = !DILocation(line: 97, column: 35, scope: !1657, inlinedAt: !1668)
!1673 = !DILocation(line: 97, column: 18, scope: !1657, inlinedAt: !1668)
!1674 = !DILocation(line: 97, column: 17, scope: !1657, inlinedAt: !1668)
!1675 = !DILocation(line: 98, column: 35, scope: !1657, inlinedAt: !1668)
!1676 = !DILocation(line: 98, column: 18, scope: !1657, inlinedAt: !1668)
!1677 = !DILocation(line: 98, column: 17, scope: !1657, inlinedAt: !1668)
!1678 = !DILocation(line: 99, column: 53, scope: !1657, inlinedAt: !1668)
!1679 = !DILocation(line: 99, column: 30, scope: !1657, inlinedAt: !1668)
!1680 = !DILocation(line: 99, column: 55, scope: !1657, inlinedAt: !1668)
!1681 = !DILocation(line: 100, column: 53, scope: !1657, inlinedAt: !1668)
!1682 = !DILocation(line: 100, column: 30, scope: !1657, inlinedAt: !1668)
!1683 = !DILocation(line: 100, column: 55, scope: !1657, inlinedAt: !1668)
!1684 = !DILocation(line: 101, column: 53, scope: !1657, inlinedAt: !1668)
!1685 = !DILocation(line: 101, column: 30, scope: !1657, inlinedAt: !1668)
!1686 = !DILocation(line: 101, column: 55, scope: !1657, inlinedAt: !1668)
!1687 = !DILocalVariable(name: "X", arg: 1, scope: !1688, file: !68, line: 1346, type: !71)
!1688 = distinct !DISubprogram(name: "ConvertXYZToLCHab", scope: !68, file: !68, line: 1346, type: !956, scopeLine: 1348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1689)
!1689 = !{!1687, !1690, !1691, !1692, !1693, !1694, !1695, !1696}
!1690 = !DILocalVariable(name: "Y", arg: 2, scope: !1688, file: !68, line: 1346, type: !71)
!1691 = !DILocalVariable(name: "Z", arg: 3, scope: !1688, file: !68, line: 1347, type: !71)
!1692 = !DILocalVariable(name: "luma", arg: 4, scope: !1688, file: !68, line: 1347, type: !958)
!1693 = !DILocalVariable(name: "chroma", arg: 5, scope: !1688, file: !68, line: 1347, type: !958)
!1694 = !DILocalVariable(name: "hue", arg: 6, scope: !1688, file: !68, line: 1347, type: !958)
!1695 = !DILocalVariable(name: "a", scope: !1688, file: !68, line: 1350, type: !48)
!1696 = !DILocalVariable(name: "b", scope: !1688, file: !68, line: 1351, type: !48)
!1697 = !DILocation(line: 0, scope: !1688, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 1375, column: 3, scope: !1644)
!1699 = !DILocalVariable(name: "X", arg: 1, scope: !1700, file: !975, line: 104, type: !71)
!1700 = distinct !DISubprogram(name: "ConvertXYZToLab", scope: !975, file: !975, line: 104, type: !956, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1701)
!1701 = !{!1699, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709}
!1702 = !DILocalVariable(name: "Y", arg: 2, scope: !1700, file: !975, line: 104, type: !71)
!1703 = !DILocalVariable(name: "Z", arg: 3, scope: !1700, file: !975, line: 104, type: !71)
!1704 = !DILocalVariable(name: "L", arg: 4, scope: !1700, file: !975, line: 105, type: !958)
!1705 = !DILocalVariable(name: "a", arg: 5, scope: !1700, file: !975, line: 105, type: !958)
!1706 = !DILocalVariable(name: "b", arg: 6, scope: !1700, file: !975, line: 105, type: !958)
!1707 = !DILocalVariable(name: "x", scope: !1700, file: !975, line: 108, type: !48)
!1708 = !DILocalVariable(name: "y", scope: !1700, file: !975, line: 109, type: !48)
!1709 = !DILocalVariable(name: "z", scope: !1700, file: !975, line: 110, type: !48)
!1710 = !DILocation(line: 0, scope: !1700, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 1353, column: 3, scope: !1688, inlinedAt: !1698)
!1712 = !DILocation(line: 115, column: 9, scope: !1713, inlinedAt: !1711)
!1713 = distinct !DILexicalBlock(scope: !1700, file: !975, line: 115, column: 7)
!1714 = !DILocation(line: 115, column: 16, scope: !1713, inlinedAt: !1711)
!1715 = !DILocation(line: 115, column: 7, scope: !1700, inlinedAt: !1711)
!1716 = !DILocation(line: 116, column: 7, scope: !1713, inlinedAt: !1711)
!1717 = !DILocation(line: 116, column: 5, scope: !1713, inlinedAt: !1711)
!1718 = !DILocation(line: 118, column: 12, scope: !1713, inlinedAt: !1711)
!1719 = !DILocation(line: 118, column: 14, scope: !1713, inlinedAt: !1711)
!1720 = !DILocation(line: 118, column: 19, scope: !1713, inlinedAt: !1711)
!1721 = !DILocation(line: 118, column: 25, scope: !1713, inlinedAt: !1711)
!1722 = !DILocation(line: 0, scope: !1713, inlinedAt: !1711)
!1723 = !DILocation(line: 119, column: 16, scope: !1724, inlinedAt: !1711)
!1724 = distinct !DILexicalBlock(scope: !1700, file: !975, line: 119, column: 7)
!1725 = !DILocation(line: 119, column: 7, scope: !1700, inlinedAt: !1711)
!1726 = !DILocation(line: 120, column: 7, scope: !1724, inlinedAt: !1711)
!1727 = !DILocation(line: 120, column: 5, scope: !1724, inlinedAt: !1711)
!1728 = !DILocation(line: 122, column: 12, scope: !1724, inlinedAt: !1711)
!1729 = !DILocation(line: 122, column: 19, scope: !1724, inlinedAt: !1711)
!1730 = !DILocation(line: 122, column: 25, scope: !1724, inlinedAt: !1711)
!1731 = !DILocation(line: 0, scope: !1724, inlinedAt: !1711)
!1732 = !DILocation(line: 123, column: 9, scope: !1733, inlinedAt: !1711)
!1733 = distinct !DILexicalBlock(scope: !1700, file: !975, line: 123, column: 7)
!1734 = !DILocation(line: 123, column: 16, scope: !1733, inlinedAt: !1711)
!1735 = !DILocation(line: 123, column: 7, scope: !1700, inlinedAt: !1711)
!1736 = !DILocation(line: 124, column: 7, scope: !1733, inlinedAt: !1711)
!1737 = !DILocation(line: 124, column: 5, scope: !1733, inlinedAt: !1711)
!1738 = !DILocation(line: 126, column: 12, scope: !1733, inlinedAt: !1711)
!1739 = !DILocation(line: 126, column: 14, scope: !1733, inlinedAt: !1711)
!1740 = !DILocation(line: 126, column: 19, scope: !1733, inlinedAt: !1711)
!1741 = !DILocation(line: 126, column: 25, scope: !1733, inlinedAt: !1711)
!1742 = !DILocation(line: 0, scope: !1733, inlinedAt: !1711)
!1743 = !DILocation(line: 127, column: 16, scope: !1700, inlinedAt: !1711)
!1744 = !DILocation(line: 127, column: 22, scope: !1700, inlinedAt: !1711)
!1745 = !DILocation(line: 127, column: 5, scope: !1700, inlinedAt: !1711)
!1746 = !DILocation(line: 128, column: 15, scope: !1700, inlinedAt: !1711)
!1747 = !DILocation(line: 128, column: 12, scope: !1700, inlinedAt: !1711)
!1748 = !DILocation(line: 128, column: 19, scope: !1700, inlinedAt: !1711)
!1749 = !DILocation(line: 128, column: 25, scope: !1700, inlinedAt: !1711)
!1750 = !DILocation(line: 129, column: 15, scope: !1700, inlinedAt: !1711)
!1751 = !DILocation(line: 129, column: 12, scope: !1700, inlinedAt: !1711)
!1752 = !DILocation(line: 129, column: 19, scope: !1700, inlinedAt: !1711)
!1753 = !DILocation(line: 129, column: 25, scope: !1700, inlinedAt: !1711)
!1754 = !DILocation(line: 1354, column: 25, scope: !1688, inlinedAt: !1698)
!1755 = !DILocation(line: 1354, column: 22, scope: !1688, inlinedAt: !1698)
!1756 = !DILocation(line: 1354, column: 39, scope: !1688, inlinedAt: !1698)
!1757 = !DILocation(line: 1354, column: 36, scope: !1688, inlinedAt: !1698)
!1758 = !DILocation(line: 1354, column: 11, scope: !1688, inlinedAt: !1698)
!1759 = !DILocation(line: 1354, column: 45, scope: !1688, inlinedAt: !1698)
!1760 = !DILocation(line: 1354, column: 51, scope: !1688, inlinedAt: !1698)
!1761 = !DILocation(line: 1354, column: 10, scope: !1688, inlinedAt: !1698)
!1762 = !DILocation(line: 1355, column: 14, scope: !1688, inlinedAt: !1698)
!1763 = !DILocation(line: 1355, column: 13, scope: !1688, inlinedAt: !1698)
!1764 = !DILocation(line: 1355, column: 48, scope: !1688, inlinedAt: !1698)
!1765 = !DILocation(line: 1355, column: 57, scope: !1688, inlinedAt: !1698)
!1766 = !DILocation(line: 1356, column: 12, scope: !1767, inlinedAt: !1698)
!1767 = distinct !DILexicalBlock(scope: !1688, file: !68, line: 1356, column: 7)
!1768 = !DILocation(line: 1356, column: 7, scope: !1688, inlinedAt: !1698)
!1769 = !DILocation(line: 1357, column: 9, scope: !1767, inlinedAt: !1698)
!1770 = !DILocation(line: 1357, column: 5, scope: !1767, inlinedAt: !1698)
!1771 = !DILocation(line: 1376, column: 1, scope: !1644)
!1772 = distinct !DISubprogram(name: "ConvertRGBToLCHuv", scope: !68, file: !68, line: 1421, type: !1194, scopeLine: 1423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1773)
!1773 = !{!1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782}
!1774 = !DILocalVariable(name: "red", arg: 1, scope: !1772, file: !68, line: 1421, type: !1196)
!1775 = !DILocalVariable(name: "green", arg: 2, scope: !1772, file: !68, line: 1421, type: !1196)
!1776 = !DILocalVariable(name: "blue", arg: 3, scope: !1772, file: !68, line: 1422, type: !1196)
!1777 = !DILocalVariable(name: "luma", arg: 4, scope: !1772, file: !68, line: 1422, type: !958)
!1778 = !DILocalVariable(name: "chroma", arg: 5, scope: !1772, file: !68, line: 1422, type: !958)
!1779 = !DILocalVariable(name: "hue", arg: 6, scope: !1772, file: !68, line: 1422, type: !958)
!1780 = !DILocalVariable(name: "X", scope: !1772, file: !68, line: 1425, type: !48)
!1781 = !DILocalVariable(name: "Y", scope: !1772, file: !68, line: 1426, type: !48)
!1782 = !DILocalVariable(name: "Z", scope: !1772, file: !68, line: 1427, type: !48)
!1783 = !DILocation(line: 0, scope: !1772)
!1784 = !DILocation(line: 0, scope: !1657, inlinedAt: !1785)
!1785 = distinct !DILocation(line: 1435, column: 3, scope: !1772)
!1786 = !DILocation(line: 96, column: 35, scope: !1657, inlinedAt: !1785)
!1787 = !DILocation(line: 96, column: 18, scope: !1657, inlinedAt: !1785)
!1788 = !DILocation(line: 96, column: 17, scope: !1657, inlinedAt: !1785)
!1789 = !DILocation(line: 97, column: 35, scope: !1657, inlinedAt: !1785)
!1790 = !DILocation(line: 97, column: 18, scope: !1657, inlinedAt: !1785)
!1791 = !DILocation(line: 97, column: 17, scope: !1657, inlinedAt: !1785)
!1792 = !DILocation(line: 98, column: 35, scope: !1657, inlinedAt: !1785)
!1793 = !DILocation(line: 98, column: 18, scope: !1657, inlinedAt: !1785)
!1794 = !DILocation(line: 98, column: 17, scope: !1657, inlinedAt: !1785)
!1795 = !DILocation(line: 99, column: 53, scope: !1657, inlinedAt: !1785)
!1796 = !DILocation(line: 99, column: 30, scope: !1657, inlinedAt: !1785)
!1797 = !DILocation(line: 99, column: 55, scope: !1657, inlinedAt: !1785)
!1798 = !DILocation(line: 100, column: 53, scope: !1657, inlinedAt: !1785)
!1799 = !DILocation(line: 100, column: 30, scope: !1657, inlinedAt: !1785)
!1800 = !DILocation(line: 100, column: 55, scope: !1657, inlinedAt: !1785)
!1801 = !DILocation(line: 101, column: 53, scope: !1657, inlinedAt: !1785)
!1802 = !DILocation(line: 101, column: 30, scope: !1657, inlinedAt: !1785)
!1803 = !DILocation(line: 101, column: 55, scope: !1657, inlinedAt: !1785)
!1804 = !DILocalVariable(name: "X", arg: 1, scope: !1805, file: !68, line: 1407, type: !71)
!1805 = distinct !DISubprogram(name: "ConvertXYZToLCHuv", scope: !68, file: !68, line: 1407, type: !956, scopeLine: 1409, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1806)
!1806 = !{!1804, !1807, !1808, !1809, !1810, !1811, !1812, !1813}
!1807 = !DILocalVariable(name: "Y", arg: 2, scope: !1805, file: !68, line: 1407, type: !71)
!1808 = !DILocalVariable(name: "Z", arg: 3, scope: !1805, file: !68, line: 1408, type: !71)
!1809 = !DILocalVariable(name: "luma", arg: 4, scope: !1805, file: !68, line: 1408, type: !958)
!1810 = !DILocalVariable(name: "chroma", arg: 5, scope: !1805, file: !68, line: 1408, type: !958)
!1811 = !DILocalVariable(name: "hue", arg: 6, scope: !1805, file: !68, line: 1408, type: !958)
!1812 = !DILocalVariable(name: "u", scope: !1805, file: !68, line: 1411, type: !48)
!1813 = !DILocalVariable(name: "v", scope: !1805, file: !68, line: 1412, type: !48)
!1814 = !DILocation(line: 0, scope: !1805, inlinedAt: !1815)
!1815 = distinct !DILocation(line: 1436, column: 3, scope: !1772)
!1816 = !DILocalVariable(name: "X", arg: 1, scope: !1817, file: !975, line: 64, type: !71)
!1817 = distinct !DISubprogram(name: "ConvertXYZToLuv", scope: !975, file: !975, line: 64, type: !956, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1818)
!1818 = !{!1816, !1819, !1820, !1821, !1822, !1823, !1824}
!1819 = !DILocalVariable(name: "Y", arg: 2, scope: !1817, file: !975, line: 64, type: !71)
!1820 = !DILocalVariable(name: "Z", arg: 3, scope: !1817, file: !975, line: 64, type: !71)
!1821 = !DILocalVariable(name: "L", arg: 4, scope: !1817, file: !975, line: 65, type: !958)
!1822 = !DILocalVariable(name: "u", arg: 5, scope: !1817, file: !975, line: 65, type: !958)
!1823 = !DILocalVariable(name: "v", arg: 6, scope: !1817, file: !975, line: 65, type: !958)
!1824 = !DILocalVariable(name: "alpha", scope: !1817, file: !975, line: 68, type: !48)
!1825 = !DILocation(line: 0, scope: !1817, inlinedAt: !1826)
!1826 = distinct !DILocation(line: 1414, column: 3, scope: !1805, inlinedAt: !1815)
!1827 = !DILocation(line: 73, column: 16, scope: !1828, inlinedAt: !1826)
!1828 = distinct !DILexicalBlock(scope: !1817, file: !975, line: 73, column: 7)
!1829 = !DILocation(line: 73, column: 7, scope: !1817, inlinedAt: !1826)
!1830 = !DILocation(line: 74, column: 24, scope: !1828, inlinedAt: !1826)
!1831 = !DILocation(line: 74, column: 43, scope: !1828, inlinedAt: !1826)
!1832 = !DILocation(line: 74, column: 5, scope: !1828, inlinedAt: !1826)
!1833 = !DILocation(line: 76, column: 12, scope: !1828, inlinedAt: !1826)
!1834 = !DILocation(line: 0, scope: !1828, inlinedAt: !1826)
!1835 = !DILocation(line: 77, column: 32, scope: !1817, inlinedAt: !1826)
!1836 = !DILocation(line: 77, column: 39, scope: !1817, inlinedAt: !1826)
!1837 = !DILocalVariable(name: "x", arg: 1, scope: !1838, file: !1839, line: 78, type: !71)
!1838 = distinct !DISubprogram(name: "PerceptibleReciprocal", scope: !1839, file: !1839, line: 78, type: !1840, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1842)
!1839 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d0543784df06457407bc99b9890f8aaf")
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!48, !71}
!1842 = !{!1837, !1843}
!1843 = !DILocalVariable(name: "sign", scope: !1838, file: !1839, line: 81, type: !48)
!1844 = !DILocation(line: 0, scope: !1838, inlinedAt: !1845)
!1845 = distinct !DILocation(line: 77, column: 9, scope: !1817, inlinedAt: !1826)
!1846 = !DILocation(line: 86, column: 10, scope: !1838, inlinedAt: !1845)
!1847 = !DILocation(line: 86, column: 8, scope: !1838, inlinedAt: !1845)
!1848 = !DILocation(line: 87, column: 12, scope: !1849, inlinedAt: !1845)
!1849 = distinct !DILexicalBlock(scope: !1838, file: !1839, line: 87, column: 7)
!1850 = !DILocation(line: 87, column: 16, scope: !1849, inlinedAt: !1845)
!1851 = !DILocation(line: 87, column: 7, scope: !1838, inlinedAt: !1845)
!1852 = !DILocation(line: 88, column: 15, scope: !1849, inlinedAt: !1845)
!1853 = !DILocation(line: 88, column: 5, scope: !1849, inlinedAt: !1845)
!1854 = !DILocation(line: 89, column: 14, scope: !1838, inlinedAt: !1845)
!1855 = !DILocation(line: 89, column: 3, scope: !1838, inlinedAt: !1845)
!1856 = !DILocation(line: 78, column: 10, scope: !1817, inlinedAt: !1826)
!1857 = !DILocation(line: 78, column: 21, scope: !1817, inlinedAt: !1826)
!1858 = !DILocation(line: 78, column: 30, scope: !1817, inlinedAt: !1826)
!1859 = !DILocation(line: 78, column: 15, scope: !1817, inlinedAt: !1826)
!1860 = !DILocation(line: 79, column: 21, scope: !1817, inlinedAt: !1826)
!1861 = !DILocation(line: 79, column: 30, scope: !1817, inlinedAt: !1826)
!1862 = !DILocation(line: 79, column: 15, scope: !1817, inlinedAt: !1826)
!1863 = !DILocation(line: 80, column: 5, scope: !1817, inlinedAt: !1826)
!1864 = !DILocation(line: 81, column: 9, scope: !1817, inlinedAt: !1826)
!1865 = !DILocation(line: 81, column: 16, scope: !1817, inlinedAt: !1826)
!1866 = !DILocation(line: 82, column: 9, scope: !1817, inlinedAt: !1826)
!1867 = !DILocation(line: 82, column: 16, scope: !1817, inlinedAt: !1826)
!1868 = !DILocation(line: 1415, column: 24, scope: !1805, inlinedAt: !1815)
!1869 = !DILocation(line: 1415, column: 38, scope: !1805, inlinedAt: !1815)
!1870 = !DILocation(line: 1415, column: 11, scope: !1805, inlinedAt: !1815)
!1871 = !DILocation(line: 1415, column: 45, scope: !1805, inlinedAt: !1815)
!1872 = !DILocation(line: 1415, column: 51, scope: !1805, inlinedAt: !1815)
!1873 = !DILocation(line: 1415, column: 10, scope: !1805, inlinedAt: !1815)
!1874 = !DILocation(line: 1416, column: 14, scope: !1805, inlinedAt: !1815)
!1875 = !DILocation(line: 1416, column: 13, scope: !1805, inlinedAt: !1815)
!1876 = !DILocation(line: 1416, column: 48, scope: !1805, inlinedAt: !1815)
!1877 = !DILocation(line: 1416, column: 57, scope: !1805, inlinedAt: !1815)
!1878 = !DILocation(line: 1417, column: 12, scope: !1879, inlinedAt: !1815)
!1879 = distinct !DILexicalBlock(scope: !1805, file: !68, line: 1417, column: 7)
!1880 = !DILocation(line: 1417, column: 7, scope: !1805, inlinedAt: !1815)
!1881 = !DILocation(line: 1418, column: 9, scope: !1879, inlinedAt: !1815)
!1882 = !DILocation(line: 1418, column: 5, scope: !1879, inlinedAt: !1815)
!1883 = !DILocation(line: 1437, column: 1, scope: !1772)
!1884 = distinct !DISubprogram(name: "ExpandAffine", scope: !68, file: !68, line: 1466, type: !1885, scopeLine: 1467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1899)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!48, !1887}
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1889)
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "AffineMatrix", file: !1890, line: 102, baseType: !1891)
!1890 = !DIFile(filename: "apps/538.imagick_r/src/magick/geometry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "889bed117eb2a2fce6e2622bd130bcd2")
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_AffineMatrix", file: !1890, line: 93, size: 384, elements: !1892)
!1892 = !{!1893, !1894, !1895, !1896, !1897, !1898}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !1891, file: !1890, line: 96, baseType: !48, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "rx", scope: !1891, file: !1890, line: 97, baseType: !48, size: 64, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "ry", scope: !1891, file: !1890, line: 98, baseType: !48, size: 64, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !1891, file: !1890, line: 99, baseType: !48, size: 64, offset: 192)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "tx", scope: !1891, file: !1890, line: 100, baseType: !48, size: 64, offset: 256)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "ty", scope: !1891, file: !1890, line: 101, baseType: !48, size: 64, offset: 320)
!1899 = !{!1900}
!1900 = !DILocalVariable(name: "affine", arg: 1, scope: !1884, file: !68, line: 1466, type: !1887)
!1901 = !DILocation(line: 0, scope: !1884)
!1902 = !DILocation(line: 1469, column: 28, scope: !1884)
!1903 = !{!1904, !1268, i64 0}
!1904 = !{!"_AffineMatrix", !1268, i64 0, !1268, i64 8, !1268, i64 16, !1268, i64 24, !1268, i64 32, !1268, i64 40}
!1905 = !DILocation(line: 1469, column: 39, scope: !1884)
!1906 = !{!1904, !1268, i64 24}
!1907 = !DILocation(line: 1469, column: 50, scope: !1884)
!1908 = !{!1904, !1268, i64 8}
!1909 = !DILocation(line: 1469, column: 61, scope: !1884)
!1910 = !{!1904, !1268, i64 16}
!1911 = !DILocation(line: 1469, column: 41, scope: !1884)
!1912 = !DILocation(line: 1469, column: 15, scope: !1884)
!1913 = !DILocation(line: 1469, column: 10, scope: !1884)
!1914 = !DILocation(line: 1469, column: 3, scope: !1884)
!1915 = distinct !DISubprogram(name: "GenerateDifferentialNoise", scope: !68, file: !68, line: 1502, type: !1916, scopeLine: 1504, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1924)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!48, !1918, !1196, !1922, !124}
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "RandomInfo", file: !1920, line: 31, baseType: !1921)
!1920 = !DIFile(filename: "apps/538.imagick_r/src/magick/random_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "95f31caf92e8a7cab5b1bf8cc3698f31")
!1921 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RandomInfo", file: !1920, line: 30, flags: DIFlagFwdDecl)
!1922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1923)
!1923 = !DIDerivedType(tag: DW_TAG_typedef, name: "NoiseType", file: !4, line: 37, baseType: !3)
!1924 = !{!1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1936, !1937, !1939}
!1925 = !DILocalVariable(name: "random_info", arg: 1, scope: !1915, file: !68, line: 1502, type: !1918)
!1926 = !DILocalVariable(name: "pixel", arg: 2, scope: !1915, file: !68, line: 1503, type: !1196)
!1927 = !DILocalVariable(name: "noise_type", arg: 3, scope: !1915, file: !68, line: 1503, type: !1922)
!1928 = !DILocalVariable(name: "attenuate", arg: 4, scope: !1915, file: !68, line: 1503, type: !124)
!1929 = !DILocalVariable(name: "alpha", scope: !1915, file: !68, line: 1515, type: !48)
!1930 = !DILocalVariable(name: "beta", scope: !1915, file: !68, line: 1516, type: !48)
!1931 = !DILocalVariable(name: "noise", scope: !1915, file: !68, line: 1517, type: !48)
!1932 = !DILocalVariable(name: "sigma", scope: !1915, file: !68, line: 1518, type: !48)
!1933 = !DILocalVariable(name: "gamma", scope: !1934, file: !68, line: 1532, type: !48)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !68, line: 1530, column: 5)
!1935 = distinct !DILexicalBlock(scope: !1915, file: !68, line: 1522, column: 3)
!1936 = !DILocalVariable(name: "tau", scope: !1934, file: !68, line: 1533, type: !48)
!1937 = !DILocalVariable(name: "poisson", scope: !1938, file: !68, line: 1587, type: !48)
!1938 = distinct !DILexicalBlock(scope: !1935, file: !68, line: 1585, column: 5)
!1939 = !DILocalVariable(name: "i", scope: !1938, file: !68, line: 1590, type: !50)
!1940 = !DILocation(line: 0, scope: !1915)
!1941 = !DILocation(line: 1520, column: 9, scope: !1915)
!1942 = !DILocation(line: 1521, column: 3, scope: !1915)
!1943 = !DILocation(line: 1526, column: 23, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1935, file: !68, line: 1525, column: 5)
!1945 = !DILocation(line: 1526, column: 42, scope: !1944)
!1946 = !DILocation(line: 1526, column: 41, scope: !1944)
!1947 = !DILocation(line: 1526, column: 61, scope: !1944)
!1948 = !DILocation(line: 1526, column: 28, scope: !1944)
!1949 = !DILocation(line: 1527, column: 7, scope: !1944)
!1950 = !DILocation(line: 1535, column: 17, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1934, file: !68, line: 1535, column: 11)
!1952 = !DILocation(line: 1535, column: 11, scope: !1934)
!1953 = !DILocation(line: 1536, column: 9, scope: !1951)
!1954 = !DILocation(line: 1537, column: 12, scope: !1934)
!1955 = !DILocation(line: 1538, column: 23, scope: !1934)
!1956 = !DILocation(line: 1538, column: 22, scope: !1934)
!1957 = !DILocation(line: 1538, column: 13, scope: !1934)
!1958 = !DILocation(line: 0, scope: !1934)
!1959 = !DILocation(line: 1539, column: 45, scope: !1934)
!1960 = !DILocation(line: 1539, column: 19, scope: !1934)
!1961 = !DILocation(line: 1539, column: 18, scope: !1934)
!1962 = !DILocation(line: 1540, column: 17, scope: !1934)
!1963 = !DILocation(line: 1540, column: 16, scope: !1934)
!1964 = !DILocation(line: 1541, column: 23, scope: !1934)
!1965 = !DILocation(line: 1541, column: 29, scope: !1934)
!1966 = !DILocation(line: 1541, column: 50, scope: !1934)
!1967 = !DILocation(line: 1541, column: 49, scope: !1934)
!1968 = !DILocation(line: 1541, column: 28, scope: !1934)
!1969 = !DILocation(line: 1542, column: 22, scope: !1934)
!1970 = !DILocation(line: 1542, column: 21, scope: !1934)
!1971 = !DILocation(line: 1541, column: 69, scope: !1934)
!1972 = !DILocation(line: 1547, column: 20, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !68, line: 1547, column: 11)
!1974 = distinct !DILexicalBlock(scope: !1935, file: !68, line: 1546, column: 5)
!1975 = !DILocation(line: 1547, column: 32, scope: !1973)
!1976 = !DILocation(line: 1547, column: 17, scope: !1973)
!1977 = !DILocation(line: 1547, column: 11, scope: !1974)
!1978 = !DILocation(line: 1550, column: 26, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1973, file: !68, line: 1550, column: 13)
!1980 = !DILocation(line: 1550, column: 19, scope: !1979)
!1981 = !DILocation(line: 1550, column: 13, scope: !1973)
!1982 = !DILocation(line: 1553, column: 17, scope: !1979)
!1983 = !DILocation(line: 1558, column: 17, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !68, line: 1558, column: 11)
!1985 = distinct !DILexicalBlock(scope: !1935, file: !68, line: 1557, column: 5)
!1986 = !DILocation(line: 1558, column: 11, scope: !1985)
!1987 = !DILocation(line: 1560, column: 21, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !68, line: 1560, column: 15)
!1989 = distinct !DILexicalBlock(scope: !1984, file: !68, line: 1559, column: 9)
!1990 = !DILocation(line: 1560, column: 15, scope: !1989)
!1991 = !DILocation(line: 1561, column: 29, scope: !1988)
!1992 = !DILocation(line: 1561, column: 34, scope: !1988)
!1993 = !DILocation(line: 1561, column: 19, scope: !1988)
!1994 = !DILocation(line: 1561, column: 13, scope: !1988)
!1995 = !DILocation(line: 1563, column: 29, scope: !1988)
!1996 = !DILocation(line: 1563, column: 48, scope: !1988)
!1997 = !DILocation(line: 1563, column: 47, scope: !1988)
!1998 = !DILocation(line: 1563, column: 70, scope: !1988)
!1999 = !DILocation(line: 1563, column: 63, scope: !1988)
!2000 = !DILocation(line: 1563, column: 34, scope: !1988)
!2001 = !DILocation(line: 1563, column: 77, scope: !1988)
!2002 = !DILocation(line: 1567, column: 15, scope: !1985)
!2003 = !DILocation(line: 1568, column: 16, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1985, file: !68, line: 1568, column: 11)
!2005 = !DILocation(line: 1568, column: 11, scope: !1985)
!2006 = !DILocation(line: 1569, column: 25, scope: !2004)
!2007 = !DILocation(line: 1569, column: 30, scope: !2004)
!2008 = !DILocation(line: 1569, column: 15, scope: !2004)
!2009 = !DILocation(line: 1569, column: 9, scope: !2004)
!2010 = !DILocation(line: 1571, column: 25, scope: !2004)
!2011 = !DILocation(line: 1571, column: 44, scope: !2004)
!2012 = !DILocation(line: 1571, column: 66, scope: !2004)
!2013 = !DILocation(line: 1571, column: 59, scope: !2004)
!2014 = !DILocation(line: 1571, column: 30, scope: !2004)
!2015 = !DILocation(line: 1571, column: 72, scope: !2004)
!2016 = !DILocation(line: 1577, column: 17, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !68, line: 1577, column: 11)
!2018 = distinct !DILexicalBlock(scope: !1935, file: !68, line: 1575, column: 5)
!2019 = !DILocation(line: 1577, column: 11, scope: !2018)
!2020 = !DILocation(line: 1578, column: 25, scope: !2017)
!2021 = !DILocation(line: 1578, column: 24, scope: !2017)
!2022 = !DILocation(line: 1578, column: 15, scope: !2017)
!2023 = !DILocation(line: 1578, column: 9, scope: !2017)
!2024 = !DILocation(line: 0, scope: !2018)
!2025 = !DILocation(line: 1579, column: 12, scope: !2018)
!2026 = !DILocation(line: 1580, column: 23, scope: !2018)
!2027 = !DILocation(line: 1580, column: 35, scope: !2018)
!2028 = !DILocation(line: 1580, column: 34, scope: !2018)
!2029 = !DILocation(line: 1580, column: 62, scope: !2018)
!2030 = !DILocation(line: 1581, column: 35, scope: !2018)
!2031 = !DILocation(line: 1581, column: 9, scope: !2018)
!2032 = !DILocation(line: 1580, column: 68, scope: !2018)
!2033 = !DILocation(line: 1581, column: 42, scope: !2018)
!2034 = !DILocation(line: 1580, column: 28, scope: !2018)
!2035 = !DILocation(line: 1582, column: 7, scope: !2018)
!2036 = !DILocation(line: 1592, column: 20, scope: !1938)
!2037 = !DILocation(line: 1592, column: 32, scope: !1938)
!2038 = !DILocation(line: 1592, column: 46, scope: !1938)
!2039 = !DILocation(line: 1592, column: 45, scope: !1938)
!2040 = !DILocation(line: 1592, column: 15, scope: !1938)
!2041 = !DILocation(line: 0, scope: !1938)
!2042 = !DILocation(line: 1593, column: 23, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !68, line: 1593, column: 7)
!2044 = distinct !DILexicalBlock(scope: !1938, file: !68, line: 1593, column: 7)
!2045 = !DILocation(line: 1593, column: 7, scope: !2044)
!2046 = !DILocation(line: 1595, column: 14, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2043, file: !68, line: 1594, column: 7)
!2048 = !DILocation(line: 1596, column: 14, scope: !2047)
!2049 = !DILocation(line: 1593, column: 35, scope: !2043)
!2050 = distinct !{!2050, !2045, !2051, !2052, !2053}
!2051 = !DILocation(line: 1597, column: 7, scope: !2044)
!2052 = !{!"llvm.loop.mustprogress"}
!2053 = !{!"llvm.loop.unroll.disable"}
!2054 = !DILocation(line: 1598, column: 35, scope: !1938)
!2055 = !DILocation(line: 1598, column: 37, scope: !1938)
!2056 = !DILocation(line: 1603, column: 35, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !1935, file: !68, line: 1602, column: 5)
!2058 = !DILocation(line: 1603, column: 23, scope: !2057)
!2059 = !DILocation(line: 1603, column: 47, scope: !2057)
!2060 = !DILocation(line: 1604, column: 7, scope: !2057)
!2061 = !DILocation(line: 0, scope: !1935)
!2062 = !DILocation(line: 1607, column: 3, scope: !1915)
!2063 = !DISubprogram(name: "GetPseudoRandomValue", scope: !1920, file: !1920, line: 38, type: !2064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2066)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!48, !1918}
!2066 = !{}
!2067 = distinct !DISubprogram(name: "GetOptimalKernelWidth1D", scope: !68, file: !68, line: 1637, type: !2068, scopeLine: 1639, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2070)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!56, !71, !71}
!2070 = !{!2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080}
!2071 = !DILocalVariable(name: "radius", arg: 1, scope: !2067, file: !68, line: 1637, type: !71)
!2072 = !DILocalVariable(name: "sigma", arg: 2, scope: !2067, file: !68, line: 1638, type: !71)
!2073 = !DILocalVariable(name: "alpha", scope: !2067, file: !68, line: 1641, type: !48)
!2074 = !DILocalVariable(name: "beta", scope: !2067, file: !68, line: 1642, type: !48)
!2075 = !DILocalVariable(name: "gamma", scope: !2067, file: !68, line: 1643, type: !48)
!2076 = !DILocalVariable(name: "normalize", scope: !2067, file: !68, line: 1644, type: !48)
!2077 = !DILocalVariable(name: "value", scope: !2067, file: !68, line: 1645, type: !48)
!2078 = !DILocalVariable(name: "i", scope: !2067, file: !68, line: 1648, type: !50)
!2079 = !DILocalVariable(name: "width", scope: !2067, file: !68, line: 1651, type: !56)
!2080 = !DILocalVariable(name: "j", scope: !2067, file: !68, line: 1654, type: !50)
!2081 = !DILocation(line: 0, scope: !2067)
!2082 = !DILocation(line: 1656, column: 10, scope: !2067)
!2083 = !DILocation(line: 1657, column: 14, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2067, file: !68, line: 1657, column: 7)
!2085 = !DILocation(line: 1657, column: 7, scope: !2067)
!2086 = !DILocation(line: 1658, column: 26, scope: !2084)
!2087 = !DILocation(line: 1658, column: 38, scope: !2084)
!2088 = !DILocation(line: 1658, column: 12, scope: !2084)
!2089 = !DILocation(line: 1658, column: 5, scope: !2084)
!2090 = !DILocation(line: 1659, column: 9, scope: !2067)
!2091 = !DILocation(line: 1660, column: 13, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2067, file: !68, line: 1660, column: 7)
!2093 = !DILocation(line: 1660, column: 7, scope: !2067)
!2094 = !DILocation(line: 1662, column: 34, scope: !2067)
!2095 = !DILocation(line: 1662, column: 40, scope: !2067)
!2096 = !DILocation(line: 0, scope: !1838, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 1662, column: 9, scope: !2067)
!2098 = !DILocation(line: 87, column: 16, scope: !1849, inlinedAt: !2097)
!2099 = !DILocation(line: 87, column: 7, scope: !1838, inlinedAt: !2097)
!2100 = !DILocation(line: 88, column: 15, scope: !1849, inlinedAt: !2097)
!2101 = !DILocation(line: 88, column: 5, scope: !1849, inlinedAt: !2097)
!2102 = !DILocation(line: 1663, column: 59, scope: !2067)
!2103 = !DILocation(line: 0, scope: !1838, inlinedAt: !2104)
!2104 = distinct !DILocation(line: 1663, column: 17, scope: !2067)
!2105 = !DILocation(line: 87, column: 16, scope: !1849, inlinedAt: !2104)
!2106 = !DILocation(line: 87, column: 7, scope: !1838, inlinedAt: !2104)
!2107 = !DILocation(line: 88, column: 15, scope: !1849, inlinedAt: !2104)
!2108 = !DILocation(line: 88, column: 5, scope: !1849, inlinedAt: !2104)
!2109 = !DILocation(line: 1664, column: 8, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2067, file: !68, line: 1664, column: 3)
!2111 = !DILocation(line: 0, scope: !2110)
!2112 = !DILocation(line: 1667, column: 23, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !68, line: 1665, column: 3)
!2114 = distinct !DILexicalBlock(scope: !2110, file: !68, line: 1664, column: 3)
!2115 = !DILocation(line: 1667, column: 26, scope: !2113)
!2116 = !DILocation(line: 1668, column: 20, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !68, line: 1668, column: 5)
!2118 = distinct !DILexicalBlock(scope: !2113, file: !68, line: 1668, column: 5)
!2119 = !DILocation(line: 1668, column: 5, scope: !2118)
!2120 = !DILocation(line: 1668, column: 13, scope: !2118)
!2121 = !DILocation(line: 1669, column: 35, scope: !2117)
!2122 = !DILocation(line: 1669, column: 24, scope: !2117)
!2123 = !DILocation(line: 1669, column: 22, scope: !2117)
!2124 = !DILocation(line: 1669, column: 39, scope: !2117)
!2125 = !DILocation(line: 1669, column: 18, scope: !2117)
!2126 = !DILocation(line: 1669, column: 16, scope: !2117)
!2127 = !DILocation(line: 1668, column: 27, scope: !2117)
!2128 = distinct !{!2128, !2119, !2129, !2052, !2053}
!2129 = !DILocation(line: 1669, column: 47, scope: !2118)
!2130 = !DILocation(line: 0, scope: !2113)
!2131 = !DILocation(line: 1670, column: 28, scope: !2113)
!2132 = !DILocation(line: 1670, column: 17, scope: !2113)
!2133 = !DILocation(line: 1670, column: 15, scope: !2113)
!2134 = !DILocation(line: 1670, column: 32, scope: !2113)
!2135 = !DILocation(line: 1670, column: 11, scope: !2113)
!2136 = !DILocation(line: 1670, column: 39, scope: !2113)
!2137 = !DILocation(line: 1670, column: 44, scope: !2113)
!2138 = !DILocation(line: 1671, column: 16, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2113, file: !68, line: 1671, column: 9)
!2140 = !DILocation(line: 1671, column: 32, scope: !2139)
!2141 = !DILocation(line: 1673, column: 10, scope: !2113)
!2142 = distinct !{!2142, !2143, !2144, !2053}
!2143 = !DILocation(line: 1664, column: 3, scope: !2110)
!2144 = !DILocation(line: 1674, column: 3, scope: !2110)
!2145 = !DILocation(line: 1675, column: 25, scope: !2067)
!2146 = !DILocation(line: 1675, column: 3, scope: !2067)
!2147 = !DILocation(line: 1676, column: 1, scope: !2067)
!2148 = !DISubprogram(name: "LogMagickEvent", scope: !16, file: !16, line: 83, type: !2149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2066)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!2151, !2152, !2154, !2154, !2157, !2154, null}
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !41, line: 215, baseType: !40)
!2152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2153)
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !16, line: 58, baseType: !15)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2156)
!2156 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!2157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!2158 = distinct !DISubprogram(name: "GetOptimalKernelWidth2D", scope: !68, file: !68, line: 1678, type: !2068, scopeLine: 1680, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2159)
!2159 = !{!2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170}
!2160 = !DILocalVariable(name: "radius", arg: 1, scope: !2158, file: !68, line: 1678, type: !71)
!2161 = !DILocalVariable(name: "sigma", arg: 2, scope: !2158, file: !68, line: 1679, type: !71)
!2162 = !DILocalVariable(name: "alpha", scope: !2158, file: !68, line: 1682, type: !48)
!2163 = !DILocalVariable(name: "beta", scope: !2158, file: !68, line: 1683, type: !48)
!2164 = !DILocalVariable(name: "gamma", scope: !2158, file: !68, line: 1684, type: !48)
!2165 = !DILocalVariable(name: "normalize", scope: !2158, file: !68, line: 1685, type: !48)
!2166 = !DILocalVariable(name: "value", scope: !2158, file: !68, line: 1686, type: !48)
!2167 = !DILocalVariable(name: "width", scope: !2158, file: !68, line: 1689, type: !56)
!2168 = !DILocalVariable(name: "j", scope: !2158, file: !68, line: 1692, type: !50)
!2169 = !DILocalVariable(name: "u", scope: !2158, file: !68, line: 1693, type: !50)
!2170 = !DILocalVariable(name: "v", scope: !2158, file: !68, line: 1694, type: !50)
!2171 = !DILocation(line: 0, scope: !2158)
!2172 = !DILocation(line: 1696, column: 10, scope: !2158)
!2173 = !DILocation(line: 1697, column: 14, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2158, file: !68, line: 1697, column: 7)
!2175 = !DILocation(line: 1697, column: 7, scope: !2158)
!2176 = !DILocation(line: 1698, column: 26, scope: !2174)
!2177 = !DILocation(line: 1698, column: 38, scope: !2174)
!2178 = !DILocation(line: 1698, column: 12, scope: !2174)
!2179 = !DILocation(line: 1698, column: 5, scope: !2174)
!2180 = !DILocation(line: 1699, column: 9, scope: !2158)
!2181 = !DILocation(line: 1700, column: 13, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2158, file: !68, line: 1700, column: 7)
!2183 = !DILocation(line: 1700, column: 7, scope: !2158)
!2184 = !DILocation(line: 1702, column: 34, scope: !2158)
!2185 = !DILocation(line: 1702, column: 40, scope: !2158)
!2186 = !DILocation(line: 0, scope: !1838, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 1702, column: 9, scope: !2158)
!2188 = !DILocation(line: 87, column: 16, scope: !1849, inlinedAt: !2187)
!2189 = !DILocation(line: 87, column: 7, scope: !1838, inlinedAt: !2187)
!2190 = !DILocation(line: 88, column: 15, scope: !1849, inlinedAt: !2187)
!2191 = !DILocation(line: 88, column: 5, scope: !1849, inlinedAt: !2187)
!2192 = !DILocation(line: 1703, column: 57, scope: !2158)
!2193 = !DILocation(line: 1703, column: 63, scope: !2158)
!2194 = !DILocation(line: 0, scope: !1838, inlinedAt: !2195)
!2195 = distinct !DILocation(line: 1703, column: 17, scope: !2158)
!2196 = !DILocation(line: 87, column: 16, scope: !1849, inlinedAt: !2195)
!2197 = !DILocation(line: 87, column: 7, scope: !1838, inlinedAt: !2195)
!2198 = !DILocation(line: 88, column: 15, scope: !1849, inlinedAt: !2195)
!2199 = !DILocation(line: 88, column: 5, scope: !1849, inlinedAt: !2195)
!2200 = !DILocation(line: 1704, column: 8, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2158, file: !68, line: 1704, column: 3)
!2202 = !DILocation(line: 0, scope: !2201)
!2203 = !DILocation(line: 1707, column: 23, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !68, line: 1705, column: 3)
!2205 = distinct !DILexicalBlock(scope: !2201, file: !68, line: 1704, column: 3)
!2206 = !DILocation(line: 1707, column: 26, scope: !2204)
!2207 = !DILocation(line: 1708, column: 13, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2204, file: !68, line: 1708, column: 5)
!2209 = !DILocation(line: 1708, column: 20, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2208, file: !68, line: 1708, column: 5)
!2211 = !DILocation(line: 1708, column: 5, scope: !2208)
!2212 = !DILocation(line: 1709, column: 7, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2210, file: !68, line: 1709, column: 7)
!2214 = !DILocation(line: 1710, column: 37, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2213, file: !68, line: 1709, column: 7)
!2216 = !DILocation(line: 1710, column: 39, scope: !2215)
!2217 = !DILocation(line: 1710, column: 26, scope: !2215)
!2218 = !DILocation(line: 1710, column: 24, scope: !2215)
!2219 = !DILocation(line: 1710, column: 45, scope: !2215)
!2220 = !DILocation(line: 1710, column: 20, scope: !2215)
!2221 = !DILocation(line: 1710, column: 18, scope: !2215)
!2222 = !DILocation(line: 1709, column: 29, scope: !2215)
!2223 = !DILocation(line: 1709, column: 22, scope: !2215)
!2224 = distinct !{!2224, !2212, !2225, !2052, !2053}
!2225 = !DILocation(line: 1710, column: 53, scope: !2213)
!2226 = !DILocation(line: 1708, column: 27, scope: !2210)
!2227 = distinct !{!2227, !2211, !2228, !2052, !2053}
!2228 = !DILocation(line: 1710, column: 53, scope: !2208)
!2229 = !DILocation(line: 1706, column: 14, scope: !2204)
!2230 = !DILocation(line: 1711, column: 28, scope: !2204)
!2231 = !DILocation(line: 1711, column: 17, scope: !2204)
!2232 = !DILocation(line: 1711, column: 15, scope: !2204)
!2233 = !DILocation(line: 1711, column: 32, scope: !2204)
!2234 = !DILocation(line: 1711, column: 11, scope: !2204)
!2235 = !DILocation(line: 1711, column: 39, scope: !2204)
!2236 = !DILocation(line: 1711, column: 44, scope: !2204)
!2237 = !DILocation(line: 1712, column: 16, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2204, file: !68, line: 1712, column: 9)
!2239 = !DILocation(line: 1712, column: 32, scope: !2238)
!2240 = !DILocation(line: 1714, column: 10, scope: !2204)
!2241 = distinct !{!2241, !2242, !2243, !2053}
!2242 = !DILocation(line: 1704, column: 3, scope: !2201)
!2243 = !DILocation(line: 1715, column: 3, scope: !2201)
!2244 = !DILocation(line: 1716, column: 25, scope: !2158)
!2245 = !DILocation(line: 1716, column: 3, scope: !2158)
!2246 = !DILocation(line: 1717, column: 1, scope: !2158)
!2247 = distinct !DISubprogram(name: "GetOptimalKernelWidth", scope: !68, file: !68, line: 1719, type: !2068, scopeLine: 1721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2248)
!2248 = !{!2249, !2250}
!2249 = !DILocalVariable(name: "radius", arg: 1, scope: !2247, file: !68, line: 1719, type: !71)
!2250 = !DILocalVariable(name: "sigma", arg: 2, scope: !2247, file: !68, line: 1720, type: !71)
!2251 = !DILocation(line: 0, scope: !2247)
!2252 = !DILocation(line: 1722, column: 10, scope: !2247)
!2253 = !DILocation(line: 1722, column: 3, scope: !2247)
!2254 = !DISubprogram(name: "EncodePixelGamma", scope: !2255, file: !2255, line: 180, type: !2256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2066)
!2255 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b980ba059a4e0a748c02c115a1a7704f")
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!58, !124}
!2258 = !DISubprogram(name: "DecodePixelGamma", scope: !2255, file: !2255, line: 179, type: !2256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2066)
