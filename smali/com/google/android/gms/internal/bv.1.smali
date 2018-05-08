.class public final Lcom/google/android/gms/internal/bv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bA;


# instance fields
.field private final SR:Lcom/google/android/gms/internal/bB;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bB;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bv;->SR:Lcom/google/android/gms/internal/bB;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v0, v0, Lcom/google/android/gms/internal/bB;->Sh:Lcom/google/android/gms/internal/bw;

    iget-object v0, v0, Lcom/google/android/gms/internal/bw;->SD:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;Z)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GoogleApiClient is not connected yet."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final begin()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v0, v0, Lcom/google/android/gms/internal/bB;->Tv:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/j;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/j;->disconnect()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v0, v0, Lcom/google/android/gms/internal/bB;->Sh:Lcom/google/android/gms/internal/bw;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/bw;->Tw:Ljava/util/Set;

    return-void
.end method

.method public final connect()V
    .locals 10

    iget-object v8, p0, Lcom/google/android/gms/internal/bv;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v0, v8, Lcom/google/android/gms/internal/bB;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v9, Lcom/google/android/gms/internal/bk;

    iget-object v2, v8, Lcom/google/android/gms/internal/bB;->zzaOg:Lcom/google/android/gms/common/internal/G;

    iget-object v3, v8, Lcom/google/android/gms/internal/bB;->Sy:Ljava/util/Map;

    iget-object v4, v8, Lcom/google/android/gms/internal/bB;->KZ:Lcom/google/android/gms/common/d;

    iget-object v5, v8, Lcom/google/android/gms/internal/bB;->IV:Lcom/google/android/gms/common/api/f;

    iget-object v6, v8, Lcom/google/android/gms/internal/bB;->Sr:Ljava/util/concurrent/locks/Lock;

    iget-object v7, v8, Lcom/google/android/gms/internal/bB;->mContext:Landroid/content/Context;

    move-object v0, v9

    move-object v1, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/bk;-><init>(Lcom/google/android/gms/internal/bB;Lcom/google/android/gms/common/internal/G;Ljava/util/Map;Lcom/google/android/gms/common/d;Lcom/google/android/gms/common/api/f;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    iput-object v9, v8, Lcom/google/android/gms/internal/bB;->TI:Lcom/google/android/gms/internal/bA;

    iget-object v0, v8, Lcom/google/android/gms/internal/bB;->TI:Lcom/google/android/gms/internal/bA;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bA;->begin()V

    iget-object v0, v8, Lcom/google/android/gms/internal/bB;->TF:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v8, Lcom/google/android/gms/internal/bB;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v8, Lcom/google/android/gms/internal/bB;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final disconnect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
