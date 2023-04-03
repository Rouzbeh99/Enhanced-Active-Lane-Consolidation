; ModuleID = 'parse.c'
source_filename = "parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ID3TAGDATA = type { i32, i32, [31 x i8], [31 x i8], [31 x i8], [5 x i8], [31 x i8], [128 x i8], [1 x i8], i8 }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"USAGE   :  %s [options] <infile> [outfile]\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"\0A<infile> and/or <outfile> can be \22-\22, which means stdin/stdout.\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Try \22%s --help\22 for more information\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"OPTIONS :\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"  Input options:\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"    -r              input is raw pcm\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"    -x              force byte-swapping of input\0A\00", align 1
@.str.8 = private unnamed_addr constant [77 x i8] c"    -s sfreq        sampling frequency of input file(kHz) - default 44.1kHz\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"    --mp3input      input file is a MP3 file\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"  Filter options:\0A\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"    -k              keep ALL frequencies (disables all filters)\0A\00", align 1
@.str.12 = private unnamed_addr constant [75 x i8] c"  --lowpass freq         frequency(kHz), lowpass filter cutoff above freq\0A\00", align 1
@.str.13 = private unnamed_addr constant [72 x i8] c"  --lowpass-width freq   frequency(kHz) - default 15%% of lowpass freq\0A\00", align 1
@.str.14 = private unnamed_addr constant [76 x i8] c"  --highpass freq        frequency(kHz), highpass filter cutoff below freq\0A\00", align 1
@.str.15 = private unnamed_addr constant [73 x i8] c"  --highpass-width freq  frequency(kHz) - default 15%% of highpass freq\0A\00", align 1
@.str.16 = private unnamed_addr constant [81 x i8] c"  --resample sfreq  sampling frequency of output file(kHz)- default=input sfreq\0A\00", align 1
@.str.17 = private unnamed_addr constant [73 x i8] c"  --cwlimit freq    compute tonality up to freq (in kHz) default 8.8717\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"  Operational options:\0A\00", align 1
@.str.19 = private unnamed_addr constant [71 x i8] c"    -m mode         (s)tereo, (j)oint, (f)orce or (m)ono  (default j)\0A\00", align 1
@.str.20 = private unnamed_addr constant [67 x i8] c"                    force = force ms_stereo on all frames. Faster\0A\00", align 1
@.str.21 = private unnamed_addr constant [72 x i8] c"    -a              downmix from stereo to mono file for mono encoding\0A\00", align 1
@.str.22 = private unnamed_addr constant [65 x i8] c"    -d              allow channels to have different blocktypes\0A\00", align 1
@.str.23 = private unnamed_addr constant [65 x i8] c"    -S              don't print progress report, VBR histograms\0A\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"    --athonly       only use the ATH for masking\0A\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"    --noath         disable the ATH for masking\0A\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"    --noshort       do not use short blocks\0A\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"    --voice         experimental voice mode\0A\00", align 1
@.str.28 = private unnamed_addr constant [77 x i8] c"    --preset type   type must be phone, voice, fm, tape, hifi, cd or studio\0A\00", align 1
@.str.29 = private unnamed_addr constant [57 x i8] c"                    help gives some more infos on these\0A\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"  CBR (constant bitrate, the default) options:\0A\00", align 1
@.str.31 = private unnamed_addr constant [72 x i8] c"    -h              higher quality, but a little slower.  Recommended.\0A\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"    -f              fast mode (very low quality)\0A\00", align 1
@.str.33 = private unnamed_addr constant [54 x i8] c"    -b bitrate      set the bitrate, default 128kbps\0A\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"  VBR options:\0A\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"    -v              use variable bitrate (VBR)\0A\00", align 1
@.str.36 = private unnamed_addr constant [60 x i8] c"    -V n            quality setting for VBR.  default n=%i\0A\00", align 1
@.str.37 = private unnamed_addr constant [66 x i8] c"                    0=high quality,bigger files. 9=smaller files\0A\00", align 1
@.str.38 = private unnamed_addr constant [68 x i8] c"    -b bitrate      specify minimum allowed bitrate, default 32kbs\0A\00", align 1
@.str.39 = private unnamed_addr constant [69 x i8] c"    -B bitrate      specify maximum allowed bitrate, default 256kbs\0A\00", align 1
@.str.40 = private unnamed_addr constant [56 x i8] c"    -t              disable Xing VBR informational tag\0A\00", align 1
@.str.41 = private unnamed_addr constant [51 x i8] c"    --nohist        disable VBR histogram display\0A\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"  MP3 header/stream options:\0A\00", align 1
@.str.43 = private unnamed_addr constant [51 x i8] c"    -e emp          de-emphasis n/5/c  (obsolete)\0A\00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"    -c              mark as copyright\0A\00", align 1
@.str.45 = private unnamed_addr constant [42 x i8] c"    -o              mark as non-original\0A\00", align 1
@.str.46 = private unnamed_addr constant [75 x i8] c"    -p              error protection.  adds 16bit checksum to every frame\0A\00", align 1
@.str.47 = private unnamed_addr constant [58 x i8] c"                    (the checksum is computed correctly)\0A\00", align 1
@.str.48 = private unnamed_addr constant [47 x i8] c"    --nores         disable the bit reservoir\0A\00", align 1
@.str.49 = private unnamed_addr constant [64 x i8] c"  Specifying any of the following options will add an ID3 tag:\0A\00", align 1
@.str.50 = private unnamed_addr constant [52 x i8] c"     --tt \22title\22     title of song (max 30 chars)\0A\00", align 1
@.str.51 = private unnamed_addr constant [62 x i8] c"     --ta \22artist\22    artist who did the song (max 30 chars)\0A\00", align 1
@.str.52 = private unnamed_addr constant [63 x i8] c"     --tl \22album\22     album where it came from (max 30 chars)\0A\00", align 1
@.str.53 = private unnamed_addr constant [75 x i8] c"     --ty \22year\22      year in which the song/album was made (max 4 chars)\0A\00", align 1
@.str.54 = private unnamed_addr constant [54 x i8] c"     --tc \22comment\22   additional info (max 30 chars)\0A\00", align 1
@.str.55 = private unnamed_addr constant [69 x i8] c"                      (or max 28 chars if using the \22track\22 option)\0A\00", align 1
@.str.56 = private unnamed_addr constant [68 x i8] c"     --tn \22track\22     track number of the song on the CD (1 to 99)\0A\00", align 1
@.str.57 = private unnamed_addr constant [67 x i8] c"                      (using this option will add an ID3v1.1 tag)\0A\00", align 1
@.str.58 = private unnamed_addr constant [54 x i8] c"     --tg \22genre\22     genre of song (name or number)\0A\00", align 1
@.str.59 = private unnamed_addr constant [49 x i8] c"Presets are some shortcuts for common settings.\0A\00", align 1
@.str.60 = private unnamed_addr constant [52 x i8] c"They can be combined with -v if you want VBR MP3s.\0A\00", align 1
@.str.61 = private unnamed_addr constant [44 x i8] c"  --preset phone    =>  --resample      16\0A\00", align 1
@.str.62 = private unnamed_addr constant [48 x i8] c"                        --highpass       0.260\0A\00", align 1
@.str.63 = private unnamed_addr constant [48 x i8] c"                        --highpasswidth  0.040\0A\00", align 1
@.str.64 = private unnamed_addr constant [48 x i8] c"                        --lowpass        3.700\0A\00", align 1
@.str.65 = private unnamed_addr constant [48 x i8] c"                        --lowpasswidth   0.300\0A\00", align 1
@.str.66 = private unnamed_addr constant [35 x i8] c"                        --noshort\0A\00", align 1
@.str.67 = private unnamed_addr constant [32 x i8] c"                        -m   m\0A\00", align 1
@.str.68 = private unnamed_addr constant [32 x i8] c"                        -b  16\0A\00", align 1
@.str.69 = private unnamed_addr constant [35 x i8] c"                  plus  -b   8  \\\0A\00", align 1
@.str.70 = private unnamed_addr constant [59 x i8] c"                        -B  56   > in combination with -v\0A\00", align 1
@.str.71 = private unnamed_addr constant [35 x i8] c"                        -V   5  /\0A\00", align 1
@.str.72 = private unnamed_addr constant [44 x i8] c"  --preset voice:   =>  --resample      24\0A\00", align 1
@.str.73 = private unnamed_addr constant [48 x i8] c"                        --highpass       0.100\0A\00", align 1
@.str.74 = private unnamed_addr constant [48 x i8] c"                        --highpasswidth  0.020\0A\00", align 1
@.str.75 = private unnamed_addr constant [44 x i8] c"                        --lowpass       11\0A\00", align 1
@.str.76 = private unnamed_addr constant [44 x i8] c"                        --lowpasswidth   2\0A\00", align 1
@.str.77 = private unnamed_addr constant [32 x i8] c"                        -b  32\0A\00", align 1
@.str.78 = private unnamed_addr constant [59 x i8] c"                        -B  96   > in combination with -v\0A\00", align 1
@.str.79 = private unnamed_addr constant [35 x i8] c"                        -V   4  /\0A\00", align 1
@.str.80 = private unnamed_addr constant [44 x i8] c"  --preset fm:      =>  --resample      32\0A\00", align 1
@.str.81 = private unnamed_addr constant [48 x i8] c"                        --highpass       0.030\0A\00", align 1
@.str.82 = private unnamed_addr constant [44 x i8] c"                        --highpasswidth  0\0A\00", align 1
@.str.83 = private unnamed_addr constant [46 x i8] c"                        --lowpass       11.4\0A\00", align 1
@.str.84 = private unnamed_addr constant [44 x i8] c"                        --lowpasswidth   0\0A\00", align 1
@.str.85 = private unnamed_addr constant [32 x i8] c"                        -m   j\0A\00", align 1
@.str.86 = private unnamed_addr constant [32 x i8] c"                        -b  96\0A\00", align 1
@.str.87 = private unnamed_addr constant [35 x i8] c"                  plus  -b  32  \\\0A\00", align 1
@.str.88 = private unnamed_addr constant [59 x i8] c"                        -B 192   > in combination with -v\0A\00", align 1
@.str.89 = private unnamed_addr constant [44 x i8] c"  --preset tape:    =>  --lowpass       17\0A\00", align 1
@.str.90 = private unnamed_addr constant [48 x i8] c"                        --highpass       0.015\0A\00", align 1
@.str.91 = private unnamed_addr constant [48 x i8] c"                        --highpasswidth  0.015\0A\00", align 1
@.str.92 = private unnamed_addr constant [32 x i8] c"                        -b 128\0A\00", align 1
@.str.93 = private unnamed_addr constant [44 x i8] c"  --preset hifi:    =>  --lowpass       20\0A\00", align 1
@.str.94 = private unnamed_addr constant [44 x i8] c"                        --lowpasswidth   3\0A\00", align 1
@.str.95 = private unnamed_addr constant [28 x i8] c"                        -h\0A\00", align 1
@.str.96 = private unnamed_addr constant [32 x i8] c"                        -b 160\0A\00", align 1
@.str.97 = private unnamed_addr constant [59 x i8] c"                        -B 224   > in combination with -v\0A\00", align 1
@.str.98 = private unnamed_addr constant [35 x i8] c"                        -V   3  /\0A\00", align 1
@.str.99 = private unnamed_addr constant [28 x i8] c"  --preset cd:      =>  -k\0A\00", align 1
@.str.100 = private unnamed_addr constant [32 x i8] c"                        -m   s\0A\00", align 1
@.str.101 = private unnamed_addr constant [32 x i8] c"                        -b 192\0A\00", align 1
@.str.102 = private unnamed_addr constant [35 x i8] c"                  plus  -b  80  \\\0A\00", align 1
@.str.103 = private unnamed_addr constant [59 x i8] c"                        -B 256   > in combination with -v\0A\00", align 1
@.str.104 = private unnamed_addr constant [35 x i8] c"                        -V   2  /\0A\00", align 1
@.str.105 = private unnamed_addr constant [28 x i8] c"  --preset studio:  =>  -k\0A\00", align 1
@.str.106 = private unnamed_addr constant [32 x i8] c"                        -b 256\0A\00", align 1
@.str.107 = private unnamed_addr constant [35 x i8] c"                  plus  -b 112  \\\0A\00", align 1
@.str.108 = private unnamed_addr constant [59 x i8] c"                        -B 320   > in combination with -v\0A\00", align 1
@.str.109 = private unnamed_addr constant [35 x i8] c"                        -V   0  /\0A\00", align 1
@inPath = dso_local global [300 x i8] zeroinitializer, align 16
@outPath = dso_local global [300 x i8] zeroinitializer, align 16
@id3tag = external global %struct.ID3TAGDATA, align 4
@.str.110 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"resample\00", align 1
@.str.112 = private unnamed_addr constant [43 x i8] c"Must specify a samplerate with --resample\0A\00", align 1
@.str.113 = private unnamed_addr constant [9 x i8] c"mp3input\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"voice\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"noshort\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"noath\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"nores\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"athonly\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"nohist\00", align 1
@disp_brhist = external local_unnamed_addr global i32, align 4
@.str.120 = private unnamed_addr constant [3 x i8] c"tt\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c"ta\00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c"tl\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"ty\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"tc\00", align 1
@.str.125 = private unnamed_addr constant [3 x i8] c"tn\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"tg\00", align 1
@genre_last = external local_unnamed_addr global i32, align 4
@genre_list = external local_unnamed_addr global [0 x ptr], align 8
@.str.127 = private unnamed_addr constant [44 x i8] c"Unknown genre: %s.  Specifiy genre number \0A\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"lowpass\00", align 1
@.str.129 = private unnamed_addr constant [61 x i8] c"Must specify lowpass with --lowpass freq, freq >= 0.001 kHz\0A\00", align 1
@.str.130 = private unnamed_addr constant [14 x i8] c"lowpass-width\00", align 1
@.str.131 = private unnamed_addr constant [69 x i8] c"Must specify lowpass width with --lowpass-width freq, freq >= 0 kHz\0A\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"highpass\00", align 1
@.str.133 = private unnamed_addr constant [63 x i8] c"Must specify highpass with --highpass freq, freq >= 0.001 kHz\0A\00", align 1
@.str.134 = private unnamed_addr constant [15 x i8] c"highpass-width\00", align 1
@.str.135 = private unnamed_addr constant [71 x i8] c"Must specify highpass width with --highpass-width freq, freq >= 0 kHz\0A\00", align 1
@.str.136 = private unnamed_addr constant [8 x i8] c"cwlimit\00", align 1
@.str.137 = private unnamed_addr constant [29 x i8] c"Must specify cwlimit in kHz\0A\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.139 = private unnamed_addr constant [6 x i8] c"usage\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"preset\00", align 1
@.str.141 = private unnamed_addr constant [6 x i8] c"phone\00", align 1
@.str.142 = private unnamed_addr constant [3 x i8] c"fm\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"tape\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c"hifi\00", align 1
@.str.145 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c"studio\00", align 1
@.str.147 = private unnamed_addr constant [84 x i8] c"%s: --preset type, type must be phone, voice, fm, tape, hifi, cd or studio, not %s\0A\00", align 1
@.str.148 = private unnamed_addr constant [23 x i8] c"%s: unrec option --%s\0A\00", align 1
@.str.149 = private unnamed_addr constant [38 x i8] c"%s: -m mode must be s/d/j/f/m not %s\0A\00", align 1
@.str.150 = private unnamed_addr constant [30 x i8] c"%s: -X n must be 0-6, not %s\0A\00", align 1
@.str.151 = private unnamed_addr constant [55 x i8] c"LAME not compiled with GTK support, -g not supported.\0A\00", align 1
@.str.152 = private unnamed_addr constant [33 x i8] c"%s: -e emp must be n/5/c not %s\0A\00", align 1
@.str.153 = private unnamed_addr constant [21 x i8] c"%s: unrec option %c\0A\00", align 1
@.str.154 = private unnamed_addr constant [19 x i8] c"%s: excess arg %s\0A\00", align 1
@.str.156 = private unnamed_addr constant [5 x i8] c".mp3\00", align 1
@.str.157 = private unnamed_addr constant [55 x i8] c"id3tag ignored: id3 tagging not supported for stdout.\0A\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @lame_usage(ptr nocapture readnone %gfp, ptr noundef %name) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  tail call void @lame_print_version(ptr noundef %0) #13
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  %fputc = tail call i32 @fputc(i32 10, ptr %1)
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef %name) #14
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 65, i64 1, ptr %3) #14
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %fputc6 = tail call i32 @fputc(i32 10, ptr %5)
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef %name) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable
}

declare void @lame_print_version(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @lame_help(ptr nocapture noundef readonly %gfp, ptr noundef %name) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @stdout, align 8, !tbaa !5
  tail call void @lame_print_version(ptr noundef %0) #13
  %1 = load ptr, ptr @stdout, align 8, !tbaa !5
  %fputc = tail call i32 @fputc(i32 10, ptr %1)
  %2 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef %name)
  %3 = load ptr, ptr @stdout, align 8, !tbaa !5
  %4 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 65, i64 1, ptr %3)
  %5 = load ptr, ptr @stdout, align 8, !tbaa !5
  %fputc66 = tail call i32 @fputc(i32 10, ptr %5)
  %6 = load ptr, ptr @stdout, align 8, !tbaa !5
  %7 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 10, i64 1, ptr %6)
  %8 = load ptr, ptr @stdout, align 8, !tbaa !5
  %9 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 17, i64 1, ptr %8)
  %10 = load ptr, ptr @stdout, align 8, !tbaa !5
  %11 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 37, i64 1, ptr %10)
  %12 = load ptr, ptr @stdout, align 8, !tbaa !5
  %13 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 49, i64 1, ptr %12)
  %14 = load ptr, ptr @stdout, align 8, !tbaa !5
  %15 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 76, i64 1, ptr %14)
  %16 = load ptr, ptr @stdout, align 8, !tbaa !5
  %17 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 45, i64 1, ptr %16)
  %18 = load ptr, ptr @stdout, align 8, !tbaa !5
  %fputc67 = tail call i32 @fputc(i32 10, ptr %18)
  %19 = load ptr, ptr @stdout, align 8, !tbaa !5
  %20 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 18, i64 1, ptr %19)
  %21 = load ptr, ptr @stdout, align 8, !tbaa !5
  %22 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 64, i64 1, ptr %21)
  %23 = load ptr, ptr @stdout, align 8, !tbaa !5
  %24 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 74, i64 1, ptr %23)
  %25 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.13)
  %26 = load ptr, ptr @stdout, align 8, !tbaa !5
  %27 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 75, i64 1, ptr %26)
  %28 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.15)
  %29 = load ptr, ptr @stdout, align 8, !tbaa !5
  %30 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 80, i64 1, ptr %29)
  %31 = load ptr, ptr @stdout, align 8, !tbaa !5
  %32 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 72, i64 1, ptr %31)
  %33 = load ptr, ptr @stdout, align 8, !tbaa !5
  %fputc68 = tail call i32 @fputc(i32 10, ptr %33)
  %34 = load ptr, ptr @stdout, align 8, !tbaa !5
  %35 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 23, i64 1, ptr %34)
  %36 = load ptr, ptr @stdout, align 8, !tbaa !5
  %37 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 70, i64 1, ptr %36)
  %38 = load ptr, ptr @stdout, align 8, !tbaa !5
  %39 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 66, i64 1, ptr %38)
  %40 = load ptr, ptr @stdout, align 8, !tbaa !5
  %41 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 71, i64 1, ptr %40)
  %42 = load ptr, ptr @stdout, align 8, !tbaa !5
  %43 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 64, i64 1, ptr %42)
  %44 = load ptr, ptr @stdout, align 8, !tbaa !5
  %45 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 64, i64 1, ptr %44)
  %46 = load ptr, ptr @stdout, align 8, !tbaa !5
  %47 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 49, i64 1, ptr %46)
  %48 = load ptr, ptr @stdout, align 8, !tbaa !5
  %49 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 48, i64 1, ptr %48)
  %50 = load ptr, ptr @stdout, align 8, !tbaa !5
  %51 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 44, i64 1, ptr %50)
  %52 = load ptr, ptr @stdout, align 8, !tbaa !5
  %53 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 44, i64 1, ptr %52)
  %54 = load ptr, ptr @stdout, align 8, !tbaa !5
  %55 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 76, i64 1, ptr %54)
  %56 = load ptr, ptr @stdout, align 8, !tbaa !5
  %57 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 56, i64 1, ptr %56)
  %58 = load ptr, ptr @stdout, align 8, !tbaa !5
  %fputc69 = tail call i32 @fputc(i32 10, ptr %58)
  %59 = load ptr, ptr @stdout, align 8, !tbaa !5
  %60 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 47, i64 1, ptr %59)
  %61 = load ptr, ptr @stdout, align 8, !tbaa !5
  %62 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 71, i64 1, ptr %61)
  %63 = load ptr, ptr @stdout, align 8, !tbaa !5
  %64 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 49, i64 1, ptr %63)
  %65 = load ptr, ptr @stdout, align 8, !tbaa !5
  %66 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 53, i64 1, ptr %65)
  %67 = load ptr, ptr @stdout, align 8, !tbaa !5
  %fputc70 = tail call i32 @fputc(i32 10, ptr %67)
  %68 = load ptr, ptr @stdout, align 8, !tbaa !5
  %69 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 15, i64 1, ptr %68)
  %70 = load ptr, ptr @stdout, align 8, !tbaa !5
  %71 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 47, i64 1, ptr %70)
  %72 = load ptr, ptr @stdout, align 8, !tbaa !5
  %VBR_q = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 22
  %73 = load i32, ptr %VBR_q, align 4, !tbaa !9
  %call40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.36, i32 noundef %73)
  %74 = load ptr, ptr @stdout, align 8, !tbaa !5
  %75 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 65, i64 1, ptr %74)
  %76 = load ptr, ptr @stdout, align 8, !tbaa !5
  %77 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 67, i64 1, ptr %76)
  %78 = load ptr, ptr @stdout, align 8, !tbaa !5
  %79 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 68, i64 1, ptr %78)
  %80 = load ptr, ptr @stdout, align 8, !tbaa !5
  %81 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 55, i64 1, ptr %80)
  %82 = load ptr, ptr @stdout, align 8, !tbaa !5
  %83 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 50, i64 1, ptr %82)
  %84 = load ptr, ptr @stdout, align 8, !tbaa !5
  %fputc71 = tail call i32 @fputc(i32 10, ptr %84)
  %85 = load ptr, ptr @stdout, align 8, !tbaa !5
  %86 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 29, i64 1, ptr %85)
  %87 = load ptr, ptr @stdout, align 8, !tbaa !5
  %88 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 50, i64 1, ptr %87)
  %89 = load ptr, ptr @stdout, align 8, !tbaa !5
  %90 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 38, i64 1, ptr %89)
  %91 = load ptr, ptr @stdout, align 8, !tbaa !5
  %92 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 41, i64 1, ptr %91)
  %93 = load ptr, ptr @stdout, align 8, !tbaa !5
  %94 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 74, i64 1, ptr %93)
  %95 = load ptr, ptr @stdout, align 8, !tbaa !5
  %96 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 57, i64 1, ptr %95)
  %97 = load ptr, ptr @stdout, align 8, !tbaa !5
  %98 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 46, i64 1, ptr %97)
  %99 = load ptr, ptr @stdout, align 8, !tbaa !5
  %fputc72 = tail call i32 @fputc(i32 10, ptr %99)
  %100 = load ptr, ptr @stdout, align 8, !tbaa !5
  %101 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 63, i64 1, ptr %100)
  %102 = load ptr, ptr @stdout, align 8, !tbaa !5
  %103 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 51, i64 1, ptr %102)
  %104 = load ptr, ptr @stdout, align 8, !tbaa !5
  %105 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 61, i64 1, ptr %104)
  %106 = load ptr, ptr @stdout, align 8, !tbaa !5
  %107 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 62, i64 1, ptr %106)
  %108 = load ptr, ptr @stdout, align 8, !tbaa !5
  %109 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 74, i64 1, ptr %108)
  %110 = load ptr, ptr @stdout, align 8, !tbaa !5
  %111 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 53, i64 1, ptr %110)
  %112 = load ptr, ptr @stdout, align 8, !tbaa !5
  %113 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 68, i64 1, ptr %112)
  %114 = load ptr, ptr @stdout, align 8, !tbaa !5
  %115 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 67, i64 1, ptr %114)
  %116 = load ptr, ptr @stdout, align 8, !tbaa !5
  %117 = tail call i64 @fwrite(ptr nonnull @.str.57, i64 66, i64 1, ptr %116)
  %118 = load ptr, ptr @stdout, align 8, !tbaa !5
  %119 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 53, i64 1, ptr %118)
  %120 = load ptr, ptr @stdout, align 8, !tbaa !5
  %fputc73 = tail call i32 @fputc(i32 10, ptr %120)
  %121 = load ptr, ptr @stdout, align 8, !tbaa !5
  tail call void @display_bitrates(ptr noundef %121) #13
  tail call void @exit(i32 noundef 0) #15
  unreachable
}

declare void @display_bitrates(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @lame_presets_info(ptr nocapture readnone %gfp, ptr nocapture readnone %name) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @stdout, align 8, !tbaa !5
  tail call void @lame_print_version(ptr noundef %0) #13
  %1 = load ptr, ptr @stdout, align 8, !tbaa !5
  %fputc = tail call i32 @fputc(i32 10, ptr %1)
  %2 = load ptr, ptr @stdout, align 8, !tbaa !5
  %3 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 48, i64 1, ptr %2)
  %4 = load ptr, ptr @stdout, align 8, !tbaa !5
  %5 = tail call i64 @fwrite(ptr nonnull @.str.60, i64 51, i64 1, ptr %4)
  %6 = load ptr, ptr @stdout, align 8, !tbaa !5
  %fputc76 = tail call i32 @fputc(i32 10, ptr %6)
  %7 = load ptr, ptr @stdout, align 8, !tbaa !5
  %8 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 43, i64 1, ptr %7)
  %9 = load ptr, ptr @stdout, align 8, !tbaa !5
  %10 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 47, i64 1, ptr %9)
  %11 = load ptr, ptr @stdout, align 8, !tbaa !5
  %12 = tail call i64 @fwrite(ptr nonnull @.str.63, i64 47, i64 1, ptr %11)
  %13 = load ptr, ptr @stdout, align 8, !tbaa !5
  %14 = tail call i64 @fwrite(ptr nonnull @.str.64, i64 47, i64 1, ptr %13)
  %15 = load ptr, ptr @stdout, align 8, !tbaa !5
  %16 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 47, i64 1, ptr %15)
  %17 = load ptr, ptr @stdout, align 8, !tbaa !5
  %18 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 34, i64 1, ptr %17)
  %19 = load ptr, ptr @stdout, align 8, !tbaa !5
  %20 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 31, i64 1, ptr %19)
  %21 = load ptr, ptr @stdout, align 8, !tbaa !5
  %22 = tail call i64 @fwrite(ptr nonnull @.str.68, i64 31, i64 1, ptr %21)
  %23 = load ptr, ptr @stdout, align 8, !tbaa !5
  %24 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 34, i64 1, ptr %23)
  %25 = load ptr, ptr @stdout, align 8, !tbaa !5
  %26 = tail call i64 @fwrite(ptr nonnull @.str.70, i64 58, i64 1, ptr %25)
  %27 = load ptr, ptr @stdout, align 8, !tbaa !5
  %28 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 34, i64 1, ptr %27)
  %29 = load ptr, ptr @stdout, align 8, !tbaa !5
  %fputc77 = tail call i32 @fputc(i32 10, ptr %29)
  %30 = load ptr, ptr @stdout, align 8, !tbaa !5
  %31 = tail call i64 @fwrite(ptr nonnull @.str.72, i64 43, i64 1, ptr %30)
  %32 = load ptr, ptr @stdout, align 8, !tbaa !5
  %33 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 47, i64 1, ptr %32)
  %34 = load ptr, ptr @stdout, align 8, !tbaa !5
  %35 = tail call i64 @fwrite(ptr nonnull @.str.74, i64 47, i64 1, ptr %34)
  %36 = load ptr, ptr @stdout, align 8, !tbaa !5
  %37 = tail call i64 @fwrite(ptr nonnull @.str.75, i64 43, i64 1, ptr %36)
  %38 = load ptr, ptr @stdout, align 8, !tbaa !5
  %39 = tail call i64 @fwrite(ptr nonnull @.str.76, i64 43, i64 1, ptr %38)
  %40 = load ptr, ptr @stdout, align 8, !tbaa !5
  %41 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 34, i64 1, ptr %40)
  %42 = load ptr, ptr @stdout, align 8, !tbaa !5
  %43 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 31, i64 1, ptr %42)
  %44 = load ptr, ptr @stdout, align 8, !tbaa !5
  %45 = tail call i64 @fwrite(ptr nonnull @.str.77, i64 31, i64 1, ptr %44)
  %46 = load ptr, ptr @stdout, align 8, !tbaa !5
  %47 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 34, i64 1, ptr %46)
  %48 = load ptr, ptr @stdout, align 8, !tbaa !5
  %49 = tail call i64 @fwrite(ptr nonnull @.str.78, i64 58, i64 1, ptr %48)
  %50 = load ptr, ptr @stdout, align 8, !tbaa !5
  %51 = tail call i64 @fwrite(ptr nonnull @.str.79, i64 34, i64 1, ptr %50)
  %52 = load ptr, ptr @stdout, align 8, !tbaa !5
  %fputc78 = tail call i32 @fputc(i32 10, ptr %52)
  %53 = load ptr, ptr @stdout, align 8, !tbaa !5
  %54 = tail call i64 @fwrite(ptr nonnull @.str.80, i64 43, i64 1, ptr %53)
  %55 = load ptr, ptr @stdout, align 8, !tbaa !5
  %56 = tail call i64 @fwrite(ptr nonnull @.str.81, i64 47, i64 1, ptr %55)
  %57 = load ptr, ptr @stdout, align 8, !tbaa !5
  %58 = tail call i64 @fwrite(ptr nonnull @.str.82, i64 43, i64 1, ptr %57)
  %59 = load ptr, ptr @stdout, align 8, !tbaa !5
  %60 = tail call i64 @fwrite(ptr nonnull @.str.83, i64 45, i64 1, ptr %59)
  %61 = load ptr, ptr @stdout, align 8, !tbaa !5
  %62 = tail call i64 @fwrite(ptr nonnull @.str.84, i64 43, i64 1, ptr %61)
  %63 = load ptr, ptr @stdout, align 8, !tbaa !5
  %64 = tail call i64 @fwrite(ptr nonnull @.str.85, i64 31, i64 1, ptr %63)
  %65 = load ptr, ptr @stdout, align 8, !tbaa !5
  %66 = tail call i64 @fwrite(ptr nonnull @.str.86, i64 31, i64 1, ptr %65)
  %67 = load ptr, ptr @stdout, align 8, !tbaa !5
  %68 = tail call i64 @fwrite(ptr nonnull @.str.87, i64 34, i64 1, ptr %67)
  %69 = load ptr, ptr @stdout, align 8, !tbaa !5
  %70 = tail call i64 @fwrite(ptr nonnull @.str.88, i64 58, i64 1, ptr %69)
  %71 = load ptr, ptr @stdout, align 8, !tbaa !5
  %72 = tail call i64 @fwrite(ptr nonnull @.str.79, i64 34, i64 1, ptr %71)
  %73 = load ptr, ptr @stdout, align 8, !tbaa !5
  %fputc79 = tail call i32 @fputc(i32 10, ptr %73)
  %74 = load ptr, ptr @stdout, align 8, !tbaa !5
  %75 = tail call i64 @fwrite(ptr nonnull @.str.89, i64 43, i64 1, ptr %74)
  %76 = load ptr, ptr @stdout, align 8, !tbaa !5
  %77 = tail call i64 @fwrite(ptr nonnull @.str.76, i64 43, i64 1, ptr %76)
  %78 = load ptr, ptr @stdout, align 8, !tbaa !5
  %79 = tail call i64 @fwrite(ptr nonnull @.str.90, i64 47, i64 1, ptr %78)
  %80 = load ptr, ptr @stdout, align 8, !tbaa !5
  %81 = tail call i64 @fwrite(ptr nonnull @.str.91, i64 47, i64 1, ptr %80)
  %82 = load ptr, ptr @stdout, align 8, !tbaa !5
  %83 = tail call i64 @fwrite(ptr nonnull @.str.85, i64 31, i64 1, ptr %82)
  %84 = load ptr, ptr @stdout, align 8, !tbaa !5
  %85 = tail call i64 @fwrite(ptr nonnull @.str.92, i64 31, i64 1, ptr %84)
  %86 = load ptr, ptr @stdout, align 8, !tbaa !5
  %87 = tail call i64 @fwrite(ptr nonnull @.str.87, i64 34, i64 1, ptr %86)
  %88 = load ptr, ptr @stdout, align 8, !tbaa !5
  %89 = tail call i64 @fwrite(ptr nonnull @.str.88, i64 58, i64 1, ptr %88)
  %90 = load ptr, ptr @stdout, align 8, !tbaa !5
  %91 = tail call i64 @fwrite(ptr nonnull @.str.79, i64 34, i64 1, ptr %90)
  %92 = load ptr, ptr @stdout, align 8, !tbaa !5
  %fputc80 = tail call i32 @fputc(i32 10, ptr %92)
  %93 = load ptr, ptr @stdout, align 8, !tbaa !5
  %94 = tail call i64 @fwrite(ptr nonnull @.str.93, i64 43, i64 1, ptr %93)
  %95 = load ptr, ptr @stdout, align 8, !tbaa !5
  %96 = tail call i64 @fwrite(ptr nonnull @.str.94, i64 43, i64 1, ptr %95)
  %97 = load ptr, ptr @stdout, align 8, !tbaa !5
  %98 = tail call i64 @fwrite(ptr nonnull @.str.90, i64 47, i64 1, ptr %97)
  %99 = load ptr, ptr @stdout, align 8, !tbaa !5
  %100 = tail call i64 @fwrite(ptr nonnull @.str.91, i64 47, i64 1, ptr %99)
  %101 = load ptr, ptr @stdout, align 8, !tbaa !5
  %102 = tail call i64 @fwrite(ptr nonnull @.str.95, i64 27, i64 1, ptr %101)
  %103 = load ptr, ptr @stdout, align 8, !tbaa !5
  %104 = tail call i64 @fwrite(ptr nonnull @.str.85, i64 31, i64 1, ptr %103)
  %105 = load ptr, ptr @stdout, align 8, !tbaa !5
  %106 = tail call i64 @fwrite(ptr nonnull @.str.96, i64 31, i64 1, ptr %105)
  %107 = load ptr, ptr @stdout, align 8, !tbaa !5
  %108 = tail call i64 @fwrite(ptr nonnull @.str.87, i64 34, i64 1, ptr %107)
  %109 = load ptr, ptr @stdout, align 8, !tbaa !5
  %110 = tail call i64 @fwrite(ptr nonnull @.str.97, i64 58, i64 1, ptr %109)
  %111 = load ptr, ptr @stdout, align 8, !tbaa !5
  %112 = tail call i64 @fwrite(ptr nonnull @.str.98, i64 34, i64 1, ptr %111)
  %113 = load ptr, ptr @stdout, align 8, !tbaa !5
  %fputc81 = tail call i32 @fputc(i32 10, ptr %113)
  %114 = load ptr, ptr @stdout, align 8, !tbaa !5
  %115 = tail call i64 @fwrite(ptr nonnull @.str.99, i64 27, i64 1, ptr %114)
  %116 = load ptr, ptr @stdout, align 8, !tbaa !5
  %117 = tail call i64 @fwrite(ptr nonnull @.str.95, i64 27, i64 1, ptr %116)
  %118 = load ptr, ptr @stdout, align 8, !tbaa !5
  %119 = tail call i64 @fwrite(ptr nonnull @.str.100, i64 31, i64 1, ptr %118)
  %120 = load ptr, ptr @stdout, align 8, !tbaa !5
  %121 = tail call i64 @fwrite(ptr nonnull @.str.101, i64 31, i64 1, ptr %120)
  %122 = load ptr, ptr @stdout, align 8, !tbaa !5
  %123 = tail call i64 @fwrite(ptr nonnull @.str.102, i64 34, i64 1, ptr %122)
  %124 = load ptr, ptr @stdout, align 8, !tbaa !5
  %125 = tail call i64 @fwrite(ptr nonnull @.str.103, i64 58, i64 1, ptr %124)
  %126 = load ptr, ptr @stdout, align 8, !tbaa !5
  %127 = tail call i64 @fwrite(ptr nonnull @.str.104, i64 34, i64 1, ptr %126)
  %128 = load ptr, ptr @stdout, align 8, !tbaa !5
  %fputc82 = tail call i32 @fputc(i32 10, ptr %128)
  %129 = load ptr, ptr @stdout, align 8, !tbaa !5
  %130 = tail call i64 @fwrite(ptr nonnull @.str.105, i64 27, i64 1, ptr %129)
  %131 = load ptr, ptr @stdout, align 8, !tbaa !5
  %132 = tail call i64 @fwrite(ptr nonnull @.str.95, i64 27, i64 1, ptr %131)
  %133 = load ptr, ptr @stdout, align 8, !tbaa !5
  %134 = tail call i64 @fwrite(ptr nonnull @.str.100, i64 31, i64 1, ptr %133)
  %135 = load ptr, ptr @stdout, align 8, !tbaa !5
  %136 = tail call i64 @fwrite(ptr nonnull @.str.106, i64 31, i64 1, ptr %135)
  %137 = load ptr, ptr @stdout, align 8, !tbaa !5
  %138 = tail call i64 @fwrite(ptr nonnull @.str.107, i64 34, i64 1, ptr %137)
  %139 = load ptr, ptr @stdout, align 8, !tbaa !5
  %140 = tail call i64 @fwrite(ptr nonnull @.str.108, i64 58, i64 1, ptr %139)
  %141 = load ptr, ptr @stdout, align 8, !tbaa !5
  %142 = tail call i64 @fwrite(ptr nonnull @.str.109, i64 34, i64 1, ptr %141)
  %143 = load ptr, ptr @stdout, align 8, !tbaa !5
  %fputc83 = tail call i32 @fputc(i32 10, ptr %143)
  tail call void @exit(i32 noundef 0) #15
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @lame_parse_args(ptr noundef %gfp, i32 noundef %argc, ptr nocapture noundef readonly %argv) local_unnamed_addr #4 {
entry:
  %c = alloca i8, align 1
  %token = alloca ptr, align 8
  %0 = load ptr, ptr %argv, align 8, !tbaa !5
  store i8 0, ptr @inPath, align 16, !tbaa !14
  store i8 0, ptr @outPath, align 16, !tbaa !14
  %inPath = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 31
  store ptr @inPath, ptr %inPath, align 8, !tbaa !15
  %outPath = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 32
  store ptr @outPath, ptr %outPath, align 8, !tbaa !16
  tail call void @id3_inittag(ptr noundef nonnull @id3tag) #13
  store i32 0, ptr @id3tag, align 4, !tbaa !17
  %cmp1001 = icmp sgt i32 %argc, 1
  br i1 %cmp1001, label %while.body.lr.ph, label %while.end609

while.body.lr.ph:                                 ; preds = %entry
  %original = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 13
  %copyright = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 12
  %emphasis565 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 38
  %quality546 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 6
  %experimentalZ = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 20
  %experimentalY = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 19
  %experimentalX = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 18
  %silent = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 7
  %VBR490 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 21
  %allow_diff_short = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 36
  %lowpassfreq486 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 25
  %highpassfreq487 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 26
  %mode481 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 8
  %mode_fixed482 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 9
  %error_protection = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 14
  %swapbytes = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 30
  %input_format477 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 29
  %bWriteVbrTag = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 5
  %VBR_max_bitrate_kbps474 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 24
  %brate469 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 11
  %VBR_min_bitrate_kbps471 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 23
  %in_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 2
  %VBR_q437 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 22
  %force_ms = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 10
  %highpasswidth311 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 28
  %lowpasswidth313 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 27
  %no_short_blocks267 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 37
  %out_samplerate270 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 3
  %cwlimit = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 35
  %ATHonly = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 33
  %disable_reservoir = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 17
  %padding = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 44
  %noATH = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 34
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end608
  %inc1005 = phi i32 [ 1, %while.body.lr.ph ], [ %inc, %if.end608 ]
  %user_quality.01004 = phi i32 [ 0, %while.body.lr.ph ], [ %user_quality.3, %if.end608 ]
  %autoconvert.01003 = phi i32 [ 0, %while.body.lr.ph ], [ %autoconvert.3, %if.end608 ]
  %i.01002 = phi i32 [ 0, %while.body.lr.ph ], [ %i.4, %if.end608 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %token) #13
  %idxprom = sext i32 %inc1005 to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %argv, i64 %idxprom
  %1 = load ptr, ptr %arrayidx2, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i64 1
  store ptr %incdec.ptr, ptr %token, align 8, !tbaa !5
  %2 = load i8, ptr %1, align 1, !tbaa !14
  %cmp3 = icmp eq i8 %2, 45
  br i1 %cmp3, label %if.then, label %if.else586

if.then:                                          ; preds = %while.body
  %add = add nsw i32 %i.01002, 2
  %cmp5 = icmp slt i32 %add, %argc
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %idxprom9 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %argv, i64 %idxprom9
  %3 = load ptr, ptr %arrayidx10, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then7
  %nextArg.0 = phi ptr [ %3, %if.then7 ], [ @.str.110, %if.then ]
  %4 = load i8, ptr %incdec.ptr, align 1, !tbaa !14
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then11, label %if.end28

if.then11:                                        ; preds = %if.end
  %5 = load i8, ptr @inPath, align 16, !tbaa !14
  %cmp13 = icmp eq i8 %5, 0
  br i1 %cmp13, label %if.end28thread-pre-split.sink.split, label %if.else18

if.else18:                                        ; preds = %if.then11
  %6 = load i8, ptr @outPath, align 16, !tbaa !14
  %cmp20 = icmp eq i8 %6, 0
  br i1 %cmp20, label %if.end28thread-pre-split.sink.split, label %if.end28thread-pre-split

if.end28thread-pre-split.sink.split:              ; preds = %if.else18, %if.then11
  %outPath.sink = phi ptr [ @inPath, %if.then11 ], [ @outPath, %if.else18 ]
  %call25 = tail call ptr @strncpy(ptr noundef nonnull %outPath.sink, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 300) #13
  br label %if.end28thread-pre-split

if.end28thread-pre-split:                         ; preds = %if.end28thread-pre-split.sink.split, %if.else18
  %.pr = load i8, ptr %incdec.ptr, align 1, !tbaa !14
  br label %if.end28

if.end28:                                         ; preds = %if.end28thread-pre-split, %if.end
  %7 = phi i8 [ %.pr, %if.end28thread-pre-split ], [ %4, %if.end ]
  %incdec.ptr33 = getelementptr inbounds i8, ptr %1, i64 2
  switch i8 %7, label %while.body392 [
    i8 45, label %if.then32
    i8 0, label %if.end608
  ]

if.then32:                                        ; preds = %if.end28
  store ptr %incdec.ptr33, ptr %token, align 8, !tbaa !5
  %call34 = tail call i32 @strcmp(ptr noundef nonnull %incdec.ptr33, ptr noundef nonnull dereferenceable(9) @.str.111) #16
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %if.else48

if.then37:                                        ; preds = %if.then32
  %call38 = tail call fast double @atof(ptr noundef %nextArg.0) #16
  %conv39 = fptrunc double %call38 to float
  %conv40 = fpext float %conv39 to double
  %mul = fmul fast double %conv40, 1.000000e+03
  %add41 = fadd fast double %mul, 5.000000e-01
  %conv42 = fptosi double %add41 to i32
  store i32 %conv42, ptr %out_samplerate270, align 8, !tbaa !19
  %cmp43 = fcmp fast olt float %conv39, 1.000000e+00
  br i1 %cmp43, label %if.then45, label %if.end386

if.then45:                                        ; preds = %if.then37
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %9 = tail call i64 @fwrite(ptr nonnull @.str.112, i64 42, i64 1, ptr %8) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

if.else48:                                        ; preds = %if.then32
  %call49 = tail call i32 @strcmp(ptr noundef nonnull %incdec.ptr33, ptr noundef nonnull dereferenceable(9) @.str.113) #16
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then52, label %if.else53

if.then52:                                        ; preds = %if.else48
  store i32 3, ptr %input_format477, align 8, !tbaa !20
  br label %if.end386

if.else53:                                        ; preds = %if.else48
  %call54 = tail call i32 @strcmp(ptr noundef nonnull %incdec.ptr33, ptr noundef nonnull dereferenceable(6) @.str.114) #16
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %if.then57, label %if.else58

if.then57:                                        ; preds = %if.else53
  store i32 12000, ptr %lowpassfreq486, align 8, !tbaa !21
  store i32 160, ptr %VBR_max_bitrate_kbps474, align 4, !tbaa !22
  store i32 1, ptr %no_short_blocks267, align 8, !tbaa !23
  br label %if.end386

if.else58:                                        ; preds = %if.else53
  %call59 = tail call i32 @strcmp(ptr noundef nonnull %incdec.ptr33, ptr noundef nonnull dereferenceable(8) @.str.115) #16
  %cmp60 = icmp eq i32 %call59, 0
  br i1 %cmp60, label %if.then62, label %if.else64

if.then62:                                        ; preds = %if.else58
  store i32 1, ptr %no_short_blocks267, align 8, !tbaa !23
  br label %if.end386

if.else64:                                        ; preds = %if.else58
  %call65 = tail call i32 @strcmp(ptr noundef nonnull %incdec.ptr33, ptr noundef nonnull dereferenceable(6) @.str.116) #16
  %cmp66 = icmp eq i32 %call65, 0
  br i1 %cmp66, label %if.then68, label %if.else69

if.then68:                                        ; preds = %if.else64
  store i32 1, ptr %noATH, align 4, !tbaa !24
  br label %if.end386

if.else69:                                        ; preds = %if.else64
  %call70 = tail call i32 @strcmp(ptr noundef nonnull %incdec.ptr33, ptr noundef nonnull dereferenceable(6) @.str.117) #16
  %cmp71 = icmp eq i32 %call70, 0
  br i1 %cmp71, label %if.then73, label %if.else74

if.then73:                                        ; preds = %if.else69
  store i32 1, ptr %disable_reservoir, align 8, !tbaa !25
  store i32 0, ptr %padding, align 4, !tbaa !26
  br label %if.end386

if.else74:                                        ; preds = %if.else69
  %call75 = tail call i32 @strcmp(ptr noundef nonnull %incdec.ptr33, ptr noundef nonnull dereferenceable(8) @.str.118) #16
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %if.then78, label %if.else79

if.then78:                                        ; preds = %if.else74
  store i32 1, ptr %ATHonly, align 8, !tbaa !27
  br label %if.end386

if.else79:                                        ; preds = %if.else74
  %call80 = tail call i32 @strcmp(ptr noundef nonnull %incdec.ptr33, ptr noundef nonnull dereferenceable(7) @.str.119) #16
  %cmp81 = icmp eq i32 %call80, 0
  br i1 %cmp81, label %if.then83, label %if.else84

if.then83:                                        ; preds = %if.else79
  store i32 0, ptr @disp_brhist, align 4, !tbaa !28
  br label %if.end386

if.else84:                                        ; preds = %if.else79
  %call85 = tail call i32 @strcmp(ptr noundef nonnull %incdec.ptr33, ptr noundef nonnull dereferenceable(3) @.str.120) #16
  %cmp86 = icmp eq i32 %call85, 0
  br i1 %cmp86, label %if.then88, label %if.else90

if.then88:                                        ; preds = %if.else84
  store i32 1, ptr @id3tag, align 4, !tbaa !17
  %call89 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct.ID3TAGDATA, ptr @id3tag, i64 0, i32 2), ptr noundef nonnull dereferenceable(1) %nextArg.0, i64 noundef 30) #13
  br label %if.end386

if.else90:                                        ; preds = %if.else84
  %call91 = tail call i32 @strcmp(ptr noundef nonnull %incdec.ptr33, ptr noundef nonnull dereferenceable(3) @.str.121) #16
  %cmp92 = icmp eq i32 %call91, 0
  br i1 %cmp92, label %if.then94, label %if.else96

if.then94:                                        ; preds = %if.else90
  store i32 1, ptr @id3tag, align 4, !tbaa !17
  %call95 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct.ID3TAGDATA, ptr @id3tag, i64 0, i32 3), ptr noundef nonnull dereferenceable(1) %nextArg.0, i64 noundef 30) #13
  br label %if.end386

if.else96:                                        ; preds = %if.else90
  %call97 = tail call i32 @strcmp(ptr noundef nonnull %incdec.ptr33, ptr noundef nonnull dereferenceable(3) @.str.122) #16
  %cmp98 = icmp eq i32 %call97, 0
  br i1 %cmp98, label %if.then100, label %if.else102

if.then100:                                       ; preds = %if.else96
  store i32 1, ptr @id3tag, align 4, !tbaa !17
  %call101 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct.ID3TAGDATA, ptr @id3tag, i64 0, i32 4), ptr noundef nonnull dereferenceable(1) %nextArg.0, i64 noundef 30) #13
  br label %if.end386

if.else102:                                       ; preds = %if.else96
  %call103 = tail call i32 @strcmp(ptr noundef nonnull %incdec.ptr33, ptr noundef nonnull dereferenceable(3) @.str.123) #16
  %cmp104 = icmp eq i32 %call103, 0
  br i1 %cmp104, label %if.then106, label %if.else108

if.then106:                                       ; preds = %if.else102
  store i32 1, ptr @id3tag, align 4, !tbaa !17
  %call107 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct.ID3TAGDATA, ptr @id3tag, i64 0, i32 5), ptr noundef nonnull dereferenceable(1) %nextArg.0, i64 noundef 4) #13
  br label %if.end386

if.else108:                                       ; preds = %if.else102
  %call109 = tail call i32 @strcmp(ptr noundef nonnull %incdec.ptr33, ptr noundef nonnull dereferenceable(3) @.str.124) #16
  %cmp110 = icmp eq i32 %call109, 0
  br i1 %cmp110, label %if.then112, label %if.else114

if.then112:                                       ; preds = %if.else108
  store i32 1, ptr @id3tag, align 4, !tbaa !17
  %call113 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct.ID3TAGDATA, ptr @id3tag, i64 0, i32 6), ptr noundef nonnull dereferenceable(1) %nextArg.0, i64 noundef 30) #13
  br label %if.end386

if.else114:                                       ; preds = %if.else108
  %call115 = tail call i32 @strcmp(ptr noundef nonnull %incdec.ptr33, ptr noundef nonnull dereferenceable(3) @.str.125) #16
  %cmp116 = icmp eq i32 %call115, 0
  br i1 %cmp116, label %if.then118, label %if.else129

if.then118:                                       ; preds = %if.else114
  store i32 1, ptr @id3tag, align 4, !tbaa !17
  %call119 = tail call i32 @atoi(ptr noundef %nextArg.0) #16
  %10 = tail call i32 @llvm.smax.i32(i32 %call119, i32 1)
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 99)
  %conv128 = trunc i32 %11 to i8
  store i8 %conv128, ptr getelementptr inbounds (%struct.ID3TAGDATA, ptr @id3tag, i64 0, i32 9), align 2, !tbaa !29
  br label %if.end386

if.else129:                                       ; preds = %if.else114
  %call130 = tail call i32 @strcmp(ptr noundef nonnull %incdec.ptr33, ptr noundef nonnull dereferenceable(3) @.str.126) #16
  %cmp131 = icmp eq i32 %call130, 0
  br i1 %cmp131, label %if.then133, label %if.else156

if.then133:                                       ; preds = %if.else129
  %call134 = call i64 @strtol(ptr noundef %nextArg.0, ptr noundef nonnull %token, i32 noundef 10) #13
  %12 = load ptr, ptr %token, align 8, !tbaa !5
  %cmp136 = icmp eq ptr %nextArg.0, %12
  br i1 %cmp136, label %for.cond.preheader, label %if.then133.if.end148_crit_edge

if.then133.if.end148_crit_edge:                   ; preds = %if.then133
  %conv135 = trunc i64 %call134 to i32
  %.pre = load i32, ptr @genre_last, align 4, !tbaa !28
  br label %if.end148

for.cond.preheader:                               ; preds = %if.then133
  %13 = load i32, ptr @genre_last, align 4, !tbaa !28
  %cmp139.not997 = icmp slt i32 %13, 0
  br i1 %cmp139.not997, label %if.end148, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %14 = add nuw i32 %13, 1
  %wide.trip.count = zext i32 %14 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx142 = getelementptr inbounds [0 x ptr], ptr @genre_list, i64 0, i64 %indvars.iv
  %15 = load ptr, ptr %arrayidx142, align 8, !tbaa !5
  %call143 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %nextArg.0) #16
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end148.loopexit.split.loop.exit1059, label %for.inc

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end148, label %for.body, !llvm.loop !30

if.end148.loopexit.split.loop.exit1059:           ; preds = %for.body
  %16 = trunc i64 %indvars.iv to i32
  br label %if.end148

if.end148:                                        ; preds = %for.inc, %if.end148.loopexit.split.loop.exit1059, %if.then133.if.end148_crit_edge, %for.cond.preheader
  %17 = phi i32 [ %.pre, %if.then133.if.end148_crit_edge ], [ %13, %for.cond.preheader ], [ %13, %if.end148.loopexit.split.loop.exit1059 ], [ %13, %for.inc ]
  %argUsed.1 = phi i32 [ %conv135, %if.then133.if.end148_crit_edge ], [ 0, %for.cond.preheader ], [ %16, %if.end148.loopexit.split.loop.exit1059 ], [ %14, %for.inc ]
  %cmp149 = icmp sgt i32 %argUsed.1, %17
  br i1 %cmp149, label %if.then151, label %if.end153

if.then151:                                       ; preds = %if.end148
  %18 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call152 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.127, ptr noundef %nextArg.0) #14
  br label %if.end153

if.end153:                                        ; preds = %if.then151, %if.end148
  %argUsed.2 = phi i32 [ 255, %if.then151 ], [ %argUsed.1, %if.end148 ]
  %conv154 = trunc i32 %argUsed.2 to i8
  store i8 %conv154, ptr %c, align 1, !tbaa !14
  store i32 1, ptr @id3tag, align 4, !tbaa !17
  %call155 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct.ID3TAGDATA, ptr @id3tag, i64 0, i32 8), ptr noundef nonnull %c, i64 noundef 1) #13
  br label %if.end386

if.else156:                                       ; preds = %if.else129
  %call157 = tail call i32 @strcmp(ptr noundef nonnull %incdec.ptr33, ptr noundef nonnull dereferenceable(8) @.str.128) #16
  %cmp158 = icmp eq i32 %call157, 0
  br i1 %cmp158, label %if.then160, label %if.else172

if.then160:                                       ; preds = %if.else156
  %call161 = tail call fast double @atof(ptr noundef %nextArg.0) #16
  %mul162 = fmul fast double %call161, 1.000000e+03
  %add163 = fadd fast double %mul162, 5.000000e-01
  %conv164 = fptosi double %add163 to i32
  store i32 %conv164, ptr %lowpassfreq486, align 8, !tbaa !21
  %cmp167 = icmp slt i32 %conv164, 1
  br i1 %cmp167, label %if.then169, label %if.end386

if.then169:                                       ; preds = %if.then160
  %19 = load ptr, ptr @stderr, align 8, !tbaa !5
  %20 = tail call i64 @fwrite(ptr nonnull @.str.129, i64 60, i64 1, ptr %19) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

if.else172:                                       ; preds = %if.else156
  %call173 = tail call i32 @strcmp(ptr noundef nonnull %incdec.ptr33, ptr noundef nonnull dereferenceable(14) @.str.130) #16
  %cmp174 = icmp eq i32 %call173, 0
  br i1 %cmp174, label %if.then176, label %if.else187

if.then176:                                       ; preds = %if.else172
  %call177 = tail call fast double @atof(ptr noundef %nextArg.0) #16
  %mul178 = fmul fast double %call177, 1.000000e+03
  %add179 = fadd fast double %mul178, 5.000000e-01
  %conv180 = fptosi double %add179 to i32
  store i32 %conv180, ptr %lowpasswidth313, align 8, !tbaa !33
  %cmp182 = icmp slt i32 %conv180, 0
  br i1 %cmp182, label %if.then184, label %if.end386

if.then184:                                       ; preds = %if.then176
  %21 = load ptr, ptr @stderr, align 8, !tbaa !5
  %22 = tail call i64 @fwrite(ptr nonnull @.str.131, i64 68, i64 1, ptr %21) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

if.else187:                                       ; preds = %if.else172
  %call188 = tail call i32 @strcmp(ptr noundef nonnull %incdec.ptr33, ptr noundef nonnull dereferenceable(9) @.str.132) #16
  %cmp189 = icmp eq i32 %call188, 0
  br i1 %cmp189, label %if.then191, label %if.else202

if.then191:                                       ; preds = %if.else187
  %call192 = tail call fast double @atof(ptr noundef %nextArg.0) #16
  %mul193 = fmul fast double %call192, 1.000000e+03
  %add194 = fadd fast double %mul193, 5.000000e-01
  %conv195 = fptosi double %add194 to i32
  store i32 %conv195, ptr %highpassfreq487, align 4, !tbaa !34
  %cmp197 = icmp slt i32 %conv195, 1
  br i1 %cmp197, label %if.then199, label %if.end386

if.then199:                                       ; preds = %if.then191
  %23 = load ptr, ptr @stderr, align 8, !tbaa !5
  %24 = tail call i64 @fwrite(ptr nonnull @.str.133, i64 62, i64 1, ptr %23) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

if.else202:                                       ; preds = %if.else187
  %call203 = tail call i32 @strcmp(ptr noundef nonnull %incdec.ptr33, ptr noundef nonnull dereferenceable(15) @.str.134) #16
  %cmp204 = icmp eq i32 %call203, 0
  br i1 %cmp204, label %if.then206, label %if.else217

if.then206:                                       ; preds = %if.else202
  %call207 = tail call fast double @atof(ptr noundef %nextArg.0) #16
  %mul208 = fmul fast double %call207, 1.000000e+03
  %add209 = fadd fast double %mul208, 5.000000e-01
  %conv210 = fptosi double %add209 to i32
  store i32 %conv210, ptr %highpasswidth311, align 4, !tbaa !35
  %cmp212 = icmp slt i32 %conv210, 0
  br i1 %cmp212, label %if.then214, label %if.end386

if.then214:                                       ; preds = %if.then206
  %25 = load ptr, ptr @stderr, align 8, !tbaa !5
  %26 = tail call i64 @fwrite(ptr nonnull @.str.135, i64 70, i64 1, ptr %25) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

if.else217:                                       ; preds = %if.else202
  %call218 = tail call i32 @strcmp(ptr noundef nonnull %incdec.ptr33, ptr noundef nonnull dereferenceable(8) @.str.136) #16
  %cmp219 = icmp eq i32 %call218, 0
  br i1 %cmp219, label %if.then221, label %if.else230

if.then221:                                       ; preds = %if.else217
  %call222 = tail call fast double @atof(ptr noundef %nextArg.0) #16
  %conv223 = fptrunc double %call222 to float
  store float %conv223, ptr %cwlimit, align 8, !tbaa !36
  %cmp225 = fcmp fast ugt float %conv223, 0.000000e+00
  br i1 %cmp225, label %if.end386, label %if.then227

if.then227:                                       ; preds = %if.then221
  %27 = load ptr, ptr @stderr, align 8, !tbaa !5
  %28 = tail call i64 @fwrite(ptr nonnull @.str.137, i64 28, i64 1, ptr %27) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

if.else230:                                       ; preds = %if.else217
  %call231 = tail call i32 @strcmp(ptr noundef nonnull %incdec.ptr33, ptr noundef nonnull dereferenceable(5) @.str.138) #16
  %cmp232 = icmp eq i32 %call231, 0
  br i1 %cmp232, label %if.then237, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else230
  %call234 = tail call i32 @strcmp(ptr noundef nonnull %incdec.ptr33, ptr noundef nonnull dereferenceable(6) @.str.139) #16
  %cmp235 = icmp eq i32 %call234, 0
  br i1 %cmp235, label %if.then237, label %if.else238

if.then237:                                       ; preds = %lor.lhs.false, %if.else230
  tail call void @lame_help(ptr noundef %gfp, ptr noundef %0)
  unreachable

if.else238:                                       ; preds = %lor.lhs.false
  %call239 = tail call i32 @strcmp(ptr noundef nonnull %incdec.ptr33, ptr noundef nonnull dereferenceable(7) @.str.140) #16
  %cmp240 = icmp eq i32 %call239, 0
  br i1 %cmp240, label %if.then242, label %if.else363

if.then242:                                       ; preds = %if.else238
  %call243 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %nextArg.0, ptr noundef nonnull dereferenceable(6) @.str.141) #16
  %cmp244 = icmp eq i32 %call243, 0
  br i1 %cmp244, label %if.then246, label %if.else254

if.then246:                                       ; preds = %if.then242
  store i32 16, ptr %brate469, align 8, !tbaa !37
  store i32 260, ptr %highpassfreq487, align 4, !tbaa !34
  store i32 40, ptr %highpasswidth311, align 4, !tbaa !35
  store i32 3700, ptr %lowpassfreq486, align 8, !tbaa !21
  store i32 300, ptr %lowpasswidth313, align 8, !tbaa !33
  store i32 5, ptr %VBR_q437, align 4, !tbaa !9
  store i32 8, ptr %VBR_min_bitrate_kbps471, align 8, !tbaa !38
  store i32 56, ptr %VBR_max_bitrate_kbps474, align 4, !tbaa !22
  store i32 1, ptr %no_short_blocks267, align 8, !tbaa !23
  store i32 16000, ptr %out_samplerate270, align 8, !tbaa !19
  store i32 3, ptr %mode481, align 4, !tbaa !39
  store i32 1, ptr %mode_fixed482, align 8, !tbaa !40
  store i32 5, ptr %quality546, align 4, !tbaa !41
  br label %if.end386

if.else254:                                       ; preds = %if.then242
  %call255 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %nextArg.0, ptr noundef nonnull dereferenceable(6) @.str.114) #16
  %cmp256 = icmp eq i32 %call255, 0
  br i1 %cmp256, label %if.then258, label %if.else272

if.then258:                                       ; preds = %if.else254
  store i32 56, ptr %brate469, align 8, !tbaa !37
  store i32 100, ptr %highpassfreq487, align 4, !tbaa !34
  store i32 20, ptr %highpasswidth311, align 4, !tbaa !35
  store i32 2000, ptr %lowpasswidth313, align 8, !tbaa !33
  store i32 11000, ptr %lowpassfreq486, align 8, !tbaa !21
  store i32 4, ptr %VBR_q437, align 4, !tbaa !9
  store i32 8, ptr %VBR_min_bitrate_kbps471, align 8, !tbaa !38
  store i32 96, ptr %VBR_max_bitrate_kbps474, align 4, !tbaa !22
  store i32 1, ptr %no_short_blocks267, align 8, !tbaa !23
  store i32 3, ptr %mode481, align 4, !tbaa !39
  store i32 1, ptr %mode_fixed482, align 8, !tbaa !40
  store i32 24000, ptr %out_samplerate270, align 8, !tbaa !19
  store i32 5, ptr %quality546, align 4, !tbaa !41
  br label %if.end386

if.else272:                                       ; preds = %if.else254
  %call273 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %nextArg.0, ptr noundef nonnull dereferenceable(3) @.str.142) #16
  %cmp274 = icmp eq i32 %call273, 0
  br i1 %cmp274, label %if.then276, label %if.else288

if.then276:                                       ; preds = %if.else272
  store i32 96, ptr %brate469, align 8, !tbaa !37
  store i32 30, ptr %highpassfreq487, align 4, !tbaa !34
  store i32 0, ptr %highpasswidth311, align 4, !tbaa !35
  store i32 15000, ptr %lowpassfreq486, align 8, !tbaa !21
  store i32 0, ptr %lowpasswidth313, align 8, !tbaa !33
  store i32 4, ptr %VBR_q437, align 4, !tbaa !9
  store i32 32, ptr %VBR_min_bitrate_kbps471, align 8, !tbaa !38
  store i32 192, ptr %VBR_max_bitrate_kbps474, align 4, !tbaa !22
  store i32 1, ptr %mode481, align 4, !tbaa !39
  store i32 1, ptr %mode_fixed482, align 8, !tbaa !40
  store i32 5, ptr %quality546, align 4, !tbaa !41
  br label %if.end386

if.else288:                                       ; preds = %if.else272
  %call289 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %nextArg.0, ptr noundef nonnull dereferenceable(5) @.str.143) #16
  %cmp290 = icmp eq i32 %call289, 0
  br i1 %cmp290, label %if.then292, label %if.else304

if.then292:                                       ; preds = %if.else288
  store i32 128, ptr %brate469, align 8, !tbaa !37
  store i32 15, ptr %highpassfreq487, align 4, !tbaa !34
  store i32 15, ptr %highpasswidth311, align 4, !tbaa !35
  store i32 17000, ptr %lowpassfreq486, align 8, !tbaa !21
  store i32 2000, ptr %lowpasswidth313, align 8, !tbaa !33
  store i32 4, ptr %VBR_q437, align 4, !tbaa !9
  store i32 32, ptr %VBR_min_bitrate_kbps471, align 8, !tbaa !38
  store i32 192, ptr %VBR_max_bitrate_kbps474, align 4, !tbaa !22
  store i32 1, ptr %mode481, align 4, !tbaa !39
  store i32 1, ptr %mode_fixed482, align 8, !tbaa !40
  store i32 5, ptr %quality546, align 4, !tbaa !41
  br label %if.end386

if.else304:                                       ; preds = %if.else288
  %call305 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %nextArg.0, ptr noundef nonnull dereferenceable(5) @.str.144) #16
  %cmp306 = icmp eq i32 %call305, 0
  br i1 %cmp306, label %if.then308, label %if.else320

if.then308:                                       ; preds = %if.else304
  store i32 160, ptr %brate469, align 8, !tbaa !37
  store i32 15, ptr %highpassfreq487, align 4, !tbaa !34
  store i32 15, ptr %highpasswidth311, align 4, !tbaa !35
  store i32 20000, ptr %lowpassfreq486, align 8, !tbaa !21
  store i32 3000, ptr %lowpasswidth313, align 8, !tbaa !33
  store i32 3, ptr %VBR_q437, align 4, !tbaa !9
  store i32 32, ptr %VBR_min_bitrate_kbps471, align 8, !tbaa !38
  store i32 224, ptr %VBR_max_bitrate_kbps474, align 4, !tbaa !22
  store i32 1, ptr %mode481, align 4, !tbaa !39
  store i32 1, ptr %mode_fixed482, align 8, !tbaa !40
  store i32 2, ptr %quality546, align 4, !tbaa !41
  br label %if.end386

if.else320:                                       ; preds = %if.else304
  %call321 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %nextArg.0, ptr noundef nonnull dereferenceable(3) @.str.145) #16
  %cmp322 = icmp eq i32 %call321, 0
  br i1 %cmp322, label %if.then324, label %if.else334

if.then324:                                       ; preds = %if.else320
  store i32 192, ptr %brate469, align 8, !tbaa !37
  store i32 -1, ptr %lowpassfreq486, align 8, !tbaa !21
  store i32 -1, ptr %highpassfreq487, align 4, !tbaa !34
  store i32 2, ptr %VBR_q437, align 4, !tbaa !9
  store i32 80, ptr %VBR_min_bitrate_kbps471, align 8, !tbaa !38
  store i32 256, ptr %VBR_max_bitrate_kbps474, align 4, !tbaa !22
  store i32 0, ptr %mode481, align 4, !tbaa !39
  store i32 1, ptr %mode_fixed482, align 8, !tbaa !40
  store i32 2, ptr %quality546, align 4, !tbaa !41
  br label %if.end386

if.else334:                                       ; preds = %if.else320
  %call335 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %nextArg.0, ptr noundef nonnull dereferenceable(7) @.str.146) #16
  %cmp336 = icmp eq i32 %call335, 0
  br i1 %cmp336, label %if.then338, label %if.else348

if.then338:                                       ; preds = %if.else334
  store i32 256, ptr %brate469, align 8, !tbaa !37
  store i32 -1, ptr %lowpassfreq486, align 8, !tbaa !21
  store i32 -1, ptr %highpassfreq487, align 4, !tbaa !34
  store i32 0, ptr %VBR_q437, align 4, !tbaa !9
  store i32 112, ptr %VBR_min_bitrate_kbps471, align 8, !tbaa !38
  store i32 320, ptr %VBR_max_bitrate_kbps474, align 4, !tbaa !22
  store i32 0, ptr %mode481, align 4, !tbaa !39
  store i32 1, ptr %mode_fixed482, align 8, !tbaa !40
  store i32 2, ptr %quality546, align 4, !tbaa !41
  br label %if.end386

if.else348:                                       ; preds = %if.else334
  %call349 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %nextArg.0, ptr noundef nonnull dereferenceable(5) @.str.138) #16
  %cmp350 = icmp eq i32 %call349, 0
  br i1 %cmp350, label %if.then352, label %if.else353

if.then352:                                       ; preds = %if.else348
  tail call void @lame_presets_info(ptr undef, ptr undef)
  unreachable

if.else353:                                       ; preds = %if.else348
  %29 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call354 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.147, ptr noundef %0, ptr noundef %nextArg.0) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

if.else363:                                       ; preds = %if.else238
  %30 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call364 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.148, ptr noundef %0, ptr noundef nonnull %incdec.ptr33) #14
  br label %if.end386

if.end386:                                        ; preds = %if.then52, %if.then62, %if.then73, %if.then83, %if.then94, %if.then106, %if.then118, %if.then160, %if.then191, %if.then221, %if.else363, %if.then258, %if.then292, %if.then324, %if.then338, %if.then308, %if.then276, %if.then246, %if.then206, %if.then176, %if.end153, %if.then112, %if.then100, %if.then88, %if.then78, %if.then68, %if.then57, %if.then37
  %argUsed.3 = phi i32 [ 1, %if.then37 ], [ 0, %if.then52 ], [ 0, %if.then57 ], [ 0, %if.then62 ], [ 0, %if.then68 ], [ 0, %if.then73 ], [ 0, %if.then78 ], [ 0, %if.then83 ], [ 1, %if.then88 ], [ 1, %if.then94 ], [ 1, %if.then100 ], [ 1, %if.then106 ], [ 1, %if.then112 ], [ 1, %if.then118 ], [ 1, %if.end153 ], [ 1, %if.then160 ], [ 1, %if.then176 ], [ 1, %if.then191 ], [ 1, %if.then206 ], [ 1, %if.then221 ], [ 1, %if.then246 ], [ 1, %if.then258 ], [ 1, %if.then276 ], [ 1, %if.then292 ], [ 1, %if.then308 ], [ 1, %if.then324 ], [ 1, %if.then338 ], [ 0, %if.else363 ]
  %add387 = add nsw i32 %argUsed.3, %inc1005
  br label %if.end608

while.body392:                                    ; preds = %if.end28, %if.end584
  %31 = phi i8 [ %45, %if.end584 ], [ %7, %if.end28 ]
  %incdec.ptr390991 = phi ptr [ %incdec.ptr390, %if.end584 ], [ %incdec.ptr33, %if.end28 ]
  %user_quality.1990 = phi i32 [ %user_quality.2938, %if.end584 ], [ %user_quality.01004, %if.end28 ]
  %autoconvert.1989 = phi i32 [ %autoconvert.2936, %if.end584 ], [ %autoconvert.01003, %if.end28 ]
  %i.1988 = phi i32 [ %i.3, %if.end584 ], [ %inc1005, %if.end28 ]
  %err.1987 = phi i32 [ %err.2934, %if.end584 ], [ 0, %if.end28 ]
  %32 = load i8, ptr %incdec.ptr390991, align 1, !tbaa !14
  %tobool393.not = icmp eq i8 %32, 0
  %nextArg.0. = select i1 %tobool393.not, ptr %nextArg.0, ptr %incdec.ptr390991
  %conv397 = sext i8 %31 to i32
  switch i32 %conv397, label %sw.default [
    i32 109, label %sw.bb
    i32 86, label %sw.bb435
    i32 113, label %sw.bb450
    i32 115, label %sw.bb460
    i32 98, label %sw.bb467
    i32 66, label %sw.bb472
    i32 116, label %sw.bb475
    i32 114, label %sw.bb476
    i32 120, label %sw.bb478
    i32 112, label %sw.bb479
    i32 97, label %sw.bb480
    i32 104, label %sw.bb483
    i32 107, label %sw.bb485
    i32 100, label %sw.bb488
    i32 118, label %sw.bb489
    i32 83, label %sw.bb491
    i32 88, label %sw.bb492
    i32 89, label %sw.bb543
    i32 90, label %sw.bb544
    i32 102, label %sw.bb545
    i32 103, label %sw.bb547
    i32 101, label %sw.bb549
    i32 99, label %sw.bb571
    i32 111, label %sw.bb572
    i32 63, label %sw.bb573
  ]

sw.bb:                                            ; preds = %while.body392
  store i32 1, ptr %mode_fixed482, align 8, !tbaa !40
  %33 = load i8, ptr %nextArg.0., align 1, !tbaa !14
  switch i8 %33, label %if.else428 [
    i8 115, label %if.then402
    i8 100, label %if.then408
    i8 106, label %if.then414
    i8 102, label %if.then420
    i8 109, label %if.then426
  ]

if.then402:                                       ; preds = %sw.bb
  store i32 0, ptr %mode481, align 4, !tbaa !39
  br label %if.then577

if.then408:                                       ; preds = %sw.bb
  store i32 2, ptr %mode481, align 4, !tbaa !39
  br label %if.then577

if.then414:                                       ; preds = %sw.bb
  store i32 1, ptr %mode481, align 4, !tbaa !39
  br label %if.then577

if.then420:                                       ; preds = %sw.bb
  store i32 1, ptr %mode481, align 4, !tbaa !39
  store i32 1, ptr %force_ms, align 4, !tbaa !42
  br label %if.then577

if.then426:                                       ; preds = %sw.bb
  store i32 3, ptr %mode481, align 4, !tbaa !39
  br label %if.then577

if.else428:                                       ; preds = %sw.bb
  %34 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call429 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.149, ptr noundef %0, ptr noundef nonnull %nextArg.0.) #14
  br label %if.then577

sw.bb435:                                         ; preds = %while.body392
  store i32 1, ptr %VBR490, align 8, !tbaa !43
  %call436 = tail call i32 @atoi(ptr noundef %nextArg.0.) #16
  %35 = tail call i32 @llvm.smax.i32(i32 %call436, i32 0)
  %36 = tail call i32 @llvm.umin.i32(i32 %35, i32 9)
  store i32 %36, ptr %VBR_q437, align 4
  br label %if.then577

sw.bb450:                                         ; preds = %while.body392
  %call451 = tail call i32 @atoi(ptr noundef %nextArg.0.) #16
  %37 = tail call i32 @llvm.smax.i32(i32 %call451, i32 0)
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 9)
  br label %if.then577

sw.bb460:                                         ; preds = %while.body392
  %call461 = tail call fast double @atof(ptr noundef %nextArg.0.) #16
  %conv462 = fptrunc double %call461 to float
  %conv463 = fpext float %conv462 to double
  %mul464 = fmul fast double %conv463, 1.000000e+03
  %add465 = fadd fast double %mul464, 5.000000e-01
  %conv466 = fptosi double %add465 to i32
  store i32 %conv466, ptr %in_samplerate, align 4, !tbaa !44
  br label %if.then577

sw.bb467:                                         ; preds = %while.body392
  %call468 = tail call i32 @atoi(ptr noundef %nextArg.0.) #16
  store i32 %call468, ptr %brate469, align 8, !tbaa !37
  store i32 %call468, ptr %VBR_min_bitrate_kbps471, align 8, !tbaa !38
  br label %if.then577

sw.bb472:                                         ; preds = %while.body392
  %call473 = tail call i32 @atoi(ptr noundef %nextArg.0.) #16
  store i32 %call473, ptr %VBR_max_bitrate_kbps474, align 4, !tbaa !22
  br label %if.then577

sw.bb475:                                         ; preds = %while.body392
  store i32 0, ptr %bWriteVbrTag, align 8, !tbaa !45
  br label %if.end584

sw.bb476:                                         ; preds = %while.body392
  store i32 4, ptr %input_format477, align 8, !tbaa !20
  br label %if.end584

sw.bb478:                                         ; preds = %while.body392
  store i32 1, ptr %swapbytes, align 4, !tbaa !46
  br label %if.end584

sw.bb479:                                         ; preds = %while.body392
  store i32 1, ptr %error_protection, align 4, !tbaa !47
  br label %if.end584

sw.bb480:                                         ; preds = %while.body392
  store i32 3, ptr %mode481, align 4, !tbaa !39
  store i32 1, ptr %mode_fixed482, align 8, !tbaa !40
  br label %if.end584

sw.bb483:                                         ; preds = %while.body392
  store i32 2, ptr %quality546, align 4, !tbaa !41
  br label %if.end584

sw.bb485:                                         ; preds = %while.body392
  store i32 -1, ptr %lowpassfreq486, align 8, !tbaa !21
  store i32 -1, ptr %highpassfreq487, align 4, !tbaa !34
  br label %if.end584

sw.bb488:                                         ; preds = %while.body392
  store i32 1, ptr %allow_diff_short, align 4, !tbaa !48
  br label %if.end584

sw.bb489:                                         ; preds = %while.body392
  store i32 1, ptr %VBR490, align 8, !tbaa !43
  br label %if.end584

sw.bb491:                                         ; preds = %while.body392
  store i32 1, ptr %silent, align 8, !tbaa !49
  br label %if.end584

sw.bb492:                                         ; preds = %while.body392
  store i32 0, ptr %experimentalX, align 4, !tbaa !50
  %39 = load i8, ptr %nextArg.0., align 1, !tbaa !14
  switch i8 %39, label %if.else534 [
    i8 48, label %if.then577
    i8 49, label %if.then502
    i8 50, label %if.then508
    i8 51, label %if.then514
    i8 52, label %if.then520
    i8 53, label %if.then526
    i8 54, label %if.then532
  ]

if.then502:                                       ; preds = %sw.bb492
  store i32 1, ptr %experimentalX, align 4, !tbaa !50
  br label %if.then577

if.then508:                                       ; preds = %sw.bb492
  store i32 2, ptr %experimentalX, align 4, !tbaa !50
  br label %if.then577

if.then514:                                       ; preds = %sw.bb492
  store i32 3, ptr %experimentalX, align 4, !tbaa !50
  br label %if.then577

if.then520:                                       ; preds = %sw.bb492
  store i32 4, ptr %experimentalX, align 4, !tbaa !50
  br label %if.then577

if.then526:                                       ; preds = %sw.bb492
  store i32 5, ptr %experimentalX, align 4, !tbaa !50
  br label %if.then577

if.then532:                                       ; preds = %sw.bb492
  store i32 6, ptr %experimentalX, align 4, !tbaa !50
  br label %if.then577

if.else534:                                       ; preds = %sw.bb492
  %40 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call535 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.150, ptr noundef %0, ptr noundef nonnull %nextArg.0.) #14
  br label %if.then577

sw.bb543:                                         ; preds = %while.body392
  store i32 1, ptr %experimentalY, align 8, !tbaa !51
  br label %if.end584

sw.bb544:                                         ; preds = %while.body392
  store i32 1, ptr %experimentalZ, align 4, !tbaa !52
  br label %if.end584

sw.bb545:                                         ; preds = %while.body392
  store i32 9, ptr %quality546, align 4, !tbaa !41
  br label %if.end584

sw.bb547:                                         ; preds = %while.body392
  %41 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call548 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.151, ptr noundef %0, ptr noundef %nextArg.0.) #14
  br label %if.end584

sw.bb549:                                         ; preds = %while.body392
  %42 = load i8, ptr %nextArg.0., align 1, !tbaa !14
  switch i8 %42, label %if.else566 [
    i8 110, label %if.then553
    i8 53, label %if.then558
    i8 99, label %if.then564
  ]

if.then553:                                       ; preds = %sw.bb549
  store i32 0, ptr %emphasis565, align 4, !tbaa !53
  br label %if.then577

if.then558:                                       ; preds = %sw.bb549
  store i32 1, ptr %emphasis565, align 4, !tbaa !53
  br label %if.then577

if.then564:                                       ; preds = %sw.bb549
  store i32 3, ptr %emphasis565, align 4, !tbaa !53
  br label %if.then577

if.else566:                                       ; preds = %sw.bb549
  %43 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call567 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.152, ptr noundef %0, ptr noundef nonnull %nextArg.0.) #14
  br label %if.then577

sw.bb571:                                         ; preds = %while.body392
  store i32 1, ptr %copyright, align 4, !tbaa !54
  br label %if.end584

sw.bb572:                                         ; preds = %while.body392
  store i32 0, ptr %original, align 8, !tbaa !55
  br label %if.end584

sw.bb573:                                         ; preds = %while.body392
  tail call void @lame_help(ptr noundef %gfp, ptr noundef %0)
  unreachable

sw.default:                                       ; preds = %while.body392
  %44 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call575 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.153, ptr noundef %0, i32 noundef %conv397) #14
  br label %if.end584

if.then577:                                       ; preds = %sw.bb492, %if.then553, %if.then558, %if.then564, %if.else566, %if.then502, %if.then508, %if.then514, %if.then520, %if.then526, %if.then532, %if.else534, %sw.bb472, %sw.bb467, %sw.bb460, %sw.bb450, %if.then402, %if.then408, %if.then414, %if.then420, %if.then426, %if.else428, %sw.bb435
  %err.2.ph = phi i32 [ %err.1987, %sw.bb435 ], [ 1, %if.else428 ], [ %err.1987, %if.then426 ], [ %err.1987, %if.then420 ], [ %err.1987, %if.then414 ], [ %err.1987, %if.then408 ], [ %err.1987, %if.then402 ], [ %err.1987, %sw.bb450 ], [ %err.1987, %sw.bb460 ], [ %err.1987, %sw.bb467 ], [ %err.1987, %sw.bb472 ], [ 1, %if.else534 ], [ %err.1987, %if.then532 ], [ %err.1987, %if.then526 ], [ %err.1987, %if.then520 ], [ %err.1987, %if.then514 ], [ %err.1987, %if.then508 ], [ %err.1987, %if.then502 ], [ 1, %if.else566 ], [ %err.1987, %if.then564 ], [ %err.1987, %if.then558 ], [ %err.1987, %if.then553 ], [ %err.1987, %sw.bb492 ]
  %user_quality.2.ph = phi i32 [ %user_quality.1990, %sw.bb435 ], [ %user_quality.1990, %if.else428 ], [ %user_quality.1990, %if.then426 ], [ %user_quality.1990, %if.then420 ], [ %user_quality.1990, %if.then414 ], [ %user_quality.1990, %if.then408 ], [ %user_quality.1990, %if.then402 ], [ %38, %sw.bb450 ], [ %user_quality.1990, %sw.bb460 ], [ %user_quality.1990, %sw.bb467 ], [ %user_quality.1990, %sw.bb472 ], [ %user_quality.1990, %if.else534 ], [ %user_quality.1990, %if.then532 ], [ %user_quality.1990, %if.then526 ], [ %user_quality.1990, %if.then520 ], [ %user_quality.1990, %if.then514 ], [ %user_quality.1990, %if.then508 ], [ %user_quality.1990, %if.then502 ], [ %user_quality.1990, %if.else566 ], [ %user_quality.1990, %if.then564 ], [ %user_quality.1990, %if.then558 ], [ %user_quality.1990, %if.then553 ], [ %user_quality.1990, %sw.bb492 ]
  %cmp578 = icmp eq ptr %nextArg.0., %incdec.ptr390991
  %spec.select = select i1 %cmp578, ptr @.str.110, ptr %incdec.ptr390991
  %not.cmp578 = xor i1 %cmp578, true
  %inc582 = zext i1 %not.cmp578 to i32
  %spec.select1009 = add nsw i32 %i.1988, %inc582
  br label %if.end584

if.end584:                                        ; preds = %if.then577, %sw.bb475, %sw.bb476, %sw.bb478, %sw.bb479, %sw.bb480, %sw.bb483, %sw.bb485, %sw.bb488, %sw.bb489, %sw.bb491, %sw.bb543, %sw.bb544, %sw.bb545, %sw.bb547, %sw.bb571, %sw.bb572, %sw.default
  %.str.110 = phi ptr [ %incdec.ptr390991, %sw.default ], [ %incdec.ptr390991, %sw.bb572 ], [ %incdec.ptr390991, %sw.bb571 ], [ %incdec.ptr390991, %sw.bb547 ], [ %incdec.ptr390991, %sw.bb545 ], [ %incdec.ptr390991, %sw.bb544 ], [ %incdec.ptr390991, %sw.bb543 ], [ %incdec.ptr390991, %sw.bb491 ], [ %incdec.ptr390991, %sw.bb489 ], [ %incdec.ptr390991, %sw.bb488 ], [ %incdec.ptr390991, %sw.bb485 ], [ %incdec.ptr390991, %sw.bb483 ], [ %incdec.ptr390991, %sw.bb480 ], [ %incdec.ptr390991, %sw.bb479 ], [ %incdec.ptr390991, %sw.bb478 ], [ %incdec.ptr390991, %sw.bb476 ], [ %incdec.ptr390991, %sw.bb475 ], [ %spec.select, %if.then577 ]
  %user_quality.2938 = phi i32 [ %user_quality.1990, %sw.default ], [ %user_quality.1990, %sw.bb572 ], [ %user_quality.1990, %sw.bb571 ], [ %user_quality.1990, %sw.bb547 ], [ %user_quality.1990, %sw.bb545 ], [ %user_quality.1990, %sw.bb544 ], [ %user_quality.1990, %sw.bb543 ], [ %user_quality.1990, %sw.bb491 ], [ %user_quality.1990, %sw.bb489 ], [ %user_quality.1990, %sw.bb488 ], [ %user_quality.1990, %sw.bb485 ], [ %user_quality.1990, %sw.bb483 ], [ %user_quality.1990, %sw.bb480 ], [ %user_quality.1990, %sw.bb479 ], [ %user_quality.1990, %sw.bb478 ], [ %user_quality.1990, %sw.bb476 ], [ %user_quality.1990, %sw.bb475 ], [ %user_quality.2.ph, %if.then577 ]
  %autoconvert.2936 = phi i32 [ %autoconvert.1989, %sw.default ], [ %autoconvert.1989, %sw.bb572 ], [ %autoconvert.1989, %sw.bb571 ], [ %autoconvert.1989, %sw.bb547 ], [ %autoconvert.1989, %sw.bb545 ], [ %autoconvert.1989, %sw.bb544 ], [ %autoconvert.1989, %sw.bb543 ], [ %autoconvert.1989, %sw.bb491 ], [ %autoconvert.1989, %sw.bb489 ], [ %autoconvert.1989, %sw.bb488 ], [ %autoconvert.1989, %sw.bb485 ], [ %autoconvert.1989, %sw.bb483 ], [ 1, %sw.bb480 ], [ %autoconvert.1989, %sw.bb479 ], [ %autoconvert.1989, %sw.bb478 ], [ %autoconvert.1989, %sw.bb476 ], [ %autoconvert.1989, %sw.bb475 ], [ %autoconvert.1989, %if.then577 ]
  %err.2934 = phi i32 [ 1, %sw.default ], [ %err.1987, %sw.bb572 ], [ %err.1987, %sw.bb571 ], [ %err.1987, %sw.bb547 ], [ %err.1987, %sw.bb545 ], [ %err.1987, %sw.bb544 ], [ %err.1987, %sw.bb543 ], [ %err.1987, %sw.bb491 ], [ %err.1987, %sw.bb489 ], [ %err.1987, %sw.bb488 ], [ %err.1987, %sw.bb485 ], [ %err.1987, %sw.bb483 ], [ %err.1987, %sw.bb480 ], [ %err.1987, %sw.bb479 ], [ %err.1987, %sw.bb478 ], [ %err.1987, %sw.bb476 ], [ %err.1987, %sw.bb475 ], [ %err.2.ph, %if.then577 ]
  %i.3 = phi i32 [ %i.1988, %sw.default ], [ %i.1988, %sw.bb572 ], [ %i.1988, %sw.bb571 ], [ %i.1988, %sw.bb547 ], [ %i.1988, %sw.bb545 ], [ %i.1988, %sw.bb544 ], [ %i.1988, %sw.bb543 ], [ %i.1988, %sw.bb491 ], [ %i.1988, %sw.bb489 ], [ %i.1988, %sw.bb488 ], [ %i.1988, %sw.bb485 ], [ %i.1988, %sw.bb483 ], [ %i.1988, %sw.bb480 ], [ %i.1988, %sw.bb479 ], [ %i.1988, %sw.bb478 ], [ %i.1988, %sw.bb476 ], [ %i.1988, %sw.bb475 ], [ %spec.select1009, %if.then577 ]
  %incdec.ptr390 = getelementptr inbounds i8, ptr %.str.110, i64 1
  %45 = load i8, ptr %.str.110, align 1, !tbaa !14
  %tobool391.not = icmp eq i8 %45, 0
  br i1 %tobool391.not, label %if.end608, label %while.body392, !llvm.loop !56

if.else586:                                       ; preds = %while.body
  %46 = load i8, ptr @inPath, align 16, !tbaa !14
  %cmp588 = icmp eq i8 %46, 0
  br i1 %cmp588, label %if.then590, label %if.else594

if.then590:                                       ; preds = %if.else586
  %call593 = tail call ptr @strncpy(ptr noundef nonnull @inPath, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 300) #13
  br label %if.end608

if.else594:                                       ; preds = %if.else586
  %47 = load i8, ptr @outPath, align 16, !tbaa !14
  %cmp596 = icmp eq i8 %47, 0
  br i1 %cmp596, label %if.then598, label %while.end609.thread

if.then598:                                       ; preds = %if.else594
  %call601 = tail call ptr @strncpy(ptr noundef nonnull @outPath, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 300) #13
  br label %if.end608

while.end609.thread:                              ; preds = %if.else594
  %48 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call605 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef nonnull @.str.154, ptr noundef %0, ptr noundef nonnull %1) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %token) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c) #13
  br label %if.then615

if.end608:                                        ; preds = %if.end584, %if.end28, %if.then590, %if.then598, %if.end386
  %err.3 = phi i32 [ 0, %if.end386 ], [ 0, %if.then590 ], [ 0, %if.then598 ], [ 0, %if.end28 ], [ %err.2934, %if.end584 ]
  %i.4 = phi i32 [ %add387, %if.end386 ], [ %inc1005, %if.then590 ], [ %inc1005, %if.then598 ], [ %inc1005, %if.end28 ], [ %i.3, %if.end584 ]
  %autoconvert.3 = phi i32 [ %autoconvert.01003, %if.end386 ], [ %autoconvert.01003, %if.then590 ], [ %autoconvert.01003, %if.then598 ], [ %autoconvert.01003, %if.end28 ], [ %autoconvert.2936, %if.end584 ]
  %user_quality.3 = phi i32 [ %user_quality.01004, %if.end386 ], [ %user_quality.01004, %if.then590 ], [ %user_quality.01004, %if.then598 ], [ %user_quality.01004, %if.end28 ], [ %user_quality.2938, %if.end584 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %token) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c) #13
  %inc = add nsw i32 %i.4, 1
  %cmp = icmp slt i32 %inc, %argc
  %cmp1 = icmp eq i32 %err.3, 0
  %or.cond676 = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond676, label %while.body, label %while.end609, !llvm.loop !57

while.end609:                                     ; preds = %if.end608, %entry
  %err.0.lcssa = phi i32 [ 0, %entry ], [ %err.3, %if.end608 ]
  %autoconvert.0.lcssa = phi i32 [ 0, %entry ], [ %autoconvert.3, %if.end608 ]
  %user_quality.0.lcssa = phi i32 [ 0, %entry ], [ %user_quality.3, %if.end608 ]
  %tobool610 = icmp ne i32 %err.0.lcssa, 0
  %49 = load i8, ptr @inPath, align 16
  %cmp613 = icmp eq i8 %49, 0
  %or.cond = select i1 %tobool610, i1 true, i1 %cmp613
  br i1 %or.cond, label %if.then615, label %if.end616

if.then615:                                       ; preds = %while.end609.thread, %while.end609
  tail call void @lame_usage(ptr undef, ptr noundef %0)
  unreachable

if.end616:                                        ; preds = %while.end609
  %cmp618 = icmp eq i8 %49, 45
  br i1 %cmp618, label %if.end622, label %if.end622.thread

if.end622:                                        ; preds = %if.end616
  %silent621 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 7
  store i32 1, ptr %silent621, align 8, !tbaa !49
  %50 = load i8, ptr @outPath, align 16, !tbaa !14
  %cmp624 = icmp eq i8 %50, 0
  br i1 %cmp624, label %if.end636.thread, label %if.end636

if.end622.thread:                                 ; preds = %if.end616
  %51 = load i8, ptr @outPath, align 16, !tbaa !14
  %cmp624940 = icmp eq i8 %51, 0
  br i1 %cmp624940, label %if.else632, label %if.end636

if.end636.thread:                                 ; preds = %if.end622
  store i16 45, ptr @outPath, align 16
  br label %if.then640

if.else632:                                       ; preds = %if.end622.thread
  %call633 = tail call ptr @strncpy(ptr noundef nonnull @outPath, ptr noundef nonnull @inPath, i64 noundef 296) #13
  %strlen = tail call i64 @strlen(ptr nonnull @outPath)
  %endptr = getelementptr i8, ptr @outPath, i64 %strlen
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %endptr, ptr noundef nonnull align 1 dereferenceable(5) @.str.156, i64 5, i1 false)
  %.pr941 = load i8, ptr @outPath, align 16, !tbaa !14
  br label %if.end636

if.end636:                                        ; preds = %if.end622.thread, %if.else632, %if.end622
  %52 = phi i8 [ %51, %if.end622.thread ], [ %.pr941, %if.else632 ], [ %50, %if.end622 ]
  %cmp638 = icmp eq i8 %52, 45
  br i1 %cmp638, label %if.then640, label %if.end646

if.then640:                                       ; preds = %if.end636.thread, %if.end636
  %bWriteVbrTag641 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 5
  store i32 0, ptr %bWriteVbrTag641, align 8, !tbaa !45
  %53 = load i32, ptr @id3tag, align 4, !tbaa !17
  %tobool642.not = icmp eq i32 %53, 0
  br i1 %tobool642.not, label %if.end646, label %if.then643

if.then643:                                       ; preds = %if.then640
  store i32 0, ptr @id3tag, align 4, !tbaa !17
  %54 = load ptr, ptr @stderr, align 8, !tbaa !5
  %55 = tail call i64 @fwrite(ptr nonnull @.str.157, i64 54, i64 1, ptr %54) #14
  br label %if.end646

if.end646:                                        ; preds = %if.then640, %if.then643, %if.end636
  %input_format647 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 29
  %56 = load i32, ptr %input_format647, align 8, !tbaa !20
  %cmp648.not = icmp eq i32 %56, 3
  br i1 %cmp648.not, label %if.end658, label %if.then650

if.then650:                                       ; preds = %if.end646
  %call651 = tail call i64 @strlen(ptr noundef nonnull @inPath) #16
  %sub = add i64 %call651, -4
  %arrayidx652 = getelementptr inbounds [300 x i8], ptr @inPath, i64 0, i64 %sub
  %call653 = tail call i32 @strcmp(ptr noundef nonnull %arrayidx652, ptr noundef nonnull dereferenceable(5) @.str.156) #16
  %tobool654.not = icmp eq i32 %call653, 0
  br i1 %tobool654.not, label %if.then655, label %if.end658

if.then655:                                       ; preds = %if.then650
  store i32 3, ptr %input_format647, align 8, !tbaa !20
  br label %if.end658

if.end658:                                        ; preds = %if.then650, %if.then655, %if.end646
  %tobool659.not = icmp eq i32 %autoconvert.0.lcssa, 0
  br i1 %tobool659.not, label %if.else661, label %if.then660

if.then660:                                       ; preds = %if.end658
  %num_channels = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 1
  store i32 2, ptr %num_channels, align 8, !tbaa !58
  br label %if.end670

if.else661:                                       ; preds = %if.end658
  %mode662 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 8
  %57 = load i32, ptr %mode662, align 4, !tbaa !39
  %cmp663 = icmp eq i32 %57, 3
  %num_channels666 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 1
  br i1 %cmp663, label %if.then665, label %if.else667

if.then665:                                       ; preds = %if.else661
  store i32 1, ptr %num_channels666, align 8, !tbaa !58
  br label %if.end670

if.else667:                                       ; preds = %if.else661
  store i32 2, ptr %num_channels666, align 8, !tbaa !58
  br label %if.end670

if.end670:                                        ; preds = %if.then665, %if.else667, %if.then660
  %tobool671.not = icmp eq i32 %user_quality.0.lcssa, 0
  br i1 %tobool671.not, label %if.end674, label %if.then672

if.then672:                                       ; preds = %if.end670
  %quality673 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 6
  store i32 %user_quality.0.lcssa, ptr %quality673, align 4, !tbaa !41
  br label %if.end674

if.end674:                                        ; preds = %if.then672, %if.end670
  ret void
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare void @id3_inittag(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare double @atof(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

attributes #0 = { noinline noreturn nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #2 = { nofree nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #3 = { noreturn nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { noinline nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #5 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind readonly willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #8 = { mustprogress nofree nounwind readonly willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #9 = { mustprogress nofree nounwind willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #10 = { nofree nounwind }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind readonly willreturn }

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
!9 = !{!10, !12, i64 92}
!10 = !{!"", !11, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !7, i64 120, !12, i64 124, !6, i64 128, !6, i64 136, !12, i64 144, !12, i64 148, !13, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !11, i64 168, !11, i64 176, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !12, i64 200, !12, i64 204, !12, i64 208, !12, i64 212, !13, i64 216, !12, i64 220, !12, i64 224, !12, i64 228, !13, i64 232, !13, i64 236, !13, i64 240, !13, i64 244, !12, i64 248, !12, i64 252, !12, i64 256, !12, i64 260, !12, i64 264, !12, i64 268, !12, i64 272, !12, i64 276}
!11 = !{!"long", !7, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!"float", !7, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!10, !6, i64 128}
!16 = !{!10, !6, i64 136}
!17 = !{!18, !12, i64 0}
!18 = !{!"", !12, i64 0, !12, i64 4, !7, i64 8, !7, i64 39, !7, i64 70, !7, i64 101, !7, i64 106, !7, i64 137, !7, i64 265, !7, i64 266}
!19 = !{!10, !12, i64 16}
!20 = !{!10, !7, i64 120}
!21 = !{!10, !12, i64 104}
!22 = !{!10, !12, i64 100}
!23 = !{!10, !12, i64 160}
!24 = !{!10, !12, i64 148}
!25 = !{!10, !12, i64 72}
!26 = !{!10, !12, i64 196}
!27 = !{!10, !12, i64 144}
!28 = !{!12, !12, i64 0}
!29 = !{!18, !7, i64 266}
!30 = distinct !{!30, !31, !32}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!10, !12, i64 112}
!34 = !{!10, !12, i64 108}
!35 = !{!10, !12, i64 116}
!36 = !{!10, !13, i64 152}
!37 = !{!10, !12, i64 48}
!38 = !{!10, !12, i64 96}
!39 = !{!10, !12, i64 36}
!40 = !{!10, !12, i64 40}
!41 = !{!10, !12, i64 28}
!42 = !{!10, !12, i64 44}
!43 = !{!10, !12, i64 88}
!44 = !{!10, !12, i64 12}
!45 = !{!10, !12, i64 24}
!46 = !{!10, !12, i64 124}
!47 = !{!10, !12, i64 60}
!48 = !{!10, !12, i64 156}
!49 = !{!10, !12, i64 32}
!50 = !{!10, !12, i64 76}
!51 = !{!10, !12, i64 80}
!52 = !{!10, !12, i64 84}
!53 = !{!10, !12, i64 164}
!54 = !{!10, !12, i64 52}
!55 = !{!10, !12, i64 56}
!56 = distinct !{!56, !31, !32}
!57 = distinct !{!57, !31, !32}
!58 = !{!10, !12, i64 8}
