.class Lcom/google/research/reflection/layers/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/layers/u;


# instance fields
.field final synthetic agV:Z

.field final synthetic agW:Lcom/google/research/reflection/layers/m;

.field final synthetic agX:Lcom/google/research/reflection/layers/m;

.field final synthetic agY:Lcom/google/research/reflection/layers/m;

.field final synthetic agZ:Z


# direct methods
.method constructor <init>(ZLcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/google/research/reflection/layers/o;->agV:Z

    iput-object p2, p0, Lcom/google/research/reflection/layers/o;->agW:Lcom/google/research/reflection/layers/m;

    iput-object p3, p0, Lcom/google/research/reflection/layers/o;->agX:Lcom/google/research/reflection/layers/m;

    iput-object p4, p0, Lcom/google/research/reflection/layers/o;->agY:Lcom/google/research/reflection/layers/m;

    iput-boolean p5, p0, Lcom/google/research/reflection/layers/o;->agZ:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private M(II)D
    .locals 9

    .line 98
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->agX:Lcom/google/research/reflection/layers/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result v0

    .line 99
    nop

    .line 100
    const-wide/16 v2, 0x0

    move-wide v3, v2

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 101
    iget-object v5, p0, Lcom/google/research/reflection/layers/o;->agX:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v5, v1, p1, v2}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v5

    .line 102
    iget-object v7, p0, Lcom/google/research/reflection/layers/o;->agY:Lcom/google/research/reflection/layers/m;

    iget-boolean v8, p0, Lcom/google/research/reflection/layers/o;->agZ:Z

    invoke-virtual {v7, v8, v2, p2}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v7

    .line 103
    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-wide v3
.end method


# virtual methods
.method public final bE(I)Ljava/lang/Boolean;
    .locals 6

    .line 87
    iget-boolean v0, p0, Lcom/google/research/reflection/layers/o;->agV:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->agW:Lcom/google/research/reflection/layers/m;

    iget-object v0, v0, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v2, v0, p1

    iget-object v4, p0, Lcom/google/research/reflection/layers/o;->agW:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v4, v1}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result v4

    div-int v4, p1, v4

    iget-object v5, p0, Lcom/google/research/reflection/layers/o;->agW:Lcom/google/research/reflection/layers/m;

    .line 89
    invoke-virtual {v5, v1}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result v1

    rem-int v1, p1, v1

    .line 88
    invoke-direct {p0, v4, v1}, Lcom/google/research/reflection/layers/o;->M(II)D

    move-result-wide v4

    add-double/2addr v2, v4

    aput-wide v2, v0, p1

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->agW:Lcom/google/research/reflection/layers/m;

    iget-object v0, v0, Lcom/google/research/reflection/layers/m;->agU:[D

    iget-object v2, p0, Lcom/google/research/reflection/layers/o;->agW:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v2, v1}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result v2

    div-int v2, p1, v2

    iget-object v3, p0, Lcom/google/research/reflection/layers/o;->agW:Lcom/google/research/reflection/layers/m;

    .line 92
    invoke-virtual {v3, v1}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result v1

    rem-int v1, p1, v1

    .line 91
    invoke-direct {p0, v2, v1}, Lcom/google/research/reflection/layers/o;->M(II)D

    move-result-wide v1

    aput-wide v1, v0, p1

    .line 94
    :goto_0
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
