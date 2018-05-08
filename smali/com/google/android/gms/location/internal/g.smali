.class final Lcom/google/android/gms/location/internal/g;
.super Lcom/google/android/gms/location/zzv;


# instance fields
.field private final UE:Lcom/google/android/gms/internal/bX;


# virtual methods
.method public final declared-synchronized onLocationChanged(Landroid/location/Location;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/internal/g;->UE:Lcom/google/android/gms/internal/bX;

    new-instance v1, Lcom/google/android/gms/location/internal/h;

    invoke-direct {v1, p1}, Lcom/google/android/gms/location/internal/h;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bX;->a(Lcom/google/android/gms/internal/ca;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
