.class Lcom/google/research/reflection/layers/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/layers/u;


# instance fields
.field final synthetic agO:I

.field final synthetic agP:Lcom/google/research/reflection/layers/m;

.field final synthetic agT:Lcom/google/research/reflection/layers/m;


# direct methods
.method constructor <init>(ILcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V
    .locals 0

    .line 316
    iput p1, p0, Lcom/google/research/reflection/layers/k;->agO:I

    iput-object p2, p0, Lcom/google/research/reflection/layers/k;->agT:Lcom/google/research/reflection/layers/m;

    iput-object p3, p0, Lcom/google/research/reflection/layers/k;->agP:Lcom/google/research/reflection/layers/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bE(I)Ljava/lang/Boolean;
    .locals 7

    .line 319
    iget v0, p0, Lcom/google/research/reflection/layers/k;->agO:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 320
    iget-object v0, p0, Lcom/google/research/reflection/layers/k;->agT:Lcom/google/research/reflection/layers/m;

    iget-object v0, v0, Lcom/google/research/reflection/layers/m;->agU:[D

    iget-object v2, p0, Lcom/google/research/reflection/layers/k;->agP:Lcom/google/research/reflection/layers/m;

    iget-object v2, v2, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v3, v2, p1

    .line 321
    const-wide/16 v5, 0x0

    cmpl-double v2, v3, v5

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide v3, v5

    :goto_0
    aput-wide v3, v0, p1

    goto :goto_1

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/google/research/reflection/layers/k;->agT:Lcom/google/research/reflection/layers/m;

    iget-object v0, v0, Lcom/google/research/reflection/layers/m;->agU:[D

    iget-object v2, p0, Lcom/google/research/reflection/layers/k;->agP:Lcom/google/research/reflection/layers/m;

    iget-object v2, v2, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v3, v2, p1

    .line 324
    invoke-static {v3, v4}, Lcom/google/research/reflection/layers/x;->c(D)D

    move-result-wide v2

    aput-wide v2, v0, p1

    .line 326
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
