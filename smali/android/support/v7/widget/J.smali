.class public Landroid/support/v7/widget/J;
.super Landroid/support/v7/widget/au;
.source "SourceFile"


# instance fields
.field protected final pK:Landroid/view/animation/LinearInterpolator;

.field protected final pL:Landroid/view/animation/DecelerateInterpolator;

.field protected pM:Landroid/graphics/PointF;

.field private final pN:F

.field protected pO:I

.field protected pP:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Landroid/support/v7/widget/au;-><init>()V

    .line 81
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/J;->pK:Landroid/view/animation/LinearInterpolator;

    .line 83
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/J;->pL:Landroid/view/animation/DecelerateInterpolator;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/J;->pO:I

    iput v0, p0, Landroid/support/v7/widget/J;->pP:I

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x41c80000    # 25.0f

    div-float/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/J;->pN:F

    .line 95
    return-void
.end method

.method private r(II)I
    .locals 0

    .line 255
    nop

    .line 256
    sub-int p2, p1, p2

    .line 257
    mul-int/2addr p1, p2

    if-gtz p1, :cond_0

    .line 258
    const/4 p1, 0x0

    return p1

    .line 260
    :cond_0
    return p2
.end method


# virtual methods
.method protected final T(I)I
    .locals 2

    .line 194
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Landroid/support/v7/widget/J;->pN:F

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method protected final a(IILandroid/support/v7/widget/av;)V
    .locals 2

    .line 127
    iget-object v0, p0, Landroid/support/v7/widget/au;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Landroid/support/v7/widget/J;->stop()V

    .line 129
    return-void

    .line 137
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/J;->pO:I

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/J;->r(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/J;->pO:I

    .line 138
    iget p1, p0, Landroid/support/v7/widget/J;->pP:I

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/J;->r(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/J;->pP:I

    .line 140
    iget p1, p0, Landroid/support/v7/widget/J;->pO:I

    if-nez p1, :cond_3

    iget p1, p0, Landroid/support/v7/widget/J;->pP:I

    if-nez p1, :cond_3

    .line 141
    iget p1, p0, Landroid/support/v7/widget/au;->qt:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/J;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_2

    iget p2, p1, Landroid/graphics/PointF;->x:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_1

    iget p2, p1, Landroid/graphics/PointF;->y:F

    cmpl-float p2, p2, v0

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr p2, v0

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p2, v0

    iget v0, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/PointF;->y:F

    iput-object p1, p0, Landroid/support/v7/widget/J;->pM:Landroid/graphics/PointF;

    iget p2, p1, Landroid/graphics/PointF;->x:F

    const v0, 0x461c4000    # 10000.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Landroid/support/v7/widget/J;->pO:I

    iget p1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Landroid/support/v7/widget/J;->pP:I

    const/16 p1, 0x2710

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/J;->T(I)I

    move-result p1

    iget p2, p0, Landroid/support/v7/widget/J;->pO:I

    int-to-float p2, p2

    const v0, 0x3f99999a    # 1.2f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iget v1, p0, Landroid/support/v7/widget/J;->pP:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Landroid/support/v7/widget/J;->pK:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p3, p2, v1, p1, v0}, Landroid/support/v7/widget/av;->a(IIILandroid/view/animation/Interpolator;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget p1, p0, Landroid/support/v7/widget/au;->qt:I

    iput p1, p3, Landroid/support/v7/widget/av;->qx:I

    invoke-virtual {p0}, Landroid/support/v7/widget/J;->stop()V

    return-void

    .line 144
    :cond_3
    :goto_1
    return-void
.end method

.method protected final a(Landroid/view/View;Landroid/support/v7/widget/av;)V
    .locals 11

    .line 110
    iget-object v0, p0, Landroid/support/v7/widget/J;->pM:Landroid/graphics/PointF;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/J;->pM:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/J;->pM:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    move v10, v2

    goto :goto_1

    :cond_1
    move v10, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v10, v3

    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/au;->pR:Landroid/support/v7/widget/af;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->canScrollHorizontally()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/aj;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/af;->getDecoratedLeft(Landroid/view/View;)I

    move-result v6

    iget v7, v5, Landroid/support/v7/widget/aj;->leftMargin:I

    sub-int/2addr v6, v7

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/af;->getDecoratedRight(Landroid/view/View;)I

    move-result v7

    iget v5, v5, Landroid/support/v7/widget/aj;->rightMargin:I

    add-int/2addr v7, v5

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->getPaddingLeft()I

    move-result v8

    iget v5, v0, Landroid/support/v7/widget/af;->mWidth:I

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->getPaddingRight()I

    move-result v0

    sub-int v9, v5, v0

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/support/v7/widget/J;->c(IIIII)I

    move-result v0

    goto :goto_3

    .line 111
    :cond_4
    :goto_2
    move v0, v3

    :goto_3
    iget-object v5, p0, Landroid/support/v7/widget/J;->pM:Landroid/graphics/PointF;

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/support/v7/widget/J;->pM:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v5, v5, v4

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    iget-object v5, p0, Landroid/support/v7/widget/J;->pM:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v5, v4

    if-lez v4, :cond_6

    move v10, v2

    goto :goto_5

    :cond_6
    move v10, v1

    goto :goto_5

    :cond_7
    :goto_4
    move v10, v3

    :goto_5
    iget-object v1, p0, Landroid/support/v7/widget/au;->pR:Landroid/support/v7/widget/af;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/support/v7/widget/af;->canScrollVertically()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/aj;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/af;->getDecoratedTop(Landroid/view/View;)I

    move-result v3

    iget v4, v2, Landroid/support/v7/widget/aj;->topMargin:I

    sub-int v6, v3, v4

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/af;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    iget v2, v2, Landroid/support/v7/widget/aj;->bottomMargin:I

    add-int v7, p1, v2

    invoke-virtual {v1}, Landroid/support/v7/widget/af;->getPaddingTop()I

    move-result v8

    iget p1, v1, Landroid/support/v7/widget/af;->mHeight:I

    invoke-virtual {v1}, Landroid/support/v7/widget/af;->getPaddingBottom()I

    move-result v1

    sub-int v9, p1, v1

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/support/v7/widget/J;->c(IIIII)I

    move-result v3

    nop

    .line 112
    :cond_9
    :goto_6
    mul-int p1, v0, v0

    mul-int v1, v3, v3

    add-int/2addr p1, v1

    int-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int p1, v1

    .line 113
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/J;->T(I)I

    move-result p1

    int-to-double v1, p1

    const-wide v4, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    .line 114
    if-lez p1, :cond_a

    .line 115
    neg-int v0, v0

    neg-int v1, v3

    iget-object v2, p0, Landroid/support/v7/widget/J;->pL:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p2, v0, v1, p1, v2}, Landroid/support/v7/widget/av;->a(IIILandroid/view/animation/Interpolator;)V

    .line 117
    :cond_a
    return-void
.end method

.method public final c(IIIII)I
    .locals 0

    .line 269
    packed-switch p5, :pswitch_data_0

    .line 285
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 273
    :pswitch_0
    sub-int/2addr p4, p2

    return p4

    .line 275
    :pswitch_1
    sub-int/2addr p3, p1

    .line 276
    if-lez p3, :cond_0

    .line 277
    return p3

    .line 279
    :cond_0
    sub-int/2addr p4, p2

    .line 280
    if-gez p4, :cond_1

    .line 281
    return p4

    .line 288
    :cond_1
    const/4 p1, 0x0

    return p1

    .line 271
    :pswitch_2
    sub-int/2addr p3, p1

    return p3

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final onStop()V
    .locals 1

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/J;->pP:I

    iput v0, p0, Landroid/support/v7/widget/J;->pO:I

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/J;->pM:Landroid/graphics/PointF;

    .line 153
    return-void
.end method
