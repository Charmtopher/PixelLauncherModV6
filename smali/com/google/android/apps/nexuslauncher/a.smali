.class Lcom/google/android/apps/nexuslauncher/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic wM:Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/a;->wM:Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 51
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 52
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 53
    const-string v2, "com.google.android.calendar"

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/LauncherModel;->onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 55
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v2

    const-string v3, "com.google.android.calendar"

    .line 56
    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForPinnedShortcuts(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 57
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 58
    const-string v3, "com.google.android.calendar"

    new-instance v4, Lcom/android/launcher3/model/ShortcutsChangedTask;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v2, v0, v5}, Lcom/android/launcher3/model/ShortcutsChangedTask;-><init>(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V

    invoke-virtual {v1, v4}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 60
    :cond_0
    goto :goto_0

    .line 61
    :cond_1
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/b/a;->c(Landroid/content/Context;)V

    .line 62
    return-void
.end method
