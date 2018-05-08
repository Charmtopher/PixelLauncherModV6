.class Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;
.super Landroid/content/pm/PackageInstaller$SessionCallback;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;


# direct methods
.method constructor <init>(Lcom/android/launcher3/compat/PackageInstallerCompatVL;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;

    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionCallback;-><init>()V

    return-void
.end method

.method private pushSessionDisplayToLauncher(I)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 5

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;

    iget-object v1, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;

    iget-object v1, v1, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->access$000(Lcom/android/launcher3/compat/PackageInstallerCompatVL;Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;

    iget-object v1, v1, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    iget-object p1, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->addSessionInfoToCache(Landroid/content/pm/PackageInstaller$SessionInfo;Landroid/os/UserHandle;)V

    .line 144
    sget-object p1, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/LauncherAppState;

    .line 145
    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/launcher3/model/CacheDataUpdatedTask;

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Lcom/android/launcher3/model/CacheDataUpdatedTask;-><init>(ILandroid/os/UserHandle;Ljava/util/HashSet;)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 148
    :cond_0
    return-object v0

    .line 150
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public onActiveChanged(IZ)V
    .locals 0

    .line 132
    return-void
.end method

.method public onBadgingChanged(I)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->pushSessionDisplayToLauncher(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 137
    return-void
.end method

.method public onCreated(I)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->pushSessionDisplayToLauncher(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 107
    return-void
.end method

.method public onFinished(IZ)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;

    iget-object v0, v0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    iget-object v1, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;

    iget-object v1, v1, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 116
    if-eqz v0, :cond_1

    .line 117
    iget-object p1, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;

    .line 118
    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    .line 117
    :goto_0
    invoke-static {p2, v0}, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->fromState(ILjava/lang/String;)Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->sendUpdate(Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V

    .line 121
    :cond_1
    return-void
.end method

.method public onProgressChanged(IF)V
    .locals 1

    .line 125
    iget-object p2, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;

    iget-object v0, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;

    iget-object v0, v0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->access$000(Lcom/android/launcher3/compat/PackageInstallerCompatVL;Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p1

    .line 126
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 127
    iget-object p2, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;

    invoke-static {p1}, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->fromInstallingState(Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->sendUpdate(Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V

    .line 129
    :cond_0
    return-void
.end method
