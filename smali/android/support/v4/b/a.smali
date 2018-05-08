.class public final Landroid/support/v4/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final hT:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v4/b/a;->hT:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private static a(D)D
    .locals 2

    .line 593
    const-wide v0, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    .line 594
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide v0, 0x408c3a6666666666L    # 903.3

    mul-double/2addr v0, p0

    const-wide/high16 p0, 0x4030000000000000L    # 16.0

    add-double/2addr v0, p0

    const-wide/high16 p0, 0x405d000000000000L    # 116.0

    div-double/2addr v0, p0

    return-wide v0
.end method

.method private static a(FFF)F
    .locals 1

    .line 585
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static a(DDD)I
    .locals 23

    .line 570
    invoke-static {}, Landroid/support/v4/b/a;->av()[D

    move-result-object v2

    .line 571
    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    add-double v5, p0, v3

    const-wide/high16 v7, 0x405d000000000000L    # 116.0

    div-double/2addr v5, v7

    const-wide v9, 0x407f400000000000L    # 500.0

    div-double v9, p2, v9

    add-double/2addr v9, v5

    const-wide/high16 v11, 0x4069000000000000L    # 200.0

    div-double v11, p4, v11

    sub-double v11, v5, v11

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    const-wide v17, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v19, v15, v17

    const-wide v20, 0x408c3a6666666666L    # 903.3

    if-lez v19, :cond_0

    goto :goto_0

    :cond_0
    mul-double/2addr v9, v7

    sub-double/2addr v9, v3

    div-double v15, v9, v20

    :goto_0
    const-wide v9, 0x401fff9da4c11507L    # 7.9996247999999985

    cmpl-double v9, p0, v9

    if-lez v9, :cond_1

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_1

    :cond_1
    div-double v0, p0, v20

    :goto_1
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    cmpl-double v9, v5, v17

    if-lez v9, :cond_2

    goto :goto_2

    :cond_2
    mul-double/2addr v7, v11

    sub-double/2addr v7, v3

    div-double v5, v7, v20

    :goto_2
    const-wide v3, 0x4057c3020c49ba5eL    # 95.047

    mul-double/2addr v15, v3

    const/4 v3, 0x0

    aput-wide v15, v2, v3

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v7

    const/4 v4, 0x1

    aput-wide v0, v2, v4

    const/4 v0, 0x2

    const-wide v9, 0x405b3883126e978dL    # 108.883

    mul-double/2addr v5, v9

    aput-wide v5, v2, v0

    .line 572
    aget-wide v0, v2, v3

    aget-wide v4, v2, v4

    const/4 v6, 0x2

    aget-wide v9, v2, v6

    const-wide v11, 0x4009ecbfb15b573fL    # 3.2406

    mul-double/2addr v11, v0

    const-wide v13, -0x400767a0f9096bbaL    # -1.5372

    mul-double/2addr v13, v4

    add-double/2addr v11, v13

    const-wide v13, -0x402016f0068db8bbL    # -0.4986

    mul-double/2addr v13, v9

    add-double/2addr v11, v13

    div-double/2addr v11, v7

    const-wide v13, -0x4010fec56d5cfaadL    # -0.9689

    mul-double/2addr v13, v0

    const-wide v15, 0x3ffe0346dc5d6388L    # 1.8758

    mul-double/2addr v15, v4

    add-double/2addr v13, v15

    const-wide v15, 0x3fa53f7ced916873L    # 0.0415

    mul-double/2addr v15, v9

    add-double/2addr v13, v15

    div-double/2addr v13, v7

    const-wide v15, 0x3fac84b5dcc63f14L    # 0.0557

    mul-double/2addr v0, v15

    const-wide v15, -0x4035e353f7ced917L    # -0.204

    mul-double/2addr v4, v15

    add-double/2addr v0, v4

    const-wide v4, 0x3ff0e978d4fdf3b6L    # 1.057

    mul-double/2addr v9, v4

    add-double/2addr v0, v9

    div-double/2addr v0, v7

    const-wide v4, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v2, v11, v4

    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    const-wide v8, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v3, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    const-wide v15, 0x3ff0e147ae147ae1L    # 1.055

    if-lez v2, :cond_3

    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v10, v15

    sub-double/2addr v10, v8

    goto :goto_3

    :cond_3
    mul-double v10, v6, v11

    :goto_3
    const-wide v17, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v2, v13, v17

    if-lez v2, :cond_4

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v12, v15

    sub-double/2addr v12, v8

    goto :goto_4

    :cond_4
    mul-double v12, v6, v13

    :goto_4
    cmpl-double v2, v0, v17

    if-lez v2, :cond_5

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v15, v0

    sub-double/2addr v15, v8

    goto :goto_5

    :cond_5
    mul-double v15, v6, v0

    :goto_5
    const-wide v0, 0x406fe00000000000L    # 255.0

    mul-double/2addr v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    const/16 v3, 0xff

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/support/v4/b/a;->a(III)I

    move-result v2

    mul-double/2addr v12, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5, v4, v3}, Landroid/support/v4/b/a;->a(III)I

    move-result v5

    mul-double/2addr v0, v15

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0, v4, v3}, Landroid/support/v4/b/a;->a(III)I

    move-result v0

    invoke-static {v2, v5, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method private static a(III)I
    .locals 0

    .line 589
    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method private static a(IIIII)I
    .locals 1

    .line 135
    if-nez p4, :cond_0

    const/4 p0, 0x0

    return p0

    .line 136
    :cond_0
    const/16 v0, 0xff

    mul-int/2addr p0, v0

    mul-int/2addr p0, p1

    mul-int/2addr p2, p3

    rsub-int p1, p1, 0xff

    mul-int/2addr p2, p1

    add-int/2addr p0, p2

    mul-int/2addr p4, v0

    div-int/2addr p0, p4

    return p0
.end method

.method public static a([F)I
    .locals 6

    .line 306
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 307
    const/4 v2, 0x1

    aget v2, p0, v2

    .line 308
    const/4 v3, 0x2

    aget p0, p0, v3

    .line 310
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v3, p0

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v5, v4

    mul-float/2addr v4, v2

    .line 311
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    sub-float/2addr p0, v2

    .line 312
    const/high16 v2, 0x42700000    # 60.0f

    div-float v2, v1, v2

    rem-float/2addr v2, v3

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v5, v2

    mul-float/2addr v5, v4

    .line 314
    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x3c

    .line 316
    nop

    .line 318
    const/high16 v2, 0x437f0000    # 255.0f

    packed-switch v1, :pswitch_data_0

    .line 352
    move p0, v0

    move v1, p0

    move v3, v1

    goto :goto_0

    .line 346
    :pswitch_0
    add-float/2addr v4, p0

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 347
    mul-float v3, v2, p0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 348
    add-float/2addr v5, p0

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0

    .line 340
    :pswitch_1
    add-float/2addr v5, p0

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 341
    mul-float v3, v2, p0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 342
    add-float/2addr v4, p0

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 343
    goto :goto_0

    .line 335
    :pswitch_2
    mul-float v1, v2, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 336
    add-float/2addr v5, p0

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 337
    add-float/2addr v4, p0

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 338
    goto :goto_0

    .line 330
    :pswitch_3
    mul-float v1, v2, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 331
    add-float/2addr v4, p0

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 332
    add-float/2addr v5, p0

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 333
    goto :goto_0

    .line 325
    :pswitch_4
    add-float/2addr v5, p0

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 326
    add-float/2addr v4, p0

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 327
    mul-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 328
    goto :goto_0

    .line 320
    :pswitch_5
    add-float/2addr v4, p0

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 321
    add-float/2addr v5, p0

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 322
    mul-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 323
    nop

    .line 352
    :goto_0
    const/16 v2, 0xff

    invoke-static {v1, v0, v2}, Landroid/support/v4/b/a;->a(III)I

    move-result v1

    .line 353
    invoke-static {v3, v0, v2}, Landroid/support/v4/b/a;->a(III)I

    move-result v3

    .line 354
    invoke-static {p0, v0, v2}, Landroid/support/v4/b/a;->a(III)I

    move-result p0

    .line 356
    invoke-static {v1, v3, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(III[D)V
    .locals 17

    .line 444
    move-object/from16 v0, p3

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 448
    move/from16 v1, p0

    int-to-double v1, v1

    const-wide v3, 0x406fe00000000000L    # 255.0

    div-double/2addr v1, v3

    .line 449
    const-wide v5, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v7, v1, v5

    const-wide v8, 0x4003333333333333L    # 2.4

    const-wide v10, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v12, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v14, 0x4029d70a3d70a3d7L    # 12.92

    if-gez v7, :cond_0

    div-double/2addr v1, v14

    goto :goto_0

    :cond_0
    add-double/2addr v1, v12

    div-double/2addr v1, v10

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    .line 450
    :goto_0
    move/from16 v7, p1

    int-to-double v8, v7

    div-double/2addr v8, v3

    .line 451
    cmpg-double v7, v8, v5

    if-gez v7, :cond_1

    div-double/2addr v8, v14

    goto :goto_1

    :cond_1
    add-double/2addr v8, v12

    div-double/2addr v8, v10

    const-wide v10, 0x4003333333333333L    # 2.4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    .line 452
    :goto_1
    move/from16 v7, p2

    int-to-double v10, v7

    div-double/2addr v10, v3

    .line 453
    cmpg-double v3, v10, v5

    if-gez v3, :cond_2

    div-double/2addr v10, v14

    goto :goto_2

    :cond_2
    add-double/2addr v10, v12

    const-wide v3, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v10, v3

    const-wide v3, 0x4003333333333333L    # 2.4

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    .line 455
    :goto_2
    const/4 v3, 0x0

    const-wide v4, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double/2addr v4, v1

    const-wide v6, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double/2addr v6, v10

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    aput-wide v4, v0, v3

    .line 456
    const/4 v3, 0x1

    const-wide v4, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v4, v1

    const-wide v12, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v12, v8

    add-double/2addr v4, v12

    const-wide v12, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v12, v10

    add-double/2addr v4, v12

    mul-double/2addr v4, v6

    aput-wide v4, v0, v3

    .line 457
    const/4 v3, 0x2

    const-wide v4, 0x3f93c36113404ea5L    # 0.0193

    mul-double/2addr v1, v4

    const-wide v4, 0x3fbe83e425aee632L    # 0.1192

    mul-double/2addr v8, v4

    add-double/2addr v1, v8

    const-wide v4, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double/2addr v10, v4

    add-double/2addr v1, v10

    mul-double/2addr v6, v1

    aput-wide v6, v0, v3

    .line 458
    return-void

    .line 445
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outXyz must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(III[F)V
    .locals 7

    .line 241
    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    .line 242
    int-to-float p1, p1

    div-float/2addr p1, v0

    .line 243
    int-to-float p2, p2

    div-float/2addr p2, v0

    .line 245
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 246
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 247
    sub-float v2, v0, v1

    .line 250
    add-float v3, v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 252
    cmpl-float v1, v0, v1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-nez v1, :cond_0

    .line 254
    nop

    .line 267
    move p0, v6

    move p1, p0

    goto :goto_1

    .line 256
    :cond_0
    cmpl-float v1, v0, p0

    if-nez v1, :cond_1

    .line 257
    sub-float/2addr p1, p2

    div-float/2addr p1, v2

    const/high16 p0, 0x40c00000    # 6.0f

    rem-float/2addr p1, p0

    .line 264
    move p0, p1

    goto :goto_0

    .line 258
    :cond_1
    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    .line 259
    sub-float/2addr p2, p0

    div-float/2addr p2, v2

    add-float/2addr p2, v4

    .line 264
    move p0, p2

    goto :goto_0

    .line 261
    :cond_2
    sub-float/2addr p0, p1

    div-float/2addr p0, v2

    const/high16 p1, 0x40800000    # 4.0f

    add-float/2addr p0, p1

    .line 264
    :goto_0
    mul-float/2addr v4, v3

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float p1, v5, p1

    div-float p1, v2, p1

    .line 267
    :goto_1
    const/high16 p2, 0x42700000    # 60.0f

    mul-float/2addr p0, p2

    const/high16 p2, 0x43b40000    # 360.0f

    rem-float/2addr p0, p2

    .line 268
    cmpg-float v0, p0, v6

    if-gez v0, :cond_3

    .line 269
    add-float/2addr p0, p2

    .line 272
    :cond_3
    const/4 v0, 0x0

    invoke-static {p0, v6, p2}, Landroid/support/v4/b/a;->a(FFF)F

    move-result p0

    aput p0, p3, v0

    .line 273
    const/4 p0, 0x1

    invoke-static {p1, v6, v5}, Landroid/support/v4/b/a;->a(FFF)F

    move-result p1

    aput p1, p3, p0

    .line 274
    const/4 p0, 0x2

    invoke-static {v3, v6, v5}, Landroid/support/v4/b/a;->a(FFF)F

    move-result p1

    aput p1, p3, p0

    .line 275
    return-void
.end method

.method public static a(I[D)V
    .locals 14

    .line 378
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Landroid/support/v4/b/a;->a(III[D)V

    const/4 p0, 0x0

    aget-wide v0, p1, p0

    const/4 v2, 0x1

    aget-wide v3, p1, v2

    const/4 v5, 0x2

    aget-wide v6, p1, v5

    array-length v8, p1

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    const-wide v8, 0x4057c3020c49ba5eL    # 95.047

    div-double/2addr v0, v8

    invoke-static {v0, v1}, Landroid/support/v4/b/a;->a(D)D

    move-result-wide v0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v8

    invoke-static {v3, v4}, Landroid/support/v4/b/a;->a(D)D

    move-result-wide v3

    const-wide v8, 0x405b3883126e978dL    # 108.883

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Landroid/support/v4/b/a;->a(D)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x405d000000000000L    # 116.0

    mul-double/2addr v10, v3

    const-wide/high16 v12, 0x4030000000000000L    # 16.0

    sub-double/2addr v10, v12

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    aput-wide v8, p1, p0

    const-wide v8, 0x407f400000000000L    # 500.0

    sub-double/2addr v0, v3

    mul-double/2addr v8, v0

    aput-wide v8, p1, v2

    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    sub-double/2addr v3, v6

    mul-double/2addr v0, v3

    aput-wide v0, p1, v5

    .line 379
    return-void

    .line 378
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "outLab must have a length of 3."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(I[F)V
    .locals 2

    .line 289
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Landroid/support/v4/b/a;->a(III[F)V

    .line 290
    return-void
.end method

.method private static av()[D
    .locals 2

    .line 678
    sget-object v0, Landroid/support/v4/b/a;->hT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 679
    if-nez v0, :cond_0

    .line 680
    const/4 v0, 0x3

    new-array v0, v0, [D

    .line 681
    sget-object v1, Landroid/support/v4/b/a;->hT:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 683
    :cond_0
    return-object v0
.end method

.method public static d(II)I
    .locals 6

    .line 53
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 54
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 55
    rsub-int v2, v0, 0xff

    rsub-int v3, v1, 0xff

    mul-int/2addr v2, v3

    div-int/lit16 v2, v2, 0xff

    rsub-int v2, v2, 0xff

    .line 57
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 58
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 57
    invoke-static {v3, v1, v4, v0, v2}, Landroid/support/v4/b/a;->a(IIIII)I

    move-result v3

    .line 59
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 60
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 59
    invoke-static {v4, v1, v5, v0, v2}, Landroid/support/v4/b/a;->a(IIIII)I

    move-result v4

    .line 61
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 62
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 61
    invoke-static {p0, v1, p1, v0, v2}, Landroid/support/v4/b/a;->a(IIIII)I

    move-result p0

    .line 64
    invoke-static {v2, v3, v4, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static e(II)D
    .locals 4

    .line 159
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    .line 163
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 165
    invoke-static {p0, p1}, Landroid/support/v4/b/a;->d(II)I

    move-result p0

    .line 168
    :cond_0
    invoke-static {p0}, Landroid/support/v4/b/a;->o(I)D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    .line 169
    invoke-static {p1}, Landroid/support/v4/b/a;->o(I)D

    move-result-wide p0

    add-double/2addr p0, v2

    .line 172
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    div-double/2addr v2, p0

    return-wide v2

    .line 160
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "background can not be translucent: #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(II)I
    .locals 1

    .line 365
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 368
    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0

    .line 366
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha must be between 0 and 255."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static o(I)D
    .locals 5

    .line 145
    invoke-static {}, Landroid/support/v4/b/a;->av()[D

    move-result-object v0

    .line 146
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v1, v2, p0, v0}, Landroid/support/v4/b/a;->a(III[D)V

    .line 148
    const/4 p0, 0x1

    aget-wide v1, v0, p0

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    return-wide v1
.end method
