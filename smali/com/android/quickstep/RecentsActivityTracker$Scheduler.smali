.class Lcom/android/quickstep/RecentsActivityTracker$Scheduler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

.field private mPendingTracker:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivityTracker$Scheduler;->mPendingTracker:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quickstep/RecentsActivityTracker$1;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/quickstep/RecentsActivityTracker$Scheduler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized clearReference(Lcom/android/quickstep/RecentsActivityTracker;)Z
    .locals 1

    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/android/quickstep/RecentsActivityTracker$Scheduler;->mPendingTracker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/android/quickstep/RecentsActivityTracker$Scheduler;->mPendingTracker:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 128
    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 123
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initIfPending(Lcom/android/quickstep/RecentsActivity;Z)Z
    .locals 1

    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/android/quickstep/RecentsActivityTracker$Scheduler;->mPendingTracker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/RecentsActivityTracker;

    .line 114
    if-eqz v0, :cond_1

    .line 115
    invoke-static {v0, p1, p2}, Lcom/android/quickstep/RecentsActivityTracker;->access$200(Lcom/android/quickstep/RecentsActivityTracker;Lcom/android/quickstep/RecentsActivity;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/android/quickstep/RecentsActivityTracker$Scheduler;->mPendingTracker:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_0
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 120
    :cond_1
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 112
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 2

    .line 106
    invoke-static {}, Lcom/android/quickstep/RecentsActivityTracker;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/RecentsActivity;

    .line 107
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->isStarted()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/RecentsActivityTracker$Scheduler;->initIfPending(Lcom/android/quickstep/RecentsActivity;Z)Z

    .line 110
    :cond_0
    return-void
.end method

.method public declared-synchronized schedule(Lcom/android/quickstep/RecentsActivityTracker;)V
    .locals 1

    monitor-enter p0

    .line 97
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivityTracker$Scheduler;->mPendingTracker:Ljava/lang/ref/WeakReference;

    .line 98
    iget-object p1, p0, Lcom/android/quickstep/RecentsActivityTracker$Scheduler;->mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

    if-nez p1, :cond_0

    .line 99
    new-instance p1, Lcom/android/launcher3/MainThreadExecutor;

    invoke-direct {p1}, Lcom/android/launcher3/MainThreadExecutor;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/RecentsActivityTracker$Scheduler;->mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/RecentsActivityTracker$Scheduler;->mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
