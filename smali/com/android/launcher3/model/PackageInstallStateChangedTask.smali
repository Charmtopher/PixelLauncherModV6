.class public Lcom/android/launcher3/model/PackageInstallStateChangedTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "SourceFile"


# instance fields
.field private final mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    .line 48
    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;)V
    .locals 7

    .line 52
    iget-object v0, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v0, v0, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->state:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 56
    :try_start_0
    iget-object p2, p1, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object p3, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget-object p3, p3, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 58
    iget-object p3, p1, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/launcher3/util/InstantAppResolver;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/util/InstantAppResolver;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/launcher3/util/InstantAppResolver;->isInstantApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 59
    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/android/launcher3/LauncherModel;->onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    return-void

    .line 61
    :catch_0
    move-exception p1

    .line 65
    return-void

    .line 68
    :cond_1
    monitor-enter p3

    .line 69
    const/4 p1, 0x0

    .line 70
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    :goto_0
    iget-object v2, p3, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v1, v2, :cond_4

    .line 72
    iget-object v2, p3, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/AppInfo;

    .line 73
    invoke-virtual {v2}, Lcom/android/launcher3/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 74
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget-object v5, v5, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 75
    instance-of v4, v2, Lcom/android/launcher3/PromiseAppInfo;

    if-eqz v4, :cond_3

    .line 76
    move-object v4, v2

    check-cast v4, Lcom/android/launcher3/PromiseAppInfo;

    .line 77
    iget-object v5, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v5, v5, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->state:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 78
    iget-object p1, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget p1, p1, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->progress:I

    iput p1, v4, Lcom/android/launcher3/PromiseAppInfo;->level:I

    .line 79
    nop

    .line 71
    move-object p1, v4

    goto :goto_1

    .line 80
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v4, v4, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->state:I

    if-ne v4, v3, :cond_3

    .line 81
    iget-object v3, p3, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_4
    if-eqz p1, :cond_5

    .line 88
    nop

    .line 89
    new-instance v1, Lcom/android/launcher3/model/PackageInstallStateChangedTask$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/model/PackageInstallStateChangedTask$1;-><init>(Lcom/android/launcher3/model/PackageInstallStateChangedTask;Lcom/android/launcher3/PromiseAppInfo;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 96
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 97
    new-instance p1, Lcom/android/launcher3/model/PackageInstallStateChangedTask$2;

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/model/PackageInstallStateChangedTask$2;-><init>(Lcom/android/launcher3/model/PackageInstallStateChangedTask;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 104
    :cond_6
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    monitor-enter p2

    .line 107
    :try_start_2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 108
    iget-object p3, p2, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {p3}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 109
    instance-of v1, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_8

    .line 110
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 111
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 112
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->hasPromiseIconUi()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget-object v2, v2, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    .line 113
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 114
    iget-object v1, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v1, v1, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->progress:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutInfo;->setInstallProgress(I)V

    .line 115
    iget-object v1, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v1, v1, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->state:I

    if-ne v1, v3, :cond_7

    .line 117
    iget v1, v0, Lcom/android/launcher3/ShortcutInfo;->status:I

    and-int/lit8 v1, v1, -0x5

    iput v1, v0, Lcom/android/launcher3/ShortcutInfo;->status:I

    .line 119
    :cond_7
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_8
    goto :goto_2

    .line 124
    :cond_9
    iget-object p3, p2, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 125
    iget-object v1, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget-object v2, v2, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 126
    iget-object v1, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v1, v1, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->progress:I

    iput v1, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->installProgress:I

    .line 127
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_a
    goto :goto_3

    .line 131
    :cond_b
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_c

    .line 132
    new-instance p3, Lcom/android/launcher3/model/PackageInstallStateChangedTask$3;

    invoke-direct {p3, p0, p1}, Lcom/android/launcher3/model/PackageInstallStateChangedTask$3;-><init>(Lcom/android/launcher3/model/PackageInstallStateChangedTask;Ljava/util/HashSet;)V

    invoke-virtual {p0, p3}, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 139
    :cond_c
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 104
    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
