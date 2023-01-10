; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/coders/tga.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/coders/tga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._MagickInfo = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i64, ptr, ptr }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._TGAInfo = type { i8, i8, i8, i16, i16, i8, i16, i16, i16, i16, i8, i8 }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"ICB\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Truevision Targa image\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"TGA\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"VDA\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"VST\00", align 1
@.str.5 = private unnamed_addr constant [82 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/coders/tga.c\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"ImproperImageHeader\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"UnableToReadImageData\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@LoadImageTag = external constant [0 x i8], align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"UnexpectedEndOfFile\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"`%s': %s\00", align 1
@.str.15 = private unnamed_addr constant [95 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/colormap-private.h\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"InvalidColormapIndex\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"WidthOrHeightExceedsLimit\00", align 1
@SaveImageTag = external constant [0 x i8], align 1

; Function Attrs: nounwind uwtable
define dso_local i64 @RegisterTGAImage() local_unnamed_addr #0 !dbg !865 {
entry:
  %call = tail call ptr @SetMagickInfo(ptr noundef nonnull @.str) #8, !dbg !908
  call void @llvm.dbg.value(metadata ptr %call, metadata !870, metadata !DIExpression()), !dbg !909
  %decoder = getelementptr inbounds %struct._MagickInfo, ptr %call, i64 0, i32 6, !dbg !910
  store ptr @ReadTGAImage, ptr %decoder, align 8, !dbg !911, !tbaa !912
  %encoder = getelementptr inbounds %struct._MagickInfo, ptr %call, i64 0, i32 7, !dbg !919
  store ptr @WriteTGAImage, ptr %encoder, align 8, !dbg !920, !tbaa !921
  %adjoin = getelementptr inbounds %struct._MagickInfo, ptr %call, i64 0, i32 10, !dbg !922
  store i32 0, ptr %adjoin, align 8, !dbg !923, !tbaa !924
  %call2 = tail call ptr @ConstantString(ptr noundef nonnull @.str.1) #8, !dbg !925
  %description = getelementptr inbounds %struct._MagickInfo, ptr %call, i64 0, i32 1, !dbg !926
  store ptr %call2, ptr %description, align 8, !dbg !927, !tbaa !928
  %call3 = tail call ptr @ConstantString(ptr noundef nonnull @.str.2) #8, !dbg !929
  %module = getelementptr inbounds %struct._MagickInfo, ptr %call, i64 0, i32 4, !dbg !930
  store ptr %call3, ptr %module, align 8, !dbg !931, !tbaa !932
  %call4 = tail call ptr @RegisterMagickInfo(ptr noundef %call) #8, !dbg !933
  %call5 = tail call ptr @SetMagickInfo(ptr noundef nonnull @.str.2) #8, !dbg !934
  call void @llvm.dbg.value(metadata ptr %call5, metadata !870, metadata !DIExpression()), !dbg !909
  %decoder6 = getelementptr inbounds %struct._MagickInfo, ptr %call5, i64 0, i32 6, !dbg !935
  store ptr @ReadTGAImage, ptr %decoder6, align 8, !dbg !936, !tbaa !912
  %encoder7 = getelementptr inbounds %struct._MagickInfo, ptr %call5, i64 0, i32 7, !dbg !937
  store ptr @WriteTGAImage, ptr %encoder7, align 8, !dbg !938, !tbaa !921
  %adjoin8 = getelementptr inbounds %struct._MagickInfo, ptr %call5, i64 0, i32 10, !dbg !939
  store i32 0, ptr %adjoin8, align 8, !dbg !940, !tbaa !924
  %call9 = tail call ptr @ConstantString(ptr noundef nonnull @.str.1) #8, !dbg !941
  %description10 = getelementptr inbounds %struct._MagickInfo, ptr %call5, i64 0, i32 1, !dbg !942
  store ptr %call9, ptr %description10, align 8, !dbg !943, !tbaa !928
  %call11 = tail call ptr @ConstantString(ptr noundef nonnull @.str.2) #8, !dbg !944
  %module12 = getelementptr inbounds %struct._MagickInfo, ptr %call5, i64 0, i32 4, !dbg !945
  store ptr %call11, ptr %module12, align 8, !dbg !946, !tbaa !932
  %call13 = tail call ptr @RegisterMagickInfo(ptr noundef %call5) #8, !dbg !947
  %call14 = tail call ptr @SetMagickInfo(ptr noundef nonnull @.str.3) #8, !dbg !948
  call void @llvm.dbg.value(metadata ptr %call14, metadata !870, metadata !DIExpression()), !dbg !909
  %decoder15 = getelementptr inbounds %struct._MagickInfo, ptr %call14, i64 0, i32 6, !dbg !949
  store ptr @ReadTGAImage, ptr %decoder15, align 8, !dbg !950, !tbaa !912
  %encoder16 = getelementptr inbounds %struct._MagickInfo, ptr %call14, i64 0, i32 7, !dbg !951
  store ptr @WriteTGAImage, ptr %encoder16, align 8, !dbg !952, !tbaa !921
  %adjoin17 = getelementptr inbounds %struct._MagickInfo, ptr %call14, i64 0, i32 10, !dbg !953
  store i32 0, ptr %adjoin17, align 8, !dbg !954, !tbaa !924
  %call18 = tail call ptr @ConstantString(ptr noundef nonnull @.str.1) #8, !dbg !955
  %description19 = getelementptr inbounds %struct._MagickInfo, ptr %call14, i64 0, i32 1, !dbg !956
  store ptr %call18, ptr %description19, align 8, !dbg !957, !tbaa !928
  %call20 = tail call ptr @ConstantString(ptr noundef nonnull @.str.2) #8, !dbg !958
  %module21 = getelementptr inbounds %struct._MagickInfo, ptr %call14, i64 0, i32 4, !dbg !959
  store ptr %call20, ptr %module21, align 8, !dbg !960, !tbaa !932
  %call22 = tail call ptr @RegisterMagickInfo(ptr noundef %call14) #8, !dbg !961
  %call23 = tail call ptr @SetMagickInfo(ptr noundef nonnull @.str.4) #8, !dbg !962
  call void @llvm.dbg.value(metadata ptr %call23, metadata !870, metadata !DIExpression()), !dbg !909
  %decoder24 = getelementptr inbounds %struct._MagickInfo, ptr %call23, i64 0, i32 6, !dbg !963
  store ptr @ReadTGAImage, ptr %decoder24, align 8, !dbg !964, !tbaa !912
  %encoder25 = getelementptr inbounds %struct._MagickInfo, ptr %call23, i64 0, i32 7, !dbg !965
  store ptr @WriteTGAImage, ptr %encoder25, align 8, !dbg !966, !tbaa !921
  %adjoin26 = getelementptr inbounds %struct._MagickInfo, ptr %call23, i64 0, i32 10, !dbg !967
  store i32 0, ptr %adjoin26, align 8, !dbg !968, !tbaa !924
  %call27 = tail call ptr @ConstantString(ptr noundef nonnull @.str.1) #8, !dbg !969
  %description28 = getelementptr inbounds %struct._MagickInfo, ptr %call23, i64 0, i32 1, !dbg !970
  store ptr %call27, ptr %description28, align 8, !dbg !971, !tbaa !928
  %call29 = tail call ptr @ConstantString(ptr noundef nonnull @.str.2) #8, !dbg !972
  %module30 = getelementptr inbounds %struct._MagickInfo, ptr %call23, i64 0, i32 4, !dbg !973
  store ptr %call29, ptr %module30, align 8, !dbg !974, !tbaa !932
  %call31 = tail call ptr @RegisterMagickInfo(ptr noundef %call23) #8, !dbg !975
  ret i64 428304, !dbg !976
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare !dbg !977 ptr @SetMagickInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @ReadTGAImage(ptr noundef %image_info, ptr noundef %exception) #0 !dbg !981 {
entry:
  %pixel = alloca %struct._PixelPacket, align 8
  %tga_info = alloca %struct._TGAInfo, align 2
  %pixels = alloca [4 x i8], align 1
  %runlength = alloca i8, align 1
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !983, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata ptr %exception, metadata !984, metadata !DIExpression()), !dbg !1055
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pixel) #8, !dbg !1056
  call void @llvm.dbg.declare(metadata ptr %pixel, metadata !988, metadata !DIExpression()), !dbg !1057
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tga_info) #8, !dbg !1058
  call void @llvm.dbg.declare(metadata ptr %tga_info, metadata !1000, metadata !DIExpression()), !dbg !1059
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pixels) #8, !dbg !1060
  call void @llvm.dbg.declare(metadata ptr %pixels, metadata !1018, metadata !DIExpression()), !dbg !1061
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %runlength) #8, !dbg !1060
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !1062
  %0 = load i32, ptr %debug, align 8, !dbg !1062, !tbaa !1064
  %cmp.not = icmp eq i32 %0, 0, !dbg !1069
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1070

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1071
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 185, ptr noundef nonnull @.str.7, ptr noundef nonnull %filename) #8, !dbg !1072
  br label %if.end, !dbg !1073

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @AcquireImage(ptr noundef nonnull %image_info) #8, !dbg !1074
  call void @llvm.dbg.value(metadata ptr %call1, metadata !985, metadata !DIExpression()), !dbg !1055
  %call2 = tail call i32 @OpenBlob(ptr noundef nonnull %image_info, ptr noundef %call1, i32 noundef 2, ptr noundef %exception) #8, !dbg !1075
  call void @llvm.dbg.value(metadata i32 %call2, metadata !987, metadata !DIExpression()), !dbg !1055
  %cmp3 = icmp eq i32 %call2, 0, !dbg !1076
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !1078

if.then4:                                         ; preds = %if.end
  %call5 = tail call ptr @DestroyImageList(ptr noundef %call1) #8, !dbg !1079
  call void @llvm.dbg.value(metadata ptr %call5, metadata !985, metadata !DIExpression()), !dbg !1055
  br label %cleanup745, !dbg !1081

if.end6:                                          ; preds = %if.end
  %call7 = call i64 @ReadBlob(ptr noundef %call1, i64 noundef 1, ptr noundef nonnull %tga_info) #8, !dbg !1082
  call void @llvm.dbg.value(metadata i64 %call7, metadata !998, metadata !DIExpression()), !dbg !1055
  %call8 = call i32 @ReadBlobByte(ptr noundef %call1) #8, !dbg !1083
  %conv = trunc i32 %call8 to i8, !dbg !1084
  %colormap_type = getelementptr inbounds %struct._TGAInfo, ptr %tga_info, i64 0, i32 1, !dbg !1085
  store i8 %conv, ptr %colormap_type, align 1, !dbg !1086, !tbaa !1087
  %call9 = call i32 @ReadBlobByte(ptr noundef %call1) #8, !dbg !1089
  %conv10 = trunc i32 %call9 to i8, !dbg !1090
  %image_type = getelementptr inbounds %struct._TGAInfo, ptr %tga_info, i64 0, i32 2, !dbg !1091
  store i8 %conv10, ptr %image_type, align 2, !dbg !1092, !tbaa !1093
  %cmp11.not = icmp eq i64 %call7, 1, !dbg !1094
  br i1 %cmp11.not, label %lor.lhs.false, label %if.then56, !dbg !1096

lor.lhs.false:                                    ; preds = %if.end6
  switch i8 %conv10, label %if.then56 [
    i8 11, label %lor.lhs.false41
    i8 10, label %lor.lhs.false41
    i8 9, label %lor.lhs.false41
    i8 3, label %lor.lhs.false41
    i8 2, label %lor.lhs.false41
    i8 1, label %lor.lhs.false41
  ], !dbg !1097

lor.lhs.false41:                                  ; preds = %lor.lhs.false, %lor.lhs.false, %lor.lhs.false, %lor.lhs.false, %lor.lhs.false, %lor.lhs.false
  %1 = and i32 %call9, 247, !dbg !1098
  %2 = icmp eq i32 %1, 1, !dbg !1098
  %3 = load i8, ptr %colormap_type, align 1
  %cmp54 = icmp eq i8 %3, 0
  %or.cond774 = select i1 %2, i1 %cmp54, i1 false, !dbg !1098
  br i1 %or.cond774, label %if.then56, label %if.end66, !dbg !1098

if.then56:                                        ; preds = %lor.lhs.false, %lor.lhs.false41, %if.end6
  %filename57 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1099
  %call59 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 212, i32 noundef 425, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull %filename57) #8, !dbg !1099
  %cmp60.not = icmp eq ptr %call1, null, !dbg !1101
  br i1 %cmp60.not, label %cleanup745, label %if.then62, !dbg !1099

if.then62:                                        ; preds = %if.then56
  %call63 = call i32 @CloseBlob(ptr noundef nonnull %call1) #8, !dbg !1103
  %call64 = call ptr @DestroyImageList(ptr noundef nonnull %call1) #8, !dbg !1103
  call void @llvm.dbg.value(metadata ptr %call64, metadata !985, metadata !DIExpression()), !dbg !1055
  br label %cleanup745, !dbg !1103

if.end66:                                         ; preds = %lor.lhs.false41
  %call67 = call zeroext i16 @ReadBlobLSBShort(ptr noundef %call1) #8, !dbg !1105
  %colormap_index = getelementptr inbounds %struct._TGAInfo, ptr %tga_info, i64 0, i32 3, !dbg !1106
  store i16 %call67, ptr %colormap_index, align 2, !dbg !1107, !tbaa !1108
  %call68 = call zeroext i16 @ReadBlobLSBShort(ptr noundef %call1) #8, !dbg !1109
  %colormap_length = getelementptr inbounds %struct._TGAInfo, ptr %tga_info, i64 0, i32 4, !dbg !1110
  store i16 %call68, ptr %colormap_length, align 2, !dbg !1111, !tbaa !1112
  %call69 = call i32 @ReadBlobByte(ptr noundef %call1) #8, !dbg !1113
  %conv70 = trunc i32 %call69 to i8, !dbg !1114
  %colormap_size = getelementptr inbounds %struct._TGAInfo, ptr %tga_info, i64 0, i32 5, !dbg !1115
  store i8 %conv70, ptr %colormap_size, align 2, !dbg !1116, !tbaa !1117
  %call71 = call zeroext i16 @ReadBlobLSBShort(ptr noundef %call1) #8, !dbg !1118
  %x_origin = getelementptr inbounds %struct._TGAInfo, ptr %tga_info, i64 0, i32 6, !dbg !1119
  store i16 %call71, ptr %x_origin, align 2, !dbg !1120, !tbaa !1121
  %call72 = call zeroext i16 @ReadBlobLSBShort(ptr noundef %call1) #8, !dbg !1122
  %y_origin = getelementptr inbounds %struct._TGAInfo, ptr %tga_info, i64 0, i32 7, !dbg !1123
  store i16 %call72, ptr %y_origin, align 2, !dbg !1124, !tbaa !1125
  %call73 = call zeroext i16 @ReadBlobLSBShort(ptr noundef %call1) #8, !dbg !1126
  %width = getelementptr inbounds %struct._TGAInfo, ptr %tga_info, i64 0, i32 8, !dbg !1127
  store i16 %call73, ptr %width, align 2, !dbg !1128, !tbaa !1129
  %call74 = call zeroext i16 @ReadBlobLSBShort(ptr noundef %call1) #8, !dbg !1130
  %height = getelementptr inbounds %struct._TGAInfo, ptr %tga_info, i64 0, i32 9, !dbg !1131
  store i16 %call74, ptr %height, align 2, !dbg !1132, !tbaa !1133
  %call75 = call i32 @ReadBlobByte(ptr noundef %call1) #8, !dbg !1134
  %conv76 = trunc i32 %call75 to i8, !dbg !1135
  %bits_per_pixel = getelementptr inbounds %struct._TGAInfo, ptr %tga_info, i64 0, i32 10, !dbg !1136
  store i8 %conv76, ptr %bits_per_pixel, align 2, !dbg !1137, !tbaa !1138
  %call77 = call i32 @ReadBlobByte(ptr noundef %call1) #8, !dbg !1139
  %conv78 = trunc i32 %call77 to i8, !dbg !1140
  %attributes = getelementptr inbounds %struct._TGAInfo, ptr %tga_info, i64 0, i32 11, !dbg !1141
  store i8 %conv78, ptr %attributes, align 1, !dbg !1142, !tbaa !1143
  %call79 = call i32 @EOFBlob(ptr noundef %call1) #8, !dbg !1144
  %cmp80.not = icmp eq i32 %call79, 0, !dbg !1146
  br i1 %cmp80.not, label %if.end92, label %if.then82, !dbg !1147

if.then82:                                        ; preds = %if.end66
  %filename83 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1148
  %call85 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 223, i32 noundef 425, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, ptr noundef nonnull %filename83) #8, !dbg !1148
  %cmp86.not = icmp eq ptr %call1, null, !dbg !1150
  br i1 %cmp86.not, label %cleanup745, label %if.then88, !dbg !1148

if.then88:                                        ; preds = %if.then82
  %call89 = call i32 @CloseBlob(ptr noundef nonnull %call1) #8, !dbg !1152
  %call90 = call ptr @DestroyImageList(ptr noundef nonnull %call1) #8, !dbg !1152
  call void @llvm.dbg.value(metadata ptr %call90, metadata !985, metadata !DIExpression()), !dbg !1055
  br label %cleanup745, !dbg !1152

if.end92:                                         ; preds = %if.end66
  %4 = load i8, ptr %bits_per_pixel, align 2, !dbg !1154, !tbaa !1138
  %.fr1060 = freeze i8 %4
  %5 = add i8 %.fr1060, -17, !dbg !1156
  %6 = icmp ult i8 %5, -15, !dbg !1156
  br i1 %6, label %switch.early.test, label %if.end122, !dbg !1156

switch.early.test:                                ; preds = %if.end92
  switch i8 %.fr1060, label %if.then112 [
    i8 32, label %if.end122
    i8 24, label %if.end122
  ], !dbg !1156

if.then112:                                       ; preds = %switch.early.test
  %filename113 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1157
  %call115 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 226, i32 noundef 425, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull %filename113) #8, !dbg !1157
  %cmp116.not = icmp eq ptr %call1, null, !dbg !1159
  br i1 %cmp116.not, label %cleanup745, label %if.then118, !dbg !1157

if.then118:                                       ; preds = %if.then112
  %call119 = call i32 @CloseBlob(ptr noundef nonnull %call1) #8, !dbg !1161
  %call120 = call ptr @DestroyImageList(ptr noundef nonnull %call1) #8, !dbg !1161
  call void @llvm.dbg.value(metadata ptr %call120, metadata !985, metadata !DIExpression()), !dbg !1055
  br label %cleanup745, !dbg !1161

if.end122:                                        ; preds = %switch.early.test, %switch.early.test, %if.end92
  %7 = load i16, ptr %width, align 2, !dbg !1163, !tbaa !1129
  %conv124 = zext i16 %7 to i64, !dbg !1164
  %columns = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 7, !dbg !1165
  store i64 %conv124, ptr %columns, align 8, !dbg !1166, !tbaa !1167
  %8 = load i16, ptr %height, align 2, !dbg !1178, !tbaa !1133
  %conv126 = zext i16 %8 to i64, !dbg !1179
  %rows = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 8, !dbg !1180
  store i64 %conv126, ptr %rows, align 8, !dbg !1181, !tbaa !1182
  %9 = load i8, ptr %attributes, align 1, !dbg !1183, !tbaa !1143
  %10 = and i8 %9, 15, !dbg !1184
  call void @llvm.dbg.value(metadata i8 %10, metadata !1023, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1055
  %cmp129 = icmp ne i8 %10, 0, !dbg !1185
  %cmp134 = icmp eq i8 %.fr1060, 32
  %or.cond778 = or i1 %cmp134, %cmp129, !dbg !1186
  br i1 %or.cond778, label %lor.end, label %lor.rhs, !dbg !1186

lor.rhs:                                          ; preds = %if.end122
  %11 = load i8, ptr %colormap_size, align 2, !dbg !1187, !tbaa !1117
  %cmp138 = icmp eq i8 %11, 32, !dbg !1188
  br label %lor.end, !dbg !1189

lor.end:                                          ; preds = %lor.rhs, %if.end122
  %12 = phi i1 [ true, %if.end122 ], [ %cmp138, %lor.rhs ]
  %cond = zext i1 %12 to i32, !dbg !1190
  %matte = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 6, !dbg !1191
  store i32 %cond, ptr %matte, align 8, !dbg !1192, !tbaa !1193
  %13 = load i8, ptr %image_type, align 2, !dbg !1194, !tbaa !1093
  %14 = and i8 %13, -9, !dbg !1196
  %.not = icmp eq i8 %14, 1, !dbg !1196
  br i1 %.not, label %if.else, label %if.then149, !dbg !1196

if.then149:                                       ; preds = %lor.end
  %cmp152 = icmp ult i8 %.fr1060, 9, !dbg !1197
  br i1 %cmp152, label %if.end208, label %cond.false, !dbg !1198

cond.false:                                       ; preds = %if.then149
  %cmp156 = icmp ult i8 %.fr1060, 17, !dbg !1199
  %spec.select967 = select i1 %cmp156, i64 5, i64 8, !dbg !1200
  br label %if.end208, !dbg !1200

if.else:                                          ; preds = %lor.end
  %15 = load i8, ptr %colormap_size, align 2, !dbg !1201, !tbaa !1117
  %cmp179 = icmp ult i8 %15, 9, !dbg !1202
  br i1 %cmp179, label %if.end208, label %cond.false182, !dbg !1203

cond.false182:                                    ; preds = %if.else
  %cmp185 = icmp ult i8 %15, 17, !dbg !1204
  %spec.select968 = select i1 %cmp185, i64 5, i64 8, !dbg !1205
  br label %if.end208, !dbg !1205

if.end208:                                        ; preds = %if.else, %cond.false182, %if.then149, %cond.false
  %cond205.sink = phi i64 [ 8, %if.then149 ], [ %spec.select967, %cond.false ], [ 8, %if.else ], [ %spec.select968, %cond.false182 ]
  %depth207 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 9, !dbg !1206
  store i64 %cond205.sink, ptr %depth207, align 8, !dbg !1206, !tbaa !1207
  %16 = add i8 %13, -1, !dbg !1208
  %17 = call i8 @llvm.fshl.i8(i8 %16, i8 %16, i8 7), !dbg !1208
  switch i8 %17, label %if.end229 [
    i8 5, label %if.end229.thread
    i8 4, label %if.end229.thread
    i8 1, label %if.end229.thread
    i8 0, label %if.end229.thread
  ], !dbg !1208

if.end229.thread:                                 ; preds = %if.end208, %if.end208, %if.end208, %if.end208
  store i32 2, ptr %call1, align 8, !dbg !1210, !tbaa !1211
  %compression1046 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 2, !dbg !1212
  %18 = and i8 %13, -3, !dbg !1213
  %19 = icmp eq i8 %18, 9, !dbg !1213
  %spec.store.select1047 = select i1 %19, i32 12, i32 1, !dbg !1213
  store i32 %spec.store.select1047, ptr %compression1046, align 8, !dbg !1215
  br label %if.then245, !dbg !1216

if.end229:                                        ; preds = %if.end208
  %.pr = load i32, ptr %call1, align 8, !dbg !1217, !tbaa !1211
  %compression = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 2, !dbg !1212
  %20 = and i8 %13, -3, !dbg !1213
  %21 = icmp eq i8 %20, 9, !dbg !1213
  %spec.store.select = select i1 %21, i32 12, i32 1, !dbg !1213
  store i32 %spec.store.select, ptr %compression, align 8, !dbg !1215
  %cmp243 = icmp eq i32 %.pr, 2, !dbg !1218
  br i1 %cmp243, label %if.then245, label %if.end273, !dbg !1216

if.then245:                                       ; preds = %if.end229.thread, %if.end229
  %22 = load i8, ptr %colormap_type, align 1, !dbg !1219, !tbaa !1087
  %cmp248.not = icmp eq i8 %22, 0, !dbg !1220
  br i1 %cmp248.not, label %if.else253, label %if.then250, !dbg !1221

if.then250:                                       ; preds = %if.then245
  %23 = load i16, ptr %colormap_length, align 2, !dbg !1222, !tbaa !1112
  %conv252 = zext i16 %23 to i64, !dbg !1223
  %colors = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 10, !dbg !1224
  store i64 %conv252, ptr %colors, align 8, !dbg !1225, !tbaa !1226
  br label %if.end273, !dbg !1227

if.else253:                                       ; preds = %if.then245
  call void @llvm.dbg.value(metadata i64 1, metadata !1024, metadata !DIExpression()), !dbg !1228
  %24 = load i8, ptr %bits_per_pixel, align 2, !dbg !1229, !tbaa !1138
  %sh_prom = zext i8 %24 to i64, !dbg !1230
  %shl = shl nuw i64 1, %sh_prom, !dbg !1230
  %colors256 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 10, !dbg !1231
  store i64 %shl, ptr %colors256, align 8, !dbg !1232, !tbaa !1226
  %call258 = call i32 @AcquireImageColormap(ptr noundef nonnull %call1, i64 noundef %shl) #8, !dbg !1233
  %cmp259 = icmp eq i32 %call258, 0, !dbg !1235
  br i1 %cmp259, label %cleanup.thread, label %if.end273, !dbg !1236

cleanup.thread:                                   ; preds = %if.else253
  %filename262 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1237
  %call264 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 267, i32 noundef 400, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, ptr noundef nonnull %filename262) #8, !dbg !1237
  %call268 = call i32 @CloseBlob(ptr noundef nonnull %call1) #8, !dbg !1239
  %call269 = call ptr @DestroyImageList(ptr noundef nonnull %call1) #8, !dbg !1239
  call void @llvm.dbg.value(metadata ptr undef, metadata !985, metadata !DIExpression()), !dbg !1055
  br label %cleanup745

if.end273:                                        ; preds = %if.else253, %if.then250, %if.end229
  call void @llvm.dbg.value(metadata ptr %call1, metadata !985, metadata !DIExpression()), !dbg !1055
  %25 = load i8, ptr %tga_info, align 2, !dbg !1242, !tbaa !1243
  %cmp276.not = icmp eq i8 %25, 0, !dbg !1244
  br i1 %cmp276.not, label %if.end309, label %if.then283, !dbg !1245

if.then283:                                       ; preds = %if.end273
  call void @llvm.dbg.value(metadata i8 %25, metadata !1032, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1246
  call void @llvm.dbg.value(metadata ptr null, metadata !1029, metadata !DIExpression()), !dbg !1246
  %conv280 = zext i8 %25 to i64, !dbg !1247
  call void @llvm.dbg.value(metadata i64 %conv280, metadata !1032, metadata !DIExpression()), !dbg !1246
  %add = or i64 %conv280, 4096, !dbg !1248
  %call284 = call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 1) #9, !dbg !1250
  call void @llvm.dbg.value(metadata ptr %call284, metadata !1029, metadata !DIExpression()), !dbg !1246
  %cmp286 = icmp eq ptr %call284, null, !dbg !1251
  br i1 %cmp286, label %cleanup305.thread, label %cleanup305, !dbg !1253

cleanup305.thread:                                ; preds = %if.then283
  %filename289 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1254
  %call291 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 287, i32 noundef 400, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, ptr noundef nonnull %filename289) #8, !dbg !1254
  %call295 = call i32 @CloseBlob(ptr noundef nonnull %call1) #8, !dbg !1256
  %call296 = call ptr @DestroyImageList(ptr noundef nonnull %call1) #8, !dbg !1256
  call void @llvm.dbg.value(metadata ptr %call1, metadata !985, metadata !DIExpression()), !dbg !1055
  br label %cleanup745

cleanup305:                                       ; preds = %if.then283
  %26 = load i8, ptr %tga_info, align 2, !dbg !1259, !tbaa !1243
  %conv300 = zext i8 %26 to i64, !dbg !1260
  %call301 = call i64 @ReadBlob(ptr noundef nonnull %call1, i64 noundef %conv300, ptr noundef nonnull %call284) #8, !dbg !1261
  call void @llvm.dbg.value(metadata i64 %call301, metadata !998, metadata !DIExpression()), !dbg !1055
  %27 = load i8, ptr %tga_info, align 2, !dbg !1262, !tbaa !1243
  %idxprom = zext i8 %27 to i64, !dbg !1263
  %arrayidx = getelementptr inbounds i8, ptr %call284, i64 %idxprom, !dbg !1263
  store i8 0, ptr %arrayidx, align 1, !dbg !1264, !tbaa !1265
  %call303 = call i32 @SetImageProperty(ptr noundef nonnull %call1, ptr noundef nonnull @.str.12, ptr noundef nonnull %call284) #8, !dbg !1266
  %call304 = call ptr @DestroyString(ptr noundef nonnull %call284) #8, !dbg !1267
  call void @llvm.dbg.value(metadata ptr %call304, metadata !1029, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata ptr %call1, metadata !985, metadata !DIExpression()), !dbg !1055
  br label %if.end309

if.end309:                                        ; preds = %cleanup305, %if.end273
  call void @llvm.dbg.value(metadata ptr %call1, metadata !985, metadata !DIExpression()), !dbg !1055
  %call310 = call ptr @ResetMagickMemory(ptr noundef nonnull %pixel, i32 noundef 0, i64 noundef 8) #8, !dbg !1268
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %pixel, i64 0, i32 3, !dbg !1269
  store i16 0, ptr %opacity, align 2, !dbg !1270, !tbaa !1271
  %28 = load i8, ptr %colormap_type, align 1, !dbg !1272, !tbaa !1087
  %cmp313.not = icmp eq i8 %28, 0, !dbg !1273
  br i1 %cmp313.not, label %if.end405, label %if.then315, !dbg !1274

if.then315:                                       ; preds = %if.end309
  %colors316 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 10, !dbg !1275
  %29 = load i64, ptr %colors316, align 8, !dbg !1275, !tbaa !1226
  %call317 = call i32 @AcquireImageColormap(ptr noundef nonnull %call1, i64 noundef %29) #8, !dbg !1277
  %cmp318 = icmp eq i32 %call317, 0, !dbg !1278
  br i1 %cmp318, label %if.then326, label %for.cond.preheader, !dbg !1279

for.cond.preheader:                               ; preds = %if.then315
  call void @llvm.dbg.value(metadata i64 0, metadata !991, metadata !DIExpression()), !dbg !1055
  %30 = load i64, ptr %colors316, align 8, !dbg !1280, !tbaa !1226
  %cmp3321073 = icmp sgt i64 %30, 0, !dbg !1281
  br i1 %cmp3321073, label %for.body.lr.ph, label %if.end405, !dbg !1282

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %green380 = getelementptr inbounds %struct._PixelPacket, ptr %pixel, i64 0, i32 1
  %red384 = getelementptr inbounds %struct._PixelPacket, ptr %pixel, i64 0, i32 2
  %colormap = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 11
  br label %for.body, !dbg !1282

if.then326:                                       ; preds = %if.then315
  %filename321 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1283
  %call323 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 301, i32 noundef 400, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, ptr noundef nonnull %filename321) #8, !dbg !1283
  %call327 = call i32 @CloseBlob(ptr noundef nonnull %call1) #8, !dbg !1285
  %call328 = call ptr @DestroyImageList(ptr noundef nonnull %call1) #8, !dbg !1285
  call void @llvm.dbg.value(metadata ptr %call328, metadata !985, metadata !DIExpression()), !dbg !1055
  br label %cleanup745, !dbg !1285

for.body:                                         ; preds = %for.body.lr.ph, %sw.epilog
  %i.01074 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %sw.epilog ]
  call void @llvm.dbg.value(metadata i64 %i.01074, metadata !991, metadata !DIExpression()), !dbg !1055
  %31 = load i8, ptr %colormap_size, align 2, !dbg !1288, !tbaa !1117
  switch i8 %31, label %sw.default [
    i8 32, label %sw.bb385
    i8 15, label %sw.bb341
    i8 16, label %sw.bb341
    i8 24, label %sw.bb372
  ], !dbg !1289

sw.default:                                       ; preds = %for.body
  %call336 = call i32 @ReadBlobByte(ptr noundef %call1) #8, !dbg !1290
  %conv337 = trunc i32 %call336 to i16, !dbg !1292
  %conv.i = and i16 %conv337, 255, !dbg !1293
  call void @llvm.dbg.value(metadata i16 %conv337, metadata !1299, metadata !DIExpression()), !dbg !1301
  %mul.i = mul nuw i16 %conv.i, 257, !dbg !1302
  store i16 %mul.i, ptr %red384, align 4, !dbg !1303, !tbaa !1304
  store i16 %mul.i, ptr %green380, align 2, !dbg !1305, !tbaa !1306
  store i16 %mul.i, ptr %pixel, align 8, !dbg !1307, !tbaa !1308
  br label %sw.epilog, !dbg !1309

sw.bb341:                                         ; preds = %for.body, %for.body
  %call342 = call i32 @ReadBlobByte(ptr noundef %call1) #8, !dbg !1310
  call void @llvm.dbg.value(metadata i32 %call342, metadata !1016, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1055
  %call344 = call i32 @ReadBlobByte(ptr noundef %call1) #8, !dbg !1311
  call void @llvm.dbg.value(metadata i32 %call344, metadata !1017, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1055
  call void @llvm.dbg.value(metadata i64 31, metadata !1033, metadata !DIExpression()), !dbg !1312
  %and348 = lshr i32 %call344, 2, !dbg !1313
  %32 = and i32 %and348, 31, !dbg !1313
  call void @llvm.dbg.value(metadata i32 %32, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1321
  call void @llvm.dbg.value(metadata i64 31, metadata !1320, metadata !DIExpression()), !dbg !1321
  %conv.i969 = uitofp i32 %32 to float, !dbg !1323
  %mul.i970 = fmul float %conv.i969, 6.553500e+04, !dbg !1324
  %div.i = fdiv float %mul.i970, 3.100000e+01, !dbg !1325
  %conv2.i = fpext float %div.i to double, !dbg !1326
  %add.i = fadd double %conv2.i, 5.000000e-01, !dbg !1327
  %conv3.i = fptoui double %add.i to i16, !dbg !1328
  store i16 %conv3.i, ptr %red384, align 4, !dbg !1329, !tbaa !1304
  %and353 = shl i32 %call344, 3, !dbg !1330
  %33 = and i32 %and353, 24, !dbg !1330
  %and358 = lshr i32 %call342, 5, !dbg !1331
  %34 = and i32 %and358, 7, !dbg !1331
  %add362965 = or i32 %33, %34, !dbg !1332
  call void @llvm.dbg.value(metadata i32 %add362965, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1333
  call void @llvm.dbg.value(metadata i64 31, metadata !1320, metadata !DIExpression()), !dbg !1333
  %conv.i971 = uitofp i32 %add362965 to float, !dbg !1335
  %mul.i972 = fmul float %conv.i971, 6.553500e+04, !dbg !1336
  %div.i973 = fdiv float %mul.i972, 3.100000e+01, !dbg !1337
  %conv2.i974 = fpext float %div.i973 to double, !dbg !1338
  %add.i975 = fadd double %conv2.i974, 5.000000e-01, !dbg !1339
  %conv3.i976 = fptoui double %add.i975 to i16, !dbg !1340
  store i16 %conv3.i976, ptr %green380, align 2, !dbg !1341, !tbaa !1306
  %and366 = and i32 %call342, 31, !dbg !1342
  call void @llvm.dbg.value(metadata i32 %and366, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1343
  call void @llvm.dbg.value(metadata i64 31, metadata !1320, metadata !DIExpression()), !dbg !1343
  %conv.i977 = uitofp i32 %and366 to float, !dbg !1345
  %mul.i978 = fmul float %conv.i977, 6.553500e+04, !dbg !1346
  %div.i979 = fdiv float %mul.i978, 3.100000e+01, !dbg !1347
  %conv2.i980 = fpext float %div.i979 to double, !dbg !1348
  %add.i981 = fadd double %conv2.i980, 5.000000e-01, !dbg !1349
  %conv3.i982 = fptoui double %add.i981 to i16, !dbg !1350
  store i16 %conv3.i982, ptr %pixel, align 8, !dbg !1351, !tbaa !1308
  br label %sw.epilog

sw.bb372:                                         ; preds = %for.body
  %call373 = call i32 @ReadBlobByte(ptr noundef %call1) #8, !dbg !1352
  %conv374 = trunc i32 %call373 to i16, !dbg !1354
  %conv.i983 = and i16 %conv374, 255, !dbg !1355
  call void @llvm.dbg.value(metadata i16 %conv374, metadata !1299, metadata !DIExpression()), !dbg !1357
  %mul.i984 = mul nuw i16 %conv.i983, 257, !dbg !1358
  store i16 %mul.i984, ptr %pixel, align 8, !dbg !1359, !tbaa !1308
  %call377 = call i32 @ReadBlobByte(ptr noundef %call1) #8, !dbg !1360
  %conv378 = trunc i32 %call377 to i16, !dbg !1361
  %conv.i985 = and i16 %conv378, 255, !dbg !1362
  call void @llvm.dbg.value(metadata i16 %conv378, metadata !1299, metadata !DIExpression()), !dbg !1364
  %mul.i986 = mul nuw i16 %conv.i985, 257, !dbg !1365
  store i16 %mul.i986, ptr %green380, align 2, !dbg !1366, !tbaa !1306
  %call381 = call i32 @ReadBlobByte(ptr noundef %call1) #8, !dbg !1367
  %conv382 = trunc i32 %call381 to i16, !dbg !1368
  %conv.i987 = and i16 %conv382, 255, !dbg !1369
  call void @llvm.dbg.value(metadata i16 %conv382, metadata !1299, metadata !DIExpression()), !dbg !1371
  %mul.i988 = mul nuw i16 %conv.i987, 257, !dbg !1372
  store i16 %mul.i988, ptr %red384, align 4, !dbg !1373, !tbaa !1304
  br label %sw.epilog, !dbg !1374

sw.bb385:                                         ; preds = %for.body
  %call386 = call i32 @ReadBlobByte(ptr noundef %call1) #8, !dbg !1375
  %conv387 = trunc i32 %call386 to i16, !dbg !1377
  %conv.i989 = and i16 %conv387, 255, !dbg !1378
  call void @llvm.dbg.value(metadata i16 %conv387, metadata !1299, metadata !DIExpression()), !dbg !1380
  %mul.i990 = mul nuw i16 %conv.i989, 257, !dbg !1381
  store i16 %mul.i990, ptr %pixel, align 8, !dbg !1382, !tbaa !1308
  %call390 = call i32 @ReadBlobByte(ptr noundef %call1) #8, !dbg !1383
  %conv391 = trunc i32 %call390 to i16, !dbg !1384
  %conv.i991 = and i16 %conv391, 255, !dbg !1385
  call void @llvm.dbg.value(metadata i16 %conv391, metadata !1299, metadata !DIExpression()), !dbg !1387
  %mul.i992 = mul nuw i16 %conv.i991, 257, !dbg !1388
  store i16 %mul.i992, ptr %green380, align 2, !dbg !1389, !tbaa !1306
  %call394 = call i32 @ReadBlobByte(ptr noundef %call1) #8, !dbg !1390
  %conv395 = trunc i32 %call394 to i16, !dbg !1391
  %conv.i993 = and i16 %conv395, 255, !dbg !1392
  call void @llvm.dbg.value(metadata i16 %conv395, metadata !1299, metadata !DIExpression()), !dbg !1394
  %mul.i994 = mul nuw i16 %conv.i993, 257, !dbg !1395
  store i16 %mul.i994, ptr %red384, align 4, !dbg !1396, !tbaa !1304
  %call398 = call i32 @ReadBlobByte(ptr noundef %call1) #8, !dbg !1397
  %conv399 = trunc i32 %call398 to i16, !dbg !1398
  %conv.i995 = and i16 %conv399, 255, !dbg !1399
  call void @llvm.dbg.value(metadata i16 %conv399, metadata !1299, metadata !DIExpression()), !dbg !1401
  %mul.i996 = mul nuw i16 %conv.i995, 257, !dbg !1402
  %35 = xor i16 %mul.i996, -1, !dbg !1403
  store i16 %35, ptr %opacity, align 2, !dbg !1404, !tbaa !1271
  br label %sw.epilog, !dbg !1405

sw.epilog:                                        ; preds = %sw.bb385, %sw.bb372, %sw.bb341, %sw.default
  %36 = load ptr, ptr %colormap, align 8, !dbg !1406, !tbaa !1407
  %arrayidx404 = getelementptr inbounds %struct._PixelPacket, ptr %36, i64 %i.01074, !dbg !1408
  %37 = load i64, ptr %pixel, align 8, !dbg !1409
  store i64 %37, ptr %arrayidx404, align 2, !dbg !1409
  %inc = add nuw nsw i64 %i.01074, 1, !dbg !1410
  call void @llvm.dbg.value(metadata i64 %inc, metadata !991, metadata !DIExpression()), !dbg !1055
  %38 = load i64, ptr %colors316, align 8, !dbg !1280, !tbaa !1226
  %cmp332 = icmp slt i64 %inc, %38, !dbg !1281
  br i1 %cmp332, label %for.body, label %if.end405, !dbg !1282, !llvm.loop !1411

if.end405:                                        ; preds = %sw.epilog, %for.cond.preheader, %if.end309
  call void @llvm.dbg.value(metadata i64 0, metadata !993, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 0, metadata !994, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 0, metadata !997, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 0, metadata !996, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i16 0, metadata !986, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i8 0, metadata !1022, metadata !DIExpression()), !dbg !1055
  store i8 0, ptr %runlength, align 1, !dbg !1415, !tbaa !1265
  call void @llvm.dbg.value(metadata ptr %call1, metadata !985, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i32 poison, metadata !987, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 0, metadata !999, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 0, metadata !995, metadata !DIExpression()), !dbg !1055
  %39 = load i64, ptr %rows, align 8, !dbg !1416, !tbaa !1182
  %cmp4081084 = icmp sgt i64 %39, 0, !dbg !1417
  br i1 %cmp4081084, label %for.body410.lr.ph, label %for.end731, !dbg !1418

for.body410.lr.ph:                                ; preds = %if.end405
  %arrayidx605 = getelementptr inbounds [4 x i8], ptr %pixels, i64 0, i64 1
  %green607 = getelementptr inbounds %struct._PixelPacket, ptr %pixel, i64 0, i32 1
  %arrayidx608 = getelementptr inbounds [4 x i8], ptr %pixels, i64 0, i64 2
  %red610 = getelementptr inbounds %struct._PixelPacket, ptr %pixel, i64 0, i32 2
  %colors.i1022 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 10
  %exception.i1026 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 58
  %filename.i1027 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 53
  %arrayidx636 = getelementptr inbounds [4 x i8], ptr %pixels, i64 0, i64 3
  %colormap499 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 11
  %previous = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 67
  br label %for.body410, !dbg !1418

for.body410:                                      ; preds = %for.body410.lr.ph, %for.inc729
  %40 = phi i64 [ %39, %for.body410.lr.ph ], [ %88, %for.inc729 ]
  %index.01092 = phi i16 [ 0, %for.body410.lr.ph ], [ %index.1.lcssa, %for.inc729 ]
  %y.01090 = phi i64 [ 0, %for.body410.lr.ph ], [ %inc730, %for.inc729 ]
  %skip.01089 = phi i64 [ 0, %for.body410.lr.ph ], [ %skip.1.lcssa, %for.inc729 ]
  %offset.01087 = phi i64 [ 0, %for.body410.lr.ph ], [ %spec.select966, %for.inc729 ]
  %flag.01086 = phi i64 [ 0, %for.body410.lr.ph ], [ %flag.1.lcssa, %for.inc729 ]
  %base.01085 = phi i64 [ 0, %for.body410.lr.ph ], [ %spec.select, %for.inc729 ]
  call void @llvm.dbg.value(metadata i16 %index.01092, metadata !986, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %y.01090, metadata !999, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %skip.01089, metadata !997, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %offset.01087, metadata !995, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %flag.01086, metadata !994, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %base.01085, metadata !993, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %offset.01087, metadata !996, metadata !DIExpression()), !dbg !1055
  %41 = load i8, ptr %attributes, align 1, !dbg !1419, !tbaa !1143
  %42 = and i8 %41, 32, !dbg !1421
  %cmp417 = icmp eq i8 %42, 0, !dbg !1421
  br i1 %cmp417, label %if.then419, label %if.end423, !dbg !1422

if.then419:                                       ; preds = %for.body410
  %43 = xor i64 %offset.01087, -1, !dbg !1423
  %sub422 = add i64 %40, %43, !dbg !1423
  call void @llvm.dbg.value(metadata i64 %sub422, metadata !996, metadata !DIExpression()), !dbg !1055
  br label %if.end423, !dbg !1424

if.end423:                                        ; preds = %if.then419, %for.body410
  %real.0 = phi i64 [ %sub422, %if.then419 ], [ %offset.01087, %for.body410 ], !dbg !1425
  call void @llvm.dbg.value(metadata i64 %real.0, metadata !996, metadata !DIExpression()), !dbg !1055
  %44 = load i64, ptr %columns, align 8, !dbg !1426, !tbaa !1167
  %call425 = call ptr @QueueAuthenticPixels(ptr noundef nonnull %call1, i64 noundef 0, i64 noundef %real.0, i64 noundef %44, i64 noundef 1, ptr noundef %exception) #8, !dbg !1427
  call void @llvm.dbg.value(metadata ptr %call425, metadata !990, metadata !DIExpression()), !dbg !1055
  %cmp426 = icmp eq ptr %call425, null, !dbg !1428
  br i1 %cmp426, label %for.end731, label %if.end429, !dbg !1430

if.end429:                                        ; preds = %if.end423
  %call430 = call ptr @GetAuthenticIndexQueue(ptr noundef nonnull %call1) #8, !dbg !1431
  call void @llvm.dbg.value(metadata ptr %call430, metadata !989, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata ptr %call1, metadata !985, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i16 %index.01092, metadata !986, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata ptr %call425, metadata !990, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %skip.01089, metadata !997, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %flag.01086, metadata !994, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 0, metadata !992, metadata !DIExpression()), !dbg !1055
  %45 = load i64, ptr %columns, align 8, !dbg !1432, !tbaa !1167
  %cmp4331075 = icmp sgt i64 %45, 0, !dbg !1433
  br i1 %cmp4331075, label %for.body435.lr.ph, label %if.else693, !dbg !1434

for.body435.lr.ph:                                ; preds = %if.end429
  %cmp661.not = icmp eq ptr %call430, null
  br label %for.body435, !dbg !1434

for.body435:                                      ; preds = %for.body435.lr.ph, %if.end679
  %index.11081 = phi i16 [ %index.01092, %for.body435.lr.ph ], [ %index.4, %if.end679 ]
  %q.01080 = phi ptr [ %call425, %for.body435.lr.ph ], [ %incdec.ptr, %if.end679 ]
  %skip.11079 = phi i64 [ %skip.01089, %for.body435.lr.ph ], [ %skip.21056, %if.end679 ]
  %flag.11078 = phi i64 [ %flag.01086, %for.body435.lr.ph ], [ %flag.21054, %if.end679 ]
  %x.01076 = phi i64 [ 0, %for.body435.lr.ph ], [ %inc681, %if.end679 ]
  call void @llvm.dbg.value(metadata i16 %index.11081, metadata !986, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata ptr %q.01080, metadata !990, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %skip.11079, metadata !997, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %flag.11078, metadata !994, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %x.01076, metadata !992, metadata !DIExpression()), !dbg !1055
  %46 = load i8, ptr %image_type, align 2, !dbg !1435, !tbaa !1093
  %47 = add i8 %46, -9, !dbg !1437
  %48 = icmp ult i8 %47, 3, !dbg !1437
  br i1 %48, label %if.then450, label %if.end484, !dbg !1437

if.then450:                                       ; preds = %for.body435
  %49 = load i8, ptr %runlength, align 1, !dbg !1438, !tbaa !1265
  call void @llvm.dbg.value(metadata i8 %49, metadata !1022, metadata !DIExpression()), !dbg !1055
  %cmp452.not = icmp eq i8 %49, 0, !dbg !1441
  br i1 %cmp452.not, label %if.else458, label %if.then454, !dbg !1442

if.then454:                                       ; preds = %if.then450
  %dec = add i8 %49, -1, !dbg !1443
  call void @llvm.dbg.value(metadata i8 %dec, metadata !1022, metadata !DIExpression()), !dbg !1055
  store i8 %dec, ptr %runlength, align 1, !dbg !1443, !tbaa !1265
  %cmp455 = icmp ne i64 %flag.11078, 0, !dbg !1445
  %50 = zext i1 %cmp455 to i64
  call void @llvm.dbg.value(metadata i64 %50, metadata !997, metadata !DIExpression()), !dbg !1055
  br label %if.end484, !dbg !1446

if.else458:                                       ; preds = %if.then450
  call void @llvm.dbg.value(metadata ptr %runlength, metadata !1022, metadata !DIExpression(DW_OP_deref)), !dbg !1055
  %call459 = call i64 @ReadBlob(ptr noundef nonnull %call1, i64 noundef 1, ptr noundef nonnull %runlength) #8, !dbg !1447
  call void @llvm.dbg.value(metadata i64 %call459, metadata !998, metadata !DIExpression()), !dbg !1055
  %cmp460 = icmp eq i64 %call459, 0, !dbg !1449
  br i1 %cmp460, label %if.then468, label %if.end472, !dbg !1451

if.then468:                                       ; preds = %if.else458
  %filename463 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1452
  %call465 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 395, i32 noundef 425, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, ptr noundef nonnull %filename463) #8, !dbg !1452
  %call469 = call i32 @CloseBlob(ptr noundef nonnull %call1) #8, !dbg !1454
  %call470 = call ptr @DestroyImageList(ptr noundef nonnull %call1) #8, !dbg !1454
  call void @llvm.dbg.value(metadata ptr %call470, metadata !985, metadata !DIExpression()), !dbg !1055
  br label %cleanup745, !dbg !1454

if.end472:                                        ; preds = %if.else458
  %51 = load i8, ptr %runlength, align 1, !dbg !1457, !tbaa !1265
  call void @llvm.dbg.value(metadata i8 %51, metadata !1022, metadata !DIExpression()), !dbg !1055
  %52 = and i8 %51, -128, !dbg !1458
  call void @llvm.dbg.value(metadata i8 %52, metadata !994, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1055
  %cmp476.not = icmp eq i8 %52, 0, !dbg !1459
  br i1 %cmp476.not, label %if.then487, label %if.then478, !dbg !1461

if.then478:                                       ; preds = %if.end472
  %53 = zext i8 %52 to i64
  call void @llvm.dbg.value(metadata i64 %53, metadata !994, metadata !DIExpression()), !dbg !1055
  %sub480 = xor i8 %51, -128, !dbg !1462
  call void @llvm.dbg.value(metadata i8 %sub480, metadata !1022, metadata !DIExpression()), !dbg !1055
  store i8 %sub480, ptr %runlength, align 1, !dbg !1462, !tbaa !1265
  br label %if.then487, !dbg !1463

if.end484:                                        ; preds = %if.then454, %for.body435
  %skip.2 = phi i64 [ %50, %if.then454 ], [ %skip.11079, %for.body435 ], !dbg !1055
  call void @llvm.dbg.value(metadata i64 %skip.2, metadata !997, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %flag.11078, metadata !994, metadata !DIExpression()), !dbg !1055
  %cmp485 = icmp eq i64 %skip.2, 0, !dbg !1464
  br i1 %cmp485, label %if.then487, label %if.end656, !dbg !1465

if.then487:                                       ; preds = %if.end472, %if.then478, %if.end484
  %flag.21055 = phi i64 [ %flag.11078, %if.end484 ], [ %53, %if.then478 ], [ 0, %if.end472 ]
  %54 = load i8, ptr %bits_per_pixel, align 2, !dbg !1466, !tbaa !1138
  switch i8 %54, label %sw.default491 [
    i8 32, label %sw.bb611
    i8 15, label %sw.bb516
    i8 16, label %sw.bb516
    i8 24, label %sw.bb586
  ], !dbg !1467

sw.default491:                                    ; preds = %if.then487
  %call492 = call i32 @ReadBlobByte(ptr noundef %call1) #8, !dbg !1468
  %conv493 = trunc i32 %call492 to i16, !dbg !1470
  call void @llvm.dbg.value(metadata i16 %conv493, metadata !986, metadata !DIExpression()), !dbg !1055
  %55 = load i8, ptr %colormap_type, align 1, !dbg !1471, !tbaa !1087
  %cmp496.not = icmp eq i8 %55, 0, !dbg !1473
  br i1 %cmp496.not, label %if.else505, label %if.then498, !dbg !1474

if.then498:                                       ; preds = %sw.default491
  %56 = load ptr, ptr %colormap499, align 8, !dbg !1475, !tbaa !1407
  %conv493.mask = and i32 %call492, 65535, !dbg !1476
  %conv500 = zext i32 %conv493.mask to i64, !dbg !1476
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1477, metadata !DIExpression()) #8, !dbg !1484
  call void @llvm.dbg.value(metadata i64 %conv500, metadata !1483, metadata !DIExpression()) #8, !dbg !1484
  %57 = load i64, ptr %colors.i1022, align 8, !dbg !1486, !tbaa !1226
  %cmp.i = icmp ugt i64 %57, %conv500, !dbg !1488
  br i1 %cmp.i, label %ConstrainColormapIndex.exit, label %if.end.i, !dbg !1489

if.end.i:                                         ; preds = %if.then498
  %call.i = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception.i1026, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.6, i64 noundef 34, i32 noundef 425, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.9, ptr noundef nonnull %filename.i1027) #8, !dbg !1490
  br label %ConstrainColormapIndex.exit, !dbg !1491

ConstrainColormapIndex.exit:                      ; preds = %if.then498, %if.end.i
  %retval.0.i = phi i64 [ 0, %if.end.i ], [ %conv500, %if.then498 ], !dbg !1484
  %arrayidx504 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 %retval.0.i, !dbg !1492
  %58 = load i64, ptr %arrayidx504, align 2, !dbg !1492
  store i64 %58, ptr %pixel, align 8, !dbg !1492
  br label %if.end656, !dbg !1493

if.else505:                                       ; preds = %sw.default491
  %conv.i998 = and i16 %conv493, 255, !dbg !1494
  call void @llvm.dbg.value(metadata i16 %conv493, metadata !1299, metadata !DIExpression()), !dbg !1497
  %mul.i999 = mul nuw i16 %conv.i998, 257, !dbg !1498
  store i16 %mul.i999, ptr %red610, align 4, !dbg !1499, !tbaa !1304
  call void @llvm.dbg.value(metadata i16 %conv493, metadata !1299, metadata !DIExpression()), !dbg !1500
  store i16 %mul.i999, ptr %green607, align 2, !dbg !1502, !tbaa !1306
  call void @llvm.dbg.value(metadata i16 %conv493, metadata !1299, metadata !DIExpression()), !dbg !1503
  store i16 %mul.i999, ptr %pixel, align 8, !dbg !1505, !tbaa !1308
  br label %if.end656

sw.bb516:                                         ; preds = %if.then487, %if.then487
  %call519 = call i64 @ReadBlob(ptr noundef %call1, i64 noundef 2, ptr noundef nonnull %pixels) #8, !dbg !1506
  %cmp520.not = icmp eq i64 %call519, 2, !dbg !1508
  br i1 %cmp520.not, label %if.end532, label %if.then522, !dbg !1509

if.then522:                                       ; preds = %sw.bb516
  %filename523 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1510
  %call525 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 433, i32 noundef 425, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, ptr noundef nonnull %filename523) #8, !dbg !1510
  %cmp526.not = icmp eq ptr %call1, null, !dbg !1512
  br i1 %cmp526.not, label %cleanup745, label %if.then528, !dbg !1510

if.then528:                                       ; preds = %if.then522
  %call529 = call i32 @CloseBlob(ptr noundef nonnull %call1) #8, !dbg !1514
  %call530 = call ptr @DestroyImageList(ptr noundef nonnull %call1) #8, !dbg !1514
  call void @llvm.dbg.value(metadata ptr %call530, metadata !985, metadata !DIExpression()), !dbg !1055
  br label %cleanup745, !dbg !1514

if.end532:                                        ; preds = %sw.bb516
  %59 = load i8, ptr %pixels, align 1, !dbg !1516, !tbaa !1265
  call void @llvm.dbg.value(metadata i8 %59, metadata !1016, metadata !DIExpression()), !dbg !1055
  %60 = load i8, ptr %arrayidx605, align 1, !dbg !1517, !tbaa !1265
  call void @llvm.dbg.value(metadata i8 %60, metadata !1017, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 31, metadata !1042, metadata !DIExpression()), !dbg !1518
  %conv536 = zext i8 %60 to i32, !dbg !1519
  %and537 = lshr i32 %conv536, 2, !dbg !1520
  %61 = and i32 %and537, 31, !dbg !1520
  call void @llvm.dbg.value(metadata i32 %61, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1521
  call void @llvm.dbg.value(metadata i64 31, metadata !1320, metadata !DIExpression()), !dbg !1521
  %conv.i1004 = uitofp i32 %61 to float, !dbg !1523
  %mul.i1005 = fmul float %conv.i1004, 6.553500e+04, !dbg !1524
  %div.i1006 = fdiv float %mul.i1005, 3.100000e+01, !dbg !1525
  %conv2.i1007 = fpext float %div.i1006 to double, !dbg !1526
  %add.i1008 = fadd double %conv2.i1007, 5.000000e-01, !dbg !1527
  %conv3.i1009 = fptoui double %add.i1008 to i16, !dbg !1528
  store i16 %conv3.i1009, ptr %red610, align 4, !dbg !1529, !tbaa !1304
  %and544 = shl nuw nsw i32 %conv536, 3, !dbg !1530
  %62 = and i32 %and544, 24, !dbg !1530
  %shl547 = zext i32 %62 to i64, !dbg !1530
  %63 = lshr i8 %59, 5, !dbg !1531
  %shr552 = zext i8 %63 to i64, !dbg !1531
  %add553 = or i64 %shl547, %shr552, !dbg !1532
  call void @llvm.dbg.value(metadata i64 %add553, metadata !1314, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i64 31, metadata !1320, metadata !DIExpression()), !dbg !1533
  %conv.i1010 = uitofp i64 %add553 to float, !dbg !1535
  %mul.i1011 = fmul float %conv.i1010, 6.553500e+04, !dbg !1536
  %div.i1012 = fdiv float %mul.i1011, 3.100000e+01, !dbg !1537
  %conv2.i1013 = fpext float %div.i1012 to double, !dbg !1538
  %add.i1014 = fadd double %conv2.i1013, 5.000000e-01, !dbg !1539
  %conv3.i1015 = fptoui double %add.i1014 to i16, !dbg !1540
  store i16 %conv3.i1015, ptr %green607, align 2, !dbg !1541, !tbaa !1306
  %64 = and i8 %59, 31, !dbg !1542
  call void @llvm.dbg.value(metadata i8 %64, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1543
  call void @llvm.dbg.value(metadata i64 31, metadata !1320, metadata !DIExpression()), !dbg !1543
  %conv.i1016 = uitofp i8 %64 to float, !dbg !1545
  %mul.i1017 = fmul float %conv.i1016, 6.553500e+04, !dbg !1546
  %div.i1018 = fdiv float %mul.i1017, 3.100000e+01, !dbg !1547
  %conv2.i1019 = fpext float %div.i1018 to double, !dbg !1548
  %add.i1020 = fadd double %conv2.i1019, 5.000000e-01, !dbg !1549
  %conv3.i1021 = fptoui double %add.i1020 to i16, !dbg !1550
  store i16 %conv3.i1021, ptr %pixel, align 8, !dbg !1551, !tbaa !1308
  %65 = load i32, ptr %matte, align 8, !dbg !1552, !tbaa !1193
  %cmp563.not = icmp eq i32 %65, 0, !dbg !1554
  br i1 %cmp563.not, label %if.end573, label %if.then565, !dbg !1555

if.then565:                                       ; preds = %if.end532
  %66 = ashr i8 %60, 7, !dbg !1556
  %conv571 = sext i8 %66 to i16, !dbg !1556
  store i16 %conv571, ptr %opacity, align 2, !dbg !1557, !tbaa !1271
  br label %if.end573, !dbg !1558

if.end573:                                        ; preds = %if.then565, %if.end532
  %67 = load i32, ptr %call1, align 8, !dbg !1559, !tbaa !1211
  %cmp575 = icmp eq i32 %67, 2, !dbg !1561
  br i1 %cmp575, label %if.then577, label %if.end656, !dbg !1562

if.then577:                                       ; preds = %if.end573
  %conv578 = zext i8 %60 to i64, !dbg !1563
  %shl579 = shl nuw nsw i64 %conv578, 8, !dbg !1564
  %conv580 = zext i8 %59 to i64, !dbg !1565
  %add581 = or i64 %shl579, %conv580, !dbg !1566
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1477, metadata !DIExpression()) #8, !dbg !1567
  call void @llvm.dbg.value(metadata i64 %add581, metadata !1483, metadata !DIExpression()) #8, !dbg !1567
  %68 = load i64, ptr %colors.i1022, align 8, !dbg !1569, !tbaa !1226
  %cmp.i1023 = icmp ugt i64 %68, %add581, !dbg !1570
  br i1 %cmp.i1023, label %if.then.i1025, label %if.end.i1029, !dbg !1571

if.then.i1025:                                    ; preds = %if.then577
  %conv.i1024 = trunc i64 %add581 to i16, !dbg !1572
  br label %if.end656, !dbg !1573

if.end.i1029:                                     ; preds = %if.then577
  %call.i1028 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception.i1026, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.6, i64 noundef 34, i32 noundef 425, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.9, ptr noundef nonnull %filename.i1027) #8, !dbg !1574
  br label %if.end656, !dbg !1575

sw.bb586:                                         ; preds = %if.then487
  %call588 = call i64 @ReadBlob(ptr noundef %call1, i64 noundef 3, ptr noundef nonnull %pixels) #8, !dbg !1576
  %cmp589.not = icmp eq i64 %call588, 3, !dbg !1579
  br i1 %cmp589.not, label %if.end601, label %if.then591, !dbg !1580

if.then591:                                       ; preds = %sw.bb586
  %filename592 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1581
  %call594 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 454, i32 noundef 425, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, ptr noundef nonnull %filename592) #8, !dbg !1581
  %cmp595.not = icmp eq ptr %call1, null, !dbg !1583
  br i1 %cmp595.not, label %cleanup745, label %if.then597, !dbg !1581

if.then597:                                       ; preds = %if.then591
  %call598 = call i32 @CloseBlob(ptr noundef nonnull %call1) #8, !dbg !1585
  %call599 = call ptr @DestroyImageList(ptr noundef nonnull %call1) #8, !dbg !1585
  call void @llvm.dbg.value(metadata ptr %call599, metadata !985, metadata !DIExpression()), !dbg !1055
  br label %cleanup745, !dbg !1585

if.end601:                                        ; preds = %sw.bb586
  %69 = load i8, ptr %pixels, align 1, !dbg !1587, !tbaa !1265
  call void @llvm.dbg.value(metadata i8 %69, metadata !1299, metadata !DIExpression()), !dbg !1588
  %conv.i1032 = zext i8 %69 to i16, !dbg !1590
  %mul.i1033 = mul nuw i16 %conv.i1032, 257, !dbg !1591
  store i16 %mul.i1033, ptr %pixel, align 8, !dbg !1592, !tbaa !1308
  %70 = load i8, ptr %arrayidx605, align 1, !dbg !1593, !tbaa !1265
  call void @llvm.dbg.value(metadata i8 %70, metadata !1299, metadata !DIExpression()), !dbg !1594
  %conv.i1034 = zext i8 %70 to i16, !dbg !1596
  %mul.i1035 = mul nuw i16 %conv.i1034, 257, !dbg !1597
  store i16 %mul.i1035, ptr %green607, align 2, !dbg !1598, !tbaa !1306
  %71 = load i8, ptr %arrayidx608, align 1, !dbg !1599, !tbaa !1265
  call void @llvm.dbg.value(metadata i8 %71, metadata !1299, metadata !DIExpression()), !dbg !1600
  %conv.i1036 = zext i8 %71 to i16, !dbg !1602
  %mul.i1037 = mul nuw i16 %conv.i1036, 257, !dbg !1603
  store i16 %mul.i1037, ptr %red610, align 4, !dbg !1604, !tbaa !1304
  br label %if.end656, !dbg !1605

sw.bb611:                                         ; preds = %if.then487
  %call613 = call i64 @ReadBlob(ptr noundef %call1, i64 noundef 4, ptr noundef nonnull %pixels) #8, !dbg !1606
  %cmp614.not = icmp eq i64 %call613, 4, !dbg !1609
  br i1 %cmp614.not, label %if.end626, label %if.then616, !dbg !1610

if.then616:                                       ; preds = %sw.bb611
  %filename617 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1611
  %call619 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 466, i32 noundef 425, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, ptr noundef nonnull %filename617) #8, !dbg !1611
  %cmp620.not = icmp eq ptr %call1, null, !dbg !1613
  br i1 %cmp620.not, label %cleanup745, label %if.then622, !dbg !1611

if.then622:                                       ; preds = %if.then616
  %call623 = call i32 @CloseBlob(ptr noundef nonnull %call1) #8, !dbg !1615
  %call624 = call ptr @DestroyImageList(ptr noundef nonnull %call1) #8, !dbg !1615
  call void @llvm.dbg.value(metadata ptr %call624, metadata !985, metadata !DIExpression()), !dbg !1055
  br label %cleanup745, !dbg !1615

if.end626:                                        ; preds = %sw.bb611
  %72 = load i8, ptr %pixels, align 1, !dbg !1617, !tbaa !1265
  call void @llvm.dbg.value(metadata i8 %72, metadata !1299, metadata !DIExpression()), !dbg !1618
  %conv.i1038 = zext i8 %72 to i16, !dbg !1620
  %mul.i1039 = mul nuw i16 %conv.i1038, 257, !dbg !1621
  store i16 %mul.i1039, ptr %pixel, align 8, !dbg !1622, !tbaa !1308
  %73 = load i8, ptr %arrayidx605, align 1, !dbg !1623, !tbaa !1265
  call void @llvm.dbg.value(metadata i8 %73, metadata !1299, metadata !DIExpression()), !dbg !1624
  %conv.i1040 = zext i8 %73 to i16, !dbg !1626
  %mul.i1041 = mul nuw i16 %conv.i1040, 257, !dbg !1627
  store i16 %mul.i1041, ptr %green607, align 2, !dbg !1628, !tbaa !1306
  %74 = load i8, ptr %arrayidx608, align 1, !dbg !1629, !tbaa !1265
  call void @llvm.dbg.value(metadata i8 %74, metadata !1299, metadata !DIExpression()), !dbg !1630
  %conv.i1042 = zext i8 %74 to i16, !dbg !1632
  %mul.i1043 = mul nuw i16 %conv.i1042, 257, !dbg !1633
  store i16 %mul.i1043, ptr %red610, align 4, !dbg !1634, !tbaa !1304
  %75 = load i8, ptr %arrayidx636, align 1, !dbg !1635, !tbaa !1265
  call void @llvm.dbg.value(metadata i8 %75, metadata !1299, metadata !DIExpression()), !dbg !1636
  %conv.i1044 = zext i8 %75 to i16, !dbg !1638
  %mul.i1045 = mul nuw i16 %conv.i1044, 257, !dbg !1639
  %76 = xor i16 %mul.i1045, -1, !dbg !1640
  store i16 %76, ptr %opacity, align 2, !dbg !1641, !tbaa !1271
  br label %if.end656, !dbg !1642

if.end656:                                        ; preds = %if.end573, %if.then.i1025, %if.end.i1029, %if.end484, %ConstrainColormapIndex.exit, %if.else505, %if.end626, %if.end601
  %skip.21056 = phi i64 [ 0, %ConstrainColormapIndex.exit ], [ 0, %if.else505 ], [ 0, %if.end601 ], [ 0, %if.end626 ], [ %skip.2, %if.end484 ], [ 0, %if.end.i1029 ], [ 0, %if.then.i1025 ], [ 0, %if.end573 ]
  %flag.21054 = phi i64 [ %flag.21055, %ConstrainColormapIndex.exit ], [ %flag.21055, %if.else505 ], [ %flag.21055, %if.end601 ], [ %flag.21055, %if.end626 ], [ %flag.11078, %if.end484 ], [ %flag.21055, %if.end.i1029 ], [ %flag.21055, %if.then.i1025 ], [ %flag.21055, %if.end573 ]
  %index.4 = phi i16 [ %conv493, %ConstrainColormapIndex.exit ], [ %conv493, %if.else505 ], [ %index.11081, %if.end601 ], [ %index.11081, %if.end626 ], [ %index.11081, %if.end484 ], [ 0, %if.end.i1029 ], [ %conv.i1024, %if.then.i1025 ], [ %index.11081, %if.end573 ], !dbg !1055
  call void @llvm.dbg.value(metadata ptr %call1, metadata !985, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i16 %index.4, metadata !986, metadata !DIExpression()), !dbg !1055
  %77 = load i32, ptr %call1, align 8, !dbg !1643, !tbaa !1211
  %cmp658 = icmp ne i32 %77, 2, !dbg !1645
  %or.cond = select i1 %cmp658, i1 true, i1 %cmp661.not, !dbg !1646
  br i1 %or.cond, label %if.end666, label %if.then663, !dbg !1646

if.then663:                                       ; preds = %if.end656
  %add.ptr = getelementptr inbounds i16, ptr %call430, i64 %x.01076, !dbg !1647
  store i16 %index.4, ptr %add.ptr, align 2, !dbg !1647, !tbaa !1650
  br label %if.end666, !dbg !1647

if.end666:                                        ; preds = %if.then663, %if.end656
  %78 = load i16, ptr %red610, align 4, !dbg !1651, !tbaa !1304
  %red668 = getelementptr inbounds %struct._PixelPacket, ptr %q.01080, i64 0, i32 2, !dbg !1651
  store i16 %78, ptr %red668, align 2, !dbg !1651, !tbaa !1304
  %79 = load i16, ptr %green607, align 2, !dbg !1652, !tbaa !1306
  %green670 = getelementptr inbounds %struct._PixelPacket, ptr %q.01080, i64 0, i32 1, !dbg !1652
  store i16 %79, ptr %green670, align 2, !dbg !1652, !tbaa !1306
  %80 = load i16, ptr %pixel, align 8, !dbg !1653, !tbaa !1308
  store i16 %80, ptr %q.01080, align 2, !dbg !1653, !tbaa !1308
  %81 = load i32, ptr %matte, align 8, !dbg !1654, !tbaa !1193
  %cmp674.not = icmp eq i32 %81, 0, !dbg !1656
  br i1 %cmp674.not, label %if.end679, label %if.then676, !dbg !1657

if.then676:                                       ; preds = %if.end666
  %82 = load i16, ptr %opacity, align 2, !dbg !1658, !tbaa !1271
  %opacity678 = getelementptr inbounds %struct._PixelPacket, ptr %q.01080, i64 0, i32 3, !dbg !1658
  store i16 %82, ptr %opacity678, align 2, !dbg !1658, !tbaa !1271
  br label %if.end679, !dbg !1658

if.end679:                                        ; preds = %if.then676, %if.end666
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.01080, i64 1, !dbg !1659
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !990, metadata !DIExpression()), !dbg !1055
  %inc681 = add nuw nsw i64 %x.01076, 1, !dbg !1660
  call void @llvm.dbg.value(metadata ptr %call1, metadata !985, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i16 %index.4, metadata !986, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %skip.21056, metadata !997, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %flag.21054, metadata !994, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %inc681, metadata !992, metadata !DIExpression()), !dbg !1055
  %83 = load i64, ptr %columns, align 8, !dbg !1432, !tbaa !1167
  %cmp433 = icmp slt i64 %inc681, %83, !dbg !1433
  br i1 %cmp433, label %for.body435, label %if.else693, !dbg !1434, !llvm.loop !1661

if.else693:                                       ; preds = %if.end679, %if.end429
  %flag.1.lcssa = phi i64 [ %flag.01086, %if.end429 ], [ %flag.21054, %if.end679 ], !dbg !1663
  %skip.1.lcssa = phi i64 [ %skip.01089, %if.end429 ], [ %skip.21056, %if.end679 ], !dbg !1055
  %index.1.lcssa = phi i16 [ %index.01092, %if.end429 ], [ %index.4, %if.end679 ], !dbg !1055
  %84 = load i8, ptr %attributes, align 1, !dbg !1664, !tbaa !1143
  %.mask = and i8 %84, -64, !dbg !1666
  %cmp700 = icmp eq i8 %.mask, -128, !dbg !1666
  %. = select i1 %cmp700, i64 2, i64 1
  %add703 = add i64 %offset.01087, %., !dbg !1668
  call void @llvm.dbg.value(metadata i64 %add703, metadata !995, metadata !DIExpression()), !dbg !1055
  %85 = load i64, ptr %rows, align 8, !dbg !1669, !tbaa !1182
  %cmp709.not = icmp ult i64 %add703, %85, !dbg !1671
  %inc712 = add i64 %base.01085, 1
  %spec.select = select i1 %cmp709.not, i64 %base.01085, i64 %inc712, !dbg !1672
  %spec.select966 = select i1 %cmp709.not, i64 %add703, i64 %inc712, !dbg !1672
  call void @llvm.dbg.value(metadata i64 %spec.select966, metadata !995, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !993, metadata !DIExpression()), !dbg !1055
  %call714 = call i32 @SyncAuthenticPixels(ptr noundef %call1, ptr noundef %exception) #8, !dbg !1673
  %cmp715 = icmp eq i32 %call714, 0, !dbg !1675
  br i1 %cmp715, label %for.end731, label %if.end718, !dbg !1676

if.end718:                                        ; preds = %if.else693
  %86 = load ptr, ptr %previous, align 8, !dbg !1677, !tbaa !1679
  %cmp719 = icmp eq ptr %86, null, !dbg !1680
  br i1 %cmp719, label %if.then721, label %for.inc729, !dbg !1681

if.then721:                                       ; preds = %if.end718
  %87 = load i64, ptr %rows, align 8, !dbg !1682, !tbaa !1182
  %call723 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %call1, ptr noundef nonnull @LoadImageTag, i64 noundef %y.01090, i64 noundef %87), !dbg !1684
  call void @llvm.dbg.value(metadata i32 %call723, metadata !987, metadata !DIExpression()), !dbg !1055
  %cmp724 = icmp eq i32 %call723, 0, !dbg !1685
  br i1 %cmp724, label %for.end731, label %for.inc729, !dbg !1687

for.inc729:                                       ; preds = %if.end718, %if.then721
  call void @llvm.dbg.value(metadata i32 undef, metadata !987, metadata !DIExpression()), !dbg !1055
  %inc730 = add nuw nsw i64 %y.01090, 1, !dbg !1688
  call void @llvm.dbg.value(metadata ptr %call1, metadata !985, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i16 %index.1.lcssa, metadata !986, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i32 poison, metadata !987, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %inc730, metadata !999, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %skip.1.lcssa, metadata !997, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %spec.select966, metadata !995, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %flag.1.lcssa, metadata !994, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !993, metadata !DIExpression()), !dbg !1055
  %88 = load i64, ptr %rows, align 8, !dbg !1416, !tbaa !1182
  %cmp408 = icmp slt i64 %inc730, %88, !dbg !1417
  br i1 %cmp408, label %for.body410, label %for.end731, !dbg !1418, !llvm.loop !1689

for.end731:                                       ; preds = %for.inc729, %if.end423, %if.else693, %if.then721, %if.end405
  call void @llvm.dbg.value(metadata ptr %call1, metadata !985, metadata !DIExpression()), !dbg !1055
  %call732 = call i32 @EOFBlob(ptr noundef nonnull %call1) #8, !dbg !1691
  %cmp733.not = icmp eq i32 %call732, 0, !dbg !1692
  br i1 %cmp733.not, label %if.end742, label %if.then735, !dbg !1693

if.then735:                                       ; preds = %for.end731
  %call736 = tail call ptr @__errno_location() #10, !dbg !1694
  %89 = load i32, ptr %call736, align 4, !dbg !1694, !tbaa !1695
  %call737 = call ptr @GetExceptionMessage(i32 noundef %89) #8, !dbg !1694
  call void @llvm.dbg.value(metadata ptr %call737, metadata !1052, metadata !DIExpression()), !dbg !1696
  %filename738 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 53, !dbg !1694
  %call740 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 510, i32 noundef 425, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull %filename738, ptr noundef %call737) #8, !dbg !1694
  %call741 = call ptr @DestroyString(ptr noundef %call737) #8, !dbg !1694
  call void @llvm.dbg.value(metadata ptr %call741, metadata !1052, metadata !DIExpression()), !dbg !1696
  br label %if.end742, !dbg !1694

if.end742:                                        ; preds = %if.then735, %for.end731
  %call743 = call i32 @CloseBlob(ptr noundef nonnull %call1) #8, !dbg !1697
  %call744 = call ptr @GetFirstImageInList(ptr noundef nonnull %call1) #8, !dbg !1698
  br label %cleanup745, !dbg !1699

cleanup745:                                       ; preds = %if.then528, %if.then522, %cleanup305.thread, %cleanup.thread, %if.then616, %if.then622, %if.then591, %if.then597, %if.then468, %if.then326, %if.then112, %if.then118, %if.then82, %if.then88, %if.then56, %if.then62, %if.end742, %if.then4
  %retval.8 = phi ptr [ null, %if.then4 ], [ %call744, %if.end742 ], [ null, %if.then62 ], [ null, %if.then56 ], [ null, %if.then88 ], [ null, %if.then82 ], [ null, %if.then118 ], [ null, %if.then112 ], [ null, %if.then326 ], [ null, %if.then468 ], [ null, %if.then597 ], [ null, %if.then591 ], [ null, %if.then622 ], [ null, %if.then616 ], [ null, %cleanup.thread ], [ null, %cleanup305.thread ], [ null, %if.then522 ], [ null, %if.then528 ], !dbg !1055
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %runlength) #8, !dbg !1700
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pixels) #8, !dbg !1700
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tga_info) #8, !dbg !1700
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pixel) #8, !dbg !1700
  ret ptr %retval.8, !dbg !1700
}

; Function Attrs: nounwind uwtable
define internal i32 @WriteTGAImage(ptr noundef %image_info, ptr noundef %image) #0 !dbg !1701 {
entry:
  %message.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.declare(metadata ptr undef, metadata !1714, metadata !DIExpression(DW_OP_LLVM_fragment, 24, 8)), !dbg !1734
  call void @llvm.dbg.declare(metadata ptr undef, metadata !1714, metadata !DIExpression(DW_OP_LLVM_fragment, 72, 8)), !dbg !1734
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1703, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata ptr %image, metadata !1704, metadata !DIExpression()), !dbg !1735
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1736
  %0 = load i32, ptr %debug, align 8, !dbg !1736, !tbaa !1738
  %cmp.not = icmp eq i32 %0, 0, !dbg !1739
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1740

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1741
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 707, ptr noundef nonnull @.str.7, ptr noundef nonnull %filename) #8, !dbg !1742
  br label %if.end, !dbg !1743

if.end:                                           ; preds = %if.then, %entry
  %exception = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1744
  %call1 = tail call i32 @OpenBlob(ptr noundef %image_info, ptr noundef nonnull %image, i32 noundef 4, ptr noundef nonnull %exception) #8, !dbg !1745
  call void @llvm.dbg.value(metadata i32 %call1, metadata !1706, metadata !DIExpression()), !dbg !1735
  %cmp2 = icmp eq i32 %call1, 0, !dbg !1746
  br i1 %cmp2, label %cleanup278, label %if.end4, !dbg !1748

if.end4:                                          ; preds = %if.end
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1749
  %1 = load i64, ptr %columns, align 8, !dbg !1749, !tbaa !1167
  %cmp5 = icmp ugt i64 %1, 65535, !dbg !1751
  br i1 %cmp5, label %if.then7, label %lor.lhs.false, !dbg !1752

lor.lhs.false:                                    ; preds = %if.end4
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !1753
  %2 = load i64, ptr %rows, align 8, !dbg !1753, !tbaa !1182
  %cmp6 = icmp ugt i64 %2, 65535, !dbg !1754
  br i1 %cmp6, label %if.then7, label %if.end18, !dbg !1755

if.then7:                                         ; preds = %lor.lhs.false, %if.end4
  %filename9 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1756
  %call11 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 715, i32 noundef 465, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.9, ptr noundef nonnull %filename9) #8, !dbg !1756
  %adjoin = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 3, !dbg !1758
  %3 = load i32, ptr %adjoin, align 4, !dbg !1758, !tbaa !1760
  %cmp12.not = icmp eq i32 %3, 0, !dbg !1758
  br i1 %cmp12.not, label %if.end16, label %while.cond, !dbg !1756

while.cond:                                       ; preds = %if.then7, %while.cond
  %image.addr.0 = phi ptr [ %4, %while.cond ], [ %image, %if.then7 ]
  call void @llvm.dbg.value(metadata ptr %image.addr.0, metadata !1704, metadata !DIExpression()), !dbg !1735
  %previous = getelementptr inbounds %struct._Image, ptr %image.addr.0, i64 0, i32 67, !dbg !1758
  %4 = load ptr, ptr %previous, align 8, !dbg !1758, !tbaa !1679
  %cmp14.not = icmp eq ptr %4, null, !dbg !1758
  br i1 %cmp14.not, label %if.end16, label %while.cond, !dbg !1758, !llvm.loop !1761

if.end16:                                         ; preds = %while.cond, %if.then7
  %image.addr.1 = phi ptr [ %image, %if.then7 ], [ %image.addr.0, %while.cond ]
  call void @llvm.dbg.value(metadata ptr %image.addr.1, metadata !1704, metadata !DIExpression()), !dbg !1735
  %call17 = tail call i32 @CloseBlob(ptr noundef nonnull %image.addr.1) #8, !dbg !1756
  br label %cleanup278, !dbg !1756

if.end18:                                         ; preds = %lor.lhs.false
  %call19 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %image, i32 noundef 13) #8, !dbg !1762
  call void @llvm.dbg.value(metadata i8 0, metadata !1714, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)), !dbg !1735
  %call20 = tail call ptr @GetImageProperty(ptr noundef nonnull %image, ptr noundef nonnull @.str.12) #8, !dbg !1763
  call void @llvm.dbg.value(metadata ptr %call20, metadata !1705, metadata !DIExpression()), !dbg !1735
  %cmp21.not = icmp eq ptr %call20, null, !dbg !1764
  br i1 %cmp21.not, label %if.end26, label %if.then22, !dbg !1766

if.then22:                                        ; preds = %if.end18
  %call23 = tail call i64 @strlen(ptr noundef nonnull %call20) #11, !dbg !1767
  call void @llvm.dbg.value(metadata i64 %call23, metadata !1768, metadata !DIExpression()) #8, !dbg !1774
  call void @llvm.dbg.value(metadata i64 255, metadata !1773, metadata !DIExpression()) #8, !dbg !1774
  %5 = tail call i64 @llvm.umin.i64(i64 %call23, i64 255) #8, !dbg !1774
  %conv = trunc i64 %5 to i8, !dbg !1776
  call void @llvm.dbg.value(metadata i8 %conv, metadata !1714, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)), !dbg !1735
  br label %if.end26, !dbg !1777

if.end26:                                         ; preds = %if.then22, %if.end18
  %targa_info.sroa.0.0 = phi i8 [ %conv, %if.then22 ], [ 0, %if.end18 ], !dbg !1735
  call void @llvm.dbg.value(metadata i8 %targa_info.sroa.0.0, metadata !1714, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)), !dbg !1735
  call void @llvm.dbg.value(metadata i8 0, metadata !1714, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !1735
  call void @llvm.dbg.value(metadata i16 0, metadata !1714, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 16)), !dbg !1735
  call void @llvm.dbg.value(metadata i16 0, metadata !1714, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16)), !dbg !1735
  call void @llvm.dbg.value(metadata i8 0, metadata !1714, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 8)), !dbg !1735
  call void @llvm.dbg.value(metadata i16 0, metadata !1714, metadata !DIExpression(DW_OP_LLVM_fragment, 80, 16)), !dbg !1735
  call void @llvm.dbg.value(metadata i16 0, metadata !1714, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 16)), !dbg !1735
  %6 = load i64, ptr %columns, align 8, !dbg !1778, !tbaa !1167
  %conv28 = trunc i64 %6 to i16, !dbg !1779
  call void @llvm.dbg.value(metadata i16 %conv28, metadata !1714, metadata !DIExpression(DW_OP_LLVM_fragment, 112, 16)), !dbg !1735
  %7 = load i64, ptr %rows, align 8, !dbg !1780, !tbaa !1182
  %conv30 = trunc i64 %7 to i16, !dbg !1781
  call void @llvm.dbg.value(metadata i16 %conv30, metadata !1714, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 16)), !dbg !1735
  call void @llvm.dbg.value(metadata i8 8, metadata !1714, metadata !DIExpression(DW_OP_LLVM_fragment, 144, 8)), !dbg !1735
  call void @llvm.dbg.value(metadata i8 0, metadata !1714, metadata !DIExpression(DW_OP_LLVM_fragment, 152, 8)), !dbg !1735
  %type = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 31, !dbg !1782
  %8 = load i32, ptr %type, align 4, !dbg !1782, !tbaa !1784
  switch i32 %8, label %land.lhs.true40 [
    i32 6, label %if.else
    i32 7, label %if.else
    i32 4, label %if.else
  ], !dbg !1785

land.lhs.true40:                                  ; preds = %if.end26
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !1786
  %9 = load i32, ptr %matte, align 8, !dbg !1786, !tbaa !1193
  %cmp41 = icmp eq i32 %9, 0, !dbg !1787
  br i1 %cmp41, label %land.lhs.true43, label %if.else, !dbg !1788

land.lhs.true43:                                  ; preds = %land.lhs.true40
  %call45 = tail call i32 @IsGrayImage(ptr noundef nonnull %image, ptr noundef nonnull %exception) #8, !dbg !1789
  %cmp46.not = icmp eq i32 %call45, 0, !dbg !1790
  br i1 %cmp46.not, label %if.else, label %if.end72, !dbg !1791

if.else:                                          ; preds = %if.end26, %if.end26, %if.end26, %land.lhs.true43, %land.lhs.true40
  %10 = load i32, ptr %image, align 8, !dbg !1792, !tbaa !1211
  %cmp49 = icmp eq i32 %10, 1, !dbg !1794
  br i1 %cmp49, label %if.then54, label %lor.lhs.false51, !dbg !1795

lor.lhs.false51:                                  ; preds = %if.else
  %colors = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 10, !dbg !1796
  %11 = load i64, ptr %colors, align 8, !dbg !1796, !tbaa !1226
  %cmp52 = icmp ugt i64 %11, 256, !dbg !1797
  br i1 %cmp52, label %if.then54, label %if.else64, !dbg !1798

if.then54:                                        ; preds = %lor.lhs.false51, %if.else
  call void @llvm.dbg.value(metadata i8 2, metadata !1714, metadata !DIExpression(DW_OP_LLVM_fragment, 16, 8)), !dbg !1735
  call void @llvm.dbg.value(metadata i8 24, metadata !1714, metadata !DIExpression(DW_OP_LLVM_fragment, 144, 8)), !dbg !1735
  %matte57 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !1799
  %12 = load i32, ptr %matte57, align 8, !dbg !1799, !tbaa !1193
  %cmp58.not = icmp eq i32 %12, 0, !dbg !1802
  %spec.select = select i1 %cmp58.not, i8 0, i8 8, !dbg !1803
  %spec.select417 = select i1 %cmp58.not, i8 24, i8 32, !dbg !1803
  br label %if.end72, !dbg !1803

if.else64:                                        ; preds = %lor.lhs.false51
  call void @llvm.dbg.value(metadata i8 1, metadata !1714, metadata !DIExpression(DW_OP_LLVM_fragment, 16, 8)), !dbg !1735
  call void @llvm.dbg.value(metadata i8 1, metadata !1714, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !1735
  %conv68 = trunc i64 %11 to i16, !dbg !1804
  call void @llvm.dbg.value(metadata i16 %conv68, metadata !1714, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16)), !dbg !1735
  call void @llvm.dbg.value(metadata i8 24, metadata !1714, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 8)), !dbg !1735
  br label %if.end72

if.end72:                                         ; preds = %if.then54, %land.lhs.true43, %if.else64
  %targa_info.sroa.41.0 = phi i8 [ 0, %if.else64 ], [ 0, %land.lhs.true43 ], [ %spec.select, %if.then54 ], !dbg !1735
  %targa_info.sroa.36.0 = phi i8 [ 8, %if.else64 ], [ 8, %land.lhs.true43 ], [ %spec.select417, %if.then54 ], !dbg !1735
  %targa_info.sroa.24.0 = phi i8 [ 24, %if.else64 ], [ 0, %land.lhs.true43 ], [ 0, %if.then54 ], !dbg !1735
  %targa_info.sroa.19.0 = phi i16 [ %conv68, %if.else64 ], [ 0, %land.lhs.true43 ], [ 0, %if.then54 ], !dbg !1735
  %cmp108 = phi i1 [ true, %if.else64 ], [ false, %land.lhs.true43 ], [ false, %if.then54 ], !dbg !1806
  %cmp213 = phi i1 [ false, %if.else64 ], [ true, %land.lhs.true43 ], [ false, %if.then54 ], !dbg !1806
  %targa_info.sroa.10.0 = phi i8 [ 1, %if.else64 ], [ 3, %land.lhs.true43 ], [ 2, %if.then54 ], !dbg !1806
  %targa_info.sroa.7.0 = phi i8 [ 1, %if.else64 ], [ 0, %land.lhs.true43 ], [ 0, %if.then54 ], !dbg !1735
  call void @llvm.dbg.value(metadata i8 %targa_info.sroa.7.0, metadata !1714, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !1735
  call void @llvm.dbg.value(metadata i8 %targa_info.sroa.10.0, metadata !1714, metadata !DIExpression(DW_OP_LLVM_fragment, 16, 8)), !dbg !1735
  call void @llvm.dbg.value(metadata i16 %targa_info.sroa.19.0, metadata !1714, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16)), !dbg !1735
  call void @llvm.dbg.value(metadata i8 %targa_info.sroa.24.0, metadata !1714, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 8)), !dbg !1735
  call void @llvm.dbg.value(metadata i8 %targa_info.sroa.36.0, metadata !1714, metadata !DIExpression(DW_OP_LLVM_fragment, 144, 8)), !dbg !1735
  call void @llvm.dbg.value(metadata i8 %targa_info.sroa.41.0, metadata !1714, metadata !DIExpression(DW_OP_LLVM_fragment, 152, 8)), !dbg !1735
  %call74 = tail call i64 @WriteBlobByte(ptr noundef nonnull %image, i8 noundef zeroext %targa_info.sroa.0.0) #8, !dbg !1807
  %call76 = tail call i64 @WriteBlobByte(ptr noundef nonnull %image, i8 noundef zeroext %targa_info.sroa.7.0) #8, !dbg !1808
  %call78 = tail call i64 @WriteBlobByte(ptr noundef nonnull %image, i8 noundef zeroext %targa_info.sroa.10.0) #8, !dbg !1809
  %call80 = tail call i64 @WriteBlobLSBShort(ptr noundef nonnull %image, i16 noundef zeroext 0) #8, !dbg !1810
  %call82 = tail call i64 @WriteBlobLSBShort(ptr noundef nonnull %image, i16 noundef zeroext %targa_info.sroa.19.0) #8, !dbg !1811
  %call84 = tail call i64 @WriteBlobByte(ptr noundef nonnull %image, i8 noundef zeroext %targa_info.sroa.24.0) #8, !dbg !1812
  %call86 = tail call i64 @WriteBlobLSBShort(ptr noundef nonnull %image, i16 noundef zeroext 0) #8, !dbg !1813
  %call88 = tail call i64 @WriteBlobLSBShort(ptr noundef nonnull %image, i16 noundef zeroext 0) #8, !dbg !1814
  %call90 = tail call i64 @WriteBlobLSBShort(ptr noundef nonnull %image, i16 noundef zeroext %conv28) #8, !dbg !1815
  %call92 = tail call i64 @WriteBlobLSBShort(ptr noundef nonnull %image, i16 noundef zeroext %conv30) #8, !dbg !1816
  %call94 = tail call i64 @WriteBlobByte(ptr noundef nonnull %image, i8 noundef zeroext %targa_info.sroa.36.0) #8, !dbg !1817
  %call96 = tail call i64 @WriteBlobByte(ptr noundef nonnull %image, i8 noundef zeroext %targa_info.sroa.41.0) #8, !dbg !1818
  %cmp99.not = icmp eq i8 %targa_info.sroa.0.0, 0, !dbg !1819
  br i1 %cmp99.not, label %if.end105, label %if.then101, !dbg !1821

if.then101:                                       ; preds = %if.end72
  %conv103 = zext i8 %targa_info.sroa.0.0 to i64, !dbg !1822
  %call104 = tail call i64 @WriteBlob(ptr noundef nonnull %image, i64 noundef %conv103, ptr noundef %call20) #8, !dbg !1823
  br label %if.end105, !dbg !1824

if.end105:                                        ; preds = %if.then101, %if.end72
  br i1 %cmp108, label %if.then110, label %if.end152, !dbg !1825

if.then110:                                       ; preds = %if.end105
  %conv112 = zext i16 %targa_info.sroa.19.0 to i64, !dbg !1826
  %call113 = tail call ptr @AcquireQuantumMemory(i64 noundef %conv112, i64 noundef 3) #9, !dbg !1827
  call void @llvm.dbg.value(metadata ptr %call113, metadata !1731, metadata !DIExpression()), !dbg !1828
  %cmp114 = icmp eq ptr %call113, null, !dbg !1829
  br i1 %cmp114, label %if.then116, label %for.cond.preheader, !dbg !1831

for.cond.preheader:                               ; preds = %if.then110
  %colors135 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 10
  call void @llvm.dbg.value(metadata i64 0, metadata !1710, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata ptr %call113, metadata !1711, metadata !DIExpression()), !dbg !1735
  %13 = load i64, ptr %colors135, align 8, !dbg !1832, !tbaa !1226
  %cmp136477 = icmp sgt i64 %13, 0, !dbg !1835
  br i1 %cmp136477, label %for.body.lr.ph, label %for.end, !dbg !1836

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %colormap = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 11
  br label %for.body, !dbg !1836

if.then116:                                       ; preds = %if.then110
  %filename118 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1837
  %call120 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 790, i32 noundef 400, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, ptr noundef nonnull %filename118) #8, !dbg !1837
  %adjoin121 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 3, !dbg !1839
  %14 = load i32, ptr %adjoin121, align 4, !dbg !1839, !tbaa !1760
  %cmp122.not = icmp eq i32 %14, 0, !dbg !1839
  br i1 %cmp122.not, label %if.end132, label %while.cond125, !dbg !1837

while.cond125:                                    ; preds = %if.then116, %while.cond125
  %image.addr.2 = phi ptr [ %15, %while.cond125 ], [ %image, %if.then116 ]
  call void @llvm.dbg.value(metadata ptr %image.addr.2, metadata !1704, metadata !DIExpression()), !dbg !1735
  %previous126 = getelementptr inbounds %struct._Image, ptr %image.addr.2, i64 0, i32 67, !dbg !1839
  %15 = load ptr, ptr %previous126, align 8, !dbg !1839, !tbaa !1679
  %cmp127.not = icmp eq ptr %15, null, !dbg !1839
  br i1 %cmp127.not, label %if.end132, label %while.cond125, !dbg !1839, !llvm.loop !1841

if.end132:                                        ; preds = %while.cond125, %if.then116
  %image.addr.3 = phi ptr [ %image, %if.then116 ], [ %image.addr.2, %while.cond125 ]
  call void @llvm.dbg.value(metadata ptr %image.addr.3, metadata !1704, metadata !DIExpression()), !dbg !1735
  %call133 = tail call i32 @CloseBlob(ptr noundef nonnull %image.addr.3) #8, !dbg !1837
  br label %cleanup, !dbg !1837

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.0479 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %q.0478 = phi ptr [ %call113, %for.body.lr.ph ], [ %incdec.ptr146, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.0479, metadata !1710, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata ptr %q.0478, metadata !1711, metadata !DIExpression()), !dbg !1735
  %16 = load ptr, ptr %colormap, align 8, !dbg !1842, !tbaa !1407
  %arrayidx = getelementptr inbounds %struct._PixelPacket, ptr %16, i64 %i.0479, !dbg !1844
  %17 = load i16, ptr %arrayidx, align 2, !dbg !1845, !tbaa !1308
  call void @llvm.dbg.value(metadata i16 %17, metadata !1846, metadata !DIExpression()), !dbg !1852
  %conv.i = zext i16 %17 to i64, !dbg !1854
  %add.i = add nuw nsw i64 %conv.i, 128, !dbg !1855
  %shr.i = lshr i64 %add.i, 8, !dbg !1856
  %sub.i = sub nsw i64 %add.i, %shr.i, !dbg !1857
  %shr3.i = lshr i64 %sub.i, 8, !dbg !1858
  %conv4.i = trunc i64 %shr3.i to i8, !dbg !1859
  %incdec.ptr = getelementptr inbounds i8, ptr %q.0478, i64 1, !dbg !1860
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1711, metadata !DIExpression()), !dbg !1735
  store i8 %conv4.i, ptr %q.0478, align 1, !dbg !1861, !tbaa !1265
  %18 = load ptr, ptr %colormap, align 8, !dbg !1862, !tbaa !1407
  %green = getelementptr inbounds %struct._PixelPacket, ptr %18, i64 %i.0479, i32 1, !dbg !1863
  %19 = load i16, ptr %green, align 2, !dbg !1863, !tbaa !1306
  call void @llvm.dbg.value(metadata i16 %19, metadata !1846, metadata !DIExpression()), !dbg !1864
  %conv.i418 = zext i16 %19 to i64, !dbg !1866
  %add.i419 = add nuw nsw i64 %conv.i418, 128, !dbg !1867
  %shr.i420 = lshr i64 %add.i419, 8, !dbg !1868
  %sub.i421 = sub nsw i64 %add.i419, %shr.i420, !dbg !1869
  %shr3.i422 = lshr i64 %sub.i421, 8, !dbg !1870
  %conv4.i423 = trunc i64 %shr3.i422 to i8, !dbg !1871
  %incdec.ptr142 = getelementptr inbounds i8, ptr %q.0478, i64 2, !dbg !1872
  call void @llvm.dbg.value(metadata ptr %incdec.ptr142, metadata !1711, metadata !DIExpression()), !dbg !1735
  store i8 %conv4.i423, ptr %incdec.ptr, align 1, !dbg !1873, !tbaa !1265
  %20 = load ptr, ptr %colormap, align 8, !dbg !1874, !tbaa !1407
  %red = getelementptr inbounds %struct._PixelPacket, ptr %20, i64 %i.0479, i32 2, !dbg !1875
  %21 = load i16, ptr %red, align 2, !dbg !1875, !tbaa !1304
  call void @llvm.dbg.value(metadata i16 %21, metadata !1846, metadata !DIExpression()), !dbg !1876
  %conv.i424 = zext i16 %21 to i64, !dbg !1878
  %add.i425 = add nuw nsw i64 %conv.i424, 128, !dbg !1879
  %shr.i426 = lshr i64 %add.i425, 8, !dbg !1880
  %sub.i427 = sub nsw i64 %add.i425, %shr.i426, !dbg !1881
  %shr3.i428 = lshr i64 %sub.i427, 8, !dbg !1882
  %conv4.i429 = trunc i64 %shr3.i428 to i8, !dbg !1883
  %incdec.ptr146 = getelementptr inbounds i8, ptr %q.0478, i64 3, !dbg !1884
  call void @llvm.dbg.value(metadata ptr %incdec.ptr146, metadata !1711, metadata !DIExpression()), !dbg !1735
  store i8 %conv4.i429, ptr %incdec.ptr142, align 1, !dbg !1885, !tbaa !1265
  %inc = add nuw nsw i64 %i.0479, 1, !dbg !1886
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1710, metadata !DIExpression()), !dbg !1735
  %22 = load i64, ptr %colors135, align 8, !dbg !1832, !tbaa !1226
  %cmp136 = icmp slt i64 %inc, %22, !dbg !1835
  br i1 %cmp136, label %for.body, label %for.end, !dbg !1836, !llvm.loop !1887

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %mul = mul nuw nsw i64 %conv112, 3, !dbg !1889
  %call150 = tail call i64 @WriteBlob(ptr noundef nonnull %image, i64 noundef %mul, ptr noundef nonnull %call113) #8, !dbg !1890
  %call151 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call113) #8, !dbg !1891
  call void @llvm.dbg.value(metadata ptr %call151, metadata !1731, metadata !DIExpression()), !dbg !1828
  br label %cleanup, !dbg !1892

cleanup:                                          ; preds = %for.end, %if.end132
  %image.addr.4 = phi ptr [ %image.addr.3, %if.end132 ], [ %image, %for.end ]
  call void @llvm.dbg.value(metadata ptr %image.addr.4, metadata !1704, metadata !DIExpression()), !dbg !1735
  br i1 %cmp114, label %cleanup278, label %if.end152

if.end152:                                        ; preds = %cleanup, %if.end105
  %image.addr.5 = phi ptr [ %image.addr.4, %cleanup ], [ %image, %if.end105 ]
  call void @llvm.dbg.value(metadata ptr %image.addr.5, metadata !1704, metadata !DIExpression()), !dbg !1735
  %conv154 = zext i8 %targa_info.sroa.36.0 to i64, !dbg !1893
  %conv156 = and i64 %6, 65535, !dbg !1894
  %mul157 = mul nuw nsw i64 %conv156, %conv154, !dbg !1895
  %div416 = lshr exact i64 %mul157, 3, !dbg !1896
  call void @llvm.dbg.value(metadata i64 %div416, metadata !1712, metadata !DIExpression()), !dbg !1735
  %call159 = tail call ptr @AcquireQuantumMemory(i64 noundef %div416, i64 noundef 1) #9, !dbg !1897
  call void @llvm.dbg.value(metadata ptr %call159, metadata !1730, metadata !DIExpression()), !dbg !1735
  %cmp160 = icmp eq ptr %call159, null, !dbg !1898
  br i1 %cmp160, label %if.then162, label %if.end180, !dbg !1900

if.then162:                                       ; preds = %if.end152
  %exception163 = getelementptr inbounds %struct._Image, ptr %image.addr.5, i64 0, i32 58, !dbg !1901
  %filename164 = getelementptr inbounds %struct._Image, ptr %image.addr.5, i64 0, i32 53, !dbg !1901
  %call166 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception163, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 809, i32 noundef 400, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, ptr noundef nonnull %filename164) #8, !dbg !1901
  %adjoin167 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 3, !dbg !1903
  %23 = load i32, ptr %adjoin167, align 4, !dbg !1903, !tbaa !1760
  %cmp168.not = icmp eq i32 %23, 0, !dbg !1903
  br i1 %cmp168.not, label %if.end178, label %while.cond171, !dbg !1901

while.cond171:                                    ; preds = %if.then162, %while.cond171
  %image.addr.6 = phi ptr [ %24, %while.cond171 ], [ %image.addr.5, %if.then162 ]
  call void @llvm.dbg.value(metadata ptr %image.addr.6, metadata !1704, metadata !DIExpression()), !dbg !1735
  %previous172 = getelementptr inbounds %struct._Image, ptr %image.addr.6, i64 0, i32 67, !dbg !1903
  %24 = load ptr, ptr %previous172, align 8, !dbg !1903, !tbaa !1679
  %cmp173.not = icmp eq ptr %24, null, !dbg !1903
  br i1 %cmp173.not, label %if.end178, label %while.cond171, !dbg !1903, !llvm.loop !1905

if.end178:                                        ; preds = %while.cond171, %if.then162
  %image.addr.7 = phi ptr [ %image.addr.5, %if.then162 ], [ %image.addr.6, %while.cond171 ]
  call void @llvm.dbg.value(metadata ptr %image.addr.7, metadata !1704, metadata !DIExpression()), !dbg !1735
  %call179 = tail call i32 @CloseBlob(ptr noundef nonnull %image.addr.7) #8, !dbg !1901
  br label %cleanup278, !dbg !1901

if.end180:                                        ; preds = %if.end152
  %rows181 = getelementptr inbounds %struct._Image, ptr %image.addr.5, i64 0, i32 8, !dbg !1906
  %25 = load i64, ptr %rows181, align 8, !dbg !1906, !tbaa !1182
  call void @llvm.dbg.value(metadata i64 %25, metadata !1713, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1735
  %columns186 = getelementptr inbounds %struct._Image, ptr %image.addr.5, i64 0, i32 7, !dbg !1908
  %filename.i = getelementptr inbounds %struct._Image, ptr %image.addr.5, i64 0, i32 53, !dbg !1911
  %y.0501 = add i64 %25, -1, !dbg !1925
  call void @llvm.dbg.value(metadata i64 %y.0501, metadata !1713, metadata !DIExpression()), !dbg !1735
  %cmp183502 = icmp sgt i64 %y.0501, -1, !dbg !1926
  br i1 %cmp183502, label %for.body185.lr.ph, label %for.end275, !dbg !1927

for.body185.lr.ph:                                ; preds = %if.end180
  %exception187 = getelementptr inbounds %struct._Image, ptr %image.addr.5, i64 0, i32 58
  %matte230 = getelementptr inbounds %struct._Image, ptr %image.addr.5, i64 0, i32 6
  %colorspace = getelementptr inbounds %struct._Image, ptr %image.addr.5, i64 0, i32 1
  %26 = getelementptr i8, ptr %image.addr.5, i64 4
  %sub.ptr.rhs.cast = ptrtoint ptr %call159 to i64
  %previous263 = getelementptr inbounds %struct._Image, ptr %image.addr.5, i64 0, i32 67
  %progress_monitor.i = getelementptr inbounds %struct._Image, ptr %image.addr.5, i64 0, i32 47
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image.addr.5, i64 0, i32 48
  %27 = load i64, ptr %columns186, align 8, !dbg !1908, !tbaa !1167
  %call188513 = call ptr @GetVirtualPixels(ptr noundef nonnull %image.addr.5, i64 noundef 0, i64 noundef %y.0501, i64 noundef %27, i64 noundef 1, ptr noundef nonnull %exception187) #8, !dbg !1928
  call void @llvm.dbg.value(metadata ptr %call188513, metadata !1708, metadata !DIExpression()), !dbg !1735
  %cmp189514 = icmp eq ptr %call188513, null, !dbg !1929
  br i1 %cmp189514, label %for.end275, label %if.end192, !dbg !1931

if.end192:                                        ; preds = %for.body185.lr.ph, %for.body185.backedge
  %call188517 = phi ptr [ %call188, %for.body185.backedge ], [ %call188513, %for.body185.lr.ph ]
  %y.0503515 = phi i64 [ %y.0503.be, %for.body185.backedge ], [ %y.0501, %for.body185.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %call159, metadata !1711, metadata !DIExpression()), !dbg !1735
  %call193 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %image.addr.5) #8, !dbg !1932
  call void @llvm.dbg.value(metadata ptr %call193, metadata !1707, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i64 0, metadata !1709, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata ptr %call188517, metadata !1708, metadata !DIExpression()), !dbg !1735
  %28 = load i64, ptr %columns186, align 8, !dbg !1933, !tbaa !1167
  %cmp196480 = icmp sgt i64 %28, 0, !dbg !1936
  br i1 %cmp196480, label %for.body198.lr.ph, label %for.end261, !dbg !1937

for.body198.lr.ph:                                ; preds = %if.end192
  %cmp244 = icmp eq ptr %call193, null
  br i1 %cmp108, label %for.body198.lr.ph.split.us, label %for.body198.lr.ph.split, !dbg !1938

for.body198.lr.ph.split.us:                       ; preds = %for.body198.lr.ph
  br i1 %cmp244, label %for.body198.us.us, label %for.body198.us, !dbg !1940

for.body198.us.us:                                ; preds = %for.body198.lr.ph.split.us, %for.body198.us.us
  %x.0482.us.us = phi i64 [ %inc260.us.us, %for.body198.us.us ], [ 0, %for.body198.lr.ph.split.us ]
  %q.1481.us.us = phi ptr [ %incdec.ptr209.us.us, %for.body198.us.us ], [ %call159, %for.body198.lr.ph.split.us ]
  call void @llvm.dbg.value(metadata ptr poison, metadata !1708, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i64 %x.0482.us.us, metadata !1709, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata ptr %q.1481.us.us, metadata !1711, metadata !DIExpression()), !dbg !1735
  %incdec.ptr209.us.us = getelementptr inbounds i8, ptr %q.1481.us.us, i64 1, !dbg !1942
  call void @llvm.dbg.value(metadata ptr %incdec.ptr209.us.us, metadata !1711, metadata !DIExpression()), !dbg !1735
  store i8 0, ptr %q.1481.us.us, align 1, !dbg !1943, !tbaa !1265
  call void @llvm.dbg.value(metadata ptr undef, metadata !1711, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata ptr poison, metadata !1708, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1735
  %inc260.us.us = add nuw nsw i64 %x.0482.us.us, 1, !dbg !1944
  call void @llvm.dbg.value(metadata i64 %inc260.us.us, metadata !1709, metadata !DIExpression()), !dbg !1735
  %29 = load i64, ptr %columns186, align 8, !dbg !1933, !tbaa !1167
  %cmp196.us.us = icmp slt i64 %inc260.us.us, %29, !dbg !1936
  br i1 %cmp196.us.us, label %for.body198.us.us, label %for.end261, !dbg !1937, !llvm.loop !1945

for.body198.us:                                   ; preds = %for.body198.lr.ph.split.us, %for.body198.us
  %x.0482.us = phi i64 [ %inc260.us, %for.body198.us ], [ 0, %for.body198.lr.ph.split.us ]
  %q.1481.us = phi ptr [ %incdec.ptr209.us, %for.body198.us ], [ %call159, %for.body198.lr.ph.split.us ]
  call void @llvm.dbg.value(metadata ptr poison, metadata !1708, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i64 %x.0482.us, metadata !1709, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata ptr %q.1481.us, metadata !1711, metadata !DIExpression()), !dbg !1735
  %add.ptr.us = getelementptr inbounds i16, ptr %call193, i64 %x.0482.us, !dbg !1940
  %30 = load i16, ptr %add.ptr.us, align 2, !dbg !1940, !tbaa !1650
  %conv207.us = trunc i16 %30 to i8, !dbg !1940
  %incdec.ptr209.us = getelementptr inbounds i8, ptr %q.1481.us, i64 1, !dbg !1942
  call void @llvm.dbg.value(metadata ptr %incdec.ptr209.us, metadata !1711, metadata !DIExpression()), !dbg !1735
  store i8 %conv207.us, ptr %q.1481.us, align 1, !dbg !1943, !tbaa !1265
  call void @llvm.dbg.value(metadata ptr undef, metadata !1711, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata ptr poison, metadata !1708, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1735
  %inc260.us = add nuw nsw i64 %x.0482.us, 1, !dbg !1944
  call void @llvm.dbg.value(metadata i64 %inc260.us, metadata !1709, metadata !DIExpression()), !dbg !1735
  %31 = load i64, ptr %columns186, align 8, !dbg !1933, !tbaa !1167
  %cmp196.us = icmp slt i64 %inc260.us, %31, !dbg !1936
  br i1 %cmp196.us, label %for.body198.us, label %for.end261, !dbg !1937, !llvm.loop !1945

for.body198.lr.ph.split:                          ; preds = %for.body198.lr.ph
  br i1 %cmp213, label %for.body198.us489, label %for.body198, !dbg !1947

for.body198.us489:                                ; preds = %for.body198.lr.ph.split, %ClampToQuantum.exit.us
  %p.0485.us490 = phi ptr [ %incdec.ptr258.us495, %ClampToQuantum.exit.us ], [ %call188517, %for.body198.lr.ph.split ]
  %x.0482.us491 = phi i64 [ %inc260.us496, %ClampToQuantum.exit.us ], [ 0, %for.body198.lr.ph.split ]
  %q.1481.us492 = phi ptr [ %incdec.ptr219.us, %ClampToQuantum.exit.us ], [ %call159, %for.body198.lr.ph.split ]
  call void @llvm.dbg.value(metadata ptr %p.0485.us490, metadata !1708, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i64 %x.0482.us491, metadata !1709, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata ptr %q.1481.us492, metadata !1711, metadata !DIExpression()), !dbg !1735
  %image.addr.5.val.us = load i32, ptr %26, align 4, !dbg !1948, !tbaa !1950
  call void @llvm.dbg.value(metadata ptr undef, metadata !1951, metadata !DIExpression()) #8, !dbg !1960
  call void @llvm.dbg.value(metadata ptr %p.0485.us490, metadata !1959, metadata !DIExpression()) #8, !dbg !1960
  %cmp.i.us = icmp eq i32 %image.addr.5.val.us, 2, !dbg !1962
  %red.i.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0485.us490, i64 0, i32 2, !dbg !1960
  %32 = load i16, ptr %red.i.us, align 2, !dbg !1960, !tbaa !1304, !alias.scope !1964
  %conv.i430.us = uitofp i16 %32 to float, !dbg !1960
  br i1 %cmp.i.us, label %GetPixelLuma.exit.us, label %if.end.i.us, !dbg !1967

if.end.i.us:                                      ; preds = %for.body198.us489
  %green.i.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0485.us490, i64 0, i32 1, !dbg !1968
  %33 = load i16, ptr %green.i.us, align 2, !dbg !1968, !tbaa !1306, !alias.scope !1964
  %conv5.i.us = uitofp i16 %33 to float, !dbg !1969
  %mul6.i.us = fmul float %conv5.i.us, 0x3FE6E29300000000, !dbg !1970
  %34 = call float @llvm.fmuladd.f32(float %conv.i430.us, float 0x3FCB384FE0000000, float %mul6.i.us) #8, !dbg !1971
  %35 = load i16, ptr %p.0485.us490, align 2, !dbg !1972, !tbaa !1308, !alias.scope !1964
  %conv8.i.us = uitofp i16 %35 to float, !dbg !1973
  %36 = call float @llvm.fmuladd.f32(float %conv8.i.us, float 0x3FB27AC820000000, float %34) #8, !dbg !1974
  br label %GetPixelLuma.exit.us, !dbg !1975

GetPixelLuma.exit.us:                             ; preds = %if.end.i.us, %for.body198.us489
  %retval.0.i.us = phi float [ %36, %if.end.i.us ], [ %conv.i430.us, %for.body198.us489 ], !dbg !1960
  call void @llvm.dbg.value(metadata float %retval.0.i.us, metadata !1976, metadata !DIExpression()), !dbg !1982
  %cmp.i431.us = fcmp ugt float %retval.0.i.us, 0.000000e+00, !dbg !1984
  br i1 %cmp.i431.us, label %if.end.i432.us, label %ClampToQuantum.exit.us, !dbg !1986

if.end.i432.us:                                   ; preds = %GetPixelLuma.exit.us
  %cmp1.i.us = fcmp ult float %retval.0.i.us, 6.553500e+04, !dbg !1987
  br i1 %cmp1.i.us, label %if.end3.i.us, label %ClampToQuantum.exit.us, !dbg !1989

if.end3.i.us:                                     ; preds = %if.end.i432.us
  %add.i433.us = fadd float %retval.0.i.us, 5.000000e-01, !dbg !1990
  %conv.i434.us = fptoui float %add.i433.us to i16, !dbg !1991
  br label %ClampToQuantum.exit.us, !dbg !1992

ClampToQuantum.exit.us:                           ; preds = %if.end3.i.us, %if.end.i432.us, %GetPixelLuma.exit.us
  %retval.0.i435.us = phi i16 [ %conv.i434.us, %if.end3.i.us ], [ 0, %GetPixelLuma.exit.us ], [ -1, %if.end.i432.us ], !dbg !1982
  call void @llvm.dbg.value(metadata i16 %retval.0.i435.us, metadata !1846, metadata !DIExpression()), !dbg !1993
  %conv.i436.us = zext i16 %retval.0.i435.us to i64, !dbg !1995
  %add.i437.us = add nuw nsw i64 %conv.i436.us, 128, !dbg !1996
  %shr.i438.us = lshr i64 %add.i437.us, 8, !dbg !1997
  %sub.i439.us = sub nsw i64 %add.i437.us, %shr.i438.us, !dbg !1998
  %shr3.i440.us = lshr i64 %sub.i439.us, 8, !dbg !1999
  %conv4.i441.us = trunc i64 %shr3.i440.us to i8, !dbg !2000
  %incdec.ptr219.us = getelementptr inbounds i8, ptr %q.1481.us492, i64 1, !dbg !2001
  call void @llvm.dbg.value(metadata ptr %incdec.ptr219.us, metadata !1711, metadata !DIExpression()), !dbg !1735
  store i8 %conv4.i441.us, ptr %q.1481.us492, align 1, !dbg !2002, !tbaa !1265
  call void @llvm.dbg.value(metadata ptr undef, metadata !1711, metadata !DIExpression()), !dbg !1735
  %incdec.ptr258.us495 = getelementptr inbounds %struct._PixelPacket, ptr %p.0485.us490, i64 1, !dbg !2003
  call void @llvm.dbg.value(metadata ptr %incdec.ptr258.us495, metadata !1708, metadata !DIExpression()), !dbg !1735
  %inc260.us496 = add nuw nsw i64 %x.0482.us491, 1, !dbg !1944
  call void @llvm.dbg.value(metadata i64 %inc260.us496, metadata !1709, metadata !DIExpression()), !dbg !1735
  %37 = load i64, ptr %columns186, align 8, !dbg !1933, !tbaa !1167
  %cmp196.us497 = icmp slt i64 %inc260.us496, %37, !dbg !1936
  br i1 %cmp196.us497, label %for.body198.us489, label %for.end261, !dbg !1937, !llvm.loop !1945

for.body198:                                      ; preds = %for.body198.lr.ph.split, %if.end257
  %p.0485 = phi ptr [ %incdec.ptr258, %if.end257 ], [ %call188517, %for.body198.lr.ph.split ]
  %x.0482 = phi i64 [ %inc260, %if.end257 ], [ 0, %for.body198.lr.ph.split ]
  %q.1481 = phi ptr [ %q.3, %if.end257 ], [ %call159, %for.body198.lr.ph.split ]
  call void @llvm.dbg.value(metadata ptr %p.0485, metadata !1708, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i64 %x.0482, metadata !1709, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata ptr %q.1481, metadata !1711, metadata !DIExpression()), !dbg !1735
  %38 = load i16, ptr %p.0485, align 2, !dbg !2004, !tbaa !1308
  call void @llvm.dbg.value(metadata i16 %38, metadata !1846, metadata !DIExpression()), !dbg !2006
  %conv.i442 = zext i16 %38 to i64, !dbg !2008
  %add.i443 = add nuw nsw i64 %conv.i442, 128, !dbg !2009
  %shr.i444 = lshr i64 %add.i443, 8, !dbg !2010
  %sub.i445 = sub nsw i64 %add.i443, %shr.i444, !dbg !2011
  %shr3.i446 = lshr i64 %sub.i445, 8, !dbg !2012
  %conv4.i447 = trunc i64 %shr3.i446 to i8, !dbg !2013
  %incdec.ptr223 = getelementptr inbounds i8, ptr %q.1481, i64 1, !dbg !2014
  call void @llvm.dbg.value(metadata ptr %incdec.ptr223, metadata !1711, metadata !DIExpression()), !dbg !1735
  store i8 %conv4.i447, ptr %q.1481, align 1, !dbg !2015, !tbaa !1265
  %green224 = getelementptr inbounds %struct._PixelPacket, ptr %p.0485, i64 0, i32 1, !dbg !2016
  %39 = load i16, ptr %green224, align 2, !dbg !2016, !tbaa !1306
  call void @llvm.dbg.value(metadata i16 %39, metadata !1846, metadata !DIExpression()), !dbg !2017
  %conv.i448 = zext i16 %39 to i64, !dbg !2019
  %add.i449 = add nuw nsw i64 %conv.i448, 128, !dbg !2020
  %shr.i450 = lshr i64 %add.i449, 8, !dbg !2021
  %sub.i451 = sub nsw i64 %add.i449, %shr.i450, !dbg !2022
  %shr3.i452 = lshr i64 %sub.i451, 8, !dbg !2023
  %conv4.i453 = trunc i64 %shr3.i452 to i8, !dbg !2024
  %incdec.ptr226 = getelementptr inbounds i8, ptr %q.1481, i64 2, !dbg !2025
  call void @llvm.dbg.value(metadata ptr %incdec.ptr226, metadata !1711, metadata !DIExpression()), !dbg !1735
  store i8 %conv4.i453, ptr %incdec.ptr223, align 1, !dbg !2026, !tbaa !1265
  %red227 = getelementptr inbounds %struct._PixelPacket, ptr %p.0485, i64 0, i32 2, !dbg !2027
  %40 = load i16, ptr %red227, align 2, !dbg !2027, !tbaa !1304
  call void @llvm.dbg.value(metadata i16 %40, metadata !1846, metadata !DIExpression()), !dbg !2028
  %conv.i454 = zext i16 %40 to i64, !dbg !2030
  %add.i455 = add nuw nsw i64 %conv.i454, 128, !dbg !2031
  %shr.i456 = lshr i64 %add.i455, 8, !dbg !2032
  %sub.i457 = sub nsw i64 %add.i455, %shr.i456, !dbg !2033
  %shr3.i458 = lshr i64 %sub.i457, 8, !dbg !2034
  %conv4.i459 = trunc i64 %shr3.i458 to i8, !dbg !2035
  %incdec.ptr229 = getelementptr inbounds i8, ptr %q.1481, i64 3, !dbg !2036
  call void @llvm.dbg.value(metadata ptr %incdec.ptr229, metadata !1711, metadata !DIExpression()), !dbg !1735
  store i8 %conv4.i459, ptr %incdec.ptr226, align 1, !dbg !2037, !tbaa !1265
  %41 = load i32, ptr %matte230, align 8, !dbg !2038, !tbaa !1193
  %cmp231.not = icmp eq i32 %41, 0, !dbg !2040
  br i1 %cmp231.not, label %if.end239, label %if.then233, !dbg !2041

if.then233:                                       ; preds = %for.body198
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %p.0485, i64 0, i32 3, !dbg !2042
  %42 = load i16, ptr %opacity, align 2, !dbg !2042, !tbaa !1271
  %43 = xor i16 %42, -1, !dbg !2042
  call void @llvm.dbg.value(metadata i16 %43, metadata !1846, metadata !DIExpression()), !dbg !2043
  %conv.i460 = zext i16 %43 to i64, !dbg !2045
  %add.i461 = add nuw nsw i64 %conv.i460, 128, !dbg !2046
  %shr.i462 = lshr i64 %add.i461, 8, !dbg !2047
  %sub.i463 = sub nsw i64 %add.i461, %shr.i462, !dbg !2048
  %shr3.i464 = lshr i64 %sub.i463, 8, !dbg !2049
  %conv4.i465 = trunc i64 %shr3.i464 to i8, !dbg !2050
  %incdec.ptr238 = getelementptr inbounds i8, ptr %q.1481, i64 4, !dbg !2051
  call void @llvm.dbg.value(metadata ptr %incdec.ptr238, metadata !1711, metadata !DIExpression()), !dbg !1735
  store i8 %conv4.i465, ptr %incdec.ptr229, align 1, !dbg !2052, !tbaa !1265
  br label %if.end239, !dbg !2053

if.end239:                                        ; preds = %if.then233, %for.body198
  %q.2 = phi ptr [ %incdec.ptr238, %if.then233 ], [ %incdec.ptr229, %for.body198 ], !dbg !2054
  call void @llvm.dbg.value(metadata ptr %q.2, metadata !1711, metadata !DIExpression()), !dbg !1735
  %44 = load i32, ptr %colorspace, align 4, !dbg !2055, !tbaa !1950
  %cmp240 = icmp eq i32 %44, 12, !dbg !2057
  br i1 %cmp240, label %if.then242, label %if.end257, !dbg !2058

if.then242:                                       ; preds = %if.end239
  br i1 %cmp244, label %cond.end250, label %cond.false247, !dbg !2059

cond.false247:                                    ; preds = %if.then242
  %add.ptr243 = getelementptr inbounds i16, ptr %call193, i64 %x.0482, !dbg !2059
  %45 = load i16, ptr %add.ptr243, align 2, !dbg !2059, !tbaa !1650
  br label %cond.end250, !dbg !2059

cond.end250:                                      ; preds = %if.then242, %cond.false247
  %cond251 = phi i16 [ %45, %cond.false247 ], [ 0, %if.then242 ], !dbg !2059
  call void @llvm.dbg.value(metadata i16 %cond251, metadata !1846, metadata !DIExpression()), !dbg !2060
  %conv.i466 = zext i16 %cond251 to i64, !dbg !2062
  %add.i467 = add nuw nsw i64 %conv.i466, 128, !dbg !2063
  %shr.i468 = lshr i64 %add.i467, 8, !dbg !2064
  %sub.i469 = sub nsw i64 %add.i467, %shr.i468, !dbg !2065
  %shr3.i470 = lshr i64 %sub.i469, 8, !dbg !2066
  %conv4.i471 = trunc i64 %shr3.i470 to i8, !dbg !2067
  %incdec.ptr254 = getelementptr inbounds i8, ptr %q.2, i64 1, !dbg !2068
  call void @llvm.dbg.value(metadata ptr %incdec.ptr254, metadata !1711, metadata !DIExpression()), !dbg !1735
  store i8 %conv4.i471, ptr %q.2, align 1, !dbg !2069, !tbaa !1265
  br label %if.end257, !dbg !2070

if.end257:                                        ; preds = %cond.end250, %if.end239
  %q.3 = phi ptr [ %incdec.ptr254, %cond.end250 ], [ %q.2, %if.end239 ], !dbg !2071
  call void @llvm.dbg.value(metadata ptr %q.3, metadata !1711, metadata !DIExpression()), !dbg !1735
  %incdec.ptr258 = getelementptr inbounds %struct._PixelPacket, ptr %p.0485, i64 1, !dbg !2003
  call void @llvm.dbg.value(metadata ptr %incdec.ptr258, metadata !1708, metadata !DIExpression()), !dbg !1735
  %inc260 = add nuw nsw i64 %x.0482, 1, !dbg !1944
  call void @llvm.dbg.value(metadata i64 %inc260, metadata !1709, metadata !DIExpression()), !dbg !1735
  %46 = load i64, ptr %columns186, align 8, !dbg !1933, !tbaa !1167
  %cmp196 = icmp slt i64 %inc260, %46, !dbg !1936
  br i1 %cmp196, label %for.body198, label %for.end261, !dbg !1937, !llvm.loop !1945

for.end261:                                       ; preds = %if.end257, %ClampToQuantum.exit.us, %for.body198.us, %for.body198.us.us, %if.end192
  %q.1.lcssa = phi ptr [ %call159, %if.end192 ], [ %incdec.ptr209.us.us, %for.body198.us.us ], [ %incdec.ptr209.us, %for.body198.us ], [ %incdec.ptr219.us, %ClampToQuantum.exit.us ], [ %q.3, %if.end257 ], !dbg !2072
  %sub.ptr.lhs.cast = ptrtoint ptr %q.1.lcssa to i64, !dbg !2073
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2073
  %call262 = call i64 @WriteBlob(ptr noundef nonnull %image.addr.5, i64 noundef %sub.ptr.sub, ptr noundef nonnull %call159) #8, !dbg !2074
  %47 = load ptr, ptr %previous263, align 8, !dbg !2075, !tbaa !1679
  %cmp264 = icmp eq ptr %47, null, !dbg !2076
  br i1 %cmp264, label %if.then266, label %for.inc274, !dbg !2077

if.then266:                                       ; preds = %for.end261
  %48 = load i64, ptr %rows181, align 8, !dbg !2078, !tbaa !1182
  call void @llvm.dbg.value(metadata ptr %image.addr.5, metadata !1917, metadata !DIExpression()) #8, !dbg !2079
  call void @llvm.dbg.value(metadata ptr @SaveImageTag, metadata !1918, metadata !DIExpression()) #8, !dbg !2079
  call void @llvm.dbg.value(metadata i64 %y.0503515, metadata !1919, metadata !DIExpression()) #8, !dbg !2079
  call void @llvm.dbg.value(metadata i64 %48, metadata !1920, metadata !DIExpression()) #8, !dbg !2079
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #8, !dbg !2080
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1921, metadata !DIExpression()) #8, !dbg !2081
  %49 = load ptr, ptr %progress_monitor.i, align 8, !dbg !2082, !tbaa !2084
  %cmp.i472 = icmp eq ptr %49, null, !dbg !2085
  br i1 %cmp.i472, label %SetImageProgress.exit.thread, label %SetImageProgress.exit, !dbg !2086

SetImageProgress.exit.thread:                     ; preds = %if.then266
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #8, !dbg !2087
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !1706, metadata !DIExpression()), !dbg !1735
  br label %for.inc274, !dbg !2088

SetImageProgress.exit:                            ; preds = %if.then266
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.17, ptr noundef nonnull @SaveImageTag, ptr noundef nonnull %filename.i) #8, !dbg !2089
  %50 = load ptr, ptr %progress_monitor.i, align 8, !dbg !2090, !tbaa !2084
  %51 = load ptr, ptr %client_data.i, align 8, !dbg !2091, !tbaa !2092
  %call4.i = call i32 %50(ptr noundef nonnull %message.i, i64 noundef %y.0503515, i64 noundef %48, ptr noundef %51) #8, !dbg !2093
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #8, !dbg !2087
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !1706, metadata !DIExpression()), !dbg !1735
  %cmp269 = icmp ne i32 %call4.i, 0, !dbg !2094
  %y.0 = add i64 %y.0503515, -1
  %cmp183 = icmp sgt i64 %y.0, -1
  %or.cond = and i1 %cmp269, %cmp183, !dbg !2088
  call void @llvm.dbg.value(metadata i64 %y.0, metadata !1713, metadata !DIExpression()), !dbg !1735
  br i1 %or.cond, label %for.body185.backedge, label %for.end275, !dbg !2088

for.inc274:                                       ; preds = %SetImageProgress.exit.thread, %for.end261
  call void @llvm.dbg.value(metadata i64 %y.0503515, metadata !1713, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1735
  %y.0.old = add i64 %y.0503515, -1, !dbg !1925
  call void @llvm.dbg.value(metadata i64 %y.0.old, metadata !1713, metadata !DIExpression()), !dbg !1735
  %cmp183.old = icmp sgt i64 %y.0.old, -1, !dbg !1926
  br i1 %cmp183.old, label %for.body185.backedge, label %for.end275, !dbg !1927

for.body185.backedge:                             ; preds = %for.inc274, %SetImageProgress.exit
  %y.0503.be = phi i64 [ %y.0.old, %for.inc274 ], [ %y.0, %SetImageProgress.exit ]
  %52 = load i64, ptr %columns186, align 8, !dbg !1908, !tbaa !1167
  %call188 = call ptr @GetVirtualPixels(ptr noundef nonnull %image.addr.5, i64 noundef 0, i64 noundef %y.0503.be, i64 noundef %52, i64 noundef 1, ptr noundef nonnull %exception187) #8, !dbg !1928
  call void @llvm.dbg.value(metadata ptr %call188, metadata !1708, metadata !DIExpression()), !dbg !1735
  %cmp189 = icmp eq ptr %call188, null, !dbg !1929
  br i1 %cmp189, label %for.end275, label %if.end192, !dbg !1931, !llvm.loop !2096

for.end275:                                       ; preds = %SetImageProgress.exit, %for.body185.backedge, %for.inc274, %for.body185.lr.ph, %if.end180
  %call276 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call159) #8, !dbg !2098
  call void @llvm.dbg.value(metadata ptr %call276, metadata !1730, metadata !DIExpression()), !dbg !1735
  %call277 = call i32 @CloseBlob(ptr noundef nonnull %image.addr.5) #8, !dbg !2099
  br label %cleanup278, !dbg !2100

cleanup278:                                       ; preds = %if.end, %cleanup, %for.end275, %if.end178, %if.end16
  %retval.1 = phi i32 [ 0, %if.end16 ], [ 0, %if.end178 ], [ 1, %for.end275 ], [ 0, %cleanup ], [ 0, %if.end ], !dbg !1735
  ret i32 %retval.1, !dbg !2101
}

declare !dbg !2102 ptr @ConstantString(ptr noundef) local_unnamed_addr #3

declare !dbg !2106 ptr @RegisterMagickInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @UnregisterTGAImage() local_unnamed_addr #0 !dbg !2109 {
entry:
  %call = tail call i32 @UnregisterMagickInfo(ptr noundef nonnull @.str) #8, !dbg !2112
  %call1 = tail call i32 @UnregisterMagickInfo(ptr noundef nonnull @.str.2) #8, !dbg !2113
  %call2 = tail call i32 @UnregisterMagickInfo(ptr noundef nonnull @.str.3) #8, !dbg !2114
  %call3 = tail call i32 @UnregisterMagickInfo(ptr noundef nonnull @.str.4) #8, !dbg !2115
  ret void, !dbg !2116
}

declare !dbg !2117 i32 @UnregisterMagickInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !2120 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !2125 ptr @AcquireImage(ptr noundef) local_unnamed_addr #3

declare !dbg !2128 i32 @OpenBlob(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2133 ptr @DestroyImageList(ptr noundef) local_unnamed_addr #3

declare !dbg !2137 i64 @ReadBlob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2140 i32 @ReadBlobByte(ptr noundef) local_unnamed_addr #3

declare !dbg !2143 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !2147 i32 @CloseBlob(ptr noundef) local_unnamed_addr #3

declare !dbg !2150 zeroext i16 @ReadBlobLSBShort(ptr noundef) local_unnamed_addr #3

declare !dbg !2153 i32 @EOFBlob(ptr noundef) local_unnamed_addr #3

declare !dbg !2156 i32 @AcquireImageColormap(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare !dbg !2160 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !2164 i32 @SetImageProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2168 ptr @DestroyString(ptr noundef) local_unnamed_addr #3

declare !dbg !2171 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !2174 ptr @QueueAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2179 ptr @GetAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

declare !dbg !2182 i32 @SyncAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %image, ptr noundef %tag, i64 noundef %offset, i64 noundef %extent) unnamed_addr #5 !dbg !1912 {
entry:
  %message = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !1917, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata ptr %tag, metadata !1918, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i64 %offset, metadata !1919, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i64 %extent, metadata !1920, metadata !DIExpression()), !dbg !2185
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message) #8, !dbg !2186
  call void @llvm.dbg.declare(metadata ptr %message, metadata !1921, metadata !DIExpression()), !dbg !2187
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47, !dbg !2188
  %0 = load ptr, ptr %progress_monitor, align 8, !dbg !2188, !tbaa !2084
  %cmp = icmp eq ptr %0, null, !dbg !2189
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2190

if.end:                                           ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2191
  %call = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message, i64 noundef 4096, ptr noundef nonnull @.str.17, ptr noundef %tag, ptr noundef nonnull %filename) #8, !dbg !2192
  %1 = load ptr, ptr %progress_monitor, align 8, !dbg !2193, !tbaa !2084
  %client_data = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48, !dbg !2194
  %2 = load ptr, ptr %client_data, align 8, !dbg !2194, !tbaa !2092
  %call4 = call i32 %1(ptr noundef nonnull %message, i64 noundef %offset, i64 noundef %extent, ptr noundef %2) #8, !dbg !2195
  br label %cleanup, !dbg !2196

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call4, %if.end ], [ 1, %entry ], !dbg !2185
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message) #8, !dbg !2197
  ret i32 %retval.0, !dbg !2197
}

declare !dbg !2198 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #6

declare !dbg !2202 ptr @GetFirstImageInList(ptr noundef) local_unnamed_addr #3

declare !dbg !2205 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !2211 i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2215 ptr @GetImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

declare !dbg !2218 i32 @IsGrayImage(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2222 i64 @WriteBlobByte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare !dbg !2225 i64 @WriteBlobLSBShort(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

declare !dbg !2229 i64 @WriteBlob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2232 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

declare !dbg !2235 ptr @GetVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2238 ptr @GetVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0,1) }
attributes #10 = { nounwind readnone willreturn }
attributes #11 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!858, !859, !860, !861, !862, !863}
!llvm.ident = !{!864}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !485, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/coders/tga.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "15e59979782d13cd88d7288c680d9312")
!2 = !{!3, !29, !41, !46, !56, !62, !67, !104, !118, !151, !173, !178, !186, !221, !236, !307, !315, !321, !394, !411, !423, !444, !450, !475}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 25, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/538.imagick_r/src/magick/compress.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "359677d10ff2e6d05d86b0a6c5af7465")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!7 = !DIEnumerator(name: "UndefinedCompression", value: 0)
!8 = !DIEnumerator(name: "NoCompression", value: 1)
!9 = !DIEnumerator(name: "BZipCompression", value: 2)
!10 = !DIEnumerator(name: "DXT1Compression", value: 3)
!11 = !DIEnumerator(name: "DXT3Compression", value: 4)
!12 = !DIEnumerator(name: "DXT5Compression", value: 5)
!13 = !DIEnumerator(name: "FaxCompression", value: 6)
!14 = !DIEnumerator(name: "Group4Compression", value: 7)
!15 = !DIEnumerator(name: "JPEGCompression", value: 8)
!16 = !DIEnumerator(name: "JPEG2000Compression", value: 9)
!17 = !DIEnumerator(name: "LosslessJPEGCompression", value: 10)
!18 = !DIEnumerator(name: "LZWCompression", value: 11)
!19 = !DIEnumerator(name: "RLECompression", value: 12)
!20 = !DIEnumerator(name: "ZipCompression", value: 13)
!21 = !DIEnumerator(name: "ZipSCompression", value: 14)
!22 = !DIEnumerator(name: "PizCompression", value: 15)
!23 = !DIEnumerator(name: "Pxr24Compression", value: 16)
!24 = !DIEnumerator(name: "B44Compression", value: 17)
!25 = !DIEnumerator(name: "B44ACompression", value: 18)
!26 = !DIEnumerator(name: "LZMACompression", value: 19)
!27 = !DIEnumerator(name: "JBIG1Compression", value: 20)
!28 = !DIEnumerator(name: "JBIG2Compression", value: 21)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 75, baseType: !5, size: 32, elements: !31)
!30 = !DIFile(filename: "apps/538.imagick_r/src/magick/image.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9408eec9abffe54016aa20ae735786b")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40}
!32 = !DIEnumerator(name: "UndefinedOrientation", value: 0)
!33 = !DIEnumerator(name: "TopLeftOrientation", value: 1)
!34 = !DIEnumerator(name: "TopRightOrientation", value: 2)
!35 = !DIEnumerator(name: "BottomRightOrientation", value: 3)
!36 = !DIEnumerator(name: "BottomLeftOrientation", value: 4)
!37 = !DIEnumerator(name: "LeftTopOrientation", value: 5)
!38 = !DIEnumerator(name: "RightTopOrientation", value: 6)
!39 = !DIEnumerator(name: "RightBottomOrientation", value: 7)
!40 = !DIEnumerator(name: "LeftBottomOrientation", value: 8)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !42, line: 211, baseType: !5, size: 32, elements: !43)
!42 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!43 = !{!44, !45}
!44 = !DIEnumerator(name: "MagickFalse", value: 0)
!45 = !DIEnumerator(name: "MagickTrue", value: 1)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 63, baseType: !5, size: 32, elements: !47)
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55}
!48 = !DIEnumerator(name: "UndefinedInterlace", value: 0)
!49 = !DIEnumerator(name: "NoInterlace", value: 1)
!50 = !DIEnumerator(name: "LineInterlace", value: 2)
!51 = !DIEnumerator(name: "PlaneInterlace", value: 3)
!52 = !DIEnumerator(name: "PartitionInterlace", value: 4)
!53 = !DIEnumerator(name: "GIFInterlace", value: 5)
!54 = !DIEnumerator(name: "JPEGInterlace", value: 6)
!55 = !DIEnumerator(name: "PNGInterlace", value: 7)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !57, line: 30, baseType: !5, size: 32, elements: !58)
!57 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f6eaed79d9a4eaf712cd066f6ff022a")
!58 = !{!59, !60, !61}
!59 = !DIEnumerator(name: "UndefinedEndian", value: 0)
!60 = !DIEnumerator(name: "LSBEndian", value: 1)
!61 = !DIEnumerator(name: "MSBEndian", value: 2)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 88, baseType: !5, size: 32, elements: !63)
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "UndefinedResolution", value: 0)
!65 = !DIEnumerator(name: "PixelsPerInchResolution", value: 1)
!66 = !DIEnumerator(name: "PixelsPerCentimeterResolution", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !68, line: 25, baseType: !5, size: 32, elements: !69)
!68 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4f032944b177fc61244445fe3a234334")
!69 = !{!70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103}
!70 = !DIEnumerator(name: "UndefinedColorspace", value: 0)
!71 = !DIEnumerator(name: "RGBColorspace", value: 1)
!72 = !DIEnumerator(name: "GRAYColorspace", value: 2)
!73 = !DIEnumerator(name: "TransparentColorspace", value: 3)
!74 = !DIEnumerator(name: "OHTAColorspace", value: 4)
!75 = !DIEnumerator(name: "LabColorspace", value: 5)
!76 = !DIEnumerator(name: "XYZColorspace", value: 6)
!77 = !DIEnumerator(name: "YCbCrColorspace", value: 7)
!78 = !DIEnumerator(name: "YCCColorspace", value: 8)
!79 = !DIEnumerator(name: "YIQColorspace", value: 9)
!80 = !DIEnumerator(name: "YPbPrColorspace", value: 10)
!81 = !DIEnumerator(name: "YUVColorspace", value: 11)
!82 = !DIEnumerator(name: "CMYKColorspace", value: 12)
!83 = !DIEnumerator(name: "sRGBColorspace", value: 13)
!84 = !DIEnumerator(name: "HSBColorspace", value: 14)
!85 = !DIEnumerator(name: "HSLColorspace", value: 15)
!86 = !DIEnumerator(name: "HWBColorspace", value: 16)
!87 = !DIEnumerator(name: "Rec601LumaColorspace", value: 17)
!88 = !DIEnumerator(name: "Rec601YCbCrColorspace", value: 18)
!89 = !DIEnumerator(name: "Rec709LumaColorspace", value: 19)
!90 = !DIEnumerator(name: "Rec709YCbCrColorspace", value: 20)
!91 = !DIEnumerator(name: "LogColorspace", value: 21)
!92 = !DIEnumerator(name: "CMYColorspace", value: 22)
!93 = !DIEnumerator(name: "LuvColorspace", value: 23)
!94 = !DIEnumerator(name: "HCLColorspace", value: 24)
!95 = !DIEnumerator(name: "LCHColorspace", value: 25)
!96 = !DIEnumerator(name: "LMSColorspace", value: 26)
!97 = !DIEnumerator(name: "LCHabColorspace", value: 27)
!98 = !DIEnumerator(name: "LCHuvColorspace", value: 28)
!99 = !DIEnumerator(name: "scRGBColorspace", value: 29)
!100 = !DIEnumerator(name: "HSIColorspace", value: 30)
!101 = !DIEnumerator(name: "HSVColorspace", value: 31)
!102 = !DIEnumerator(name: "HCLpColorspace", value: 32)
!103 = !DIEnumerator(name: "YDbDrColorspace", value: 33)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 47, baseType: !5, size: 32, elements: !105)
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117}
!106 = !DIEnumerator(name: "UndefinedType", value: 0)
!107 = !DIEnumerator(name: "BilevelType", value: 1)
!108 = !DIEnumerator(name: "GrayscaleType", value: 2)
!109 = !DIEnumerator(name: "GrayscaleMatteType", value: 3)
!110 = !DIEnumerator(name: "PaletteType", value: 4)
!111 = !DIEnumerator(name: "PaletteMatteType", value: 5)
!112 = !DIEnumerator(name: "TrueColorType", value: 6)
!113 = !DIEnumerator(name: "TrueColorMatteType", value: 7)
!114 = !DIEnumerator(name: "ColorSeparationType", value: 8)
!115 = !DIEnumerator(name: "ColorSeparationMatteType", value: 9)
!116 = !DIEnumerator(name: "OptimizeType", value: 10)
!117 = !DIEnumerator(name: "PaletteBilevelMatteType", value: 11)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !119, line: 27, baseType: !5, size: 32, elements: !120)
!119 = !DIFile(filename: "apps/538.imagick_r/src/magick/effect.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "85233add4591bd6d6001c51d4fa6a546")
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150}
!121 = !DIEnumerator(name: "UndefinedPreview", value: 0)
!122 = !DIEnumerator(name: "RotatePreview", value: 1)
!123 = !DIEnumerator(name: "ShearPreview", value: 2)
!124 = !DIEnumerator(name: "RollPreview", value: 3)
!125 = !DIEnumerator(name: "HuePreview", value: 4)
!126 = !DIEnumerator(name: "SaturationPreview", value: 5)
!127 = !DIEnumerator(name: "BrightnessPreview", value: 6)
!128 = !DIEnumerator(name: "GammaPreview", value: 7)
!129 = !DIEnumerator(name: "SpiffPreview", value: 8)
!130 = !DIEnumerator(name: "DullPreview", value: 9)
!131 = !DIEnumerator(name: "GrayscalePreview", value: 10)
!132 = !DIEnumerator(name: "QuantizePreview", value: 11)
!133 = !DIEnumerator(name: "DespecklePreview", value: 12)
!134 = !DIEnumerator(name: "ReduceNoisePreview", value: 13)
!135 = !DIEnumerator(name: "AddNoisePreview", value: 14)
!136 = !DIEnumerator(name: "SharpenPreview", value: 15)
!137 = !DIEnumerator(name: "BlurPreview", value: 16)
!138 = !DIEnumerator(name: "ThresholdPreview", value: 17)
!139 = !DIEnumerator(name: "EdgeDetectPreview", value: 18)
!140 = !DIEnumerator(name: "SpreadPreview", value: 19)
!141 = !DIEnumerator(name: "SolarizePreview", value: 20)
!142 = !DIEnumerator(name: "ShadePreview", value: 21)
!143 = !DIEnumerator(name: "RaisePreview", value: 22)
!144 = !DIEnumerator(name: "SegmentPreview", value: 23)
!145 = !DIEnumerator(name: "SwirlPreview", value: 24)
!146 = !DIEnumerator(name: "ImplodePreview", value: 25)
!147 = !DIEnumerator(name: "WavePreview", value: 26)
!148 = !DIEnumerator(name: "OilPaintPreview", value: 27)
!149 = !DIEnumerator(name: "CharcoalDrawingPreview", value: 28)
!150 = !DIEnumerator(name: "JPEGPreview", value: 29)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !42, line: 177, baseType: !5, size: 32, elements: !152)
!152 = !{!153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172}
!153 = !DIEnumerator(name: "UndefinedChannel", value: 0)
!154 = !DIEnumerator(name: "RedChannel", value: 1)
!155 = !DIEnumerator(name: "GrayChannel", value: 1)
!156 = !DIEnumerator(name: "CyanChannel", value: 1)
!157 = !DIEnumerator(name: "GreenChannel", value: 2)
!158 = !DIEnumerator(name: "MagentaChannel", value: 2)
!159 = !DIEnumerator(name: "BlueChannel", value: 4)
!160 = !DIEnumerator(name: "YellowChannel", value: 4)
!161 = !DIEnumerator(name: "AlphaChannel", value: 8)
!162 = !DIEnumerator(name: "OpacityChannel", value: 8)
!163 = !DIEnumerator(name: "MatteChannel", value: 8)
!164 = !DIEnumerator(name: "BlackChannel", value: 32)
!165 = !DIEnumerator(name: "IndexChannel", value: 32)
!166 = !DIEnumerator(name: "CompositeChannels", value: 47)
!167 = !DIEnumerator(name: "AllChannels", value: 134217727)
!168 = !DIEnumerator(name: "TrueAlphaChannel", value: 64)
!169 = !DIEnumerator(name: "RGBChannels", value: 128)
!170 = !DIEnumerator(name: "GrayChannels", value: 128)
!171 = !DIEnumerator(name: "SyncChannels", value: 256)
!172 = !DIEnumerator(name: "DefaultChannels", value: 134217719)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !42, line: 204, baseType: !5, size: 32, elements: !174)
!174 = !{!175, !176, !177}
!175 = !DIEnumerator(name: "UndefinedClass", value: 0)
!176 = !DIEnumerator(name: "DirectClass", value: 1)
!177 = !DIEnumerator(name: "PseudoClass", value: 2)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !179, line: 42, baseType: !5, size: 32, elements: !180)
!179 = !DIFile(filename: "apps/538.imagick_r/src/magick/profile.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fb61c1ae348c42a2b68ac081d4b39ee3")
!180 = !{!181, !182, !183, !184, !185}
!181 = !DIEnumerator(name: "UndefinedIntent", value: 0)
!182 = !DIEnumerator(name: "SaturationIntent", value: 1)
!183 = !DIEnumerator(name: "PerceptualIntent", value: 2)
!184 = !DIEnumerator(name: "AbsoluteIntent", value: 3)
!185 = !DIEnumerator(name: "RelativeIntent", value: 4)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !187, line: 32, baseType: !5, size: 32, elements: !188)
!187 = !DIFile(filename: "apps/538.imagick_r/src/magick/resample.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "722fed6aaf07c122ede72839e4dadc42")
!188 = !{!189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220}
!189 = !DIEnumerator(name: "UndefinedFilter", value: 0)
!190 = !DIEnumerator(name: "PointFilter", value: 1)
!191 = !DIEnumerator(name: "BoxFilter", value: 2)
!192 = !DIEnumerator(name: "TriangleFilter", value: 3)
!193 = !DIEnumerator(name: "HermiteFilter", value: 4)
!194 = !DIEnumerator(name: "HanningFilter", value: 5)
!195 = !DIEnumerator(name: "HammingFilter", value: 6)
!196 = !DIEnumerator(name: "BlackmanFilter", value: 7)
!197 = !DIEnumerator(name: "GaussianFilter", value: 8)
!198 = !DIEnumerator(name: "QuadraticFilter", value: 9)
!199 = !DIEnumerator(name: "CubicFilter", value: 10)
!200 = !DIEnumerator(name: "CatromFilter", value: 11)
!201 = !DIEnumerator(name: "MitchellFilter", value: 12)
!202 = !DIEnumerator(name: "JincFilter", value: 13)
!203 = !DIEnumerator(name: "SincFilter", value: 14)
!204 = !DIEnumerator(name: "SincFastFilter", value: 15)
!205 = !DIEnumerator(name: "KaiserFilter", value: 16)
!206 = !DIEnumerator(name: "WelshFilter", value: 17)
!207 = !DIEnumerator(name: "ParzenFilter", value: 18)
!208 = !DIEnumerator(name: "BohmanFilter", value: 19)
!209 = !DIEnumerator(name: "BartlettFilter", value: 20)
!210 = !DIEnumerator(name: "LagrangeFilter", value: 21)
!211 = !DIEnumerator(name: "LanczosFilter", value: 22)
!212 = !DIEnumerator(name: "LanczosSharpFilter", value: 23)
!213 = !DIEnumerator(name: "Lanczos2Filter", value: 24)
!214 = !DIEnumerator(name: "Lanczos2SharpFilter", value: 25)
!215 = !DIEnumerator(name: "RobidouxFilter", value: 26)
!216 = !DIEnumerator(name: "RobidouxSharpFilter", value: 27)
!217 = !DIEnumerator(name: "CosineFilter", value: 28)
!218 = !DIEnumerator(name: "SplineFilter", value: 29)
!219 = !DIEnumerator(name: "LanczosRadiusFilter", value: 30)
!220 = !DIEnumerator(name: "SentinelFilter", value: 31)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !222, line: 77, baseType: !5, size: 32, elements: !223)
!222 = !DIFile(filename: "apps/538.imagick_r/src/magick/geometry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "889bed117eb2a2fce6e2622bd130bcd2")
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235}
!224 = !DIEnumerator(name: "UndefinedGravity", value: 0)
!225 = !DIEnumerator(name: "ForgetGravity", value: 0)
!226 = !DIEnumerator(name: "NorthWestGravity", value: 1)
!227 = !DIEnumerator(name: "NorthGravity", value: 2)
!228 = !DIEnumerator(name: "NorthEastGravity", value: 3)
!229 = !DIEnumerator(name: "WestGravity", value: 4)
!230 = !DIEnumerator(name: "CenterGravity", value: 5)
!231 = !DIEnumerator(name: "EastGravity", value: 6)
!232 = !DIEnumerator(name: "SouthWestGravity", value: 7)
!233 = !DIEnumerator(name: "SouthGravity", value: 8)
!234 = !DIEnumerator(name: "SouthEastGravity", value: 9)
!235 = !DIEnumerator(name: "StaticGravity", value: 10)
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !237, line: 25, baseType: !5, size: 32, elements: !238)
!237 = !DIFile(filename: "apps/538.imagick_r/src/magick/composite.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "837959ddb1dc628f80f1f9b5cdda1fb4")
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306}
!239 = !DIEnumerator(name: "UndefinedCompositeOp", value: 0)
!240 = !DIEnumerator(name: "NoCompositeOp", value: 1)
!241 = !DIEnumerator(name: "ModulusAddCompositeOp", value: 2)
!242 = !DIEnumerator(name: "AtopCompositeOp", value: 3)
!243 = !DIEnumerator(name: "BlendCompositeOp", value: 4)
!244 = !DIEnumerator(name: "BumpmapCompositeOp", value: 5)
!245 = !DIEnumerator(name: "ChangeMaskCompositeOp", value: 6)
!246 = !DIEnumerator(name: "ClearCompositeOp", value: 7)
!247 = !DIEnumerator(name: "ColorBurnCompositeOp", value: 8)
!248 = !DIEnumerator(name: "ColorDodgeCompositeOp", value: 9)
!249 = !DIEnumerator(name: "ColorizeCompositeOp", value: 10)
!250 = !DIEnumerator(name: "CopyBlackCompositeOp", value: 11)
!251 = !DIEnumerator(name: "CopyBlueCompositeOp", value: 12)
!252 = !DIEnumerator(name: "CopyCompositeOp", value: 13)
!253 = !DIEnumerator(name: "CopyCyanCompositeOp", value: 14)
!254 = !DIEnumerator(name: "CopyGreenCompositeOp", value: 15)
!255 = !DIEnumerator(name: "CopyMagentaCompositeOp", value: 16)
!256 = !DIEnumerator(name: "CopyOpacityCompositeOp", value: 17)
!257 = !DIEnumerator(name: "CopyRedCompositeOp", value: 18)
!258 = !DIEnumerator(name: "CopyYellowCompositeOp", value: 19)
!259 = !DIEnumerator(name: "DarkenCompositeOp", value: 20)
!260 = !DIEnumerator(name: "DstAtopCompositeOp", value: 21)
!261 = !DIEnumerator(name: "DstCompositeOp", value: 22)
!262 = !DIEnumerator(name: "DstInCompositeOp", value: 23)
!263 = !DIEnumerator(name: "DstOutCompositeOp", value: 24)
!264 = !DIEnumerator(name: "DstOverCompositeOp", value: 25)
!265 = !DIEnumerator(name: "DifferenceCompositeOp", value: 26)
!266 = !DIEnumerator(name: "DisplaceCompositeOp", value: 27)
!267 = !DIEnumerator(name: "DissolveCompositeOp", value: 28)
!268 = !DIEnumerator(name: "ExclusionCompositeOp", value: 29)
!269 = !DIEnumerator(name: "HardLightCompositeOp", value: 30)
!270 = !DIEnumerator(name: "HueCompositeOp", value: 31)
!271 = !DIEnumerator(name: "InCompositeOp", value: 32)
!272 = !DIEnumerator(name: "LightenCompositeOp", value: 33)
!273 = !DIEnumerator(name: "LinearLightCompositeOp", value: 34)
!274 = !DIEnumerator(name: "LuminizeCompositeOp", value: 35)
!275 = !DIEnumerator(name: "MinusDstCompositeOp", value: 36)
!276 = !DIEnumerator(name: "ModulateCompositeOp", value: 37)
!277 = !DIEnumerator(name: "MultiplyCompositeOp", value: 38)
!278 = !DIEnumerator(name: "OutCompositeOp", value: 39)
!279 = !DIEnumerator(name: "OverCompositeOp", value: 40)
!280 = !DIEnumerator(name: "OverlayCompositeOp", value: 41)
!281 = !DIEnumerator(name: "PlusCompositeOp", value: 42)
!282 = !DIEnumerator(name: "ReplaceCompositeOp", value: 43)
!283 = !DIEnumerator(name: "SaturateCompositeOp", value: 44)
!284 = !DIEnumerator(name: "ScreenCompositeOp", value: 45)
!285 = !DIEnumerator(name: "SoftLightCompositeOp", value: 46)
!286 = !DIEnumerator(name: "SrcAtopCompositeOp", value: 47)
!287 = !DIEnumerator(name: "SrcCompositeOp", value: 48)
!288 = !DIEnumerator(name: "SrcInCompositeOp", value: 49)
!289 = !DIEnumerator(name: "SrcOutCompositeOp", value: 50)
!290 = !DIEnumerator(name: "SrcOverCompositeOp", value: 51)
!291 = !DIEnumerator(name: "ModulusSubtractCompositeOp", value: 52)
!292 = !DIEnumerator(name: "ThresholdCompositeOp", value: 53)
!293 = !DIEnumerator(name: "XorCompositeOp", value: 54)
!294 = !DIEnumerator(name: "DivideDstCompositeOp", value: 55)
!295 = !DIEnumerator(name: "DistortCompositeOp", value: 56)
!296 = !DIEnumerator(name: "BlurCompositeOp", value: 57)
!297 = !DIEnumerator(name: "PegtopLightCompositeOp", value: 58)
!298 = !DIEnumerator(name: "VividLightCompositeOp", value: 59)
!299 = !DIEnumerator(name: "PinLightCompositeOp", value: 60)
!300 = !DIEnumerator(name: "LinearDodgeCompositeOp", value: 61)
!301 = !DIEnumerator(name: "LinearBurnCompositeOp", value: 62)
!302 = !DIEnumerator(name: "MathematicsCompositeOp", value: 63)
!303 = !DIEnumerator(name: "DivideSrcCompositeOp", value: 64)
!304 = !DIEnumerator(name: "MinusSrcCompositeOp", value: 65)
!305 = !DIEnumerator(name: "DarkenIntensityCompositeOp", value: 66)
!306 = !DIEnumerator(name: "LightenIntensityCompositeOp", value: 67)
!307 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !308, line: 25, baseType: !5, size: 32, elements: !309)
!308 = !DIFile(filename: "apps/538.imagick_r/src/magick/layer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9d504d6f7e210e092dfcf0dd62bc2dbe")
!309 = !{!310, !311, !312, !313, !314}
!310 = !DIEnumerator(name: "UnrecognizedDispose", value: 0)
!311 = !DIEnumerator(name: "UndefinedDispose", value: 0)
!312 = !DIEnumerator(name: "NoneDispose", value: 1)
!313 = !DIEnumerator(name: "BackgroundDispose", value: 2)
!314 = !DIEnumerator(name: "PreviousDispose", value: 3)
!315 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !316, line: 25, baseType: !5, size: 32, elements: !317)
!316 = !DIFile(filename: "apps/538.imagick_r/src/magick/timer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "28e2e01a3aeaa6ec566b3ffbac970563")
!317 = !{!318, !319, !320}
!318 = !DIEnumerator(name: "UndefinedTimerState", value: 0)
!319 = !DIEnumerator(name: "StoppedTimerState", value: 1)
!320 = !DIEnumerator(name: "RunningTimerState", value: 2)
!321 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !322, line: 28, baseType: !5, size: 32, elements: !323)
!322 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!323 = !{!324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393}
!324 = !DIEnumerator(name: "UndefinedException", value: 0)
!325 = !DIEnumerator(name: "WarningException", value: 300)
!326 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!327 = !DIEnumerator(name: "TypeWarning", value: 305)
!328 = !DIEnumerator(name: "OptionWarning", value: 310)
!329 = !DIEnumerator(name: "DelegateWarning", value: 315)
!330 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!331 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!332 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!333 = !DIEnumerator(name: "BlobWarning", value: 335)
!334 = !DIEnumerator(name: "StreamWarning", value: 340)
!335 = !DIEnumerator(name: "CacheWarning", value: 345)
!336 = !DIEnumerator(name: "CoderWarning", value: 350)
!337 = !DIEnumerator(name: "FilterWarning", value: 352)
!338 = !DIEnumerator(name: "ModuleWarning", value: 355)
!339 = !DIEnumerator(name: "DrawWarning", value: 360)
!340 = !DIEnumerator(name: "ImageWarning", value: 365)
!341 = !DIEnumerator(name: "WandWarning", value: 370)
!342 = !DIEnumerator(name: "RandomWarning", value: 375)
!343 = !DIEnumerator(name: "XServerWarning", value: 380)
!344 = !DIEnumerator(name: "MonitorWarning", value: 385)
!345 = !DIEnumerator(name: "RegistryWarning", value: 390)
!346 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!347 = !DIEnumerator(name: "PolicyWarning", value: 399)
!348 = !DIEnumerator(name: "ErrorException", value: 400)
!349 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!350 = !DIEnumerator(name: "TypeError", value: 405)
!351 = !DIEnumerator(name: "OptionError", value: 410)
!352 = !DIEnumerator(name: "DelegateError", value: 415)
!353 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!354 = !DIEnumerator(name: "CorruptImageError", value: 425)
!355 = !DIEnumerator(name: "FileOpenError", value: 430)
!356 = !DIEnumerator(name: "BlobError", value: 435)
!357 = !DIEnumerator(name: "StreamError", value: 440)
!358 = !DIEnumerator(name: "CacheError", value: 445)
!359 = !DIEnumerator(name: "CoderError", value: 450)
!360 = !DIEnumerator(name: "FilterError", value: 452)
!361 = !DIEnumerator(name: "ModuleError", value: 455)
!362 = !DIEnumerator(name: "DrawError", value: 460)
!363 = !DIEnumerator(name: "ImageError", value: 465)
!364 = !DIEnumerator(name: "WandError", value: 470)
!365 = !DIEnumerator(name: "RandomError", value: 475)
!366 = !DIEnumerator(name: "XServerError", value: 480)
!367 = !DIEnumerator(name: "MonitorError", value: 485)
!368 = !DIEnumerator(name: "RegistryError", value: 490)
!369 = !DIEnumerator(name: "ConfigureError", value: 495)
!370 = !DIEnumerator(name: "PolicyError", value: 499)
!371 = !DIEnumerator(name: "FatalErrorException", value: 700)
!372 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!373 = !DIEnumerator(name: "TypeFatalError", value: 705)
!374 = !DIEnumerator(name: "OptionFatalError", value: 710)
!375 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!376 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!377 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!378 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!379 = !DIEnumerator(name: "BlobFatalError", value: 735)
!380 = !DIEnumerator(name: "StreamFatalError", value: 740)
!381 = !DIEnumerator(name: "CacheFatalError", value: 745)
!382 = !DIEnumerator(name: "CoderFatalError", value: 750)
!383 = !DIEnumerator(name: "FilterFatalError", value: 752)
!384 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!385 = !DIEnumerator(name: "DrawFatalError", value: 760)
!386 = !DIEnumerator(name: "ImageFatalError", value: 765)
!387 = !DIEnumerator(name: "WandFatalError", value: 770)
!388 = !DIEnumerator(name: "RandomFatalError", value: 775)
!389 = !DIEnumerator(name: "XServerFatalError", value: 780)
!390 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!391 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!392 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!393 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!394 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !395, line: 31, baseType: !5, size: 32, elements: !396)
!395 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b980ba059a4e0a748c02c115a1a7704f")
!396 = !{!397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410}
!397 = !DIEnumerator(name: "UndefinedInterpolatePixel", value: 0)
!398 = !DIEnumerator(name: "AverageInterpolatePixel", value: 1)
!399 = !DIEnumerator(name: "BicubicInterpolatePixel", value: 2)
!400 = !DIEnumerator(name: "BilinearInterpolatePixel", value: 3)
!401 = !DIEnumerator(name: "FilterInterpolatePixel", value: 4)
!402 = !DIEnumerator(name: "IntegerInterpolatePixel", value: 5)
!403 = !DIEnumerator(name: "MeshInterpolatePixel", value: 6)
!404 = !DIEnumerator(name: "NearestNeighborInterpolatePixel", value: 7)
!405 = !DIEnumerator(name: "SplineInterpolatePixel", value: 8)
!406 = !DIEnumerator(name: "Average9InterpolatePixel", value: 9)
!407 = !DIEnumerator(name: "Average16InterpolatePixel", value: 10)
!408 = !DIEnumerator(name: "BlendInterpolatePixel", value: 11)
!409 = !DIEnumerator(name: "BackgroundInterpolatePixel", value: 12)
!410 = !DIEnumerator(name: "CatromInterpolatePixel", value: 13)
!411 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !395, line: 67, baseType: !5, size: 32, elements: !412)
!412 = !{!413, !414, !415, !416, !417, !418, !419, !420, !421, !422}
!413 = !DIEnumerator(name: "UndefinedPixelIntensityMethod", value: 0)
!414 = !DIEnumerator(name: "AveragePixelIntensityMethod", value: 1)
!415 = !DIEnumerator(name: "BrightnessPixelIntensityMethod", value: 2)
!416 = !DIEnumerator(name: "LightnessPixelIntensityMethod", value: 3)
!417 = !DIEnumerator(name: "Rec601LumaPixelIntensityMethod", value: 4)
!418 = !DIEnumerator(name: "Rec601LuminancePixelIntensityMethod", value: 5)
!419 = !DIEnumerator(name: "Rec709LumaPixelIntensityMethod", value: 6)
!420 = !DIEnumerator(name: "Rec709LuminancePixelIntensityMethod", value: 7)
!421 = !DIEnumerator(name: "RMSPixelIntensityMethod", value: 8)
!422 = !DIEnumerator(name: "MSPixelIntensityMethod", value: 9)
!423 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !424, line: 27, baseType: !5, size: 32, elements: !425)
!424 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!425 = !{!426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443}
!426 = !DIEnumerator(name: "UndefinedVirtualPixelMethod", value: 0)
!427 = !DIEnumerator(name: "BackgroundVirtualPixelMethod", value: 1)
!428 = !DIEnumerator(name: "ConstantVirtualPixelMethod", value: 2)
!429 = !DIEnumerator(name: "DitherVirtualPixelMethod", value: 3)
!430 = !DIEnumerator(name: "EdgeVirtualPixelMethod", value: 4)
!431 = !DIEnumerator(name: "MirrorVirtualPixelMethod", value: 5)
!432 = !DIEnumerator(name: "RandomVirtualPixelMethod", value: 6)
!433 = !DIEnumerator(name: "TileVirtualPixelMethod", value: 7)
!434 = !DIEnumerator(name: "TransparentVirtualPixelMethod", value: 8)
!435 = !DIEnumerator(name: "MaskVirtualPixelMethod", value: 9)
!436 = !DIEnumerator(name: "BlackVirtualPixelMethod", value: 10)
!437 = !DIEnumerator(name: "GrayVirtualPixelMethod", value: 11)
!438 = !DIEnumerator(name: "WhiteVirtualPixelMethod", value: 12)
!439 = !DIEnumerator(name: "HorizontalTileVirtualPixelMethod", value: 13)
!440 = !DIEnumerator(name: "VerticalTileVirtualPixelMethod", value: 14)
!441 = !DIEnumerator(name: "HorizontalTileEdgeVirtualPixelMethod", value: 15)
!442 = !DIEnumerator(name: "VerticalTileEdgeVirtualPixelMethod", value: 16)
!443 = !DIEnumerator(name: "CheckerTileVirtualPixelMethod", value: 17)
!444 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !445, line: 28, baseType: !5, size: 32, elements: !446)
!445 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!446 = !{!447, !448, !449}
!447 = !DIEnumerator(name: "UndefinedFormatType", value: 0)
!448 = !DIEnumerator(name: "ImplicitFormatType", value: 1)
!449 = !DIEnumerator(name: "ExplicitFormatType", value: 2)
!450 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !451, line: 34, baseType: !5, size: 32, elements: !452)
!451 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!452 = !{!453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474}
!453 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!454 = !DIEnumerator(name: "NoEvents", value: 0)
!455 = !DIEnumerator(name: "TraceEvent", value: 1)
!456 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!457 = !DIEnumerator(name: "BlobEvent", value: 4)
!458 = !DIEnumerator(name: "CacheEvent", value: 8)
!459 = !DIEnumerator(name: "CoderEvent", value: 16)
!460 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!461 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!462 = !DIEnumerator(name: "DrawEvent", value: 128)
!463 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!464 = !DIEnumerator(name: "ImageEvent", value: 512)
!465 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!466 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!467 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!468 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!469 = !DIEnumerator(name: "TransformEvent", value: 16384)
!470 = !DIEnumerator(name: "UserEvent", value: 36864)
!471 = !DIEnumerator(name: "WandEvent", value: 65536)
!472 = !DIEnumerator(name: "X11Event", value: 131072)
!473 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!474 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!475 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !476, line: 35, baseType: !5, size: 32, elements: !477)
!476 = !DIFile(filename: "apps/538.imagick_r/src/magick/blob-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a66ea2eabdd36512a199f3a0075ea4ad")
!477 = !{!478, !479, !480, !481, !482, !483, !484}
!478 = !DIEnumerator(name: "UndefinedBlobMode", value: 0)
!479 = !DIEnumerator(name: "ReadBlobMode", value: 1)
!480 = !DIEnumerator(name: "ReadBinaryBlobMode", value: 2)
!481 = !DIEnumerator(name: "WriteBlobMode", value: 3)
!482 = !DIEnumerator(name: "WriteBinaryBlobMode", value: 4)
!483 = !DIEnumerator(name: "AppendBlobMode", value: 5)
!484 = !DIEnumerator(name: "AppendBinaryBlobMode", value: 6)
!485 = !{!486, !846, !501, !503, !490, !546, !681, !520, !550, !680, !519, !555, !850, !514, !851, !627, !630, !852, !619, !624, !854, !856}
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodeImageHandler", file: !445, line: 43, baseType: !488)
!488 = !DISubroutineType(types: !489)
!489 = !{!490, !712, !845}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !42, line: 221, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !30, line: 150, size: 105920, elements: !493)
!493 = !{!494, !496, !498, !500, !504, !506, !508, !509, !510, !511, !512, !513, !524, !525, !526, !527, !529, !543, !545, !547, !549, !552, !553, !554, !560, !561, !562, !570, !571, !572, !573, !574, !575, !577, !579, !581, !583, !585, !587, !589, !590, !591, !592, !593, !594, !595, !603, !618, !632, !633, !634, !635, !639, !643, !647, !648, !649, !650, !651, !669, !670, !672, !673, !683, !684, !686, !687, !688, !689, !690, !691, !693, !694, !695, !696, !697, !698, !699, !701, !702, !703, !704, !705, !709, !711}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !492, file: !30, line: 153, baseType: !495, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !42, line: 209, baseType: !173)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !492, file: !30, line: 156, baseType: !497, size: 32, offset: 32)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !68, line: 61, baseType: !67)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !492, file: !30, line: 159, baseType: !499, size: 32, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !4, line: 49, baseType: !3)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !492, file: !30, line: 162, baseType: !501, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !502, line: 46, baseType: !503)
!502 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!503 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !492, file: !30, line: 165, baseType: !505, size: 32, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !30, line: 86, baseType: !29)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !492, file: !30, line: 168, baseType: !507, size: 32, offset: 224)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !42, line: 215, baseType: !41)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !492, file: !30, line: 169, baseType: !507, size: 32, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !492, file: !30, line: 172, baseType: !501, size: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !492, file: !30, line: 173, baseType: !501, size: 64, offset: 384)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !492, file: !30, line: 174, baseType: !501, size: 64, offset: 448)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !492, file: !30, line: 175, baseType: !501, size: 64, offset: 512)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !492, file: !30, line: 178, baseType: !514, size: 64, offset: 576)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !395, line: 148, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !395, line: 131, size: 64, elements: !517)
!517 = !{!518, !521, !522, !523}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !516, file: !395, line: 143, baseType: !519, size: 16)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !42, line: 93, baseType: !520)
!520 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !516, file: !395, line: 144, baseType: !519, size: 16, offset: 16)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !516, file: !395, line: 145, baseType: !519, size: 16, offset: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !516, file: !395, line: 146, baseType: !519, size: 16, offset: 48)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !492, file: !30, line: 179, baseType: !515, size: 64, offset: 640)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !492, file: !30, line: 180, baseType: !515, size: 64, offset: 704)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !492, file: !30, line: 181, baseType: !515, size: 64, offset: 768)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !492, file: !30, line: 184, baseType: !528, size: 64, offset: 832)
!528 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !492, file: !30, line: 187, baseType: !530, size: 768, offset: 896)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !30, line: 128, baseType: !531)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !30, line: 121, size: 768, elements: !532)
!532 = !{!533, !540, !541, !542}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !531, file: !30, line: 124, baseType: !534, size: 192)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !30, line: 101, baseType: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !30, line: 95, size: 192, elements: !536)
!536 = !{!537, !538, !539}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !535, file: !30, line: 98, baseType: !528, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !535, file: !30, line: 99, baseType: !528, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !535, file: !30, line: 100, baseType: !528, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !531, file: !30, line: 125, baseType: !534, size: 192, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !531, file: !30, line: 126, baseType: !534, size: 192, offset: 384)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !531, file: !30, line: 127, baseType: !534, size: 192, offset: 576)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !492, file: !30, line: 190, baseType: !544, size: 32, offset: 1664)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !179, line: 49, baseType: !178)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !492, file: !30, line: 193, baseType: !546, size: 64, offset: 1728)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !492, file: !30, line: 196, baseType: !548, size: 32, offset: 1792)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !30, line: 93, baseType: !62)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !492, file: !30, line: 199, baseType: !550, size: 64, offset: 1856)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !492, file: !30, line: 200, baseType: !550, size: 64, offset: 1920)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !492, file: !30, line: 201, baseType: !550, size: 64, offset: 1984)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !492, file: !30, line: 204, baseType: !555, size: 64, offset: 2048)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !556, line: 77, baseType: !557)
!556 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !558, line: 193, baseType: !559)
!558 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!559 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !492, file: !30, line: 207, baseType: !528, size: 64, offset: 2112)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !492, file: !30, line: 208, baseType: !528, size: 64, offset: 2176)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !492, file: !30, line: 211, baseType: !563, size: 256, offset: 2240)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !222, line: 130, baseType: !564)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !222, line: 121, size: 256, elements: !565)
!565 = !{!566, !567, !568, !569}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !564, file: !222, line: 124, baseType: !501, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !564, file: !222, line: 125, baseType: !501, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !564, file: !222, line: 128, baseType: !555, size: 64, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !564, file: !222, line: 129, baseType: !555, size: 64, offset: 192)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !492, file: !30, line: 212, baseType: !563, size: 256, offset: 2496)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !492, file: !30, line: 213, baseType: !563, size: 256, offset: 2752)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !492, file: !30, line: 216, baseType: !528, size: 64, offset: 3008)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !492, file: !30, line: 217, baseType: !528, size: 64, offset: 3072)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !492, file: !30, line: 218, baseType: !528, size: 64, offset: 3136)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !492, file: !30, line: 221, baseType: !576, size: 32, offset: 3200)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !187, line: 66, baseType: !186)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !492, file: !30, line: 224, baseType: !578, size: 32, offset: 3232)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !30, line: 73, baseType: !46)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !492, file: !30, line: 227, baseType: !580, size: 32, offset: 3264)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !57, line: 35, baseType: !56)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !492, file: !30, line: 230, baseType: !582, size: 32, offset: 3296)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !222, line: 91, baseType: !221)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !492, file: !30, line: 233, baseType: !584, size: 32, offset: 3328)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !237, line: 99, baseType: !236)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !492, file: !30, line: 236, baseType: !586, size: 32, offset: 3360)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !308, line: 32, baseType: !307)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !492, file: !30, line: 239, baseType: !588, size: 64, offset: 3392)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !492, file: !30, line: 242, baseType: !501, size: 64, offset: 3456)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !492, file: !30, line: 243, baseType: !501, size: 64, offset: 3520)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !492, file: !30, line: 246, baseType: !555, size: 64, offset: 3584)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !492, file: !30, line: 249, baseType: !501, size: 64, offset: 3648)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !492, file: !30, line: 250, baseType: !501, size: 64, offset: 3712)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !492, file: !30, line: 253, baseType: !555, size: 64, offset: 3776)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !492, file: !30, line: 256, baseType: !596, size: 192, offset: 3840)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !597, line: 68, baseType: !598)
!597 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !597, line: 62, size: 192, elements: !599)
!599 = !{!600, !601, !602}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !598, file: !597, line: 65, baseType: !528, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !598, file: !597, line: 66, baseType: !528, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !598, file: !597, line: 67, baseType: !528, size: 64, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !492, file: !30, line: 259, baseType: !604, size: 512, offset: 4032)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !316, line: 51, baseType: !605)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !316, line: 40, size: 512, elements: !606)
!606 = !{!607, !614, !615, !617}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !605, file: !316, line: 43, baseType: !608, size: 192)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !316, line: 38, baseType: !609)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !316, line: 32, size: 192, elements: !610)
!610 = !{!611, !612, !613}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !609, file: !316, line: 35, baseType: !528, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !609, file: !316, line: 36, baseType: !528, size: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !609, file: !316, line: 37, baseType: !528, size: 64, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !605, file: !316, line: 44, baseType: !608, size: 192, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !605, file: !316, line: 47, baseType: !616, size: 32, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !316, line: 30, baseType: !315)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !605, file: !316, line: 50, baseType: !501, size: 64, offset: 448)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !492, file: !30, line: 262, baseType: !619, size: 64, offset: 4544)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !620, line: 26, baseType: !621)
!620 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!507, !624, !626, !629, !546}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !42, line: 150, baseType: !628)
!628 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !630)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !42, line: 151, baseType: !631)
!631 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !492, file: !30, line: 265, baseType: !546, size: 64, offset: 4608)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !492, file: !30, line: 266, baseType: !546, size: 64, offset: 4672)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !492, file: !30, line: 267, baseType: !546, size: 64, offset: 4736)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !492, file: !30, line: 270, baseType: !636, size: 64, offset: 4800)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !4, line: 52, baseType: !638)
!638 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !4, line: 51, flags: DIFlagFwdDecl)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !492, file: !30, line: 273, baseType: !640, size: 64, offset: 4864)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !42, line: 217, baseType: !642)
!642 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !42, line: 217, flags: DIFlagFwdDecl)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !492, file: !30, line: 276, baseType: !644, size: 32768, offset: 4928)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 32768, elements: !645)
!645 = !{!646}
!646 = !DISubrange(count: 4096)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !492, file: !30, line: 277, baseType: !644, size: 32768, offset: 37696)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !492, file: !30, line: 278, baseType: !644, size: 32768, offset: 70464)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !492, file: !30, line: 281, baseType: !501, size: 64, offset: 103232)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !492, file: !30, line: 282, baseType: !501, size: 64, offset: 103296)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !492, file: !30, line: 285, baseType: !652, size: 448, offset: 103360)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !42, line: 219, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !322, line: 102, size: 448, elements: !654)
!654 = !{!655, !657, !659, !660, !661, !662, !663, !668}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !653, file: !322, line: 105, baseType: !656, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !322, line: 100, baseType: !321)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !653, file: !322, line: 108, baseType: !658, size: 32, offset: 32)
!658 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !653, file: !322, line: 111, baseType: !550, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !653, file: !322, line: 112, baseType: !550, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !653, file: !322, line: 115, baseType: !546, size: 64, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !653, file: !322, line: 118, baseType: !507, size: 32, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !653, file: !322, line: 121, baseType: !664, size: 64, offset: 320)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !666, line: 26, baseType: !667)
!666 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!667 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !666, line: 25, flags: DIFlagFwdDecl)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !653, file: !322, line: 124, baseType: !501, size: 64, offset: 384)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !492, file: !30, line: 288, baseType: !507, size: 32, offset: 103808)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !492, file: !30, line: 291, baseType: !671, size: 64, offset: 103872)
!671 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !555)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !492, file: !30, line: 294, baseType: !664, size: 64, offset: 103936)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !492, file: !30, line: 297, baseType: !674, size: 256, offset: 104000)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !179, line: 40, baseType: !675)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !179, line: 27, size: 256, elements: !676)
!676 = !{!677, !678, !679, !682}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !675, file: !179, line: 30, baseType: !550, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !675, file: !179, line: 33, baseType: !501, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !675, file: !179, line: 36, baseType: !680, size: 64, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !675, file: !179, line: 39, baseType: !501, size: 64, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !492, file: !30, line: 298, baseType: !674, size: 256, offset: 104256)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !492, file: !30, line: 299, baseType: !685, size: 64, offset: 104512)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !492, file: !30, line: 302, baseType: !501, size: 64, offset: 104576)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !492, file: !30, line: 305, baseType: !501, size: 64, offset: 104640)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !492, file: !30, line: 308, baseType: !588, size: 64, offset: 104704)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !492, file: !30, line: 309, baseType: !588, size: 64, offset: 104768)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !492, file: !30, line: 310, baseType: !588, size: 64, offset: 104832)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !492, file: !30, line: 313, baseType: !692, size: 32, offset: 104896)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !395, line: 47, baseType: !394)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !492, file: !30, line: 316, baseType: !507, size: 32, offset: 104928)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !492, file: !30, line: 319, baseType: !515, size: 64, offset: 104960)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !492, file: !30, line: 322, baseType: !588, size: 64, offset: 105024)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !492, file: !30, line: 325, baseType: !563, size: 256, offset: 105088)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !492, file: !30, line: 328, baseType: !546, size: 64, offset: 105344)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !492, file: !30, line: 329, baseType: !546, size: 64, offset: 105408)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !492, file: !30, line: 332, baseType: !700, size: 32, offset: 105472)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !30, line: 61, baseType: !104)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !492, file: !30, line: 335, baseType: !507, size: 32, offset: 105504)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !492, file: !30, line: 338, baseType: !630, size: 64, offset: 105536)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !492, file: !30, line: 341, baseType: !507, size: 32, offset: 105600)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !492, file: !30, line: 344, baseType: !501, size: 64, offset: 105664)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !492, file: !30, line: 347, baseType: !706, size: 64, offset: 105728)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !707, line: 7, baseType: !708)
!707 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !558, line: 160, baseType: !559)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !492, file: !30, line: 350, baseType: !710, size: 32, offset: 105792)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !395, line: 79, baseType: !411)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !492, file: !30, line: 353, baseType: !501, size: 64, offset: 105856)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !714)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageInfo", file: !42, line: 223, baseType: !715)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ImageInfo", file: !30, line: 356, size: 134336, elements: !716)
!716 = !{!717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !751, !752, !753, !754, !755, !756, !758, !759, !760, !761, !762, !763, !774, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !842, !843, !844}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !715, file: !30, line: 359, baseType: !499, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !715, file: !30, line: 362, baseType: !505, size: 32, offset: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !715, file: !30, line: 365, baseType: !507, size: 32, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !715, file: !30, line: 366, baseType: !507, size: 32, offset: 96)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "affirm", scope: !715, file: !30, line: 367, baseType: !507, size: 32, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "antialias", scope: !715, file: !30, line: 368, baseType: !507, size: 32, offset: 160)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !715, file: !30, line: 371, baseType: !550, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "extract", scope: !715, file: !30, line: 372, baseType: !550, size: 64, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !715, file: !30, line: 373, baseType: !550, size: 64, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "scenes", scope: !715, file: !30, line: 374, baseType: !550, size: 64, offset: 384)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !715, file: !30, line: 377, baseType: !501, size: 64, offset: 448)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "number_scenes", scope: !715, file: !30, line: 378, baseType: !501, size: 64, offset: 512)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !715, file: !30, line: 379, baseType: !501, size: 64, offset: 576)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !715, file: !30, line: 382, baseType: !578, size: 32, offset: 640)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !715, file: !30, line: 385, baseType: !580, size: 32, offset: 672)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !715, file: !30, line: 388, baseType: !548, size: 32, offset: 704)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !715, file: !30, line: 391, baseType: !501, size: 64, offset: 768)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_factor", scope: !715, file: !30, line: 394, baseType: !550, size: 64, offset: 832)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !715, file: !30, line: 395, baseType: !550, size: 64, offset: 896)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "font", scope: !715, file: !30, line: 396, baseType: !550, size: 64, offset: 960)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "texture", scope: !715, file: !30, line: 397, baseType: !550, size: 64, offset: 1024)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "density", scope: !715, file: !30, line: 398, baseType: !550, size: 64, offset: 1088)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "pointsize", scope: !715, file: !30, line: 401, baseType: !528, size: 64, offset: 1152)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !715, file: !30, line: 402, baseType: !528, size: 64, offset: 1216)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !715, file: !30, line: 405, baseType: !515, size: 64, offset: 1280)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !715, file: !30, line: 406, baseType: !515, size: 64, offset: 1344)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !715, file: !30, line: 407, baseType: !515, size: 64, offset: 1408)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !715, file: !30, line: 410, baseType: !507, size: 32, offset: 1472)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "monochrome", scope: !715, file: !30, line: 411, baseType: !507, size: 32, offset: 1504)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !715, file: !30, line: 414, baseType: !501, size: 64, offset: 1536)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !715, file: !30, line: 417, baseType: !497, size: 32, offset: 1600)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !715, file: !30, line: 420, baseType: !700, size: 32, offset: 1632)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "preview_type", scope: !715, file: !30, line: 423, baseType: !750, size: 32, offset: 1664)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "PreviewType", file: !119, line: 59, baseType: !118)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !715, file: !30, line: 426, baseType: !555, size: 64, offset: 1728)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !715, file: !30, line: 429, baseType: !507, size: 32, offset: 1792)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !715, file: !30, line: 430, baseType: !507, size: 32, offset: 1824)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !715, file: !30, line: 433, baseType: !550, size: 64, offset: 1856)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "authenticate", scope: !715, file: !30, line: 434, baseType: !550, size: 64, offset: 1920)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !715, file: !30, line: 437, baseType: !757, size: 32, offset: 1984)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelType", file: !42, line: 202, baseType: !151)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !715, file: !30, line: 440, baseType: !490, size: 64, offset: 2048)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !715, file: !30, line: 443, baseType: !546, size: 64, offset: 2112)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !715, file: !30, line: 446, baseType: !619, size: 64, offset: 2176)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !715, file: !30, line: 449, baseType: !546, size: 64, offset: 2240)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !715, file: !30, line: 450, baseType: !546, size: 64, offset: 2304)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !715, file: !30, line: 453, baseType: !764, size: 64, offset: 2368)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "StreamHandler", file: !765, line: 26, baseType: !766)
!765 = !DIFile(filename: "apps/538.imagick_r/src/magick/stream.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c2638a9d0a3b6b6108dcfea44dbab39d")
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!501, !769, !771, !773}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !501)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !715, file: !30, line: 456, baseType: !775, size: 64, offset: 2432)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !777, line: 7, baseType: !778)
!777 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !779, line: 49, size: 1728, elements: !780)
!779 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!780 = !{!781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !796, !798, !799, !800, !802, !803, !805, !809, !812, !814, !817, !820, !821, !822, !823, !824}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !778, file: !779, line: 51, baseType: !658, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !778, file: !779, line: 54, baseType: !550, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !778, file: !779, line: 55, baseType: !550, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !778, file: !779, line: 56, baseType: !550, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !778, file: !779, line: 57, baseType: !550, size: 64, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !778, file: !779, line: 58, baseType: !550, size: 64, offset: 320)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !778, file: !779, line: 59, baseType: !550, size: 64, offset: 384)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !778, file: !779, line: 60, baseType: !550, size: 64, offset: 448)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !778, file: !779, line: 61, baseType: !550, size: 64, offset: 512)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !778, file: !779, line: 64, baseType: !550, size: 64, offset: 576)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !778, file: !779, line: 65, baseType: !550, size: 64, offset: 640)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !778, file: !779, line: 66, baseType: !550, size: 64, offset: 704)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !778, file: !779, line: 68, baseType: !794, size: 64, offset: 768)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !779, line: 36, flags: DIFlagFwdDecl)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !778, file: !779, line: 70, baseType: !797, size: 64, offset: 832)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !778, file: !779, line: 72, baseType: !658, size: 32, offset: 896)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !778, file: !779, line: 73, baseType: !658, size: 32, offset: 928)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !778, file: !779, line: 74, baseType: !801, size: 64, offset: 960)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !558, line: 152, baseType: !559)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !778, file: !779, line: 77, baseType: !520, size: 16, offset: 1024)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !778, file: !779, line: 78, baseType: !804, size: 8, offset: 1040)
!804 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !778, file: !779, line: 79, baseType: !806, size: 8, offset: 1048)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 8, elements: !807)
!807 = !{!808}
!808 = !DISubrange(count: 1)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !778, file: !779, line: 81, baseType: !810, size: 64, offset: 1088)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !779, line: 43, baseType: null)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !778, file: !779, line: 89, baseType: !813, size: 64, offset: 1152)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !558, line: 153, baseType: !559)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !778, file: !779, line: 91, baseType: !815, size: 64, offset: 1216)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !779, line: 37, flags: DIFlagFwdDecl)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !778, file: !779, line: 92, baseType: !818, size: 64, offset: 1280)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !779, line: 38, flags: DIFlagFwdDecl)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !778, file: !779, line: 93, baseType: !797, size: 64, offset: 1344)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !778, file: !779, line: 94, baseType: !546, size: 64, offset: 1408)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !778, file: !779, line: 95, baseType: !501, size: 64, offset: 1472)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !778, file: !779, line: 96, baseType: !658, size: 32, offset: 1536)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !778, file: !779, line: 98, baseType: !825, size: 160, offset: 1568)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 160, elements: !826)
!826 = !{!827}
!827 = !DISubrange(count: 20)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !715, file: !30, line: 459, baseType: !546, size: 64, offset: 2496)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !715, file: !30, line: 462, baseType: !501, size: 64, offset: 2560)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !715, file: !30, line: 465, baseType: !644, size: 32768, offset: 2624)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !715, file: !30, line: 466, baseType: !644, size: 32768, offset: 35392)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !715, file: !30, line: 467, baseType: !644, size: 32768, offset: 68160)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !715, file: !30, line: 468, baseType: !644, size: 32768, offset: 100928)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !715, file: !30, line: 471, baseType: !507, size: 32, offset: 133696)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "tile", scope: !715, file: !30, line: 474, baseType: !550, size: 64, offset: 133760)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "subimage", scope: !715, file: !30, line: 477, baseType: !501, size: 64, offset: 133824)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "subrange", scope: !715, file: !30, line: 478, baseType: !501, size: 64, offset: 133888)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "pen", scope: !715, file: !30, line: 481, baseType: !515, size: 64, offset: 133952)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !715, file: !30, line: 484, baseType: !501, size: 64, offset: 134016)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_pixel_method", scope: !715, file: !30, line: 487, baseType: !841, size: 32, offset: 134080)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "VirtualPixelMethod", file: !424, line: 47, baseType: !423)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !715, file: !30, line: 490, baseType: !515, size: 64, offset: 134112)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !715, file: !30, line: 493, baseType: !546, size: 64, offset: 134208)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize", scope: !715, file: !30, line: 496, baseType: !507, size: 32, offset: 134272)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodeImageHandler", file: !445, line: 46, baseType: !848)
!848 = !DISubroutineType(types: !849)
!849 = !{!507, !712, !490}
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "IndexPacket", file: !395, line: 129, baseType: !519)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !42, line: 78, baseType: !853)
!853 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !850)
!858 = !{i32 7, !"Dwarf Version", i32 5}
!859 = !{i32 2, !"Debug Info Version", i32 3}
!860 = !{i32 1, !"wchar_size", i32 4}
!861 = !{i32 7, !"PIC Level", i32 2}
!862 = !{i32 7, !"PIE Level", i32 2}
!863 = !{i32 7, !"uwtable", i32 2}
!864 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!865 = distinct !DISubprogram(name: "RegisterTGAImage", scope: !866, file: !866, line: 538, type: !867, scopeLine: 539, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !869)
!866 = !DIFile(filename: "apps/538.imagick_r/src/coders/tga.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15e59979782d13cd88d7288c680d9312")
!867 = !DISubroutineType(types: !868)
!868 = !{!501}
!869 = !{!870}
!870 = !DILocalVariable(name: "entry", scope: !865, file: !866, line: 541, type: !871)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickInfo", file: !445, line: 103, baseType: !873)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickInfo", file: !445, line: 51, size: 1216, elements: !874)
!874 = !{!875, !876, !877, !878, !879, !880, !882, !883, !884, !891, !892, !893, !894, !895, !896, !897, !899, !901, !902, !904, !905, !906, !907}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !873, file: !445, line: 54, baseType: !550, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !873, file: !445, line: 55, baseType: !550, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !873, file: !445, line: 56, baseType: !550, size: 64, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "note", scope: !873, file: !445, line: 57, baseType: !550, size: 64, offset: 192)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !873, file: !445, line: 58, baseType: !550, size: 64, offset: 256)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "image_info", scope: !873, file: !445, line: 61, baseType: !881, size: 64, offset: 320)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "decoder", scope: !873, file: !445, line: 64, baseType: !486, size: 64, offset: 384)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !873, file: !445, line: 67, baseType: !846, size: 64, offset: 448)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !873, file: !445, line: 70, baseType: !885, size: 64, offset: 512)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "IsImageFormatHandler", file: !445, line: 49, baseType: !887)
!887 = !DISubroutineType(types: !888)
!888 = !{!507, !889, !773}
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !681)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !873, file: !445, line: 73, baseType: !546, size: 64, offset: 576)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !873, file: !445, line: 76, baseType: !507, size: 32, offset: 640)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !873, file: !445, line: 77, baseType: !507, size: 32, offset: 672)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "endian_support", scope: !873, file: !445, line: 78, baseType: !507, size: 32, offset: 704)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "blob_support", scope: !873, file: !445, line: 79, baseType: !507, size: 32, offset: 736)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "seekable_stream", scope: !873, file: !445, line: 80, baseType: !507, size: 32, offset: 768)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "format_type", scope: !873, file: !445, line: 83, baseType: !898, size: 32, offset: 800)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickFormatType", file: !445, line: 33, baseType: !444)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "thread_support", scope: !873, file: !445, line: 86, baseType: !900, size: 32, offset: 832)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickStatusType", file: !42, line: 147, baseType: !5)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "stealth", scope: !873, file: !445, line: 89, baseType: !507, size: 32, offset: 864)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !873, file: !445, line: 92, baseType: !903, size: 64, offset: 896)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !873, file: !445, line: 93, baseType: !903, size: 64, offset: 960)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !873, file: !445, line: 96, baseType: !501, size: 64, offset: 1024)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "mime_type", scope: !873, file: !445, line: 99, baseType: !550, size: 64, offset: 1088)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !873, file: !445, line: 102, baseType: !664, size: 64, offset: 1152)
!908 = !DILocation(line: 543, column: 9, scope: !865)
!909 = !DILocation(line: 0, scope: !865)
!910 = !DILocation(line: 544, column: 10, scope: !865)
!911 = !DILocation(line: 544, column: 17, scope: !865)
!912 = !{!913, !914, i64 48}
!913 = !{!"_MagickInfo", !914, i64 0, !914, i64 8, !914, i64 16, !914, i64 24, !914, i64 32, !914, i64 40, !914, i64 48, !914, i64 56, !914, i64 64, !914, i64 72, !915, i64 80, !915, i64 84, !915, i64 88, !915, i64 92, !915, i64 96, !915, i64 100, !917, i64 104, !915, i64 108, !914, i64 112, !914, i64 120, !918, i64 128, !914, i64 136, !914, i64 144}
!914 = !{!"any pointer", !915, i64 0}
!915 = !{!"omnipotent char", !916, i64 0}
!916 = !{!"Simple C/C++ TBAA"}
!917 = !{!"int", !915, i64 0}
!918 = !{!"long", !915, i64 0}
!919 = !DILocation(line: 545, column: 10, scope: !865)
!920 = !DILocation(line: 545, column: 17, scope: !865)
!921 = !{!913, !914, i64 56}
!922 = !DILocation(line: 546, column: 10, scope: !865)
!923 = !DILocation(line: 546, column: 16, scope: !865)
!924 = !{!913, !915, i64 80}
!925 = !DILocation(line: 547, column: 22, scope: !865)
!926 = !DILocation(line: 547, column: 10, scope: !865)
!927 = !DILocation(line: 547, column: 21, scope: !865)
!928 = !{!913, !914, i64 8}
!929 = !DILocation(line: 548, column: 17, scope: !865)
!930 = !DILocation(line: 548, column: 10, scope: !865)
!931 = !DILocation(line: 548, column: 16, scope: !865)
!932 = !{!913, !914, i64 32}
!933 = !DILocation(line: 549, column: 10, scope: !865)
!934 = !DILocation(line: 550, column: 9, scope: !865)
!935 = !DILocation(line: 551, column: 10, scope: !865)
!936 = !DILocation(line: 551, column: 17, scope: !865)
!937 = !DILocation(line: 552, column: 10, scope: !865)
!938 = !DILocation(line: 552, column: 17, scope: !865)
!939 = !DILocation(line: 553, column: 10, scope: !865)
!940 = !DILocation(line: 553, column: 16, scope: !865)
!941 = !DILocation(line: 554, column: 22, scope: !865)
!942 = !DILocation(line: 554, column: 10, scope: !865)
!943 = !DILocation(line: 554, column: 21, scope: !865)
!944 = !DILocation(line: 555, column: 17, scope: !865)
!945 = !DILocation(line: 555, column: 10, scope: !865)
!946 = !DILocation(line: 555, column: 16, scope: !865)
!947 = !DILocation(line: 556, column: 10, scope: !865)
!948 = !DILocation(line: 557, column: 9, scope: !865)
!949 = !DILocation(line: 558, column: 10, scope: !865)
!950 = !DILocation(line: 558, column: 17, scope: !865)
!951 = !DILocation(line: 559, column: 10, scope: !865)
!952 = !DILocation(line: 559, column: 17, scope: !865)
!953 = !DILocation(line: 560, column: 10, scope: !865)
!954 = !DILocation(line: 560, column: 16, scope: !865)
!955 = !DILocation(line: 561, column: 22, scope: !865)
!956 = !DILocation(line: 561, column: 10, scope: !865)
!957 = !DILocation(line: 561, column: 21, scope: !865)
!958 = !DILocation(line: 562, column: 17, scope: !865)
!959 = !DILocation(line: 562, column: 10, scope: !865)
!960 = !DILocation(line: 562, column: 16, scope: !865)
!961 = !DILocation(line: 563, column: 10, scope: !865)
!962 = !DILocation(line: 564, column: 9, scope: !865)
!963 = !DILocation(line: 565, column: 10, scope: !865)
!964 = !DILocation(line: 565, column: 17, scope: !865)
!965 = !DILocation(line: 566, column: 10, scope: !865)
!966 = !DILocation(line: 566, column: 17, scope: !865)
!967 = !DILocation(line: 567, column: 10, scope: !865)
!968 = !DILocation(line: 567, column: 16, scope: !865)
!969 = !DILocation(line: 568, column: 22, scope: !865)
!970 = !DILocation(line: 568, column: 10, scope: !865)
!971 = !DILocation(line: 568, column: 21, scope: !865)
!972 = !DILocation(line: 569, column: 17, scope: !865)
!973 = !DILocation(line: 569, column: 10, scope: !865)
!974 = !DILocation(line: 569, column: 16, scope: !865)
!975 = !DILocation(line: 570, column: 10, scope: !865)
!976 = !DILocation(line: 571, column: 3, scope: !865)
!977 = !DISubprogram(name: "SetMagickInfo", scope: !445, file: !445, line: 139, type: !978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!978 = !DISubroutineType(types: !979)
!979 = !{!871, !624}
!980 = !{}
!981 = distinct !DISubprogram(name: "ReadTGAImage", scope: !866, file: !866, line: 100, type: !488, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !982)
!982 = !{!983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1016, !1017, !1018, !1022, !1023, !1024, !1029, !1032, !1033, !1042, !1052}
!983 = !DILocalVariable(name: "image_info", arg: 1, scope: !981, file: !866, line: 100, type: !712)
!984 = !DILocalVariable(name: "exception", arg: 2, scope: !981, file: !866, line: 100, type: !845)
!985 = !DILocalVariable(name: "image", scope: !981, file: !866, line: 135, type: !490)
!986 = !DILocalVariable(name: "index", scope: !981, file: !866, line: 138, type: !850)
!987 = !DILocalVariable(name: "status", scope: !981, file: !866, line: 141, type: !507)
!988 = !DILocalVariable(name: "pixel", scope: !981, file: !866, line: 144, type: !515)
!989 = !DILocalVariable(name: "indexes", scope: !981, file: !866, line: 147, type: !851)
!990 = !DILocalVariable(name: "q", scope: !981, file: !866, line: 150, type: !514)
!991 = !DILocalVariable(name: "i", scope: !981, file: !866, line: 153, type: !555)
!992 = !DILocalVariable(name: "x", scope: !981, file: !866, line: 154, type: !555)
!993 = !DILocalVariable(name: "base", scope: !981, file: !866, line: 157, type: !501)
!994 = !DILocalVariable(name: "flag", scope: !981, file: !866, line: 158, type: !501)
!995 = !DILocalVariable(name: "offset", scope: !981, file: !866, line: 159, type: !501)
!996 = !DILocalVariable(name: "real", scope: !981, file: !866, line: 160, type: !501)
!997 = !DILocalVariable(name: "skip", scope: !981, file: !866, line: 161, type: !501)
!998 = !DILocalVariable(name: "count", scope: !981, file: !866, line: 164, type: !555)
!999 = !DILocalVariable(name: "y", scope: !981, file: !866, line: 165, type: !555)
!1000 = !DILocalVariable(name: "tga_info", scope: !981, file: !866, line: 168, type: !1001)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "TGAInfo", scope: !981, file: !866, line: 132, baseType: !1002)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TGAInfo", scope: !981, file: !866, line: 109, size: 160, elements: !1003)
!1003 = !{!1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "id_length", scope: !1002, file: !866, line: 112, baseType: !681, size: 8)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "colormap_type", scope: !1002, file: !866, line: 113, baseType: !681, size: 8, offset: 8)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "image_type", scope: !1002, file: !866, line: 114, baseType: !681, size: 8, offset: 16)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "colormap_index", scope: !1002, file: !866, line: 117, baseType: !520, size: 16, offset: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "colormap_length", scope: !1002, file: !866, line: 118, baseType: !520, size: 16, offset: 48)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "colormap_size", scope: !1002, file: !866, line: 121, baseType: !681, size: 8, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "x_origin", scope: !1002, file: !866, line: 124, baseType: !520, size: 16, offset: 80)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "y_origin", scope: !1002, file: !866, line: 125, baseType: !520, size: 16, offset: 96)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1002, file: !866, line: 126, baseType: !520, size: 16, offset: 112)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !1002, file: !866, line: 127, baseType: !520, size: 16, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_pixel", scope: !1002, file: !866, line: 130, baseType: !681, size: 8, offset: 144)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1002, file: !866, line: 131, baseType: !681, size: 8, offset: 152)
!1016 = !DILocalVariable(name: "j", scope: !981, file: !866, line: 171, type: !681)
!1017 = !DILocalVariable(name: "k", scope: !981, file: !866, line: 172, type: !681)
!1018 = !DILocalVariable(name: "pixels", scope: !981, file: !866, line: 173, type: !1019)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !681, size: 32, elements: !1020)
!1020 = !{!1021}
!1021 = !DISubrange(count: 4)
!1022 = !DILocalVariable(name: "runlength", scope: !981, file: !866, line: 174, type: !681)
!1023 = !DILocalVariable(name: "alpha_bits", scope: !981, file: !866, line: 177, type: !5)
!1024 = !DILocalVariable(name: "one", scope: !1025, file: !866, line: 262, type: !501)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !866, line: 260, column: 9)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !866, line: 257, column: 11)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !866, line: 256, column: 5)
!1028 = distinct !DILexicalBlock(scope: !981, file: !866, line: 255, column: 7)
!1029 = !DILocalVariable(name: "comment", scope: !1030, file: !866, line: 273, type: !550)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !866, line: 271, column: 5)
!1031 = distinct !DILexicalBlock(scope: !981, file: !866, line: 270, column: 7)
!1032 = !DILocalVariable(name: "length", scope: !1030, file: !866, line: 276, type: !501)
!1033 = !DILocalVariable(name: "range", scope: !1034, file: !866, line: 321, type: !1041)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !866, line: 319, column: 11)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !866, line: 305, column: 9)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !866, line: 303, column: 7)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !866, line: 302, column: 7)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !866, line: 302, column: 7)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !866, line: 296, column: 5)
!1040 = distinct !DILexicalBlock(scope: !981, file: !866, line: 295, column: 7)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "QuantumAny", file: !42, line: 170, baseType: !630)
!1042 = !DILocalVariable(name: "range", scope: !1043, file: !866, line: 427, type: !1041)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !866, line: 425, column: 11)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !866, line: 404, column: 9)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !866, line: 402, column: 11)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !866, line: 381, column: 5)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !866, line: 380, column: 5)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !866, line: 380, column: 5)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !866, line: 372, column: 3)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !866, line: 371, column: 3)
!1051 = distinct !DILexicalBlock(scope: !981, file: !866, line: 371, column: 3)
!1052 = !DILocalVariable(name: "message", scope: !1053, file: !866, line: 509, type: !550)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !866, line: 509, column: 5)
!1054 = distinct !DILexicalBlock(scope: !981, file: !866, line: 508, column: 7)
!1055 = !DILocation(line: 0, scope: !981)
!1056 = !DILocation(line: 143, column: 3, scope: !981)
!1057 = !DILocation(line: 144, column: 5, scope: !981)
!1058 = !DILocation(line: 167, column: 3, scope: !981)
!1059 = !DILocation(line: 168, column: 5, scope: !981)
!1060 = !DILocation(line: 170, column: 3, scope: !981)
!1061 = !DILocation(line: 173, column: 5, scope: !981)
!1062 = !DILocation(line: 184, column: 19, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !981, file: !866, line: 184, column: 7)
!1064 = !{!1065, !915, i64 16712}
!1065 = !{!"_ImageInfo", !915, i64 0, !915, i64 4, !915, i64 8, !915, i64 12, !915, i64 16, !915, i64 20, !914, i64 24, !914, i64 32, !914, i64 40, !914, i64 48, !918, i64 56, !918, i64 64, !918, i64 72, !915, i64 80, !915, i64 84, !915, i64 88, !918, i64 96, !914, i64 104, !914, i64 112, !914, i64 120, !914, i64 128, !914, i64 136, !1066, i64 144, !1066, i64 152, !1067, i64 160, !1067, i64 168, !1067, i64 176, !915, i64 184, !915, i64 188, !918, i64 192, !915, i64 200, !915, i64 204, !915, i64 208, !918, i64 216, !915, i64 224, !915, i64 228, !914, i64 232, !914, i64 240, !915, i64 248, !914, i64 256, !914, i64 264, !914, i64 272, !914, i64 280, !914, i64 288, !914, i64 296, !914, i64 304, !914, i64 312, !918, i64 320, !915, i64 328, !915, i64 4424, !915, i64 8520, !915, i64 12616, !915, i64 16712, !914, i64 16720, !918, i64 16728, !918, i64 16736, !1067, i64 16744, !918, i64 16752, !915, i64 16760, !1067, i64 16764, !914, i64 16776, !915, i64 16784}
!1066 = !{!"double", !915, i64 0}
!1067 = !{!"_PixelPacket", !1068, i64 0, !1068, i64 2, !1068, i64 4, !1068, i64 6}
!1068 = !{!"short", !915, i64 0}
!1069 = !DILocation(line: 184, column: 25, scope: !1063)
!1070 = !DILocation(line: 184, column: 7, scope: !981)
!1071 = !DILocation(line: 186, column: 19, scope: !1063)
!1072 = !DILocation(line: 185, column: 12, scope: !1063)
!1073 = !DILocation(line: 185, column: 5, scope: !1063)
!1074 = !DILocation(line: 189, column: 9, scope: !981)
!1075 = !DILocation(line: 190, column: 10, scope: !981)
!1076 = !DILocation(line: 191, column: 14, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !981, file: !866, line: 191, column: 7)
!1078 = !DILocation(line: 191, column: 7, scope: !981)
!1079 = !DILocation(line: 193, column: 13, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1077, file: !866, line: 192, column: 5)
!1081 = !DILocation(line: 194, column: 7, scope: !1080)
!1082 = !DILocation(line: 199, column: 9, scope: !981)
!1083 = !DILocation(line: 200, column: 42, scope: !981)
!1084 = !DILocation(line: 200, column: 26, scope: !981)
!1085 = !DILocation(line: 200, column: 12, scope: !981)
!1086 = !DILocation(line: 200, column: 25, scope: !981)
!1087 = !{!1088, !915, i64 1}
!1088 = !{!"_TGAInfo", !915, i64 0, !915, i64 1, !915, i64 2, !1068, i64 4, !1068, i64 6, !915, i64 8, !1068, i64 10, !1068, i64 12, !1068, i64 14, !1068, i64 16, !915, i64 18, !915, i64 19}
!1089 = !DILocation(line: 201, column: 39, scope: !981)
!1090 = !DILocation(line: 201, column: 23, scope: !981)
!1091 = !DILocation(line: 201, column: 12, scope: !981)
!1092 = !DILocation(line: 201, column: 22, scope: !981)
!1093 = !{!1088, !915, i64 2}
!1094 = !DILocation(line: 202, column: 14, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !981, file: !866, line: 202, column: 7)
!1096 = !DILocation(line: 202, column: 20, scope: !1095)
!1097 = !DILocation(line: 203, column: 45, scope: !1095)
!1098 = !DILocation(line: 209, column: 46, scope: !1095)
!1099 = !DILocation(line: 212, column: 5, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1095, file: !866, line: 212, column: 5)
!1101 = !DILocation(line: 212, column: 5, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1100, file: !866, line: 212, column: 5)
!1103 = !DILocation(line: 212, column: 5, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1102, file: !866, line: 212, column: 5)
!1105 = !DILocation(line: 213, column: 27, scope: !981)
!1106 = !DILocation(line: 213, column: 12, scope: !981)
!1107 = !DILocation(line: 213, column: 26, scope: !981)
!1108 = !{!1088, !1068, i64 4}
!1109 = !DILocation(line: 214, column: 28, scope: !981)
!1110 = !DILocation(line: 214, column: 12, scope: !981)
!1111 = !DILocation(line: 214, column: 27, scope: !981)
!1112 = !{!1088, !1068, i64 6}
!1113 = !DILocation(line: 215, column: 42, scope: !981)
!1114 = !DILocation(line: 215, column: 26, scope: !981)
!1115 = !DILocation(line: 215, column: 12, scope: !981)
!1116 = !DILocation(line: 215, column: 25, scope: !981)
!1117 = !{!1088, !915, i64 8}
!1118 = !DILocation(line: 216, column: 21, scope: !981)
!1119 = !DILocation(line: 216, column: 12, scope: !981)
!1120 = !DILocation(line: 216, column: 20, scope: !981)
!1121 = !{!1088, !1068, i64 10}
!1122 = !DILocation(line: 217, column: 21, scope: !981)
!1123 = !DILocation(line: 217, column: 12, scope: !981)
!1124 = !DILocation(line: 217, column: 20, scope: !981)
!1125 = !{!1088, !1068, i64 12}
!1126 = !DILocation(line: 218, column: 35, scope: !981)
!1127 = !DILocation(line: 218, column: 12, scope: !981)
!1128 = !DILocation(line: 218, column: 17, scope: !981)
!1129 = !{!1088, !1068, i64 14}
!1130 = !DILocation(line: 219, column: 36, scope: !981)
!1131 = !DILocation(line: 219, column: 12, scope: !981)
!1132 = !DILocation(line: 219, column: 18, scope: !981)
!1133 = !{!1088, !1068, i64 16}
!1134 = !DILocation(line: 220, column: 43, scope: !981)
!1135 = !DILocation(line: 220, column: 27, scope: !981)
!1136 = !DILocation(line: 220, column: 12, scope: !981)
!1137 = !DILocation(line: 220, column: 26, scope: !981)
!1138 = !{!1088, !915, i64 18}
!1139 = !DILocation(line: 221, column: 39, scope: !981)
!1140 = !DILocation(line: 221, column: 23, scope: !981)
!1141 = !DILocation(line: 221, column: 12, scope: !981)
!1142 = !DILocation(line: 221, column: 22, scope: !981)
!1143 = !{!1088, !915, i64 19}
!1144 = !DILocation(line: 222, column: 7, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !981, file: !866, line: 222, column: 7)
!1146 = !DILocation(line: 222, column: 22, scope: !1145)
!1147 = !DILocation(line: 222, column: 7, scope: !981)
!1148 = !DILocation(line: 223, column: 5, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1145, file: !866, line: 223, column: 5)
!1150 = !DILocation(line: 223, column: 5, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1149, file: !866, line: 223, column: 5)
!1152 = !DILocation(line: 223, column: 5, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1151, file: !866, line: 223, column: 5)
!1154 = !DILocation(line: 224, column: 19, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !981, file: !866, line: 224, column: 7)
!1156 = !DILocation(line: 224, column: 40, scope: !1155)
!1157 = !DILocation(line: 226, column: 5, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1155, file: !866, line: 226, column: 5)
!1159 = !DILocation(line: 226, column: 5, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1158, file: !866, line: 226, column: 5)
!1161 = !DILocation(line: 226, column: 5, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1160, file: !866, line: 226, column: 5)
!1163 = !DILocation(line: 230, column: 27, scope: !981)
!1164 = !DILocation(line: 230, column: 18, scope: !981)
!1165 = !DILocation(line: 230, column: 10, scope: !981)
!1166 = !DILocation(line: 230, column: 17, scope: !981)
!1167 = !{!1168, !918, i64 40}
!1168 = !{!"_Image", !915, i64 0, !915, i64 4, !915, i64 8, !918, i64 16, !915, i64 24, !915, i64 28, !915, i64 32, !918, i64 40, !918, i64 48, !918, i64 56, !918, i64 64, !914, i64 72, !1067, i64 80, !1067, i64 88, !1067, i64 96, !1066, i64 104, !1169, i64 112, !915, i64 208, !914, i64 216, !915, i64 224, !914, i64 232, !914, i64 240, !914, i64 248, !918, i64 256, !1066, i64 264, !1066, i64 272, !1171, i64 280, !1171, i64 312, !1171, i64 344, !1066, i64 376, !1066, i64 384, !1066, i64 392, !915, i64 400, !915, i64 404, !915, i64 408, !915, i64 412, !915, i64 416, !915, i64 420, !914, i64 424, !918, i64 432, !918, i64 440, !918, i64 448, !918, i64 456, !918, i64 464, !918, i64 472, !1172, i64 480, !1173, i64 504, !914, i64 568, !914, i64 576, !914, i64 584, !914, i64 592, !914, i64 600, !914, i64 608, !915, i64 616, !915, i64 4712, !915, i64 8808, !918, i64 12904, !918, i64 12912, !1175, i64 12920, !915, i64 12976, !918, i64 12984, !914, i64 12992, !1176, i64 13000, !1176, i64 13032, !914, i64 13064, !918, i64 13072, !918, i64 13080, !914, i64 13088, !914, i64 13096, !914, i64 13104, !915, i64 13112, !915, i64 13116, !1067, i64 13120, !914, i64 13128, !1171, i64 13136, !914, i64 13168, !914, i64 13176, !915, i64 13184, !915, i64 13188, !1177, i64 13192, !915, i64 13200, !918, i64 13208, !918, i64 13216, !915, i64 13224, !918, i64 13232}
!1169 = !{!"_ChromaticityInfo", !1170, i64 0, !1170, i64 24, !1170, i64 48, !1170, i64 72}
!1170 = !{!"_PrimaryInfo", !1066, i64 0, !1066, i64 8, !1066, i64 16}
!1171 = !{!"_RectangleInfo", !918, i64 0, !918, i64 8, !918, i64 16, !918, i64 24}
!1172 = !{!"_ErrorInfo", !1066, i64 0, !1066, i64 8, !1066, i64 16}
!1173 = !{!"_TimerInfo", !1174, i64 0, !1174, i64 24, !915, i64 48, !918, i64 56}
!1174 = !{!"_Timer", !1066, i64 0, !1066, i64 8, !1066, i64 16}
!1175 = !{!"_ExceptionInfo", !915, i64 0, !917, i64 4, !914, i64 8, !914, i64 16, !914, i64 24, !915, i64 32, !914, i64 40, !918, i64 48}
!1176 = !{!"_ProfileInfo", !914, i64 0, !918, i64 8, !914, i64 16, !918, i64 24}
!1177 = !{!"long long", !915, i64 0}
!1178 = !DILocation(line: 231, column: 24, scope: !981)
!1179 = !DILocation(line: 231, column: 15, scope: !981)
!1180 = !DILocation(line: 231, column: 10, scope: !981)
!1181 = !DILocation(line: 231, column: 14, scope: !981)
!1182 = !{!1168, !918, i64 48}
!1183 = !DILocation(line: 232, column: 24, scope: !981)
!1184 = !DILocation(line: 232, column: 35, scope: !981)
!1185 = !DILocation(line: 233, column: 28, scope: !981)
!1186 = !DILocation(line: 233, column: 33, scope: !981)
!1187 = !DILocation(line: 234, column: 15, scope: !981)
!1188 = !DILocation(line: 234, column: 29, scope: !981)
!1189 = !DILocation(line: 233, column: 68, scope: !981)
!1190 = !DILocation(line: 233, column: 16, scope: !981)
!1191 = !DILocation(line: 233, column: 10, scope: !981)
!1192 = !DILocation(line: 233, column: 15, scope: !981)
!1193 = !{!1168, !915, i64 32}
!1194 = !DILocation(line: 235, column: 17, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !981, file: !866, line: 235, column: 7)
!1196 = !DILocation(line: 235, column: 44, scope: !1195)
!1197 = !DILocation(line: 237, column: 53, scope: !1195)
!1198 = !DILocation(line: 237, column: 28, scope: !1195)
!1199 = !DILocation(line: 238, column: 32, scope: !1195)
!1200 = !DILocation(line: 238, column: 7, scope: !1195)
!1201 = !DILocation(line: 242, column: 38, scope: !1195)
!1202 = !DILocation(line: 242, column: 52, scope: !1195)
!1203 = !DILocation(line: 242, column: 28, scope: !1195)
!1204 = !DILocation(line: 243, column: 31, scope: !1195)
!1205 = !DILocation(line: 243, column: 7, scope: !1195)
!1206 = !DILocation(line: 0, scope: !1195)
!1207 = !{!1168, !918, i64 56}
!1208 = !DILocation(line: 246, column: 44, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !981, file: !866, line: 246, column: 7)
!1210 = !DILocation(line: 250, column: 25, scope: !1209)
!1211 = !{!1168, !915, i64 0}
!1212 = !DILocation(line: 251, column: 10, scope: !981)
!1213 = !DILocation(line: 252, column: 47, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !981, file: !866, line: 252, column: 7)
!1215 = !DILocation(line: 0, scope: !1214)
!1216 = !DILocation(line: 255, column: 7, scope: !981)
!1217 = !DILocation(line: 255, column: 14, scope: !1028)
!1218 = !DILocation(line: 255, column: 28, scope: !1028)
!1219 = !DILocation(line: 257, column: 20, scope: !1026)
!1220 = !DILocation(line: 257, column: 34, scope: !1026)
!1221 = !DILocation(line: 257, column: 11, scope: !1027)
!1222 = !DILocation(line: 258, column: 32, scope: !1026)
!1223 = !DILocation(line: 258, column: 23, scope: !1026)
!1224 = !DILocation(line: 258, column: 16, scope: !1026)
!1225 = !DILocation(line: 258, column: 22, scope: !1026)
!1226 = !{!1168, !918, i64 64}
!1227 = !DILocation(line: 258, column: 9, scope: !1026)
!1228 = !DILocation(line: 0, scope: !1025)
!1229 = !DILocation(line: 265, column: 41, scope: !1025)
!1230 = !DILocation(line: 265, column: 29, scope: !1025)
!1231 = !DILocation(line: 265, column: 18, scope: !1025)
!1232 = !DILocation(line: 265, column: 24, scope: !1025)
!1233 = !DILocation(line: 266, column: 15, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1025, file: !866, line: 266, column: 15)
!1235 = !DILocation(line: 266, column: 57, scope: !1234)
!1236 = !DILocation(line: 266, column: 15, scope: !1025)
!1237 = !DILocation(line: 267, column: 13, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1234, file: !866, line: 267, column: 13)
!1239 = !DILocation(line: 267, column: 13, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !866, line: 267, column: 13)
!1241 = distinct !DILexicalBlock(scope: !1238, file: !866, line: 267, column: 13)
!1242 = !DILocation(line: 270, column: 16, scope: !1031)
!1243 = !{!1088, !915, i64 0}
!1244 = !DILocation(line: 270, column: 26, scope: !1031)
!1245 = !DILocation(line: 270, column: 7, scope: !981)
!1246 = !DILocation(line: 0, scope: !1030)
!1247 = !DILocation(line: 281, column: 14, scope: !1030)
!1248 = !DILocation(line: 284, column: 53, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1030, file: !866, line: 283, column: 11)
!1250 = !DILocation(line: 284, column: 26, scope: !1249)
!1251 = !DILocation(line: 286, column: 19, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1030, file: !866, line: 286, column: 11)
!1253 = !DILocation(line: 286, column: 11, scope: !1030)
!1254 = !DILocation(line: 287, column: 9, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1252, file: !866, line: 287, column: 9)
!1256 = !DILocation(line: 287, column: 9, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !866, line: 287, column: 9)
!1258 = distinct !DILexicalBlock(scope: !1255, file: !866, line: 287, column: 9)
!1259 = !DILocation(line: 288, column: 37, scope: !1030)
!1260 = !DILocation(line: 288, column: 28, scope: !1030)
!1261 = !DILocation(line: 288, column: 13, scope: !1030)
!1262 = !DILocation(line: 289, column: 24, scope: !1030)
!1263 = !DILocation(line: 289, column: 7, scope: !1030)
!1264 = !DILocation(line: 289, column: 34, scope: !1030)
!1265 = !{!915, !915, i64 0}
!1266 = !DILocation(line: 290, column: 14, scope: !1030)
!1267 = !DILocation(line: 291, column: 15, scope: !1030)
!1268 = !DILocation(line: 293, column: 10, scope: !981)
!1269 = !DILocation(line: 294, column: 9, scope: !981)
!1270 = !DILocation(line: 294, column: 16, scope: !981)
!1271 = !{!1067, !1068, i64 6}
!1272 = !DILocation(line: 295, column: 16, scope: !1040)
!1273 = !DILocation(line: 295, column: 30, scope: !1040)
!1274 = !DILocation(line: 295, column: 7, scope: !981)
!1275 = !DILocation(line: 300, column: 45, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1039, file: !866, line: 300, column: 11)
!1277 = !DILocation(line: 300, column: 11, scope: !1276)
!1278 = !DILocation(line: 300, column: 53, scope: !1276)
!1279 = !DILocation(line: 300, column: 11, scope: !1039)
!1280 = !DILocation(line: 302, column: 38, scope: !1037)
!1281 = !DILocation(line: 302, column: 19, scope: !1037)
!1282 = !DILocation(line: 302, column: 7, scope: !1038)
!1283 = !DILocation(line: 301, column: 9, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1276, file: !866, line: 301, column: 9)
!1285 = !DILocation(line: 301, column: 9, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !866, line: 301, column: 9)
!1287 = distinct !DILexicalBlock(scope: !1284, file: !866, line: 301, column: 9)
!1288 = !DILocation(line: 304, column: 26, scope: !1036)
!1289 = !DILocation(line: 304, column: 9, scope: !1036)
!1290 = !DILocation(line: 312, column: 58, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1035, file: !866, line: 308, column: 11)
!1292 = !DILocation(line: 312, column: 42, scope: !1291)
!1293 = !DILocation(line: 366, column: 26, scope: !1294, inlinedAt: !1300)
!1294 = distinct !DISubprogram(name: "ScaleCharToQuantum", scope: !1295, file: !1295, line: 363, type: !1296, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1298)
!1295 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f56ff413af29c367aaef7b4fe7af9628")
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!519, !890}
!1298 = !{!1299}
!1299 = !DILocalVariable(name: "value", arg: 1, scope: !1294, file: !1295, line: 363, type: !890)
!1300 = distinct !DILocation(line: 312, column: 23, scope: !1291)
!1301 = !DILocation(line: 0, scope: !1294, inlinedAt: !1300)
!1302 = !DILocation(line: 366, column: 25, scope: !1294, inlinedAt: !1300)
!1303 = !DILocation(line: 312, column: 22, scope: !1291)
!1304 = !{!1067, !1068, i64 4}
!1305 = !DILocation(line: 313, column: 24, scope: !1291)
!1306 = !{!1067, !1068, i64 2}
!1307 = !DILocation(line: 314, column: 23, scope: !1291)
!1308 = !{!1067, !1068, i64 0}
!1309 = !DILocation(line: 315, column: 13, scope: !1291)
!1310 = !DILocation(line: 326, column: 31, scope: !1034)
!1311 = !DILocation(line: 327, column: 31, scope: !1034)
!1312 = !DILocation(line: 0, scope: !1034)
!1313 = !DILocation(line: 329, column: 56, scope: !1034)
!1314 = !DILocalVariable(name: "quantum", arg: 1, scope: !1315, file: !1295, line: 271, type: !1318)
!1315 = distinct !DISubprogram(name: "ScaleAnyToQuantum", scope: !1295, file: !1295, line: 271, type: !1316, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1319)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!519, !1318, !1318}
!1318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1041)
!1319 = !{!1314, !1320}
!1320 = !DILocalVariable(name: "range", arg: 2, scope: !1315, file: !1295, line: 272, type: !1318)
!1321 = !DILocation(line: 0, scope: !1315, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 329, column: 23, scope: !1034)
!1323 = !DILocation(line: 275, column: 52, scope: !1315, inlinedAt: !1322)
!1324 = !DILocation(line: 275, column: 51, scope: !1315, inlinedAt: !1322)
!1325 = !DILocation(line: 275, column: 60, scope: !1315, inlinedAt: !1322)
!1326 = !DILocation(line: 275, column: 21, scope: !1315, inlinedAt: !1322)
!1327 = !DILocation(line: 275, column: 66, scope: !1315, inlinedAt: !1322)
!1328 = !DILocation(line: 275, column: 10, scope: !1315, inlinedAt: !1322)
!1329 = !DILocation(line: 329, column: 22, scope: !1034)
!1330 = !DILocation(line: 330, column: 59, scope: !1034)
!1331 = !DILocation(line: 331, column: 31, scope: !1034)
!1332 = !DILocation(line: 330, column: 64, scope: !1034)
!1333 = !DILocation(line: 0, scope: !1315, inlinedAt: !1334)
!1334 = distinct !DILocation(line: 330, column: 25, scope: !1034)
!1335 = !DILocation(line: 275, column: 52, scope: !1315, inlinedAt: !1334)
!1336 = !DILocation(line: 275, column: 51, scope: !1315, inlinedAt: !1334)
!1337 = !DILocation(line: 275, column: 60, scope: !1315, inlinedAt: !1334)
!1338 = !DILocation(line: 275, column: 21, scope: !1315, inlinedAt: !1334)
!1339 = !DILocation(line: 275, column: 66, scope: !1315, inlinedAt: !1334)
!1340 = !DILocation(line: 275, column: 10, scope: !1315, inlinedAt: !1334)
!1341 = !DILocation(line: 330, column: 24, scope: !1034)
!1342 = !DILocation(line: 332, column: 49, scope: !1034)
!1343 = !DILocation(line: 0, scope: !1315, inlinedAt: !1344)
!1344 = distinct !DILocation(line: 332, column: 24, scope: !1034)
!1345 = !DILocation(line: 275, column: 52, scope: !1315, inlinedAt: !1344)
!1346 = !DILocation(line: 275, column: 51, scope: !1315, inlinedAt: !1344)
!1347 = !DILocation(line: 275, column: 60, scope: !1315, inlinedAt: !1344)
!1348 = !DILocation(line: 275, column: 21, scope: !1315, inlinedAt: !1344)
!1349 = !DILocation(line: 275, column: 66, scope: !1315, inlinedAt: !1344)
!1350 = !DILocation(line: 275, column: 10, scope: !1315, inlinedAt: !1344)
!1351 = !DILocation(line: 332, column: 23, scope: !1034)
!1352 = !DILocation(line: 340, column: 59, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1035, file: !866, line: 336, column: 11)
!1354 = !DILocation(line: 340, column: 43, scope: !1353)
!1355 = !DILocation(line: 366, column: 26, scope: !1294, inlinedAt: !1356)
!1356 = distinct !DILocation(line: 340, column: 24, scope: !1353)
!1357 = !DILocation(line: 0, scope: !1294, inlinedAt: !1356)
!1358 = !DILocation(line: 366, column: 25, scope: !1294, inlinedAt: !1356)
!1359 = !DILocation(line: 340, column: 23, scope: !1353)
!1360 = !DILocation(line: 341, column: 60, scope: !1353)
!1361 = !DILocation(line: 341, column: 44, scope: !1353)
!1362 = !DILocation(line: 366, column: 26, scope: !1294, inlinedAt: !1363)
!1363 = distinct !DILocation(line: 341, column: 25, scope: !1353)
!1364 = !DILocation(line: 0, scope: !1294, inlinedAt: !1363)
!1365 = !DILocation(line: 366, column: 25, scope: !1294, inlinedAt: !1363)
!1366 = !DILocation(line: 341, column: 24, scope: !1353)
!1367 = !DILocation(line: 342, column: 58, scope: !1353)
!1368 = !DILocation(line: 342, column: 42, scope: !1353)
!1369 = !DILocation(line: 366, column: 26, scope: !1294, inlinedAt: !1370)
!1370 = distinct !DILocation(line: 342, column: 23, scope: !1353)
!1371 = !DILocation(line: 0, scope: !1294, inlinedAt: !1370)
!1372 = !DILocation(line: 366, column: 25, scope: !1294, inlinedAt: !1370)
!1373 = !DILocation(line: 342, column: 22, scope: !1353)
!1374 = !DILocation(line: 343, column: 13, scope: !1353)
!1375 = !DILocation(line: 350, column: 59, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1035, file: !866, line: 346, column: 11)
!1377 = !DILocation(line: 350, column: 43, scope: !1376)
!1378 = !DILocation(line: 366, column: 26, scope: !1294, inlinedAt: !1379)
!1379 = distinct !DILocation(line: 350, column: 24, scope: !1376)
!1380 = !DILocation(line: 0, scope: !1294, inlinedAt: !1379)
!1381 = !DILocation(line: 366, column: 25, scope: !1294, inlinedAt: !1379)
!1382 = !DILocation(line: 350, column: 23, scope: !1376)
!1383 = !DILocation(line: 351, column: 60, scope: !1376)
!1384 = !DILocation(line: 351, column: 44, scope: !1376)
!1385 = !DILocation(line: 366, column: 26, scope: !1294, inlinedAt: !1386)
!1386 = distinct !DILocation(line: 351, column: 25, scope: !1376)
!1387 = !DILocation(line: 0, scope: !1294, inlinedAt: !1386)
!1388 = !DILocation(line: 366, column: 25, scope: !1294, inlinedAt: !1386)
!1389 = !DILocation(line: 351, column: 24, scope: !1376)
!1390 = !DILocation(line: 352, column: 58, scope: !1376)
!1391 = !DILocation(line: 352, column: 42, scope: !1376)
!1392 = !DILocation(line: 366, column: 26, scope: !1294, inlinedAt: !1393)
!1393 = distinct !DILocation(line: 352, column: 23, scope: !1376)
!1394 = !DILocation(line: 0, scope: !1294, inlinedAt: !1393)
!1395 = !DILocation(line: 366, column: 25, scope: !1294, inlinedAt: !1393)
!1396 = !DILocation(line: 352, column: 22, scope: !1376)
!1397 = !DILocation(line: 354, column: 31, scope: !1376)
!1398 = !DILocation(line: 354, column: 15, scope: !1376)
!1399 = !DILocation(line: 366, column: 26, scope: !1294, inlinedAt: !1400)
!1400 = distinct !DILocation(line: 353, column: 51, scope: !1376)
!1401 = !DILocation(line: 0, scope: !1294, inlinedAt: !1400)
!1402 = !DILocation(line: 366, column: 25, scope: !1294, inlinedAt: !1400)
!1403 = !DILocation(line: 353, column: 50, scope: !1376)
!1404 = !DILocation(line: 353, column: 26, scope: !1376)
!1405 = !DILocation(line: 355, column: 13, scope: !1376)
!1406 = !DILocation(line: 358, column: 16, scope: !1036)
!1407 = !{!1168, !914, i64 72}
!1408 = !DILocation(line: 358, column: 9, scope: !1036)
!1409 = !DILocation(line: 358, column: 28, scope: !1036)
!1410 = !DILocation(line: 302, column: 47, scope: !1037)
!1411 = distinct !{!1411, !1282, !1412, !1413, !1414}
!1412 = !DILocation(line: 359, column: 7, scope: !1038)
!1413 = !{!"llvm.loop.mustprogress"}
!1414 = !{!"llvm.loop.unroll.disable"}
!1415 = !DILocation(line: 369, column: 12, scope: !981)
!1416 = !DILocation(line: 371, column: 34, scope: !1050)
!1417 = !DILocation(line: 371, column: 15, scope: !1050)
!1418 = !DILocation(line: 371, column: 3, scope: !1051)
!1419 = !DILocation(line: 374, column: 36, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1049, file: !866, line: 374, column: 9)
!1421 = !DILocation(line: 374, column: 61, scope: !1420)
!1422 = !DILocation(line: 374, column: 9, scope: !1049)
!1423 = !DILocation(line: 375, column: 28, scope: !1420)
!1424 = !DILocation(line: 375, column: 7, scope: !1420)
!1425 = !DILocation(line: 0, scope: !1049)
!1426 = !DILocation(line: 376, column: 58, scope: !1049)
!1427 = !DILocation(line: 376, column: 7, scope: !1049)
!1428 = !DILocation(line: 377, column: 11, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1049, file: !866, line: 377, column: 9)
!1430 = !DILocation(line: 377, column: 9, scope: !1049)
!1431 = !DILocation(line: 379, column: 13, scope: !1049)
!1432 = !DILocation(line: 380, column: 36, scope: !1047)
!1433 = !DILocation(line: 380, column: 17, scope: !1047)
!1434 = !DILocation(line: 380, column: 5, scope: !1048)
!1435 = !DILocation(line: 382, column: 21, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1046, file: !866, line: 382, column: 11)
!1437 = !DILocation(line: 382, column: 51, scope: !1436)
!1438 = !DILocation(line: 386, column: 15, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !866, line: 386, column: 15)
!1440 = distinct !DILexicalBlock(scope: !1436, file: !866, line: 385, column: 9)
!1441 = !DILocation(line: 386, column: 25, scope: !1439)
!1442 = !DILocation(line: 386, column: 15, scope: !1440)
!1443 = !DILocation(line: 388, column: 24, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1439, file: !866, line: 387, column: 13)
!1445 = !DILocation(line: 389, column: 25, scope: !1444)
!1446 = !DILocation(line: 390, column: 13, scope: !1444)
!1447 = !DILocation(line: 393, column: 21, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1439, file: !866, line: 392, column: 13)
!1449 = !DILocation(line: 394, column: 25, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1448, file: !866, line: 394, column: 19)
!1451 = !DILocation(line: 394, column: 19, scope: !1448)
!1452 = !DILocation(line: 395, column: 17, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1450, file: !866, line: 395, column: 17)
!1454 = !DILocation(line: 395, column: 17, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !866, line: 395, column: 17)
!1456 = distinct !DILexicalBlock(scope: !1453, file: !866, line: 395, column: 17)
!1457 = !DILocation(line: 396, column: 20, scope: !1448)
!1458 = !DILocation(line: 396, column: 30, scope: !1448)
!1459 = !DILocation(line: 397, column: 24, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1448, file: !866, line: 397, column: 19)
!1461 = !DILocation(line: 397, column: 19, scope: !1448)
!1462 = !DILocation(line: 398, column: 26, scope: !1460)
!1463 = !DILocation(line: 398, column: 17, scope: !1460)
!1464 = !DILocation(line: 402, column: 16, scope: !1045)
!1465 = !DILocation(line: 402, column: 11, scope: !1046)
!1466 = !DILocation(line: 403, column: 26, scope: !1045)
!1467 = !DILocation(line: 403, column: 9, scope: !1045)
!1468 = !DILocation(line: 411, column: 33, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1044, file: !866, line: 407, column: 11)
!1470 = !DILocation(line: 411, column: 19, scope: !1469)
!1471 = !DILocation(line: 412, column: 26, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1469, file: !866, line: 412, column: 17)
!1473 = !DILocation(line: 412, column: 40, scope: !1472)
!1474 = !DILocation(line: 412, column: 17, scope: !1469)
!1475 = !DILocation(line: 413, column: 28, scope: !1472)
!1476 = !DILocation(line: 414, column: 21, scope: !1472)
!1477 = !DILocalVariable(name: "image", arg: 1, scope: !1478, file: !1479, line: 29, type: !490)
!1478 = distinct !DISubprogram(name: "ConstrainColormapIndex", scope: !1479, file: !1479, line: 29, type: !1480, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1482)
!1479 = !DIFile(filename: "apps/538.imagick_r/src/magick/colormap-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4aa48b1ade7c8fc5938cc8de08671b4d")
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!850, !490, !773}
!1482 = !{!1477, !1483}
!1483 = !DILocalVariable(name: "index", arg: 2, scope: !1478, file: !1479, line: 30, type: !773)
!1484 = !DILocation(line: 0, scope: !1478, inlinedAt: !1485)
!1485 = distinct !DILocation(line: 413, column: 47, scope: !1472)
!1486 = !DILocation(line: 32, column: 22, scope: !1487, inlinedAt: !1485)
!1487 = distinct !DILexicalBlock(scope: !1478, file: !1479, line: 32, column: 7)
!1488 = !DILocation(line: 32, column: 13, scope: !1487, inlinedAt: !1485)
!1489 = !DILocation(line: 32, column: 7, scope: !1478, inlinedAt: !1485)
!1490 = !DILocation(line: 34, column: 10, scope: !1478, inlinedAt: !1485)
!1491 = !DILocation(line: 36, column: 3, scope: !1478, inlinedAt: !1485)
!1492 = !DILocation(line: 413, column: 21, scope: !1472)
!1493 = !DILocation(line: 413, column: 15, scope: !1472)
!1494 = !DILocation(line: 366, column: 26, scope: !1294, inlinedAt: !1495)
!1495 = distinct !DILocation(line: 417, column: 27, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1472, file: !866, line: 416, column: 15)
!1497 = !DILocation(line: 0, scope: !1294, inlinedAt: !1495)
!1498 = !DILocation(line: 366, column: 25, scope: !1294, inlinedAt: !1495)
!1499 = !DILocation(line: 417, column: 26, scope: !1496)
!1500 = !DILocation(line: 0, scope: !1294, inlinedAt: !1501)
!1501 = distinct !DILocation(line: 418, column: 29, scope: !1496)
!1502 = !DILocation(line: 418, column: 28, scope: !1496)
!1503 = !DILocation(line: 0, scope: !1294, inlinedAt: !1504)
!1504 = distinct !DILocation(line: 419, column: 28, scope: !1496)
!1505 = !DILocation(line: 419, column: 27, scope: !1496)
!1506 = !DILocation(line: 432, column: 17, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1043, file: !866, line: 432, column: 17)
!1508 = !DILocation(line: 432, column: 42, scope: !1507)
!1509 = !DILocation(line: 432, column: 17, scope: !1043)
!1510 = !DILocation(line: 433, column: 15, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1507, file: !866, line: 433, column: 15)
!1512 = !DILocation(line: 433, column: 15, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1511, file: !866, line: 433, column: 15)
!1514 = !DILocation(line: 433, column: 15, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1513, file: !866, line: 433, column: 15)
!1516 = !DILocation(line: 434, column: 15, scope: !1043)
!1517 = !DILocation(line: 435, column: 15, scope: !1043)
!1518 = !DILocation(line: 0, scope: !1043)
!1519 = !DILocation(line: 437, column: 46, scope: !1043)
!1520 = !DILocation(line: 437, column: 56, scope: !1043)
!1521 = !DILocation(line: 0, scope: !1315, inlinedAt: !1522)
!1522 = distinct !DILocation(line: 437, column: 23, scope: !1043)
!1523 = !DILocation(line: 275, column: 52, scope: !1315, inlinedAt: !1522)
!1524 = !DILocation(line: 275, column: 51, scope: !1315, inlinedAt: !1522)
!1525 = !DILocation(line: 275, column: 60, scope: !1315, inlinedAt: !1522)
!1526 = !DILocation(line: 275, column: 21, scope: !1315, inlinedAt: !1522)
!1527 = !DILocation(line: 275, column: 66, scope: !1315, inlinedAt: !1522)
!1528 = !DILocation(line: 275, column: 10, scope: !1315, inlinedAt: !1522)
!1529 = !DILocation(line: 437, column: 22, scope: !1043)
!1530 = !DILocation(line: 438, column: 59, scope: !1043)
!1531 = !DILocation(line: 439, column: 31, scope: !1043)
!1532 = !DILocation(line: 438, column: 64, scope: !1043)
!1533 = !DILocation(line: 0, scope: !1315, inlinedAt: !1534)
!1534 = distinct !DILocation(line: 438, column: 25, scope: !1043)
!1535 = !DILocation(line: 275, column: 52, scope: !1315, inlinedAt: !1534)
!1536 = !DILocation(line: 275, column: 51, scope: !1315, inlinedAt: !1534)
!1537 = !DILocation(line: 275, column: 60, scope: !1315, inlinedAt: !1534)
!1538 = !DILocation(line: 275, column: 21, scope: !1315, inlinedAt: !1534)
!1539 = !DILocation(line: 275, column: 66, scope: !1315, inlinedAt: !1534)
!1540 = !DILocation(line: 275, column: 10, scope: !1315, inlinedAt: !1534)
!1541 = !DILocation(line: 438, column: 24, scope: !1043)
!1542 = !DILocation(line: 440, column: 49, scope: !1043)
!1543 = !DILocation(line: 0, scope: !1315, inlinedAt: !1544)
!1544 = distinct !DILocation(line: 440, column: 24, scope: !1043)
!1545 = !DILocation(line: 275, column: 52, scope: !1315, inlinedAt: !1544)
!1546 = !DILocation(line: 275, column: 51, scope: !1315, inlinedAt: !1544)
!1547 = !DILocation(line: 275, column: 60, scope: !1315, inlinedAt: !1544)
!1548 = !DILocation(line: 275, column: 21, scope: !1315, inlinedAt: !1544)
!1549 = !DILocation(line: 275, column: 66, scope: !1315, inlinedAt: !1544)
!1550 = !DILocation(line: 275, column: 10, scope: !1315, inlinedAt: !1544)
!1551 = !DILocation(line: 440, column: 23, scope: !1043)
!1552 = !DILocation(line: 441, column: 24, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1043, file: !866, line: 441, column: 17)
!1554 = !DILocation(line: 441, column: 30, scope: !1553)
!1555 = !DILocation(line: 441, column: 17, scope: !1043)
!1556 = !DILocation(line: 442, column: 29, scope: !1553)
!1557 = !DILocation(line: 442, column: 28, scope: !1553)
!1558 = !DILocation(line: 442, column: 15, scope: !1553)
!1559 = !DILocation(line: 444, column: 24, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1043, file: !866, line: 444, column: 17)
!1561 = !DILocation(line: 444, column: 38, scope: !1560)
!1562 = !DILocation(line: 444, column: 17, scope: !1043)
!1563 = !DILocation(line: 445, column: 51, scope: !1560)
!1564 = !DILocation(line: 445, column: 62, scope: !1560)
!1565 = !DILocation(line: 445, column: 68, scope: !1560)
!1566 = !DILocation(line: 445, column: 67, scope: !1560)
!1567 = !DILocation(line: 0, scope: !1478, inlinedAt: !1568)
!1568 = distinct !DILocation(line: 445, column: 21, scope: !1560)
!1569 = !DILocation(line: 32, column: 22, scope: !1487, inlinedAt: !1568)
!1570 = !DILocation(line: 32, column: 13, scope: !1487, inlinedAt: !1568)
!1571 = !DILocation(line: 32, column: 7, scope: !1478, inlinedAt: !1568)
!1572 = !DILocation(line: 33, column: 12, scope: !1487, inlinedAt: !1568)
!1573 = !DILocation(line: 33, column: 5, scope: !1487, inlinedAt: !1568)
!1574 = !DILocation(line: 34, column: 10, scope: !1478, inlinedAt: !1568)
!1575 = !DILocation(line: 36, column: 3, scope: !1478, inlinedAt: !1568)
!1576 = !DILocation(line: 453, column: 17, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !866, line: 453, column: 17)
!1578 = distinct !DILexicalBlock(scope: !1044, file: !866, line: 449, column: 11)
!1579 = !DILocation(line: 453, column: 42, scope: !1577)
!1580 = !DILocation(line: 453, column: 17, scope: !1578)
!1581 = !DILocation(line: 454, column: 15, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1577, file: !866, line: 454, column: 15)
!1583 = !DILocation(line: 454, column: 15, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1582, file: !866, line: 454, column: 15)
!1585 = !DILocation(line: 454, column: 15, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1584, file: !866, line: 454, column: 15)
!1587 = !DILocation(line: 455, column: 43, scope: !1578)
!1588 = !DILocation(line: 0, scope: !1294, inlinedAt: !1589)
!1589 = distinct !DILocation(line: 455, column: 24, scope: !1578)
!1590 = !DILocation(line: 366, column: 26, scope: !1294, inlinedAt: !1589)
!1591 = !DILocation(line: 366, column: 25, scope: !1294, inlinedAt: !1589)
!1592 = !DILocation(line: 455, column: 23, scope: !1578)
!1593 = !DILocation(line: 456, column: 44, scope: !1578)
!1594 = !DILocation(line: 0, scope: !1294, inlinedAt: !1595)
!1595 = distinct !DILocation(line: 456, column: 25, scope: !1578)
!1596 = !DILocation(line: 366, column: 26, scope: !1294, inlinedAt: !1595)
!1597 = !DILocation(line: 366, column: 25, scope: !1294, inlinedAt: !1595)
!1598 = !DILocation(line: 456, column: 24, scope: !1578)
!1599 = !DILocation(line: 457, column: 42, scope: !1578)
!1600 = !DILocation(line: 0, scope: !1294, inlinedAt: !1601)
!1601 = distinct !DILocation(line: 457, column: 23, scope: !1578)
!1602 = !DILocation(line: 366, column: 26, scope: !1294, inlinedAt: !1601)
!1603 = !DILocation(line: 366, column: 25, scope: !1294, inlinedAt: !1601)
!1604 = !DILocation(line: 457, column: 22, scope: !1578)
!1605 = !DILocation(line: 458, column: 13, scope: !1578)
!1606 = !DILocation(line: 465, column: 17, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !866, line: 465, column: 17)
!1608 = distinct !DILexicalBlock(scope: !1044, file: !866, line: 461, column: 11)
!1609 = !DILocation(line: 465, column: 42, scope: !1607)
!1610 = !DILocation(line: 465, column: 17, scope: !1608)
!1611 = !DILocation(line: 466, column: 15, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1607, file: !866, line: 466, column: 15)
!1613 = !DILocation(line: 466, column: 15, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1612, file: !866, line: 466, column: 15)
!1615 = !DILocation(line: 466, column: 15, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1614, file: !866, line: 466, column: 15)
!1617 = !DILocation(line: 467, column: 43, scope: !1608)
!1618 = !DILocation(line: 0, scope: !1294, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 467, column: 24, scope: !1608)
!1620 = !DILocation(line: 366, column: 26, scope: !1294, inlinedAt: !1619)
!1621 = !DILocation(line: 366, column: 25, scope: !1294, inlinedAt: !1619)
!1622 = !DILocation(line: 467, column: 23, scope: !1608)
!1623 = !DILocation(line: 468, column: 44, scope: !1608)
!1624 = !DILocation(line: 0, scope: !1294, inlinedAt: !1625)
!1625 = distinct !DILocation(line: 468, column: 25, scope: !1608)
!1626 = !DILocation(line: 366, column: 26, scope: !1294, inlinedAt: !1625)
!1627 = !DILocation(line: 366, column: 25, scope: !1294, inlinedAt: !1625)
!1628 = !DILocation(line: 468, column: 24, scope: !1608)
!1629 = !DILocation(line: 469, column: 42, scope: !1608)
!1630 = !DILocation(line: 0, scope: !1294, inlinedAt: !1631)
!1631 = distinct !DILocation(line: 469, column: 23, scope: !1608)
!1632 = !DILocation(line: 366, column: 26, scope: !1294, inlinedAt: !1631)
!1633 = !DILocation(line: 366, column: 25, scope: !1294, inlinedAt: !1631)
!1634 = !DILocation(line: 469, column: 22, scope: !1608)
!1635 = !DILocation(line: 471, column: 15, scope: !1608)
!1636 = !DILocation(line: 0, scope: !1294, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 470, column: 51, scope: !1608)
!1638 = !DILocation(line: 366, column: 26, scope: !1294, inlinedAt: !1637)
!1639 = !DILocation(line: 366, column: 25, scope: !1294, inlinedAt: !1637)
!1640 = !DILocation(line: 470, column: 50, scope: !1608)
!1641 = !DILocation(line: 470, column: 26, scope: !1608)
!1642 = !DILocation(line: 472, column: 13, scope: !1608)
!1643 = !DILocation(line: 477, column: 18, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1046, file: !866, line: 477, column: 11)
!1645 = !DILocation(line: 477, column: 32, scope: !1644)
!1646 = !DILocation(line: 477, column: 11, scope: !1046)
!1647 = !DILocation(line: 478, column: 9, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !866, line: 478, column: 9)
!1649 = distinct !DILexicalBlock(scope: !1644, file: !866, line: 478, column: 9)
!1650 = !{!1068, !1068, i64 0}
!1651 = !DILocation(line: 479, column: 7, scope: !1046)
!1652 = !DILocation(line: 480, column: 7, scope: !1046)
!1653 = !DILocation(line: 481, column: 7, scope: !1046)
!1654 = !DILocation(line: 482, column: 18, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1046, file: !866, line: 482, column: 11)
!1656 = !DILocation(line: 482, column: 24, scope: !1655)
!1657 = !DILocation(line: 482, column: 11, scope: !1046)
!1658 = !DILocation(line: 483, column: 9, scope: !1655)
!1659 = !DILocation(line: 484, column: 8, scope: !1046)
!1660 = !DILocation(line: 380, column: 46, scope: !1047)
!1661 = distinct !{!1661, !1434, !1662, !1413, !1414}
!1662 = !DILocation(line: 485, column: 5, scope: !1048)
!1663 = !DILocation(line: 365, column: 7, scope: !981)
!1664 = !DILocation(line: 486, column: 36, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1049, file: !866, line: 486, column: 9)
!1666 = !DILocation(line: 489, column: 63, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1665, file: !866, line: 489, column: 11)
!1668 = !DILocation(line: 0, scope: !1667)
!1669 = !DILocation(line: 493, column: 26, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1049, file: !866, line: 493, column: 9)
!1671 = !DILocation(line: 493, column: 16, scope: !1670)
!1672 = !DILocation(line: 493, column: 9, scope: !1049)
!1673 = !DILocation(line: 498, column: 9, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1049, file: !866, line: 498, column: 9)
!1675 = !DILocation(line: 498, column: 46, scope: !1674)
!1676 = !DILocation(line: 498, column: 9, scope: !1049)
!1677 = !DILocation(line: 500, column: 16, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1049, file: !866, line: 500, column: 9)
!1679 = !{!1168, !914, i64 13088}
!1680 = !DILocation(line: 500, column: 25, scope: !1678)
!1681 = !DILocation(line: 500, column: 9, scope: !1049)
!1682 = !DILocation(line: 503, column: 18, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1678, file: !866, line: 501, column: 7)
!1684 = !DILocation(line: 502, column: 16, scope: !1683)
!1685 = !DILocation(line: 504, column: 20, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1683, file: !866, line: 504, column: 13)
!1687 = !DILocation(line: 504, column: 13, scope: !1683)
!1688 = !DILocation(line: 371, column: 41, scope: !1050)
!1689 = distinct !{!1689, !1418, !1690, !1413, !1414}
!1690 = !DILocation(line: 507, column: 3, scope: !1051)
!1691 = !DILocation(line: 508, column: 7, scope: !1054)
!1692 = !DILocation(line: 508, column: 22, scope: !1054)
!1693 = !DILocation(line: 508, column: 7, scope: !981)
!1694 = !DILocation(line: 509, column: 5, scope: !1053)
!1695 = !{!917, !917, i64 0}
!1696 = !DILocation(line: 0, scope: !1053)
!1697 = !DILocation(line: 511, column: 10, scope: !981)
!1698 = !DILocation(line: 512, column: 10, scope: !981)
!1699 = !DILocation(line: 512, column: 3, scope: !981)
!1700 = !DILocation(line: 513, column: 1, scope: !981)
!1701 = distinct !DISubprogram(name: "WriteTGAImage", scope: !866, file: !866, line: 634, type: !848, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1702)
!1702 = !{!1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1730, !1731}
!1703 = !DILocalVariable(name: "image_info", arg: 1, scope: !1701, file: !866, line: 634, type: !712)
!1704 = !DILocalVariable(name: "image", arg: 2, scope: !1701, file: !866, line: 634, type: !490)
!1705 = !DILocalVariable(name: "value", scope: !1701, file: !866, line: 669, type: !624)
!1706 = !DILocalVariable(name: "status", scope: !1701, file: !866, line: 672, type: !507)
!1707 = !DILocalVariable(name: "indexes", scope: !1701, file: !866, line: 675, type: !856)
!1708 = !DILocalVariable(name: "p", scope: !1701, file: !866, line: 678, type: !854)
!1709 = !DILocalVariable(name: "x", scope: !1701, file: !866, line: 681, type: !555)
!1710 = !DILocalVariable(name: "i", scope: !1701, file: !866, line: 684, type: !555)
!1711 = !DILocalVariable(name: "q", scope: !1701, file: !866, line: 687, type: !680)
!1712 = !DILocalVariable(name: "count", scope: !1701, file: !866, line: 690, type: !555)
!1713 = !DILocalVariable(name: "y", scope: !1701, file: !866, line: 691, type: !555)
!1714 = !DILocalVariable(name: "targa_info", scope: !1701, file: !866, line: 694, type: !1715)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "TargaInfo", scope: !1701, file: !866, line: 666, baseType: !1716)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TargaInfo", scope: !1701, file: !866, line: 643, size: 160, elements: !1717)
!1717 = !{!1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "id_length", scope: !1716, file: !866, line: 646, baseType: !681, size: 8)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "colormap_type", scope: !1716, file: !866, line: 647, baseType: !681, size: 8, offset: 8)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "image_type", scope: !1716, file: !866, line: 648, baseType: !681, size: 8, offset: 16)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "colormap_index", scope: !1716, file: !866, line: 651, baseType: !520, size: 16, offset: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "colormap_length", scope: !1716, file: !866, line: 652, baseType: !520, size: 16, offset: 48)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "colormap_size", scope: !1716, file: !866, line: 655, baseType: !681, size: 8, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "x_origin", scope: !1716, file: !866, line: 658, baseType: !520, size: 16, offset: 80)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "y_origin", scope: !1716, file: !866, line: 659, baseType: !520, size: 16, offset: 96)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1716, file: !866, line: 660, baseType: !520, size: 16, offset: 112)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !1716, file: !866, line: 661, baseType: !520, size: 16, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_pixel", scope: !1716, file: !866, line: 664, baseType: !681, size: 8, offset: 144)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1716, file: !866, line: 665, baseType: !681, size: 8, offset: 152)
!1730 = !DILocalVariable(name: "targa_pixels", scope: !1701, file: !866, line: 697, type: !680)
!1731 = !DILocalVariable(name: "targa_colormap", scope: !1732, file: !866, line: 782, type: !680)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !866, line: 780, column: 5)
!1733 = distinct !DILexicalBlock(scope: !1701, file: !866, line: 779, column: 7)
!1734 = !DILocation(line: 694, column: 5, scope: !1701)
!1735 = !DILocation(line: 0, scope: !1701)
!1736 = !DILocation(line: 706, column: 14, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1701, file: !866, line: 706, column: 7)
!1738 = !{!1168, !915, i64 12976}
!1739 = !DILocation(line: 706, column: 20, scope: !1737)
!1740 = !DILocation(line: 706, column: 7, scope: !1701)
!1741 = !DILocation(line: 707, column: 68, scope: !1737)
!1742 = !DILocation(line: 707, column: 12, scope: !1737)
!1743 = !DILocation(line: 707, column: 5, scope: !1737)
!1744 = !DILocation(line: 708, column: 64, scope: !1701)
!1745 = !DILocation(line: 708, column: 10, scope: !1701)
!1746 = !DILocation(line: 709, column: 14, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1701, file: !866, line: 709, column: 7)
!1748 = !DILocation(line: 709, column: 7, scope: !1701)
!1749 = !DILocation(line: 714, column: 15, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1701, file: !866, line: 714, column: 7)
!1751 = !DILocation(line: 714, column: 23, scope: !1750)
!1752 = !DILocation(line: 714, column: 33, scope: !1750)
!1753 = !DILocation(line: 714, column: 44, scope: !1750)
!1754 = !DILocation(line: 714, column: 49, scope: !1750)
!1755 = !DILocation(line: 714, column: 7, scope: !1701)
!1756 = !DILocation(line: 715, column: 5, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1750, file: !866, line: 715, column: 5)
!1758 = !DILocation(line: 715, column: 5, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1757, file: !866, line: 715, column: 5)
!1760 = !{!1065, !915, i64 12}
!1761 = distinct !{!1761, !1758, !1758, !1413, !1414}
!1762 = !DILocation(line: 716, column: 10, scope: !1701)
!1763 = !DILocation(line: 718, column: 9, scope: !1701)
!1764 = !DILocation(line: 719, column: 13, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1701, file: !866, line: 719, column: 7)
!1766 = !DILocation(line: 719, column: 7, scope: !1701)
!1767 = !DILocation(line: 720, column: 52, scope: !1765)
!1768 = !DILocalVariable(name: "x", arg: 1, scope: !1769, file: !866, line: 627, type: !773)
!1769 = distinct !DISubprogram(name: "MagickMin", scope: !866, file: !866, line: 627, type: !1770, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1772)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!501, !773, !773}
!1772 = !{!1768, !1773}
!1773 = !DILocalVariable(name: "y", arg: 2, scope: !1769, file: !866, line: 627, type: !773)
!1774 = !DILocation(line: 0, scope: !1769, inlinedAt: !1775)
!1775 = distinct !DILocation(line: 720, column: 42, scope: !1765)
!1776 = !DILocation(line: 720, column: 26, scope: !1765)
!1777 = !DILocation(line: 720, column: 5, scope: !1765)
!1778 = !DILocation(line: 727, column: 44, scope: !1701)
!1779 = !DILocation(line: 727, column: 20, scope: !1701)
!1780 = !DILocation(line: 728, column: 45, scope: !1701)
!1781 = !DILocation(line: 728, column: 21, scope: !1701)
!1782 = !DILocation(line: 731, column: 20, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1701, file: !866, line: 731, column: 7)
!1784 = !{!1065, !915, i64 204}
!1785 = !DILocation(line: 731, column: 43, scope: !1783)
!1786 = !DILocation(line: 734, column: 15, scope: !1783)
!1787 = !DILocation(line: 734, column: 21, scope: !1783)
!1788 = !DILocation(line: 734, column: 37, scope: !1783)
!1789 = !DILocation(line: 735, column: 8, scope: !1783)
!1790 = !DILocation(line: 735, column: 45, scope: !1783)
!1791 = !DILocation(line: 731, column: 7, scope: !1701)
!1792 = !DILocation(line: 738, column: 17, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1783, file: !866, line: 738, column: 9)
!1794 = !DILocation(line: 738, column: 31, scope: !1793)
!1795 = !DILocation(line: 738, column: 47, scope: !1793)
!1796 = !DILocation(line: 738, column: 58, scope: !1793)
!1797 = !DILocation(line: 738, column: 65, scope: !1793)
!1798 = !DILocation(line: 738, column: 9, scope: !1783)
!1799 = !DILocation(line: 745, column: 20, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !866, line: 745, column: 13)
!1801 = distinct !DILexicalBlock(scope: !1793, file: !866, line: 739, column: 7)
!1802 = !DILocation(line: 745, column: 26, scope: !1800)
!1803 = !DILocation(line: 745, column: 13, scope: !1801)
!1804 = !DILocation(line: 758, column: 36, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1793, file: !866, line: 752, column: 7)
!1806 = !DILocation(line: 0, scope: !1783)
!1807 = !DILocation(line: 764, column: 10, scope: !1701)
!1808 = !DILocation(line: 765, column: 10, scope: !1701)
!1809 = !DILocation(line: 766, column: 10, scope: !1701)
!1810 = !DILocation(line: 767, column: 10, scope: !1701)
!1811 = !DILocation(line: 768, column: 10, scope: !1701)
!1812 = !DILocation(line: 769, column: 10, scope: !1701)
!1813 = !DILocation(line: 770, column: 10, scope: !1701)
!1814 = !DILocation(line: 771, column: 10, scope: !1701)
!1815 = !DILocation(line: 772, column: 10, scope: !1701)
!1816 = !DILocation(line: 773, column: 10, scope: !1701)
!1817 = !DILocation(line: 774, column: 10, scope: !1701)
!1818 = !DILocation(line: 775, column: 10, scope: !1701)
!1819 = !DILocation(line: 776, column: 28, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1701, file: !866, line: 776, column: 7)
!1821 = !DILocation(line: 776, column: 7, scope: !1701)
!1822 = !DILocation(line: 777, column: 28, scope: !1820)
!1823 = !DILocation(line: 777, column: 12, scope: !1820)
!1824 = !DILocation(line: 777, column: 5, scope: !1820)
!1825 = !DILocation(line: 779, column: 7, scope: !1701)
!1826 = !DILocation(line: 787, column: 61, scope: !1732)
!1827 = !DILocation(line: 787, column: 40, scope: !1732)
!1828 = !DILocation(line: 0, scope: !1732)
!1829 = !DILocation(line: 789, column: 26, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1732, file: !866, line: 789, column: 11)
!1831 = !DILocation(line: 789, column: 11, scope: !1732)
!1832 = !DILocation(line: 792, column: 38, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !866, line: 792, column: 7)
!1834 = distinct !DILexicalBlock(scope: !1732, file: !866, line: 792, column: 7)
!1835 = !DILocation(line: 792, column: 19, scope: !1833)
!1836 = !DILocation(line: 792, column: 7, scope: !1834)
!1837 = !DILocation(line: 790, column: 9, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1830, file: !866, line: 790, column: 9)
!1839 = !DILocation(line: 790, column: 9, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1838, file: !866, line: 790, column: 9)
!1841 = distinct !{!1841, !1839, !1839, !1413, !1414}
!1842 = !DILocation(line: 794, column: 40, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1833, file: !866, line: 793, column: 7)
!1844 = !DILocation(line: 794, column: 33, scope: !1843)
!1845 = !DILocation(line: 794, column: 52, scope: !1843)
!1846 = !DILocalVariable(name: "quantum", arg: 1, scope: !1847, file: !57, line: 114, type: !1850)
!1847 = distinct !DISubprogram(name: "ScaleQuantumToChar", scope: !57, file: !57, line: 114, type: !1848, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1851)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!681, !1850}
!1850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!1851 = !{!1846}
!1852 = !DILocation(line: 0, scope: !1847, inlinedAt: !1853)
!1853 = distinct !DILocation(line: 794, column: 14, scope: !1843)
!1854 = !DILocation(line: 117, column: 29, scope: !1847, inlinedAt: !1853)
!1855 = !DILocation(line: 117, column: 36, scope: !1847, inlinedAt: !1853)
!1856 = !DILocation(line: 117, column: 61, scope: !1847, inlinedAt: !1853)
!1857 = !DILocation(line: 117, column: 43, scope: !1847, inlinedAt: !1853)
!1858 = !DILocation(line: 117, column: 68, scope: !1847, inlinedAt: !1853)
!1859 = !DILocation(line: 117, column: 10, scope: !1847, inlinedAt: !1853)
!1860 = !DILocation(line: 794, column: 11, scope: !1843)
!1861 = !DILocation(line: 794, column: 13, scope: !1843)
!1862 = !DILocation(line: 795, column: 40, scope: !1843)
!1863 = !DILocation(line: 795, column: 52, scope: !1843)
!1864 = !DILocation(line: 0, scope: !1847, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 795, column: 14, scope: !1843)
!1866 = !DILocation(line: 117, column: 29, scope: !1847, inlinedAt: !1865)
!1867 = !DILocation(line: 117, column: 36, scope: !1847, inlinedAt: !1865)
!1868 = !DILocation(line: 117, column: 61, scope: !1847, inlinedAt: !1865)
!1869 = !DILocation(line: 117, column: 43, scope: !1847, inlinedAt: !1865)
!1870 = !DILocation(line: 117, column: 68, scope: !1847, inlinedAt: !1865)
!1871 = !DILocation(line: 117, column: 10, scope: !1847, inlinedAt: !1865)
!1872 = !DILocation(line: 795, column: 11, scope: !1843)
!1873 = !DILocation(line: 795, column: 13, scope: !1843)
!1874 = !DILocation(line: 796, column: 40, scope: !1843)
!1875 = !DILocation(line: 796, column: 52, scope: !1843)
!1876 = !DILocation(line: 0, scope: !1847, inlinedAt: !1877)
!1877 = distinct !DILocation(line: 796, column: 14, scope: !1843)
!1878 = !DILocation(line: 117, column: 29, scope: !1847, inlinedAt: !1877)
!1879 = !DILocation(line: 117, column: 36, scope: !1847, inlinedAt: !1877)
!1880 = !DILocation(line: 117, column: 61, scope: !1847, inlinedAt: !1877)
!1881 = !DILocation(line: 117, column: 43, scope: !1847, inlinedAt: !1877)
!1882 = !DILocation(line: 117, column: 68, scope: !1847, inlinedAt: !1877)
!1883 = !DILocation(line: 117, column: 10, scope: !1847, inlinedAt: !1877)
!1884 = !DILocation(line: 796, column: 11, scope: !1843)
!1885 = !DILocation(line: 796, column: 13, scope: !1843)
!1886 = !DILocation(line: 792, column: 47, scope: !1833)
!1887 = distinct !{!1887, !1836, !1888, !1413, !1414}
!1888 = !DILocation(line: 797, column: 7, scope: !1834)
!1889 = !DILocation(line: 798, column: 41, scope: !1732)
!1890 = !DILocation(line: 798, column: 14, scope: !1732)
!1891 = !DILocation(line: 800, column: 40, scope: !1732)
!1892 = !DILocation(line: 801, column: 5, scope: !1733)
!1893 = !DILocation(line: 805, column: 20, scope: !1701)
!1894 = !DILocation(line: 805, column: 46, scope: !1701)
!1895 = !DILocation(line: 805, column: 45, scope: !1701)
!1896 = !DILocation(line: 805, column: 63, scope: !1701)
!1897 = !DILocation(line: 806, column: 34, scope: !1701)
!1898 = !DILocation(line: 808, column: 20, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1701, file: !866, line: 808, column: 7)
!1900 = !DILocation(line: 808, column: 7, scope: !1701)
!1901 = !DILocation(line: 809, column: 5, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1899, file: !866, line: 809, column: 5)
!1903 = !DILocation(line: 809, column: 5, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1902, file: !866, line: 809, column: 5)
!1905 = distinct !{!1905, !1903, !1903, !1413, !1414}
!1906 = !DILocation(line: 810, column: 28, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1701, file: !866, line: 810, column: 3)
!1908 = !DILocation(line: 812, column: 41, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !866, line: 811, column: 3)
!1910 = distinct !DILexicalBlock(scope: !1907, file: !866, line: 810, column: 3)
!1911 = !DILocation(line: 35, column: 70, scope: !1912, inlinedAt: !1922)
!1912 = distinct !DISubprogram(name: "SetImageProgress", scope: !1913, file: !1913, line: 27, type: !1914, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1916)
!1913 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a84e9021f92665a913f9cbc20a804774")
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!507, !769, !624, !626, !629}
!1916 = !{!1917, !1918, !1919, !1920, !1921}
!1917 = !DILocalVariable(name: "image", arg: 1, scope: !1912, file: !1913, line: 27, type: !769)
!1918 = !DILocalVariable(name: "tag", arg: 2, scope: !1912, file: !1913, line: 28, type: !624)
!1919 = !DILocalVariable(name: "offset", arg: 3, scope: !1912, file: !1913, line: 28, type: !626)
!1920 = !DILocalVariable(name: "extent", arg: 4, scope: !1912, file: !1913, line: 28, type: !629)
!1921 = !DILocalVariable(name: "message", scope: !1912, file: !1913, line: 31, type: !644)
!1922 = distinct !DILocation(line: 840, column: 16, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !866, line: 839, column: 7)
!1924 = distinct !DILexicalBlock(scope: !1909, file: !866, line: 838, column: 9)
!1925 = !DILocation(line: 0, scope: !1907)
!1926 = !DILocation(line: 810, column: 39, scope: !1910)
!1927 = !DILocation(line: 810, column: 3, scope: !1907)
!1928 = !DILocation(line: 812, column: 7, scope: !1909)
!1929 = !DILocation(line: 813, column: 11, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1909, file: !866, line: 813, column: 9)
!1931 = !DILocation(line: 813, column: 9, scope: !1909)
!1932 = !DILocation(line: 816, column: 13, scope: !1909)
!1933 = !DILocation(line: 817, column: 36, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !866, line: 817, column: 5)
!1935 = distinct !DILexicalBlock(scope: !1909, file: !866, line: 817, column: 5)
!1936 = !DILocation(line: 817, column: 17, scope: !1934)
!1937 = !DILocation(line: 817, column: 5, scope: !1935)
!1938 = !DILocation(line: 819, column: 11, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1934, file: !866, line: 818, column: 5)
!1940 = !DILocation(line: 820, column: 30, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1939, file: !866, line: 819, column: 11)
!1942 = !DILocation(line: 820, column: 11, scope: !1941)
!1943 = !DILocation(line: 820, column: 13, scope: !1941)
!1944 = !DILocation(line: 817, column: 46, scope: !1934)
!1945 = distinct !{!1945, !1937, !1946, !1413, !1414}
!1946 = !DILocation(line: 836, column: 5, scope: !1935)
!1947 = !DILocation(line: 822, column: 13, scope: !1941)
!1948 = !DILocation(line: 824, column: 13, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1941, file: !866, line: 822, column: 13)
!1950 = !{!1168, !915, i64 4}
!1951 = !DILocalVariable(name: "image", arg: 1, scope: !1952, file: !1953, line: 116, type: !1956)
!1952 = distinct !DISubprogram(name: "GetPixelLuma", scope: !1953, file: !1953, line: 116, type: !1954, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1958)
!1953 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel-accessor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5a3f95523a4166f31b566bb4d0a07c1b")
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!852, !1956, !1957}
!1956 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !769)
!1957 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !854)
!1958 = !{!1951, !1959}
!1959 = !DILocalVariable(name: "pixel", arg: 2, scope: !1952, file: !1953, line: 117, type: !1957)
!1960 = !DILocation(line: 0, scope: !1952, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 824, column: 13, scope: !1949)
!1962 = !DILocation(line: 119, column: 25, scope: !1963, inlinedAt: !1961)
!1963 = distinct !DILexicalBlock(scope: !1952, file: !1953, line: 119, column: 7)
!1964 = !{!1965}
!1965 = distinct !{!1965, !1966, !"GetPixelLuma: %pixel"}
!1966 = distinct !{!1966, !"GetPixelLuma"}
!1967 = !DILocation(line: 119, column: 7, scope: !1952, inlinedAt: !1961)
!1968 = !DILocation(line: 121, column: 48, scope: !1952, inlinedAt: !1961)
!1969 = !DILocation(line: 121, column: 41, scope: !1952, inlinedAt: !1961)
!1970 = !DILocation(line: 121, column: 40, scope: !1952, inlinedAt: !1961)
!1971 = !DILocation(line: 121, column: 30, scope: !1952, inlinedAt: !1961)
!1972 = !DILocation(line: 121, column: 71, scope: !1952, inlinedAt: !1961)
!1973 = !DILocation(line: 121, column: 64, scope: !1952, inlinedAt: !1961)
!1974 = !DILocation(line: 121, column: 53, scope: !1952, inlinedAt: !1961)
!1975 = !DILocation(line: 121, column: 3, scope: !1952, inlinedAt: !1961)
!1976 = !DILocalVariable(name: "value", arg: 1, scope: !1977, file: !57, line: 87, type: !1980)
!1977 = distinct !DISubprogram(name: "ClampToQuantum", scope: !57, file: !57, line: 87, type: !1978, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1981)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!519, !1980}
!1980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !852)
!1981 = !{!1976}
!1982 = !DILocation(line: 0, scope: !1977, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 823, column: 51, scope: !1949)
!1984 = !DILocation(line: 92, column: 13, scope: !1985, inlinedAt: !1983)
!1985 = distinct !DILexicalBlock(scope: !1977, file: !57, line: 92, column: 7)
!1986 = !DILocation(line: 92, column: 7, scope: !1977, inlinedAt: !1983)
!1987 = !DILocation(line: 94, column: 13, scope: !1988, inlinedAt: !1983)
!1988 = distinct !DILexicalBlock(scope: !1977, file: !57, line: 94, column: 7)
!1989 = !DILocation(line: 94, column: 7, scope: !1977, inlinedAt: !1983)
!1990 = !DILocation(line: 96, column: 26, scope: !1977, inlinedAt: !1983)
!1991 = !DILocation(line: 96, column: 10, scope: !1977, inlinedAt: !1983)
!1992 = !DILocation(line: 96, column: 3, scope: !1977, inlinedAt: !1983)
!1993 = !DILocation(line: 0, scope: !1847, inlinedAt: !1994)
!1994 = distinct !DILocation(line: 823, column: 32, scope: !1949)
!1995 = !DILocation(line: 117, column: 29, scope: !1847, inlinedAt: !1994)
!1996 = !DILocation(line: 117, column: 36, scope: !1847, inlinedAt: !1994)
!1997 = !DILocation(line: 117, column: 61, scope: !1847, inlinedAt: !1994)
!1998 = !DILocation(line: 117, column: 43, scope: !1847, inlinedAt: !1994)
!1999 = !DILocation(line: 117, column: 68, scope: !1847, inlinedAt: !1994)
!2000 = !DILocation(line: 117, column: 10, scope: !1847, inlinedAt: !1994)
!2001 = !DILocation(line: 823, column: 13, scope: !1949)
!2002 = !DILocation(line: 823, column: 15, scope: !1949)
!2003 = !DILocation(line: 835, column: 8, scope: !1939)
!2004 = !DILocation(line: 827, column: 37, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1949, file: !866, line: 826, column: 11)
!2006 = !DILocation(line: 0, scope: !1847, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 827, column: 18, scope: !2005)
!2008 = !DILocation(line: 117, column: 29, scope: !1847, inlinedAt: !2007)
!2009 = !DILocation(line: 117, column: 36, scope: !1847, inlinedAt: !2007)
!2010 = !DILocation(line: 117, column: 61, scope: !1847, inlinedAt: !2007)
!2011 = !DILocation(line: 117, column: 43, scope: !1847, inlinedAt: !2007)
!2012 = !DILocation(line: 117, column: 68, scope: !1847, inlinedAt: !2007)
!2013 = !DILocation(line: 117, column: 10, scope: !1847, inlinedAt: !2007)
!2014 = !DILocation(line: 827, column: 15, scope: !2005)
!2015 = !DILocation(line: 827, column: 17, scope: !2005)
!2016 = !DILocation(line: 828, column: 37, scope: !2005)
!2017 = !DILocation(line: 0, scope: !1847, inlinedAt: !2018)
!2018 = distinct !DILocation(line: 828, column: 18, scope: !2005)
!2019 = !DILocation(line: 117, column: 29, scope: !1847, inlinedAt: !2018)
!2020 = !DILocation(line: 117, column: 36, scope: !1847, inlinedAt: !2018)
!2021 = !DILocation(line: 117, column: 61, scope: !1847, inlinedAt: !2018)
!2022 = !DILocation(line: 117, column: 43, scope: !1847, inlinedAt: !2018)
!2023 = !DILocation(line: 117, column: 68, scope: !1847, inlinedAt: !2018)
!2024 = !DILocation(line: 117, column: 10, scope: !1847, inlinedAt: !2018)
!2025 = !DILocation(line: 828, column: 15, scope: !2005)
!2026 = !DILocation(line: 828, column: 17, scope: !2005)
!2027 = !DILocation(line: 829, column: 37, scope: !2005)
!2028 = !DILocation(line: 0, scope: !1847, inlinedAt: !2029)
!2029 = distinct !DILocation(line: 829, column: 18, scope: !2005)
!2030 = !DILocation(line: 117, column: 29, scope: !1847, inlinedAt: !2029)
!2031 = !DILocation(line: 117, column: 36, scope: !1847, inlinedAt: !2029)
!2032 = !DILocation(line: 117, column: 61, scope: !1847, inlinedAt: !2029)
!2033 = !DILocation(line: 117, column: 43, scope: !1847, inlinedAt: !2029)
!2034 = !DILocation(line: 117, column: 68, scope: !1847, inlinedAt: !2029)
!2035 = !DILocation(line: 117, column: 10, scope: !1847, inlinedAt: !2029)
!2036 = !DILocation(line: 829, column: 15, scope: !2005)
!2037 = !DILocation(line: 829, column: 17, scope: !2005)
!2038 = !DILocation(line: 830, column: 24, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2005, file: !866, line: 830, column: 17)
!2040 = !DILocation(line: 830, column: 30, scope: !2039)
!2041 = !DILocation(line: 830, column: 17, scope: !2005)
!2042 = !DILocation(line: 831, column: 55, scope: !2039)
!2043 = !DILocation(line: 0, scope: !1847, inlinedAt: !2044)
!2044 = distinct !DILocation(line: 831, column: 36, scope: !2039)
!2045 = !DILocation(line: 117, column: 29, scope: !1847, inlinedAt: !2044)
!2046 = !DILocation(line: 117, column: 36, scope: !1847, inlinedAt: !2044)
!2047 = !DILocation(line: 117, column: 61, scope: !1847, inlinedAt: !2044)
!2048 = !DILocation(line: 117, column: 43, scope: !1847, inlinedAt: !2044)
!2049 = !DILocation(line: 117, column: 68, scope: !1847, inlinedAt: !2044)
!2050 = !DILocation(line: 117, column: 10, scope: !1847, inlinedAt: !2044)
!2051 = !DILocation(line: 831, column: 17, scope: !2039)
!2052 = !DILocation(line: 831, column: 19, scope: !2039)
!2053 = !DILocation(line: 831, column: 15, scope: !2039)
!2054 = !DILocation(line: 0, scope: !2005)
!2055 = !DILocation(line: 832, column: 24, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2005, file: !866, line: 832, column: 17)
!2057 = !DILocation(line: 832, column: 35, scope: !2056)
!2058 = !DILocation(line: 832, column: 17, scope: !2005)
!2059 = !DILocation(line: 833, column: 39, scope: !2056)
!2060 = !DILocation(line: 0, scope: !1847, inlinedAt: !2061)
!2061 = distinct !DILocation(line: 833, column: 20, scope: !2056)
!2062 = !DILocation(line: 117, column: 29, scope: !1847, inlinedAt: !2061)
!2063 = !DILocation(line: 117, column: 36, scope: !1847, inlinedAt: !2061)
!2064 = !DILocation(line: 117, column: 61, scope: !1847, inlinedAt: !2061)
!2065 = !DILocation(line: 117, column: 43, scope: !1847, inlinedAt: !2061)
!2066 = !DILocation(line: 117, column: 68, scope: !1847, inlinedAt: !2061)
!2067 = !DILocation(line: 117, column: 10, scope: !1847, inlinedAt: !2061)
!2068 = !DILocation(line: 833, column: 17, scope: !2056)
!2069 = !DILocation(line: 833, column: 19, scope: !2056)
!2070 = !DILocation(line: 833, column: 15, scope: !2056)
!2071 = !DILocation(line: 0, scope: !1941)
!2072 = !DILocation(line: 0, scope: !1909)
!2073 = !DILocation(line: 837, column: 39, scope: !1909)
!2074 = !DILocation(line: 837, column: 12, scope: !1909)
!2075 = !DILocation(line: 838, column: 16, scope: !1924)
!2076 = !DILocation(line: 838, column: 25, scope: !1924)
!2077 = !DILocation(line: 838, column: 9, scope: !1909)
!2078 = !DILocation(line: 841, column: 18, scope: !1923)
!2079 = !DILocation(line: 0, scope: !1912, inlinedAt: !1922)
!2080 = !DILocation(line: 30, column: 3, scope: !1912, inlinedAt: !1922)
!2081 = !DILocation(line: 31, column: 5, scope: !1912, inlinedAt: !1922)
!2082 = !DILocation(line: 33, column: 14, scope: !2083, inlinedAt: !1922)
!2083 = distinct !DILexicalBlock(scope: !1912, file: !1913, line: 33, column: 7)
!2084 = !{!1168, !914, i64 568}
!2085 = !DILocation(line: 33, column: 31, scope: !2083, inlinedAt: !1922)
!2086 = !DILocation(line: 33, column: 7, scope: !1912, inlinedAt: !1922)
!2087 = !DILocation(line: 37, column: 1, scope: !1912, inlinedAt: !1922)
!2088 = !DILocation(line: 842, column: 13, scope: !1923)
!2089 = !DILocation(line: 35, column: 10, scope: !1912, inlinedAt: !1922)
!2090 = !DILocation(line: 36, column: 17, scope: !1912, inlinedAt: !1922)
!2091 = !DILocation(line: 36, column: 63, scope: !1912, inlinedAt: !1922)
!2092 = !{!1168, !914, i64 576}
!2093 = !DILocation(line: 36, column: 10, scope: !1912, inlinedAt: !1922)
!2094 = !DILocation(line: 842, column: 20, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !1923, file: !866, line: 842, column: 13)
!2096 = distinct !{!2096, !1927, !2097, !1413, !1414}
!2097 = !DILocation(line: 845, column: 3, scope: !1907)
!2098 = !DILocation(line: 846, column: 34, scope: !1701)
!2099 = !DILocation(line: 847, column: 10, scope: !1701)
!2100 = !DILocation(line: 848, column: 3, scope: !1701)
!2101 = !DILocation(line: 849, column: 1, scope: !1701)
!2102 = !DISubprogram(name: "ConstantString", scope: !2103, file: !2103, line: 45, type: !2104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2103 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!550, !624}
!2106 = !DISubprogram(name: "RegisterMagickInfo", scope: !445, file: !445, line: 138, type: !2107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!871, !871}
!2109 = distinct !DISubprogram(name: "UnregisterTGAImage", scope: !866, file: !866, line: 593, type: !2110, scopeLine: 594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !980)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{null}
!2112 = !DILocation(line: 595, column: 10, scope: !2109)
!2113 = !DILocation(line: 596, column: 10, scope: !2109)
!2114 = !DILocation(line: 597, column: 10, scope: !2109)
!2115 = !DILocation(line: 598, column: 10, scope: !2109)
!2116 = !DILocation(line: 599, column: 1, scope: !2109)
!2117 = !DISubprogram(name: "UnregisterMagickInfo", scope: !445, file: !445, line: 131, type: !2118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!507, !624}
!2120 = !DISubprogram(name: "LogMagickEvent", scope: !451, file: !451, line: 83, type: !2121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!507, !2123, !624, !624, !773, !624, null}
!2123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2124)
!2124 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !451, line: 58, baseType: !450)
!2125 = !DISubprogram(name: "AcquireImage", scope: !30, file: !30, line: 506, type: !2126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!490, !712}
!2128 = !DISubprogram(name: "OpenBlob", scope: !476, file: !476, line: 84, type: !2129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!507, !712, !490, !2131, !845}
!2131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2132)
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobMode", file: !476, line: 44, baseType: !475)
!2133 = !DISubprogram(name: "DestroyImageList", scope: !2134, file: !2134, line: 28, type: !2135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2134 = !DIFile(filename: "apps/538.imagick_r/src/magick/list.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53876be9fc59b89d67d5ff7fa85db93a")
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!490, !490}
!2137 = !DISubprogram(name: "ReadBlob", scope: !476, file: !476, line: 97, type: !2138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!555, !490, !773, !680}
!2140 = !DISubprogram(name: "ReadBlobByte", scope: !476, file: !476, line: 79, type: !2141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!658, !490}
!2143 = !DISubprogram(name: "ThrowMagickException", scope: !322, file: !322, line: 156, type: !2144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!507, !845, !624, !624, !773, !2146, !624, !624, null}
!2146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !656)
!2147 = !DISubprogram(name: "CloseBlob", scope: !476, file: !476, line: 82, type: !2148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!507, !490}
!2150 = !DISubprogram(name: "ReadBlobLSBShort", scope: !476, file: !476, line: 121, type: !2151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!520, !490}
!2153 = !DISubprogram(name: "EOFBlob", scope: !476, file: !476, line: 78, type: !2154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!658, !769}
!2156 = !DISubprogram(name: "AcquireImageColormap", scope: !2157, file: !2157, line: 26, type: !2158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2157 = !DIFile(filename: "apps/538.imagick_r/src/magick/colormap.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9bbb8514638ae332109008c420bdb541")
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!507, !490, !773}
!2160 = !DISubprogram(name: "AcquireQuantumMemory", scope: !2161, file: !2161, line: 42, type: !2162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2161 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!546, !773, !773}
!2164 = !DISubprogram(name: "SetImageProperty", scope: !2165, file: !2165, line: 40, type: !2166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2165 = !DIFile(filename: "apps/538.imagick_r/src/magick/property.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "517489a50b093ded1c4a01c3e2b58c3c")
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!507, !490, !624, !624}
!2168 = !DISubprogram(name: "DestroyString", scope: !2103, file: !2103, line: 46, type: !2169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!550, !550}
!2171 = !DISubprogram(name: "ResetMagickMemory", scope: !2161, file: !2161, line: 52, type: !2172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!546, !546, !658, !773}
!2174 = !DISubprogram(name: "QueueAuthenticPixels", scope: !2175, file: !2175, line: 75, type: !2176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2175 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "71eb387e577d57b17607c7f6f5128e97")
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!514, !490, !2178, !2178, !773, !773, !845}
!2178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !555)
!2179 = !DISubprogram(name: "GetAuthenticIndexQueue", scope: !2175, file: !2175, line: 52, type: !2180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!851, !769}
!2182 = !DISubprogram(name: "SyncAuthenticPixels", scope: !2175, file: !2175, line: 66, type: !2183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!507, !490, !845}
!2185 = !DILocation(line: 0, scope: !1912)
!2186 = !DILocation(line: 30, column: 3, scope: !1912)
!2187 = !DILocation(line: 31, column: 5, scope: !1912)
!2188 = !DILocation(line: 33, column: 14, scope: !2083)
!2189 = !DILocation(line: 33, column: 31, scope: !2083)
!2190 = !DILocation(line: 33, column: 7, scope: !1912)
!2191 = !DILocation(line: 35, column: 70, scope: !1912)
!2192 = !DILocation(line: 35, column: 10, scope: !1912)
!2193 = !DILocation(line: 36, column: 17, scope: !1912)
!2194 = !DILocation(line: 36, column: 63, scope: !1912)
!2195 = !DILocation(line: 36, column: 10, scope: !1912)
!2196 = !DILocation(line: 36, column: 3, scope: !1912)
!2197 = !DILocation(line: 37, column: 1, scope: !1912)
!2198 = !DISubprogram(name: "GetExceptionMessage", scope: !322, file: !322, line: 137, type: !2199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!550, !2201}
!2201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!2202 = !DISubprogram(name: "GetFirstImageInList", scope: !2134, file: !2134, line: 30, type: !2203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!490, !769}
!2205 = !DISubprogram(name: "FormatLocaleString", scope: !2206, file: !2206, line: 71, type: !2207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2206 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!555, !2209, !773, !2210, null}
!2209 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !550)
!2210 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !624)
!2211 = !DISubprogram(name: "TransformImageColorspace", scope: !68, file: !68, line: 66, type: !2212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!507, !490, !2214}
!2214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !497)
!2215 = !DISubprogram(name: "GetImageProperty", scope: !2165, file: !2165, line: 31, type: !2216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!624, !769, !624}
!2218 = !DISubprogram(name: "IsGrayImage", scope: !2219, file: !2219, line: 32, type: !2220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2219 = !DIFile(filename: "apps/538.imagick_r/src/magick/attribute.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9f28531949ca431292ce1dd34e70716")
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!507, !769, !845}
!2222 = !DISubprogram(name: "WriteBlobByte", scope: !476, file: !476, line: 99, type: !2223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!555, !490, !890}
!2225 = !DISubprogram(name: "WriteBlobLSBShort", scope: !476, file: !476, line: 104, type: !2226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!555, !490, !2228}
!2228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!2229 = !DISubprogram(name: "WriteBlob", scope: !476, file: !476, line: 98, type: !2230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!555, !490, !773, !889}
!2232 = !DISubprogram(name: "RelinquishMagickMemory", scope: !2161, file: !2161, line: 51, type: !2233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!546, !546}
!2235 = !DISubprogram(name: "GetVirtualPixels", scope: !2175, file: !2175, line: 44, type: !2236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!854, !769, !2178, !2178, !773, !773, !845}
!2238 = !DISubprogram(name: "GetVirtualIndexQueue", scope: !2175, file: !2175, line: 41, type: !2239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !980)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!856, !769}
