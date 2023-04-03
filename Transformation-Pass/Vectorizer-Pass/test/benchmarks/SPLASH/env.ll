; ModuleID = 'env.c'
source_filename = "env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CTE = type { ptr, i8 }
%struct.view = type { [4 x double], [4 x double], [4 x [4 x double]], [4 x [4 x double]], [4 x [4 x double]], [3 x double], i64, double, [3 x double], i64, i64 }
%struct.display = type { i64, i64, i64, i64, double, i64, i64, i64, double, double, double, double, double, double, double, double, ptr }
%struct.light = type { [4 x double], [3 x double], i64, ptr }

@.str = private unnamed_addr constant [4 x i8] c"eye\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"light\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"resolution\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"shadows\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"background\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"viewangle\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"antilevel\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"minweight\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"project\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"antitolerance\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"maxlevel\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"modelxform\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"shading\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"displayin\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"displayout\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"geometry\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"texturetype\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"texturefile\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"footprint\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"traversal\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"rlfile\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"ambient\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"excellprim\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"excelldir\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"excellsubdiv\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"hsublevel\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"hprim\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"bfcull\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"fill\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"spheretess\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"normdata\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"datatype\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"hu_maxprims\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"hu_gridsize\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"hu_numbuckets\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"hu_maxsubdiv\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"hu_lazy\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"bundle\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c" \00", align 1
@cmdtab = dso_local local_unnamed_addr global [42 x %struct.CTE] [%struct.CTE { ptr @.str, i8 97 }, %struct.CTE { ptr @.str.1, i8 98 }, %struct.CTE { ptr @.str.2, i8 101 }, %struct.CTE { ptr @.str.3, i8 102 }, %struct.CTE { ptr @.str.4, i8 109 }, %struct.CTE { ptr @.str.5, i8 99 }, %struct.CTE { ptr @.str.6, i8 100 }, %struct.CTE { ptr @.str.7, i8 106 }, %struct.CTE { ptr @.str.8, i8 104 }, %struct.CTE { ptr @.str.9, i8 105 }, %struct.CTE { ptr @.str.10, i8 107 }, %struct.CTE { ptr @.str.11, i8 103 }, %struct.CTE { ptr @.str.12, i8 108 }, %struct.CTE { ptr @.str.13, i8 110 }, %struct.CTE { ptr @.str.14, i8 111 }, %struct.CTE { ptr @.str.15, i8 112 }, %struct.CTE { ptr @.str.16, i8 113 }, %struct.CTE { ptr @.str.17, i8 116 }, %struct.CTE { ptr @.str.18, i8 114 }, %struct.CTE { ptr @.str.19, i8 117 }, %struct.CTE { ptr @.str.20, i8 118 }, %struct.CTE { ptr @.str.21, i8 119 }, %struct.CTE { ptr @.str.22, i8 115 }, %struct.CTE { ptr @.str.23, i8 120 }, %struct.CTE { ptr @.str.24, i8 121 }, %struct.CTE { ptr @.str.25, i8 122 }, %struct.CTE { ptr @.str.26, i8 57 }, %struct.CTE { ptr @.str.27, i8 49 }, %struct.CTE { ptr @.str.28, i8 50 }, %struct.CTE { ptr @.str.29, i8 51 }, %struct.CTE { ptr @.str.30, i8 52 }, %struct.CTE { ptr @.str.31, i8 53 }, %struct.CTE { ptr @.str.32, i8 54 }, %struct.CTE { ptr @.str.33, i8 55 }, %struct.CTE { ptr @.str.34, i8 56 }, %struct.CTE { ptr @.str.35, i8 64 }, %struct.CTE { ptr @.str.36, i8 35 }, %struct.CTE { ptr @.str.37, i8 36 }, %struct.CTE { ptr @.str.38, i8 42 }, %struct.CTE { ptr @.str.39, i8 43 }, %struct.CTE { ptr @.str.40, i8 37 }, %struct.CTE { ptr @.str.41, i8 48 }], align 16, !dbg !0
@.str.43 = private unnamed_addr constant [24 x i8] c"\09Eye pos:   \09 %f %f %f\0A\00", align 1
@View = external global %struct.view, align 8
@.str.44 = private unnamed_addr constant [24 x i8] c"\09Center pos:\09 %f %f %f\0A\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"\09Background:\09 %f %f %f\0A\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"\09View Angle:\09 %f\0A\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"\0AAmbient Light:\09\09 %f %f %f\0A\00", align 1
@lights = external local_unnamed_addr global ptr, align 8
@nlights = external local_unnamed_addr global i64, align 8
@.str.49 = private unnamed_addr constant [23 x i8] c"\09[%ld] Pos:\09 %f %f %f\0A\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"\09    Col:\09 %f %f %f\0A\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"\09    Shadow:\09 %ld\0A\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"\09Traversal:\09\09\09\00", align 1
@TraversalType = external local_unnamed_addr global i64, align 8
@.str.57 = private unnamed_addr constant [26 x i8] c"\09\09\09\09\09   grid size    %ld\0A\00", align 1
@hu_gridsize = external global i64, align 8
@.str.58 = private unnamed_addr constant [26 x i8] c"\09\09\09\09\09   max prims    %ld\0A\00", align 1
@hu_max_prims_cell = external global i64, align 8
@.str.59 = private unnamed_addr constant [26 x i8] c"\09\09\09\09\09   max sublevel %ld\0A\00", align 1
@hu_max_subdiv_level = external global i64, align 8
@.str.60 = private unnamed_addr constant [26 x i8] c"\09\09\09\09\09   buckets      %ld\0A\00", align 1
@hu_numbuckets = external global i64, align 8
@.str.61 = private unnamed_addr constant [26 x i8] c"\09\09\09\09\09   lazy         %ld\0A\00", align 1
@hu_lazy = external global i64, align 8
@.str.62 = private unnamed_addr constant [21 x i8] c"\09Normalization DB:\09\09\00", align 1
@ModelNorm = external local_unnamed_addr global i64, align 8
@.str.63 = private unnamed_addr constant [5 x i8] c"yes\0A\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"no\0A\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"\09Projection type:\09\09\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"perspective\0A\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"orthographic\0A\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"\09Shadows:\09\09\09\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"on\0A\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"off\0A\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"\09Shading:\09\09\09\00", align 1
@.str.72 = private unnamed_addr constant [24 x i8] c"\09Resolution:\09\09\09%ld %ld\0A\00", align 1
@Display = external global %struct.display, align 8
@.str.73 = private unnamed_addr constant [23 x i8] c"\09Min Ray Weight:\09\09\09%f\0A\00", align 1
@.str.74 = private unnamed_addr constant [33 x i8] c"\09Max Anti Subdivison Level:\09%ld\0A\00", align 1
@.str.75 = private unnamed_addr constant [23 x i8] c"\09Anti tolerance:\09\09\09%f\0A\00", align 1
@.str.76 = private unnamed_addr constant [21 x i8] c"\09Bundle: \09\09\09%ld %ld\0A\00", align 1
@bundlex = external global i64, align 8
@bundley = external global i64, align 8
@.str.77 = private unnamed_addr constant [21 x i8] c"\09Block:  \09\09\09%ld %ld\0A\00", align 1
@blockx = external global i64, align 8
@blocky = external global i64, align 8
@GeoFile = external local_unnamed_addr global i64, align 8
@.str.78 = private unnamed_addr constant [22 x i8] c"\09Geometry file:\09\09\09%s\0A\00", align 1
@GeoFileName = external global [80 x i8], align 16
@PicFile = external local_unnamed_addr global i64, align 8
@.str.79 = private unnamed_addr constant [19 x i8] c"\09Image file:\09\09\09%s\0A\00", align 1
@PicFileName = external global [80 x i8], align 16
@ModelTransform = external local_unnamed_addr global i64, align 8
@DataType = external local_unnamed_addr global i64, align 8
@.str.80 = private unnamed_addr constant [6 x i8] c"env.c\00", align 1
@.str.81 = private unnamed_addr constant [25 x i8] c"Invalid color %f %f %f.\0A\00", align 1
@.str.82 = private unnamed_addr constant [30 x i8] c"\0A\0AInvalid command string %s.\0A\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.84 = private unnamed_addr constant [37 x i8] c"Unable to open environment file %s.\0A\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"%lf %lf %lf\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.92 = private unnamed_addr constant [19 x i8] c"Invalid angle %f.\0A\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.96 = private unnamed_addr constant [29 x i8] c"error: antialias level %ld.\0A\00", align 1
@.str.97 = private unnamed_addr constant [33 x i8] c"maxlevel of ray recursion = %ld\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.99 = private unnamed_addr constant [29 x i8] c"error: recursion level %ld.\0A\00", align 1
@.str.101 = private unnamed_addr constant [31 x i8] c"error: invalid ray weight %f.\0A\00", align 1
@.str.103 = private unnamed_addr constant [42 x i8] c"error: invalid anti tolerance weight %f.\0A\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"%ld %ld\00", align 1
@.str.106 = private unnamed_addr constant [24 x i8] c"%lf %lf %lf %lf %lf %lf\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.112 = private unnamed_addr constant [20 x i8] c"error: shading %s.\0A\00", align 1
@.str.113 = private unnamed_addr constant [23 x i8] c"error: projection %s.\0A\00", align 1
@.str.114 = private unnamed_addr constant [12 x i8] c"perspective\00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"orthographic\00", align 1
@.str.116 = private unnamed_addr constant [24 x i8] c"Invalid projection %s.\0A\00", align 1
@.str.117 = private unnamed_addr constant [22 x i8] c"error: traversal %s.\0A\00", align 1
@.str.119 = private unnamed_addr constant [9 x i8] c"huniform\00", align 1
@.str.120 = private unnamed_addr constant [28 x i8] c"Invalid traversal code %s.\0A\00", align 1
@.str.121 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.130 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.138 = private unnamed_addr constant [40 x i8] c"Warning: unrecognized env command: %s.\0A\00", align 1
@str = private unnamed_addr constant [14 x i8] c"\0AEnvironment:\00", align 1
@str.140 = private unnamed_addr constant [9 x i8] c"\0ALights:\00", align 1
@str.141 = private unnamed_addr constant [9 x i8] c"Options:\00", align 1
@str.142 = private unnamed_addr constant [23 x i8] c"uniform grid hierarchy\00", align 1
@str.143 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@str.144 = private unnamed_addr constant [53 x i8] c"Data must be normalized with this traversal method!.\00", align 1
@str.145 = private unnamed_addr constant [14 x i8] c"error: block.\00", align 1
@str.146 = private unnamed_addr constant [15 x i8] c"error: bundle.\00", align 1
@str.147 = private unnamed_addr constant [22 x i8] c"error: Huniform lazy.\00", align 1
@str.148 = private unnamed_addr constant [34 x i8] c"error: Huniform max subdiv level.\00", align 1
@str.149 = private unnamed_addr constant [28 x i8] c"error: Huniform numbuckets.\00", align 1
@str.150 = private unnamed_addr constant [26 x i8] c"error: Huniform gridsize.\00", align 1
@str.151 = private unnamed_addr constant [32 x i8] c"error: Huniform prims per cell.\00", align 1
@str.152 = private unnamed_addr constant [17 x i8] c"error: datatype.\00", align 1
@str.153 = private unnamed_addr constant [22 x i8] c"error: norm database.\00", align 1
@str.154 = private unnamed_addr constant [20 x i8] c"error: sphere tess.\00", align 1
@str.155 = private unnamed_addr constant [21 x i8] c"error: Preview fill.\00", align 1
@str.156 = private unnamed_addr constant [23 x i8] c"error: Preview bkcull.\00", align 1
@str.157 = private unnamed_addr constant [23 x i8] c"error: runlength file.\00", align 1
@str.158 = private unnamed_addr constant [22 x i8] c"error: geometry file.\00", align 1
@str.159 = private unnamed_addr constant [15 x i8] c"error: shadow.\00", align 1
@str.160 = private unnamed_addr constant [17 x i8] c"Error in matrix.\00", align 1
@str.161 = private unnamed_addr constant [32 x i8] c"error: Lights shadow indicator.\00", align 1
@str.162 = private unnamed_addr constant [15 x i8] c"error: Lights.\00", align 1
@str.163 = private unnamed_addr constant [19 x i8] c"error: resolution.\00", align 1
@str.164 = private unnamed_addr constant [30 x i8] c"error: anti tolerance weight.\00", align 1
@str.165 = private unnamed_addr constant [28 x i8] c"error: miniumum ray weight.\00", align 1
@str.166 = private unnamed_addr constant [24 x i8] c"error: recursion level.\00", align 1
@str.167 = private unnamed_addr constant [29 x i8] c"View error: antialias level.\00", align 1
@str.168 = private unnamed_addr constant [16 x i8] c"error: ambient.\00", align 1
@str.169 = private unnamed_addr constant [22 x i8] c"error: viewing angle.\00", align 1
@str.170 = private unnamed_addr constant [25 x i8] c"error: background color.\00", align 1
@str.171 = private unnamed_addr constant [21 x i8] c"error: coi position.\00", align 1
@str.172 = private unnamed_addr constant [21 x i8] c"error: eye position.\00", align 1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @PrintEnv() local_unnamed_addr #0 !dbg !27 {
entry:
  %puts = tail call i32 @puts(ptr nonnull @str), !dbg !55
  %0 = load double, ptr @View, align 8, !dbg !56
  %1 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 0, i64 1), align 8, !dbg !57
  %2 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 0, i64 2), align 8, !dbg !58
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.43, double noundef %0, double noundef %1, double noundef %2), !dbg !59
  %3 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 1), align 8, !dbg !60
  %4 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 1, i64 1), align 8, !dbg !61
  %5 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 1, i64 2), align 8, !dbg !62
  %call2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.44, double noundef %3, double noundef %4, double noundef %5), !dbg !63
  %6 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 5), align 8, !dbg !64
  %7 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 5, i64 1), align 8, !dbg !65
  %8 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 5, i64 2), align 8, !dbg !66
  %call3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.45, double noundef %6, double noundef %7, double noundef %8), !dbg !67
  %9 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 7), align 8, !dbg !68
  %call4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.46, double noundef %9), !dbg !69
  %10 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 8), align 8, !dbg !70
  %11 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 8, i64 1), align 8, !dbg !71
  %12 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 8, i64 2), align 8, !dbg !72
  %call5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.47, double noundef %10, double noundef %11, double noundef %12), !dbg !73
  %puts66 = tail call i32 @puts(ptr nonnull @str.140), !dbg !74
  call void @llvm.dbg.value(metadata ptr undef, metadata !34, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i64 0, metadata !31, metadata !DIExpression()), !dbg !75
  %13 = load i64, ptr @nlights, align 8, !dbg !76
  %cmp71 = icmp sgt i64 %13, 0, !dbg !79
  br i1 %cmp71, label %for.body, label %for.end, !dbg !80

for.body:                                         ; preds = %entry, %for.body
  %lp.0.in73 = phi ptr [ %next, %for.body ], [ @lights, %entry ]
  %i.072 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.072, metadata !31, metadata !DIExpression()), !dbg !75
  %lp.0 = load ptr, ptr %lp.0.in73, align 8, !dbg !75
  call void @llvm.dbg.value(metadata ptr %lp.0, metadata !34, metadata !DIExpression()), !dbg !75
  %14 = load double, ptr %lp.0, align 8, !dbg !81
  %arrayidx8 = getelementptr inbounds [4 x double], ptr %lp.0, i64 0, i64 1, !dbg !83
  %15 = load double, ptr %arrayidx8, align 8, !dbg !83
  %arrayidx10 = getelementptr inbounds [4 x double], ptr %lp.0, i64 0, i64 2, !dbg !84
  %16 = load double, ptr %arrayidx10, align 8, !dbg !84
  %call11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.49, i64 noundef %i.072, double noundef %14, double noundef %15, double noundef %16), !dbg !85
  %col = getelementptr inbounds %struct.light, ptr %lp.0, i64 0, i32 1, !dbg !86
  %17 = load double, ptr %col, align 8, !dbg !87
  %arrayidx14 = getelementptr inbounds %struct.light, ptr %lp.0, i64 0, i32 1, i64 1, !dbg !88
  %18 = load double, ptr %arrayidx14, align 8, !dbg !88
  %arrayidx16 = getelementptr inbounds %struct.light, ptr %lp.0, i64 0, i32 1, i64 2, !dbg !89
  %19 = load double, ptr %arrayidx16, align 8, !dbg !89
  %call17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.50, double noundef %17, double noundef %18, double noundef %19), !dbg !90
  %shadow = getelementptr inbounds %struct.light, ptr %lp.0, i64 0, i32 2, !dbg !91
  %20 = load i64, ptr %shadow, align 8, !dbg !91
  %call18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.51, i64 noundef %20), !dbg !92
  %next = getelementptr inbounds %struct.light, ptr %lp.0, i64 0, i32 3, !dbg !93
  call void @llvm.dbg.value(metadata ptr undef, metadata !34, metadata !DIExpression()), !dbg !75
  %inc = add nuw nsw i64 %i.072, 1, !dbg !94
  call void @llvm.dbg.value(metadata i64 %inc, metadata !31, metadata !DIExpression()), !dbg !75
  %21 = load i64, ptr @nlights, align 8, !dbg !76
  %cmp = icmp slt i64 %inc, %21, !dbg !79
  br i1 %cmp, label %for.body, label %for.end, !dbg !80, !llvm.loop !95

for.end:                                          ; preds = %for.body, %entry
  %putchar = tail call i32 @putchar(i32 10), !dbg !99
  %puts67 = tail call i32 @puts(ptr nonnull @str.141), !dbg !100
  %call21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.54), !dbg !101
  %22 = load i64, ptr @TraversalType, align 8, !dbg !102
  switch i64 %22, label %sw.epilog [
    i64 0, label %sw.bb
    i64 1, label %sw.bb23
  ], !dbg !103

sw.bb:                                            ; preds = %for.end
  %puts70 = tail call i32 @puts(ptr nonnull @str.143), !dbg !104
  br label %sw.epilog, !dbg !106

sw.bb23:                                          ; preds = %for.end
  %puts68 = tail call i32 @puts(ptr nonnull @str.142), !dbg !107
  %23 = load i64, ptr @hu_gridsize, align 8, !dbg !108
  %call25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.57, i64 noundef %23), !dbg !109
  %24 = load i64, ptr @hu_max_prims_cell, align 8, !dbg !110
  %call26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.58, i64 noundef %24), !dbg !111
  %25 = load i64, ptr @hu_max_subdiv_level, align 8, !dbg !112
  %call27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.59, i64 noundef %25), !dbg !113
  %26 = load i64, ptr @hu_numbuckets, align 8, !dbg !114
  %call28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.60, i64 noundef %26), !dbg !115
  %27 = load i64, ptr @hu_lazy, align 8, !dbg !116
  %call29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.61, i64 noundef %27), !dbg !117
  br label %sw.epilog, !dbg !118

sw.epilog:                                        ; preds = %for.end, %sw.bb23, %sw.bb
  %call30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.62), !dbg !119
  %28 = load i64, ptr @ModelNorm, align 8, !dbg !120
  %tobool.not = icmp eq i64 %28, 0, !dbg !120
  %cond = select i1 %tobool.not, ptr @.str.64, ptr @.str.63, !dbg !120
  %call31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull %cond), !dbg !121
  %call32 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.65), !dbg !122
  %29 = load i64, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 6), align 8, !dbg !123
  %cmp33 = icmp eq i64 %29, 0, !dbg !124
  %cond34 = select i1 %cmp33, ptr @.str.66, ptr @.str.67, !dbg !125
  %call35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull %cond34), !dbg !126
  %call36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.68), !dbg !127
  %30 = load i64, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 9), align 8, !dbg !128
  %tobool37.not = icmp eq i64 %30, 0, !dbg !129
  %cond38 = select i1 %tobool37.not, ptr @.str.70, ptr @.str.69, !dbg !129
  %call39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull %cond38), !dbg !130
  %call40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.71), !dbg !131
  %31 = load i64, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 10), align 8, !dbg !132
  %tobool41.not = icmp eq i64 %31, 0, !dbg !133
  %cond42 = select i1 %tobool41.not, ptr @.str.70, ptr @.str.69, !dbg !133
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull %cond42), !dbg !134
  %32 = load i64, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 5), align 8, !dbg !135
  %33 = load i64, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 6), align 8, !dbg !136
  %call44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.72, i64 noundef %32, i64 noundef %33), !dbg !137
  %34 = load double, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 8), align 8, !dbg !138
  %call45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.73, double noundef %34), !dbg !139
  %35 = load i64, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 1), align 8, !dbg !140
  %call46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.74, i64 noundef %35), !dbg !141
  %36 = load double, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 4), align 8, !dbg !142
  %call47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.75, double noundef %36), !dbg !143
  %37 = load i64, ptr @bundlex, align 8, !dbg !144
  %38 = load i64, ptr @bundley, align 8, !dbg !145
  %call48 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.76, i64 noundef %37, i64 noundef %38), !dbg !146
  %39 = load i64, ptr @blockx, align 8, !dbg !147
  %40 = load i64, ptr @blocky, align 8, !dbg !148
  %call49 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.77, i64 noundef %39, i64 noundef %40), !dbg !149
  %41 = load i64, ptr @GeoFile, align 8, !dbg !150
  %tobool50.not = icmp eq i64 %41, 0, !dbg !150
  br i1 %tobool50.not, label %if.end, label %if.then, !dbg !152

if.then:                                          ; preds = %sw.epilog
  %call51 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.78, ptr noundef nonnull @GeoFileName), !dbg !153
  br label %if.end, !dbg !153

if.end:                                           ; preds = %if.then, %sw.epilog
  %42 = load i64, ptr @PicFile, align 8, !dbg !154
  %tobool52.not = icmp eq i64 %42, 0, !dbg !154
  br i1 %tobool52.not, label %if.end55, label %if.then53, !dbg !156

if.then53:                                        ; preds = %if.end
  %call54 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.79, ptr noundef nonnull @PicFileName), !dbg !157
  br label %if.end55, !dbg !157

if.end55:                                         ; preds = %if.then53, %if.end
  %putchar69 = tail call i32 @putchar(i32 10), !dbg !158
  ret void, !dbg !159
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @InitEnv() local_unnamed_addr #4 !dbg !160 {
entry:
  store double 5.000000e-01, ptr @View, align 8, !dbg !162
  store double 5.000000e-01, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 0, i64 1), align 8, !dbg !163
  store double -1.500000e+00, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 0, i64 2), align 8, !dbg !164
  store double 5.000000e-01, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 1), align 8, !dbg !165
  store double 5.000000e-01, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 1, i64 1), align 8, !dbg !166
  store double 5.000000e-01, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 1, i64 2), align 8, !dbg !167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 5), i8 0, i64 16, i1 false), !dbg !168
  store double 8.000000e-01, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 5, i64 2), align 8, !dbg !169
  store double 6.000000e+01, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 7), align 8, !dbg !170
  store double 1.000000e-01, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 8), align 8, !dbg !171
  store double 1.000000e-01, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 8, i64 1), align 8, !dbg !172
  store double 1.000000e-01, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 8, i64 2), align 8, !dbg !173
  store i64 1, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 9), align 8, !dbg !174
  store i64 1, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 10), align 8, !dbg !175
  store i64 0, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 6), align 8, !dbg !176
  store i64 100, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 5), align 8, !dbg !177
  store i64 100, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 6), align 8, !dbg !178
  store i64 10000, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 7), align 8, !dbg !179
  store i64 5, ptr @Display, align 8, !dbg !180
  store i64 0, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 1), align 8, !dbg !181
  store double 2.000000e-02, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 4), align 8, !dbg !182
  store i64 8, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 2), align 8, !dbg !183
  store i64 8, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 3), align 8, !dbg !184
  store double 1.000000e-03, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 8), align 8, !dbg !185
  store double 1.645000e+02, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 9), align 8, !dbg !186
  store double 1.900000e+02, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 10), align 8, !dbg !187
  store double 1.900000e+02, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 11), align 8, !dbg !188
  store double 9.500000e+01, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 12), align 8, !dbg !189
  store double 9.500000e+01, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 13), align 8, !dbg !190
  store double 1.900000e+00, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 14), align 8, !dbg !191
  store double 1.900000e+00, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 15), align 8, !dbg !192
  tail call void @MatrixIdentity(ptr noundef getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 2)) #15, !dbg !193
  tail call void @MatrixIdentity(ptr noundef getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 4)) #15, !dbg !194
  store i64 0, ptr @GeoFile, align 8, !dbg !195
  store i64 0, ptr @PicFile, align 8, !dbg !196
  store i64 1, ptr @ModelNorm, align 8, !dbg !197
  store i64 0, ptr @ModelTransform, align 8, !dbg !198
  store i64 0, ptr @DataType, align 8, !dbg !199
  store i64 0, ptr @TraversalType, align 8, !dbg !200
  %call = tail call ptr @GlobalMalloc(i64 noundef 72, ptr noundef nonnull @.str.80) #15, !dbg !201
  store ptr %call, ptr @lights, align 8, !dbg !202
  store i64 25, ptr @bundlex, align 8, !dbg !203
  store i64 25, ptr @bundley, align 8, !dbg !204
  store i64 2, ptr @blockx, align 8, !dbg !205
  store i64 2, ptr @blocky, align 8, !dbg !206
  ret void, !dbg !207
}

declare !dbg !208 void @MatrixIdentity(ptr noundef) local_unnamed_addr #5

declare !dbg !212 ptr @GlobalMalloc(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define dso_local void @InitLights() local_unnamed_addr #6 !dbg !217 {
entry:
  store i64 1, ptr @nlights, align 8, !dbg !218
  %0 = load ptr, ptr @lights, align 8, !dbg !219
  store double 0.000000e+00, ptr %0, align 8, !dbg !220
  %1 = load ptr, ptr @lights, align 8, !dbg !221
  %arrayidx2 = getelementptr inbounds [4 x double], ptr %1, i64 0, i64 1, !dbg !221
  store double 0.000000e+00, ptr %arrayidx2, align 8, !dbg !222
  %arrayidx4 = getelementptr inbounds [4 x double], ptr %1, i64 0, i64 2, !dbg !223
  store double -2.000000e+03, ptr %arrayidx4, align 8, !dbg !224
  %arrayidx6 = getelementptr inbounds [4 x double], ptr %1, i64 0, i64 3, !dbg !225
  store double 1.000000e+00, ptr %arrayidx6, align 8, !dbg !226
  %col = getelementptr inbounds %struct.light, ptr %1, i64 0, i32 1, !dbg !227
  store double 1.000000e+00, ptr %col, align 8, !dbg !228
  %arrayidx9 = getelementptr inbounds %struct.light, ptr %1, i64 0, i32 1, i64 1, !dbg !229
  store double 1.000000e+00, ptr %arrayidx9, align 8, !dbg !230
  %arrayidx11 = getelementptr inbounds %struct.light, ptr %1, i64 0, i32 1, i64 2, !dbg !231
  store double 1.000000e+00, ptr %arrayidx11, align 8, !dbg !232
  %shadow = getelementptr inbounds %struct.light, ptr %1, i64 0, i32 2, !dbg !233
  store i64 1, ptr %shadow, align 8, !dbg !234
  %next = getelementptr inbounds %struct.light, ptr %1, i64 0, i32 3, !dbg !235
  store ptr null, ptr %next, align 8, !dbg !236
  ret void, !dbg !237
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn uwtable
define dso_local void @InitDisplay() local_unnamed_addr #7 !dbg !238 {
entry:
  %0 = load i64, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 5), align 8, !dbg !242
  %conv = sitofp i64 %0 to double, !dbg !243
  %1 = load i64, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 6), align 8, !dbg !244
  %conv1 = sitofp i64 %1 to double, !dbg !245
  %div = fdiv double %conv, %conv1, !dbg !246
  call void @llvm.dbg.value(metadata double %div, metadata !240, metadata !DIExpression()), !dbg !247
  %2 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 7), align 8, !dbg !248
  %mul = fmul double %2, 5.000000e-01, !dbg !249
  %mul2 = fmul double %mul, 1.750000e-02, !dbg !250
  call void @llvm.dbg.value(metadata double %mul2, metadata !241, metadata !DIExpression()), !dbg !247
  %3 = load double, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 11), align 8, !dbg !251
  %mul3 = fmul double %3, %div, !dbg !252
  store double %mul3, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 10), align 8, !dbg !253
  %mul4 = fmul double %3, 5.000000e-01, !dbg !254
  %call = tail call double @tan(double noundef %mul2) #15, !dbg !255
  %div5 = fdiv double %mul4, %call, !dbg !256
  store double %div5, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 9), align 8, !dbg !257
  %4 = load double, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 10), align 8, !dbg !258
  %mul6 = fmul double %4, 5.000000e-01, !dbg !259
  store double %mul6, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 12), align 8, !dbg !260
  %5 = load double, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 11), align 8, !dbg !261
  %mul7 = fmul double %5, 5.000000e-01, !dbg !262
  store double %mul7, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 13), align 8, !dbg !263
  %6 = load i64, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 5), align 8, !dbg !264
  %conv8 = sitofp i64 %6 to double, !dbg !265
  %div9 = fdiv double %4, %conv8, !dbg !266
  store double %div9, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 14), align 8, !dbg !267
  %7 = load i64, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 6), align 8, !dbg !268
  %conv10 = sitofp i64 %7 to double, !dbg !269
  %div11 = fdiv double %5, %conv10, !dbg !270
  store double %div11, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 15), align 8, !dbg !271
  ret void, !dbg !272
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @tan(double noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i64 @VerifyColorRange(ptr nocapture noundef readonly %c) local_unnamed_addr #0 !dbg !273 {
entry:
  call void @llvm.dbg.value(metadata ptr %c, metadata !278, metadata !DIExpression()), !dbg !279
  %0 = load double, ptr %c, align 8, !dbg !280
  %cmp = fcmp olt double %0, 0.000000e+00, !dbg !282
  %cmp2 = fcmp ogt double %0, 1.000000e+00
  %or.cond = or i1 %cmp, %cmp2, !dbg !283
  %arrayidx16.phi.trans.insert = getelementptr inbounds double, ptr %c, i64 1
  %.pre = load double, ptr %arrayidx16.phi.trans.insert, align 8, !dbg !284
  br i1 %or.cond, label %if.then, label %lor.lhs.false3, !dbg !283

lor.lhs.false3:                                   ; preds = %entry
  %cmp5 = fcmp olt double %.pre, 0.000000e+00, !dbg !285
  %cmp8 = fcmp ogt double %.pre, 1.000000e+00
  %or.cond28 = or i1 %cmp5, %cmp8, !dbg !286
  br i1 %or.cond28, label %if.then, label %lor.lhs.false9, !dbg !286

lor.lhs.false9:                                   ; preds = %lor.lhs.false3
  %arrayidx10 = getelementptr inbounds double, ptr %c, i64 2, !dbg !287
  %1 = load double, ptr %arrayidx10, align 8, !dbg !287
  %cmp11 = fcmp olt double %1, 0.000000e+00, !dbg !288
  %cmp14 = fcmp ogt double %1, 1.000000e+00
  %or.cond29 = or i1 %cmp11, %cmp14, !dbg !289
  br i1 %or.cond29, label %if.then, label %return, !dbg !289

if.then:                                          ; preds = %entry, %lor.lhs.false9, %lor.lhs.false3
  %arrayidx17 = getelementptr inbounds double, ptr %c, i64 2, !dbg !290
  %2 = load double, ptr %arrayidx17, align 8, !dbg !290
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.81, double noundef %0, double noundef %.pre, double noundef %2), !dbg !292
  br label %return, !dbg !293

return:                                           ; preds = %lor.lhs.false9, %if.then
  %retval.0 = phi i64 [ 0, %if.then ], [ 1, %lor.lhs.false9 ], !dbg !284
  ret i64 %retval.0, !dbg !294
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @TransformLights(ptr noundef %m) local_unnamed_addr #4 !dbg !295 {
entry:
  call void @llvm.dbg.value(metadata ptr %m, metadata !297, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata ptr undef, metadata !299, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i64 0, metadata !298, metadata !DIExpression()), !dbg !300
  %0 = load i64, ptr @nlights, align 8, !dbg !301
  %cmp6 = icmp sgt i64 %0, 0, !dbg !304
  br i1 %cmp6, label %for.body, label %for.end, !dbg !305

for.body:                                         ; preds = %entry, %for.body
  %lp.0.in8 = phi ptr [ %next, %for.body ], [ @lights, %entry ]
  %i.07 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.07, metadata !298, metadata !DIExpression()), !dbg !300
  %lp.0 = load ptr, ptr %lp.0.in8, align 8, !dbg !300
  call void @llvm.dbg.value(metadata ptr %lp.0, metadata !299, metadata !DIExpression()), !dbg !300
  tail call void @VecMatMult(ptr noundef %lp.0, ptr noundef %m, ptr noundef %lp.0) #15, !dbg !306
  %next = getelementptr inbounds %struct.light, ptr %lp.0, i64 0, i32 3, !dbg !308
  call void @llvm.dbg.value(metadata ptr undef, metadata !299, metadata !DIExpression()), !dbg !300
  %inc = add nuw nsw i64 %i.07, 1, !dbg !309
  call void @llvm.dbg.value(metadata i64 %inc, metadata !298, metadata !DIExpression()), !dbg !300
  %1 = load i64, ptr @nlights, align 8, !dbg !301
  %cmp = icmp slt i64 %inc, %1, !dbg !304
  br i1 %cmp, label %for.body, label %for.end, !dbg !305, !llvm.loop !310

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !312
}

declare !dbg !313 void @VecMatMult(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @ViewRotate(ptr noundef %M, double noundef %x, double noundef %y, double noundef %z) local_unnamed_addr #4 !dbg !316 {
entry:
  call void @llvm.dbg.value(metadata ptr %M, metadata !320, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata double %x, metadata !321, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata double %y, metadata !322, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata double %z, metadata !323, metadata !DIExpression()), !dbg !326
  %mul1 = fmul double %z, %z, !dbg !327
  %0 = tail call double @llvm.fmuladd.f64(double %x, double %x, double %mul1), !dbg !328
  %call = tail call double @sqrt(double noundef %0) #15, !dbg !329
  call void @llvm.dbg.value(metadata double %call, metadata !325, metadata !DIExpression()), !dbg !326
  %cmp = fcmp ogt double %call, 0.000000e+00, !dbg !330
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !330

cond.false:                                       ; preds = %entry
  %fneg = fneg double %call, !dbg !330
  br label %cond.end, !dbg !330

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi double [ %fneg, %cond.false ], [ %call, %entry ], !dbg !330
  %cmp2 = fcmp olt double %cond, 0x3E7AD7F29ABCAF48, !dbg !332
  br i1 %cmp2, label %if.then, label %if.end, !dbg !333

if.then:                                          ; preds = %cond.end
  tail call void @MatrixIdentity(ptr noundef %M) #15, !dbg !334
  %cmp3 = fcmp ogt double %y, 0.000000e+00, !dbg !336
  %mul = select i1 %cmp3, double 0x3FF921FB54442D18, double 0xBFF921FB54442D18, !dbg !337
  tail call void @Rotate(i64 noundef 1, ptr noundef %M, double noundef %mul) #15, !dbg !338
  br label %cleanup, !dbg !339

if.end:                                           ; preds = %cond.end
  %mul6 = fmul double %y, %y, !dbg !340
  %1 = tail call double @llvm.fmuladd.f64(double %x, double %x, double %mul6), !dbg !341
  %2 = tail call double @llvm.fmuladd.f64(double %z, double %z, double %1), !dbg !342
  %call8 = tail call double @sqrt(double noundef %2) #15, !dbg !343
  call void @llvm.dbg.value(metadata double %call8, metadata !324, metadata !DIExpression()), !dbg !326
  %div = fdiv double %z, %call, !dbg !344
  store double %div, ptr %M, align 8, !dbg !345
  %fneg10 = fneg double %x, !dbg !346
  %mul11 = fmul double %fneg10, %y, !dbg !347
  %mul12 = fmul double %call, %call8, !dbg !348
  %div13 = fdiv double %mul11, %mul12, !dbg !349
  %arrayidx15 = getelementptr inbounds [4 x double], ptr %M, i64 0, i64 1, !dbg !350
  store double %div13, ptr %arrayidx15, align 8, !dbg !351
  %div16 = fdiv double %x, %call8, !dbg !352
  %arrayidx18 = getelementptr inbounds [4 x double], ptr %M, i64 0, i64 2, !dbg !353
  store double %div16, ptr %arrayidx18, align 8, !dbg !354
  %arrayidx20 = getelementptr inbounds [4 x double], ptr %M, i64 0, i64 3, !dbg !355
  %div23 = fdiv double %call, %call8, !dbg !356
  %arrayidx25 = getelementptr inbounds [4 x double], ptr %M, i64 1, i64 1, !dbg !357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx20, i8 0, i64 16, i1 false), !dbg !358
  store double %div23, ptr %arrayidx25, align 8, !dbg !359
  %div26 = fdiv double %y, %call8, !dbg !360
  %arrayidx28 = getelementptr inbounds [4 x double], ptr %M, i64 1, i64 2, !dbg !361
  store double %div26, ptr %arrayidx28, align 8, !dbg !362
  %arrayidx30 = getelementptr inbounds [4 x double], ptr %M, i64 1, i64 3, !dbg !363
  store double 0.000000e+00, ptr %arrayidx30, align 8, !dbg !364
  %div32 = fdiv double %fneg10, %call, !dbg !365
  %arrayidx33 = getelementptr inbounds [4 x double], ptr %M, i64 2, !dbg !366
  store double %div32, ptr %arrayidx33, align 8, !dbg !367
  %fneg35 = fneg double %y, !dbg !368
  %mul36 = fmul double %fneg35, %z, !dbg !369
  %div38 = fdiv double %mul36, %mul12, !dbg !370
  %arrayidx40 = getelementptr inbounds [4 x double], ptr %M, i64 2, i64 1, !dbg !371
  store double %div38, ptr %arrayidx40, align 8, !dbg !372
  %div41 = fdiv double %z, %call8, !dbg !373
  %arrayidx43 = getelementptr inbounds [4 x double], ptr %M, i64 2, i64 2, !dbg !374
  store double %div41, ptr %arrayidx43, align 8, !dbg !375
  %arrayidx45 = getelementptr inbounds [4 x double], ptr %M, i64 2, i64 3, !dbg !376
  %arrayidx53 = getelementptr inbounds [4 x double], ptr %M, i64 3, i64 3, !dbg !377
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx45, i8 0, i64 32, i1 false), !dbg !378
  store double 1.000000e+00, ptr %arrayidx53, align 8, !dbg !379
  br label %cleanup, !dbg !380

cleanup:                                          ; preds = %if.end, %if.then
  ret void, !dbg !380
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

declare !dbg !381 void @Rotate(i64 noundef, ptr noundef, double noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @CreateViewMatrix() local_unnamed_addr #4 !dbg !384 {
entry:
  %T = alloca [4 x [4 x double]], align 16
  %R = alloca [4 x [4 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %T) #15, !dbg !391
  call void @llvm.dbg.declare(metadata ptr %T, metadata !386, metadata !DIExpression()), !dbg !392
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %R) #15, !dbg !391
  call void @llvm.dbg.declare(metadata ptr %R, metadata !390, metadata !DIExpression()), !dbg !393
  %0 = load double, ptr @View, align 8, !dbg !394
  %fneg = fneg double %0, !dbg !395
  %1 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 0, i64 1), align 8, !dbg !396
  %fneg1 = fneg double %1, !dbg !397
  %2 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 0, i64 2), align 8, !dbg !398
  %fneg2 = fneg double %2, !dbg !399
  call void @Translate(ptr noundef nonnull %T, double noundef %fneg, double noundef %fneg1, double noundef %fneg2) #15, !dbg !400
  call void @MatrixMult(ptr noundef getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 2), ptr noundef getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 2), ptr noundef nonnull %T) #15, !dbg !401
  %3 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 1), align 8, !dbg !402
  %4 = load double, ptr @View, align 8, !dbg !403
  %sub = fsub double %3, %4, !dbg !404
  %5 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 1, i64 1), align 8, !dbg !405
  %6 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 0, i64 1), align 8, !dbg !406
  %sub5 = fsub double %5, %6, !dbg !407
  %7 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 1, i64 2), align 8, !dbg !408
  %8 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 0, i64 2), align 8, !dbg !409
  %sub6 = fsub double %7, %8, !dbg !410
  call void @ViewRotate(ptr noundef nonnull %R, double noundef %sub, double noundef %sub5, double noundef %sub6), !dbg !411
  call void @MatrixMult(ptr noundef getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 2), ptr noundef getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 2), ptr noundef nonnull %R) #15, !dbg !412
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %R) #15, !dbg !413
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %T) #15, !dbg !413
  ret void, !dbg !413
}

declare !dbg !414 void @Translate(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #5

declare !dbg !415 void @MatrixMult(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @TransformViewRay(ptr noundef %tray) local_unnamed_addr #4 !dbg !418 {
entry:
  call void @llvm.dbg.value(metadata ptr %tray, metadata !422, metadata !DIExpression()), !dbg !423
  tail call void @VecMatMult(ptr noundef %tray, ptr noundef getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 3), ptr noundef %tray) #15, !dbg !424
  ret void, !dbg !425
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @NormalizeEnv(ptr noundef %normMat) local_unnamed_addr #4 !dbg !426 {
entry:
  call void @llvm.dbg.value(metadata ptr %normMat, metadata !428, metadata !DIExpression()), !dbg !429
  store double 1.000000e+00, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 0, i64 3), align 8, !dbg !430
  tail call void @VecMatMult(ptr noundef nonnull @View, ptr noundef %normMat, ptr noundef nonnull @View) #15, !dbg !431
  store double 1.000000e+00, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 1, i64 3), align 8, !dbg !432
  tail call void @VecMatMult(ptr noundef getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 1), ptr noundef %normMat, ptr noundef getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 1)) #15, !dbg !433
  tail call void @TransformLights(ptr noundef %normMat), !dbg !434
  ret void, !dbg !435
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local signext i8 @LookupCommand(ptr noundef %s) local_unnamed_addr #0 !dbg !436 {
entry:
  call void @llvm.dbg.value(metadata ptr %s, metadata !440, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata i64 0, metadata !441, metadata !DIExpression()), !dbg !442
  br label %for.body, !dbg !443

for.body:                                         ; preds = %entry, %for.inc
  %i.09 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.09, metadata !441, metadata !DIExpression()), !dbg !442
  %arrayidx = getelementptr inbounds [42 x %struct.CTE], ptr @cmdtab, i64 0, i64 %i.09, !dbg !445
  %0 = load ptr, ptr %arrayidx, align 16, !dbg !448
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %s, ptr noundef nonnull dereferenceable(1) %0) #16, !dbg !449
  %cmp1 = icmp eq i32 %call, 0, !dbg !450
  br i1 %cmp1, label %if.then, label %for.inc, !dbg !451

if.then:                                          ; preds = %for.body
  %opcode = getelementptr inbounds [42 x %struct.CTE], ptr @cmdtab, i64 0, i64 %i.09, i32 1, !dbg !452
  %1 = load i8, ptr %opcode, align 8, !dbg !452
  br label %cleanup, !dbg !453

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i64 %i.09, 1, !dbg !454
  call void @llvm.dbg.value(metadata i64 %inc, metadata !441, metadata !DIExpression()), !dbg !442
  %exitcond.not = icmp eq i64 %inc, 42, !dbg !455
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !443, !llvm.loop !456

for.end:                                          ; preds = %for.inc
  %call3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.82, ptr noundef %s), !dbg !458
  br label %cleanup, !dbg !459

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ 48, %for.end ], !dbg !442
  ret i8 %retval.0, !dbg !460
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind uwtable
define dso_local void @ReadEnvFile(ptr noundef %EnvFileName) local_unnamed_addr #4 !dbg !461 {
entry:
  %dummy = alloca i64, align 8
  %command = alloca [30 x i8], align 16
  %opparam = alloca [30 x i8], align 16
  %dummy_char = alloca [60 x i8], align 16
  %datafile = alloca [10 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %EnvFileName, metadata !465, metadata !DIExpression()), !dbg !547
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy) #15, !dbg !548
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %command) #15, !dbg !549
  call void @llvm.dbg.declare(metadata ptr %command, metadata !471, metadata !DIExpression()), !dbg !550
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %opparam) #15, !dbg !551
  call void @llvm.dbg.declare(metadata ptr %opparam, metadata !475, metadata !DIExpression()), !dbg !552
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %dummy_char) #15, !dbg !553
  call void @llvm.dbg.declare(metadata ptr %dummy_char, metadata !476, metadata !DIExpression()), !dbg !554
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %datafile) #15, !dbg !555
  call void @llvm.dbg.declare(metadata ptr %datafile, metadata !480, metadata !DIExpression()), !dbg !556
  %call = tail call ptr @fopen(ptr noundef %EnvFileName, ptr noundef nonnull @.str.83), !dbg !557
  call void @llvm.dbg.value(metadata ptr %call, metadata !485, metadata !DIExpression()), !dbg !547
  %tobool.not = icmp eq ptr %call, null, !dbg !558
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !560

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.84, ptr noundef %EnvFileName), !dbg !561
  tail call void @exit(i32 noundef -1) #17, !dbg !563
  unreachable, !dbg !563

if.end:                                           ; preds = %entry
  tail call void @InitEnv(), !dbg !564
  store i64 0, ptr @nlights, align 8, !dbg !565
  call void @llvm.dbg.value(metadata i64 0, metadata !484, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata ptr undef, metadata !546, metadata !DIExpression()), !dbg !547
  %call2593 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call, ptr noundef nonnull @.str.85, ptr noundef nonnull %command) #15, !dbg !566
  %cmp.not594 = icmp eq i32 %call2593, -1, !dbg !567
  br i1 %cmp.not594, label %while.end, label %while.body, !dbg !568

while.body:                                       ; preds = %if.end, %sw.epilog
  %lastlight.0596 = phi ptr [ %lastlight.1, %sw.epilog ], [ undef, %if.end ]
  %lights_set.0595 = phi i64 [ %lights_set.1, %sw.epilog ], [ 0, %if.end ]
  call void @llvm.dbg.value(metadata ptr %lastlight.0596, metadata !546, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i64 %lights_set.0595, metadata !484, metadata !DIExpression()), !dbg !547
  %call4 = call signext i8 @LookupCommand(ptr noundef nonnull %command), !dbg !569
  call void @llvm.dbg.value(metadata i8 %call4, metadata !470, metadata !DIExpression()), !dbg !547
  %conv = sext i8 %call4 to i32, !dbg !571
  switch i32 %conv, label %sw.default [
    i32 97, label %sw.bb
    i32 98, label %sw.bb12
    i32 99, label %sw.bb20
    i32 100, label %sw.bb32
    i32 120, label %sw.bb47
    i32 106, label %sw.bb59
    i32 103, label %sw.bb75
    i32 104, label %sw.bb93
    i32 107, label %sw.bb109
    i32 102, label %sw.bb125
    i32 101, label %sw.bb133
    i32 108, label %for.cond178.preheader
    i32 109, label %sw.bb195
    i32 110, label %sw.bb211
    i32 105, label %sw.bb228
    i32 119, label %sw.bb254
    i32 113, label %sw.bb280
    i32 115, label %sw.bb288
    i32 51, label %sw.bb296
    i32 52, label %sw.bb304
    i32 53, label %sw.bb312
    i32 54, label %sw.bb321
    i32 55, label %sw.bb336
    i32 56, label %sw.bb351
    i32 64, label %sw.bb359
    i32 35, label %sw.bb367
    i32 36, label %sw.bb375
    i32 42, label %sw.bb386
    i32 43, label %sw.bb394
    i32 37, label %sw.bb402
  ], !dbg !572

sw.bb:                                            ; preds = %while.body
  %call5 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.86, ptr noundef nonnull @View, ptr noundef getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 0, i64 1), ptr noundef getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 0, i64 2)) #15, !dbg !573
  call void @llvm.dbg.value(metadata i32 %call5, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp7.not = icmp eq i32 %call5, 3, !dbg !575
  br i1 %cmp7.not, label %sw.epilog, label %if.then9, !dbg !577

if.then9:                                         ; preds = %sw.bb
  %puts545 = call i32 @puts(ptr nonnull @str.172), !dbg !578
  call void @exit(i32 noundef -1) #17, !dbg !580
  unreachable, !dbg !580

sw.bb12:                                          ; preds = %while.body
  %call13 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.86, ptr noundef getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 1), ptr noundef getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 1, i64 1), ptr noundef getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 1, i64 2)) #15, !dbg !581
  call void @llvm.dbg.value(metadata i32 %call13, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp15.not = icmp eq i32 %call13, 3, !dbg !582
  br i1 %cmp15.not, label %sw.epilog, label %if.then17, !dbg !584

if.then17:                                        ; preds = %sw.bb12
  %puts544 = call i32 @puts(ptr nonnull @str.171), !dbg !585
  call void @exit(i32 noundef -1) #17, !dbg !587
  unreachable, !dbg !587

sw.bb20:                                          ; preds = %while.body
  %call21 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.86, ptr noundef getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 5), ptr noundef getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 5, i64 1), ptr noundef getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 5, i64 2)) #15, !dbg !588
  call void @llvm.dbg.value(metadata i32 %call21, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp23.not = icmp eq i32 %call21, 3, !dbg !589
  br i1 %cmp23.not, label %if.end27, label %if.then25, !dbg !591

if.then25:                                        ; preds = %sw.bb20
  %puts543 = call i32 @puts(ptr nonnull @str.170), !dbg !592
  call void @exit(i32 noundef -1) #17, !dbg !594
  unreachable, !dbg !594

if.end27:                                         ; preds = %sw.bb20
  %call28 = call i64 @VerifyColorRange(ptr noundef getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 5)), !dbg !595
  %tobool29.not = icmp eq i64 %call28, 0, !dbg !595
  br i1 %tobool29.not, label %if.then30, label %sw.epilog, !dbg !597

if.then30:                                        ; preds = %if.end27
  call void @exit(i32 noundef -1) #17, !dbg !598
  unreachable, !dbg !598

sw.bb32:                                          ; preds = %while.body
  %call33 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.90, ptr noundef getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 7)) #15, !dbg !599
  call void @llvm.dbg.value(metadata i32 %call33, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp35.not = icmp eq i32 %call33, 1, !dbg !600
  br i1 %cmp35.not, label %if.end39, label %if.then37, !dbg !602

if.then37:                                        ; preds = %sw.bb32
  %puts542 = call i32 @puts(ptr nonnull @str.169), !dbg !603
  call void @exit(i32 noundef -1) #17, !dbg !605
  unreachable, !dbg !605

if.end39:                                         ; preds = %sw.bb32
  %0 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 7), align 8, !dbg !606
  %cmp40 = fcmp olt double %0, 0.000000e+00, !dbg !608
  %cmp42 = fcmp ogt double %0, 1.000000e+02
  %or.cond = or i1 %cmp40, %cmp42, !dbg !609
  br i1 %or.cond, label %if.then44, label %sw.epilog, !dbg !609

if.then44:                                        ; preds = %if.end39
  %call45 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.92, double noundef %0), !dbg !610
  call void @exit(i32 noundef -1) #17, !dbg !612
  unreachable, !dbg !612

sw.bb47:                                          ; preds = %while.body
  %call48 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.86, ptr noundef getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 8), ptr noundef getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 8, i64 1), ptr noundef getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 8, i64 2)) #15, !dbg !613
  call void @llvm.dbg.value(metadata i32 %call48, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp50.not = icmp eq i32 %call48, 3, !dbg !614
  br i1 %cmp50.not, label %if.end54, label %if.then52, !dbg !616

if.then52:                                        ; preds = %sw.bb47
  %puts541 = call i32 @puts(ptr nonnull @str.168), !dbg !617
  call void @exit(i32 noundef -1) #17, !dbg !619
  unreachable, !dbg !619

if.end54:                                         ; preds = %sw.bb47
  %call55 = call i64 @VerifyColorRange(ptr noundef getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 8)), !dbg !620
  %tobool56.not = icmp eq i64 %call55, 0, !dbg !620
  br i1 %tobool56.not, label %if.then57, label %sw.epilog, !dbg !622

if.then57:                                        ; preds = %if.end54
  call void @exit(i32 noundef -1) #17, !dbg !623
  unreachable, !dbg !623

sw.bb59:                                          ; preds = %while.body
  %call60 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.94, ptr noundef getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 1)) #15, !dbg !624
  call void @llvm.dbg.value(metadata i32 %call60, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp62.not = icmp eq i32 %call60, 1, !dbg !625
  br i1 %cmp62.not, label %if.end66, label %if.then64, !dbg !627

if.then64:                                        ; preds = %sw.bb59
  %puts540 = call i32 @puts(ptr nonnull @str.167), !dbg !628
  call void @exit(i32 noundef -1) #17, !dbg !630
  unreachable, !dbg !630

if.end66:                                         ; preds = %sw.bb59
  %1 = load i64, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 1), align 8, !dbg !631
  %2 = icmp ugt i64 %1, 3, !dbg !633
  br i1 %2, label %if.then72, label %sw.epilog, !dbg !633

if.then72:                                        ; preds = %if.end66
  %call73 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.96, i64 noundef %1), !dbg !634
  call void @exit(i32 noundef -1) #17, !dbg !636
  unreachable, !dbg !636

sw.bb75:                                          ; preds = %while.body
  %call76 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.94, ptr noundef nonnull @Display) #15, !dbg !637
  call void @llvm.dbg.value(metadata i32 %call76, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %3 = load i64, ptr @Display, align 8, !dbg !638
  %call78 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.97, i64 noundef %3), !dbg !639
  %4 = load ptr, ptr @stdout, align 8, !dbg !640
  %call79 = call i32 @fflush(ptr noundef %4), !dbg !641
  %cmp80.not = icmp eq i32 %call76, 1, !dbg !642
  br i1 %cmp80.not, label %if.end84, label %if.then82, !dbg !644

if.then82:                                        ; preds = %sw.bb75
  %puts539 = call i32 @puts(ptr nonnull @str.166), !dbg !645
  call void @exit(i32 noundef -1) #17, !dbg !647
  unreachable, !dbg !647

if.end84:                                         ; preds = %sw.bb75
  %5 = load i64, ptr @Display, align 8, !dbg !648
  %6 = icmp ugt i64 %5, 5, !dbg !650
  br i1 %6, label %if.then90, label %sw.epilog, !dbg !650

if.then90:                                        ; preds = %if.end84
  %call91 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.99, i64 noundef %5), !dbg !651
  call void @exit(i32 noundef -1) #17, !dbg !653
  unreachable, !dbg !653

sw.bb93:                                          ; preds = %while.body
  %call94 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.90, ptr noundef getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 8)) #15, !dbg !654
  call void @llvm.dbg.value(metadata i32 %call94, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp96.not = icmp eq i32 %call94, 1, !dbg !655
  br i1 %cmp96.not, label %if.end100, label %if.then98, !dbg !657

if.then98:                                        ; preds = %sw.bb93
  %puts538 = call i32 @puts(ptr nonnull @str.165), !dbg !658
  call void @exit(i32 noundef -1) #17, !dbg !660
  unreachable, !dbg !660

if.end100:                                        ; preds = %sw.bb93
  %7 = load double, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 8), align 8, !dbg !661
  %cmp101 = fcmp olt double %7, 0.000000e+00, !dbg !663
  %cmp104 = fcmp ogt double %7, 1.000000e+00
  %or.cond428 = or i1 %cmp101, %cmp104, !dbg !664
  br i1 %or.cond428, label %if.then106, label %sw.epilog, !dbg !664

if.then106:                                       ; preds = %if.end100
  %call107 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.101, double noundef %7), !dbg !665
  call void @exit(i32 noundef -1) #17, !dbg !667
  unreachable, !dbg !667

sw.bb109:                                         ; preds = %while.body
  %call110 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.90, ptr noundef getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 4)) #15, !dbg !668
  call void @llvm.dbg.value(metadata i32 %call110, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp112.not = icmp eq i32 %call110, 1, !dbg !669
  br i1 %cmp112.not, label %if.end116, label %if.then114, !dbg !671

if.then114:                                       ; preds = %sw.bb109
  %puts537 = call i32 @puts(ptr nonnull @str.164), !dbg !672
  call void @exit(i32 noundef -1) #17, !dbg !674
  unreachable, !dbg !674

if.end116:                                        ; preds = %sw.bb109
  %8 = load double, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 4), align 8, !dbg !675
  %cmp117 = fcmp olt double %8, 0.000000e+00, !dbg !677
  %cmp120 = fcmp ogt double %8, 1.000000e+00
  %or.cond429 = or i1 %cmp117, %cmp120, !dbg !678
  br i1 %or.cond429, label %if.then122, label %sw.epilog, !dbg !678

if.then122:                                       ; preds = %if.end116
  %call123 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.103, double noundef %8), !dbg !679
  call void @exit(i32 noundef -1) #17, !dbg !681
  unreachable, !dbg !681

sw.bb125:                                         ; preds = %while.body
  %call126 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.104, ptr noundef getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 5), ptr noundef getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 6)) #15, !dbg !682
  call void @llvm.dbg.value(metadata i32 %call126, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp128.not = icmp eq i32 %call126, 2, !dbg !683
  br i1 %cmp128.not, label %sw.epilog, label %if.then130, !dbg !685

if.then130:                                       ; preds = %sw.bb125
  %puts536 = call i32 @puts(ptr nonnull @str.163), !dbg !686
  call void @exit(i32 noundef -1) #17, !dbg !688
  unreachable, !dbg !688

sw.bb133:                                         ; preds = %while.body
  call void @llvm.dbg.value(metadata i64 1, metadata !484, metadata !DIExpression()), !dbg !547
  %9 = load i64, ptr @nlights, align 8, !dbg !689
  %cmp134 = icmp sgt i64 %9, 0, !dbg !691
  br i1 %cmp134, label %if.then136, label %if.else, !dbg !692

if.then136:                                       ; preds = %sw.bb133
  %call137 = call ptr @GlobalMalloc(i64 noundef 72, ptr noundef nonnull @.str.80) #15, !dbg !693
  call void @llvm.dbg.value(metadata ptr %call137, metadata !545, metadata !DIExpression()), !dbg !547
  br label %if.end138, !dbg !694

if.else:                                          ; preds = %sw.bb133
  %10 = load ptr, ptr @lights, align 8, !dbg !695
  call void @llvm.dbg.value(metadata ptr %10, metadata !545, metadata !DIExpression()), !dbg !547
  br label %if.end138

if.end138:                                        ; preds = %if.else, %if.then136
  %lptr.0 = phi ptr [ %call137, %if.then136 ], [ %10, %if.else ], !dbg !696
  call void @llvm.dbg.value(metadata ptr %lptr.0, metadata !545, metadata !DIExpression()), !dbg !547
  %arrayidx140 = getelementptr inbounds [4 x double], ptr %lptr.0, i64 0, i64 1, !dbg !697
  %arrayidx142 = getelementptr inbounds [4 x double], ptr %lptr.0, i64 0, i64 2, !dbg !698
  %col = getelementptr inbounds %struct.light, ptr %lptr.0, i64 0, i32 1, !dbg !699
  %arrayidx145 = getelementptr inbounds %struct.light, ptr %lptr.0, i64 0, i32 1, i64 1, !dbg !700
  %arrayidx147 = getelementptr inbounds %struct.light, ptr %lptr.0, i64 0, i32 1, i64 2, !dbg !701
  %call148 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.106, ptr noundef %lptr.0, ptr noundef nonnull %arrayidx140, ptr noundef nonnull %arrayidx142, ptr noundef nonnull %col, ptr noundef nonnull %arrayidx145, ptr noundef nonnull %arrayidx147) #15, !dbg !702
  call void @llvm.dbg.value(metadata i32 %call148, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp150.not = icmp eq i32 %call148, 6, !dbg !703
  br i1 %cmp150.not, label %if.end154, label %if.then152, !dbg !705

if.then152:                                       ; preds = %if.end138
  %puts535 = call i32 @puts(ptr nonnull @str.162), !dbg !706
  call void @exit(i32 noundef -1) #17, !dbg !708
  unreachable, !dbg !708

if.end154:                                        ; preds = %if.end138
  %call157 = call i64 @VerifyColorRange(ptr noundef nonnull %col), !dbg !709
  %tobool158.not = icmp eq i64 %call157, 0, !dbg !709
  br i1 %tobool158.not, label %if.then159, label %if.end160, !dbg !711

if.then159:                                       ; preds = %if.end154
  call void @exit(i32 noundef -1) #17, !dbg !712
  unreachable, !dbg !712

if.end160:                                        ; preds = %if.end154
  %arrayidx162 = getelementptr inbounds [4 x double], ptr %lptr.0, i64 0, i64 3, !dbg !713
  store double 1.000000e+00, ptr %arrayidx162, align 8, !dbg !714
  %shadow = getelementptr inbounds %struct.light, ptr %lptr.0, i64 0, i32 2, !dbg !715
  %call163 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.94, ptr noundef nonnull %shadow) #15, !dbg !716
  call void @llvm.dbg.value(metadata i32 %call163, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp165.not = icmp eq i32 %call163, 1, !dbg !717
  br i1 %cmp165.not, label %if.end169, label %if.then167, !dbg !719

if.then167:                                       ; preds = %if.end160
  %puts534 = call i32 @puts(ptr nonnull @str.161), !dbg !720
  call void @exit(i32 noundef -1) #17, !dbg !722
  unreachable, !dbg !722

if.end169:                                        ; preds = %if.end160
  %next = getelementptr inbounds %struct.light, ptr %lptr.0, i64 0, i32 3, !dbg !723
  store ptr null, ptr %next, align 8, !dbg !724
  %11 = load i64, ptr @nlights, align 8, !dbg !725
  %cmp170 = icmp sgt i64 %11, 0, !dbg !727
  br i1 %cmp170, label %if.then172, label %if.end174, !dbg !728

if.then172:                                       ; preds = %if.end169
  %next173 = getelementptr inbounds %struct.light, ptr %lastlight.0596, i64 0, i32 3, !dbg !729
  store ptr %lptr.0, ptr %next173, align 8, !dbg !730
  br label %if.end174, !dbg !731

if.end174:                                        ; preds = %if.then172, %if.end169
  %inc = add nsw i64 %11, 1, !dbg !732
  store i64 %inc, ptr @nlights, align 8, !dbg !732
  call void @llvm.dbg.value(metadata ptr %lptr.0, metadata !546, metadata !DIExpression()), !dbg !547
  br label %sw.epilog, !dbg !733

for.cond178.preheader:                            ; preds = %while.body, %for.inc192
  %i.0592 = phi i64 [ %inc193, %for.inc192 ], [ 0, %while.body ]
  call void @llvm.dbg.value(metadata i64 %i.0592, metadata !466, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i64 0, metadata !467, metadata !DIExpression()), !dbg !547
  br label %for.body181, !dbg !734

for.cond178:                                      ; preds = %for.body181
  %inc191 = add nuw nsw i64 %j.0591, 1, !dbg !738
  call void @llvm.dbg.value(metadata i64 %inc191, metadata !467, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i64 undef, metadata !467, metadata !DIExpression()), !dbg !547
  %exitcond.not = icmp eq i64 %inc191, 4, !dbg !740
  br i1 %exitcond.not, label %for.inc192, label %for.body181, !dbg !734, !llvm.loop !741

for.body181:                                      ; preds = %for.cond178.preheader, %for.cond178
  %j.0591 = phi i64 [ 0, %for.cond178.preheader ], [ %inc191, %for.cond178 ]
  call void @llvm.dbg.value(metadata i64 %j.0591, metadata !467, metadata !DIExpression()), !dbg !547
  %arrayidx183 = getelementptr inbounds %struct.view, ptr @View, i64 0, i32 4, i64 %i.0592, i64 %j.0591, !dbg !743
  %call184 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.90, ptr noundef nonnull %arrayidx183) #15, !dbg !745
  call void @llvm.dbg.value(metadata i32 %call184, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp186.not = icmp eq i32 %call184, 1, !dbg !746
  call void @llvm.dbg.value(metadata i64 %j.0591, metadata !467, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !547
  br i1 %cmp186.not, label %for.cond178, label %if.then188, !dbg !748

if.then188:                                       ; preds = %for.body181
  %puts533 = call i32 @puts(ptr nonnull @str.160), !dbg !749
  call void @exit(i32 noundef -1) #17, !dbg !751
  unreachable, !dbg !751

for.inc192:                                       ; preds = %for.cond178
  %inc193 = add nuw nsw i64 %i.0592, 1, !dbg !752
  call void @llvm.dbg.value(metadata i64 %inc193, metadata !466, metadata !DIExpression()), !dbg !547
  %exitcond601.not = icmp eq i64 %inc193, 4, !dbg !753
  br i1 %exitcond601.not, label %for.end194, label %for.cond178.preheader, !dbg !754, !llvm.loop !755

for.end194:                                       ; preds = %for.inc192
  store i64 1, ptr @ModelTransform, align 8, !dbg !757
  br label %sw.epilog, !dbg !758

sw.bb195:                                         ; preds = %while.body
  %call197 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.85, ptr noundef nonnull %opparam) #15, !dbg !759
  call void @llvm.dbg.value(metadata i32 %call197, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp199.not = icmp eq i32 %call197, 1, !dbg !760
  br i1 %cmp199.not, label %if.end203, label %if.then201, !dbg !762

if.then201:                                       ; preds = %sw.bb195
  %puts532 = call i32 @puts(ptr nonnull @str.159), !dbg !763
  call void @exit(i32 noundef -1) #17, !dbg !765
  unreachable, !dbg !765

if.end203:                                        ; preds = %sw.bb195
  %bcmp531 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %opparam, ptr noundef nonnull dereferenceable(3) @.str.111, i64 3), !dbg !766
  %cmp206 = icmp eq i32 %bcmp531, 0, !dbg !768
  br i1 %cmp206, label %if.then208, label %if.else209, !dbg !769

if.then208:                                       ; preds = %if.end203
  store i64 1, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 9), align 8, !dbg !770
  br label %sw.epilog, !dbg !771

if.else209:                                       ; preds = %if.end203
  store i64 0, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 9), align 8, !dbg !772
  br label %sw.epilog

sw.bb211:                                         ; preds = %while.body
  %call213 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.85, ptr noundef nonnull %opparam) #15, !dbg !773
  call void @llvm.dbg.value(metadata i32 %call213, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp215.not = icmp eq i32 %call213, 1, !dbg !774
  br i1 %cmp215.not, label %if.end220, label %if.then217, !dbg !776

if.then217:                                       ; preds = %sw.bb211
  %call219 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.112, ptr noundef nonnull %opparam), !dbg !777
  call void @exit(i32 noundef -1) #17, !dbg !779
  unreachable, !dbg !779

if.end220:                                        ; preds = %sw.bb211
  %bcmp530 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %opparam, ptr noundef nonnull dereferenceable(3) @.str.111, i64 3), !dbg !780
  %cmp223 = icmp eq i32 %bcmp530, 0, !dbg !782
  br i1 %cmp223, label %if.then225, label %if.else226, !dbg !783

if.then225:                                       ; preds = %if.end220
  store i64 1, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 10), align 8, !dbg !784
  br label %sw.epilog, !dbg !785

if.else226:                                       ; preds = %if.end220
  store i64 0, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 10), align 8, !dbg !786
  br label %sw.epilog

sw.bb228:                                         ; preds = %while.body
  %call230 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.85, ptr noundef nonnull %opparam) #15, !dbg !787
  call void @llvm.dbg.value(metadata i32 %call230, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp232.not = icmp eq i32 %call230, 1, !dbg !788
  br i1 %cmp232.not, label %if.end237, label %if.then234, !dbg !790

if.then234:                                       ; preds = %sw.bb228
  %call236 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.113, ptr noundef nonnull %opparam), !dbg !791
  call void @exit(i32 noundef -1) #17, !dbg !793
  unreachable, !dbg !793

if.end237:                                        ; preds = %sw.bb228
  %bcmp528 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %opparam, ptr noundef nonnull dereferenceable(12) @.str.114, i64 12), !dbg !794
  %cmp240 = icmp eq i32 %bcmp528, 0, !dbg !796
  br i1 %cmp240, label %if.then242, label %if.else243, !dbg !797

if.then242:                                       ; preds = %if.end237
  store i64 0, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 6), align 8, !dbg !798
  br label %sw.epilog, !dbg !799

if.else243:                                       ; preds = %if.end237
  %bcmp529 = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %opparam, ptr noundef nonnull dereferenceable(13) @.str.115, i64 13), !dbg !800
  %cmp246 = icmp eq i32 %bcmp529, 0, !dbg !802
  br i1 %cmp246, label %if.then248, label %if.else249, !dbg !803

if.then248:                                       ; preds = %if.else243
  store i64 1, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 6), align 8, !dbg !804
  br label %sw.epilog

if.else249:                                       ; preds = %if.else243
  %call251 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.116, ptr noundef nonnull %opparam), !dbg !805
  call void @exit(i32 noundef -1) #17, !dbg !807
  unreachable, !dbg !807

sw.bb254:                                         ; preds = %while.body
  %call256 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.85, ptr noundef nonnull %opparam) #15, !dbg !808
  call void @llvm.dbg.value(metadata i32 %call256, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp258.not = icmp eq i32 %call256, 1, !dbg !809
  br i1 %cmp258.not, label %if.end263, label %if.then260, !dbg !811

if.then260:                                       ; preds = %sw.bb254
  %call262 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.117, ptr noundef nonnull %opparam), !dbg !812
  call void @exit(i32 noundef -1) #17, !dbg !814
  unreachable, !dbg !814

if.end263:                                        ; preds = %sw.bb254
  %bcmp526 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %opparam, ptr noundef nonnull dereferenceable(5) @str.143, i64 5), !dbg !815
  %cmp266 = icmp eq i32 %bcmp526, 0, !dbg !817
  br i1 %cmp266, label %if.then268, label %if.else269, !dbg !818

if.then268:                                       ; preds = %if.end263
  store i64 0, ptr @TraversalType, align 8, !dbg !819
  br label %sw.epilog, !dbg !820

if.else269:                                       ; preds = %if.end263
  %bcmp527 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %opparam, ptr noundef nonnull dereferenceable(9) @.str.119, i64 9), !dbg !821
  %cmp272 = icmp eq i32 %bcmp527, 0, !dbg !823
  br i1 %cmp272, label %if.then274, label %if.else275, !dbg !824

if.then274:                                       ; preds = %if.else269
  store i64 1, ptr @TraversalType, align 8, !dbg !825
  br label %sw.epilog

if.else275:                                       ; preds = %if.else269
  %call277 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.120, ptr noundef nonnull %opparam), !dbg !826
  call void @exit(i32 noundef -1) #17, !dbg !828
  unreachable, !dbg !828

sw.bb280:                                         ; preds = %while.body
  %call281 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.121, ptr noundef nonnull @GeoFileName) #15, !dbg !829
  call void @llvm.dbg.value(metadata i32 %call281, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp283.not = icmp eq i32 %call281, 1, !dbg !830
  br i1 %cmp283.not, label %if.end287, label %if.then285, !dbg !832

if.then285:                                       ; preds = %sw.bb280
  %puts525 = call i32 @puts(ptr nonnull @str.158), !dbg !833
  call void @exit(i32 noundef -1) #17, !dbg !835
  unreachable, !dbg !835

if.end287:                                        ; preds = %sw.bb280
  store i64 1, ptr @GeoFile, align 8, !dbg !836
  br label %sw.epilog, !dbg !837

sw.bb288:                                         ; preds = %while.body
  %call289 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.121, ptr noundef nonnull @PicFileName) #15, !dbg !838
  call void @llvm.dbg.value(metadata i32 %call289, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp291.not = icmp eq i32 %call289, 1, !dbg !839
  br i1 %cmp291.not, label %if.end295, label %if.then293, !dbg !841

if.then293:                                       ; preds = %sw.bb288
  %puts524 = call i32 @puts(ptr nonnull @str.157), !dbg !842
  call void @exit(i32 noundef -1) #17, !dbg !844
  unreachable, !dbg !844

if.end295:                                        ; preds = %sw.bb288
  store i64 1, ptr @PicFile, align 8, !dbg !845
  br label %sw.epilog, !dbg !846

sw.bb296:                                         ; preds = %while.body
  call void @llvm.dbg.value(metadata ptr %dummy, metadata !469, metadata !DIExpression(DW_OP_deref)), !dbg !547
  %call297 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.94, ptr noundef nonnull %dummy) #15, !dbg !847
  call void @llvm.dbg.value(metadata i32 %call297, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp299.not = icmp eq i32 %call297, 1, !dbg !848
  br i1 %cmp299.not, label %sw.epilog, label %if.then301, !dbg !850

if.then301:                                       ; preds = %sw.bb296
  %puts523 = call i32 @puts(ptr nonnull @str.156), !dbg !851
  call void @exit(i32 noundef -1) #17, !dbg !853
  unreachable, !dbg !853

sw.bb304:                                         ; preds = %while.body
  call void @llvm.dbg.value(metadata ptr %dummy, metadata !469, metadata !DIExpression(DW_OP_deref)), !dbg !547
  %call305 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.94, ptr noundef nonnull %dummy) #15, !dbg !854
  call void @llvm.dbg.value(metadata i32 %call305, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp307.not = icmp eq i32 %call305, 1, !dbg !855
  br i1 %cmp307.not, label %sw.epilog, label %if.then309, !dbg !857

if.then309:                                       ; preds = %sw.bb304
  %puts522 = call i32 @puts(ptr nonnull @str.155), !dbg !858
  call void @exit(i32 noundef -1) #17, !dbg !860
  unreachable, !dbg !860

sw.bb312:                                         ; preds = %while.body
  %call314 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.85, ptr noundef nonnull %dummy_char) #15, !dbg !861
  call void @llvm.dbg.value(metadata i32 %call314, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp316.not = icmp eq i32 %call314, 1, !dbg !862
  br i1 %cmp316.not, label %sw.epilog, label %if.then318, !dbg !864

if.then318:                                       ; preds = %sw.bb312
  %puts521 = call i32 @puts(ptr nonnull @str.154), !dbg !865
  call void @exit(i32 noundef -1) #17, !dbg !867
  unreachable, !dbg !867

sw.bb321:                                         ; preds = %while.body
  %call323 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.85, ptr noundef nonnull %opparam) #15, !dbg !868
  call void @llvm.dbg.value(metadata i32 %call323, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp325.not = icmp eq i32 %call323, 1, !dbg !869
  br i1 %cmp325.not, label %if.end329, label %if.then327, !dbg !871

if.then327:                                       ; preds = %sw.bb321
  %puts520 = call i32 @puts(ptr nonnull @str.153), !dbg !872
  call void @exit(i32 noundef -1) #17, !dbg !874
  unreachable, !dbg !874

if.end329:                                        ; preds = %sw.bb321
  %bcmp519 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %opparam, ptr noundef nonnull dereferenceable(3) @.str.128, i64 3), !dbg !875
  %cmp332 = icmp eq i32 %bcmp519, 0, !dbg !877
  br i1 %cmp332, label %if.then334, label %sw.epilog, !dbg !878

if.then334:                                       ; preds = %if.end329
  store i64 0, ptr @ModelNorm, align 8, !dbg !879
  br label %sw.epilog, !dbg !880

sw.bb336:                                         ; preds = %while.body
  %call338 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.85, ptr noundef nonnull %datafile) #15, !dbg !881
  call void @llvm.dbg.value(metadata i32 %call338, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp340.not = icmp eq i32 %call338, 1, !dbg !882
  br i1 %cmp340.not, label %if.end344, label %if.then342, !dbg !884

if.then342:                                       ; preds = %sw.bb336
  %puts518 = call i32 @puts(ptr nonnull @str.152), !dbg !885
  call void @exit(i32 noundef -1) #17, !dbg !887
  unreachable, !dbg !887

if.end344:                                        ; preds = %sw.bb336
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %datafile, ptr noundef nonnull dereferenceable(7) @.str.130, i64 7), !dbg !888
  %cmp347 = icmp eq i32 %bcmp, 0, !dbg !890
  br i1 %cmp347, label %if.then349, label %sw.epilog, !dbg !891

if.then349:                                       ; preds = %if.end344
  store i64 1, ptr @DataType, align 8, !dbg !892
  br label %sw.epilog, !dbg !893

sw.bb351:                                         ; preds = %while.body
  %call352 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.94, ptr noundef nonnull @hu_max_prims_cell) #15, !dbg !894
  call void @llvm.dbg.value(metadata i32 %call352, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp354.not = icmp eq i32 %call352, 1, !dbg !895
  br i1 %cmp354.not, label %sw.epilog, label %if.then356, !dbg !897

if.then356:                                       ; preds = %sw.bb351
  %puts517 = call i32 @puts(ptr nonnull @str.151), !dbg !898
  call void @exit(i32 noundef -1) #17, !dbg !900
  unreachable, !dbg !900

sw.bb359:                                         ; preds = %while.body
  %call360 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.94, ptr noundef nonnull @hu_gridsize) #15, !dbg !901
  call void @llvm.dbg.value(metadata i32 %call360, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp362.not = icmp eq i32 %call360, 1, !dbg !902
  br i1 %cmp362.not, label %sw.epilog, label %if.then364, !dbg !904

if.then364:                                       ; preds = %sw.bb359
  %puts516 = call i32 @puts(ptr nonnull @str.150), !dbg !905
  call void @exit(i32 noundef -1) #17, !dbg !907
  unreachable, !dbg !907

sw.bb367:                                         ; preds = %while.body
  %call368 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.94, ptr noundef nonnull @hu_numbuckets) #15, !dbg !908
  call void @llvm.dbg.value(metadata i32 %call368, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp370.not = icmp eq i32 %call368, 1, !dbg !909
  br i1 %cmp370.not, label %sw.epilog, label %if.then372, !dbg !911

if.then372:                                       ; preds = %sw.bb367
  %puts515 = call i32 @puts(ptr nonnull @str.149), !dbg !912
  call void @exit(i32 noundef -1) #17, !dbg !914
  unreachable, !dbg !914

sw.bb375:                                         ; preds = %while.body
  %call376 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.94, ptr noundef nonnull @hu_max_subdiv_level) #15, !dbg !915
  call void @llvm.dbg.value(metadata i32 %call376, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp378 = icmp ne i32 %call376, 1, !dbg !916
  %12 = load i64, ptr @hu_max_subdiv_level, align 8
  %cmp381 = icmp sgt i64 %12, 3
  %or.cond430 = select i1 %cmp378, i1 true, i1 %cmp381, !dbg !918
  br i1 %or.cond430, label %if.then383, label %sw.epilog, !dbg !918

if.then383:                                       ; preds = %sw.bb375
  %puts514 = call i32 @puts(ptr nonnull @str.148), !dbg !919
  call void @exit(i32 noundef -1) #17, !dbg !921
  unreachable, !dbg !921

sw.bb386:                                         ; preds = %while.body
  %call387 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.94, ptr noundef nonnull @hu_lazy) #15, !dbg !922
  call void @llvm.dbg.value(metadata i32 %call387, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp389.not = icmp eq i32 %call387, 1, !dbg !923
  br i1 %cmp389.not, label %sw.epilog, label %if.then391, !dbg !925

if.then391:                                       ; preds = %sw.bb386
  %puts513 = call i32 @puts(ptr nonnull @str.147), !dbg !926
  call void @exit(i32 noundef -1) #17, !dbg !928
  unreachable, !dbg !928

sw.bb394:                                         ; preds = %while.body
  %call395 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.104, ptr noundef nonnull @bundlex, ptr noundef nonnull @bundley) #15, !dbg !929
  call void @llvm.dbg.value(metadata i32 %call395, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp397.not = icmp eq i32 %call395, 2, !dbg !930
  br i1 %cmp397.not, label %sw.epilog, label %if.then399, !dbg !932

if.then399:                                       ; preds = %sw.bb394
  %puts512 = call i32 @puts(ptr nonnull @str.146), !dbg !933
  call void @exit(i32 noundef -1) #17, !dbg !935
  unreachable, !dbg !935

sw.bb402:                                         ; preds = %while.body
  %call403 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.104, ptr noundef nonnull @blockx, ptr noundef nonnull @blocky) #15, !dbg !936
  call void @llvm.dbg.value(metadata i32 %call403, metadata !468, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !547
  %cmp405.not = icmp eq i32 %call403, 2, !dbg !937
  br i1 %cmp405.not, label %sw.epilog, label %if.then407, !dbg !939

if.then407:                                       ; preds = %sw.bb402
  %puts511 = call i32 @puts(ptr nonnull @str.145), !dbg !940
  call void @exit(i32 noundef -1) #17, !dbg !942
  unreachable, !dbg !942

sw.default:                                       ; preds = %while.body
  %call411 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.138, ptr noundef nonnull %command), !dbg !943
  br label %sw.epilog, !dbg !944

sw.epilog:                                        ; preds = %sw.bb402, %sw.bb394, %sw.bb386, %sw.bb375, %sw.bb367, %sw.bb359, %sw.bb351, %if.end344, %if.then349, %if.end329, %if.then334, %sw.bb312, %sw.bb304, %sw.bb296, %if.then268, %if.then274, %if.then242, %if.then248, %if.then225, %if.else226, %if.then208, %if.else209, %sw.bb125, %if.end116, %if.end100, %if.end84, %if.end66, %if.end54, %if.end39, %if.end27, %sw.bb12, %sw.bb, %sw.default, %if.end295, %if.end287, %for.end194, %if.end174
  %lights_set.1 = phi i64 [ %lights_set.0595, %sw.default ], [ %lights_set.0595, %sw.bb402 ], [ %lights_set.0595, %sw.bb394 ], [ %lights_set.0595, %sw.bb386 ], [ %lights_set.0595, %sw.bb375 ], [ %lights_set.0595, %sw.bb367 ], [ %lights_set.0595, %sw.bb359 ], [ %lights_set.0595, %sw.bb351 ], [ %lights_set.0595, %if.then349 ], [ %lights_set.0595, %if.end344 ], [ %lights_set.0595, %if.then334 ], [ %lights_set.0595, %if.end329 ], [ %lights_set.0595, %sw.bb312 ], [ %lights_set.0595, %sw.bb304 ], [ %lights_set.0595, %sw.bb296 ], [ %lights_set.0595, %if.end295 ], [ %lights_set.0595, %if.end287 ], [ %lights_set.0595, %if.then268 ], [ %lights_set.0595, %if.then274 ], [ %lights_set.0595, %if.then242 ], [ %lights_set.0595, %if.then248 ], [ %lights_set.0595, %if.then225 ], [ %lights_set.0595, %if.else226 ], [ %lights_set.0595, %if.then208 ], [ %lights_set.0595, %if.else209 ], [ %lights_set.0595, %for.end194 ], [ 1, %if.end174 ], [ %lights_set.0595, %sw.bb125 ], [ %lights_set.0595, %if.end116 ], [ %lights_set.0595, %if.end100 ], [ %lights_set.0595, %if.end84 ], [ %lights_set.0595, %if.end66 ], [ %lights_set.0595, %if.end54 ], [ %lights_set.0595, %if.end39 ], [ %lights_set.0595, %if.end27 ], [ %lights_set.0595, %sw.bb12 ], [ %lights_set.0595, %sw.bb ], !dbg !547
  %lastlight.1 = phi ptr [ %lastlight.0596, %sw.default ], [ %lastlight.0596, %sw.bb402 ], [ %lastlight.0596, %sw.bb394 ], [ %lastlight.0596, %sw.bb386 ], [ %lastlight.0596, %sw.bb375 ], [ %lastlight.0596, %sw.bb367 ], [ %lastlight.0596, %sw.bb359 ], [ %lastlight.0596, %sw.bb351 ], [ %lastlight.0596, %if.then349 ], [ %lastlight.0596, %if.end344 ], [ %lastlight.0596, %if.then334 ], [ %lastlight.0596, %if.end329 ], [ %lastlight.0596, %sw.bb312 ], [ %lastlight.0596, %sw.bb304 ], [ %lastlight.0596, %sw.bb296 ], [ %lastlight.0596, %if.end295 ], [ %lastlight.0596, %if.end287 ], [ %lastlight.0596, %if.then268 ], [ %lastlight.0596, %if.then274 ], [ %lastlight.0596, %if.then242 ], [ %lastlight.0596, %if.then248 ], [ %lastlight.0596, %if.then225 ], [ %lastlight.0596, %if.else226 ], [ %lastlight.0596, %if.then208 ], [ %lastlight.0596, %if.else209 ], [ %lastlight.0596, %for.end194 ], [ %lptr.0, %if.end174 ], [ %lastlight.0596, %sw.bb125 ], [ %lastlight.0596, %if.end116 ], [ %lastlight.0596, %if.end100 ], [ %lastlight.0596, %if.end84 ], [ %lastlight.0596, %if.end66 ], [ %lastlight.0596, %if.end54 ], [ %lastlight.0596, %if.end39 ], [ %lastlight.0596, %if.end27 ], [ %lastlight.0596, %sw.bb12 ], [ %lastlight.0596, %sw.bb ]
  call void @llvm.dbg.value(metadata ptr %lastlight.1, metadata !546, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i64 %lights_set.1, metadata !484, metadata !DIExpression()), !dbg !547
  %call2 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.85, ptr noundef nonnull %command) #15, !dbg !566
  %cmp.not = icmp eq i32 %call2, -1, !dbg !567
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !568, !llvm.loop !945

while.end:                                        ; preds = %sw.epilog, %if.end
  %lights_set.0.lcssa = phi i64 [ 0, %if.end ], [ %lights_set.1, %sw.epilog ], !dbg !947
  %call412 = call i32 @fclose(ptr noundef %call), !dbg !948
  %13 = load i64, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 5), align 8, !dbg !949
  %14 = load i64, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 6), align 8, !dbg !950
  %mul = mul nsw i64 %14, %13, !dbg !951
  store i64 %mul, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 7), align 8, !dbg !952
  %15 = load double, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 10), align 8, !dbg !953
  %conv413 = sitofp i64 %13 to double, !dbg !954
  %div = fdiv double %15, %conv413, !dbg !955
  store double %div, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 14), align 8, !dbg !956
  %16 = load double, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 11), align 8, !dbg !957
  %conv414 = sitofp i64 %14 to double, !dbg !958
  %div415 = fdiv double %16, %conv414, !dbg !959
  store double %div415, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 15), align 8, !dbg !960
  %tobool416.not = icmp eq i64 %lights_set.0.lcssa, 0, !dbg !961
  br i1 %tobool416.not, label %if.then417, label %if.end418, !dbg !963

if.then417:                                       ; preds = %while.end
  call void @InitLights(), !dbg !964
  br label %if.end418, !dbg !964

if.end418:                                        ; preds = %if.then417, %while.end
  call void @InitDisplay(), !dbg !965
  %17 = load i64, ptr @TraversalType, align 8, !dbg !966
  %cmp419 = icmp ne i64 %17, 0, !dbg !968
  %18 = load i64, ptr @ModelNorm, align 8
  %cmp421 = icmp eq i64 %18, 0
  %or.cond431 = select i1 %cmp419, i1 %cmp421, i1 false, !dbg !969
  br i1 %or.cond431, label %if.then423, label %if.end425, !dbg !969

if.then423:                                       ; preds = %if.end418
  %puts = call i32 @puts(ptr nonnull @str.144), !dbg !970
  store i64 1, ptr @ModelNorm, align 8, !dbg !972
  br label %if.end425, !dbg !973

if.end425:                                        ; preds = %if.then423, %if.end418
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %datafile) #15, !dbg !974
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %dummy_char) #15, !dbg !974
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %opparam) #15, !dbg !974
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %command) #15, !dbg !974
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy) #15, !dbg !974
  ret void, !dbg !974
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !975 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !979 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #13

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nofree nounwind }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { argmemonly nofree nounwind willreturn writeonly }
attributes #15 = { nounwind }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cmdtab", scope: !2, file: !3, line: 103, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "env.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "b1326fe10767003ba01bc3e53dce45ad")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "REAL", file: !6, line: 310, baseType: !7)
!6 = !DIFile(filename: "./rt.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "79f3f08c304721814d4d4cb3fdd7e4dc")
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !{!0}
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 5376, elements: !18)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "CTE", file: !3, line: 95, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 90, size: 128, elements: !12)
!12 = !{!13, !17}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !11, file: !3, line: 92, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAR", file: !6, line: 287, baseType: !16)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !11, file: !3, line: 93, baseType: !15, size: 8, offset: 64)
!18 = !{!19}
!19 = !DISubrange(count: 42)
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 7, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 2}
!26 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!27 = distinct !DISubprogram(name: "PrintEnv", scope: !3, file: !3, line: 166, type: !28, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !30)
!28 = !DISubroutineType(types: !29)
!29 = !{null}
!30 = !{!31, !34}
!31 = !DILocalVariable(name: "i", scope: !27, file: !3, line: 168, type: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT", file: !6, line: 297, baseType: !33)
!33 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!34 = !DILocalVariable(name: "lp", scope: !27, file: !3, line: 169, type: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "LIGHT", file: !6, line: 372, baseType: !37)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "light", file: !6, line: 365, size: 576, elements: !38)
!38 = !{!39, !44, !50, !53}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !37, file: !6, line: 367, baseType: !40, size: 256)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC4", file: !6, line: 315, baseType: !41)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 256, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 4)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !37, file: !6, line: 368, baseType: !45, size: 192, offset: 256)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "COLOR", file: !6, line: 319, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC3", file: !6, line: 314, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 192, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 3)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "shadow", scope: !37, file: !6, line: 369, baseType: !51, size: 64, offset: 448)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOOL", file: !6, line: 299, baseType: !52)
!52 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !37, file: !6, line: 370, baseType: !54, size: 64, offset: 512)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!55 = !DILocation(line: 171, column: 2, scope: !27)
!56 = !DILocation(line: 172, column: 44, scope: !27)
!57 = !DILocation(line: 172, column: 57, scope: !27)
!58 = !DILocation(line: 172, column: 70, scope: !27)
!59 = !DILocation(line: 172, column: 2, scope: !27)
!60 = !DILocation(line: 173, column: 44, scope: !27)
!61 = !DILocation(line: 173, column: 57, scope: !27)
!62 = !DILocation(line: 173, column: 70, scope: !27)
!63 = !DILocation(line: 173, column: 2, scope: !27)
!64 = !DILocation(line: 174, column: 44, scope: !27)
!65 = !DILocation(line: 174, column: 57, scope: !27)
!66 = !DILocation(line: 174, column: 70, scope: !27)
!67 = !DILocation(line: 174, column: 2, scope: !27)
!68 = !DILocation(line: 175, column: 49, scope: !27)
!69 = !DILocation(line: 175, column: 2, scope: !27)
!70 = !DILocation(line: 176, column: 44, scope: !27)
!71 = !DILocation(line: 176, column: 61, scope: !27)
!72 = !DILocation(line: 176, column: 78, scope: !27)
!73 = !DILocation(line: 176, column: 2, scope: !27)
!74 = !DILocation(line: 177, column: 2, scope: !27)
!75 = !DILocation(line: 0, scope: !27)
!76 = !DILocation(line: 180, column: 18, scope: !77)
!77 = distinct !DILexicalBlock(scope: !78, file: !3, line: 180, column: 2)
!78 = distinct !DILexicalBlock(scope: !27, file: !3, line: 180, column: 2)
!79 = !DILocation(line: 180, column: 16, scope: !77)
!80 = !DILocation(line: 180, column: 2, scope: !78)
!81 = !DILocation(line: 182, column: 42, scope: !82)
!82 = distinct !DILexicalBlock(scope: !77, file: !3, line: 181, column: 3)
!83 = !DILocation(line: 182, column: 54, scope: !82)
!84 = !DILocation(line: 182, column: 66, scope: !82)
!85 = !DILocation(line: 182, column: 3, scope: !82)
!86 = !DILocation(line: 183, column: 46, scope: !82)
!87 = !DILocation(line: 183, column: 42, scope: !82)
!88 = !DILocation(line: 183, column: 54, scope: !82)
!89 = !DILocation(line: 183, column: 66, scope: !82)
!90 = !DILocation(line: 183, column: 3, scope: !82)
!91 = !DILocation(line: 184, column: 46, scope: !82)
!92 = !DILocation(line: 184, column: 3, scope: !82)
!93 = !DILocation(line: 186, column: 12, scope: !82)
!94 = !DILocation(line: 180, column: 28, scope: !77)
!95 = distinct !{!95, !80, !96, !97, !98}
!96 = !DILocation(line: 187, column: 3, scope: !78)
!97 = !{!"llvm.loop.mustprogress"}
!98 = !{!"llvm.loop.unroll.disable"}
!99 = !DILocation(line: 189, column: 2, scope: !27)
!100 = !DILocation(line: 190, column: 2, scope: !27)
!101 = !DILocation(line: 191, column: 2, scope: !27)
!102 = !DILocation(line: 193, column: 10, scope: !27)
!103 = !DILocation(line: 193, column: 2, scope: !27)
!104 = !DILocation(line: 196, column: 4, scope: !105)
!105 = distinct !DILexicalBlock(scope: !27, file: !3, line: 194, column: 3)
!106 = !DILocation(line: 197, column: 4, scope: !105)
!107 = !DILocation(line: 200, column: 4, scope: !105)
!108 = !DILocation(line: 201, column: 46, scope: !105)
!109 = !DILocation(line: 201, column: 4, scope: !105)
!110 = !DILocation(line: 202, column: 46, scope: !105)
!111 = !DILocation(line: 202, column: 4, scope: !105)
!112 = !DILocation(line: 203, column: 46, scope: !105)
!113 = !DILocation(line: 203, column: 4, scope: !105)
!114 = !DILocation(line: 204, column: 46, scope: !105)
!115 = !DILocation(line: 204, column: 4, scope: !105)
!116 = !DILocation(line: 205, column: 46, scope: !105)
!117 = !DILocation(line: 205, column: 4, scope: !105)
!118 = !DILocation(line: 206, column: 4, scope: !105)
!119 = !DILocation(line: 209, column: 2, scope: !27)
!120 = !DILocation(line: 210, column: 9, scope: !27)
!121 = !DILocation(line: 210, column: 2, scope: !27)
!122 = !DILocation(line: 212, column: 2, scope: !27)
!123 = !DILocation(line: 213, column: 14, scope: !27)
!124 = !DILocation(line: 213, column: 25, scope: !27)
!125 = !DILocation(line: 213, column: 9, scope: !27)
!126 = !DILocation(line: 213, column: 2, scope: !27)
!127 = !DILocation(line: 215, column: 2, scope: !27)
!128 = !DILocation(line: 216, column: 14, scope: !27)
!129 = !DILocation(line: 216, column: 9, scope: !27)
!130 = !DILocation(line: 216, column: 2, scope: !27)
!131 = !DILocation(line: 218, column: 2, scope: !27)
!132 = !DILocation(line: 219, column: 14, scope: !27)
!133 = !DILocation(line: 219, column: 9, scope: !27)
!134 = !DILocation(line: 219, column: 2, scope: !27)
!135 = !DILocation(line: 221, column: 56, scope: !27)
!136 = !DILocation(line: 221, column: 70, scope: !27)
!137 = !DILocation(line: 221, column: 2, scope: !27)
!138 = !DILocation(line: 222, column: 56, scope: !27)
!139 = !DILocation(line: 222, column: 2, scope: !27)
!140 = !DILocation(line: 223, column: 56, scope: !27)
!141 = !DILocation(line: 223, column: 2, scope: !27)
!142 = !DILocation(line: 224, column: 56, scope: !27)
!143 = !DILocation(line: 224, column: 2, scope: !27)
!144 = !DILocation(line: 226, column: 38, scope: !27)
!145 = !DILocation(line: 226, column: 47, scope: !27)
!146 = !DILocation(line: 226, column: 2, scope: !27)
!147 = !DILocation(line: 227, column: 38, scope: !27)
!148 = !DILocation(line: 227, column: 47, scope: !27)
!149 = !DILocation(line: 227, column: 2, scope: !27)
!150 = !DILocation(line: 229, column: 6, scope: !151)
!151 = distinct !DILexicalBlock(scope: !27, file: !3, line: 229, column: 6)
!152 = !DILocation(line: 229, column: 6, scope: !27)
!153 = !DILocation(line: 230, column: 3, scope: !151)
!154 = !DILocation(line: 232, column: 6, scope: !155)
!155 = distinct !DILexicalBlock(scope: !27, file: !3, line: 232, column: 6)
!156 = !DILocation(line: 232, column: 6, scope: !27)
!157 = !DILocation(line: 233, column: 3, scope: !155)
!158 = !DILocation(line: 235, column: 2, scope: !27)
!159 = !DILocation(line: 236, column: 2, scope: !27)
!160 = distinct !DISubprogram(name: "InitEnv", scope: !3, file: !3, line: 251, type: !28, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !161)
!161 = !{}
!162 = !DILocation(line: 254, column: 14, scope: !160)
!163 = !DILocation(line: 255, column: 14, scope: !160)
!164 = !DILocation(line: 256, column: 14, scope: !160)
!165 = !DILocation(line: 259, column: 14, scope: !160)
!166 = !DILocation(line: 260, column: 14, scope: !160)
!167 = !DILocation(line: 261, column: 14, scope: !160)
!168 = !DILocation(line: 265, column: 14, scope: !160)
!169 = !DILocation(line: 266, column: 14, scope: !160)
!170 = !DILocation(line: 269, column: 14, scope: !160)
!171 = !DILocation(line: 272, column: 18, scope: !160)
!172 = !DILocation(line: 273, column: 18, scope: !160)
!173 = !DILocation(line: 274, column: 18, scope: !160)
!174 = !DILocation(line: 277, column: 15, scope: !160)
!175 = !DILocation(line: 278, column: 15, scope: !160)
!176 = !DILocation(line: 281, column: 18, scope: !160)
!177 = !DILocation(line: 284, column: 15, scope: !160)
!178 = !DILocation(line: 285, column: 15, scope: !160)
!179 = !DILocation(line: 286, column: 20, scope: !160)
!180 = !DILocation(line: 289, column: 19, scope: !160)
!181 = !DILocation(line: 292, column: 22, scope: !160)
!182 = !DILocation(line: 293, column: 22, scope: !160)
!183 = !DILocation(line: 294, column: 16, scope: !160)
!184 = !DILocation(line: 295, column: 16, scope: !160)
!185 = !DILocation(line: 298, column: 20, scope: !160)
!186 = !DILocation(line: 301, column: 20, scope: !160)
!187 = !DILocation(line: 302, column: 20, scope: !160)
!188 = !DILocation(line: 303, column: 20, scope: !160)
!189 = !DILocation(line: 305, column: 24, scope: !160)
!190 = !DILocation(line: 306, column: 24, scope: !160)
!191 = !DILocation(line: 308, column: 18, scope: !160)
!192 = !DILocation(line: 309, column: 18, scope: !160)
!193 = !DILocation(line: 312, column: 2, scope: !160)
!194 = !DILocation(line: 313, column: 2, scope: !160)
!195 = !DILocation(line: 315, column: 17, scope: !160)
!196 = !DILocation(line: 316, column: 17, scope: !160)
!197 = !DILocation(line: 317, column: 17, scope: !160)
!198 = !DILocation(line: 318, column: 17, scope: !160)
!199 = !DILocation(line: 319, column: 17, scope: !160)
!200 = !DILocation(line: 320, column: 17, scope: !160)
!201 = !DILocation(line: 346, column: 11, scope: !160)
!202 = !DILocation(line: 346, column: 9, scope: !160)
!203 = !DILocation(line: 348, column: 10, scope: !160)
!204 = !DILocation(line: 349, column: 10, scope: !160)
!205 = !DILocation(line: 350, column: 9, scope: !160)
!206 = !DILocation(line: 351, column: 9, scope: !160)
!207 = !DILocation(line: 352, column: 2, scope: !160)
!208 = !DISubprogram(name: "MatrixIdentity", scope: !6, file: !6, line: 895, type: !209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !161)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !211}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!212 = !DISubprogram(name: "GlobalMalloc", scope: !6, file: !6, line: 909, type: !213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !161)
!213 = !DISubroutineType(types: !214)
!214 = !{!215, !216, !14}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT", file: !6, line: 298, baseType: !52)
!217 = distinct !DISubprogram(name: "InitLights", scope: !3, file: !3, line: 368, type: !28, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !161)
!218 = !DILocation(line: 370, column: 10, scope: !217)
!219 = !DILocation(line: 372, column: 2, scope: !217)
!220 = !DILocation(line: 372, column: 17, scope: !217)
!221 = !DILocation(line: 373, column: 2, scope: !217)
!222 = !DILocation(line: 373, column: 17, scope: !217)
!223 = !DILocation(line: 374, column: 2, scope: !217)
!224 = !DILocation(line: 374, column: 17, scope: !217)
!225 = !DILocation(line: 375, column: 2, scope: !217)
!226 = !DILocation(line: 375, column: 17, scope: !217)
!227 = !DILocation(line: 376, column: 10, scope: !217)
!228 = !DILocation(line: 376, column: 17, scope: !217)
!229 = !DILocation(line: 377, column: 2, scope: !217)
!230 = !DILocation(line: 377, column: 17, scope: !217)
!231 = !DILocation(line: 378, column: 2, scope: !217)
!232 = !DILocation(line: 378, column: 17, scope: !217)
!233 = !DILocation(line: 379, column: 10, scope: !217)
!234 = !DILocation(line: 379, column: 17, scope: !217)
!235 = !DILocation(line: 380, column: 10, scope: !217)
!236 = !DILocation(line: 380, column: 17, scope: !217)
!237 = !DILocation(line: 381, column: 2, scope: !217)
!238 = distinct !DISubprogram(name: "InitDisplay", scope: !3, file: !3, line: 396, type: !28, scopeLine: 397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !239)
!239 = !{!240, !241}
!240 = !DILocalVariable(name: "aspect", scope: !238, file: !3, line: 398, type: !5)
!241 = !DILocalVariable(name: "theta", scope: !238, file: !3, line: 399, type: !5)
!242 = !DILocation(line: 401, column: 25, scope: !238)
!243 = !DILocation(line: 401, column: 11, scope: !238)
!244 = !DILocation(line: 401, column: 44, scope: !238)
!245 = !DILocation(line: 401, column: 30, scope: !238)
!246 = !DILocation(line: 401, column: 29, scope: !238)
!247 = !DILocation(line: 0, scope: !238)
!248 = !DILocation(line: 402, column: 17, scope: !238)
!249 = !DILocation(line: 402, column: 21, scope: !238)
!250 = !DILocation(line: 402, column: 26, scope: !238)
!251 = !DILocation(line: 404, column: 34, scope: !238)
!252 = !DILocation(line: 404, column: 43, scope: !238)
!253 = !DILocation(line: 404, column: 24, scope: !238)
!254 = !DILocation(line: 405, column: 30, scope: !238)
!255 = !DILocation(line: 405, column: 50, scope: !238)
!256 = !DILocation(line: 405, column: 49, scope: !238)
!257 = !DILocation(line: 405, column: 24, scope: !238)
!258 = !DILocation(line: 406, column: 34, scope: !238)
!259 = !DILocation(line: 406, column: 42, scope: !238)
!260 = !DILocation(line: 406, column: 24, scope: !238)
!261 = !DILocation(line: 407, column: 34, scope: !238)
!262 = !DILocation(line: 407, column: 43, scope: !238)
!263 = !DILocation(line: 407, column: 24, scope: !238)
!264 = !DILocation(line: 408, column: 57, scope: !238)
!265 = !DILocation(line: 408, column: 43, scope: !238)
!266 = !DILocation(line: 408, column: 42, scope: !238)
!267 = !DILocation(line: 408, column: 24, scope: !238)
!268 = !DILocation(line: 409, column: 58, scope: !238)
!269 = !DILocation(line: 409, column: 44, scope: !238)
!270 = !DILocation(line: 409, column: 43, scope: !238)
!271 = !DILocation(line: 409, column: 24, scope: !238)
!272 = !DILocation(line: 410, column: 2, scope: !238)
!273 = distinct !DISubprogram(name: "VerifyColorRange", scope: !3, file: !3, line: 426, type: !274, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !277)
!274 = !DISubroutineType(types: !275)
!275 = !{!51, !276}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!277 = !{!278}
!278 = !DILocalVariable(name: "c", arg: 1, scope: !273, file: !3, line: 426, type: !276)
!279 = !DILocation(line: 0, scope: !273)
!280 = !DILocation(line: 428, column: 6, scope: !281)
!281 = distinct !DILexicalBlock(scope: !273, file: !3, line: 428, column: 6)
!282 = !DILocation(line: 428, column: 11, scope: !281)
!283 = !DILocation(line: 428, column: 17, scope: !281)
!284 = !DILocation(line: 0, scope: !281)
!285 = !DILocation(line: 429, column: 11, scope: !281)
!286 = !DILocation(line: 429, column: 17, scope: !281)
!287 = !DILocation(line: 430, column: 6, scope: !281)
!288 = !DILocation(line: 430, column: 11, scope: !281)
!289 = !DILocation(line: 430, column: 17, scope: !281)
!290 = !DILocation(line: 432, column: 51, scope: !291)
!291 = distinct !DILexicalBlock(scope: !281, file: !3, line: 431, column: 3)
!292 = !DILocation(line: 432, column: 3, scope: !291)
!293 = !DILocation(line: 433, column: 3, scope: !291)
!294 = !DILocation(line: 437, column: 2, scope: !273)
!295 = distinct !DISubprogram(name: "TransformLights", scope: !3, file: !3, line: 453, type: !209, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !296)
!296 = !{!297, !298, !299}
!297 = !DILocalVariable(name: "m", arg: 1, scope: !295, file: !3, line: 453, type: !211)
!298 = !DILocalVariable(name: "i", scope: !295, file: !3, line: 455, type: !32)
!299 = !DILocalVariable(name: "lp", scope: !295, file: !3, line: 456, type: !35)
!300 = !DILocation(line: 0, scope: !295)
!301 = !DILocation(line: 459, column: 18, scope: !302)
!302 = distinct !DILexicalBlock(scope: !303, file: !3, line: 459, column: 2)
!303 = distinct !DILexicalBlock(scope: !295, file: !3, line: 459, column: 2)
!304 = !DILocation(line: 459, column: 16, scope: !302)
!305 = !DILocation(line: 459, column: 2, scope: !303)
!306 = !DILocation(line: 461, column: 3, scope: !307)
!307 = distinct !DILexicalBlock(scope: !302, file: !3, line: 460, column: 3)
!308 = !DILocation(line: 462, column: 12, scope: !307)
!309 = !DILocation(line: 459, column: 28, scope: !302)
!310 = distinct !{!310, !305, !311, !97, !98}
!311 = !DILocation(line: 463, column: 3, scope: !303)
!312 = !DILocation(line: 464, column: 2, scope: !295)
!313 = !DISubprogram(name: "VecMatMult", scope: !6, file: !6, line: 893, type: !314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !161)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !276, !211, !276}
!316 = distinct !DISubprogram(name: "ViewRotate", scope: !3, file: !3, line: 481, type: !317, scopeLine: 482, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !319)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !211, !5, !5, !5}
!319 = !{!320, !321, !322, !323, !324, !325}
!320 = !DILocalVariable(name: "M", arg: 1, scope: !316, file: !3, line: 481, type: !211)
!321 = !DILocalVariable(name: "x", arg: 2, scope: !316, file: !3, line: 481, type: !5)
!322 = !DILocalVariable(name: "y", arg: 3, scope: !316, file: !3, line: 481, type: !5)
!323 = !DILocalVariable(name: "z", arg: 4, scope: !316, file: !3, line: 481, type: !5)
!324 = !DILocalVariable(name: "r", scope: !316, file: !3, line: 483, type: !5)
!325 = !DILocalVariable(name: "rx", scope: !316, file: !3, line: 483, type: !5)
!326 = !DILocation(line: 0, scope: !316)
!327 = !DILocation(line: 485, column: 19, scope: !316)
!328 = !DILocation(line: 485, column: 16, scope: !316)
!329 = !DILocation(line: 485, column: 7, scope: !316)
!330 = !DILocation(line: 487, column: 6, scope: !331)
!331 = distinct !DILexicalBlock(scope: !316, file: !3, line: 487, column: 6)
!332 = !DILocation(line: 487, column: 14, scope: !331)
!333 = !DILocation(line: 487, column: 6, scope: !316)
!334 = !DILocation(line: 489, column: 3, scope: !335)
!335 = distinct !DILexicalBlock(scope: !331, file: !3, line: 488, column: 3)
!336 = !DILocation(line: 490, column: 34, scope: !335)
!337 = !DILocation(line: 490, column: 31, scope: !335)
!338 = !DILocation(line: 490, column: 3, scope: !335)
!339 = !DILocation(line: 491, column: 3, scope: !335)
!340 = !DILocation(line: 494, column: 18, scope: !316)
!341 = !DILocation(line: 494, column: 15, scope: !316)
!342 = !DILocation(line: 494, column: 21, scope: !316)
!343 = !DILocation(line: 494, column: 6, scope: !316)
!344 = !DILocation(line: 496, column: 13, scope: !316)
!345 = !DILocation(line: 496, column: 10, scope: !316)
!346 = !DILocation(line: 497, column: 12, scope: !316)
!347 = !DILocation(line: 497, column: 14, scope: !316)
!348 = !DILocation(line: 497, column: 19, scope: !316)
!349 = !DILocation(line: 497, column: 16, scope: !316)
!350 = !DILocation(line: 497, column: 2, scope: !316)
!351 = !DILocation(line: 497, column: 10, scope: !316)
!352 = !DILocation(line: 498, column: 13, scope: !316)
!353 = !DILocation(line: 498, column: 2, scope: !316)
!354 = !DILocation(line: 498, column: 10, scope: !316)
!355 = !DILocation(line: 499, column: 2, scope: !316)
!356 = !DILocation(line: 502, column: 14, scope: !316)
!357 = !DILocation(line: 502, column: 2, scope: !316)
!358 = !DILocation(line: 501, column: 10, scope: !316)
!359 = !DILocation(line: 502, column: 10, scope: !316)
!360 = !DILocation(line: 503, column: 13, scope: !316)
!361 = !DILocation(line: 503, column: 2, scope: !316)
!362 = !DILocation(line: 503, column: 10, scope: !316)
!363 = !DILocation(line: 504, column: 2, scope: !316)
!364 = !DILocation(line: 504, column: 10, scope: !316)
!365 = !DILocation(line: 506, column: 14, scope: !316)
!366 = !DILocation(line: 506, column: 2, scope: !316)
!367 = !DILocation(line: 506, column: 10, scope: !316)
!368 = !DILocation(line: 507, column: 12, scope: !316)
!369 = !DILocation(line: 507, column: 14, scope: !316)
!370 = !DILocation(line: 507, column: 16, scope: !316)
!371 = !DILocation(line: 507, column: 2, scope: !316)
!372 = !DILocation(line: 507, column: 10, scope: !316)
!373 = !DILocation(line: 508, column: 13, scope: !316)
!374 = !DILocation(line: 508, column: 2, scope: !316)
!375 = !DILocation(line: 508, column: 10, scope: !316)
!376 = !DILocation(line: 509, column: 2, scope: !316)
!377 = !DILocation(line: 514, column: 2, scope: !316)
!378 = !DILocation(line: 511, column: 10, scope: !316)
!379 = !DILocation(line: 514, column: 10, scope: !316)
!380 = !DILocation(line: 515, column: 2, scope: !316)
!381 = !DISubprogram(name: "Rotate", scope: !6, file: !6, line: 902, type: !382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !161)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !32, !211, !5}
!384 = distinct !DISubprogram(name: "CreateViewMatrix", scope: !3, file: !3, line: 533, type: !28, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !385)
!385 = !{!386, !390}
!386 = !DILocalVariable(name: "T", scope: !384, file: !3, line: 535, type: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "MATRIX", file: !6, line: 316, baseType: !388)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 1024, elements: !389)
!389 = !{!43, !43}
!390 = !DILocalVariable(name: "R", scope: !384, file: !3, line: 535, type: !387)
!391 = !DILocation(line: 535, column: 2, scope: !384)
!392 = !DILocation(line: 535, column: 9, scope: !384)
!393 = !DILocation(line: 535, column: 12, scope: !384)
!394 = !DILocation(line: 539, column: 16, scope: !384)
!395 = !DILocation(line: 539, column: 15, scope: !384)
!396 = !DILocation(line: 539, column: 30, scope: !384)
!397 = !DILocation(line: 539, column: 29, scope: !384)
!398 = !DILocation(line: 539, column: 44, scope: !384)
!399 = !DILocation(line: 539, column: 43, scope: !384)
!400 = !DILocation(line: 539, column: 2, scope: !384)
!401 = !DILocation(line: 540, column: 2, scope: !384)
!402 = !DILocation(line: 544, column: 16, scope: !384)
!403 = !DILocation(line: 544, column: 30, scope: !384)
!404 = !DILocation(line: 544, column: 28, scope: !384)
!405 = !DILocation(line: 544, column: 43, scope: !384)
!406 = !DILocation(line: 544, column: 57, scope: !384)
!407 = !DILocation(line: 544, column: 55, scope: !384)
!408 = !DILocation(line: 544, column: 70, scope: !384)
!409 = !DILocation(line: 544, column: 84, scope: !384)
!410 = !DILocation(line: 544, column: 82, scope: !384)
!411 = !DILocation(line: 544, column: 2, scope: !384)
!412 = !DILocation(line: 545, column: 2, scope: !384)
!413 = !DILocation(line: 546, column: 2, scope: !384)
!414 = !DISubprogram(name: "Translate", scope: !6, file: !6, line: 900, type: !317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !161)
!415 = !DISubprogram(name: "MatrixMult", scope: !6, file: !6, line: 898, type: !416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !161)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !211, !211, !211}
!418 = distinct !DISubprogram(name: "TransformViewRay", scope: !3, file: !3, line: 562, type: !419, scopeLine: 563, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !421)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !276}
!421 = !{!422}
!422 = !DILocalVariable(name: "tray", arg: 1, scope: !418, file: !3, line: 562, type: !276)
!423 = !DILocation(line: 0, scope: !418)
!424 = !DILocation(line: 564, column: 2, scope: !418)
!425 = !DILocation(line: 565, column: 2, scope: !418)
!426 = distinct !DISubprogram(name: "NormalizeEnv", scope: !3, file: !3, line: 581, type: !209, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !427)
!427 = !{!428}
!428 = !DILocalVariable(name: "normMat", arg: 1, scope: !426, file: !3, line: 581, type: !211)
!429 = !DILocation(line: 0, scope: !426)
!430 = !DILocation(line: 583, column: 14, scope: !426)
!431 = !DILocation(line: 584, column: 2, scope: !426)
!432 = !DILocation(line: 586, column: 14, scope: !426)
!433 = !DILocation(line: 587, column: 2, scope: !426)
!434 = !DILocation(line: 589, column: 2, scope: !426)
!435 = !DILocation(line: 590, column: 2, scope: !426)
!436 = distinct !DISubprogram(name: "LookupCommand", scope: !3, file: !3, line: 606, type: !437, scopeLine: 607, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !439)
!437 = !DISubroutineType(types: !438)
!438 = !{!15, !14}
!439 = !{!440, !441}
!440 = !DILocalVariable(name: "s", arg: 1, scope: !436, file: !3, line: 606, type: !14)
!441 = !DILocalVariable(name: "i", scope: !436, file: !3, line: 608, type: !32)
!442 = !DILocation(line: 0, scope: !436)
!443 = !DILocation(line: 610, column: 2, scope: !444)
!444 = distinct !DILexicalBlock(scope: !436, file: !3, line: 610, column: 2)
!445 = !DILocation(line: 611, column: 17, scope: !446)
!446 = distinct !DILexicalBlock(scope: !447, file: !3, line: 611, column: 7)
!447 = distinct !DILexicalBlock(scope: !444, file: !3, line: 610, column: 2)
!448 = !DILocation(line: 611, column: 27, scope: !446)
!449 = !DILocation(line: 611, column: 7, scope: !446)
!450 = !DILocation(line: 611, column: 36, scope: !446)
!451 = !DILocation(line: 611, column: 7, scope: !447)
!452 = !DILocation(line: 612, column: 22, scope: !446)
!453 = !DILocation(line: 612, column: 4, scope: !446)
!454 = !DILocation(line: 610, column: 33, scope: !447)
!455 = !DILocation(line: 610, column: 16, scope: !447)
!456 = distinct !{!456, !443, !457, !97, !98}
!457 = !DILocation(line: 612, column: 28, scope: !444)
!458 = !DILocation(line: 614, column: 2, scope: !436)
!459 = !DILocation(line: 615, column: 2, scope: !436)
!460 = !DILocation(line: 616, column: 2, scope: !436)
!461 = distinct !DISubprogram(name: "ReadEnvFile", scope: !3, file: !3, line: 632, type: !462, scopeLine: 633, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !464)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !14}
!464 = !{!465, !466, !467, !468, !469, !470, !471, !475, !476, !480, !484, !485, !545, !546}
!465 = !DILocalVariable(name: "EnvFileName", arg: 1, scope: !461, file: !3, line: 632, type: !14)
!466 = !DILocalVariable(name: "i", scope: !461, file: !3, line: 634, type: !32)
!467 = !DILocalVariable(name: "j", scope: !461, file: !3, line: 634, type: !32)
!468 = !DILocalVariable(name: "stat", scope: !461, file: !3, line: 635, type: !32)
!469 = !DILocalVariable(name: "dummy", scope: !461, file: !3, line: 636, type: !32)
!470 = !DILocalVariable(name: "opcode", scope: !461, file: !3, line: 637, type: !15)
!471 = !DILocalVariable(name: "command", scope: !461, file: !3, line: 638, type: !472)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 240, elements: !473)
!473 = !{!474}
!474 = !DISubrange(count: 30)
!475 = !DILocalVariable(name: "opparam", scope: !461, file: !3, line: 639, type: !472)
!476 = !DILocalVariable(name: "dummy_char", scope: !461, file: !3, line: 640, type: !477)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 480, elements: !478)
!478 = !{!479}
!479 = !DISubrange(count: 60)
!480 = !DILocalVariable(name: "datafile", scope: !461, file: !3, line: 641, type: !481)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 80, elements: !482)
!482 = !{!483}
!483 = !DISubrange(count: 10)
!484 = !DILocalVariable(name: "lights_set", scope: !461, file: !3, line: 642, type: !51)
!485 = !DILocalVariable(name: "pf", scope: !461, file: !3, line: 643, type: !486)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !488, line: 7, baseType: !489)
!488 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !490, line: 49, size: 1728, elements: !491)
!490 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!491 = !{!492, !494, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !509, !511, !512, !513, !516, !518, !520, !524, !527, !529, !532, !535, !536, !537, !540, !541}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !489, file: !490, line: 51, baseType: !493, size: 32)
!493 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !489, file: !490, line: 54, baseType: !495, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !489, file: !490, line: 55, baseType: !495, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !489, file: !490, line: 56, baseType: !495, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !489, file: !490, line: 57, baseType: !495, size: 64, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !489, file: !490, line: 58, baseType: !495, size: 64, offset: 320)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !489, file: !490, line: 59, baseType: !495, size: 64, offset: 384)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !489, file: !490, line: 60, baseType: !495, size: 64, offset: 448)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !489, file: !490, line: 61, baseType: !495, size: 64, offset: 512)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !489, file: !490, line: 64, baseType: !495, size: 64, offset: 576)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !489, file: !490, line: 65, baseType: !495, size: 64, offset: 640)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !489, file: !490, line: 66, baseType: !495, size: 64, offset: 704)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !489, file: !490, line: 68, baseType: !507, size: 64, offset: 768)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !490, line: 36, flags: DIFlagFwdDecl)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !489, file: !490, line: 70, baseType: !510, size: 64, offset: 832)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !489, file: !490, line: 72, baseType: !493, size: 32, offset: 896)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !489, file: !490, line: 73, baseType: !493, size: 32, offset: 928)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !489, file: !490, line: 74, baseType: !514, size: 64, offset: 960)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !515, line: 152, baseType: !33)
!515 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !489, file: !490, line: 77, baseType: !517, size: 16, offset: 1024)
!517 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !489, file: !490, line: 78, baseType: !519, size: 8, offset: 1040)
!519 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !489, file: !490, line: 79, baseType: !521, size: 8, offset: 1048)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 8, elements: !522)
!522 = !{!523}
!523 = !DISubrange(count: 1)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !489, file: !490, line: 81, baseType: !525, size: 64, offset: 1088)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !490, line: 43, baseType: null)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !489, file: !490, line: 89, baseType: !528, size: 64, offset: 1152)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !515, line: 153, baseType: !33)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !489, file: !490, line: 91, baseType: !530, size: 64, offset: 1216)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !490, line: 37, flags: DIFlagFwdDecl)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !489, file: !490, line: 92, baseType: !533, size: 64, offset: 1280)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !490, line: 38, flags: DIFlagFwdDecl)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !489, file: !490, line: 93, baseType: !510, size: 64, offset: 1344)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !489, file: !490, line: 94, baseType: !215, size: 64, offset: 1408)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !489, file: !490, line: 95, baseType: !538, size: 64, offset: 1472)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !539, line: 46, baseType: !52)
!539 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !489, file: !490, line: 96, baseType: !493, size: 32, offset: 1536)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !489, file: !490, line: 98, baseType: !542, size: 160, offset: 1568)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 160, elements: !543)
!543 = !{!544}
!544 = !DISubrange(count: 20)
!545 = !DILocalVariable(name: "lptr", scope: !461, file: !3, line: 644, type: !35)
!546 = !DILocalVariable(name: "lastlight", scope: !461, file: !3, line: 644, type: !35)
!547 = !DILocation(line: 0, scope: !461)
!548 = !DILocation(line: 636, column: 2, scope: !461)
!549 = !DILocation(line: 638, column: 2, scope: !461)
!550 = !DILocation(line: 638, column: 7, scope: !461)
!551 = !DILocation(line: 639, column: 2, scope: !461)
!552 = !DILocation(line: 639, column: 7, scope: !461)
!553 = !DILocation(line: 640, column: 2, scope: !461)
!554 = !DILocation(line: 640, column: 7, scope: !461)
!555 = !DILocation(line: 641, column: 2, scope: !461)
!556 = !DILocation(line: 641, column: 7, scope: !461)
!557 = !DILocation(line: 649, column: 7, scope: !461)
!558 = !DILocation(line: 650, column: 7, scope: !559)
!559 = distinct !DILexicalBlock(scope: !461, file: !3, line: 650, column: 6)
!560 = !DILocation(line: 650, column: 6, scope: !461)
!561 = !DILocation(line: 652, column: 3, scope: !562)
!562 = distinct !DILexicalBlock(scope: !559, file: !3, line: 651, column: 3)
!563 = !DILocation(line: 653, column: 3, scope: !562)
!564 = !DILocation(line: 656, column: 2, scope: !461)
!565 = !DILocation(line: 658, column: 13, scope: !461)
!566 = !DILocation(line: 664, column: 9, scope: !461)
!567 = !DILocation(line: 664, column: 35, scope: !461)
!568 = !DILocation(line: 664, column: 2, scope: !461)
!569 = !DILocation(line: 666, column: 12, scope: !570)
!570 = distinct !DILexicalBlock(scope: !461, file: !3, line: 665, column: 3)
!571 = !DILocation(line: 668, column: 11, scope: !570)
!572 = !DILocation(line: 668, column: 3, scope: !570)
!573 = !DILocation(line: 672, column: 12, scope: !574)
!574 = distinct !DILexicalBlock(scope: !570, file: !3, line: 669, column: 4)
!575 = !DILocation(line: 673, column: 14, scope: !576)
!576 = distinct !DILexicalBlock(scope: !574, file: !3, line: 673, column: 9)
!577 = !DILocation(line: 673, column: 9, scope: !574)
!578 = !DILocation(line: 675, column: 6, scope: !579)
!579 = distinct !DILexicalBlock(scope: !576, file: !3, line: 674, column: 6)
!580 = !DILocation(line: 676, column: 6, scope: !579)
!581 = !DILocation(line: 682, column: 12, scope: !574)
!582 = !DILocation(line: 683, column: 14, scope: !583)
!583 = distinct !DILexicalBlock(scope: !574, file: !3, line: 683, column: 9)
!584 = !DILocation(line: 683, column: 9, scope: !574)
!585 = !DILocation(line: 685, column: 6, scope: !586)
!586 = distinct !DILexicalBlock(scope: !583, file: !3, line: 684, column: 6)
!587 = !DILocation(line: 686, column: 6, scope: !586)
!588 = !DILocation(line: 692, column: 12, scope: !574)
!589 = !DILocation(line: 693, column: 14, scope: !590)
!590 = distinct !DILexicalBlock(scope: !574, file: !3, line: 693, column: 9)
!591 = !DILocation(line: 693, column: 9, scope: !574)
!592 = !DILocation(line: 695, column: 6, scope: !593)
!593 = distinct !DILexicalBlock(scope: !590, file: !3, line: 694, column: 6)
!594 = !DILocation(line: 696, column: 6, scope: !593)
!595 = !DILocation(line: 699, column: 10, scope: !596)
!596 = distinct !DILexicalBlock(scope: !574, file: !3, line: 699, column: 9)
!597 = !DILocation(line: 699, column: 9, scope: !574)
!598 = !DILocation(line: 700, column: 6, scope: !596)
!599 = !DILocation(line: 705, column: 12, scope: !574)
!600 = !DILocation(line: 706, column: 14, scope: !601)
!601 = distinct !DILexicalBlock(scope: !574, file: !3, line: 706, column: 9)
!602 = !DILocation(line: 706, column: 9, scope: !574)
!603 = !DILocation(line: 708, column: 6, scope: !604)
!604 = distinct !DILexicalBlock(scope: !601, file: !3, line: 707, column: 6)
!605 = !DILocation(line: 709, column: 6, scope: !604)
!606 = !DILocation(line: 712, column: 14, scope: !607)
!607 = distinct !DILexicalBlock(scope: !574, file: !3, line: 712, column: 9)
!608 = !DILocation(line: 712, column: 19, scope: !607)
!609 = !DILocation(line: 712, column: 25, scope: !607)
!610 = !DILocation(line: 714, column: 6, scope: !611)
!611 = distinct !DILexicalBlock(scope: !607, file: !3, line: 713, column: 6)
!612 = !DILocation(line: 715, column: 6, scope: !611)
!613 = !DILocation(line: 721, column: 12, scope: !574)
!614 = !DILocation(line: 722, column: 14, scope: !615)
!615 = distinct !DILexicalBlock(scope: !574, file: !3, line: 722, column: 9)
!616 = !DILocation(line: 722, column: 9, scope: !574)
!617 = !DILocation(line: 724, column: 6, scope: !618)
!618 = distinct !DILexicalBlock(scope: !615, file: !3, line: 723, column: 6)
!619 = !DILocation(line: 725, column: 6, scope: !618)
!620 = !DILocation(line: 728, column: 10, scope: !621)
!621 = distinct !DILexicalBlock(scope: !574, file: !3, line: 728, column: 9)
!622 = !DILocation(line: 728, column: 9, scope: !574)
!623 = !DILocation(line: 729, column: 6, scope: !621)
!624 = !DILocation(line: 734, column: 12, scope: !574)
!625 = !DILocation(line: 735, column: 14, scope: !626)
!626 = distinct !DILexicalBlock(scope: !574, file: !3, line: 735, column: 9)
!627 = !DILocation(line: 735, column: 9, scope: !574)
!628 = !DILocation(line: 737, column: 6, scope: !629)
!629 = distinct !DILexicalBlock(scope: !626, file: !3, line: 736, column: 6)
!630 = !DILocation(line: 738, column: 6, scope: !629)
!631 = !DILocation(line: 741, column: 17, scope: !632)
!632 = distinct !DILexicalBlock(scope: !574, file: !3, line: 741, column: 9)
!633 = !DILocation(line: 741, column: 33, scope: !632)
!634 = !DILocation(line: 743, column: 6, scope: !635)
!635 = distinct !DILexicalBlock(scope: !632, file: !3, line: 742, column: 6)
!636 = !DILocation(line: 744, column: 6, scope: !635)
!637 = !DILocation(line: 750, column: 12, scope: !574)
!638 = !DILocation(line: 751, column: 56, scope: !574)
!639 = !DILocation(line: 751, column: 5, scope: !574)
!640 = !DILocation(line: 752, column: 12, scope: !574)
!641 = !DILocation(line: 752, column: 5, scope: !574)
!642 = !DILocation(line: 753, column: 14, scope: !643)
!643 = distinct !DILexicalBlock(scope: !574, file: !3, line: 753, column: 9)
!644 = !DILocation(line: 753, column: 9, scope: !574)
!645 = !DILocation(line: 755, column: 6, scope: !646)
!646 = distinct !DILexicalBlock(scope: !643, file: !3, line: 754, column: 6)
!647 = !DILocation(line: 756, column: 6, scope: !646)
!648 = !DILocation(line: 759, column: 17, scope: !649)
!649 = distinct !DILexicalBlock(scope: !574, file: !3, line: 759, column: 9)
!650 = !DILocation(line: 759, column: 30, scope: !649)
!651 = !DILocation(line: 761, column: 6, scope: !652)
!652 = distinct !DILexicalBlock(scope: !649, file: !3, line: 760, column: 6)
!653 = !DILocation(line: 762, column: 6, scope: !652)
!654 = !DILocation(line: 768, column: 12, scope: !574)
!655 = !DILocation(line: 769, column: 14, scope: !656)
!656 = distinct !DILexicalBlock(scope: !574, file: !3, line: 769, column: 9)
!657 = !DILocation(line: 769, column: 9, scope: !574)
!658 = !DILocation(line: 771, column: 6, scope: !659)
!659 = distinct !DILexicalBlock(scope: !656, file: !3, line: 770, column: 6)
!660 = !DILocation(line: 772, column: 6, scope: !659)
!661 = !DILocation(line: 775, column: 17, scope: !662)
!662 = distinct !DILexicalBlock(scope: !574, file: !3, line: 775, column: 9)
!663 = !DILocation(line: 775, column: 27, scope: !662)
!664 = !DILocation(line: 775, column: 33, scope: !662)
!665 = !DILocation(line: 777, column: 6, scope: !666)
!666 = distinct !DILexicalBlock(scope: !662, file: !3, line: 776, column: 6)
!667 = !DILocation(line: 778, column: 6, scope: !666)
!668 = !DILocation(line: 784, column: 12, scope: !574)
!669 = !DILocation(line: 785, column: 14, scope: !670)
!670 = distinct !DILexicalBlock(scope: !574, file: !3, line: 785, column: 9)
!671 = !DILocation(line: 785, column: 9, scope: !574)
!672 = !DILocation(line: 787, column: 6, scope: !673)
!673 = distinct !DILexicalBlock(scope: !670, file: !3, line: 786, column: 6)
!674 = !DILocation(line: 788, column: 6, scope: !673)
!675 = !DILocation(line: 791, column: 17, scope: !676)
!676 = distinct !DILexicalBlock(scope: !574, file: !3, line: 791, column: 9)
!677 = !DILocation(line: 791, column: 29, scope: !676)
!678 = !DILocation(line: 791, column: 35, scope: !676)
!679 = !DILocation(line: 793, column: 6, scope: !680)
!680 = distinct !DILexicalBlock(scope: !676, file: !3, line: 792, column: 6)
!681 = !DILocation(line: 794, column: 6, scope: !680)
!682 = !DILocation(line: 800, column: 12, scope: !574)
!683 = !DILocation(line: 801, column: 14, scope: !684)
!684 = distinct !DILexicalBlock(scope: !574, file: !3, line: 801, column: 9)
!685 = !DILocation(line: 801, column: 9, scope: !574)
!686 = !DILocation(line: 803, column: 6, scope: !687)
!687 = distinct !DILexicalBlock(scope: !684, file: !3, line: 802, column: 6)
!688 = !DILocation(line: 804, column: 6, scope: !687)
!689 = !DILocation(line: 811, column: 9, scope: !690)
!690 = distinct !DILexicalBlock(scope: !574, file: !3, line: 811, column: 9)
!691 = !DILocation(line: 811, column: 17, scope: !690)
!692 = !DILocation(line: 811, column: 9, scope: !574)
!693 = !DILocation(line: 812, column: 13, scope: !690)
!694 = !DILocation(line: 812, column: 6, scope: !690)
!695 = !DILocation(line: 814, column: 13, scope: !690)
!696 = !DILocation(line: 0, scope: !690)
!697 = !DILocation(line: 818, column: 14, scope: !574)
!698 = !DILocation(line: 819, column: 14, scope: !574)
!699 = !DILocation(line: 820, column: 20, scope: !574)
!700 = !DILocation(line: 821, column: 14, scope: !574)
!701 = !DILocation(line: 822, column: 14, scope: !574)
!702 = !DILocation(line: 816, column: 12, scope: !574)
!703 = !DILocation(line: 824, column: 14, scope: !704)
!704 = distinct !DILexicalBlock(scope: !574, file: !3, line: 824, column: 9)
!705 = !DILocation(line: 824, column: 9, scope: !574)
!706 = !DILocation(line: 826, column: 6, scope: !707)
!707 = distinct !DILexicalBlock(scope: !704, file: !3, line: 825, column: 6)
!708 = !DILocation(line: 827, column: 6, scope: !707)
!709 = !DILocation(line: 830, column: 10, scope: !710)
!710 = distinct !DILexicalBlock(scope: !574, file: !3, line: 830, column: 9)
!711 = !DILocation(line: 830, column: 9, scope: !574)
!712 = !DILocation(line: 831, column: 6, scope: !710)
!713 = !DILocation(line: 833, column: 5, scope: !574)
!714 = !DILocation(line: 833, column: 18, scope: !574)
!715 = !DILocation(line: 834, column: 38, scope: !574)
!716 = !DILocation(line: 834, column: 12, scope: !574)
!717 = !DILocation(line: 835, column: 14, scope: !718)
!718 = distinct !DILexicalBlock(scope: !574, file: !3, line: 835, column: 9)
!719 = !DILocation(line: 835, column: 9, scope: !574)
!720 = !DILocation(line: 837, column: 6, scope: !721)
!721 = distinct !DILexicalBlock(scope: !718, file: !3, line: 836, column: 6)
!722 = !DILocation(line: 838, column: 6, scope: !721)
!723 = !DILocation(line: 841, column: 11, scope: !574)
!724 = !DILocation(line: 841, column: 16, scope: !574)
!725 = !DILocation(line: 842, column: 9, scope: !726)
!726 = distinct !DILexicalBlock(scope: !574, file: !3, line: 842, column: 9)
!727 = !DILocation(line: 842, column: 17, scope: !726)
!728 = !DILocation(line: 842, column: 9, scope: !574)
!729 = !DILocation(line: 843, column: 17, scope: !726)
!730 = !DILocation(line: 843, column: 22, scope: !726)
!731 = !DILocation(line: 843, column: 6, scope: !726)
!732 = !DILocation(line: 845, column: 12, scope: !574)
!733 = !DILocation(line: 847, column: 5, scope: !574)
!734 = !DILocation(line: 852, column: 6, scope: !735)
!735 = distinct !DILexicalBlock(scope: !736, file: !3, line: 852, column: 6)
!736 = distinct !DILexicalBlock(scope: !737, file: !3, line: 851, column: 5)
!737 = distinct !DILexicalBlock(scope: !574, file: !3, line: 851, column: 5)
!738 = !DILocation(line: 852, column: 26, scope: !739)
!739 = distinct !DILexicalBlock(scope: !735, file: !3, line: 852, column: 6)
!740 = !DILocation(line: 852, column: 20, scope: !739)
!741 = distinct !{!741, !734, !742, !97, !98}
!742 = !DILocation(line: 860, column: 7, scope: !735)
!743 = !DILocation(line: 854, column: 34, scope: !744)
!744 = distinct !DILexicalBlock(scope: !739, file: !3, line: 853, column: 7)
!745 = !DILocation(line: 854, column: 14, scope: !744)
!746 = !DILocation(line: 855, column: 16, scope: !747)
!747 = distinct !DILexicalBlock(scope: !744, file: !3, line: 855, column: 11)
!748 = !DILocation(line: 855, column: 11, scope: !744)
!749 = !DILocation(line: 857, column: 8, scope: !750)
!750 = distinct !DILexicalBlock(scope: !747, file: !3, line: 856, column: 8)
!751 = !DILocation(line: 858, column: 8, scope: !750)
!752 = !DILocation(line: 851, column: 25, scope: !736)
!753 = !DILocation(line: 851, column: 19, scope: !736)
!754 = !DILocation(line: 851, column: 5, scope: !737)
!755 = distinct !{!755, !754, !756, !97, !98}
!756 = !DILocation(line: 860, column: 7, scope: !737)
!757 = !DILocation(line: 862, column: 20, scope: !574)
!758 = !DILocation(line: 863, column: 5, scope: !574)
!759 = !DILocation(line: 867, column: 12, scope: !574)
!760 = !DILocation(line: 868, column: 14, scope: !761)
!761 = distinct !DILexicalBlock(scope: !574, file: !3, line: 868, column: 9)
!762 = !DILocation(line: 868, column: 9, scope: !574)
!763 = !DILocation(line: 870, column: 6, scope: !764)
!764 = distinct !DILexicalBlock(scope: !761, file: !3, line: 869, column: 6)
!765 = !DILocation(line: 871, column: 6, scope: !764)
!766 = !DILocation(line: 874, column: 9, scope: !767)
!767 = distinct !DILexicalBlock(scope: !574, file: !3, line: 874, column: 9)
!768 = !DILocation(line: 874, column: 31, scope: !767)
!769 = !DILocation(line: 874, column: 9, scope: !574)
!770 = !DILocation(line: 875, column: 16, scope: !767)
!771 = !DILocation(line: 875, column: 6, scope: !767)
!772 = !DILocation(line: 877, column: 16, scope: !767)
!773 = !DILocation(line: 882, column: 12, scope: !574)
!774 = !DILocation(line: 883, column: 14, scope: !775)
!775 = distinct !DILexicalBlock(scope: !574, file: !3, line: 883, column: 9)
!776 = !DILocation(line: 883, column: 9, scope: !574)
!777 = !DILocation(line: 885, column: 6, scope: !778)
!778 = distinct !DILexicalBlock(scope: !775, file: !3, line: 884, column: 6)
!779 = !DILocation(line: 886, column: 6, scope: !778)
!780 = !DILocation(line: 889, column: 9, scope: !781)
!781 = distinct !DILexicalBlock(scope: !574, file: !3, line: 889, column: 9)
!782 = !DILocation(line: 889, column: 31, scope: !781)
!783 = !DILocation(line: 889, column: 9, scope: !574)
!784 = !DILocation(line: 890, column: 19, scope: !781)
!785 = !DILocation(line: 890, column: 6, scope: !781)
!786 = !DILocation(line: 892, column: 19, scope: !781)
!787 = !DILocation(line: 897, column: 12, scope: !574)
!788 = !DILocation(line: 898, column: 14, scope: !789)
!789 = distinct !DILexicalBlock(scope: !574, file: !3, line: 898, column: 9)
!790 = !DILocation(line: 898, column: 9, scope: !574)
!791 = !DILocation(line: 900, column: 6, scope: !792)
!792 = distinct !DILexicalBlock(scope: !789, file: !3, line: 899, column: 6)
!793 = !DILocation(line: 901, column: 6, scope: !792)
!794 = !DILocation(line: 904, column: 9, scope: !795)
!795 = distinct !DILexicalBlock(scope: !574, file: !3, line: 904, column: 9)
!796 = !DILocation(line: 904, column: 40, scope: !795)
!797 = !DILocation(line: 904, column: 9, scope: !574)
!798 = !DILocation(line: 905, column: 22, scope: !795)
!799 = !DILocation(line: 905, column: 6, scope: !795)
!800 = !DILocation(line: 907, column: 9, scope: !801)
!801 = distinct !DILexicalBlock(scope: !795, file: !3, line: 907, column: 9)
!802 = !DILocation(line: 907, column: 41, scope: !801)
!803 = !DILocation(line: 907, column: 9, scope: !795)
!804 = !DILocation(line: 908, column: 22, scope: !801)
!805 = !DILocation(line: 911, column: 6, scope: !806)
!806 = distinct !DILexicalBlock(scope: !801, file: !3, line: 910, column: 6)
!807 = !DILocation(line: 912, column: 6, scope: !806)
!808 = !DILocation(line: 918, column: 12, scope: !574)
!809 = !DILocation(line: 919, column: 14, scope: !810)
!810 = distinct !DILexicalBlock(scope: !574, file: !3, line: 919, column: 9)
!811 = !DILocation(line: 919, column: 9, scope: !574)
!812 = !DILocation(line: 921, column: 6, scope: !813)
!813 = distinct !DILexicalBlock(scope: !810, file: !3, line: 920, column: 6)
!814 = !DILocation(line: 922, column: 6, scope: !813)
!815 = !DILocation(line: 925, column: 9, scope: !816)
!816 = distinct !DILexicalBlock(scope: !574, file: !3, line: 925, column: 9)
!817 = !DILocation(line: 925, column: 33, scope: !816)
!818 = !DILocation(line: 925, column: 9, scope: !574)
!819 = !DILocation(line: 926, column: 20, scope: !816)
!820 = !DILocation(line: 926, column: 6, scope: !816)
!821 = !DILocation(line: 928, column: 9, scope: !822)
!822 = distinct !DILexicalBlock(scope: !816, file: !3, line: 928, column: 9)
!823 = !DILocation(line: 928, column: 37, scope: !822)
!824 = !DILocation(line: 928, column: 9, scope: !816)
!825 = !DILocation(line: 929, column: 20, scope: !822)
!826 = !DILocation(line: 932, column: 6, scope: !827)
!827 = distinct !DILexicalBlock(scope: !822, file: !3, line: 931, column: 6)
!828 = !DILocation(line: 933, column: 6, scope: !827)
!829 = !DILocation(line: 939, column: 12, scope: !574)
!830 = !DILocation(line: 940, column: 14, scope: !831)
!831 = distinct !DILexicalBlock(scope: !574, file: !3, line: 940, column: 9)
!832 = !DILocation(line: 940, column: 9, scope: !574)
!833 = !DILocation(line: 942, column: 6, scope: !834)
!834 = distinct !DILexicalBlock(scope: !831, file: !3, line: 941, column: 6)
!835 = !DILocation(line: 943, column: 6, scope: !834)
!836 = !DILocation(line: 946, column: 13, scope: !574)
!837 = !DILocation(line: 947, column: 5, scope: !574)
!838 = !DILocation(line: 951, column: 12, scope: !574)
!839 = !DILocation(line: 952, column: 14, scope: !840)
!840 = distinct !DILexicalBlock(scope: !574, file: !3, line: 952, column: 9)
!841 = !DILocation(line: 952, column: 9, scope: !574)
!842 = !DILocation(line: 954, column: 6, scope: !843)
!843 = distinct !DILexicalBlock(scope: !840, file: !3, line: 953, column: 6)
!844 = !DILocation(line: 955, column: 6, scope: !843)
!845 = !DILocation(line: 958, column: 13, scope: !574)
!846 = !DILocation(line: 959, column: 5, scope: !574)
!847 = !DILocation(line: 962, column: 12, scope: !574)
!848 = !DILocation(line: 963, column: 14, scope: !849)
!849 = distinct !DILexicalBlock(scope: !574, file: !3, line: 963, column: 9)
!850 = !DILocation(line: 963, column: 9, scope: !574)
!851 = !DILocation(line: 965, column: 6, scope: !852)
!852 = distinct !DILexicalBlock(scope: !849, file: !3, line: 964, column: 6)
!853 = !DILocation(line: 966, column: 6, scope: !852)
!854 = !DILocation(line: 971, column: 12, scope: !574)
!855 = !DILocation(line: 972, column: 14, scope: !856)
!856 = distinct !DILexicalBlock(scope: !574, file: !3, line: 972, column: 9)
!857 = !DILocation(line: 972, column: 9, scope: !574)
!858 = !DILocation(line: 974, column: 6, scope: !859)
!859 = distinct !DILexicalBlock(scope: !856, file: !3, line: 973, column: 6)
!860 = !DILocation(line: 975, column: 6, scope: !859)
!861 = !DILocation(line: 980, column: 12, scope: !574)
!862 = !DILocation(line: 981, column: 14, scope: !863)
!863 = distinct !DILexicalBlock(scope: !574, file: !3, line: 981, column: 9)
!864 = !DILocation(line: 981, column: 9, scope: !574)
!865 = !DILocation(line: 983, column: 6, scope: !866)
!866 = distinct !DILexicalBlock(scope: !863, file: !3, line: 982, column: 6)
!867 = !DILocation(line: 984, column: 6, scope: !866)
!868 = !DILocation(line: 989, column: 12, scope: !574)
!869 = !DILocation(line: 990, column: 14, scope: !870)
!870 = distinct !DILexicalBlock(scope: !574, file: !3, line: 990, column: 9)
!871 = !DILocation(line: 990, column: 9, scope: !574)
!872 = !DILocation(line: 992, column: 6, scope: !873)
!873 = distinct !DILexicalBlock(scope: !870, file: !3, line: 991, column: 6)
!874 = !DILocation(line: 993, column: 6, scope: !873)
!875 = !DILocation(line: 996, column: 9, scope: !876)
!876 = distinct !DILexicalBlock(scope: !574, file: !3, line: 996, column: 9)
!877 = !DILocation(line: 996, column: 31, scope: !876)
!878 = !DILocation(line: 996, column: 9, scope: !574)
!879 = !DILocation(line: 997, column: 16, scope: !876)
!880 = !DILocation(line: 997, column: 6, scope: !876)
!881 = !DILocation(line: 1002, column: 12, scope: !574)
!882 = !DILocation(line: 1003, column: 14, scope: !883)
!883 = distinct !DILexicalBlock(scope: !574, file: !3, line: 1003, column: 9)
!884 = !DILocation(line: 1003, column: 9, scope: !574)
!885 = !DILocation(line: 1005, column: 6, scope: !886)
!886 = distinct !DILexicalBlock(scope: !883, file: !3, line: 1004, column: 6)
!887 = !DILocation(line: 1006, column: 6, scope: !886)
!888 = !DILocation(line: 1009, column: 9, scope: !889)
!889 = distinct !DILexicalBlock(scope: !574, file: !3, line: 1009, column: 9)
!890 = !DILocation(line: 1009, column: 36, scope: !889)
!891 = !DILocation(line: 1009, column: 9, scope: !574)
!892 = !DILocation(line: 1010, column: 15, scope: !889)
!893 = !DILocation(line: 1010, column: 6, scope: !889)
!894 = !DILocation(line: 1015, column: 12, scope: !574)
!895 = !DILocation(line: 1016, column: 14, scope: !896)
!896 = distinct !DILexicalBlock(scope: !574, file: !3, line: 1016, column: 9)
!897 = !DILocation(line: 1016, column: 9, scope: !574)
!898 = !DILocation(line: 1018, column: 6, scope: !899)
!899 = distinct !DILexicalBlock(scope: !896, file: !3, line: 1017, column: 6)
!900 = !DILocation(line: 1019, column: 6, scope: !899)
!901 = !DILocation(line: 1024, column: 12, scope: !574)
!902 = !DILocation(line: 1025, column: 14, scope: !903)
!903 = distinct !DILexicalBlock(scope: !574, file: !3, line: 1025, column: 9)
!904 = !DILocation(line: 1025, column: 9, scope: !574)
!905 = !DILocation(line: 1027, column: 6, scope: !906)
!906 = distinct !DILexicalBlock(scope: !903, file: !3, line: 1026, column: 6)
!907 = !DILocation(line: 1028, column: 6, scope: !906)
!908 = !DILocation(line: 1033, column: 12, scope: !574)
!909 = !DILocation(line: 1034, column: 14, scope: !910)
!910 = distinct !DILexicalBlock(scope: !574, file: !3, line: 1034, column: 9)
!911 = !DILocation(line: 1034, column: 9, scope: !574)
!912 = !DILocation(line: 1036, column: 6, scope: !913)
!913 = distinct !DILexicalBlock(scope: !910, file: !3, line: 1035, column: 6)
!914 = !DILocation(line: 1037, column: 6, scope: !913)
!915 = !DILocation(line: 1042, column: 12, scope: !574)
!916 = !DILocation(line: 1043, column: 14, scope: !917)
!917 = distinct !DILexicalBlock(scope: !574, file: !3, line: 1043, column: 9)
!918 = !DILocation(line: 1043, column: 20, scope: !917)
!919 = !DILocation(line: 1045, column: 6, scope: !920)
!920 = distinct !DILexicalBlock(scope: !917, file: !3, line: 1044, column: 6)
!921 = !DILocation(line: 1046, column: 6, scope: !920)
!922 = !DILocation(line: 1051, column: 12, scope: !574)
!923 = !DILocation(line: 1052, column: 14, scope: !924)
!924 = distinct !DILexicalBlock(scope: !574, file: !3, line: 1052, column: 9)
!925 = !DILocation(line: 1052, column: 9, scope: !574)
!926 = !DILocation(line: 1054, column: 6, scope: !927)
!927 = distinct !DILexicalBlock(scope: !924, file: !3, line: 1053, column: 6)
!928 = !DILocation(line: 1055, column: 6, scope: !927)
!929 = !DILocation(line: 1060, column: 12, scope: !574)
!930 = !DILocation(line: 1061, column: 14, scope: !931)
!931 = distinct !DILexicalBlock(scope: !574, file: !3, line: 1061, column: 9)
!932 = !DILocation(line: 1061, column: 9, scope: !574)
!933 = !DILocation(line: 1063, column: 6, scope: !934)
!934 = distinct !DILexicalBlock(scope: !931, file: !3, line: 1062, column: 6)
!935 = !DILocation(line: 1064, column: 6, scope: !934)
!936 = !DILocation(line: 1069, column: 12, scope: !574)
!937 = !DILocation(line: 1070, column: 14, scope: !938)
!938 = distinct !DILexicalBlock(scope: !574, file: !3, line: 1070, column: 9)
!939 = !DILocation(line: 1070, column: 9, scope: !574)
!940 = !DILocation(line: 1072, column: 6, scope: !941)
!941 = distinct !DILexicalBlock(scope: !938, file: !3, line: 1071, column: 6)
!942 = !DILocation(line: 1073, column: 6, scope: !941)
!943 = !DILocation(line: 1078, column: 5, scope: !574)
!944 = !DILocation(line: 1079, column: 5, scope: !574)
!945 = distinct !{!945, !568, !946, !97, !98}
!946 = !DILocation(line: 1081, column: 3, scope: !461)
!947 = !DILocation(line: 659, column: 13, scope: !461)
!948 = !DILocation(line: 1083, column: 2, scope: !461)
!949 = !DILocation(line: 1086, column: 30, scope: !461)
!950 = !DILocation(line: 1086, column: 43, scope: !461)
!951 = !DILocation(line: 1086, column: 34, scope: !461)
!952 = !DILocation(line: 1086, column: 20, scope: !461)
!953 = !DILocation(line: 1087, column: 30, scope: !461)
!954 = !DILocation(line: 1087, column: 39, scope: !461)
!955 = !DILocation(line: 1087, column: 38, scope: !461)
!956 = !DILocation(line: 1087, column: 20, scope: !461)
!957 = !DILocation(line: 1088, column: 30, scope: !461)
!958 = !DILocation(line: 1088, column: 40, scope: !461)
!959 = !DILocation(line: 1088, column: 39, scope: !461)
!960 = !DILocation(line: 1088, column: 20, scope: !461)
!961 = !DILocation(line: 1092, column: 7, scope: !962)
!962 = distinct !DILexicalBlock(scope: !461, file: !3, line: 1092, column: 6)
!963 = !DILocation(line: 1092, column: 6, scope: !461)
!964 = !DILocation(line: 1093, column: 3, scope: !962)
!965 = !DILocation(line: 1096, column: 2, scope: !461)
!966 = !DILocation(line: 1099, column: 7, scope: !967)
!967 = distinct !DILexicalBlock(scope: !461, file: !3, line: 1099, column: 6)
!968 = !DILocation(line: 1099, column: 21, scope: !967)
!969 = !DILocation(line: 1099, column: 33, scope: !967)
!970 = !DILocation(line: 1101, column: 3, scope: !971)
!971 = distinct !DILexicalBlock(scope: !967, file: !3, line: 1100, column: 3)
!972 = !DILocation(line: 1102, column: 13, scope: !971)
!973 = !DILocation(line: 1103, column: 3, scope: !971)
!974 = !DILocation(line: 1104, column: 2, scope: !461)
!975 = !DISubprogram(name: "fflush", scope: !976, file: !976, line: 218, type: !977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !161)
!976 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!977 = !DISubroutineType(types: !978)
!978 = !{!493, !486}
!979 = !DISubprogram(name: "fclose", scope: !976, file: !976, line: 213, type: !977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !161)
