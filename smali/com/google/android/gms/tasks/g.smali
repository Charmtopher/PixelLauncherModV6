.class final Lcom/google/android/gms/tasks/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aec:Lcom/google/android/gms/tasks/b;

.field private synthetic aed:Lcom/google/android/gms/tasks/f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/f;Lcom/google/android/gms/tasks/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/g;->aed:Lcom/google/android/gms/tasks/f;

    iput-object p2, p0, Lcom/google/android/gms/tasks/g;->aec:Lcom/google/android/gms/tasks/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/tasks/g;->aed:Lcom/google/android/gms/tasks/f;

    iget-object v0, v0, Lcom/google/android/gms/tasks/f;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/g;->aed:Lcom/google/android/gms/tasks/f;

    iget-object v1, v1, Lcom/google/android/gms/tasks/f;->aeb:Lcom/google/android/gms/tasks/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/tasks/g;->aed:Lcom/google/android/gms/tasks/f;

    iget-object v1, v1, Lcom/google/android/gms/tasks/f;->aeb:Lcom/google/android/gms/tasks/a;

    iget-object v2, p0, Lcom/google/android/gms/tasks/g;->aec:Lcom/google/android/gms/tasks/b;

    invoke-interface {v1, v2}, Lcom/google/android/gms/tasks/a;->a(Lcom/google/android/gms/tasks/b;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
