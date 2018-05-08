.class public Lcom/google/android/gms/tasks/c;
.super Ljava/lang/Object;


# instance fields
.field public final adX:Lcom/google/android/gms/tasks/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/tasks/k;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/c;->adX:Lcom/google/android/gms/tasks/k;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/tasks/c;->adX:Lcom/google/android/gms/tasks/k;

    const-string v1, "Exception must not be null"

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/tasks/k;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/k;->ie()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/tasks/k;->aeh:Z

    iput-object p1, v0, Lcom/google/android/gms/tasks/k;->aej:Ljava/lang/Exception;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Lcom/google/android/gms/tasks/k;->aeg:Lcom/google/android/gms/tasks/i;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/i;->b(Lcom/google/android/gms/tasks/b;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/Exception;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tasks/c;->adX:Lcom/google/android/gms/tasks/k;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/k;->b(Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method

.method public final y(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/tasks/c;->adX:Lcom/google/android/gms/tasks/k;

    iget-object v1, v0, Lcom/google/android/gms/tasks/k;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/k;->ie()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/tasks/k;->aeh:Z

    iput-object p1, v0, Lcom/google/android/gms/tasks/k;->aei:Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Lcom/google/android/gms/tasks/k;->aeg:Lcom/google/android/gms/tasks/i;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/i;->b(Lcom/google/android/gms/tasks/b;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
