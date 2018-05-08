.class public Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# static fields
.field private static final MAX_ALPHA:F = 0.8f

.field private static final MIN_ALPHA:F = 0.1f


# instance fields
.field protected mAlpha:F

.field protected mClipBounds:Landroid/graphics/Rect;

.field protected mClipRect:Landroid/graphics/Rect;

.field protected mCornerRadius:I

.field protected mLastClipBounds:Landroid/graphics/Rect;

.field protected mSourceView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipBounds:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mLastClipBounds:Landroid/graphics/Rect;

    .line 40
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mAlpha:F

    .line 43
    iput-object p1, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    .line 44
    iput p2, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mCornerRadius:I

    .line 45
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .line 85
    iget v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mAlpha:F

    return v0
.end method

.method public getClipBottom()I
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getClipBounds()Landroid/graphics/Rect;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getClipTop()I
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 57
    iget p1, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mAlpha:F

    const v0, 0x3dcccccd    # 0.1f

    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {p1, v0, v1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->mapRange(FFF)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 58
    iget p1, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mCornerRadius:I

    if-lez p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object p1, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int v3, p1, v0

    iget-object p1, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v4, p1, v0

    iget p1, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mCornerRadius:I

    int-to-float v5, p1

    .line 59
    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    .line 65
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    .line 66
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 64
    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/graphics/Outline;->setRect(IIII)V

    .line 68
    return-void
.end method

.method public reset()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->updateClipBounds()V

    .line 53
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 74
    iget v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mAlpha:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iput p1, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mAlpha:F

    .line 77
    iget-object p1, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidateOutline()V

    .line 79
    :cond_0
    return-void
.end method

.method public setClipBottom(I)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->updateClipBounds()V

    .line 109
    return-void
.end method

.method public setClipTop(I)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->updateClipBounds()V

    .line 94
    return-void
.end method

.method protected updateClipBounds()V
    .locals 7

    .line 126
    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    .line 127
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    .line 128
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v5, v2

    .line 126
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mLastClipBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidateOutline()V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mLastClipBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 135
    :cond_0
    return-void
.end method
