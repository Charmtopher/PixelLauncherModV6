.class Lcom/google/research/reflection/layers/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/layers/u;


# instance fields
.field final synthetic agl:I

.field final synthetic agm:[Ljava/util/ArrayList;

.field final synthetic agn:Lcom/google/research/reflection/layers/m;

.field final synthetic ago:Lcom/google/research/reflection/layers/m;

.field final synthetic agp:Lcom/google/research/reflection/layers/b;


# direct methods
.method constructor <init>(Lcom/google/research/reflection/layers/b;I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/google/research/reflection/layers/c;->agp:Lcom/google/research/reflection/layers/b;

    iput p2, p0, Lcom/google/research/reflection/layers/c;->agl:I

    iput-object p3, p0, Lcom/google/research/reflection/layers/c;->agm:[Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/research/reflection/layers/c;->agn:Lcom/google/research/reflection/layers/m;

    iput-object p5, p0, Lcom/google/research/reflection/layers/c;->ago:Lcom/google/research/reflection/layers/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bE(I)Ljava/lang/Boolean;
    .locals 31

    move-object/from16 v0, p0

    .line 47
    new-instance v8, Lcom/google/research/reflection/layers/m;

    iget-object v2, v0, Lcom/google/research/reflection/layers/c;->agp:Lcom/google/research/reflection/layers/b;

    iget v2, v2, Lcom/google/research/reflection/layers/b;->afI:I

    iget-object v3, v0, Lcom/google/research/reflection/layers/c;->agp:Lcom/google/research/reflection/layers/b;

    iget v3, v3, Lcom/google/research/reflection/layers/b;->agk:I

    invoke-direct {v8, v2, v3}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    .line 48
    iget-object v2, v0, Lcom/google/research/reflection/layers/c;->agp:Lcom/google/research/reflection/layers/b;

    iget v2, v2, Lcom/google/research/reflection/layers/b;->agk:I

    mul-int v9, p1, v2

    .line 49
    const/4 v10, 0x0

    move v11, v10

    :goto_0
    iget-object v2, v0, Lcom/google/research/reflection/layers/c;->agp:Lcom/google/research/reflection/layers/b;

    iget v2, v2, Lcom/google/research/reflection/layers/b;->afI:I

    if-ge v11, v2, :cond_1

    .line 50
    move v12, v10

    :goto_1
    iget-object v2, v0, Lcom/google/research/reflection/layers/c;->agp:Lcom/google/research/reflection/layers/b;

    iget v2, v2, Lcom/google/research/reflection/layers/b;->agk:I

    if-ge v12, v2, :cond_0

    .line 51
    const/4 v3, 0x0

    iget-object v2, v0, Lcom/google/research/reflection/layers/c;->agp:Lcom/google/research/reflection/layers/b;

    iget-object v2, v2, Lcom/google/research/reflection/layers/b;->agv:Lcom/google/research/reflection/layers/m;

    add-int v4, v9, v12

    invoke-virtual {v2, v10, v11, v4}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v6

    move-object v2, v8

    move v4, v11

    move v5, v12

    invoke-virtual/range {v2 .. v7}, Lcom/google/research/reflection/layers/m;->b(ZIID)V

    .line 50
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 49
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 54
    :cond_1
    iget-object v2, v0, Lcom/google/research/reflection/layers/c;->agp:Lcom/google/research/reflection/layers/b;

    iget-object v2, v2, Lcom/google/research/reflection/layers/b;->agj:[Lcom/google/research/reflection/layers/a;

    aget-object v1, v2, p1

    iget v2, v0, Lcom/google/research/reflection/layers/c;->agl:I

    iget-object v3, v0, Lcom/google/research/reflection/layers/c;->agm:[Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/google/research/reflection/layers/c;->agn:Lcom/google/research/reflection/layers/m;

    iget-object v0, v0, Lcom/google/research/reflection/layers/c;->ago:Lcom/google/research/reflection/layers/m;

    iget-object v5, v1, Lcom/google/research/reflection/layers/a;->afM:Lcom/google/research/reflection/a/a;

    invoke-virtual {v5, v2}, Lcom/google/research/reflection/a/a;->bD(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/research/reflection/layers/m;

    new-instance v6, Lcom/google/research/reflection/layers/m;

    iget v7, v1, Lcom/google/research/reflection/layers/a;->afI:I

    const/4 v9, 0x1

    invoke-direct {v6, v7, v9}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    move v7, v10

    :goto_2
    iget v11, v1, Lcom/google/research/reflection/layers/a;->afI:I

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    if-ge v7, v11, :cond_3

    move v11, v10

    const-wide/16 v12, 0x0

    :goto_3
    iget v9, v1, Lcom/google/research/reflection/layers/a;->afJ:I

    if-ge v11, v9, :cond_2

    invoke-virtual {v5, v10, v7, v11}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v16

    invoke-virtual {v8, v10, v7, v11}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v12, v12, v16

    add-int/lit8 v11, v11, 0x1

    const/4 v9, 0x1

    goto :goto_3

    :cond_2
    iget-object v9, v1, Lcom/google/research/reflection/layers/a;->afP:Lcom/google/research/reflection/a/a;

    invoke-virtual {v9, v2}, Lcom/google/research/reflection/a/a;->bD(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/research/reflection/layers/m;

    invoke-virtual {v9, v10, v7, v10}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v16

    sub-double v14, v14, v16

    mul-double v14, v14, v16

    mul-double v15, v14, v12

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v11, v6

    move v13, v7

    invoke-virtual/range {v11 .. v16}, Lcom/google/research/reflection/layers/m;->b(ZIID)V

    add-int/lit8 v7, v7, 0x1

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    new-instance v7, Lcom/google/research/reflection/layers/m;

    iget v9, v1, Lcom/google/research/reflection/layers/a;->afI:I

    iget v11, v1, Lcom/google/research/reflection/layers/a;->afJ:I

    invoke-direct {v7, v9, v11}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iget-object v9, v1, Lcom/google/research/reflection/layers/a;->afQ:Lcom/google/research/reflection/a/a;

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v9, v11}, Lcom/google/research/reflection/a/a;->bD(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/research/reflection/layers/m;

    iget-object v11, v1, Lcom/google/research/reflection/layers/a;->afN:Lcom/google/research/reflection/a/a;

    invoke-virtual {v11, v2}, Lcom/google/research/reflection/a/a;->bD(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v19, v11

    check-cast v19, Lcom/google/research/reflection/layers/m;

    move v11, v10

    :goto_4
    iget v12, v1, Lcom/google/research/reflection/layers/a;->afI:I

    if-ge v11, v12, :cond_7

    iget-object v12, v1, Lcom/google/research/reflection/layers/a;->afP:Lcom/google/research/reflection/a/a;

    invoke-virtual {v12, v2}, Lcom/google/research/reflection/a/a;->bD(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/research/reflection/layers/m;

    invoke-virtual {v12, v10, v11, v10}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v16

    if-eqz v9, :cond_4

    invoke-virtual {v9, v10, v11, v10}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v20

    move-wide/from16 v26, v20

    goto :goto_5

    :cond_4
    const-wide/16 v26, 0x0

    :goto_5
    move v12, v10

    :goto_6
    iget v13, v1, Lcom/google/research/reflection/layers/a;->afJ:I

    if-ge v12, v13, :cond_6

    invoke-virtual {v5, v10, v11, v12}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v20

    mul-double v20, v20, v20

    sub-double v20, v14, v20

    mul-double v20, v20, v16

    invoke-virtual {v8, v10, v11, v12}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v22

    mul-double v20, v20, v22

    iget-object v13, v1, Lcom/google/research/reflection/layers/a;->afS:[Lcom/google/research/reflection/layers/m;

    aget-object v13, v13, v10

    if-eqz v13, :cond_5

    iget-object v13, v1, Lcom/google/research/reflection/layers/a;->afS:[Lcom/google/research/reflection/layers/m;

    aget-object v13, v13, v10

    invoke-virtual {v13, v10, v11, v12}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v22

    mul-double v22, v22, v26

    add-double v20, v20, v22

    iget-object v13, v1, Lcom/google/research/reflection/layers/a;->afV:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v13, v10, v12, v10}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v22

    iget-object v13, v1, Lcom/google/research/reflection/layers/a;->afS:[Lcom/google/research/reflection/layers/m;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-virtual {v13, v10, v11, v10}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v24

    mul-double v22, v22, v24

    add-double v20, v20, v22

    iget-object v13, v1, Lcom/google/research/reflection/layers/a;->afV:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v13, v10, v12, v14}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v22

    iget-object v13, v1, Lcom/google/research/reflection/layers/a;->afS:[Lcom/google/research/reflection/layers/m;

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13, v10, v11, v10}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v24

    mul-double v22, v22, v24

    add-double v20, v20, v22

    goto :goto_7

    :cond_5
    const/4 v14, 0x2

    :goto_7
    iget-object v13, v1, Lcom/google/research/reflection/layers/a;->afV:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v13, v10, v12, v14}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v22

    invoke-virtual {v6, v10, v11, v10}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v13

    mul-double v22, v22, v13

    add-double v24, v20, v22

    const/16 v21, 0x0

    move-object/from16 v20, v7

    move/from16 v22, v11

    move/from16 v23, v12

    invoke-virtual/range {v20 .. v25}, Lcom/google/research/reflection/layers/m;->b(ZIID)V

    add-int/lit8 v12, v12, 0x1

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    goto :goto_6

    :cond_6
    add-int/lit8 v11, v11, 0x1

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_4

    :cond_7
    iget-object v5, v1, Lcom/google/research/reflection/layers/a;->afR:Lcom/google/research/reflection/a/a;

    invoke-virtual {v5, v2}, Lcom/google/research/reflection/a/a;->bD(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/research/reflection/layers/m;

    iget-object v8, v1, Lcom/google/research/reflection/layers/a;->afO:Lcom/google/research/reflection/a/a;

    invoke-virtual {v8, v2}, Lcom/google/research/reflection/a/a;->bD(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/research/reflection/layers/m;

    new-instance v9, Lcom/google/research/reflection/layers/m;

    iget v11, v1, Lcom/google/research/reflection/layers/a;->afI:I

    iget v12, v1, Lcom/google/research/reflection/layers/a;->afJ:I

    invoke-direct {v9, v11, v12}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    move v15, v10

    :goto_8
    iget v11, v1, Lcom/google/research/reflection/layers/a;->afI:I

    if-ge v15, v11, :cond_9

    invoke-virtual {v5, v10, v15, v10}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v17

    move v14, v10

    :goto_9
    iget v11, v1, Lcom/google/research/reflection/layers/a;->afJ:I

    if-ge v14, v11, :cond_8

    invoke-virtual {v8, v10, v15, v14}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v11

    mul-double/2addr v11, v11

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v11, v20, v11

    mul-double v11, v11, v17

    invoke-virtual {v7, v10, v15, v14}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v20

    mul-double v20, v20, v11

    const/4 v12, 0x0

    move-object v11, v9

    move v13, v15

    move/from16 v22, v14

    move/from16 v23, v15

    move-wide/from16 v15, v20

    invoke-virtual/range {v11 .. v16}, Lcom/google/research/reflection/layers/m;->b(ZIID)V

    add-int/lit8 v14, v22, 0x1

    move/from16 v15, v23

    goto :goto_9

    :cond_8
    move/from16 v23, v15

    add-int/lit8 v15, v23, 0x1

    goto :goto_8

    :cond_9
    new-instance v5, Lcom/google/research/reflection/layers/m;

    iget v11, v1, Lcom/google/research/reflection/layers/a;->afI:I

    const/4 v12, 0x1

    invoke-direct {v5, v11, v12}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iget-object v11, v1, Lcom/google/research/reflection/layers/a;->afQ:Lcom/google/research/reflection/a/a;

    invoke-virtual {v11, v2}, Lcom/google/research/reflection/a/a;->bD(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/research/reflection/layers/m;

    iget-object v12, v1, Lcom/google/research/reflection/layers/a;->afN:Lcom/google/research/reflection/a/a;

    add-int/lit8 v13, v2, -0x1

    invoke-virtual {v12, v13}, Lcom/google/research/reflection/a/a;->bD(I)Ljava/lang/Object;

    move-result-object v12

    move-object v15, v12

    check-cast v15, Lcom/google/research/reflection/layers/m;

    move v12, v10

    :goto_a
    iget v13, v1, Lcom/google/research/reflection/layers/a;->afI:I

    if-ge v12, v13, :cond_b

    invoke-virtual {v11, v10, v12, v10}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v13

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v20, v16, v13

    mul-double v20, v20, v13

    move v13, v10

    const-wide/16 v16, 0x0

    :goto_b
    if-eqz v15, :cond_a

    iget v14, v1, Lcom/google/research/reflection/layers/a;->afJ:I

    if-ge v13, v14, :cond_a

    invoke-virtual {v15, v10, v12, v13}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v22

    invoke-virtual {v7, v10, v12, v13}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v24

    mul-double v22, v22, v24

    add-double v16, v16, v22

    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_a
    const/4 v13, 0x0

    const/16 v23, 0x0

    mul-double v24, v16, v20

    move-object/from16 v20, v5

    move/from16 v21, v13

    move/from16 v22, v12

    invoke-virtual/range {v20 .. v25}, Lcom/google/research/reflection/layers/m;->b(ZIID)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_b
    new-instance v11, Lcom/google/research/reflection/layers/m;

    iget v12, v1, Lcom/google/research/reflection/layers/a;->afI:I

    const/4 v13, 0x1

    invoke-direct {v11, v12, v13}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iget-object v12, v1, Lcom/google/research/reflection/layers/a;->afR:Lcom/google/research/reflection/a/a;

    invoke-virtual {v12, v2}, Lcom/google/research/reflection/a/a;->bD(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/layers/m;

    move v12, v10

    :goto_c
    iget v13, v1, Lcom/google/research/reflection/layers/a;->afI:I

    if-ge v12, v13, :cond_d

    invoke-virtual {v2, v10, v12, v10}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v13

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v20, v16, v13

    mul-double v20, v20, v13

    move v13, v10

    const-wide/16 v22, 0x0

    :goto_d
    iget v14, v1, Lcom/google/research/reflection/layers/a;->afJ:I

    if-ge v13, v14, :cond_c

    invoke-virtual {v8, v10, v12, v13}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v24

    invoke-virtual {v7, v10, v12, v13}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v22, v22, v24

    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    :cond_c
    const/4 v13, 0x0

    const/4 v14, 0x0

    mul-double v24, v22, v20

    move-object/from16 v20, v11

    move/from16 v21, v13

    move/from16 v22, v12

    move/from16 v23, v14

    invoke-virtual/range {v20 .. v25}, Lcom/google/research/reflection/layers/m;->b(ZIID)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_d
    const/4 v2, 0x5

    new-array v2, v2, [Lcom/google/research/reflection/layers/m;

    aput-object v7, v2, v10

    const/4 v7, 0x1

    aput-object v11, v2, v7

    const/4 v7, 0x2

    aput-object v5, v2, v7

    const/4 v8, 0x3

    aput-object v9, v2, v8

    const/16 v29, 0x4

    aput-object v6, v2, v29

    iput-object v2, v1, Lcom/google/research/reflection/layers/a;->afS:[Lcom/google/research/reflection/layers/m;

    invoke-static {v11, v5}, Lcom/google/research/reflection/layers/m;->a(Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)Lcom/google/research/reflection/layers/m;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/google/research/reflection/layers/m;->a(Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)Lcom/google/research/reflection/layers/m;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/google/research/reflection/layers/m;->a(Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)Lcom/google/research/reflection/layers/m;

    move-result-object v2

    iget-object v5, v1, Lcom/google/research/reflection/layers/a;->afT:Lcom/google/research/reflection/layers/m;

    iget-object v6, v1, Lcom/google/research/reflection/layers/a;->afY:Lcom/google/research/reflection/layers/m;

    invoke-static {v5, v6}, Lcom/google/research/reflection/layers/m;->a(Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)Lcom/google/research/reflection/layers/m;

    move-result-object v5

    iget-object v6, v1, Lcom/google/research/reflection/layers/a;->agh:Lcom/google/research/reflection/layers/m;

    const/4 v9, 0x1

    invoke-static {v2, v5, v9, v6, v10}, Lcom/google/research/reflection/layers/m;->a(Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;ZLcom/google/research/reflection/layers/m;Z)Lcom/google/research/reflection/layers/m;

    iget-object v5, v1, Lcom/google/research/reflection/layers/a;->afU:Lcom/google/research/reflection/layers/m;

    iget-object v6, v1, Lcom/google/research/reflection/layers/a;->afX:Lcom/google/research/reflection/layers/m;

    invoke-static {v5, v6}, Lcom/google/research/reflection/layers/m;->a(Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)Lcom/google/research/reflection/layers/m;

    move-result-object v5

    iget-object v6, v1, Lcom/google/research/reflection/layers/a;->agi:Lcom/google/research/reflection/layers/m;

    invoke-static {v2, v5, v9, v6, v10}, Lcom/google/research/reflection/layers/m;->a(Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;ZLcom/google/research/reflection/layers/m;Z)Lcom/google/research/reflection/layers/m;

    const/4 v12, 0x0

    iget-object v13, v1, Lcom/google/research/reflection/layers/a;->aga:Lcom/google/research/reflection/layers/m;

    iget v14, v1, Lcom/google/research/reflection/layers/a;->afK:I

    iget v2, v1, Lcom/google/research/reflection/layers/a;->afI:I

    iget-object v5, v1, Lcom/google/research/reflection/layers/a;->afS:[Lcom/google/research/reflection/layers/m;

    move-object v11, v1

    move v6, v7

    move-object v7, v15

    move v15, v2

    move-object/from16 v16, v5

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-virtual/range {v11 .. v18}, Lcom/google/research/reflection/layers/a;->a(ZLcom/google/research/reflection/layers/m;II[Lcom/google/research/reflection/layers/m;[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;)V

    iget-object v13, v1, Lcom/google/research/reflection/layers/a;->agb:Lcom/google/research/reflection/layers/m;

    iget v14, v1, Lcom/google/research/reflection/layers/a;->afL:I

    iget v15, v1, Lcom/google/research/reflection/layers/a;->afI:I

    iget-object v2, v1, Lcom/google/research/reflection/layers/a;->afS:[Lcom/google/research/reflection/layers/m;

    const/16 v17, 0x0

    move-object/from16 v16, v2

    move-object/from16 v18, v0

    invoke-virtual/range {v11 .. v18}, Lcom/google/research/reflection/layers/a;->a(ZLcom/google/research/reflection/layers/m;II[Lcom/google/research/reflection/layers/m;[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;)V

    const/16 v20, 0x0

    iget-object v2, v1, Lcom/google/research/reflection/layers/a;->agc:Lcom/google/research/reflection/layers/m;

    iget-object v5, v1, Lcom/google/research/reflection/layers/a;->afS:[Lcom/google/research/reflection/layers/m;

    const/4 v9, 0x1

    aget-object v22, v5, v9

    const/16 v23, 0x0

    const/16 v24, 0x0

    iget v5, v1, Lcom/google/research/reflection/layers/a;->afJ:I

    const/16 v27, 0x0

    iget v9, v1, Lcom/google/research/reflection/layers/a;->afI:I

    move-object/from16 v21, v2

    move-object/from16 v25, v7

    move/from16 v26, v5

    move/from16 v28, v9

    invoke-static/range {v20 .. v28}, Lcom/google/research/reflection/layers/a;->a(ZLcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;III)V

    iget-object v2, v1, Lcom/google/research/reflection/layers/a;->agc:Lcom/google/research/reflection/layers/m;

    iget-object v5, v1, Lcom/google/research/reflection/layers/a;->afS:[Lcom/google/research/reflection/layers/m;

    aget-object v22, v5, v6

    iget v5, v1, Lcom/google/research/reflection/layers/a;->afJ:I

    const/16 v27, 0x1

    iget v6, v1, Lcom/google/research/reflection/layers/a;->afI:I

    move-object/from16 v21, v2

    move/from16 v26, v5

    move/from16 v28, v6

    invoke-static/range {v20 .. v28}, Lcom/google/research/reflection/layers/a;->a(ZLcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;III)V

    iget-object v2, v1, Lcom/google/research/reflection/layers/a;->agc:Lcom/google/research/reflection/layers/m;

    iget-object v5, v1, Lcom/google/research/reflection/layers/a;->afS:[Lcom/google/research/reflection/layers/m;

    aget-object v22, v5, v29

    iget v5, v1, Lcom/google/research/reflection/layers/a;->afJ:I

    const/16 v27, 0x2

    iget v6, v1, Lcom/google/research/reflection/layers/a;->afI:I

    move-object/from16 v21, v2

    move-object/from16 v25, v19

    move/from16 v26, v5

    move/from16 v28, v6

    invoke-static/range {v20 .. v28}, Lcom/google/research/reflection/layers/a;->a(ZLcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;III)V

    const/4 v12, 0x1

    iget-object v13, v1, Lcom/google/research/reflection/layers/a;->agd:Lcom/google/research/reflection/layers/m;

    const/4 v14, 0x1

    iget v15, v1, Lcom/google/research/reflection/layers/a;->afI:I

    iget-object v2, v1, Lcom/google/research/reflection/layers/a;->afS:[Lcom/google/research/reflection/layers/m;

    const/16 v18, 0x0

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v18}, Lcom/google/research/reflection/layers/a;->a(ZLcom/google/research/reflection/layers/m;II[Lcom/google/research/reflection/layers/m;[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;)V

    :goto_e
    iget v2, v1, Lcom/google/research/reflection/layers/a;->afJ:I

    if-ge v10, v2, :cond_e

    const/4 v11, 0x0

    iget-object v12, v1, Lcom/google/research/reflection/layers/a;->agf:Lcom/google/research/reflection/layers/m;

    iget-object v2, v1, Lcom/google/research/reflection/layers/a;->afS:[Lcom/google/research/reflection/layers/m;

    aget-object v13, v2, v8

    iget v2, v1, Lcom/google/research/reflection/layers/a;->afK:I

    iget v5, v1, Lcom/google/research/reflection/layers/a;->afI:I

    move v14, v10

    move-object v15, v3

    move-object/from16 v16, v4

    move/from16 v17, v2

    move/from16 v18, v10

    move/from16 v19, v5

    invoke-static/range {v11 .. v19}, Lcom/google/research/reflection/layers/a;->a(ZLcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;III)V

    iget-object v12, v1, Lcom/google/research/reflection/layers/a;->age:Lcom/google/research/reflection/layers/m;

    iget-object v2, v1, Lcom/google/research/reflection/layers/a;->afS:[Lcom/google/research/reflection/layers/m;

    aget-object v13, v2, v8

    const/4 v15, 0x0

    iget v2, v1, Lcom/google/research/reflection/layers/a;->afL:I

    iget v5, v1, Lcom/google/research/reflection/layers/a;->afI:I

    move-object/from16 v16, v0

    move/from16 v17, v2

    move/from16 v19, v5

    invoke-static/range {v11 .. v19}, Lcom/google/research/reflection/layers/a;->a(ZLcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;III)V

    const/16 v20, 0x1

    iget-object v2, v1, Lcom/google/research/reflection/layers/a;->agg:Lcom/google/research/reflection/layers/m;

    iget-object v5, v1, Lcom/google/research/reflection/layers/a;->afS:[Lcom/google/research/reflection/layers/m;

    aget-object v22, v5, v8

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    iget v5, v1, Lcom/google/research/reflection/layers/a;->afI:I

    move-object/from16 v21, v2

    move/from16 v23, v10

    move/from16 v27, v10

    move/from16 v28, v5

    invoke-static/range {v20 .. v28}, Lcom/google/research/reflection/layers/a;->a(ZLcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;III)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    .line 56
    :cond_e
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
