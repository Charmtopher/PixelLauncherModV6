.class final Lcom/google/android/gms/tasks/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/h;


# instance fields
.field private final aea:Ljava/util/concurrent/Executor;

.field aeb:Lcom/google/android/gms/tasks/a;

.field final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/f;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/tasks/f;->aea:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/tasks/f;->aeb:Lcom/google/android/gms/tasks/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/f;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/f;->aeb:Lcom/google/android/gms/tasks/a;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/tasks/f;->aea:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tasks/g;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tasks/g;-><init>(Lcom/google/android/gms/tasks/f;Lcom/google/android/gms/tasks/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
