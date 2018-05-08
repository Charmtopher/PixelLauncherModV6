.class public Lcom/google/research/reflection/layers/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field afI:I

.field afJ:I

.field afK:I

.field afL:I

.field afM:Lcom/google/research/reflection/a/a;

.field afN:Lcom/google/research/reflection/a/a;

.field afO:Lcom/google/research/reflection/a/a;

.field afP:Lcom/google/research/reflection/a/a;

.field afQ:Lcom/google/research/reflection/a/a;

.field afR:Lcom/google/research/reflection/a/a;

.field afS:[Lcom/google/research/reflection/layers/m;

.field afT:Lcom/google/research/reflection/layers/m;

.field afU:Lcom/google/research/reflection/layers/m;

.field afV:Lcom/google/research/reflection/layers/m;

.field afW:Lcom/google/research/reflection/layers/m;

.field afX:Lcom/google/research/reflection/layers/m;

.field afY:Lcom/google/research/reflection/layers/m;

.field afZ:Lcom/google/research/reflection/layers/m;

.field aga:Lcom/google/research/reflection/layers/m;

.field agb:Lcom/google/research/reflection/layers/m;

.field agc:Lcom/google/research/reflection/layers/m;

.field agd:Lcom/google/research/reflection/layers/m;

.field age:Lcom/google/research/reflection/layers/m;

.field agf:Lcom/google/research/reflection/layers/m;

.field agg:Lcom/google/research/reflection/layers/m;

.field agh:Lcom/google/research/reflection/layers/m;

.field agi:Lcom/google/research/reflection/layers/m;


# direct methods
.method static a(ZLcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;III)V
    .locals 25

    move-object/from16 v0, p5

    .line 368
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    move/from16 v3, p8

    if-ge v2, v3, :cond_5

    .line 369
    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual {v4, v1, v2, v5}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v10

    .line 370
    if-eqz p0, :cond_1

    .line 371
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v6, p1

    move/from16 v9, p7

    invoke-virtual/range {v6 .. v11}, Lcom/google/research/reflection/layers/m;->a(ZIID)V

    .line 368
    :cond_0
    move v7, v1

    move v6, v2

    move/from16 v2, p6

    goto :goto_3

    .line 373
    :cond_1
    if-eqz p4, :cond_2

    .line 374
    aget-object v6, p4, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/research/reflection/a/d;

    .line 375
    const/4 v13, 0x0

    iget v8, v7, Lcom/google/research/reflection/a/d;->index:I

    iget v7, v7, Lcom/google/research/reflection/a/d;->value:F

    move/from16 v18, v2

    float-to-double v1, v7

    mul-double v16, v1, v10

    move-object/from16 v12, p1

    move v14, v8

    move/from16 v15, p7

    invoke-virtual/range {v12 .. v17}, Lcom/google/research/reflection/layers/m;->a(ZIID)V

    .line 376
    nop

    .line 374
    move/from16 v2, v18

    const/4 v1, 0x0

    goto :goto_1

    .line 377
    :cond_2
    move/from16 v18, v2

    if-eqz v0, :cond_3

    .line 378
    const/4 v1, 0x0

    :goto_2
    move/from16 v2, p6

    if-ge v1, v2, :cond_4

    .line 379
    move/from16 v6, v18

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v6, v1}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v8

    .line 380
    const/16 v20, 0x0

    mul-double v23, v8, v10

    move-object/from16 v19, p1

    move/from16 v21, v1

    move/from16 v22, p7

    invoke-virtual/range {v19 .. v24}, Lcom/google/research/reflection/layers/m;->a(ZIID)V

    .line 378
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 368
    :cond_3
    move/from16 v2, p6

    :cond_4
    move/from16 v6, v18

    const/4 v7, 0x0

    :goto_3
    add-int/lit8 v1, v6, 0x1

    move v2, v1

    move v1, v7

    goto :goto_0

    .line 386
    :cond_5
    return-void
.end method


# virtual methods
.method final a(I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;I)D
    .locals 7

    .line 391
    nop

    .line 392
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    if-eqz p2, :cond_0

    .line 393
    aget-object p2, p2, p1

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/research/reflection/a/d;

    .line 394
    iget v3, p3, Lcom/google/research/reflection/a/d;->value:F

    float-to-double v3, v3

    iget-object v5, p0, Lcom/google/research/reflection/layers/a;->afT:Lcom/google/research/reflection/layers/m;

    iget p3, p3, Lcom/google/research/reflection/a/d;->index:I

    invoke-virtual {v5, v0, p3, p6}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    .line 395
    goto :goto_0

    .line 397
    :cond_0
    move p2, v0

    :goto_1
    iget v3, p0, Lcom/google/research/reflection/layers/a;->afK:I

    if-ge p2, v3, :cond_1

    .line 398
    invoke-virtual {p3, v0, p1, p2}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v3

    iget-object v5, p0, Lcom/google/research/reflection/layers/a;->afT:Lcom/google/research/reflection/layers/m;

    .line 399
    invoke-virtual {v5, v0, p2, p6}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    .line 397
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 402
    :cond_1
    move p2, v0

    :goto_2
    if-eqz p4, :cond_2

    iget p3, p0, Lcom/google/research/reflection/layers/a;->afL:I

    if-ge p2, p3, :cond_2

    .line 403
    invoke-virtual {p4, v0, p1, p2}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v3

    iget-object p3, p0, Lcom/google/research/reflection/layers/a;->afU:Lcom/google/research/reflection/layers/m;

    .line 404
    invoke-virtual {p3, v0, p2, p6}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    .line 402
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 406
    :cond_2
    move p2, v0

    :goto_3
    if-eqz p5, :cond_3

    iget p3, p0, Lcom/google/research/reflection/layers/a;->afJ:I

    if-ge p2, p3, :cond_3

    .line 407
    invoke-virtual {p5, v0, p1, p2}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide p3

    iget-object v3, p0, Lcom/google/research/reflection/layers/a;->afV:Lcom/google/research/reflection/layers/m;

    .line 408
    invoke-virtual {v3, v0, p2, p6}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v3

    mul-double/2addr p3, v3

    add-double/2addr v1, p3

    .line 406
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 410
    :cond_3
    return-wide v1
.end method

.method final a(ZLcom/google/research/reflection/layers/m;II[Lcom/google/research/reflection/layers/m;[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;)V
    .locals 10

    .line 357
    const/4 v0, 0x1

    aget-object v3, p5, v0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move v1, p1

    move-object v2, p2

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move v7, p3

    move v9, p4

    invoke-static/range {v1 .. v9}, Lcom/google/research/reflection/layers/a;->a(ZLcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;III)V

    .line 359
    const/4 v0, 0x2

    aget-object v3, p5, v0

    const/4 v8, 0x1

    invoke-static/range {v1 .. v9}, Lcom/google/research/reflection/layers/a;->a(ZLcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;III)V

    .line 361
    const/4 v0, 0x4

    aget-object v3, p5, v0

    const/4 v8, 0x2

    invoke-static/range {v1 .. v9}, Lcom/google/research/reflection/layers/a;->a(ZLcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;III)V

    .line 363
    return-void
.end method
