.class public Lcom/android/launcher3/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final sHandler:Landroid/os/Handler;

.field private static sInstallQueueDisabledFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher3/InstallShortcutReceiver;->sInstallQueueDisabledFlags:I

    .line 102
    new-instance v0, Lcom/android/launcher3/InstallShortcutReceiver$1;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/InstallShortcutReceiver$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher3/InstallShortcutReceiver;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;
    .locals 0

    .line 65
    invoke-static {p0, p1}, Lcom/android/launcher3/InstallShortcutReceiver;->decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    .line 65
    invoke-static {p0}, Lcom/android/launcher3/InstallShortcutReceiver;->getIntentPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroid/content/Intent;Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/ShortcutInfo;
    .locals 0

    .line 65
    invoke-static {p0, p1}, Lcom/android/launcher3/InstallShortcutReceiver;->createShortcutInfo(Landroid/content/Intent;Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method private static createPendingInfo(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;
    .locals 3

    .line 227
    const-string v0, "android.intent.extra.shortcut.INTENT"

    const-class v1, Landroid/content/Intent;

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/InstallShortcutReceiver;->isValidExtraType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const-string v0, "android.intent.extra.shortcut.ICON_RESOURCE"

    const-class v2, Landroid/content/Intent$ShortcutIconResource;

    .line 228
    invoke-static {p1, v0, v2}, Lcom/android/launcher3/InstallShortcutReceiver;->isValidExtraType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "android.intent.extra.shortcut.ICON"

    const-class v2, Landroid/graphics/Bitmap;

    .line 230
    invoke-static {p1, v0, v2}, Lcom/android/launcher3/InstallShortcutReceiver;->isValidExtraType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 236
    :cond_0
    new-instance v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    .line 237
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v0, p1, v2, p0}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/Context;)V

    .line 238
    iget-object p0, v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    if-eqz p0, :cond_5

    iget-object p0, v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->isLauncherActivity()Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    :cond_2
    iget-object p0, v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_3

    return-object v0

    :cond_3
    iget-object p0, v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object p0

    iget-object p1, v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    iget-object v1, v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    new-instance p1, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    iget-object v0, v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/content/Context;)V

    return-object p1

    .line 240
    :cond_5
    :goto_0
    return-object v1

    .line 233
    :cond_6
    :goto_1
    return-object v1
.end method

.method private static createShortcutInfo(Landroid/content/Intent;Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/ShortcutInfo;
    .locals 7

    .line 631
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 632
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 633
    const-string v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 635
    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 637
    const-string p0, "InstallShortcutReceiver"

    const-string p1, "Can\'t construct ShorcutInfo with null intent"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    return-object v3

    .line 641
    :cond_0
    new-instance v4, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v4}, Lcom/android/launcher3/ShortcutInfo;-><init>()V

    .line 645
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    iput-object v5, v4, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    .line 647
    nop

    .line 648
    iget-object v5, p1, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object v5

    .line 649
    instance-of v6, v2, Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    .line 650
    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v5, v2}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object v3

    goto :goto_0

    .line 652
    :cond_1
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .line 653
    instance-of v2, p0, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_2

    .line 654
    check-cast p0, Landroid/content/Intent$ShortcutIconResource;

    iput-object p0, v4, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 655
    iget-object p0, v4, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {v5, p0}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/content/Intent$ShortcutIconResource;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object v3

    .line 658
    :cond_2
    :goto_0
    invoke-virtual {v5}, Lcom/android/launcher3/graphics/LauncherIcons;->recycle()V

    .line 660
    if-nez v3, :cond_3

    .line 661
    iget-object p0, p1, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    iget-object v2, v4, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object v3

    .line 663
    :cond_3
    invoke-virtual {v3, v4}, Lcom/android/launcher3/graphics/BitmapInfo;->applyTo(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 665
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 666
    iget-object p0, p1, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object p0

    iget-object p1, v4, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    iget-object v1, v4, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    .line 667
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v4, Lcom/android/launcher3/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 668
    iput-object v0, v4, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 669
    return-object v4
.end method

.method private static decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;
    .locals 7

    .line 535
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;-><init>(Ljava/lang/String;Landroid/content/Context;B)V

    .line 536
    const-string p0, "isAppShortcut"

    invoke-virtual {v1, p0}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 537
    invoke-static {p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object p0

    iget-object v2, v1, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->launcherIntent:Landroid/content/Intent;

    iget-object v1, v1, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->user:Landroid/os/UserHandle;

    .line 538
    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    .line 539
    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/content/Context;)V

    return-object v1

    .line 540
    :cond_1
    const-string p0, "isDeepShortcut"

    invoke-virtual {v1, p0}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 541
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object p0

    .line 542
    iget-object v3, v1, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->launcherIntent:Landroid/content/Intent;

    .line 543
    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, v1, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->launcherIntent:Landroid/content/Intent;

    const-string v6, "shortcut_id"

    .line 544
    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v1, v1, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->user:Landroid/os/UserHandle;

    .line 542
    invoke-virtual {p0, v3, v4, v1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForFullDetails(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    .line 547
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 548
    return-object v0

    .line 550
    :cond_2
    new-instance v1, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    return-object v1

    .line 552
    :cond_3
    const-string p0, "isAppWidget"

    invoke-virtual {v1, p0}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 553
    iget-object p0, v1, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->launcherIntent:Landroid/content/Intent;

    const-string v3, "appWidgetId"

    .line 554
    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 555
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 556
    invoke-virtual {v2, p0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 557
    if-eqz v2, :cond_5

    iget-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v4, v1, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->launcherIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 558
    invoke-virtual {v2}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v3

    iget-object v1, v1, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 561
    :cond_4
    new-instance v1, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-direct {v1, v2, p0, p1}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/content/Context;)V

    return-object v1

    .line 559
    :cond_5
    :goto_0
    return-object v0

    .line 564
    :cond_6
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 565
    const-string v3, "android.intent.extra.shortcut.INTENT"

    iget-object v4, v1, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->launcherIntent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 566
    const-string v3, "android.intent.extra.shortcut.NAME"

    const-string v4, "name"

    invoke-virtual {v1, v4}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    const-string v3, "icon"

    invoke-virtual {v1, v3}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 569
    const-string v4, "iconResource"

    invoke-virtual {v1, v4}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 570
    const-string v5, "iconResourcePackage"

    invoke-virtual {v1, v5}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 571
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 572
    invoke-static {v3, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 573
    array-length v4, v3

    invoke-static {v3, v2, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 574
    const-string v3, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 575
    goto :goto_1

    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 576
    new-instance v2, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v2}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 578
    iput-object v4, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 579
    iput-object v5, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 580
    const-string v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 583
    :cond_8
    :goto_1
    new-instance v2, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    iget-object v1, v1, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->user:Landroid/os/UserHandle;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 584
    :catch_0
    move-exception p0

    .line 585
    const-string p1, "InstallShortcutReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception reading shortcut to add: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    return-object v0
.end method

.method public static disableAndFlushInstallQueue(ILandroid/content/Context;)V
    .locals 1

    .line 298
    sget v0, Lcom/android/launcher3/InstallShortcutReceiver;->sInstallQueueDisabledFlags:I

    not-int p0, p0

    and-int/2addr p0, v0

    sput p0, Lcom/android/launcher3/InstallShortcutReceiver;->sInstallQueueDisabledFlags:I

    .line 299
    invoke-static {p1}, Lcom/android/launcher3/InstallShortcutReceiver;->flushInstallQueue(Landroid/content/Context;)V

    .line 300
    return-void
.end method

.method public static enableInstallQueue(I)V
    .locals 1

    .line 295
    sget v0, Lcom/android/launcher3/InstallShortcutReceiver;->sInstallQueueDisabledFlags:I

    or-int/2addr p0, v0

    sput p0, Lcom/android/launcher3/InstallShortcutReceiver;->sInstallQueueDisabledFlags:I

    .line 296
    return-void
.end method

.method static ensureValidName(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 314
    if-nez p2, :cond_0

    .line 316
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 317
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 318
    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    goto :goto_0

    .line 319
    :catch_0
    move-exception p0

    .line 320
    const-string p0, ""

    return-object p0

    .line 323
    :cond_0
    :goto_0
    return-object p2
.end method

.method static flushInstallQueue(Landroid/content/Context;)V
    .locals 2

    .line 303
    sget v0, Lcom/android/launcher3/InstallShortcutReceiver;->sInstallQueueDisabledFlags:I

    if-eqz v0, :cond_0

    .line 304
    return-void

    .line 306
    :cond_0
    sget-object v0, Lcom/android/launcher3/InstallShortcutReceiver;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 307
    return-void
.end method

.method public static fromActivityInfo(Landroid/content/pm/LauncherActivityInfo;Landroid/content/Context;)Lcom/android/launcher3/ShortcutInfo;
    .locals 1

    .line 252
    new-instance v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->getItemInfo()Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/ShortcutInfo;

    return-object p0
.end method

.method public static fromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/ShortcutInfo;
    .locals 0

    .line 247
    invoke-static {p0, p1}, Lcom/android/launcher3/InstallShortcutReceiver;->createPendingInfo(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-result-object p0

    .line 248
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->getItemInfo()Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/ShortcutInfo;

    return-object p0
.end method

.method private static getIntentPackage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .line 529
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 530
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 529
    return-object p0
.end method

.method public static getPendingShortcuts(Landroid/content/Context;)Ljava/util/HashSet;
    .locals 6

    .line 268
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 270
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "apps_to_install"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 271
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    return-object v0

    .line 275
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 277
    :try_start_0
    new-instance v3, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;

    const/4 v4, 0x0

    invoke-direct {v3, v2, p0, v4}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;-><init>(Ljava/lang/String;Landroid/content/Context;B)V

    .line 278
    const-string v2, "isDeepShortcut"

    invoke-virtual {v3, v2}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    iget-object v2, v3, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->launcherIntent:Landroid/content/Intent;

    iget-object v3, v3, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->user:Landroid/os/UserHandle;

    invoke-static {v2, v3}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_1
    goto :goto_0

    .line 281
    :catch_0
    move-exception v2

    .line 282
    const-string v3, "InstallShortcutReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception reading shortcut to add: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    goto :goto_0

    .line 285
    :cond_2
    return-object v0
.end method

.method private static isValidExtraType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 0

    .line 219
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .line 220
    if-eqz p0, :cond_1

    invoke-virtual {p2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static queueActivityInfo(Landroid/content/pm/LauncherActivityInfo;Landroid/content/Context;)V
    .locals 1

    .line 264
    new-instance v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/content/Context;)V

    invoke-static {v0, p1}, Lcom/android/launcher3/InstallShortcutReceiver;->queuePendingShortcutInfo(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Landroid/content/Context;)V

    .line 265
    return-void
.end method

.method private static queuePendingShortcutInfo(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Landroid/content/Context;)V
    .locals 2

    .line 290
    sget-object v0, Lcom/android/launcher3/InstallShortcutReceiver;->sHandler:Landroid/os/Handler;

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 291
    invoke-static {p1}, Lcom/android/launcher3/InstallShortcutReceiver;->flushInstallQueue(Landroid/content/Context;)V

    .line 292
    return-void
.end method

.method public static queueShortcut(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V
    .locals 1

    .line 256
    new-instance v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    invoke-static {v0, p1}, Lcom/android/launcher3/InstallShortcutReceiver;->queuePendingShortcutInfo(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Landroid/content/Context;)V

    .line 257
    return-void
.end method

.method public static queueWidget(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/content/Context;)V
    .locals 1

    .line 260
    new-instance v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/content/Context;)V

    invoke-static {v0, p2}, Lcom/android/launcher3/InstallShortcutReceiver;->queuePendingShortcutInfo(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Landroid/content/Context;)V

    .line 261
    return-void
.end method

.method public static removeFromInstallQueue(Landroid/content/Context;Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 7

    .line 164
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    return-void

    .line 167
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 170
    const-string v1, "apps_to_install"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 175
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    return-void

    .line 178
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 179
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 180
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 181
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 183
    :try_start_0
    new-instance v4, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;

    const/4 v5, 0x0

    invoke-direct {v4, v3, p0, v5}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;-><init>(Ljava/lang/String;Landroid/content/Context;B)V

    .line 184
    iget-object v3, v4, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->launcherIntent:Landroid/content/Intent;

    invoke-static {v3}, Lcom/android/launcher3/InstallShortcutReceiver;->getIntentPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v4, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->user:Landroid/os/UserHandle;

    .line 185
    invoke-virtual {p2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 186
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_2
    goto :goto_0

    .line 188
    :catch_0
    move-exception v3

    .line 189
    const-string v4, "InstallShortcutReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception reading shortcut to add: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 192
    goto :goto_0

    .line 193
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "apps_to_install"

    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 194
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 197
    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    return-void

    .line 200
    :cond_0
    invoke-static {p1, p2}, Lcom/android/launcher3/InstallShortcutReceiver;->createPendingInfo(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-result-object p2

    .line 201
    if-eqz p2, :cond_2

    .line 202
    invoke-virtual {p2}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->isLauncherActivity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    new-instance v0, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v1, p2, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/PackageManagerHelper;->hasPermissionForActivity(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    const-string p1, "InstallShortcutReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring malicious intent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void

    .line 211
    :cond_1
    invoke-static {p2, p1}, Lcom/android/launcher3/InstallShortcutReceiver;->queuePendingShortcutInfo(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Landroid/content/Context;)V

    .line 213
    :cond_2
    return-void
.end method
