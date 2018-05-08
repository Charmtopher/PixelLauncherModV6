.class Lcom/google/android/apps/nexuslauncher/smartspace/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic FO:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->FO:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->FO:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->aC(I)V

    .line 56
    sget-object v0, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 58
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10200000

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->FO:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    const/4 v2, 0x0

    .line 63
    invoke-virtual {v1, p1, v0, v2}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    return-void

    .line 64
    :catch_0
    move-exception p1

    .line 66
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->FO:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object p1

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.calendar"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 66
    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->showAppDetailsForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 70
    return-void
.end method
