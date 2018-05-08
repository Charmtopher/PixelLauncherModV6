.class public Lcom/android/launcher3/popup/SystemShortcut$AppInfo;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 71
    const v0, 0x7f020032

    const v1, 0x7f0c003f

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(II)V

    .line 72
    return-void
.end method

.method static synthetic lambda$getOnClickListener$0(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/ItemInfo;Landroid/view/View;)V
    .locals 6

    .line 78
    invoke-virtual {p0, p2}, Lcom/android/launcher3/BaseDraggingActivity;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 79
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lcom/android/launcher3/BaseDraggingActivity;->getActivityLaunchOptionsAsBundle(Landroid/view/View;Z)Landroid/os/Bundle;

    move-result-object v2

    .line 80
    new-instance v3, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v3, p0}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    instance-of v4, p1, Lcom/android/launcher3/PromiseAppInfo;

    if-eqz v4, :cond_0

    check-cast p1, Lcom/android/launcher3/PromiseAppInfo;

    iget-object v0, v3, Lcom/android/launcher3/util/PackageManagerHelper;->mContext:Landroid/content/Context;

    iget-object v2, v3, Lcom/android/launcher3/util/PackageManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/PromiseAppInfo;->getMarketIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    instance-of v5, p1, Lcom/android/launcher3/AppInfo;

    if-eqz v5, :cond_1

    move-object v4, p1

    check-cast v4, Lcom/android/launcher3/AppInfo;

    iget-object v4, v4, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    instance-of v5, p1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    goto :goto_0

    :cond_2
    instance-of v5, p1, Lcom/android/launcher3/PendingAddItemInfo;

    if-eqz v5, :cond_3

    move-object v4, p1

    check-cast v4, Lcom/android/launcher3/PendingAddItemInfo;

    iget-object v4, v4, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    goto :goto_0

    :cond_3
    instance-of v5, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v5, :cond_4

    move-object v4, p1

    check-cast v4, Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget-object v4, v4, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    :try_start_0
    iget-object v5, v3, Lcom/android/launcher3/util/PackageManagerHelper;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    iget-object p1, p1, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, p1, v0, v2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->showAppDetailsForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object v0, v3, Lcom/android/launcher3/util/PackageManagerHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0023

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "PackageManagerHelper"

    const-string v2, "Unable to launch settings"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object p0

    const/4 p1, 0x7

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnControl(IILandroid/view/View;)V

    .line 84
    return-void
.end method


# virtual methods
.method public getOnClickListener(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/ItemInfo;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 77
    new-instance v0, Lcom/android/launcher3/popup/-$$Lambda$SystemShortcut$AppInfo$b46WgC1q68gh-bbGdztUSCwTf48;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/popup/-$$Lambda$SystemShortcut$AppInfo$b46WgC1q68gh-bbGdztUSCwTf48;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/ItemInfo;)V

    return-object v0
.end method
