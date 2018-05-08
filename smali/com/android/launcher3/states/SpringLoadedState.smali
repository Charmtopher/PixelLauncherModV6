.class public Lcom/android/launcher3/states/SpringLoadedState;
.super Lcom/android/launcher3/LauncherState;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 41
    const/4 v0, 0x6

    const/16 v1, 0x96

    const/16 v2, 0x47f

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/launcher3/LauncherState;-><init>(IIII)V

    .line 42
    return-void
.end method


# virtual methods
.method public final getFinalFocus(Lcom/android/launcher3/Launcher;)Landroid/view/View;
    .locals 0

    .line 99
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)[F
    .locals 11

    .line 46
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 47
    iget-object v1, p1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 48
    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 49
    invoke-super {p0, p1}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)[F

    move-result-object p1

    return-object p1

    .line 52
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_1

    .line 53
    iget p1, v0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadShrinkFactor:F

    .line 54
    new-array v0, v4, [F

    aput p1, v0, v7

    aput v6, v0, v3

    aput v6, v0, v5

    return-object v0

    .line 57
    :cond_1
    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadShrinkFactor:F

    .line 58
    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragLayer;->getInsets()Landroid/graphics/Rect;

    move-result-object p1

    .line 60
    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getNormalChildHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v2

    .line 61
    iget v9, p1, Landroid/graphics/Rect;->top:I

    iget v10, v0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    .line 62
    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getMeasuredHeight()I

    move-result v10

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, p1

    iget-object p1, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, p1

    iget p1, v0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadedBottomSpace:I

    sub-int/2addr v10, p1

    int-to-float p1, v10

    .line 65
    sub-float/2addr p1, v9

    .line 67
    sub-float/2addr p1, v8

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    add-float/2addr v9, p1

    .line 69
    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getHeight()I

    move-result p1

    div-int/2addr p1, v5

    int-to-float p1, p1

    .line 70
    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getTop()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    .line 71
    invoke-virtual {v1, v7}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    .line 72
    mul-float/2addr p1, v2

    sub-float/2addr v0, p1

    .line 73
    new-array p1, v4, [F

    aput v2, p1, v7

    aput v6, p1, v3

    sub-float/2addr v9, v0

    div-float/2addr v9, v2

    aput v9, p1, v5

    return-object p1
.end method

.method public final onStateDisabled(Lcom/android/launcher3/Launcher;)V
    .locals 2

    .line 90
    iget-object v0, p1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->setShouldAutoHide(Z)V

    .line 93
    const/4 v0, 0x4

    invoke-static {v0, p1}, Lcom/android/launcher3/InstallShortcutReceiver;->disableAndFlushInstallQueue(ILandroid/content/Context;)V

    .line 95
    return-void
.end method

.method public final onStateEnabled(Lcom/android/launcher3/Launcher;)V
    .locals 2

    .line 78
    iget-object v0, p1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 79
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->showPageIndicatorAtCurrentScroll()V

    .line 80
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->setShouldAutoHide(Z)V

    .line 84
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/launcher3/InstallShortcutReceiver;->enableInstallQueue(I)V

    .line 85
    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/launcher3/states/RotationHelper;->setCurrentStateRequest(I)V

    .line 86
    return-void
.end method
