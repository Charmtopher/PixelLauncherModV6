.class public Lcom/android/launcher3/graphics/FixedScaleDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "SourceFile"


# instance fields
.field mScaleX:F

.field mScaleY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 26
    const v0, 0x3eeef1fe    # 0.46669f

    iput v0, p0, Lcom/android/launcher3/graphics/FixedScaleDrawable;->mScaleX:F

    .line 27
    iput v0, p0, Lcom/android/launcher3/graphics/FixedScaleDrawable;->mScaleY:F

    .line 28
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 33
    iget v1, p0, Lcom/android/launcher3/graphics/FixedScaleDrawable;->mScaleX:F

    iget v2, p0, Lcom/android/launcher3/graphics/FixedScaleDrawable;->mScaleY:F

    .line 34
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/FixedScaleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/FixedScaleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    .line 33
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 35
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 36
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 37
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 43
    return-void
.end method
