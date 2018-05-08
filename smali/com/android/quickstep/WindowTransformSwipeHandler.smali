.class public Lcom/android/quickstep/WindowTransformSwipeHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG_STATES:Z = false

.field private static final LAUNCHER_UI_STATES:I = 0xf

.field private static final MAX_SWIPE_DURATION:J = 0x15eL

.field private static final MIN_PROGRESS_FOR_OVERVIEW:F = 0.5f

.field private static final MIN_SWIPE_DURATION:J = 0x50L

.field private static final STATES:[Ljava/lang/String;

.field private static final STATE_ACTIVITY_MULTIPLIER_COMPLETE:I = 0x8

.field private static final STATE_APP_CONTROLLER_RECEIVED:I = 0x10

.field private static final STATE_GESTURE_CANCELLED:I = 0x200

.field private static final STATE_GESTURE_STARTED:I = 0x100

.field private static final STATE_HANDLER_INVALIDATED:I = 0x80

.field private static final STATE_LAUNCHER_DRAWN:I = 0x4

.field private static final STATE_LAUNCHER_PRESENT:I = 0x1

.field private static final STATE_LAUNCHER_STARTED:I = 0x2

.field private static final STATE_QUICK_SCRUB_END:I = 0x1000

.field private static final STATE_QUICK_SCRUB_START:I = 0x800

.field private static final STATE_SCALED_CONTROLLER_APP:I = 0x40

.field private static final STATE_SCALED_CONTROLLER_RECENTS:I = 0x20

.field private static final STATE_SWITCH_TO_SCREENSHOT_COMPLETE:I = 0x400

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/android/launcher3/BaseDraggingActivity;

.field private final mActivityControlHelper:Lcom/android/quickstep/ActivityControlHelper;

.field private final mActivityInitListener:Lcom/android/quickstep/ActivityControlHelper$ActivityInitListener;

.field private final mClipAnimationHelper:Lcom/android/quickstep/util/ClipAnimationHelper;

.field private final mContext:Landroid/content/Context;

.field private mCurrentDisplacement:F

.field private mCurrentQuickScrubProgress:F

.field private final mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

.field private mDp:Lcom/android/launcher3/DeviceProfile;

.field protected mGestureEndCallback:Ljava/lang/Runnable;

.field private mGestureStarted:Z

.field private mInputConsumer:Lcom/android/systemui/shared/system/InputConsumerController;

.field private mInteractionType:I

.field protected mIsGoingToHome:Z

.field private mLauncherDrawnCallback:Ljava/lang/Runnable;

.field private mLauncherFrameDrawnTime:J

.field private mLauncherTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field private mLayoutListener:Lcom/android/quickstep/ActivityControlHelper$LayoutListener;

.field private mLogAction:I

.field private final mMainExecutor:Lcom/android/launcher3/MainThreadExecutor;

.field private mQuickScrubController:Lcom/android/quickstep/QuickScrubController;

.field private final mRecentsAnimationWrapper:Lcom/android/quickstep/RecentsAnimationWrapper;

.field private mRecentsView:Lcom/android/quickstep/views/RecentsView;

.field private final mRunningTaskId:I

.field private mStateCallback:Lcom/android/quickstep/MultiStateCallback;

.field private final mTouchTimeMs:J

.field private mTransitionDragLength:I

.field private mWasLauncherAlreadyVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 88
    const-class v0, Lcom/android/quickstep/WindowTransformSwipeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/WindowTransformSwipeHandler;->TAG:Ljava/lang/String;

    .line 118
    const-string v1, "STATE_LAUNCHER_PRESENT"

    const-string v2, "STATE_LAUNCHER_STARTED"

    const-string v3, "STATE_LAUNCHER_DRAWN"

    const-string v4, "STATE_ACTIVITY_MULTIPLIER_COMPLETE"

    const-string v5, "STATE_APP_CONTROLLER_RECEIVED"

    const-string v6, "STATE_SCALED_CONTROLLER_RECENTS"

    const-string v7, "STATE_SCALED_CONTROLLER_APP"

    const-string v8, "STATE_HANDLER_INVALIDATED"

    const-string v9, "STATE_GESTURE_STARTED"

    const-string v10, "STATE_GESTURE_CANCELLED"

    const-string v11, "STATE_SWITCH_TO_SCREENSHOT_COMPLETE"

    const-string v12, "STATE_QUICK_SWITCH"

    const-string v13, "STATE_QUICK_SCRUB_START"

    const-string v14, "STATE_QUICK_SCRUB_END"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/WindowTransformSwipeHandler;->STATES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/Context;JLcom/android/quickstep/ActivityControlHelper;)V
    .locals 2

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Lcom/android/quickstep/util/ClipAnimationHelper;

    invoke-direct {v0}, Lcom/android/quickstep/util/ClipAnimationHelper;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mClipAnimationHelper:Lcom/android/quickstep/util/ClipAnimationHelper;

    .line 151
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$_o6wAUXibcgiHBuNnSt2vs4EZ40;

    invoke-direct {v1, p0}, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$_o6wAUXibcgiHBuNnSt2vs4EZ40;-><init>(Lcom/android/quickstep/WindowTransformSwipeHandler;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    .line 153
    new-instance v0, Lcom/android/launcher3/MainThreadExecutor;

    invoke-direct {v0}, Lcom/android/launcher3/MainThreadExecutor;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mMainExecutor:Lcom/android/launcher3/MainThreadExecutor;

    .line 174
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLogAction:I

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mInteractionType:I

    .line 179
    nop

    .line 180
    invoke-static {}, Lcom/android/systemui/shared/system/InputConsumerController;->getRecentsAnimationInputConsumer()Lcom/android/systemui/shared/system/InputConsumerController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mInputConsumer:Lcom/android/systemui/shared/system/InputConsumerController;

    .line 182
    new-instance v0, Lcom/android/quickstep/RecentsAnimationWrapper;

    invoke-direct {v0}, Lcom/android/quickstep/RecentsAnimationWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/android/quickstep/RecentsAnimationWrapper;

    .line 188
    iput-object p2, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mContext:Landroid/content/Context;

    .line 189
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRunningTaskId:I

    .line 190
    iput-wide p3, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mTouchTimeMs:J

    .line 191
    iput-object p5, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivityControlHelper:Lcom/android/quickstep/ActivityControlHelper;

    .line 192
    iget-object p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivityControlHelper:Lcom/android/quickstep/ActivityControlHelper;

    new-instance p2, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$xkYtGAhXw1754_DaDTNxV_iBEyU;

    invoke-direct {p2, p0}, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$xkYtGAhXw1754_DaDTNxV_iBEyU;-><init>(Lcom/android/quickstep/WindowTransformSwipeHandler;)V

    .line 193
    invoke-interface {p1, p2}, Lcom/android/quickstep/ActivityControlHelper;->createActivityInitListener(Ljava/util/function/BiPredicate;)Lcom/android/quickstep/ActivityControlHelper$ActivityInitListener;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivityInitListener:Lcom/android/quickstep/ActivityControlHelper$ActivityInitListener;

    .line 197
    iget-object p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mMainExecutor:Lcom/android/launcher3/MainThreadExecutor;

    iget-object p2, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mInputConsumer:Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/android/quickstep/-$$Lambda$uDY6C_772m3f91--2BEsCWoTw-I;

    invoke-direct {p3, p2}, Lcom/android/quickstep/-$$Lambda$uDY6C_772m3f91--2BEsCWoTw-I;-><init>(Lcom/android/systemui/shared/system/InputConsumerController;)V

    invoke-virtual {p1, p3}, Lcom/android/launcher3/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 198
    invoke-direct {p0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->initStateCallbacks()V

    .line 199
    return-void
.end method

.method static synthetic access$000(Lcom/android/quickstep/WindowTransformSwipeHandler;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/quickstep/WindowTransformSwipeHandler;->debugNewState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/quickstep/WindowTransformSwipeHandler;)Lcom/android/launcher3/BaseDraggingActivity;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/quickstep/WindowTransformSwipeHandler;)Lcom/android/quickstep/MultiStateCallback;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/quickstep/WindowTransformSwipeHandler;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/quickstep/WindowTransformSwipeHandler;->setStateOnUiThread(I)V

    return-void
.end method

.method private animateToProgress(FJLandroid/view/animation/Interpolator;)V
    .locals 1

    .line 604
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mIsGoingToHome:Z

    .line 605
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 606
    invoke-virtual {p1, p4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 607
    new-instance p2, Lcom/android/quickstep/WindowTransformSwipeHandler$3;

    invoke-direct {p2, p0}, Lcom/android/quickstep/WindowTransformSwipeHandler$3;-><init>(Lcom/android/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 614
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 615
    return-void
.end method

.method private debugNewState(I)V
    .locals 0

    .line 754
    return-void
.end method

.method private doLogGesture(Z)V
    .locals 8

    .line 588
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mDp:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mDp:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 594
    :goto_0
    move v3, v0

    goto :goto_1

    .line 591
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 594
    :goto_1
    if-eqz p1, :cond_3

    const/16 p1, 0xc

    .line 595
    :goto_2
    move v6, p1

    goto :goto_3

    .line 594
    :cond_3
    const/16 p1, 0xd

    goto :goto_2

    .line 595
    :goto_3
    iget-object p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mDp:Lcom/android/launcher3/DeviceProfile;

    invoke-static {p1, v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->newInstance(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v1

    iget v2, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLogAction:I

    const/16 v4, 0xb

    const/16 v5, 0xd

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/logging/UserEventDispatcher;->logStateChangeAction(IIIIII)V

    .line 600
    return-void
.end method

.method private getFadeInDuration()J
    .locals 7

    .line 267
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/quickstep/AnimatedFloat;->getCurrentAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/quickstep/AnimatedFloat;->getCurrentAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 272
    const-wide/16 v5, 0x50

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 274
    :cond_0
    return-wide v1
.end method

.method private initStateCallbacks()V
    .locals 3

    .line 202
    new-instance v0, Lcom/android/quickstep/WindowTransformSwipeHandler$1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/WindowTransformSwipeHandler$1;-><init>(Lcom/android/quickstep/WindowTransformSwipeHandler;)V

    iput-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    .line 210
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    new-instance v1, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$D5vbNV4bxsq8rVoE-i_oGhlL8SA;

    invoke-direct {v1, p0}, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$D5vbNV4bxsq8rVoE-i_oGhlL8SA;-><init>(Lcom/android/quickstep/WindowTransformSwipeHandler;)V

    const/16 v2, 0x104

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/MultiStateCallback;->addCallback(ILjava/lang/Runnable;)V

    .line 212
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    new-instance v1, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$fDWyfwHdv0bkcbrM1tKEDBg8Juc;

    invoke-direct {v1, p0}, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$fDWyfwHdv0bkcbrM1tKEDBg8Juc;-><init>(Lcom/android/quickstep/WindowTransformSwipeHandler;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/MultiStateCallback;->addCallback(ILjava/lang/Runnable;)V

    .line 214
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    new-instance v1, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$I0gNg9mgOiM3OXfIcpw0Au3sOe8;

    invoke-direct {v1, p0}, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$I0gNg9mgOiM3OXfIcpw0Au3sOe8;-><init>(Lcom/android/quickstep/WindowTransformSwipeHandler;)V

    const/16 v2, 0x101

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/MultiStateCallback;->addCallback(ILjava/lang/Runnable;)V

    .line 216
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    new-instance v1, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$ufp7KV7A4ZxmVp01kL-HJqVq_6k;

    invoke-direct {v1, p0}, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$ufp7KV7A4ZxmVp01kL-HJqVq_6k;-><init>(Lcom/android/quickstep/WindowTransformSwipeHandler;)V

    const/16 v2, 0x203

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/MultiStateCallback;->addCallback(ILjava/lang/Runnable;)V

    .line 220
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    new-instance v1, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$ReBKPKJUm0D82MQ4VDMhANnTnlY;

    invoke-direct {v1, p0}, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$ReBKPKJUm0D82MQ4VDMhANnTnlY;-><init>(Lcom/android/quickstep/WindowTransformSwipeHandler;)V

    const/16 v2, 0x51

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/MultiStateCallback;->addCallback(ILjava/lang/Runnable;)V

    .line 223
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    new-instance v1, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$wbwRicTS3LODLKMncpTzS0agA9s;

    invoke-direct {v1, p0}, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$wbwRicTS3LODLKMncpTzS0agA9s;-><init>(Lcom/android/quickstep/WindowTransformSwipeHandler;)V

    const/16 v2, 0x39

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/MultiStateCallback;->addCallback(ILjava/lang/Runnable;)V

    .line 227
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    new-instance v1, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$nVkIZDyrwlt_qJBdchnI-v7Clks;

    invoke-direct {v1, p0}, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$nVkIZDyrwlt_qJBdchnI-v7Clks;-><init>(Lcom/android/quickstep/WindowTransformSwipeHandler;)V

    const/16 v2, 0x439

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/MultiStateCallback;->addCallback(ILjava/lang/Runnable;)V

    .line 233
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    new-instance v1, Lcom/android/quickstep/-$$Lambda$wvt2sKsglkn8HS_eF7-cDtuBhS8;

    invoke-direct {v1, p0}, Lcom/android/quickstep/-$$Lambda$wvt2sKsglkn8HS_eF7-cDtuBhS8;-><init>(Lcom/android/quickstep/WindowTransformSwipeHandler;)V

    const/16 v2, 0x41

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/MultiStateCallback;->addCallback(ILjava/lang/Runnable;)V

    .line 236
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    new-instance v1, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$yNlE7QZP9JpHsXLnlEBCe9U2yTo;

    invoke-direct {v1, p0}, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$yNlE7QZP9JpHsXLnlEBCe9U2yTo;-><init>(Lcom/android/quickstep/WindowTransformSwipeHandler;)V

    const/16 v2, 0x80

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/MultiStateCallback;->addCallback(ILjava/lang/Runnable;)V

    .line 237
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    new-instance v1, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$vaj6vPSn8to-YxJ1FKLZyt05Ycc;

    invoke-direct {v1, p0}, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$vaj6vPSn8to-YxJ1FKLZyt05Ycc;-><init>(Lcom/android/quickstep/WindowTransformSwipeHandler;)V

    const/16 v2, 0x81

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/MultiStateCallback;->addCallback(ILjava/lang/Runnable;)V

    .line 240
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    new-instance v1, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$qIZ4mA0aVL2s1JRDFuXW1ks1Oa8;

    invoke-direct {v1, p0}, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$qIZ4mA0aVL2s1JRDFuXW1ks1Oa8;-><init>(Lcom/android/quickstep/WindowTransformSwipeHandler;)V

    const/16 v2, 0x802

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/MultiStateCallback;->addCallback(ILjava/lang/Runnable;)V

    .line 242
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    new-instance v1, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$CKvWzVP65bzNF-wvQXDZgCRvUq8;

    invoke-direct {v1, p0}, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$CKvWzVP65bzNF-wvQXDZgCRvUq8;-><init>(Lcom/android/quickstep/WindowTransformSwipeHandler;)V

    const/16 v2, 0x822

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/MultiStateCallback;->addCallback(ILjava/lang/Runnable;)V

    .line 244
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    new-instance v1, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$V8Py6CkYhBHFh0F174w6Blon-hE;

    invoke-direct {v1, p0}, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$V8Py6CkYhBHFh0F174w6Blon-hE;-><init>(Lcom/android/quickstep/WindowTransformSwipeHandler;)V

    const/16 v2, 0x1402

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/MultiStateCallback;->addCallback(ILjava/lang/Runnable;)V

    .line 246
    return-void
.end method

.method private initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V
    .locals 3

    .line 258
    iput-object p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mDp:Lcom/android/launcher3/DeviceProfile;

    .line 260
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 261
    iget-object v1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivityControlHelper:Lcom/android/quickstep/ActivityControlHelper;

    iget-object v2, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mContext:Landroid/content/Context;

    .line 262
    invoke-interface {v1, p1, v2, v0}, Lcom/android/quickstep/ActivityControlHelper;->getSwipeUpDestinationAndLength(Lcom/android/launcher3/DeviceProfile;Landroid/content/Context;Landroid/graphics/Rect;)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mTransitionDragLength:I

    .line 263
    iget-object p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mClipAnimationHelper:Lcom/android/quickstep/util/ClipAnimationHelper;

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 264
    return-void
.end method

.method private initializeLauncherAnimationController()V
    .locals 4

    .line 380
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLayoutListener:Lcom/android/quickstep/ActivityControlHelper$LayoutListener;

    invoke-interface {v0, p0}, Lcom/android/quickstep/ActivityControlHelper$LayoutListener;->setHandler(Lcom/android/quickstep/WindowTransformSwipeHandler;)V

    .line 381
    invoke-virtual {p0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->onLauncherLayoutChanged()V

    .line 383
    iget-wide v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLauncherFrameDrawnTime:J

    iget-wide v2, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mTouchTimeMs:J

    sub-long/2addr v0, v2

    .line 384
    invoke-static {v0, v1}, Lcom/android/quickstep/util/SysuiEventLogger;->writeDummyRecentsTransition(J)V

    .line 386
    iget-object v2, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/shared/system/LatencyTrackerCompat;->isEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    long-to-int v0, v0

    invoke-static {v0}, Lcom/android/systemui/shared/system/LatencyTrackerCompat;->logToggleRecents(I)V

    .line 389
    :cond_0
    return-void
.end method

.method private invalidateHandler()V
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/quickstep/AnimatedFloat;->finishAnimation()V

    .line 634
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mGestureEndCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mGestureEndCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivityInitListener:Lcom/android/quickstep/ActivityControlHelper$ActivityInitListener;

    invoke-interface {v0}, Lcom/android/quickstep/ActivityControlHelper$ActivityInitListener;->unregister()V

    .line 639
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mInputConsumer:Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputConsumerController;->unregisterInputConsumer()V

    .line 640
    return-void
.end method

.method private invalidateHandlerWithLauncher()V
    .locals 2

    .line 643
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLauncherTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 644
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLayoutListener:Lcom/android/quickstep/ActivityControlHelper$LayoutListener;

    invoke-interface {v0}, Lcom/android/quickstep/ActivityControlHelper$LayoutListener;->finish()V

    .line 646
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/quickstep/views/RecentsView;->setFirstTaskIconScaledDown(ZZ)V

    .line 647
    return-void
.end method

.method public static synthetic lambda$CKvWzVP65bzNF-wvQXDZgCRvUq8(Lcom/android/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->onFinishedTransitionToQuickScrub()V

    return-void
.end method

.method public static synthetic lambda$D5vbNV4bxsq8rVoE-i_oGhlL8SA(Lcom/android/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->initializeLauncherAnimationController()V

    return-void
.end method

.method public static synthetic lambda$I0gNg9mgOiM3OXfIcpw0Au3sOe8(Lcom/android/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->onGestureStartedWithLauncher()V

    return-void
.end method

.method public static synthetic lambda$ReBKPKJUm0D82MQ4VDMhANnTnlY(Lcom/android/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->resumeLastTask()V

    return-void
.end method

.method public static synthetic lambda$V8Py6CkYhBHFh0F174w6Blon-hE(Lcom/android/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->switchToFinalAppAfterQuickScrub()V

    return-void
.end method

.method public static synthetic lambda$_o6wAUXibcgiHBuNnSt2vs4EZ40(Lcom/android/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->updateFinalShift()V

    return-void
.end method

.method public static synthetic lambda$fDWyfwHdv0bkcbrM1tKEDBg8Juc(Lcom/android/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->launcherFrameDrawn()V

    return-void
.end method

.method static synthetic lambda$launcherFrameDrawn$1(Lcom/android/quickstep/MultiStateCallback;)V
    .locals 1

    .line 367
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    return-void
.end method

.method public static synthetic lambda$nVkIZDyrwlt_qJBdchnI-v7Clks(Lcom/android/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->setupLauncherUiAfterSwipeUpAnimation()V

    return-void
.end method

.method public static synthetic lambda$oTmdTx9KEnt4AhNDszi5oKfUOY4(Lcom/android/quickstep/WindowTransformSwipeHandler;Lcom/android/launcher3/BaseDraggingActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/WindowTransformSwipeHandler;->onLauncherStart(Lcom/android/launcher3/BaseDraggingActivity;)V

    return-void
.end method

.method public static synthetic lambda$qIZ4mA0aVL2s1JRDFuXW1ks1Oa8(Lcom/android/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->onQuickScrubStart()V

    return-void
.end method

.method public static synthetic lambda$setStateOnUiThread$0(Lcom/android/quickstep/WindowTransformSwipeHandler;I)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    return-void
.end method

.method public static synthetic lambda$switchToScreenshot$3(Lcom/android/quickstep/WindowTransformSwipeHandler;)V
    .locals 1

    .line 665
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->setStateOnUiThread(I)V

    return-void
.end method

.method public static synthetic lambda$switchToScreenshot$4(Lcom/android/quickstep/WindowTransformSwipeHandler;)V
    .locals 4

    .line 663
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/android/quickstep/RecentsAnimationWrapper;

    monitor-enter v0

    .line 664
    :try_start_0
    iget-object v1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/android/quickstep/RecentsAnimationWrapper;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$W2ZxNV9h4kDo0T-NQYcmzTNXFw8;

    invoke-direct {v3, p0}, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$W2ZxNV9h4kDo0T-NQYcmzTNXFw8;-><init>(Lcom/android/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/quickstep/RecentsAnimationWrapper;->finish(ZLjava/lang/Runnable;)V

    .line 666
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$ufp7KV7A4ZxmVp01kL-HJqVq_6k(Lcom/android/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->resetStateForAnimationCancel()V

    return-void
.end method

.method public static synthetic lambda$updateFinalShift$2(Lcom/android/quickstep/WindowTransformSwipeHandler;F)V
    .locals 5

    .line 446
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLauncherTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez v0, :cond_0

    .line 447
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLauncherTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 452
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->getPageAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 455
    if-eqz v0, :cond_1

    .line 456
    iget-object v2, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/RecentsView;->getScrollForPage(I)I

    move-result v2

    .line 457
    iget-object v3, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    .line 458
    iget-object v3, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mClipAnimationHelper:Lcom/android/quickstep/util/ClipAnimationHelper;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v4

    int-to-float v2, v2

    .line 459
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 460
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getTranslationY()F

    move-result v0

    .line 458
    invoke-virtual {v3, v4, v2, v0}, Lcom/android/quickstep/util/ClipAnimationHelper;->offsetTarget(FFF)V

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/android/quickstep/RecentsAnimationWrapper;

    iget-object v0, v0, Lcom/android/quickstep/RecentsAnimationWrapper;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    if-eqz v0, :cond_3

    .line 464
    const v0, 0x3df5c28f    # 0.12f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 465
    const/4 v1, 0x1

    goto :goto_0

    .line 464
    :cond_2
    nop

    .line 465
    :goto_0
    iget-object p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/android/quickstep/RecentsAnimationWrapper;

    xor-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Lcom/android/quickstep/RecentsAnimationWrapper;->setAnimationTargetsBehindSystemBars(Z)V

    .line 466
    iget-object p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivityControlHelper:Lcom/android/quickstep/ActivityControlHelper;

    invoke-interface {p1}, Lcom/android/quickstep/ActivityControlHelper;->shouldMinimizeSplitScreen()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 467
    iget-object p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/android/quickstep/RecentsAnimationWrapper;

    .line 468
    invoke-virtual {p1, v1}, Lcom/android/quickstep/RecentsAnimationWrapper;->setSplitScreenMinimizedForTransaction(Z)V

    .line 471
    :cond_3
    return-void
.end method

.method public static synthetic lambda$vaj6vPSn8to-YxJ1FKLZyt05Ycc(Lcom/android/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->invalidateHandlerWithLauncher()V

    return-void
.end method

.method public static synthetic lambda$wbwRicTS3LODLKMncpTzS0agA9s(Lcom/android/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->switchToScreenshot()V

    return-void
.end method

.method public static synthetic lambda$xkYtGAhXw1754_DaDTNxV_iBEyU(Lcom/android/quickstep/WindowTransformSwipeHandler;Lcom/android/launcher3/BaseDraggingActivity;Ljava/lang/Boolean;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/WindowTransformSwipeHandler;->onActivityInit(Lcom/android/launcher3/BaseDraggingActivity;Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$yNlE7QZP9JpHsXLnlEBCe9U2yTo(Lcom/android/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->invalidateHandler()V

    return-void
.end method

.method private launcherFrameDrawn()V
    .locals 4

    .line 361
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 363
    iget-boolean v1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mGestureStarted:Z

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    .line 365
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 366
    invoke-direct {p0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->getFadeInDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$k_6pk2woWaoaduO9wLHLfmZQvF4;

    invoke-direct {v2, v1}, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$k_6pk2woWaoaduO9wLHLfmZQvF4;-><init>(Lcom/android/quickstep/MultiStateCallback;)V

    .line 367
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 368
    goto :goto_0

    .line 369
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 370
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 373
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLauncherDrawnCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLauncherDrawnCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 376
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLauncherFrameDrawnTime:J

    .line 377
    return-void
.end method

.method private notifyGestureStartedAsync()V
    .locals 3

    .line 536
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    .line 537
    if-eqz v0, :cond_0

    .line 540
    iget-object v1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/BaseDraggingActivity;->clearForceInvisibleFlag(I)V

    .line 541
    iget-object v1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivityControlHelper:Lcom/android/quickstep/ActivityControlHelper;

    iget-boolean v2, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mWasLauncherAlreadyVisible:Z

    invoke-interface {v1, v0, v2}, Lcom/android/quickstep/ActivityControlHelper;->onQuickstepGestureStarted(Lcom/android/launcher3/BaseDraggingActivity;Z)V

    .line 544
    :cond_0
    return-void
.end method

.method private onActivityInit(Lcom/android/launcher3/BaseDraggingActivity;Ljava/lang/Boolean;)Z
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 284
    return v1

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {v0}, Lcom/android/quickstep/MultiStateCallback;->getState()I

    move-result v0

    and-int/lit8 v0, v0, -0x10

    .line 289
    invoke-direct {p0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->initStateCallbacks()V

    .line 290
    iget-object v2, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {v2, v0}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 291
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLayoutListener:Lcom/android/quickstep/ActivityControlHelper$LayoutListener;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/quickstep/ActivityControlHelper$LayoutListener;->setHandler(Lcom/android/quickstep/WindowTransformSwipeHandler;)V

    .line 293
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mWasLauncherAlreadyVisible:Z

    .line 294
    iput-object p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    .line 297
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseDraggingActivity;->clearForceInvisibleFlag(I)V

    goto :goto_0

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseDraggingActivity;->addForceInvisibleFlag(I)V

    .line 303
    :goto_0
    invoke-virtual {p1}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    iput-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 304
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getQuickScrubController()Lcom/android/quickstep/QuickScrubController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mQuickScrubController:Lcom/android/quickstep/QuickScrubController;

    .line 305
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivityControlHelper:Lcom/android/quickstep/ActivityControlHelper;

    iget-object v2, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-interface {v0, v2}, Lcom/android/quickstep/ActivityControlHelper;->createLayoutListener(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/quickstep/ActivityControlHelper$LayoutListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLayoutListener:Lcom/android/quickstep/ActivityControlHelper$LayoutListener;

    .line 307
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 308
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 309
    invoke-direct {p0, p1}, Lcom/android/quickstep/WindowTransformSwipeHandler;->onLauncherStart(Lcom/android/launcher3/BaseDraggingActivity;)V

    goto :goto_1

    .line 311
    :cond_3
    new-instance p2, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$oTmdTx9KEnt4AhNDszi5oKfUOY4;

    invoke-direct {p2, p0}, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$oTmdTx9KEnt4AhNDszi5oKfUOY4;-><init>(Lcom/android/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BaseDraggingActivity;->setOnStartCallback(Lcom/android/launcher3/BaseDraggingActivity$OnStartCallback;)V

    .line 313
    :goto_1
    return v1
.end method

.method private onFinishedTransitionToQuickScrub()V
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mQuickScrubController:Lcom/android/quickstep/QuickScrubController;

    invoke-virtual {v0}, Lcom/android/quickstep/QuickScrubController;->onFinishedTransitionToQuickScrub()V

    .line 729
    return-void
.end method

.method private onGestureStartedWithLauncher()V
    .locals 2

    .line 547
    invoke-direct {p0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->notifyGestureStartedAsync()V

    .line 549
    iget-boolean v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mWasLauncherAlreadyVisible:Z

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivityControlHelper:Lcom/android/quickstep/ActivityControlHelper;

    iget-object v1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    .line 551
    invoke-interface {v0, v1}, Lcom/android/quickstep/ActivityControlHelper;->createControllerForVisibleActivity(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLauncherTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 552
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLauncherTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()V

    .line 553
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLauncherTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget-object v1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 555
    :cond_0
    return-void
.end method

.method private onLauncherStart(Lcom/android/launcher3/BaseDraggingActivity;)V
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    if-eq v0, p1, :cond_0

    .line 318
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {v0}, Lcom/android/quickstep/MultiStateCallback;->getState()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    .line 321
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivityControlHelper:Lcom/android/quickstep/ActivityControlHelper;

    iget-object v1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    iget-boolean v2, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mWasLauncherAlreadyVisible:Z

    invoke-interface {v0, v1, v2}, Lcom/android/quickstep/ActivityControlHelper;->prepareRecentsUI(Lcom/android/launcher3/BaseDraggingActivity;Z)V

    .line 325
    iget-boolean v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mWasLauncherAlreadyVisible:Z

    invoke-static {p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/BaseDraggingActivity;Z)V

    .line 327
    iget-boolean v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mWasLauncherAlreadyVisible:Z

    if-eqz v0, :cond_2

    .line 328
    iget-object p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    goto :goto_0

    .line 330
    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher3/BaseDraggingActivity;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 333
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 334
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/quickstep/WindowTransformSwipeHandler$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/quickstep/WindowTransformSwipeHandler$2;-><init>(Lcom/android/quickstep/WindowTransformSwipeHandler;Landroid/view/View;Lcom/android/launcher3/BaseDraggingActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 350
    :goto_0
    iget-object p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRunningTaskId:I

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/RecentsView;->showTask(I)V

    .line 351
    iget-object p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/quickstep/views/RecentsView;->setFirstTaskIconScaledDown(ZZ)V

    .line 352
    iget-object p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLayoutListener:Lcom/android/quickstep/ActivityControlHelper$LayoutListener;

    invoke-interface {p1}, Lcom/android/quickstep/ActivityControlHelper$LayoutListener;->open()V

    .line 353
    iget-object p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 354
    return-void
.end method

.method private onQuickScrubStart()V
    .locals 3

    .line 720
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivityControlHelper:Lcom/android/quickstep/ActivityControlHelper;

    iget-object v1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    iget-boolean v2, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mWasLauncherAlreadyVisible:Z

    invoke-interface {v0, v1, v2}, Lcom/android/quickstep/ActivityControlHelper;->onQuickInteractionStart(Lcom/android/launcher3/BaseDraggingActivity;Z)Z

    .line 721
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mQuickScrubController:Lcom/android/quickstep/QuickScrubController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/QuickScrubController;->onQuickScrubStart(Z)V

    .line 724
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mQuickScrubController:Lcom/android/quickstep/QuickScrubController;

    iget v1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mCurrentQuickScrubProgress:F

    invoke-virtual {v0, v1}, Lcom/android/quickstep/QuickScrubController;->onQuickScrubProgress(F)V

    .line 725
    return-void
.end method

.method private resetStateForAnimationCancel()V
    .locals 3

    .line 650
    iget-boolean v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mWasLauncherAlreadyVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mGestureStarted:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 651
    :goto_1
    iget-object v1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivityControlHelper:Lcom/android/quickstep/ActivityControlHelper;

    iget-object v2, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-interface {v1, v2, v0}, Lcom/android/quickstep/ActivityControlHelper;->onTransitionCancelled(Lcom/android/launcher3/BaseDraggingActivity;Z)V

    .line 652
    return-void
.end method

.method private resumeLastTask()V
    .locals 3

    .line 619
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/android/quickstep/RecentsAnimationWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/RecentsAnimationWrapper;->finish(ZLjava/lang/Runnable;)V

    .line 620
    invoke-direct {p0, v1}, Lcom/android/quickstep/WindowTransformSwipeHandler;->doLogGesture(Z)V

    .line 621
    return-void
.end method

.method private setStateOnUiThread(I)V
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mMainExecutor:Lcom/android/launcher3/MainThreadExecutor;

    iget-object v0, v0, Lcom/android/launcher3/util/LooperExecutor;->mHandler:Landroid/os/Handler;

    .line 250
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    return-void

    .line 253
    :cond_0
    new-instance v1, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$ugrazNSL5Hd7N5ZAZpmYT5qjeYY;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$ugrazNSL5Hd7N5ZAZpmYT5qjeYY;-><init>(Lcom/android/quickstep/WindowTransformSwipeHandler;I)V

    invoke-static {v0, v1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->postAtFrontOfQueueAsynchronously(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 255
    return-void
.end method

.method private setupLauncherUiAfterSwipeUpAnimation()V
    .locals 3

    .line 705
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLauncherTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLauncherTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget-object v0, v0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 707
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLauncherTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivityControlHelper:Lcom/android/quickstep/ActivityControlHelper;

    iget-object v1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-interface {v0, v1}, Lcom/android/quickstep/ActivityControlHelper;->onSwipeUpComplete(Lcom/android/launcher3/BaseDraggingActivity;)V

    .line 712
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/views/RecentsView;->setFirstTaskIconScaledDown(ZZ)V

    .line 714
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/RecentsView;->setSwipeDownShouldLaunchApp(Z)V

    .line 716
    invoke-virtual {p0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->reset()V

    .line 717
    return-void
.end method

.method private switchToFinalAppAfterQuickScrub()V
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mQuickScrubController:Lcom/android/quickstep/QuickScrubController;

    invoke-virtual {v0}, Lcom/android/quickstep/QuickScrubController;->onQuickScrubEnd()V

    .line 749
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->setStateOnUiThread(I)V

    .line 750
    return-void
.end method

.method private switchToScreenshot()V
    .locals 10

    .line 661
    nop

    .line 662
    new-instance v0, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$4yA8BMpbVetlEXqyTLigXk3Z7O0;

    invoke-direct {v0, p0}, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$4yA8BMpbVetlEXqyTLigXk3Z7O0;-><init>(Lcom/android/quickstep/WindowTransformSwipeHandler;)V

    .line 669
    iget-object v1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/android/quickstep/RecentsAnimationWrapper;

    monitor-enter v1

    .line 670
    :try_start_0
    iget-object v2, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/android/quickstep/RecentsAnimationWrapper;

    iget-object v2, v2, Lcom/android/quickstep/RecentsAnimationWrapper;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 671
    iget-object v2, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/android/quickstep/RecentsAnimationWrapper;

    iget-object v2, v2, Lcom/android/quickstep/RecentsAnimationWrapper;->targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v5, v2

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v2, v6

    .line 672
    iget v8, v7, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v8, v4, :cond_0

    .line 674
    iget-object v8, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/android/quickstep/RecentsAnimationWrapper;

    iget-object v8, v8, Lcom/android/quickstep/RecentsAnimationWrapper;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    iget v9, v7, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    .line 675
    invoke-virtual {v8, v9}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v8

    .line 676
    iget-object v9, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget v7, v7, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    .line 677
    invoke-virtual {v9, v7, v8}, Lcom/android/quickstep/views/RecentsView;->updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;)Lcom/android/quickstep/views/TaskView;

    move-result-object v7

    .line 678
    if-eqz v7, :cond_0

    .line 679
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v7, v2}, Lcom/android/quickstep/views/TaskView;->setAlpha(F)V

    .line 683
    new-instance v2, Lcom/android/quickstep/WindowTransformSwipeHandler$4;

    invoke-direct {v2, p0, v7, v0}, Lcom/android/quickstep/WindowTransformSwipeHandler$4;-><init>(Lcom/android/quickstep/WindowTransformSwipeHandler;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 690
    invoke-virtual {v2}, Lcom/android/quickstep/WindowTransformSwipeHandler$4;->attach()Z

    move-result v3

    .line 691
    goto :goto_1

    .line 671
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 696
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    if-nez v3, :cond_2

    .line 699
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 701
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/quickstep/WindowTransformSwipeHandler;->doLogGesture(Z)V

    .line 702
    return-void

    .line 696
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateFinalShift()V
    .locals 5

    .line 433
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 435
    iget-object v1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/android/quickstep/RecentsAnimationWrapper;

    monitor-enter v1

    .line 436
    :try_start_0
    iget-object v2, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/android/quickstep/RecentsAnimationWrapper;

    iget-object v2, v2, Lcom/android/quickstep/RecentsAnimationWrapper;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    if-eqz v2, :cond_1

    .line 437
    iget v2, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mInteractionType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 438
    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 439
    :goto_0
    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 440
    iget-object v3, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mClipAnimationHelper:Lcom/android/quickstep/util/ClipAnimationHelper;

    iget-object v4, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/android/quickstep/RecentsAnimationWrapper;

    iget-object v4, v4, Lcom/android/quickstep/RecentsAnimationWrapper;->targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-virtual {v3, v4, v2}, Lcom/android/quickstep/util/ClipAnimationHelper;->applyTransform([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;F)V

    .line 442
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    iget-object v1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLauncherTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v1, :cond_3

    .line 445
    new-instance v1, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$tFbP9DkHiVr5bOvLxARJIU2IwZg;

    invoke-direct {v1, p0, v0}, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$tFbP9DkHiVr5bOvLxARJIU2IwZg;-><init>(Lcom/android/quickstep/WindowTransformSwipeHandler;F)V

    .line 472
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_2

    .line 473
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mMainExecutor:Lcom/android/launcher3/MainThreadExecutor;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 479
    :cond_3
    return-void

    .line 442
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public initWhenReady()V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivityInitListener:Lcom/android/quickstep/ActivityControlHelper$ActivityInitListener;

    invoke-interface {v0}, Lcom/android/quickstep/ActivityControlHelper$ActivityInitListener;->register()V

    .line 280
    return-void
.end method

.method public layoutListenerClosed()V
    .locals 2

    .line 655
    iget-boolean v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mWasLauncherAlreadyVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLauncherTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLauncherTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 658
    :cond_0
    return-void
.end method

.method public onGestureEnded(F)V
    .locals 7

    .line 559
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 560
    const v1, 0x7f0b00a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 561
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v2, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 563
    :goto_0
    nop

    .line 565
    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v3, 0x15e

    const/4 v5, 0x0

    if-nez v1, :cond_2

    .line 566
    iget-object p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget p1, p1, Lcom/android/quickstep/AnimatedFloat;->value:F

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    goto :goto_1

    .line 567
    :cond_1
    move v2, v5

    :goto_1
    const/4 p1, 0x3

    iput p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLogAction:I

    goto :goto_3

    .line 569
    :cond_2
    cmpg-float v1, p1, v5

    if-gez v1, :cond_3

    goto :goto_2

    .line 570
    :cond_3
    move v2, v5

    :goto_2
    const v1, 0x7f0b00a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 571
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_4

    iget v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mTransitionDragLength:I

    if-lez v0, :cond_4

    .line 572
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    sub-float v0, v2, v0

    iget v1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mTransitionDragLength:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 577
    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long v0, p1

    .line 578
    const-wide/16 v5, 0x2

    mul-long/2addr v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 580
    move-wide v3, v0

    :cond_4
    const/4 p1, 0x4

    iput p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLogAction:I

    .line 583
    :goto_3
    sget-object p1, Lcom/android/launcher3/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v2, v3, v4, p1}, Lcom/android/quickstep/WindowTransformSwipeHandler;->animateToProgress(FJLandroid/view/animation/Interpolator;)V

    .line 584
    return-void
.end method

.method public onGestureStarted()V
    .locals 2

    .line 522
    invoke-direct {p0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->notifyGestureStartedAsync()V

    .line 523
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->setStateOnUiThread(I)V

    .line 524
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mGestureStarted:Z

    .line 525
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/android/quickstep/RecentsAnimationWrapper;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationWrapper;->enableInputConsumer()V

    .line 526
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const-string v1, "recentapps"

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method public onLauncherLayoutChanged()V
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V

    .line 423
    iget-boolean v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mWasLauncherAlreadyVisible:Z

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivityControlHelper:Lcom/android/quickstep/ActivityControlHelper;

    iget-object v1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    iget v2, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mTransitionDragLength:I

    .line 425
    invoke-interface {v0, v1, v2}, Lcom/android/quickstep/ActivityControlHelper;->createControllerForHiddenActivity(Lcom/android/launcher3/BaseDraggingActivity;I)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLauncherTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 426
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLauncherTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()V

    .line 427
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLauncherTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget-object v1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 429
    :cond_0
    return-void
.end method

.method public onQuickScrubEnd()V
    .locals 1

    .line 740
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->setStateOnUiThread(I)V

    .line 741
    return-void
.end method

.method public onQuickScrubProgress(F)V
    .locals 2

    .line 732
    iput p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mCurrentQuickScrubProgress:F

    .line 733
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mQuickScrubController:Lcom/android/quickstep/QuickScrubController;

    if-nez v0, :cond_0

    goto :goto_0

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mQuickScrubController:Lcom/android/quickstep/QuickScrubController;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/QuickScrubController;->onQuickScrubProgress(F)V

    .line 737
    return-void

    .line 734
    :cond_1
    :goto_0
    return-void
.end method

.method public onRecentsAnimationCanceled()V
    .locals 2

    .line 516
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/android/quickstep/RecentsAnimationWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/quickstep/RecentsAnimationWrapper;->setController(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    .line 517
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivityInitListener:Lcom/android/quickstep/ActivityControlHelper$ActivityInitListener;

    invoke-interface {v0}, Lcom/android/quickstep/ActivityControlHelper$ActivityInitListener;->unregister()V

    .line 518
    const/16 v0, 0x280

    invoke-direct {p0, v0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->setStateOnUiThread(I)V

    .line 519
    return-void
.end method

.method public onRecentsAnimationStart(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 10

    .line 483
    if-eqz p2, :cond_2

    .line 485
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    .line 486
    iget v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 487
    iget-object v4, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v5, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    .line 490
    if-eqz p4, :cond_0

    .line 491
    iget-object v5, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mActivityControlHelper:Lcom/android/quickstep/ActivityControlHelper;

    .line 492
    invoke-interface {v5, p4, v3}, Lcom/android/quickstep/ActivityControlHelper;->getOverviewWindowBounds(Landroid/graphics/Rect;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/Rect;

    move-result-object v5

    .line 493
    iget-object v6, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/graphics/Point;

    .line 494
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 493
    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/DeviceProfile;->getMultiWindowProfile(Landroid/content/Context;Landroid/graphics/Point;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    .line 495
    invoke-virtual {v4, p3}, Lcom/android/launcher3/DeviceProfile;->updateInsets(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 497
    :cond_0
    new-instance v5, Landroid/graphics/Rect;

    iget v6, v4, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v7, v4, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-direct {v5, v1, v1, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 500
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 501
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getStableInsets(Landroid/graphics/Rect;)V

    .line 502
    iget-object v7, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Lcom/android/launcher3/DeviceProfile;->copy(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    .line 503
    invoke-virtual {v4, v6}, Lcom/android/launcher3/DeviceProfile;->updateInsets(Landroid/graphics/Rect;)V

    .line 506
    :goto_1
    iget-object v6, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mClipAnimationHelper:Lcom/android/quickstep/util/ClipAnimationHelper;

    invoke-virtual {v6, v5, v3}, Lcom/android/quickstep/util/ClipAnimationHelper;->updateSource(Landroid/graphics/Rect;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    .line 507
    invoke-direct {p0, v4}, Lcom/android/quickstep/WindowTransformSwipeHandler;->initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V

    .line 485
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 511
    :cond_2
    iget-object p3, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/android/quickstep/RecentsAnimationWrapper;

    invoke-virtual {p3, p1, p2}, Lcom/android/quickstep/RecentsAnimationWrapper;->setController(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    .line 512
    const/16 p1, 0x10

    invoke-direct {p0, p1}, Lcom/android/quickstep/WindowTransformSwipeHandler;->setStateOnUiThread(I)V

    .line 513
    return-void
.end method

.method public reset()V
    .locals 2

    .line 624
    iget v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mInteractionType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 627
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->setStateOnUiThread(I)V

    .line 629
    :cond_0
    return-void
.end method

.method public setGestureEndCallback(Ljava/lang/Runnable;)V
    .locals 0

    .line 773
    iput-object p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mGestureEndCallback:Ljava/lang/Runnable;

    .line 774
    return-void
.end method

.method public setLauncherOnDrawCallback(Ljava/lang/Runnable;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mLauncherDrawnCallback:Ljava/lang/Runnable;

    .line 358
    return-void
.end method

.method public updateDisplacement(F)V
    .locals 2

    .line 410
    iput p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mCurrentDisplacement:F

    .line 412
    iget p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mCurrentDisplacement:F

    neg-float p1, p1

    iget v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mTransitionDragLength:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    .line 413
    iget v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mTransitionDragLength:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mTransitionDragLength:I

    int-to-float v0, v0

    div-float v1, p1, v0

    .line 414
    :goto_0
    iget-object p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {p1, v1}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    .line 415
    return-void
.end method

.method public updateInteractionType(I)V
    .locals 3

    .line 392
    iget v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mInteractionType:I

    if-nez v0, :cond_1

    .line 396
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 400
    iput p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mInteractionType:I

    .line 402
    const/16 p1, 0x800

    invoke-direct {p0, p1}, Lcom/android/quickstep/WindowTransformSwipeHandler;->setStateOnUiThread(I)V

    .line 405
    const/high16 p1, 0x3f800000    # 1.0f

    const-wide/16 v0, 0xd2

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/quickstep/WindowTransformSwipeHandler;->animateToProgress(FJLandroid/view/animation/Interpolator;)V

    .line 406
    return-void

    .line 397
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t change interaction type to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t change interaction type from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mInteractionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
