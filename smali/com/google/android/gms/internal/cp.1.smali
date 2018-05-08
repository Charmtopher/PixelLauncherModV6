.class public final Lcom/google/android/gms/internal/cp;
.super Lcom/google/android/gms/common/api/D;

# interfaces
.implements Lcom/google/android/gms/common/api/z;


# instance fields
.field final RP:Ljava/lang/Object;

.field final RR:Ljava/lang/ref/WeakReference;

.field UI:Lcom/google/android/gms/common/api/C;

.field UJ:Lcom/google/android/gms/internal/cp;

.field volatile UK:Lcom/google/android/gms/common/api/A;

.field UL:Lcom/google/android/gms/common/api/v;

.field UM:Lcom/google/android/gms/common/api/Status;

.field final UN:Lcom/google/android/gms/internal/cr;

.field UO:Z


# direct methods
.method static d(Lcom/google/android/gms/common/api/y;)V
    .locals 4

    instance-of v0, p0, Lcom/google/android/gms/common/api/x;

    if-eqz v0, :cond_0

    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/common/api/x;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/x;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "TransformedResultImpl"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x12

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unable to release "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private final hR()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cp;->RR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/r;

    iget-object v1, p0, Lcom/google/android/gms/internal/cp;->UK:Lcom/google/android/gms/common/api/A;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/y;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cp;->RP:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/common/api/y;->fz()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->fl()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/cp;->UI:Lcom/google/android/gms/common/api/C;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/cf;->hD()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/cq;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/cq;-><init>(Lcom/google/android/gms/internal/cp;Lcom/google/android/gms/common/api/y;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/cp;->hR()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/cp;->UK:Lcom/google/android/gms/common/api/A;

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/common/api/y;->fz()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/cp;->g(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/cp;->d(Lcom/google/android/gms/common/api/y;)V

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final g(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cp;->RP:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/cp;->UM:Lcom/google/android/gms/common/api/Status;

    iget-object p1, p0, Lcom/google/android/gms/internal/cp;->UM:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cp;->h(Lcom/google/android/gms/common/api/Status;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final h(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cp;->RP:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cp;->UI:Lcom/google/android/gms/common/api/C;

    if-eqz v1, :cond_0

    const-string v1, "onFailure must not return null"

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/cp;->UJ:Lcom/google/android/gms/internal/cp;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/cp;->g(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/cp;->hR()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/cp;->UK:Lcom/google/android/gms/common/api/A;

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
