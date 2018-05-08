.class public Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mAvailableSpace:F

.field mBaselineIconScale:F

.field mIconSize:F

.field mIsRtl:Z

.field mRadius:F

.field private mTmpPoint:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    return-void
.end method

.method private getGridPosition(II[F)V
    .locals 6

    .line 75
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p3}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getPosition(II[F)V

    .line 76
    aget v2, p3, v1

    .line 77
    const/4 v3, 0x1

    aget v4, p3, v3

    .line 79
    const/4 v5, 0x3

    invoke-direct {p0, v5, v0, p3}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getPosition(II[F)V

    .line 80
    aget v0, p3, v1

    sub-float/2addr v0, v2

    .line 81
    aget v5, p3, v3

    sub-float/2addr v5, v4

    .line 83
    int-to-float p2, p2

    mul-float/2addr p2, v0

    add-float/2addr v2, p2

    aput v2, p3, v1

    .line 84
    int-to-float p1, p1

    mul-float/2addr p1, v5

    add-float/2addr v4, p1

    aput v4, p3, v3

    .line 85
    return-void
.end method

.method private getPosition(II[F)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 89
    const/4 v2, 0x2

    move/from16 v3, p2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 93
    iget-boolean v4, v0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIsRtl:Z

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_0

    .line 96
    move-wide v7, v5

    goto :goto_0

    .line 93
    :cond_0
    const-wide v7, 0x400921fb54442d18L    # Math.PI

    .line 96
    :goto_0
    iget-boolean v4, v0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIsRtl:Z

    const/4 v9, 0x1

    if-eqz v4, :cond_1

    .line 98
    move v4, v9

    goto :goto_1

    .line 96
    :cond_1
    const/4 v4, -0x1

    .line 98
    :goto_1
    nop

    .line 99
    const/4 v10, 0x4

    const/4 v11, 0x3

    if-ne v3, v11, :cond_2

    .line 100
    const-wide v5, 0x3fe0c152382d7365L    # 0.5235987755982988

    goto :goto_2

    .line 101
    :cond_2
    if-ne v3, v10, :cond_3

    .line 102
    const-wide v5, 0x3fe921fb54442d18L    # 0.7853981633974483

    .line 104
    :cond_3
    :goto_2
    int-to-double v12, v4

    mul-double/2addr v5, v12

    add-double/2addr v7, v5

    .line 109
    if-ne v3, v10, :cond_4

    if-ne v1, v11, :cond_4

    .line 110
    nop

    .line 116
    move v11, v2

    goto :goto_3

    .line 111
    :cond_4
    if-ne v3, v10, :cond_5

    if-ne v1, v2, :cond_5

    .line 112
    goto :goto_3

    .line 116
    :cond_5
    move v11, v1

    :goto_3
    iget v1, v0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mRadius:F

    const/high16 v2, 0x3f800000    # 1.0f

    const v4, 0x3e19999a    # 0.15f

    add-int/lit8 v5, v3, -0x2

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v2, v4

    mul-float/2addr v1, v2

    .line 118
    int-to-double v10, v11

    const-wide v14, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v5, v3

    div-double/2addr v14, v5

    mul-double/2addr v10, v14

    mul-double/2addr v10, v12

    add-double/2addr v7, v10

    .line 120
    iget v2, v0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    invoke-virtual {v0, v3}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->scaleForItem(I)F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 125
    const/4 v4, 0x0

    iget v5, v0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mAvailableSpace:F

    div-float/2addr v5, v3

    float-to-double v10, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    double-to-float v3, v10

    add-float/2addr v5, v3

    sub-float/2addr v5, v2

    aput v5, p3, v4

    .line 126
    iget v0, v0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mAvailableSpace:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    neg-float v1, v1

    float-to-double v3, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    div-double/2addr v3, v12

    double-to-float v1, v3

    add-float/2addr v0, v1

    sub-float/2addr v0, v2

    aput v0, p3, v9

    .line 128
    return-void
.end method


# virtual methods
.method public final computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .locals 6

    .line 34
    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->scaleForItem(I)F

    move-result v0

    .line 37
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-ne p1, v4, :cond_0

    .line 42
    iget-object p1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    invoke-direct {p0, v3, v1, p1}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getGridPosition(II[F)V

    goto :goto_0

    .line 43
    :cond_0
    const/4 v4, -0x3

    if-ne p1, v4, :cond_1

    .line 46
    iget-object p1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    invoke-direct {p0, v2, v1, p1}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getGridPosition(II[F)V

    goto :goto_0

    .line 47
    :cond_1
    const/4 v1, 0x4

    if-lt p1, v1, :cond_2

    .line 49
    iget-object p1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    iget-object p2, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    iget v1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mAvailableSpace:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    iget v5, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    mul-float/2addr v5, v0

    div-float/2addr v5, v4

    sub-float/2addr v1, v5

    aput v1, p2, v2

    aput v1, p1, v3

    goto :goto_0

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    invoke-direct {p0, p1, p2, v1}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getPosition(II[F)V

    .line 54
    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    aget p1, p1, v3

    .line 55
    iget-object p2, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    aget p2, p2, v2

    .line 57
    const/4 v1, 0x0

    if-nez p3, :cond_3

    .line 58
    new-instance p3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-direct {p3, p1, p2, v0, v1}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFFF)V

    goto :goto_1

    .line 60
    :cond_3
    invoke-virtual {p3, p1, p2, v0}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->update(FFF)V

    .line 61
    iput v1, p3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->overlayAlpha:F

    .line 63
    :goto_1
    return-object p3
.end method

.method public final scaleForItem(I)F
    .locals 1

    .line 133
    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 134
    const p1, 0x3f147ae1    # 0.58f

    goto :goto_0

    .line 135
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 136
    const p1, 0x3f07ae14    # 0.53f

    goto :goto_0

    .line 138
    :cond_1
    const p1, 0x3ef5c28f    # 0.48f

    .line 140
    :goto_0
    iget v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    mul-float/2addr p1, v0

    return p1
.end method
