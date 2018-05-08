.class final Lcom/google/android/gms/tasks/k;
.super Lcom/google/android/gms/tasks/b;


# instance fields
.field final aeg:Lcom/google/android/gms/tasks/i;

.field aeh:Z

.field aei:Ljava/lang/Object;

.field aej:Ljava/lang/Exception;

.field final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/tasks/b;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/k;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/tasks/i;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/k;->aeg:Lcom/google/android/gms/tasks/i;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/a;)Lcom/google/android/gms/tasks/b;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tasks/d;->adY:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/k;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/a;)Lcom/google/android/gms/tasks/b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/a;)Lcom/google/android/gms/tasks/b;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/k;->aeg:Lcom/google/android/gms/tasks/i;

    new-instance v1, Lcom/google/android/gms/tasks/f;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/tasks/f;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/a;)V

    iget-object p1, v0, Lcom/google/android/gms/tasks/i;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, v0, Lcom/google/android/gms/tasks/i;->aee:Ljava/util/Queue;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p2, v0, Lcom/google/android/gms/tasks/i;->aee:Ljava/util/Queue;

    :cond_0
    iget-object p2, v0, Lcom/google/android/gms/tasks/i;->aee:Ljava/util/Queue;

    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p2, p0, Lcom/google/android/gms/tasks/k;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1
    iget-boolean p1, p0, Lcom/google/android/gms/tasks/k;->aeh:Z

    if-nez p1, :cond_1

    monitor-exit p2

    goto :goto_0

    :cond_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/tasks/k;->aeg:Lcom/google/android/gms/tasks/i;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/i;->b(Lcom/google/android/gms/tasks/b;)V

    :goto_0
    return-object p0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p2

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p2
.end method

.method public final b(Ljava/lang/Exception;)Z
    .locals 2

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/tasks/k;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/k;->aeh:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/k;->aeh:Z

    iput-object p1, p0, Lcom/google/android/gms/tasks/k;->aej:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/tasks/k;->aeg:Lcom/google/android/gms/tasks/i;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/i;->b(Lcom/google/android/gms/tasks/b;)V

    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final getException()Ljava/lang/Exception;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/k;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/k;->aej:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/tasks/k;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/k;->aeh:Z

    const-string v2, "Task is not yet complete"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/tasks/k;->aej:Ljava/lang/Exception;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/tasks/k;->aei:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    iget-object v2, p0, Lcom/google/android/gms/tasks/k;->aej:Ljava/lang/Exception;

    invoke-direct {v1, v2}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final id()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/k;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/k;->aeh:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/tasks/k;->aej:Ljava/lang/Exception;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final ie()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/tasks/k;->aeh:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Task is already complete"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/Object;)V

    return-void
.end method
