.class public Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field public mBackgroundAnim:Landroid/animation/ObjectAnimator;

.field protected final mHand:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

.field private final mHeight:I

.field protected final mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 101
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 103
    const v1, 0x7f0b003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mWidth:I

    .line 104
    const v1, 0x7f0b003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mHeight:I

    .line 106
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 107
    const v1, 0x7f01002b

    invoke-static {p1, v1}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const v1, 0x7f130010

    goto :goto_0

    .line 109
    :cond_0
    const v1, 0x7f13000f

    :goto_0
    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 110
    new-instance p1, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    const v3, 0x7f020026

    const v4, 0x3f133333    # 0.575f

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;-><init>(Landroid/content/Context;IFFI)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mHand:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    .line 112
    const/4 p1, 0x4

    new-array p1, p1, [Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    .line 113
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    const/4 v7, 0x0

    new-instance v8, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    const v3, 0x7f020027

    const/high16 v4, 0x3ec00000    # 0.375f

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;-><init>(Landroid/content/Context;IFFI)V

    aput-object v8, p1, v7

    .line 115
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    const/4 v7, 0x1

    new-instance v8, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    const v3, 0x7f020028

    const/high16 v4, 0x3ea00000    # 0.3125f

    const v5, 0x3e4ccccd    # 0.2f

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;-><init>(Landroid/content/Context;IFFI)V

    aput-object v8, p1, v7

    .line 117
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    const/4 v7, 0x2

    new-instance v8, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    const v3, 0x7f020029

    const v4, 0x3ef33333    # 0.475f

    const v5, 0x3e851eb8    # 0.26f

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;-><init>(Landroid/content/Context;IFFI)V

    aput-object v8, p1, v7

    .line 119
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    const/4 v7, 0x3

    new-instance v8, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    const v3, 0x7f02002a

    const v4, 0x3f333333    # 0.7f

    const/high16 v5, 0x3e000000    # 0.125f

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;-><init>(Landroid/content/Context;IFFI)V

    aput-object v8, p1, v7

    .line 121
    return-void
.end method


# virtual methods
.method public final cancelAnimator(Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 201
    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 204
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mHand:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 161
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mHand:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    iget v0, v0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->mAlpha:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 197
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    .line 168
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 169
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mHand:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 170
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->invalidateSelf()V

    .line 174
    return-void
.end method

.method public setAlpha(I)V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mHand:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->setAlpha(I)V

    .line 179
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->setAlpha(I)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->invalidateSelf()V

    .line 183
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 193
    return-void
.end method
