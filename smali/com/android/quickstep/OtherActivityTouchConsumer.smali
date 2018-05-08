.class public Lcom/android/quickstep/OtherActivityTouchConsumer;
.super Landroid/content/ContextWrapper;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/TouchConsumer;


# static fields
.field private static final LAUNCHER_DRAW_TIMEOUT_MS:J = 0x96L


# instance fields
.field private mActivePointerId:I

.field private final mActivityControlHelper:Lcom/android/quickstep/ActivityControlHelper;

.field private final mBackgroundThreadChoreographer:Landroid/view/Choreographer;

.field private mDisplayRotation:I

.field private final mDownPos:Landroid/graphics/PointF;

.field private mEventQueue:Lcom/android/quickstep/MotionEventQueue;

.field private final mHomeIntent:Landroid/content/Intent;

.field private mInteractionHandler:Lcom/android/quickstep/WindowTransformSwipeHandler;

.field private final mIsDeferredDownTarget:Z

.field private mIsGoingToHome:Z

.field private final mLastPos:Landroid/graphics/PointF;

.field private final mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

.field private mPassedInitialSlop:Z

.field private final mRecentsModel:Lcom/android/quickstep/RecentsModel;

.field private final mRunningTask:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mStableInsets:Landroid/graphics/Rect;

.field private mStartDisplacement:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/quickstep/RecentsModel;Landroid/content/Intent;Lcom/android/quickstep/ActivityControlHelper;Lcom/android/launcher3/MainThreadExecutor;Landroid/view/Choreographer;ILandroid/view/VelocityTracker;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mDownPos:Landroid/graphics/PointF;

    .line 77
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mLastPos:Landroid/graphics/PointF;

    .line 78
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mActivePointerId:I

    .line 83
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mStableInsets:Landroid/graphics/Rect;

    .line 94
    iput-object p2, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mRunningTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 95
    iput-object p3, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mRecentsModel:Lcom/android/quickstep/RecentsModel;

    .line 96
    iput-object p4, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mHomeIntent:Landroid/content/Intent;

    .line 97
    iput-object p9, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 98
    iput-object p5, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mActivityControlHelper:Lcom/android/quickstep/ActivityControlHelper;

    .line 99
    iput-object p6, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

    .line 100
    iput-object p7, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mBackgroundThreadChoreographer:Landroid/view/Choreographer;

    .line 101
    invoke-interface {p5, p8}, Lcom/android/quickstep/ActivityControlHelper;->deferStartingActivity(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mIsDeferredDownTarget:Z

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/quickstep/OtherActivityTouchConsumer;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mRunningTask:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/quickstep/OtherActivityTouchConsumer;)Lcom/android/quickstep/RecentsModel;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mRecentsModel:Lcom/android/quickstep/RecentsModel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/quickstep/OtherActivityTouchConsumer;)Lcom/android/quickstep/WindowTransformSwipeHandler;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mInteractionHandler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    return-object p0
.end method

.method private finishTouchTracking()V
    .locals 3

    .line 270
    iget-boolean v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mPassedInitialSlop:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mInteractionHandler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    .line 272
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    .line 271
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 274
    invoke-direct {p0}, Lcom/android/quickstep/OtherActivityTouchConsumer;->isNavBarOnRight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    goto :goto_0

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/OtherActivityTouchConsumer;->isNavBarOnLeft()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    .line 277
    :goto_0
    iget-object v1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mInteractionHandler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->onGestureEnded(F)V

    .line 278
    goto :goto_1

    .line 281
    :cond_2
    invoke-virtual {p0}, Lcom/android/quickstep/OtherActivityTouchConsumer;->reset()V

    .line 285
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->cancelRecentsAnimation(Z)V

    .line 288
    :goto_1
    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 290
    return-void
.end method

.method private getDisplacement(Landroid/view/MotionEvent;)F
    .locals 2

    .line 344
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 346
    iget-object v1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v1

    .line 347
    invoke-direct {p0}, Lcom/android/quickstep/OtherActivityTouchConsumer;->isNavBarOnRight()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    iget-object p1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mDownPos:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    sub-float p1, v0, p1

    goto :goto_0

    .line 349
    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/OtherActivityTouchConsumer;->isNavBarOnLeft()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    iget-object p1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mDownPos:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    .line 352
    :cond_1
    :goto_0
    return p1
.end method

.method private isNavBarOnLeft()Z
    .locals 2

    .line 194
    iget v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mDisplayRotation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isNavBarOnRight()Z
    .locals 2

    .line 190
    iget v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mDisplayRotation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$startTouchTrackingForWindowAnimation$0(Lcom/android/quickstep/OtherActivityTouchConsumer;Ljava/util/concurrent/CountDownLatch;Lcom/android/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    .line 209
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 210
    iget-object p1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mInteractionHandler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    if-ne p2, p1, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/android/quickstep/OtherActivityTouchConsumer;->switchToMainChoreographer()V

    .line 213
    :cond_0
    return-void
.end method

.method public static synthetic lambda$startTouchTrackingForWindowAnimation$1(Lcom/android/quickstep/OtherActivityTouchConsumer;Lcom/android/quickstep/WindowTransformSwipeHandler;)V
    .locals 6

    .line 217
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mHomeIntent:Landroid/content/Intent;

    new-instance v2, Lcom/android/quickstep/OtherActivityTouchConsumer$1;

    invoke-direct {v2, p0}, Lcom/android/quickstep/OtherActivityTouchConsumer$1;-><init>(Lcom/android/quickstep/OtherActivityTouchConsumer;)V

    new-instance v3, Lcom/android/quickstep/OtherActivityTouchConsumer$2;

    invoke-direct {v3, p0, p1}, Lcom/android/quickstep/OtherActivityTouchConsumer$2;-><init>(Lcom/android/quickstep/OtherActivityTouchConsumer;Lcom/android/quickstep/WindowTransformSwipeHandler;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startRecentsActivity(Landroid/content/Intent;Lcom/android/systemui/shared/system/AssistDataReceiver;Lcom/android/systemui/shared/system/RecentsAnimationListener;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    return-void
.end method

.method private notifyGestureStarted()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mInteractionHandler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    if-nez v0, :cond_0

    .line 183
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mInteractionHandler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    invoke-virtual {v0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->onGestureStarted()V

    .line 187
    return-void
.end method

.method private startTouchTrackingForWindowAnimation(J)V
    .locals 7

    .line 199
    new-instance v6, Lcom/android/quickstep/WindowTransformSwipeHandler;

    iget-object v1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mRunningTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mActivityControlHelper:Lcom/android/quickstep/ActivityControlHelper;

    move-object v0, v6

    move-object v2, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/WindowTransformSwipeHandler;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/Context;JLcom/android/quickstep/ActivityControlHelper;)V

    .line 203
    iget-object p1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mRecentsModel:Lcom/android/quickstep/RecentsModel;

    iget-object p2, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mRunningTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/quickstep/RecentsModel;->loadTasks(ILjava/util/function/Consumer;)I

    .line 204
    iput-object v6, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mInteractionHandler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    .line 205
    iget-object p1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mEventQueue:Lcom/android/quickstep/MotionEventQueue;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/quickstep/-$$Lambda$acy6R1xKzaFdF7tRPnHofYaRRNY;

    invoke-direct {p2, p1}, Lcom/android/quickstep/-$$Lambda$acy6R1xKzaFdF7tRPnHofYaRRNY;-><init>(Lcom/android/quickstep/MotionEventQueue;)V

    invoke-virtual {v6, p2}, Lcom/android/quickstep/WindowTransformSwipeHandler;->setGestureEndCallback(Ljava/lang/Runnable;)V

    .line 207
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 208
    new-instance p2, Lcom/android/quickstep/-$$Lambda$OtherActivityTouchConsumer$8_w8V8eDDkACVaOsP_z8ZYoSs94;

    invoke-direct {p2, p0, p1, v6}, Lcom/android/quickstep/-$$Lambda$OtherActivityTouchConsumer$8_w8V8eDDkACVaOsP_z8ZYoSs94;-><init>(Lcom/android/quickstep/OtherActivityTouchConsumer;Ljava/util/concurrent/CountDownLatch;Lcom/android/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {v6, p2}, Lcom/android/quickstep/WindowTransformSwipeHandler;->setLauncherOnDrawCallback(Ljava/lang/Runnable;)V

    .line 214
    invoke-virtual {v6}, Lcom/android/quickstep/WindowTransformSwipeHandler;->initWhenReady()V

    .line 216
    new-instance p2, Lcom/android/quickstep/-$$Lambda$OtherActivityTouchConsumer$bWPwBBMsWx5YroAAnvXhbOpktYw;

    invoke-direct {p2, p0, v6}, Lcom/android/quickstep/-$$Lambda$OtherActivityTouchConsumer$bWPwBBMsWx5YroAAnvXhbOpktYw;-><init>(Lcom/android/quickstep/OtherActivityTouchConsumer;Lcom/android/quickstep/WindowTransformSwipeHandler;)V

    .line 249
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 250
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 251
    iget-boolean p2, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mIsDeferredDownTarget:Z

    if-nez p2, :cond_1

    .line 253
    const-wide/16 v0, 0x96

    :try_start_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    return-void

    .line 254
    :catch_0
    move-exception p1

    .line 256
    return-void

    .line 261
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/system/BackgroundExecutor;->get()Lcom/android/systemui/shared/system/BackgroundExecutor;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/system/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 263
    :cond_1
    return-void
.end method


# virtual methods
.method public accept(Landroid/view/MotionEvent;)V
    .locals 6

    .line 111
    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 112
    return-void

    .line 114
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 147
    :pswitch_0
    iget v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 148
    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 149
    iget-object v1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 152
    invoke-direct {p0, p1}, Lcom/android/quickstep/OtherActivityTouchConsumer;->getDisplacement(Landroid/view/MotionEvent;)F

    move-result v0

    .line 153
    iget-boolean v1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mPassedInitialSlop:Z

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v3, Lcom/android/systemui/shared/system/NavigationBarCompat;->QUICK_STEP_DRAG_SLOP_PX:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 154
    iput-boolean v2, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mPassedInitialSlop:Z

    .line 155
    iput v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mStartDisplacement:F

    .line 159
    iget-boolean v1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mIsDeferredDownTarget:Z

    if-eqz v1, :cond_1

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/quickstep/OtherActivityTouchConsumer;->startTouchTrackingForWindowAnimation(J)V

    .line 164
    :cond_1
    iget-boolean p1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mPassedInitialSlop:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mInteractionHandler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    if-eqz p1, :cond_5

    .line 166
    iget-object p1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mInteractionHandler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    iget v1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mStartDisplacement:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->updateDisplacement(F)V

    return-void

    .line 173
    :pswitch_1
    invoke-direct {p0}, Lcom/android/quickstep/OtherActivityTouchConsumer;->finishTouchTracking()V

    goto/16 :goto_1

    .line 116
    :pswitch_2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mActivePointerId:I

    .line 118
    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 119
    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mLastPos:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 120
    iput-boolean v3, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mPassedInitialSlop:Z

    .line 124
    iget-boolean v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mIsDeferredDownTarget:Z

    if-nez v0, :cond_2

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/OtherActivityTouchConsumer;->startTouchTrackingForWindowAnimation(J)V

    .line 128
    :cond_2
    const-class p1, Landroid/view/WindowManager;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OtherActivityTouchConsumer;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mDisplayRotation:I

    .line 130
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getStableInsets(Landroid/graphics/Rect;)V

    .line 131
    return-void

    .line 134
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 136
    iget v4, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mActivePointerId:I

    if-ne v1, v4, :cond_5

    .line 137
    if-nez v0, :cond_4

    goto :goto_0

    .line 138
    :cond_4
    move v2, v3

    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mDownPos:Landroid/graphics/PointF;

    .line 139
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget-object v3, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    sub-float/2addr v1, v3

    .line 140
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget-object v4, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 138
    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 141
    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 142
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mActivePointerId:I

    .line 143
    return-void

    .line 179
    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 63
    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OtherActivityTouchConsumer;->accept(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public deferNextEventToMainThread()Z
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mInteractionHandler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public forceToLauncherConsumer()Z
    .locals 1

    .line 371
    iget-boolean v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mIsGoingToHome:Z

    return v0
.end method

.method public getIntrimChoreographer(Lcom/android/quickstep/MotionEventQueue;)Landroid/view/Choreographer;
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mEventQueue:Lcom/android/quickstep/MotionEventQueue;

    .line 321
    iget-object p1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mBackgroundThreadChoreographer:Landroid/view/Choreographer;

    return-object p1
.end method

.method public onQuickScrubEnd()V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mInteractionHandler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mInteractionHandler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    invoke-virtual {v0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->onQuickScrubEnd()V

    .line 329
    :cond_0
    return-void
.end method

.method public onQuickScrubProgress(F)V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mInteractionHandler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mInteractionHandler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/WindowTransformSwipeHandler;->onQuickScrubProgress(F)V

    .line 336
    :cond_0
    return-void
.end method

.method public onQuickStep(FFJ)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/android/quickstep/OtherActivityTouchConsumer;->notifyGestureStarted()V

    .line 341
    return-void
.end method

.method public onShowOverviewFromAltTab()V
    .locals 2

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/OtherActivityTouchConsumer;->startTouchTrackingForWindowAnimation(J)V

    .line 107
    return-void
.end method

.method public preProcessMotionEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 363
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 364
    iget-object p1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 367
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mInteractionHandler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mInteractionHandler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    .line 297
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mInteractionHandler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    .line 298
    iget-boolean v1, v0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mIsGoingToHome:Z

    iput-boolean v1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mIsGoingToHome:Z

    .line 299
    iget-object v1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/quickstep/-$$Lambda$wvt2sKsglkn8HS_eF7-cDtuBhS8;

    invoke-direct {v2, v0}, Lcom/android/quickstep/-$$Lambda$wvt2sKsglkn8HS_eF7-cDtuBhS8;-><init>(Lcom/android/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 301
    :cond_0
    return-void
.end method

.method public switchToMainChoreographer()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mEventQueue:Lcom/android/quickstep/MotionEventQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MotionEventQueue;->setInterimChoreographer(Landroid/view/Choreographer;)V

    .line 357
    return-void
.end method

.method public updateTouchTracking(I)V
    .locals 2

    .line 305
    iget-boolean v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mPassedInitialSlop:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mIsDeferredDownTarget:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mInteractionHandler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    if-nez v0, :cond_0

    .line 308
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/OtherActivityTouchConsumer;->startTouchTrackingForWindowAnimation(J)V

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mPassedInitialSlop:Z

    .line 312
    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/OtherActivityTouchConsumer;->notifyGestureStarted()V

    .line 313
    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mInteractionHandler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer;->mInteractionHandler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/WindowTransformSwipeHandler;->updateInteractionType(I)V

    .line 316
    :cond_1
    return-void
.end method
