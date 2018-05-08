.class Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mActivity:Lcom/android/launcher3/BaseDraggingActivity;

.field private final mCreateTime:J

.field protected final mHelper:Lcom/android/quickstep/ActivityControlHelper;

.field private mListener:Lcom/android/quickstep/ActivityControlHelper$ActivityInitListener;

.field private final mRunningTaskId:I

.field final synthetic this$0:Lcom/android/quickstep/OverviewCommandHelper;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/OverviewCommandHelper;)V
    .locals 2

    .line 209
    iput-object p1, p0, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->this$0:Lcom/android/quickstep/OverviewCommandHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    invoke-virtual {p1}, Lcom/android/quickstep/OverviewCommandHelper;->getActivityControlHelper()Lcom/android/quickstep/ActivityControlHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->mHelper:Lcom/android/quickstep/ActivityControlHelper;

    .line 211
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->mCreateTime:J

    .line 212
    invoke-static {p1}, Lcom/android/quickstep/OverviewCommandHelper;->access$200(Lcom/android/quickstep/OverviewCommandHelper;)Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v0, p0, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->mRunningTaskId:I

    .line 215
    invoke-static {p1}, Lcom/android/quickstep/OverviewCommandHelper;->access$300(Lcom/android/quickstep/OverviewCommandHelper;)Lcom/android/quickstep/RecentsModel;

    move-result-object p1

    iget v0, p0, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->mRunningTaskId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/quickstep/RecentsModel;->loadTasks(ILjava/util/function/Consumer;)I

    .line 216
    return-void
.end method

.method private createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 12

    .line 271
    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->mListener:Lcom/android/quickstep/ActivityControlHelper$ActivityInitListener;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->mListener:Lcom/android/quickstep/ActivityControlHelper$ActivityInitListener;

    invoke-interface {v0}, Lcom/android/quickstep/ActivityControlHelper$ActivityInitListener;->unregister()V

    .line 274
    :cond_0
    invoke-static {p1}, Lcom/android/quickstep/util/RemoteAnimationProvider;->showOpeningTarget([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    .line 275
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 276
    iget-object v1, p0, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    const-wide/16 v2, 0x64

    const/4 v4, 0x2

    if-nez v1, :cond_1

    .line 277
    const-string p1, "OverviewCommandHelper"

    const-string v1, "Animation created, before activity"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-array p1, v4, [I

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 279
    return-object v0

    .line 282
    :cond_1
    const/4 v1, 0x0

    .line 284
    array-length v5, p1

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/4 v8, 0x1

    if-ge v7, v5, :cond_3

    aget-object v9, p1, v7

    .line 285
    iget v10, v9, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v10, v8, :cond_2

    .line 286
    nop

    .line 287
    nop

    .line 290
    move-object v1, v9

    goto :goto_1

    .line 284
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 290
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 291
    const-string p1, "OverviewCommandHelper"

    const-string v1, "No closing app"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-array p1, v4, [I

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 293
    return-object v0

    .line 296
    :cond_4
    new-instance v2, Lcom/android/quickstep/util/ClipAnimationHelper;

    invoke-direct {v2}, Lcom/android/quickstep/util/ClipAnimationHelper;-><init>()V

    .line 300
    new-array v3, v4, [I

    .line 301
    iget-object v5, p0, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v5}, Lcom/android/launcher3/BaseDraggingActivity;->getRootView()Landroid/view/View;

    move-result-object v5

    .line 302
    invoke-virtual {v5, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 303
    new-instance v7, Landroid/graphics/Rect;

    aget v9, v3, v6

    aget v10, v3, v8

    aget v6, v3, v6

    .line 304
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v6, v11

    aget v3, v3, v8

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    invoke-direct {v7, v9, v10, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 305
    invoke-virtual {v2, v7, v1}, Lcom/android/quickstep/util/ClipAnimationHelper;->updateSource(Landroid/graphics/Rect;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    .line 307
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 308
    iget-object v3, p0, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->mHelper:Lcom/android/quickstep/ActivityControlHelper;

    iget-object v5, p0, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    .line 309
    invoke-virtual {v5}, Lcom/android/launcher3/BaseDraggingActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    iget-object v6, p0, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    .line 308
    invoke-interface {v3, v5, v6, v1}, Lcom/android/quickstep/ActivityControlHelper;->getSwipeUpDestinationAndLength(Lcom/android/launcher3/DeviceProfile;Landroid/content/Context;Landroid/graphics/Rect;)I

    .line 310
    invoke-virtual {v2, v1}, Lcom/android/quickstep/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 313
    new-array v1, v4, [F

    fill-array-data v1, :array_2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 314
    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 315
    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 316
    new-instance v3, Lcom/android/quickstep/-$$Lambda$OverviewCommandHelper$RecentsActivityCommand$dR1KpBmhRcTK2SDpmeQfHytXUqU;

    invoke-direct {v3, v2, p1}, Lcom/android/quickstep/-$$Lambda$OverviewCommandHelper$RecentsActivityCommand$dR1KpBmhRcTK2SDpmeQfHytXUqU;-><init>(Lcom/android/quickstep/util/ClipAnimationHelper;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 319
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 320
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic lambda$58M8Q8bLHkgPPJiaoVVAlKBEVb8(Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$createWindowAnimation$0(Lcom/android/quickstep/util/ClipAnimationHelper;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 317
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/util/ClipAnimationHelper;->applyTransform([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;F)V

    .line 318
    return-void
.end method

.method public static synthetic lambda$g0d_c7pXhFX3i1y0pMIg_9rJnhs(Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;Lcom/android/launcher3/BaseDraggingActivity;Ljava/lang/Boolean;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->onActivityReady(Lcom/android/launcher3/BaseDraggingActivity;Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method private onActivityReady(Lcom/android/launcher3/BaseDraggingActivity;Ljava/lang/Boolean;)Z
    .locals 2

    .line 254
    invoke-virtual {p1}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    iget v1, p0, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->mRunningTaskId:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->setCurrentTask(I)V

    .line 255
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/BaseDraggingActivity;Z)V

    .line 256
    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->mHelper:Lcom/android/quickstep/ActivityControlHelper;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/quickstep/ActivityControlHelper;->prepareRecentsUI(Lcom/android/launcher3/BaseDraggingActivity;Z)V

    .line 257
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 258
    iget-object p2, p0, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->mHelper:Lcom/android/quickstep/ActivityControlHelper;

    .line 259
    invoke-interface {p2, p1}, Lcom/android/quickstep/ActivityControlHelper;->createControllerForVisibleActivity(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p2

    .line 260
    invoke-virtual {p2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()V

    .line 261
    nop

    .line 262
    iget-object p2, p2, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 263
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 264
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 266
    :cond_0
    iput-object p1, p0, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    .line 267
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected handleCommand(J)Z
    .locals 4

    .line 240
    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->mHelper:Lcom/android/quickstep/ActivityControlHelper;

    invoke-interface {v0}, Lcom/android/quickstep/ActivityControlHelper;->getVisibleRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    .line 241
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->showNextTask()V

    .line 244
    return v1

    .line 245
    :cond_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v2, v0

    cmp-long p1, p1, v2

    if-gez p1, :cond_1

    .line 248
    return v1

    .line 250
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public run()V
    .locals 8

    .line 220
    iget-wide v0, p0, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->mCreateTime:J

    iget-object v2, p0, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->this$0:Lcom/android/quickstep/OverviewCommandHelper;

    invoke-static {v2}, Lcom/android/quickstep/OverviewCommandHelper;->access$400(Lcom/android/quickstep/OverviewCommandHelper;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 221
    iget-object v2, p0, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->this$0:Lcom/android/quickstep/OverviewCommandHelper;

    iget-wide v3, p0, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->mCreateTime:J

    invoke-static {v2, v3, v4}, Lcom/android/quickstep/OverviewCommandHelper;->access$402(Lcom/android/quickstep/OverviewCommandHelper;J)J

    .line 223
    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->handleCommand(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->mHelper:Lcom/android/quickstep/ActivityControlHelper;

    invoke-interface {v0}, Lcom/android/quickstep/ActivityControlHelper;->switchToRecentsIfVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/android/quickstep/util/SysuiEventLogger;->writeDummyRecentsTransition(J)V

    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->mHelper:Lcom/android/quickstep/ActivityControlHelper;

    new-instance v1, Lcom/android/quickstep/-$$Lambda$OverviewCommandHelper$RecentsActivityCommand$g0d_c7pXhFX3i1y0pMIg_9rJnhs;

    invoke-direct {v1, p0}, Lcom/android/quickstep/-$$Lambda$OverviewCommandHelper$RecentsActivityCommand$g0d_c7pXhFX3i1y0pMIg_9rJnhs;-><init>(Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;)V

    invoke-interface {v0, v1}, Lcom/android/quickstep/ActivityControlHelper;->createActivityInitListener(Ljava/util/function/BiPredicate;)Lcom/android/quickstep/ActivityControlHelper$ActivityInitListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->mListener:Lcom/android/quickstep/ActivityControlHelper$ActivityInitListener;

    .line 230
    iget-object v1, p0, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->mListener:Lcom/android/quickstep/ActivityControlHelper$ActivityInitListener;

    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->this$0:Lcom/android/quickstep/OverviewCommandHelper;

    iget-object v2, v0, Lcom/android/quickstep/OverviewCommandHelper;->overviewIntent:Landroid/content/Intent;

    new-instance v3, Lcom/android/quickstep/-$$Lambda$OverviewCommandHelper$RecentsActivityCommand$58M8Q8bLHkgPPJiaoVVAlKBEVb8;

    invoke-direct {v3, p0}, Lcom/android/quickstep/-$$Lambda$OverviewCommandHelper$RecentsActivityCommand$58M8Q8bLHkgPPJiaoVVAlKBEVb8;-><init>(Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;)V

    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->this$0:Lcom/android/quickstep/OverviewCommandHelper;

    .line 231
    invoke-static {v0}, Lcom/android/quickstep/OverviewCommandHelper;->access$500(Lcom/android/quickstep/OverviewCommandHelper;)Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->this$0:Lcom/android/quickstep/OverviewCommandHelper;

    invoke-static {v0}, Lcom/android/quickstep/OverviewCommandHelper;->access$600(Lcom/android/quickstep/OverviewCommandHelper;)Lcom/android/launcher3/MainThreadExecutor;

    move-result-object v0

    iget-object v5, v0, Lcom/android/launcher3/util/LooperExecutor;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0xfa

    .line 230
    invoke-interface/range {v1 .. v7}, Lcom/android/quickstep/ActivityControlHelper$ActivityInitListener;->registerAndStartActivity(Landroid/content/Intent;Lcom/android/quickstep/util/RemoteAnimationProvider;Landroid/content/Context;Landroid/os/Handler;J)V

    .line 234
    :cond_1
    return-void
.end method
