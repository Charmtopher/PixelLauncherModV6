.class final Lcom/google/android/gms/common/internal/g;
.super Lcom/google/android/gms/common/internal/e;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final Ij:Landroid/content/Context;

.field private final Ks:Ljava/util/HashMap;

.field private final Kt:Lcom/google/android/gms/common/stats/a;

.field private final Ku:J

.field private final Kv:J

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/e;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/g;->Ks:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/g;->Ij:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/g;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/google/android/gms/common/stats/a;->gs()Lcom/google/android/gms/common/stats/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/g;->Kt:Lcom/google/android/gms/common/stats/a;

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/g;->Ku:J

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/g;->Kv:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/g;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/g;->Ks:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/common/internal/g;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/g;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/common/internal/g;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/g;->Ij:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/common/internal/g;)Lcom/google/android/gms/common/stats/a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/g;->Kt:Lcom/google/android/gms/common/stats/a;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/common/internal/g;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/internal/g;->Kv:J

    return-wide v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/common/internal/f;Landroid/content/ServiceConnection;)Z
    .locals 4

    const-string v0, "ServiceConnection must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/g;->Ks:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/g;->Ks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/h;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/common/internal/h;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/internal/h;-><init>(Lcom/google/android/gms/common/internal/g;Lcom/google/android/gms/common/internal/f;)V

    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/internal/h;->a(Landroid/content/ServiceConnection;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/h;->fL()V

    iget-object p2, p0, Lcom/google/android/gms/common/internal/g;->Ks:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/common/internal/g;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/internal/h;->b(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/internal/h;->a(Landroid/content/ServiceConnection;)V

    iget p1, v1, Lcom/google/android/gms/common/internal/h;->mState:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/h;->fL()V

    goto :goto_0

    :pswitch_1
    iget-object p1, v1, Lcom/google/android/gms/common/internal/h;->Kr:Landroid/content/ComponentName;

    iget-object v2, v1, Lcom/google/android/gms/common/internal/h;->Ka:Landroid/os/IBinder;

    invoke-interface {p2, p1, v2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    :goto_0
    iget-boolean p1, v1, Lcom/google/android/gms/common/internal/h;->Kx:Z

    monitor-exit v0

    return p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x51

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final b(Lcom/google/android/gms/common/internal/f;Landroid/content/ServiceConnection;)V
    .locals 3

    const-string v0, "ServiceConnection must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/g;->Ks:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/g;->Ks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/h;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/internal/h;->b(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/common/internal/h;->Kw:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/h;->fM()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/common/internal/g;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/common/internal/g;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/google/android/gms/common/internal/g;->Ku:J

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x4c

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Trying to unbind a GmsServiceConnection  that was not bound before.  config="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x32

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Nonexistent connection status for service config: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/g;->Ks:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/f;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/g;->Ks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/h;

    if-eqz v1, :cond_2

    iget v3, v1, Lcom/google/android/gms/common/internal/h;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    const-string v3, "GmsClientSupervisor"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Timeout waiting for ServiceConnection callback "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, v1, Lcom/google/android/gms/common/internal/h;->Kr:Landroid/content/ComponentName;

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/google/android/gms/common/internal/f;->Kr:Landroid/content/ComponentName;

    :cond_0
    if-nez v3, :cond_1

    new-instance v3, Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/google/android/gms/common/internal/f;->Kq:Ljava/lang/String;

    const-string v4, "unknown"

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/internal/h;->onServiceDisconnected(Landroid/content/ComponentName;)V

    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/g;->Ks:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/f;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/g;->Ks:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/h;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/h;->fM()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, v3, Lcom/google/android/gms/common/internal/h;->Kx:Z

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/google/android/gms/common/internal/h;->Kz:Lcom/google/android/gms/common/internal/g;

    iget-object v4, v4, Lcom/google/android/gms/common/internal/g;->mHandler:Landroid/os/Handler;

    iget-object v5, v3, Lcom/google/android/gms/common/internal/h;->Ky:Lcom/google/android/gms/common/internal/f;

    invoke-virtual {v4, v2, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v4, v3, Lcom/google/android/gms/common/internal/h;->Kz:Lcom/google/android/gms/common/internal/g;

    iget-object v4, v4, Lcom/google/android/gms/common/internal/g;->Ij:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v1, v3, Lcom/google/android/gms/common/internal/h;->Kx:Z

    const/4 v1, 0x2

    iput v1, v3, Lcom/google/android/gms/common/internal/h;->mState:I

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/common/internal/g;->Ks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit v0

    return v2

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
