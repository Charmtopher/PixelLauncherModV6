.class public Lcom/google/android/apps/nexuslauncher/search/AppLaunchActivity;
.super Lcom/android/launcher3/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/launcher3/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 47
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/AppLaunchActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 50
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/AppLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 51
    if-eqz p1, :cond_6

    .line 52
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p0}, Lcom/google/android/apps/nexuslauncher/e/b;->a(Landroid/net/Uri;Landroid/content/Context;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v2, "deepshortcut"

    const-string v3, "iconType"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "deepshortcut_id"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, v1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/AppLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, v1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto/16 :goto_2

    :cond_1
    invoke-static {p0, v1}, Lcom/google/android/apps/nexuslauncher/search/g;->a(Landroid/content/Context;Lcom/android/launcher3/util/ComponentKey;)Lcom/android/launcher3/AppInfo;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/AppLaunchActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/launcher3/Utilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_2

    const p1, 0x7f0c0025

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_2
    iget-object v3, v1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/search/AppLaunchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v3

    iget-object v4, v1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iget-object v1, v1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/AppLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v1, v5, v6}, Lcom/android/launcher3/compat/LauncherAppsCompat;->startActivityForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    :goto_0
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x2

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v4

    instance-of v5, v4, Lcom/android/launcher3/Launcher;

    if-eqz v5, :cond_4

    check-cast v4, Lcom/android/launcher3/Launcher;

    iget-object v3, v4, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v3, v3, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    iget v3, v3, Lcom/android/launcher3/LauncherState;->containerType:I

    :cond_4
    const-string v4, "predictionRank"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Lcom/google/android/apps/nexuslauncher/search/a;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 p1, -0x1

    goto :goto_1

    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_1
    invoke-direct {v4, p0, p1}, Lcom/google/android/apps/nexuslauncher/search/a;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v1}, Lcom/google/android/apps/nexuslauncher/search/a;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/AppLaunchActivity;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->a(Landroid/view/View;Lcom/android/launcher3/ItemInfo;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const p1, 0x7f0c0023

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 54
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/AppLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 56
    invoke-static {p0, p1}, Lcom/android/launcher3/util/PackageManagerHelper;->getMarketSearchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/search/AppLaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/AppLaunchActivity;->finish()V

    .line 61
    return-void
.end method
