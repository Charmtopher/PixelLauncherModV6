.class public Lcom/android/launcher3/graphics/ColorExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static findDominantColorByHue(Landroid/graphics/Bitmap;I)I
    .locals 23

    .line 37
    move/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 39
    mul-int v3, v1, v2

    div-int/2addr v3, v0

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 40
    if-gtz v3, :cond_0

    .line 41
    nop

    .line 45
    const/4 v3, 0x1

    :cond_0
    const/4 v5, 0x3

    new-array v5, v5, [F

    .line 49
    const/16 v6, 0x168

    new-array v7, v6, [F

    .line 50
    nop

    .line 51
    const/4 v8, -0x1

    .line 53
    new-array v9, v0, [I

    .line 54
    nop

    .line 56
    const/4 v11, 0x0

    move v13, v8

    move v8, v11

    move v12, v8

    const/high16 v14, -0x40800000    # -1.0f

    :goto_0
    const/high16 v16, -0x1000000

    if-ge v8, v1, :cond_4

    .line 57
    move/from16 v17, v14

    move v14, v13

    move v13, v12

    move v12, v11

    :goto_1
    if-ge v12, v2, :cond_3

    .line 58
    move-object/from16 v10, p0

    invoke-virtual {v10, v12, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v19

    .line 59
    const/16 v20, 0xff

    shr-int/lit8 v21, v19, 0x18

    and-int v15, v20, v21

    .line 60
    const/16 v4, 0x80

    if-lt v15, v4, :cond_2

    .line 62
    or-int v4, v19, v16

    .line 66
    invoke-static {v4, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 68
    aget v15, v5, v11

    float-to-int v15, v15

    .line 69
    if-ltz v15, :cond_2

    if-ge v15, v6, :cond_2

    .line 71
    if-ge v13, v0, :cond_1

    .line 74
    add-int/lit8 v19, v13, 0x1

    aput v4, v9, v13

    .line 76
    move/from16 v13, v19

    :cond_1
    const/4 v4, 0x1

    aget v19, v5, v4

    const/4 v4, 0x2

    aget v20, v5, v4

    mul-float v19, v19, v20

    .line 77
    aget v4, v7, v15

    add-float v4, v4, v19

    aput v4, v7, v15

    .line 78
    aget v4, v7, v15

    cmpl-float v4, v4, v17

    if-lez v4, :cond_2

    .line 79
    aget v17, v7, v15

    .line 80
    nop

    .line 57
    move v14, v15

    :cond_2
    add-int/2addr v12, v3

    goto :goto_1

    .line 56
    :cond_3
    move-object/from16 v10, p0

    add-int/2addr v8, v3

    move v12, v13

    move v13, v14

    move/from16 v14, v17

    goto :goto_0

    .line 85
    :cond_4
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 86
    nop

    .line 87
    nop

    .line 91
    move v1, v11

    const/high16 v18, -0x40800000    # -1.0f

    :goto_2
    if-ge v1, v12, :cond_8

    .line 92
    aget v2, v9, v1

    .line 93
    invoke-static {v2, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 94
    aget v3, v5, v11

    float-to-int v3, v3

    .line 95
    if-ne v3, v13, :cond_6

    .line 96
    const/4 v3, 0x1

    aget v4, v5, v3

    .line 97
    const/4 v6, 0x2

    aget v7, v5, v6

    .line 98
    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v8, v4

    float-to-int v8, v8

    const v10, 0x461c4000    # 10000.0f

    mul-float/2addr v10, v7

    float-to-int v10, v10

    add-int/2addr v8, v10

    .line 100
    mul-float/2addr v4, v7

    .line 101
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    .line 102
    if-nez v7, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v4, v7

    .line 103
    :goto_3
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    cmpl-float v7, v4, v18

    if-lez v7, :cond_7

    .line 105
    nop

    .line 107
    nop

    .line 91
    move/from16 v16, v2

    move/from16 v18, v4

    goto :goto_4

    :cond_6
    const/4 v3, 0x1

    const/4 v6, 0x2

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 111
    :cond_8
    return v16
.end method
