.class public Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mAlpha:I

.field private mGravity:I

.field private mImage:Landroid/graphics/drawable/Drawable;

.field private mXPercent:F

.field private mYPercent:F


# direct methods
.method public constructor <init>(Landroid/content/Context;IFFI)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mImage:Landroid/graphics/drawable/Drawable;

    .line 57
    iput p3, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mXPercent:F

    .line 58
    iput p4, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mYPercent:F

    .line 59
    iput p5, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mGravity:I

    .line 60
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 87
    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 64
    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mAlpha:I

    .line 65
    return-void
.end method

.method public final updateBounds(Landroid/graphics/Rect;)V
    .locals 5

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 74
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mXPercent:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 75
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mYPercent:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v4, p1

    float-to-int p1, v4

    add-int/2addr v3, p1

    .line 76
    iget p1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mGravity:I

    const/4 v4, 0x1

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_0

    .line 77
    div-int/lit8 p1, v0, 0x2

    sub-int/2addr v2, p1

    .line 79
    :cond_0
    iget p1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mGravity:I

    const/16 v4, 0x10

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_1

    .line 80
    div-int/lit8 p1, v1, 0x2

    sub-int/2addr v3, p1

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mImage:Landroid/graphics/drawable/Drawable;

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 83
    return-void
.end method
