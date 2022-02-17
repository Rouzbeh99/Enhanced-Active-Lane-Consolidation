; ModuleID = 'nblist.ll'
source_filename = "nblist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.kdnode = type { i32, %struct.kdnode*, %struct.kdnode* }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [40 x i8] c"Error allocate kdnode array in nbtree!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nblist(i32* %0, i32* %1, i32** %2, double* %3, i32 %4, i32 %5, double %6, i32 %7, i32 %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.kdnode*, align 8
  %14 = fmul double %6, %6
  %15 = call i32 @get_blocksize()
  %16 = sext i32 %7 to i64
  %17 = mul i64 %16, 24
  %18 = call noalias i8* @malloc(i64 %17) #4
  %19 = bitcast i8* %18 to %struct.kdnode*
  %20 = icmp eq %struct.kdnode* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %10
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 1) #5
  unreachable

24:                                               ; preds = %10
  %25 = call i32* @ivector(i32 0, i32 %7)
  %26 = call i32* @ivector(i32 0, i32 %7)
  %27 = call i32* @ivector(i32 0, i32 %7)
  %28 = call i32* @ivector(i32 0, i32 %7)
  %29 = icmp eq i32 %8, 4
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32* @ivector(i32 0, i32 %7)
  br label %32

32:                                               ; preds = %30, %24
  %.0 = phi i32* [ %31, %30 ], [ null, %24 ]
  %33 = call i32* @ivector(i32 0, i32 %7)
  %34 = sext i32 %7 to i64
  %35 = icmp slt i64 0, %34
  br i1 %35, label %.lr.ph, label %52

.lr.ph:                                           ; preds = %32
  br label %36

36:                                               ; preds = %.lr.ph, %50
  %indvars.iv11 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %50 ]
  %37 = getelementptr inbounds i32, i32* %27, i64 %indvars.iv11
  %38 = trunc i64 %indvars.iv11 to i32
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds i32, i32* %26, i64 %indvars.iv11
  %40 = trunc i64 %indvars.iv11 to i32
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds i32, i32* %25, i64 %indvars.iv11
  %42 = trunc i64 %indvars.iv11 to i32
  store i32 %42, i32* %41, align 4
  %43 = icmp eq i32 %8, 4
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = getelementptr inbounds i32, i32* %.0, i64 %indvars.iv11
  %46 = trunc i64 %indvars.iv11 to i32
  store i32 %46, i32* %45, align 4
  br label %47

47:                                               ; preds = %44, %36
  %48 = getelementptr inbounds i32, i32* %33, i64 %indvars.iv11
  %49 = trunc i64 %indvars.iv11 to i32
  store i32 %49, i32* %48, align 4
  br label %50

50:                                               ; preds = %47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv11, 1
  %51 = icmp slt i64 %indvars.iv.next, %34
  br i1 %51, label %36, label %._crit_edge

._crit_edge:                                      ; preds = %50
  br label %52

52:                                               ; preds = %._crit_edge, %32
  call void @heapsort_index(i32* %25, i32 %7, double* %3, i32 0, i32 %8)
  call void @heapsort_index(i32* %26, i32 %7, double* %3, i32 1, i32 %8)
  call void @heapsort_index(i32* %27, i32 %7, double* %3, i32 2, i32 %8)
  %53 = icmp eq i32 %8, 4
  br i1 %53, label %54, label %55

54:                                               ; preds = %52
  call void @heapsort_index(i32* %.0, i32 %7, double* %3, i32 3, i32 %8)
  br label %55

55:                                               ; preds = %54, %52
  store %struct.kdnode* %19, %struct.kdnode** %13, align 8
  %56 = load %struct.kdnode*, %struct.kdnode** %13, align 8
  %57 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %56, i32 1
  store %struct.kdnode* %57, %struct.kdnode** %13, align 8
  %58 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %56, i32 0, i32 1
  store %struct.kdnode* null, %struct.kdnode** %58, align 8
  %59 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %56, i32 0, i32 2
  store %struct.kdnode* null, %struct.kdnode** %59, align 8
  %60 = sub nsw i32 %7, 1
  call void @buildkdtree(i32* %33, i32* %25, i32* %26, i32* %27, i32* %.0, i32* %28, i32 0, i32 %60, %struct.kdnode** %13, %struct.kdnode* %56, double* %3, i32 0, i32 %8)
  %61 = call i32* @ivector(i32 0, i32 %7)
  %62 = call i32* @ivector(i32 0, i32 %7)
  %63 = sext i32 %7 to i64
  %64 = icmp slt i64 0, %63
  br i1 %64, label %.lr.ph27, label %165

.lr.ph27:                                         ; preds = %55
  br label %65

65:                                               ; preds = %.lr.ph27, %163
  %.0125 = phi i32 [ 0, %.lr.ph27 ], [ %162, %163 ]
  %indvars.iv920 = phi i64 [ 0, %.lr.ph27 ], [ %indvars.iv.next10, %163 ]
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %66 = trunc i64 %indvars.iv920 to i32
  call void @searchkdtree(%struct.kdnode* %56, double* %3, i32 0, i32 %66, i32* %11, i32* %12, i32* %61, i32* %62, double %6, double %14, i32 %8, i32* %9)
  %67 = load i32, i32* %11, align 4
  call void @heapsort_pairs(i32* %61, i32 %67)
  %68 = load i32, i32* %12, align 4
  call void @heapsort_pairs(i32* %62, i32 %68)
  %69 = getelementptr inbounds i32*, i32** %2, i64 %indvars.iv920
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %65
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %73, %74
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %78, %79
  %81 = call i32* @ivector(i32 0, i32 %80)
  %82 = getelementptr inbounds i32*, i32** %2, i64 %indvars.iv920
  store i32* %81, i32** %82, align 8
  br label %123

83:                                               ; preds = %72, %65
  %84 = getelementptr inbounds i32*, i32** %2, i64 %indvars.iv920
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %122

87:                                               ; preds = %83
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %88, %89
  %91 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv920
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv920
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %92, %94
  %96 = icmp sgt i32 %90, %95
  br i1 %96, label %109, label %97

97:                                               ; preds = %87
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %98, %99
  %101 = mul nsw i32 4, %100
  %102 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv920
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv920
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %103, %105
  %107 = mul nsw i32 3, %106
  %108 = icmp slt i32 %101, %107
  br i1 %108, label %109, label %122

109:                                              ; preds = %97, %87
  %indvars.iv921 = phi i64 [ %indvars.iv920, %97 ], [ %indvars.iv920, %87 ]
  %110 = getelementptr inbounds i32*, i32** %2, i64 %indvars.iv920
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv920
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv920
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %113, %115
  call void @free_ivector(i32* %111, i32 0, i32 %116)
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %117, %118
  %120 = call i32* @ivector(i32 0, i32 %119)
  %121 = getelementptr inbounds i32*, i32** %2, i64 %indvars.iv921
  store i32* %120, i32** %121, align 8
  br label %122

122:                                              ; preds = %109, %97, %83
  %indvars.iv923 = phi i64 [ %indvars.iv921, %109 ], [ %indvars.iv920, %97 ], [ %indvars.iv920, %83 ]
  br label %123

123:                                              ; preds = %122, %77
  %indvars.iv922 = phi i64 [ %indvars.iv923, %122 ], [ %indvars.iv920, %77 ]
  %124 = load i32, i32* %11, align 4
  %125 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv922
  store i32 %124, i32* %125, align 4
  %126 = load i32, i32* %12, align 4
  %127 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv922
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = icmp slt i64 0, %129
  br i1 %130, label %.lr.ph14, label %141

.lr.ph14:                                         ; preds = %123
  br label %131

131:                                              ; preds = %.lr.ph14, %137
  %indvars.iv512 = phi i64 [ 0, %.lr.ph14 ], [ %indvars.iv.next6, %137 ]
  %132 = getelementptr inbounds i32, i32* %61, i64 %indvars.iv512
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds i32*, i32** %2, i64 %indvars.iv922
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 %indvars.iv512
  store i32 %133, i32* %136, align 4
  br label %137

137:                                              ; preds = %131
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv512, 1
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = icmp slt i64 %indvars.iv.next6, %139
  br i1 %140, label %131, label %._crit_edge15

._crit_edge15:                                    ; preds = %137
  br label %141

141:                                              ; preds = %._crit_edge15, %123
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = icmp slt i64 0, %143
  br i1 %144, label %.lr.ph18, label %158

.lr.ph18:                                         ; preds = %141
  br label %145

145:                                              ; preds = %.lr.ph18, %154
  %indvars.iv716 = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next8, %154 ]
  %146 = getelementptr inbounds i32, i32* %62, i64 %indvars.iv716
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds i32*, i32** %2, i64 %indvars.iv922
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %151, %indvars.iv716
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  store i32 %147, i32* %153, align 4
  br label %154

154:                                              ; preds = %145
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv716, 1
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = icmp slt i64 %indvars.iv.next8, %156
  br i1 %157, label %145, label %._crit_edge19

._crit_edge19:                                    ; preds = %154
  br label %158

158:                                              ; preds = %._crit_edge19, %141
  %indvars.iv924 = phi i64 [ %indvars.iv922, %._crit_edge19 ], [ %indvars.iv922, %141 ]
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %159, %160
  %162 = add nsw i32 %.0125, %161
  br label %163

163:                                              ; preds = %158
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv924, 1
  %164 = icmp slt i64 %indvars.iv.next10, %63
  br i1 %164, label %65, label %._crit_edge28

._crit_edge28:                                    ; preds = %163
  %split = phi i32 [ %162, %163 ]
  br label %165

165:                                              ; preds = %._crit_edge28, %55
  %.01.lcssa = phi i32 [ %split, %._crit_edge28 ], [ 0, %55 ]
  call void @free_ivector(i32* %61, i32 0, i32 %7)
  call void @free_ivector(i32* %62, i32 0, i32 %7)
  %166 = bitcast %struct.kdnode* %19 to i8*
  call void @free(i8* %166) #4
  call void @free_ivector(i32* %25, i32 0, i32 %7)
  call void @free_ivector(i32* %26, i32 0, i32 %7)
  call void @free_ivector(i32* %27, i32 0, i32 %7)
  call void @free_ivector(i32* %28, i32 0, i32 %7)
  %167 = icmp eq i32 %8, 4
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  call void @free_ivector(i32* %.0, i32 0, i32 %7)
  br label %169

169:                                              ; preds = %168, %165
  call void @free_ivector(i32* %33, i32 0, i32 %7)
  ret i32 %.01.lcssa
}

declare dso_local i32 @get_blocksize() #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

declare dso_local i32* @ivector(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heapsort_index(i32* %0, i32 %1, double* %2, i32 %3, i32 %4) #0 {
  %6 = sdiv i32 %1, 2
  %7 = icmp sge i32 %6, 1
  br i1 %7, label %.lr.ph, label %12

.lr.ph:                                           ; preds = %5
  br label %8

8:                                                ; preds = %.lr.ph, %9
  %.02 = phi i32 [ %6, %.lr.ph ], [ %10, %9 ]
  call void @downheap_index(i32* %0, i32 %1, i32 %.02, double* %2, i32 %3, i32 %4)
  br label %9

9:                                                ; preds = %8
  %10 = add nsw i32 %.02, -1
  %11 = icmp sge i32 %10, 1
  br i1 %11, label %8, label %._crit_edge

._crit_edge:                                      ; preds = %9
  br label %12

12:                                               ; preds = %._crit_edge, %5
  %13 = sext i32 %1 to i64
  %14 = icmp sgt i64 %13, 1
  br i1 %14, label %.lr.ph5, label %24

.lr.ph5:                                          ; preds = %12
  br label %15

15:                                               ; preds = %.lr.ph5, %15
  %indvars.iv3 = phi i64 [ %13, %.lr.ph5 ], [ %indvars.iv.next, %15 ]
  %16 = getelementptr inbounds i32, i32* %0, i64 0
  %17 = load i32, i32* %16, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv3, -1
  %18 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %0, i64 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next
  store i32 %17, i32* %21, align 4
  %22 = trunc i64 %indvars.iv.next to i32
  call void @downheap_index(i32* %0, i32 %22, i32 1, double* %2, i32 %3, i32 %4)
  %23 = icmp sgt i64 %indvars.iv.next, 1
  br i1 %23, label %15, label %._crit_edge6

._crit_edge6:                                     ; preds = %15
  br label %24

24:                                               ; preds = %._crit_edge6, %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buildkdtree(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6, i32 %7, %struct.kdnode** %8, %struct.kdnode* %9, double* %10, i32 %11, i32 %12) #0 {
  %14 = add nsw i32 %12, 1
  %15 = srem i32 %11, %14
  %16 = icmp eq i32 %7, %6
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = sext i32 %6 to i64
  %19 = getelementptr inbounds i32, i32* %0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  br label %414

22:                                               ; preds = %13
  %23 = add nsw i32 %6, 1
  %24 = icmp eq i32 %7, %23
  br i1 %24, label %25, label %142

25:                                               ; preds = %22
  %26 = icmp eq i32 %15, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %25
  %28 = sext i32 %6 to i64
  %29 = getelementptr inbounds i32, i32* %0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %7 to i64
  %32 = getelementptr inbounds i32, i32* %0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %57, label %35

35:                                               ; preds = %27, %25
  %36 = icmp ne i32 %15, 0
  br i1 %36, label %37, label %74

37:                                               ; preds = %35
  %38 = sext i32 %6 to i64
  %39 = getelementptr inbounds i32, i32* %0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %12, %40
  %42 = add nsw i32 %41, %15
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, double* %10, i64 %44
  %46 = load double, double* %45, align 8
  %47 = sext i32 %7 to i64
  %48 = getelementptr inbounds i32, i32* %0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %12, %49
  %51 = add nsw i32 %50, %15
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, double* %10, i64 %53
  %55 = load double, double* %54, align 8
  %56 = fcmp olt double %46, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %37, %27
  %58 = sext i32 %7 to i64
  %59 = getelementptr inbounds i32, i32* %0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  %62 = sext i32 %6 to i64
  %63 = getelementptr inbounds i32, i32* %0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.kdnode*, %struct.kdnode** %8, align 8
  %66 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.kdnode*, %struct.kdnode** %8, align 8
  %68 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %67, i32 0, i32 1
  store %struct.kdnode* null, %struct.kdnode** %68, align 8
  %69 = load %struct.kdnode*, %struct.kdnode** %8, align 8
  %70 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %69, i32 0, i32 2
  store %struct.kdnode* null, %struct.kdnode** %70, align 8
  %71 = load %struct.kdnode*, %struct.kdnode** %8, align 8
  %72 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %71, i32 1
  store %struct.kdnode* %72, %struct.kdnode** %8, align 8
  %73 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i32 0, i32 1
  store %struct.kdnode* %71, %struct.kdnode** %73, align 8
  br label %141

74:                                               ; preds = %37, %35
  %75 = icmp eq i32 %15, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %74
  %77 = sext i32 %6 to i64
  %78 = getelementptr inbounds i32, i32* %0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %7 to i64
  %81 = getelementptr inbounds i32, i32* %0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %79, %82
  br i1 %83, label %106, label %84

84:                                               ; preds = %76, %74
  %85 = icmp ne i32 %15, 0
  br i1 %85, label %86, label %123

86:                                               ; preds = %84
  %87 = sext i32 %6 to i64
  %88 = getelementptr inbounds i32, i32* %0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %12, %89
  %91 = add nsw i32 %90, %15
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds double, double* %10, i64 %93
  %95 = load double, double* %94, align 8
  %96 = sext i32 %7 to i64
  %97 = getelementptr inbounds i32, i32* %0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %12, %98
  %100 = add nsw i32 %99, %15
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds double, double* %10, i64 %102
  %104 = load double, double* %103, align 8
  %105 = fcmp ogt double %95, %104
  br i1 %105, label %106, label %123

106:                                              ; preds = %86, %76
  %107 = sext i32 %6 to i64
  %108 = getelementptr inbounds i32, i32* %0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i32 0, i32 0
  store i32 %109, i32* %110, align 8
  %111 = sext i32 %7 to i64
  %112 = getelementptr inbounds i32, i32* %0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.kdnode*, %struct.kdnode** %8, align 8
  %115 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.kdnode*, %struct.kdnode** %8, align 8
  %117 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %116, i32 0, i32 1
  store %struct.kdnode* null, %struct.kdnode** %117, align 8
  %118 = load %struct.kdnode*, %struct.kdnode** %8, align 8
  %119 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %118, i32 0, i32 2
  store %struct.kdnode* null, %struct.kdnode** %119, align 8
  %120 = load %struct.kdnode*, %struct.kdnode** %8, align 8
  %121 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %120, i32 1
  store %struct.kdnode* %121, %struct.kdnode** %8, align 8
  %122 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i32 0, i32 1
  store %struct.kdnode* %120, %struct.kdnode** %122, align 8
  br label %140

123:                                              ; preds = %86, %84
  %124 = sext i32 %6 to i64
  %125 = getelementptr inbounds i32, i32* %0, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i32 0, i32 0
  store i32 %126, i32* %127, align 8
  %128 = sext i32 %7 to i64
  %129 = getelementptr inbounds i32, i32* %0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.kdnode*, %struct.kdnode** %8, align 8
  %132 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load %struct.kdnode*, %struct.kdnode** %8, align 8
  %134 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %133, i32 0, i32 1
  store %struct.kdnode* null, %struct.kdnode** %134, align 8
  %135 = load %struct.kdnode*, %struct.kdnode** %8, align 8
  %136 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %135, i32 0, i32 2
  store %struct.kdnode* null, %struct.kdnode** %136, align 8
  %137 = load %struct.kdnode*, %struct.kdnode** %8, align 8
  %138 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %137, i32 1
  store %struct.kdnode* %138, %struct.kdnode** %8, align 8
  %139 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i32 0, i32 2
  store %struct.kdnode* %137, %struct.kdnode** %139, align 8
  br label %140

140:                                              ; preds = %123, %106
  br label %141

141:                                              ; preds = %140, %57
  br label %413

142:                                              ; preds = %22
  %143 = add nsw i32 %6, %7
  %144 = sdiv i32 %143, 2
  %145 = icmp eq i32 %15, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = sext i32 %144 to i64
  %148 = getelementptr inbounds i32, i32* %0, i64 %147
  %149 = load i32, i32* %148, align 4
  br label %182

150:                                              ; preds = %142
  %151 = sext i32 %144 to i64
  %152 = getelementptr inbounds i32, i32* %0, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = mul nsw i32 %12, %153
  %155 = add nsw i32 %154, %15
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds double, double* %10, i64 %157
  %159 = load double, double* %158, align 8
  %160 = sub nsw i32 %144, 1
  %161 = sext i32 %144 to i64
  %162 = add nsw i64 %161, -1
  %163 = sext i32 %6 to i64
  %164 = icmp sge i64 %162, %163
  br i1 %164, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %150
  br label %165

165:                                              ; preds = %.lr.ph, %178
  %.01635 = phi i32 [ %144, %.lr.ph ], [ %.01834, %178 ]
  %.01834 = phi i32 [ %160, %.lr.ph ], [ %179, %178 ]
  %indvars.iv33 = phi i64 [ %162, %.lr.ph ], [ %indvars.iv.next, %178 ]
  %166 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv33
  %167 = load i32, i32* %166, align 4
  %168 = mul nsw i32 %12, %167
  %169 = add nsw i32 %168, %15
  %170 = sub nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds double, double* %10, i64 %171
  %173 = load double, double* %172, align 8
  %174 = fcmp olt double %173, %159
  br i1 %174, label %175, label %176

175:                                              ; preds = %165
  %.016.lcssa23 = phi i32 [ %.01635, %165 ]
  br label %181

176:                                              ; preds = %165
  br label %177

177:                                              ; preds = %176
  br label %178

178:                                              ; preds = %177
  %indvars.iv.next = add i64 %indvars.iv33, -1
  %179 = add nsw i32 %.01834, -1
  %180 = icmp sge i64 %indvars.iv.next, %163
  br i1 %180, label %165, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %178
  %split = phi i32 [ %.01834, %178 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %150
  %.016.lcssa = phi i32 [ %split, %..loopexit_crit_edge ], [ %144, %150 ]
  br label %181

181:                                              ; preds = %.loopexit, %175
  %.01624 = phi i32 [ %.016.lcssa, %.loopexit ], [ %.016.lcssa23, %175 ]
  br label %182

182:                                              ; preds = %181, %146
  %.117 = phi i32 [ %144, %146 ], [ %.01624, %181 ]
  %.015 = phi i32 [ %149, %146 ], [ undef, %181 ]
  %.0 = phi double [ undef, %146 ], [ %159, %181 ]
  %183 = sext i32 %.117 to i64
  %184 = getelementptr inbounds i32, i32* %0, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i32 0, i32 0
  store i32 %185, i32* %186, align 8
  %187 = sub nsw i32 %6, 1
  %188 = sext i32 %6 to i64
  %189 = sext i32 %7 to i64
  %190 = icmp sle i64 %188, %189
  br i1 %190, label %.lr.ph44, label %232

.lr.ph44:                                         ; preds = %182
  br label %191

191:                                              ; preds = %.lr.ph44, %230
  %.0142 = phi i32 [ %.117, %.lr.ph44 ], [ %.2, %230 ]
  %.0240 = phi i32 [ %187, %.lr.ph44 ], [ %.24, %230 ]
  %indvars.iv2536 = phi i64 [ %188, %.lr.ph44 ], [ %indvars.iv.next26, %230 ]
  %192 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv2536
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %.117 to i64
  %195 = getelementptr inbounds i32, i32* %0, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %193, %196
  br i1 %197, label %198, label %229

198:                                              ; preds = %191
  %199 = icmp eq i32 %15, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %198
  %201 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv2536
  %202 = load i32, i32* %201, align 4
  %203 = icmp slt i32 %202, %.015
  br i1 %203, label %216, label %204

204:                                              ; preds = %200, %198
  %205 = icmp ne i32 %15, 0
  br i1 %205, label %206, label %222

206:                                              ; preds = %204
  %207 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv2536
  %208 = load i32, i32* %207, align 4
  %209 = mul nsw i32 %12, %208
  %210 = add nsw i32 %209, %15
  %211 = sub nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds double, double* %10, i64 %212
  %214 = load double, double* %213, align 8
  %215 = fcmp olt double %214, %.0
  br i1 %215, label %216, label %222

216:                                              ; preds = %206, %200
  %.0143 = phi i32 [ %.0142, %206 ], [ %.0142, %200 ]
  %.0241 = phi i32 [ %.0240, %206 ], [ %.0240, %200 ]
  %indvars.iv2537 = phi i64 [ %indvars.iv2536, %206 ], [ %indvars.iv2536, %200 ]
  %217 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv2537
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %.0241, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %5, i64 %220
  store i32 %218, i32* %221, align 4
  br label %228

222:                                              ; preds = %206, %204
  %223 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv2536
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %.0142, 1
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %5, i64 %226
  store i32 %224, i32* %227, align 4
  br label %228

228:                                              ; preds = %222, %216
  %indvars.iv2539 = phi i64 [ %indvars.iv2537, %216 ], [ %indvars.iv2536, %222 ]
  %.13 = phi i32 [ %219, %216 ], [ %.0240, %222 ]
  %.1 = phi i32 [ %.0143, %216 ], [ %225, %222 ]
  br label %229

229:                                              ; preds = %228, %191
  %indvars.iv2538 = phi i64 [ %indvars.iv2539, %228 ], [ %indvars.iv2536, %191 ]
  %.24 = phi i32 [ %.13, %228 ], [ %.0240, %191 ]
  %.2 = phi i32 [ %.1, %228 ], [ %.0142, %191 ]
  br label %230

230:                                              ; preds = %229
  %indvars.iv.next26 = add i64 %indvars.iv2538, 1
  %231 = icmp sle i64 %indvars.iv.next26, %189
  br i1 %231, label %191, label %._crit_edge

._crit_edge:                                      ; preds = %230
  br label %232

232:                                              ; preds = %._crit_edge, %182
  %233 = sub nsw i32 %6, 1
  %234 = sext i32 %7 to i64
  %235 = icmp sle i64 %188, %234
  br i1 %235, label %.lr.ph54, label %277

.lr.ph54:                                         ; preds = %232
  br label %236

236:                                              ; preds = %.lr.ph54, %275
  %.351 = phi i32 [ %.117, %.lr.ph54 ], [ %.5, %275 ]
  %.3549 = phi i32 [ %233, %.lr.ph54 ], [ %.57, %275 ]
  %indvars.iv2745 = phi i64 [ %188, %.lr.ph54 ], [ %indvars.iv.next28, %275 ]
  %237 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv2745
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %.117 to i64
  %240 = getelementptr inbounds i32, i32* %0, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = icmp ne i32 %238, %241
  br i1 %242, label %243, label %274

243:                                              ; preds = %236
  %244 = icmp eq i32 %15, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %243
  %246 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv2745
  %247 = load i32, i32* %246, align 4
  %248 = icmp slt i32 %247, %.015
  br i1 %248, label %261, label %249

249:                                              ; preds = %245, %243
  %250 = icmp ne i32 %15, 0
  br i1 %250, label %251, label %267

251:                                              ; preds = %249
  %252 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv2745
  %253 = load i32, i32* %252, align 4
  %254 = mul nsw i32 %12, %253
  %255 = add nsw i32 %254, %15
  %256 = sub nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds double, double* %10, i64 %257
  %259 = load double, double* %258, align 8
  %260 = fcmp olt double %259, %.0
  br i1 %260, label %261, label %267

261:                                              ; preds = %251, %245
  %.352 = phi i32 [ %.351, %251 ], [ %.351, %245 ]
  %.3550 = phi i32 [ %.3549, %251 ], [ %.3549, %245 ]
  %indvars.iv2746 = phi i64 [ %indvars.iv2745, %251 ], [ %indvars.iv2745, %245 ]
  %262 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv2746
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %.3550, 1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %1, i64 %265
  store i32 %263, i32* %266, align 4
  br label %273

267:                                              ; preds = %251, %249
  %268 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv2745
  %269 = load i32, i32* %268, align 4
  %270 = add nsw i32 %.351, 1
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %1, i64 %271
  store i32 %269, i32* %272, align 4
  br label %273

273:                                              ; preds = %267, %261
  %indvars.iv2748 = phi i64 [ %indvars.iv2746, %261 ], [ %indvars.iv2745, %267 ]
  %.46 = phi i32 [ %264, %261 ], [ %.3549, %267 ]
  %.4 = phi i32 [ %.352, %261 ], [ %270, %267 ]
  br label %274

274:                                              ; preds = %273, %236
  %indvars.iv2747 = phi i64 [ %indvars.iv2748, %273 ], [ %indvars.iv2745, %236 ]
  %.57 = phi i32 [ %.46, %273 ], [ %.3549, %236 ]
  %.5 = phi i32 [ %.4, %273 ], [ %.351, %236 ]
  br label %275

275:                                              ; preds = %274
  %indvars.iv.next28 = add i64 %indvars.iv2747, 1
  %276 = icmp sle i64 %indvars.iv.next28, %234
  br i1 %276, label %236, label %._crit_edge55

._crit_edge55:                                    ; preds = %275
  br label %277

277:                                              ; preds = %._crit_edge55, %232
  %278 = sub nsw i32 %6, 1
  %279 = sext i32 %7 to i64
  %280 = icmp sle i64 %188, %279
  br i1 %280, label %.lr.ph65, label %322

.lr.ph65:                                         ; preds = %277
  br label %281

281:                                              ; preds = %.lr.ph65, %320
  %.662 = phi i32 [ %.117, %.lr.ph65 ], [ %.8, %320 ]
  %.6860 = phi i32 [ %278, %.lr.ph65 ], [ %.810, %320 ]
  %indvars.iv2956 = phi i64 [ %188, %.lr.ph65 ], [ %indvars.iv.next30, %320 ]
  %282 = getelementptr inbounds i32, i32* %3, i64 %indvars.iv2956
  %283 = load i32, i32* %282, align 4
  %284 = sext i32 %.117 to i64
  %285 = getelementptr inbounds i32, i32* %0, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = icmp ne i32 %283, %286
  br i1 %287, label %288, label %319

288:                                              ; preds = %281
  %289 = icmp eq i32 %15, 0
  br i1 %289, label %290, label %294

290:                                              ; preds = %288
  %291 = getelementptr inbounds i32, i32* %3, i64 %indvars.iv2956
  %292 = load i32, i32* %291, align 4
  %293 = icmp slt i32 %292, %.015
  br i1 %293, label %306, label %294

294:                                              ; preds = %290, %288
  %295 = icmp ne i32 %15, 0
  br i1 %295, label %296, label %312

296:                                              ; preds = %294
  %297 = getelementptr inbounds i32, i32* %3, i64 %indvars.iv2956
  %298 = load i32, i32* %297, align 4
  %299 = mul nsw i32 %12, %298
  %300 = add nsw i32 %299, %15
  %301 = sub nsw i32 %300, 1
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds double, double* %10, i64 %302
  %304 = load double, double* %303, align 8
  %305 = fcmp olt double %304, %.0
  br i1 %305, label %306, label %312

306:                                              ; preds = %296, %290
  %.663 = phi i32 [ %.662, %296 ], [ %.662, %290 ]
  %.6861 = phi i32 [ %.6860, %296 ], [ %.6860, %290 ]
  %indvars.iv2957 = phi i64 [ %indvars.iv2956, %296 ], [ %indvars.iv2956, %290 ]
  %307 = getelementptr inbounds i32, i32* %3, i64 %indvars.iv2957
  %308 = load i32, i32* %307, align 4
  %309 = add nsw i32 %.6861, 1
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %2, i64 %310
  store i32 %308, i32* %311, align 4
  br label %318

312:                                              ; preds = %296, %294
  %313 = getelementptr inbounds i32, i32* %3, i64 %indvars.iv2956
  %314 = load i32, i32* %313, align 4
  %315 = add nsw i32 %.662, 1
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %2, i64 %316
  store i32 %314, i32* %317, align 4
  br label %318

318:                                              ; preds = %312, %306
  %indvars.iv2959 = phi i64 [ %indvars.iv2957, %306 ], [ %indvars.iv2956, %312 ]
  %.79 = phi i32 [ %309, %306 ], [ %.6860, %312 ]
  %.7 = phi i32 [ %.663, %306 ], [ %315, %312 ]
  br label %319

319:                                              ; preds = %318, %281
  %indvars.iv2958 = phi i64 [ %indvars.iv2959, %318 ], [ %indvars.iv2956, %281 ]
  %.810 = phi i32 [ %.79, %318 ], [ %.6860, %281 ]
  %.8 = phi i32 [ %.7, %318 ], [ %.662, %281 ]
  br label %320

320:                                              ; preds = %319
  %indvars.iv.next30 = add i64 %indvars.iv2958, 1
  %321 = icmp sle i64 %indvars.iv.next30, %279
  br i1 %321, label %281, label %._crit_edge66

._crit_edge66:                                    ; preds = %320
  %split67 = phi i32 [ %.810, %320 ]
  %split68 = phi i32 [ %.8, %320 ]
  br label %322

322:                                              ; preds = %._crit_edge66, %277
  %.68.lcssa = phi i32 [ %split67, %._crit_edge66 ], [ %278, %277 ]
  %.6.lcssa = phi i32 [ %split68, %._crit_edge66 ], [ %.117, %277 ]
  %323 = icmp eq i32 %12, 4
  br i1 %323, label %324, label %370

324:                                              ; preds = %322
  %325 = sub nsw i32 %6, 1
  %326 = sext i32 %7 to i64
  %327 = icmp sle i64 %188, %326
  br i1 %327, label %.lr.ph78, label %369

.lr.ph78:                                         ; preds = %324
  br label %328

328:                                              ; preds = %.lr.ph78, %367
  %.975 = phi i32 [ %.117, %.lr.ph78 ], [ %.11, %367 ]
  %.91173 = phi i32 [ %325, %.lr.ph78 ], [ %.1113, %367 ]
  %indvars.iv3169 = phi i64 [ %188, %.lr.ph78 ], [ %indvars.iv.next32, %367 ]
  %329 = getelementptr inbounds i32, i32* %4, i64 %indvars.iv3169
  %330 = load i32, i32* %329, align 4
  %331 = sext i32 %.117 to i64
  %332 = getelementptr inbounds i32, i32* %0, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = icmp ne i32 %330, %333
  br i1 %334, label %335, label %366

335:                                              ; preds = %328
  %336 = icmp eq i32 %15, 0
  br i1 %336, label %337, label %341

337:                                              ; preds = %335
  %338 = getelementptr inbounds i32, i32* %4, i64 %indvars.iv3169
  %339 = load i32, i32* %338, align 4
  %340 = icmp slt i32 %339, %.015
  br i1 %340, label %353, label %341

341:                                              ; preds = %337, %335
  %342 = icmp ne i32 %15, 0
  br i1 %342, label %343, label %359

343:                                              ; preds = %341
  %344 = getelementptr inbounds i32, i32* %4, i64 %indvars.iv3169
  %345 = load i32, i32* %344, align 4
  %346 = mul nsw i32 %12, %345
  %347 = add nsw i32 %346, %15
  %348 = sub nsw i32 %347, 1
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds double, double* %10, i64 %349
  %351 = load double, double* %350, align 8
  %352 = fcmp olt double %351, %.0
  br i1 %352, label %353, label %359

353:                                              ; preds = %343, %337
  %.976 = phi i32 [ %.975, %343 ], [ %.975, %337 ]
  %.91174 = phi i32 [ %.91173, %343 ], [ %.91173, %337 ]
  %indvars.iv3170 = phi i64 [ %indvars.iv3169, %343 ], [ %indvars.iv3169, %337 ]
  %354 = getelementptr inbounds i32, i32* %4, i64 %indvars.iv3170
  %355 = load i32, i32* %354, align 4
  %356 = add nsw i32 %.91174, 1
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %3, i64 %357
  store i32 %355, i32* %358, align 4
  br label %365

359:                                              ; preds = %343, %341
  %360 = getelementptr inbounds i32, i32* %4, i64 %indvars.iv3169
  %361 = load i32, i32* %360, align 4
  %362 = add nsw i32 %.975, 1
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %3, i64 %363
  store i32 %361, i32* %364, align 4
  br label %365

365:                                              ; preds = %359, %353
  %indvars.iv3172 = phi i64 [ %indvars.iv3170, %353 ], [ %indvars.iv3169, %359 ]
  %.1012 = phi i32 [ %356, %353 ], [ %.91173, %359 ]
  %.10 = phi i32 [ %.976, %353 ], [ %362, %359 ]
  br label %366

366:                                              ; preds = %365, %328
  %indvars.iv3171 = phi i64 [ %indvars.iv3172, %365 ], [ %indvars.iv3169, %328 ]
  %.1113 = phi i32 [ %.1012, %365 ], [ %.91173, %328 ]
  %.11 = phi i32 [ %.10, %365 ], [ %.975, %328 ]
  br label %367

367:                                              ; preds = %366
  %indvars.iv.next32 = add i64 %indvars.iv3171, 1
  %368 = icmp sle i64 %indvars.iv.next32, %326
  br i1 %368, label %328, label %._crit_edge79

._crit_edge79:                                    ; preds = %367
  %split80 = phi i32 [ %.1113, %367 ]
  %split81 = phi i32 [ %.11, %367 ]
  br label %369

369:                                              ; preds = %._crit_edge79, %324
  %.911.lcssa = phi i32 [ %split80, %._crit_edge79 ], [ %325, %324 ]
  %.9.lcssa = phi i32 [ %split81, %._crit_edge79 ], [ %.117, %324 ]
  br label %370

370:                                              ; preds = %369, %322
  %.1214 = phi i32 [ %.911.lcssa, %369 ], [ %.68.lcssa, %322 ]
  %.12 = phi i32 [ %.9.lcssa, %369 ], [ %.6.lcssa, %322 ]
  %371 = icmp sge i32 %.1214, %6
  br i1 %371, label %372, label %390

372:                                              ; preds = %370
  %373 = load %struct.kdnode*, %struct.kdnode** %8, align 8
  %374 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %373, i32 0, i32 1
  store %struct.kdnode* null, %struct.kdnode** %374, align 8
  %375 = load %struct.kdnode*, %struct.kdnode** %8, align 8
  %376 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %375, i32 0, i32 2
  store %struct.kdnode* null, %struct.kdnode** %376, align 8
  %377 = load %struct.kdnode*, %struct.kdnode** %8, align 8
  %378 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %377, i32 1
  store %struct.kdnode* %378, %struct.kdnode** %8, align 8
  %379 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i32 0, i32 1
  store %struct.kdnode* %377, %struct.kdnode** %379, align 8
  %380 = icmp eq i32 %12, 4
  br i1 %380, label %381, label %385

381:                                              ; preds = %372
  %382 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i32 0, i32 1
  %383 = load %struct.kdnode*, %struct.kdnode** %382, align 8
  %384 = add nsw i32 %15, 1
  call void @buildkdtree(i32* %5, i32* %1, i32* %2, i32* %3, i32* %0, i32* %4, i32 %6, i32 %.1214, %struct.kdnode** %8, %struct.kdnode* %383, double* %10, i32 %384, i32 %12)
  br label %389

385:                                              ; preds = %372
  %386 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i32 0, i32 1
  %387 = load %struct.kdnode*, %struct.kdnode** %386, align 8
  %388 = add nsw i32 %15, 1
  call void @buildkdtree(i32* %5, i32* %1, i32* %2, i32* %0, i32* %4, i32* %3, i32 %6, i32 %.1214, %struct.kdnode** %8, %struct.kdnode* %387, double* %10, i32 %388, i32 %12)
  br label %389

389:                                              ; preds = %385, %381
  br label %390

390:                                              ; preds = %389, %370
  %391 = icmp sgt i32 %.12, %.117
  br i1 %391, label %392, label %412

392:                                              ; preds = %390
  %393 = load %struct.kdnode*, %struct.kdnode** %8, align 8
  %394 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %393, i32 0, i32 1
  store %struct.kdnode* null, %struct.kdnode** %394, align 8
  %395 = load %struct.kdnode*, %struct.kdnode** %8, align 8
  %396 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %395, i32 0, i32 2
  store %struct.kdnode* null, %struct.kdnode** %396, align 8
  %397 = load %struct.kdnode*, %struct.kdnode** %8, align 8
  %398 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %397, i32 1
  store %struct.kdnode* %398, %struct.kdnode** %8, align 8
  %399 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i32 0, i32 2
  store %struct.kdnode* %397, %struct.kdnode** %399, align 8
  %400 = icmp eq i32 %12, 4
  br i1 %400, label %401, label %406

401:                                              ; preds = %392
  %402 = add nsw i32 %.117, 1
  %403 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i32 0, i32 2
  %404 = load %struct.kdnode*, %struct.kdnode** %403, align 8
  %405 = add nsw i32 %15, 1
  call void @buildkdtree(i32* %5, i32* %1, i32* %2, i32* %3, i32* %0, i32* %4, i32 %402, i32 %7, %struct.kdnode** %8, %struct.kdnode* %404, double* %10, i32 %405, i32 %12)
  br label %411

406:                                              ; preds = %392
  %407 = add nsw i32 %.117, 1
  %408 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %9, i32 0, i32 2
  %409 = load %struct.kdnode*, %struct.kdnode** %408, align 8
  %410 = add nsw i32 %15, 1
  call void @buildkdtree(i32* %5, i32* %1, i32* %2, i32* %0, i32* %4, i32* %3, i32 %407, i32 %7, %struct.kdnode** %8, %struct.kdnode* %409, double* %10, i32 %410, i32 %12)
  br label %411

411:                                              ; preds = %406, %401
  br label %412

412:                                              ; preds = %411, %390
  br label %413

413:                                              ; preds = %412, %141
  br label %414

414:                                              ; preds = %413, %17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @searchkdtree(%struct.kdnode* %0, double* %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7, double %8, double %9, i32 %10, i32* %11) #0 {
  %13 = add nsw i32 %10, 1
  %14 = srem i32 %2, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 2
  %18 = load %struct.kdnode*, %struct.kdnode** %17, align 8
  %19 = icmp ne %struct.kdnode* %18, null
  br i1 %19, label %43, label %20

20:                                               ; preds = %16, %12
  %21 = icmp ne i32 %14, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 2
  %24 = load %struct.kdnode*, %struct.kdnode** %23, align 8
  %25 = icmp ne %struct.kdnode* %24, null
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = mul nsw i32 %10, %3
  %28 = add nsw i32 %27, %14
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, double* %1, i64 %30
  %32 = load double, double* %31, align 8
  %33 = fadd double %32, %8
  %34 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %10, %35
  %37 = add nsw i32 %36, %14
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, double* %1, i64 %39
  %41 = load double, double* %40, align 8
  %42 = fcmp oge double %33, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %26, %16
  %44 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 2
  %45 = load %struct.kdnode*, %struct.kdnode** %44, align 8
  %46 = add nsw i32 %14, 1
  call void @searchkdtree(%struct.kdnode* %45, double* %1, i32 %46, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7, double %8, double %9, i32 %10, i32* %11)
  br label %47

47:                                               ; preds = %43, %26, %22, %20
  %48 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %3, %49
  br i1 %50, label %51, label %149

51:                                               ; preds = %47
  %52 = sext i32 %3 to i64
  %53 = getelementptr inbounds i32, i32* %11, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %11, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %149, label %63

63:                                               ; preds = %56, %51
  %64 = mul nsw i32 %10, %3
  %65 = add nsw i32 %64, 0
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %1, i64 %66
  %68 = load double, double* %67, align 8
  %69 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 %10, %70
  %72 = add nsw i32 %71, 0
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %1, i64 %73
  %75 = load double, double* %74, align 8
  %76 = fsub double %68, %75
  %77 = mul nsw i32 %10, %3
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds double, double* %1, i64 %79
  %81 = load double, double* %80, align 8
  %82 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 %10, %83
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds double, double* %1, i64 %86
  %88 = load double, double* %87, align 8
  %89 = fsub double %81, %88
  %90 = mul nsw i32 %10, %3
  %91 = add nsw i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds double, double* %1, i64 %92
  %94 = load double, double* %93, align 8
  %95 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = mul nsw i32 %10, %96
  %98 = add nsw i32 %97, 2
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds double, double* %1, i64 %99
  %101 = load double, double* %100, align 8
  %102 = fsub double %94, %101
  %103 = fmul double %76, %76
  %104 = fmul double %89, %89
  %105 = fadd double %103, %104
  %106 = fmul double %102, %102
  %107 = fadd double %105, %106
  %108 = icmp eq i32 %10, 4
  br i1 %108, label %109, label %125

109:                                              ; preds = %63
  %110 = mul nsw i32 %10, %3
  %111 = add nsw i32 %110, 3
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds double, double* %1, i64 %112
  %114 = load double, double* %113, align 8
  %115 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = mul nsw i32 %10, %116
  %118 = add nsw i32 %117, 3
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds double, double* %1, i64 %119
  %121 = load double, double* %120, align 8
  %122 = fsub double %114, %121
  %123 = fmul double %122, %122
  %124 = fadd double %107, %123
  br label %125

125:                                              ; preds = %109, %63
  %.0 = phi double [ %124, %109 ], [ %107, %63 ]
  %126 = fcmp olt double %.0, %9
  br i1 %126, label %127, label %148

127:                                              ; preds = %125
  %128 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %129, %3
  br i1 %130, label %131, label %139

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %6, i64 %135
  store i32 %133, i32* %136, align 4
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %4, align 4
  br label %147

139:                                              ; preds = %127
  %140 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %7, i64 %143
  store i32 %141, i32* %144, align 4
  %145 = load i32, i32* %5, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %139, %131
  br label %148

148:                                              ; preds = %147, %125
  br label %149

149:                                              ; preds = %148, %56, %47
  %150 = icmp eq i32 %14, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %149
  %152 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 1
  %153 = load %struct.kdnode*, %struct.kdnode** %152, align 8
  %154 = icmp ne %struct.kdnode* %153, null
  br i1 %154, label %178, label %155

155:                                              ; preds = %151, %149
  %156 = icmp ne i32 %14, 0
  br i1 %156, label %157, label %182

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 1
  %159 = load %struct.kdnode*, %struct.kdnode** %158, align 8
  %160 = icmp ne %struct.kdnode* %159, null
  br i1 %160, label %161, label %182

161:                                              ; preds = %157
  %162 = mul nsw i32 %10, %3
  %163 = add nsw i32 %162, %14
  %164 = sub nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds double, double* %1, i64 %165
  %167 = load double, double* %166, align 8
  %168 = fsub double %167, %8
  %169 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = mul nsw i32 %10, %170
  %172 = add nsw i32 %171, %14
  %173 = sub nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds double, double* %1, i64 %174
  %176 = load double, double* %175, align 8
  %177 = fcmp olt double %168, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %161, %151
  %179 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %0, i32 0, i32 1
  %180 = load %struct.kdnode*, %struct.kdnode** %179, align 8
  %181 = add nsw i32 %14, 1
  call void @searchkdtree(%struct.kdnode* %180, double* %1, i32 %181, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7, double %8, double %9, i32 %10, i32* %11)
  br label %182

182:                                              ; preds = %178, %161, %157, %155
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heapsort_pairs(i32* %0, i32 %1) #0 {
  %3 = sdiv i32 %1, 2
  %4 = icmp sge i32 %3, 1
  br i1 %4, label %.lr.ph, label %9

.lr.ph:                                           ; preds = %2
  br label %5

5:                                                ; preds = %.lr.ph, %6
  %.02 = phi i32 [ %3, %.lr.ph ], [ %7, %6 ]
  call void @downheap_pairs(i32* %0, i32 %1, i32 %.02)
  br label %6

6:                                                ; preds = %5
  %7 = add nsw i32 %.02, -1
  %8 = icmp sge i32 %7, 1
  br i1 %8, label %5, label %._crit_edge

._crit_edge:                                      ; preds = %6
  br label %9

9:                                                ; preds = %._crit_edge, %2
  %10 = sext i32 %1 to i64
  %11 = icmp sgt i64 %10, 1
  br i1 %11, label %.lr.ph5, label %21

.lr.ph5:                                          ; preds = %9
  br label %12

12:                                               ; preds = %.lr.ph5, %12
  %indvars.iv3 = phi i64 [ %10, %.lr.ph5 ], [ %indvars.iv.next, %12 ]
  %13 = getelementptr inbounds i32, i32* %0, i64 0
  %14 = load i32, i32* %13, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv3, -1
  %15 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %0, i64 0
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next
  store i32 %14, i32* %18, align 4
  %19 = trunc i64 %indvars.iv.next to i32
  call void @downheap_pairs(i32* %0, i32 %19, i32 1)
  %20 = icmp sgt i64 %indvars.iv.next, 1
  br i1 %20, label %12, label %._crit_edge6

._crit_edge6:                                     ; preds = %12
  br label %21

21:                                               ; preds = %._crit_edge6, %9
  ret void
}

declare dso_local void @free_ivector(i32*, i32, i32) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @downheap_index(i32* %0, i32 %1, i32 %2, double* %3, i32 %4, i32 %5) #0 {
  %7 = sub nsw i32 %2, 1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = sdiv i32 %1, 2
  %12 = icmp sle i32 %2, %11
  br i1 %12, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %6
  br label %13

13:                                               ; preds = %.lr.ph, %54
  %.014 = phi i32 [ %2, %.lr.ph ], [ %.0, %54 ]
  %14 = add nsw i32 %.014, %.014
  %15 = icmp slt i32 %14, %1
  br i1 %15, label %16, label %37

16:                                               ; preds = %13
  %17 = sub nsw i32 %14, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %5, %20
  %22 = add nsw i32 %21, %4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %3, i64 %23
  %25 = load double, double* %24, align 8
  %26 = sext i32 %14 to i64
  %27 = getelementptr inbounds i32, i32* %0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %5, %28
  %30 = add nsw i32 %29, %4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %3, i64 %31
  %33 = load double, double* %32, align 8
  %34 = fcmp olt double %25, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %16
  %36 = add nsw i32 %14, 1
  br label %37

37:                                               ; preds = %35, %16, %13
  %.0 = phi i32 [ %36, %35 ], [ %14, %16 ], [ %14, %13 ]
  %38 = mul nsw i32 %5, %10
  %39 = add nsw i32 %38, %4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, double* %3, i64 %40
  %42 = load double, double* %41, align 8
  %43 = sub nsw i32 %.0, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %5, %46
  %48 = add nsw i32 %47, %4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, double* %3, i64 %49
  %51 = load double, double* %50, align 8
  %52 = fcmp oge double %42, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %37
  %.01.lcssa2 = phi i32 [ %.014, %37 ]
  br label %63

54:                                               ; preds = %37
  %55 = sub nsw i32 %.0, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %.014, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %0, i64 %60
  store i32 %58, i32* %61, align 4
  %62 = icmp sle i32 %.0, %11
  br i1 %62, label %13, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %54
  %split = phi i32 [ %.0, %54 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %6
  %.01.lcssa = phi i32 [ %split, %..loopexit_crit_edge ], [ %2, %6 ]
  br label %63

63:                                               ; preds = %.loopexit, %53
  %.013 = phi i32 [ %.01.lcssa, %.loopexit ], [ %.01.lcssa2, %53 ]
  %64 = sub nsw i32 %.013, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %0, i64 %65
  store i32 %10, i32* %66, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @downheap_pairs(i32* %0, i32 %1, i32 %2) #0 {
  %4 = sub nsw i32 %2, 1
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i32, i32* %0, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = sdiv i32 %1, 2
  %9 = icmp sle i32 %2, %8
  br i1 %9, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %3
  br label %10

10:                                               ; preds = %.lr.ph, %31
  %.014 = phi i32 [ %2, %.lr.ph ], [ %.0, %31 ]
  %11 = add nsw i32 %.014, %.014
  %12 = icmp slt i32 %11, %1
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = sub nsw i32 %11, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %11 to i64
  %19 = getelementptr inbounds i32, i32* %0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = add nsw i32 %11, 1
  br label %24

24:                                               ; preds = %22, %13, %10
  %.0 = phi i32 [ %23, %22 ], [ %11, %13 ], [ %11, %10 ]
  %25 = sub nsw i32 %.0, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %7, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  %.01.lcssa2 = phi i32 [ %.014, %24 ]
  br label %40

31:                                               ; preds = %24
  %32 = sub nsw i32 %.0, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %.014, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %0, i64 %37
  store i32 %35, i32* %38, align 4
  %39 = icmp sle i32 %.0, %8
  br i1 %39, label %10, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %31
  %split = phi i32 [ %.0, %31 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %3
  %.01.lcssa = phi i32 [ %split, %..loopexit_crit_edge ], [ %2, %3 ]
  br label %40

40:                                               ; preds = %.loopexit, %30
  %.013 = phi i32 [ %.01.lcssa, %.loopexit ], [ %.01.lcssa2, %30 ]
  %41 = sub nsw i32 %.013, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %0, i64 %42
  store i32 %7, i32* %43, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
