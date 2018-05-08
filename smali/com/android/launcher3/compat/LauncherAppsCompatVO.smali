.class public Lcom/android/launcher3/compat/LauncherAppsCompatVO;
.super Lcom/android/launcher3/compat/LauncherAppsCompatVL;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/launcher3/compat/LauncherAppsCompatVL;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public static createShortcutInfoFromPinItemRequest(Landroid/content/Context;Landroid/content/pm/LauncherApps$PinItemRequest;J)Lcom/android/launcher3/ShortcutInfo;
    .locals 3

    .line 112
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 113
    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 114
    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_0

    .line 117
    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->accept()Z

    move-result p2

    if-nez p2, :cond_1

    .line 118
    return-object v0

    .line 122
    :cond_0
    new-instance v0, Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/launcher3/compat/LauncherAppsCompatVO$1;

    invoke-direct {v1, p2, p3, p1}, Lcom/android/launcher3/compat/LauncherAppsCompatVO$1;-><init>(JLandroid/content/pm/LauncherApps$PinItemRequest;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 137
    :cond_1
    new-instance p2, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;-><init>(Landroid/content/pm/ShortcutInfo;)V

    .line 138
    new-instance p1, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {p1, p2, p0}, Lcom/android/launcher3/ShortcutInfo;-><init>(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 140
    invoke-static {p0}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object p3

    .line 141
    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Lcom/android/launcher3/graphics/LauncherIcons;->createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Z)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/graphics/BitmapInfo;->applyTo(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 142
    invoke-virtual {p3}, Lcom/android/launcher3/graphics/LauncherIcons;->recycle()V

    .line 143
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/LauncherModel;->updateAndBindShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;)V

    .line 145
    return-object p1

    .line 147
    :cond_2
    return-object v0
.end method

.method public static getPinItemRequest(Landroid/content/Intent;)Landroid/content/pm/LauncherApps$PinItemRequest;
    .locals 1

    .line 152
    const-string v0, "android.content.pm.extra.PIN_ITEM_REQUEST"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .line 153
    instance-of v0, p0, Landroid/content/pm/LauncherApps$PinItemRequest;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/content/pm/LauncherApps$PinItemRequest;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .locals 2

    .line 55
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVO;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/pm/LauncherApps;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 56
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 p3, 0x800000

    and-int/2addr p2, p3

    if-eqz p2, :cond_1

    iget-boolean p2, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 57
    :cond_1
    :goto_0
    return-object v0

    .line 58
    :catch_0
    move-exception p1

    .line 59
    return-object v0
.end method

.method public getCustomShortcutActivityList(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;
    .locals 9

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 71
    if-nez p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVO;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object p1

    .line 73
    const/4 v2, 0x0

    goto :goto_0

    .line 75
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    iget-object v3, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object p1, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    .line 79
    move-object v8, v2

    move-object v2, p1

    move-object p1, v8

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 80
    invoke-virtual {v1, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 81
    iget-object v5, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVO;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 82
    invoke-virtual {v5, v2, v3}, Landroid/content/pm/LauncherApps;->getShortcutConfigActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    .line 83
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherActivityInfo;

    .line 84
    if-nez v4, :cond_1

    invoke-virtual {v5}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_2

    .line 86
    :cond_1
    new-instance v6, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;

    invoke-direct {v6, v5}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;-><init>(Landroid/content/pm/LauncherActivityInfo;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_2
    goto :goto_2

    .line 89
    :cond_3
    goto :goto_1

    .line 91
    :cond_4
    return-object v0
.end method
