.class Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;
.super Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInfo:Landroid/content/pm/ShortcutInfo;

.field private final mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/content/Context;)V
    .locals 3

    .line 55
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pinned-shortcut"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 55
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 57
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    .line 58
    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mInfo:Landroid/content/pm/ShortcutInfo;

    .line 59
    iput-object p2, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method


# virtual methods
.method public createShortcutInfo()Lcom/android/launcher3/ShortcutInfo;
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x1f4

    add-int/lit16 v0, v0, 0x96

    int-to-long v0, v0

    .line 89
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-static {v2, v3, v0, v1}, Lcom/android/launcher3/compat/LauncherAppsCompatVO;->createShortcutInfoFromPinItemRequest(Landroid/content/Context;Landroid/content/pm/LauncherApps$PinItemRequest;J)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Lcom/android/launcher3/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mInfo:Landroid/content/pm/ShortcutInfo;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mContext:Landroid/content/Context;

    .line 75
    invoke-static {v2}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 76
    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Lcom/android/launcher3/graphics/BitmapInfo;)V

    .line 79
    :cond_0
    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .line 64
    const/4 v0, 0x6

    return v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isPersistable()Z
    .locals 1

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public startConfigActivity(Landroid/app/Activity;I)Z
    .locals 0

    .line 95
    const/4 p1, 0x0

    return p1
.end method
