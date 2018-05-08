.class public Lcom/android/launcher3/pageindicators/PageIndicatorDots;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/pageindicators/PageIndicator;


# static fields
.field public static final CURRENT_POSITION:Landroid/util/Property;

.field private static final sTempRect:Landroid/graphics/RectF;


# instance fields
.field private final mActiveColor:I

.field public mActivePage:I

.field public mAnimator:Landroid/animation/ObjectAnimator;

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private mCurrentPosition:F

.field private final mDotRadius:F

.field public mEntryAnimationRadiusFactors:[F

.field public mFinalPosition:F

.field private final mInActiveColor:I

.field public final mIsRtl:Z

.field public mNumPages:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    .line 61
    new-instance v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "current_position"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->CURRENT_POSITION:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCirclePaint:Landroid/graphics/Paint;

    .line 112
    iget-object p2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCirclePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b0061

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    iput p2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    .line 114
    new-instance p2, Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;B)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 116
    const p2, 0x1010435

    invoke-static {p1, p2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActiveColor:I

    .line 117
    const p2, 0x101042c

    invoke-static {p1, p2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mInActiveColor:I

    .line 119
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mIsRtl:Z

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    return p0
.end method

.method static synthetic access$002(Lcom/android/launcher3/pageindicators/PageIndicatorDots;F)F
    .locals 0

    .line 46
    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)[F
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/launcher3/pageindicators/PageIndicatorDots;[F)[F
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)Landroid/graphics/RectF;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getActiveRect()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    return p0
.end method

.method static synthetic access$602(Lcom/android/launcher3/pageindicators/PageIndicatorDots;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    return p0
.end method

.method static synthetic access$800(Lcom/android/launcher3/pageindicators/PageIndicatorDots;F)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->animateToPosition(F)V

    return-void
.end method

.method private getActiveRect()Landroid/graphics/RectF;
    .locals 10

    .line 278
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    float-to-int v0, v0

    int-to-float v0, v0

    .line 279
    iget v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    sub-float/2addr v1, v0

    .line 280
    iget v2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    .line 281
    iget v4, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, v4

    .line 282
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v6, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    sub-float/2addr v4, v6

    iget v6, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    add-float/2addr v4, v6

    div-float/2addr v4, v3

    .line 284
    sget-object v6, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    iget v9, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    sub-float/2addr v7, v9

    iput v7, v6, Landroid/graphics/RectF;->top:F

    .line 285
    sget-object v6, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    iget v9, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    add-float/2addr v7, v9

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 286
    sget-object v6, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    mul-float/2addr v0, v5

    add-float/2addr v4, v0

    iput v4, v6, Landroid/graphics/RectF;->left:F

    .line 287
    sget-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    sget-object v4, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v2

    iput v4, v0, Landroid/graphics/RectF;->right:F

    .line 289
    cmpg-float v0, v1, v8

    if-gez v0, :cond_0

    .line 291
    sget-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v1, v5

    mul-float/2addr v1, v3

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 294
    :cond_0
    sget-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v5

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 296
    sub-float/2addr v1, v8

    .line 297
    sget-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, v5

    mul-float/2addr v1, v3

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 300
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mIsRtl:Z

    if-eqz v0, :cond_1

    .line 301
    sget-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 302
    sget-object v1, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 303
    sget-object v1, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    sget-object v2, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 305
    :cond_1
    sget-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    return-object v0
.end method


# virtual methods
.method public final animateToPosition(F)V
    .locals 3

    .line 148
    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    .line 149
    iget p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 150
    iget p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_2

    .line 153
    iget p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    cmpl-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    if-lez p1, :cond_1

    .line 154
    iget p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    add-float/2addr p1, v0

    .line 155
    :goto_0
    sget-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->CURRENT_POSITION:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 156
    iget-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;

    invoke-direct {v0, p0, v2}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;B)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 157
    iget-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 158
    iget-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 160
    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 248
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v0

    .line 249
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    add-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 251
    iget v2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    add-float/2addr v0, v2

    .line 252
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 254
    iget-object v3, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 256
    iget-boolean v3, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mIsRtl:Z

    if-eqz v3, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v0, v3, v0

    .line 258
    neg-float v1, v1

    .line 260
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    array-length v3, v3

    if-ge v4, v3, :cond_2

    .line 261
    iget-object v3, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCirclePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActivePage:I

    if-ne v4, v5, :cond_1

    iget v5, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActiveColor:I

    goto :goto_1

    :cond_1
    iget v5, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mInActiveColor:I

    :goto_1
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    iget v3, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    iget-object v5, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    aget v5, v5, v4

    mul-float/2addr v3, v5

    iget-object v5, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 263
    add-float/2addr v0, v1

    .line 260
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 266
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCirclePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mInActiveColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 267
    :goto_2
    iget v3, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    if-ge v4, v3, :cond_4

    .line 268
    iget v3, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    iget-object v5, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 269
    add-float/2addr v0, v1

    .line 267
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 272
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActiveColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 273
    invoke-direct {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getActiveRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    iget v2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    iget-object v3, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 275
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 238
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 239
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 240
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 241
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_1

    :cond_1
    const/high16 p2, 0x40800000    # 4.0f

    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 242
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->setMeasuredDimension(II)V

    .line 243
    return-void
.end method

.method public final setActiveMarker(I)V
    .locals 1

    .line 219
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActivePage:I

    if-eq v0, p1, :cond_0

    .line 220
    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActivePage:I

    .line 222
    :cond_0
    return-void
.end method

.method public final setMarkersCount(I)V
    .locals 0

    .line 226
    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    .line 227
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->requestLayout()V

    .line 228
    return-void
.end method

.method public final setPageDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .line 232
    invoke-virtual {p0, p1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 233
    return-void
.end method
