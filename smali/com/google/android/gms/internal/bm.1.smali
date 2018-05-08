.class final Lcom/google/android/gms/internal/bm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/A;


# instance fields
.field private final Iw:Lcom/google/android/gms/common/api/a;

.field final Sf:Z

.field private final Tg:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bk;Lcom/google/android/gms/common/api/a;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->Tg:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/google/android/gms/internal/bm;->Iw:Lcom/google/android/gms/common/api/a;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/bm;->Sf:Z

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->Tg:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bk;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v2, v2, Lcom/google/android/gms/internal/bB;->Sh:Lcom/google/android/gms/internal/bw;

    iget-object v2, v2, Lcom/google/android/gms/internal/bw;->Iz:Landroid/os/Looper;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    const-string v2, "onReportServiceBinding must be called on the GoogleApiClient handler thread"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/bk;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/bk;->bb(I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    :cond_2
    :goto_1
    iget-object p1, v0, Lcom/google/android/gms/internal/bk;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->fl()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/bm;->Iw:Lcom/google/android/gms/common/api/a;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/bm;->Sf:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/bk;->b(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;Z)V

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/bk;->hu()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bk;->hv()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object v0, v0, Lcom/google/android/gms/internal/bk;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
