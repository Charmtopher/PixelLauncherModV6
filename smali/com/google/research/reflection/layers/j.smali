.class Lcom/google/research/reflection/layers/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/layers/u;


# instance fields
.field final synthetic agN:Lcom/google/research/reflection/layers/f;

.field final synthetic agR:Lcom/google/research/reflection/layers/r;

.field final synthetic agS:Lcom/google/research/reflection/layers/m;

.field final synthetic agm:[Ljava/util/ArrayList;

.field final synthetic agn:Lcom/google/research/reflection/layers/m;

.field final synthetic ago:Lcom/google/research/reflection/layers/m;


# direct methods
.method constructor <init>(Lcom/google/research/reflection/layers/f;Lcom/google/research/reflection/layers/r;[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/google/research/reflection/layers/j;->agN:Lcom/google/research/reflection/layers/f;

    iput-object p2, p0, Lcom/google/research/reflection/layers/j;->agR:Lcom/google/research/reflection/layers/r;

    iput-object p3, p0, Lcom/google/research/reflection/layers/j;->agm:[Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/research/reflection/layers/j;->agn:Lcom/google/research/reflection/layers/m;

    iput-object p5, p0, Lcom/google/research/reflection/layers/j;->ago:Lcom/google/research/reflection/layers/m;

    iput-object p6, p0, Lcom/google/research/reflection/layers/j;->agS:Lcom/google/research/reflection/layers/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bE(I)Ljava/lang/Boolean;
    .locals 12

    .line 267
    iget-object v0, p0, Lcom/google/research/reflection/layers/j;->agN:Lcom/google/research/reflection/layers/f;

    iget v0, v0, Lcom/google/research/reflection/layers/f;->agz:I

    div-int v0, p1, v0

    .line 268
    iget-object v1, p0, Lcom/google/research/reflection/layers/j;->agN:Lcom/google/research/reflection/layers/f;

    iget v1, v1, Lcom/google/research/reflection/layers/f;->agz:I

    rem-int/2addr p1, v1

    .line 269
    iget-object v1, p0, Lcom/google/research/reflection/layers/j;->agN:Lcom/google/research/reflection/layers/f;

    iget-object v2, p0, Lcom/google/research/reflection/layers/j;->agR:Lcom/google/research/reflection/layers/r;

    invoke-virtual {v1, v2}, Lcom/google/research/reflection/layers/f;->a(Lcom/google/research/reflection/layers/r;)Lcom/google/research/reflection/layers/m;

    move-result-object v1

    .line 270
    iget-object v2, p0, Lcom/google/research/reflection/layers/j;->agN:Lcom/google/research/reflection/layers/f;

    iget v2, v2, Lcom/google/research/reflection/layers/f;->agz:I

    mul-int/2addr v2, v0

    .line 271
    iget-object v3, p0, Lcom/google/research/reflection/layers/j;->agN:Lcom/google/research/reflection/layers/f;

    invoke-static {v3}, Lcom/google/research/reflection/layers/f;->h(Lcom/google/research/reflection/layers/f;)Lcom/google/research/reflection/layers/m;

    move-result-object v3

    iget-object v3, v3, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v4, v3, p1

    .line 272
    iget-object v3, p0, Lcom/google/research/reflection/layers/j;->agN:Lcom/google/research/reflection/layers/f;

    iget-boolean v3, v3, Lcom/google/research/reflection/layers/f;->agy:Z

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 273
    iget-object v3, p0, Lcom/google/research/reflection/layers/j;->agm:[Ljava/util/ArrayList;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/research/reflection/a/d;

    .line 274
    iget v8, v7, Lcom/google/research/reflection/a/d;->value:F

    float-to-double v8, v8

    iget-object v10, p0, Lcom/google/research/reflection/layers/j;->agN:Lcom/google/research/reflection/layers/f;

    invoke-static {v10}, Lcom/google/research/reflection/layers/f;->e(Lcom/google/research/reflection/layers/f;)Z

    move-result v10

    iget v7, v7, Lcom/google/research/reflection/a/d;->index:I

    invoke-virtual {v1, v10, v7, p1}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 275
    goto :goto_0

    .line 277
    :cond_0
    move v3, v6

    :goto_1
    iget-object v7, p0, Lcom/google/research/reflection/layers/j;->agN:Lcom/google/research/reflection/layers/f;

    iget v7, v7, Lcom/google/research/reflection/layers/f;->afK:I

    if-ge v3, v7, :cond_1

    .line 278
    iget-object v7, p0, Lcom/google/research/reflection/layers/j;->agn:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v7, v6, v0, v3}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v7

    iget-object v9, p0, Lcom/google/research/reflection/layers/j;->agN:Lcom/google/research/reflection/layers/f;

    .line 279
    invoke-static {v9}, Lcom/google/research/reflection/layers/f;->e(Lcom/google/research/reflection/layers/f;)Z

    move-result v9

    invoke-virtual {v1, v9, v3, p1}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    .line 277
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/google/research/reflection/layers/j;->agN:Lcom/google/research/reflection/layers/f;

    iget-boolean v1, v1, Lcom/google/research/reflection/layers/f;->agA:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/research/reflection/layers/j;->ago:Lcom/google/research/reflection/layers/m;

    if-eqz v1, :cond_2

    .line 283
    move v1, v6

    :goto_2
    iget-object v3, p0, Lcom/google/research/reflection/layers/j;->agN:Lcom/google/research/reflection/layers/f;

    iget v3, v3, Lcom/google/research/reflection/layers/f;->agz:I

    if-ge v1, v3, :cond_2

    .line 284
    iget-object v3, p0, Lcom/google/research/reflection/layers/j;->ago:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v3, v6, v0, v1}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v7

    iget-object v3, p0, Lcom/google/research/reflection/layers/j;->agN:Lcom/google/research/reflection/layers/f;

    .line 285
    invoke-static {v3}, Lcom/google/research/reflection/layers/f;->g(Lcom/google/research/reflection/layers/f;)Lcom/google/research/reflection/layers/m;

    move-result-object v3

    invoke-virtual {v3, v6, v1, p1}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/google/research/reflection/layers/j;->agS:Lcom/google/research/reflection/layers/m;

    iget-object v0, v0, Lcom/google/research/reflection/layers/m;->agU:[D

    add-int/2addr v2, p1

    aput-wide v4, v0, v2

    .line 289
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
