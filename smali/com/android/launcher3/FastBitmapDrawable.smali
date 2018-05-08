.class public Lcom/android/launcher3/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static final SCALE:Landroid/util/Property;

.field private static final sCachedFilter:Landroid/util/SparseArray;

.field private static final sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

.field private static final sTempFilterMatrix:Landroid/graphics/ColorMatrix;


# instance fields
.field private mAlpha:I

.field public mBitmap:Landroid/graphics/Bitmap;

.field private mBrightness:I

.field private mDesaturation:I

.field public final mIconColor:I

.field private mIsDisabled:Z

.field private mIsPressed:Z

.field protected final mPaint:Landroid/graphics/Paint;

.field private mPrevUpdateKey:I

.field mScale:F

.field mScaleAnimation:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/launcher3/FastBitmapDrawable;->sCachedFilter:Landroid/util/SparseArray;

    .line 57
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/FastBitmapDrawable;->sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

    .line 58
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/FastBitmapDrawable;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    .line 68
    new-instance v0, Lcom/android/launcher3/FastBitmapDrawable$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "scale"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/FastBitmapDrawable$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/FastBitmapDrawable;->SCALE:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 2

    .line 104
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 82
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mScale:F

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mDesaturation:I

    .line 88
    iput v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    .line 89
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mAlpha:I

    .line 90
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPrevUpdateKey:I

    .line 105
    iput-object p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 106
    iput p2, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIconColor:I

    .line 107
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/FastBitmapDrawable;->setFilterBitmap(Z)V

    .line 108
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/ItemInfoWithIcon;)V
    .locals 1

    .line 101
    iget-object v0, p1, Lcom/android/launcher3/ItemInfoWithIcon;->iconBitmap:Landroid/graphics/Bitmap;

    iget p1, p1, Lcom/android/launcher3/ItemInfoWithIcon;->iconColor:I

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/graphics/BitmapInfo;)V
    .locals 1

    .line 97
    iget-object v0, p1, Lcom/android/launcher3/graphics/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget p1, p1, Lcom/android/launcher3/graphics/BitmapInfo;->color:I

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/FastBitmapDrawable;)F
    .locals 0

    .line 39
    iget p0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mScale:F

    return p0
.end method

.method static synthetic access$002(Lcom/android/launcher3/FastBitmapDrawable;F)F
    .locals 0

    .line 39
    iput p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mScale:F

    return p1
.end method

.method private updateFilter()V
    .locals 7

    .line 269
    nop

    .line 270
    nop

    .line 271
    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mDesaturation:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 272
    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mDesaturation:I

    shl-int/lit8 v0, v0, 0x10

    iget v3, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    or-int/2addr v0, v3

    .line 283
    :goto_0
    move v3, v2

    goto :goto_1

    .line 273
    :cond_0
    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    if-lez v0, :cond_1

    .line 275
    const/high16 v0, 0x10000

    iget v3, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    or-int/2addr v0, v3

    .line 279
    const/4 v3, 0x1

    goto :goto_1

    .line 283
    :cond_1
    move v0, v1

    goto :goto_0

    :goto_1
    iget v4, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPrevUpdateKey:I

    if-ne v0, v4, :cond_2

    .line 284
    return-void

    .line 286
    :cond_2
    iput v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPrevUpdateKey:I

    .line 288
    if-eq v0, v1, :cond_6

    .line 289
    sget-object v1, Lcom/android/launcher3/FastBitmapDrawable;->sCachedFilter:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorFilter;

    .line 290
    if-nez v1, :cond_5

    .line 291
    iget v1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    int-to-float v1, v1

    const/high16 v4, 0x42400000    # 48.0f

    div-float/2addr v1, v4

    .line 292
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    .line 293
    if-eqz v3, :cond_3

    .line 294
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/16 v2, 0xff

    invoke-static {v4, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    .line 297
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/FastBitmapDrawable;->getDesaturation()F

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v3, v5, v3

    .line 298
    sget-object v6, Lcom/android/launcher3/FastBitmapDrawable;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v6, v3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 299
    iget v3, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    if-lez v3, :cond_4

    .line 301
    sub-float/2addr v5, v1

    .line 302
    sget-object v1, Lcom/android/launcher3/FastBitmapDrawable;->sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v1

    .line 303
    aput v5, v1, v2

    .line 304
    const/4 v2, 0x6

    aput v5, v1, v2

    .line 305
    const/16 v2, 0xc

    aput v5, v1, v2

    .line 306
    const/4 v2, 0x4

    int-to-float v3, v4

    aput v3, v1, v2

    .line 307
    const/16 v2, 0x9

    aput v3, v1, v2

    .line 308
    const/16 v2, 0xe

    aput v3, v1, v2

    .line 309
    sget-object v1, Lcom/android/launcher3/FastBitmapDrawable;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    sget-object v2, Lcom/android/launcher3/FastBitmapDrawable;->sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    .line 311
    :cond_4
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v2, Lcom/android/launcher3/FastBitmapDrawable;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 313
    :goto_2
    sget-object v2, Lcom/android/launcher3/FastBitmapDrawable;->sCachedFilter:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 315
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 316
    goto :goto_3

    .line 317
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 319
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher3/FastBitmapDrawable;->invalidateSelf()V

    .line 320
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 114
    invoke-virtual {p0}, Lcom/android/launcher3/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 115
    iget v2, p0, Lcom/android/launcher3/FastBitmapDrawable;->mScale:F

    iget v3, p0, Lcom/android/launcher3/FastBitmapDrawable;->mScale:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 116
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/FastBitmapDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 117
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 118
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/FastBitmapDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 121
    return-void
.end method

.method public drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 125
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mAlpha:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3

    .line 324
    new-instance v0, Lcom/android/launcher3/FastBitmapDrawable$MyConstantState;

    iget-object v1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIconColor:I

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/FastBitmapDrawable$MyConstantState;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0
.end method

.method public getDesaturation()F
    .locals 2

    .line 247
    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mDesaturation:I

    int-to-float v0, v0

    const/high16 v1, 0x42400000    # 48.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/android/launcher3/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/android/launcher3/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 134
    const/4 v0, -0x3

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 6

    .line 193
    nop

    .line 194
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    aget v4, p1, v2

    .line 195
    const v5, 0x10100a7

    if-ne v4, v5, :cond_0

    .line 196
    nop

    .line 197
    nop

    .line 200
    move p1, v3

    goto :goto_1

    .line 194
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    :cond_1
    move p1, v1

    :goto_1
    iget-boolean v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIsPressed:Z

    if-eq v0, p1, :cond_4

    .line 201
    iput-boolean p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIsPressed:Z

    .line 203
    iget-object p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_2

    .line 204
    iget-object p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 205
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 208
    :cond_2
    iget-boolean p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIsPressed:Z

    if-eqz p1, :cond_3

    .line 210
    sget-object p1, Lcom/android/launcher3/FastBitmapDrawable;->SCALE:Landroid/util/Property;

    new-array v0, v3, [F

    const v2, 0x3f8ccccd    # 1.1f

    aput v2, v0, v1

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 211
    iget-object p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 212
    iget-object p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 213
    iget-object p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_2

    .line 215
    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mScale:F

    .line 216
    invoke-virtual {p0}, Lcom/android/launcher3/FastBitmapDrawable;->invalidateSelf()V

    .line 218
    :goto_2
    return v3

    .line 220
    :cond_4
    return v1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 139
    iput p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mAlpha:I

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 141
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 130
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 147
    return-void
.end method

.method public final setIsDisabled(Z)V
    .locals 4

    .line 229
    iget-boolean v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIsDisabled:Z

    if-eq v0, p1, :cond_3

    .line 230
    iput-boolean p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIsDisabled:Z

    .line 231
    iget-boolean p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIsDisabled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr p1, v1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int p1, v2

    iget v2, p0, Lcom/android/launcher3/FastBitmapDrawable;->mDesaturation:I

    if-eq v2, p1, :cond_1

    iput p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mDesaturation:I

    invoke-direct {p0}, Lcom/android/launcher3/FastBitmapDrawable;->updateFilter()V

    :cond_1
    iget-boolean p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIsDisabled:Z

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f000000    # 0.5f

    nop

    :cond_2
    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    if-eq v0, p1, :cond_3

    iput p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    invoke-direct {p0}, Lcom/android/launcher3/FastBitmapDrawable;->updateFilter()V

    .line 233
    :cond_3
    return-void
.end method
