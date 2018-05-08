.class public final Lcom/google/android/gms/internal/bh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bA;


# instance fields
.field final SR:Lcom/google/android/gms/internal/bB;

.field SS:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bB;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bh;->SS:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/bh;->SR:Lcom/google/android/gms/internal/bB;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/bh;->b(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;Z)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bh;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v0, v0, Lcom/google/android/gms/internal/bB;->Sh:Lcom/google/android/gms/internal/bw;

    iget-object v0, v0, Lcom/google/android/gms/internal/bw;->TB:Lcom/google/android/gms/internal/cs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cs;->b(Lcom/google/android/gms/internal/aP;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bh;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v0, v0, Lcom/google/android/gms/internal/bB;->Sh:Lcom/google/android/gms/internal/bw;

    iget-object v1, p1, Lcom/google/android/gms/internal/aK;->RG:Lcom/google/android/gms/common/api/h;

    iget-object v0, v0, Lcom/google/android/gms/internal/bw;->Tv:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/j;

    const-string v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/bh;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v1, v1, Lcom/google/android/gms/internal/bB;->TH:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/android/gms/internal/aK;->RG:Lcom/google/android/gms/common/api/h;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aK;->d(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/common/internal/s;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aK;->b(Lcom/google/android/gms/common/api/g;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/bh;->SR:Lcom/google/android/gms/internal/bB;

    new-instance v1, Lcom/google/android/gms/internal/bi;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/internal/bi;-><init>(Lcom/google/android/gms/internal/bh;Lcom/google/android/gms/internal/bA;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bB;->a(Lcom/google/android/gms/internal/bC;)V

    :goto_0
    return-object p1
.end method

.method public final begin()V
    .locals 0

    return-void
.end method

.method public final connect()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bh;->SS:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bh;->SS:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bh;->SR:Lcom/google/android/gms/internal/bB;

    new-instance v1, Lcom/google/android/gms/internal/bj;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/internal/bj;-><init>(Lcom/google/android/gms/internal/bh;Lcom/google/android/gms/internal/bA;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bB;->a(Lcom/google/android/gms/internal/bC;)V

    :cond_0
    return-void
.end method

.method public final disconnect()Z
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bh;->SS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bh;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v0, v0, Lcom/google/android/gms/internal/bB;->Sh:Lcom/google/android/gms/internal/bw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bw;->hB()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/google/android/gms/internal/bh;->SS:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bh;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v0, v0, Lcom/google/android/gms/internal/bB;->Sh:Lcom/google/android/gms/internal/bw;

    iget-object v0, v0, Lcom/google/android/gms/internal/bw;->TA:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/cp;

    iput-object v2, v3, Lcom/google/android/gms/internal/cp;->UK:Lcom/google/android/gms/common/api/A;

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bh;->SR:Lcom/google/android/gms/internal/bB;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/bB;->h(Lcom/google/android/gms/common/ConnectionResult;)V

    return v3
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bh;->SR:Lcom/google/android/gms/internal/bB;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bB;->h(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bh;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v0, v0, Lcom/google/android/gms/internal/bB;->TL:Lcom/google/android/gms/internal/bR;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/bh;->SS:Z

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/bR;->g(IZ)V

    return-void
.end method
