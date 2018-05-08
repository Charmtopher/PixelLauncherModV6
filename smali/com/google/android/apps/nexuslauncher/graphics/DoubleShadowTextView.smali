.class public Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private final mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance v0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    .line 27
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget p1, p1, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowBlur:F

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget p2, p2, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowOffset:F

    add-float/2addr p1, p2

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget p2, p2, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowBlur:F

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget p2, p2, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowColor:I

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p3, p2}, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->setShadowLayer(FFFI)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 34
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->skipDoubleShadow(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 36
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget v1, v1, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowBlur:F

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget v2, v2, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowColor:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 41
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 42
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget v1, v1, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowBlur:F

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget v2, v2, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowOffset:F

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget v4, v4, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowColor:I

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 44
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 45
    return-void
.end method
