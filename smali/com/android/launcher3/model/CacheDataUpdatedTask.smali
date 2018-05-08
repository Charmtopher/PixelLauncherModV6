.class public Lcom/android/launcher3/model/CacheDataUpdatedTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "SourceFile"


# instance fields
.field private final mOp:I

.field private final mPackages:Ljava/util/HashSet;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(ILandroid/os/UserHandle;Ljava/util/HashSet;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    .line 47
    iput p1, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mOp:I

    .line 48
    iput-object p2, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mUser:Landroid/os/UserHandle;

    .line 49
    iput-object p3, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mPackages:Ljava/util/HashSet;

    .line 50
    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;)V
    .locals 6

    .line 54
    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    monitor-enter p2

    .line 60
    :try_start_0
    iget-object v2, p2, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/ItemInfo;

    .line 61
    instance-of v4, v3, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mUser:Landroid/os/UserHandle;

    iget-object v5, v3, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v5}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    check-cast v3, Lcom/android/launcher3/ShortcutInfo;

    .line 63
    invoke-virtual {v3}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 64
    iget v5, v3, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    if-nez v5, :cond_0

    .line 65
    iget v5, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mOp:I

    packed-switch v5, :pswitch_data_0

    const/4 v5, 0x0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v3}, Lcom/android/launcher3/ShortcutInfo;->hasPromiseIconUi()Z

    move-result v5

    goto :goto_1

    :pswitch_1
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mPackages:Ljava/util/HashSet;

    .line 66
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    iget-boolean v4, v3, Lcom/android/launcher3/ShortcutInfo;->usingLowResIcon:Z

    invoke-virtual {p1, v3, v4}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Z)V

    .line 68
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    goto :goto_0

    .line 72
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mPackages:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p3, p1, v2, v0}, Lcom/android/launcher3/AllAppsList;->updateIconsAndLabels(Ljava/util/HashSet;Landroid/os/UserHandle;Ljava/util/ArrayList;)V

    .line 73
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    iget-object p1, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/model/CacheDataUpdatedTask;->bindUpdatedShortcuts(Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 77
    new-instance p1, Lcom/android/launcher3/model/CacheDataUpdatedTask$1;

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/model/CacheDataUpdatedTask$1;-><init>(Lcom/android/launcher3/model/CacheDataUpdatedTask;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/CacheDataUpdatedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 84
    :cond_2
    return-void

    .line 73
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
