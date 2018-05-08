.class final Lcom/google/android/gms/internal/bt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/t;
.implements Lcom/google/android/gms/common/api/u;


# instance fields
.field private synthetic Tf:Lcom/google/android/gms/internal/bk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/bk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bt;->Tf:Lcom/google/android/gms/internal/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/bk;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bt;-><init>(Lcom/google/android/gms/internal/bk;)V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/bt;->Tf:Lcom/google/android/gms/internal/bk;

    iget-object p1, p1, Lcom/google/android/gms/internal/bk;->zzaOL:Lcom/google/android/gms/internal/e;

    new-instance v0, Lcom/google/android/gms/internal/br;

    iget-object v1, p0, Lcom/google/android/gms/internal/bt;->Tf:Lcom/google/android/gms/internal/bk;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/br;-><init>(Lcom/google/android/gms/internal/bk;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/e;->a(Lcom/google/android/gms/internal/adf;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bt;->Tf:Lcom/google/android/gms/internal/bk;

    iget-object v0, v0, Lcom/google/android/gms/internal/bk;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bt;->Tf:Lcom/google/android/gms/internal/bk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bk;->f(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/bt;->Tf:Lcom/google/android/gms/internal/bk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/bk;->hx()V

    iget-object p1, p0, Lcom/google/android/gms/internal/bt;->Tf:Lcom/google/android/gms/internal/bk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/bk;->hv()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bt;->Tf:Lcom/google/android/gms/internal/bk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bk;->g(Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bt;->Tf:Lcom/google/android/gms/internal/bk;

    iget-object p1, p1, Lcom/google/android/gms/internal/bk;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/bt;->Tf:Lcom/google/android/gms/internal/bk;

    iget-object v0, v0, Lcom/google/android/gms/internal/bk;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
