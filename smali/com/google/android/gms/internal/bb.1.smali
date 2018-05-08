.class final Lcom/google/android/gms/internal/bb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/a;


# instance fields
.field private synthetic SJ:Lcom/google/android/gms/internal/aZ;


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/b;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/bb;->SJ:Lcom/google/android/gms/internal/aZ;

    iget-object v0, v0, Lcom/google/android/gms/internal/aZ;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bb;->SJ:Lcom/google/android/gms/internal/aZ;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/aZ;->SE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bb;->SJ:Lcom/google/android/gms/internal/aZ;

    iget-object p1, p1, Lcom/google/android/gms/internal/aZ;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/b;->id()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/bb;->SJ:Lcom/google/android/gms/internal/aZ;

    new-instance v0, Landroid/support/v4/c/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/bb;->SJ:Lcom/google/android/gms/internal/aZ;

    iget-object v1, v1, Lcom/google/android/gms/internal/aZ;->Sx:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/support/v4/c/a;-><init>(I)V

    iput-object v0, p1, Lcom/google/android/gms/internal/aZ;->SG:Ljava/util/Map;

    iget-object p1, p0, Lcom/google/android/gms/internal/bb;->SJ:Lcom/google/android/gms/internal/aZ;

    iget-object p1, p1, Lcom/google/android/gms/internal/aZ;->Sx:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aY;

    iget-object v1, p0, Lcom/google/android/gms/internal/bb;->SJ:Lcom/google/android/gms/internal/aZ;

    iget-object v1, v1, Lcom/google/android/gms/internal/aZ;->SG:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/android/gms/common/api/p;->Iy:Lcom/google/android/gms/internal/aE;

    sget-object v2, Lcom/google/android/gms/common/ConnectionResult;->Ib:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/b;->getException()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/common/api/zza;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/b;->getException()Ljava/lang/Exception;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/bb;->SJ:Lcom/google/android/gms/internal/aZ;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/aZ;->SC:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/bb;->SJ:Lcom/google/android/gms/internal/aZ;

    new-instance v1, Landroid/support/v4/c/a;

    iget-object v2, p0, Lcom/google/android/gms/internal/bb;->SJ:Lcom/google/android/gms/internal/aZ;

    iget-object v2, v2, Lcom/google/android/gms/internal/aZ;->Sx:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/support/v4/c/a;-><init>(I)V

    iput-object v1, v0, Lcom/google/android/gms/internal/aZ;->SG:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/bb;->SJ:Lcom/google/android/gms/internal/aZ;

    iget-object v0, v0, Lcom/google/android/gms/internal/aZ;->Sx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/aY;

    iget-object v2, v1, Lcom/google/android/gms/common/api/p;->Iy:Lcom/google/android/gms/internal/aE;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/zza;->a(Lcom/google/android/gms/common/api/p;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/bb;->SJ:Lcom/google/android/gms/internal/aZ;

    invoke-static {v4, v1, v3}, Lcom/google/android/gms/internal/aZ;->a(Lcom/google/android/gms/internal/aZ;Lcom/google/android/gms/internal/aY;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/bb;->SJ:Lcom/google/android/gms/internal/aZ;

    iget-object v1, v1, Lcom/google/android/gms/internal/aZ;->SG:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    :goto_3
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/bb;->SJ:Lcom/google/android/gms/internal/aZ;

    iget-object v1, v1, Lcom/google/android/gms/internal/aZ;->SG:Ljava/util/Map;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/bb;->SJ:Lcom/google/android/gms/internal/aZ;

    iget-object p1, p1, Lcom/google/android/gms/common/api/zza;->zzaMh:Landroid/support/v4/c/a;

    iput-object p1, v0, Lcom/google/android/gms/internal/aZ;->SG:Ljava/util/Map;

    goto :goto_4

    :cond_5
    const-string v0, "ConnectionlessGAC"

    const-string v1, "Unexpected availability exception"

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/b;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/google/android/gms/internal/bb;->SJ:Lcom/google/android/gms/internal/aZ;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/aZ;->SG:Ljava/util/Map;

    :cond_6
    :goto_4
    iget-object p1, p0, Lcom/google/android/gms/internal/bb;->SJ:Lcom/google/android/gms/internal/aZ;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aZ;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/bb;->SJ:Lcom/google/android/gms/internal/aZ;

    iget-object p1, p1, Lcom/google/android/gms/internal/aZ;->SF:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/bb;->SJ:Lcom/google/android/gms/internal/aZ;

    iget-object v0, v0, Lcom/google/android/gms/internal/aZ;->SG:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/bb;->SJ:Lcom/google/android/gms/internal/aZ;

    invoke-static {p1}, Lcom/google/android/gms/internal/aZ;->a(Lcom/google/android/gms/internal/aZ;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/bb;->SJ:Lcom/google/android/gms/internal/aZ;

    invoke-static {p1}, Lcom/google/android/gms/internal/aZ;->b(Lcom/google/android/gms/internal/aZ;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/bb;->SJ:Lcom/google/android/gms/internal/aZ;

    invoke-static {p1}, Lcom/google/android/gms/internal/aZ;->c(Lcom/google/android/gms/internal/aZ;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/bb;->SJ:Lcom/google/android/gms/internal/aZ;

    iget-object p1, p1, Lcom/google/android/gms/internal/aZ;->SA:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/bb;->SJ:Lcom/google/android/gms/internal/aZ;

    iget-object v0, v0, Lcom/google/android/gms/internal/aZ;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
