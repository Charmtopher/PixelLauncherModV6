.class final Lcom/google/android/gms/phenotype/l;
.super Landroid/database/ContentObserver;


# instance fields
.field private synthetic adM:Lcom/google/android/gms/phenotype/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/phenotype/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/phenotype/l;->adM:Lcom/google/android/gms/phenotype/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/phenotype/l;->adM:Lcom/google/android/gms/phenotype/a;

    invoke-static {p1}, Lcom/google/android/gms/phenotype/a;->a(Lcom/google/android/gms/phenotype/a;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/phenotype/l;->adM:Lcom/google/android/gms/phenotype/a;

    invoke-static {v0}, Lcom/google/android/gms/phenotype/a;->b(Lcom/google/android/gms/phenotype/a;)Ljava/util/Map;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
