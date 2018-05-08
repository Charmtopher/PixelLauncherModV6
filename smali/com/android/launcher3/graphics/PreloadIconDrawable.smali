.class public Lcom/android/launcher3/graphics/PreloadIconDrawable;
.super Lcom/android/launcher3/FastBitmapDrawable;
.source "SourceFile"


# static fields
.field private static final INTERNAL_STATE:Landroid/util/Property;

.field private static final sShadowCache:Landroid/util/SparseArray;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentAnim:Landroid/animation/ObjectAnimator;

.field private mIconScale:F

.field private final mIndicatorColor:I

.field public mInternalStateProgress:F

.field private final mPathMeasure:Landroid/graphics/PathMeasure;

.field private final mProgressPaint:Landroid/graphics/Paint;

.field private final mProgressPath:Landroid/graphics/Path;

.field public mRanFinishAnimation:Z

.field private final mScaledProgressPath:Landroid/graphics/Path;

.field private final mScaledTrackPath:Landroid/graphics/Path;

.field private mShadowBitmap:Landroid/graphics/Bitmap;

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private mTrackAlpha:I

.field private mTrackLength:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Lcom/android/launcher3/graphics/PreloadIconDrawable$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "internalStateProgress"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/graphics/PreloadIconDrawable$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->INTERNAL_STATE:Landroid/util/Property;

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->sShadowCache:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/ItemInfoWithIcon;Landroid/graphics/Path;Landroid/content/Context;)V
    .locals 1

    .line 108
    invoke-direct {p0, p1}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 77
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 78
    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 109
    iput-object p3, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPath:Landroid/graphics/Path;

    .line 111
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledTrackPath:Landroid/graphics/Path;

    .line 112
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledProgressPath:Landroid/graphics/Path;

    .line 114
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    .line 115
    iget-object p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    iget-object p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 117
    iget p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIconColor:I

    new-array p2, p2, [F

    invoke-static {p1, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x1

    aget p1, p2, p1

    const v0, 0x3e4ccccd    # 0.2f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const p1, 0x1010435

    invoke-static {p3, p1}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, 0x3f19999a    # 0.6f

    const/4 p3, 0x2

    aget v0, p2, p3

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    aput p1, p2, p3

    invoke-static {p2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIndicatorColor:I

    .line 119
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setInternalProgress(F)V

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/graphics/PreloadIconDrawable;)F
    .locals 0

    .line 43
    iget p0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    return p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/graphics/PreloadIconDrawable;F)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setInternalProgress(F)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/launcher3/graphics/PreloadIconDrawable;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mRanFinishAnimation:Z

    return p1
.end method

.method private setInternalProgress(F)V
    .locals 6

    .line 263
    iput p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    .line 264
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/16 v2, 0xff

    const/4 v3, 0x1

    const v4, 0x3f19999a    # 0.6f

    if-gtz v1, :cond_0

    .line 265
    iput v4, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIconScale:F

    .line 266
    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledTrackPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 267
    iput v2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTrackAlpha:I

    .line 268
    invoke-virtual {p0, v3}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setIsDisabled(Z)V

    .line 271
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v5, p1, v1

    if-gez v5, :cond_1

    cmpl-float v5, p1, v0

    if-lez v5, :cond_1

    .line 272
    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget v5, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTrackLength:F

    mul-float/2addr p1, v5

    iget-object v5, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledProgressPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0, p1, v5, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 273
    iput v4, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIconScale:F

    .line 274
    iput v2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTrackAlpha:I

    .line 275
    invoke-virtual {p0, v3}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setIsDisabled(Z)V

    goto :goto_0

    .line 276
    :cond_1
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_3

    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setIsDisabled(Z)V

    .line 278
    iget-object v2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledTrackPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledProgressPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 279
    sub-float/2addr p1, v1

    const v2, 0x3e99999a    # 0.3f

    div-float/2addr p1, v2

    .line 281
    cmpl-float v2, p1, v1

    if-ltz v2, :cond_2

    .line 283
    iput v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIconScale:F

    .line 284
    iput v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTrackAlpha:I

    goto :goto_0

    .line 286
    :cond_2
    sub-float/2addr v1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTrackAlpha:I

    .line 287
    const v0, 0x3ecccccc    # 0.39999998f

    mul-float/2addr v0, p1

    add-float/2addr v4, v0

    iput v4, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIconScale:F

    .line 290
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->invalidateSelf()V

    .line 291
    return-void
.end method


# virtual methods
.method public final drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5

    .line 166
    iget-boolean v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mRanFinishAnimation:Z

    if-eqz v0, :cond_0

    .line 167
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/FastBitmapDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 168
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTrackAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 174
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mShadowBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mShadowBitmap:Landroid/graphics/Bitmap;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledProgressPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 179
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 180
    iget v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIconScale:F

    iget v2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIconScale:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 181
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/FastBitmapDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 182
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 183
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 7

    .line 124
    invoke-super {p0, p1}, Lcom/android/launcher3/FastBitmapDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41600000    # 14.0f

    sub-float/2addr v1, v2

    const/high16 v3, 0x40800000    # 4.0f

    sub-float/2addr v1, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v1, v4

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v2

    sub-float/2addr v5, v3

    div-float/2addr v5, v4

    .line 125
    invoke-virtual {v0, v1, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const/high16 v2, 0x40e00000    # 7.0f

    add-float/2addr v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    add-float/2addr v1, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    add-float/2addr v4, v3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledTrackPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    .line 134
    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-float/2addr v3, v0

    shl-int/lit8 v0, v1, 0x10

    or-int/2addr v0, p1

    sget-object v2, Lcom/android/launcher3/graphics/PreloadIconDrawable;->sShadowCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x55000000

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6, v6, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    const v3, 0x77eeeeee

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledTrackPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->clearShadowLayer()V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object p1, Lcom/android/launcher3/graphics/PreloadIconDrawable;->sShadowCache:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    iput-object v2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mShadowBitmap:Landroid/graphics/Bitmap;

    .line 138
    iget-object p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledTrackPath:Landroid/graphics/Path;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 139
    iget-object p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTrackLength:F

    .line 141
    iget p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setInternalProgress(F)V

    .line 142
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 3

    .line 191
    int-to-float p1, p1

    const v0, 0x3c23d70a    # 0.01f

    mul-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->updateInternalState(FZZ)V

    .line 192
    return v2
.end method

.method public final updateInternalState(FZZ)V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    .line 217
    :cond_0
    iget v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    .line 218
    return-void

    .line 220
    :cond_1
    iget v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_2

    .line 221
    nop

    .line 223
    move p2, v1

    :cond_2
    if-eqz p2, :cond_5

    iget-boolean p2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mRanFinishAnimation:Z

    if-eqz p2, :cond_3

    goto :goto_0

    .line 226
    :cond_3
    sget-object p2, Lcom/android/launcher3/graphics/PreloadIconDrawable;->INTERNAL_STATE:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v0, v0, [F

    aput p1, v0, v1

    invoke-static {p0, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    .line 227
    iget-object p2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    iget v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    sub-float/2addr p1, v0

    const/high16 v0, 0x43fa0000    # 500.0f

    mul-float/2addr p1, v0

    float-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 229
    iget-object p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 230
    if-eqz p3, :cond_4

    .line 231
    iget-object p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/android/launcher3/graphics/PreloadIconDrawable$2;

    invoke-direct {p2, p0}, Lcom/android/launcher3/graphics/PreloadIconDrawable$2;-><init>(Lcom/android/launcher3/graphics/PreloadIconDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 238
    :cond_4
    iget-object p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 240
    return-void

    .line 224
    :cond_5
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setInternalProgress(F)V

    return-void
.end method
