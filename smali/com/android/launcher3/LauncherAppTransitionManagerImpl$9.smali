.class Lcom/android/launcher3/LauncherAppTransitionManagerImpl$9;
.super Lcom/android/quickstep/util/MultiValueUpdateListener;
.source "SourceFile"


# instance fields
.field isFirstFrame:Z

.field mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final synthetic this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

.field final synthetic val$endX:F

.field final synthetic val$matrix:Landroid/graphics/Matrix;

.field final synthetic val$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;F[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Matrix;)V
    .locals 8

    .line 620
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$9;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    iput p2, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$9;->val$endX:F

    iput-object p3, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$9;->val$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p4, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$9;->val$matrix:Landroid/graphics/Matrix;

    invoke-direct {p0}, Lcom/android/quickstep/util/MultiValueUpdateListener;-><init>()V

    .line 621
    new-instance v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v3, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$9;->val$endX:F

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE_IN_OUT:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x43af0000    # 350.0f

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v7, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$9;->mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 622
    new-instance v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE:Landroid/view/animation/Interpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f4ccccd    # 0.8f

    const v5, 0x43858000    # 267.0f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v7, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$9;->mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 623
    new-instance v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->APP_CLOSE_ALPHA:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/high16 v5, 0x43af0000    # 350.0f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v7, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$9;->mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 625
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$9;->isFirstFrame:Z

    return-void
.end method


# virtual methods
.method public onUpdate(F)V
    .locals 11

    .line 629
    new-instance p1, Lcom/android/systemui/shared/system/TransactionCompat;

    invoke-direct {p1}, Lcom/android/systemui/shared/system/TransactionCompat;-><init>()V

    .line 630
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$9;->val$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 631
    iget v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 632
    iget-object v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    iget-object v7, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$9;->mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v7, v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {p1, v5, v7}, Lcom/android/systemui/shared/system/TransactionCompat;->setAlpha(Lcom/android/systemui/shared/system/SurfaceControlCompat;F)Lcom/android/systemui/shared/system/TransactionCompat;

    .line 633
    iget-object v5, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$9;->val$matrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$9;->mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v7, v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v8, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$9;->mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v8, v8, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v9, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    .line 634
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    .line 635
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    .line 633
    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 636
    iget-object v5, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$9;->val$matrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$9;->mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v7, v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 637
    iget-object v5, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$9;->val$matrix:Landroid/graphics/Matrix;

    iget-object v7, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget-object v8, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 638
    iget-object v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    iget-object v7, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$9;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v5, v7}, Lcom/android/systemui/shared/system/TransactionCompat;->setMatrix(Lcom/android/systemui/shared/system/SurfaceControlCompat;Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/TransactionCompat;

    .line 640
    :cond_0
    iget-boolean v5, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$9;->isFirstFrame:Z

    if-eqz v5, :cond_2

    .line 641
    iget v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v5, v6, :cond_1

    .line 642
    const v5, 0x7fffffff

    goto :goto_1

    .line 643
    :cond_1
    iget v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->prefixOrderIndex:I

    .line 644
    :goto_1
    iget-object v6, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    invoke-virtual {p1, v6, v5}, Lcom/android/systemui/shared/system/TransactionCompat;->setLayer(Lcom/android/systemui/shared/system/SurfaceControlCompat;I)Lcom/android/systemui/shared/system/TransactionCompat;

    .line 645
    iget-object v4, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    invoke-virtual {p1, v4}, Lcom/android/systemui/shared/system/TransactionCompat;->show(Lcom/android/systemui/shared/system/SurfaceControlCompat;)Lcom/android/systemui/shared/system/TransactionCompat;

    .line 630
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 648
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/shared/system/TransactionCompat;->setEarlyWakeup()Lcom/android/systemui/shared/system/TransactionCompat;

    .line 649
    invoke-virtual {p1}, Lcom/android/systemui/shared/system/TransactionCompat;->apply()V

    .line 651
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$9;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 652
    iput-boolean v2, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$9;->isFirstFrame:Z

    .line 653
    return-void
.end method
