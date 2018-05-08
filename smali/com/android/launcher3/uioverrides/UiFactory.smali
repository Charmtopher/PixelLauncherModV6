.class public Lcom/android/launcher3/uioverrides/UiFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static onLauncherStateOrFocusChanged(Lcom/android/launcher3/Launcher;)V
    .locals 3

    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 73
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v2, v2, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    iget-boolean v2, v2, Lcom/android/launcher3/LauncherState;->hideBackButton:Z

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    move v2, v1

    goto :goto_0

    .line 74
    :cond_0
    nop

    .line 75
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    .line 77
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v2

    if-nez v2, :cond_1

    .line 79
    move v2, v1

    goto :goto_1

    .line 77
    :cond_1
    nop

    .line 79
    move v2, v0

    :cond_2
    :goto_1
    invoke-static {p0}, Lcom/android/quickstep/OverviewInteractionState;->getInstance(Landroid/content/Context;)Lcom/android/quickstep/OverviewInteractionState;

    move-result-object p0

    .line 80
    xor-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/OverviewInteractionState;->setBackButtonVisible(Z)V

    .line 81
    return-void
.end method

.method public static onLauncherStateOrResumeChanged(Lcom/android/launcher3/Launcher;)V
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    .line 97
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 98
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    const/4 v4, 0x0

    if-eq v0, v3, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isUserActive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    .line 98
    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->setShelfHeight(ZI)V

    .line 102
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0, v4}, Lcom/android/quickstep/views/RecentsView;->setSwipeDownShouldLaunchApp(Z)V

    .line 105
    :cond_1
    return-void
.end method

.method public static onStart(Landroid/content/Context;)V
    .locals 0

    .line 89
    invoke-static {p0}, Lcom/android/quickstep/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/android/quickstep/RecentsModel;

    move-result-object p0

    .line 90
    if-eqz p0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/quickstep/RecentsModel;->onStart()V

    .line 93
    :cond_0
    return-void
.end method

.method public static onTrimMemory(Landroid/content/Context;I)V
    .locals 0

    .line 108
    invoke-static {p0}, Lcom/android/quickstep/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/android/quickstep/RecentsModel;

    move-result-object p0

    .line 109
    if-eqz p0, :cond_0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentsModel;->onTrimMemory(I)V

    .line 112
    :cond_0
    return-void
.end method

.method public static setOnTouchControllersChangedListener(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    .line 62
    invoke-static {p0}, Lcom/android/quickstep/OverviewInteractionState;->getInstance(Landroid/content/Context;)Lcom/android/quickstep/OverviewInteractionState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OverviewInteractionState;->setOnSwipeUpSettingChangedListener(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method
