.class public Lcom/google/research/reflection/layers/f;
.super Lcom/google/research/reflection/layers/e;
.source "SourceFile"


# instance fields
.field agB:I

.field private agC:Z

.field private agD:Lcom/google/research/reflection/layers/m;

.field private agE:Lcom/google/research/reflection/layers/m;

.field private agF:Lcom/google/research/reflection/layers/m;

.field private agG:Lcom/google/research/reflection/layers/m;

.field public agH:Lcom/google/research/reflection/layers/m;

.field private agI:Lcom/google/research/reflection/layers/m;

.field agJ:I

.field private agK:I

.field private agL:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/research/reflection/layers/e;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(ZIIIIIIIZZF)V
    .locals 11

    move-object v6, p0

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p10

    .line 49
    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p4

    move v4, v7

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/google/research/reflection/layers/e;-><init>(ZIIII)V

    .line 50
    iput v9, v6, Lcom/google/research/reflection/layers/f;->agJ:I

    .line 51
    move/from16 v0, p11

    iput v0, v6, Lcom/google/research/reflection/layers/f;->agL:F

    .line 52
    new-instance v0, Lcom/google/research/reflection/layers/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v8}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object v0, v6, Lcom/google/research/reflection/layers/f;->agH:Lcom/google/research/reflection/layers/m;

    .line 53
    move v0, p3

    iput v0, v6, Lcom/google/research/reflection/layers/f;->agB:I

    .line 54
    new-instance v0, Lcom/google/research/reflection/layers/m;

    invoke-direct {v0, v7, v8}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object v0, v6, Lcom/google/research/reflection/layers/f;->agF:Lcom/google/research/reflection/layers/m;

    .line 55
    new-instance v0, Lcom/google/research/reflection/layers/m;

    invoke-direct {v0, v8, v8}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object v0, v6, Lcom/google/research/reflection/layers/f;->agG:Lcom/google/research/reflection/layers/m;

    .line 56
    new-instance v0, Lcom/google/research/reflection/layers/m;

    invoke-direct {v0, v1, v8}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object v0, v6, Lcom/google/research/reflection/layers/f;->agI:Lcom/google/research/reflection/layers/m;

    .line 57
    move/from16 v0, p9

    iput-boolean v0, v6, Lcom/google/research/reflection/layers/f;->agC:Z

    .line 58
    if-gez v9, :cond_0

    .line 59
    new-instance v0, Lcom/google/research/reflection/layers/m;

    invoke-direct {v0, v7, v8}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object v0, v6, Lcom/google/research/reflection/layers/f;->agD:Lcom/google/research/reflection/layers/m;

    .line 60
    iget-object v0, v6, Lcom/google/research/reflection/layers/f;->agD:Lcom/google/research/reflection/layers/m;

    invoke-static {v0, v10}, Lcom/google/research/reflection/layers/x;->a(Lcom/google/research/reflection/layers/m;Z)V

    .line 61
    iget-object v0, v6, Lcom/google/research/reflection/layers/f;->agH:Lcom/google/research/reflection/layers/m;

    iget-object v0, v0, Lcom/google/research/reflection/layers/m;->agU:[D

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 63
    :cond_0
    move/from16 v0, p8

    iput v0, v6, Lcom/google/research/reflection/layers/f;->agK:I

    .line 64
    new-instance v0, Lcom/google/research/reflection/layers/m;

    invoke-direct {v0, v8, v8}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object v0, v6, Lcom/google/research/reflection/layers/f;->agE:Lcom/google/research/reflection/layers/m;

    .line 65
    iget-object v0, v6, Lcom/google/research/reflection/layers/f;->agE:Lcom/google/research/reflection/layers/m;

    invoke-static {v0, v10}, Lcom/google/research/reflection/layers/x;->a(Lcom/google/research/reflection/layers/m;Z)V

    .line 66
    return-void
.end method

.method static synthetic b(Lcom/google/research/reflection/layers/f;)Lcom/google/research/reflection/layers/m;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/google/research/reflection/layers/f;->agF:Lcom/google/research/reflection/layers/m;

    return-object p0
.end method

.method static synthetic c(Lcom/google/research/reflection/layers/f;)Lcom/google/research/reflection/layers/m;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/google/research/reflection/layers/f;->agG:Lcom/google/research/reflection/layers/m;

    return-object p0
.end method

.method static synthetic d(Lcom/google/research/reflection/layers/f;)Lcom/google/research/reflection/layers/m;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/google/research/reflection/layers/f;->agI:Lcom/google/research/reflection/layers/m;

    return-object p0
.end method

.method static synthetic e(Lcom/google/research/reflection/layers/f;)Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/google/research/reflection/layers/f;->agC:Z

    return p0
.end method

.method static synthetic f(Lcom/google/research/reflection/layers/f;)Lcom/google/research/reflection/layers/m;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/google/research/reflection/layers/f;->agD:Lcom/google/research/reflection/layers/m;

    return-object p0
.end method

.method static synthetic g(Lcom/google/research/reflection/layers/f;)Lcom/google/research/reflection/layers/m;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/google/research/reflection/layers/f;->agE:Lcom/google/research/reflection/layers/m;

    return-object p0
.end method

.method static synthetic h(Lcom/google/research/reflection/layers/f;)Lcom/google/research/reflection/layers/m;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/google/research/reflection/layers/f;->agH:Lcom/google/research/reflection/layers/m;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/research/reflection/layers/r;)Lcom/google/research/reflection/layers/m;
    .locals 1

    .line 77
    iget v0, p0, Lcom/google/research/reflection/layers/f;->agJ:I

    if-ltz v0, :cond_0

    .line 78
    iget-object p1, p1, Lcom/google/research/reflection/layers/r;->ahe:Ljava/util/List;

    iget v0, p0, Lcom/google/research/reflection/layers/f;->agJ:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/research/reflection/layers/f;

    iget-object p1, p1, Lcom/google/research/reflection/layers/f;->agD:Lcom/google/research/reflection/layers/m;

    return-object p1

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/google/research/reflection/layers/f;->agD:Lcom/google/research/reflection/layers/m;

    return-object p1
.end method

.method public final a(ZLcom/google/research/reflection/layers/r;[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;)Lcom/google/research/reflection/layers/m;
    .locals 15

    move-object v7, p0

    move-object/from16 v3, p3

    .line 238
    move-object/from16 v4, p4

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v3, :cond_0

    .line 239
    iput-boolean v9, v7, Lcom/google/research/reflection/layers/f;->agy:Z

    .line 240
    iget-object v0, v7, Lcom/google/research/reflection/layers/f;->agu:Lcom/google/research/reflection/a/a;

    invoke-virtual {v0, v3}, Lcom/google/research/reflection/a/a;->B(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 242
    :cond_0
    iput-boolean v10, v7, Lcom/google/research/reflection/layers/f;->agy:Z

    .line 243
    iget-object v0, v7, Lcom/google/research/reflection/layers/f;->agt:Lcom/google/research/reflection/a/a;

    invoke-virtual {v0, v4}, Lcom/google/research/reflection/a/a;->B(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-virtual {v4, v10}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result v0

    iget v1, v7, Lcom/google/research/reflection/layers/e;->afK:I

    if-ne v0, v1, :cond_8

    .line 245
    invoke-virtual {v4, v10}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result v0

    iget v1, v7, Lcom/google/research/reflection/layers/e;->afI:I

    if-ne v0, v1, :cond_8

    .line 258
    :goto_0
    iget-object v0, v7, Lcom/google/research/reflection/layers/f;->ags:Lcom/google/research/reflection/a/a;

    iget-object v0, v0, Lcom/google/research/reflection/a/a;->afo:[Ljava/lang/Object;

    array-length v0, v0

    if-le v0, v9, :cond_1

    .line 259
    iget-object v0, v7, Lcom/google/research/reflection/layers/f;->ags:Lcom/google/research/reflection/a/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/a/a;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/layers/m;

    .line 263
    :goto_1
    move-object v5, v0

    goto :goto_2

    .line 261
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 263
    :goto_2
    new-instance v11, Lcom/google/research/reflection/layers/m;

    iget v0, v7, Lcom/google/research/reflection/layers/f;->afI:I

    iget v1, v7, Lcom/google/research/reflection/layers/f;->agz:I

    invoke-direct {v11, v0, v1}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    .line 264
    invoke-static {}, Lcom/google/research/reflection/layers/v;->iZ()Lcom/google/research/reflection/layers/v;

    move-result-object v12

    iget v0, v7, Lcom/google/research/reflection/layers/f;->afI:I

    iget v1, v7, Lcom/google/research/reflection/layers/f;->agz:I

    mul-int v13, v0, v1

    new-instance v14, Lcom/google/research/reflection/layers/j;

    move-object v0, v14

    move-object v1, v7

    move-object/from16 v2, p2

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/google/research/reflection/layers/j;-><init>(Lcom/google/research/reflection/layers/f;Lcom/google/research/reflection/layers/r;[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V

    invoke-virtual {v12, v13, v14}, Lcom/google/research/reflection/layers/v;->a(ILcom/google/research/reflection/layers/u;)V

    .line 293
    iget-object v0, v7, Lcom/google/research/reflection/layers/f;->ags:Lcom/google/research/reflection/a/a;

    new-instance v1, Lcom/google/research/reflection/layers/m;

    iget v2, v7, Lcom/google/research/reflection/layers/f;->afI:I

    iget v3, v7, Lcom/google/research/reflection/layers/f;->agz:I

    invoke-direct {v1, v2, v3}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/a/a;->B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/layers/m;

    .line 294
    iget v1, v7, Lcom/google/research/reflection/layers/f;->agB:I

    if-eq v1, v9, :cond_4

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    if-ne v1, v8, :cond_3

    invoke-static {}, Lcom/google/research/reflection/layers/v;->iZ()Lcom/google/research/reflection/layers/v;

    move-result-object v1

    invoke-virtual {v11, v10}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result v2

    new-instance v3, Lcom/google/research/reflection/layers/l;

    invoke-direct {v3, v11, v0}, Lcom/google/research/reflection/layers/l;-><init>(Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/research/reflection/layers/v;->a(ILcom/google/research/reflection/layers/u;)V

    goto :goto_4

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v2, 0x2c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported activation function: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_3
    invoke-static {}, Lcom/google/research/reflection/layers/v;->iZ()Lcom/google/research/reflection/layers/v;

    move-result-object v2

    iget-object v3, v11, Lcom/google/research/reflection/layers/m;->agU:[D

    array-length v3, v3

    new-instance v4, Lcom/google/research/reflection/layers/k;

    invoke-direct {v4, v1, v0, v11}, Lcom/google/research/reflection/layers/k;-><init>(ILcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V

    invoke-virtual {v2, v3, v4}, Lcom/google/research/reflection/layers/v;->a(ILcom/google/research/reflection/layers/u;)V

    .line 295
    :goto_4
    iget v1, v7, Lcom/google/research/reflection/layers/f;->agL:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 296
    if-eqz p1, :cond_6

    .line 297
    :goto_5
    iget-object v1, v0, Lcom/google/research/reflection/layers/m;->agU:[D

    array-length v1, v1

    if-ge v10, v1, :cond_7

    .line 298
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    iget v3, v7, Lcom/google/research/reflection/layers/f;->agL:F

    float-to-double v3, v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_5

    .line 299
    iget-object v1, v0, Lcom/google/research/reflection/layers/m;->agU:[D

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v10

    .line 297
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 303
    :cond_6
    :goto_6
    iget-object v1, v0, Lcom/google/research/reflection/layers/m;->agU:[D

    array-length v1, v1

    if-ge v10, v1, :cond_7

    .line 304
    iget-object v1, v0, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v2, v1, v10

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, v7, Lcom/google/research/reflection/layers/f;->agL:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v2, v4

    aput-wide v2, v1, v10

    .line 303
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 308
    :cond_7
    return-object v0

    .line 246
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 250
    invoke-virtual {v4, v10}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    .line 251
    iget v2, v7, Lcom/google/research/reflection/layers/e;->afK:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    .line 252
    invoke-virtual {v4, v10}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x3

    .line 253
    iget v3, v7, Lcom/google/research/reflection/layers/e;->afI:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 247
    const-string v2, "Inconsistent input, input size: %d, expected input size: %d, row size: %d, expected row size: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(ILcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V
    .locals 2

    .line 170
    invoke-static {}, Lcom/google/research/reflection/layers/v;->iZ()Lcom/google/research/reflection/layers/v;

    move-result-object p4

    iget-object v0, p2, Lcom/google/research/reflection/layers/m;->agU:[D

    array-length v0, v0

    new-instance v1, Lcom/google/research/reflection/layers/h;

    invoke-direct {v1, p1, p3, p2}, Lcom/google/research/reflection/layers/h;-><init>(ILcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V

    invoke-virtual {p4, v0, v1}, Lcom/google/research/reflection/layers/v;->a(ILcom/google/research/reflection/layers/u;)V

    .line 186
    return-void
.end method

.method public final a(Lcom/google/research/reflection/layers/f;)V
    .locals 1

    .line 106
    invoke-super {p0, p1}, Lcom/google/research/reflection/layers/e;->a(Lcom/google/research/reflection/layers/e;)V

    .line 107
    iget-boolean v0, p0, Lcom/google/research/reflection/layers/f;->agC:Z

    iput-boolean v0, p1, Lcom/google/research/reflection/layers/f;->agC:Z

    .line 108
    iget v0, p0, Lcom/google/research/reflection/layers/f;->agB:I

    iput v0, p1, Lcom/google/research/reflection/layers/f;->agB:I

    .line 109
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->agD:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/m;->iU()Lcom/google/research/reflection/layers/m;

    move-result-object v0

    iput-object v0, p1, Lcom/google/research/reflection/layers/f;->agD:Lcom/google/research/reflection/layers/m;

    .line 110
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->agF:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/m;->iU()Lcom/google/research/reflection/layers/m;

    move-result-object v0

    iput-object v0, p1, Lcom/google/research/reflection/layers/f;->agF:Lcom/google/research/reflection/layers/m;

    .line 111
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->agE:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/m;->iU()Lcom/google/research/reflection/layers/m;

    move-result-object v0

    iput-object v0, p1, Lcom/google/research/reflection/layers/f;->agE:Lcom/google/research/reflection/layers/m;

    .line 112
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->agG:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/m;->iU()Lcom/google/research/reflection/layers/m;

    move-result-object v0

    iput-object v0, p1, Lcom/google/research/reflection/layers/f;->agG:Lcom/google/research/reflection/layers/m;

    .line 113
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->agH:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/m;->iU()Lcom/google/research/reflection/layers/m;

    move-result-object v0

    iput-object v0, p1, Lcom/google/research/reflection/layers/f;->agH:Lcom/google/research/reflection/layers/m;

    .line 114
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->agI:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/m;->iU()Lcom/google/research/reflection/layers/m;

    move-result-object v0

    iput-object v0, p1, Lcom/google/research/reflection/layers/f;->agI:Lcom/google/research/reflection/layers/m;

    .line 115
    iget v0, p0, Lcom/google/research/reflection/layers/f;->agJ:I

    iput v0, p1, Lcom/google/research/reflection/layers/f;->agJ:I

    .line 116
    iget v0, p0, Lcom/google/research/reflection/layers/f;->agK:I

    iput v0, p1, Lcom/google/research/reflection/layers/f;->agK:I

    .line 117
    return-void
.end method

.method public final a(Lcom/google/research/reflection/layers/r;ILcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->agv:Lcom/google/research/reflection/layers/m;

    const/4 v1, 0x0

    invoke-static {p3, p4, v0, v1}, Lcom/google/research/reflection/layers/m;->a(Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Z)Lcom/google/research/reflection/layers/m;

    .line 125
    iget-object p3, p0, Lcom/google/research/reflection/layers/f;->ags:Lcom/google/research/reflection/a/a;

    invoke-virtual {p3, p2}, Lcom/google/research/reflection/a/a;->bD(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/research/reflection/layers/m;

    .line 126
    iget p4, p0, Lcom/google/research/reflection/layers/f;->agB:I

    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->agv:Lcom/google/research/reflection/layers/m;

    invoke-virtual {p0, p4, v0, p3, p5}, Lcom/google/research/reflection/layers/f;->a(ILcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V

    .line 128
    iget-object p3, p0, Lcom/google/research/reflection/layers/f;->agv:Lcom/google/research/reflection/layers/m;

    invoke-virtual {p0, p1}, Lcom/google/research/reflection/layers/f;->a(Lcom/google/research/reflection/layers/r;)Lcom/google/research/reflection/layers/m;

    move-result-object p1

    iget-boolean p4, p0, Lcom/google/research/reflection/layers/f;->agC:Z

    const/4 p5, 0x1

    xor-int/2addr p4, p5

    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->agw:Lcom/google/research/reflection/layers/m;

    invoke-static {p3, p1, p4, v0, v1}, Lcom/google/research/reflection/layers/m;->a(Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;ZLcom/google/research/reflection/layers/m;Z)Lcom/google/research/reflection/layers/m;

    .line 129
    iget-boolean p1, p0, Lcom/google/research/reflection/layers/f;->agA:Z

    if-eqz p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/google/research/reflection/layers/f;->agv:Lcom/google/research/reflection/layers/m;

    iget-object p3, p0, Lcom/google/research/reflection/layers/f;->agE:Lcom/google/research/reflection/layers/m;

    iget-object p4, p0, Lcom/google/research/reflection/layers/f;->agx:Lcom/google/research/reflection/layers/m;

    invoke-static {p1, p3, p5, p4, v1}, Lcom/google/research/reflection/layers/m;->a(Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;ZLcom/google/research/reflection/layers/m;Z)Lcom/google/research/reflection/layers/m;

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/google/research/reflection/layers/f;->agt:Lcom/google/research/reflection/a/a;

    invoke-virtual {p1, p2}, Lcom/google/research/reflection/a/a;->bD(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/research/reflection/layers/m;

    .line 134
    iget-object p3, p0, Lcom/google/research/reflection/layers/f;->agu:Lcom/google/research/reflection/a/a;

    invoke-virtual {p3, p2}, Lcom/google/research/reflection/a/a;->bD(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/util/ArrayList;

    .line 135
    iget-object p4, p0, Lcom/google/research/reflection/layers/f;->ags:Lcom/google/research/reflection/a/a;

    sub-int/2addr p2, p5

    invoke-virtual {p4, p2}, Lcom/google/research/reflection/a/a;->bD(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/research/reflection/layers/m;

    .line 136
    invoke-static {}, Lcom/google/research/reflection/layers/v;->iZ()Lcom/google/research/reflection/layers/v;

    move-result-object p4

    iget p5, p0, Lcom/google/research/reflection/layers/f;->afI:I

    iget v0, p0, Lcom/google/research/reflection/layers/f;->agz:I

    mul-int/2addr p5, v0

    new-instance v0, Lcom/google/research/reflection/layers/g;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/google/research/reflection/layers/g;-><init>(Lcom/google/research/reflection/layers/f;[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V

    invoke-virtual {p4, p5, v0}, Lcom/google/research/reflection/layers/v;->a(ILcom/google/research/reflection/layers/u;)V

    .line 165
    return-void
.end method

.method public b(Ljava/io/DataInputStream;)V
    .locals 3

    .line 364
    invoke-super {p0, p1}, Lcom/google/research/reflection/layers/e;->b(Ljava/io/DataInputStream;)V

    .line 365
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/research/reflection/layers/f;->agB:I

    .line 366
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/research/reflection/layers/f;->agC:Z

    .line 367
    new-instance v0, Lcom/google/research/reflection/layers/m;

    invoke-direct {v0}, Lcom/google/research/reflection/layers/m;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/layers/f;->agE:Lcom/google/research/reflection/layers/m;

    .line 368
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->agE:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/layers/m;->b(Ljava/io/DataInputStream;)V

    .line 369
    new-instance v0, Lcom/google/research/reflection/layers/m;

    invoke-direct {v0}, Lcom/google/research/reflection/layers/m;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/layers/f;->agH:Lcom/google/research/reflection/layers/m;

    .line 370
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->agH:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/layers/m;->b(Ljava/io/DataInputStream;)V

    .line 371
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/research/reflection/layers/f;->agJ:I

    .line 372
    iget v0, p0, Lcom/google/research/reflection/layers/f;->agJ:I

    if-gez v0, :cond_0

    .line 373
    new-instance v0, Lcom/google/research/reflection/layers/m;

    invoke-direct {v0}, Lcom/google/research/reflection/layers/m;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/layers/f;->agD:Lcom/google/research/reflection/layers/m;

    .line 374
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->agD:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/layers/m;->b(Ljava/io/DataInputStream;)V

    .line 376
    :cond_0
    new-instance v0, Lcom/google/research/reflection/layers/m;

    iget v1, p0, Lcom/google/research/reflection/layers/f;->afK:I

    iget v2, p0, Lcom/google/research/reflection/layers/f;->agz:I

    invoke-direct {v0, v1, v2}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object v0, p0, Lcom/google/research/reflection/layers/f;->agF:Lcom/google/research/reflection/layers/m;

    .line 377
    new-instance v0, Lcom/google/research/reflection/layers/m;

    iget v1, p0, Lcom/google/research/reflection/layers/f;->agz:I

    iget v2, p0, Lcom/google/research/reflection/layers/f;->agz:I

    invoke-direct {v0, v1, v2}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object v0, p0, Lcom/google/research/reflection/layers/f;->agG:Lcom/google/research/reflection/layers/m;

    .line 378
    new-instance v0, Lcom/google/research/reflection/layers/m;

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/research/reflection/layers/f;->agz:I

    invoke-direct {v0, v1, v2}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object v0, p0, Lcom/google/research/reflection/layers/f;->agI:Lcom/google/research/reflection/layers/m;

    .line 379
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/research/reflection/layers/f;->agK:I

    .line 380
    invoke-virtual {p0, p1}, Lcom/google/research/reflection/layers/f;->c(Ljava/io/DataInputStream;)V

    .line 381
    return-void
.end method

.method public b(Ljava/io/DataOutputStream;)V
    .locals 1

    .line 344
    invoke-super {p0, p1}, Lcom/google/research/reflection/layers/e;->b(Ljava/io/DataOutputStream;)V

    .line 345
    iget v0, p0, Lcom/google/research/reflection/layers/f;->agB:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 346
    iget-boolean v0, p0, Lcom/google/research/reflection/layers/f;->agC:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 347
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->agE:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/layers/m;->b(Ljava/io/DataOutputStream;)V

    .line 348
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->agH:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/layers/m;->b(Ljava/io/DataOutputStream;)V

    .line 349
    iget v0, p0, Lcom/google/research/reflection/layers/f;->agJ:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 350
    iget v0, p0, Lcom/google/research/reflection/layers/f;->agJ:I

    if-gez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->agD:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/layers/m;->b(Ljava/io/DataOutputStream;)V

    .line 353
    :cond_0
    iget v0, p0, Lcom/google/research/reflection/layers/f;->agK:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 354
    invoke-virtual {p0, p1}, Lcom/google/research/reflection/layers/f;->c(Ljava/io/DataOutputStream;)V

    .line 355
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/google/research/reflection/layers/f;->iT()Lcom/google/research/reflection/layers/f;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 359
    const-string v0, "LinearLayer"

    return-object v0
.end method

.method public synthetic iO()Lcom/google/research/reflection/layers/e;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/google/research/reflection/layers/f;->iT()Lcom/google/research/reflection/layers/f;

    move-result-object v0

    return-object v0
.end method

.method final iP()V
    .locals 3

    .line 70
    invoke-super {p0}, Lcom/google/research/reflection/layers/e;->iP()V

    .line 71
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->agF:Lcom/google/research/reflection/layers/m;

    iget-object v0, v0, Lcom/google/research/reflection/layers/m;->agU:[D

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 72
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->agG:Lcom/google/research/reflection/layers/m;

    iget-object v0, v0, Lcom/google/research/reflection/layers/m;->agU:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 73
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->agI:Lcom/google/research/reflection/layers/m;

    iget-object v0, v0, Lcom/google/research/reflection/layers/m;->agU:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 74
    return-void
.end method

.method public iT()Lcom/google/research/reflection/layers/f;
    .locals 2

    .line 90
    new-instance v0, Lcom/google/research/reflection/layers/f;

    invoke-direct {v0}, Lcom/google/research/reflection/layers/f;-><init>()V

    .line 91
    invoke-super {p0, v0}, Lcom/google/research/reflection/layers/e;->a(Lcom/google/research/reflection/layers/e;)V

    .line 92
    iget-boolean v1, p0, Lcom/google/research/reflection/layers/f;->agC:Z

    iput-boolean v1, v0, Lcom/google/research/reflection/layers/f;->agC:Z

    .line 93
    iget v1, p0, Lcom/google/research/reflection/layers/f;->agB:I

    iput v1, v0, Lcom/google/research/reflection/layers/f;->agB:I

    .line 94
    iget-object v1, p0, Lcom/google/research/reflection/layers/f;->agD:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/m;->iU()Lcom/google/research/reflection/layers/m;

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/layers/f;->agD:Lcom/google/research/reflection/layers/m;

    .line 95
    iget-object v1, p0, Lcom/google/research/reflection/layers/f;->agF:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/m;->iU()Lcom/google/research/reflection/layers/m;

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/layers/f;->agF:Lcom/google/research/reflection/layers/m;

    .line 96
    iget-object v1, p0, Lcom/google/research/reflection/layers/f;->agE:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/m;->iU()Lcom/google/research/reflection/layers/m;

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/layers/f;->agE:Lcom/google/research/reflection/layers/m;

    .line 97
    iget-object v1, p0, Lcom/google/research/reflection/layers/f;->agG:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/m;->iU()Lcom/google/research/reflection/layers/m;

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/layers/f;->agG:Lcom/google/research/reflection/layers/m;

    .line 98
    iget-object v1, p0, Lcom/google/research/reflection/layers/f;->agH:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/m;->iU()Lcom/google/research/reflection/layers/m;

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/layers/f;->agH:Lcom/google/research/reflection/layers/m;

    .line 99
    iget-object v1, p0, Lcom/google/research/reflection/layers/f;->agI:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/m;->iU()Lcom/google/research/reflection/layers/m;

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/layers/f;->agI:Lcom/google/research/reflection/layers/m;

    .line 100
    iget v1, p0, Lcom/google/research/reflection/layers/f;->agJ:I

    iput v1, v0, Lcom/google/research/reflection/layers/f;->agJ:I

    .line 101
    iget v1, p0, Lcom/google/research/reflection/layers/f;->agK:I

    iput v1, v0, Lcom/google/research/reflection/layers/f;->agK:I

    .line 102
    return-object v0
.end method

.method public final update()V
    .locals 3

    .line 190
    invoke-static {}, Lcom/google/research/reflection/layers/v;->iZ()Lcom/google/research/reflection/layers/v;

    move-result-object v0

    iget v1, p0, Lcom/google/research/reflection/layers/f;->agz:I

    new-instance v2, Lcom/google/research/reflection/layers/i;

    invoke-direct {v2, p0}, Lcom/google/research/reflection/layers/i;-><init>(Lcom/google/research/reflection/layers/f;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/research/reflection/layers/v;->a(ILcom/google/research/reflection/layers/u;)V

    .line 213
    return-void
.end method
