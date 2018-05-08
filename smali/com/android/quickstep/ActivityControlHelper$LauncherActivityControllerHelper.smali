.class public Lcom/android/quickstep/ActivityControlHelper$LauncherActivityControllerHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/ActivityControlHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getVisibleLaucher()Lcom/android/launcher3/Launcher;
    .locals 2

    .line 241
    invoke-virtual {p0}, Lcom/android/quickstep/ActivityControlHelper$LauncherActivityControllerHelper;->getCreatedActivity()Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 242
    return-object v0
.end method


# virtual methods
.method public createActivityInitListener(Ljava/util/function/BiPredicate;)Lcom/android/quickstep/ActivityControlHelper$ActivityInitListener;
    .locals 1

    .line 225
    new-instance v0, Lcom/android/launcher3/LauncherInitListener;

    invoke-direct {v0, p1}, Lcom/android/launcher3/LauncherInitListener;-><init>(Ljava/util/function/BiPredicate;)V

    return-object v0
.end method

.method public bridge synthetic createControllerForHiddenActivity(Lcom/android/launcher3/BaseDraggingActivity;I)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 0

    .line 106
    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/ActivityControlHelper$LauncherActivityControllerHelper;->createControllerForHiddenActivity(Lcom/android/launcher3/Launcher;I)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    return-object p1
.end method

.method public createControllerForHiddenActivity(Lcom/android/launcher3/Launcher;I)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 7

    .line 200
    iget-object v0, p1, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    .line 201
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 202
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_0

    .line 205
    iget v2, v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 206
    int-to-float v4, p2

    div-float/2addr v4, v2

    .line 208
    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result p1

    .line 209
    add-float/2addr v4, p1

    .line 210
    sget-object v2, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PROGRESS:Landroid/util/Property;

    new-array v5, v3, [F

    const/4 v6, 0x0

    aput v4, v5, v6

    const/4 v4, 0x1

    aput p1, v5, v4

    invoke-static {v0, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 212
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 213
    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 218
    :cond_0
    mul-int/2addr p2, v3

    int-to-long p1, p2

    invoke-virtual {v1, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 219
    invoke-static {v1, p1, p2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createControllerForVisibleActivity(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 0

    .line 106
    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/ActivityControlHelper$LauncherActivityControllerHelper;->createControllerForVisibleActivity(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    return-object p1
.end method

.method public createControllerForVisibleActivity(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 3

    .line 192
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 193
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v1, v0

    int-to-long v0, v1

    .line 194
    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/launcher3/LauncherStateManager;->createAnimationToNewWorkspace(Lcom/android/launcher3/LauncherState;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createLayoutListener(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/quickstep/ActivityControlHelper$LayoutListener;
    .locals 0

    .line 106
    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/ActivityControlHelper$LauncherActivityControllerHelper;->createLayoutListener(Lcom/android/launcher3/Launcher;)Lcom/android/quickstep/ActivityControlHelper$LayoutListener;

    move-result-object p1

    return-object p1
.end method

.method public createLayoutListener(Lcom/android/launcher3/Launcher;)Lcom/android/quickstep/ActivityControlHelper$LayoutListener;
    .locals 1

    .line 110
    new-instance v0, Lcom/android/quickstep/views/LauncherLayoutListener;

    invoke-direct {v0, p1}, Lcom/android/quickstep/views/LauncherLayoutListener;-><init>(Lcom/android/launcher3/Launcher;)V

    return-object v0
.end method

.method public deferStartingActivity(I)Z
    .locals 1

    .line 266
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic executeOnNextDraw(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;Ljava/lang/Runnable;)V
    .locals 0

    .line 106
    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quickstep/ActivityControlHelper$LauncherActivityControllerHelper;->executeOnNextDraw(Lcom/android/launcher3/Launcher;Lcom/android/quickstep/views/TaskView;Ljava/lang/Runnable;)V

    return-void
.end method

.method public executeOnNextDraw(Lcom/android/launcher3/Launcher;Lcom/android/quickstep/views/TaskView;Ljava/lang/Runnable;)V
    .locals 2

    .line 135
    new-instance v0, Lcom/android/quickstep/ActivityControlHelper$LauncherActivityControllerHelper$1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/ActivityControlHelper$LauncherActivityControllerHelper$1;-><init>(Lcom/android/quickstep/ActivityControlHelper$LauncherActivityControllerHelper;)V

    .line 143
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->attachTo(Lcom/android/launcher3/Launcher;Landroid/view/View;Z)V

    .line 144
    invoke-virtual {v0, p3}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->execute(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method public bridge synthetic executeOnWindowAvailable(Lcom/android/launcher3/BaseDraggingActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 106
    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/ActivityControlHelper$LauncherActivityControllerHelper;->executeOnWindowAvailable(Lcom/android/launcher3/Launcher;Ljava/lang/Runnable;)V

    return-void
.end method

.method public executeOnWindowAvailable(Lcom/android/launcher3/Launcher;Ljava/lang/Runnable;)V
    .locals 1

    .line 127
    iget-object v0, p1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/Workspace;->runOnOverlayHidden(Ljava/lang/Runnable;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 129
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/ActivityControlHelper$LauncherActivityControllerHelper;->onQuickstepGestureStarted(Lcom/android/launcher3/Launcher;Z)V

    .line 131
    :cond_0
    return-void
.end method

.method public bridge synthetic getCreatedActivity()Lcom/android/launcher3/BaseDraggingActivity;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/android/quickstep/ActivityControlHelper$LauncherActivityControllerHelper;->getCreatedActivity()Lcom/android/launcher3/Launcher;

    move-result-object v0

    return-object v0
.end method

.method public getCreatedActivity()Lcom/android/launcher3/Launcher;
    .locals 1

    .line 231
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/LauncherAppState;

    .line 232
    if-nez v0, :cond_0

    .line 233
    const/4 v0, 0x0

    return-object v0

    .line 235
    :cond_0
    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method public getOverviewWindowBounds(Landroid/graphics/Rect;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/Rect;
    .locals 0

    .line 271
    return-object p1
.end method

.method public getSwipeUpDestinationAndLength(Lcom/android/launcher3/DeviceProfile;Landroid/content/Context;Landroid/graphics/Rect;)I
    .locals 0

    .line 149
    invoke-static {p2, p1, p3}, Lcom/android/quickstep/util/LayoutUtils;->calculateLauncherTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    .line 150
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 151
    iget-object p2, p1, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    .line 152
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result p3

    if-eqz p3, :cond_0

    iget p2, p2, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 153
    :goto_0
    iget p3, p1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingPx:I

    add-int/2addr p3, p1

    add-int/2addr p3, p2

    return p3

    .line 155
    :cond_1
    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public getVisibleRecentsView()Lcom/android/quickstep/views/RecentsView;
    .locals 2

    .line 249
    invoke-direct {p0}, Lcom/android/quickstep/ActivityControlHelper$LauncherActivityControllerHelper;->getVisibleLaucher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 250
    return-object v0
.end method

.method public bridge synthetic onQuickInteractionStart(Lcom/android/launcher3/BaseDraggingActivity;Z)Z
    .locals 0

    .line 106
    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/ActivityControlHelper$LauncherActivityControllerHelper;->onQuickInteractionStart(Lcom/android/launcher3/Launcher;Z)Z

    move-result p1

    return p1
.end method

.method public onQuickInteractionStart(Lcom/android/launcher3/Launcher;Z)Z
    .locals 2

    .line 120
    iget-object v0, p1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    .line 121
    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v1, Lcom/android/launcher3/LauncherState;->FAST_OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v1, p2}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;Z)V

    .line 122
    iget-boolean p1, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onQuickstepGestureStarted(Lcom/android/launcher3/BaseDraggingActivity;Z)V
    .locals 0

    .line 106
    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/ActivityControlHelper$LauncherActivityControllerHelper;->onQuickstepGestureStarted(Lcom/android/launcher3/Launcher;Z)V

    return-void
.end method

.method public onQuickstepGestureStarted(Lcom/android/launcher3/Launcher;Z)V
    .locals 0

    .line 115
    iget-object p2, p1, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/LauncherCallbacks;->onQuickstepGestureStarted$1385ff()V

    .line 116
    :cond_0
    return-void
.end method

.method public bridge synthetic onSwipeUpComplete(Lcom/android/launcher3/BaseDraggingActivity;)V
    .locals 0

    .line 106
    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/ActivityControlHelper$LauncherActivityControllerHelper;->onSwipeUpComplete(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method public onSwipeUpComplete(Lcom/android/launcher3/Launcher;)V
    .locals 0

    .line 168
    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherStateManager;->reapplyState()V

    .line 169
    return-void
.end method

.method public bridge synthetic onTransitionCancelled(Lcom/android/launcher3/BaseDraggingActivity;Z)V
    .locals 0

    .line 106
    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/ActivityControlHelper$LauncherActivityControllerHelper;->onTransitionCancelled(Lcom/android/launcher3/Launcher;Z)V

    return-void
.end method

.method public onTransitionCancelled(Lcom/android/launcher3/Launcher;Z)V
    .locals 1

    .line 161
    iget-object v0, p1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherStateManager;->getRestState()Lcom/android/launcher3/LauncherState;

    move-result-object v0

    .line 162
    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    invoke-virtual {p1, v0, p2}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;Z)V

    .line 163
    return-void
.end method

.method public bridge synthetic prepareRecentsUI(Lcom/android/launcher3/BaseDraggingActivity;Z)V
    .locals 0

    .line 106
    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/ActivityControlHelper$LauncherActivityControllerHelper;->prepareRecentsUI(Lcom/android/launcher3/Launcher;Z)V

    return-void
.end method

.method public prepareRecentsUI(Lcom/android/launcher3/Launcher;Z)V
    .locals 2

    .line 173
    iget-object v0, p1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    .line 174
    iget-boolean v1, v0, Lcom/android/launcher3/LauncherState;->disableRestore:Z

    if-eqz v1, :cond_0

    .line 175
    iget-object v0, p1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherStateManager;->getRestState()Lcom/android/launcher3/LauncherState;

    move-result-object v0

    .line 177
    :cond_0
    iget-object v1, p1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iput-object v0, v1, Lcom/android/launcher3/LauncherStateManager;->mRestState:Lcom/android/launcher3/LauncherState;

    .line 179
    if-nez p2, :cond_1

    .line 182
    iget-object p2, p1, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->reset(Z)V

    .line 183
    iget-object p2, p1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p2, v1, v0}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;Z)V

    .line 186
    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getContentView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 188
    :cond_1
    return-void
.end method

.method public shouldMinimizeSplitScreen()Z
    .locals 1

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public switchToRecentsIfVisible()Z
    .locals 2

    .line 256
    invoke-direct {p0}, Lcom/android/quickstep/ActivityControlHelper$LauncherActivityControllerHelper;->getVisibleLaucher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    .line 258
    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;)V

    .line 259
    const/4 v0, 0x1

    return v0

    .line 261
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
