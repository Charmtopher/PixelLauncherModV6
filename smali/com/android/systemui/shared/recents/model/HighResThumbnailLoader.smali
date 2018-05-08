.class public Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;


# instance fields
.field private final mActivityManager:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field private mFlingingFast:Z

.field private final mIsLowRamDevice:Z

.field private final mLoadQueue:Ljava/util/ArrayDeque;

.field private final mLoadThread:Ljava/lang/Thread;

.field private final mLoader:Ljava/lang/Runnable;

.field private mLoaderIdling:Z

.field private mLoading:Z

.field private final mLoadingTasks:Landroid/util/ArraySet;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mTaskLoadQueueIdle:Z

.field private mVisible:Z

.field private final mVisibleTasks:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;Landroid/os/Looper;Z)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    .line 43
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadingTasks:Landroid/util/ArraySet;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    .line 194
    new-instance v0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader$1;-><init>(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoader:Ljava/lang/Runnable;

    .line 60
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mActivityManager:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 61
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 62
    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoader:Ljava/lang/Runnable;

    const-string v0, "Recents-HighResThumbnailLoader"

    invoke-direct {p1, p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadThread:Ljava/lang/Thread;

    .line 63
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 64
    iput-boolean p3, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mIsLowRamDevice:Z

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;)Ljava/util/ArrayDeque;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoading:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoaderIdling:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;)Landroid/util/ArraySet;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadingTasks:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;)Lcom/android/systemui/shared/system/ActivityManagerWrapper;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mActivityManager:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    return-object p0
.end method

.method private setLoading(Z)V
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoading:Z

    if-ne p1, v0, :cond_0

    .line 106
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 109
    :try_start_0
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoading:Z

    .line 110
    if-nez p1, :cond_1

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->stopLoading()V

    goto :goto_0

    .line 113
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->startLoading()V

    .line 115
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private startLoading()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 121
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    .line 122
    iget-object v2, v1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-boolean v2, v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->reducedResolution:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    .line 123
    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadingTasks:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 128
    return-void
.end method

.method private stopLoading()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 134
    return-void
.end method

.method private updateLoading()V
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mFlingingFast:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mTaskLoadQueueIdle:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->setLoading(Z)V

    .line 102
    return-void
.end method


# virtual methods
.method isLoading()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoading:Z

    return v0
.end method

.method public onTaskDataLoaded(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 1

    .line 179
    if-eqz p2, :cond_0

    iget-boolean p2, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->reducedResolution:Z

    if-nez p2, :cond_0

    .line 180
    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    monitor-enter p2

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 182
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 184
    :cond_0
    return-void
.end method

.method public onTaskDataUnloaded()V
    .locals 0

    .line 188
    return-void
.end method

.method public onTaskInvisible(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 2

    .line 158
    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/recents/model/Task;->removeCallback(Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 162
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onTaskVisible(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 2

    .line 143
    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/recents/model/Task;->addCallback(Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->reducedResolution:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoading:Z

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 149
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 151
    :cond_1
    return-void
.end method

.method public onTaskWindowingModeChanged()V
    .locals 0

    .line 192
    return-void
.end method

.method public setFlingingFast(Z)V
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mFlingingFast:Z

    if-eq v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mIsLowRamDevice:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mFlingingFast:Z

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->updateLoading()V

    .line 81
    return-void

    .line 77
    :cond_1
    :goto_0
    return-void
.end method

.method public setTaskLoadQueueIdle(Z)V
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mIsLowRamDevice:Z

    if-eqz v0, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mTaskLoadQueueIdle:Z

    .line 92
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->updateLoading()V

    .line 93
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mIsLowRamDevice:Z

    if-eqz v0, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mVisible:Z

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->updateLoading()V

    .line 73
    return-void
.end method

.method waitForLoaderIdle()V
    .locals 2

    .line 168
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoaderIdling:Z

    if-eqz v1, :cond_0

    .line 170
    monitor-exit v0

    return-void

    .line 172
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
