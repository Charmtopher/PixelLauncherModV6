.class public abstract Lcom/android/launcher3/touch/AbstractStateChangeTouchController;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/touch/SwipeDetector$Listener;
.implements Lcom/android/launcher3/util/TouchController;


# instance fields
.field public mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field protected final mDetector:Lcom/android/launcher3/touch/SwipeDetector;

.field private mDisplacementShift:F

.field public mFromState:Lcom/android/launcher3/LauncherState;

.field public final mLauncher:Lcom/android/launcher3/Launcher;

.field private mNoIntercept:Z

.field public mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

.field private mProgressMultiplier:F

.field public mStartContainerType:I

.field private mStartProgress:F

.field public mToState:Lcom/android/launcher3/LauncherState;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/touch/SwipeDetector$Direction;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 66
    new-instance v0, Lcom/android/launcher3/touch/SwipeDetector;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/launcher3/touch/SwipeDetector;-><init>(Landroid/content/Context;Lcom/android/launcher3/touch/SwipeDetector$Listener;Lcom/android/launcher3/touch/SwipeDetector$Direction;)V

    iput-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDetector:Lcom/android/launcher3/touch/SwipeDetector;

    .line 67
    return-void
.end method

.method public static synthetic lambda$onDragEnd$0(Lcom/android/launcher3/touch/AbstractStateChangeTouchController;Lcom/android/launcher3/LauncherState;I)V
    .locals 0

    .line 235
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;I)V

    return-void
.end method

.method private reinitCurrentAnimation(ZZ)Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object p1, p1, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    goto :goto_0

    .line 138
    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    .line 139
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;

    move-result-object p2

    .line 141
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    if-eq p2, v0, :cond_3

    :cond_2
    if-ne p1, p2, :cond_4

    .line 142
    :cond_3
    const/4 p1, 0x0

    return p1

    .line 145
    :cond_4
    iput-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    .line 146
    iput-object p2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    .line 148
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mStartProgress:F

    .line 149
    invoke-virtual {p0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->initCurrentAnimation()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mProgressMultiplier:F

    .line 150
    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 151
    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()V

    .line 152
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public abstract canInterceptTouch(Landroid/view/MotionEvent;)Z
.end method

.method protected final clearState()V
    .locals 2

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 277
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDetector:Lcom/android/launcher3/touch/SwipeDetector;

    sget-object v1, Lcom/android/launcher3/touch/SwipeDetector$ScrollState;->IDLE:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/touch/SwipeDetector;->setState(Lcom/android/launcher3/touch/SwipeDetector$ScrollState;)V

    .line 278
    return-void
.end method

.method public getDirectionForLog()I
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    iget v0, v0, Lcom/android/launcher3/LauncherState;->ordinal:I

    iget-object v1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    iget v1, v1, Lcom/android/launcher3/LauncherState;->ordinal:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getShiftRange()F
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    iget v0, v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    return v0
.end method

.method public abstract getSwipeDirection$53fcfd3d()I
.end method

.method public abstract getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;
.end method

.method public abstract initCurrentAnimation()F
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget-object v0, v0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mOriginalTarget:Landroid/animation/AnimatorSet;

    if-ne p1, v0, :cond_0

    .line 283
    const-string p1, "ASCTouchController"

    const-string v0, "Who dare cancel the animation when I am in control"

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    invoke-virtual {p0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->clearState()V

    .line 286
    :cond_0
    return-void
.end method

.method public final onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mNoIntercept:Z

    .line 81
    iget-boolean v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mNoIntercept:Z

    if-eqz v0, :cond_0

    .line 82
    return v1

    .line 88
    :cond_0
    nop

    .line 90
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v0

    const v3, 0x3f69999a    # 0.9125f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 92
    nop

    .line 106
    :goto_0
    move v0, v2

    goto :goto_1

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v0

    const v3, 0x3db33333    # 0.0875f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    .line 94
    const/4 v2, 0x2

    goto :goto_0

    .line 96
    :cond_2
    const/4 v0, 0x3

    .line 97
    goto :goto_2

    .line 100
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->getSwipeDirection$53fcfd3d()I

    move-result v0

    .line 101
    if-nez v0, :cond_4

    .line 102
    iput-boolean v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mNoIntercept:Z

    .line 103
    return v1

    .line 106
    :cond_4
    :goto_1
    move v2, v1

    :goto_2
    iget-object v3, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDetector:Lcom/android/launcher3/touch/SwipeDetector;

    invoke-virtual {v3, v0, v2}, Lcom/android/launcher3/touch/SwipeDetector;->setDetectableScrollConditions(IZ)V

    .line 110
    :cond_5
    iget-boolean v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mNoIntercept:Z

    if-eqz v0, :cond_6

    .line 111
    return v1

    .line 114
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    .line 115
    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDetector:Lcom/android/launcher3/touch/SwipeDetector;

    invoke-virtual {p1}, Lcom/android/launcher3/touch/SwipeDetector;->isDraggingOrSettling()Z

    move-result p1

    return p1
.end method

.method public final onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDetector:Lcom/android/launcher3/touch/SwipeDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/SwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDrag(FF)Z
    .locals 4

    .line 169
    iget p2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mProgressMultiplier:F

    iget v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDisplacementShift:F

    sub-float v0, p1, v0

    mul-float/2addr p2, v0

    .line 170
    iget v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mStartProgress:F

    add-float/2addr p2, v0

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 172
    iget v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDisplacementShift:F

    sub-float v0, p1, v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v0, :cond_0

    .line 173
    move v0, v3

    goto :goto_0

    .line 172
    :cond_0
    nop

    .line 173
    move v0, v2

    :goto_0
    cmpg-float v1, p2, v1

    if-gtz v1, :cond_1

    .line 174
    invoke-direct {p0, v2, v0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->reinitCurrentAnimation(ZZ)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 175
    iput p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDisplacementShift:F

    goto :goto_1

    .line 177
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_2

    .line 178
    invoke-direct {p0, v3, v0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->reinitCurrentAnimation(ZZ)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 179
    iput p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDisplacementShift:F

    .line 182
    :cond_2
    :goto_1
    return v3
.end method

.method public onDragEnd(FZ)V
    .locals 10

    .line 193
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v0

    .line 195
    if-eqz p2, :cond_1

    .line 196
    const/4 v1, 0x4

    .line 198
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mProgressMultiplier:F

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    .line 211
    :goto_0
    move-object v7, v2

    goto :goto_1

    .line 202
    :cond_1
    const/4 v1, 0x3

    .line 203
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    goto :goto_0

    .line 211
    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    const/high16 v3, 0x41800000    # 16.0f

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    if-ne v7, v2, :cond_4

    .line 212
    nop

    .line 213
    cmpl-float v2, v0, v8

    if-ltz v2, :cond_3

    .line 214
    nop

    .line 215
    nop

    .line 235
    move v2, v8

    move v6, v2

    move-wide v8, v4

    goto :goto_3

    .line 217
    :cond_3
    mul-float/2addr v3, p1

    iget v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mProgressMultiplier:F

    mul-float/2addr v3, v2

    add-float/2addr v3, v0

    invoke-static {v3, v6, v8}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v2

    .line 219
    nop

    .line 220
    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v0, v8, v0

    .line 219
    invoke-static {p1, v0}, Lcom/android/launcher3/touch/SwipeDetector;->calculateDuration(FF)J

    move-result-wide v3

    .line 235
    move v6, v8

    :goto_2
    move-wide v8, v3

    goto :goto_3

    .line 223
    :cond_4
    nop

    .line 224
    cmpg-float v2, v0, v6

    if-gtz v2, :cond_5

    .line 225
    nop

    .line 226
    nop

    .line 235
    move-wide v8, v4

    move v2, v6

    goto :goto_3

    .line 228
    :cond_5
    mul-float/2addr v3, p1

    iget v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mProgressMultiplier:F

    mul-float/2addr v3, v2

    add-float/2addr v3, v0

    invoke-static {v3, v6, v8}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v2

    .line 230
    nop

    .line 231
    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v0, v6

    .line 230
    invoke-static {p1, v0}, Lcom/android/launcher3/touch/SwipeDetector;->calculateDuration(FF)J

    move-result-wide v3

    goto :goto_2

    .line 235
    :goto_3
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    new-instance v3, Lcom/android/launcher3/touch/-$$Lambda$AbstractStateChangeTouchController$RwEISxsMUlr5U_4sLbHR6ktFaa4;

    invoke-direct {v3, p0, v7, v1}, Lcom/android/launcher3/touch/-$$Lambda$AbstractStateChangeTouchController$RwEISxsMUlr5U_4sLbHR6ktFaa4;-><init>(Lcom/android/launcher3/touch/AbstractStateChangeTouchController;Lcom/android/launcher3/LauncherState;I)V

    iput-object v3, v0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mEndAction:Ljava/lang/Runnable;

    .line 236
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget-object v0, v0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    .line 237
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v6, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 238
    move-object v3, p0

    move-object v4, v0

    move-wide v5, v8

    move v8, p1

    move v9, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->updateSwipeCompleteAnimation(Landroid/animation/ValueAnimator;JLcom/android/launcher3/LauncherState;FZ)V

    .line 239
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 240
    return-void
.end method

.method public onDragStart(Z)V
    .locals 1

    .line 157
    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez p1, :cond_0

    .line 158
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    iput-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    .line 159
    const/4 p1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDetector:Lcom/android/launcher3/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/SwipeDetector;->wasInitialTouchPositive()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->reinitCurrentAnimation(ZZ)Z

    .line 160
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDisplacementShift:F

    return-void

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget-object p1, p1, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 163
    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mStartProgress:F

    .line 165
    return-void
.end method

.method public onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;I)V
    .locals 9

    .line 253
    invoke-virtual {p0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->clearState()V

    .line 254
    nop

    .line 255
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    if-ne v0, p1, :cond_0

    .line 257
    move v0, v2

    goto :goto_0

    .line 256
    :cond_0
    nop

    .line 257
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

    invoke-virtual {v3, v0, p2}, Lcom/android/launcher3/util/PendingAnimation;->finish(ZI)V

    .line 258
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

    .line 259
    nop

    .line 261
    xor-int/2addr v2, v0

    :cond_1
    if-eqz v2, :cond_3

    .line 262
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v2

    .line 265
    invoke-virtual {p0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->getDirectionForLog()I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mStartContainerType:I

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    iget v6, v0, Lcom/android/launcher3/LauncherState;->containerType:I

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    iget v7, v0, Lcom/android/launcher3/LauncherState;->containerType:I

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 269
    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v8

    .line 264
    move v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/logging/UserEventDispatcher;->logStateChangeAction(IIIIII)V

    .line 271
    :cond_2
    iget-object p2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p2, p2, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    invoke-virtual {p2, p1, v1}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;Z)V

    .line 273
    :cond_3
    return-void
.end method

.method public updateSwipeCompleteAnimation(Landroid/animation/ValueAnimator;JLcom/android/launcher3/LauncherState;FZ)V
    .locals 0

    .line 244
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 245
    invoke-static {p5}, Lcom/android/launcher3/anim/Interpolators;->scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 246
    return-void
.end method
