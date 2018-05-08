.class public Lcom/google/android/apps/nexuslauncher/LauncherLayoutPreloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 17
    const-string p2, "SUWFinishReceiver"

    const-string v0, "Received preload request"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/LauncherLayoutPreloadReceiver;->isOrderedBroadcast()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 20
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->hasHostPermission()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    const-string p2, "SUWFinishReceiver"

    const-string v0, "Trying to preload launcher"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance p2, Lcom/google/android/apps/nexuslauncher/b;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/LauncherLayoutPreloadReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/apps/nexuslauncher/b;-><init>(Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 27
    return-void

    .line 21
    :cond_1
    :goto_0
    const-string p1, "SUWFinishReceiver"

    const-string p2, "Skipping preload"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method
