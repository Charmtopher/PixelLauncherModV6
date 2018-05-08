.class public Lcom/android/launcher3/LauncherScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static DECELERATION_RATE:F

.field static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static sViscousFluidNormalize:F

.field private static sViscousFluidScale:F


# instance fields
.field mCurrVelocity:F

.field mCurrX:I

.field mCurrY:I

.field private mDeceleration:F

.field mDeltaX:F

.field mDeltaY:F

.field mDistance:I

.field mDuration:I

.field mDurationReciprocal:F

.field mFinalX:I

.field mFinalY:I

.field mFinished:Z

.field mFlingFriction:F

.field mFlywheel:Z

.field public mInterpolator:Landroid/animation/TimeInterpolator;

.field mMaxX:I

.field mMaxY:I

.field mMinX:I

.field mMinY:I

.field mMode:I

.field mPhysicalCoeff:F

.field private final mPpi:F

.field mStartTime:J

.field mStartX:I

.field mStartY:I

.field mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 65
    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/android/launcher3/LauncherScroller;->DECELERATION_RATE:F

    .line 73
    const/16 v0, 0x65

    new-array v1, v0, [F

    sput-object v1, Lcom/android/launcher3/LauncherScroller;->SPLINE_POSITION:[F

    .line 74
    new-array v0, v0, [F

    sput-object v0, Lcom/android/launcher3/LauncherScroller;->SPLINE_TIME:[F

    .line 83
    nop

    .line 84
    nop

    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v1, v3, :cond_4

    .line 86
    int-to-float v3, v1

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v3, v5

    .line 88
    nop

    .line 91
    move v5, v4

    :goto_1
    sub-float v6, v5, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v0

    .line 92
    const/high16 v8, 0x40400000    # 3.0f

    mul-float v9, v8, v6

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    .line 93
    const v11, 0x3e333333    # 0.175f

    mul-float v12, v10, v11

    const v13, 0x3eb33334    # 0.35000002f

    mul-float v14, v6, v13

    add-float/2addr v12, v14

    mul-float/2addr v12, v9

    mul-float v14, v6, v6

    mul-float/2addr v14, v6

    add-float/2addr v12, v14

    .line 94
    sub-float v15, v12, v3

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move/from16 v16, v5

    float-to-double v4, v15

    const-wide v17, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v4, v4, v17

    if-ltz v4, :cond_1

    .line 95
    cmpl-float v4, v12, v3

    if-lez v4, :cond_0

    .line 91
    move v5, v6

    :goto_2
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    .line 96
    :cond_0
    nop

    .line 91
    move v0, v6

    move/from16 v5, v16

    goto :goto_2

    .line 98
    :cond_1
    sget-object v4, Lcom/android/launcher3/LauncherScroller;->SPLINE_POSITION:[F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v10, v5

    add-float/2addr v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v9, v14

    aput v9, v4, v1

    .line 100
    nop

    .line 103
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_3
    sub-float v6, v4, v2

    div-float/2addr v6, v7

    add-float/2addr v6, v2

    .line 104
    mul-float v9, v8, v6

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v12, v10, v6

    mul-float/2addr v9, v12

    .line 105
    mul-float v10, v12, v5

    add-float/2addr v10, v6

    mul-float/2addr v10, v9

    mul-float v14, v6, v6

    mul-float/2addr v14, v6

    add-float/2addr v10, v14

    .line 106
    sub-float v15, v10, v3

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v7, v15

    cmpg-double v7, v7, v17

    if-ltz v7, :cond_3

    .line 107
    cmpl-float v7, v10, v3

    if-lez v7, :cond_2

    .line 103
    move v4, v6

    :goto_4
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_3

    .line 108
    :cond_2
    nop

    .line 103
    move v2, v6

    goto :goto_4

    .line 110
    :cond_3
    sget-object v3, Lcom/android/launcher3/LauncherScroller;->SPLINE_TIME:[F

    mul-float/2addr v12, v11

    mul-float/2addr v6, v13

    add-float/2addr v12, v6

    mul-float/2addr v9, v12

    add-float/2addr v9, v14

    aput v9, v3, v1

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 112
    :cond_4
    sget-object v0, Lcom/android/launcher3/LauncherScroller;->SPLINE_POSITION:[F

    sget-object v1, Lcom/android/launcher3/LauncherScroller;->SPLINE_TIME:[F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v3

    aput v2, v0, v3

    .line 115
    const/high16 v0, 0x41000000    # 8.0f

    sput v0, Lcom/android/launcher3/LauncherScroller;->sViscousFluidScale:F

    .line 117
    sput v2, Lcom/android/launcher3/LauncherScroller;->sViscousFluidNormalize:F

    .line 118
    invoke-static {v2}, Lcom/android/launcher3/LauncherScroller;->viscousFluid(F)F

    move-result v0

    div-float v4, v2, v0

    sput v4, Lcom/android/launcher3/LauncherScroller;->sViscousFluidNormalize:F

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/LauncherScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2

    .line 142
    nop

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 142
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/LauncherScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mFlingFriction:F

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    .line 153
    iput-object p2, p0, Lcom/android/launcher3/LauncherScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x43200000    # 160.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/LauncherScroller;->mPpi:F

    .line 155
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherScroller;->computeDeceleration(F)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/LauncherScroller;->mDeceleration:F

    .line 156
    iput-boolean p3, p0, Lcom/android/launcher3/LauncherScroller;->mFlywheel:Z

    .line 158
    const p1, 0x3f570a3d    # 0.84f

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherScroller;->computeDeceleration(F)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/LauncherScroller;->mPhysicalCoeff:F

    .line 159
    return-void
.end method

.method private computeDeceleration(F)F
    .locals 2

    .line 174
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mPpi:F

    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    mul-float/2addr v1, p1

    return v1
.end method

.method static viscousFluid(F)F
    .locals 3

    .line 476
    sget v0, Lcom/android/launcher3/LauncherScroller;->sViscousFluidScale:F

    mul-float/2addr p0, v0

    .line 477
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    .line 478
    neg-float v1, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float/2addr p0, v0

    goto :goto_0

    .line 480
    :cond_0
    sub-float p0, v0, p0

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float p0, v1

    sub-float/2addr v0, p0

    .line 482
    const p0, 0x3ebc5ab2

    const v1, 0x3f21d2a7

    mul-float/2addr v0, v1

    add-float/2addr p0, v0

    .line 484
    :goto_0
    sget v0, Lcom/android/launcher3/LauncherScroller;->sViscousFluidNormalize:F

    mul-float/2addr p0, v0

    .line 485
    return p0
.end method


# virtual methods
.method public final getCurrVelocity()F
    .locals 3

    .line 233
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 234
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrVelocity:F

    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mVelocity:F

    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mDeceleration:F

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherScroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 233
    return v0
.end method

.method final getSplineDeceleration(F)D
    .locals 2

    .line 459
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3eb33333    # 0.35f

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/android/launcher3/LauncherScroller;->mFlingFriction:F

    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mPhysicalCoeff:F

    mul-float/2addr p1, v1

    div-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final setFinalX(I)V
    .locals 1

    .line 533
    iput p1, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    .line 534
    iget p1, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/LauncherScroller;->mDeltaX:F

    .line 535
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    .line 536
    return-void
.end method

.method public final startScroll(IIIII)V
    .locals 2

    .line 371
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mMode:I

    .line 372
    iput-boolean v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    .line 373
    iput p5, p0, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    .line 374
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/LauncherScroller;->mStartTime:J

    .line 375
    iput p1, p0, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    .line 376
    iput p2, p0, Lcom/android/launcher3/LauncherScroller;->mStartY:I

    .line 377
    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    .line 378
    add-int/2addr p2, p4

    iput p2, p0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    .line 379
    int-to-float p1, p3

    iput p1, p0, Lcom/android/launcher3/LauncherScroller;->mDeltaX:F

    .line 380
    int-to-float p1, p4

    iput p1, p0, Lcom/android/launcher3/LauncherScroller;->mDeltaY:F

    .line 381
    iget p1, p0, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, p1

    iput p2, p0, Lcom/android/launcher3/LauncherScroller;->mDurationReciprocal:F

    .line 382
    return-void
.end method

.method public final timePassed()I
    .locals 4

    .line 522
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/LauncherScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
