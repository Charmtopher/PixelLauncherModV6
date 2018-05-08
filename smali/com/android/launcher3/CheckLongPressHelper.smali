.class public Lcom/android/launcher3/CheckLongPressHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mHasPerformedLongPress:Z

.field mListener:Landroid/view/View$OnLongClickListener;

.field mLongPressTimeout:I

.field private mPendingCheckForLongPress:Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mLongPressTimeout:I

    .line 52
    iput-object p1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mLongPressTimeout:I

    .line 56
    iput-object p1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    .line 57
    iput-object p2, p0, Lcom/android/launcher3/CheckLongPressHelper;->mListener:Landroid/view/View$OnLongClickListener;

    .line 58
    return-void
.end method


# virtual methods
.method public final cancelLongPress()V
    .locals 2

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;

    .line 82
    :cond_0
    return-void
.end method

.method public final postCheckForLongPress()V
    .locals 4

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;-><init>(Lcom/android/launcher3/CheckLongPressHelper;)V

    iput-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;

    iget v2, p0, Lcom/android/launcher3/CheckLongPressHelper;->mLongPressTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    return-void
.end method
