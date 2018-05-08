.class public Lcom/android/launcher3/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# static fields
.field static final sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field static final sWorker:Landroid/os/Handler;

.field static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field final mApp:Lcom/android/launcher3/LauncherAppState;

.field private final mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

.field mCallbacks:Ljava/lang/ref/WeakReference;

.field mIsLoaderTaskRunning:Z

.field mLoaderTask:Lcom/android/launcher3/model/LoaderTask;

.field public final mLock:Ljava/lang/Object;

.field private mModelLoaded:Z

.field final mShortcutPermissionCheckRunnable:Ljava/lang/Runnable;

.field private final mUiExecutor:Lcom/android/launcher3/MainThreadExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 95
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 97
    sput-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 99
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    .line 121
    new-instance v0, Lcom/android/launcher3/model/BgDataModel;

    invoke-direct {v0}, Lcom/android/launcher3/model/BgDataModel;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/IconCache;Lcom/android/launcher3/AppFilter;)V
    .locals 1

    .line 164
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 88
    new-instance v0, Lcom/android/launcher3/MainThreadExecutor;

    invoke-direct {v0}, Lcom/android/launcher3/MainThreadExecutor;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mUiExecutor:Lcom/android/launcher3/MainThreadExecutor;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    .line 124
    new-instance v0, Lcom/android/launcher3/LauncherModel$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherModel$1;-><init>(Lcom/android/launcher3/LauncherModel;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mShortcutPermissionCheckRunnable:Ljava/lang/Runnable;

    .line 165
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 166
    new-instance p1, Lcom/android/launcher3/AllAppsList;

    invoke-direct {p1, p2, p3}, Lcom/android/launcher3/AllAppsList;-><init>(Lcom/android/launcher3/IconCache;Lcom/android/launcher3/AppFilter;)V

    iput-object p1, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/LauncherModel;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/android/launcher3/LauncherModel;->mModelLoaded:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/android/launcher3/LauncherModel;Z)Z
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/android/launcher3/LauncherModel;->mModelLoaded:Z

    return p1
.end method

.method static checkItemInfo(Lcom/android/launcher3/ItemInfo;)V
    .locals 4

    .line 245
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 246
    iget-wide v1, p0, Lcom/android/launcher3/ItemInfo;->id:J

    .line 247
    new-instance v3, Lcom/android/launcher3/LauncherModel$2;

    invoke-direct {v3, v1, v2, p0, v0}, Lcom/android/launcher3/LauncherModel$2;-><init>(JLcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 254
    invoke-static {v3}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 255
    return-void
.end method

.method static checkItemInfoLocked(JLcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 5

    .line 208
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/ItemInfo;

    .line 209
    if-eqz p0, :cond_4

    if-eq p2, p0, :cond_4

    .line 211
    instance-of p1, p0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz p1, :cond_0

    instance-of p1, p2, Lcom/android/launcher3/ShortcutInfo;

    if-eqz p1, :cond_0

    .line 212
    move-object p1, p0

    check-cast p1, Lcom/android/launcher3/ShortcutInfo;

    .line 213
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 214
    iget-object v1, p1, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 215
    invoke-virtual {v1, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p1, Lcom/android/launcher3/ShortcutInfo;->id:J

    iget-wide v3, v0, Lcom/android/launcher3/ShortcutInfo;->id:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget v1, p1, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    iget v2, v0, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    if-ne v1, v2, :cond_0

    iget-wide v1, p1, Lcom/android/launcher3/ShortcutInfo;->container:J

    iget-wide v3, v0, Lcom/android/launcher3/ShortcutInfo;->container:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p1, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    iget-wide v3, v0, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget v1, p1, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    iget v2, v0, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    iget v2, v0, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    iget v2, v0, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    if-ne v1, v2, :cond_0

    iget p1, p1, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    iget v0, v0, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    if-ne p1, v0, :cond_0

    .line 225
    return-void

    .line 232
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "item: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/launcher3/ItemInfo;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, "null"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "modelItem: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/ItemInfo;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string p0, "null"

    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Error: ItemInfo passed to checkItemInfo doesn\'t match original"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 236
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 237
    if-eqz p3, :cond_3

    .line 238
    invoke-virtual {p1, p3}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 240
    :cond_3
    throw p1

    .line 242
    :cond_4
    return-void
.end method

.method public static getWorkerLooper()Landroid/os/Looper;
    .locals 1

    .line 679
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6

    .line 508
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 509
    sget-object v1, Lcom/android/launcher3/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    .line 512
    const-string v5, "screenRank"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/provider/LauncherDbUtils;->getScreenIdsFromCursor(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private static runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 172
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 173
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 176
    :cond_0
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    return-void
.end method

.method public static setWorkerPriority(I)V
    .locals 1

    .line 683
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/os/Process;->setThreadPriority(II)V

    .line 684
    return-void
.end method

.method public static updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 6

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 264
    sget-object p1, Lcom/android/launcher3/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    .line 267
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 268
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 270
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 271
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 273
    :cond_0
    goto :goto_0

    .line 275
    :cond_1
    new-instance v1, Lcom/android/launcher3/LauncherModel$3;

    invoke-direct {v1, p1, v0, p0}, Lcom/android/launcher3/LauncherModel$3;-><init>(Landroid/net/Uri;Ljava/util/ArrayList;Landroid/content/ContentResolver;)V

    .line 302
    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 303
    return-void
.end method


# virtual methods
.method public final dumpState(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 661
    array-length v0, p4

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p4, v0

    const-string v1, "--all"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "All apps list: size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v1, v1, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v0, v0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/AppInfo;

    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   title=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\" iconBitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/launcher3/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " componentName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 665
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 664
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    goto :goto_0

    .line 668
    :cond_0
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher3/model/BgDataModel;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 669
    return-void
.end method

.method public final enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V
    .locals 6

    .line 596
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    sget-object v3, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v5, p0, Lcom/android/launcher3/LauncherModel;->mUiExecutor:Lcom/android/launcher3/MainThreadExecutor;

    move-object v0, p1

    move-object v2, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/launcher3/LauncherModel$ModelUpdateTask;->init(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;Ljava/util/concurrent/Executor;)V

    .line 597
    invoke-static {p1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 598
    return-void
.end method

.method public final forceReload()V
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 422
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->stopLoader()V

    .line 423
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/LauncherModel;->mModelLoaded:Z

    .line 424
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_0

    .line 430
    invoke-interface {v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->getCurrentWorkspaceScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->startLoader(I)Z

    .line 432
    :cond_0
    return-void

    .line 424
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$Callbacks;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getWriter(ZZ)Lcom/android/launcher3/model/ModelWriter;
    .locals 7

    .line 202
    new-instance v6, Lcom/android/launcher3/model/ModelWriter;

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v1, v0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    move-object v0, v6

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/model/ModelWriter;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/BgDataModel;ZZ)V

    return-object v6
.end method

.method public final isModelLoaded()Z
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-boolean v1, p0, Lcom/android/launcher3/LauncherModel;->mModelLoaded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/model/LoaderTask;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4

    .line 333
    new-instance v0, Lcom/android/launcher3/model/PackageUpdatedTask;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, p2, v2}, Lcom/android/launcher3/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 335
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .line 317
    new-instance v0, Lcom/android/launcher3/model/PackageUpdatedTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x2

    invoke-direct {v0, p1, p2, v1}, Lcom/android/launcher3/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 319
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .line 323
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/android/launcher3/LauncherModel;->onPackagesRemoved(Landroid/os/UserHandle;[Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 1

    .line 340
    new-instance p3, Lcom/android/launcher3/model/PackageUpdatedTask;

    const/4 v0, 0x2

    invoke-direct {p3, v0, p2, p1}, Lcom/android/launcher3/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 342
    return-void
.end method

.method public final varargs onPackagesRemoved(Landroid/os/UserHandle;[Ljava/lang/String;)V
    .locals 2

    .line 327
    new-instance v0, Lcom/android/launcher3/model/PackageUpdatedTask;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, p2}, Lcom/android/launcher3/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 329
    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .line 355
    new-instance v0, Lcom/android/launcher3/model/PackageUpdatedTask;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p2, p1}, Lcom/android/launcher3/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 357
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 1

    .line 347
    if-nez p3, :cond_0

    .line 348
    new-instance p3, Lcom/android/launcher3/model/PackageUpdatedTask;

    const/4 v0, 0x4

    invoke-direct {p3, v0, p2, p1}, Lcom/android/launcher3/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 351
    :cond_0
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .line 361
    new-instance v0, Lcom/android/launcher3/model/PackageUpdatedTask;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p2, p1}, Lcom/android/launcher3/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 363
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 384
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 385
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    return-void

    .line 388
    :cond_0
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 389
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 392
    :cond_1
    const-string p1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 393
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    .line 394
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 395
    :cond_2
    const-string p1, "android.intent.extra.USER"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    .line 396
    if-eqz p1, :cond_6

    .line 397
    const-string p2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 398
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 399
    :cond_3
    new-instance p2, Lcom/android/launcher3/model/PackageUpdatedTask;

    const/4 v1, 0x7

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {p2, v1, p1, v2}, Lcom/android/launcher3/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 405
    :cond_4
    const-string p2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    .line 406
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 407
    :cond_5
    new-instance p2, Lcom/android/launcher3/model/UserLockStateChangedTask;

    invoke-direct {p2, p1}, Lcom/android/launcher3/model/UserLockStateChangedTask;-><init>(Landroid/os/UserHandle;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 413
    :cond_6
    return-void

    .line 390
    :cond_7
    :goto_0
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->enableAndResetCache()V

    .line 391
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    return-void
.end method

.method public onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 2

    .line 368
    new-instance v0, Lcom/android/launcher3/model/ShortcutsChangedTask;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/launcher3/model/ShortcutsChangedTask;-><init>(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 369
    return-void
.end method

.method public final startLoader(I)Z
    .locals 10

    .line 444
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/launcher3/InstallShortcutReceiver;->enableInstallQueue(I)V

    .line 445
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 448
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 450
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mUiExecutor:Lcom/android/launcher3/MainThreadExecutor;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/-$$Lambda$rGy4HMHlfF5mKCkPMTuda4Xd94I;

    invoke-direct {v3, v1}, Lcom/android/launcher3/-$$Lambda$rGy4HMHlfF5mKCkPMTuda4Xd94I;-><init>(Lcom/android/launcher3/LauncherModel$Callbacks;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 453
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->stopLoader()V

    .line 454
    new-instance v1, Lcom/android/launcher3/model/LoaderResults;

    iget-object v5, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    sget-object v6, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v7, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v9, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    move-object v4, v1

    move v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/model/LoaderResults;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;ILjava/lang/ref/WeakReference;)V

    .line 456
    iget-boolean p1, p0, Lcom/android/launcher3/LauncherModel;->mModelLoaded:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z

    if-nez p1, :cond_0

    .line 459
    invoke-virtual {v1}, Lcom/android/launcher3/model/LoaderResults;->bindWorkspace()V

    .line 462
    invoke-virtual {v1}, Lcom/android/launcher3/model/LoaderResults;->bindAllApps()V

    .line 463
    invoke-virtual {v1}, Lcom/android/launcher3/model/LoaderResults;->bindDeepShortcuts()V

    .line 464
    invoke-virtual {v1}, Lcom/android/launcher3/model/LoaderResults;->bindWidgets()V

    .line 465
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 467
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->startLoaderForResults(Lcom/android/launcher3/model/LoaderResults;)V

    .line 470
    :cond_1
    monitor-exit v0

    .line 471
    const/4 p1, 0x0

    return p1

    .line 470
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final startLoaderForResults(Lcom/android/launcher3/model/LoaderResults;)V
    .locals 5

    .line 488
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 489
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->stopLoader()V

    .line 490
    new-instance v1, Lcom/android/launcher3/model/LoaderTask;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    sget-object v4, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/android/launcher3/model/LoaderTask;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/LoaderResults;)V

    iput-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/model/LoaderTask;

    .line 491
    iget-object p1, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/model/LoaderTask;

    invoke-static {p1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 492
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final stopLoader()V
    .locals 3

    .line 478
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/model/LoaderTask;

    .line 480
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/model/LoaderTask;

    .line 481
    if-eqz v1, :cond_0

    .line 482
    invoke-virtual {v1}, Lcom/android/launcher3/model/LoaderTask;->stopLocked()V

    .line 484
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final updateAndBindShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;)V
    .locals 1

    .line 623
    new-instance v0, Lcom/android/launcher3/LauncherModel$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/LauncherModel$5;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->updateAndBindShortcutInfo(Lcom/android/launcher3/util/Provider;)V

    .line 633
    return-void
.end method

.method public final updateAndBindShortcutInfo(Lcom/android/launcher3/util/Provider;)V
    .locals 1

    .line 639
    new-instance v0, Lcom/android/launcher3/LauncherModel$6;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/LauncherModel$6;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/util/Provider;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 648
    return-void
.end method
