.class public Lcom/android/launcher3/model/LoaderResults;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mApp:Lcom/android/launcher3/LauncherAppState;

.field private final mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

.field private final mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field final mCallbacks:Ljava/lang/ref/WeakReference;

.field private final mPageToBindFirst:I

.field private final mUiExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;ILjava/lang/ref/WeakReference;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/android/launcher3/MainThreadExecutor;

    invoke-direct {v0}, Lcom/android/launcher3/MainThreadExecutor;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    .line 70
    iput-object p1, p0, Lcom/android/launcher3/model/LoaderResults;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 71
    iput-object p2, p0, Lcom/android/launcher3/model/LoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 72
    iput-object p3, p0, Lcom/android/launcher3/model/LoaderResults;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    .line 73
    iput p4, p0, Lcom/android/launcher3/model/LoaderResults;->mPageToBindFirst:I

    .line 74
    if-nez p5, :cond_0

    new-instance p5, Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    invoke-direct {p5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :cond_0
    iput-object p5, p0, Lcom/android/launcher3/model/LoaderResults;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 75
    return-void
.end method

.method private bindWorkspaceItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V
    .locals 6

    .line 300
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 301
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 302
    nop

    .line 303
    add-int/lit8 v3, v2, 0x6

    if-gt v3, v0, :cond_0

    .line 304
    const/4 v4, 0x6

    goto :goto_1

    .line 303
    :cond_0
    sub-int v4, v0, v2

    .line 304
    :goto_1
    new-instance v5, Lcom/android/launcher3/model/LoaderResults$8;

    invoke-direct {v5, p0, p1, v2, v4}, Lcom/android/launcher3/model/LoaderResults$8;-><init>(Lcom/android/launcher3/model/LoaderResults;Ljava/util/ArrayList;II)V

    .line 313
    invoke-interface {p3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 301
    move v2, v3

    goto :goto_0

    .line 317
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 318
    :goto_2
    if-ge v1, p1, :cond_2

    .line 319
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 320
    new-instance v2, Lcom/android/launcher3/model/LoaderResults$9;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/model/LoaderResults$9;-><init>(Lcom/android/launcher3/model/LoaderResults;Lcom/android/launcher3/ItemInfo;)V

    .line 328
    invoke-interface {p3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 330
    :cond_2
    return-void
.end method

.method public static filterCurrentWorkspaceItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6

    .line 217
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 218
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 220
    if-nez v1, :cond_0

    .line 221
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 223
    :cond_0
    goto :goto_0

    .line 228
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 229
    new-instance v1, Lcom/android/launcher3/model/LoaderResults$6;

    invoke-direct {v1}, Lcom/android/launcher3/model/LoaderResults$6;-><init>()V

    invoke-static {p2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 235
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 236
    iget-wide v2, v1, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 237
    iget-wide v2, v1, Lcom/android/launcher3/ItemInfo;->screenId:J

    cmp-long v2, v2, p0

    if-nez v2, :cond_2

    .line 238
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-wide v1, v1, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 241
    :cond_2
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 243
    :cond_3
    iget-wide v2, v1, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 244
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    iget-wide v1, v1, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 247
    :cond_4
    iget-wide v2, v1, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 248
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-wide v1, v1, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 251
    :cond_5
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    goto :goto_1

    .line 255
    :cond_6
    return-void
.end method

.method private sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 261
    iget v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 262
    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    mul-int/2addr v2, v0

    .line 263
    new-instance v0, Lcom/android/launcher3/model/LoaderResults$7;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/launcher3/model/LoaderResults$7;-><init>(Lcom/android/launcher3/model/LoaderResults;II)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 293
    return-void
.end method


# virtual methods
.method public final bindAllApps()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v0, v0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 354
    new-instance v1, Lcom/android/launcher3/model/LoaderResults$11;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/model/LoaderResults$11;-><init>(Lcom/android/launcher3/model/LoaderResults;Ljava/util/ArrayList;)V

    .line 362
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 363
    return-void
.end method

.method public final bindDeepShortcuts()V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/MultiHashMap;->clone()Lcom/android/launcher3/util/MultiHashMap;

    move-result-object v1

    .line 336
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    new-instance v0, Lcom/android/launcher3/model/LoaderResults$10;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/model/LoaderResults$10;-><init>(Lcom/android/launcher3/model/LoaderResults;Lcom/android/launcher3/util/MultiHashMap;)V

    .line 346
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 347
    return-void

    .line 336
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final bindWidgets()V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderResults;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 367
    iget-object v1, v1, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/WidgetsModel;->getWidgetsList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 368
    new-instance v1, Lcom/android/launcher3/model/LoaderResults$12;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/model/LoaderResults$12;-><init>(Lcom/android/launcher3/model/LoaderResults;Ljava/util/ArrayList;)V

    .line 376
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 377
    return-void
.end method

.method public final bindWorkspace()V
    .locals 11

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 86
    if-nez v0, :cond_0

    .line 88
    const-string v0, "LoaderResults"

    const-string v1, "LoaderTask running with no launcher"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void

    .line 93
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iget-object v4, p0, Lcom/android/launcher3/model/LoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v4

    .line 98
    :try_start_0
    iget-object v5, p0, Lcom/android/launcher3/model/LoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    iget-object v5, p0, Lcom/android/launcher3/model/LoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    iget-object v5, p0, Lcom/android/launcher3/model/LoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 101
    iget-object v5, p0, Lcom/android/launcher3/model/LoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v6, v5, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v5, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    .line 102
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    iget v4, p0, Lcom/android/launcher3/model/LoaderResults;->mPageToBindFirst:I

    const/16 v5, -0x3e9

    if-eq v4, v5, :cond_1

    .line 107
    iget v0, p0, Lcom/android/launcher3/model/LoaderResults;->mPageToBindFirst:I

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->getCurrentWorkspaceScreen()I

    move-result v0

    .line 108
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 110
    nop

    .line 112
    move v0, v5

    .line 114
    :cond_2
    if-ltz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    .line 116
    :goto_1
    if-eqz v7, :cond_4

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_2

    :cond_4
    const-wide/16 v4, -0x1

    .line 119
    :goto_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 120
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 121
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 122
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-static {v4, v5, v1, v6, v8}, Lcom/android/launcher3/model/LoaderResults;->filterCurrentWorkspaceItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 126
    invoke-static {v4, v5, v2, v9, v10}, Lcom/android/launcher3/model/LoaderResults;->filterCurrentWorkspaceItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 128
    invoke-direct {p0, v6}, Lcom/android/launcher3/model/LoaderResults;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V

    .line 129
    invoke-direct {p0, v8}, Lcom/android/launcher3/model/LoaderResults;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V

    .line 132
    new-instance v1, Lcom/android/launcher3/model/LoaderResults$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/LoaderResults$1;-><init>(Lcom/android/launcher3/model/LoaderResults;)V

    .line 141
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 144
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/launcher3/model/LoaderResults$2;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/model/LoaderResults$2;-><init>(Lcom/android/launcher3/model/LoaderResults;Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 154
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    .line 156
    invoke-direct {p0, v6, v9, v1}, Lcom/android/launcher3/model/LoaderResults;->bindWorkspaceItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V

    .line 164
    if-eqz v7, :cond_5

    new-instance v2, Lcom/android/launcher3/util/ViewOnDrawExecutor;

    invoke-direct {v2}, Lcom/android/launcher3/util/ViewOnDrawExecutor;-><init>()V

    goto :goto_3

    .line 166
    :cond_5
    move-object v2, v1

    :goto_3
    new-instance v3, Lcom/android/launcher3/model/LoaderResults$3;

    invoke-direct {v3, p0, v7, v2}, Lcom/android/launcher3/model/LoaderResults$3;-><init>(Lcom/android/launcher3/model/LoaderResults;ZLjava/util/concurrent/Executor;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 177
    invoke-direct {p0, v8, v10, v2}, Lcom/android/launcher3/model/LoaderResults;->bindWorkspaceItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V

    .line 180
    new-instance v1, Lcom/android/launcher3/model/LoaderResults$4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/LoaderResults$4;-><init>(Lcom/android/launcher3/model/LoaderResults;)V

    .line 188
    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 190
    if-eqz v7, :cond_6

    .line 191
    new-instance v1, Lcom/android/launcher3/model/LoaderResults$5;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/launcher3/model/LoaderResults$5;-><init>(Lcom/android/launcher3/model/LoaderResults;ILjava/util/concurrent/Executor;)V

    .line 205
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 207
    :cond_6
    return-void

    .line 102
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
