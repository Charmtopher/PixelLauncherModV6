.class Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;
.super Lcom/android/quickstep/util/MultiValueUpdateListener;
.source "SourceFile"


# instance fields
.field isFirstFrame:Z

.field mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final synthetic this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

.field final synthetic val$bounds:Landroid/graphics/Rect;

.field final synthetic val$crop:Landroid/graphics/Rect;

.field final synthetic val$floatingViewBounds:[I

.field final synthetic val$matrix:Landroid/graphics/Matrix;

.field final synthetic val$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;Landroid/graphics/Rect;Landroid/graphics/Matrix;[ILandroid/graphics/Rect;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 7

    .line 473
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    iput-object p2, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->val$bounds:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->val$matrix:Landroid/graphics/Matrix;

    iput-object p4, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->val$floatingViewBounds:[I

    iput-object p5, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->val$crop:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->val$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-direct {p0}, Lcom/android/quickstep/util/MultiValueUpdateListener;-><init>()V

    .line 475
    new-instance p1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x42700000    # 60.0f

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 477
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->isFirstFrame:Z

    return-void
.end method


# virtual methods
.method public onUpdate(F)V
    .locals 12

    .line 481
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->access$700(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->getSurface(Landroid/view/View;)Landroid/view/Surface;

    move-result-object v0

    .line 482
    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->getNextFrameNumber(Landroid/view/Surface;)J

    move-result-wide v3

    goto :goto_0

    .line 483
    :cond_0
    move-wide v3, v1

    :goto_0
    cmp-long v1, v3, v1

    if-nez v1, :cond_1

    .line 485
    const-string p1, "LauncherTransition"

    const-string v0, "Failed to animate, surface got destroyed."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    return-void

    .line 488
    :cond_1
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 491
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->val$bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    invoke-static {v2}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->access$700(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    .line 492
    iget-object v2, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->val$bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    invoke-static {v3}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->access$700(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    .line 495
    iget-object v3, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    invoke-static {v3}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->access$900(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v3, v3

    div-float v3, v1, v3

    .line 496
    iget-object v4, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    invoke-static {v4}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->access$900(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v4, v4

    div-float v4, v2, v4

    .line 497
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 498
    iget-object v5, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 501
    iget-object v5, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    invoke-static {v5}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->access$900(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    .line 502
    iget-object v6, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    invoke-static {v6}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->access$900(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    .line 503
    int-to-float v7, v5

    mul-float v8, v7, v3

    .line 504
    int-to-float v9, v6

    mul-float/2addr v3, v9

    .line 506
    sub-float/2addr v8, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v8, v1

    .line 507
    sub-float/2addr v3, v2

    div-float/2addr v3, v1

    .line 508
    iget-object v2, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    invoke-static {v2}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->access$700(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)Landroid/view/View;

    move-result-object v2

    iget-object v10, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->val$floatingViewBounds:[I

    invoke-virtual {v2, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 509
    iget-object v2, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->val$floatingViewBounds:[I

    const/4 v10, 0x0

    aget v2, v2, v10

    int-to-float v2, v2

    sub-float/2addr v2, v8

    .line 510
    iget-object v8, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->val$floatingViewBounds:[I

    const/4 v11, 0x1

    aget v8, v8, v11

    int-to-float v8, v8

    sub-float/2addr v8, v3

    .line 511
    iget-object v3, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 515
    mul-float/2addr v9, p1

    sub-float/2addr v4, p1

    mul-float/2addr v7, v4

    add-float/2addr v9, v7

    .line 516
    sub-int/2addr v6, v5

    int-to-float p1, v6

    div-float/2addr p1, v1

    .line 517
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->val$crop:Landroid/graphics/Rect;

    iput v10, v1, Landroid/graphics/Rect;->left:I

    .line 518
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->val$crop:Landroid/graphics/Rect;

    mul-float/2addr p1, v4

    float-to-int p1, p1

    iput p1, v1, Landroid/graphics/Rect;->top:I

    .line 519
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->val$crop:Landroid/graphics/Rect;

    iput v5, p1, Landroid/graphics/Rect;->right:I

    .line 520
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->val$crop:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->val$crop:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v1, v9

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 522
    new-instance p1, Lcom/android/systemui/shared/system/TransactionCompat;

    invoke-direct {p1}, Lcom/android/systemui/shared/system/TransactionCompat;-><init>()V

    .line 523
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->val$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v2, v1

    move v3, v10

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 524
    iget v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v5, :cond_2

    .line 525
    iget-object v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    iget-object v6, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v6, v6, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/shared/system/TransactionCompat;->setAlpha(Lcom/android/systemui/shared/system/SurfaceControlCompat;F)Lcom/android/systemui/shared/system/TransactionCompat;

    .line 529
    iget-object v5, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->val$matrix:Landroid/graphics/Matrix;

    iget-object v6, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget-object v7, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 530
    iget-object v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    iget-object v6, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/shared/system/TransactionCompat;->setMatrix(Lcom/android/systemui/shared/system/SurfaceControlCompat;Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/TransactionCompat;

    .line 531
    iget-object v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    iget-object v6, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->val$crop:Landroid/graphics/Rect;

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/shared/system/TransactionCompat;->setWindowCrop(Lcom/android/systemui/shared/system/SurfaceControlCompat;Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/TransactionCompat;

    .line 532
    iget-object v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->getNextFrameNumber(Landroid/view/Surface;)J

    move-result-wide v6

    invoke-virtual {p1, v5, v0, v6, v7}, Lcom/android/systemui/shared/system/TransactionCompat;->deferTransactionUntil(Lcom/android/systemui/shared/system/SurfaceControlCompat;Landroid/view/Surface;J)Lcom/android/systemui/shared/system/TransactionCompat;

    .line 534
    :cond_2
    iget-boolean v5, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->isFirstFrame:Z

    if-eqz v5, :cond_3

    .line 535
    iget-object v4, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    invoke-virtual {p1, v4}, Lcom/android/systemui/shared/system/TransactionCompat;->show(Lcom/android/systemui/shared/system/SurfaceControlCompat;)Lcom/android/systemui/shared/system/TransactionCompat;

    .line 523
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 538
    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/shared/system/TransactionCompat;->setEarlyWakeup()Lcom/android/systemui/shared/system/TransactionCompat;

    .line 539
    invoke-virtual {p1}, Lcom/android/systemui/shared/system/TransactionCompat;->apply()V

    .line 541
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 542
    iput-boolean v10, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;->isFirstFrame:Z

    .line 543
    return-void
.end method
