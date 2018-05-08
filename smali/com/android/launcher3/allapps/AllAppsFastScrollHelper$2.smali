.class Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$2;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$2;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$2;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollSection:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$2;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mHasFastScrollTouchSettled:Z

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$2;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    iput-boolean v1, v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mHasFastScrollTouchSettledAtLeastOnce:Z

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$2;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->updateTrackedViewsFastScrollFocusState()V

    .line 77
    return-void
.end method
