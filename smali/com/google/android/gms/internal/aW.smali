.class final Lcom/google/android/gms/internal/aW;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bR;


# instance fields
.field private synthetic St:Lcom/google/android/gms/internal/aV;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/aV;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aW;->St:Lcom/google/android/gms/internal/aV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/aV;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aW;-><init>(Lcom/google/android/gms/internal/aV;)V

    return-void
.end method


# virtual methods
.method public final e(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aW;->St:Lcom/google/android/gms/internal/aV;

    iget-object v0, v0, Lcom/google/android/gms/internal/aV;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aW;->St:Lcom/google/android/gms/internal/aV;

    iput-object p1, v0, Lcom/google/android/gms/internal/aV;->So:Lcom/google/android/gms/common/ConnectionResult;

    iget-object p1, p0, Lcom/google/android/gms/internal/aW;->St:Lcom/google/android/gms/internal/aV;

    invoke-static {p1}, Lcom/google/android/gms/internal/aV;->a(Lcom/google/android/gms/internal/aV;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/aW;->St:Lcom/google/android/gms/internal/aV;

    iget-object p1, p1, Lcom/google/android/gms/internal/aV;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/aW;->St:Lcom/google/android/gms/internal/aV;

    iget-object v0, v0, Lcom/google/android/gms/internal/aV;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final g(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aW;->St:Lcom/google/android/gms/internal/aV;

    iget-object v0, v0, Lcom/google/android/gms/internal/aV;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aW;->St:Lcom/google/android/gms/internal/aV;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/aV;->Sq:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/aW;->St:Lcom/google/android/gms/internal/aV;

    iget-object v0, v0, Lcom/google/android/gms/internal/aV;->Sp:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/aW;->St:Lcom/google/android/gms/internal/aV;

    iget-object v0, v0, Lcom/google/android/gms/internal/aV;->Sp:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->fl()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/aW;->St:Lcom/google/android/gms/internal/aV;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/google/android/gms/internal/aV;->Sq:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/aW;->St:Lcom/google/android/gms/internal/aV;

    iget-object p2, p2, Lcom/google/android/gms/internal/aV;->Sj:Lcom/google/android/gms/internal/bB;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/bB;->onConnectionSuspended(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/aW;->St:Lcom/google/android/gms/internal/aV;

    iget-object p1, p1, Lcom/google/android/gms/internal/aV;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aW;->St:Lcom/google/android/gms/internal/aV;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/aV;->Sq:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/aW;->St:Lcom/google/android/gms/internal/aV;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/aV;->a(Lcom/google/android/gms/internal/aV;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/aW;->St:Lcom/google/android/gms/internal/aV;

    iget-object p2, p2, Lcom/google/android/gms/internal/aV;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final g(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aW;->St:Lcom/google/android/gms/internal/aV;

    iget-object v0, v0, Lcom/google/android/gms/internal/aV;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aW;->St:Lcom/google/android/gms/internal/aV;

    iget-object v1, v0, Lcom/google/android/gms/internal/aV;->Sn:Landroid/os/Bundle;

    if-nez v1, :cond_0

    iput-object p1, v0, Lcom/google/android/gms/internal/aV;->Sn:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/aV;->Sn:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/aW;->St:Lcom/google/android/gms/internal/aV;

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->Ib:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v0, p1, Lcom/google/android/gms/internal/aV;->So:Lcom/google/android/gms/common/ConnectionResult;

    iget-object p1, p0, Lcom/google/android/gms/internal/aW;->St:Lcom/google/android/gms/internal/aV;

    invoke-static {p1}, Lcom/google/android/gms/internal/aV;->a(Lcom/google/android/gms/internal/aV;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/aW;->St:Lcom/google/android/gms/internal/aV;

    iget-object p1, p1, Lcom/google/android/gms/internal/aV;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/aW;->St:Lcom/google/android/gms/internal/aV;

    iget-object v0, v0, Lcom/google/android/gms/internal/aV;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
