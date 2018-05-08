.class public Lcom/android/launcher3/graphics/IconPalette;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static resolveContrastColor(Landroid/content/Context;II)I
    .locals 22

    .line 66
    move/from16 v0, p2

    if-nez p1, :cond_0

    const v1, 0x7f0a0016

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto :goto_0

    .line 68
    :cond_0
    move/from16 v1, p1

    :goto_0
    invoke-static {v1, v0}, Landroid/support/v4/b/a;->e(II)D

    move-result-wide v2

    const-wide/high16 v4, 0x4012000000000000L    # 4.5

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x3

    new-array v2, v2, [D

    invoke-static {v0, v2}, Landroid/support/v4/b/a;->a(I[D)V

    const/4 v3, 0x0

    aget-wide v6, v2, v3

    invoke-static {v1, v2}, Landroid/support/v4/b/a;->a(I[D)V

    aget-wide v8, v2, v3

    const-wide/high16 v10, 0x4049000000000000L    # 50.0

    cmpg-double v1, v6, v10

    const/4 v6, 0x1

    if-gez v1, :cond_2

    move v1, v6

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    move-wide v10, v8

    goto :goto_2

    :cond_3
    const-wide/16 v10, 0x0

    :goto_2
    if-eqz v1, :cond_4

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    :cond_4
    aget-wide v6, v2, v6

    const/4 v12, 0x2

    aget-wide v18, v2, v12

    :goto_3
    const/16 v2, 0xf

    if-ge v3, v2, :cond_7

    sub-double v12, v8, v10

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v2, v12, v14

    if-lez v2, :cond_7

    add-double v12, v10, v8

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v20, v12, v14

    move-wide/from16 v12, v20

    move-wide v14, v6

    move-wide/from16 v16, v18

    invoke-static/range {v12 .. v17}, Landroid/support/v4/b/a;->a(DDD)I

    move-result v2

    invoke-static {v2, v0}, Landroid/support/v4/b/a;->e(II)D

    move-result-wide v12

    cmpl-double v2, v12, v4

    if-lez v2, :cond_5

    if-nez v1, :cond_6

    goto :goto_4

    :cond_5
    if-eqz v1, :cond_6

    :goto_4
    move-wide/from16 v10, v20

    goto :goto_5

    :cond_6
    move-wide/from16 v8, v20

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    move-wide v12, v10

    move-wide v14, v6

    move-wide/from16 v16, v18

    invoke-static/range {v12 .. v17}, Landroid/support/v4/b/a;->a(DDD)I

    move-result v0

    .line 70
    return v0
.end method
