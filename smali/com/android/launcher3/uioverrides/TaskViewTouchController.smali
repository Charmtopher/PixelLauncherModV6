.class public abstract Lcom/android/launcher3/uioverrides/TaskViewTouchController;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/touch/SwipeDetector$Listener;
.implements Lcom/android/launcher3/util/TouchController;


# static fields
.field private static final ALLOWED_FLING_DIRECTION_CHANGE_PROGRESS:F = 0.1f

.field private static final SINGLE_FRAME_MS:I = 0x10

.field private static final SUCCESS_TRANSITION_PROGRESS:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "OverviewSwipeController"


# instance fields
.field public final mActivity:Lcom/android/launcher3/BaseDraggingActivity;

.field private mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field private mCurrentAnimationIsGoingUp:Z

.field private final mDetector:Lcom/android/launcher3/touch/SwipeDetector;

.field private mDisplacementShift:F

.field private mEndDisplacement:F

.field private mNoIntercept:Z

.field private mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

.field private mProgressMultiplier:F

.field private final mRecentsView:Lcom/android/quickstep/views/RecentsView;

.field private mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

.field private final mTempCords:[I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/BaseDraggingActivity;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mTempCords:[I

    .line 72
    iput-object p1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    .line 73
    invoke-virtual {p1}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 74
    new-instance v0, Lcom/android/launcher3/touch/SwipeDetector;

    sget-object v1, Lcom/android/launcher3/touch/SwipeDetector;->VERTICAL:Lcom/android/launcher3/touch/SwipeDetector$Direction;

    invoke-direct {v0, p1, p0, v1}, Lcom/android/launcher3/touch/SwipeDetector;-><init>(Landroid/content/Context;Lcom/android/launcher3/touch/SwipeDetector$Listener;Lcom/android/launcher3/touch/SwipeDetector$Direction;)V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mDetector:Lcom/android/launcher3/touch/SwipeDetector;

    .line 75
    return-void
.end method

.method private canInterceptTouch()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    return v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    const/4 v0, 0x0

    return v0

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->isRecentsInteractive()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$onDragEnd$0(Lcom/android/launcher3/uioverrides/TaskViewTouchController;ZI)V
    .locals 0

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->onCurrentAnimationEnd(ZI)V

    return-void
.end method

.method private onCurrentAnimationEnd(ZI)V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/PendingAnimation;->finish(ZI)V

    .line 272
    iput-object v1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mDetector:Lcom/android/launcher3/touch/SwipeDetector;

    sget-object p2, Lcom/android/launcher3/touch/SwipeDetector$ScrollState;->IDLE:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/touch/SwipeDetector;->setState(Lcom/android/launcher3/touch/SwipeDetector$ScrollState;)V

    .line 275
    iput-object v1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    .line 276
    iput-object v1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 277
    return-void
.end method

.method private reInitAnimationController(Z)Z
    .locals 10

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mCurrentAnimationIsGoingUp:Z

    if-ne v0, p1, :cond_0

    .line 162
    return v1

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mDetector:Lcom/android/launcher3/touch/SwipeDetector;

    iget v0, v0, Lcom/android/launcher3/touch/SwipeDetector;->mScrollConditions:I

    .line 165
    if-eqz p1, :cond_1

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x2

    if-nez p1, :cond_3

    and-int/2addr v0, v2

    if-nez v0, :cond_3

    .line 168
    :cond_2
    return v1

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_4

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 173
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

    if-eqz v0, :cond_5

    .line 174
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/util/PendingAnimation;->finish(ZI)V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

    .line 178
    :cond_5
    iput-boolean p1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mCurrentAnimationIsGoingUp:Z

    .line 179
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/android/launcher3/views/BaseDragLayer;->getHeight()I

    move-result v1

    mul-int/2addr v2, v1

    int-to-long v1, v2

    .line 182
    const/4 v9, 0x1

    if-eqz p1, :cond_6

    .line 183
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v4, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-wide v7, v1

    invoke-virtual/range {v3 .. v8}, Lcom/android/quickstep/views/RecentsView;->createTaskDismissAnimation(Lcom/android/quickstep/views/TaskView;ZZJ)Lcom/android/launcher3/util/PendingAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

    .line 186
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getHeight()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mEndDisplacement:F

    goto :goto_0

    .line 188
    :cond_6
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p1, v3, v1, v2}, Lcom/android/quickstep/views/RecentsView;->createTaskLauncherAnimation(Lcom/android/quickstep/views/TaskView;J)Lcom/android/launcher3/util/PendingAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

    .line 190
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

    iget-object p1, p1, Lcom/android/launcher3/util/PendingAnimation;->anim:Landroid/animation/AnimatorSet;

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->ZOOM_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 192
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mTempCords:[I

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getHeight()I

    move-result v3

    aput v3, p1, v9

    .line 193
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mTempCords:[I

    invoke-virtual {v0, p1, v3}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 194
    invoke-virtual {v0}, Lcom/android/launcher3/views/BaseDragLayer;->getHeight()I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mTempCords:[I

    aget v0, v0, v9

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mEndDisplacement:F

    .line 197
    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

    iget-object p1, p1, Lcom/android/launcher3/util/PendingAnimation;->anim:Landroid/animation/AnimatorSet;

    .line 198
    invoke-static {p1, v1, v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 199
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 200
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()V

    .line 201
    const/high16 p1, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mEndDisplacement:F

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mProgressMultiplier:F

    .line 202
    return v9
.end method


# virtual methods
.method public abstract isRecentsInteractive()Z
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 93
    const-string p1, "OverviewSwipeController"

    const-string v0, "Who dare cancel the animation when I am in control"

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mDetector:Lcom/android/launcher3/touch/SwipeDetector;

    sget-object v0, Lcom/android/launcher3/touch/SwipeDetector$ScrollState;->IDLE:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/touch/SwipeDetector;->setState(Lcom/android/launcher3/touch/SwipeDetector$ScrollState;)V

    .line 95
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 97
    :cond_0
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 102
    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->canInterceptTouch()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mNoIntercept:Z

    .line 103
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mNoIntercept:Z

    if-eqz v0, :cond_0

    .line 104
    return v1

    .line 109
    :cond_0
    nop

    .line 110
    nop

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/4 v3, 0x3

    if-eqz v0, :cond_1

    .line 112
    nop

    .line 113
    goto :goto_3

    .line 115
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    .line 117
    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 118
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v4, v0}, Lcom/android/quickstep/views/RecentsView;->getPageAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    .line 119
    iget-object v5, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v5, v4}, Lcom/android/quickstep/views/RecentsView;->isTaskViewVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v5}, Lcom/android/launcher3/BaseDraggingActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v5

    .line 120
    invoke-virtual {v5, v4, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 121
    iput-object v4, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    .line 122
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {v4}, Lcom/android/quickstep/OverviewInteractionState;->getInstance(Landroid/content/Context;)Lcom/android/quickstep/OverviewInteractionState;

    move-result-object v4

    .line 123
    invoke-virtual {v4}, Lcom/android/quickstep/OverviewInteractionState;->isSwipeUpGestureEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 126
    nop

    .line 136
    move v3, v2

    goto :goto_2

    .line 130
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->getCurrentPage()I

    move-result v4

    if-ne v0, v4, :cond_3

    .line 131
    goto :goto_1

    .line 133
    :cond_3
    move v3, v2

    :goto_1
    goto :goto_2

    .line 117
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_5
    move v3, v1

    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    if-nez v0, :cond_6

    .line 137
    iput-boolean v2, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mNoIntercept:Z

    .line 138
    return v1

    .line 142
    :cond_6
    move v2, v1

    :goto_3
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mDetector:Lcom/android/launcher3/touch/SwipeDetector;

    invoke-virtual {v0, v3, v2}, Lcom/android/launcher3/touch/SwipeDetector;->setDetectableScrollConditions(IZ)V

    .line 146
    :cond_7
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mNoIntercept:Z

    if-eqz v0, :cond_8

    .line 147
    return v1

    .line 150
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    .line 151
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mDetector:Lcom/android/launcher3/touch/SwipeDetector;

    invoke-virtual {p1}, Lcom/android/launcher3/touch/SwipeDetector;->isDraggingOrSettling()Z

    move-result p1

    return p1
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mDetector:Lcom/android/launcher3/touch/SwipeDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/SwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDrag(FF)Z
    .locals 2

    .line 218
    iget p2, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mDisplacementShift:F

    add-float/2addr p1, p2

    .line 220
    const/4 p2, 0x0

    cmpl-float v0, p1, p2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean p2, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mCurrentAnimationIsGoingUp:Z

    goto :goto_0

    :cond_0
    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    .line 221
    move p2, v1

    goto :goto_0

    .line 220
    :cond_1
    const/4 p2, 0x0

    .line 221
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mCurrentAnimationIsGoingUp:Z

    if-eq p2, v0, :cond_2

    .line 222
    invoke-direct {p0, p2}, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->reInitAnimationController(Z)Z

    .line 224
    :cond_2
    iget-object p2, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mProgressMultiplier:F

    mul-float/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 225
    return v1
.end method

.method public onDragEnd(FZ)V
    .locals 10

    .line 232
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 233
    const/4 p2, 0x4

    .line 234
    cmpg-float v3, p1, v1

    if-gez v3, :cond_0

    .line 235
    move v3, v2

    goto :goto_0

    .line 234
    :cond_0
    nop

    .line 235
    move v3, v0

    :goto_0
    iget-boolean v4, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mCurrentAnimationIsGoingUp:Z

    if-eq v3, v4, :cond_1

    .line 238
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v4}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v4

    const v5, 0x3dcccccd    # 0.1f

    cmpl-float v4, v4, v5

    if-gez v4, :cond_3

    .line 241
    invoke-direct {p0, v3}, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->reInitAnimationController(Z)Z

    move-result v3

    goto :goto_2

    .line 246
    :cond_1
    nop

    .line 248
    goto :goto_1

    .line 249
    :cond_2
    const/4 p2, 0x3

    .line 250
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v3}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 253
    :goto_1
    move v3, v2

    goto :goto_2

    .line 250
    :cond_3
    nop

    .line 253
    move v3, v0

    :goto_2
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v4}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v4

    .line 254
    nop

    .line 255
    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v3, :cond_4

    sub-float v6, v5, v4

    goto :goto_3

    .line 254
    :cond_4
    move v6, v4

    :goto_3
    invoke-static {p1, v6}, Lcom/android/launcher3/touch/SwipeDetector;->calculateDuration(FF)J

    move-result-wide v6

    .line 257
    const/high16 v8, 0x41800000    # 16.0f

    mul-float/2addr v8, p1

    iget v9, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mEndDisplacement:F

    .line 258
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-float/2addr v8, v9

    add-float/2addr v4, v8

    .line 257
    invoke-static {v4, v1, v5}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v4

    .line 260
    iget-object v8, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    new-instance v9, Lcom/android/launcher3/uioverrides/-$$Lambda$TaskViewTouchController$lRDfqKw2NqVZoHwkdXukBoQMYTs;

    invoke-direct {v9, p0, v3, p2}, Lcom/android/launcher3/uioverrides/-$$Lambda$TaskViewTouchController$lRDfqKw2NqVZoHwkdXukBoQMYTs;-><init>(Lcom/android/launcher3/uioverrides/TaskViewTouchController;ZI)V

    iput-object v9, v8, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mEndAction:Ljava/lang/Runnable;

    .line 262
    iget-object p2, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget-object p2, p2, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    .line 263
    const/4 v8, 0x2

    new-array v8, v8, [F

    aput v4, v8, v0

    if-eqz v3, :cond_5

    move v1, v5

    nop

    :cond_5
    aput v1, v8, v2

    invoke-virtual {p2, v8}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 264
    invoke-virtual {p2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 265
    invoke-static {p1}, Lcom/android/launcher3/anim/Interpolators;->scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 266
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 267
    return-void
.end method

.method public onDragStart(Z)V
    .locals 1

    .line 207
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez p1, :cond_0

    .line 208
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mDetector:Lcom/android/launcher3/touch/SwipeDetector;

    invoke-virtual {p1}, Lcom/android/launcher3/touch/SwipeDetector;->wasInitialTouchPositive()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->reInitAnimationController(Z)Z

    .line 209
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mDisplacementShift:F

    return-void

    .line 211
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result p1

    iget v0, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mProgressMultiplier:F

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mDisplacementShift:F

    .line 212
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget-object p1, p1, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 214
    return-void
.end method
