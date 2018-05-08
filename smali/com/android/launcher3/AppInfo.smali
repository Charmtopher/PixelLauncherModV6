.class public Lcom/android/launcher3/AppInfo;
.super Lcom/android/launcher3/ItemInfoWithIcon;
.source "SourceFile"


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field public intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfoWithIcon;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/AppInfo;->itemType:I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V
    .locals 0

    .line 58
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/launcher3/compat/UserManagerCompat;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/android/launcher3/AppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V
    .locals 2

    .line 61
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfoWithIcon;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 63
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/AppInfo;->container:J

    .line 64
    iput-object p2, p0, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    .line 65
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/AppInfo;->makeLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/AppInfo;->intent:Landroid/content/Intent;

    .line 67
    if-eqz p3, :cond_0

    .line 68
    iget p2, p0, Lcom/android/launcher3/AppInfo;->runtimeStatusFlags:I

    or-int/lit8 p2, p2, 0x8

    iput p2, p0, Lcom/android/launcher3/AppInfo;->runtimeStatusFlags:I

    .line 70
    :cond_0
    invoke-static {p0, p1}, Lcom/android/launcher3/AppInfo;->updateRuntimeFlagsForActivityTarget(Lcom/android/launcher3/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;)V

    .line 71
    return-void
.end method

.method public static makeLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    .line 101
    const/high16 v0, 0x10200000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p0

    .line 98
    return-object p0
.end method

.method public static updateRuntimeFlagsForActivityTarget(Lcom/android/launcher3/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;)V
    .locals 3

    .line 106
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 107
    invoke-static {v0}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget v1, p0, Lcom/android/launcher3/ItemInfoWithIcon;->runtimeStatusFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/launcher3/ItemInfoWithIcon;->runtimeStatusFlags:I

    .line 110
    :cond_0
    iget v1, p0, Lcom/android/launcher3/ItemInfoWithIcon;->runtimeStatusFlags:I

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    .line 111
    const/16 v2, 0x80

    goto :goto_0

    :cond_1
    const/16 v2, 0x40

    :goto_0
    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/ItemInfoWithIcon;->runtimeStatusFlags:I

    .line 113
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    if-eqz v1, :cond_2

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 115
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 117
    iget p1, p0, Lcom/android/launcher3/ItemInfoWithIcon;->runtimeStatusFlags:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/android/launcher3/ItemInfoWithIcon;->runtimeStatusFlags:I

    .line 119
    :cond_2
    return-void
.end method


# virtual methods
.method protected dumpProperties()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/launcher3/ItemInfoWithIcon;->dumpProperties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " componentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/launcher3/AppInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public makeShortcut()Lcom/android/launcher3/ShortcutInfo;
    .locals 1

    .line 86
    new-instance v0, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v0, p0}, Lcom/android/launcher3/ShortcutInfo;-><init>(Lcom/android/launcher3/AppInfo;)V

    return-object v0
.end method

.method public final toComponentKey()Lcom/android/launcher3/util/ComponentKey;
    .locals 3

    .line 90
    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    iget-object v1, p0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-object v0
.end method
