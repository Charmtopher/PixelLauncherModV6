.class public Lcom/android/launcher3/uioverrides/LandscapeStatesTouchController;
.super Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected final canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/LandscapeStatesTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 43
    return v1

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/LandscapeStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 46
    return v2

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/LandscapeStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/LandscapeStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/LandscapeStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    return v1

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/LandscapeStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 54
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/LandscapeStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getBottom()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v3, v0

    int-to-float v0, v3

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    return v1

    :cond_4
    return v2

    .line 57
    :cond_5
    return v2
.end method

.method protected final getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;
    .locals 1

    .line 63
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    .line 65
    invoke-static {}, Lcom/android/quickstep/TouchInteractionService;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/LandscapeStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object p1, p1, Lcom/android/launcher3/LauncherStateManager;->mLastStableState:Lcom/android/launcher3/LauncherState;

    return-object p1

    :cond_0
    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 65
    return-object p1

    .line 67
    :cond_1
    if-eqz p2, :cond_2

    .line 68
    sget-object p1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    return-object p1

    .line 70
    :cond_2
    return-object p1
.end method
