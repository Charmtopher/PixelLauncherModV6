.class public Lcom/android/launcher3/util/FlingAnimation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Ljava/lang/Runnable;


# instance fields
.field protected mAX:F

.field protected mAY:F

.field protected final mAlphaInterpolator:Landroid/animation/TimeInterpolator;

.field protected mAnimationTimeFraction:F

.field protected final mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field protected final mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

.field private final mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

.field protected mDuration:I

.field protected mFrom:Landroid/graphics/Rect;

.field protected mIconRect:Landroid/graphics/Rect;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field protected final mUX:F

.field protected final mUY:F


# direct methods
.method public constructor <init>(Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/PointF;Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/Launcher;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mAlphaInterpolator:Landroid/animation/TimeInterpolator;

    .line 43
    iput-object p3, p0, Lcom/android/launcher3/util/FlingAnimation;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    .line 44
    iput-object p4, p0, Lcom/android/launcher3/util/FlingAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 45
    iput-object p1, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    .line 46
    iget p1, p2, Landroid/graphics/PointF;->x:F

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p1, p3

    iput p1, p0, Lcom/android/launcher3/util/FlingAnimation;->mUX:F

    .line 47
    iget p1, p2, Landroid/graphics/PointF;->y:F

    div-float/2addr p1, p3

    iput p1, p0, Lcom/android/launcher3/util/FlingAnimation;->mUY:F

    .line 48
    iget-object p1, p0, Lcom/android/launcher3/util/FlingAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iput-object p1, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/util/FlingAnimation;)Lcom/android/launcher3/Launcher;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/launcher3/util/FlingAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/util/FlingAnimation;)Lcom/android/launcher3/ButtonDropTarget;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/launcher3/util/FlingAnimation;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    return-object p0
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 167
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 168
    iget v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mAnimationTimeFraction:F

    cmpl-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_0

    .line 169
    nop

    .line 173
    move p1, v1

    goto :goto_0

    .line 171
    :cond_0
    iget v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mAnimationTimeFraction:F

    div-float/2addr p1, v0

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    check-cast v0, Lcom/android/launcher3/dragndrop/DragView;

    .line 174
    iget v2, p0, Lcom/android/launcher3/util/FlingAnimation;->mDuration:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    .line 175
    iget v3, p0, Lcom/android/launcher3/util/FlingAnimation;->mUX:F

    mul-float/2addr v3, v2

    iget-object v4, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/launcher3/util/FlingAnimation;->mAX:F

    mul-float/2addr v4, v2

    mul-float/2addr v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/android/launcher3/dragndrop/DragView;->setTranslationX(F)V

    .line 176
    iget v3, p0, Lcom/android/launcher3/util/FlingAnimation;->mUY:F

    mul-float/2addr v3, v2

    iget-object v4, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/launcher3/util/FlingAnimation;->mAY:F

    mul-float/2addr v4, v2

    mul-float/2addr v4, v2

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/android/launcher3/dragndrop/DragView;->setTranslationY(F)V

    .line 177
    iget-object v2, p0, Lcom/android/launcher3/util/FlingAnimation;->mAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->setAlpha(F)V

    .line 178
    return-void
.end method

.method public run()V
    .locals 9

    .line 53
    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    iget-object v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ButtonDropTarget;->getIconRect(Lcom/android/launcher3/DropTarget$DragObject;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mIconRect:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    .line 57
    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v2, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->getScaleX()F

    move-result v0

    .line 59
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 60
    iget-object v3, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v3, v3, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    div-float/2addr v0, v2

    .line 61
    iget-object v3, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 62
    iget-object v3, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    float-to-int v1, v4

    iput v1, v3, Landroid/graphics/Rect;->right:I

    .line 63
    iget-object v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 64
    iget-object v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 65
    iget v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mUY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mUX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    const/4 v1, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v6, p0, Lcom/android/launcher3/util/FlingAnimation;->mUY:F

    iget v7, p0, Lcom/android/launcher3/util/FlingAnimation;->mUY:F

    mul-float/2addr v6, v7

    mul-float v7, v2, v0

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    cmpl-float v7, v6, v1

    if-ltz v7, :cond_0

    iput v5, p0, Lcom/android/launcher3/util/FlingAnimation;->mAY:F

    move v1, v6

    goto :goto_0

    :cond_0
    iget v5, p0, Lcom/android/launcher3/util/FlingAnimation;->mUY:F

    iget v6, p0, Lcom/android/launcher3/util/FlingAnimation;->mUY:F

    mul-float/2addr v5, v6

    neg-float v0, v0

    mul-float/2addr v2, v0

    div-float/2addr v5, v2

    iput v5, p0, Lcom/android/launcher3/util/FlingAnimation;->mAY:F

    :goto_0
    iget v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mUY:F

    neg-float v0, v0

    float-to-double v5, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double/2addr v5, v0

    iget v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mAY:F

    float-to-double v0, v0

    div-double/2addr v5, v0

    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    neg-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lcom/android/launcher3/util/FlingAnimation;->mUX:F

    float-to-double v7, v2

    mul-double/2addr v7, v5

    sub-double/2addr v0, v7

    mul-double/2addr v0, v3

    mul-double v2, v5, v5

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mAX:F

    :goto_1
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v6, p0, Lcom/android/launcher3/util/FlingAnimation;->mUX:F

    iget v7, p0, Lcom/android/launcher3/util/FlingAnimation;->mUX:F

    mul-float/2addr v6, v7

    mul-float v7, v2, v0

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    cmpl-float v7, v6, v1

    if-ltz v7, :cond_2

    iput v5, p0, Lcom/android/launcher3/util/FlingAnimation;->mAX:F

    move v1, v6

    goto :goto_2

    :cond_2
    iget v5, p0, Lcom/android/launcher3/util/FlingAnimation;->mUX:F

    iget v6, p0, Lcom/android/launcher3/util/FlingAnimation;->mUX:F

    mul-float/2addr v5, v6

    neg-float v0, v0

    mul-float/2addr v2, v0

    div-float/2addr v5, v2

    iput v5, p0, Lcom/android/launcher3/util/FlingAnimation;->mAX:F

    :goto_2
    iget v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mUX:F

    neg-float v0, v0

    float-to-double v5, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double/2addr v5, v0

    iget v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mAX:F

    float-to-double v0, v0

    div-double/2addr v5, v0

    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    neg-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lcom/android/launcher3/util/FlingAnimation;->mUY:F

    float-to-double v7, v2

    mul-double/2addr v7, v5

    sub-double/2addr v0, v7

    mul-double/2addr v0, v3

    mul-double v2, v5, v5

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mAY:F

    goto :goto_1

    :goto_3
    iput v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mDuration:I

    .line 67
    iget v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mDuration:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mDuration:I

    add-int/lit16 v1, v1, 0x12c

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mAnimationTimeFraction:F

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->setColor(I)V

    .line 72
    iget v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mDuration:I

    add-int/lit16 v4, v0, 0x12c

    .line 73
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 80
    new-instance v5, Lcom/android/launcher3/util/FlingAnimation$1;

    invoke-direct {v5, p0, v0, v1, v4}, Lcom/android/launcher3/util/FlingAnimation$1;-><init>(Lcom/android/launcher3/util/FlingAnimation;JI)V

    .line 97
    new-instance v6, Lcom/android/launcher3/util/FlingAnimation$2;

    invoke-direct {v6, p0}, Lcom/android/launcher3/util/FlingAnimation$2;-><init>(Lcom/android/launcher3/util/FlingAnimation;)V

    .line 105
    iget-object v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/dragndrop/DragLayer;->animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 107
    return-void
.end method
