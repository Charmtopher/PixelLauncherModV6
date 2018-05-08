.class public Lcom/android/launcher3/graphics/NinePatchDrawHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mDst:Landroid/graphics/RectF;

.field private final mSrc:Landroid/graphics/Rect;

.field public final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->mSrc:Landroid/graphics/Rect;

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->mDst:Landroid/graphics/RectF;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method private drawRegion(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIFF)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->mSrc:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->left:I

    .line 92
    iget-object p3, p0, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->mSrc:Landroid/graphics/Rect;

    iput p4, p3, Landroid/graphics/Rect;->right:I

    .line 94
    iget-object p3, p0, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->mDst:Landroid/graphics/RectF;

    iput p5, p3, Landroid/graphics/RectF;->left:F

    .line 95
    iget-object p3, p0, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->mDst:Landroid/graphics/RectF;

    iput p6, p3, Landroid/graphics/RectF;->right:F

    .line 96
    iget-object p3, p0, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->mSrc:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->mDst:Landroid/graphics/RectF;

    iget-object p5, p0, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 97
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;FFF)V
    .locals 12

    move-object v7, p0

    move/from16 v0, p4

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 45
    iget-object v2, v7, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->mSrc:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 46
    iget-object v2, v7, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->mSrc:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 47
    iget-object v2, v7, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->mDst:Landroid/graphics/RectF;

    iput v0, v2, Landroid/graphics/RectF;->top:F

    .line 48
    iget-object v2, v7, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->mDst:Landroid/graphics/RectF;

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v9, v8, 0x2

    int-to-float v10, v9

    add-float v11, p3, v10

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v4, v9

    move v5, p3

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->drawRegion(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIFF)V

    sub-float v10, p5, v10

    move v3, v9

    move v4, v8

    move v5, v10

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->drawRegion(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIFF)V

    add-int/lit8 v3, v9, -0x5

    add-int/lit8 v4, v9, 0x5

    move v5, v11

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->drawRegion(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIFF)V

    .line 50
    return-void
.end method
