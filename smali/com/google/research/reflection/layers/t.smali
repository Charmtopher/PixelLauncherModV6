.class Lcom/google/research/reflection/layers/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/layers/u;


# instance fields
.field final synthetic agO:I

.field final synthetic agP:Lcom/google/research/reflection/layers/m;

.field final synthetic agQ:Lcom/google/research/reflection/layers/m;

.field final synthetic ahg:Lcom/google/research/reflection/layers/m;

.field final synthetic ahh:Lcom/google/research/reflection/layers/s;


# direct methods
.method constructor <init>(Lcom/google/research/reflection/layers/s;ILcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/google/research/reflection/layers/t;->ahh:Lcom/google/research/reflection/layers/s;

    iput p2, p0, Lcom/google/research/reflection/layers/t;->agO:I

    iput-object p3, p0, Lcom/google/research/reflection/layers/t;->agQ:Lcom/google/research/reflection/layers/m;

    iput-object p4, p0, Lcom/google/research/reflection/layers/t;->agP:Lcom/google/research/reflection/layers/m;

    iput-object p5, p0, Lcom/google/research/reflection/layers/t;->ahg:Lcom/google/research/reflection/layers/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bE(I)Ljava/lang/Boolean;
    .locals 9

    .line 41
    iget v0, p0, Lcom/google/research/reflection/layers/t;->agO:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/google/research/reflection/layers/t;->ahh:Lcom/google/research/reflection/layers/s;

    invoke-static {v0}, Lcom/google/research/reflection/layers/s;->a(Lcom/google/research/reflection/layers/s;)I

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/google/research/reflection/layers/t;->agQ:Lcom/google/research/reflection/layers/m;

    iget-object v0, v0, Lcom/google/research/reflection/layers/m;->agU:[D

    iget-object v2, p0, Lcom/google/research/reflection/layers/t;->agP:Lcom/google/research/reflection/layers/m;

    iget-object v2, v2, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v3, v2, p1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    iget-object v2, p0, Lcom/google/research/reflection/layers/t;->agP:Lcom/google/research/reflection/layers/m;

    iget-object v2, v2, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v7, v2, p1

    sub-double/2addr v5, v7

    mul-double/2addr v3, v5

    iget-object v2, p0, Lcom/google/research/reflection/layers/t;->agP:Lcom/google/research/reflection/layers/m;

    iget-object v2, v2, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v5, v2, p1

    iget-object v2, p0, Lcom/google/research/reflection/layers/t;->agQ:Lcom/google/research/reflection/layers/m;

    iget-object v2, v2, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v7, v2, p1

    sub-double/2addr v5, v7

    mul-double/2addr v3, v5

    aput-wide v3, v0, p1

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/google/research/reflection/layers/t;->ahh:Lcom/google/research/reflection/layers/s;

    invoke-static {v0}, Lcom/google/research/reflection/layers/s;->a(Lcom/google/research/reflection/layers/s;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 47
    iget-object v0, p0, Lcom/google/research/reflection/layers/t;->agQ:Lcom/google/research/reflection/layers/m;

    iget-object v0, v0, Lcom/google/research/reflection/layers/m;->agU:[D

    iget-object v2, p0, Lcom/google/research/reflection/layers/t;->agP:Lcom/google/research/reflection/layers/m;

    iget-object v2, v2, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v3, v2, p1

    iget-object v2, p0, Lcom/google/research/reflection/layers/t;->agQ:Lcom/google/research/reflection/layers/m;

    iget-object v2, v2, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v5, v2, p1

    sub-double/2addr v3, v5

    aput-wide v3, v0, p1

    goto :goto_0

    .line 49
    :cond_1
    iget v0, p0, Lcom/google/research/reflection/layers/t;->agO:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 50
    iget-object v0, p0, Lcom/google/research/reflection/layers/t;->agQ:Lcom/google/research/reflection/layers/m;

    iget-object v0, v0, Lcom/google/research/reflection/layers/m;->agU:[D

    iget-object v2, p0, Lcom/google/research/reflection/layers/t;->agP:Lcom/google/research/reflection/layers/m;

    iget-object v2, v2, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v3, v2, p1

    iget-object v2, p0, Lcom/google/research/reflection/layers/t;->agQ:Lcom/google/research/reflection/layers/m;

    iget-object v2, v2, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v5, v2, p1

    sub-double/2addr v3, v5

    aput-wide v3, v0, p1

    .line 54
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/research/reflection/layers/t;->ahg:Lcom/google/research/reflection/layers/m;

    if-eqz v0, :cond_3

    .line 55
    iget-object v0, p0, Lcom/google/research/reflection/layers/t;->agQ:Lcom/google/research/reflection/layers/m;

    iget-object v0, v0, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v2, v0, p1

    iget-object v4, p0, Lcom/google/research/reflection/layers/t;->ahg:Lcom/google/research/reflection/layers/m;

    iget-object v4, v4, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v5, v4, p1

    mul-double/2addr v2, v5

    aput-wide v2, v0, p1

    .line 57
    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 52
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unsupported activation function for the output layer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
