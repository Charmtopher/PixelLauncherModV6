.class abstract Lcom/google/android/gms/internal/bC;
.super Ljava/lang/Object;


# instance fields
.field private final TM:Lcom/google/android/gms/internal/bA;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/bA;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bC;->TM:Lcom/google/android/gms/internal/bA;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/bB;)V
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/internal/bB;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/bB;->TI:Lcom/google/android/gms/internal/bA;

    iget-object v1, p0, Lcom/google/android/gms/internal/bC;->TM:Lcom/google/android/gms/internal/bA;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    :goto_0
    iget-object p1, p1, Lcom/google/android/gms/internal/bB;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bC;->ht()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object p1, p1, Lcom/google/android/gms/internal/bB;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected abstract ht()V
.end method
