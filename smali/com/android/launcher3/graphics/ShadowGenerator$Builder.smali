.class public Lcom/android/launcher3/graphics/ShadowGenerator$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ambientShadowAlpha:I

.field public final bounds:Landroid/graphics/RectF;

.field public final color:I

.field public keyShadowAlpha:I

.field public keyShadowDistance:F

.field public radius:F

.field public shadowBlur:F


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    .line 110
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->ambientShadowAlpha:I

    .line 115
    const/16 v0, 0x3d

    iput v0, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->keyShadowAlpha:I

    .line 119
    iput p1, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->color:I

    .line 120
    return-void
.end method


# virtual methods
.method public final createPill(II)Landroid/graphics/Bitmap;
    .locals 5

    .line 129
    div-int/lit8 v0, p2, 0x2

    int-to-float v1, v0

    iput v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->radius:F

    .line 131
    div-int/lit8 v1, p1, 0x2

    int-to-float v2, v1

    iget v3, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->shadowBlur:F

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 132
    iget v3, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->radius:F

    iget v4, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->shadowBlur:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->keyShadowDistance:F

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 133
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 134
    iget-object v3, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 135
    iget-object p1, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    sub-int p2, v2, v1

    int-to-float p2, p2

    sub-int v0, v2, v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 137
    mul-int/lit8 v2, v2, 0x2

    .line 138
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 139
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->drawShadow(Landroid/graphics/Canvas;)V

    .line 140
    return-object p1
.end method

.method public final drawShadow(Landroid/graphics/Canvas;)V
    .locals 6

    .line 144
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 145
    iget v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    iget v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->shadowBlur:F

    iget v2, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->keyShadowDistance:F

    iget v3, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->keyShadowAlpha:I

    .line 149
    const/high16 v4, -0x1000000

    invoke-static {v4, v3}, Landroid/support/v4/b/a;->f(II)I

    move-result v3

    .line 148
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 150
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->radius:F

    iget v3, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->radius:F

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 153
    iget v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->shadowBlur:F

    iget v2, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->ambientShadowAlpha:I

    .line 154
    invoke-static {v4, v2}, Landroid/support/v4/b/a;->f(II)I

    move-result v2

    .line 153
    invoke-virtual {v0, v1, v5, v5, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 155
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->radius:F

    iget v3, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->radius:F

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 157
    iget v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->color:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v2, 0xff

    if-ge v1, v2, :cond_0

    .line 159
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 160
    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 161
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->radius:F

    iget v3, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->radius:F

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 164
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 165
    iget v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->radius:F

    iget v3, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->radius:F

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 168
    :cond_0
    return-void
.end method
