.class public Lcom/android/launcher3/SessionCommitReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static applyDefaultUserPrefs(Landroid/content/Context;)V
    .locals 2

    .line 93
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    if-nez v0, :cond_0

    .line 94
    return-void

    .line 96
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_add_icon_to_home"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 105
    :cond_1
    const-string v1, "pref_add_icon_to_home_initialized"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    new-instance v0, Lcom/android/launcher3/SessionCommitReceiver$PrefInitTask;

    invoke-direct {v0, p0}, Lcom/android/launcher3/SessionCommitReceiver$PrefInitTask;-><init>(Landroid/content/Context;)V

    sget-object p0, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/SessionCommitReceiver$PrefInitTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 108
    :cond_2
    return-void
.end method

.method public static queueAppIconAddition(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .line 79
    invoke-static {p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    .line 80
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 81
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    invoke-static {p1, p0}, Lcom/android/launcher3/InstallShortcutReceiver;->queueActivityInfo(Landroid/content/pm/LauncherActivityInfo;Landroid/content/Context;)V

    .line 86
    return-void

    .line 83
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 62
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_add_icon_to_home"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 67
    :cond_0
    const-string v0, "android.content.pm.extra.SESSION"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 68
    const-string v1, "android.intent.extra.USER"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;

    .line 70
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 71
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallReason()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/android/launcher3/SessionCommitReceiver;->queueAppIconAddition(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 76
    return-void

    .line 72
    :cond_2
    :goto_0
    return-void

    .line 64
    :cond_3
    :goto_1
    return-void
.end method
