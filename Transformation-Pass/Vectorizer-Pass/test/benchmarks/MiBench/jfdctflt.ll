; ModuleID = 'jfdctflt.c'
source_filename = "jfdctflt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @jpeg_fdct_float(ptr nocapture noundef %data) local_unnamed_addr #0 {
entry:
  %wide.vec = load <32 x float>, ptr %data, align 4, !tbaa !5
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  %strided.vec240 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <4 x i32> <i32 1, i32 9, i32 17, i32 25>
  %strided.vec241 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <4 x i32> <i32 2, i32 10, i32 18, i32 26>
  %strided.vec242 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <4 x i32> <i32 3, i32 11, i32 19, i32 27>
  %strided.vec243 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <4 x i32> <i32 4, i32 12, i32 20, i32 28>
  %strided.vec244 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <4 x i32> <i32 5, i32 13, i32 21, i32 29>
  %strided.vec245 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <4 x i32> <i32 6, i32 14, i32 22, i32 30>
  %strided.vec246 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <4 x i32> <i32 7, i32 15, i32 23, i32 31>
  %0 = fadd <4 x float> %strided.vec, %strided.vec246
  %1 = fsub <4 x float> %strided.vec, %strided.vec246
  %2 = fadd <4 x float> %strided.vec240, %strided.vec245
  %3 = fsub <4 x float> %strided.vec240, %strided.vec245
  %4 = fadd <4 x float> %strided.vec241, %strided.vec244
  %5 = fsub <4 x float> %strided.vec241, %strided.vec244
  %6 = fadd <4 x float> %strided.vec242, %strided.vec243
  %7 = fsub <4 x float> %strided.vec242, %strided.vec243
  %8 = fadd <4 x float> %0, %6
  %9 = fsub <4 x float> %0, %6
  %10 = fadd <4 x float> %2, %4
  %11 = fsub <4 x float> %2, %4
  %12 = fadd <4 x float> %10, %8
  %13 = fsub <4 x float> %8, %10
  %14 = fadd <4 x float> %11, %9
  %15 = fmul <4 x float> %14, <float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000>
  %16 = fadd <4 x float> %9, %15
  %17 = fsub <4 x float> %9, %15
  %18 = fadd <4 x float> %5, %7
  %19 = fadd <4 x float> %3, %5
  %20 = fadd <4 x float> %1, %3
  %21 = fsub <4 x float> %18, %20
  %22 = fmul <4 x float> %21, <float 0x3FD87DE2A0000000, float 0x3FD87DE2A0000000, float 0x3FD87DE2A0000000, float 0x3FD87DE2A0000000>
  %23 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %18, <4 x float> <float 0x3FE1517A80000000, float 0x3FE1517A80000000, float 0x3FE1517A80000000, float 0x3FE1517A80000000>, <4 x float> %22)
  %24 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %20, <4 x float> <float 0x3FF4E7AEA0000000, float 0x3FF4E7AEA0000000, float 0x3FF4E7AEA0000000, float 0x3FF4E7AEA0000000>, <4 x float> %22)
  %25 = fmul <4 x float> %19, <float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000>
  %26 = fadd <4 x float> %1, %25
  %27 = fsub <4 x float> %1, %25
  %28 = fadd <4 x float> %27, %23
  %29 = fsub <4 x float> %27, %23
  %30 = fadd <4 x float> %26, %24
  %31 = fsub <4 x float> %26, %24
  %32 = shufflevector <4 x float> %12, <4 x float> %30, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %33 = shufflevector <4 x float> %16, <4 x float> %29, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %34 = shufflevector <4 x float> %13, <4 x float> %28, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %35 = shufflevector <4 x float> %17, <4 x float> %31, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %36 = shufflevector <8 x float> %32, <8 x float> %33, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %37 = shufflevector <8 x float> %34, <8 x float> %35, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %36, <16 x float> %37, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %data, align 4, !tbaa !5
  %next.gep.1 = getelementptr i8, ptr %data, i64 128
  %wide.vec.1 = load <32 x float>, ptr %next.gep.1, align 4, !tbaa !5
  %strided.vec.1 = shufflevector <32 x float> %wide.vec.1, <32 x float> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  %strided.vec240.1 = shufflevector <32 x float> %wide.vec.1, <32 x float> poison, <4 x i32> <i32 1, i32 9, i32 17, i32 25>
  %strided.vec241.1 = shufflevector <32 x float> %wide.vec.1, <32 x float> poison, <4 x i32> <i32 2, i32 10, i32 18, i32 26>
  %strided.vec242.1 = shufflevector <32 x float> %wide.vec.1, <32 x float> poison, <4 x i32> <i32 3, i32 11, i32 19, i32 27>
  %strided.vec243.1 = shufflevector <32 x float> %wide.vec.1, <32 x float> poison, <4 x i32> <i32 4, i32 12, i32 20, i32 28>
  %strided.vec244.1 = shufflevector <32 x float> %wide.vec.1, <32 x float> poison, <4 x i32> <i32 5, i32 13, i32 21, i32 29>
  %strided.vec245.1 = shufflevector <32 x float> %wide.vec.1, <32 x float> poison, <4 x i32> <i32 6, i32 14, i32 22, i32 30>
  %strided.vec246.1 = shufflevector <32 x float> %wide.vec.1, <32 x float> poison, <4 x i32> <i32 7, i32 15, i32 23, i32 31>
  %38 = getelementptr inbounds float, ptr %next.gep.1, i64 7
  %39 = fadd <4 x float> %strided.vec.1, %strided.vec246.1
  %40 = fsub <4 x float> %strided.vec.1, %strided.vec246.1
  %41 = fadd <4 x float> %strided.vec240.1, %strided.vec245.1
  %42 = fsub <4 x float> %strided.vec240.1, %strided.vec245.1
  %43 = fadd <4 x float> %strided.vec241.1, %strided.vec244.1
  %44 = fsub <4 x float> %strided.vec241.1, %strided.vec244.1
  %45 = fadd <4 x float> %strided.vec242.1, %strided.vec243.1
  %46 = fsub <4 x float> %strided.vec242.1, %strided.vec243.1
  %47 = fadd <4 x float> %39, %45
  %48 = fsub <4 x float> %39, %45
  %49 = fadd <4 x float> %41, %43
  %50 = fsub <4 x float> %41, %43
  %51 = fadd <4 x float> %49, %47
  %52 = fsub <4 x float> %47, %49
  %53 = fadd <4 x float> %50, %48
  %54 = fmul <4 x float> %53, <float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000>
  %55 = fadd <4 x float> %48, %54
  %56 = fsub <4 x float> %48, %54
  %57 = fadd <4 x float> %44, %46
  %58 = fadd <4 x float> %42, %44
  %59 = fadd <4 x float> %40, %42
  %60 = fsub <4 x float> %57, %59
  %61 = fmul <4 x float> %60, <float 0x3FD87DE2A0000000, float 0x3FD87DE2A0000000, float 0x3FD87DE2A0000000, float 0x3FD87DE2A0000000>
  %62 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %57, <4 x float> <float 0x3FE1517A80000000, float 0x3FE1517A80000000, float 0x3FE1517A80000000, float 0x3FE1517A80000000>, <4 x float> %61)
  %63 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %59, <4 x float> <float 0x3FF4E7AEA0000000, float 0x3FF4E7AEA0000000, float 0x3FF4E7AEA0000000, float 0x3FF4E7AEA0000000>, <4 x float> %61)
  %64 = fmul <4 x float> %58, <float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000>
  %65 = fadd <4 x float> %40, %64
  %66 = fsub <4 x float> %40, %64
  %67 = fadd <4 x float> %66, %62
  %68 = fsub <4 x float> %66, %62
  %69 = fadd <4 x float> %65, %63
  %70 = fsub <4 x float> %65, %63
  %71 = getelementptr inbounds float, ptr %38, i64 -7
  %72 = shufflevector <4 x float> %51, <4 x float> %69, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %73 = shufflevector <4 x float> %55, <4 x float> %68, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %74 = shufflevector <4 x float> %52, <4 x float> %67, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %75 = shufflevector <4 x float> %56, <4 x float> %70, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %76 = shufflevector <8 x float> %72, <8 x float> %73, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %77 = shufflevector <8 x float> %74, <8 x float> %75, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec.1 = shufflevector <16 x float> %76, <16 x float> %77, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec.1, ptr %71, align 4, !tbaa !5
  %wide.load = load <4 x float>, ptr %data, align 4, !tbaa !5
  %78 = getelementptr inbounds float, ptr %data, i64 56
  %wide.load257 = load <4 x float>, ptr %78, align 4, !tbaa !5
  %79 = fadd <4 x float> %wide.load, %wide.load257
  %80 = fsub <4 x float> %wide.load, %wide.load257
  %81 = getelementptr inbounds float, ptr %data, i64 8
  %wide.load258 = load <4 x float>, ptr %81, align 4, !tbaa !5
  %82 = getelementptr inbounds float, ptr %data, i64 48
  %wide.load259 = load <4 x float>, ptr %82, align 4, !tbaa !5
  %83 = fadd <4 x float> %wide.load258, %wide.load259
  %84 = fsub <4 x float> %wide.load258, %wide.load259
  %85 = getelementptr inbounds float, ptr %data, i64 16
  %wide.load260 = load <4 x float>, ptr %85, align 4, !tbaa !5
  %86 = getelementptr inbounds float, ptr %data, i64 40
  %wide.load261 = load <4 x float>, ptr %86, align 4, !tbaa !5
  %87 = fadd <4 x float> %wide.load260, %wide.load261
  %88 = fsub <4 x float> %wide.load260, %wide.load261
  %89 = getelementptr inbounds float, ptr %data, i64 24
  %wide.load262 = load <4 x float>, ptr %89, align 4, !tbaa !5
  %90 = getelementptr inbounds float, ptr %data, i64 32
  %wide.load263 = load <4 x float>, ptr %90, align 4, !tbaa !5
  %91 = fadd <4 x float> %wide.load262, %wide.load263
  %92 = fsub <4 x float> %wide.load262, %wide.load263
  %93 = fadd <4 x float> %79, %91
  %94 = fsub <4 x float> %79, %91
  %95 = fadd <4 x float> %83, %87
  %96 = fsub <4 x float> %83, %87
  %97 = fadd <4 x float> %95, %93
  store <4 x float> %97, ptr %data, align 4, !tbaa !5
  %98 = fsub <4 x float> %93, %95
  store <4 x float> %98, ptr %90, align 4, !tbaa !5
  %99 = fadd <4 x float> %96, %94
  %100 = fmul <4 x float> %99, <float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000>
  %101 = fadd <4 x float> %94, %100
  store <4 x float> %101, ptr %85, align 4, !tbaa !5
  %102 = fsub <4 x float> %94, %100
  store <4 x float> %102, ptr %82, align 4, !tbaa !5
  %103 = fadd <4 x float> %88, %92
  %104 = fadd <4 x float> %84, %88
  %105 = fadd <4 x float> %80, %84
  %106 = fsub <4 x float> %103, %105
  %107 = fmul <4 x float> %106, <float 0x3FD87DE2A0000000, float 0x3FD87DE2A0000000, float 0x3FD87DE2A0000000, float 0x3FD87DE2A0000000>
  %108 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %103, <4 x float> <float 0x3FE1517A80000000, float 0x3FE1517A80000000, float 0x3FE1517A80000000, float 0x3FE1517A80000000>, <4 x float> %107)
  %109 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %105, <4 x float> <float 0x3FF4E7AEA0000000, float 0x3FF4E7AEA0000000, float 0x3FF4E7AEA0000000, float 0x3FF4E7AEA0000000>, <4 x float> %107)
  %110 = fmul <4 x float> %104, <float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000>
  %111 = fadd <4 x float> %80, %110
  %112 = fsub <4 x float> %80, %110
  %113 = fadd <4 x float> %112, %108
  store <4 x float> %113, ptr %86, align 4, !tbaa !5
  %114 = fsub <4 x float> %112, %108
  store <4 x float> %114, ptr %89, align 4, !tbaa !5
  %115 = fadd <4 x float> %111, %109
  store <4 x float> %115, ptr %81, align 4, !tbaa !5
  %116 = fsub <4 x float> %111, %109
  store <4 x float> %116, ptr %78, align 4, !tbaa !5
  %next.gep256.1 = getelementptr i8, ptr %data, i64 16
  %wide.load.1 = load <4 x float>, ptr %next.gep256.1, align 4, !tbaa !5
  %117 = getelementptr inbounds float, ptr %next.gep256.1, i64 56
  %wide.load257.1 = load <4 x float>, ptr %117, align 4, !tbaa !5
  %118 = fadd <4 x float> %wide.load.1, %wide.load257.1
  %119 = fsub <4 x float> %wide.load.1, %wide.load257.1
  %120 = getelementptr inbounds float, ptr %next.gep256.1, i64 8
  %wide.load258.1 = load <4 x float>, ptr %120, align 4, !tbaa !5
  %121 = getelementptr inbounds float, ptr %next.gep256.1, i64 48
  %wide.load259.1 = load <4 x float>, ptr %121, align 4, !tbaa !5
  %122 = fadd <4 x float> %wide.load258.1, %wide.load259.1
  %123 = fsub <4 x float> %wide.load258.1, %wide.load259.1
  %124 = getelementptr inbounds float, ptr %next.gep256.1, i64 16
  %wide.load260.1 = load <4 x float>, ptr %124, align 4, !tbaa !5
  %125 = getelementptr inbounds float, ptr %next.gep256.1, i64 40
  %wide.load261.1 = load <4 x float>, ptr %125, align 4, !tbaa !5
  %126 = fadd <4 x float> %wide.load260.1, %wide.load261.1
  %127 = fsub <4 x float> %wide.load260.1, %wide.load261.1
  %128 = getelementptr inbounds float, ptr %next.gep256.1, i64 24
  %wide.load262.1 = load <4 x float>, ptr %128, align 4, !tbaa !5
  %129 = getelementptr inbounds float, ptr %next.gep256.1, i64 32
  %wide.load263.1 = load <4 x float>, ptr %129, align 4, !tbaa !5
  %130 = fadd <4 x float> %wide.load262.1, %wide.load263.1
  %131 = fsub <4 x float> %wide.load262.1, %wide.load263.1
  %132 = fadd <4 x float> %118, %130
  %133 = fsub <4 x float> %118, %130
  %134 = fadd <4 x float> %122, %126
  %135 = fsub <4 x float> %122, %126
  %136 = fadd <4 x float> %134, %132
  store <4 x float> %136, ptr %next.gep256.1, align 4, !tbaa !5
  %137 = fsub <4 x float> %132, %134
  store <4 x float> %137, ptr %129, align 4, !tbaa !5
  %138 = fadd <4 x float> %135, %133
  %139 = fmul <4 x float> %138, <float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000>
  %140 = fadd <4 x float> %133, %139
  store <4 x float> %140, ptr %124, align 4, !tbaa !5
  %141 = fsub <4 x float> %133, %139
  store <4 x float> %141, ptr %121, align 4, !tbaa !5
  %142 = fadd <4 x float> %127, %131
  %143 = fadd <4 x float> %123, %127
  %144 = fadd <4 x float> %119, %123
  %145 = fsub <4 x float> %142, %144
  %146 = fmul <4 x float> %145, <float 0x3FD87DE2A0000000, float 0x3FD87DE2A0000000, float 0x3FD87DE2A0000000, float 0x3FD87DE2A0000000>
  %147 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %142, <4 x float> <float 0x3FE1517A80000000, float 0x3FE1517A80000000, float 0x3FE1517A80000000, float 0x3FE1517A80000000>, <4 x float> %146)
  %148 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %144, <4 x float> <float 0x3FF4E7AEA0000000, float 0x3FF4E7AEA0000000, float 0x3FF4E7AEA0000000, float 0x3FF4E7AEA0000000>, <4 x float> %146)
  %149 = fmul <4 x float> %143, <float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000>
  %150 = fadd <4 x float> %119, %149
  %151 = fsub <4 x float> %119, %149
  %152 = fadd <4 x float> %151, %147
  store <4 x float> %152, ptr %125, align 4, !tbaa !5
  %153 = fsub <4 x float> %151, %147
  store <4 x float> %153, ptr %128, align 4, !tbaa !5
  %154 = fadd <4 x float> %150, %148
  store <4 x float> %154, ptr %120, align 4, !tbaa !5
  %155 = fsub <4 x float> %150, %148
  store <4 x float> %155, ptr %117, align 4, !tbaa !5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #1

attributes #0 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
