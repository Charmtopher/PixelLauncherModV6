.class public Lcom/android/launcher3/badge/BadgeRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBackgroundWithShadow:Landroid/graphics/Bitmap;

.field private final mBitmapOffset:F

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private final mCircleRadius:F

.field private final mDotCenterOffset:F

.field private final mOffset:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mCirclePaint:Landroid/graphics/Paint;

    .line 58
    int-to-float p1, p1

    const v0, 0x3ec28f5c    # 0.38f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mDotCenterOffset:F

    .line 59
    const v0, 0x3ca3d70a    # 0.02f

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mOffset:I

    .line 61
    iget p1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mDotCenterOffset:F

    const v0, 0x3f19999a    # 0.6f

    mul-float/2addr v0, p1

    float-to-int p1, v0

    .line 62
    new-instance v0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;-><init>(I)V

    .line 63
    int-to-float v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x42000000    # 32.0f

    div-float v2, v1, v2

    iput v2, v0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->shadowBlur:F

    const/high16 v2, 0x41800000    # 16.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->keyShadowDistance:F

    invoke-virtual {v0, p1, p1}, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->createPill(II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mBackgroundWithShadow:Landroid/graphics/Bitmap;

    .line 64
    iget p1, v0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->radius:F

    iput p1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mCircleRadius:F

    .line 66
    iget-object p1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mBackgroundWithShadow:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mBitmapOffset:F

    .line 67
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;ILandroid/graphics/Rect;FLandroid/graphics/Point;)V
    .locals 3

    .line 79
    if-eqz p3, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 85
    iget v0, p3, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mDotCenterOffset:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 86
    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    iget v1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mDotCenterOffset:F

    div-float/2addr v1, v2

    add-float/2addr p3, v1

    .line 88
    iget v1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mOffset:I

    iget v2, p5, Landroid/graphics/Point;->x:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 89
    iget v2, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mOffset:I

    iget p5, p5, Landroid/graphics/Point;->y:I

    invoke-static {v2, p5}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 90
    int-to-float v1, v1

    add-float/2addr v0, v1

    int-to-float p5, p5

    sub-float/2addr p3, p5

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 91
    invoke-virtual {p1, p4, p4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 93
    iget-object p3, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mCirclePaint:Landroid/graphics/Paint;

    const/high16 p4, -0x1000000

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object p3, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mBackgroundWithShadow:Landroid/graphics/Bitmap;

    iget p4, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mBitmapOffset:F

    iget p5, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mBitmapOffset:F

    iget-object v0, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, p5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 95
    iget-object p3, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget p2, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mCircleRadius:F

    iget-object p3, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mCirclePaint:Landroid/graphics/Paint;

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 98
    return-void

    .line 80
    :cond_1
    :goto_0
    const-string p1, "BadgeRenderer"

    const-string p2, "Invalid null argument(s) passed in call to draw."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method
