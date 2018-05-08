.class public abstract Lcom/android/launcher3/popup/ArrowPopup;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "SourceFile"


# instance fields
.field private final mArrayOffset:I

.field private final mArrow:Landroid/view/View;

.field protected mDeferContainerRemoval:Z

.field private final mEndRect:Landroid/graphics/Rect;

.field private mGravity:I

.field protected final mInflater:Landroid/view/LayoutInflater;

.field protected mIsAboveIcon:Z

.field protected mIsLeftAligned:Z

.field protected final mIsRtl:Z

.field public final mLauncher:Lcom/android/launcher3/Launcher;

.field protected mOpenCloseAnimator:Landroid/animation/Animator;

.field private final mOutlineRadius:F

.field private final mStartRect:Landroid/graphics/Rect;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 110
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/popup/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/popup/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    .line 78
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mStartRect:Landroid/graphics/Rect;

    .line 79
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mEndRect:Landroid/graphics/Rect;

    .line 83
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mInflater:Landroid/view/LayoutInflater;

    .line 84
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b008a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOutlineRadius:F

    .line 85
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 86
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    .line 88
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/android/launcher3/popup/ArrowPopup;->setClipToOutline(Z)V

    .line 89
    new-instance p2, Lcom/android/launcher3/popup/ArrowPopup$1;

    invoke-direct {p2, p0}, Lcom/android/launcher3/popup/ArrowPopup$1;-><init>(Lcom/android/launcher3/popup/ArrowPopup;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/popup/ArrowPopup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 98
    const p3, 0x7f0b007d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 99
    const v0, 0x7f0b007e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 100
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    .line 101
    iget-object p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    new-instance v1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-direct {v1, p3, v0}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    const p1, 0x7f0b007f

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrayOffset:I

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/popup/ArrowPopup;)F
    .locals 0

    .line 60
    iget p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOutlineRadius:F

    return p0
.end method

.method private createOpenCloseOutlineProvider()Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;
    .locals 5

    .line 440
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    iget-boolean v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 441
    const v1, 0x7f0b0080

    goto :goto_0

    .line 442
    :cond_0
    const v1, 0x7f0b0081

    .line 440
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 443
    iget-boolean v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    if-nez v1, :cond_1

    .line 444
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredWidth()I

    move-result v1

    sub-int v0, v1, v0

    .line 446
    :cond_1
    iget-boolean v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredHeight()I

    move-result v1

    goto :goto_1

    .line 448
    :cond_2
    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/popup/ArrowPopup;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 449
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mEndRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 450
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mEndRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 453
    :cond_3
    new-instance v0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOutlineRadius:F

    iget v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOutlineRadius:F

    iget-object v3, p0, Lcom/android/launcher3/popup/ArrowPopup;->mStartRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/launcher3/popup/ArrowPopup;->mEndRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;-><init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v0
.end method


# virtual methods
.method protected final animateClose()V
    .locals 7

    .line 387
    iget-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsOpen:Z

    if-nez v0, :cond_0

    .line 388
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mEndRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 391
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/anim/RevealOutlineAnimation;

    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/anim/RevealOutlineAnimation;

    iget-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mEndRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/RevealOutlineAnimation;->getOutline(Landroid/graphics/Rect;)V

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    .line 395
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 397
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsOpen:Z

    .line 399
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 401
    iget-object v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v6, v5, v0

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 402
    iget-object v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    sget-object v3, Lcom/android/launcher3/popup/ArrowPopup;->ALPHA:Landroid/util/Property;

    new-array v5, v4, [F

    aput v6, v5, v0

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 404
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 405
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 408
    invoke-direct {p0}, Lcom/android/launcher3/popup/ArrowPopup;->createOpenCloseOutlineProvider()Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;

    move-result-object v5

    .line 409
    invoke-virtual {v5, p0, v4}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 410
    invoke-virtual {v5, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 411
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 413
    sget-object v5, Lcom/android/launcher3/popup/ArrowPopup;->ALPHA:Landroid/util/Property;

    new-array v4, v4, [F

    aput v6, v4, v0

    invoke-static {p0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 414
    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 415
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 417
    invoke-virtual {p0, v1}, Lcom/android/launcher3/popup/ArrowPopup;->onCreateCloseAnimation(Landroid/animation/AnimatorSet;)V

    .line 418
    const v0, 0x7f0d000d

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 419
    new-instance v0, Lcom/android/launcher3/popup/ArrowPopup$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/popup/ArrowPopup$3;-><init>(Lcom/android/launcher3/popup/ArrowPopup;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 430
    iput-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/Animator;

    .line 431
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 432
    return-void
.end method

.method protected closeComplete()V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/Animator;

    .line 465
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsOpen:Z

    .line 466
    iput-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mDeferContainerRemoval:Z

    .line 467
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 468
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 469
    return-void
.end method

.method public abstract getTargetObjectLocation(Landroid/graphics/Rect;)V
.end method

.method protected handleClose(Z)V
    .locals 0

    .line 115
    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->animateClose()V

    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->closeComplete()V

    .line 120
    return-void
.end method

.method public final inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 124
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 125
    return-object p1
.end method

.method protected final isAlignedWithStart()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreateCloseAnimation(Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 437
    return-void
.end method

.method protected onInflationComplete(Z)V
    .locals 0

    .line 131
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 327
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/AbstractFloatingView;->onLayout(ZIIII)V

    .line 330
    iget-object p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 331
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getTranslationX()F

    move-result p3

    int-to-float p2, p2

    add-float/2addr p3, p2

    const/4 p2, 0x0

    cmpg-float p2, p3, p2

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getTranslationX()F

    move-result p2

    int-to-float p3, p4

    add-float/2addr p2, p3

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragLayer;->getWidth()I

    move-result p3

    int-to-float p3, p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_1

    .line 333
    :cond_0
    iget p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    or-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    .line 336
    :cond_1
    iget p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {p2}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 337
    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragLayer;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Lcom/android/launcher3/popup/ArrowPopup;->setX(F)V

    .line 338
    iget-object p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 340
    :cond_2
    iget p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {p2}, Landroid/view/Gravity;->isVertical(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 341
    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragLayer;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/ArrowPopup;->setY(F)V

    .line 343
    :cond_3
    return-void
.end method

.method protected final orientAboutObject()V
    .locals 15

    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/popup/ArrowPopup;->measure(II)V

    .line 222
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredWidth()I

    move-result v1

    .line 223
    iget-object v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v3, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrayOffset:I

    add-int/2addr v2, v3

    .line 224
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b007c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 225
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 227
    iget-object v4, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/popup/ArrowPopup;->getTargetObjectLocation(Landroid/graphics/Rect;)V

    .line 228
    iget-object v4, p0, Lcom/android/launcher3/popup/ArrowPopup;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, v4, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 229
    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/DragLayer;->getInsets()Landroid/graphics/Rect;

    move-result-object v5

    .line 232
    iget-object v6, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 233
    iget-object v7, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v1

    .line 234
    nop

    .line 235
    add-int v8, v6, v1

    iget v9, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    .line 236
    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/DragLayer;->getRight()I

    move-result v9

    iget v10, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    const/4 v10, 0x1

    if-ge v8, v9, :cond_0

    .line 237
    move v8, v10

    goto :goto_0

    .line 236
    :cond_0
    nop

    .line 237
    move v8, v0

    :goto_0
    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/DragLayer;->getLeft()I

    move-result v9

    iget v11, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v11

    if-le v7, v9, :cond_1

    .line 238
    move v9, v10

    goto :goto_1

    .line 237
    :cond_1
    nop

    .line 238
    move v9, v0

    :goto_1
    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    goto :goto_2

    .line 241
    :cond_2
    move v8, v6

    goto :goto_3

    .line 239
    :cond_3
    :goto_2
    nop

    .line 241
    move v8, v7

    :goto_3
    if-ne v8, v6, :cond_4

    move v9, v10

    goto :goto_4

    :cond_4
    move v9, v0

    :goto_4
    iput-boolean v9, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    .line 244
    iget-object v9, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 245
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 247
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->isAlignedWithStart()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 249
    const v12, 0x7f0b0077

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 250
    const v13, 0x7f0b007a

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 252
    div-int/lit8 v13, v9, 0x2

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v13, v12

    sub-int/2addr v13, v11

    .line 253
    goto :goto_5

    .line 255
    :cond_5
    const v12, 0x7f0b0079

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 257
    const v13, 0x7f0b007b

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 259
    div-int/lit8 v13, v9, 0x2

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v13, v12

    sub-int/2addr v13, v11

    .line 261
    :goto_5
    iget-boolean v11, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz v11, :cond_6

    goto :goto_6

    :cond_6
    neg-int v13, v13

    :goto_6
    add-int/2addr v8, v13

    .line 264
    iget-object v11, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 265
    iget-object v12, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v3

    .line 266
    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/DragLayer;->getTop()I

    move-result v13

    iget v14, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v14

    if-le v12, v13, :cond_7

    move v13, v10

    goto :goto_7

    :cond_7
    move v13, v0

    :goto_7
    iput-boolean v13, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    .line 267
    iget-boolean v13, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-nez v13, :cond_8

    .line 268
    iget-object v12, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v11

    add-int/2addr v12, v2

    .line 272
    :cond_8
    iget-boolean v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    if-eqz v2, :cond_9

    .line 273
    iget v2, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v2

    goto :goto_8

    .line 275
    :cond_9
    iget v2, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v2

    .line 277
    :goto_8
    iget v2, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v2

    .line 279
    iput v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    .line 280
    add-int/2addr v3, v12

    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/DragLayer;->getBottom()I

    move-result v2

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v11

    if-le v3, v2, :cond_c

    .line 282
    const/16 v2, 0x10

    iput v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    .line 284
    add-int/2addr v6, v9

    iget v2, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v2

    .line 285
    sub-int/2addr v7, v9

    iget v2, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v2

    .line 286
    iget-boolean v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    if-nez v2, :cond_a

    .line 287
    add-int/2addr v1, v6

    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/DragLayer;->getRight()I

    move-result v2

    if-lt v1, v2, :cond_b

    .line 288
    nop

    .line 292
    iput-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    goto :goto_9

    .line 295
    :cond_a
    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/DragLayer;->getLeft()I

    move-result v1

    if-le v7, v1, :cond_b

    .line 296
    nop

    .line 297
    iput-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    .line 303
    :goto_9
    move v8, v7

    goto :goto_a

    .line 299
    :cond_b
    nop

    .line 300
    iput-boolean v10, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    .line 303
    move v8, v6

    :goto_a
    iput-boolean v10, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    .line 306
    :cond_c
    int-to-float v0, v8

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/ArrowPopup;->setX(F)V

    .line 307
    iget v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {v0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 308
    return-void

    .line 311
    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 312
    iget-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 313
    iget-boolean v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v2, :cond_e

    .line 314
    const/16 v2, 0x50

    iput v2, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->gravity:I

    iput v2, v1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->gravity:I

    .line 315
    iget-object v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 316
    iget-object v2, v2, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getHeight()I

    move-result v2

    sub-int/2addr v2, v12

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->bottomMargin:I

    .line 317
    iget v0, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->bottomMargin:I

    iget v2, v1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrayOffset:I

    sub-int/2addr v0, v2

    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->bottomMargin:I

    return-void

    .line 319
    :cond_e
    const/16 v2, 0x30

    iput v2, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->gravity:I

    iput v2, v1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->gravity:I

    .line 320
    iget v2, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v2

    iput v12, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->topMargin:I

    .line 321
    iget v0, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->topMargin:I

    iget v2, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    iget v2, v1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrayOffset:I

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->topMargin:I

    .line 323
    return-void
.end method

.method public final reorderAndShow(I)V
    .locals 11

    .line 138
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/ArrowPopup;->setVisibility(I)V

    .line 139
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsOpen:Z

    .line 140
    iget-object v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, v2, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->orientAboutObject()V

    .line 143
    iget-boolean v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    .line 144
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 145
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getChildCount()I

    move-result v4

    .line 146
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    move v6, v3

    :goto_0
    if-ge v6, v4, :cond_1

    .line 148
    if-ne v6, p1, :cond_0

    .line 149
    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 151
    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/launcher3/popup/ArrowPopup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 153
    :cond_1
    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->removeAllViews()V

    .line 155
    move p1, v3

    :goto_1
    if-ge p1, v4, :cond_2

    .line 156
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/launcher3/popup/ArrowPopup;->addView(Landroid/view/View;)V

    .line 155
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 159
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->orientAboutObject()V

    .line 161
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/launcher3/popup/ArrowPopup;->onInflationComplete(Z)V

    .line 164
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 165
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->isAlignedWithStart()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 166
    const v2, 0x7f0b0080

    goto :goto_2

    .line 167
    :cond_4
    const v2, 0x7f0b0081

    .line 165
    :goto_2
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 168
    const v4, 0x7f0b007d

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v4, 0x2

    div-int/2addr p1, v4

    .line 169
    iget-object v5, p0, Lcom/android/launcher3/popup/ArrowPopup;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, v5, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v6, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 170
    iget-object v5, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 171
    iget-boolean v6, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz v6, :cond_5

    .line 172
    iget-object v6, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getX()F

    move-result v7

    int-to-float v2, v2

    add-float/2addr v7, v2

    int-to-float p1, p1

    sub-float/2addr v7, p1

    invoke-virtual {v6, v7}, Landroid/view/View;->setX(F)V

    goto :goto_3

    .line 174
    :cond_5
    iget-object v6, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getX()F

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    int-to-float v2, v2

    sub-float/2addr v7, v2

    int-to-float p1, p1

    sub-float/2addr v7, p1

    invoke-virtual {v6, v7}, Landroid/view/View;->setX(F)V

    .line 177
    :goto_3
    iget p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {p1}, Landroid/view/Gravity;->isVertical(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 180
    iget-object p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 182
    :cond_6
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    iget v0, v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    int-to-float v0, v0

    iget v2, v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    int-to-float v2, v2

    iget-boolean v6, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    xor-int/2addr v6, v1

    invoke-static {v0, v2, v6}, Lcom/android/launcher3/graphics/TriangleShape;->create(FFZ)Lcom/android/launcher3/graphics/TriangleShape;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 184
    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 185
    iget-object v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mLauncher:Lcom/android/launcher3/Launcher;

    const v6, 0x7f010028

    invoke-static {v2, v6}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0b0082

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 188
    new-instance v6, Landroid/graphics/CornerPathEffect;

    int-to-float v2, v2

    invoke-direct {v6, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 189
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getElevation()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    .line 193
    :goto_4
    iget-object p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    iget v0, v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    div-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 194
    iget-object p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_5

    :cond_7
    iget v0, v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    int-to-float v0, v0

    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 196
    invoke-virtual {p0, v3}, Lcom/android/launcher3/popup/ArrowPopup;->setVisibility(I)V

    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0d000d

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    new-instance v7, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-direct {p0}, Lcom/android/launcher3/popup/ArrowPopup;->createOpenCloseOutlineProvider()Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;

    move-result-object v8

    invoke-virtual {v8, p0, v3}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v8, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v9, Lcom/android/launcher3/popup/ArrowPopup;->ALPHA:Landroid/util/Property;

    new-array v10, v4, [F

    fill-array-data v10, :array_0

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v9, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v5, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v5, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    sget-object v5, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/Property;

    new-array v6, v1, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v3

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const v5, 0x7f0d000e

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v5, v0

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/launcher3/popup/ArrowPopup$2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/popup/ArrowPopup$2;-><init>(Lcom/android/launcher3/popup/ArrowPopup;)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/Animator;

    new-array v2, v4, [Landroid/animation/Animator;

    aput-object v8, v2, v3

    aput-object v0, v2, v1

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 197
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
