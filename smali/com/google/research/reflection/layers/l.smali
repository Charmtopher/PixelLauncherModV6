.class Lcom/google/research/reflection/layers/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/layers/u;


# instance fields
.field final synthetic agP:Lcom/google/research/reflection/layers/m;

.field final synthetic agT:Lcom/google/research/reflection/layers/m;


# direct methods
.method constructor <init>(Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/google/research/reflection/layers/l;->agP:Lcom/google/research/reflection/layers/m;

    iput-object p2, p0, Lcom/google/research/reflection/layers/l;->agT:Lcom/google/research/reflection/layers/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bE(I)Ljava/lang/Boolean;
    .locals 16

    move-object/from16 v0, p0

    .line 333
    move/from16 v1, p1

    iget-object v2, v0, Lcom/google/research/reflection/layers/l;->agP:Lcom/google/research/reflection/layers/m;

    iget-object v0, v0, Lcom/google/research/reflection/layers/l;->agT:Lcom/google/research/reflection/layers/m;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result v4

    invoke-virtual {v2, v3, v1, v3}, Lcom/google/research/reflection/layers/m;->a(ZII)I

    move-result v5

    invoke-virtual {v2, v3, v1, v4}, Lcom/google/research/reflection/layers/m;->a(ZII)I

    move-result v1

    const-wide v6, -0x10000000000001L

    move-wide v7, v6

    move v6, v5

    :goto_0
    if-ge v6, v1, :cond_1

    iget-object v9, v2, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v10, v9, v6

    cmpl-double v9, v10, v7

    if-lez v9, :cond_0

    iget-object v7, v2, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v8, v7, v6

    move-wide v7, v8

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v9, 0x0

    move-wide v11, v9

    :goto_1
    if-ge v5, v1, :cond_2

    iget-object v6, v0, Lcom/google/research/reflection/layers/m;->agU:[D

    iget-object v13, v2, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v14, v13, v5

    sub-double/2addr v14, v7

    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    move-result-wide v13

    aput-wide v13, v6, v5

    iget-object v6, v0, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v13, v6, v5

    add-double/2addr v11, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    cmpl-double v1, v11, v9

    if-eqz v1, :cond_4

    :goto_2
    if-ge v3, v4, :cond_3

    iget-object v1, v0, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v5, v1, v3

    div-double/2addr v5, v11

    aput-wide v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 334
    :cond_3
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 333
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "softmax sum = 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
