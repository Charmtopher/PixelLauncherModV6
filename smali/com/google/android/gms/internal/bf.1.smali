.class public Lcom/google/android/gms/internal/bf;
.super Lcom/google/android/gms/internal/aL;


# instance fields
.field private IC:Lcom/google/android/gms/internal/bF;

.field final SP:Lcom/google/android/gms/common/a/b;


# direct methods
.method private final hs()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bf;->SP:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bf;->IC:Lcom/google/android/gms/internal/bF;

    sget-object v1, Lcom/google/android/gms/internal/bF;->Ja:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/internal/bF;->TW:Lcom/google/android/gms/internal/bf;

    if-eq v2, p0, :cond_0

    iput-object p0, v0, Lcom/google/android/gms/internal/bF;->TW:Lcom/google/android/gms/internal/bf;

    iget-object v2, v0, Lcom/google/android/gms/internal/bF;->TX:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v0, v0, Lcom/google/android/gms/internal/bF;->TX:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/gms/internal/bf;->SP:Lcom/google/android/gms/common/a/b;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bf;->IC:Lcom/google/android/gms/internal/bF;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method protected final hf()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bf;->IC:Lcom/google/android/gms/internal/bF;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bF;->hf()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/aL;->onResume()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bf;->hs()V

    return-void
.end method

.method public final onStart()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/aL;->onStart()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bf;->hs()V

    return-void
.end method

.method public final onStop()V
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/aL;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bf;->IC:Lcom/google/android/gms/internal/bF;

    sget-object v1, Lcom/google/android/gms/internal/bF;->Ja:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/internal/bF;->TW:Lcom/google/android/gms/internal/bf;

    if-ne v2, p0, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/bF;->TW:Lcom/google/android/gms/internal/bf;

    iget-object v0, v0, Lcom/google/android/gms/internal/bF;->TX:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
