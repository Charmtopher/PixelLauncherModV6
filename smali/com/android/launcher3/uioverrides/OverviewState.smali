.class public Lcom/android/launcher3/uioverrides/OverviewState;
.super Lcom/android/launcher3/LauncherState;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 40
    const/16 v0, 0xfa

    const/16 v1, 0x219

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/uioverrides/OverviewState;-><init>(III)V

    .line 41
    return-void
.end method

.method protected constructor <init>(III)V
    .locals 1

    .line 44
    const/16 v0, 0xc

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/launcher3/LauncherState;-><init>(IIII)V

    .line 45
    return-void
.end method

.method public static getDefaultSwipeHeight(Lcom/android/launcher3/Launcher;)F
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    .line 113
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    int-to-float v0, v0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    sub-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public final getFinalFocus(Lcom/android/launcher3/Launcher;)Landroid/view/View;
    .locals 0

    .line 78
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getOverviewScaleAndTranslationYFactor$29c5cce7()[F
    .locals 1

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final getVerticalProgress(Lcom/android/launcher3/Launcher;)F
    .locals 2

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/OverviewState;->getVisibleElements(Lcom/android/launcher3/Launcher;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 105
    invoke-super {p0, p1}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result p1

    return p1

    .line 107
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1}, Lcom/android/launcher3/uioverrides/OverviewState;->getDefaultSwipeHeight(Lcom/android/launcher3/Launcher;)F

    move-result v1

    .line 108
    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    iget p1, p1, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    div-float/2addr v1, p1

    sub-float/2addr v0, v1

    .line 107
    return v0
.end method

.method public getVisibleElements(Lcom/android/launcher3/Launcher;)I
    .locals 1

    .line 92
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const/16 p1, 0x20

    return p1

    .line 95
    :cond_0
    const/16 v0, 0x22

    .line 96
    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object p1, p1, Lcom/android/launcher3/allapps/AllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->hasVisibleContent()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 97
    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    or-int/2addr p1, v0

    .line 95
    return p1
.end method

.method public final getWorkspacePageAlphaProvider(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$PageAlphaProvider;
    .locals 1

    .line 82
    new-instance p1, Lcom/android/launcher3/uioverrides/OverviewState$1;

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/uioverrides/OverviewState$1;-><init>(Lcom/android/launcher3/uioverrides/OverviewState;Landroid/view/animation/Interpolator;)V

    return-object p1
.end method

.method public final getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)[F
    .locals 3

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    neg-int p1, p1

    const/4 v1, 0x2

    div-int/2addr p1, v1

    int-to-float p1, p1

    aput p1, v0, v1

    return-object v0
.end method

.method public final onStateDisabled(Lcom/android/launcher3/Launcher;)V
    .locals 1

    .line 67
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/RecentsView;

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/RecentsView;->setOverviewStateEnabled(Z)V

    .line 69
    return-void
.end method

.method public final onStateEnabled(Lcom/android/launcher3/Launcher;)V
    .locals 2

    .line 60
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->setOverviewStateEnabled(Z)V

    .line 62
    invoke-static {p1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/BaseDraggingActivity;)V

    .line 63
    return-void
.end method

.method public onStateTransitionEnd(Lcom/android/launcher3/Launcher;)V
    .locals 1

    .line 73
    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/states/RotationHelper;->setCurrentStateRequest(I)V

    .line 74
    return-void
.end method
