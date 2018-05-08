.class public Lcom/android/launcher3/model/LoaderTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mApp:Lcom/android/launcher3/LauncherAppState;

.field private final mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

.field private final mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

.field private final mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field private mFirstScreenBroadcast:Lcom/android/launcher3/model/FirstScreenBroadcast;

.field private final mIconCache:Lcom/android/launcher3/IconCache;

.field private final mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

.field private final mPackageInstaller:Lcom/android/launcher3/compat/PackageInstallerCompat;

.field private final mResults:Lcom/android/launcher3/model/LoaderResults;

.field private final mShortcutManager:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

.field private mStopped:Z

.field private final mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/LoaderResults;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 113
    iput-object p2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    .line 114
    iput-object p3, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 115
    iput-object p4, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    .line 117
    iget-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    .line 118
    iget-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 119
    iget-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mShortcutManager:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    .line 120
    iget-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/compat/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/PackageInstallerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mPackageInstaller:Lcom/android/launcher3/compat/PackageInstallerCompat;

    .line 121
    iget-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    .line 122
    iget-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 123
    return-void
.end method

.method public static isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z
    .locals 1

    .line 859
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 860
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    .line 859
    return p0
.end method

.method private loadAllApps()V
    .locals 8

    .line 811
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 814
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v2, v1, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v1, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v1, Lcom/android/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v1, Lcom/android/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 815
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 817
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 820
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 823
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/compat/UserManagerCompat;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v3

    .line 825
    const/4 v4, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 826
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherActivityInfo;

    .line 828
    iget-object v6, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    new-instance v7, Lcom/android/launcher3/AppInfo;

    invoke-direct {v7, v5, v1, v3}, Lcom/android/launcher3/AppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V

    invoke-virtual {v6, v7, v5}, Lcom/android/launcher3/AllAppsList;->add(Lcom/android/launcher3/AppInfo;Landroid/content/pm/LauncherActivityInfo;)V

    .line 825
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 830
    :cond_1
    goto :goto_0

    .line 821
    :cond_2
    :goto_2
    return-void

    .line 841
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    .line 842
    return-void
.end method

.method private loadDeepShortcuts()V
    .locals 5

    .line 845
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MultiHashMap;->clear()V

    .line 846
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mShortcutManager:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    invoke-virtual {v1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->hasHostPermission()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/launcher3/model/BgDataModel;->hasShortcutHostPermission:Z

    .line 847
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-boolean v0, v0, Lcom/android/launcher3/model/BgDataModel;->hasShortcutHostPermission:Z

    if-eqz v0, :cond_1

    .line 848
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 849
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/compat/UserManagerCompat;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 850
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mShortcutManager:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    .line 851
    invoke-virtual {v2, v1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForAllShortcuts(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 852
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/launcher3/model/BgDataModel;->updateDeepShortcutMap(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    .line 854
    :cond_0
    goto :goto_0

    .line 856
    :cond_1
    return-void
.end method

.method private updateIconCache()V
    .locals 5

    .line 791
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 792
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v1

    .line 793
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/ItemInfo;

    .line 794
    instance-of v4, v3, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v4, :cond_1

    .line 795
    check-cast v3, Lcom/android/launcher3/ShortcutInfo;

    .line 796
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 797
    invoke-virtual {v3}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 799
    :cond_0
    goto :goto_0

    :cond_1
    instance-of v4, v3, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v4, :cond_2

    .line 800
    check-cast v3, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 801
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 802
    iget-object v3, v3, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 805
    :cond_2
    goto :goto_0

    .line 806
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/IconCache;->updateDbIcons(Ljava/util/Set;)V

    .line 808
    return-void

    .line 806
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized verifyNotStopped()V
    .locals 2

    monitor-enter p0

    .line 136
    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 139
    monitor-exit p0

    return-void

    .line 137
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Loader stopped"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 50

    .line 158
    move-object/from16 v1, p0

    monitor-enter p0

    .line 160
    :try_start_0
    iget-boolean v0, v1, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    .line 161
    monitor-exit p0

    return-void

    .line 163
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_10

    .line 165
    :try_start_1
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    new-instance v2, Lcom/android/launcher3/LauncherModel$LoaderTransaction;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/LoaderTask;B)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_23

    .line 167
    const/4 v4, 0x0

    :try_start_2
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v5, v0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    new-instance v13, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v13, v5}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v0, v13, Lcom/android/launcher3/util/PackageManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v14

    invoke-static {}, Lcom/android/launcher3/Utilities;->isBootCompleted()Z

    move-result v15

    new-instance v11, Lcom/android/launcher3/util/MultiHashMap;

    invoke-direct {v11}, Lcom/android/launcher3/util/MultiHashMap;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_21
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    const/4 v10, 0x1

    :try_start_3
    invoke-static {v5}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v6, "data_import_src_pkg"

    const-string v7, ""

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "data_import_src_authority"

    const-string v8, ""

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v8, "data_import_src_pkg"

    invoke-interface {v0, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v8, "data_import_src_authority"

    invoke-interface {v0, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "get_empty_db_flag"

    invoke-static {v0, v8}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v8, "value"

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v4, v8, v3}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ProviderInfo;

    iget-object v9, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_3

    iget-object v9, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v8, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v9, :cond_2

    :try_start_4
    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    if-nez v8, :cond_6

    :cond_2
    :try_start_5
    new-instance v0, Lcom/android/launcher3/provider/ImportDataTask;

    invoke-direct {v0, v5, v7}, Lcom/android/launcher3/provider/ImportDataTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/launcher3/provider/ImportDataTask;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    iget-object v6, v0, Lcom/android/launcher3/provider/ImportDataTask;->mOtherScreensUri:Landroid/net/Uri;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v22, "screenRank"

    move-object/from16 v18, v6

    invoke-virtual/range {v17 .. v22}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher3/provider/LauncherDbUtils;->getScreenIdsFromCursor(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, "ImportDataTask"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Importing DB from "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/launcher3/provider/ImportDataTask;->mOtherFavoritesUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v7, :cond_4

    :try_start_6
    const-string v0, "ImportDataTask"

    const-string v6, "No data found to import"

    invoke-static {v0, v6}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_e

    :cond_3
    :goto_1
    move-object/from16 v24, v2

    move-object/from16 v25, v13

    move/from16 v26, v14

    goto/16 :goto_3

    :cond_4
    :try_start_7
    iput v3, v0, Lcom/android/launcher3/provider/ImportDataTask;->mMaxGridSizeY:I

    iput v3, v0, Lcom/android/launcher3/provider/ImportDataTask;->mMaxGridSizeX:I

    iput v3, v0, Lcom/android/launcher3/provider/ImportDataTask;->mHotseatSize:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-instance v9, Landroid/util/LongSparseArray;

    invoke-direct {v9, v8}, Landroid/util/LongSparseArray;-><init>(I)V

    move v10, v3

    :goto_2
    if-ge v10, v8, :cond_5

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "_id"

    move/from16 v23, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "screenRank"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v24, v2

    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v25, v13

    move/from16 v26, v14

    int-to-long v13, v10

    :try_start_9
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v9, v2, v3, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    sget-object v2, Lcom/android/launcher3/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move/from16 v8, v23

    move-object/from16 v2, v24

    move-object/from16 v13, v25

    move/from16 v14, v26

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_5
    move-object/from16 v24, v2

    move-object/from16 v25, v13

    move/from16 v26, v14

    iget-object v2, v0, Lcom/android/launcher3/provider/ImportDataTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/LauncherProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v9}, Lcom/android/launcher3/provider/ImportDataTask;->importWorkspaceItems(JLandroid/util/LongSparseArray;)V

    iget-object v2, v0, Lcom/android/launcher3/provider/ImportDataTask;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/android/launcher3/provider/ImportDataTask;->mMaxGridSizeX:I

    iget v4, v0, Lcom/android/launcher3/provider/ImportDataTask;->mMaxGridSizeY:I

    iget v6, v0, Lcom/android/launcher3/provider/ImportDataTask;->mHotseatSize:I

    invoke-static {v2, v3, v4, v6}, Lcom/android/launcher3/model/GridSizeMigrationTask;->markForMigration(Landroid/content/Context;III)V

    iget-object v0, v0, Lcom/android/launcher3/provider/ImportDataTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "clear_empty_db_flag"

    invoke-static {v0, v2}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_6
    move-object/from16 v24, v2

    move-object/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v2, v24

    move-object/from16 v13, v25

    move/from16 v14, v26

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x1

    goto/16 :goto_0

    :goto_3
    const/4 v10, 0x0

    goto :goto_7

    .line 222
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    const/4 v15, 0x0

    goto/16 :goto_46

    .line 166
    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v1, v2

    goto/16 :goto_48

    .line 167
    :catch_3
    move-exception v0

    move-object/from16 v24, v2

    :goto_5
    move-object/from16 v25, v13

    move/from16 v26, v14

    :goto_6
    const/4 v10, 0x1

    :goto_7
    if-nez v10, :cond_7

    :try_start_a
    sget-boolean v0, Lcom/android/launcher3/model/GridSizeMigrationTask;->ENABLED:Z

    if-eqz v0, :cond_7

    invoke-static {v5}, Lcom/android/launcher3/model/GridSizeMigrationTask;->migrateGridIfNeeded(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v10, 0x1

    goto :goto_8

    .line 222
    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v24

    const/4 v15, 0x0

    goto/16 :goto_49

    .line 166
    :catch_4
    move-exception v0

    move-object v4, v0

    move-object/from16 v1, v24

    goto/16 :goto_48

    .line 167
    :cond_7
    :goto_8
    if-eqz v10, :cond_8

    const-string v0, "LoaderTask"

    const-string v2, "loadWorkspace: resetting launcher database"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "create_empty_db"

    invoke-static {v12, v0}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_8
    :try_start_b
    const-string v0, "LoaderTask"

    const-string v2, "loadWorkspace: loading default favorites"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "load_default_favorites"

    invoke-static {v12, v0}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v2
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_20
    .catchall {:try_start_b .. :try_end_b} :catchall_d

    :try_start_c
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0}, Lcom/android/launcher3/model/BgDataModel;->clear()V

    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mPackageInstaller:Lcom/android/launcher3/compat/PackageInstallerCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/PackageInstallerCompat;->updateAndGetActiveSessionCache()Ljava/util/HashMap;

    move-result-object v3

    new-instance v0, Lcom/android/launcher3/model/FirstScreenBroadcast;

    invoke-direct {v0, v3}, Lcom/android/launcher3/model/FirstScreenBroadcast;-><init>(Ljava/util/HashMap;)V

    iput-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mFirstScreenBroadcast:Lcom/android/launcher3/model/FirstScreenBroadcast;

    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/launcher3/LauncherModel;->loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v13, Lcom/android/launcher3/model/LoaderCursor;

    sget-object v7, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v0, 0x0

    move-object v6, v12

    const/4 v14, 0x1

    move-object/from16 v27, v11

    move-object v11, v0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v6, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-direct {v13, v0, v6}, Lcom/android/launcher3/model/LoaderCursor;-><init>(Landroid/database/Cursor;Lcom/android/launcher3/LauncherAppState;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    :try_start_d
    const-string v0, "appWidgetId"

    invoke-virtual {v13, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v0, "appWidgetProvider"

    invoke-virtual {v13, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v0, "spanX"

    invoke-virtual {v13, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v0, "spanY"

    invoke-virtual {v13, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v0, "rank"

    invoke-virtual {v13, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v0, "options"

    invoke-virtual {v13, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    iget-object v0, v13, Lcom/android/launcher3/model/LoaderCursor;->allUsers:Landroid/util/LongSparseArray;

    new-instance v14, Landroid/util/LongSparseArray;

    invoke-direct {v14}, Landroid/util/LongSparseArray;-><init>()V

    move-object/from16 v28, v12

    new-instance v12, Landroid/util/LongSparseArray;

    invoke-direct {v12}, Landroid/util/LongSparseArray;-><init>()V

    move-object/from16 v29, v5

    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v5}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v30, v5

    move-object/from16 v5, v16

    check-cast v5, Landroid/os/UserHandle;

    move/from16 v31, v10

    iget-object v10, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    move/from16 v32, v11

    invoke-virtual {v10, v5}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v10

    invoke-virtual {v0, v10, v11, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object/from16 v33, v0

    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/compat/UserManagerCompat;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v14, v10, v11, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/compat/UserManagerCompat;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_a

    move/from16 v34, v0

    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mShortcutManager:Lcom/android/launcher3/shortcuts/DeepShortcutManager;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    move/from16 v35, v15

    const/4 v15, 0x0

    :try_start_e
    invoke-virtual {v0, v15, v5}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForPinnedShortcuts(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mShortcutManager:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    iget-boolean v5, v5, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z

    if-eqz v5, :cond_9

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    invoke-static {v5}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromInfo(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v15

    invoke-interface {v4, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object/from16 v1, v24

    goto/16 :goto_44

    :cond_a
    move/from16 v34, v0

    move/from16 v35, v15

    :cond_b
    move/from16 v0, v34

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v12, v10, v11, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object/from16 v5, v30

    move/from16 v10, v31

    move/from16 v11, v32

    move-object/from16 v0, v33

    move/from16 v15, v35

    goto :goto_9

    :cond_c
    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v35, v15

    new-instance v5, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;

    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v5, v0}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    const/4 v10, 0x0

    :goto_c
    iget-boolean v0, v1, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-nez v0, :cond_3d

    invoke-virtual {v13}, Lcom/android/launcher3/model/LoaderCursor;->moveToNext()Z

    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    if-eqz v0, :cond_3d

    :try_start_10
    iget-object v0, v13, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    if-nez v0, :cond_d

    const-string v0, "User has been deleted"

    invoke-virtual {v13, v0}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    :goto_d
    move-object/from16 v49, v5

    move/from16 v36, v6

    move/from16 v37, v7

    move/from16 v45, v8

    move/from16 v46, v9

    move-object/from16 v38, v10

    move-object/from16 v47, v12

    move-object/from16 v48, v14

    move-object/from16 v11, v25

    move-object/from16 v6, v27

    move-object/from16 v9, v29

    move/from16 v10, v31

    move/from16 v44, v32

    move-object v8, v4

    goto/16 :goto_31

    :cond_d
    iget v0, v13, Lcom/android/launcher3/model/LoaderCursor;->itemType:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1e
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_d

    :pswitch_1
    :try_start_11
    iget v0, v13, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    const/4 v15, 0x5

    if-ne v0, v15, :cond_e

    const/4 v0, 0x1

    goto :goto_e

    :cond_e
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {v13, v6}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v15

    invoke-virtual {v13, v7}, Lcom/android/launcher3/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v11
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    move/from16 v36, v6

    :try_start_12
    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    move/from16 v37, v7

    const/4 v7, 0x1

    :try_start_13
    invoke-virtual {v13, v7}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    const/4 v7, 0x2

    invoke-virtual {v13, v7}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v7
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    const/16 v17, 0x1

    xor-int/lit8 v7, v7, 0x1

    if-nez v10, :cond_f

    move-object/from16 v38, v10

    :try_start_14
    iget-object v10, v1, Lcom/android/launcher3/model/LoaderTask;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    invoke-virtual {v10}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getAllProvidersMap()Ljava/util/HashMap;

    move-result-object v10
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    goto :goto_f

    :catch_5
    move-exception v0

    goto/16 :goto_1a

    :cond_f
    move-object/from16 v38, v10

    :goto_f
    move-object/from16 v39, v4

    :try_start_15
    new-instance v4, Lcom/android/launcher3/util/ComponentKey;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    move-object/from16 v40, v12

    :try_start_16
    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_9
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    move-object/from16 v41, v5

    :try_start_17
    iget-object v5, v13, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-direct {v4, v12, v5}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {v4}, Lcom/android/launcher3/model/LoaderTask;->isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v5
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    if-nez v26, :cond_10

    if-nez v0, :cond_10

    if-eqz v7, :cond_10

    if-nez v5, :cond_10

    :try_start_18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Deleting widget that isn\'t installed anymore: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    move-object/from16 v42, v10

    goto/16 :goto_15

    :cond_10
    if-eqz v5, :cond_12

    new-instance v5, Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v5, v15, v4}, Lcom/android/launcher3/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    iget v4, v13, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    and-int/lit8 v4, v4, -0x9

    and-int/lit8 v4, v4, -0x3

    if-nez v7, :cond_11

    if-eqz v16, :cond_11

    or-int/lit8 v4, v4, 0x4

    :cond_11
    iput v4, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    move-object/from16 v42, v10

    move-object/from16 v43, v11

    goto/16 :goto_14

    :catch_6
    move-exception v0

    move/from16 v45, v8

    move/from16 v46, v9

    move-object/from16 v38, v10

    goto/16 :goto_1b

    :cond_12
    :try_start_19
    const-string v4, "LoaderTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Widget restore pending id="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_8
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    move-object/from16 v42, v10

    move-object/from16 v43, v11

    :try_start_1a
    iget-wide v10, v13, Lcom/android/launcher3/model/LoaderCursor;->id:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " appWidgetId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " status ="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v13, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-direct {v5, v15, v6}, Lcom/android/launcher3/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    iget v4, v13, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    iput v4, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInstaller$SessionInfo;

    if-nez v4, :cond_13

    const/4 v4, 0x0

    goto :goto_10

    :cond_13
    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v4

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v4, v7

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_10
    const/16 v7, 0x8

    invoke-virtual {v13, v7}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v10

    if-nez v10, :cond_15

    if-eqz v4, :cond_14

    iget v6, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/2addr v6, v7

    iput v6, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    goto :goto_12

    :cond_14
    if-nez v26, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Unrestored widget removed: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_11
    invoke-virtual {v13, v0}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto :goto_15

    :cond_15
    :goto_12
    if-nez v4, :cond_16

    const/4 v4, 0x0

    goto :goto_13

    :cond_16
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_13
    iput v4, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->installProgress:I

    :goto_14
    const/16 v4, 0x20

    invoke-virtual {v5, v4}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v13}, Lcom/android/launcher3/model/LoaderCursor;->parseIntent()Landroid/content/Intent;

    move-result-object v4

    iput-object v4, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    :cond_17
    invoke-virtual {v13, v5}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/ItemInfo;)V

    invoke-virtual {v13, v8}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v4

    iput v4, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    invoke-virtual {v13, v9}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v4

    iput v4, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    iget-object v4, v13, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v4, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v13}, Lcom/android/launcher3/model/LoaderCursor;->isOnWorkspaceOrHotseat()Z

    move-result v4

    if-nez v4, :cond_18

    const-string v0, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    goto :goto_11

    :goto_15
    move/from16 v6, v36

    move/from16 v7, v37

    move-object/from16 v4, v39

    move-object/from16 v12, v40

    move-object/from16 v5, v41

    move-object/from16 v10, v42

    goto/16 :goto_c

    :cond_18
    if-nez v0, :cond_1a

    iget-object v0, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, v43

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    iget v4, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    iget v6, v13, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eq v4, v6, :cond_1a

    :cond_19
    invoke-virtual {v13}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v4

    const-string v6, "appWidgetProvider"

    invoke-virtual {v4, v6, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    const-string v4, "restored"

    iget v6, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    :cond_1a
    iget v0, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    if-eqz v0, :cond_1b

    iget-object v0, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/android/launcher3/model/PackageItemInfo;

    invoke-direct {v4, v0}, Lcom/android/launcher3/model/PackageItemInfo;-><init>(Ljava/lang/String;)V

    iput-object v4, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/PackageItemInfo;

    iget-object v0, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/PackageItemInfo;

    iget-object v4, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    iput-object v4, v0, Lcom/android/launcher3/model/PackageItemInfo;->user:Landroid/os/UserHandle;

    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/IconCache;

    iget-object v4, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/PackageItemInfo;

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Lcom/android/launcher3/IconCache;->getTitleAndIconForApp(Lcom/android/launcher3/model/PackageItemInfo;Z)V

    :cond_1b
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v13, v5, v0}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_7
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    move/from16 v45, v8

    move/from16 v46, v9

    move-object/from16 v48, v14

    move-object/from16 v11, v25

    move-object/from16 v6, v27

    move-object/from16 v9, v29

    move/from16 v10, v31

    move/from16 v44, v32

    move-object/from16 v8, v39

    move-object/from16 v47, v40

    move-object/from16 v49, v41

    move-object/from16 v38, v42

    goto/16 :goto_31

    :catch_7
    move-exception v0

    goto :goto_16

    :catch_8
    move-exception v0

    move-object/from16 v42, v10

    :goto_16
    move/from16 v45, v8

    move/from16 v46, v9

    move-object/from16 v48, v14

    move-object/from16 v11, v25

    move-object/from16 v6, v27

    move-object/from16 v9, v29

    move/from16 v10, v31

    move/from16 v44, v32

    move-object/from16 v8, v39

    move-object/from16 v47, v40

    move-object/from16 v49, v41

    goto :goto_17

    :catch_9
    move-exception v0

    move-object/from16 v42, v10

    move-object/from16 v49, v5

    move/from16 v45, v8

    move/from16 v46, v9

    move-object/from16 v48, v14

    move-object/from16 v11, v25

    move-object/from16 v6, v27

    move-object/from16 v9, v29

    move/from16 v10, v31

    move/from16 v44, v32

    move-object/from16 v8, v39

    move-object/from16 v47, v40

    goto :goto_17

    :catch_a
    move-exception v0

    move-object/from16 v42, v10

    move-object/from16 v49, v5

    move/from16 v45, v8

    move/from16 v46, v9

    move-object/from16 v47, v12

    move-object/from16 v48, v14

    move-object/from16 v11, v25

    move-object/from16 v6, v27

    move-object/from16 v9, v29

    move/from16 v10, v31

    move/from16 v44, v32

    move-object/from16 v8, v39

    :goto_17
    move-object/from16 v38, v42

    goto/16 :goto_38

    :catch_b
    move-exception v0

    goto :goto_19

    :catch_c
    move-exception v0

    goto :goto_18

    :catch_d
    move-exception v0

    move/from16 v36, v6

    :goto_18
    move/from16 v37, v7

    :goto_19
    move-object/from16 v38, v10

    :goto_1a
    move-object/from16 v49, v5

    move/from16 v45, v8

    move/from16 v46, v9

    goto/16 :goto_37

    :pswitch_2
    move-object/from16 v39, v4

    move-object/from16 v41, v5

    move/from16 v36, v6

    move/from16 v37, v7

    move-object/from16 v38, v10

    move-object/from16 v40, v12

    :try_start_1b
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-wide v4, v13, Lcom/android/launcher3/model/LoaderCursor;->id:J

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/model/BgDataModel;->findOrMakeFolder(J)Lcom/android/launcher3/FolderInfo;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/ItemInfo;)V

    iget v4, v13, Lcom/android/launcher3/model/LoaderCursor;->titleIndex:I

    invoke-virtual {v13, v4}, Lcom/android/launcher3/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    const/4 v4, 0x1

    iput v4, v0, Lcom/android/launcher3/FolderInfo;->spanX:I

    iput v4, v0, Lcom/android/launcher3/FolderInfo;->spanY:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_e
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    move/from16 v4, v32

    :try_start_1c
    invoke-virtual {v13, v4}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/FolderInfo;->options:I

    invoke-virtual {v13}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V

    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v13, v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V

    goto :goto_1d

    :catch_e
    move-exception v0

    move/from16 v45, v8

    move/from16 v46, v9

    :goto_1b
    move-object/from16 v48, v14

    move-object/from16 v11, v25

    move-object/from16 v6, v27

    move-object/from16 v9, v29

    move/from16 v10, v31

    move/from16 v44, v32

    goto/16 :goto_36

    :pswitch_3
    move-object/from16 v39, v4

    move-object/from16 v41, v5

    move/from16 v36, v6

    move/from16 v37, v7

    move-object/from16 v38, v10

    move-object/from16 v40, v12

    move/from16 v4, v32

    invoke-virtual {v13}, Lcom/android/launcher3/model/LoaderCursor;->parseIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1c

    const-string v0, "Invalid or null intent"

    :goto_1c
    invoke-virtual {v13, v0}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    :goto_1d
    move/from16 v44, v4

    move/from16 v45, v8

    move/from16 v46, v9

    move-object/from16 v48, v14

    move-object/from16 v11, v25

    :goto_1e
    move-object/from16 v6, v27

    :goto_1f
    move-object/from16 v9, v29

    move/from16 v10, v31

    move-object/from16 v8, v39

    move-object/from16 v47, v40

    move-object/from16 v49, v41

    goto/16 :goto_31

    :cond_1c
    iget-wide v5, v13, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    invoke-virtual {v14, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1d

    const/16 v5, 0x8

    goto :goto_20

    :cond_1d
    const/4 v5, 0x0

    :goto_20
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-nez v6, :cond_1e

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    goto :goto_21

    :cond_1e
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    :goto_21
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    iget-object v11, v13, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v10, v11}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_20

    iget v10, v13, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1f

    const-string v0, "Legacy shortcuts are only allowed for default user"

    goto :goto_1c

    :cond_1f
    iget v10, v13, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v10, :cond_20

    const-string v0, "Restore from managed profile not supported"

    goto :goto_1c

    :cond_20
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_21

    iget v10, v13, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_21

    const-string v0, "Only legacy shortcuts can have null package"

    goto :goto_1c

    :cond_21
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_23

    iget-object v10, v1, Lcom/android/launcher3/model/LoaderTask;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    iget-object v11, v13, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v10, v7, v11}, Lcom/android/launcher3/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v10
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1d
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    if-eqz v10, :cond_22

    goto :goto_22

    :cond_22
    const/4 v10, 0x0

    goto :goto_23

    :cond_23
    :goto_22
    const/4 v10, 0x1

    :goto_23
    if-eqz v6, :cond_27

    if-eqz v10, :cond_27

    :try_start_1d
    iget-object v11, v1, Lcom/android/launcher3/model/LoaderTask;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    iget-object v12, v13, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v11, v6, v12}, Lcom/android/launcher3/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v11
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_10
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    if-eqz v11, :cond_24

    :try_start_1e
    invoke-virtual {v13}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1d
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    goto :goto_25

    :cond_24
    const/4 v0, 0x2

    :try_start_1f
    invoke-virtual {v13, v0}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, v13, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_10
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    move-object/from16 v11, v25

    :try_start_20
    invoke-virtual {v11, v7, v0}, Lcom/android/launcher3/util/PackageManagerHelper;->getAppLaunchIntent(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_25

    const/4 v6, 0x0

    iput v6, v13, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-virtual {v13}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v12

    const-string v15, "intent"
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_f
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    move/from16 v44, v4

    :try_start_21
    invoke-virtual {v0, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v15, v4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    goto :goto_26

    :cond_25
    move/from16 v44, v4

    const-string v0, "Unable to find a launch target"

    :goto_24
    invoke-virtual {v13, v0}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    move/from16 v45, v8

    move/from16 v46, v9

    move-object/from16 v48, v14

    goto/16 :goto_1e

    :catch_f
    move-exception v0

    move/from16 v44, v4

    goto/16 :goto_33

    :cond_26
    move/from16 v44, v4

    move-object/from16 v11, v25

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Invalid component removed: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :catch_10
    move-exception v0

    move/from16 v44, v4

    move-object/from16 v11, v25

    goto/16 :goto_33

    :cond_27
    :goto_25
    move/from16 v44, v4

    move-object/from16 v11, v25

    :goto_26
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1c
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    if-nez v4, :cond_2c

    if-nez v10, :cond_2c

    :try_start_22
    iget v4, v13, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_11
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    if-eqz v4, :cond_29

    :try_start_23
    const-string v4, "LoaderTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "package not yet restored: "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x8

    invoke-virtual {v13, v4}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v6

    if-nez v6, :cond_2c

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    iget v4, v13, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    const/16 v6, 0x8

    or-int/2addr v4, v6

    iput v4, v13, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-virtual {v13}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    goto :goto_28

    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Unrestored app removed: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_1c
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    goto :goto_24

    :cond_29
    :try_start_24
    iget-object v4, v13, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v11, v7, v4}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppOnSdcard(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_2a

    or-int/lit8 v5, v5, 0x2

    move-object/from16 v6, v27

    :goto_27
    const/4 v4, 0x1

    goto :goto_29

    :cond_2a
    if-nez v35, :cond_2b

    const-string v4, "LoaderTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "Missing pkg, will check later: "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v13, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_11
    .catchall {:try_start_24 .. :try_end_24} :catchall_9

    move-object/from16 v6, v27

    :try_start_25
    invoke-virtual {v6, v4, v7}, Lcom/android/launcher3/util/MultiHashMap;->addToList(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_27

    :cond_2b
    move-object/from16 v6, v27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Invalid package removed: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    move/from16 v45, v8

    move/from16 v46, v9

    move-object/from16 v48, v14

    goto/16 :goto_1f

    :catch_11
    move-exception v0

    move-object/from16 v6, v27

    goto/16 :goto_32

    :cond_2c
    :goto_28
    move-object/from16 v6, v27

    const/4 v4, 0x0

    :goto_29
    iget v12, v13, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    and-int/lit8 v12, v12, 0x10

    if-eqz v12, :cond_2d

    const/4 v10, 0x0

    :cond_2d
    if-eqz v10, :cond_2e

    invoke-virtual {v13}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V

    :cond_2e
    invoke-virtual {v13}, Lcom/android/launcher3/model/LoaderCursor;->isOnWorkspaceOrHotseat()Z

    move-result v10
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_1b
    .catchall {:try_start_25 .. :try_end_25} :catchall_9

    if-nez v10, :cond_2f

    move/from16 v10, v31

    :try_start_26
    invoke-virtual {v13, v10}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v12
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_13
    .catchall {:try_start_26 .. :try_end_26} :catchall_9

    move/from16 v45, v8

    move-object/from16 v15, v41

    const/4 v8, 0x0

    :try_start_27
    invoke-virtual {v15, v8, v12}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->isItemInPreview(II)Z

    move-result v12

    if-nez v12, :cond_30

    const/4 v8, 0x1

    goto :goto_2b

    :catch_12
    move-exception v0

    move/from16 v46, v9

    :goto_2a
    move-object/from16 v48, v14

    move-object/from16 v49, v15

    move-object/from16 v9, v29

    move-object/from16 v8, v39

    move-object/from16 v47, v40

    goto/16 :goto_38

    :catch_13
    move-exception v0

    move/from16 v45, v8

    move/from16 v46, v9

    move-object/from16 v48, v14

    move-object/from16 v9, v29

    goto/16 :goto_36

    :cond_2f
    move/from16 v45, v8

    move/from16 v10, v31

    move-object/from16 v15, v41

    :cond_30
    const/4 v8, 0x0

    :goto_2b
    iget v12, v13, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v12, :cond_31

    invoke-virtual {v13, v0}, Lcom/android/launcher3/model/LoaderCursor;->getRestoredItemInfo(Landroid/content/Intent;)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v4

    :goto_2c
    move/from16 v46, v9

    move-object/from16 v48, v14

    move-object/from16 v49, v15

    move-object/from16 v9, v29

    move-object/from16 v8, v39

    move-object/from16 v47, v40

    goto/16 :goto_2f

    :cond_31
    iget v12, v13, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    if-nez v12, :cond_32

    invoke-virtual {v13, v0, v4, v8}, Lcom/android/launcher3/model/LoaderCursor;->getAppShortcutInfo(Landroid/content/Intent;ZZ)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v4

    goto :goto_2c

    :cond_32
    iget v4, v13, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    const/4 v8, 0x6

    if-ne v4, v8, :cond_36

    iget-object v4, v13, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-static {v0, v4}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v4
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_12
    .catchall {:try_start_27 .. :try_end_27} :catchall_9

    move/from16 v46, v9

    :try_start_28
    iget-wide v8, v13, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_19
    .catchall {:try_start_28 .. :try_end_28} :catchall_9

    move-object/from16 v12, v40

    :try_start_29
    invoke-virtual {v12, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_18
    .catchall {:try_start_29 .. :try_end_29} :catchall_9

    if-eqz v8, :cond_35

    move-object/from16 v8, v39

    :try_start_2a
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    if-nez v0, :cond_33

    const-string v0, "Pinned shortcut not found"

    invoke-virtual {v13, v0}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    move-object/from16 v47, v12

    move-object/from16 v48, v14

    move-object/from16 v49, v15

    move-object/from16 v9, v29

    goto/16 :goto_31

    :cond_33
    new-instance v4, Lcom/android/launcher3/ShortcutInfo;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_17
    .catchall {:try_start_2a .. :try_end_2a} :catchall_9

    move-object/from16 v9, v29

    :try_start_2b
    invoke-direct {v4, v0, v9}, Lcom/android/launcher3/ShortcutInfo;-><init>(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_16
    .catchall {:try_start_2b .. :try_end_2b} :catchall_9

    move-object/from16 v47, v12

    :try_start_2c
    new-instance v12, Lcom/android/launcher3/model/LoaderTask$1;

    invoke-direct {v12, v1, v13, v4}, Lcom/android/launcher3/model/LoaderTask$1;-><init>(Lcom/android/launcher3/model/LoaderTask;Lcom/android/launcher3/model/LoaderCursor;Lcom/android/launcher3/ShortcutInfo;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_15
    .catchall {:try_start_2c .. :try_end_2c} :catchall_9

    move-object/from16 v48, v14

    :try_start_2d
    invoke-static {v9}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object v14
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_14
    .catchall {:try_start_2d .. :try_end_2d} :catchall_9

    move-object/from16 v49, v15

    const/4 v15, 0x1

    :try_start_2e
    invoke-virtual {v14, v0, v15, v12}, Lcom/android/launcher3/graphics/LauncherIcons;->createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;ZLcom/android/launcher3/util/Provider;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/android/launcher3/graphics/BitmapInfo;->applyTo(Lcom/android/launcher3/ItemInfoWithIcon;)V

    invoke-virtual {v14}, Lcom/android/launcher3/graphics/LauncherIcons;->recycle()V

    iget-object v0, v0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    iget-object v12, v4, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v11, v0, v12}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget v0, v4, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    const/4 v12, 0x4

    or-int/2addr v0, v12

    iput v0, v4, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    :cond_34
    iget-object v0, v4, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    goto/16 :goto_2f

    :catch_14
    move-exception v0

    goto :goto_2e

    :catch_15
    move-exception v0

    goto :goto_2d

    :catch_16
    move-exception v0

    move-object/from16 v47, v12

    :goto_2d
    move-object/from16 v48, v14

    :goto_2e
    move-object/from16 v49, v15

    goto/16 :goto_38

    :catch_17
    move-exception v0

    move-object/from16 v47, v12

    move-object/from16 v48, v14

    move-object/from16 v49, v15

    move-object/from16 v9, v29

    goto/16 :goto_38

    :cond_35
    move-object/from16 v47, v12

    move-object/from16 v48, v14

    move-object/from16 v49, v15

    move-object/from16 v9, v29

    move-object/from16 v8, v39

    invoke-virtual {v13}, Lcom/android/launcher3/model/LoaderCursor;->loadSimpleShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v4

    iget v12, v4, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    const/16 v14, 0x20

    or-int/2addr v12, v14

    iput v12, v4, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    goto :goto_2f

    :catch_18
    move-exception v0

    move-object/from16 v47, v12

    move-object/from16 v48, v14

    move-object/from16 v49, v15

    move-object/from16 v9, v29

    move-object/from16 v8, v39

    goto/16 :goto_38

    :catch_19
    move-exception v0

    goto/16 :goto_2a

    :cond_36
    move/from16 v46, v9

    move-object/from16 v48, v14

    move-object/from16 v49, v15

    move-object/from16 v9, v29

    move-object/from16 v8, v39

    move-object/from16 v47, v40

    invoke-virtual {v13}, Lcom/android/launcher3/model/LoaderCursor;->loadSimpleShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v4

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_37

    iget-object v12, v13, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v11, v7, v12}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v12

    if-eqz v12, :cond_37

    or-int/lit8 v5, v5, 0x4

    :cond_37
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_38

    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v12

    if-eqz v12, :cond_38

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v14, "android.intent.action.MAIN"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_38

    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v12

    const-string v14, "android.intent.category.LAUNCHER"

    invoke-interface {v12, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_38

    const/high16 v12, 0x10200000

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_38
    :goto_2f
    if-eqz v4, :cond_3c

    invoke-virtual {v13, v4}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/ItemInfo;)V

    iput-object v0, v4, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v13, v10}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v12

    iput v12, v4, Lcom/android/launcher3/ShortcutInfo;->rank:I

    const/4 v12, 0x1

    iput v12, v4, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    iput v12, v4, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    iget v12, v4, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    or-int/2addr v5, v12

    iput v5, v4, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    if-eqz v26, :cond_39

    invoke-static {v9, v0}, Lcom/android/launcher3/Utilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_39

    iget v0, v4, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    const/4 v5, 0x1

    or-int/2addr v0, v5

    iput v0, v4, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    :cond_39
    iget v0, v13, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v0, :cond_3b

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    if-nez v0, :cond_3a

    iget v0, v4, Lcom/android/launcher3/ShortcutInfo;->status:I

    and-int/lit8 v0, v0, -0x5

    iput v0, v4, Lcom/android/launcher3/ShortcutInfo;->status:I

    goto :goto_30

    :cond_3a
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v0

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Lcom/android/launcher3/ShortcutInfo;->setInstallProgress(I)V

    :cond_3b
    :goto_30
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v13, v4, v0}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V

    :goto_31
    move-object/from16 v27, v6

    move-object v4, v8

    move-object/from16 v29, v9

    move/from16 v31, v10

    move-object/from16 v25, v11

    move/from16 v6, v36

    move/from16 v7, v37

    move-object/from16 v10, v38

    move/from16 v32, v44

    move/from16 v8, v45

    move/from16 v9, v46

    move-object/from16 v12, v47

    move-object/from16 v14, v48

    move-object/from16 v5, v49

    goto/16 :goto_c

    :catch_1a
    move-exception v0

    goto :goto_38

    :cond_3c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v4, "Unexpected null ShortcutInfo"

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_1a
    .catchall {:try_start_2e .. :try_end_2e} :catchall_9

    :catch_1b
    move-exception v0

    :goto_32
    move/from16 v45, v8

    move/from16 v46, v9

    move-object/from16 v48, v14

    goto :goto_35

    :catch_1c
    move-exception v0

    :goto_33
    move/from16 v45, v8

    move/from16 v46, v9

    move-object/from16 v48, v14

    goto :goto_34

    :catch_1d
    move-exception v0

    move/from16 v44, v4

    move/from16 v45, v8

    move/from16 v46, v9

    move-object/from16 v48, v14

    move-object/from16 v11, v25

    :goto_34
    move-object/from16 v6, v27

    :goto_35
    move-object/from16 v9, v29

    move/from16 v10, v31

    :goto_36
    move-object/from16 v8, v39

    move-object/from16 v47, v40

    move-object/from16 v49, v41

    goto :goto_38

    :catch_1e
    move-exception v0

    move-object/from16 v49, v5

    move/from16 v36, v6

    move/from16 v37, v7

    move/from16 v45, v8

    move/from16 v46, v9

    move-object/from16 v38, v10

    :goto_37
    move-object/from16 v47, v12

    move-object/from16 v48, v14

    move-object/from16 v11, v25

    move-object/from16 v6, v27

    move-object/from16 v9, v29

    move/from16 v10, v31

    move/from16 v44, v32

    move-object v8, v4

    :goto_38
    :try_start_2f
    const-string v4, "LoaderTask"

    const-string v5, "Desktop items loading interrupted"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_9

    goto :goto_31

    :cond_3d
    move-object v8, v4

    move-object/from16 v6, v27

    move-object/from16 v9, v29

    :try_start_30
    invoke-static {v13}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    iget-boolean v0, v1, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-eqz v0, :cond_3f

    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0}, Lcom/android/launcher3/model/BgDataModel;->clear()V

    :cond_3e
    :goto_39
    monitor-exit v2

    goto/16 :goto_41

    :cond_3f
    iget-object v0, v13, Lcom/android/launcher3/model/LoaderCursor;->itemsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_40

    iget-object v0, v13, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id"

    iget-object v5, v13, Lcom/android/launcher3/model/LoaderCursor;->itemsToRemove:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_a

    const/4 v5, 0x0

    :try_start_31
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_3

    const/4 v0, 0x1

    goto :goto_3b

    :catchall_3
    move-exception v0

    move-object v15, v5

    :goto_3a
    move-object/from16 v1, v24

    goto/16 :goto_45

    :cond_40
    const/4 v0, 0x0

    :goto_3b
    if-eqz v0, :cond_42

    :try_start_32
    const-string v0, "delete_empty_folders"

    move-object/from16 v3, v28

    invoke-static {v3, v0}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "value"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v7, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v7, v7, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    iget-object v10, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v10, v10, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v10, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v7, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v7, v7, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v7, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    iget-object v7, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v7, v7, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v7, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    goto :goto_3c

    :cond_41
    const-string v0, "remove_ghost_widgets"

    invoke-static {v3, v0}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    :cond_42
    invoke-static {v9}, Lcom/android/launcher3/InstallShortcutReceiver;->getPendingShortcuts(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_43
    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/shortcuts/ShortcutKey;

    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->pinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/MutableInt;

    if-eqz v5, :cond_44

    iget v5, v5, Landroid/util/MutableInt;->value:I

    if-nez v5, :cond_43

    :cond_44
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mShortcutManager:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->unpinShortcut(Lcom/android/launcher3/shortcuts/ShortcutKey;)V

    goto :goto_3d

    :cond_45
    new-instance v0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;

    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v3, v3, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v0, v3}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/FolderInfo;

    iget-object v5, v4, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/launcher3/folder/Folder;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0, v4}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->setFolderInfo(Lcom/android/launcher3/FolderInfo;)V

    iget-object v4, v4, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_46
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/ShortcutInfo;

    iget-boolean v8, v7, Lcom/android/launcher3/ShortcutInfo;->usingLowResIcon:Z

    if-eqz v8, :cond_47

    iget v8, v7, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    if-nez v8, :cond_47

    iget v8, v7, Lcom/android/launcher3/ShortcutInfo;->rank:I

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v8}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->isItemInPreview(II)Z

    move-result v8

    if-eqz v8, :cond_47

    iget-object v8, v1, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v8, v7, v10}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Z)V

    add-int/lit8 v5, v5, 0x1

    :cond_47
    const/4 v7, 0x4

    if-lt v5, v7, :cond_46

    goto :goto_3e

    :cond_48
    const/4 v7, 0x4

    goto :goto_3e

    :cond_49
    iget-object v0, v13, Lcom/android/launcher3/model/LoaderCursor;->restoredRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4a

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "restored"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, v13, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id"

    iget-object v7, v13, Lcom/android/launcher3/model/LoaderCursor;->restoredRows:Ljava/util/ArrayList;

    invoke-static {v5, v7}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_a

    const/4 v7, 0x0

    :try_start_33
    invoke-virtual {v3, v4, v0, v5, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_4

    goto :goto_3f

    :catchall_4
    move-exception v0

    move-object v15, v7

    goto/16 :goto_3a

    :cond_4a
    :goto_3f
    if-nez v35, :cond_4b

    :try_start_34
    invoke-virtual {v6}, Lcom/android/launcher3/util/MultiHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    new-instance v0, Lcom/android/launcher3/model/SdCardAvailableReceiver;

    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-direct {v0, v3, v6}, Lcom/android/launcher3/model/SdCardAvailableReceiver;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/MultiHashMap;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_a

    const/4 v5, 0x0

    :try_start_35
    invoke-virtual {v9, v0, v3, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_3

    :cond_4b
    :try_start_36
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4c
    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/ItemInfo;

    iget-wide v5, v4, Lcom/android/launcher3/ItemInfo;->screenId:J

    iget-wide v7, v4, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v4, v7, v10

    if-nez v4, :cond_4c

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_4d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-static {v9, v0}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_a

    goto/16 :goto_39

    .line 170
    :goto_41
    :try_start_37
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 171
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {v0}, Lcom/android/launcher3/model/LoaderResults;->bindWorkspace()V

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v3
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_20
    .catchall {:try_start_37 .. :try_end_37} :catchall_d

    :try_start_38
    iget-object v4, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v4, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_7

    :try_start_39
    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4e

    const-wide/16 v3, -0x1

    goto :goto_42

    :cond_4e
    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_42
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4, v2, v0, v5}, Lcom/android/launcher3/model/LoaderResults;->filterCurrentWorkspaceItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mFirstScreenBroadcast:Lcom/android/launcher3/model/FirstScreenBroadcast;

    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v3, v3, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/model/FirstScreenBroadcast;->sendBroadcasts(Landroid/content/Context;Ljava/util/List;)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->waitForIdle()V

    .line 181
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 184
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->loadAllApps()V

    .line 187
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 189
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {v0}, Lcom/android/launcher3/model/LoaderResults;->bindAllApps()V

    .line 191
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 192
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->updateIconCache()V

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->waitForIdle()V

    .line 198
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 201
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->loadDeepShortcuts()V

    .line 204
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 205
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {v0}, Lcom/android/launcher3/model/LoaderResults;->bindDeepShortcuts()V

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->waitForIdle()V

    .line 211
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 214
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_20
    .catchall {:try_start_39 .. :try_end_39} :catchall_d

    const/4 v15, 0x0

    :try_start_3a
    invoke-virtual {v0, v2, v15}, Lcom/android/launcher3/model/WidgetsModel;->update(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)V

    .line 217
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 218
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {v0}, Lcom/android/launcher3/model/LoaderResults;->bindWidgets()V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_20
    .catchall {:try_start_3a .. :try_end_3a} :catchall_6

    .line 221
    move-object/from16 v1, v24

    :try_start_3b
    iget-object v0, v1, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_1f
    .catchall {:try_start_3b .. :try_end_3b} :catchall_b

    :try_start_3c
    iget-object v0, v1, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/android/launcher3/LauncherModel;->access$002(Lcom/android/launcher3/LauncherModel;Z)Z

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_5

    .line 222
    :try_start_3d
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->close()V
    :try_end_3d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3d .. :try_end_3d} :catch_23

    return-void

    .line 221
    :catchall_5
    move-exception v0

    :try_start_3e
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_5

    :try_start_3f
    throw v0
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_1f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_b

    .line 222
    :catchall_6
    move-exception v0

    move-object/from16 v1, v24

    goto :goto_46

    .line 175
    :catchall_7
    move-exception v0

    move-object/from16 v1, v24

    const/4 v15, 0x0

    :goto_43
    :try_start_40
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_8

    :try_start_41
    throw v0
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_1f
    .catchall {:try_start_41 .. :try_end_41} :catchall_b

    :catchall_8
    move-exception v0

    goto :goto_43

    .line 167
    :catchall_9
    move-exception v0

    move-object/from16 v1, v24

    const/4 v15, 0x0

    :goto_44
    :try_start_42
    invoke-static {v13}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_a
    move-exception v0

    move-object/from16 v1, v24

    const/4 v15, 0x0

    :goto_45
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_c

    :try_start_43
    throw v0
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_1f
    .catchall {:try_start_43 .. :try_end_43} :catchall_b

    .line 222
    :catchall_b
    move-exception v0

    goto :goto_46

    .line 166
    :catch_1f
    move-exception v0

    goto :goto_47

    .line 167
    :catchall_c
    move-exception v0

    goto :goto_45

    .line 222
    :catchall_d
    move-exception v0

    move-object/from16 v1, v24

    goto/16 :goto_4

    .line 166
    :catch_20
    move-exception v0

    move-object/from16 v1, v24

    goto :goto_47

    .line 222
    :catchall_e
    move-exception v0

    move-object v1, v2

    move-object v15, v4

    :goto_46
    move-object v2, v0

    goto :goto_49

    .line 166
    :catch_21
    move-exception v0

    move-object v1, v2

    :goto_47
    move-object v4, v0

    :goto_48
    :try_start_44
    throw v4
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_f

    .line 222
    :catchall_f
    move-exception v0

    move-object v2, v0

    move-object v15, v4

    :goto_49
    if-eqz v15, :cond_4f

    :try_start_45
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->close()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_22
    .catch Ljava/util/concurrent/CancellationException; {:try_start_45 .. :try_end_45} :catch_23

    goto :goto_4a

    :catch_22
    move-exception v0

    move-object v1, v0

    :try_start_46
    invoke-virtual {v15, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4a

    :cond_4f
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->close()V

    :goto_4a
    throw v2
    :try_end_46
    .catch Ljava/util/concurrent/CancellationException; {:try_start_46 .. :try_end_46} :catch_23

    .line 225
    :catch_23
    move-exception v0

    .line 224
    return-void

    .line 163
    :catchall_10
    move-exception v0

    :try_start_47
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_10

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public final declared-synchronized stopLocked()V
    .locals 1

    monitor-enter p0

    .line 230
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    .line 231
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized waitForIdle()V
    .locals 4

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    new-instance v1, Lcom/android/launcher3/util/LooperIdleLock;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/util/LooperIdleLock;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    iget-object v0, v0, Lcom/android/launcher3/model/LoaderResults;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperIdleLock;->queueIdle()Z

    .line 132
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-nez v0, :cond_1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/LooperIdleLock;->awaitLocked(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 133
    :cond_1
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
