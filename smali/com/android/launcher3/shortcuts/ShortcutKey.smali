.class public Lcom/android/launcher3/shortcuts/ShortcutKey;
.super Lcom/android/launcher3/util/ComponentKey;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 1

    .line 17
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 18
    return-void
.end method

.method public static fromInfo(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;)Lcom/android/launcher3/shortcuts/ShortcutKey;
    .locals 3

    .line 29
    new-instance v0, Lcom/android/launcher3/shortcuts/ShortcutKey;

    iget-object v1, p0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 30
    iget-object p0, p0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/launcher3/shortcuts/ShortcutKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 29
    return-object v0
.end method

.method public static fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;
    .locals 2

    .line 34
    const-string v0, "shortcut_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/android/launcher3/shortcuts/ShortcutKey;

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/shortcuts/ShortcutKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-object v1
.end method

.method public static fromItemInfo(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v0, p0}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object p0

    return-object p0
.end method
