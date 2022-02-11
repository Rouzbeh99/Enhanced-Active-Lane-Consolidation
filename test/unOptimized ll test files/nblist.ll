; ModuleID = 'nblist.c'
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
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca double*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca double, align 8
  %38 = alloca %struct.kdnode*, align 8
  %39 = alloca %struct.kdnode*, align 8
  %40 = alloca %struct.kdnode*, align 8
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32** %2, i32*** %13, align 8
  store double* %3, double** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store double %6, double* %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32* %9, i32** %20, align 8
  store i32* null, i32** %32, align 8
  %41 = load double, double* %17, align 8
  %42 = load double, double* %17, align 8
  %43 = fmul double %41, %42
  store double %43, double* %37, align 8
  %44 = call i32 @get_blocksize()
  store i32 %44, i32* %28, align 4
  %45 = load i32, i32* %18, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 24
  %48 = call noalias i8* @malloc(i64 %47) #4
  %49 = bitcast i8* %48 to %struct.kdnode*
  store %struct.kdnode* %49, %struct.kdnode** %38, align 8
  %50 = icmp eq %struct.kdnode* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %10
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 1) #5
  unreachable

54:                                               ; preds = %10
  %55 = load i32, i32* %18, align 4
  %56 = call i32* @ivector(i32 0, i32 %55)
  store i32* %56, i32** %29, align 8
  %57 = load i32, i32* %18, align 4
  %58 = call i32* @ivector(i32 0, i32 %57)
  store i32* %58, i32** %30, align 8
  %59 = load i32, i32* %18, align 4
  %60 = call i32* @ivector(i32 0, i32 %59)
  store i32* %60, i32** %31, align 8
  %61 = load i32, i32* %18, align 4
  %62 = call i32* @ivector(i32 0, i32 %61)
  store i32* %62, i32** %34, align 8
  %63 = load i32, i32* %19, align 4
  %64 = icmp eq i32 %63, 4
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load i32, i32* %18, align 4
  %67 = call i32* @ivector(i32 0, i32 %66)
  store i32* %67, i32** %32, align 8
  br label %68

68:                                               ; preds = %65, %54
  %69 = load i32, i32* %18, align 4
  %70 = call i32* @ivector(i32 0, i32 %69)
  store i32* %70, i32** %33, align 8
  store i32 0, i32* %21, align 4
  br label %71

71:                                               ; preds = %103, %68
  %72 = load i32, i32* %21, align 4
  %73 = load i32, i32* %18, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %106

75:                                               ; preds = %71
  %76 = load i32, i32* %21, align 4
  %77 = load i32*, i32** %31, align 8
  %78 = load i32, i32* %21, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %76, i32* %80, align 4
  %81 = load i32*, i32** %30, align 8
  %82 = load i32, i32* %21, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %76, i32* %84, align 4
  %85 = load i32*, i32** %29, align 8
  %86 = load i32, i32* %21, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %76, i32* %88, align 4
  %89 = load i32, i32* %19, align 4
  %90 = icmp eq i32 %89, 4
  br i1 %90, label %91, label %97

91:                                               ; preds = %75
  %92 = load i32, i32* %21, align 4
  %93 = load i32*, i32** %32, align 8
  %94 = load i32, i32* %21, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %92, i32* %96, align 4
  br label %97

97:                                               ; preds = %91, %75
  %98 = load i32, i32* %21, align 4
  %99 = load i32*, i32** %33, align 8
  %100 = load i32, i32* %21, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %98, i32* %102, align 4
  br label %103

103:                                              ; preds = %97
  %104 = load i32, i32* %21, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %21, align 4
  br label %71

106:                                              ; preds = %71
  %107 = load i32*, i32** %29, align 8
  %108 = load i32, i32* %18, align 4
  %109 = load double*, double** %14, align 8
  %110 = load i32, i32* %19, align 4
  call void @heapsort_index(i32* %107, i32 %108, double* %109, i32 0, i32 %110)
  %111 = load i32*, i32** %30, align 8
  %112 = load i32, i32* %18, align 4
  %113 = load double*, double** %14, align 8
  %114 = load i32, i32* %19, align 4
  call void @heapsort_index(i32* %111, i32 %112, double* %113, i32 1, i32 %114)
  %115 = load i32*, i32** %31, align 8
  %116 = load i32, i32* %18, align 4
  %117 = load double*, double** %14, align 8
  %118 = load i32, i32* %19, align 4
  call void @heapsort_index(i32* %115, i32 %116, double* %117, i32 2, i32 %118)
  %119 = load i32, i32* %19, align 4
  %120 = icmp eq i32 %119, 4
  br i1 %120, label %121, label %126

121:                                              ; preds = %106
  %122 = load i32*, i32** %32, align 8
  %123 = load i32, i32* %18, align 4
  %124 = load double*, double** %14, align 8
  %125 = load i32, i32* %19, align 4
  call void @heapsort_index(i32* %122, i32 %123, double* %124, i32 3, i32 %125)
  br label %126

126:                                              ; preds = %121, %106
  %127 = load %struct.kdnode*, %struct.kdnode** %38, align 8
  store %struct.kdnode* %127, %struct.kdnode** %39, align 8
  %128 = load %struct.kdnode*, %struct.kdnode** %39, align 8
  %129 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %128, i32 1
  store %struct.kdnode* %129, %struct.kdnode** %39, align 8
  store %struct.kdnode* %128, %struct.kdnode** %40, align 8
  %130 = load %struct.kdnode*, %struct.kdnode** %40, align 8
  %131 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %130, i32 0, i32 1
  store %struct.kdnode* null, %struct.kdnode** %131, align 8
  %132 = load %struct.kdnode*, %struct.kdnode** %40, align 8
  %133 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %132, i32 0, i32 2
  store %struct.kdnode* null, %struct.kdnode** %133, align 8
  %134 = load i32*, i32** %33, align 8
  %135 = load i32*, i32** %29, align 8
  %136 = load i32*, i32** %30, align 8
  %137 = load i32*, i32** %31, align 8
  %138 = load i32*, i32** %32, align 8
  %139 = load i32*, i32** %34, align 8
  %140 = load i32, i32* %18, align 4
  %141 = sub nsw i32 %140, 1
  %142 = load %struct.kdnode*, %struct.kdnode** %40, align 8
  %143 = load double*, double** %14, align 8
  %144 = load i32, i32* %19, align 4
  call void @buildkdtree(i32* %134, i32* %135, i32* %136, i32* %137, i32* %138, i32* %139, i32 0, i32 %141, %struct.kdnode** %39, %struct.kdnode* %142, double* %143, i32 0, i32 %144)
  store i32 0, i32* %25, align 4
  %145 = load i32, i32* %18, align 4
  %146 = call i32* @ivector(i32 0, i32 %145)
  store i32* %146, i32** %35, align 8
  %147 = load i32, i32* %18, align 4
  %148 = call i32* @ivector(i32 0, i32 %147)
  store i32* %148, i32** %36, align 8
  store i32 0, i32* %21, align 4
  br label %149

149:                                              ; preds = %316, %126
  %150 = load i32, i32* %21, align 4
  %151 = load i32, i32* %18, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %319

153:                                              ; preds = %149
  store i32 0, i32* %24, align 4
  store i32 0, i32* %23, align 4
  %154 = load %struct.kdnode*, %struct.kdnode** %40, align 8
  %155 = load double*, double** %14, align 8
  %156 = load i32, i32* %21, align 4
  %157 = load i32*, i32** %35, align 8
  %158 = load i32*, i32** %36, align 8
  %159 = load double, double* %17, align 8
  %160 = load double, double* %37, align 8
  %161 = load i32, i32* %19, align 4
  %162 = load i32*, i32** %20, align 8
  call void @searchkdtree(%struct.kdnode* %154, double* %155, i32 0, i32 %156, i32* %23, i32* %24, i32* %157, i32* %158, double %159, double %160, i32 %161, i32* %162)
  %163 = load i32*, i32** %35, align 8
  %164 = load i32, i32* %23, align 4
  call void @heapsort_pairs(i32* %163, i32 %164)
  %165 = load i32*, i32** %36, align 8
  %166 = load i32, i32* %24, align 4
  call void @heapsort_pairs(i32* %165, i32 %166)
  %167 = load i32**, i32*** %13, align 8
  %168 = load i32, i32* %21, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32*, i32** %167, i64 %169
  %171 = load i32*, i32** %170, align 8
  %172 = icmp eq i32* %171, null
  br i1 %172, label %173, label %187

173:                                              ; preds = %153
  %174 = load i32, i32* %23, align 4
  %175 = load i32, i32* %24, align 4
  %176 = add nsw i32 %174, %175
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %173
  %179 = load i32, i32* %23, align 4
  %180 = load i32, i32* %24, align 4
  %181 = add nsw i32 %179, %180
  %182 = call i32* @ivector(i32 0, i32 %181)
  %183 = load i32**, i32*** %13, align 8
  %184 = load i32, i32* %21, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32*, i32** %183, i64 %185
  store i32* %182, i32** %186, align 8
  br label %254

187:                                              ; preds = %173, %153
  %188 = load i32**, i32*** %13, align 8
  %189 = load i32, i32* %21, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32*, i32** %188, i64 %190
  %192 = load i32*, i32** %191, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %253

194:                                              ; preds = %187
  %195 = load i32, i32* %23, align 4
  %196 = load i32, i32* %24, align 4
  %197 = add nsw i32 %195, %196
  %198 = load i32*, i32** %11, align 8
  %199 = load i32, i32* %21, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** %12, align 8
  %204 = load i32, i32* %21, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %202, %207
  %209 = icmp sgt i32 %197, %208
  br i1 %209, label %228, label %210

210:                                              ; preds = %194
  %211 = load i32, i32* %23, align 4
  %212 = load i32, i32* %24, align 4
  %213 = add nsw i32 %211, %212
  %214 = mul nsw i32 4, %213
  %215 = load i32*, i32** %11, align 8
  %216 = load i32, i32* %21, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load i32*, i32** %12, align 8
  %221 = load i32, i32* %21, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %219, %224
  %226 = mul nsw i32 3, %225
  %227 = icmp slt i32 %214, %226
  br i1 %227, label %228, label %253

228:                                              ; preds = %210, %194
  %229 = load i32**, i32*** %13, align 8
  %230 = load i32, i32* %21, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32*, i32** %229, i64 %231
  %233 = load i32*, i32** %232, align 8
  %234 = load i32*, i32** %11, align 8
  %235 = load i32, i32* %21, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = load i32*, i32** %12, align 8
  %240 = load i32, i32* %21, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %238, %243
  call void @free_ivector(i32* %233, i32 0, i32 %244)
  %245 = load i32, i32* %23, align 4
  %246 = load i32, i32* %24, align 4
  %247 = add nsw i32 %245, %246
  %248 = call i32* @ivector(i32 0, i32 %247)
  %249 = load i32**, i32*** %13, align 8
  %250 = load i32, i32* %21, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32*, i32** %249, i64 %251
  store i32* %248, i32** %252, align 8
  br label %253

253:                                              ; preds = %228, %210, %187
  br label %254

254:                                              ; preds = %253, %178
  %255 = load i32, i32* %23, align 4
  %256 = load i32*, i32** %11, align 8
  %257 = load i32, i32* %21, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  store i32 %255, i32* %259, align 4
  %260 = load i32, i32* %24, align 4
  %261 = load i32*, i32** %12, align 8
  %262 = load i32, i32* %21, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  store i32 %260, i32* %264, align 4
  store i32 0, i32* %22, align 4
  br label %265

265:                                              ; preds = %283, %254
  %266 = load i32, i32* %22, align 4
  %267 = load i32, i32* %23, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %269, label %286

269:                                              ; preds = %265
  %270 = load i32*, i32** %35, align 8
  %271 = load i32, i32* %22, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = load i32**, i32*** %13, align 8
  %276 = load i32, i32* %21, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32*, i32** %275, i64 %277
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %22, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  store i32 %274, i32* %282, align 4
  br label %283

283:                                              ; preds = %269
  %284 = load i32, i32* %22, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %22, align 4
  br label %265

286:                                              ; preds = %265
  store i32 0, i32* %22, align 4
  br label %287

287:                                              ; preds = %307, %286
  %288 = load i32, i32* %22, align 4
  %289 = load i32, i32* %24, align 4
  %290 = icmp slt i32 %288, %289
  br i1 %290, label %291, label %310

291:                                              ; preds = %287
  %292 = load i32*, i32** %36, align 8
  %293 = load i32, i32* %22, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = load i32**, i32*** %13, align 8
  %298 = load i32, i32* %21, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32*, i32** %297, i64 %299
  %301 = load i32*, i32** %300, align 8
  %302 = load i32, i32* %23, align 4
  %303 = load i32, i32* %22, align 4
  %304 = add nsw i32 %302, %303
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %301, i64 %305
  store i32 %296, i32* %306, align 4
  br label %307

307:                                              ; preds = %291
  %308 = load i32, i32* %22, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %22, align 4
  br label %287

310:                                              ; preds = %287
  %311 = load i32, i32* %23, align 4
  %312 = load i32, i32* %24, align 4
  %313 = add nsw i32 %311, %312
  %314 = load i32, i32* %25, align 4
  %315 = add nsw i32 %314, %313
  store i32 %315, i32* %25, align 4
  br label %316

316:                                              ; preds = %310
  %317 = load i32, i32* %21, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %21, align 4
  br label %149

319:                                              ; preds = %149
  %320 = load i32*, i32** %35, align 8
  %321 = load i32, i32* %18, align 4
  call void @free_ivector(i32* %320, i32 0, i32 %321)
  %322 = load i32*, i32** %36, align 8
  %323 = load i32, i32* %18, align 4
  call void @free_ivector(i32* %322, i32 0, i32 %323)
  %324 = load %struct.kdnode*, %struct.kdnode** %38, align 8
  %325 = bitcast %struct.kdnode* %324 to i8*
  call void @free(i8* %325) #4
  %326 = load i32*, i32** %29, align 8
  %327 = load i32, i32* %18, align 4
  call void @free_ivector(i32* %326, i32 0, i32 %327)
  %328 = load i32*, i32** %30, align 8
  %329 = load i32, i32* %18, align 4
  call void @free_ivector(i32* %328, i32 0, i32 %329)
  %330 = load i32*, i32** %31, align 8
  %331 = load i32, i32* %18, align 4
  call void @free_ivector(i32* %330, i32 0, i32 %331)
  %332 = load i32*, i32** %34, align 8
  %333 = load i32, i32* %18, align 4
  call void @free_ivector(i32* %332, i32 0, i32 %333)
  %334 = load i32, i32* %19, align 4
  %335 = icmp eq i32 %334, 4
  br i1 %335, label %336, label %339

336:                                              ; preds = %319
  %337 = load i32*, i32** %32, align 8
  %338 = load i32, i32* %18, align 4
  call void @free_ivector(i32* %337, i32 0, i32 %338)
  br label %339

339:                                              ; preds = %336, %319
  %340 = load i32*, i32** %33, align 8
  %341 = load i32, i32* %18, align 4
  call void @free_ivector(i32* %340, i32 0, i32 %341)
  %342 = load i32, i32* %25, align 4
  ret i32 %342
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
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store double* %2, double** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sdiv i32 %13, 2
  store i32 %14, i32* %11, align 4
  br label %15

15:                                               ; preds = %25, %5
  %16 = load i32, i32* %11, align 4
  %17 = icmp sge i32 %16, 1
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load double*, double** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  call void @downheap_index(i32* %19, i32 %20, i32 %21, double* %22, i32 %23, i32 %24)
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %11, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %11, align 4
  br label %15

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %32, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %56

32:                                               ; preds = %29
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  store i32 %44, i32* %49, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %7, align 4
  %53 = load double*, double** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  call void @downheap_index(i32* %50, i32 %52, i32 1, double* %53, i32 %54, i32 %55)
  br label %29

56:                                               ; preds = %29
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buildkdtree(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6, i32 %7, %struct.kdnode** %8, %struct.kdnode* %9, double* %10, i32 %11, i32 %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.kdnode**, align 8
  %23 = alloca %struct.kdnode*, align 8
  %24 = alloca double*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca double, align 8
  store i32* %0, i32** %14, align 8
  store i32* %1, i32** %15, align 8
  store i32* %2, i32** %16, align 8
  store i32* %3, i32** %17, align 8
  store i32* %4, i32** %18, align 8
  store i32* %5, i32** %19, align 8
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store %struct.kdnode** %8, %struct.kdnode*** %22, align 8
  store %struct.kdnode* %9, %struct.kdnode** %23, align 8
  store double* %10, double** %24, align 8
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %33 = load i32, i32* %26, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* %25, align 4
  %36 = srem i32 %35, %34
  store i32 %36, i32* %25, align 4
  %37 = load i32, i32* %21, align 4
  %38 = load i32, i32* %20, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %13
  %41 = load i32*, i32** %14, align 8
  %42 = load i32, i32* %20, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.kdnode*, %struct.kdnode** %23, align 8
  %47 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %728

48:                                               ; preds = %13
  %49 = load i32, i32* %21, align 4
  %50 = load i32, i32* %20, align 4
  %51 = add nsw i32 %50, 1
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %232

53:                                               ; preds = %48
  %54 = load i32, i32* %25, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load i32*, i32** %14, align 8
  %58 = load i32, i32* %20, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %14, align 8
  %63 = load i32, i32* %21, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %61, %66
  br i1 %67, label %101, label %68

68:                                               ; preds = %56, %53
  %69 = load i32, i32* %25, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %128

71:                                               ; preds = %68
  %72 = load double*, double** %24, align 8
  %73 = load i32, i32* %26, align 4
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* %20, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %73, %78
  %80 = load i32, i32* %25, align 4
  %81 = add nsw i32 %79, %80
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds double, double* %72, i64 %83
  %85 = load double, double* %84, align 8
  %86 = load double*, double** %24, align 8
  %87 = load i32, i32* %26, align 4
  %88 = load i32*, i32** %14, align 8
  %89 = load i32, i32* %21, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %87, %92
  %94 = load i32, i32* %25, align 4
  %95 = add nsw i32 %93, %94
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds double, double* %86, i64 %97
  %99 = load double, double* %98, align 8
  %100 = fcmp olt double %85, %99
  br i1 %100, label %101, label %128

101:                                              ; preds = %71, %56
  %102 = load i32*, i32** %14, align 8
  %103 = load i32, i32* %21, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.kdnode*, %struct.kdnode** %23, align 8
  %108 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load i32*, i32** %14, align 8
  %110 = load i32, i32* %20, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.kdnode**, %struct.kdnode*** %22, align 8
  %115 = load %struct.kdnode*, %struct.kdnode** %114, align 8
  %116 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  %117 = load %struct.kdnode**, %struct.kdnode*** %22, align 8
  %118 = load %struct.kdnode*, %struct.kdnode** %117, align 8
  %119 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %118, i32 0, i32 1
  store %struct.kdnode* null, %struct.kdnode** %119, align 8
  %120 = load %struct.kdnode**, %struct.kdnode*** %22, align 8
  %121 = load %struct.kdnode*, %struct.kdnode** %120, align 8
  %122 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %121, i32 0, i32 2
  store %struct.kdnode* null, %struct.kdnode** %122, align 8
  %123 = load %struct.kdnode**, %struct.kdnode*** %22, align 8
  %124 = load %struct.kdnode*, %struct.kdnode** %123, align 8
  %125 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %124, i32 1
  store %struct.kdnode* %125, %struct.kdnode** %123, align 8
  %126 = load %struct.kdnode*, %struct.kdnode** %23, align 8
  %127 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %126, i32 0, i32 1
  store %struct.kdnode* %124, %struct.kdnode** %127, align 8
  br label %231

128:                                              ; preds = %71, %68
  %129 = load i32, i32* %25, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %128
  %132 = load i32*, i32** %14, align 8
  %133 = load i32, i32* %20, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %14, align 8
  %138 = load i32, i32* %21, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp sgt i32 %136, %141
  br i1 %142, label %176, label %143

143:                                              ; preds = %131, %128
  %144 = load i32, i32* %25, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %203

146:                                              ; preds = %143
  %147 = load double*, double** %24, align 8
  %148 = load i32, i32* %26, align 4
  %149 = load i32*, i32** %14, align 8
  %150 = load i32, i32* %20, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = mul nsw i32 %148, %153
  %155 = load i32, i32* %25, align 4
  %156 = add nsw i32 %154, %155
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds double, double* %147, i64 %158
  %160 = load double, double* %159, align 8
  %161 = load double*, double** %24, align 8
  %162 = load i32, i32* %26, align 4
  %163 = load i32*, i32** %14, align 8
  %164 = load i32, i32* %21, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = mul nsw i32 %162, %167
  %169 = load i32, i32* %25, align 4
  %170 = add nsw i32 %168, %169
  %171 = sub nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds double, double* %161, i64 %172
  %174 = load double, double* %173, align 8
  %175 = fcmp ogt double %160, %174
  br i1 %175, label %176, label %203

176:                                              ; preds = %146, %131
  %177 = load i32*, i32** %14, align 8
  %178 = load i32, i32* %20, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.kdnode*, %struct.kdnode** %23, align 8
  %183 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load i32*, i32** %14, align 8
  %185 = load i32, i32* %21, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.kdnode**, %struct.kdnode*** %22, align 8
  %190 = load %struct.kdnode*, %struct.kdnode** %189, align 8
  %191 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %190, i32 0, i32 0
  store i32 %188, i32* %191, align 8
  %192 = load %struct.kdnode**, %struct.kdnode*** %22, align 8
  %193 = load %struct.kdnode*, %struct.kdnode** %192, align 8
  %194 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %193, i32 0, i32 1
  store %struct.kdnode* null, %struct.kdnode** %194, align 8
  %195 = load %struct.kdnode**, %struct.kdnode*** %22, align 8
  %196 = load %struct.kdnode*, %struct.kdnode** %195, align 8
  %197 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %196, i32 0, i32 2
  store %struct.kdnode* null, %struct.kdnode** %197, align 8
  %198 = load %struct.kdnode**, %struct.kdnode*** %22, align 8
  %199 = load %struct.kdnode*, %struct.kdnode** %198, align 8
  %200 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %199, i32 1
  store %struct.kdnode* %200, %struct.kdnode** %198, align 8
  %201 = load %struct.kdnode*, %struct.kdnode** %23, align 8
  %202 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %201, i32 0, i32 1
  store %struct.kdnode* %199, %struct.kdnode** %202, align 8
  br label %230

203:                                              ; preds = %146, %143
  %204 = load i32*, i32** %14, align 8
  %205 = load i32, i32* %20, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.kdnode*, %struct.kdnode** %23, align 8
  %210 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  %211 = load i32*, i32** %14, align 8
  %212 = load i32, i32* %21, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.kdnode**, %struct.kdnode*** %22, align 8
  %217 = load %struct.kdnode*, %struct.kdnode** %216, align 8
  %218 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %217, i32 0, i32 0
  store i32 %215, i32* %218, align 8
  %219 = load %struct.kdnode**, %struct.kdnode*** %22, align 8
  %220 = load %struct.kdnode*, %struct.kdnode** %219, align 8
  %221 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %220, i32 0, i32 1
  store %struct.kdnode* null, %struct.kdnode** %221, align 8
  %222 = load %struct.kdnode**, %struct.kdnode*** %22, align 8
  %223 = load %struct.kdnode*, %struct.kdnode** %222, align 8
  %224 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %223, i32 0, i32 2
  store %struct.kdnode* null, %struct.kdnode** %224, align 8
  %225 = load %struct.kdnode**, %struct.kdnode*** %22, align 8
  %226 = load %struct.kdnode*, %struct.kdnode** %225, align 8
  %227 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %226, i32 1
  store %struct.kdnode* %227, %struct.kdnode** %225, align 8
  %228 = load %struct.kdnode*, %struct.kdnode** %23, align 8
  %229 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %228, i32 0, i32 2
  store %struct.kdnode* %226, %struct.kdnode** %229, align 8
  br label %230

230:                                              ; preds = %203, %176
  br label %231

231:                                              ; preds = %230, %101
  br label %727

232:                                              ; preds = %48
  %233 = load i32, i32* %20, align 4
  %234 = load i32, i32* %21, align 4
  %235 = add nsw i32 %233, %234
  %236 = sdiv i32 %235, 2
  store i32 %236, i32* %28, align 4
  %237 = load i32, i32* %25, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %232
  %240 = load i32*, i32** %14, align 8
  %241 = load i32, i32* %28, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  store i32 %244, i32* %29, align 4
  br label %291

245:                                              ; preds = %232
  %246 = load double*, double** %24, align 8
  %247 = load i32, i32* %26, align 4
  %248 = load i32*, i32** %14, align 8
  %249 = load i32, i32* %28, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = mul nsw i32 %247, %252
  %254 = load i32, i32* %25, align 4
  %255 = add nsw i32 %253, %254
  %256 = sub nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds double, double* %246, i64 %257
  %259 = load double, double* %258, align 8
  store double %259, double* %32, align 8
  %260 = load i32, i32* %28, align 4
  %261 = sub nsw i32 %260, 1
  store i32 %261, i32* %27, align 4
  br label %262

262:                                              ; preds = %287, %245
  %263 = load i32, i32* %27, align 4
  %264 = load i32, i32* %20, align 4
  %265 = icmp sge i32 %263, %264
  br i1 %265, label %266, label %290

266:                                              ; preds = %262
  %267 = load double*, double** %24, align 8
  %268 = load i32, i32* %26, align 4
  %269 = load i32*, i32** %14, align 8
  %270 = load i32, i32* %27, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = mul nsw i32 %268, %273
  %275 = load i32, i32* %25, align 4
  %276 = add nsw i32 %274, %275
  %277 = sub nsw i32 %276, 1
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds double, double* %267, i64 %278
  %280 = load double, double* %279, align 8
  %281 = load double, double* %32, align 8
  %282 = fcmp olt double %280, %281
  br i1 %282, label %283, label %284

283:                                              ; preds = %266
  br label %290

284:                                              ; preds = %266
  %285 = load i32, i32* %27, align 4
  store i32 %285, i32* %28, align 4
  br label %286

286:                                              ; preds = %284
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %27, align 4
  %289 = add nsw i32 %288, -1
  store i32 %289, i32* %27, align 4
  br label %262

290:                                              ; preds = %283, %262
  br label %291

291:                                              ; preds = %290, %239
  %292 = load i32*, i32** %14, align 8
  %293 = load i32, i32* %28, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.kdnode*, %struct.kdnode** %23, align 8
  %298 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %297, i32 0, i32 0
  store i32 %296, i32* %298, align 8
  %299 = load i32, i32* %20, align 4
  %300 = sub nsw i32 %299, 1
  store i32 %300, i32* %30, align 4
  %301 = load i32, i32* %28, align 4
  store i32 %301, i32* %31, align 4
  %302 = load i32, i32* %20, align 4
  store i32 %302, i32* %27, align 4
  br label %303

303:                                              ; preds = %374, %291
  %304 = load i32, i32* %27, align 4
  %305 = load i32, i32* %21, align 4
  %306 = icmp sle i32 %304, %305
  br i1 %306, label %307, label %377

307:                                              ; preds = %303
  %308 = load i32*, i32** %15, align 8
  %309 = load i32, i32* %27, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = load i32*, i32** %14, align 8
  %314 = load i32, i32* %28, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = icmp ne i32 %312, %317
  br i1 %318, label %319, label %373

319:                                              ; preds = %307
  %320 = load i32, i32* %25, align 4
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %330

322:                                              ; preds = %319
  %323 = load i32*, i32** %15, align 8
  %324 = load i32, i32* %27, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* %29, align 4
  %329 = icmp slt i32 %327, %328
  br i1 %329, label %350, label %330

330:                                              ; preds = %322, %319
  %331 = load i32, i32* %25, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %361

333:                                              ; preds = %330
  %334 = load double*, double** %24, align 8
  %335 = load i32, i32* %26, align 4
  %336 = load i32*, i32** %15, align 8
  %337 = load i32, i32* %27, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %336, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = mul nsw i32 %335, %340
  %342 = load i32, i32* %25, align 4
  %343 = add nsw i32 %341, %342
  %344 = sub nsw i32 %343, 1
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds double, double* %334, i64 %345
  %347 = load double, double* %346, align 8
  %348 = load double, double* %32, align 8
  %349 = fcmp olt double %347, %348
  br i1 %349, label %350, label %361

350:                                              ; preds = %333, %322
  %351 = load i32*, i32** %15, align 8
  %352 = load i32, i32* %27, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %351, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = load i32*, i32** %19, align 8
  %357 = load i32, i32* %30, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %30, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %356, i64 %359
  store i32 %355, i32* %360, align 4
  br label %372

361:                                              ; preds = %333, %330
  %362 = load i32*, i32** %15, align 8
  %363 = load i32, i32* %27, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = load i32*, i32** %19, align 8
  %368 = load i32, i32* %31, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %31, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %367, i64 %370
  store i32 %366, i32* %371, align 4
  br label %372

372:                                              ; preds = %361, %350
  br label %373

373:                                              ; preds = %372, %307
  br label %374

374:                                              ; preds = %373
  %375 = load i32, i32* %27, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %27, align 4
  br label %303

377:                                              ; preds = %303
  %378 = load i32, i32* %20, align 4
  %379 = sub nsw i32 %378, 1
  store i32 %379, i32* %30, align 4
  %380 = load i32, i32* %28, align 4
  store i32 %380, i32* %31, align 4
  %381 = load i32, i32* %20, align 4
  store i32 %381, i32* %27, align 4
  br label %382

382:                                              ; preds = %453, %377
  %383 = load i32, i32* %27, align 4
  %384 = load i32, i32* %21, align 4
  %385 = icmp sle i32 %383, %384
  br i1 %385, label %386, label %456

386:                                              ; preds = %382
  %387 = load i32*, i32** %16, align 8
  %388 = load i32, i32* %27, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %387, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = load i32*, i32** %14, align 8
  %393 = load i32, i32* %28, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %392, i64 %394
  %396 = load i32, i32* %395, align 4
  %397 = icmp ne i32 %391, %396
  br i1 %397, label %398, label %452

398:                                              ; preds = %386
  %399 = load i32, i32* %25, align 4
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %409

401:                                              ; preds = %398
  %402 = load i32*, i32** %16, align 8
  %403 = load i32, i32* %27, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %402, i64 %404
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* %29, align 4
  %408 = icmp slt i32 %406, %407
  br i1 %408, label %429, label %409

409:                                              ; preds = %401, %398
  %410 = load i32, i32* %25, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %440

412:                                              ; preds = %409
  %413 = load double*, double** %24, align 8
  %414 = load i32, i32* %26, align 4
  %415 = load i32*, i32** %16, align 8
  %416 = load i32, i32* %27, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %415, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = mul nsw i32 %414, %419
  %421 = load i32, i32* %25, align 4
  %422 = add nsw i32 %420, %421
  %423 = sub nsw i32 %422, 1
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds double, double* %413, i64 %424
  %426 = load double, double* %425, align 8
  %427 = load double, double* %32, align 8
  %428 = fcmp olt double %426, %427
  br i1 %428, label %429, label %440

429:                                              ; preds = %412, %401
  %430 = load i32*, i32** %16, align 8
  %431 = load i32, i32* %27, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, i32* %430, i64 %432
  %434 = load i32, i32* %433, align 4
  %435 = load i32*, i32** %15, align 8
  %436 = load i32, i32* %30, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %30, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %435, i64 %438
  store i32 %434, i32* %439, align 4
  br label %451

440:                                              ; preds = %412, %409
  %441 = load i32*, i32** %16, align 8
  %442 = load i32, i32* %27, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, i32* %441, i64 %443
  %445 = load i32, i32* %444, align 4
  %446 = load i32*, i32** %15, align 8
  %447 = load i32, i32* %31, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %31, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i32, i32* %446, i64 %449
  store i32 %445, i32* %450, align 4
  br label %451

451:                                              ; preds = %440, %429
  br label %452

452:                                              ; preds = %451, %386
  br label %453

453:                                              ; preds = %452
  %454 = load i32, i32* %27, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %27, align 4
  br label %382

456:                                              ; preds = %382
  %457 = load i32, i32* %20, align 4
  %458 = sub nsw i32 %457, 1
  store i32 %458, i32* %30, align 4
  %459 = load i32, i32* %28, align 4
  store i32 %459, i32* %31, align 4
  %460 = load i32, i32* %20, align 4
  store i32 %460, i32* %27, align 4
  br label %461

461:                                              ; preds = %532, %456
  %462 = load i32, i32* %27, align 4
  %463 = load i32, i32* %21, align 4
  %464 = icmp sle i32 %462, %463
  br i1 %464, label %465, label %535

465:                                              ; preds = %461
  %466 = load i32*, i32** %17, align 8
  %467 = load i32, i32* %27, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i32, i32* %466, i64 %468
  %470 = load i32, i32* %469, align 4
  %471 = load i32*, i32** %14, align 8
  %472 = load i32, i32* %28, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %471, i64 %473
  %475 = load i32, i32* %474, align 4
  %476 = icmp ne i32 %470, %475
  br i1 %476, label %477, label %531

477:                                              ; preds = %465
  %478 = load i32, i32* %25, align 4
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %480, label %488

480:                                              ; preds = %477
  %481 = load i32*, i32** %17, align 8
  %482 = load i32, i32* %27, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i32, i32* %481, i64 %483
  %485 = load i32, i32* %484, align 4
  %486 = load i32, i32* %29, align 4
  %487 = icmp slt i32 %485, %486
  br i1 %487, label %508, label %488

488:                                              ; preds = %480, %477
  %489 = load i32, i32* %25, align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %519

491:                                              ; preds = %488
  %492 = load double*, double** %24, align 8
  %493 = load i32, i32* %26, align 4
  %494 = load i32*, i32** %17, align 8
  %495 = load i32, i32* %27, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i32, i32* %494, i64 %496
  %498 = load i32, i32* %497, align 4
  %499 = mul nsw i32 %493, %498
  %500 = load i32, i32* %25, align 4
  %501 = add nsw i32 %499, %500
  %502 = sub nsw i32 %501, 1
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds double, double* %492, i64 %503
  %505 = load double, double* %504, align 8
  %506 = load double, double* %32, align 8
  %507 = fcmp olt double %505, %506
  br i1 %507, label %508, label %519

508:                                              ; preds = %491, %480
  %509 = load i32*, i32** %17, align 8
  %510 = load i32, i32* %27, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds i32, i32* %509, i64 %511
  %513 = load i32, i32* %512, align 4
  %514 = load i32*, i32** %16, align 8
  %515 = load i32, i32* %30, align 4
  %516 = add nsw i32 %515, 1
  store i32 %516, i32* %30, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds i32, i32* %514, i64 %517
  store i32 %513, i32* %518, align 4
  br label %530

519:                                              ; preds = %491, %488
  %520 = load i32*, i32** %17, align 8
  %521 = load i32, i32* %27, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds i32, i32* %520, i64 %522
  %524 = load i32, i32* %523, align 4
  %525 = load i32*, i32** %16, align 8
  %526 = load i32, i32* %31, align 4
  %527 = add nsw i32 %526, 1
  store i32 %527, i32* %31, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds i32, i32* %525, i64 %528
  store i32 %524, i32* %529, align 4
  br label %530

530:                                              ; preds = %519, %508
  br label %531

531:                                              ; preds = %530, %465
  br label %532

532:                                              ; preds = %531
  %533 = load i32, i32* %27, align 4
  %534 = add nsw i32 %533, 1
  store i32 %534, i32* %27, align 4
  br label %461

535:                                              ; preds = %461
  %536 = load i32, i32* %26, align 4
  %537 = icmp eq i32 %536, 4
  br i1 %537, label %538, label %618

538:                                              ; preds = %535
  %539 = load i32, i32* %20, align 4
  %540 = sub nsw i32 %539, 1
  store i32 %540, i32* %30, align 4
  %541 = load i32, i32* %28, align 4
  store i32 %541, i32* %31, align 4
  %542 = load i32, i32* %20, align 4
  store i32 %542, i32* %27, align 4
  br label %543

543:                                              ; preds = %614, %538
  %544 = load i32, i32* %27, align 4
  %545 = load i32, i32* %21, align 4
  %546 = icmp sle i32 %544, %545
  br i1 %546, label %547, label %617

547:                                              ; preds = %543
  %548 = load i32*, i32** %18, align 8
  %549 = load i32, i32* %27, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i32, i32* %548, i64 %550
  %552 = load i32, i32* %551, align 4
  %553 = load i32*, i32** %14, align 8
  %554 = load i32, i32* %28, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds i32, i32* %553, i64 %555
  %557 = load i32, i32* %556, align 4
  %558 = icmp ne i32 %552, %557
  br i1 %558, label %559, label %613

559:                                              ; preds = %547
  %560 = load i32, i32* %25, align 4
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %562, label %570

562:                                              ; preds = %559
  %563 = load i32*, i32** %18, align 8
  %564 = load i32, i32* %27, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds i32, i32* %563, i64 %565
  %567 = load i32, i32* %566, align 4
  %568 = load i32, i32* %29, align 4
  %569 = icmp slt i32 %567, %568
  br i1 %569, label %590, label %570

570:                                              ; preds = %562, %559
  %571 = load i32, i32* %25, align 4
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %573, label %601

573:                                              ; preds = %570
  %574 = load double*, double** %24, align 8
  %575 = load i32, i32* %26, align 4
  %576 = load i32*, i32** %18, align 8
  %577 = load i32, i32* %27, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds i32, i32* %576, i64 %578
  %580 = load i32, i32* %579, align 4
  %581 = mul nsw i32 %575, %580
  %582 = load i32, i32* %25, align 4
  %583 = add nsw i32 %581, %582
  %584 = sub nsw i32 %583, 1
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds double, double* %574, i64 %585
  %587 = load double, double* %586, align 8
  %588 = load double, double* %32, align 8
  %589 = fcmp olt double %587, %588
  br i1 %589, label %590, label %601

590:                                              ; preds = %573, %562
  %591 = load i32*, i32** %18, align 8
  %592 = load i32, i32* %27, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds i32, i32* %591, i64 %593
  %595 = load i32, i32* %594, align 4
  %596 = load i32*, i32** %17, align 8
  %597 = load i32, i32* %30, align 4
  %598 = add nsw i32 %597, 1
  store i32 %598, i32* %30, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds i32, i32* %596, i64 %599
  store i32 %595, i32* %600, align 4
  br label %612

601:                                              ; preds = %573, %570
  %602 = load i32*, i32** %18, align 8
  %603 = load i32, i32* %27, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds i32, i32* %602, i64 %604
  %606 = load i32, i32* %605, align 4
  %607 = load i32*, i32** %17, align 8
  %608 = load i32, i32* %31, align 4
  %609 = add nsw i32 %608, 1
  store i32 %609, i32* %31, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds i32, i32* %607, i64 %610
  store i32 %606, i32* %611, align 4
  br label %612

612:                                              ; preds = %601, %590
  br label %613

613:                                              ; preds = %612, %547
  br label %614

614:                                              ; preds = %613
  %615 = load i32, i32* %27, align 4
  %616 = add nsw i32 %615, 1
  store i32 %616, i32* %27, align 4
  br label %543

617:                                              ; preds = %543
  br label %618

618:                                              ; preds = %617, %535
  %619 = load i32, i32* %30, align 4
  %620 = load i32, i32* %20, align 4
  %621 = icmp sge i32 %619, %620
  br i1 %621, label %622, label %671

622:                                              ; preds = %618
  %623 = load %struct.kdnode**, %struct.kdnode*** %22, align 8
  %624 = load %struct.kdnode*, %struct.kdnode** %623, align 8
  %625 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %624, i32 0, i32 1
  store %struct.kdnode* null, %struct.kdnode** %625, align 8
  %626 = load %struct.kdnode**, %struct.kdnode*** %22, align 8
  %627 = load %struct.kdnode*, %struct.kdnode** %626, align 8
  %628 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %627, i32 0, i32 2
  store %struct.kdnode* null, %struct.kdnode** %628, align 8
  %629 = load %struct.kdnode**, %struct.kdnode*** %22, align 8
  %630 = load %struct.kdnode*, %struct.kdnode** %629, align 8
  %631 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %630, i32 1
  store %struct.kdnode* %631, %struct.kdnode** %629, align 8
  %632 = load %struct.kdnode*, %struct.kdnode** %23, align 8
  %633 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %632, i32 0, i32 1
  store %struct.kdnode* %630, %struct.kdnode** %633, align 8
  %634 = load i32, i32* %26, align 4
  %635 = icmp eq i32 %634, 4
  br i1 %635, label %636, label %653

636:                                              ; preds = %622
  %637 = load i32*, i32** %19, align 8
  %638 = load i32*, i32** %15, align 8
  %639 = load i32*, i32** %16, align 8
  %640 = load i32*, i32** %17, align 8
  %641 = load i32*, i32** %14, align 8
  %642 = load i32*, i32** %18, align 8
  %643 = load i32, i32* %20, align 4
  %644 = load i32, i32* %30, align 4
  %645 = load %struct.kdnode**, %struct.kdnode*** %22, align 8
  %646 = load %struct.kdnode*, %struct.kdnode** %23, align 8
  %647 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %646, i32 0, i32 1
  %648 = load %struct.kdnode*, %struct.kdnode** %647, align 8
  %649 = load double*, double** %24, align 8
  %650 = load i32, i32* %25, align 4
  %651 = add nsw i32 %650, 1
  %652 = load i32, i32* %26, align 4
  call void @buildkdtree(i32* %637, i32* %638, i32* %639, i32* %640, i32* %641, i32* %642, i32 %643, i32 %644, %struct.kdnode** %645, %struct.kdnode* %648, double* %649, i32 %651, i32 %652)
  br label %670

653:                                              ; preds = %622
  %654 = load i32*, i32** %19, align 8
  %655 = load i32*, i32** %15, align 8
  %656 = load i32*, i32** %16, align 8
  %657 = load i32*, i32** %14, align 8
  %658 = load i32*, i32** %18, align 8
  %659 = load i32*, i32** %17, align 8
  %660 = load i32, i32* %20, align 4
  %661 = load i32, i32* %30, align 4
  %662 = load %struct.kdnode**, %struct.kdnode*** %22, align 8
  %663 = load %struct.kdnode*, %struct.kdnode** %23, align 8
  %664 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %663, i32 0, i32 1
  %665 = load %struct.kdnode*, %struct.kdnode** %664, align 8
  %666 = load double*, double** %24, align 8
  %667 = load i32, i32* %25, align 4
  %668 = add nsw i32 %667, 1
  %669 = load i32, i32* %26, align 4
  call void @buildkdtree(i32* %654, i32* %655, i32* %656, i32* %657, i32* %658, i32* %659, i32 %660, i32 %661, %struct.kdnode** %662, %struct.kdnode* %665, double* %666, i32 %668, i32 %669)
  br label %670

670:                                              ; preds = %653, %636
  br label %671

671:                                              ; preds = %670, %618
  %672 = load i32, i32* %31, align 4
  %673 = load i32, i32* %28, align 4
  %674 = icmp sgt i32 %672, %673
  br i1 %674, label %675, label %726

675:                                              ; preds = %671
  %676 = load %struct.kdnode**, %struct.kdnode*** %22, align 8
  %677 = load %struct.kdnode*, %struct.kdnode** %676, align 8
  %678 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %677, i32 0, i32 1
  store %struct.kdnode* null, %struct.kdnode** %678, align 8
  %679 = load %struct.kdnode**, %struct.kdnode*** %22, align 8
  %680 = load %struct.kdnode*, %struct.kdnode** %679, align 8
  %681 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %680, i32 0, i32 2
  store %struct.kdnode* null, %struct.kdnode** %681, align 8
  %682 = load %struct.kdnode**, %struct.kdnode*** %22, align 8
  %683 = load %struct.kdnode*, %struct.kdnode** %682, align 8
  %684 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %683, i32 1
  store %struct.kdnode* %684, %struct.kdnode** %682, align 8
  %685 = load %struct.kdnode*, %struct.kdnode** %23, align 8
  %686 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %685, i32 0, i32 2
  store %struct.kdnode* %683, %struct.kdnode** %686, align 8
  %687 = load i32, i32* %26, align 4
  %688 = icmp eq i32 %687, 4
  br i1 %688, label %689, label %707

689:                                              ; preds = %675
  %690 = load i32*, i32** %19, align 8
  %691 = load i32*, i32** %15, align 8
  %692 = load i32*, i32** %16, align 8
  %693 = load i32*, i32** %17, align 8
  %694 = load i32*, i32** %14, align 8
  %695 = load i32*, i32** %18, align 8
  %696 = load i32, i32* %28, align 4
  %697 = add nsw i32 %696, 1
  %698 = load i32, i32* %21, align 4
  %699 = load %struct.kdnode**, %struct.kdnode*** %22, align 8
  %700 = load %struct.kdnode*, %struct.kdnode** %23, align 8
  %701 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %700, i32 0, i32 2
  %702 = load %struct.kdnode*, %struct.kdnode** %701, align 8
  %703 = load double*, double** %24, align 8
  %704 = load i32, i32* %25, align 4
  %705 = add nsw i32 %704, 1
  %706 = load i32, i32* %26, align 4
  call void @buildkdtree(i32* %690, i32* %691, i32* %692, i32* %693, i32* %694, i32* %695, i32 %697, i32 %698, %struct.kdnode** %699, %struct.kdnode* %702, double* %703, i32 %705, i32 %706)
  br label %725

707:                                              ; preds = %675
  %708 = load i32*, i32** %19, align 8
  %709 = load i32*, i32** %15, align 8
  %710 = load i32*, i32** %16, align 8
  %711 = load i32*, i32** %14, align 8
  %712 = load i32*, i32** %18, align 8
  %713 = load i32*, i32** %17, align 8
  %714 = load i32, i32* %28, align 4
  %715 = add nsw i32 %714, 1
  %716 = load i32, i32* %21, align 4
  %717 = load %struct.kdnode**, %struct.kdnode*** %22, align 8
  %718 = load %struct.kdnode*, %struct.kdnode** %23, align 8
  %719 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %718, i32 0, i32 2
  %720 = load %struct.kdnode*, %struct.kdnode** %719, align 8
  %721 = load double*, double** %24, align 8
  %722 = load i32, i32* %25, align 4
  %723 = add nsw i32 %722, 1
  %724 = load i32, i32* %26, align 4
  call void @buildkdtree(i32* %708, i32* %709, i32* %710, i32* %711, i32* %712, i32* %713, i32 %715, i32 %716, %struct.kdnode** %717, %struct.kdnode* %720, double* %721, i32 %723, i32 %724)
  br label %725

725:                                              ; preds = %707, %689
  br label %726

726:                                              ; preds = %725, %671
  br label %727

727:                                              ; preds = %726, %231
  br label %728

728:                                              ; preds = %727, %40
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @searchkdtree(%struct.kdnode* %0, double* %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7, double %8, double %9, i32 %10, i32* %11) #0 {
  %13 = alloca %struct.kdnode*, align 8
  %14 = alloca double*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  store %struct.kdnode* %0, %struct.kdnode** %13, align 8
  store double* %1, double** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32* %4, i32** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32* %6, i32** %19, align 8
  store i32* %7, i32** %20, align 8
  store double %8, double* %21, align 8
  store double %9, double* %22, align 8
  store i32 %10, i32* %23, align 4
  store i32* %11, i32** %24, align 8
  %30 = load i32, i32* %23, align 4
  %31 = add nsw i32 %30, 1
  %32 = load i32, i32* %15, align 4
  %33 = srem i32 %32, %31
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %12
  %37 = load %struct.kdnode*, %struct.kdnode** %13, align 8
  %38 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %37, i32 0, i32 2
  %39 = load %struct.kdnode*, %struct.kdnode** %38, align 8
  %40 = icmp ne %struct.kdnode* %39, null
  br i1 %40, label %75, label %41

41:                                               ; preds = %36, %12
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %91

44:                                               ; preds = %41
  %45 = load %struct.kdnode*, %struct.kdnode** %13, align 8
  %46 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %45, i32 0, i32 2
  %47 = load %struct.kdnode*, %struct.kdnode** %46, align 8
  %48 = icmp ne %struct.kdnode* %47, null
  br i1 %48, label %49, label %91

49:                                               ; preds = %44
  %50 = load double*, double** %14, align 8
  %51 = load i32, i32* %23, align 4
  %52 = load i32, i32* %16, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %53, %54
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %50, i64 %57
  %59 = load double, double* %58, align 8
  %60 = load double, double* %21, align 8
  %61 = fadd double %59, %60
  %62 = load double*, double** %14, align 8
  %63 = load i32, i32* %23, align 4
  %64 = load %struct.kdnode*, %struct.kdnode** %13, align 8
  %65 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %63, %66
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %67, %68
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, double* %62, i64 %71
  %73 = load double, double* %72, align 8
  %74 = fcmp oge double %61, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %49, %36
  %76 = load %struct.kdnode*, %struct.kdnode** %13, align 8
  %77 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %76, i32 0, i32 2
  %78 = load %struct.kdnode*, %struct.kdnode** %77, align 8
  %79 = load double*, double** %14, align 8
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, 1
  %82 = load i32, i32* %16, align 4
  %83 = load i32*, i32** %17, align 8
  %84 = load i32*, i32** %18, align 8
  %85 = load i32*, i32** %19, align 8
  %86 = load i32*, i32** %20, align 8
  %87 = load double, double* %21, align 8
  %88 = load double, double* %22, align 8
  %89 = load i32, i32* %23, align 4
  %90 = load i32*, i32** %24, align 8
  call void @searchkdtree(%struct.kdnode* %78, double* %79, i32 %81, i32 %82, i32* %83, i32* %84, i32* %85, i32* %86, double %87, double %88, i32 %89, i32* %90)
  br label %91

91:                                               ; preds = %75, %49, %44, %41
  %92 = load i32, i32* %16, align 4
  %93 = load %struct.kdnode*, %struct.kdnode** %13, align 8
  %94 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %92, %95
  br i1 %96, label %97, label %245

97:                                               ; preds = %91
  %98 = load i32*, i32** %24, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %97
  %105 = load i32*, i32** %24, align 8
  %106 = load %struct.kdnode*, %struct.kdnode** %13, align 8
  %107 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %105, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %245, label %113

113:                                              ; preds = %104, %97
  %114 = load double*, double** %14, align 8
  %115 = load i32, i32* %23, align 4
  %116 = load i32, i32* %16, align 4
  %117 = mul nsw i32 %115, %116
  %118 = add nsw i32 %117, 0
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds double, double* %114, i64 %119
  %121 = load double, double* %120, align 8
  %122 = load double*, double** %14, align 8
  %123 = load i32, i32* %23, align 4
  %124 = load %struct.kdnode*, %struct.kdnode** %13, align 8
  %125 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = mul nsw i32 %123, %126
  %128 = add nsw i32 %127, 0
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds double, double* %122, i64 %129
  %131 = load double, double* %130, align 8
  %132 = fsub double %121, %131
  store double %132, double* %25, align 8
  %133 = load double*, double** %14, align 8
  %134 = load i32, i32* %23, align 4
  %135 = load i32, i32* %16, align 4
  %136 = mul nsw i32 %134, %135
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds double, double* %133, i64 %138
  %140 = load double, double* %139, align 8
  %141 = load double*, double** %14, align 8
  %142 = load i32, i32* %23, align 4
  %143 = load %struct.kdnode*, %struct.kdnode** %13, align 8
  %144 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = mul nsw i32 %142, %145
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds double, double* %141, i64 %148
  %150 = load double, double* %149, align 8
  %151 = fsub double %140, %150
  store double %151, double* %26, align 8
  %152 = load double*, double** %14, align 8
  %153 = load i32, i32* %23, align 4
  %154 = load i32, i32* %16, align 4
  %155 = mul nsw i32 %153, %154
  %156 = add nsw i32 %155, 2
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds double, double* %152, i64 %157
  %159 = load double, double* %158, align 8
  %160 = load double*, double** %14, align 8
  %161 = load i32, i32* %23, align 4
  %162 = load %struct.kdnode*, %struct.kdnode** %13, align 8
  %163 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = mul nsw i32 %161, %164
  %166 = add nsw i32 %165, 2
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds double, double* %160, i64 %167
  %169 = load double, double* %168, align 8
  %170 = fsub double %159, %169
  store double %170, double* %27, align 8
  %171 = load double, double* %25, align 8
  %172 = load double, double* %25, align 8
  %173 = fmul double %171, %172
  %174 = load double, double* %26, align 8
  %175 = load double, double* %26, align 8
  %176 = fmul double %174, %175
  %177 = fadd double %173, %176
  %178 = load double, double* %27, align 8
  %179 = load double, double* %27, align 8
  %180 = fmul double %178, %179
  %181 = fadd double %177, %180
  store double %181, double* %29, align 8
  %182 = load i32, i32* %23, align 4
  %183 = icmp eq i32 %182, 4
  br i1 %183, label %184, label %209

184:                                              ; preds = %113
  %185 = load double*, double** %14, align 8
  %186 = load i32, i32* %23, align 4
  %187 = load i32, i32* %16, align 4
  %188 = mul nsw i32 %186, %187
  %189 = add nsw i32 %188, 3
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds double, double* %185, i64 %190
  %192 = load double, double* %191, align 8
  %193 = load double*, double** %14, align 8
  %194 = load i32, i32* %23, align 4
  %195 = load %struct.kdnode*, %struct.kdnode** %13, align 8
  %196 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = mul nsw i32 %194, %197
  %199 = add nsw i32 %198, 3
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds double, double* %193, i64 %200
  %202 = load double, double* %201, align 8
  %203 = fsub double %192, %202
  store double %203, double* %28, align 8
  %204 = load double, double* %28, align 8
  %205 = load double, double* %28, align 8
  %206 = fmul double %204, %205
  %207 = load double, double* %29, align 8
  %208 = fadd double %207, %206
  store double %208, double* %29, align 8
  br label %209

209:                                              ; preds = %184, %113
  %210 = load double, double* %29, align 8
  %211 = load double, double* %22, align 8
  %212 = fcmp olt double %210, %211
  br i1 %212, label %213, label %244

213:                                              ; preds = %209
  %214 = load %struct.kdnode*, %struct.kdnode** %13, align 8
  %215 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* %16, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %231

219:                                              ; preds = %213
  %220 = load %struct.kdnode*, %struct.kdnode** %13, align 8
  %221 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32*, i32** %19, align 8
  %224 = load i32*, i32** %17, align 8
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %223, i64 %226
  store i32 %222, i32* %227, align 4
  %228 = load i32*, i32** %17, align 8
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %228, align 4
  br label %243

231:                                              ; preds = %213
  %232 = load %struct.kdnode*, %struct.kdnode** %13, align 8
  %233 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32*, i32** %20, align 8
  %236 = load i32*, i32** %18, align 8
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %235, i64 %238
  store i32 %234, i32* %239, align 4
  %240 = load i32*, i32** %18, align 8
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %240, align 4
  br label %243

243:                                              ; preds = %231, %219
  br label %244

244:                                              ; preds = %243, %209
  br label %245

245:                                              ; preds = %244, %104, %91
  %246 = load i32, i32* %15, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %245
  %249 = load %struct.kdnode*, %struct.kdnode** %13, align 8
  %250 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %249, i32 0, i32 1
  %251 = load %struct.kdnode*, %struct.kdnode** %250, align 8
  %252 = icmp ne %struct.kdnode* %251, null
  br i1 %252, label %287, label %253

253:                                              ; preds = %248, %245
  %254 = load i32, i32* %15, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %303

256:                                              ; preds = %253
  %257 = load %struct.kdnode*, %struct.kdnode** %13, align 8
  %258 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %257, i32 0, i32 1
  %259 = load %struct.kdnode*, %struct.kdnode** %258, align 8
  %260 = icmp ne %struct.kdnode* %259, null
  br i1 %260, label %261, label %303

261:                                              ; preds = %256
  %262 = load double*, double** %14, align 8
  %263 = load i32, i32* %23, align 4
  %264 = load i32, i32* %16, align 4
  %265 = mul nsw i32 %263, %264
  %266 = load i32, i32* %15, align 4
  %267 = add nsw i32 %265, %266
  %268 = sub nsw i32 %267, 1
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds double, double* %262, i64 %269
  %271 = load double, double* %270, align 8
  %272 = load double, double* %21, align 8
  %273 = fsub double %271, %272
  %274 = load double*, double** %14, align 8
  %275 = load i32, i32* %23, align 4
  %276 = load %struct.kdnode*, %struct.kdnode** %13, align 8
  %277 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = mul nsw i32 %275, %278
  %280 = load i32, i32* %15, align 4
  %281 = add nsw i32 %279, %280
  %282 = sub nsw i32 %281, 1
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds double, double* %274, i64 %283
  %285 = load double, double* %284, align 8
  %286 = fcmp olt double %273, %285
  br i1 %286, label %287, label %303

287:                                              ; preds = %261, %248
  %288 = load %struct.kdnode*, %struct.kdnode** %13, align 8
  %289 = getelementptr inbounds %struct.kdnode, %struct.kdnode* %288, i32 0, i32 1
  %290 = load %struct.kdnode*, %struct.kdnode** %289, align 8
  %291 = load double*, double** %14, align 8
  %292 = load i32, i32* %15, align 4
  %293 = add nsw i32 %292, 1
  %294 = load i32, i32* %16, align 4
  %295 = load i32*, i32** %17, align 8
  %296 = load i32*, i32** %18, align 8
  %297 = load i32*, i32** %19, align 8
  %298 = load i32*, i32** %20, align 8
  %299 = load double, double* %21, align 8
  %300 = load double, double* %22, align 8
  %301 = load i32, i32* %23, align 4
  %302 = load i32*, i32** %24, align 8
  call void @searchkdtree(%struct.kdnode* %290, double* %291, i32 %293, i32 %294, i32* %295, i32* %296, i32* %297, i32* %298, double %299, double %300, i32 %301, i32* %302)
  br label %303

303:                                              ; preds = %287, %261, %256, %253
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heapsort_pairs(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sdiv i32 %7, 2
  store i32 %8, i32* %5, align 4
  br label %9

9:                                                ; preds = %16, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp sge i32 %10, 1
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  call void @downheap_pairs(i32* %13, i32 %14, i32 %15)
  br label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %5, align 4
  br label %9

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %23, %19
  %21 = load i32, i32* %4, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %44

23:                                               ; preds = %20
  %24 = load i32*, i32** %3, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  store i32 %35, i32* %40, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %4, align 4
  call void @downheap_pairs(i32* %41, i32 %43, i32 1)
  br label %20

44:                                               ; preds = %20
  ret void
}

declare dso_local void @free_ivector(i32*, i32, i32) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @downheap_index(i32* %0, i32 %1, i32 %2, double* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store double* %3, double** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %14, align 4
  br label %21

21:                                               ; preds = %91, %6
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sdiv i32 %23, 2
  %25 = icmp sle i32 %22, %24
  br i1 %25, label %26, label %104

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %26
  %34 = load double*, double** %10, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %35, %41
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, double* %34, i64 %45
  %47 = load double, double* %46, align 8
  %48 = load double*, double** %10, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %49, %54
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %48, i64 %58
  %60 = load double, double* %59, align 8
  %61 = fcmp olt double %47, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %33
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %62, %33, %26
  %66 = load double*, double** %10, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %14, align 4
  %69 = mul nsw i32 %67, %68
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, double* %66, i64 %72
  %74 = load double, double* %73, align 8
  %75 = load double*, double** %10, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %76, %82
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds double, double* %75, i64 %86
  %88 = load double, double* %87, align 8
  %89 = fcmp oge double %74, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %65
  br label %104

91:                                               ; preds = %65
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  store i32 %97, i32* %102, align 4
  %103 = load i32, i32* %13, align 4
  store i32 %103, i32* %9, align 4
  br label %21

104:                                              ; preds = %90, %21
  %105 = load i32, i32* %14, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  store i32 %105, i32* %110, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @downheap_pairs(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  br label %15

15:                                               ; preds = %53, %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sdiv i32 %17, 2
  %19 = icmp sle i32 %16, %18
  br i1 %19, label %20, label %66

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %20
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %33, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %27
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %40, %27, %20
  %44 = load i32, i32* %8, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp sge i32 %44, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %66

53:                                               ; preds = %43
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %59, i32* %64, align 4
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %6, align 4
  br label %15

66:                                               ; preds = %52, %15
  %67 = load i32, i32* %8, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 %67, i32* %72, align 4
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
