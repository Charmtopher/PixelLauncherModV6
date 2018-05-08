.class public Lcom/android/launcher3/views/TopRoundedCornerView;
.super Lcom/android/launcher3/views/SpringRelativeLayout;
.source "SourceFile"


# instance fields
.field private final mClipPath:Landroid/graphics/Path;

.field public mNavBarScrimHeight:I

.field private final mNavBarScrimPaint:Landroid/graphics/Paint;

.field private mRadii:[F

.field private final mRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/TopRoundedCornerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/SpringRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/views/TopRoundedCornerView;->mRect:Landroid/graphics/RectF;

    .line 35
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/views/TopRoundedCornerView;->mClipPath:Landroid/graphics/Path;

    .line 39
    const/4 p2, 0x0

    iput p2, p0, Lcom/android/launcher3/views/TopRoundedCornerView;->mNavBarScrimHeight:I

    .line 44
    invoke-virtual {p0}, Lcom/android/launcher3/views/TopRoundedCornerView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0b008a

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 45
    const/16 v0, 0x8

    new-array v0, v0, [F

    int-to-float p3, p3

    aput p3, v0, p2

    const/4 p2, 0x1

    aput p3, v0, p2

    const/4 p2, 0x2

    aput p3, v0, p2

    const/4 p2, 0x3

    aput p3, v0, p2

    const/4 p2, 0x0

    const/4 p3, 0x4

    aput p2, v0, p3

    const/4 p3, 0x5

    aput p2, v0, p3

    const/4 p3, 0x6

    aput p2, v0, p3

    const/4 p3, 0x7

    aput p2, v0, p3

    iput-object v0, p0, Lcom/android/launcher3/views/TopRoundedCornerView;->mRadii:[F

    .line 47
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/views/TopRoundedCornerView;->mNavBarScrimPaint:Landroid/graphics/Paint;

    .line 48
    iget-object p2, p0, Lcom/android/launcher3/views/TopRoundedCornerView;->mNavBarScrimPaint:Landroid/graphics/Paint;

    const p3, 0x7f010027

    invoke-static {p1, p3}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/views/TopRoundedCornerView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 66
    invoke-super {p0, p1}, Lcom/android/launcher3/views/SpringRelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 69
    iget v0, p0, Lcom/android/launcher3/views/TopRoundedCornerView;->mNavBarScrimHeight:I

    if-lez v0, :cond_0

    .line 70
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/views/TopRoundedCornerView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/views/TopRoundedCornerView;->mNavBarScrimHeight:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/launcher3/views/TopRoundedCornerView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/android/launcher3/views/TopRoundedCornerView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/launcher3/views/TopRoundedCornerView;->mNavBarScrimPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 73
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 77
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/views/SpringRelativeLayout;->onMeasure(II)V

    .line 78
    iget-object p1, p0, Lcom/android/launcher3/views/TopRoundedCornerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/launcher3/views/TopRoundedCornerView;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/android/launcher3/views/TopRoundedCornerView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 79
    iget-object p1, p0, Lcom/android/launcher3/views/TopRoundedCornerView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 80
    iget-object p1, p0, Lcom/android/launcher3/views/TopRoundedCornerView;->mClipPath:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/android/launcher3/views/TopRoundedCornerView;->mRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/launcher3/views/TopRoundedCornerView;->mRadii:[F

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 81
    return-void
.end method
