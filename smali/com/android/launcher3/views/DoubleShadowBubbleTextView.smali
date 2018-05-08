.class public Lcom/android/launcher3/views/DoubleShadowBubbleTextView;
.super Lcom/android/launcher3/BubbleTextView;
.source "SourceFile"


# instance fields
.field private final mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance v0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    .line 48
    iget-object p1, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget p1, p1, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowBlur:F

    iget-object p2, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget p2, p2, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowColor:I

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p3, p2}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->setShadowLayer(FFFI)V

    .line 49
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 54
    iget-object v0, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->skipDoubleShadow(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 56
    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getCurrentTextColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 61
    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget v2, v2, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowBlur:F

    iget-object v3, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget v3, v3, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowColor:I

    .line 62
    invoke-static {v3, v0}, Landroid/support/v4/b/a;->f(II)I

    move-result v3

    .line 61
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->drawWithoutBadge(Landroid/graphics/Canvas;)V

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 66
    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getExtendedPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 67
    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    .line 68
    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 66
    invoke-virtual {p1, v1, v2, v3, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 70
    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget v2, v2, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowBlur:F

    iget-object v3, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget v3, v3, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowOffset:F

    iget-object v5, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget v5, v5, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowColor:I

    .line 71
    invoke-static {v5, v0}, Landroid/support/v4/b/a;->f(II)I

    move-result v0

    .line 70
    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->drawWithoutBadge(Landroid/graphics/Canvas;)V

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->drawBadgeIfNecessary(Landroid/graphics/Canvas;)V

    .line 76
    return-void
.end method
