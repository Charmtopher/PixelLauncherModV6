.class Lcom/google/research/reflection/layers/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/layers/u;


# instance fields
.field final synthetic agV:Z

.field final synthetic agW:Lcom/google/research/reflection/layers/m;

.field final synthetic agX:Lcom/google/research/reflection/layers/m;

.field final synthetic agY:Lcom/google/research/reflection/layers/m;


# direct methods
.method constructor <init>(ZLcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/google/research/reflection/layers/n;->agV:Z

    iput-object p2, p0, Lcom/google/research/reflection/layers/n;->agW:Lcom/google/research/reflection/layers/m;

    iput-object p3, p0, Lcom/google/research/reflection/layers/n;->agX:Lcom/google/research/reflection/layers/m;

    iput-object p4, p0, Lcom/google/research/reflection/layers/n;->agY:Lcom/google/research/reflection/layers/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bE(I)Ljava/lang/Boolean;
    .locals 8

    .line 63
    iget-boolean v0, p0, Lcom/google/research/reflection/layers/n;->agV:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/research/reflection/layers/n;->agW:Lcom/google/research/reflection/layers/m;

    iget-object v0, v0, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v1, v0, p1

    iget-object v3, p0, Lcom/google/research/reflection/layers/n;->agX:Lcom/google/research/reflection/layers/m;

    iget-object v3, v3, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v4, v3, p1

    iget-object v3, p0, Lcom/google/research/reflection/layers/n;->agY:Lcom/google/research/reflection/layers/m;

    iget-object v3, v3, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v6, v3, p1

    add-double/2addr v4, v6

    add-double/2addr v1, v4

    aput-wide v1, v0, p1

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/google/research/reflection/layers/n;->agW:Lcom/google/research/reflection/layers/m;

    iget-object v0, v0, Lcom/google/research/reflection/layers/m;->agU:[D

    iget-object v1, p0, Lcom/google/research/reflection/layers/n;->agX:Lcom/google/research/reflection/layers/m;

    iget-object v1, v1, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v2, v1, p1

    iget-object v1, p0, Lcom/google/research/reflection/layers/n;->agY:Lcom/google/research/reflection/layers/m;

    iget-object v1, v1, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v4, v1, p1

    add-double/2addr v2, v4

    aput-wide v2, v0, p1

    .line 68
    :goto_0
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
