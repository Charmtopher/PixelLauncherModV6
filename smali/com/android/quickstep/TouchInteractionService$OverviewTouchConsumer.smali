.class Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/TouchConsumer;


# instance fields
.field private final mActivity:Lcom/android/launcher3/BaseDraggingActivity;

.field private final mActivityHelper:Lcom/android/quickstep/ActivityControlHelper;

.field private final mDownPos:Landroid/graphics/PointF;

.field private mEndPending:Z

.field private mHadWindowFocusOnDown:Z

.field private mInvalidated:Z

.field private mLastProgress:F

.field private final mLocationOnScreen:[I

.field private final mQuickScrubController:Lcom/android/quickstep/QuickScrubController;

.field private mStartPending:Z

.field private final mTarget:Landroid/view/View;

.field private final mTouchSlop:I

.field private mTrackingStarted:Z


# direct methods
.method constructor <init>(Lcom/android/quickstep/ActivityControlHelper;Lcom/android/launcher3/BaseDraggingActivity;)V
    .locals 2

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mLocationOnScreen:[I

    .line 255
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mDownPos:Landroid/graphics/PointF;

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mTrackingStarted:Z

    .line 260
    iput-boolean v0, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mInvalidated:Z

    .line 263
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mLastProgress:F

    .line 264
    iput-boolean v0, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mStartPending:Z

    .line 265
    iput-boolean v0, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mEndPending:Z

    .line 268
    iput-object p1, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mActivityHelper:Lcom/android/quickstep/ActivityControlHelper;

    .line 269
    iput-object p2, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    .line 270
    invoke-virtual {p2}, Lcom/android/launcher3/BaseDraggingActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mTarget:Landroid/view/View;

    .line 271
    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mTouchSlop:I

    .line 273
    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/RecentsView;

    .line 274
    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getQuickScrubController()Lcom/android/quickstep/QuickScrubController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mQuickScrubController:Lcom/android/quickstep/QuickScrubController;

    .line 275
    return-void
.end method

.method public static synthetic lambda$updateTouchTracking$0(Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;)V
    .locals 4

    .line 338
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mQuickScrubController:Lcom/android/quickstep/QuickScrubController;

    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mActivityHelper:Lcom/android/quickstep/ActivityControlHelper;

    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    .line 339
    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/quickstep/ActivityControlHelper;->onQuickInteractionStart(Lcom/android/launcher3/BaseDraggingActivity;Z)Z

    move-result v1

    .line 338
    invoke-virtual {v0, v1}, Lcom/android/quickstep/QuickScrubController;->onQuickScrubStart(Z)V

    .line 340
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mQuickScrubController:Lcom/android/quickstep/QuickScrubController;

    iget v1, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mLastProgress:F

    invoke-virtual {v0, v1}, Lcom/android/quickstep/QuickScrubController;->onQuickScrubProgress(F)V

    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mStartPending:Z

    .line 343
    iget-boolean v1, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mEndPending:Z

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mQuickScrubController:Lcom/android/quickstep/QuickScrubController;

    invoke-virtual {v1}, Lcom/android/quickstep/QuickScrubController;->onQuickScrubEnd()V

    .line 345
    iput-boolean v0, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mEndPending:Z

    .line 348
    :cond_0
    return-void
.end method

.method private sendEvent(Landroid/view/MotionEvent;)V
    .locals 5

    .line 321
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    .line 322
    or-int/lit16 v1, v0, 0x100

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 323
    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mLocationOnScreen:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mLocationOnScreen:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 324
    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mTarget:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 325
    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mLocationOnScreen:[I

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mLocationOnScreen:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 326
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 327
    return-void
.end method


# virtual methods
.method public accept(Landroid/view/MotionEvent;)V
    .locals 5

    .line 279
    iget-boolean v0, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mInvalidated:Z

    if-eqz v0, :cond_0

    .line 280
    return-void

    .line 282
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 283
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 284
    iput-boolean v1, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mTrackingStarted:Z

    .line 285
    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 286
    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mHadWindowFocusOnDown:Z

    goto :goto_0

    .line 287
    :cond_1
    iget-boolean v3, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mTrackingStarted:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mHadWindowFocusOnDown:Z

    if-eqz v3, :cond_3

    .line 288
    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 291
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mTrackingStarted:Z

    if-nez v1, :cond_3

    .line 292
    iput-boolean v2, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mInvalidated:Z

    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    .line 297
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    .line 298
    iput-boolean v2, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mTrackingStarted:Z

    .line 299
    iget-object v3, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mTarget:Landroid/view/View;

    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mLocationOnScreen:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 302
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 303
    invoke-virtual {v3, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 304
    invoke-direct {p0, v3}, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->sendEvent(Landroid/view/MotionEvent;)V

    .line 305
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 311
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mTrackingStarted:Z

    if-eqz v1, :cond_4

    .line 312
    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->sendEvent(Landroid/view/MotionEvent;)V

    .line 315
    :cond_4
    if-eq v0, v2, :cond_5

    const/4 p1, 0x3

    if-ne v0, p1, :cond_6

    .line 316
    :cond_5
    iput-boolean v2, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mInvalidated:Z

    .line 318
    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 248
    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->accept(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onQuickScrubEnd()V
    .locals 1

    .line 356
    iget-boolean v0, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mInvalidated:Z

    if-eqz v0, :cond_0

    .line 357
    return-void

    .line 359
    :cond_0
    iget-boolean v0, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mStartPending:Z

    if-eqz v0, :cond_1

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mEndPending:Z

    return-void

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mQuickScrubController:Lcom/android/quickstep/QuickScrubController;

    invoke-virtual {v0}, Lcom/android/quickstep/QuickScrubController;->onQuickScrubEnd()V

    .line 364
    return-void
.end method

.method public onQuickScrubProgress(F)V
    .locals 1

    .line 368
    iput p1, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mLastProgress:F

    .line 369
    iget-boolean v0, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mInvalidated:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mEndPending:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mQuickScrubController:Lcom/android/quickstep/QuickScrubController;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/QuickScrubController;->onQuickScrubProgress(F)V

    .line 373
    return-void

    .line 370
    :cond_1
    :goto_0
    return-void
.end method

.method public updateTouchTracking(I)V
    .locals 2

    .line 331
    iget-boolean v0, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mInvalidated:Z

    if-eqz v0, :cond_0

    .line 332
    return-void

    .line 334
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 335
    iput-boolean v0, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mStartPending:Z

    .line 337
    new-instance p1, Lcom/android/quickstep/-$$Lambda$TouchInteractionService$OverviewTouchConsumer$L0AiJ-YDSQgueZLNDQVO_4-hZRg;

    invoke-direct {p1, p0}, Lcom/android/quickstep/-$$Lambda$TouchInteractionService$OverviewTouchConsumer$L0AiJ-YDSQgueZLNDQVO_4-hZRg;-><init>(Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;)V

    .line 350
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mActivityHelper:Lcom/android/quickstep/ActivityControlHelper;

    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-interface {v0, v1, p1}, Lcom/android/quickstep/ActivityControlHelper;->executeOnWindowAvailable(Lcom/android/launcher3/BaseDraggingActivity;Ljava/lang/Runnable;)V

    .line 352
    :cond_1
    return-void
.end method
