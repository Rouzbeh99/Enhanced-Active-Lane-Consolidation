; ModuleID = 'lame.c'
source_filename = "lame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bit_stream_struc = type { ptr, i32, ptr, ptr, i32, i64, i32, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x i32] }
%struct.ID3TAGDATA = type { i32, i32, [31 x i8], [31 x i8], [31 x i8], [5 x i8], [31 x i8], [128 x i8], [1 x i8], i8 }
%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_psy_ratio = type { %struct.III_psy_xmin, %struct.III_psy_xmin }
%struct.III_psy_xmin = type { [22 x double], [13 x [3 x double]] }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }

@bs = internal global %struct.bit_stream_struc zeroinitializer, align 8
@l3_side = internal global %struct.III_side_info_t zeroinitializer, align 8
@disp_brhist = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [65 x i8] c"Warning: highpass filter disabled.  highpass frequency to small\0A\00", align 1
@id3tag = external global %struct.ID3TAGDATA, align 4
@sfBandIndex = external local_unnamed_addr global [6 x %struct.scalefac_struct], align 16
@scalefac_band = external local_unnamed_addr global %struct.scalefac_struct, align 4
@lame_print_config.mode_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"j-stereo\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"dual-ch\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"single-ch\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"Autoconverting from stereo to mono. Setting encoding to mono mode.\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Resampling:  input=%ikHz  output=%ikHz\0A\00", align 1
@.str.7 = private unnamed_addr constant [70 x i8] c"Using polyphase highpass filter, transition band: %.0f Hz -  %.0f Hz\0A\00", align 1
@.str.8 = private unnamed_addr constant [70 x i8] c"Using polyphase lowpass filter,  transition band:  %.0f Hz - %.0f Hz\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Analyzing %s \0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Encoding %s to %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.14 = private unnamed_addr constant [59 x i8] c"Encoding as %.1fkHz VBR(q=%i) %s MPEG%i LayerIII  qval=%i\0A\00", align 1
@.str.15 = private unnamed_addr constant [67 x i8] c"Encoding as %.1f kHz %d kbps %s MPEG%i LayerIII (%4.1fx)  qval=%i\0A\00", align 1
@lame_encode_frame.frameBits = internal unnamed_addr global i64 0, align 8
@lame_encode_frame.frac_SpF = internal unnamed_addr global double 0.000000e+00, align 8
@lame_encode_frame.slot_lag = internal unnamed_addr global double 0.000000e+00, align 8
@lame_encode_frame.sentBits = internal unnamed_addr global i64 0, align 8
@lame_encode_frame.ms_ratio = internal global [2 x double] zeroinitializer, align 16
@lame_encode_frame.ms_ener_ratio = internal global [2 x double] zeroinitializer, align 16
@brhist_temp = external local_unnamed_addr global [15 x i64], align 16
@.str.16 = private unnamed_addr constant [36 x i8] c"Sent %ld bits = %ld slots plus %ld\0A\00", align 1
@fill_buffer_resample.itime = internal unnamed_addr global [2 x double] zeroinitializer, align 16
@fill_buffer_resample.inbuf_old = internal unnamed_addr global [2 x [5 x i16]] zeroinitializer, align 16
@fill_buffer_resample.init = internal unnamed_addr global [2 x i32] zeroinitializer, align 4
@lame_encode_buffer.frame_buffered = internal unnamed_addr global i1 false, align 4
@mfbuf = internal global [2 x [3056 x i16]] zeroinitializer, align 16
@mf_samples_to_encode = internal unnamed_addr global i32 0, align 4
@mf_size = internal unnamed_addr global i32 0, align 4
@lame_encode_buffer_interleaved.frame_buffered = internal unnamed_addr global i1 false, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @lame_init_params(ptr noundef %gfp) local_unnamed_addr #0 {
entry:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @bs, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) @l3_side, i8 0, i64 528, i1 false)
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 39
  store i64 0, ptr %frameNum, align 8, !tbaa !5
  tail call void @InitFormatBitStream() #17
  %num_channels = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 1
  %0 = load i32, ptr %num_channels, align 8, !tbaa !13
  %cmp = icmp eq i32 %0, 1
  %mode = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 8
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  store i32 3, ptr %mode, align 4, !tbaa !14
  %stereo1117 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %mode11118 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 8
  br label %1

if.end:                                           ; preds = %entry
  %.pre = load i32, ptr %mode, align 4, !tbaa !14
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %mode1 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 8
  %cmp2 = icmp eq i32 %.pre, 3
  br i1 %cmp2, label %1, label %2

1:                                                ; preds = %if.end.thread, %if.end
  %mode11123 = phi ptr [ %mode11118, %if.end.thread ], [ %mode1, %if.end ]
  %stereo1121 = phi ptr [ %stereo1117, %if.end.thread ], [ %stereo, %if.end ]
  br label %2

2:                                                ; preds = %if.end, %1
  %mode11122 = phi ptr [ %mode11123, %1 ], [ %mode1, %if.end ]
  %stereo1120 = phi ptr [ %stereo1121, %1 ], [ %stereo, %if.end ]
  %3 = phi i32 [ 3, %1 ], [ %.pre, %if.end ]
  %4 = phi i32 [ 1, %1 ], [ 2, %if.end ]
  store i32 %4, ptr %stereo1120, align 4
  %silent = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 7
  %5 = load i32, ptr %silent, align 8, !tbaa !15
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %2
  store i32 0, ptr @disp_brhist, align 4, !tbaa !16
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %2
  %VBR = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 21
  %6 = load i32, ptr %VBR, align 8, !tbaa !17
  %tobool8.not = icmp eq i32 %6, 0
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  store i32 0, ptr @disp_brhist, align 4, !tbaa !16
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 3
  %7 = load i32, ptr %out_samplerate, align 8, !tbaa !18
  %cmp11 = icmp eq i32 %7, 0
  br i1 %cmp11, label %if.then12, label %if.end10.if.end105_crit_edge

if.end10.if.end105_crit_edge:                     ; preds = %if.end10
  %brate111.phi.trans.insert = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 11
  %.pre1111 = load i32, ptr %brate111.phi.trans.insert, align 8, !tbaa !19
  br label %if.end105

if.then12:                                        ; preds = %if.end10
  %in_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 2
  %8 = load i32, ptr %in_samplerate, align 4, !tbaa !20
  %cmp15 = icmp sgt i32 %8, 47999
  br i1 %cmp15, label %if.end43, label %if.else

if.else:                                          ; preds = %if.then12
  %cmp19 = icmp sgt i32 %8, 44099
  br i1 %cmp19, label %if.end43, label %if.else22

if.else22:                                        ; preds = %if.else
  %cmp24 = icmp sgt i32 %8, 31999
  br i1 %cmp24, label %if.end43, label %if.else27

if.else27:                                        ; preds = %if.else22
  %cmp29 = icmp sgt i32 %8, 23999
  br i1 %cmp29, label %if.end43, label %if.else32

if.else32:                                        ; preds = %if.else27
  %cmp34.inv = icmp slt i32 %8, 22050
  %. = select i1 %cmp34.inv, i32 16000, i32 22050
  br label %if.end43

if.end43:                                         ; preds = %if.else32, %if.else27, %if.else22, %if.else, %if.then12
  %.sink = phi i32 [ 48000, %if.then12 ], [ 44100, %if.else ], [ 32000, %if.else22 ], [ 24000, %if.else27 ], [ %., %if.else32 ]
  store i32 %.sink, ptr %out_samplerate, align 8, !tbaa !18
  %brate = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 11
  %9 = load i32, ptr %brate, align 8, !tbaa !19
  %cmp44 = icmp sgt i32 %9, 0
  br i1 %cmp44, label %if.then45, label %if.end105

if.then45:                                        ; preds = %if.end43
  %mul = shl nuw nsw i32 %4, 4
  %mul48 = mul nuw nsw i32 %mul, %.sink
  %conv = sitofp i32 %mul48 to double
  %conv50 = sitofp i32 %9 to double
  %mul51 = fmul fast double %conv50, 1.000000e+03
  %div = fdiv fast double %conv, %mul51
  %conv52 = fptrunc double %div to float
  %cmp55 = fcmp fast ogt float %conv52, 1.300000e+01
  %or.cond = select i1 %tobool8.not, i1 %cmp55, i1 false
  br i1 %or.cond, label %if.then57, label %if.end105

if.then57:                                        ; preds = %if.then45
  %mul60 = fmul fast double %conv50, 1.000000e+04
  %conv63 = sitofp i32 %mul to double
  %div64 = fdiv fast double %mul60, %conv63
  %conv65 = fptosi double %div64 to i32
  %cmp68 = icmp slt i32 %conv65, 16001
  br i1 %cmp68, label %if.then70, label %if.else72

if.then70:                                        ; preds = %if.then57
  store i32 16000, ptr %out_samplerate, align 8, !tbaa !18
  br label %if.end105

if.else72:                                        ; preds = %if.then57
  %cmp74 = icmp ult i32 %conv65, 22051
  br i1 %cmp74, label %if.then76, label %if.else78

if.then76:                                        ; preds = %if.else72
  store i32 22050, ptr %out_samplerate, align 8, !tbaa !18
  br label %if.end105

if.else78:                                        ; preds = %if.else72
  %cmp80 = icmp ult i32 %conv65, 24001
  br i1 %cmp80, label %if.then82, label %if.else84

if.then82:                                        ; preds = %if.else78
  store i32 24000, ptr %out_samplerate, align 8, !tbaa !18
  br label %if.end105

if.else84:                                        ; preds = %if.else78
  %cmp86 = icmp ult i32 %conv65, 32001
  br i1 %cmp86, label %if.then88, label %if.else90

if.then88:                                        ; preds = %if.else84
  store i32 32000, ptr %out_samplerate, align 8, !tbaa !18
  br label %if.end105

if.else90:                                        ; preds = %if.else84
  %cmp92 = icmp ult i32 %conv65, 44101
  br i1 %cmp92, label %if.then94, label %if.else96

if.then94:                                        ; preds = %if.else90
  store i32 44100, ptr %out_samplerate, align 8, !tbaa !18
  br label %if.end105

if.else96:                                        ; preds = %if.else90
  store i32 48000, ptr %out_samplerate, align 8, !tbaa !18
  br label %if.end105

if.end105:                                        ; preds = %if.end10.if.end105_crit_edge, %if.end43, %if.then70, %if.then82, %if.then94, %if.else96, %if.then88, %if.then76, %if.then45
  %10 = phi i32 [ %9, %if.end43 ], [ %9, %if.then70 ], [ %9, %if.then82 ], [ %9, %if.then94 ], [ %9, %if.else96 ], [ %9, %if.then88 ], [ %9, %if.then76 ], [ %9, %if.then45 ], [ %.pre1111, %if.end10.if.end105_crit_edge ]
  %11 = phi i32 [ %.sink, %if.end43 ], [ 16000, %if.then70 ], [ 24000, %if.then82 ], [ 44100, %if.then94 ], [ 48000, %if.else96 ], [ 32000, %if.then88 ], [ 22050, %if.then76 ], [ %.sink, %if.then45 ], [ %7, %if.end10.if.end105_crit_edge ]
  %cmp107 = icmp slt i32 %11, 24001
  %cond = select i1 %cmp107, i32 1, i32 2
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 45
  store i32 %cond, ptr %mode_gr, align 8, !tbaa !21
  %encoder_delay = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 41
  store i32 800, ptr %encoder_delay, align 8, !tbaa !22
  %mul110 = mul nuw nsw i32 %cond, 576
  %framesize = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 42
  store i32 %mul110, ptr %framesize, align 4, !tbaa !23
  %brate111 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 11
  %cmp112 = icmp eq i32 %10, 0
  br i1 %cmp112, label %if.then114, label %if.end122

if.then114:                                       ; preds = %if.end105
  %spec.store.select1067 = select i1 %cmp107, i32 64, i32 128
  store i32 %spec.store.select1067, ptr %brate111, align 8
  br label %if.end122

if.end122:                                        ; preds = %if.then114, %if.end105
  %12 = phi i32 [ %spec.store.select1067, %if.then114 ], [ %10, %if.end105 ]
  %resample_ratio = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 49
  store float 1.000000e+00, ptr %resample_ratio, align 8, !tbaa !24
  %in_samplerate124 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 2
  %13 = load i32, ptr %in_samplerate124, align 4, !tbaa !20
  %cmp125.not = icmp eq i32 %11, %13
  br i1 %cmp125.not, label %if.end134, label %if.then127

if.then127:                                       ; preds = %if.end122
  %conv129 = sitofp i32 %13 to float
  %conv131 = sitofp i32 %11 to float
  %div132 = fdiv fast float %conv129, %conv131
  store float %div132, ptr %resample_ratio, align 8, !tbaa !24
  br label %if.end134

if.end134:                                        ; preds = %if.then127, %if.end122
  %14 = phi float [ %div132, %if.then127 ], [ 1.000000e+00, %if.end122 ]
  %totalframes = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 40
  %15 = load i64, ptr %gfp, align 8, !tbaa !25
  %conv135 = uitofp i64 %15 to float
  %conv138 = sitofp i32 %mul110 to float
  %mul139 = fmul fast float %14, %conv138
  %div140 = fdiv fast float %conv135, %mul139
  %add = fadd fast float %div140, 2.000000e+00
  %conv141 = fptosi float %add to i64
  store i64 %conv141, ptr %totalframes, align 8, !tbaa !26
  %cmp144 = icmp sgt i32 %12, 319
  br i1 %cmp144, label %if.then146, label %if.end148

if.then146:                                       ; preds = %if.end134
  store i32 0, ptr %VBR, align 8, !tbaa !17
  br label %if.end148

if.end148:                                        ; preds = %if.then146, %if.end134
  %16 = phi i32 [ 0, %if.then146 ], [ %6, %if.end134 ]
  %mul150 = shl nuw nsw i32 %4, 4
  %mul152 = mul i32 %mul150, %11
  %conv153 = sitofp i32 %mul152 to double
  %conv155 = sitofp i32 %12 to double
  %mul156 = fmul fast double %conv155, 1.000000e+03
  %div157 = fdiv fast double %conv153, %mul156
  %conv158 = fptrunc double %div157 to float
  %tobool160 = icmp ne i32 %16, 0
  %cmp162 = fcmp fast ogt float %conv158, 1.100000e+01
  %or.cond746 = select i1 %tobool160, i1 %cmp162, i1 false
  br i1 %or.cond746, label %if.then164, label %if.end168

if.then164:                                       ; preds = %if.end148
  %VBR_q = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 22
  %17 = load i32, ptr %VBR_q, align 4, !tbaa !27
  %conv165 = sitofp i32 %17 to double
  %add166 = fadd fast double %conv165, 4.400000e+00
  %conv167 = fptrunc double %add166 to float
  br label %if.end168

if.end168:                                        ; preds = %if.then164, %if.end148
  %compression_ratio.0 = phi float [ %conv167, %if.then164 ], [ %conv158, %if.end148 ]
  %mode_fixed = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 9
  %18 = load i32, ptr %mode_fixed, align 8, !tbaa !28
  %tobool169.not = icmp eq i32 %18, 0
  br i1 %tobool169.not, label %land.lhs.true170, label %if.end180

land.lhs.true170:                                 ; preds = %if.end168
  %cmp172 = icmp ne i32 %3, 3
  %cmp175 = fcmp fast olt float %compression_ratio.0, 9.000000e+00
  %or.cond747 = select i1 %cmp172, i1 %cmp175, i1 false
  br i1 %or.cond747, label %if.then177, label %if.end180

if.then177:                                       ; preds = %land.lhs.true170
  store i32 0, ptr %mode11122, align 4, !tbaa !14
  br label %if.end180

if.end180:                                        ; preds = %if.then177, %land.lhs.true170, %if.end168
  %lowpassfreq = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 25
  %19 = load i32, ptr %lowpassfreq, align 8, !tbaa !29
  %cmp181 = icmp eq i32 %19, 0
  br i1 %cmp181, label %if.then183, label %if.end199

if.then183:                                       ; preds = %if.end180
  %conv184 = fpext float %compression_ratio.0 to double
  %div185 = fmul fast double %conv184, 6.250000e-02
  %20 = tail call fast double @llvm.log.f64(double %div185)
  %mul186 = fmul fast double %20, 1.800000e+01
  %sub = fsub fast double 1.450000e+01, %mul186
  %21 = tail call fast double @llvm.floor.f64(double %sub)
  %add187 = fadd fast double %21, 1.000000e+00
  %conv188 = fptosi double %add187 to i32
  %cmp189 = icmp slt i32 %conv188, 31
  br i1 %cmp189, label %if.then191, label %if.end199

if.then191:                                       ; preds = %if.then183
  %conv192 = sitofp i32 %conv188 to double
  %div193 = fmul fast double %conv192, 0x3FA0842108421084
  %conv194 = fptrunc double %div193 to float
  %lowpass1 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 53
  store float %conv194, ptr %lowpass1, align 8, !tbaa !30
  %lowpass2 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 54
  store float %conv194, ptr %lowpass2, align 4, !tbaa !31
  br label %if.end199

if.end199:                                        ; preds = %if.then183, %if.then191, %if.end180
  %highpassfreq = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 26
  %22 = load i32, ptr %highpassfreq, align 4, !tbaa !32
  %cmp200 = icmp sgt i32 %22, 0
  br i1 %cmp200, label %if.then202, label %if.end247

if.then202:                                       ; preds = %if.end199
  %conv204 = sitofp i32 %22 to double
  %mul205 = fmul fast double %conv204, 2.000000e+00
  %conv207 = sitofp i32 %11 to double
  %div208 = fdiv fast double %mul205, %conv207
  %conv209 = fptrunc double %div208 to float
  %highpass1 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 55
  %highpasswidth = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 28
  %23 = load i32, ptr %highpasswidth, align 4, !tbaa !33
  %cmp210 = icmp sgt i32 %23, -1
  br i1 %cmp210, label %if.then212, label %if.end231

if.then212:                                       ; preds = %if.then202
  %add215 = add nuw nsw i32 %23, %22
  %conv216 = sitofp i32 %add215 to double
  %mul217 = fmul fast double %conv216, 2.000000e+00
  %div220 = fdiv fast double %mul217, %conv207
  %conv221 = fptrunc double %div220 to float
  br label %if.end231

if.end231:                                        ; preds = %if.then202, %if.then212
  %24 = phi float [ %conv221, %if.then212 ], [ %conv209, %if.then202 ]
  %25 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 56
  %cmp233 = fcmp fast ogt float %conv209, 1.000000e+00
  br i1 %cmp233, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end231
  br label %cond.end

cond.end:                                         ; preds = %if.end231, %cond.false
  %cond236 = phi fast float [ %conv209, %cond.false ], [ 1.000000e+00, %if.end231 ]
  store float %cond236, ptr %highpass1, align 8, !tbaa !34
  %cmp239 = fcmp fast ogt float %24, 1.000000e+00
  br i1 %cmp239, label %cond.end244, label %cond.false242

cond.false242:                                    ; preds = %cond.end
  br label %cond.end244

cond.end244:                                      ; preds = %cond.end, %cond.false242
  %cond245 = phi fast float [ %24, %cond.false242 ], [ 1.000000e+00, %cond.end ]
  store float %cond245, ptr %25, align 4, !tbaa !35
  br label %if.end247

if.end247:                                        ; preds = %cond.end244, %if.end199
  %cmp249 = icmp sgt i32 %19, 0
  br i1 %cmp249, label %if.then251, label %if.end307

if.then251:                                       ; preds = %if.end247
  %conv253 = sitofp i32 %19 to double
  %mul254 = fmul fast double %conv253, 2.000000e+00
  %conv256 = sitofp i32 %11 to double
  %div257 = fdiv fast double %mul254, %conv256
  %conv258 = fptrunc double %div257 to float
  %lowpass2259 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 54
  %lowpasswidth = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 27
  %26 = load i32, ptr %lowpasswidth, align 8, !tbaa !36
  %cmp260 = icmp sgt i32 %26, -1
  br i1 %cmp260, label %if.then262, label %if.else279

if.then262:                                       ; preds = %if.then251
  %sub265 = sub nsw i32 %19, %26
  %conv266 = sitofp i32 %sub265 to double
  %mul267 = fmul fast double %conv266, 2.000000e+00
  %div270 = fdiv fast double %mul267, %conv256
  %conv271 = fptrunc double %div270 to float
  %lowpass1272 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 53
  store float %conv271, ptr %lowpass1272, align 8, !tbaa !30
  %cmp274 = fcmp fast olt float %conv271, 0.000000e+00
  br i1 %cmp274, label %if.end288.thread, label %if.end288

if.end288.thread:                                 ; preds = %if.then262
  store float 0.000000e+00, ptr %lowpass1272, align 8, !tbaa !30
  %lowpass12891124 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 53
  br label %cond.false293

if.else279:                                       ; preds = %if.then251
  %lowpass1287 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 53
  store float %conv258, ptr %lowpass1287, align 8, !tbaa !30
  br label %if.end288

if.end288:                                        ; preds = %if.then262, %if.else279
  %27 = phi float [ %conv271, %if.then262 ], [ %conv258, %if.else279 ]
  %lowpass1289 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 53
  %cmp290 = fcmp fast ogt float %27, 1.000000e+00
  br i1 %cmp290, label %cond.end295, label %cond.false293

cond.false293:                                    ; preds = %if.end288.thread, %if.end288
  %lowpass12891126 = phi ptr [ %lowpass12891124, %if.end288.thread ], [ %lowpass1289, %if.end288 ]
  %28 = phi float [ 0.000000e+00, %if.end288.thread ], [ %27, %if.end288 ]
  br label %cond.end295

cond.end295:                                      ; preds = %if.end288, %cond.false293
  %lowpass12891127 = phi ptr [ %lowpass12891126, %cond.false293 ], [ %lowpass1289, %if.end288 ]
  %cond296 = phi fast float [ %28, %cond.false293 ], [ 1.000000e+00, %if.end288 ]
  store float %cond296, ptr %lowpass12891127, align 8, !tbaa !30
  %cmp299 = fcmp fast ogt float %conv258, 1.000000e+00
  br i1 %cmp299, label %cond.end304, label %cond.false302

cond.false302:                                    ; preds = %cond.end295
  br label %cond.end304

cond.end304:                                      ; preds = %cond.end295, %cond.false302
  %cond305 = phi fast float [ %conv258, %cond.false302 ], [ 1.000000e+00, %cond.end295 ]
  store float %cond305, ptr %lowpass2259, align 4, !tbaa !31
  br label %if.end307

if.end307:                                        ; preds = %cond.end304, %if.end247
  %filter_type = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 59
  %29 = load i32, ptr %filter_type, align 8, !tbaa !37
  %cmp308 = icmp eq i32 %29, 0
  br i1 %cmp308, label %if.then310, label %if.end482

if.then310:                                       ; preds = %if.end307
  %lowpass1312 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 53
  %30 = load float, ptr %lowpass1312, align 8, !tbaa !30
  %cmp313 = fcmp fast ogt float %30, 0.000000e+00
  br i1 %cmp313, label %for.cond.preheader, label %if.end387

for.cond.preheader:                               ; preds = %if.then310
  %lowpass2320 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 54
  %31 = load float, ptr %lowpass2320, align 4, !tbaa !31
  %conv321 = fpext float %31 to double
  %conv335 = fpext float %30 to double
  %lowpass_band = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 57
  br label %for.body

for.body:                                         ; preds = %for.cond.preheader, %if.end333
  %minband.01097 = phi i32 [ 999, %for.cond.preheader ], [ %spec.select, %if.end333 ]
  %band311.01094 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end333 ]
  %conv318 = sitofp i32 %band311.01094 to double
  %div319 = fmul fast double %conv318, 0x3FA0842108421084
  %cmp322 = fcmp fast ult double %div319, %conv321
  br i1 %cmp322, label %if.end333, label %if.then324

if.then324:                                       ; preds = %for.body
  %32 = load i32, ptr %lowpass_band, align 8, !tbaa !38
  %33 = tail call i32 @llvm.smin.i32(i32 %32, i32 %band311.01094)
  store i32 %33, ptr %lowpass_band, align 8, !tbaa !38
  br label %if.end333

if.end333:                                        ; preds = %if.then324, %for.body
  %cmp336 = fcmp fast ogt double %div319, %conv335
  %cmp341 = fcmp fast olt double %div319, %conv321
  %or.cond1092 = select i1 %cmp336, i1 %cmp341, i1 false
  %34 = tail call i32 @llvm.smin.i32(i32 %minband.01097, i32 %band311.01094)
  %spec.select = select i1 %or.cond1092, i32 %34, i32 %minband.01097
  %inc = add nuw nsw i32 %band311.01094, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !39

for.end:                                          ; preds = %if.end333
  %cmp366 = icmp eq i32 %spec.select, 999
  %35 = load i32, ptr %lowpass_band, align 8, !tbaa !38
  %.minband.1.lcssa = select i1 %cmp366, i32 %35, i32 %spec.select
  %storemerge.in.in.in = sitofp i32 %.minband.1.lcssa to double
  %storemerge.in.in = fmul fast double %storemerge.in.in.in, 0x3FA0842108421084
  %storemerge.in = fadd fast double %storemerge.in.in, 0xBF98C6318C6318C6
  %storemerge = fptrunc double %storemerge.in to float
  store float %storemerge, ptr %lowpass1312, align 8, !tbaa !30
  %conv383 = sitofp i32 %35 to double
  %div384 = fmul fast double %conv383, 0x3FA0842108421084
  %conv385 = fptrunc double %div384 to float
  store float %conv385, ptr %lowpass2320, align 4, !tbaa !31
  br label %if.end387

if.end387:                                        ; preds = %for.end, %if.then310
  %highpass2388 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 56
  %36 = load float, ptr %highpass2388, align 4, !tbaa !35
  %cmp389 = fcmp fast ogt float %36, 0.000000e+00
  %conv393 = fpext float %36 to double
  %cmp394 = fcmp fast olt double %conv393, 0x3F964BF964BF964C
  %or.cond1068 = select i1 %cmp389, i1 %cmp394, i1 false
  br i1 %or.cond1068, label %if.then396, label %if.end400

if.then396:                                       ; preds = %if.end387
  %highpass1397 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 55
  store float 0.000000e+00, ptr %highpass1397, align 8, !tbaa !34
  store float 0.000000e+00, ptr %highpass2388, align 4, !tbaa !35
  %37 = load ptr, ptr @stderr, align 8, !tbaa !42
  %38 = tail call i64 @fwrite(ptr nonnull @.str, i64 64, i64 1, ptr %37) #18
  %.pr = load float, ptr %highpass2388, align 4, !tbaa !35
  br label %if.end400

if.end400:                                        ; preds = %if.then396, %if.end387
  %39 = phi float [ %.pr, %if.then396 ], [ %36, %if.end387 ]
  %cmp402 = fcmp fast ogt float %39, 0.000000e+00
  br i1 %cmp402, label %for.cond405.preheader, label %if.end482

for.cond405.preheader:                            ; preds = %if.end400
  %highpass1411 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 55
  %40 = load float, ptr %highpass1411, align 8, !tbaa !34
  %conv412 = fpext float %40 to double
  %conv431 = fpext float %39 to double
  %highpass_band = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 58
  br label %for.body408

for.body408:                                      ; preds = %for.cond405.preheader, %if.end424
  %maxband.21100 = phi i32 [ -1, %for.cond405.preheader ], [ %spec.select1139, %if.end424 ]
  %band311.11098 = phi i32 [ 0, %for.cond405.preheader ], [ %inc458, %if.end424 ]
  %conv409 = sitofp i32 %band311.11098 to double
  %div410 = fmul fast double %conv409, 0x3FA0842108421084
  %cmp413 = fcmp fast ugt double %div410, %conv412
  br i1 %cmp413, label %if.end424, label %if.then415

if.then415:                                       ; preds = %for.body408
  %41 = load i32, ptr %highpass_band, align 4, !tbaa !43
  %42 = tail call i32 @llvm.smax.i32(i32 %41, i32 %band311.11098)
  store i32 %42, ptr %highpass_band, align 4, !tbaa !43
  br label %if.end424

if.end424:                                        ; preds = %if.then415, %for.body408
  %cmp427 = fcmp fast ogt double %div410, %conv412
  %cmp432 = fcmp fast olt double %div410, %conv431
  %or.cond1093 = select i1 %cmp427, i1 %cmp432, i1 false
  %43 = tail call i32 @llvm.smax.i32(i32 %maxband.21100, i32 %band311.11098)
  %spec.select1139 = select i1 %or.cond1093, i32 %43, i32 %maxband.21100
  %inc458 = add nuw nsw i32 %band311.11098, 1
  %exitcond1104.not = icmp eq i32 %inc458, 32
  br i1 %exitcond1104.not, label %for.end459, label %for.body408, !llvm.loop !44

for.end459:                                       ; preds = %if.end424
  %44 = load i32, ptr %highpass_band, align 4, !tbaa !43
  %conv461 = sitofp i32 %44 to double
  %div462 = fmul fast double %conv461, 0x3FA0842108421084
  %conv463 = fptrunc double %div462 to float
  store float %conv463, ptr %highpass1411, align 8, !tbaa !34
  %cmp465 = icmp eq i32 %spec.select1139, -1
  br i1 %cmp465, label %if.end482.sink.split, label %if.else474

if.else474:                                       ; preds = %for.end459
  %conv475 = sitofp i32 %spec.select1139 to double
  %45 = fmul fast double %conv475, 0x3FA0842108421084
  br label %if.end482.sink.split

if.end482.sink.split:                             ; preds = %for.end459, %if.else474
  %.sink1140 = phi double [ %45, %if.else474 ], [ %div462, %for.end459 ]
  %div477 = fadd fast double %.sink1140, 0x3F98C6318C6318C6
  %conv478 = fptrunc double %div477 to float
  store float %conv478, ptr %highpass2388, align 4, !tbaa !35
  br label %if.end482

if.end482:                                        ; preds = %if.end482.sink.split, %if.end400, %if.end307
  %mode_ext = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 52
  store i32 0, ptr %mode_ext, align 4, !tbaa !45
  %46 = load i32, ptr %mode11122, align 4, !tbaa !14
  %cmp489 = icmp eq i32 %46, 3
  %cond491 = select i1 %cmp489, i32 1, i32 2
  store i32 %cond491, ptr %stereo1120, align 4, !tbaa !46
  %47 = load i32, ptr %out_samplerate, align 8, !tbaa !18
  %conv494 = sext i32 %47 to i64
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 43
  %call495 = tail call i32 @SmpFrqIndex(i64 noundef %conv494, ptr noundef nonnull %version) #17
  %samplerate_index = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 51
  store i32 %call495, ptr %samplerate_index, align 8, !tbaa !47
  %cmp497 = icmp slt i32 %call495, 0
  br i1 %cmp497, label %if.then499, label %if.end500

if.then499:                                       ; preds = %if.end482
  %48 = load ptr, ptr @stderr, align 8, !tbaa !42
  tail call void @display_bitrates(ptr noundef %48) #17
  tail call void @exit(i32 noundef 1) #19
  unreachable

if.end500:                                        ; preds = %if.end482
  %49 = load i32, ptr %brate111, align 8, !tbaa !19
  %50 = load i32, ptr %version, align 8, !tbaa !48
  %51 = load i32, ptr %out_samplerate, align 8, !tbaa !18
  %call504 = tail call i32 @BitrateIndex(i32 noundef %49, i32 noundef %50, i32 noundef %51) #17
  %bitrate_index = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 50
  store i32 %call504, ptr %bitrate_index, align 4, !tbaa !49
  %cmp505 = icmp slt i32 %call504, 0
  br i1 %cmp505, label %if.then507, label %if.end508

if.then507:                                       ; preds = %if.end500
  %52 = load ptr, ptr @stderr, align 8, !tbaa !42
  tail call void @display_bitrates(ptr noundef %52) #17
  tail call void @exit(i32 noundef 1) #19
  unreachable

if.end508:                                        ; preds = %if.end500
  %53 = load i32, ptr %VBR, align 8, !tbaa !17
  %tobool510.not = icmp eq i32 %53, 0
  br i1 %tobool510.not, label %if.end576, label %if.then511

if.then511:                                       ; preds = %if.end508
  %VBR_max_bitrate_kbps = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 24
  %54 = load i32, ptr %VBR_max_bitrate_kbps, align 4, !tbaa !50
  %cmp512 = icmp eq i32 %54, 0
  br i1 %cmp512, label %if.then514, label %if.else538

if.then514:                                       ; preds = %if.then511
  %VBR_max_bitrate = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 48
  %VBR_min_bitrate_kbps = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 23
  %55 = load i32, ptr %VBR_min_bitrate_kbps, align 8, !tbaa !51
  %cmp515 = icmp sgt i32 %55, 255
  %VBR_q520 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 22
  %56 = load i32, ptr %VBR_q520, align 4, !tbaa !27
  %cmp521 = icmp eq i32 %56, 0
  %57 = select i1 %cmp521, i1 true, i1 %cmp515
  %spec.store.select1072 = select i1 %57, i32 14, i32 13
  %cmp527 = icmp sgt i32 %56, 3
  %spec.store.select1073 = select i1 %cmp527, i32 12, i32 %spec.store.select1072
  %cmp533 = icmp sgt i32 %56, 7
  %spec.store.select1074 = select i1 %cmp533, i32 9, i32 %spec.store.select1073
  store i32 %spec.store.select1074, ptr %VBR_max_bitrate, align 4
  br label %if.end548

if.else538:                                       ; preds = %if.then511
  %58 = load i32, ptr %version, align 8, !tbaa !48
  %59 = load i32, ptr %out_samplerate, align 8, !tbaa !18
  %call542 = tail call i32 @BitrateIndex(i32 noundef %54, i32 noundef %58, i32 noundef %59) #17
  %VBR_max_bitrate543 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 48
  store i32 %call542, ptr %VBR_max_bitrate543, align 4, !tbaa !52
  %cmp544 = icmp slt i32 %call542, 0
  br i1 %cmp544, label %if.then546, label %if.else538.if.end548_crit_edge

if.else538.if.end548_crit_edge:                   ; preds = %if.else538
  %VBR_min_bitrate_kbps549.phi.trans.insert = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 23
  %.pre1113 = load i32, ptr %VBR_min_bitrate_kbps549.phi.trans.insert, align 8, !tbaa !51
  br label %if.end548

if.then546:                                       ; preds = %if.else538
  %60 = load ptr, ptr @stderr, align 8, !tbaa !42
  tail call void @display_bitrates(ptr noundef %60) #17
  tail call void @exit(i32 noundef 1) #19
  unreachable

if.end548:                                        ; preds = %if.else538.if.end548_crit_edge, %if.then514
  %61 = phi i32 [ %.pre1113, %if.else538.if.end548_crit_edge ], [ %55, %if.then514 ]
  %cmp550 = icmp eq i32 %61, 0
  br i1 %cmp550, label %if.then552, label %if.else553

if.then552:                                       ; preds = %if.end548
  %VBR_min_bitrate = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 47
  store i32 1, ptr %VBR_min_bitrate, align 8, !tbaa !53
  br label %if.end564

if.else553:                                       ; preds = %if.end548
  %62 = load i32, ptr %version, align 8, !tbaa !48
  %63 = load i32, ptr %out_samplerate, align 8, !tbaa !18
  %call557 = tail call i32 @BitrateIndex(i32 noundef %61, i32 noundef %62, i32 noundef %63) #17
  %VBR_min_bitrate558 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 47
  store i32 %call557, ptr %VBR_min_bitrate558, align 8, !tbaa !53
  %cmp559 = icmp slt i32 %call557, 0
  br i1 %cmp559, label %if.then561, label %if.end564

if.then561:                                       ; preds = %if.else553
  %64 = load ptr, ptr @stderr, align 8, !tbaa !42
  tail call void @display_bitrates(ptr noundef %64) #17
  tail call void @exit(i32 noundef 1) #19
  unreachable

if.end564:                                        ; preds = %if.then552, %if.else553
  %.pr1075 = load i32, ptr %VBR, align 8, !tbaa !17
  %tobool566.not = icmp eq i32 %.pr1075, 0
  br i1 %tobool566.not, label %if.end576, label %if.then567

if.then567:                                       ; preds = %if.end564
  %quality = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 6
  %65 = load i32, ptr %quality, align 4, !tbaa !54
  %66 = tail call i32 @llvm.smin.i32(i32 %65, i32 2)
  store i32 %66, ptr %quality, align 4, !tbaa !54
  br label %if.end576

if.end576:                                        ; preds = %if.end508, %if.then567, %if.end564
  %tobool566.not1077 = phi i1 [ false, %if.then567 ], [ true, %if.end564 ], [ true, %if.end508 ]
  %67 = load i32, ptr %mode11122, align 4, !tbaa !14
  %cmp578 = icmp eq i32 %67, 3
  br i1 %cmp578, label %if.then580, label %if.end581

if.then580:                                       ; preds = %if.end576
  %force_ms = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 10
  store i32 0, ptr %force_ms, align 4, !tbaa !55
  br label %if.end581

if.end581:                                        ; preds = %if.then580, %if.end576
  br i1 %tobool566.not1077, label %if.then585, label %if.end586

if.then585:                                       ; preds = %if.end581
  %bWriteVbrTag = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 5
  store i32 0, ptr %bWriteVbrTag, align 8, !tbaa !56
  br label %if.end586

if.end586:                                        ; preds = %if.then585, %if.end581
  %outPath = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 32
  %68 = load ptr, ptr %outPath, align 8, !tbaa !57
  %cmp587.not = icmp eq ptr %68, null
  br i1 %cmp587.not, label %if.then605, label %land.lhs.true589

land.lhs.true589:                                 ; preds = %if.end586
  %69 = load i8, ptr %68, align 1, !tbaa !58
  %cmp592 = icmp eq i8 %69, 45
  br i1 %cmp592, label %lor.lhs.false, label %if.end606

lor.lhs.false:                                    ; preds = %land.lhs.true589
  %bWriteVbrTag595 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 5
  store i32 0, ptr %bWriteVbrTag595, align 8, !tbaa !56
  %.pr1078 = load i8, ptr %68, align 1, !tbaa !58
  %cmp603 = icmp eq i8 %.pr1078, 45
  br i1 %cmp603, label %if.then605, label %if.end606

if.then605:                                       ; preds = %if.end586, %lor.lhs.false
  store i32 0, ptr @id3tag, align 4, !tbaa !59
  br label %if.end606

if.end606:                                        ; preds = %land.lhs.true589, %if.then605, %lor.lhs.false
  %gtkflag = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 4
  %70 = load i32, ptr %gtkflag, align 4, !tbaa !61
  %tobool607.not = icmp eq i32 %70, 0
  br i1 %tobool607.not, label %if.end610, label %if.then608

if.then608:                                       ; preds = %if.end606
  %bWriteVbrTag609 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 5
  store i32 0, ptr %bWriteVbrTag609, align 8, !tbaa !56
  br label %if.end610

if.end610:                                        ; preds = %if.then608, %if.end606
  tail call void @init_bit_stream_w(ptr noundef nonnull @bs) #17
  %quality611 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 6
  %71 = load i32, ptr %quality611, align 4, !tbaa !54
  switch i32 %71, label %for.body699.preheader [
    i32 9, label %if.end622.thread1128
    i32 8, label %if.end622.thread
    i32 7, label %if.end633.thread
    i32 6, label %if.end639.thread
    i32 5, label %if.end650.thread
    i32 4, label %if.end673.thread.sink.split
    i32 3, label %if.end673.thread.sink.split
    i32 2, label %if.end673.thread
    i32 1, label %if.then677
    i32 0, label %if.then688
  ]

if.end622.thread1128:                             ; preds = %if.end610
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %filter_type, i8 0, i64 24, i1 false)
  br label %for.body699.preheader

if.end622.thread:                                 ; preds = %if.end610
  store i32 7, ptr %quality611, align 4, !tbaa !54
  br label %if.end633.thread

if.end633.thread:                                 ; preds = %if.end610, %if.end622.thread
  store i32 0, ptr %filter_type, align 8, !tbaa !37
  %psymodel628 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 63
  store i32 1, ptr %psymodel628, align 8, !tbaa !62
  %quantization629 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 60
  store i32 0, ptr %quantization629, align 4, !tbaa !63
  %noise_shaping630 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 61
  store i32 0, ptr %noise_shaping630, align 8, !tbaa !64
  %noise_shaping_stop631 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 62
  store i32 0, ptr %noise_shaping_stop631, align 4, !tbaa !65
  %use_best_huffman632 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 64
  store i32 0, ptr %use_best_huffman632, align 4, !tbaa !66
  br label %for.body699.preheader

if.end639.thread:                                 ; preds = %if.end610
  store i32 5, ptr %quality611, align 4, !tbaa !54
  br label %if.end650.thread

if.end650.thread:                                 ; preds = %if.end610, %if.end639.thread
  store i32 0, ptr %filter_type, align 8, !tbaa !37
  %psymodel645 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 63
  store i32 1, ptr %psymodel645, align 8, !tbaa !62
  %quantization646 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 60
  store i32 0, ptr %quantization646, align 4, !tbaa !63
  %noise_shaping647 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 61
  store i32 1, ptr %noise_shaping647, align 8, !tbaa !64
  %noise_shaping_stop648 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 62
  store i32 0, ptr %noise_shaping_stop648, align 4, !tbaa !65
  %use_best_huffman649 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 64
  store i32 0, ptr %use_best_huffman649, align 4, !tbaa !66
  br label %for.body699.preheader

if.end673.thread.sink.split:                      ; preds = %if.end610, %if.end610
  store i32 2, ptr %quality611, align 4, !tbaa !54
  br label %if.end673.thread

if.end673.thread:                                 ; preds = %if.end610, %if.end673.thread.sink.split
  store i32 0, ptr %filter_type, align 8, !tbaa !37
  %psymodel668 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 63
  store i32 1, ptr %psymodel668, align 8, !tbaa !62
  %quantization669 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 60
  store i32 1, ptr %quantization669, align 4, !tbaa !63
  %noise_shaping670 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 61
  store i32 1, ptr %noise_shaping670, align 8, !tbaa !64
  %noise_shaping_stop671 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 62
  store i32 0, ptr %noise_shaping_stop671, align 4, !tbaa !65
  %use_best_huffman672 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 64
  store i32 1, ptr %use_best_huffman672, align 4, !tbaa !66
  br label %for.body699.preheader

for.body699.preheader:                            ; preds = %if.end610, %if.end650.thread, %if.end622.thread1128, %if.end633.thread, %if.then677, %if.end673.thread
  br label %for.body699

if.then677:                                       ; preds = %if.end610
  store i32 0, ptr %filter_type, align 8, !tbaa !37
  %psymodel679 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 63
  store i32 1, ptr %psymodel679, align 8, !tbaa !62
  %quantization680 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 60
  store i32 1, ptr %quantization680, align 4, !tbaa !63
  %noise_shaping681 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 61
  store i32 1, ptr %noise_shaping681, align 8, !tbaa !64
  %noise_shaping_stop682 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 62
  store i32 1, ptr %noise_shaping_stop682, align 4, !tbaa !65
  %use_best_huffman683 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 64
  store i32 1, ptr %use_best_huffman683, align 4, !tbaa !66
  br label %for.body699.preheader

if.then688:                                       ; preds = %if.end610
  store i32 1, ptr %filter_type, align 8, !tbaa !37
  %psymodel690 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 63
  store i32 1, ptr %psymodel690, align 8, !tbaa !62
  %quantization691 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 60
  store i32 1, ptr %quantization691, align 4, !tbaa !63
  %noise_shaping692 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 61
  store i32 3, ptr %noise_shaping692, align 8, !tbaa !64
  %noise_shaping_stop693 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 62
  store i32 2, ptr %noise_shaping_stop693, align 4, !tbaa !65
  %use_best_huffman694 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 64
  store i32 2, ptr %use_best_huffman694, align 4, !tbaa !66
  tail call void @exit(i32 noundef -99) #19
  unreachable

for.body699:                                      ; preds = %for.body699.preheader, %for.body699
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body699 ], [ 0, %for.body699.preheader ]
  %72 = load i32, ptr %samplerate_index, align 8, !tbaa !47
  %73 = load i32, ptr %version, align 8, !tbaa !48
  %mul702 = mul nsw i32 %73, 3
  %add703 = add nsw i32 %mul702, %72
  %idxprom = sext i32 %add703 to i64
  %arrayidx704 = getelementptr inbounds [6 x %struct.scalefac_struct], ptr @sfBandIndex, i64 0, i64 %idxprom
  %arrayidx706 = getelementptr inbounds [23 x i32], ptr %arrayidx704, i64 0, i64 %indvars.iv
  %74 = load i32, ptr %arrayidx706, align 4, !tbaa !16
  %arrayidx708 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %indvars.iv
  store i32 %74, ptr %arrayidx708, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond1106.not = icmp eq i64 %indvars.iv.next, 23
  br i1 %exitcond1106.not, label %for.body715, label %for.body699, !llvm.loop !67

for.body715:                                      ; preds = %for.body699, %for.body715
  %indvars.iv1107 = phi i64 [ %indvars.iv.next1108, %for.body715 ], [ 0, %for.body699 ]
  %75 = load i32, ptr %samplerate_index, align 8, !tbaa !47
  %76 = load i32, ptr %version, align 8, !tbaa !48
  %mul718 = mul nsw i32 %76, 3
  %add719 = add nsw i32 %mul718, %75
  %idxprom720 = sext i32 %add719 to i64
  %arrayidx723 = getelementptr inbounds [6 x %struct.scalefac_struct], ptr @sfBandIndex, i64 0, i64 %idxprom720, i32 1, i64 %indvars.iv1107
  %77 = load i32, ptr %arrayidx723, align 4, !tbaa !16
  %arrayidx725 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %indvars.iv1107
  store i32 %77, ptr %arrayidx725, align 4, !tbaa !16
  %indvars.iv.next1108 = add nuw nsw i64 %indvars.iv1107, 1
  %exitcond1110.not = icmp eq i64 %indvars.iv.next1108, 14
  br i1 %exitcond1110.not, label %for.end728, label %for.body715, !llvm.loop !68

for.end728:                                       ; preds = %for.body715
  %bWriteVbrTag729 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 5
  %78 = load i32, ptr %bWriteVbrTag729, align 8, !tbaa !56
  %tobool730.not = icmp eq i32 %78, 0
  br i1 %tobool730.not, label %if.end737, label %if.then731

if.then731:                                       ; preds = %for.end728
  %79 = load i32, ptr %version, align 8, !tbaa !48
  %sub733 = sub nsw i32 1, %79
  %80 = load i32, ptr %mode11122, align 4, !tbaa !14
  %81 = load i32, ptr %samplerate_index, align 8, !tbaa !47
  %call736 = tail call i32 @InitVbrTag(ptr noundef nonnull @bs, i32 noundef %sub733, i32 noundef %80, i32 noundef %81) #17
  br label %if.end737

if.end737:                                        ; preds = %if.then731, %for.end728
  %82 = load i32, ptr %VBR, align 8, !tbaa !17
  %tobool739.not = icmp eq i32 %82, 0
  br i1 %tobool739.not, label %if.else744, label %if.then740

if.then740:                                       ; preds = %if.end737
  %83 = load i32, ptr @disp_brhist, align 4, !tbaa !16
  %tobool741.not = icmp eq i32 %83, 0
  br i1 %tobool741.not, label %if.end745, label %if.then742

if.then742:                                       ; preds = %if.then740
  tail call void @brhist_init(ptr noundef nonnull %gfp, i32 noundef 1, i32 noundef 14) #17
  br label %if.end745

if.else744:                                       ; preds = %if.end737
  store i32 0, ptr @disp_brhist, align 4, !tbaa !16
  br label %if.end745

if.end745:                                        ; preds = %if.then740, %if.then742, %if.else744
  ret void
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare void @InitFormatBitStream() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.log.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #4

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare i32 @SmpFrqIndex(i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @display_bitrates(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare i32 @BitrateIndex(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @init_bit_stream_w(ptr noundef) local_unnamed_addr #3

declare i32 @InitVbrTag(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @brhist_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @lame_print_config(ptr noundef readonly %gfp) local_unnamed_addr #0 {
entry:
  %out_samplerate1 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 3
  %0 = load i32, ptr %out_samplerate1, align 8, !tbaa !18
  %conv = sitofp i32 %0 to double
  %div = fmul fast double %conv, 1.000000e-03
  %conv2 = fptrunc double %div to float
  %resample_ratio = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 49
  %1 = load float, ptr %resample_ratio, align 8, !tbaa !24
  %mul = fmul fast float %1, %conv2
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %2 = load i32, ptr %stereo, align 4, !tbaa !46
  %mul3 = shl nsw i32 %2, 4
  %conv4 = sitofp i32 %mul3 to float
  %mul5 = fmul fast float %conv4, %conv2
  %brate = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 11
  %3 = load i32, ptr %brate, align 8, !tbaa !19
  %conv6 = sitofp i32 %3 to float
  %div7 = fdiv fast float %mul5, %conv6
  %4 = load ptr, ptr @stderr, align 8, !tbaa !42
  tail call void @lame_print_version(ptr noundef %4) #17
  %num_channels = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 1
  %5 = load i32, ptr %num_channels, align 8, !tbaa !13
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, ptr %stereo, align 4, !tbaa !46
  %cmp10 = icmp eq i32 %6, 1
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr @stderr, align 8, !tbaa !42
  %8 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 67, i64 1, ptr %7) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load float, ptr %resample_ratio, align 8, !tbaa !24
  %cmp13 = fcmp fast une float %9, 1.000000e+00
  br i1 %cmp13, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end
  %10 = load ptr, ptr @stderr, align 8, !tbaa !42
  %conv16 = fptosi float %mul to i32
  %conv17 = fptosi float %conv2 to i32
  %call18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.6, i32 noundef %conv16, i32 noundef %conv17) #18
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end
  %highpass2 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 56
  %11 = load float, ptr %highpass2, align 4, !tbaa !35
  %cmp21 = fcmp fast ogt float %11, 0.000000e+00
  br i1 %cmp21, label %if.then23, label %if.end32

if.then23:                                        ; preds = %if.end19
  %12 = load ptr, ptr @stderr, align 8, !tbaa !42
  %highpass1 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 55
  %13 = load float, ptr %highpass1, align 8, !tbaa !34
  %mul24 = fmul fast float %conv2, 5.000000e+02
  %mul25 = fmul fast float %mul24, %13
  %conv26 = fpext float %mul25 to double
  %mul29 = fmul fast float %mul24, %11
  %conv30 = fpext float %mul29 to double
  %call31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.7, double noundef %conv26, double noundef %conv30) #18
  br label %if.end32

if.end32:                                         ; preds = %if.then23, %if.end19
  %lowpass1 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 53
  %14 = load float, ptr %lowpass1, align 8, !tbaa !30
  %cmp34 = fcmp fast ogt float %14, 0.000000e+00
  br i1 %cmp34, label %if.then36, label %if.end45

if.then36:                                        ; preds = %if.end32
  %15 = load ptr, ptr @stderr, align 8, !tbaa !42
  %mul38 = fmul fast float %conv2, 5.000000e+02
  %mul39 = fmul fast float %mul38, %14
  %conv40 = fpext float %mul39 to double
  %lowpass2 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 54
  %16 = load float, ptr %lowpass2, align 4, !tbaa !31
  %mul42 = fmul fast float %mul38, %16
  %conv43 = fpext float %mul42 to double
  %call44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.8, double noundef %conv40, double noundef %conv43) #18
  br label %if.end45

if.end45:                                         ; preds = %if.then36, %if.end32
  %gtkflag = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 4
  %17 = load i32, ptr %gtkflag, align 4, !tbaa !61
  %tobool.not = icmp eq i32 %17, 0
  %18 = load ptr, ptr @stderr, align 8, !tbaa !42
  %inPath48 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 31
  %19 = load ptr, ptr %inPath48, align 8, !tbaa !69
  br i1 %tobool.not, label %if.else, label %if.then46

if.then46:                                        ; preds = %if.end45
  %call47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.9, ptr noundef %19) #18
  br label %if.end80

if.else:                                          ; preds = %if.end45
  %call49 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(2) @.str.11) #20
  %tobool50.not = icmp eq i32 %call49, 0
  %spec.select = select i1 %tobool50.not, ptr @.str.12, ptr %19
  %outPath = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 32
  %20 = load ptr, ptr %outPath, align 8, !tbaa !57
  %call52 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(2) @.str.11) #20
  %tobool53.not = icmp eq i32 %call52, 0
  %spec.select117 = select i1 %tobool53.not, ptr @.str.13, ptr %20
  %call59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.10, ptr noundef %spec.select, ptr noundef %spec.select117) #18
  %VBR = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 21
  %21 = load i32, ptr %VBR, align 8, !tbaa !17
  %tobool60.not = icmp eq i32 %21, 0
  %22 = load ptr, ptr @stderr, align 8, !tbaa !42
  %23 = load i32, ptr %out_samplerate1, align 8, !tbaa !18
  %conv68 = sitofp i32 %23 to double
  %div69 = fmul fast double %conv68, 1.000000e-03
  br i1 %tobool60.not, label %if.else66, label %if.then61

if.then61:                                        ; preds = %if.else
  %VBR_q = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 22
  %24 = load i32, ptr %VBR_q, align 4, !tbaa !27
  %mode = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 8
  %25 = load i32, ptr %mode, align 4, !tbaa !14
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr @lame_print_config.mode_names, i64 0, i64 %idxprom
  %26 = load ptr, ptr %arrayidx, align 8, !tbaa !42
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 43
  %27 = load i32, ptr %version, align 8, !tbaa !48
  %sub = sub nsw i32 2, %27
  %quality = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 6
  %28 = load i32, ptr %quality, align 4, !tbaa !54
  %call65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.14, double noundef %div69, i32 noundef %24, ptr noundef %26, i32 noundef %sub, i32 noundef %28) #18
  br label %if.end80

if.else66:                                        ; preds = %if.else
  %29 = load i32, ptr %brate, align 8, !tbaa !19
  %mode71 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 8
  %30 = load i32, ptr %mode71, align 4, !tbaa !14
  %idxprom72 = sext i32 %30 to i64
  %arrayidx73 = getelementptr inbounds [4 x ptr], ptr @lame_print_config.mode_names, i64 0, i64 %idxprom72
  %31 = load ptr, ptr %arrayidx73, align 8, !tbaa !42
  %version74 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 43
  %32 = load i32, ptr %version74, align 8, !tbaa !48
  %sub75 = sub nsw i32 2, %32
  %conv76 = fpext float %div7 to double
  %quality77 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 6
  %33 = load i32, ptr %quality77, align 4, !tbaa !54
  %call78 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.15, double noundef %div69, i32 noundef %29, ptr noundef %31, i32 noundef %sub75, double noundef %conv76, i32 noundef %33) #18
  br label %if.end80

if.end80:                                         ; preds = %if.then61, %if.else66, %if.then46
  %34 = load ptr, ptr @stderr, align 8, !tbaa !42
  %call81 = tail call i32 @fflush(ptr noundef %34)
  ret void
}

declare void @lame_print_version(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lame_encode_frame(ptr noundef %gfp, ptr noundef %inbuf_l, ptr noundef %inbuf_r, i32 %mf_size, ptr noundef %mp3buf, i32 noundef %mp3buf_size) local_unnamed_addr #0 {
entry:
  %xr = alloca [2 x [2 x [576 x double]]], align 16
  %l3_enc = alloca [2 x [2 x [576 x i32]]], align 16
  %masking_ratio = alloca [2 x [2 x %struct.III_psy_ratio]], align 16
  %masking_MS_ratio = alloca [2 x [2 x %struct.III_psy_ratio]], align 16
  %scalefac = alloca [2 x [2 x %struct.III_scalefac_t]], align 16
  %inbuf = alloca [2 x ptr], align 16
  %pe = alloca [2 x [2 x double]], align 16
  %pe_MS = alloca [2 x [2 x double]], align 16
  %mean_bits = alloca i32, align 4
  %bitsPerFrame = alloca i32, align 4
  %ms_ratio_next = alloca double, align 8
  %bufp = alloca [2 x ptr], align 16
  %blocktype = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 18432, ptr nonnull %xr) #17
  call void @llvm.lifetime.start.p0(i64 9216, ptr nonnull %l3_enc) #17
  call void @llvm.lifetime.start.p0(i64 3904, ptr nonnull %masking_ratio) #17
  call void @llvm.lifetime.start.p0(i64 3904, ptr nonnull %masking_MS_ratio) #17
  call void @llvm.lifetime.start.p0(i64 976, ptr nonnull %scalefac) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inbuf) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pe) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pe_MS) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mean_bits) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitsPerFrame) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ms_ratio_next) #17
  store double 0.000000e+00, ptr %ms_ratio_next, align 8, !tbaa !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3904) %masking_ratio, i8 0, i64 3904, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3904) %masking_MS_ratio, i8 0, i64 3904, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(976) %scalefac, i8 0, i64 976, i1 false)
  store ptr %inbuf_l, ptr %inbuf, align 16, !tbaa !42
  %arrayidx3 = getelementptr inbounds [2 x ptr], ptr %inbuf, i64 0, i64 1
  store ptr %inbuf_r, ptr %arrayidx3, align 8, !tbaa !42
  %mode_ext = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 52
  store i32 0, ptr %mode_ext, align 4, !tbaa !45
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 39
  %0 = load i64, ptr %frameNum, align 8, !tbaa !5
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 3
  %1 = load i32, ptr %out_samplerate, align 8, !tbaa !18
  %conv = sitofp i32 %1 to double
  %brate = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 11
  %2 = load i32, ptr %brate, align 8, !tbaa !19
  store i64 0, ptr @lame_encode_frame.sentBits, align 8, !tbaa !72
  %framesize = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 42
  %3 = load i32, ptr %framesize, align 4, !tbaa !23
  %mul = mul nsw i32 %3, %2
  %conv4 = sitofp i32 %mul to double
  %mul6 = fmul fast double %conv, 8.000000e-03
  %div7 = fdiv fast double %conv4, %mul6
  %add = fadd fast double %div7, 1.000000e-09
  %4 = tail call fast double @llvm.floor.f64(double %add)
  %sub = fsub fast double %div7, %4
  %5 = tail call fast double @llvm.fabs.f64(double %sub)
  %cmp8 = fcmp fast olt double %5, 1.000000e-09
  br i1 %cmp8, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %if.then
  store double 0.000000e+00, ptr @lame_encode_frame.frac_SpF, align 8, !tbaa !70
  store double -0.000000e+00, ptr @lame_encode_frame.slot_lag, align 8, !tbaa !70
  %padding333 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 44
  br label %if.then13

if.end:                                           ; preds = %if.then
  store double %sub, ptr @lame_encode_frame.frac_SpF, align 8, !tbaa !70
  %fneg = fneg fast double %sub
  store double %fneg, ptr @lame_encode_frame.slot_lag, align 8, !tbaa !70
  %padding = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 44
  %cmp11 = fcmp fast oeq double %sub, 0.000000e+00
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end.thread, %if.end
  %padding336 = phi ptr [ %padding333, %if.end.thread ], [ %padding, %if.end ]
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end
  %padding335 = phi ptr [ %padding336, %if.then13 ], [ %padding, %if.end ]
  %storemerge = phi i32 [ 0, %if.then13 ], [ 1, %if.end ]
  store i32 %storemerge, ptr %padding335, align 4, !tbaa !73
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %entry
  %padding_type = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 15
  %6 = load i32, ptr %padding_type, align 8, !tbaa !74
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.end16
  %padding17 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 44
  store i32 0, ptr %padding17, align 4, !tbaa !73
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end16
  %padding19 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 44
  store i32 1, ptr %padding19, align 4, !tbaa !73
  br label %sw.epilog

sw.default:                                       ; preds = %if.end16
  %VBR = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 21
  %7 = load i32, ptr %VBR, align 8, !tbaa !17
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %sw.default
  %padding22 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 44
  store i32 0, ptr %padding22, align 4, !tbaa !73
  br label %sw.epilog

if.else:                                          ; preds = %sw.default
  %disable_reservoir = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 17
  %8 = load i32, ptr %disable_reservoir, align 8, !tbaa !75
  %tobool23.not = icmp eq i32 %8, 0
  br i1 %tobool23.not, label %if.else26, label %if.then24

if.then24:                                        ; preds = %if.else
  %padding25 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 44
  store i32 0, ptr %padding25, align 4, !tbaa !73
  br label %sw.epilog

if.else26:                                        ; preds = %if.else
  %9 = load double, ptr @lame_encode_frame.frac_SpF, align 8, !tbaa !70
  %cmp27 = fcmp fast une double %9, 0.000000e+00
  br i1 %cmp27, label %if.then29, label %sw.epilog

if.then29:                                        ; preds = %if.else26
  %10 = load double, ptr @lame_encode_frame.slot_lag, align 8, !tbaa !70
  %sub30 = fadd fast double %9, -1.000000e+00
  %cmp31 = fcmp fast ogt double %10, %sub30
  br i1 %cmp31, label %if.then33, label %if.else36

if.then33:                                        ; preds = %if.then29
  %sub34 = fsub fast double %10, %9
  store double %sub34, ptr @lame_encode_frame.slot_lag, align 8, !tbaa !70
  %padding35 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 44
  store i32 0, ptr %padding35, align 4, !tbaa !73
  br label %sw.epilog

if.else36:                                        ; preds = %if.then29
  %padding37 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 44
  store i32 1, ptr %padding37, align 4, !tbaa !73
  %sub38 = fsub fast double 1.000000e+00, %9
  %add39 = fadd fast double %sub38, %10
  store double %add39, ptr @lame_encode_frame.slot_lag, align 8, !tbaa !70
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then21, %if.else26, %if.else36, %if.then33, %if.then24, %sw.bb18, %sw.bb
  %gtkflag = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 4
  %11 = load i32, ptr %gtkflag, align 4, !tbaa !61
  %tobool44.not = icmp eq i32 %11, 0
  br i1 %tobool44.not, label %land.lhs.true, label %if.end61

land.lhs.true:                                    ; preds = %sw.epilog
  %silent = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 7
  %12 = load i32, ptr %silent, align 8, !tbaa !15
  %tobool45.not = icmp eq i32 %12, 0
  br i1 %tobool45.not, label %if.then46, label %if.end61

if.then46:                                        ; preds = %land.lhs.true
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 43
  %13 = load i32, ptr %version, align 8, !tbaa !48
  %cmp47 = icmp eq i32 %13, 0
  %cond = select i1 %cmp47, i64 200, i64 50
  %rem = srem i64 %0, %cond
  %cmp51 = icmp eq i64 %rem, 0
  br i1 %cmp51, label %if.then53, label %if.end61

if.then53:                                        ; preds = %if.then46
  %out_samplerate54 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 3
  %14 = load i32, ptr %out_samplerate54, align 8, !tbaa !18
  %totalframes = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 40
  %15 = load i64, ptr %totalframes, align 8, !tbaa !26
  %framesize56 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 42
  %16 = load i32, ptr %framesize56, align 4, !tbaa !23
  tail call void @timestatus(i32 noundef %14, i64 noundef %0, i64 noundef %15, i32 noundef %16) #17
  %17 = load i32, ptr @disp_brhist, align 4, !tbaa !16
  %tobool57.not = icmp eq i32 %17, 0
  br i1 %tobool57.not, label %if.end61, label %if.then58

if.then58:                                        ; preds = %if.then53
  tail call void @brhist_add_count() #17
  tail call void @brhist_disp() #17
  br label %if.end61

if.end61:                                         ; preds = %if.then46, %if.then58, %if.then53, %land.lhs.true, %sw.epilog
  %psymodel = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 63
  %18 = load i32, ptr %psymodel, align 8, !tbaa !62
  %tobool62.not = icmp eq i32 %18, 0
  br i1 %tobool62.not, label %for.cond115.preheader, label %if.then63

for.cond115.preheader:                            ; preds = %if.end61
  %mode_gr116 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 45
  %19 = load i32, ptr %mode_gr116, align 8, !tbaa !21
  %cmp117346 = icmp sgt i32 %19, 0
  br i1 %cmp117346, label %for.cond120.preheader.lr.ph, label %for.end171

for.cond120.preheader.lr.ph:                      ; preds = %for.cond115.preheader
  %stereo121 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %20 = load i32, ptr %stereo121, align 4, !tbaa !46
  %cmp122344 = icmp sgt i32 %20, 0
  br i1 %cmp122344, label %for.cond120.preheader.us.preheader, label %for.cond148.preheader.lr.ph

for.cond120.preheader.us.preheader:               ; preds = %for.cond120.preheader.lr.ph
  %wide.trip.count373 = zext i32 %19 to i64
  %wide.trip.count368 = zext i32 %20 to i64
  br label %for.cond120.preheader.us

for.cond120.preheader.us:                         ; preds = %for.cond120.preheader.us.preheader, %for.cond120.for.inc139_crit_edge.us
  %indvars.iv370 = phi i64 [ 0, %for.cond120.preheader.us.preheader ], [ %indvars.iv.next371, %for.cond120.for.inc139_crit_edge.us ]
  %arrayidx126.us = getelementptr inbounds %struct.III_side_info_t, ptr @l3_side, i64 0, i32 4, i64 %indvars.iv370
  br label %for.body124.us

for.body124.us:                                   ; preds = %for.cond120.preheader.us, %for.body124.us
  %indvars.iv365 = phi i64 [ 0, %for.cond120.preheader.us ], [ %indvars.iv.next366, %for.body124.us ]
  %arrayidx129.us = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx126.us, i64 0, i64 %indvars.iv365
  %block_type131.us = getelementptr inbounds %struct.gr_info, ptr %arrayidx129.us, i64 0, i32 6
  store i32 0, ptr %block_type131.us, align 8, !tbaa !76
  %arrayidx135.us = getelementptr inbounds [2 x [2 x double]], ptr %pe, i64 0, i64 %indvars.iv370, i64 %indvars.iv365
  store double 7.000000e+02, ptr %arrayidx135.us, align 8, !tbaa !70
  %indvars.iv.next366 = add nuw nsw i64 %indvars.iv365, 1
  %exitcond369.not = icmp eq i64 %indvars.iv.next366, %wide.trip.count368
  br i1 %exitcond369.not, label %for.cond120.for.inc139_crit_edge.us, label %for.body124.us, !llvm.loop !79

for.cond120.for.inc139_crit_edge.us:              ; preds = %for.body124.us
  %indvars.iv.next371 = add nuw nsw i64 %indvars.iv370, 1
  %exitcond374.not = icmp eq i64 %indvars.iv.next371, %wide.trip.count373
  br i1 %exitcond374.not, label %if.end142, label %for.cond120.preheader.us, !llvm.loop !80

if.then63:                                        ; preds = %if.end61
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bufp) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blocktype) #17
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 45
  %21 = load i32, ptr %mode_gr, align 8, !tbaa !21
  %sub64 = add nsw i32 %21, -1
  %idxprom = sext i32 %sub64 to i64
  %arrayidx65 = getelementptr inbounds [2 x double], ptr @lame_encode_frame.ms_ratio, i64 0, i64 %idxprom
  %22 = load double, ptr %arrayidx65, align 8, !tbaa !70
  %cmp67342 = icmp sgt i32 %21, 0
  br i1 %cmp67342, label %for.cond69.preheader.lr.ph, label %for.end113

for.cond69.preheader.lr.ph:                       ; preds = %if.then63
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %.pre = load i32, ptr %stereo, align 4, !tbaa !46
  br label %for.cond69.preheader

for.cond69.preheader:                             ; preds = %for.cond69.preheader.lr.ph, %for.inc111
  %23 = phi i32 [ %.pre, %for.cond69.preheader.lr.ph ], [ %25, %for.inc111 ]
  %indvars.iv362 = phi i64 [ 0, %for.cond69.preheader.lr.ph ], [ %indvars.iv.next363, %for.inc111 ]
  %cmp70338 = icmp sgt i32 %23, 0
  br i1 %cmp70338, label %for.body72.lr.ph, label %for.end

for.body72.lr.ph:                                 ; preds = %for.cond69.preheader
  %mul75 = mul i64 %indvars.iv362, 576
  %sub77 = add i64 %mul75, 304
  %idxprom78 = and i64 %sub77, 4294967280
  %wide.trip.count = zext i32 %23 to i64
  br label %for.body72

for.body72:                                       ; preds = %for.body72.lr.ph, %for.body72
  %indvars.iv = phi i64 [ 0, %for.body72.lr.ph ], [ %indvars.iv.next, %for.body72 ]
  %arrayidx74 = getelementptr inbounds [2 x ptr], ptr %inbuf, i64 0, i64 %indvars.iv
  %24 = load ptr, ptr %arrayidx74, align 8, !tbaa !42
  %arrayidx79 = getelementptr inbounds i16, ptr %24, i64 %idxprom78
  %arrayidx81 = getelementptr inbounds [2 x ptr], ptr %bufp, i64 0, i64 %indvars.iv
  store ptr %arrayidx79, ptr %arrayidx81, align 8, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body72, !llvm.loop !81

for.end:                                          ; preds = %for.body72, %for.cond69.preheader
  %.pre-phi = trunc i64 %indvars.iv362 to i32
  %arrayidx84 = getelementptr inbounds [2 x double], ptr @lame_encode_frame.ms_ratio, i64 0, i64 %indvars.iv362
  %arrayidx86 = getelementptr inbounds [2 x double], ptr @lame_encode_frame.ms_ener_ratio, i64 0, i64 %indvars.iv362
  %arrayidx90 = getelementptr inbounds [2 x [2 x double]], ptr %pe, i64 0, i64 %indvars.iv362
  %arrayidx93 = getelementptr inbounds [2 x [2 x double]], ptr %pe_MS, i64 0, i64 %indvars.iv362
  call void @L3psycho_anal(ptr noundef nonnull %gfp, ptr noundef nonnull %bufp, i32 noundef %.pre-phi, ptr noundef nonnull %arrayidx84, ptr noundef nonnull %ms_ratio_next, ptr noundef nonnull %arrayidx86, ptr noundef nonnull %masking_ratio, ptr noundef nonnull %masking_MS_ratio, ptr noundef nonnull %arrayidx90, ptr noundef nonnull %arrayidx93, ptr noundef nonnull %blocktype) #17
  %25 = load i32, ptr %stereo, align 4, !tbaa !46
  %cmp98340 = icmp sgt i32 %25, 0
  br i1 %cmp98340, label %for.body100.lr.ph, label %for.inc111

for.body100.lr.ph:                                ; preds = %for.end
  %arrayidx104 = getelementptr inbounds %struct.III_side_info_t, ptr @l3_side, i64 0, i32 4, i64 %indvars.iv362
  %wide.trip.count360 = zext i32 %25 to i64
  br label %for.body100

for.body100:                                      ; preds = %for.body100.lr.ph, %for.body100
  %indvars.iv357 = phi i64 [ 0, %for.body100.lr.ph ], [ %indvars.iv.next358, %for.body100 ]
  %arrayidx102 = getelementptr inbounds [2 x i32], ptr %blocktype, i64 0, i64 %indvars.iv357
  %26 = load i32, ptr %arrayidx102, align 4, !tbaa !16
  %arrayidx107 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx104, i64 0, i64 %indvars.iv357
  %block_type = getelementptr inbounds %struct.gr_info, ptr %arrayidx107, i64 0, i32 6
  store i32 %26, ptr %block_type, align 8, !tbaa !76
  %indvars.iv.next358 = add nuw nsw i64 %indvars.iv357, 1
  %exitcond361.not = icmp eq i64 %indvars.iv.next358, %wide.trip.count360
  br i1 %exitcond361.not, label %for.inc111, label %for.body100, !llvm.loop !82

for.inc111:                                       ; preds = %for.body100, %for.end
  %indvars.iv.next363 = add nuw nsw i64 %indvars.iv362, 1
  %27 = load i32, ptr %mode_gr, align 8, !tbaa !21
  %28 = sext i32 %27 to i64
  %cmp67 = icmp slt i64 %indvars.iv.next363, %28
  br i1 %cmp67, label %for.cond69.preheader, label %for.end113, !llvm.loop !83

for.end113:                                       ; preds = %for.inc111, %if.then63
  %29 = phi i32 [ %21, %if.then63 ], [ %27, %for.inc111 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blocktype) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bufp) #17
  br label %if.end142

if.end142:                                        ; preds = %for.cond120.for.inc139_crit_edge.us, %for.end113
  %30 = phi i32 [ %29, %for.end113 ], [ %19, %for.cond120.for.inc139_crit_edge.us ]
  %ms_ratio_prev.0 = phi double [ %22, %for.end113 ], [ 0.000000e+00, %for.cond120.for.inc139_crit_edge.us ]
  %cmp145351 = icmp sgt i32 %30, 0
  br i1 %cmp145351, label %for.cond148.preheader.lr.ph, label %for.end171

for.cond148.preheader.lr.ph:                      ; preds = %for.cond120.preheader.lr.ph, %if.end142
  %ms_ratio_prev.0392 = phi double [ %ms_ratio_prev.0, %if.end142 ], [ 0.000000e+00, %for.cond120.preheader.lr.ph ]
  %31 = phi i32 [ %30, %if.end142 ], [ %19, %for.cond120.preheader.lr.ph ]
  %stereo149 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %32 = load i32, ptr %stereo149, align 4, !tbaa !46
  %cmp150349 = icmp sgt i32 %32, 0
  br i1 %cmp150349, label %for.cond148.preheader.us.preheader, label %for.end171

for.cond148.preheader.us.preheader:               ; preds = %for.cond148.preheader.lr.ph
  %wide.trip.count383 = zext i32 %31 to i64
  %wide.trip.count378 = zext i32 %32 to i64
  br label %for.cond148.preheader.us

for.cond148.preheader.us:                         ; preds = %for.cond148.preheader.us.preheader, %for.cond148.for.inc169_crit_edge.us
  %indvars.iv380 = phi i64 [ 0, %for.cond148.preheader.us.preheader ], [ %indvars.iv.next381, %for.cond148.for.inc169_crit_edge.us ]
  %arrayidx154.us = getelementptr inbounds %struct.III_side_info_t, ptr @l3_side, i64 0, i32 4, i64 %indvars.iv380
  br label %for.body152.us

for.body152.us:                                   ; preds = %for.cond148.preheader.us, %for.body152.us
  %indvars.iv375 = phi i64 [ 0, %for.cond148.preheader.us ], [ %indvars.iv.next376, %for.body152.us ]
  %arrayidx157.us = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx154.us, i64 0, i64 %indvars.iv375
  %mixed_block_flag.us = getelementptr inbounds %struct.gr_info, ptr %arrayidx157.us, i64 0, i32 7
  store i32 0, ptr %mixed_block_flag.us, align 4, !tbaa !84
  %block_type159.us = getelementptr inbounds %struct.gr_info, ptr %arrayidx157.us, i64 0, i32 6
  %33 = load i32, ptr %block_type159.us, align 8, !tbaa !85
  %cmp160.us = icmp ne i32 %33, 0
  %spec.select = zext i1 %cmp160.us to i32
  %34 = getelementptr inbounds %struct.gr_info, ptr %arrayidx157.us, i64 0, i32 5
  store i32 %spec.select, ptr %34, align 4
  %indvars.iv.next376 = add nuw nsw i64 %indvars.iv375, 1
  %exitcond379.not = icmp eq i64 %indvars.iv.next376, %wide.trip.count378
  br i1 %exitcond379.not, label %for.cond148.for.inc169_crit_edge.us, label %for.body152.us, !llvm.loop !86

for.cond148.for.inc169_crit_edge.us:              ; preds = %for.body152.us
  %indvars.iv.next381 = add nuw nsw i64 %indvars.iv380, 1
  %exitcond384.not = icmp eq i64 %indvars.iv.next381, %wide.trip.count383
  br i1 %exitcond384.not, label %for.end171, label %for.cond148.preheader.us, !llvm.loop !87

for.end171:                                       ; preds = %for.cond148.for.inc169_crit_edge.us, %for.cond115.preheader, %for.cond148.preheader.lr.ph, %if.end142
  %ms_ratio_prev.0391 = phi double [ %ms_ratio_prev.0, %if.end142 ], [ %ms_ratio_prev.0392, %for.cond148.preheader.lr.ph ], [ 0.000000e+00, %for.cond115.preheader ], [ %ms_ratio_prev.0392, %for.cond148.for.inc169_crit_edge.us ]
  call void @mdct_sub48(ptr noundef nonnull %gfp, ptr noundef %inbuf_l, ptr noundef %inbuf_r, ptr noundef nonnull %xr, ptr noundef nonnull @l3_side) #17
  %mode = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 8
  %35 = load i32, ptr %mode, align 4, !tbaa !14
  %cmp175 = icmp eq i32 %35, 1
  br i1 %cmp175, label %if.then178, label %if.end197

if.then178:                                       ; preds = %for.end171
  %36 = load i32, ptr getelementptr inbounds (%struct.III_side_info_t, ptr @l3_side, i64 0, i32 4, i64 0, i32 0, i64 0, i32 0, i32 6), align 8, !tbaa !76
  %37 = load i32, ptr getelementptr inbounds (%struct.III_side_info_t, ptr @l3_side, i64 0, i32 4, i64 0, i32 0, i64 1, i32 0, i32 6), align 8, !tbaa !76
  %cmp179 = icmp eq i32 %36, %37
  br i1 %cmp179, label %if.end183, label %if.end197

if.end183:                                        ; preds = %if.then178
  %38 = load i32, ptr getelementptr inbounds (%struct.III_side_info_t, ptr @l3_side, i64 0, i32 4, i64 1, i32 0, i64 0, i32 0, i32 6), align 8, !tbaa !76
  %39 = load i32, ptr getelementptr inbounds (%struct.III_side_info_t, ptr @l3_side, i64 0, i32 4, i64 1, i32 0, i64 1, i32 0, i32 6), align 8, !tbaa !76
  %cmp181 = icmp eq i32 %38, %39
  br i1 %cmp181, label %if.then185, label %if.end197

if.then185:                                       ; preds = %if.end183
  %40 = load double, ptr @lame_encode_frame.ms_ratio, align 16, !tbaa !70
  %41 = load double, ptr getelementptr inbounds ([2 x double], ptr @lame_encode_frame.ms_ratio, i64 0, i64 1), align 8, !tbaa !70
  %42 = load double, ptr %ms_ratio_next, align 8, !tbaa !70
  %add186 = fadd fast double %40, %ms_ratio_prev.0391
  %add187 = fadd fast double %add186, %41
  %add188 = fadd fast double %add187, %42
  %mul189 = fmul fast double %add188, 2.500000e-01
  %cmp192 = fcmp fast olt double %mul189, 3.500000e-01
  br i1 %cmp192, label %if.then194, label %if.end197

if.then194:                                       ; preds = %if.then185
  store i32 2, ptr %mode_ext, align 4, !tbaa !45
  br label %if.end197

if.end197:                                        ; preds = %for.end171, %if.then178, %if.then185, %if.then194, %if.end183
  %force_ms = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 10
  %43 = load i32, ptr %force_ms, align 4, !tbaa !55
  %tobool198.not = icmp eq i32 %43, 0
  br i1 %tobool198.not, label %if.end201, label %if.end201.thread

if.end201.thread:                                 ; preds = %if.end197
  store i32 2, ptr %mode_ext, align 4, !tbaa !45
  br label %44

if.end201:                                        ; preds = %if.end197
  %.pre385 = load i32, ptr %mode_ext, align 4, !tbaa !45
  %phi.cmp = icmp eq i32 %.pre385, 2
  br i1 %phi.cmp, label %44, label %45

44:                                               ; preds = %if.end201.thread, %if.end201
  br label %45

45:                                               ; preds = %if.end201, %44
  %46 = phi ptr [ %masking_MS_ratio, %44 ], [ %masking_ratio, %if.end201 ]
  %47 = phi ptr [ %pe_MS, %44 ], [ %pe, %if.end201 ]
  %VBR208 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 21
  %48 = load i32, ptr %VBR208, align 8, !tbaa !17
  %tobool209.not = icmp eq i32 %48, 0
  br i1 %tobool209.not, label %if.else216, label %if.then210

if.then210:                                       ; preds = %45
  call void @VBR_iteration_loop(ptr noundef nonnull %gfp, ptr noundef nonnull %47, ptr noundef nonnull @lame_encode_frame.ms_ratio, ptr noundef nonnull %xr, ptr noundef nonnull %46, ptr noundef nonnull @l3_side, ptr noundef nonnull %l3_enc, ptr noundef nonnull %scalefac) #17
  br label %if.end222

if.else216:                                       ; preds = %45
  call void @iteration_loop(ptr noundef nonnull %gfp, ptr noundef nonnull %47, ptr noundef nonnull @lame_encode_frame.ms_ratio, ptr noundef nonnull %xr, ptr noundef nonnull %46, ptr noundef nonnull @l3_side, ptr noundef nonnull %l3_enc, ptr noundef nonnull %scalefac) #17
  br label %if.end222

if.end222:                                        ; preds = %if.else216, %if.then210
  %bitrate_index = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 50
  %49 = load i32, ptr %bitrate_index, align 4, !tbaa !49
  %idxprom223 = sext i32 %49 to i64
  %arrayidx224 = getelementptr inbounds [15 x i64], ptr @brhist_temp, i64 0, i64 %idxprom223
  %50 = load i64, ptr %arrayidx224, align 8, !tbaa !72
  %inc225 = add nsw i64 %50, 1
  store i64 %inc225, ptr %arrayidx224, align 8, !tbaa !72
  call void @getframebits(ptr noundef nonnull %gfp, ptr noundef nonnull %bitsPerFrame, ptr noundef nonnull %mean_bits) #17
  %51 = load i32, ptr %bitsPerFrame, align 4, !tbaa !16
  call void @III_format_bitstream(ptr noundef nonnull %gfp, i32 noundef %51, ptr noundef nonnull %l3_enc, ptr noundef nonnull @l3_side, ptr noundef nonnull %scalefac, ptr noundef nonnull @bs) #17
  %52 = load i64, ptr getelementptr inbounds (%struct.bit_stream_struc, ptr @bs, i64 0, i32 5), align 8, !tbaa !88
  %53 = load i64, ptr @lame_encode_frame.sentBits, align 8, !tbaa !72
  %sub228 = sub i64 %52, %53
  store i64 %sub228, ptr @lame_encode_frame.frameBits, align 8, !tbaa !72
  %rem229 = and i64 %sub228, 7
  %tobool230.not = icmp eq i64 %rem229, 0
  br i1 %tobool230.not, label %if.end234, label %if.then231

if.then231:                                       ; preds = %if.end222
  %54 = load ptr, ptr @stderr, align 8, !tbaa !42
  %div232329 = lshr i64 %sub228, 3
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.16, i64 noundef %sub228, i64 noundef %div232329, i64 noundef %rem229) #18
  %.pre386 = load i64, ptr @lame_encode_frame.frameBits, align 8, !tbaa !72
  %.pre387 = load i64, ptr @lame_encode_frame.sentBits, align 8, !tbaa !72
  br label %if.end234

if.end234:                                        ; preds = %if.then231, %if.end222
  %55 = phi i64 [ %.pre387, %if.then231 ], [ %53, %if.end222 ]
  %56 = phi i64 [ %.pre386, %if.then231 ], [ %sub228, %if.end222 ]
  %add235 = add i64 %55, %56
  store i64 %add235, ptr @lame_encode_frame.sentBits, align 8, !tbaa !72
  %call236 = call i32 @copy_buffer(ptr noundef %mp3buf, i32 noundef %mp3buf_size, ptr noundef nonnull @bs) #17
  %bWriteVbrTag = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 5
  %57 = load i32, ptr %bWriteVbrTag, align 8, !tbaa !56
  %tobool237.not = icmp eq i32 %57, 0
  br i1 %tobool237.not, label %if.end241, label %if.then238

if.then238:                                       ; preds = %if.end234
  %58 = load i64, ptr @lame_encode_frame.sentBits, align 8, !tbaa !72
  %div239328 = lshr i64 %58, 3
  %conv240 = trunc i64 %div239328 to i32
  call void @AddVbrFrame(i32 noundef %conv240) #17
  br label %if.end241

if.end241:                                        ; preds = %if.then238, %if.end234
  %59 = load i64, ptr %frameNum, align 8, !tbaa !5
  %inc243 = add nsw i64 %59, 1
  store i64 %inc243, ptr %frameNum, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ms_ratio_next) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitsPerFrame) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mean_bits) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pe_MS) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pe) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inbuf) #17
  call void @llvm.lifetime.end.p0(i64 976, ptr nonnull %scalefac) #17
  call void @llvm.lifetime.end.p0(i64 3904, ptr nonnull %masking_MS_ratio) #17
  call void @llvm.lifetime.end.p0(i64 3904, ptr nonnull %masking_ratio) #17
  call void @llvm.lifetime.end.p0(i64 9216, ptr nonnull %l3_enc) #17
  call void @llvm.lifetime.end.p0(i64 18432, ptr nonnull %xr) #17
  ret i32 %call236
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #4

declare void @timestatus(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @brhist_add_count() local_unnamed_addr #3

declare void @brhist_disp() local_unnamed_addr #3

declare void @L3psycho_anal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mdct_sub48(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @VBR_iteration_loop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @iteration_loop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @getframebits(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @III_format_bitstream(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @copy_buffer(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @AddVbrFrame(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @fill_buffer_resample(ptr nocapture noundef readonly %gfp, ptr nocapture noundef writeonly %outbuf, i32 noundef %desired_len, ptr nocapture noundef readonly %inbuf, i32 noundef %len, ptr nocapture noundef %num_used, i32 noundef %ch) local_unnamed_addr #8 {
entry:
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 39
  %0 = load i64, ptr %frameNum, align 8, !tbaa !5
  %cmp = icmp eq i64 %0, 0
  %idxprom = sext i32 %ch to i64
  br i1 %cmp, label %land.lhs.true, label %if.then9

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds [2 x i32], ptr @fill_buffer_resample.init, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !16
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.end12

if.end:                                           ; preds = %land.lhs.true
  store i32 1, ptr %arrayidx, align 4, !tbaa !16
  %arrayidx4 = getelementptr inbounds [2 x double], ptr @fill_buffer_resample.itime, i64 0, i64 %idxprom
  store double 0.000000e+00, ptr %arrayidx4, align 8, !tbaa !70
  %arrayidx6 = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %idxprom
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %arrayidx6, i8 0, i64 10, i1 false)
  %.pr.pre = load i64, ptr %frameNum, align 8, !tbaa !5
  %phi.cmp = icmp eq i64 %.pr.pre, 0
  br i1 %phi.cmp, label %if.end12, label %if.then9

if.then9:                                         ; preds = %entry, %if.end
  %arrayidx11 = getelementptr inbounds [2 x i32], ptr @fill_buffer_resample.init, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx11, align 4, !tbaa !16
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %if.then9, %if.end
  %resample_ratio = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 49
  %2 = load float, ptr %resample_ratio, align 8, !tbaa !24
  %cmp17295 = icmp sgt i32 %desired_len, 0
  br i1 %cmp17295, label %for.body.lr.ph, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  %idxprom179.phi.trans.insert = sext i32 %ch to i64
  %arrayidx180.phi.trans.insert = getelementptr inbounds [2 x double], ptr @fill_buffer_resample.itime, i64 0, i64 %idxprom179.phi.trans.insert
  %.pre = load double, ptr %arrayidx180.phi.trans.insert, align 8, !tbaa !70
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end12
  %conv = fpext float %2 to double
  %add = fadd fast double %conv, 5.000000e-01
  %3 = tail call fast double @llvm.floor.f64(double %add)
  %sub = fsub fast double %conv, %3
  %4 = tail call fast double @llvm.fabs.f64(double %sub)
  %cmp15 = fcmp fast olt double %4, 1.000000e-04
  %idxprom22 = sext i32 %ch to i64
  %arrayidx23 = getelementptr inbounds [2 x double], ptr @fill_buffer_resample.itime, i64 0, i64 %idxprom22
  %5 = load double, ptr %arrayidx23, align 8, !tbaa !70
  %wide.trip.count311 = zext i32 %desired_len to i64
  br i1 %cmp15, label %for.body.us, label %for.body

for.body.us:                                      ; preds = %for.body.lr.ph, %cond.end63.us
  %indvars.iv308 = phi i64 [ %indvars.iv.next309, %cond.end63.us ], [ 0, %for.body.lr.ph ]
  %6 = trunc i64 %indvars.iv308 to i32
  %conv19.us = sitofp i32 %6 to float
  %mul.us = fmul fast float %2, %conv19.us
  %conv21.us = fpext float %mul.us to double
  %sub24.us = fsub fast double %conv21.us, %5
  %7 = tail call fast double @llvm.floor.f64(double %sub24.us)
  %conv25.us = fptosi double %7 to i32
  %add26.us = add nsw i32 %conv25.us, 2
  %cmp27.not.us = icmp slt i32 %add26.us, %len
  br i1 %cmp27.not.us, label %if.end30.us, label %for.end.loopexit.split.loop.exit

if.end30.us:                                      ; preds = %for.body.us
  %conv33.us = sitofp i32 %conv25.us to double
  %8 = fadd fast double %5, %conv33.us
  %sub35.us = fsub fast double %conv21.us, %8
  %cmp37.us = icmp slt i32 %conv25.us, 0
  br i1 %cmp37.us, label %cond.end.us, label %cond.end.thread.us

cond.end.thread.us:                               ; preds = %if.end30.us
  %idxprom45291.us = zext i32 %conv25.us to i64
  %arrayidx46.us = getelementptr inbounds i16, ptr %inbuf, i64 %idxprom45291.us
  %cond.in276.us = load i16, ptr %arrayidx46.us, align 2, !tbaa !90
  br label %cond.false58.us

cond.end.us:                                      ; preds = %if.end30.us
  %add41.us = add nsw i32 %conv25.us, 5
  %idxprom42.us = sext i32 %add41.us to i64
  %arrayidx43.us = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %idxprom22, i64 %idxprom42.us
  %cond.in.us = load i16, ptr %arrayidx43.us, align 2, !tbaa !90
  %cmp49.not.us = icmp eq i32 %conv25.us, -1
  br i1 %cmp49.not.us, label %cond.false58.us, label %cond.true51.us

cond.true51.us:                                   ; preds = %cond.end.us
  %add54.us = add nsw i32 %conv25.us, 6
  %idxprom55.us = sext i32 %add54.us to i64
  %arrayidx56.us = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %idxprom22, i64 %idxprom55.us
  br label %cond.end63.us

cond.false58.us:                                  ; preds = %cond.end.us, %cond.end.thread.us
  %cond.in279.us = phi i16 [ %cond.in276.us, %cond.end.thread.us ], [ %cond.in.us, %cond.end.us ]
  %add48.us = add nsw i32 %conv25.us, 1
  %idxprom60290.us = zext i32 %add48.us to i64
  %arrayidx61.us = getelementptr inbounds i16, ptr %inbuf, i64 %idxprom60290.us
  br label %cond.end63.us

cond.end63.us:                                    ; preds = %cond.false58.us, %cond.true51.us
  %cond.in278.us = phi i16 [ %cond.in.us, %cond.true51.us ], [ %cond.in279.us, %cond.false58.us ]
  %cond64.in.in.us = phi ptr [ %arrayidx56.us, %cond.true51.us ], [ %arrayidx61.us, %cond.false58.us ]
  %cond64.in.us = load i16, ptr %cond64.in.in.us, align 2, !tbaa !90
  %conv67.us = sitofp i16 %cond64.in.us to double
  %mul68.us = fmul fast double %sub35.us, %conv67.us
  %conv69.us = sitofp i16 %cond.in278.us to double
  %9 = fsub fast double 1.000000e+00, %sub35.us
  %mul70.neg.us = fmul fast double %9, %conv69.us
  %sub71.us = fadd fast double %mul70.neg.us, 5.000000e-01
  %add72.us = fadd fast double %sub71.us, %mul68.us
  %10 = tail call fast double @llvm.floor.f64(double %add72.us)
  %conv73.us = fptosi double %10 to i16
  %arrayidx75.us = getelementptr inbounds i16, ptr %outbuf, i64 %indvars.iv308
  store i16 %conv73.us, ptr %arrayidx75.us, align 2, !tbaa !90
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1
  %exitcond312.not = icmp eq i64 %indvars.iv.next309, %wide.trip.count311
  br i1 %exitcond312.not, label %for.end, label %for.body.us, !llvm.loop !92

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body.lr.ph ]
  %11 = trunc i64 %indvars.iv to i32
  %conv19 = sitofp i32 %11 to float
  %mul = fmul fast float %2, %conv19
  %conv21 = fpext float %mul to double
  %sub24 = fsub fast double %conv21, %5
  %12 = tail call fast double @llvm.floor.f64(double %sub24)
  %conv25 = fptosi double %12 to i32
  %add26 = add nsw i32 %conv25, 2
  %cmp27.not = icmp slt i32 %add26, %len
  br i1 %cmp27.not, label %if.end30, label %for.end.loopexit359.split.loop.exit

if.end30:                                         ; preds = %for.body
  %conv33 = sitofp i32 %conv25 to double
  %13 = fadd fast double %5, %conv33
  %sub35 = fsub fast double %conv21, %13
  %sub36 = fadd fast double %sub35, -1.000000e+00
  %cmp37 = icmp slt i32 %conv25, 0
  br i1 %cmp37, label %cond.end, label %cond.end63

cond.end:                                         ; preds = %if.end30
  %add41 = add nsw i32 %conv25, 5
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %idxprom22, i64 %idxprom42
  %cond.in = load i16, ptr %arrayidx43, align 2, !tbaa !90
  %cmp49.not = icmp eq i32 %conv25, -1
  br i1 %cmp49.not, label %cond.end63.thread338, label %cond.end94

cond.end63.thread338:                             ; preds = %cond.end
  %add48340 = add nsw i32 %conv25, 1
  %idxprom60290341 = zext i32 %add48340 to i64
  %arrayidx61342 = getelementptr inbounds i16, ptr %inbuf, i64 %idxprom60290341
  %cond64.in343 = load i16, ptr %arrayidx61342, align 2, !tbaa !90
  %add76344 = fadd fast double %sub35, 1.000000e+00
  %sub77345 = fadd fast double %sub35, -2.000000e+00
  br label %cond.end94.thread347

cond.end63:                                       ; preds = %if.end30
  %idxprom45291 = zext i32 %conv25 to i64
  %arrayidx46 = getelementptr inbounds i16, ptr %inbuf, i64 %idxprom45291
  %cond.in276 = load i16, ptr %arrayidx46, align 2, !tbaa !90
  %add48 = add nuw nsw i32 %conv25, 1
  %idxprom60290 = zext i32 %add48 to i64
  %arrayidx61 = getelementptr inbounds i16, ptr %inbuf, i64 %idxprom60290
  %cond64.in = load i16, ptr %arrayidx61, align 2, !tbaa !90
  %add76 = fadd fast double %sub35, 1.000000e+00
  %sub77 = fadd fast double %sub35, -2.000000e+00
  %cmp79 = icmp eq i32 %conv25, 0
  br i1 %cmp79, label %cond.end94.thread347, label %cond.end94.thread

cond.end94.thread:                                ; preds = %cond.end63
  %sub78 = add nsw i32 %conv25, -1
  %idxprom91289 = zext i32 %sub78 to i64
  %arrayidx92 = getelementptr inbounds i16, ptr %inbuf, i64 %idxprom91289
  br label %cond.false107.sink.split

cond.end94.thread347:                             ; preds = %cond.end63.thread338, %cond.end63
  %sub77337.ph = phi double [ %sub77345, %cond.end63.thread338 ], [ %sub77, %cond.end63 ]
  %add76334.ph = phi double [ %add76344, %cond.end63.thread338 ], [ %add76, %cond.end63 ]
  %cond64.in331.ph = phi i16 [ %cond64.in343, %cond.end63.thread338 ], [ %cond64.in, %cond.end63 ]
  %cond.in278328.ph = phi i16 [ %cond.in, %cond.end63.thread338 ], [ %cond.in276, %cond.end63 ]
  %add85352 = add nsw i32 %conv25, 4
  %idxprom86353358 = zext i32 %add85352 to i64
  %arrayidx87354 = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %idxprom22, i64 %idxprom86353358
  br label %cond.false107.sink.split

cond.end94:                                       ; preds = %cond.end
  %add54 = add nsw i32 %conv25, 6
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %idxprom22, i64 %idxprom55
  %cond64.in322 = load i16, ptr %arrayidx56, align 2, !tbaa !90
  %add76323 = fadd fast double %sub35, 1.000000e+00
  %sub77324 = fadd fast double %sub35, -2.000000e+00
  %add85 = add nsw i32 %conv25, 4
  %idxprom86 = sext i32 %add85 to i64
  %arrayidx87 = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %idxprom22, i64 %idxprom86
  %cond95.in = load i16, ptr %arrayidx87, align 2, !tbaa !90
  %cond95 = sext i16 %cond95.in to i32
  %cmp97.not = icmp eq i32 %conv25, -2
  br i1 %cmp97.not, label %cond.false107, label %cond.true99

cond.true99:                                      ; preds = %cond.end94
  %add103 = add nsw i32 %conv25, 7
  %idxprom104 = sext i32 %add103 to i64
  %arrayidx105 = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %idxprom22, i64 %idxprom104
  br label %cond.end112

cond.false107.sink.split:                         ; preds = %cond.end94.thread, %cond.end94.thread347
  %arrayidx87354.sink = phi ptr [ %arrayidx87354, %cond.end94.thread347 ], [ %arrayidx92, %cond.end94.thread ]
  %sub77336.ph = phi double [ %sub77337.ph, %cond.end94.thread347 ], [ %sub77, %cond.end94.thread ]
  %add76333.ph = phi double [ %add76334.ph, %cond.end94.thread347 ], [ %add76, %cond.end94.thread ]
  %cond64.in330.ph = phi i16 [ %cond64.in331.ph, %cond.end94.thread347 ], [ %cond64.in, %cond.end94.thread ]
  %cond.in278327.ph = phi i16 [ %cond.in278328.ph, %cond.end94.thread347 ], [ %cond.in276, %cond.end94.thread ]
  %cond95.in355 = load i16, ptr %arrayidx87354.sink, align 2, !tbaa !90
  %cond95356 = sext i16 %cond95.in355 to i32
  br label %cond.false107

cond.false107:                                    ; preds = %cond.false107.sink.split, %cond.end94
  %sub77336 = phi double [ %sub77324, %cond.end94 ], [ %sub77336.ph, %cond.false107.sink.split ]
  %add76333 = phi double [ %add76323, %cond.end94 ], [ %add76333.ph, %cond.false107.sink.split ]
  %cond64.in330 = phi i16 [ %cond64.in322, %cond.end94 ], [ %cond64.in330.ph, %cond.false107.sink.split ]
  %cond.in278327 = phi i16 [ %cond.in, %cond.end94 ], [ %cond.in278327.ph, %cond.false107.sink.split ]
  %cond95285 = phi i32 [ %cond95, %cond.end94 ], [ %cond95356, %cond.false107.sink.split ]
  %idxprom109288 = zext i32 %add26 to i64
  %arrayidx110 = getelementptr inbounds i16, ptr %inbuf, i64 %idxprom109288
  br label %cond.end112

cond.end112:                                      ; preds = %cond.false107, %cond.true99
  %sub77335 = phi double [ %sub77324, %cond.true99 ], [ %sub77336, %cond.false107 ]
  %add76332 = phi double [ %add76323, %cond.true99 ], [ %add76333, %cond.false107 ]
  %cond64.in329 = phi i16 [ %cond64.in322, %cond.true99 ], [ %cond64.in330, %cond.false107 ]
  %cond.in278326 = phi i16 [ %cond.in, %cond.true99 ], [ %cond.in278327, %cond.false107 ]
  %cond95284 = phi i32 [ %cond95, %cond.true99 ], [ %cond95285, %cond.false107 ]
  %cond113.in.in = phi ptr [ %arrayidx105, %cond.true99 ], [ %arrayidx110, %cond.false107 ]
  %cond113.in = load i16, ptr %cond113.in.in, align 2, !tbaa !90
  %sub114 = sub nsw i32 0, %cond95284
  %conv115 = sitofp i32 %sub114 to double
  %mul118 = fmul fast double %sub77335, %sub35
  %div = fmul fast double %mul118, %conv115
  %conv120 = sitofp i16 %cond.in278326 to double
  %mul122 = fmul fast double %add76332, %sub77335
  %mul123 = fmul fast double %mul122, 5.000000e-01
  %div124 = fmul fast double %mul123, %conv120
  %conv126 = sitofp i16 %cond64.in329 to double
  %mul129 = fmul fast double %mul122, -5.000000e-01
  %div130 = fmul fast double %mul129, %sub35
  %div130.neg = fmul fast double %div130, %conv126
  %conv132 = sitofp i16 %cond113.in to double
  %mul135 = fmul fast double %add76332, %sub35
  %div136 = fmul fast double %mul135, %conv132
  %reass.add293 = fadd fast double %div136, %div
  %reass.mul294 = fmul fast double %reass.add293, 0x3FC5555555555555
  %reass.add292 = fadd fast double %reass.mul294, %div124
  %reass.mul = fmul fast double %reass.add292, %sub36
  %sub131 = fadd fast double %div130.neg, 5.000000e-01
  %add137 = fadd fast double %sub131, %reass.mul
  %14 = tail call fast double @llvm.floor.f64(double %add137)
  %conv138 = fptosi double %14 to i32
  %cmp139 = icmp sgt i32 %conv138, 32767
  br i1 %cmp139, label %for.inc, label %if.else144

if.else144:                                       ; preds = %cond.end112
  %15 = call i32 @llvm.smax.i32(i32 %conv138, i32 -32767)
  %16 = trunc i32 %15 to i16
  br label %for.inc

for.inc:                                          ; preds = %if.else144, %cond.end112
  %.sink = phi i16 [ 32767, %cond.end112 ], [ %16, %if.else144 ]
  %arrayidx143 = getelementptr inbounds i16, ptr %outbuf, i64 %indvars.iv
  store i16 %.sink, ptr %arrayidx143, align 2, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count311
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !92

for.end.loopexit.split.loop.exit:                 ; preds = %for.body.us
  %17 = trunc i64 %indvars.iv308 to i32
  br label %for.end

for.end.loopexit359.split.loop.exit:              ; preds = %for.body
  %18 = trunc i64 %indvars.iv to i32
  br label %for.end

for.end:                                          ; preds = %for.inc, %cond.end63.us, %for.end.loopexit359.split.loop.exit, %for.end.loopexit.split.loop.exit, %if.end12.for.end_crit_edge
  %idxprom179.pre-phi = phi i64 [ %idxprom179.phi.trans.insert, %if.end12.for.end_crit_edge ], [ %idxprom22, %for.end.loopexit.split.loop.exit ], [ %idxprom22, %for.end.loopexit359.split.loop.exit ], [ %idxprom22, %cond.end63.us ], [ %idxprom22, %for.inc ]
  %19 = phi double [ %.pre, %if.end12.for.end_crit_edge ], [ %5, %for.end.loopexit.split.loop.exit ], [ %5, %for.end.loopexit359.split.loop.exit ], [ %5, %cond.end63.us ], [ %5, %for.inc ]
  %k.0.lcssa = phi i32 [ 0, %if.end12.for.end_crit_edge ], [ %17, %for.end.loopexit.split.loop.exit ], [ %18, %for.end.loopexit359.split.loop.exit ], [ %desired_len, %cond.end63.us ], [ %desired_len, %for.inc ]
  %j.1 = phi i32 [ 0, %if.end12.for.end_crit_edge ], [ %conv25.us, %for.end.loopexit.split.loop.exit ], [ %conv25, %for.end.loopexit359.split.loop.exit ], [ %conv25.us, %cond.end63.us ], [ %conv25, %for.inc ]
  %add165 = add nsw i32 %j.1, 2
  %20 = tail call i32 @llvm.smin.i32(i32 %add165, i32 %len)
  store i32 %20, ptr %num_used, align 4, !tbaa !16
  %conv173 = sitofp i32 %20 to float
  %conv174 = sitofp i32 %k.0.lcssa to float
  %mul176 = fmul fast float %2, %conv174
  %sub177 = fsub fast float %conv173, %mul176
  %conv178 = fpext float %sub177 to double
  %arrayidx180 = getelementptr inbounds [2 x double], ptr @fill_buffer_resample.itime, i64 0, i64 %idxprom179.pre-phi
  %add181 = fadd fast double %19, %conv178
  store double %add181, ptr %arrayidx180, align 8, !tbaa !70
  %add186 = add i32 %20, -5
  br label %for.body185

for.body185:                                      ; preds = %for.end, %for.body185
  %indvars.iv313 = phi i64 [ 0, %for.end ], [ %indvars.iv.next314, %for.body185 ]
  %21 = trunc i64 %indvars.iv313 to i32
  %sub187 = add i32 %add186, %21
  %idxprom188 = sext i32 %sub187 to i64
  %arrayidx189 = getelementptr inbounds i16, ptr %inbuf, i64 %idxprom188
  %22 = load i16, ptr %arrayidx189, align 2, !tbaa !90
  %arrayidx193 = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %idxprom179.pre-phi, i64 %indvars.iv313
  store i16 %22, ptr %arrayidx193, align 2, !tbaa !90
  %indvars.iv.next314 = add nuw nsw i64 %indvars.iv313, 1
  %exitcond316.not = icmp eq i64 %indvars.iv.next314, 5
  br i1 %exitcond316.not, label %for.end196, label %for.body185, !llvm.loop !93

for.end196:                                       ; preds = %for.body185
  ret i32 %k.0.lcssa
}

; Function Attrs: argmemonly mustprogress nofree noinline nosync nounwind willreturn uwtable
define dso_local i32 @fill_buffer(ptr nocapture readnone %gfp, ptr nocapture noundef writeonly %outbuf, i32 noundef %desired_len, ptr nocapture noundef readonly %inbuf, i32 noundef %len) local_unnamed_addr #9 {
entry:
  %0 = tail call i32 @llvm.smin.i32(i32 %desired_len, i32 %len)
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %outbuf, ptr align 1 %inbuf, i64 %mul, i1 false)
  ret i32 %0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lame_encode_buffer(ptr noundef %gfp, ptr noundef %buffer_l, ptr noundef %buffer_r, i32 noundef %nsamples, ptr noundef %mp3buf, i32 noundef %mp3buf_size) local_unnamed_addr #0 {
entry:
  %in_buffer = alloca [2 x ptr], align 16
  %n_in = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in_buffer) #17
  store ptr %buffer_l, ptr %in_buffer, align 16, !tbaa !42
  %arrayidx1 = getelementptr inbounds [2 x ptr], ptr %in_buffer, i64 0, i64 1
  store ptr %buffer_r, ptr %arrayidx1, align 8, !tbaa !42
  %framesize = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 42
  %0 = load i32, ptr %framesize, align 4, !tbaa !23
  %sub = add nsw i32 %0, 752
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 39
  %1 = load i64, ptr %frameNum, align 8, !tbaa !5
  %cmp = icmp ne i64 %1, 0
  %.b = load i1, ptr @lame_encode_buffer.frame_buffered, align 4
  %or.cond = select i1 %cmp, i1 true, i1 %.b
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12224) @mfbuf, i8 0, i64 12224, i1 false)
  store i1 true, ptr @lame_encode_buffer.frame_buffered, align 4
  store i32 1088, ptr @mf_samples_to_encode, align 4, !tbaa !16
  store i32 752, ptr @mf_size, align 4, !tbaa !16
  %.pr = load i64, ptr %frameNum, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i64 [ %.pr, %if.then ], [ %1, %entry ]
  %cmp3 = icmp eq i64 %2, 1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i1 false, ptr @lame_encode_buffer.frame_buffered, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %num_channels = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 1
  %3 = load i32, ptr %num_channels, align 8, !tbaa !13
  %cmp6 = icmp eq i32 %3, 2
  br i1 %cmp6, label %land.lhs.true7, label %if.end25

land.lhs.true7:                                   ; preds = %if.end5
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %4 = load i32, ptr %stereo, align 4, !tbaa !46
  %cmp8 = icmp eq i32 %4, 1
  %cmp10157 = icmp sgt i32 %nsamples, 0
  %or.cond173 = and i1 %cmp8, %cmp10157
  br i1 %or.cond173, label %for.body.preheader, label %if.end25

for.body.preheader:                               ; preds = %land.lhs.true7
  %wide.trip.count = zext i32 %nsamples to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %arrayidx12 = getelementptr inbounds i16, ptr %buffer_l, i64 %indvars.iv
  %5 = load i16, ptr %arrayidx12, align 2, !tbaa !90
  %conv = sext i16 %5 to i32
  %arrayidx15 = getelementptr inbounds i16, ptr %buffer_r, i64 %indvars.iv
  %6 = load i16, ptr %arrayidx15, align 2, !tbaa !90
  %conv16 = sext i16 %6 to i32
  %add17 = add nsw i32 %conv16, %conv
  %div = sdiv i32 %add17, 2
  %conv18 = trunc i32 %div to i16
  store i16 %conv18, ptr %arrayidx12, align 2, !tbaa !90
  store i16 0, ptr %arrayidx15, align 2, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end25, label %for.body, !llvm.loop !94

if.end25:                                         ; preds = %for.body, %land.lhs.true7, %if.end5
  %cmp26167 = icmp sgt i32 %nsamples, 0
  br i1 %cmp26167, label %while.body.lr.ph, label %cleanup102

while.body.lr.ph:                                 ; preds = %if.end25
  %stereo29 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %resample_ratio = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 49
  %.pre = load i32, ptr %stereo29, align 4, !tbaa !46
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %7 = phi i32 [ %.pre, %while.body.lr.ph ], [ %27, %cleanup ]
  %nsamples.addr.0170 = phi i32 [ %nsamples, %while.body.lr.ph ], [ %sub57, %cleanup ]
  %mp3size.0169 = phi i32 [ 0, %while.body.lr.ph ], [ %mp3size.2, %cleanup ]
  %mp3buf.addr.0168 = phi ptr [ %mp3buf, %while.body.lr.ph ], [ %mp3buf.addr.2, %cleanup ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n_in) #17
  store i32 0, ptr %n_in, align 4, !tbaa !16
  %cmp30159 = icmp sgt i32 %7, 0
  br i1 %cmp30159, label %for.body32, label %for.end56

for.body32:                                       ; preds = %while.body, %if.end51
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %if.end51 ], [ 0, %while.body ]
  %8 = load float, ptr %resample_ratio, align 8, !tbaa !24
  %cmp33 = fcmp fast une float %8, 1.000000e+00
  %9 = load i32, ptr @mf_size, align 4, !tbaa !16
  %idxprom38 = sext i32 %9 to i64
  %arrayidx39 = getelementptr inbounds [2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 %indvars.iv176, i64 %idxprom38
  %10 = load i32, ptr %framesize, align 4, !tbaa !23
  %arrayidx42 = getelementptr inbounds [2 x ptr], ptr %in_buffer, i64 0, i64 %indvars.iv176
  %11 = load ptr, ptr %arrayidx42, align 8, !tbaa !42
  br i1 %cmp33, label %if.then35, label %if.else

if.then35:                                        ; preds = %for.body32
  %12 = trunc i64 %indvars.iv176 to i32
  %call = call i32 @fill_buffer_resample(ptr noundef nonnull %gfp, ptr noundef nonnull %arrayidx39, i32 noundef %10, ptr noundef %11, i32 noundef %nsamples.addr.0170, ptr noundef nonnull %n_in, i32 noundef %12)
  %.pre191 = load i32, ptr %n_in, align 4, !tbaa !16
  br label %if.end51

if.else:                                          ; preds = %for.body32
  %call50 = tail call i32 @fill_buffer(ptr undef, ptr noundef nonnull %arrayidx39, i32 noundef %10, ptr noundef %11, i32 noundef %nsamples.addr.0170)
  store i32 %call50, ptr %n_in, align 4, !tbaa !16
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then35
  %13 = phi i32 [ %.pre191, %if.then35 ], [ %call50, %if.else ]
  %n_out.1 = phi i32 [ %call, %if.then35 ], [ %call50, %if.else ]
  %arrayidx53 = getelementptr inbounds [2 x ptr], ptr %in_buffer, i64 0, i64 %indvars.iv176
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i16, ptr %11, i64 %idx.ext
  store ptr %add.ptr, ptr %arrayidx53, align 8, !tbaa !42
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1
  %14 = load i32, ptr %stereo29, align 4, !tbaa !46
  %15 = sext i32 %14 to i64
  %cmp30 = icmp slt i64 %indvars.iv.next177, %15
  br i1 %cmp30, label %for.body32, label %for.end56, !llvm.loop !95

for.end56:                                        ; preds = %if.end51, %while.body
  %16 = phi i32 [ 0, %while.body ], [ %13, %if.end51 ]
  %17 = phi i32 [ %7, %while.body ], [ %14, %if.end51 ]
  %n_out.0.lcssa = phi i32 [ 0, %while.body ], [ %n_out.1, %if.end51 ]
  %sub57 = sub nsw i32 %nsamples.addr.0170, %16
  %18 = load i32, ptr @mf_size, align 4, !tbaa !16
  %add58 = add nsw i32 %18, %n_out.0.lcssa
  store i32 %add58, ptr @mf_size, align 4, !tbaa !16
  %19 = load i32, ptr @mf_samples_to_encode, align 4, !tbaa !16
  %add59 = add nsw i32 %19, %n_out.0.lcssa
  store i32 %add59, ptr @mf_samples_to_encode, align 4, !tbaa !16
  %cmp60.not = icmp slt i32 %add58, %sub
  br i1 %cmp60.not, label %cleanup, label %if.then62

if.then62:                                        ; preds = %for.end56
  %call63 = tail call i32 @lame_encode_frame(ptr noundef %gfp, ptr noundef nonnull @mfbuf, ptr noundef getelementptr inbounds ([2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 1), i32 undef, ptr noundef %mp3buf.addr.0168, i32 noundef %mp3buf_size)
  %cmp64 = icmp eq i32 %call63, -1
  br i1 %cmp64, label %cleanup.thread, label %if.end67

cleanup.thread:                                   ; preds = %if.then62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_in) #17
  br label %cleanup102

if.end67:                                         ; preds = %if.then62
  %idx.ext68 = sext i32 %call63 to i64
  %add.ptr69 = getelementptr inbounds i8, ptr %mp3buf.addr.0168, i64 %idx.ext68
  %add70 = add nsw i32 %call63, %mp3size.0169
  %20 = load i32, ptr %framesize, align 4, !tbaa !23
  %21 = load i32, ptr @mf_size, align 4, !tbaa !16
  %sub72 = sub i32 %21, %20
  store i32 %sub72, ptr @mf_size, align 4, !tbaa !16
  %22 = load i32, ptr @mf_samples_to_encode, align 4, !tbaa !16
  %sub74 = sub nsw i32 %22, %20
  store i32 %sub74, ptr @mf_samples_to_encode, align 4, !tbaa !16
  %23 = load i32, ptr %stereo29, align 4, !tbaa !46
  %cmp77164 = icmp sgt i32 %23, 0
  %cmp81162 = icmp sgt i32 %sub72, 0
  %or.cond193 = select i1 %cmp77164, i1 %cmp81162, i1 false
  br i1 %or.cond193, label %for.cond80.preheader.us.preheader, label %cleanup

for.cond80.preheader.us.preheader:                ; preds = %if.end67
  %24 = sext i32 %20 to i64
  %wide.trip.count189 = zext i32 %23 to i64
  %wide.trip.count184 = zext i32 %sub72 to i64
  br label %for.cond80.preheader.us

for.cond80.preheader.us:                          ; preds = %for.cond80.preheader.us.preheader, %for.cond80.for.inc97_crit_edge.us
  %indvars.iv186 = phi i64 [ 0, %for.cond80.preheader.us.preheader ], [ %indvars.iv.next187, %for.cond80.for.inc97_crit_edge.us ]
  br label %for.body83.us

for.body83.us:                                    ; preds = %for.cond80.preheader.us, %for.body83.us
  %indvars.iv180 = phi i64 [ 0, %for.cond80.preheader.us ], [ %indvars.iv.next181, %for.body83.us ]
  %25 = add nsw i64 %indvars.iv180, %24
  %arrayidx89.us = getelementptr inbounds [2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 %indvars.iv186, i64 %25
  %26 = load i16, ptr %arrayidx89.us, align 2, !tbaa !90
  %arrayidx93.us = getelementptr inbounds [2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 %indvars.iv186, i64 %indvars.iv180
  store i16 %26, ptr %arrayidx93.us, align 2, !tbaa !90
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1
  %exitcond185.not = icmp eq i64 %indvars.iv.next181, %wide.trip.count184
  br i1 %exitcond185.not, label %for.cond80.for.inc97_crit_edge.us, label %for.body83.us, !llvm.loop !96

for.cond80.for.inc97_crit_edge.us:                ; preds = %for.body83.us
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %cleanup, label %for.cond80.preheader.us, !llvm.loop !97

cleanup:                                          ; preds = %for.cond80.for.inc97_crit_edge.us, %if.end67, %for.end56
  %27 = phi i32 [ %17, %for.end56 ], [ %23, %if.end67 ], [ %23, %for.cond80.for.inc97_crit_edge.us ]
  %mp3buf.addr.2 = phi ptr [ %mp3buf.addr.0168, %for.end56 ], [ %add.ptr69, %if.end67 ], [ %add.ptr69, %for.cond80.for.inc97_crit_edge.us ]
  %mp3size.2 = phi i32 [ %mp3size.0169, %for.end56 ], [ %add70, %if.end67 ], [ %add70, %for.cond80.for.inc97_crit_edge.us ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_in) #17
  %cmp26 = icmp sgt i32 %sub57, 0
  br i1 %cmp26, label %while.body, label %cleanup102, !llvm.loop !98

cleanup102:                                       ; preds = %cleanup, %if.end25, %cleanup.thread
  %retval.2 = phi i32 [ -1, %cleanup.thread ], [ 0, %if.end25 ], [ %mp3size.2, %cleanup ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in_buffer) #17
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lame_encode_buffer_interleaved(ptr noundef %gfp, ptr noundef %buffer, i32 noundef %nsamples, ptr noundef %mp3buf, i32 noundef %mp3buf_size) local_unnamed_addr #0 {
entry:
  %framesize = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 42
  %0 = load i32, ptr %framesize, align 4, !tbaa !23
  %sub = add nsw i32 %0, 752
  %num_channels = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 1
  %1 = load i32, ptr %num_channels, align 8, !tbaa !13
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @lame_encode_buffer(ptr noundef nonnull %gfp, ptr noundef %buffer, ptr noundef null, i32 noundef %nsamples, ptr noundef %mp3buf, i32 noundef %mp3buf_size)
  br label %cleanup141

if.end:                                           ; preds = %entry
  %resample_ratio = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 49
  %2 = load float, ptr %resample_ratio, align 8, !tbaa !24
  %cmp1 = fcmp fast une float %2, 1.000000e+00
  br i1 %cmp1, label %if.then2, label %if.end26

if.then2:                                         ; preds = %if.end
  %conv = sext i32 %nsamples to i64
  %mul = shl nsw i64 %conv, 1
  %call3 = tail call noalias ptr @malloc(i64 noundef %mul) #21
  %call6 = tail call noalias ptr @malloc(i64 noundef %mul) #21
  %cmp7 = icmp eq ptr %call3, null
  %cmp9 = icmp eq ptr %call6, null
  %or.cond = or i1 %cmp7, %cmp9
  br i1 %or.cond, label %cleanup141, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then2
  %cmp13243 = icmp sgt i32 %nsamples, 0
  br i1 %cmp13243, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count275 = zext i32 %nsamples to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv270 = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next271, %for.body ]
  %3 = shl nuw nsw i64 %indvars.iv270, 1
  %arrayidx = getelementptr inbounds i16, ptr %buffer, i64 %3
  %4 = load i16, ptr %arrayidx, align 2, !tbaa !90
  %arrayidx17 = getelementptr inbounds i16, ptr %call3, i64 %indvars.iv270
  store i16 %4, ptr %arrayidx17, align 2, !tbaa !90
  %5 = or i64 %3, 1
  %arrayidx21 = getelementptr inbounds i16, ptr %buffer, i64 %5
  %6 = load i16, ptr %arrayidx21, align 2, !tbaa !90
  %arrayidx23 = getelementptr inbounds i16, ptr %call6, i64 %indvars.iv270
  store i16 %6, ptr %arrayidx23, align 2, !tbaa !90
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1
  %exitcond276.not = icmp eq i64 %indvars.iv.next271, %wide.trip.count275
  br i1 %exitcond276.not, label %for.end, label %for.body, !llvm.loop !99

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %call24 = tail call i32 @lame_encode_buffer(ptr noundef %gfp, ptr noundef nonnull %call3, ptr noundef nonnull %call6, i32 noundef %nsamples, ptr noundef %mp3buf, i32 noundef %mp3buf_size)
  tail call void @free(ptr noundef nonnull %call3) #17
  tail call void @free(ptr noundef nonnull %call6) #17
  br label %cleanup141

if.end26:                                         ; preds = %if.end
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 39
  %7 = load i64, ptr %frameNum, align 8, !tbaa !5
  %cmp27 = icmp ne i64 %7, 0
  %.b = load i1, ptr @lame_encode_buffer_interleaved.frame_buffered, align 4
  %or.cond147 = select i1 %cmp27, i1 true, i1 %.b
  br i1 %or.cond147, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12224) @mfbuf, i8 0, i64 12224, i1 false)
  store i1 true, ptr @lame_encode_buffer_interleaved.frame_buffered, align 4
  store i32 1088, ptr @mf_samples_to_encode, align 4, !tbaa !16
  store i32 752, ptr @mf_size, align 4, !tbaa !16
  %.pr = load i64, ptr %frameNum, align 8, !tbaa !5
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end26
  %8 = phi i64 [ %.pr, %if.then29 ], [ %7, %if.end26 ]
  %cmp32 = icmp eq i64 %8, 1
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end30
  store i1 false, ptr @lame_encode_buffer_interleaved.frame_buffered, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end30
  %9 = load i32, ptr %num_channels, align 8, !tbaa !13
  %cmp37 = icmp eq i32 %9, 2
  br i1 %cmp37, label %land.lhs.true39, label %if.end68

land.lhs.true39:                                  ; preds = %if.end35
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %10 = load i32, ptr %stereo, align 4, !tbaa !46
  %cmp40 = icmp eq i32 %10, 1
  %cmp44228 = icmp sgt i32 %nsamples, 0
  %or.cond245 = and i1 %cmp40, %cmp44228
  br i1 %or.cond245, label %for.body46.preheader, label %if.end68

for.body46.preheader:                             ; preds = %land.lhs.true39
  %wide.trip.count = zext i32 %nsamples to i64
  br label %for.body46

for.body46:                                       ; preds = %for.body46.preheader, %for.body46
  %indvars.iv = phi i64 [ 0, %for.body46.preheader ], [ %indvars.iv.next, %for.body46 ]
  %11 = shl nuw nsw i64 %indvars.iv, 1
  %arrayidx49 = getelementptr inbounds i16, ptr %buffer, i64 %11
  %12 = load i16, ptr %arrayidx49, align 2, !tbaa !90
  %conv50 = sext i16 %12 to i32
  %13 = or i64 %11, 1
  %arrayidx54 = getelementptr inbounds i16, ptr %buffer, i64 %13
  %14 = load i16, ptr %arrayidx54, align 2, !tbaa !90
  %conv55 = sext i16 %14 to i32
  %add56 = add nsw i32 %conv55, %conv50
  %div = sdiv i32 %add56, 2
  %conv57 = trunc i32 %div to i16
  store i16 %conv57, ptr %arrayidx49, align 2, !tbaa !90
  store i16 0, ptr %arrayidx54, align 2, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end68, label %for.body46, !llvm.loop !100

if.end68:                                         ; preds = %for.body46, %land.lhs.true39, %if.end35
  %cmp69237 = icmp sgt i32 %nsamples, 0
  br i1 %cmp69237, label %while.body.lr.ph, label %cleanup141

while.body.lr.ph:                                 ; preds = %if.end68
  %stereo115 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %.pre = load i32, ptr %framesize, align 4, !tbaa !23
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup140
  %15 = phi i32 [ %.pre, %while.body.lr.ph ], [ %32, %cleanup140 ]
  %buffer.addr.0241 = phi ptr [ %buffer, %while.body.lr.ph ], [ %add.ptr, %cleanup140 ]
  %nsamples.addr.0240 = phi i32 [ %nsamples, %while.body.lr.ph ], [ %sub96, %cleanup140 ]
  %mp3buf.addr.0239 = phi ptr [ %mp3buf, %while.body.lr.ph ], [ %mp3buf.addr.2, %cleanup140 ]
  %mp3size.0238 = phi i32 [ 0, %while.body.lr.ph ], [ %mp3size.2, %cleanup140 ]
  %16 = tail call i32 @llvm.smin.i32(i32 %15, i32 %nsamples.addr.0240)
  %cmp76230 = icmp sgt i32 %16, 0
  %17 = load i32, ptr @mf_size, align 4, !tbaa !16
  br i1 %cmp76230, label %for.body78.lr.ph, label %for.end94

for.body78.lr.ph:                                 ; preds = %while.body
  %18 = sext i32 %17 to i64
  %wide.trip.count256 = zext i32 %16 to i64
  br label %for.body78

for.body78:                                       ; preds = %for.body78.lr.ph, %for.body78
  %indvars.iv250 = phi i64 [ 0, %for.body78.lr.ph ], [ %indvars.iv.next251, %for.body78 ]
  %19 = shl nuw nsw i64 %indvars.iv250, 1
  %arrayidx81 = getelementptr inbounds i16, ptr %buffer.addr.0241, i64 %19
  %20 = load i16, ptr %arrayidx81, align 2, !tbaa !90
  %21 = add nsw i64 %indvars.iv250, %18
  %arrayidx84 = getelementptr inbounds [3056 x i16], ptr @mfbuf, i64 0, i64 %21
  store i16 %20, ptr %arrayidx84, align 2, !tbaa !90
  %22 = or i64 %19, 1
  %arrayidx88 = getelementptr inbounds i16, ptr %buffer.addr.0241, i64 %22
  %23 = load i16, ptr %arrayidx88, align 2, !tbaa !90
  %arrayidx91 = getelementptr inbounds [2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 1, i64 %21
  store i16 %23, ptr %arrayidx91, align 2, !tbaa !90
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1
  %exitcond257.not = icmp eq i64 %indvars.iv.next251, %wide.trip.count256
  br i1 %exitcond257.not, label %for.end94, label %for.body78, !llvm.loop !101

for.end94:                                        ; preds = %for.body78, %while.body
  %mul95 = shl nsw i32 %16, 1
  %idx.ext = sext i32 %mul95 to i64
  %add.ptr = getelementptr inbounds i16, ptr %buffer.addr.0241, i64 %idx.ext
  %sub96 = sub nsw i32 %nsamples.addr.0240, %16
  %add97 = add nsw i32 %17, %16
  store i32 %add97, ptr @mf_size, align 4, !tbaa !16
  %24 = load i32, ptr @mf_samples_to_encode, align 4, !tbaa !16
  %add98 = add nsw i32 %24, %16
  store i32 %add98, ptr @mf_samples_to_encode, align 4, !tbaa !16
  %cmp99.not = icmp slt i32 %add97, %sub
  br i1 %cmp99.not, label %cleanup140, label %if.then101

if.then101:                                       ; preds = %for.end94
  %call102 = tail call i32 @lame_encode_frame(ptr noundef %gfp, ptr noundef nonnull @mfbuf, ptr noundef getelementptr inbounds ([2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 1), i32 undef, ptr noundef %mp3buf.addr.0239, i32 noundef %mp3buf_size)
  %cmp103 = icmp eq i32 %call102, -1
  br i1 %cmp103, label %cleanup141, label %if.end106

if.end106:                                        ; preds = %if.then101
  %idx.ext107 = sext i32 %call102 to i64
  %add.ptr108 = getelementptr inbounds i8, ptr %mp3buf.addr.0239, i64 %idx.ext107
  %add109 = add nsw i32 %call102, %mp3size.0238
  %25 = load i32, ptr %framesize, align 4, !tbaa !23
  %26 = load i32, ptr @mf_size, align 4, !tbaa !16
  %sub111 = sub i32 %26, %25
  store i32 %sub111, ptr @mf_size, align 4, !tbaa !16
  %27 = load i32, ptr @mf_samples_to_encode, align 4, !tbaa !16
  %sub113 = sub nsw i32 %27, %25
  store i32 %sub113, ptr @mf_samples_to_encode, align 4, !tbaa !16
  %28 = load i32, ptr %stereo115, align 4, !tbaa !46
  %cmp116234 = icmp sgt i32 %28, 0
  %cmp120232 = icmp sgt i32 %sub111, 0
  %or.cond278 = select i1 %cmp116234, i1 %cmp120232, i1 false
  br i1 %or.cond278, label %for.cond119.preheader.us.preheader, label %cleanup140

for.cond119.preheader.us.preheader:               ; preds = %if.end106
  %29 = sext i32 %25 to i64
  %wide.trip.count268 = zext i32 %28 to i64
  %wide.trip.count263 = zext i32 %sub111 to i64
  br label %for.cond119.preheader.us

for.cond119.preheader.us:                         ; preds = %for.cond119.preheader.us.preheader, %for.cond119.for.inc136_crit_edge.us
  %indvars.iv265 = phi i64 [ 0, %for.cond119.preheader.us.preheader ], [ %indvars.iv.next266, %for.cond119.for.inc136_crit_edge.us ]
  br label %for.body122.us

for.body122.us:                                   ; preds = %for.cond119.preheader.us, %for.body122.us
  %indvars.iv259 = phi i64 [ 0, %for.cond119.preheader.us ], [ %indvars.iv.next260, %for.body122.us ]
  %30 = add nsw i64 %indvars.iv259, %29
  %arrayidx128.us = getelementptr inbounds [2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 %indvars.iv265, i64 %30
  %31 = load i16, ptr %arrayidx128.us, align 2, !tbaa !90
  %arrayidx132.us = getelementptr inbounds [2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 %indvars.iv265, i64 %indvars.iv259
  store i16 %31, ptr %arrayidx132.us, align 2, !tbaa !90
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1
  %exitcond264.not = icmp eq i64 %indvars.iv.next260, %wide.trip.count263
  br i1 %exitcond264.not, label %for.cond119.for.inc136_crit_edge.us, label %for.body122.us, !llvm.loop !102

for.cond119.for.inc136_crit_edge.us:              ; preds = %for.body122.us
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1
  %exitcond269.not = icmp eq i64 %indvars.iv.next266, %wide.trip.count268
  br i1 %exitcond269.not, label %cleanup140, label %for.cond119.preheader.us, !llvm.loop !103

cleanup140:                                       ; preds = %for.cond119.for.inc136_crit_edge.us, %if.end106, %for.end94
  %32 = phi i32 [ %15, %for.end94 ], [ %25, %if.end106 ], [ %25, %for.cond119.for.inc136_crit_edge.us ]
  %mp3size.2 = phi i32 [ %mp3size.0238, %for.end94 ], [ %add109, %if.end106 ], [ %add109, %for.cond119.for.inc136_crit_edge.us ]
  %mp3buf.addr.2 = phi ptr [ %mp3buf.addr.0239, %for.end94 ], [ %add.ptr108, %if.end106 ], [ %add.ptr108, %for.cond119.for.inc136_crit_edge.us ]
  %cmp69 = icmp sgt i32 %sub96, 0
  br i1 %cmp69, label %while.body, label %cleanup141, !llvm.loop !104

cleanup141:                                       ; preds = %cleanup140, %if.then101, %if.end68, %for.end, %if.then2, %if.then
  %retval.3 = phi i32 [ %call, %if.then ], [ %call24, %for.end ], [ -1, %if.then2 ], [ 0, %if.end68 ], [ %mp3size.2, %cleanup140 ], [ -1, %if.then101 ]
  ret i32 %retval.3
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lame_encode(ptr noundef %gfp, ptr noundef %in_buffer, ptr noundef %mp3buf, i32 noundef %size) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @mf_samples_to_encode, align 4, !tbaa !16
  %arrayidx1 = getelementptr inbounds [1152 x i16], ptr %in_buffer, i64 1
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 45
  %1 = load i32, ptr %mode_gr, align 8, !tbaa !21
  %mul = mul nsw i32 %1, 576
  %call = tail call i32 @lame_encode_buffer(ptr noundef %gfp, ptr noundef %in_buffer, ptr noundef nonnull %arrayidx1, i32 noundef %mul, ptr noundef %mp3buf, i32 noundef %size)
  store i32 %0, ptr @mf_samples_to_encode, align 4, !tbaa !16
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @lame_init(ptr noundef writeonly %gfp) local_unnamed_addr #13 {
entry:
  %allow_diff_short = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 36
  store i32 0, ptr %allow_diff_short, align 4, !tbaa !105
  %ATHonly = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 33
  store i32 0, ptr %ATHonly, align 8, !tbaa !106
  %noATH = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 34
  store i32 0, ptr %noATH, align 4, !tbaa !107
  %bWriteVbrTag = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 5
  store i32 1, ptr %bWriteVbrTag, align 8, !tbaa !56
  %cwlimit = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 35
  store float 0.000000e+00, ptr %cwlimit, align 8, !tbaa !108
  %disable_reservoir = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 17
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 39
  store i64 0, ptr %frameNum, align 8, !tbaa !5
  %gtkflag = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 4
  store i32 0, ptr %gtkflag, align 4, !tbaa !61
  %quality = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %disable_reservoir, i8 0, i64 16, i1 false)
  store i32 5, ptr %quality, align 4, !tbaa !54
  %input_format = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 29
  store i32 0, ptr %input_format, align 8, !tbaa !109
  %filter_type = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 59
  store i32 0, ptr %filter_type, align 8, !tbaa !37
  %lowpassfreq = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 25
  store i32 0, ptr %lowpassfreq, align 8, !tbaa !29
  %highpassfreq = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 26
  store i32 0, ptr %highpassfreq, align 4, !tbaa !32
  %lowpasswidth = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 27
  store i32 -1, ptr %lowpasswidth, align 8, !tbaa !36
  %highpasswidth = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 28
  store i32 -1, ptr %highpasswidth, align 4, !tbaa !33
  %lowpass1 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 53
  %lowpass_band = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %lowpass1, i8 0, i64 16, i1 false)
  store i32 32, ptr %lowpass_band, align 8, !tbaa !38
  %highpass_band = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 58
  store i32 -1, ptr %highpass_band, align 4, !tbaa !43
  %no_short_blocks = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 37
  store i32 0, ptr %no_short_blocks, align 8, !tbaa !110
  %resample_ratio = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 49
  store float 1.000000e+00, ptr %resample_ratio, align 8, !tbaa !24
  %padding_type = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 15
  store i32 2, ptr %padding_type, align 8, !tbaa !74
  %padding = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 44
  store i32 0, ptr %padding, align 4, !tbaa !73
  %swapbytes = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 30
  store i32 0, ptr %swapbytes, align 4, !tbaa !111
  %silent = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 7
  store i32 0, ptr %silent, align 8, !tbaa !15
  %totalframes = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 40
  store i64 0, ptr %totalframes, align 8, !tbaa !26
  %VBR = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 21
  store i32 0, ptr %VBR, align 8, !tbaa !17
  %VBR_q = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 22
  store i32 4, ptr %VBR_q, align 4, !tbaa !27
  %VBR_min_bitrate_kbps = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 23
  store i32 0, ptr %VBR_min_bitrate_kbps, align 8, !tbaa !51
  %VBR_max_bitrate_kbps = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 24
  store i32 0, ptr %VBR_max_bitrate_kbps, align 4, !tbaa !50
  %VBR_min_bitrate = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 47
  store i32 1, ptr %VBR_min_bitrate, align 8, !tbaa !53
  %VBR_max_bitrate = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 48
  store i32 13, ptr %VBR_max_bitrate, align 4, !tbaa !52
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 43
  store i32 1, ptr %version, align 8, !tbaa !48
  %mode = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 8
  store i32 1, ptr %mode, align 4, !tbaa !14
  %mode_fixed = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 9
  %original = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %mode_fixed, i8 0, i64 16, i1 false)
  store i32 1, ptr %original, align 8, !tbaa !112
  %extension = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 16
  store i32 0, ptr %extension, align 4, !tbaa !113
  %error_protection = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 14
  store i32 0, ptr %error_protection, align 4, !tbaa !114
  %emphasis = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 38
  store i32 0, ptr %emphasis, align 4, !tbaa !115
  %in_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 2
  store i32 44100, ptr %in_samplerate, align 4, !tbaa !20
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 3
  store i32 0, ptr %out_samplerate, align 8, !tbaa !18
  %num_channels = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 1
  store i32 2, ptr %num_channels, align 8, !tbaa !13
  store i64 4294967295, ptr %gfp, align 8, !tbaa !25
  %inPath = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %inPath, i8 0, i64 16, i1 false)
  store i32 0, ptr @id3tag, align 4, !tbaa !59
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lame_encode_finish(ptr noundef %gfp, ptr noundef %mp3buffer, i32 noundef %mp3buffer_size) local_unnamed_addr #0 {
entry:
  %buffer = alloca [2 x [1152 x i16]], align 16
  call void @llvm.lifetime.start.p0(i64 4608, ptr nonnull %buffer) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4608) %buffer, i8 0, i64 4608, i1 false)
  %.pr = load i32, ptr @mf_samples_to_encode, align 4, !tbaa !16
  %cmp55 = icmp sgt i32 %.pr, 0
  br i1 %cmp55, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %cmp1 = icmp eq i32 %mp3buffer_size, 0
  %framesize = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 42
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end5
  %mp3count.057 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %if.end5 ]
  %mp3buffer.addr.056 = phi ptr [ %mp3buffer, %while.body.lr.ph ], [ %add.ptr, %if.end5 ]
  %sub = sub nsw i32 %mp3buffer_size, %mp3count.057
  %spec.store.select = select i1 %cmp1, i32 0, i32 %sub
  %call = call i32 @lame_encode(ptr noundef %gfp, ptr noundef nonnull %buffer, ptr noundef %mp3buffer.addr.056, i32 noundef %spec.store.select)
  %cmp3 = icmp eq i32 %call, -1
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %while.body
  %idx.ext = sext i32 %call to i64
  %add.ptr = getelementptr inbounds i8, ptr %mp3buffer.addr.056, i64 %idx.ext
  %add = add nsw i32 %call, %mp3count.057
  %0 = load i32, ptr %framesize, align 4, !tbaa !23
  %1 = load i32, ptr @mf_samples_to_encode, align 4, !tbaa !16
  %sub6 = sub nsw i32 %1, %0
  store i32 %sub6, ptr @mf_samples_to_encode, align 4, !tbaa !16
  %cmp = icmp sgt i32 %sub6, 0
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !116

while.end:                                        ; preds = %if.end5, %entry
  %mp3buffer.addr.0.lcssa = phi ptr [ %mp3buffer, %entry ], [ %add.ptr, %if.end5 ]
  %mp3count.0.lcssa = phi i32 [ 0, %entry ], [ %add, %if.end5 ]
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 39
  %2 = load i64, ptr %frameNum, align 8, !tbaa !5
  %dec = add nsw i64 %2, -1
  store i64 %dec, ptr %frameNum, align 8, !tbaa !5
  %gtkflag = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 4
  %3 = load i32, ptr %gtkflag, align 4, !tbaa !61
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %while.end
  %silent = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 7
  %4 = load i32, ptr %silent, align 8, !tbaa !15
  %tobool7.not = icmp eq i32 %4, 0
  br i1 %tobool7.not, label %if.then8, label %if.end16

if.then8:                                         ; preds = %land.lhs.true
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 3
  %5 = load i32, ptr %out_samplerate, align 8, !tbaa !18
  %totalframes = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 40
  %6 = load i64, ptr %totalframes, align 8, !tbaa !26
  %framesize10 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 42
  %7 = load i32, ptr %framesize10, align 4, !tbaa !23
  call void @timestatus(i32 noundef %5, i64 noundef %dec, i64 noundef %6, i32 noundef %7) #17
  %8 = load i32, ptr @disp_brhist, align 4, !tbaa !16
  %tobool11.not = icmp eq i32 %8, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.then8
  call void @brhist_add_count() #17
  call void @brhist_disp() #17
  call void @brhist_disp_total(ptr noundef nonnull %gfp) #17
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then8
  %9 = load ptr, ptr @stderr, align 8, !tbaa !42
  %fputc = call i32 @fputc(i32 10, ptr %9)
  %10 = load ptr, ptr @stderr, align 8, !tbaa !42
  %call15 = call i32 @fflush(ptr noundef %10)
  br label %if.end16

if.end16:                                         ; preds = %if.end13, %land.lhs.true, %while.end
  call void @III_FlushBitstream() #17
  %sub17 = sub nsw i32 %mp3buffer_size, %mp3count.0.lcssa
  %cmp18 = icmp eq i32 %mp3buffer_size, 0
  %spec.store.select29 = select i1 %cmp18, i32 0, i32 %sub17
  %call21 = call i32 @copy_buffer(ptr noundef %mp3buffer.addr.0.lcssa, i32 noundef %spec.store.select29, ptr noundef nonnull @bs) #17
  %cmp22 = icmp eq i32 %call21, -1
  %add25 = add nsw i32 %call21, %mp3count.0.lcssa
  %spec.select = select i1 %cmp22, i32 -1, i32 %add25
  br label %cleanup

cleanup:                                          ; preds = %while.body, %if.end16
  %retval.0 = phi i32 [ %spec.select, %if.end16 ], [ -1, %while.body ]
  call void @desalloc_buffer(ptr noundef nonnull @bs) #17
  call void @llvm.lifetime.end.p0(i64 4608, ptr nonnull %buffer) #17
  ret i32 %retval.0
}

declare void @desalloc_buffer(ptr noundef) local_unnamed_addr #3

declare void @brhist_disp_total(ptr noundef) local_unnamed_addr #3

declare void @III_FlushBitstream() local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @lame_mp3_tags(ptr nocapture noundef readonly %gfp) local_unnamed_addr #0 {
entry:
  %bWriteVbrTag = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 5
  %0 = load i32, ptr %bWriteVbrTag, align 8, !tbaa !56
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %VBR_q = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 22
  %1 = load i32, ptr %VBR_q, align 4, !tbaa !27
  %mul = mul nsw i32 %1, 100
  %div = sdiv i32 %mul, 9
  %outPath = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 32
  %2 = load ptr, ptr %outPath, align 8, !tbaa !57
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 43
  %3 = load i32, ptr %version, align 8, !tbaa !48
  %sub = sub nsw i32 1, %3
  %call = tail call i32 @PutVbrTag(ptr noundef %2, i32 noundef %div, i32 noundef %sub) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr @id3tag, align 4, !tbaa !59
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @id3_buildtag(ptr noundef nonnull @id3tag) #17
  %outPath3 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 32
  %5 = load ptr, ptr %outPath3, align 8, !tbaa !57
  %call4 = tail call i32 @id3_writetag(ptr noundef %5, ptr noundef nonnull @id3tag) #17
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  ret void
}

declare i32 @PutVbrTag(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @id3_buildtag(ptr noundef) local_unnamed_addr #3

declare i32 @id3_writetag(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @lame_version(ptr nocapture noundef readnone %gfp, ptr noundef %ostring) local_unnamed_addr #0 {
entry:
  %call = tail call ptr @get_lame_version() #17
  %call1 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %ostring, ptr noundef nonnull dereferenceable(1) %call, i64 noundef 20) #17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #14

declare ptr @get_lame_version() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #16

attributes #0 = { noinline nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #6 = { noreturn nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind readonly willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #8 = { nofree noinline nosync nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #9 = { argmemonly mustprogress nofree noinline nosync nounwind willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #11 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #12 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #14 = { argmemonly mustprogress nofree nounwind willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nounwind }
attributes #18 = { cold }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !7, i64 168}
!6 = !{!"", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !8, i64 120, !10, i64 124, !11, i64 128, !11, i64 136, !10, i64 144, !10, i64 148, !12, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !7, i64 168, !7, i64 176, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !10, i64 208, !10, i64 212, !12, i64 216, !10, i64 220, !10, i64 224, !10, i64 228, !12, i64 232, !12, i64 236, !12, i64 240, !12, i64 244, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!6, !10, i64 8}
!14 = !{!6, !10, i64 36}
!15 = !{!6, !10, i64 32}
!16 = !{!10, !10, i64 0}
!17 = !{!6, !10, i64 88}
!18 = !{!6, !10, i64 16}
!19 = !{!6, !10, i64 48}
!20 = !{!6, !10, i64 12}
!21 = !{!6, !10, i64 200}
!22 = !{!6, !10, i64 184}
!23 = !{!6, !10, i64 188}
!24 = !{!6, !12, i64 216}
!25 = !{!6, !7, i64 0}
!26 = !{!6, !7, i64 176}
!27 = !{!6, !10, i64 92}
!28 = !{!6, !10, i64 40}
!29 = !{!6, !10, i64 104}
!30 = !{!6, !12, i64 232}
!31 = !{!6, !12, i64 236}
!32 = !{!6, !10, i64 108}
!33 = !{!6, !10, i64 116}
!34 = !{!6, !12, i64 240}
!35 = !{!6, !12, i64 244}
!36 = !{!6, !10, i64 112}
!37 = !{!6, !10, i64 256}
!38 = !{!6, !10, i64 248}
!39 = distinct !{!39, !40, !41}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !{!11, !11, i64 0}
!43 = !{!6, !10, i64 252}
!44 = distinct !{!44, !40, !41}
!45 = !{!6, !10, i64 228}
!46 = !{!6, !10, i64 204}
!47 = !{!6, !10, i64 224}
!48 = !{!6, !10, i64 192}
!49 = !{!6, !10, i64 220}
!50 = !{!6, !10, i64 100}
!51 = !{!6, !10, i64 96}
!52 = !{!6, !10, i64 212}
!53 = !{!6, !10, i64 208}
!54 = !{!6, !10, i64 28}
!55 = !{!6, !10, i64 44}
!56 = !{!6, !10, i64 24}
!57 = !{!6, !11, i64 136}
!58 = !{!8, !8, i64 0}
!59 = !{!60, !10, i64 0}
!60 = !{!"", !10, i64 0, !10, i64 4, !8, i64 8, !8, i64 39, !8, i64 70, !8, i64 101, !8, i64 106, !8, i64 137, !8, i64 265, !8, i64 266}
!61 = !{!6, !10, i64 20}
!62 = !{!6, !10, i64 272}
!63 = !{!6, !10, i64 260}
!64 = !{!6, !10, i64 264}
!65 = !{!6, !10, i64 268}
!66 = !{!6, !10, i64 276}
!67 = distinct !{!67, !40, !41}
!68 = distinct !{!68, !40, !41}
!69 = !{!6, !11, i64 128}
!70 = !{!71, !71, i64 0}
!71 = !{!"double", !8, i64 0}
!72 = !{!7, !7, i64 0}
!73 = !{!6, !10, i64 196}
!74 = !{!6, !10, i64 64}
!75 = !{!6, !10, i64 72}
!76 = !{!77, !10, i64 24}
!77 = !{!"gr_info_ss", !78, i64 0}
!78 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !8, i64 32, !8, i64 44, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !11, i64 96, !8, i64 104}
!79 = distinct !{!79, !40, !41}
!80 = distinct !{!80, !40, !41}
!81 = distinct !{!81, !40, !41}
!82 = distinct !{!82, !40, !41}
!83 = distinct !{!83, !40, !41}
!84 = !{!78, !10, i64 28}
!85 = !{!78, !10, i64 24}
!86 = distinct !{!86, !40, !41}
!87 = distinct !{!87, !40, !41}
!88 = !{!89, !7, i64 40}
!89 = !{!"bit_stream_struc", !11, i64 0, !10, i64 8, !11, i64 16, !11, i64 24, !10, i64 32, !7, i64 40, !10, i64 48, !10, i64 52}
!90 = !{!91, !91, i64 0}
!91 = !{!"short", !8, i64 0}
!92 = distinct !{!92, !40, !41}
!93 = distinct !{!93, !40, !41}
!94 = distinct !{!94, !40, !41}
!95 = distinct !{!95, !40, !41}
!96 = distinct !{!96, !40, !41}
!97 = distinct !{!97, !40, !41}
!98 = distinct !{!98, !40, !41}
!99 = distinct !{!99, !40, !41}
!100 = distinct !{!100, !40, !41}
!101 = distinct !{!101, !40, !41}
!102 = distinct !{!102, !40, !41}
!103 = distinct !{!103, !40, !41}
!104 = distinct !{!104, !40, !41}
!105 = !{!6, !10, i64 156}
!106 = !{!6, !10, i64 144}
!107 = !{!6, !10, i64 148}
!108 = !{!6, !12, i64 152}
!109 = !{!6, !8, i64 120}
!110 = !{!6, !10, i64 160}
!111 = !{!6, !10, i64 124}
!112 = !{!6, !10, i64 56}
!113 = !{!6, !10, i64 68}
!114 = !{!6, !10, i64 60}
!115 = !{!6, !10, i64 164}
!116 = distinct !{!116, !40, !41}
