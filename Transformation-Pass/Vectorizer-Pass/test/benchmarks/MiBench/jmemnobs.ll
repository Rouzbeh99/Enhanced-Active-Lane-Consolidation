; ModuleID = 'jmemnobs.c'
source_filename = "jmemnobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local noalias ptr @jpeg_get_small(ptr nocapture noundef readnone %cinfo, i64 noundef %sizeofobject) local_unnamed_addr #0 {
entry:
  %call = tail call noalias ptr @malloc(i64 noundef %sizeofobject) #6
  ret ptr %call
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @jpeg_free_small(ptr nocapture noundef readnone %cinfo, ptr nocapture noundef %object, i64 noundef %sizeofobject) local_unnamed_addr #2 {
entry:
  tail call void @free(ptr noundef %object) #7
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local noalias ptr @jpeg_get_large(ptr nocapture noundef readnone %cinfo, i64 noundef %sizeofobject) local_unnamed_addr #0 {
entry:
  %call = tail call noalias ptr @malloc(i64 noundef %sizeofobject) #6
  ret ptr %call
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @jpeg_free_large(ptr nocapture noundef readnone %cinfo, ptr nocapture noundef %object, i64 noundef %sizeofobject) local_unnamed_addr #2 {
entry:
  tail call void @free(ptr noundef %object) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i64 @jpeg_mem_available(ptr nocapture noundef readnone %cinfo, i64 noundef %min_bytes_needed, i64 noundef returned %max_bytes_needed, i64 noundef %already_allocated) local_unnamed_addr #4 {
entry:
  ret i64 %max_bytes_needed
}

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_open_backing_store(ptr noundef %cinfo, ptr nocapture noundef readnone %info, i64 noundef %total_bytes_needed) local_unnamed_addr #5 {
entry:
  %0 = load ptr, ptr %cinfo, align 8, !tbaa !5
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %0, i64 0, i32 5
  store i32 48, ptr %msg_code, align 8, !tbaa !11
  %1 = load ptr, ptr %0, align 8, !tbaa !14
  tail call void %1(ptr noundef nonnull %cinfo) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i64 @jpeg_mem_init(ptr nocapture noundef readnone %cinfo) local_unnamed_addr #4 {
entry:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @jpeg_mem_term(ptr nocapture noundef %cinfo) local_unnamed_addr #4 {
entry:
  ret void
}

attributes #0 = { mustprogress nofree nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"jpeg_common_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!12, !10, i64 40}
!12 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !13, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!13 = !{!"long", !8, i64 0}
!14 = !{!12, !7, i64 0}
