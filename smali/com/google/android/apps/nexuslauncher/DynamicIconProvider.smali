.class public Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;
.super Lcom/android/launcher3/IconProvider;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final wL:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 68
    invoke-direct {p0}, Lcom/android/launcher3/IconProvider;-><init>()V

    .line 47
    new-instance v0, Lcom/google/android/apps/nexuslauncher/a;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/a;-><init>(Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->wL:Landroid/content/BroadcastReceiver;

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 71
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->wL:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/os/Handler;

    .line 74
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 73
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 76
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 78
    return-void
.end method

.method private a(Landroid/os/Bundle;Landroid/content/res/Resources;)I
    .locals 2

    .line 130
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 131
    return v0

    .line 134
    :cond_0
    const-string v1, "com.google.android.calendar.dynamic_icons_nexus_round"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 135
    if-nez p1, :cond_1

    .line 136
    return v0

    .line 140
    :cond_1
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->getDay()I

    move-result p2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 141
    :catch_0
    move-exception p1

    .line 144
    return v0
.end method

.method private getDay()I
    .locals 2

    .line 152
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method public final getIcon(Landroid/content/pm/LauncherActivityInfo;IZ)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 82
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 83
    nop

    .line 84
    const-string v1, "com.google.android.calendar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 87
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x2080

    .line 86
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 90
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 91
    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->a(Landroid/os/Bundle;Landroid/content/res/Resources;)I

    move-result v1

    .line 93
    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v0, v1, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    move-object v2, v0

    :cond_0
    :goto_0
    goto :goto_1

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0

    .line 101
    :cond_1
    if-nez p3, :cond_2

    sget-object v0, Lcom/google/android/apps/nexuslauncher/b/f;->yy:Landroid/content/ComponentName;

    .line 102
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/nexuslauncher/DynamicDrawableFactory;

    .line 105
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/google/android/apps/nexuslauncher/b/f;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 108
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/IconProvider;->getIcon(Landroid/content/pm/LauncherActivityInfo;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v2
.end method

.method public final getIconSystemState(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 113
    const-string v0, "com.google.android.calendar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->mSystemState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->getDay()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->mSystemState:Ljava/lang/String;

    return-object p1
.end method
