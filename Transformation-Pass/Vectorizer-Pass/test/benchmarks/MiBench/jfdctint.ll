; ModuleID = 'jfdctint.c'
source_filename = "jfdctint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @jpeg_fdct_islow(ptr nocapture noundef %data) local_unnamed_addr #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %ctr.0340 = phi i32 [ 7, %entry ], [ %dec, %for.body ]
  %dataptr.0339 = phi ptr [ %data, %entry ], [ %add.ptr, %for.body ]
  %0 = load i32, ptr %dataptr.0339, align 4, !tbaa !5
  %arrayidx1 = getelementptr inbounds i32, ptr %dataptr.0339, i64 7
  %1 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %add = add nsw i32 %1, %0
  %conv = sext i32 %add to i64
  %sub = sub nsw i32 %0, %1
  %conv4 = sext i32 %sub to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %dataptr.0339, i64 1
  %2 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %arrayidx6 = getelementptr inbounds i32, ptr %dataptr.0339, i64 6
  %3 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %add7 = add nsw i32 %3, %2
  %conv8 = sext i32 %add7 to i64
  %sub11 = sub nsw i32 %2, %3
  %conv12 = sext i32 %sub11 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %dataptr.0339, i64 2
  %4 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %arrayidx14 = getelementptr inbounds i32, ptr %dataptr.0339, i64 5
  %5 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %add15 = add nsw i32 %5, %4
  %conv16 = sext i32 %add15 to i64
  %sub19 = sub nsw i32 %4, %5
  %conv20 = sext i32 %sub19 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %dataptr.0339, i64 3
  %6 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %arrayidx22 = getelementptr inbounds i32, ptr %dataptr.0339, i64 4
  %7 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %add23 = add nsw i32 %7, %6
  %conv24 = sext i32 %add23 to i64
  %sub27 = sub nsw i32 %6, %7
  %conv28 = sext i32 %sub27 to i64
  %add29 = add nsw i64 %conv24, %conv
  %sub30 = sub nsw i64 %conv, %conv24
  %add31 = add nsw i64 %conv16, %conv8
  %sub32 = sub nsw i64 %conv8, %conv16
  %add33 = add nsw i64 %add29, %add31
  %add33.tr = trunc i64 %add33 to i32
  %conv34 = shl i32 %add33.tr, 2
  store i32 %conv34, ptr %dataptr.0339, align 4, !tbaa !5
  %sub36 = sub nsw i64 %add29, %add31
  %sub36.tr = trunc i64 %sub36 to i32
  %conv38 = shl i32 %sub36.tr, 2
  store i32 %conv38, ptr %arrayidx22, align 4, !tbaa !5
  %add40 = add nsw i64 %sub30, %sub32
  %mul = mul nsw i64 %add40, 4433
  %mul41 = mul nsw i64 %sub30, 6270
  %add42 = add nsw i64 %mul, 1024
  %add43 = add nsw i64 %add42, %mul41
  %8 = lshr i64 %add43, 11
  %conv44 = trunc i64 %8 to i32
  store i32 %conv44, ptr %arrayidx13, align 4, !tbaa !5
  %mul46 = mul i64 %sub32, 8796093007071
  %add48 = add i64 %add42, %mul46
  %9 = lshr i64 %add48, 11
  %conv50 = trunc i64 %9 to i32
  store i32 %conv50, ptr %arrayidx6, align 4, !tbaa !5
  %add52 = add nsw i64 %conv28, %conv4
  %add53 = add nsw i64 %conv20, %conv12
  %add54 = add nsw i64 %conv28, %conv12
  %add55 = add nsw i64 %conv20, %conv4
  %add56 = add nsw i64 %add54, %add55
  %mul57 = mul nsw i64 %add56, 9633
  %mul58 = mul nsw i64 %conv28, 2446
  %mul59 = mul nsw i64 %conv20, 16819
  %mul60 = mul nsw i64 %conv12, 25172
  %mul61 = mul nsw i64 %conv4, 12299
  %mul62 = mul nsw i64 %add52, -7373
  %mul63 = mul nsw i64 %add53, -20995
  %mul64 = mul nsw i64 %add54, -16069
  %mul65 = mul nsw i64 %add55, -3196
  %add66 = add nsw i64 %mul57, %mul64
  %add67 = add nsw i64 %mul57, %mul65
  %add68 = add nsw i64 %mul62, 1024
  %add69 = add nsw i64 %add68, %mul58
  %add70 = add nsw i64 %add69, %add66
  %10 = lshr i64 %add70, 11
  %conv72 = trunc i64 %10 to i32
  store i32 %conv72, ptr %arrayidx1, align 4, !tbaa !5
  %add74 = add nsw i64 %mul63, 1024
  %add75 = add nsw i64 %add74, %mul59
  %add76 = add nsw i64 %add75, %add67
  %11 = lshr i64 %add76, 11
  %conv78 = trunc i64 %11 to i32
  store i32 %conv78, ptr %arrayidx14, align 4, !tbaa !5
  %add81 = add nsw i64 %add74, %mul60
  %add82 = add nsw i64 %add81, %add66
  %12 = lshr i64 %add82, 11
  %conv84 = trunc i64 %12 to i32
  store i32 %conv84, ptr %arrayidx21, align 4, !tbaa !5
  %add87 = add nsw i64 %add68, %mul61
  %add88 = add nsw i64 %add87, %add67
  %13 = lshr i64 %add88, 11
  %conv90 = trunc i64 %13 to i32
  store i32 %conv90, ptr %arrayidx5, align 4, !tbaa !5
  %add.ptr = getelementptr inbounds i32, ptr %dataptr.0339, i64 8
  %dec = add nsw i32 %ctr.0340, -1
  %cmp.not = icmp eq i32 %ctr.0340, 0
  br i1 %cmp.not, label %vector.body, label %for.body, !llvm.loop !9

vector.body:                                      ; preds = %for.body
  %wide.load = load <4 x i32>, ptr %data, align 4, !tbaa !5
  %14 = getelementptr inbounds i32, ptr %data, i64 56
  %wide.load344 = load <4 x i32>, ptr %14, align 4, !tbaa !5
  %15 = add nsw <4 x i32> %wide.load344, %wide.load
  %16 = sext <4 x i32> %15 to <4 x i64>
  %17 = sub nsw <4 x i32> %wide.load, %wide.load344
  %18 = sext <4 x i32> %17 to <4 x i64>
  %19 = getelementptr inbounds i32, ptr %data, i64 8
  %wide.load345 = load <4 x i32>, ptr %19, align 4, !tbaa !5
  %20 = getelementptr inbounds i32, ptr %data, i64 48
  %wide.load346 = load <4 x i32>, ptr %20, align 4, !tbaa !5
  %21 = add nsw <4 x i32> %wide.load346, %wide.load345
  %22 = sext <4 x i32> %21 to <4 x i64>
  %23 = sub nsw <4 x i32> %wide.load345, %wide.load346
  %24 = sext <4 x i32> %23 to <4 x i64>
  %25 = getelementptr inbounds i32, ptr %data, i64 16
  %wide.load347 = load <4 x i32>, ptr %25, align 4, !tbaa !5
  %26 = getelementptr inbounds i32, ptr %data, i64 40
  %wide.load348 = load <4 x i32>, ptr %26, align 4, !tbaa !5
  %27 = add nsw <4 x i32> %wide.load348, %wide.load347
  %28 = sext <4 x i32> %27 to <4 x i64>
  %29 = sub nsw <4 x i32> %wide.load347, %wide.load348
  %30 = sext <4 x i32> %29 to <4 x i64>
  %31 = getelementptr inbounds i32, ptr %data, i64 24
  %wide.load349 = load <4 x i32>, ptr %31, align 4, !tbaa !5
  %32 = getelementptr inbounds i32, ptr %data, i64 32
  %wide.load350 = load <4 x i32>, ptr %32, align 4, !tbaa !5
  %33 = add nsw <4 x i32> %wide.load350, %wide.load349
  %34 = sext <4 x i32> %33 to <4 x i64>
  %35 = sub nsw <4 x i32> %wide.load349, %wide.load350
  %36 = sext <4 x i32> %35 to <4 x i64>
  %37 = add nsw <4 x i64> %34, %16
  %38 = sub nsw <4 x i64> %16, %34
  %39 = add nsw <4 x i64> %28, %22
  %40 = sub nsw <4 x i64> %22, %28
  %41 = add nsw <4 x i64> %39, <i64 2, i64 2, i64 2, i64 2>
  %42 = add nsw <4 x i64> %41, %37
  %43 = lshr <4 x i64> %42, <i64 2, i64 2, i64 2, i64 2>
  %44 = trunc <4 x i64> %43 to <4 x i32>
  store <4 x i32> %44, ptr %data, align 4, !tbaa !5
  %45 = sub nsw <4 x i64> <i64 2, i64 2, i64 2, i64 2>, %39
  %46 = add nsw <4 x i64> %45, %37
  %47 = lshr <4 x i64> %46, <i64 2, i64 2, i64 2, i64 2>
  %48 = trunc <4 x i64> %47 to <4 x i32>
  store <4 x i32> %48, ptr %32, align 4, !tbaa !5
  %49 = add nsw <4 x i64> %38, %40
  %50 = mul nsw <4 x i64> %49, <i64 4433, i64 4433, i64 4433, i64 4433>
  %51 = mul nsw <4 x i64> %38, <i64 6270, i64 6270, i64 6270, i64 6270>
  %52 = add nsw <4 x i64> %50, <i64 16384, i64 16384, i64 16384, i64 16384>
  %53 = add nsw <4 x i64> %52, %51
  %54 = lshr <4 x i64> %53, <i64 15, i64 15, i64 15, i64 15>
  %55 = trunc <4 x i64> %54 to <4 x i32>
  store <4 x i32> %55, ptr %25, align 4, !tbaa !5
  %56 = mul <4 x i64> %40, <i64 140737488340191, i64 140737488340191, i64 140737488340191, i64 140737488340191>
  %57 = add <4 x i64> %52, %56
  %58 = lshr <4 x i64> %57, <i64 15, i64 15, i64 15, i64 15>
  %59 = trunc <4 x i64> %58 to <4 x i32>
  store <4 x i32> %59, ptr %20, align 4, !tbaa !5
  %60 = add nsw <4 x i64> %36, %18
  %61 = add nsw <4 x i64> %30, %24
  %62 = add nsw <4 x i64> %36, %24
  %63 = add nsw <4 x i64> %30, %18
  %64 = add nsw <4 x i64> %62, %63
  %65 = mul nsw <4 x i64> %64, <i64 9633, i64 9633, i64 9633, i64 9633>
  %66 = mul nsw <4 x i64> %36, <i64 2446, i64 2446, i64 2446, i64 2446>
  %67 = mul nsw <4 x i64> %30, <i64 16819, i64 16819, i64 16819, i64 16819>
  %68 = mul nsw <4 x i64> %24, <i64 25172, i64 25172, i64 25172, i64 25172>
  %69 = mul nsw <4 x i64> %18, <i64 12299, i64 12299, i64 12299, i64 12299>
  %70 = mul nsw <4 x i64> %60, <i64 -7373, i64 -7373, i64 -7373, i64 -7373>
  %71 = mul nsw <4 x i64> %61, <i64 -20995, i64 -20995, i64 -20995, i64 -20995>
  %72 = mul nsw <4 x i64> %62, <i64 -16069, i64 -16069, i64 -16069, i64 -16069>
  %73 = mul nsw <4 x i64> %63, <i64 -3196, i64 -3196, i64 -3196, i64 -3196>
  %74 = add nsw <4 x i64> %65, %72
  %75 = add nsw <4 x i64> %65, %73
  %76 = add nsw <4 x i64> %70, <i64 16384, i64 16384, i64 16384, i64 16384>
  %77 = add nsw <4 x i64> %76, %66
  %78 = add nsw <4 x i64> %77, %74
  %79 = lshr <4 x i64> %78, <i64 15, i64 15, i64 15, i64 15>
  %80 = trunc <4 x i64> %79 to <4 x i32>
  store <4 x i32> %80, ptr %14, align 4, !tbaa !5
  %81 = add nsw <4 x i64> %71, <i64 16384, i64 16384, i64 16384, i64 16384>
  %82 = add nsw <4 x i64> %81, %67
  %83 = add nsw <4 x i64> %82, %75
  %84 = lshr <4 x i64> %83, <i64 15, i64 15, i64 15, i64 15>
  %85 = trunc <4 x i64> %84 to <4 x i32>
  store <4 x i32> %85, ptr %26, align 4, !tbaa !5
  %86 = add nsw <4 x i64> %81, %68
  %87 = add nsw <4 x i64> %86, %74
  %88 = lshr <4 x i64> %87, <i64 15, i64 15, i64 15, i64 15>
  %89 = trunc <4 x i64> %88 to <4 x i32>
  store <4 x i32> %89, ptr %31, align 4, !tbaa !5
  %90 = add nsw <4 x i64> %76, %69
  %91 = add nsw <4 x i64> %90, %75
  %92 = lshr <4 x i64> %91, <i64 15, i64 15, i64 15, i64 15>
  %93 = trunc <4 x i64> %92 to <4 x i32>
  store <4 x i32> %93, ptr %19, align 4, !tbaa !5
  %next.gep.1 = getelementptr i8, ptr %data, i64 16
  %wide.load.1 = load <4 x i32>, ptr %next.gep.1, align 4, !tbaa !5
  %94 = getelementptr inbounds i32, ptr %next.gep.1, i64 56
  %wide.load344.1 = load <4 x i32>, ptr %94, align 4, !tbaa !5
  %95 = add nsw <4 x i32> %wide.load344.1, %wide.load.1
  %96 = sext <4 x i32> %95 to <4 x i64>
  %97 = sub nsw <4 x i32> %wide.load.1, %wide.load344.1
  %98 = sext <4 x i32> %97 to <4 x i64>
  %99 = getelementptr inbounds i32, ptr %next.gep.1, i64 8
  %wide.load345.1 = load <4 x i32>, ptr %99, align 4, !tbaa !5
  %100 = getelementptr inbounds i32, ptr %next.gep.1, i64 48
  %wide.load346.1 = load <4 x i32>, ptr %100, align 4, !tbaa !5
  %101 = add nsw <4 x i32> %wide.load346.1, %wide.load345.1
  %102 = sext <4 x i32> %101 to <4 x i64>
  %103 = sub nsw <4 x i32> %wide.load345.1, %wide.load346.1
  %104 = sext <4 x i32> %103 to <4 x i64>
  %105 = getelementptr inbounds i32, ptr %next.gep.1, i64 16
  %wide.load347.1 = load <4 x i32>, ptr %105, align 4, !tbaa !5
  %106 = getelementptr inbounds i32, ptr %next.gep.1, i64 40
  %wide.load348.1 = load <4 x i32>, ptr %106, align 4, !tbaa !5
  %107 = add nsw <4 x i32> %wide.load348.1, %wide.load347.1
  %108 = sext <4 x i32> %107 to <4 x i64>
  %109 = sub nsw <4 x i32> %wide.load347.1, %wide.load348.1
  %110 = sext <4 x i32> %109 to <4 x i64>
  %111 = getelementptr inbounds i32, ptr %next.gep.1, i64 24
  %wide.load349.1 = load <4 x i32>, ptr %111, align 4, !tbaa !5
  %112 = getelementptr inbounds i32, ptr %next.gep.1, i64 32
  %wide.load350.1 = load <4 x i32>, ptr %112, align 4, !tbaa !5
  %113 = add nsw <4 x i32> %wide.load350.1, %wide.load349.1
  %114 = sext <4 x i32> %113 to <4 x i64>
  %115 = sub nsw <4 x i32> %wide.load349.1, %wide.load350.1
  %116 = sext <4 x i32> %115 to <4 x i64>
  %117 = add nsw <4 x i64> %114, %96
  %118 = sub nsw <4 x i64> %96, %114
  %119 = add nsw <4 x i64> %108, %102
  %120 = sub nsw <4 x i64> %102, %108
  %121 = add nsw <4 x i64> %119, <i64 2, i64 2, i64 2, i64 2>
  %122 = add nsw <4 x i64> %121, %117
  %123 = lshr <4 x i64> %122, <i64 2, i64 2, i64 2, i64 2>
  %124 = trunc <4 x i64> %123 to <4 x i32>
  store <4 x i32> %124, ptr %next.gep.1, align 4, !tbaa !5
  %125 = sub nsw <4 x i64> <i64 2, i64 2, i64 2, i64 2>, %119
  %126 = add nsw <4 x i64> %125, %117
  %127 = lshr <4 x i64> %126, <i64 2, i64 2, i64 2, i64 2>
  %128 = trunc <4 x i64> %127 to <4 x i32>
  store <4 x i32> %128, ptr %112, align 4, !tbaa !5
  %129 = add nsw <4 x i64> %118, %120
  %130 = mul nsw <4 x i64> %129, <i64 4433, i64 4433, i64 4433, i64 4433>
  %131 = mul nsw <4 x i64> %118, <i64 6270, i64 6270, i64 6270, i64 6270>
  %132 = add nsw <4 x i64> %130, <i64 16384, i64 16384, i64 16384, i64 16384>
  %133 = add nsw <4 x i64> %132, %131
  %134 = lshr <4 x i64> %133, <i64 15, i64 15, i64 15, i64 15>
  %135 = trunc <4 x i64> %134 to <4 x i32>
  store <4 x i32> %135, ptr %105, align 4, !tbaa !5
  %136 = mul <4 x i64> %120, <i64 140737488340191, i64 140737488340191, i64 140737488340191, i64 140737488340191>
  %137 = add <4 x i64> %132, %136
  %138 = lshr <4 x i64> %137, <i64 15, i64 15, i64 15, i64 15>
  %139 = trunc <4 x i64> %138 to <4 x i32>
  store <4 x i32> %139, ptr %100, align 4, !tbaa !5
  %140 = add nsw <4 x i64> %116, %98
  %141 = add nsw <4 x i64> %110, %104
  %142 = add nsw <4 x i64> %116, %104
  %143 = add nsw <4 x i64> %110, %98
  %144 = add nsw <4 x i64> %142, %143
  %145 = mul nsw <4 x i64> %144, <i64 9633, i64 9633, i64 9633, i64 9633>
  %146 = mul nsw <4 x i64> %116, <i64 2446, i64 2446, i64 2446, i64 2446>
  %147 = mul nsw <4 x i64> %110, <i64 16819, i64 16819, i64 16819, i64 16819>
  %148 = mul nsw <4 x i64> %104, <i64 25172, i64 25172, i64 25172, i64 25172>
  %149 = mul nsw <4 x i64> %98, <i64 12299, i64 12299, i64 12299, i64 12299>
  %150 = mul nsw <4 x i64> %140, <i64 -7373, i64 -7373, i64 -7373, i64 -7373>
  %151 = mul nsw <4 x i64> %141, <i64 -20995, i64 -20995, i64 -20995, i64 -20995>
  %152 = mul nsw <4 x i64> %142, <i64 -16069, i64 -16069, i64 -16069, i64 -16069>
  %153 = mul nsw <4 x i64> %143, <i64 -3196, i64 -3196, i64 -3196, i64 -3196>
  %154 = add nsw <4 x i64> %145, %152
  %155 = add nsw <4 x i64> %145, %153
  %156 = add nsw <4 x i64> %150, <i64 16384, i64 16384, i64 16384, i64 16384>
  %157 = add nsw <4 x i64> %156, %146
  %158 = add nsw <4 x i64> %157, %154
  %159 = lshr <4 x i64> %158, <i64 15, i64 15, i64 15, i64 15>
  %160 = trunc <4 x i64> %159 to <4 x i32>
  store <4 x i32> %160, ptr %94, align 4, !tbaa !5
  %161 = add nsw <4 x i64> %151, <i64 16384, i64 16384, i64 16384, i64 16384>
  %162 = add nsw <4 x i64> %161, %147
  %163 = add nsw <4 x i64> %162, %155
  %164 = lshr <4 x i64> %163, <i64 15, i64 15, i64 15, i64 15>
  %165 = trunc <4 x i64> %164 to <4 x i32>
  store <4 x i32> %165, ptr %106, align 4, !tbaa !5
  %166 = add nsw <4 x i64> %161, %148
  %167 = add nsw <4 x i64> %166, %154
  %168 = lshr <4 x i64> %167, <i64 15, i64 15, i64 15, i64 15>
  %169 = trunc <4 x i64> %168 to <4 x i32>
  store <4 x i32> %169, ptr %111, align 4, !tbaa !5
  %170 = add nsw <4 x i64> %156, %149
  %171 = add nsw <4 x i64> %170, %155
  %172 = lshr <4 x i64> %171, <i64 15, i64 15, i64 15, i64 15>
  %173 = trunc <4 x i64> %172 to <4 x i32>
  store <4 x i32> %173, ptr %99, align 4, !tbaa !5
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
