.class public Lcom/android/launcher3/compat/PackageInstallerCompatVL;
.super Lcom/android/launcher3/compat/PackageInstallerCompat;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field final mActiveSessions:Landroid/util/SparseArray;

.field private final mAppContext:Landroid/content/Context;

.field private final mCache:Lcom/android/launcher3/IconCache;

.field private final mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

.field final mInstaller:Landroid/content/pm/PackageInstaller;

.field private final mSessionVerifiedMap:Ljava/util/HashMap;

.field private final mWorker:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/android/launcher3/compat/PackageInstallerCompat;-><init>()V

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mActiveSessions:Landroid/util/SparseArray;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mSessionVerifiedMap:Ljava/util/HashMap;

    .line 95
    new-instance v0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;-><init>(Lcom/android/launcher3/compat/PackageInstallerCompatVL;)V

    iput-object v0, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mAppContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    .line 56
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    iput-object p1, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mCache:Lcom/android/launcher3/IconCache;

    .line 57
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mWorker:Landroid/os/Handler;

    .line 58
    iget-object p1, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    iget-object v0, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    iget-object v1, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mWorker:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/compat/PackageInstallerCompatVL;Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->verify(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p0

    return-object p0
.end method

.method private verify(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 6

    .line 155
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 156
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 157
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 160
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    .line 161
    iget-object v2, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mSessionVerifiedMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 162
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mSessionVerifiedMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 163
    iget-object v3, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v3

    .line 164
    nop

    .line 165
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 164
    const/4 v5, 0x1

    invoke-virtual {v3, v1, v5, v4}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 166
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mSessionVerifiedMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v2, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mSessionVerifiedMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object p1

    :cond_3
    return-object v0

    .line 168
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 158
    :cond_4
    :goto_1
    return-object v0
.end method


# virtual methods
.method addSessionInfoToCache(Landroid/content/pm/PackageInstaller$SessionInfo;Landroid/os/UserHandle;)V
    .locals 3

    .line 76
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 79
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object p1

    .line 78
    invoke-virtual {v1, v0, p2, v2, p1}, Lcom/android/launcher3/IconCache;->cachePackageInstallInfo(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 81
    :cond_0
    return-void
.end method

.method public getAllVerifiedSessions()Ljava/util/List;
    .locals 3

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 175
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 176
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-direct {p0, v2}, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->verify(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 178
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 181
    :cond_1
    return-object v0
.end method

.method public onStop()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    iget-object v1, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller;->unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    .line 86
    return-void
.end method

.method sendUpdate(Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V
    .locals 2

    .line 89
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/LauncherAppState;

    .line 90
    if-eqz v0, :cond_0

    .line 91
    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    new-instance v1, Lcom/android/launcher3/model/PackageInstallStateChangedTask;

    invoke-direct {v1, p1}, Lcom/android/launcher3/model/PackageInstallStateChangedTask;-><init>(Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 93
    :cond_0
    return-void
.end method

.method public updateAndGetActiveSessionCache()Ljava/util/HashMap;
    .locals 6

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 65
    invoke-virtual {p0}, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->getAllVerifiedSessions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 66
    invoke-virtual {p0, v3, v1}, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->addSessionInfoToCache(Landroid/content/pm/PackageInstaller$SessionInfo;Landroid/os/UserHandle;)V

    .line 67
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 68
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v4, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v5

    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    :cond_0
    goto :goto_0

    .line 72
    :cond_1
    return-object v0
.end method
