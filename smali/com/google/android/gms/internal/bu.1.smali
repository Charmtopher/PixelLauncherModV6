.class abstract Lcom/google/android/gms/internal/bu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic Tf:Lcom/google/android/gms/internal/bk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/bk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bu;->Tf:Lcom/google/android/gms/internal/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/bk;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bu;-><init>(Lcom/google/android/gms/internal/bk;)V

    return-void
.end method


# virtual methods
.method protected abstract ht()V
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bu;->Tf:Lcom/google/android/gms/internal/bk;

    iget-object v0, v0, Lcom/google/android/gms/internal/bk;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bu;->Tf:Lcom/google/android/gms/internal/bk;

    iget-object v0, v0, Lcom/google/android/gms/internal/bk;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bu;->ht()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/bu;->Tf:Lcom/google/android/gms/internal/bk;

    iget-object v1, v1, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v2, v1, Lcom/google/android/gms/internal/bB;->TG:Lcom/google/android/gms/internal/bD;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/bD;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/gms/internal/bB;->TG:Lcom/google/android/gms/internal/bD;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/bD;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/bu;->Tf:Lcom/google/android/gms/internal/bk;

    iget-object v1, v1, Lcom/google/android/gms/internal/bk;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
