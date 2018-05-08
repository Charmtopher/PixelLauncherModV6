.class Lcom/google/research/reflection/layers/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/layers/u;


# instance fields
.field final synthetic agN:Lcom/google/research/reflection/layers/f;


# direct methods
.method constructor <init>(Lcom/google/research/reflection/layers/f;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/google/research/reflection/layers/i;->agN:Lcom/google/research/reflection/layers/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bE(I)Ljava/lang/Boolean;
    .locals 10

    .line 193
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    iget-object v1, p0, Lcom/google/research/reflection/layers/i;->agN:Lcom/google/research/reflection/layers/f;

    iget v1, v1, Lcom/google/research/reflection/layers/f;->afK:I

    if-ge v7, v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/google/research/reflection/layers/i;->agN:Lcom/google/research/reflection/layers/f;

    iget v1, v1, Lcom/google/research/reflection/layers/f;->agz:I

    mul-int/2addr v1, v7

    .line 195
    iget-object v2, p0, Lcom/google/research/reflection/layers/i;->agN:Lcom/google/research/reflection/layers/f;

    invoke-static {v2}, Lcom/google/research/reflection/layers/f;->f(Lcom/google/research/reflection/layers/f;)Lcom/google/research/reflection/layers/m;

    move-result-object v2

    iget-object v3, p0, Lcom/google/research/reflection/layers/i;->agN:Lcom/google/research/reflection/layers/f;

    invoke-static {v3}, Lcom/google/research/reflection/layers/f;->e(Lcom/google/research/reflection/layers/f;)Z

    move-result v3

    .line 196
    invoke-static {}, Lcom/google/research/reflection/layers/e;->iS()D

    move-result-wide v4

    neg-double v4, v4

    iget-object v6, p0, Lcom/google/research/reflection/layers/i;->agN:Lcom/google/research/reflection/layers/f;

    invoke-static {v6}, Lcom/google/research/reflection/layers/f;->b(Lcom/google/research/reflection/layers/f;)Lcom/google/research/reflection/layers/m;

    move-result-object v6

    iget-object v6, v6, Lcom/google/research/reflection/layers/m;->agU:[D

    add-int/2addr v1, p1

    aget-wide v8, v6, v1

    mul-double v5, v4, v8

    .line 195
    move-object v1, v2

    move v2, v3

    move v3, v7

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/research/reflection/layers/m;->a(ZIID)V

    .line 193
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/google/research/reflection/layers/i;->agN:Lcom/google/research/reflection/layers/f;

    iget-boolean v1, v1, Lcom/google/research/reflection/layers/f;->agA:Z

    if-eqz v1, :cond_1

    .line 199
    :goto_1
    iget-object v1, p0, Lcom/google/research/reflection/layers/i;->agN:Lcom/google/research/reflection/layers/f;

    iget v1, v1, Lcom/google/research/reflection/layers/f;->agz:I

    if-ge v0, v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/google/research/reflection/layers/i;->agN:Lcom/google/research/reflection/layers/f;

    iget v1, v1, Lcom/google/research/reflection/layers/f;->agz:I

    mul-int/2addr v1, v0

    .line 201
    iget-object v2, p0, Lcom/google/research/reflection/layers/i;->agN:Lcom/google/research/reflection/layers/f;

    invoke-static {v2}, Lcom/google/research/reflection/layers/f;->g(Lcom/google/research/reflection/layers/f;)Lcom/google/research/reflection/layers/m;

    move-result-object v2

    iget-object v2, v2, Lcom/google/research/reflection/layers/m;->agU:[D

    add-int/2addr v1, p1

    aget-wide v3, v2, v1

    .line 202
    invoke-static {}, Lcom/google/research/reflection/layers/e;->iS()D

    move-result-wide v5

    iget-object v7, p0, Lcom/google/research/reflection/layers/i;->agN:Lcom/google/research/reflection/layers/f;

    invoke-static {v7}, Lcom/google/research/reflection/layers/f;->c(Lcom/google/research/reflection/layers/f;)Lcom/google/research/reflection/layers/m;

    move-result-object v7

    iget-object v7, v7, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v8, v7, v1

    mul-double/2addr v5, v8

    sub-double/2addr v3, v5

    aput-wide v3, v2, v1

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/google/research/reflection/layers/i;->agN:Lcom/google/research/reflection/layers/f;

    invoke-static {v0}, Lcom/google/research/reflection/layers/f;->d(Lcom/google/research/reflection/layers/f;)Lcom/google/research/reflection/layers/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v1, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/google/research/reflection/layers/i;->agN:Lcom/google/research/reflection/layers/f;

    invoke-static {v0}, Lcom/google/research/reflection/layers/f;->h(Lcom/google/research/reflection/layers/f;)Lcom/google/research/reflection/layers/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v1, v0, p1

    invoke-static {}, Lcom/google/research/reflection/layers/e;->iS()D

    move-result-wide v3

    iget-object v5, p0, Lcom/google/research/reflection/layers/i;->agN:Lcom/google/research/reflection/layers/f;

    .line 209
    invoke-static {v5}, Lcom/google/research/reflection/layers/f;->d(Lcom/google/research/reflection/layers/f;)Lcom/google/research/reflection/layers/m;

    move-result-object v5

    iget-object v5, v5, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v6, v5, p1

    mul-double/2addr v3, v6

    sub-double/2addr v1, v3

    aput-wide v1, v0, p1

    .line 210
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 206
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "NaN in bias gradients..."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
