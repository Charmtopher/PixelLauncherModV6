.class public Lcom/android/launcher3/states/InternalStateHandler$Scheduler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

.field private mPendingHandler:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/states/InternalStateHandler$Scheduler;->mPendingHandler:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/android/launcher3/states/InternalStateHandler$Scheduler;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized clearReference(Lcom/android/launcher3/states/InternalStateHandler;)Z
    .locals 1

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/states/InternalStateHandler$Scheduler;->mPendingHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/android/launcher3/states/InternalStateHandler$Scheduler;->mPendingHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 133
    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 128
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized initIfPending(Lcom/android/launcher3/Launcher;Z)Z
    .locals 1

    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/states/InternalStateHandler$Scheduler;->mPendingHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/states/InternalStateHandler;

    .line 119
    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/states/InternalStateHandler;->init(Lcom/android/launcher3/Launcher;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/android/launcher3/states/InternalStateHandler$Scheduler;->mPendingHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_0
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 125
    :cond_1
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 117
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 2

    .line 105
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/LauncherAppState;

    .line 106
    if-nez v0, :cond_0

    .line 107
    return-void

    .line 109
    :cond_0
    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 110
    instance-of v1, v0, Lcom/android/launcher3/Launcher;

    if-nez v1, :cond_1

    .line 111
    return-void

    .line 113
    :cond_1
    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 114
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isStarted()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/states/InternalStateHandler$Scheduler;->initIfPending(Lcom/android/launcher3/Launcher;Z)Z

    .line 115
    return-void
.end method

.method public final declared-synchronized schedule(Lcom/android/launcher3/states/InternalStateHandler;)V
    .locals 1

    monitor-enter p0

    .line 96
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/states/InternalStateHandler$Scheduler;->mPendingHandler:Ljava/lang/ref/WeakReference;

    .line 97
    iget-object p1, p0, Lcom/android/launcher3/states/InternalStateHandler$Scheduler;->mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

    if-nez p1, :cond_0

    .line 98
    new-instance p1, Lcom/android/launcher3/MainThreadExecutor;

    invoke-direct {p1}, Lcom/android/launcher3/MainThreadExecutor;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/states/InternalStateHandler$Scheduler;->mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/states/InternalStateHandler$Scheduler;->mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
