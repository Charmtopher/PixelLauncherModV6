.class Lcom/google/android/apps/nexuslauncher/qsb/t;
.super Lcom/android/launcher3/widget/PendingAddShortcutInfo;
.source "SourceFile"


# instance fields
.field final synthetic AV:Lcom/google/android/apps/nexuslauncher/qsb/r;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/r;Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/t;->AV:Lcom/google/android/apps/nexuslauncher/qsb/r;

    invoke-direct {p0, p2}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;-><init>(Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;)V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/t;->AV:Lcom/google/android/apps/nexuslauncher/qsb/r;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/r;->a(Lcom/google/android/apps/nexuslauncher/qsb/r;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/AppInfo;->makeLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
