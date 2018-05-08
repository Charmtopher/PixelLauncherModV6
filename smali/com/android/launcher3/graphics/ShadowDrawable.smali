.class public Lcom/android/launcher3/graphics/ShadowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private final mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    new-instance v0, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;-><init>(B)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/graphics/ShadowDrawable;-><init>(Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;)V

    .line 55
    return-void
.end method

.method private constructor <init>(Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mPaint:Landroid/graphics/Paint;

    .line 58
    iput-object p1, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;B)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/ShadowDrawable;-><init>(Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;)V

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 3

    .line 112
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f01002c

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 113
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 114
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    iget-object p1, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget-boolean p1, p1, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIsDark:Z

    if-eq p1, v0, :cond_0

    .line 116
    iget-object p1, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iput-boolean v0, p1, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIsDark:Z

    .line 117
    iget-object p1, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mLastDrawnBitmap:Landroid/graphics/Bitmap;

    .line 118
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/ShadowDrawable;->invalidateSelf()V

    .line 120
    :cond_0
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    invoke-virtual {v0}, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 63
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/ShadowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    return-void

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget-object v1, v1, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mLastDrawnBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 68
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v1, v1, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIntrinsicWidth:I

    iget-object v3, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v3, v3, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIntrinsicHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget-object v4, v4, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v5, v5, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowSize:I

    iget-object v6, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v6, v6, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowSize:I

    iget-object v7, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v7, v7, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIntrinsicWidth:I

    iget-object v8, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v8, v8, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowSize:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v8, v8, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIntrinsicHeight:I

    iget-object v9, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v9, v9, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowSize:I

    sub-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget-boolean v5, v5, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIsDark:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v5, v5, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mDarkTintColor:I

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    :goto_0
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v5, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget-boolean v5, v5, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIsDark:Z

    const/4 v6, 0x0

    if-nez v5, :cond_2

    new-instance v5, Landroid/graphics/Paint;

    const/4 v7, 0x3

    invoke-direct {v5, v7}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v7, Landroid/graphics/BlurMaskFilter;

    iget-object v8, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v8, v8, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowSize:I

    int-to-float v8, v8

    sget-object v9, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v7, v8, v9}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v7, 0x2

    new-array v7, v7, [I

    invoke-virtual {v1, v5, v7}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v9, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v9, v9, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowColor:I

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    aget v9, v7, v6

    int-to-float v9, v9

    const/4 v10, 0x1

    aget v7, v7, v10

    int-to-float v7, v7

    invoke-virtual {v3, v8, v9, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    sget-boolean v3, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    if-eqz v3, :cond_3

    sget-object v3, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v3, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iput-object v1, v3, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mLastDrawnBitmap:Landroid/graphics/Bitmap;

    .line 70
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget-object v1, v1, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mLastDrawnBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 71
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v0, v0, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v0, v0, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 92
    const/4 v0, -0x3

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2

    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 160
    const/4 p2, 0x0

    if-nez p4, :cond_0

    .line 161
    sget-object p4, Lcom/android/launcher3/R$styleable;->ShadowDrawable:[I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    .line 162
    :cond_0
    sget-object p1, Lcom/android/launcher3/R$styleable;->ShadowDrawable:[I

    invoke-virtual {p4, p3, p1, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 164
    :goto_0
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 165
    if-eqz p3, :cond_1

    .line 168
    iget-object p4, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    const/4 v0, 0x1

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p4, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowColor:I

    .line 170
    iget-object p4, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p4, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowSize:I

    .line 172
    iget-object p2, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    const/4 p4, 0x3

    invoke-virtual {p1, p4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    iput p4, p2, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mDarkTintColor:I

    .line 175
    iget-object p2, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p4

    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v1, v1, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowSize:I

    mul-int/2addr v1, v0

    add-int/2addr p4, v1

    iput p4, p2, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIntrinsicHeight:I

    .line 176
    iget-object p2, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v1, v1, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowSize:I

    mul-int/2addr v0, v1

    add-int/2addr p4, v0

    iput p4, p2, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIntrinsicWidth:I

    .line 177
    iget-object p2, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p4

    iput p4, p2, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mChangingConfigurations:I

    .line 179
    iget-object p2, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p3

    iput-object p3, p2, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    return-void

    .line 166
    :cond_1
    :try_start_1
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p3, "missing src attribute"

    invoke-direct {p2, p3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public setAlpha(I)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/ShadowDrawable;->invalidateSelf()V

    .line 77
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/ShadowDrawable;->invalidateSelf()V

    .line 83
    return-void
.end method
