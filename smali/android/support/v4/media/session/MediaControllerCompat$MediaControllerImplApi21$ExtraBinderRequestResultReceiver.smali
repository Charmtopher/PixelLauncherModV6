.class Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field private iv:Ljava/lang/ref/WeakReference;


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4

    .line 2200
    iget-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->iv:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;

    .line 2201
    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    .line 2204
    :cond_0
    const-string v0, "android.support.v4.media.session.EXTRA_BINDER"

    .line 2205
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_1

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-static {p2, v0}, Landroid/support/v4/app/g;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 2204
    :goto_0
    invoke-static {p2}, Landroid/support/v4/media/session/IMediaSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaSession;

    move-result-object p2

    iput-object p2, p1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->it:Landroid/support/v4/media/session/IMediaSession;

    .line 2206
    iget-object p2, p1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->it:Landroid/support/v4/media/session/IMediaSession;

    if-eqz p2, :cond_3

    iget-object p2, p1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->is:Ljava/util/List;

    monitor-enter p2

    :try_start_0
    iget-object v0, p1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->is:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/c;

    new-instance v2, Landroid/support/v4/media/session/g;

    invoke-direct {v2, v1}, Landroid/support/v4/media/session/g;-><init>(Landroid/support/v4/media/session/c;)V

    iget-object v3, p1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->iu:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/support/v4/media/session/c;->iq:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->it:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1, v2}, Landroid/support/v4/media/session/IMediaSession;->registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in registerCallback."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    iget-object p1, p1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->is:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 2207
    :cond_3
    return-void

    .line 2202
    :cond_4
    :goto_2
    return-void
.end method
