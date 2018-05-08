.class public Lcom/android/launcher3/popup/SystemShortcut$Install;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 90
    const v0, 0x7f020033

    const v1, 0x7f0c0040

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(II)V

    .line 91
    return-void
.end method

.method static synthetic lambda$createOnClickListener$0(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/BaseDraggingActivity;Landroid/view/View;)V
    .locals 2

    .line 113
    new-instance v0, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/PackageManagerHelper;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 115
    invoke-virtual {p1, p2, v0, p0}, Lcom/android/launcher3/BaseDraggingActivity;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z

    .line 116
    invoke-static {p1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/BaseDraggingActivity;)V

    .line 117
    return-void
.end method


# virtual methods
.method public final createOnClickListener(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/ItemInfo;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 112
    new-instance v0, Lcom/android/launcher3/popup/-$$Lambda$SystemShortcut$Install$58NbgSBxD2QmaoUGCsQWNJ4UVd8;

    invoke-direct {v0, p2, p1}, Lcom/android/launcher3/popup/-$$Lambda$SystemShortcut$Install$58NbgSBxD2QmaoUGCsQWNJ4UVd8;-><init>(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/BaseDraggingActivity;)V

    return-object v0
.end method

.method public getOnClickListener(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/ItemInfo;)Landroid/view/View$OnClickListener;
    .locals 5

    .line 96
    instance-of v0, p2, Lcom/android/launcher3/ShortcutInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    const/16 v3, 0x10

    .line 97
    invoke-virtual {v0, v3}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    move v0, v1

    goto :goto_0

    .line 97
    :cond_0
    nop

    .line 98
    move v0, v2

    .line 99
    :goto_0
    instance-of v3, p2, Lcom/android/launcher3/AppInfo;

    if-eqz v3, :cond_1

    .line 100
    move-object v3, p2

    check-cast v3, Lcom/android/launcher3/AppInfo;

    .line 101
    invoke-static {p1}, Lcom/android/launcher3/util/InstantAppResolver;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/util/InstantAppResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/launcher3/util/InstantAppResolver;->isInstantApp(Lcom/android/launcher3/AppInfo;)Z

    move-result v3

    goto :goto_1

    .line 103
    :cond_1
    move v3, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 104
    :cond_2
    move v1, v2

    goto :goto_3

    .line 103
    :cond_3
    :goto_2
    nop

    .line 104
    :goto_3
    if-nez v1, :cond_4

    .line 105
    const/4 p1, 0x0

    return-object p1

    .line 107
    :cond_4
    new-instance v0, Lcom/android/launcher3/popup/-$$Lambda$SystemShortcut$Install$58NbgSBxD2QmaoUGCsQWNJ4UVd8;

    invoke-direct {v0, p2, p1}, Lcom/android/launcher3/popup/-$$Lambda$SystemShortcut$Install$58NbgSBxD2QmaoUGCsQWNJ4UVd8;-><init>(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/BaseDraggingActivity;)V

    return-object v0
.end method
