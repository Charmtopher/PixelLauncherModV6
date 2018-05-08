.class public Lcom/android/launcher3/util/LooperExecutor;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "SourceFile"


# instance fields
.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/util/LooperExecutor;->mHandler:Landroid/os/Handler;

    .line 34
    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0

    .line 83
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/android/launcher3/util/LooperExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 43
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/LooperExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    return-void
.end method

.method public isShutdown()Z
    .locals 1

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public shutdown()V
    .locals 1

    .line 55
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1

    .line 64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
