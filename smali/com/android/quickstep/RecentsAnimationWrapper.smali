.class public Lcom/android/quickstep/RecentsAnimationWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

.field private mBehindSystemBars:Z

.field private mInputConsumerEnabled:Z

.field private mSplitScreenMinimized:Z

.field public targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationWrapper;->mInputConsumerEnabled:Z

    .line 32
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/quickstep/RecentsAnimationWrapper;->mBehindSystemBars:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationWrapper;->mSplitScreenMinimized:Z

    return-void
.end method

.method public static synthetic lambda$enableInputConsumer$1(Lcom/android/quickstep/RecentsAnimationWrapper;)V
    .locals 2

    .line 70
    monitor-enter p0

    .line 71
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Enabling consumer on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/quickstep/RecentsAnimationWrapper;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationWrapper;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationWrapper;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setInputConsumerEnabled(Z)V

    .line 76
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static synthetic lambda$finish$0(Lcom/android/quickstep/RecentsAnimationWrapper;ZLjava/lang/Runnable;)V
    .locals 2

    .line 52
    monitor-enter p0

    .line 53
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finish "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/quickstep/RecentsAnimationWrapper;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", toHome="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationWrapper;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationWrapper;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setInputConsumerEnabled(Z)V

    .line 57
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationWrapper;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->finish(Z)V

    .line 58
    if-eqz p2, :cond_0

    .line 59
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 62
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static synthetic lambda$setAnimationTargetsBehindSystemBars$2(Lcom/android/quickstep/RecentsAnimationWrapper;Z)V
    .locals 2

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting behind system bars on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/quickstep/RecentsAnimationWrapper;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationWrapper;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationWrapper;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setAnimationTargetsBehindSystemBars(Z)V

    .line 93
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static synthetic lambda$setSplitScreenMinimizedForTransaction$3(Lcom/android/quickstep/RecentsAnimationWrapper;Z)V
    .locals 2

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting minimize dock on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/quickstep/RecentsAnimationWrapper;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationWrapper;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationWrapper;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setSplitScreenMinimized(Z)V

    .line 115
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public enableInputConsumer()V
    .locals 2

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationWrapper;->mInputConsumerEnabled:Z

    .line 68
    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationWrapper;->mInputConsumerEnabled:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/android/systemui/shared/system/BackgroundExecutor;->get()Lcom/android/systemui/shared/system/BackgroundExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/-$$Lambda$RecentsAnimationWrapper$9c3qO5H-3-3OmkdTM70q4HUnQYM;

    invoke-direct {v1, p0}, Lcom/android/quickstep/-$$Lambda$RecentsAnimationWrapper$9c3qO5H-3-3OmkdTM70q4HUnQYM;-><init>(Lcom/android/quickstep/RecentsAnimationWrapper;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 79
    :cond_0
    return-void
.end method

.method public finish(ZLjava/lang/Runnable;)V
    .locals 2

    .line 51
    invoke-static {}, Lcom/android/systemui/shared/system/BackgroundExecutor;->get()Lcom/android/systemui/shared/system/BackgroundExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/-$$Lambda$RecentsAnimationWrapper$t0651d-J6Ex6rVOzuxBL-Fg45bs;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/quickstep/-$$Lambda$RecentsAnimationWrapper$t0651d-J6Ex6rVOzuxBL-Fg45bs;-><init>(Lcom/android/quickstep/RecentsAnimationWrapper;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 64
    return-void
.end method

.method public setAnimationTargetsBehindSystemBars(Z)V
    .locals 2

    .line 82
    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationWrapper;->mBehindSystemBars:Z

    if-ne v0, p1, :cond_0

    .line 83
    return-void

    .line 85
    :cond_0
    iput-boolean p1, p0, Lcom/android/quickstep/RecentsAnimationWrapper;->mBehindSystemBars:Z

    .line 86
    invoke-static {}, Lcom/android/systemui/shared/system/BackgroundExecutor;->get()Lcom/android/systemui/shared/system/BackgroundExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/-$$Lambda$RecentsAnimationWrapper$QrJiGACPfNMszQcu6iJp-4ImttA;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/-$$Lambda$RecentsAnimationWrapper$QrJiGACPfNMszQcu6iJp-4ImttA;-><init>(Lcom/android/quickstep/RecentsAnimationWrapper;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 95
    return-void
.end method

.method public declared-synchronized setController(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 2

    monitor-enter p0

    .line 37
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set controller "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    iput-object p1, p0, Lcom/android/quickstep/RecentsAnimationWrapper;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    .line 39
    iput-object p2, p0, Lcom/android/quickstep/RecentsAnimationWrapper;->targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 41
    iget-boolean p1, p0, Lcom/android/quickstep/RecentsAnimationWrapper;->mInputConsumerEnabled:Z

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationWrapper;->enableInputConsumer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_0
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSplitScreenMinimizedForTransaction(Z)V
    .locals 2

    .line 104
    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationWrapper;->mSplitScreenMinimized:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iput-boolean p1, p0, Lcom/android/quickstep/RecentsAnimationWrapper;->mSplitScreenMinimized:Z

    .line 108
    invoke-static {}, Lcom/android/systemui/shared/system/BackgroundExecutor;->get()Lcom/android/systemui/shared/system/BackgroundExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/-$$Lambda$RecentsAnimationWrapper$ykLqYkc8Y_V0VQVp5BD2XcRvDC4;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/-$$Lambda$RecentsAnimationWrapper$ykLqYkc8Y_V0VQVp5BD2XcRvDC4;-><init>(Lcom/android/quickstep/RecentsAnimationWrapper;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 117
    return-void

    .line 105
    :cond_1
    :goto_0
    return-void
.end method
