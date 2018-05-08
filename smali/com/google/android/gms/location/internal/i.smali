.class public final Lcom/google/android/gms/location/internal/i;
.super Lcom/google/android/gms/location/internal/p;


# instance fields
.field public final XS:Lcom/google/android/gms/location/internal/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/u;Ljava/lang/String;Lcom/google/android/gms/common/internal/G;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/location/internal/p;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/u;Ljava/lang/String;Lcom/google/android/gms/common/internal/G;)V

    new-instance p2, Lcom/google/android/gms/location/internal/c;

    iget-object p3, p0, Lcom/google/android/gms/location/internal/i;->XK:Lcom/google/android/gms/location/internal/n;

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/location/internal/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/location/internal/n;)V

    iput-object p2, p0, Lcom/google/android/gms/location/internal/i;->XS:Lcom/google/android/gms/location/internal/c;

    return-void
.end method


# virtual methods
.method public final disconnect()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/location/internal/i;->XS:Lcom/google/android/gms/location/internal/c;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/i;->isConnected()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_4

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/location/internal/i;->XS:Lcom/google/android/gms/location/internal/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v2, v1, Lcom/google/android/gms/location/internal/c;->XN:Ljava/util/Map;

    monitor-enter v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v3, v1, Lcom/google/android/gms/location/internal/c;->XN:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/location/internal/g;

    if-eqz v4, :cond_0

    iget-object v6, v1, Lcom/google/android/gms/location/internal/c;->XK:Lcom/google/android/gms/location/internal/n;

    invoke-interface {v6}, Lcom/google/android/gms/location/internal/n;->fU()Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/location/internal/zzam;

    invoke-static {v4, v5}, Lcom/google/android/gms/location/internal/zzbc;->a(Lcom/google/android/gms/location/zzu;Lcom/google/android/gms/location/internal/zzah;)Lcom/google/android/gms/location/internal/zzbc;

    move-result-object v4

    invoke-interface {v6, v4}, Lcom/google/android/gms/location/internal/zzam;->zza(Lcom/google/android/gms/location/internal/zzbc;)V

    goto :goto_0

    :cond_1
    iget-object v3, v1, Lcom/google/android/gms/location/internal/c;->XN:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v2, v1, Lcom/google/android/gms/location/internal/c;->XO:Ljava/util/Map;

    monitor-enter v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v3, v1, Lcom/google/android/gms/location/internal/c;->XO:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/location/internal/d;

    if-eqz v4, :cond_2

    iget-object v6, v1, Lcom/google/android/gms/location/internal/c;->XK:Lcom/google/android/gms/location/internal/n;

    invoke-interface {v6}, Lcom/google/android/gms/location/internal/n;->fU()Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/location/internal/zzam;

    invoke-static {v4, v5}, Lcom/google/android/gms/location/internal/zzbc;->a(Lcom/google/android/gms/location/zzr;Lcom/google/android/gms/location/internal/zzah;)Lcom/google/android/gms/location/internal/zzbc;

    move-result-object v4

    invoke-interface {v6, v4}, Lcom/google/android/gms/location/internal/zzam;->zza(Lcom/google/android/gms/location/internal/zzbc;)V

    goto :goto_1

    :cond_3
    iget-object v1, v1, Lcom/google/android/gms/location/internal/c;->XO:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/location/internal/i;->XS:Lcom/google/android/gms/location/internal/c;

    iget-boolean v2, v1, Lcom/google/android/gms/location/internal/c;->XM:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v2, :cond_4

    :try_start_7
    iget-object v2, v1, Lcom/google/android/gms/location/internal/c;->XK:Lcom/google/android/gms/location/internal/n;

    invoke-interface {v2}, Lcom/google/android/gms/location/internal/n;->fT()V

    iget-object v2, v1, Lcom/google/android/gms/location/internal/c;->XK:Lcom/google/android/gms/location/internal/n;

    invoke-interface {v2}, Lcom/google/android/gms/location/internal/n;->fU()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/location/internal/zzam;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/gms/location/internal/zzam;->zzax(Z)V

    iput-boolean v3, v1, Lcom/google/android/gms/location/internal/c;->XM:Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_8
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_0
    move-exception v1

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_1
    move-exception v1

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catch_1
    move-exception v1

    :try_start_d
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catch_2
    move-exception v1

    :try_start_e
    const-string v2, "LocationClientImpl"

    const-string v3, "Client disconnected before listeners could be cleaned up"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    invoke-super {p0}, Lcom/google/android/gms/location/internal/p;->disconnect()V

    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw v1
.end method
