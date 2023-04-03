; ModuleID = 'mpglib/dct64_i386.c'
source_filename = "mpglib/dct64_i386.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pnts = external local_unnamed_addr global [5 x ptr], align 16

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn uwtable
define dso_local void @dct64(ptr nocapture noundef writeonly %a, ptr nocapture noundef writeonly %b, ptr noundef %c) local_unnamed_addr #0 {
entry:
  %bufs = alloca [64 x double], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %bufs) #3
  %add.ptr = getelementptr inbounds double, ptr %bufs, i64 32
  call fastcc void @dct64_1(ptr noundef %a, ptr noundef %b, ptr noundef nonnull %bufs, ptr noundef nonnull %add.ptr, ptr noundef %c)
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %bufs) #3
  ret void
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define internal fastcc void @dct64_1(ptr nocapture noundef writeonly %out0, ptr nocapture noundef writeonly %out1, ptr noundef %b1, ptr noundef %b2, ptr noundef readonly %samples) unnamed_addr #2 {
entry:
  %0 = load ptr, ptr @pnts, align 16, !tbaa !5
  %1 = load double, ptr %samples, align 8, !tbaa !9
  %arrayidx1 = getelementptr inbounds double, ptr %samples, i64 31
  %2 = load double, ptr %arrayidx1, align 8, !tbaa !9
  %add = fadd fast double %2, %1
  store double %add, ptr %b1, align 8, !tbaa !9
  %3 = load double, ptr %samples, align 8, !tbaa !9
  %4 = load double, ptr %arrayidx1, align 8, !tbaa !9
  %sub = fsub fast double %3, %4
  %5 = load double, ptr %0, align 8, !tbaa !9
  %mul = fmul fast double %sub, %5
  %arrayidx6 = getelementptr inbounds double, ptr %b1, i64 31
  store double %mul, ptr %arrayidx6, align 8, !tbaa !9
  %arrayidx7 = getelementptr inbounds double, ptr %samples, i64 1
  %6 = load double, ptr %arrayidx7, align 8, !tbaa !9
  %arrayidx8 = getelementptr inbounds double, ptr %samples, i64 30
  %7 = load double, ptr %arrayidx8, align 8, !tbaa !9
  %add9 = fadd fast double %7, %6
  %arrayidx10 = getelementptr inbounds double, ptr %b1, i64 1
  store double %add9, ptr %arrayidx10, align 8, !tbaa !9
  %8 = load double, ptr %arrayidx7, align 8, !tbaa !9
  %9 = load double, ptr %arrayidx8, align 8, !tbaa !9
  %sub13 = fsub fast double %8, %9
  %arrayidx14 = getelementptr inbounds double, ptr %0, i64 1
  %10 = load double, ptr %arrayidx14, align 8, !tbaa !9
  %mul15 = fmul fast double %sub13, %10
  %arrayidx16 = getelementptr inbounds double, ptr %b1, i64 30
  store double %mul15, ptr %arrayidx16, align 8, !tbaa !9
  %arrayidx17 = getelementptr inbounds double, ptr %samples, i64 2
  %11 = load double, ptr %arrayidx17, align 8, !tbaa !9
  %arrayidx18 = getelementptr inbounds double, ptr %samples, i64 29
  %12 = load double, ptr %arrayidx18, align 8, !tbaa !9
  %add19 = fadd fast double %12, %11
  %arrayidx20 = getelementptr inbounds double, ptr %b1, i64 2
  store double %add19, ptr %arrayidx20, align 8, !tbaa !9
  %13 = load double, ptr %arrayidx17, align 8, !tbaa !9
  %14 = load double, ptr %arrayidx18, align 8, !tbaa !9
  %sub23 = fsub fast double %13, %14
  %arrayidx24 = getelementptr inbounds double, ptr %0, i64 2
  %15 = load double, ptr %arrayidx24, align 8, !tbaa !9
  %mul25 = fmul fast double %sub23, %15
  %arrayidx26 = getelementptr inbounds double, ptr %b1, i64 29
  store double %mul25, ptr %arrayidx26, align 8, !tbaa !9
  %arrayidx27 = getelementptr inbounds double, ptr %samples, i64 3
  %16 = load double, ptr %arrayidx27, align 8, !tbaa !9
  %arrayidx28 = getelementptr inbounds double, ptr %samples, i64 28
  %17 = load double, ptr %arrayidx28, align 8, !tbaa !9
  %add29 = fadd fast double %17, %16
  %arrayidx30 = getelementptr inbounds double, ptr %b1, i64 3
  store double %add29, ptr %arrayidx30, align 8, !tbaa !9
  %18 = load double, ptr %arrayidx27, align 8, !tbaa !9
  %19 = load double, ptr %arrayidx28, align 8, !tbaa !9
  %sub33 = fsub fast double %18, %19
  %arrayidx34 = getelementptr inbounds double, ptr %0, i64 3
  %20 = load double, ptr %arrayidx34, align 8, !tbaa !9
  %mul35 = fmul fast double %sub33, %20
  %arrayidx36 = getelementptr inbounds double, ptr %b1, i64 28
  store double %mul35, ptr %arrayidx36, align 8, !tbaa !9
  %arrayidx37 = getelementptr inbounds double, ptr %samples, i64 4
  %21 = load double, ptr %arrayidx37, align 8, !tbaa !9
  %arrayidx38 = getelementptr inbounds double, ptr %samples, i64 27
  %22 = load double, ptr %arrayidx38, align 8, !tbaa !9
  %add39 = fadd fast double %22, %21
  %arrayidx40 = getelementptr inbounds double, ptr %b1, i64 4
  store double %add39, ptr %arrayidx40, align 8, !tbaa !9
  %23 = load double, ptr %arrayidx37, align 8, !tbaa !9
  %24 = load double, ptr %arrayidx38, align 8, !tbaa !9
  %sub43 = fsub fast double %23, %24
  %arrayidx44 = getelementptr inbounds double, ptr %0, i64 4
  %25 = load double, ptr %arrayidx44, align 8, !tbaa !9
  %mul45 = fmul fast double %sub43, %25
  %arrayidx46 = getelementptr inbounds double, ptr %b1, i64 27
  store double %mul45, ptr %arrayidx46, align 8, !tbaa !9
  %arrayidx47 = getelementptr inbounds double, ptr %samples, i64 5
  %26 = load double, ptr %arrayidx47, align 8, !tbaa !9
  %arrayidx48 = getelementptr inbounds double, ptr %samples, i64 26
  %27 = load double, ptr %arrayidx48, align 8, !tbaa !9
  %add49 = fadd fast double %27, %26
  %arrayidx50 = getelementptr inbounds double, ptr %b1, i64 5
  store double %add49, ptr %arrayidx50, align 8, !tbaa !9
  %28 = load double, ptr %arrayidx47, align 8, !tbaa !9
  %29 = load double, ptr %arrayidx48, align 8, !tbaa !9
  %sub53 = fsub fast double %28, %29
  %arrayidx54 = getelementptr inbounds double, ptr %0, i64 5
  %30 = load double, ptr %arrayidx54, align 8, !tbaa !9
  %mul55 = fmul fast double %sub53, %30
  %arrayidx56 = getelementptr inbounds double, ptr %b1, i64 26
  store double %mul55, ptr %arrayidx56, align 8, !tbaa !9
  %arrayidx57 = getelementptr inbounds double, ptr %samples, i64 6
  %31 = load double, ptr %arrayidx57, align 8, !tbaa !9
  %arrayidx58 = getelementptr inbounds double, ptr %samples, i64 25
  %32 = load double, ptr %arrayidx58, align 8, !tbaa !9
  %add59 = fadd fast double %32, %31
  %arrayidx60 = getelementptr inbounds double, ptr %b1, i64 6
  store double %add59, ptr %arrayidx60, align 8, !tbaa !9
  %33 = load double, ptr %arrayidx57, align 8, !tbaa !9
  %34 = load double, ptr %arrayidx58, align 8, !tbaa !9
  %sub63 = fsub fast double %33, %34
  %arrayidx64 = getelementptr inbounds double, ptr %0, i64 6
  %35 = load double, ptr %arrayidx64, align 8, !tbaa !9
  %mul65 = fmul fast double %sub63, %35
  %arrayidx66 = getelementptr inbounds double, ptr %b1, i64 25
  store double %mul65, ptr %arrayidx66, align 8, !tbaa !9
  %arrayidx67 = getelementptr inbounds double, ptr %samples, i64 7
  %36 = load double, ptr %arrayidx67, align 8, !tbaa !9
  %arrayidx68 = getelementptr inbounds double, ptr %samples, i64 24
  %37 = load double, ptr %arrayidx68, align 8, !tbaa !9
  %add69 = fadd fast double %37, %36
  %arrayidx70 = getelementptr inbounds double, ptr %b1, i64 7
  store double %add69, ptr %arrayidx70, align 8, !tbaa !9
  %38 = load double, ptr %arrayidx67, align 8, !tbaa !9
  %39 = load double, ptr %arrayidx68, align 8, !tbaa !9
  %sub73 = fsub fast double %38, %39
  %arrayidx74 = getelementptr inbounds double, ptr %0, i64 7
  %40 = load double, ptr %arrayidx74, align 8, !tbaa !9
  %mul75 = fmul fast double %sub73, %40
  %arrayidx76 = getelementptr inbounds double, ptr %b1, i64 24
  store double %mul75, ptr %arrayidx76, align 8, !tbaa !9
  %arrayidx77 = getelementptr inbounds double, ptr %samples, i64 8
  %41 = load double, ptr %arrayidx77, align 8, !tbaa !9
  %arrayidx78 = getelementptr inbounds double, ptr %samples, i64 23
  %42 = load double, ptr %arrayidx78, align 8, !tbaa !9
  %add79 = fadd fast double %42, %41
  %arrayidx80 = getelementptr inbounds double, ptr %b1, i64 8
  store double %add79, ptr %arrayidx80, align 8, !tbaa !9
  %43 = load double, ptr %arrayidx77, align 8, !tbaa !9
  %44 = load double, ptr %arrayidx78, align 8, !tbaa !9
  %sub83 = fsub fast double %43, %44
  %arrayidx84 = getelementptr inbounds double, ptr %0, i64 8
  %45 = load double, ptr %arrayidx84, align 8, !tbaa !9
  %mul85 = fmul fast double %sub83, %45
  %arrayidx86 = getelementptr inbounds double, ptr %b1, i64 23
  store double %mul85, ptr %arrayidx86, align 8, !tbaa !9
  %arrayidx87 = getelementptr inbounds double, ptr %samples, i64 9
  %46 = load double, ptr %arrayidx87, align 8, !tbaa !9
  %arrayidx88 = getelementptr inbounds double, ptr %samples, i64 22
  %47 = load double, ptr %arrayidx88, align 8, !tbaa !9
  %add89 = fadd fast double %47, %46
  %arrayidx90 = getelementptr inbounds double, ptr %b1, i64 9
  store double %add89, ptr %arrayidx90, align 8, !tbaa !9
  %48 = load double, ptr %arrayidx87, align 8, !tbaa !9
  %49 = load double, ptr %arrayidx88, align 8, !tbaa !9
  %sub93 = fsub fast double %48, %49
  %arrayidx94 = getelementptr inbounds double, ptr %0, i64 9
  %50 = load double, ptr %arrayidx94, align 8, !tbaa !9
  %mul95 = fmul fast double %sub93, %50
  %arrayidx96 = getelementptr inbounds double, ptr %b1, i64 22
  store double %mul95, ptr %arrayidx96, align 8, !tbaa !9
  %arrayidx97 = getelementptr inbounds double, ptr %samples, i64 10
  %51 = load double, ptr %arrayidx97, align 8, !tbaa !9
  %arrayidx98 = getelementptr inbounds double, ptr %samples, i64 21
  %52 = load double, ptr %arrayidx98, align 8, !tbaa !9
  %add99 = fadd fast double %52, %51
  %arrayidx100 = getelementptr inbounds double, ptr %b1, i64 10
  store double %add99, ptr %arrayidx100, align 8, !tbaa !9
  %53 = load double, ptr %arrayidx97, align 8, !tbaa !9
  %54 = load double, ptr %arrayidx98, align 8, !tbaa !9
  %sub103 = fsub fast double %53, %54
  %arrayidx104 = getelementptr inbounds double, ptr %0, i64 10
  %55 = load double, ptr %arrayidx104, align 8, !tbaa !9
  %mul105 = fmul fast double %sub103, %55
  %arrayidx106 = getelementptr inbounds double, ptr %b1, i64 21
  store double %mul105, ptr %arrayidx106, align 8, !tbaa !9
  %arrayidx107 = getelementptr inbounds double, ptr %samples, i64 11
  %56 = load double, ptr %arrayidx107, align 8, !tbaa !9
  %arrayidx108 = getelementptr inbounds double, ptr %samples, i64 20
  %57 = load double, ptr %arrayidx108, align 8, !tbaa !9
  %add109 = fadd fast double %57, %56
  %arrayidx110 = getelementptr inbounds double, ptr %b1, i64 11
  store double %add109, ptr %arrayidx110, align 8, !tbaa !9
  %58 = load double, ptr %arrayidx107, align 8, !tbaa !9
  %59 = load double, ptr %arrayidx108, align 8, !tbaa !9
  %sub113 = fsub fast double %58, %59
  %arrayidx114 = getelementptr inbounds double, ptr %0, i64 11
  %60 = load double, ptr %arrayidx114, align 8, !tbaa !9
  %mul115 = fmul fast double %sub113, %60
  %arrayidx116 = getelementptr inbounds double, ptr %b1, i64 20
  store double %mul115, ptr %arrayidx116, align 8, !tbaa !9
  %arrayidx117 = getelementptr inbounds double, ptr %samples, i64 12
  %61 = load double, ptr %arrayidx117, align 8, !tbaa !9
  %arrayidx118 = getelementptr inbounds double, ptr %samples, i64 19
  %62 = load double, ptr %arrayidx118, align 8, !tbaa !9
  %add119 = fadd fast double %62, %61
  %arrayidx120 = getelementptr inbounds double, ptr %b1, i64 12
  store double %add119, ptr %arrayidx120, align 8, !tbaa !9
  %63 = load double, ptr %arrayidx117, align 8, !tbaa !9
  %64 = load double, ptr %arrayidx118, align 8, !tbaa !9
  %sub123 = fsub fast double %63, %64
  %arrayidx124 = getelementptr inbounds double, ptr %0, i64 12
  %65 = load double, ptr %arrayidx124, align 8, !tbaa !9
  %mul125 = fmul fast double %sub123, %65
  %arrayidx126 = getelementptr inbounds double, ptr %b1, i64 19
  store double %mul125, ptr %arrayidx126, align 8, !tbaa !9
  %arrayidx127 = getelementptr inbounds double, ptr %samples, i64 13
  %66 = load double, ptr %arrayidx127, align 8, !tbaa !9
  %arrayidx128 = getelementptr inbounds double, ptr %samples, i64 18
  %67 = load double, ptr %arrayidx128, align 8, !tbaa !9
  %add129 = fadd fast double %67, %66
  %arrayidx130 = getelementptr inbounds double, ptr %b1, i64 13
  store double %add129, ptr %arrayidx130, align 8, !tbaa !9
  %68 = load double, ptr %arrayidx127, align 8, !tbaa !9
  %69 = load double, ptr %arrayidx128, align 8, !tbaa !9
  %sub133 = fsub fast double %68, %69
  %arrayidx134 = getelementptr inbounds double, ptr %0, i64 13
  %70 = load double, ptr %arrayidx134, align 8, !tbaa !9
  %mul135 = fmul fast double %sub133, %70
  %arrayidx136 = getelementptr inbounds double, ptr %b1, i64 18
  store double %mul135, ptr %arrayidx136, align 8, !tbaa !9
  %arrayidx137 = getelementptr inbounds double, ptr %samples, i64 14
  %71 = load double, ptr %arrayidx137, align 8, !tbaa !9
  %arrayidx138 = getelementptr inbounds double, ptr %samples, i64 17
  %72 = load double, ptr %arrayidx138, align 8, !tbaa !9
  %add139 = fadd fast double %72, %71
  %arrayidx140 = getelementptr inbounds double, ptr %b1, i64 14
  store double %add139, ptr %arrayidx140, align 8, !tbaa !9
  %73 = load double, ptr %arrayidx137, align 8, !tbaa !9
  %74 = load double, ptr %arrayidx138, align 8, !tbaa !9
  %sub143 = fsub fast double %73, %74
  %arrayidx144 = getelementptr inbounds double, ptr %0, i64 14
  %75 = load double, ptr %arrayidx144, align 8, !tbaa !9
  %mul145 = fmul fast double %sub143, %75
  %arrayidx146 = getelementptr inbounds double, ptr %b1, i64 17
  store double %mul145, ptr %arrayidx146, align 8, !tbaa !9
  %arrayidx147 = getelementptr inbounds double, ptr %samples, i64 15
  %76 = load double, ptr %arrayidx147, align 8, !tbaa !9
  %arrayidx148 = getelementptr inbounds double, ptr %samples, i64 16
  %77 = load double, ptr %arrayidx148, align 8, !tbaa !9
  %add149 = fadd fast double %77, %76
  %arrayidx150 = getelementptr inbounds double, ptr %b1, i64 15
  store double %add149, ptr %arrayidx150, align 8, !tbaa !9
  %78 = load double, ptr %arrayidx147, align 8, !tbaa !9
  %79 = load double, ptr %arrayidx148, align 8, !tbaa !9
  %sub153 = fsub fast double %78, %79
  %arrayidx154 = getelementptr inbounds double, ptr %0, i64 15
  %80 = load double, ptr %arrayidx154, align 8, !tbaa !9
  %mul155 = fmul fast double %sub153, %80
  %arrayidx156 = getelementptr inbounds double, ptr %b1, i64 16
  store double %mul155, ptr %arrayidx156, align 8, !tbaa !9
  %81 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @pnts, i64 0, i64 1), align 8, !tbaa !5
  %add160 = fadd fast double %add149, %add
  store double %add160, ptr %b2, align 8, !tbaa !9
  %82 = load double, ptr %b1, align 8, !tbaa !9
  %83 = load double, ptr %arrayidx150, align 8, !tbaa !9
  %sub164 = fsub fast double %82, %83
  %84 = load double, ptr %81, align 8, !tbaa !9
  %mul166 = fmul fast double %sub164, %84
  %arrayidx167 = getelementptr inbounds double, ptr %b2, i64 15
  store double %mul166, ptr %arrayidx167, align 8, !tbaa !9
  %85 = load double, ptr %arrayidx10, align 8, !tbaa !9
  %86 = load double, ptr %arrayidx140, align 8, !tbaa !9
  %add170 = fadd fast double %86, %85
  %arrayidx171 = getelementptr inbounds double, ptr %b2, i64 1
  store double %add170, ptr %arrayidx171, align 8, !tbaa !9
  %87 = load double, ptr %arrayidx10, align 8, !tbaa !9
  %88 = load double, ptr %arrayidx140, align 8, !tbaa !9
  %sub174 = fsub fast double %87, %88
  %arrayidx175 = getelementptr inbounds double, ptr %81, i64 1
  %89 = load double, ptr %arrayidx175, align 8, !tbaa !9
  %mul176 = fmul fast double %sub174, %89
  %arrayidx177 = getelementptr inbounds double, ptr %b2, i64 14
  store double %mul176, ptr %arrayidx177, align 8, !tbaa !9
  %90 = load double, ptr %arrayidx20, align 8, !tbaa !9
  %91 = load double, ptr %arrayidx130, align 8, !tbaa !9
  %add180 = fadd fast double %91, %90
  %arrayidx181 = getelementptr inbounds double, ptr %b2, i64 2
  store double %add180, ptr %arrayidx181, align 8, !tbaa !9
  %92 = load double, ptr %arrayidx20, align 8, !tbaa !9
  %93 = load double, ptr %arrayidx130, align 8, !tbaa !9
  %sub184 = fsub fast double %92, %93
  %arrayidx185 = getelementptr inbounds double, ptr %81, i64 2
  %94 = load double, ptr %arrayidx185, align 8, !tbaa !9
  %mul186 = fmul fast double %sub184, %94
  %arrayidx187 = getelementptr inbounds double, ptr %b2, i64 13
  store double %mul186, ptr %arrayidx187, align 8, !tbaa !9
  %95 = load double, ptr %arrayidx30, align 8, !tbaa !9
  %96 = load double, ptr %arrayidx120, align 8, !tbaa !9
  %add190 = fadd fast double %96, %95
  %arrayidx191 = getelementptr inbounds double, ptr %b2, i64 3
  store double %add190, ptr %arrayidx191, align 8, !tbaa !9
  %97 = load double, ptr %arrayidx30, align 8, !tbaa !9
  %98 = load double, ptr %arrayidx120, align 8, !tbaa !9
  %sub194 = fsub fast double %97, %98
  %arrayidx195 = getelementptr inbounds double, ptr %81, i64 3
  %99 = load double, ptr %arrayidx195, align 8, !tbaa !9
  %mul196 = fmul fast double %sub194, %99
  %arrayidx197 = getelementptr inbounds double, ptr %b2, i64 12
  store double %mul196, ptr %arrayidx197, align 8, !tbaa !9
  %100 = load double, ptr %arrayidx40, align 8, !tbaa !9
  %101 = load double, ptr %arrayidx110, align 8, !tbaa !9
  %add200 = fadd fast double %101, %100
  %arrayidx201 = getelementptr inbounds double, ptr %b2, i64 4
  store double %add200, ptr %arrayidx201, align 8, !tbaa !9
  %102 = load double, ptr %arrayidx40, align 8, !tbaa !9
  %103 = load double, ptr %arrayidx110, align 8, !tbaa !9
  %sub204 = fsub fast double %102, %103
  %arrayidx205 = getelementptr inbounds double, ptr %81, i64 4
  %104 = load double, ptr %arrayidx205, align 8, !tbaa !9
  %mul206 = fmul fast double %sub204, %104
  %arrayidx207 = getelementptr inbounds double, ptr %b2, i64 11
  store double %mul206, ptr %arrayidx207, align 8, !tbaa !9
  %105 = load double, ptr %arrayidx50, align 8, !tbaa !9
  %106 = load double, ptr %arrayidx100, align 8, !tbaa !9
  %add210 = fadd fast double %106, %105
  %arrayidx211 = getelementptr inbounds double, ptr %b2, i64 5
  store double %add210, ptr %arrayidx211, align 8, !tbaa !9
  %107 = load double, ptr %arrayidx50, align 8, !tbaa !9
  %108 = load double, ptr %arrayidx100, align 8, !tbaa !9
  %sub214 = fsub fast double %107, %108
  %arrayidx215 = getelementptr inbounds double, ptr %81, i64 5
  %109 = load double, ptr %arrayidx215, align 8, !tbaa !9
  %mul216 = fmul fast double %sub214, %109
  %arrayidx217 = getelementptr inbounds double, ptr %b2, i64 10
  store double %mul216, ptr %arrayidx217, align 8, !tbaa !9
  %110 = load double, ptr %arrayidx60, align 8, !tbaa !9
  %111 = load double, ptr %arrayidx90, align 8, !tbaa !9
  %add220 = fadd fast double %111, %110
  %arrayidx221 = getelementptr inbounds double, ptr %b2, i64 6
  store double %add220, ptr %arrayidx221, align 8, !tbaa !9
  %112 = load double, ptr %arrayidx60, align 8, !tbaa !9
  %113 = load double, ptr %arrayidx90, align 8, !tbaa !9
  %sub224 = fsub fast double %112, %113
  %arrayidx225 = getelementptr inbounds double, ptr %81, i64 6
  %114 = load double, ptr %arrayidx225, align 8, !tbaa !9
  %mul226 = fmul fast double %sub224, %114
  %arrayidx227 = getelementptr inbounds double, ptr %b2, i64 9
  store double %mul226, ptr %arrayidx227, align 8, !tbaa !9
  %115 = load double, ptr %arrayidx70, align 8, !tbaa !9
  %116 = load double, ptr %arrayidx80, align 8, !tbaa !9
  %add230 = fadd fast double %116, %115
  %arrayidx231 = getelementptr inbounds double, ptr %b2, i64 7
  store double %add230, ptr %arrayidx231, align 8, !tbaa !9
  %117 = load double, ptr %arrayidx70, align 8, !tbaa !9
  %118 = load double, ptr %arrayidx80, align 8, !tbaa !9
  %sub234 = fsub fast double %117, %118
  %arrayidx235 = getelementptr inbounds double, ptr %81, i64 7
  %119 = load double, ptr %arrayidx235, align 8, !tbaa !9
  %mul236 = fmul fast double %sub234, %119
  %arrayidx237 = getelementptr inbounds double, ptr %b2, i64 8
  store double %mul236, ptr %arrayidx237, align 8, !tbaa !9
  %120 = load double, ptr %arrayidx156, align 8, !tbaa !9
  %121 = load double, ptr %arrayidx6, align 8, !tbaa !9
  %add240 = fadd fast double %121, %120
  %arrayidx241 = getelementptr inbounds double, ptr %b2, i64 16
  store double %add240, ptr %arrayidx241, align 8, !tbaa !9
  %122 = load double, ptr %arrayidx6, align 8, !tbaa !9
  %123 = load double, ptr %arrayidx156, align 8, !tbaa !9
  %sub244 = fsub fast double %122, %123
  %124 = load double, ptr %81, align 8, !tbaa !9
  %mul246 = fmul fast double %sub244, %124
  %arrayidx247 = getelementptr inbounds double, ptr %b2, i64 31
  store double %mul246, ptr %arrayidx247, align 8, !tbaa !9
  %125 = load double, ptr %arrayidx146, align 8, !tbaa !9
  %126 = load double, ptr %arrayidx16, align 8, !tbaa !9
  %add250 = fadd fast double %126, %125
  %arrayidx251 = getelementptr inbounds double, ptr %b2, i64 17
  store double %add250, ptr %arrayidx251, align 8, !tbaa !9
  %127 = load double, ptr %arrayidx16, align 8, !tbaa !9
  %128 = load double, ptr %arrayidx146, align 8, !tbaa !9
  %sub254 = fsub fast double %127, %128
  %129 = load double, ptr %arrayidx175, align 8, !tbaa !9
  %mul256 = fmul fast double %sub254, %129
  %arrayidx257 = getelementptr inbounds double, ptr %b2, i64 30
  store double %mul256, ptr %arrayidx257, align 8, !tbaa !9
  %130 = load double, ptr %arrayidx136, align 8, !tbaa !9
  %131 = load double, ptr %arrayidx26, align 8, !tbaa !9
  %add260 = fadd fast double %131, %130
  %arrayidx261 = getelementptr inbounds double, ptr %b2, i64 18
  store double %add260, ptr %arrayidx261, align 8, !tbaa !9
  %132 = load double, ptr %arrayidx26, align 8, !tbaa !9
  %133 = load double, ptr %arrayidx136, align 8, !tbaa !9
  %sub264 = fsub fast double %132, %133
  %134 = load double, ptr %arrayidx185, align 8, !tbaa !9
  %mul266 = fmul fast double %sub264, %134
  %arrayidx267 = getelementptr inbounds double, ptr %b2, i64 29
  store double %mul266, ptr %arrayidx267, align 8, !tbaa !9
  %135 = load double, ptr %arrayidx126, align 8, !tbaa !9
  %136 = load double, ptr %arrayidx36, align 8, !tbaa !9
  %add270 = fadd fast double %136, %135
  %arrayidx271 = getelementptr inbounds double, ptr %b2, i64 19
  store double %add270, ptr %arrayidx271, align 8, !tbaa !9
  %137 = load double, ptr %arrayidx36, align 8, !tbaa !9
  %138 = load double, ptr %arrayidx126, align 8, !tbaa !9
  %sub274 = fsub fast double %137, %138
  %139 = load double, ptr %arrayidx195, align 8, !tbaa !9
  %mul276 = fmul fast double %sub274, %139
  %arrayidx277 = getelementptr inbounds double, ptr %b2, i64 28
  store double %mul276, ptr %arrayidx277, align 8, !tbaa !9
  %140 = load double, ptr %arrayidx116, align 8, !tbaa !9
  %141 = load double, ptr %arrayidx46, align 8, !tbaa !9
  %add280 = fadd fast double %141, %140
  %arrayidx281 = getelementptr inbounds double, ptr %b2, i64 20
  store double %add280, ptr %arrayidx281, align 8, !tbaa !9
  %142 = load double, ptr %arrayidx46, align 8, !tbaa !9
  %143 = load double, ptr %arrayidx116, align 8, !tbaa !9
  %sub284 = fsub fast double %142, %143
  %144 = load double, ptr %arrayidx205, align 8, !tbaa !9
  %mul286 = fmul fast double %sub284, %144
  %arrayidx287 = getelementptr inbounds double, ptr %b2, i64 27
  store double %mul286, ptr %arrayidx287, align 8, !tbaa !9
  %145 = load double, ptr %arrayidx106, align 8, !tbaa !9
  %146 = load double, ptr %arrayidx56, align 8, !tbaa !9
  %add290 = fadd fast double %146, %145
  %arrayidx291 = getelementptr inbounds double, ptr %b2, i64 21
  store double %add290, ptr %arrayidx291, align 8, !tbaa !9
  %147 = load double, ptr %arrayidx56, align 8, !tbaa !9
  %148 = load double, ptr %arrayidx106, align 8, !tbaa !9
  %sub294 = fsub fast double %147, %148
  %149 = load double, ptr %arrayidx215, align 8, !tbaa !9
  %mul296 = fmul fast double %sub294, %149
  %arrayidx297 = getelementptr inbounds double, ptr %b2, i64 26
  store double %mul296, ptr %arrayidx297, align 8, !tbaa !9
  %150 = load double, ptr %arrayidx96, align 8, !tbaa !9
  %151 = load double, ptr %arrayidx66, align 8, !tbaa !9
  %add300 = fadd fast double %151, %150
  %arrayidx301 = getelementptr inbounds double, ptr %b2, i64 22
  store double %add300, ptr %arrayidx301, align 8, !tbaa !9
  %152 = load double, ptr %arrayidx66, align 8, !tbaa !9
  %153 = load double, ptr %arrayidx96, align 8, !tbaa !9
  %sub304 = fsub fast double %152, %153
  %154 = load double, ptr %arrayidx225, align 8, !tbaa !9
  %mul306 = fmul fast double %sub304, %154
  %arrayidx307 = getelementptr inbounds double, ptr %b2, i64 25
  store double %mul306, ptr %arrayidx307, align 8, !tbaa !9
  %155 = load double, ptr %arrayidx86, align 8, !tbaa !9
  %156 = load double, ptr %arrayidx76, align 8, !tbaa !9
  %add310 = fadd fast double %156, %155
  %arrayidx311 = getelementptr inbounds double, ptr %b2, i64 23
  store double %add310, ptr %arrayidx311, align 8, !tbaa !9
  %157 = load double, ptr %arrayidx76, align 8, !tbaa !9
  %158 = load double, ptr %arrayidx86, align 8, !tbaa !9
  %sub314 = fsub fast double %157, %158
  %159 = load double, ptr %arrayidx235, align 8, !tbaa !9
  %mul316 = fmul fast double %sub314, %159
  %arrayidx317 = getelementptr inbounds double, ptr %b2, i64 24
  store double %mul316, ptr %arrayidx317, align 8, !tbaa !9
  %160 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @pnts, i64 0, i64 2), align 16, !tbaa !5
  %add321 = fadd fast double %add230, %add160
  store double %add321, ptr %b1, align 8, !tbaa !9
  %161 = load double, ptr %b2, align 8, !tbaa !9
  %162 = load double, ptr %arrayidx231, align 8, !tbaa !9
  %sub325 = fsub fast double %161, %162
  %163 = load double, ptr %160, align 8, !tbaa !9
  %mul327 = fmul fast double %sub325, %163
  store double %mul327, ptr %arrayidx70, align 8, !tbaa !9
  %164 = load double, ptr %arrayidx171, align 8, !tbaa !9
  %165 = load double, ptr %arrayidx221, align 8, !tbaa !9
  %add331 = fadd fast double %165, %164
  store double %add331, ptr %arrayidx10, align 8, !tbaa !9
  %166 = load double, ptr %arrayidx171, align 8, !tbaa !9
  %167 = load double, ptr %arrayidx221, align 8, !tbaa !9
  %sub335 = fsub fast double %166, %167
  %arrayidx336 = getelementptr inbounds double, ptr %160, i64 1
  %168 = load double, ptr %arrayidx336, align 8, !tbaa !9
  %mul337 = fmul fast double %sub335, %168
  store double %mul337, ptr %arrayidx60, align 8, !tbaa !9
  %169 = load double, ptr %arrayidx181, align 8, !tbaa !9
  %170 = load double, ptr %arrayidx211, align 8, !tbaa !9
  %add341 = fadd fast double %170, %169
  store double %add341, ptr %arrayidx20, align 8, !tbaa !9
  %171 = load double, ptr %arrayidx181, align 8, !tbaa !9
  %172 = load double, ptr %arrayidx211, align 8, !tbaa !9
  %sub345 = fsub fast double %171, %172
  %arrayidx346 = getelementptr inbounds double, ptr %160, i64 2
  %173 = load double, ptr %arrayidx346, align 8, !tbaa !9
  %mul347 = fmul fast double %sub345, %173
  store double %mul347, ptr %arrayidx50, align 8, !tbaa !9
  %174 = load double, ptr %arrayidx191, align 8, !tbaa !9
  %175 = load double, ptr %arrayidx201, align 8, !tbaa !9
  %add351 = fadd fast double %175, %174
  store double %add351, ptr %arrayidx30, align 8, !tbaa !9
  %176 = load double, ptr %arrayidx191, align 8, !tbaa !9
  %177 = load double, ptr %arrayidx201, align 8, !tbaa !9
  %sub355 = fsub fast double %176, %177
  %arrayidx356 = getelementptr inbounds double, ptr %160, i64 3
  %178 = load double, ptr %arrayidx356, align 8, !tbaa !9
  %mul357 = fmul fast double %sub355, %178
  store double %mul357, ptr %arrayidx40, align 8, !tbaa !9
  %179 = load double, ptr %arrayidx237, align 8, !tbaa !9
  %180 = load double, ptr %arrayidx167, align 8, !tbaa !9
  %add361 = fadd fast double %180, %179
  store double %add361, ptr %arrayidx80, align 8, !tbaa !9
  %181 = load double, ptr %arrayidx167, align 8, !tbaa !9
  %182 = load double, ptr %arrayidx237, align 8, !tbaa !9
  %sub365 = fsub fast double %181, %182
  %183 = load double, ptr %160, align 8, !tbaa !9
  %mul367 = fmul fast double %sub365, %183
  store double %mul367, ptr %arrayidx150, align 8, !tbaa !9
  %184 = load double, ptr %arrayidx227, align 8, !tbaa !9
  %185 = load double, ptr %arrayidx177, align 8, !tbaa !9
  %add371 = fadd fast double %185, %184
  store double %add371, ptr %arrayidx90, align 8, !tbaa !9
  %186 = load double, ptr %arrayidx177, align 8, !tbaa !9
  %187 = load double, ptr %arrayidx227, align 8, !tbaa !9
  %sub375 = fsub fast double %186, %187
  %188 = load double, ptr %arrayidx336, align 8, !tbaa !9
  %mul377 = fmul fast double %sub375, %188
  store double %mul377, ptr %arrayidx140, align 8, !tbaa !9
  %189 = load double, ptr %arrayidx217, align 8, !tbaa !9
  %190 = load double, ptr %arrayidx187, align 8, !tbaa !9
  %add381 = fadd fast double %190, %189
  store double %add381, ptr %arrayidx100, align 8, !tbaa !9
  %191 = load double, ptr %arrayidx187, align 8, !tbaa !9
  %192 = load double, ptr %arrayidx217, align 8, !tbaa !9
  %sub385 = fsub fast double %191, %192
  %193 = load double, ptr %arrayidx346, align 8, !tbaa !9
  %mul387 = fmul fast double %sub385, %193
  store double %mul387, ptr %arrayidx130, align 8, !tbaa !9
  %194 = load double, ptr %arrayidx207, align 8, !tbaa !9
  %195 = load double, ptr %arrayidx197, align 8, !tbaa !9
  %add391 = fadd fast double %195, %194
  store double %add391, ptr %arrayidx110, align 8, !tbaa !9
  %196 = load double, ptr %arrayidx197, align 8, !tbaa !9
  %197 = load double, ptr %arrayidx207, align 8, !tbaa !9
  %sub395 = fsub fast double %196, %197
  %198 = load double, ptr %arrayidx356, align 8, !tbaa !9
  %mul397 = fmul fast double %sub395, %198
  store double %mul397, ptr %arrayidx120, align 8, !tbaa !9
  %199 = load double, ptr %arrayidx241, align 8, !tbaa !9
  %200 = load double, ptr %arrayidx311, align 8, !tbaa !9
  %add401 = fadd fast double %200, %199
  store double %add401, ptr %arrayidx156, align 8, !tbaa !9
  %201 = load double, ptr %arrayidx241, align 8, !tbaa !9
  %202 = load double, ptr %arrayidx311, align 8, !tbaa !9
  %sub405 = fsub fast double %201, %202
  %203 = load double, ptr %160, align 8, !tbaa !9
  %mul407 = fmul fast double %sub405, %203
  store double %mul407, ptr %arrayidx86, align 8, !tbaa !9
  %204 = load double, ptr %arrayidx251, align 8, !tbaa !9
  %205 = load double, ptr %arrayidx301, align 8, !tbaa !9
  %add411 = fadd fast double %205, %204
  store double %add411, ptr %arrayidx146, align 8, !tbaa !9
  %206 = load double, ptr %arrayidx251, align 8, !tbaa !9
  %207 = load double, ptr %arrayidx301, align 8, !tbaa !9
  %sub415 = fsub fast double %206, %207
  %208 = load double, ptr %arrayidx336, align 8, !tbaa !9
  %mul417 = fmul fast double %sub415, %208
  store double %mul417, ptr %arrayidx96, align 8, !tbaa !9
  %209 = load double, ptr %arrayidx261, align 8, !tbaa !9
  %210 = load double, ptr %arrayidx291, align 8, !tbaa !9
  %add421 = fadd fast double %210, %209
  store double %add421, ptr %arrayidx136, align 8, !tbaa !9
  %211 = load double, ptr %arrayidx261, align 8, !tbaa !9
  %212 = load double, ptr %arrayidx291, align 8, !tbaa !9
  %sub425 = fsub fast double %211, %212
  %213 = load double, ptr %arrayidx346, align 8, !tbaa !9
  %mul427 = fmul fast double %sub425, %213
  store double %mul427, ptr %arrayidx106, align 8, !tbaa !9
  %214 = load double, ptr %arrayidx271, align 8, !tbaa !9
  %215 = load double, ptr %arrayidx281, align 8, !tbaa !9
  %add431 = fadd fast double %215, %214
  store double %add431, ptr %arrayidx126, align 8, !tbaa !9
  %216 = load double, ptr %arrayidx271, align 8, !tbaa !9
  %217 = load double, ptr %arrayidx281, align 8, !tbaa !9
  %sub435 = fsub fast double %216, %217
  %218 = load double, ptr %arrayidx356, align 8, !tbaa !9
  %mul437 = fmul fast double %sub435, %218
  store double %mul437, ptr %arrayidx116, align 8, !tbaa !9
  %219 = load double, ptr %arrayidx317, align 8, !tbaa !9
  %220 = load double, ptr %arrayidx247, align 8, !tbaa !9
  %add441 = fadd fast double %220, %219
  store double %add441, ptr %arrayidx76, align 8, !tbaa !9
  %221 = load double, ptr %arrayidx247, align 8, !tbaa !9
  %222 = load double, ptr %arrayidx317, align 8, !tbaa !9
  %sub445 = fsub fast double %221, %222
  %223 = load double, ptr %160, align 8, !tbaa !9
  %mul447 = fmul fast double %sub445, %223
  store double %mul447, ptr %arrayidx6, align 8, !tbaa !9
  %224 = load double, ptr %arrayidx307, align 8, !tbaa !9
  %225 = load double, ptr %arrayidx257, align 8, !tbaa !9
  %add451 = fadd fast double %225, %224
  store double %add451, ptr %arrayidx66, align 8, !tbaa !9
  %226 = load double, ptr %arrayidx257, align 8, !tbaa !9
  %227 = load double, ptr %arrayidx307, align 8, !tbaa !9
  %sub455 = fsub fast double %226, %227
  %228 = load double, ptr %arrayidx336, align 8, !tbaa !9
  %mul457 = fmul fast double %sub455, %228
  store double %mul457, ptr %arrayidx16, align 8, !tbaa !9
  %229 = load double, ptr %arrayidx297, align 8, !tbaa !9
  %230 = load double, ptr %arrayidx267, align 8, !tbaa !9
  %add461 = fadd fast double %230, %229
  store double %add461, ptr %arrayidx56, align 8, !tbaa !9
  %231 = load double, ptr %arrayidx267, align 8, !tbaa !9
  %232 = load double, ptr %arrayidx297, align 8, !tbaa !9
  %sub465 = fsub fast double %231, %232
  %233 = load double, ptr %arrayidx346, align 8, !tbaa !9
  %mul467 = fmul fast double %sub465, %233
  store double %mul467, ptr %arrayidx26, align 8, !tbaa !9
  %234 = load double, ptr %arrayidx287, align 8, !tbaa !9
  %235 = load double, ptr %arrayidx277, align 8, !tbaa !9
  %add471 = fadd fast double %235, %234
  store double %add471, ptr %arrayidx46, align 8, !tbaa !9
  %236 = load double, ptr %arrayidx277, align 8, !tbaa !9
  %237 = load double, ptr %arrayidx287, align 8, !tbaa !9
  %sub475 = fsub fast double %236, %237
  %238 = load double, ptr %arrayidx356, align 8, !tbaa !9
  %mul477 = fmul fast double %sub475, %238
  store double %mul477, ptr %arrayidx36, align 8, !tbaa !9
  %239 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @pnts, i64 0, i64 3), align 8, !tbaa !5
  %240 = load double, ptr %239, align 8, !tbaa !9
  %arrayidx480 = getelementptr inbounds double, ptr %239, i64 1
  %241 = load double, ptr %arrayidx480, align 8, !tbaa !9
  %add483 = fadd fast double %add351, %add321
  store double %add483, ptr %b2, align 8, !tbaa !9
  %242 = load double, ptr %b1, align 8, !tbaa !9
  %243 = load double, ptr %arrayidx30, align 8, !tbaa !9
  %sub487 = fsub fast double %242, %243
  %mul488 = fmul fast double %sub487, %240
  store double %mul488, ptr %arrayidx191, align 8, !tbaa !9
  %244 = load double, ptr %arrayidx10, align 8, !tbaa !9
  %245 = load double, ptr %arrayidx20, align 8, !tbaa !9
  %add492 = fadd fast double %245, %244
  store double %add492, ptr %arrayidx171, align 8, !tbaa !9
  %246 = load double, ptr %arrayidx10, align 8, !tbaa !9
  %247 = load double, ptr %arrayidx20, align 8, !tbaa !9
  %sub496 = fsub fast double %246, %247
  %mul497 = fmul fast double %sub496, %241
  store double %mul497, ptr %arrayidx181, align 8, !tbaa !9
  %248 = load double, ptr %arrayidx40, align 8, !tbaa !9
  %249 = load double, ptr %arrayidx70, align 8, !tbaa !9
  %add501 = fadd fast double %249, %248
  store double %add501, ptr %arrayidx201, align 8, !tbaa !9
  %250 = load double, ptr %arrayidx70, align 8, !tbaa !9
  %251 = load double, ptr %arrayidx40, align 8, !tbaa !9
  %sub505 = fsub fast double %250, %251
  %mul506 = fmul fast double %sub505, %240
  store double %mul506, ptr %arrayidx231, align 8, !tbaa !9
  %252 = load double, ptr %arrayidx50, align 8, !tbaa !9
  %253 = load double, ptr %arrayidx60, align 8, !tbaa !9
  %add510 = fadd fast double %253, %252
  store double %add510, ptr %arrayidx211, align 8, !tbaa !9
  %254 = load double, ptr %arrayidx60, align 8, !tbaa !9
  %255 = load double, ptr %arrayidx50, align 8, !tbaa !9
  %sub514 = fsub fast double %254, %255
  %mul515 = fmul fast double %sub514, %241
  store double %mul515, ptr %arrayidx221, align 8, !tbaa !9
  %256 = load double, ptr %arrayidx80, align 8, !tbaa !9
  %257 = load double, ptr %arrayidx110, align 8, !tbaa !9
  %add519 = fadd fast double %257, %256
  store double %add519, ptr %arrayidx237, align 8, !tbaa !9
  %258 = load double, ptr %arrayidx80, align 8, !tbaa !9
  %259 = load double, ptr %arrayidx110, align 8, !tbaa !9
  %sub523 = fsub fast double %258, %259
  %mul524 = fmul fast double %sub523, %240
  store double %mul524, ptr %arrayidx207, align 8, !tbaa !9
  %260 = load double, ptr %arrayidx90, align 8, !tbaa !9
  %261 = load double, ptr %arrayidx100, align 8, !tbaa !9
  %add528 = fadd fast double %261, %260
  store double %add528, ptr %arrayidx227, align 8, !tbaa !9
  %262 = load double, ptr %arrayidx90, align 8, !tbaa !9
  %263 = load double, ptr %arrayidx100, align 8, !tbaa !9
  %sub532 = fsub fast double %262, %263
  %mul533 = fmul fast double %sub532, %241
  store double %mul533, ptr %arrayidx217, align 8, !tbaa !9
  %264 = load double, ptr %arrayidx120, align 8, !tbaa !9
  %265 = load double, ptr %arrayidx150, align 8, !tbaa !9
  %add537 = fadd fast double %265, %264
  store double %add537, ptr %arrayidx197, align 8, !tbaa !9
  %266 = load double, ptr %arrayidx150, align 8, !tbaa !9
  %267 = load double, ptr %arrayidx120, align 8, !tbaa !9
  %sub541 = fsub fast double %266, %267
  %mul542 = fmul fast double %sub541, %240
  store double %mul542, ptr %arrayidx167, align 8, !tbaa !9
  %268 = load double, ptr %arrayidx130, align 8, !tbaa !9
  %269 = load double, ptr %arrayidx140, align 8, !tbaa !9
  %add546 = fadd fast double %269, %268
  store double %add546, ptr %arrayidx187, align 8, !tbaa !9
  %270 = load double, ptr %arrayidx140, align 8, !tbaa !9
  %271 = load double, ptr %arrayidx130, align 8, !tbaa !9
  %sub550 = fsub fast double %270, %271
  %mul551 = fmul fast double %sub550, %241
  store double %mul551, ptr %arrayidx177, align 8, !tbaa !9
  %272 = load double, ptr %arrayidx156, align 8, !tbaa !9
  %273 = load double, ptr %arrayidx126, align 8, !tbaa !9
  %add555 = fadd fast double %273, %272
  store double %add555, ptr %arrayidx241, align 8, !tbaa !9
  %274 = load double, ptr %arrayidx156, align 8, !tbaa !9
  %275 = load double, ptr %arrayidx126, align 8, !tbaa !9
  %sub559 = fsub fast double %274, %275
  %mul560 = fmul fast double %sub559, %240
  store double %mul560, ptr %arrayidx271, align 8, !tbaa !9
  %276 = load double, ptr %arrayidx146, align 8, !tbaa !9
  %277 = load double, ptr %arrayidx136, align 8, !tbaa !9
  %add564 = fadd fast double %277, %276
  store double %add564, ptr %arrayidx251, align 8, !tbaa !9
  %278 = load double, ptr %arrayidx146, align 8, !tbaa !9
  %279 = load double, ptr %arrayidx136, align 8, !tbaa !9
  %sub568 = fsub fast double %278, %279
  %mul569 = fmul fast double %sub568, %241
  store double %mul569, ptr %arrayidx261, align 8, !tbaa !9
  %280 = load double, ptr %arrayidx116, align 8, !tbaa !9
  %281 = load double, ptr %arrayidx86, align 8, !tbaa !9
  %add573 = fadd fast double %281, %280
  store double %add573, ptr %arrayidx281, align 8, !tbaa !9
  %282 = load double, ptr %arrayidx86, align 8, !tbaa !9
  %283 = load double, ptr %arrayidx116, align 8, !tbaa !9
  %sub577 = fsub fast double %282, %283
  %mul578 = fmul fast double %sub577, %240
  store double %mul578, ptr %arrayidx311, align 8, !tbaa !9
  %284 = load double, ptr %arrayidx106, align 8, !tbaa !9
  %285 = load double, ptr %arrayidx96, align 8, !tbaa !9
  %add582 = fadd fast double %285, %284
  store double %add582, ptr %arrayidx291, align 8, !tbaa !9
  %286 = load double, ptr %arrayidx96, align 8, !tbaa !9
  %287 = load double, ptr %arrayidx106, align 8, !tbaa !9
  %sub586 = fsub fast double %286, %287
  %mul587 = fmul fast double %sub586, %241
  store double %mul587, ptr %arrayidx301, align 8, !tbaa !9
  %288 = load double, ptr %arrayidx76, align 8, !tbaa !9
  %289 = load double, ptr %arrayidx46, align 8, !tbaa !9
  %add591 = fadd fast double %289, %288
  store double %add591, ptr %arrayidx317, align 8, !tbaa !9
  %290 = load double, ptr %arrayidx76, align 8, !tbaa !9
  %291 = load double, ptr %arrayidx46, align 8, !tbaa !9
  %sub595 = fsub fast double %290, %291
  %mul596 = fmul fast double %sub595, %240
  store double %mul596, ptr %arrayidx287, align 8, !tbaa !9
  %292 = load double, ptr %arrayidx66, align 8, !tbaa !9
  %293 = load double, ptr %arrayidx56, align 8, !tbaa !9
  %add600 = fadd fast double %293, %292
  store double %add600, ptr %arrayidx307, align 8, !tbaa !9
  %294 = load double, ptr %arrayidx66, align 8, !tbaa !9
  %295 = load double, ptr %arrayidx56, align 8, !tbaa !9
  %sub604 = fsub fast double %294, %295
  %mul605 = fmul fast double %sub604, %241
  store double %mul605, ptr %arrayidx297, align 8, !tbaa !9
  %296 = load double, ptr %arrayidx36, align 8, !tbaa !9
  %297 = load double, ptr %arrayidx6, align 8, !tbaa !9
  %add609 = fadd fast double %297, %296
  store double %add609, ptr %arrayidx277, align 8, !tbaa !9
  %298 = load double, ptr %arrayidx6, align 8, !tbaa !9
  %299 = load double, ptr %arrayidx36, align 8, !tbaa !9
  %sub613 = fsub fast double %298, %299
  %mul614 = fmul fast double %sub613, %240
  store double %mul614, ptr %arrayidx247, align 8, !tbaa !9
  %300 = load double, ptr %arrayidx26, align 8, !tbaa !9
  %301 = load double, ptr %arrayidx16, align 8, !tbaa !9
  %add618 = fadd fast double %301, %300
  store double %add618, ptr %arrayidx267, align 8, !tbaa !9
  %302 = load double, ptr %arrayidx16, align 8, !tbaa !9
  %303 = load double, ptr %arrayidx26, align 8, !tbaa !9
  %sub622 = fsub fast double %302, %303
  %mul623 = fmul fast double %sub622, %241
  store double %mul623, ptr %arrayidx257, align 8, !tbaa !9
  %304 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @pnts, i64 0, i64 4), align 16, !tbaa !5
  %305 = load double, ptr %304, align 8, !tbaa !9
  %add629 = fadd fast double %add492, %add483
  store double %add629, ptr %b1, align 8, !tbaa !9
  %306 = load double, ptr %b2, align 8, !tbaa !9
  %307 = load double, ptr %arrayidx171, align 8, !tbaa !9
  %sub633 = fsub fast double %306, %307
  %mul634 = fmul fast double %sub633, %305
  store double %mul634, ptr %arrayidx10, align 8, !tbaa !9
  %308 = load double, ptr %arrayidx181, align 8, !tbaa !9
  %309 = load double, ptr %arrayidx191, align 8, !tbaa !9
  %add638 = fadd fast double %309, %308
  store double %add638, ptr %arrayidx20, align 8, !tbaa !9
  %310 = load double, ptr %arrayidx191, align 8, !tbaa !9
  %311 = load double, ptr %arrayidx181, align 8, !tbaa !9
  %sub642 = fsub fast double %310, %311
  %mul643 = fmul fast double %sub642, %305
  store double %mul643, ptr %arrayidx30, align 8, !tbaa !9
  %add647 = fadd fast double %mul643, %add638
  store double %add647, ptr %arrayidx20, align 8, !tbaa !9
  %312 = load double, ptr %arrayidx201, align 8, !tbaa !9
  %313 = load double, ptr %arrayidx211, align 8, !tbaa !9
  %add650 = fadd fast double %313, %312
  store double %add650, ptr %arrayidx40, align 8, !tbaa !9
  %314 = load double, ptr %arrayidx201, align 8, !tbaa !9
  %315 = load double, ptr %arrayidx211, align 8, !tbaa !9
  %sub654 = fsub fast double %314, %315
  %mul655 = fmul fast double %sub654, %305
  store double %mul655, ptr %arrayidx50, align 8, !tbaa !9
  %316 = load double, ptr %arrayidx221, align 8, !tbaa !9
  %317 = load double, ptr %arrayidx231, align 8, !tbaa !9
  %add659 = fadd fast double %317, %316
  store double %add659, ptr %arrayidx60, align 8, !tbaa !9
  %318 = load double, ptr %arrayidx231, align 8, !tbaa !9
  %319 = load double, ptr %arrayidx221, align 8, !tbaa !9
  %sub663 = fsub fast double %318, %319
  %mul664 = fmul fast double %sub663, %305
  store double %mul664, ptr %arrayidx70, align 8, !tbaa !9
  %add668 = fadd fast double %mul664, %add659
  %add671 = fadd fast double %add668, %add650
  store double %add671, ptr %arrayidx40, align 8, !tbaa !9
  %add674 = fadd fast double %add668, %mul655
  store double %add674, ptr %arrayidx60, align 8, !tbaa !9
  %add677 = fadd fast double %mul664, %mul655
  store double %add677, ptr %arrayidx50, align 8, !tbaa !9
  %320 = load double, ptr %arrayidx237, align 8, !tbaa !9
  %321 = load double, ptr %arrayidx227, align 8, !tbaa !9
  %add680 = fadd fast double %321, %320
  store double %add680, ptr %arrayidx80, align 8, !tbaa !9
  %322 = load double, ptr %arrayidx237, align 8, !tbaa !9
  %323 = load double, ptr %arrayidx227, align 8, !tbaa !9
  %sub684 = fsub fast double %322, %323
  %mul685 = fmul fast double %sub684, %305
  store double %mul685, ptr %arrayidx90, align 8, !tbaa !9
  %324 = load double, ptr %arrayidx217, align 8, !tbaa !9
  %325 = load double, ptr %arrayidx207, align 8, !tbaa !9
  %add689 = fadd fast double %325, %324
  store double %add689, ptr %arrayidx100, align 8, !tbaa !9
  %326 = load double, ptr %arrayidx207, align 8, !tbaa !9
  %327 = load double, ptr %arrayidx217, align 8, !tbaa !9
  %sub693 = fsub fast double %326, %327
  %mul694 = fmul fast double %sub693, %305
  store double %mul694, ptr %arrayidx110, align 8, !tbaa !9
  %add698 = fadd fast double %mul694, %add689
  store double %add698, ptr %arrayidx100, align 8, !tbaa !9
  %328 = load double, ptr %arrayidx197, align 8, !tbaa !9
  %329 = load double, ptr %arrayidx187, align 8, !tbaa !9
  %add701 = fadd fast double %329, %328
  store double %add701, ptr %arrayidx120, align 8, !tbaa !9
  %330 = load double, ptr %arrayidx197, align 8, !tbaa !9
  %331 = load double, ptr %arrayidx187, align 8, !tbaa !9
  %sub705 = fsub fast double %330, %331
  %mul706 = fmul fast double %sub705, %305
  store double %mul706, ptr %arrayidx130, align 8, !tbaa !9
  %332 = load double, ptr %arrayidx177, align 8, !tbaa !9
  %333 = load double, ptr %arrayidx167, align 8, !tbaa !9
  %add710 = fadd fast double %333, %332
  store double %add710, ptr %arrayidx140, align 8, !tbaa !9
  %334 = load double, ptr %arrayidx167, align 8, !tbaa !9
  %335 = load double, ptr %arrayidx177, align 8, !tbaa !9
  %sub714 = fsub fast double %334, %335
  %mul715 = fmul fast double %sub714, %305
  store double %mul715, ptr %arrayidx150, align 8, !tbaa !9
  %add719 = fadd fast double %mul715, %add710
  %add722 = fadd fast double %add719, %add701
  store double %add722, ptr %arrayidx120, align 8, !tbaa !9
  %add725 = fadd fast double %add719, %mul706
  store double %add725, ptr %arrayidx140, align 8, !tbaa !9
  %add728 = fadd fast double %mul715, %mul706
  store double %add728, ptr %arrayidx130, align 8, !tbaa !9
  %336 = load double, ptr %arrayidx241, align 8, !tbaa !9
  %337 = load double, ptr %arrayidx251, align 8, !tbaa !9
  %add731 = fadd fast double %337, %336
  store double %add731, ptr %arrayidx156, align 8, !tbaa !9
  %338 = load double, ptr %arrayidx241, align 8, !tbaa !9
  %339 = load double, ptr %arrayidx251, align 8, !tbaa !9
  %sub735 = fsub fast double %338, %339
  %mul736 = fmul fast double %sub735, %305
  store double %mul736, ptr %arrayidx146, align 8, !tbaa !9
  %340 = load double, ptr %arrayidx261, align 8, !tbaa !9
  %341 = load double, ptr %arrayidx271, align 8, !tbaa !9
  %add740 = fadd fast double %341, %340
  store double %add740, ptr %arrayidx136, align 8, !tbaa !9
  %342 = load double, ptr %arrayidx271, align 8, !tbaa !9
  %343 = load double, ptr %arrayidx261, align 8, !tbaa !9
  %sub744 = fsub fast double %342, %343
  %mul745 = fmul fast double %sub744, %305
  store double %mul745, ptr %arrayidx126, align 8, !tbaa !9
  %add749 = fadd fast double %mul745, %add740
  store double %add749, ptr %arrayidx136, align 8, !tbaa !9
  %344 = load double, ptr %arrayidx281, align 8, !tbaa !9
  %345 = load double, ptr %arrayidx291, align 8, !tbaa !9
  %add752 = fadd fast double %345, %344
  store double %add752, ptr %arrayidx116, align 8, !tbaa !9
  %346 = load double, ptr %arrayidx281, align 8, !tbaa !9
  %347 = load double, ptr %arrayidx291, align 8, !tbaa !9
  %sub756 = fsub fast double %346, %347
  %mul757 = fmul fast double %sub756, %305
  store double %mul757, ptr %arrayidx106, align 8, !tbaa !9
  %348 = load double, ptr %arrayidx301, align 8, !tbaa !9
  %349 = load double, ptr %arrayidx311, align 8, !tbaa !9
  %add761 = fadd fast double %349, %348
  store double %add761, ptr %arrayidx96, align 8, !tbaa !9
  %350 = load double, ptr %arrayidx311, align 8, !tbaa !9
  %351 = load double, ptr %arrayidx301, align 8, !tbaa !9
  %sub765 = fsub fast double %350, %351
  %mul766 = fmul fast double %sub765, %305
  store double %mul766, ptr %arrayidx86, align 8, !tbaa !9
  %add770 = fadd fast double %mul766, %add761
  %add773 = fadd fast double %add770, %add752
  store double %add773, ptr %arrayidx116, align 8, !tbaa !9
  %add776 = fadd fast double %add770, %mul757
  store double %add776, ptr %arrayidx96, align 8, !tbaa !9
  %add779 = fadd fast double %mul766, %mul757
  store double %add779, ptr %arrayidx106, align 8, !tbaa !9
  %352 = load double, ptr %arrayidx317, align 8, !tbaa !9
  %353 = load double, ptr %arrayidx307, align 8, !tbaa !9
  %add782 = fadd fast double %353, %352
  store double %add782, ptr %arrayidx76, align 8, !tbaa !9
  %354 = load double, ptr %arrayidx317, align 8, !tbaa !9
  %355 = load double, ptr %arrayidx307, align 8, !tbaa !9
  %sub786 = fsub fast double %354, %355
  %mul787 = fmul fast double %sub786, %305
  store double %mul787, ptr %arrayidx66, align 8, !tbaa !9
  %356 = load double, ptr %arrayidx297, align 8, !tbaa !9
  %357 = load double, ptr %arrayidx287, align 8, !tbaa !9
  %add791 = fadd fast double %357, %356
  store double %add791, ptr %arrayidx56, align 8, !tbaa !9
  %358 = load double, ptr %arrayidx287, align 8, !tbaa !9
  %359 = load double, ptr %arrayidx297, align 8, !tbaa !9
  %sub795 = fsub fast double %358, %359
  %mul796 = fmul fast double %sub795, %305
  store double %mul796, ptr %arrayidx46, align 8, !tbaa !9
  %add800 = fadd fast double %mul796, %add791
  store double %add800, ptr %arrayidx56, align 8, !tbaa !9
  %360 = load double, ptr %arrayidx277, align 8, !tbaa !9
  %361 = load double, ptr %arrayidx267, align 8, !tbaa !9
  %add803 = fadd fast double %361, %360
  store double %add803, ptr %arrayidx36, align 8, !tbaa !9
  %362 = load double, ptr %arrayidx277, align 8, !tbaa !9
  %363 = load double, ptr %arrayidx267, align 8, !tbaa !9
  %sub807 = fsub fast double %362, %363
  %mul808 = fmul fast double %sub807, %305
  store double %mul808, ptr %arrayidx26, align 8, !tbaa !9
  %364 = load double, ptr %arrayidx257, align 8, !tbaa !9
  %365 = load double, ptr %arrayidx247, align 8, !tbaa !9
  %add812 = fadd fast double %365, %364
  store double %add812, ptr %arrayidx16, align 8, !tbaa !9
  %366 = load double, ptr %arrayidx247, align 8, !tbaa !9
  %367 = load double, ptr %arrayidx257, align 8, !tbaa !9
  %sub816 = fsub fast double %366, %367
  %mul817 = fmul fast double %sub816, %305
  store double %mul817, ptr %arrayidx6, align 8, !tbaa !9
  %add821 = fadd fast double %mul817, %add812
  %add824 = fadd fast double %add821, %add803
  store double %add824, ptr %arrayidx36, align 8, !tbaa !9
  %add827 = fadd fast double %add821, %mul808
  store double %add827, ptr %arrayidx16, align 8, !tbaa !9
  %add830 = fadd fast double %mul817, %mul808
  store double %add830, ptr %arrayidx26, align 8, !tbaa !9
  %arrayidx832 = getelementptr inbounds double, ptr %out0, i64 256
  store double %add629, ptr %arrayidx832, align 8, !tbaa !9
  %368 = load double, ptr %arrayidx40, align 8, !tbaa !9
  %arrayidx834 = getelementptr inbounds double, ptr %out0, i64 192
  store double %368, ptr %arrayidx834, align 8, !tbaa !9
  %369 = load double, ptr %arrayidx20, align 8, !tbaa !9
  %arrayidx836 = getelementptr inbounds double, ptr %out0, i64 128
  store double %369, ptr %arrayidx836, align 8, !tbaa !9
  %370 = load double, ptr %arrayidx60, align 8, !tbaa !9
  %arrayidx838 = getelementptr inbounds double, ptr %out0, i64 64
  store double %370, ptr %arrayidx838, align 8, !tbaa !9
  %371 = load double, ptr %arrayidx10, align 8, !tbaa !9
  store double %371, ptr %out0, align 8, !tbaa !9
  %372 = load double, ptr %arrayidx10, align 8, !tbaa !9
  store double %372, ptr %out1, align 8, !tbaa !9
  %373 = load double, ptr %arrayidx50, align 8, !tbaa !9
  %arrayidx844 = getelementptr inbounds double, ptr %out1, i64 64
  store double %373, ptr %arrayidx844, align 8, !tbaa !9
  %374 = load double, ptr %arrayidx30, align 8, !tbaa !9
  %arrayidx846 = getelementptr inbounds double, ptr %out1, i64 128
  store double %374, ptr %arrayidx846, align 8, !tbaa !9
  %375 = load double, ptr %arrayidx70, align 8, !tbaa !9
  %arrayidx848 = getelementptr inbounds double, ptr %out1, i64 192
  store double %375, ptr %arrayidx848, align 8, !tbaa !9
  %376 = load double, ptr %arrayidx120, align 8, !tbaa !9
  %377 = load double, ptr %arrayidx80, align 8, !tbaa !9
  %add851 = fadd fast double %377, %376
  store double %add851, ptr %arrayidx80, align 8, !tbaa !9
  %arrayidx853 = getelementptr inbounds double, ptr %out0, i64 224
  store double %add851, ptr %arrayidx853, align 8, !tbaa !9
  %378 = load double, ptr %arrayidx100, align 8, !tbaa !9
  %379 = load double, ptr %arrayidx120, align 8, !tbaa !9
  %add856 = fadd fast double %379, %378
  store double %add856, ptr %arrayidx120, align 8, !tbaa !9
  %arrayidx858 = getelementptr inbounds double, ptr %out0, i64 160
  store double %add856, ptr %arrayidx858, align 8, !tbaa !9
  %380 = load double, ptr %arrayidx140, align 8, !tbaa !9
  %381 = load double, ptr %arrayidx100, align 8, !tbaa !9
  %add861 = fadd fast double %381, %380
  store double %add861, ptr %arrayidx100, align 8, !tbaa !9
  %arrayidx863 = getelementptr inbounds double, ptr %out0, i64 96
  store double %add861, ptr %arrayidx863, align 8, !tbaa !9
  %382 = load double, ptr %arrayidx90, align 8, !tbaa !9
  %383 = load double, ptr %arrayidx140, align 8, !tbaa !9
  %add866 = fadd fast double %383, %382
  store double %add866, ptr %arrayidx140, align 8, !tbaa !9
  %arrayidx868 = getelementptr inbounds double, ptr %out0, i64 32
  store double %add866, ptr %arrayidx868, align 8, !tbaa !9
  %384 = load double, ptr %arrayidx130, align 8, !tbaa !9
  %385 = load double, ptr %arrayidx90, align 8, !tbaa !9
  %add871 = fadd fast double %385, %384
  store double %add871, ptr %arrayidx90, align 8, !tbaa !9
  %arrayidx873 = getelementptr inbounds double, ptr %out1, i64 32
  store double %add871, ptr %arrayidx873, align 8, !tbaa !9
  %386 = load double, ptr %arrayidx110, align 8, !tbaa !9
  %387 = load double, ptr %arrayidx130, align 8, !tbaa !9
  %add876 = fadd fast double %387, %386
  store double %add876, ptr %arrayidx130, align 8, !tbaa !9
  %arrayidx878 = getelementptr inbounds double, ptr %out1, i64 96
  store double %add876, ptr %arrayidx878, align 8, !tbaa !9
  %388 = load double, ptr %arrayidx150, align 8, !tbaa !9
  %389 = load double, ptr %arrayidx110, align 8, !tbaa !9
  %add881 = fadd fast double %389, %388
  store double %add881, ptr %arrayidx110, align 8, !tbaa !9
  %arrayidx883 = getelementptr inbounds double, ptr %out1, i64 160
  store double %add881, ptr %arrayidx883, align 8, !tbaa !9
  %390 = load double, ptr %arrayidx150, align 8, !tbaa !9
  %arrayidx885 = getelementptr inbounds double, ptr %out1, i64 224
  store double %390, ptr %arrayidx885, align 8, !tbaa !9
  %391 = load double, ptr %arrayidx36, align 8, !tbaa !9
  %392 = load double, ptr %arrayidx76, align 8, !tbaa !9
  %add888 = fadd fast double %392, %391
  store double %add888, ptr %arrayidx76, align 8, !tbaa !9
  %393 = load double, ptr %arrayidx156, align 8, !tbaa !9
  %add891 = fadd fast double %393, %add888
  %arrayidx892 = getelementptr inbounds double, ptr %out0, i64 240
  store double %add891, ptr %arrayidx892, align 8, !tbaa !9
  %394 = load double, ptr %arrayidx76, align 8, !tbaa !9
  %395 = load double, ptr %arrayidx116, align 8, !tbaa !9
  %add895 = fadd fast double %395, %394
  %arrayidx896 = getelementptr inbounds double, ptr %out0, i64 208
  store double %add895, ptr %arrayidx896, align 8, !tbaa !9
  %396 = load double, ptr %arrayidx56, align 8, !tbaa !9
  %397 = load double, ptr %arrayidx36, align 8, !tbaa !9
  %add899 = fadd fast double %397, %396
  store double %add899, ptr %arrayidx36, align 8, !tbaa !9
  %398 = load double, ptr %arrayidx116, align 8, !tbaa !9
  %add902 = fadd fast double %398, %add899
  %arrayidx903 = getelementptr inbounds double, ptr %out0, i64 176
  store double %add902, ptr %arrayidx903, align 8, !tbaa !9
  %399 = load double, ptr %arrayidx36, align 8, !tbaa !9
  %400 = load double, ptr %arrayidx136, align 8, !tbaa !9
  %add906 = fadd fast double %400, %399
  %arrayidx907 = getelementptr inbounds double, ptr %out0, i64 144
  store double %add906, ptr %arrayidx907, align 8, !tbaa !9
  %401 = load double, ptr %arrayidx16, align 8, !tbaa !9
  %402 = load double, ptr %arrayidx56, align 8, !tbaa !9
  %add910 = fadd fast double %402, %401
  store double %add910, ptr %arrayidx56, align 8, !tbaa !9
  %403 = load double, ptr %arrayidx136, align 8, !tbaa !9
  %add913 = fadd fast double %403, %add910
  %arrayidx914 = getelementptr inbounds double, ptr %out0, i64 112
  store double %add913, ptr %arrayidx914, align 8, !tbaa !9
  %404 = load double, ptr %arrayidx56, align 8, !tbaa !9
  %405 = load double, ptr %arrayidx96, align 8, !tbaa !9
  %add917 = fadd fast double %405, %404
  %arrayidx918 = getelementptr inbounds double, ptr %out0, i64 80
  store double %add917, ptr %arrayidx918, align 8, !tbaa !9
  %406 = load double, ptr %arrayidx66, align 8, !tbaa !9
  %407 = load double, ptr %arrayidx16, align 8, !tbaa !9
  %add921 = fadd fast double %407, %406
  store double %add921, ptr %arrayidx16, align 8, !tbaa !9
  %408 = load double, ptr %arrayidx96, align 8, !tbaa !9
  %add924 = fadd fast double %408, %add921
  %arrayidx925 = getelementptr inbounds double, ptr %out0, i64 48
  store double %add924, ptr %arrayidx925, align 8, !tbaa !9
  %409 = load double, ptr %arrayidx16, align 8, !tbaa !9
  %410 = load double, ptr %arrayidx146, align 8, !tbaa !9
  %add928 = fadd fast double %410, %409
  %arrayidx929 = getelementptr inbounds double, ptr %out0, i64 16
  store double %add928, ptr %arrayidx929, align 8, !tbaa !9
  %411 = load double, ptr %arrayidx26, align 8, !tbaa !9
  %412 = load double, ptr %arrayidx66, align 8, !tbaa !9
  %add932 = fadd fast double %412, %411
  store double %add932, ptr %arrayidx66, align 8, !tbaa !9
  %413 = load double, ptr %arrayidx146, align 8, !tbaa !9
  %add935 = fadd fast double %413, %add932
  %arrayidx936 = getelementptr inbounds double, ptr %out1, i64 16
  store double %add935, ptr %arrayidx936, align 8, !tbaa !9
  %414 = load double, ptr %arrayidx66, align 8, !tbaa !9
  %415 = load double, ptr %arrayidx106, align 8, !tbaa !9
  %add939 = fadd fast double %415, %414
  %arrayidx940 = getelementptr inbounds double, ptr %out1, i64 48
  store double %add939, ptr %arrayidx940, align 8, !tbaa !9
  %416 = load double, ptr %arrayidx46, align 8, !tbaa !9
  %417 = load double, ptr %arrayidx26, align 8, !tbaa !9
  %add943 = fadd fast double %417, %416
  store double %add943, ptr %arrayidx26, align 8, !tbaa !9
  %418 = load double, ptr %arrayidx106, align 8, !tbaa !9
  %add946 = fadd fast double %418, %add943
  %arrayidx947 = getelementptr inbounds double, ptr %out1, i64 80
  store double %add946, ptr %arrayidx947, align 8, !tbaa !9
  %419 = load double, ptr %arrayidx26, align 8, !tbaa !9
  %420 = load double, ptr %arrayidx126, align 8, !tbaa !9
  %add950 = fadd fast double %420, %419
  %arrayidx951 = getelementptr inbounds double, ptr %out1, i64 112
  store double %add950, ptr %arrayidx951, align 8, !tbaa !9
  %421 = load double, ptr %arrayidx6, align 8, !tbaa !9
  %422 = load double, ptr %arrayidx46, align 8, !tbaa !9
  %add954 = fadd fast double %422, %421
  store double %add954, ptr %arrayidx46, align 8, !tbaa !9
  %423 = load double, ptr %arrayidx126, align 8, !tbaa !9
  %add957 = fadd fast double %423, %add954
  %arrayidx958 = getelementptr inbounds double, ptr %out1, i64 144
  store double %add957, ptr %arrayidx958, align 8, !tbaa !9
  %424 = load double, ptr %arrayidx46, align 8, !tbaa !9
  %425 = load double, ptr %arrayidx86, align 8, !tbaa !9
  %add961 = fadd fast double %425, %424
  %arrayidx962 = getelementptr inbounds double, ptr %out1, i64 176
  store double %add961, ptr %arrayidx962, align 8, !tbaa !9
  %426 = load double, ptr %arrayidx86, align 8, !tbaa !9
  %427 = load double, ptr %arrayidx6, align 8, !tbaa !9
  %add965 = fadd fast double %427, %426
  %arrayidx966 = getelementptr inbounds double, ptr %out1, i64 208
  store double %add965, ptr %arrayidx966, align 8, !tbaa !9
  %428 = load double, ptr %arrayidx6, align 8, !tbaa !9
  %arrayidx968 = getelementptr inbounds double, ptr %out1, i64 240
  store double %428, ptr %arrayidx968, align 8, !tbaa !9
  ret void
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { mustprogress nofree noinline nosync nounwind willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #3 = { nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
