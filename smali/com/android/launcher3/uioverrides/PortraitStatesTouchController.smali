.class public Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;
.super Lcom/android/launcher3/touch/AbstractStateChangeTouchController;
.source "SourceFile"


# instance fields
.field private final mAllAppsDampedInterpolator:Landroid/view/animation/Interpolator;

.field private mAllAppsInterpolatorWrapper:Lcom/android/launcher3/uioverrides/PortraitStatesTouchController$InterpolatorWrapper;

.field private mFinishFastOnSecondTouch:Z

.field private final mOverviewBoundInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1

    .line 91
    sget-object v0, Lcom/android/launcher3/touch/SwipeDetector;->VERTICAL:Lcom/android/launcher3/touch/SwipeDetector$Direction;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/touch/SwipeDetector$Direction;)V

    .line 63
    new-instance p1, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController$InterpolatorWrapper;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController$InterpolatorWrapper;-><init>(B)V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mAllAppsInterpolatorWrapper:Lcom/android/launcher3/uioverrides/PortraitStatesTouchController$InterpolatorWrapper;

    .line 68
    new-instance p1, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController$1;-><init>(Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;)V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mAllAppsDampedInterpolator:Landroid/view/animation/Interpolator;

    .line 83
    sget-object p1, Lcom/android/launcher3/uioverrides/-$$Lambda$PortraitStatesTouchController$ur83tUHPtZTwDytOfL1rjmX1bRQ;->INSTANCE:Lcom/android/launcher3/uioverrides/-$$Lambda$PortraitStatesTouchController$ur83tUHPtZTwDytOfL1rjmX1bRQ;

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mOverviewBoundInterpolator:Landroid/view/animation/Interpolator;

    .line 92
    return-void
.end method

.method static synthetic lambda$handleFirstSwipeToOverview$1(FFDFF)F
    .locals 2

    .line 244
    sub-float/2addr p5, p0

    div-float/2addr p5, p1

    .line 246
    const/high16 p0, 0x3f000000    # 0.5f

    cmpg-float p1, p5, p0

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-gez p1, :cond_0

    .line 247
    sub-double/2addr v0, p2

    float-to-double p0, p5

    mul-double/2addr p0, p2

    const-wide/high16 p2, 0x3fe0000000000000L    # 0.5

    div-double/2addr p0, p2

    add-double/2addr v0, p0

    .line 248
    float-to-double p0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double/2addr p0, p2

    double-to-float p0, p0

    return p0

    .line 251
    :cond_0
    sub-float/2addr p5, p0

    div-float/2addr p5, p0

    .line 252
    const/high16 p0, 0x40400000    # 3.0f

    mul-float/2addr p0, p5

    float-to-double p0, p0

    mul-double/2addr p0, v0

    add-double/2addr v0, p0

    .line 253
    const/high16 p0, 0x3f800000    # 1.0f

    sub-float p1, p0, p5

    mul-float/2addr p1, p1

    sub-float/2addr p4, p0

    mul-float/2addr p1, p4

    .line 254
    float-to-double p1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    mul-double/2addr p1, p3

    double-to-float p1, p1

    add-float/2addr p0, p1

    return p0
.end method

.method static synthetic lambda$handleFirstSwipeToOverview$2(FFFF)F
    .locals 2

    .line 271
    sub-float/2addr p3, p0

    div-float/2addr p3, p1

    .line 273
    float-to-double p0, p3

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    mul-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    .line 274
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p3, v0, p3

    mul-float/2addr p3, p3

    mul-float/2addr p3, p2

    .line 275
    float-to-double p2, p3

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr p2, p0

    double-to-float p0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method static synthetic lambda$new$0(F)F
    .locals 2

    .line 84
    const v0, 0x3f666666    # 0.9f

    cmpl-float v1, p0, v0

    if-ltz v1, :cond_0

    .line 85
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 87
    :cond_0
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    div-float/2addr p0, v0

    invoke-interface {v1, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method


# virtual methods
.method protected canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 97
    iget-boolean p1, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mFinishFastOnSecondTouch:Z

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget-object p1, p1, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 103
    :cond_0
    return v1

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 108
    return v2

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 113
    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v0

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getHeight()I

    move-result v0

    sub-int/2addr v0, v3

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    .line 115
    return v2

    .line 118
    :cond_3
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 119
    return v2

    .line 121
    :cond_4
    return v1
.end method

.method protected final getSwipeDirection$53fcfd3d()I
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 128
    nop

    .line 129
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mStartContainerType:I

    goto :goto_2

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    nop

    .line 132
    iput v1, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mStartContainerType:I

    .line 141
    move v1, v2

    const v1, 0x3

    goto :goto_2

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 134
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;

    move-result-object v0

    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-eq v0, v3, :cond_2

    .line 135
    move v1, v2

    goto :goto_0

    .line 134
    :cond_2
    nop

    .line 135
    :goto_0
    if-eqz v1, :cond_3

    const/4 v0, 0x3

    .line 137
    move v1, v0

    goto :goto_1

    .line 136
    :cond_3
    nop

    .line 137
    move v1, v2

    :goto_1
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mStartContainerType:I

    .line 138
    nop

    .line 141
    :goto_2
    return v1

    .line 139
    :cond_4
    return v1
.end method

.method protected getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;
    .locals 1

    .line 146
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    .line 148
    invoke-static {}, Lcom/android/quickstep/TouchInteractionService;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object p1, p1, Lcom/android/launcher3/LauncherStateManager;->mLastStableState:Lcom/android/launcher3/LauncherState;

    return-object p1

    :cond_0
    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 148
    return-object p1

    .line 150
    :cond_1
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_3

    .line 151
    if-eqz p2, :cond_2

    sget-object p1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    return-object p1

    :cond_2
    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    return-object p1

    .line 152
    :cond_3
    if-eqz p2, :cond_5

    .line 153
    invoke-static {}, Lcom/android/quickstep/TouchInteractionService;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    return-object p1

    :cond_4
    sget-object p1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    return-object p1

    .line 155
    :cond_5
    return-object p1
.end method

.method protected final initCurrentAnimation()F
    .locals 9

    .line 170
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->getShiftRange()F

    move-result v0

    .line 171
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    float-to-long v1, v1

    .line 173
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    iget-object v4, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v3

    mul-float/2addr v3, v0

    .line 174
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    iget-object v5, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v4

    mul-float/2addr v4, v0

    .line 176
    sub-float/2addr v4, v3

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v0, v3, :cond_0

    cmpl-float v0, v4, v6

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mAllAppsInterpolatorWrapper:Lcom/android/launcher3/uioverrides/PortraitStatesTouchController$InterpolatorWrapper;

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mAllAppsDampedInterpolator:Landroid/view/animation/Interpolator;

    iput-object v3, v0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController$InterpolatorWrapper;->baseInterpolator:Landroid/animation/TimeInterpolator;

    new-instance v0, Lcom/android/launcher3/anim/AnimatorSetBuilder;

    invoke-direct {v0}, Lcom/android/launcher3/anim/AnimatorSetBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mAllAppsInterpolatorWrapper:Lcom/android/launcher3/uioverrides/PortraitStatesTouchController$InterpolatorWrapper;

    invoke-virtual {v0, v5, v3}, Lcom/android/launcher3/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/4 v3, 0x1

    iget-object v7, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mOverviewBoundInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3, v7}, Lcom/android/launcher3/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 182
    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v4, v3

    goto :goto_0

    .line 184
    :cond_0
    new-instance v0, Lcom/android/launcher3/anim/AnimatorSetBuilder;

    invoke-direct {v0}, Lcom/android/launcher3/anim/AnimatorSetBuilder;-><init>()V

    .line 187
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

    if-eqz v3, :cond_1

    .line 188
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

    const/4 v7, 0x3

    invoke-virtual {v3, v5, v7}, Lcom/android/launcher3/util/PendingAnimation;->finish(ZI)V

    .line 189
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

    .line 192
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/views/RecentsView;

    .line 193
    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/quickstep/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/quickstep/views/TaskView;

    .line 194
    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->shouldSwipeDownLaunchApp()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    sget-object v8, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    sget-object v8, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v7, v8, :cond_2

    if-eqz v5, :cond_2

    .line 196
    invoke-virtual {v3, v5, v1, v2}, Lcom/android/quickstep/views/RecentsView;->createTaskLauncherAnimation(Lcom/android/quickstep/views/TaskView;J)Lcom/android/launcher3/util/PendingAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

    .line 197
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

    iget-object v0, v0, Lcom/android/launcher3/util/PendingAnimation;->anim:Landroid/animation/AnimatorSet;

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->ZOOM_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 199
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

    iget-object v0, v0, Lcom/android/launcher3/util/PendingAnimation;->anim:Landroid/animation/AnimatorSet;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    goto :goto_1

    .line 201
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, v3, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v5, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    .line 202
    invoke-virtual {v3, v5, v0, v1, v2}, Lcom/android/launcher3/LauncherStateManager;->createAnimationToNewWorkspace(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/AnimatorSetBuilder;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 205
    :goto_1
    cmpl-float v0, v4, v6

    if-nez v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    iget v0, v0, Lcom/android/launcher3/LauncherState;->ordinal:I

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    iget v1, v1, Lcom/android/launcher3/LauncherState;->ordinal:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 207
    invoke-static {v1}, Lcom/android/launcher3/uioverrides/OverviewState;->getDefaultSwipeHeight(Lcom/android/launcher3/Launcher;)F

    move-result v1

    mul-float v4, v0, v1

    .line 209
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, v4

    return v0
.end method

.method protected final onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;I)V
    .locals 1

    .line 285
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;I)V

    .line 286
    iget-object p2, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p2, v0, :cond_0

    sget-object p2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, p2, :cond_0

    .line 287
    const-wide/16 p1, 0x0

    invoke-static {p1, p2}, Lcom/android/quickstep/util/SysuiEventLogger;->writeDummyRecentsTransition(J)V

    .line 289
    :cond_0
    return-void
.end method

.method protected final updateSwipeCompleteAnimation(Landroid/animation/ValueAnimator;JLcom/android/launcher3/LauncherState;FZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 215
    iget-object v2, v0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3

    iget-object v2, v0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v2, v3, :cond_3

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    move-object/from16 v3, p4

    if-ne v3, v2, :cond_4

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mFinishFastOnSecondTouch:Z

    iget-object v5, v0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v5}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v7

    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v6, v0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mAllAppsDampedInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    const v8, 0x3eaaaaab

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz p6, :cond_1

    cmpl-float v10, v5, v9

    if-lez v10, :cond_1

    cmpg-float v10, v7, v8

    if-gez v10, :cond_1

    const/high16 v10, 0x40800000    # 4.0f

    cmpl-float v10, v5, v10

    if-lez v10, :cond_0

    const v5, 0x3fa66666    # 1.3f

    goto :goto_0

    :cond_0
    sub-float/2addr v5, v9

    const v10, 0x3e99999a    # 0.3f

    mul-float/2addr v5, v10

    const/high16 v10, 0x40400000    # 3.0f

    div-float/2addr v5, v10

    add-float/2addr v5, v9

    :goto_0
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v11

    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    div-float/2addr v6, v11

    float-to-double v5, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    sub-double/2addr v12, v5

    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    if-eqz v5, :cond_1

    const-wide/16 v5, 0x0

    cmpl-double v5, v12, v5

    if-eqz v5, :cond_1

    sub-float v8, v9, v7

    iget-object v2, v0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mAllAppsInterpolatorWrapper:Lcom/android/launcher3/uioverrides/PortraitStatesTouchController$InterpolatorWrapper;

    new-instance v4, Lcom/android/launcher3/uioverrides/-$$Lambda$PortraitStatesTouchController$UktDIb2PRzNBkMvJ-e6W-2LoCng;

    move-object v6, v4

    move-wide v9, v12

    invoke-direct/range {v6 .. v11}, Lcom/android/launcher3/uioverrides/-$$Lambda$PortraitStatesTouchController$UktDIb2PRzNBkMvJ-e6W-2LoCng;-><init>(FFDF)V

    iput-object v4, v2, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController$InterpolatorWrapper;->baseInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual/range {p1 .. p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    goto :goto_1

    :cond_1
    cmpg-float v5, v7, v8

    if-gez v5, :cond_2

    iget-object v2, v0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mAllAppsInterpolatorWrapper:Lcom/android/launcher3/uioverrides/PortraitStatesTouchController$InterpolatorWrapper;

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    iput-object v4, v2, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController$InterpolatorWrapper;->baseInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_2

    :cond_2
    iget-object v5, v0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mAllAppsDampedInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    sub-float/2addr v5, v9

    sub-float v6, v9, v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    aput v7, v8, v4

    aput v9, v8, v2

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v2, v0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mAllAppsInterpolatorWrapper:Lcom/android/launcher3/uioverrides/PortraitStatesTouchController$InterpolatorWrapper;

    new-instance v4, Lcom/android/launcher3/uioverrides/-$$Lambda$PortraitStatesTouchController$MxZLft7oIf83iw3z_OcoN-Ohry8;

    invoke-direct {v4, v7, v6, v5}, Lcom/android/launcher3/uioverrides/-$$Lambda$PortraitStatesTouchController$MxZLft7oIf83iw3z_OcoN-Ohry8;-><init>(FFF)V

    iput-object v4, v2, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController$InterpolatorWrapper;->baseInterpolator:Landroid/animation/TimeInterpolator;

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    :goto_1
    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_2

    :cond_3
    move-object/from16 v3, p4

    :cond_4
    iput-boolean v4, v0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->mFinishFastOnSecondTouch:Z

    .line 216
    :goto_2
    invoke-super/range {p0 .. p6}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->updateSwipeCompleteAnimation(Landroid/animation/ValueAnimator;JLcom/android/launcher3/LauncherState;FZ)V

    .line 218
    return-void
.end method
