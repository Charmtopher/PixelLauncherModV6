.class Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$1;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$1;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    iget v0, v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mFastScrollFrameIndex:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$1;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mFastScrollFrames:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$1;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$1;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    iget-object v2, v2, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mFastScrollFrames:[I

    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$1;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    iget v3, v3, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mFastScrollFrameIndex:I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->scrollBy(II)V

    .line 60
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$1;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    iget v1, v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mFastScrollFrameIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mFastScrollFrameIndex:I

    .line 61
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$1;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$1;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 63
    :cond_0
    return-void
.end method
