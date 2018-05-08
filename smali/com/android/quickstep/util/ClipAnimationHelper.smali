.class public Lcom/android/quickstep/util/ClipAnimationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mClipRect:Landroid/graphics/Rect;

.field public final mHomeStackBounds:Landroid/graphics/Rect;

.field private final mInitialTargetRect:Landroid/graphics/RectF;

.field private final mRectFEvaluator:Lcom/android/systemui/shared/recents/utilities/RectFEvaluator;

.field private final mSourceInsets:Landroid/graphics/Rect;

.field private final mSourceRect:Landroid/graphics/RectF;

.field private final mSourceStackBounds:Landroid/graphics/Rect;

.field private final mSourceWindowClipInsets:Landroid/graphics/RectF;

.field private final mTargetRect:Landroid/graphics/RectF;

.field private final mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mInitialTargetRect:Landroid/graphics/RectF;

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mClipRect:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Lcom/android/systemui/shared/recents/utilities/RectFEvaluator;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/utilities/RectFEvaluator;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mRectFEvaluator:Lcom/android/systemui/shared/recents/utilities/RectFEvaluator;

    .line 56
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public applyTransform([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;F)V
    .locals 7

    .line 96
    iget-object v0, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mRectFEvaluator:Lcom/android/systemui/shared/recents/utilities/RectFEvaluator;

    iget-object v2, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p2, v2, v3}, Lcom/android/systemui/shared/recents/utilities/RectFEvaluator;->evaluate(FLandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 100
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object v0, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mClipRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    mul-float/2addr v2, p2

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 103
    iget-object v0, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mClipRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, p2

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 104
    iget-object v0, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mClipRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 105
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    mul-float/2addr v3, p2

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 106
    iget-object v0, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mClipRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 107
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v3, p2

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 109
    iget-object v0, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 111
    new-instance v0, Lcom/android/systemui/shared/system/TransactionCompat;

    invoke-direct {v0}, Lcom/android/systemui/shared/system/TransactionCompat;-><init>()V

    .line 112
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 113
    iget v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 114
    iget-object v4, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v5, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget-object v6, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 115
    iget-object v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    iget-object v5, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/shared/system/TransactionCompat;->setMatrix(Lcom/android/systemui/shared/system/SurfaceControlCompat;Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/TransactionCompat;

    move-result-object v4

    iget-object v5, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    iget-object v6, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mClipRect:Landroid/graphics/Rect;

    .line 116
    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/shared/system/TransactionCompat;->setWindowCrop(Lcom/android/systemui/shared/system/SurfaceControlCompat;Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/TransactionCompat;

    .line 117
    iget-boolean v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isNotInRecents:Z

    if-eqz v4, :cond_0

    .line 118
    iget-object v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, p2

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/shared/system/TransactionCompat;->setAlpha(Lcom/android/systemui/shared/system/SurfaceControlCompat;F)Lcom/android/systemui/shared/system/TransactionCompat;

    .line 121
    :cond_0
    iget-object v3, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    invoke-virtual {v0, v3}, Lcom/android/systemui/shared/system/TransactionCompat;->show(Lcom/android/systemui/shared/system/SurfaceControlCompat;)Lcom/android/systemui/shared/system/TransactionCompat;

    .line 112
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/shared/system/TransactionCompat;->setEarlyWakeup()Lcom/android/systemui/shared/system/TransactionCompat;

    .line 125
    invoke-virtual {v0}, Lcom/android/systemui/shared/system/TransactionCompat;->apply()V

    .line 126
    return-void

    .line 100
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public offsetTarget(FFF)V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mInitialTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 131
    iget-object v1, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    invoke-static {v1, p1}, Lcom/android/launcher3/Utilities;->scaleRectFAboutCenter(Landroid/graphics/RectF;F)V

    .line 132
    iget-object p1, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    .line 133
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateSource(Landroid/graphics/Rect;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 61
    iget-object p1, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    invoke-virtual {p2}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 62
    iget-object p1, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget-object v0, p2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 65
    iget-object p1, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget-object v0, p2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object p2, p2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 66
    return-void
.end method

.method public updateTargetRect(Landroid/graphics/Rect;)V
    .locals 7

    .line 69
    iget-object v0, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 70
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 71
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 69
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 72
    iget-object v0, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 73
    iget-object p1, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 76
    iget-object p1, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mInitialTargetRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 82
    new-instance p1, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    invoke-direct {p1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 83
    iget-object v0, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    .line 84
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 83
    invoke-static {p1, v0}, Lcom/android/launcher3/Utilities;->scaleRectFAboutCenter(Landroid/graphics/RectF;F)V

    .line 85
    iget-object v0, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 86
    iget-object v0, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 87
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v3, p1, Landroid/graphics/RectF;->top:F

    .line 88
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v4, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 89
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget-object v5, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 90
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 86
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 91
    iget-object v0, p0, Lcom/android/quickstep/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 92
    return-void
.end method
