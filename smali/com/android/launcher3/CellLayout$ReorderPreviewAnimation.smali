.class Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/animation/Animator;

.field final child:Landroid/view/View;

.field finalDeltaX:F

.field finalDeltaY:F

.field final finalScale:F

.field initDeltaX:F

.field initDeltaY:F

.field initScale:F

.field final mode:I

.field repeating:Z

.field final synthetic this$0:Lcom/android/launcher3/CellLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;Landroid/view/View;IIIIIII)V
    .locals 14

    move-object v0, p0

    move-object v7, p1

    move/from16 v8, p3

    .line 1910
    iput-object v7, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1898
    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->repeating:Z

    .line 1911
    iget-object v6, v7, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    move-object v1, v7

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p8

    move/from16 v5, p9

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 1912
    iget-object v1, v7, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    aget v10, v1, v9

    .line 1913
    iget-object v1, v7, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    const/4 v11, 0x1

    aget v12, v1, v11

    .line 1914
    iget-object v6, v7, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    move-object v1, v7

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 1915
    iget-object v1, v7, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    aget v1, v1, v9

    .line 1916
    iget-object v2, v7, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    aget v2, v2, v11

    .line 1917
    sub-int/2addr v1, v10

    .line 1918
    sub-int/2addr v2, v12

    .line 1920
    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    .line 1921
    iput v8, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->mode:I

    .line 1922
    invoke-virtual {v0, v9}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->setInitialAnimationValues(Z)V

    .line 1923
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v4, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    iget v4, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initScale:F

    mul-float/2addr v3, v4

    iput v3, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalScale:F

    .line 1924
    iget v3, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaX:F

    iput v3, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    .line 1925
    iget v3, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaY:F

    iput v3, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    .line 1926
    if-nez v8, :cond_0

    const/4 v11, -0x1

    nop

    .line 1927
    :cond_0
    if-ne v1, v2, :cond_1

    if-eqz v1, :cond_4

    .line 1929
    :cond_1
    if-nez v2, :cond_2

    .line 1930
    iget v2, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    neg-int v3, v11

    int-to-float v3, v3

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v3, v1

    iget v1, v7, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    return-void

    .line 1931
    :cond_2
    if-nez v1, :cond_3

    .line 1932
    iget v1, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    neg-int v3, v11

    int-to-float v3, v3

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v3, v2

    iget v2, v7, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    return-void

    .line 1934
    :cond_3
    int-to-float v2, v2

    int-to-float v1, v1

    div-float v3, v2, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    .line 1935
    iget v5, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    neg-int v6, v11

    int-to-float v6, v6

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v1, v6

    float-to-double v8, v1

    .line 1936
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    iget v1, v7, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    float-to-double v12, v1

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-int v1, v8

    int-to-float v1, v1

    add-float/2addr v5, v1

    iput v5, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    .line 1937
    iget v1, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v6, v2

    float-to-double v5, v6

    .line 1938
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v4, v7, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    float-to-double v7, v4

    mul-double/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    mul-double/2addr v5, v2

    double-to-int v2, v5

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    .line 1941
    :cond_4
    return-void
.end method


# virtual methods
.method final completeAnimationImmediately()V
    .locals 3

    .line 2022
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 2023
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2026
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->setInitialAnimationValues(Z)V

    .line 2027
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    new-instance v1, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {v1}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    iget v2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initScale:F

    .line 2029
    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaX:F

    .line 2030
    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/PropertyListBuilder;->translationX(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaY:F

    .line 2031
    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/PropertyListBuilder;->translationY(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v1

    .line 2032
    invoke-virtual {v1}, Lcom/android/launcher3/anim/PropertyListBuilder;->build()[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 2027
    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 2033
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    .line 2034
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2035
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 2036
    return-void
.end method

.method final setInitialAnimationValues(Z)V
    .locals 1

    .line 1944
    if-eqz p1, :cond_1

    .line 1945
    iget-object p1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    instance-of p1, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz p1, :cond_0

    .line 1946
    iget-object p1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    check-cast p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 1947
    iget v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mScaleToFit:F

    iput v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initScale:F

    .line 1948
    iget-object v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mTranslationForCentering:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaX:F

    .line 1949
    iget-object p1, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mTranslationForCentering:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaY:F

    .line 1950
    return-void

    .line 1951
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initScale:F

    .line 1952
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaX:F

    .line 1953
    iput p1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaY:F

    return-void

    .line 1956
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initScale:F

    .line 1957
    iget-object p1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaX:F

    .line 1958
    iget-object p1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaY:F

    .line 1960
    return-void
.end method
