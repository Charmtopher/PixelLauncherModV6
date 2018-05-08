.class Lcom/google/android/apps/nexuslauncher/qsb/s;
.super Lcom/android/launcher3/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;
.source "SourceFile"


# instance fields
.field final synthetic AV:Lcom/google/android/apps/nexuslauncher/qsb/r;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/r;Landroid/content/pm/LauncherActivityInfo;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/s;->AV:Lcom/google/android/apps/nexuslauncher/qsb/r;

    invoke-direct {p0, p2}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;-><init>(Landroid/content/pm/LauncherActivityInfo;)V

    return-void
.end method


# virtual methods
.method public createShortcutInfo()Lcom/android/launcher3/ShortcutInfo;
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/s;->AV:Lcom/google/android/apps/nexuslauncher/qsb/r;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/r;->a(Lcom/google/android/apps/nexuslauncher/qsb/r;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/s;->AV:Lcom/google/android/apps/nexuslauncher/qsb/r;

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/qsb/r;->b(Lcom/google/android/apps/nexuslauncher/qsb/r;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/InstallShortcutReceiver;->fromActivityInfo(Landroid/content/pm/LauncherActivityInfo;Landroid/content/Context;)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .line 40
    const/4 v0, 0x0

    return v0
.end method
