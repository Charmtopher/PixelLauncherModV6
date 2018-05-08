.class public Lcom/android/launcher3/model/SdCardAvailableReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mModel:Lcom/android/launcher3/LauncherModel;

.field private final mPackages:Lcom/android/launcher3/util/MultiHashMap;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/MultiHashMap;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 49
    iget-object v0, p1, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    iput-object v0, p0, Lcom/android/launcher3/model/SdCardAvailableReceiver;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 50
    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/launcher3/model/SdCardAvailableReceiver;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/launcher3/model/SdCardAvailableReceiver;->mPackages:Lcom/android/launcher3/util/MultiHashMap;

    .line 52
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 56
    invoke-static {p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object p2

    .line 57
    new-instance v0, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    .line 58
    iget-object p1, p0, Lcom/android/launcher3/model/SdCardAvailableReceiver;->mPackages:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {p1}, Lcom/android/launcher3/util/MultiHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 59
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 62
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 64
    new-instance v5, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 65
    invoke-virtual {p2, v5, v2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 66
    invoke-virtual {v0, v5, v2}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppOnSdcard(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 67
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    :cond_0
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_1
    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 74
    iget-object v1, p0, Lcom/android/launcher3/model/SdCardAvailableReceiver;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 75
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 74
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/LauncherModel;->onPackagesRemoved(Landroid/os/UserHandle;[Ljava/lang/String;)V

    .line 77
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 78
    iget-object v1, p0, Lcom/android/launcher3/model/SdCardAvailableReceiver;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 79
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 78
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/launcher3/LauncherModel;->onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    .line 82
    :cond_4
    goto :goto_0

    .line 85
    :cond_5
    iget-object p1, p0, Lcom/android/launcher3/model/SdCardAvailableReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    return-void
.end method
