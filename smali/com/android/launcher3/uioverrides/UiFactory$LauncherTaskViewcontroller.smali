.class public Lcom/android/launcher3/uioverrides/UiFactory$LauncherTaskViewcontroller;
.super Lcom/android/launcher3/uioverrides/TaskViewTouchController;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/TaskViewTouchController;-><init>(Lcom/android/launcher3/BaseDraggingActivity;)V

    .line 118
    return-void
.end method


# virtual methods
.method protected isRecentsInteractive()Z
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/UiFactory$LauncherTaskViewcontroller;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    check-cast v0, Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    return v0
.end method
