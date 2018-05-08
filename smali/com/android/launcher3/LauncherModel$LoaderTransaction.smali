.class public Lcom/android/launcher3/LauncherModel$LoaderTransaction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final mTask:Lcom/android/launcher3/model/LoaderTask;

.field public final synthetic this$0:Lcom/android/launcher3/LauncherModel;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/LoaderTask;)V
    .locals 2

    .line 539
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    iget-object v0, p1, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    :try_start_0
    iget-object v1, p1, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/model/LoaderTask;

    if-ne v1, p2, :cond_0

    .line 544
    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->mTask:Lcom/android/launcher3/model/LoaderTask;

    .line 545
    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z

    .line 546
    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/launcher3/LauncherModel;->access$002(Lcom/android/launcher3/LauncherModel;Z)Z

    .line 547
    monitor-exit v0

    return-void

    .line 542
    :cond_0
    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string p2, "Loader already stopped"

    invoke-direct {p1, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 547
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/LoaderTask;B)V
    .locals 0

    .line 535
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/LoaderTask;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 559
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 561
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/model/LoaderTask;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->mTask:Lcom/android/launcher3/model/LoaderTask;

    if-ne v1, v2, :cond_0

    .line 562
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/model/LoaderTask;

    .line 564
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z

    .line 565
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
