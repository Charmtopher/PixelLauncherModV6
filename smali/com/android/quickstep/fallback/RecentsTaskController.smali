.class public Lcom/android/quickstep/fallback/RecentsTaskController;
.super Lcom/android/launcher3/uioverrides/TaskViewTouchController;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/quickstep/RecentsActivity;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/TaskViewTouchController;-><init>(Lcom/android/launcher3/BaseDraggingActivity;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected isRecentsInteractive()Z
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/android/quickstep/fallback/RecentsTaskController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    check-cast v0, Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->hasWindowFocus()Z

    move-result v0

    return v0
.end method
