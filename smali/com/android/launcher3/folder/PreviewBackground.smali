.class public Lcom/android/launcher3/folder/PreviewBackground;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final SHADOW_ALPHA:Landroid/util/Property;

.field static final STROKE_ALPHA:Landroid/util/Property;


# instance fields
.field basePreviewOffsetX:I

.field basePreviewOffsetY:I

.field public delegateCellX:I

.field public delegateCellY:I

.field public isClipping:Z

.field mBgColor:I

.field final mClipPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

.field final mClipShader:Landroid/graphics/RadialGradient;

.field mColorMultiplier:F

.field private mDrawingDelegate:Lcom/android/launcher3/CellLayout;

.field public mInvalidateDelegate:Landroid/view/View;

.field public final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field public mScale:F

.field private mScaleAnimator:Landroid/animation/ValueAnimator;

.field final mShaderMatrix:Landroid/graphics/Matrix;

.field private mShadowAlpha:I

.field mShadowAnimator:Landroid/animation/ObjectAnimator;

.field private final mShadowPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

.field private mShadowShader:Landroid/graphics/RadialGradient;

.field private mStrokeAlpha:I

.field mStrokeAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mStrokeWidth:F

.field previewSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 103
    new-instance v0, Lcom/android/launcher3/folder/PreviewBackground$1;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "strokeAlpha"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/PreviewBackground$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/folder/PreviewBackground;->STROKE_ALPHA:Landroid/util/Property;

    .line 117
    new-instance v0, Lcom/android/launcher3/folder/PreviewBackground$2;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "shadowAlpha"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/PreviewBackground$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/folder/PreviewBackground;->SHADOW_ALPHA:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mClipPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 56
    new-instance v0, Landroid/graphics/RadialGradient;

    const/4 v1, 0x3

    new-array v6, v1, [I

    fill-array-data v6, :array_0

    new-array v7, v1, [F

    fill-array-data v7, :array_1

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mClipShader:Landroid/graphics/RadialGradient;

    .line 61
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowShader:Landroid/graphics/RadialGradient;

    .line 65
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 66
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPath:Landroid/graphics/Path;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    .line 71
    iput v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mColorMultiplier:F

    .line 74
    const/16 v0, 0xe1

    iput v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeAlpha:I

    .line 75
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowAlpha:I

    .line 88
    iput-boolean v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->isClipping:Z

    return-void

    :array_0
    .array-data 4
        -0x1000000
        -0x1000000
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f7fbe77    # 0.999f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/launcher3/folder/PreviewBackground;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeAlpha:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/launcher3/folder/PreviewBackground;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeAlpha:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher3/folder/PreviewBackground;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowAlpha:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/launcher3/folder/PreviewBackground;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowAlpha:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/launcher3/folder/PreviewBackground;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/launcher3/folder/PreviewBackground;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeAlphaAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/launcher3/folder/PreviewBackground;F)F
    .locals 0

    .line 47
    iput p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mColorMultiplier:F

    return p1
.end method

.method static synthetic access$502(Lcom/android/launcher3/folder/PreviewBackground;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/launcher3/folder/PreviewBackground;Lcom/android/launcher3/CellLayout;II)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    if-eq v0, p1, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/CellLayout;->mFolderBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    iput p2, p0, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellX:I

    iput p3, p0, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellY:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher3/folder/PreviewBackground;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mFolderBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->isClipping:Z

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    return-void
.end method

.method private animateScale(FFLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 8

    .line 358
    iget v3, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    .line 359
    iget v5, p0, Lcom/android/launcher3/folder/PreviewBackground;->mColorMultiplier:F

    .line 362
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 368
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 370
    iget-object v6, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/android/launcher3/folder/PreviewBackground$5;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/PreviewBackground$5;-><init>(Lcom/android/launcher3/folder/PreviewBackground;FFFF)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 379
    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/launcher3/folder/PreviewBackground$6;

    invoke-direct {p2, p0, p3, p4}, Lcom/android/launcher3/folder/PreviewBackground$6;-><init>(Lcom/android/launcher3/folder/PreviewBackground;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 396
    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x64

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 397
    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 398
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final animateToAccept(Lcom/android/launcher3/CellLayout;II)V
    .locals 1

    .line 401
    new-instance v0, Lcom/android/launcher3/folder/PreviewBackground$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/folder/PreviewBackground$7;-><init>(Lcom/android/launcher3/folder/PreviewBackground;Lcom/android/launcher3/CellLayout;II)V

    .line 407
    const p1, 0x3f99999a    # 1.2f

    const/high16 p2, 0x3fc00000    # 1.5f

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/launcher3/folder/PreviewBackground;->animateScale(FFLjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 408
    return-void
.end method

.method public final animateToRest()V
    .locals 4

    .line 414
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    .line 415
    iget v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellX:I

    .line 416
    iget v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellY:I

    .line 418
    new-instance v3, Lcom/android/launcher3/folder/PreviewBackground$8;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/android/launcher3/folder/PreviewBackground$8;-><init>(Lcom/android/launcher3/folder/PreviewBackground;Lcom/android/launcher3/CellLayout;II)V

    .line 424
    new-instance v0, Lcom/android/launcher3/folder/PreviewBackground$9;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/PreviewBackground$9;-><init>(Lcom/android/launcher3/folder/PreviewBackground;)V

    .line 430
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v1, v3, v0}, Lcom/android/launcher3/folder/PreviewBackground;->animateScale(FFLjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 431
    return-void
.end method

.method public final drawBackground(Landroid/graphics/Canvas;)V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 206
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/folder/PreviewBackground;->drawCircle(Landroid/graphics/Canvas;F)V

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawShadow(Landroid/graphics/Canvas;)V

    .line 211
    return-void
.end method

.method public final drawBackgroundStroke(Landroid/graphics/Canvas;)V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mBgColor:I

    iget v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeAlpha:I

    invoke-static {v1, v2}, Landroid/support/v4/b/a;->f(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 285
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 286
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 287
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/folder/PreviewBackground;->drawCircle(Landroid/graphics/Canvas;F)V

    .line 288
    return-void
.end method

.method public final drawCircle(Landroid/graphics/Canvas;F)V
    .locals 3

    .line 302
    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v0

    int-to-float v0, v0

    .line 303
    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    sub-float/2addr v0, p2

    iget-object p2, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 305
    return-void
.end method

.method public final drawShadow(Landroid/graphics/Canvas;)V
    .locals 12

    .line 214
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowShader:Landroid/graphics/RadialGradient;

    if-nez v0, :cond_0

    .line 215
    return-void

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v0

    int-to-float v0, v0

    .line 219
    iget v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeWidth:F

    add-float/2addr v1, v0

    .line 220
    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 221
    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetX()I

    move-result v2

    .line 223
    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetY()I

    move-result v3

    .line 225
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 226
    int-to-float v4, v2

    iget v5, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeWidth:F

    sub-float v7, v4, v5

    int-to-float v8, v3

    add-float/2addr v4, v0

    add-float v9, v4, v1

    add-float v4, v8, v1

    add-float v10, v4, v1

    const/4 v11, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v4

    goto :goto_0

    .line 230
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 231
    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getClipPath()Landroid/graphics/Path;

    move-result-object v5

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 234
    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 235
    iget-object v5, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShaderMatrix:Landroid/graphics/Matrix;

    int-to-float v2, v2

    add-float/2addr v2, v0

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {v5, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 236
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowShader:Landroid/graphics/RadialGradient;

    iget-object v5, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v5}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 237
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowAlpha:I

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 238
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowShader:Landroid/graphics/RadialGradient;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 239
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 240
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 241
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 242
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 244
    add-float/2addr v3, v0

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 245
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 248
    :cond_2
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 249
    return-void
.end method

.method final drawingDelegated()Z
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getBgColor()I
    .locals 2

    .line 196
    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mColorMultiplier:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v1, v0

    const/high16 v0, 0x43610000    # 225.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    .line 197
    iget v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mBgColor:I

    invoke-static {v1, v0}, Landroid/support/v4/b/a;->f(II)I

    move-result v0

    return v0
.end method

.method public final getClipPath()Landroid/graphics/Path;
    .locals 5

    .line 308
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 309
    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v0

    int-to-float v0, v0

    .line 310
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 311
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method final getOffsetX()I
    .locals 3

    .line 165
    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method final getOffsetY()I
    .locals 3

    .line 169
    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method final getScaledRadius()I
    .locals 2

    .line 161
    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    iget v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final invalidate()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mInvalidateDelegate:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mInvalidateDelegate:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    .line 188
    :cond_1
    return-void
.end method

.method public final setup(Lcom/android/launcher3/Launcher;Landroid/view/View;II)V
    .locals 9

    .line 133
    iput-object p2, p0, Lcom/android/launcher3/folder/PreviewBackground;->mInvalidateDelegate:Landroid/view/View;

    .line 134
    const p2, 0x1010433

    invoke-static {p1, p2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/folder/PreviewBackground;->mBgColor:I

    .line 136
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p2

    .line 137
    iget v0, p2, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    iput v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    .line 139
    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    sub-int/2addr p3, v0

    const/4 v0, 0x2

    div-int/2addr p3, v0

    iput p3, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    .line 140
    iget p2, p2, Lcom/android/launcher3/DeviceProfile;->folderIconOffsetYPx:I

    add-int/2addr p4, p2

    iput p4, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    .line 143
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeWidth:F

    .line 145
    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result p1

    int-to-float p1, p1

    .line 146
    iget p2, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeWidth:F

    add-float/2addr p2, p1

    .line 147
    const/4 p3, 0x0

    const/16 p4, 0x28

    invoke-static {p4, p3, p3, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p4

    .line 148
    new-instance v8, Landroid/graphics/RadialGradient;

    new-array v5, v0, [I

    aput p4, v5, p3

    const/4 p4, 0x1

    aput p3, v5, p4

    new-array v6, v0, [F

    div-float/2addr p1, p2

    aput p1, v6, p3

    const/high16 p1, 0x3f800000    # 1.0f

    aput p1, v6, p4

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v8, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowShader:Landroid/graphics/RadialGradient;

    .line 153
    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    .line 154
    return-void
.end method
