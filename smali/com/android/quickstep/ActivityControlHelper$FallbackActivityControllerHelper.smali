.class public Lcom/android/quickstep/ActivityControlHelper$FallbackActivityControllerHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/ActivityControlHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createActivityInitListener(Ljava/util/function/BiPredicate;)Lcom/android/quickstep/ActivityControlHelper$ActivityInitListener;
    .locals 1

    .line 366
    new-instance v0, Lcom/android/quickstep/RecentsActivityTracker;

    invoke-direct {v0, p1}, Lcom/android/quickstep/RecentsActivityTracker;-><init>(Ljava/util/function/BiPredicate;)V

    return-object v0
.end method

.method public bridge synthetic createControllerForHiddenActivity(Lcom/android/launcher3/BaseDraggingActivity;I)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 0

    .line 280
    check-cast p1, Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/ActivityControlHelper$FallbackActivityControllerHelper;->createControllerForHiddenActivity(Lcom/android/quickstep/RecentsActivity;I)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    return-object p1
.end method

.method public createControllerForHiddenActivity(Lcom/android/quickstep/RecentsActivity;I)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 2

    .line 343
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 344
    mul-int/lit8 p2, p2, 0x2

    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createControllerForVisibleActivity(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 0

    .line 280
    check-cast p1, Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/ActivityControlHelper$FallbackActivityControllerHelper;->createControllerForVisibleActivity(Lcom/android/quickstep/RecentsActivity;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    return-object p1
.end method

.method public createControllerForVisibleActivity(Lcom/android/quickstep/RecentsActivity;)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 2

    .line 335
    invoke-virtual {p1}, Lcom/android/quickstep/RecentsActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 336
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/ActivityControlHelper$FallbackActivityControllerHelper;->createControllerForHiddenActivity(Lcom/android/quickstep/RecentsActivity;I)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createLayoutListener(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/quickstep/ActivityControlHelper$LayoutListener;
    .locals 0

    .line 280
    check-cast p1, Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/ActivityControlHelper$FallbackActivityControllerHelper;->createLayoutListener(Lcom/android/quickstep/RecentsActivity;)Lcom/android/quickstep/ActivityControlHelper$LayoutListener;

    move-result-object p1

    return-object p1
.end method

.method public createLayoutListener(Lcom/android/quickstep/RecentsActivity;)Lcom/android/quickstep/ActivityControlHelper$LayoutListener;
    .locals 0

    .line 351
    new-instance p1, Lcom/android/quickstep/ActivityControlHelper$FallbackActivityControllerHelper$1;

    invoke-direct {p1, p0}, Lcom/android/quickstep/ActivityControlHelper$FallbackActivityControllerHelper$1;-><init>(Lcom/android/quickstep/ActivityControlHelper$FallbackActivityControllerHelper;)V

    return-object p1
.end method

.method public deferStartingActivity(I)Z
    .locals 0

    .line 393
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic executeOnNextDraw(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;Ljava/lang/Runnable;)V
    .locals 0

    .line 280
    check-cast p1, Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quickstep/ActivityControlHelper$FallbackActivityControllerHelper;->executeOnNextDraw(Lcom/android/quickstep/RecentsActivity;Lcom/android/quickstep/views/TaskView;Ljava/lang/Runnable;)V

    return-void
.end method

.method public executeOnNextDraw(Lcom/android/quickstep/RecentsActivity;Lcom/android/quickstep/views/TaskView;Ljava/lang/Runnable;)V
    .locals 0

    .line 302
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 303
    return-void
.end method

.method public bridge synthetic executeOnWindowAvailable(Lcom/android/launcher3/BaseDraggingActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 280
    check-cast p1, Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/ActivityControlHelper$FallbackActivityControllerHelper;->executeOnWindowAvailable(Lcom/android/quickstep/RecentsActivity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public executeOnWindowAvailable(Lcom/android/quickstep/RecentsActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 295
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 296
    return-void
.end method

.method public bridge synthetic getCreatedActivity()Lcom/android/launcher3/BaseDraggingActivity;
    .locals 1

    .line 280
    invoke-virtual {p0}, Lcom/android/quickstep/ActivityControlHelper$FallbackActivityControllerHelper;->getCreatedActivity()Lcom/android/quickstep/RecentsActivity;

    move-result-object v0

    return-object v0
.end method

.method public getCreatedActivity()Lcom/android/quickstep/RecentsActivity;
    .locals 1

    .line 372
    invoke-static {}, Lcom/android/quickstep/RecentsActivityTracker;->getCurrentActivity()Lcom/android/quickstep/RecentsActivity;

    move-result-object v0

    return-object v0
.end method

.method public getOverviewWindowBounds(Landroid/graphics/Rect;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/Rect;
    .locals 0

    .line 399
    iget-object p1, p2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    return-object p1
.end method

.method public getSwipeUpDestinationAndLength(Lcom/android/launcher3/DeviceProfile;Landroid/content/Context;Landroid/graphics/Rect;)I
    .locals 0

    .line 312
    invoke-static {p2, p1, p3}, Lcom/android/quickstep/util/LayoutUtils;->calculateFallbackTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    .line 313
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 314
    iget-object p2, p1, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    .line 315
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result p3

    if-eqz p3, :cond_0

    iget p2, p2, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 316
    :goto_0
    iget p3, p1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingPx:I

    add-int/2addr p3, p1

    add-int/2addr p3, p2

    return p3

    .line 318
    :cond_1
    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public getVisibleRecentsView()Lcom/android/quickstep/views/RecentsView;
    .locals 2

    .line 378
    invoke-virtual {p0}, Lcom/android/quickstep/ActivityControlHelper$FallbackActivityControllerHelper;->getCreatedActivity()Lcom/android/quickstep/RecentsActivity;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    return-object v0

    .line 382
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onQuickInteractionStart(Lcom/android/launcher3/BaseDraggingActivity;Z)Z
    .locals 0

    .line 280
    check-cast p1, Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/ActivityControlHelper$FallbackActivityControllerHelper;->onQuickInteractionStart(Lcom/android/quickstep/RecentsActivity;Z)Z

    move-result p1

    return p1
.end method

.method public onQuickInteractionStart(Lcom/android/quickstep/RecentsActivity;Z)Z
    .locals 0

    .line 290
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onQuickstepGestureStarted(Lcom/android/launcher3/BaseDraggingActivity;Z)V
    .locals 0

    .line 280
    check-cast p1, Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/ActivityControlHelper$FallbackActivityControllerHelper;->onQuickstepGestureStarted(Lcom/android/quickstep/RecentsActivity;Z)V

    return-void
.end method

.method public onQuickstepGestureStarted(Lcom/android/quickstep/RecentsActivity;Z)V
    .locals 0

    .line 285
    return-void
.end method

.method public bridge synthetic onSwipeUpComplete(Lcom/android/launcher3/BaseDraggingActivity;)V
    .locals 0

    .line 280
    check-cast p1, Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/ActivityControlHelper$FallbackActivityControllerHelper;->onSwipeUpComplete(Lcom/android/quickstep/RecentsActivity;)V

    return-void
.end method

.method public onSwipeUpComplete(Lcom/android/quickstep/RecentsActivity;)V
    .locals 0

    .line 325
    return-void
.end method

.method public bridge synthetic onTransitionCancelled(Lcom/android/launcher3/BaseDraggingActivity;Z)V
    .locals 0

    .line 280
    check-cast p1, Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/ActivityControlHelper$FallbackActivityControllerHelper;->onTransitionCancelled(Lcom/android/quickstep/RecentsActivity;Z)V

    return-void
.end method

.method public onTransitionCancelled(Lcom/android/quickstep/RecentsActivity;Z)V
    .locals 0

    .line 308
    return-void
.end method

.method public bridge synthetic prepareRecentsUI(Lcom/android/launcher3/BaseDraggingActivity;Z)V
    .locals 0

    .line 280
    check-cast p1, Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/ActivityControlHelper$FallbackActivityControllerHelper;->prepareRecentsUI(Lcom/android/quickstep/RecentsActivity;Z)V

    return-void
.end method

.method public prepareRecentsUI(Lcom/android/quickstep/RecentsActivity;Z)V
    .locals 0

    .line 330
    return-void
.end method

.method public shouldMinimizeSplitScreen()Z
    .locals 1

    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method public switchToRecentsIfVisible()Z
    .locals 1

    .line 387
    const/4 v0, 0x0

    return v0
.end method
