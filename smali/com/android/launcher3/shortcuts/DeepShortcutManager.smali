.class public Lcom/android/launcher3/shortcuts/DeepShortcutManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field public final mLauncherApps:Landroid/content/pm/LauncherApps;

.field public mWasLastCallSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, "launcherapps"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 65
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;
    .locals 2

    .line 52
    sget-object v0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->sInstance:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->sInstance:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    .line 56
    :cond_0
    sget-object p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->sInstance:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    monitor-exit v0

    return-object p0

    .line 57
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static supportsShortcuts(Lcom/android/launcher3/ItemInfo;)Z
    .locals 4

    .line 68
    instance-of v0, p0, Lcom/android/launcher3/ShortcutInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 69
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->hasPromiseIconUi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    move v0, v1

    goto :goto_0

    .line 69
    :cond_0
    nop

    .line 70
    move v0, v2

    :goto_0
    iget v3, p0, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-nez v3, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/android/launcher3/ItemInfo;->isDisabled()Z

    move-result p0

    if-nez p0, :cond_1

    if-nez v0, :cond_1

    return v1

    .line 70
    :cond_1
    return v2
.end method


# virtual methods
.method public final extractIds(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 193
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 194
    iget-object v1, v1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    goto :goto_0

    .line 196
    :cond_0
    return-object v0
.end method

.method public final getShortcutIconDrawable(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 164
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT_MR1:Z

    if-eqz v0, :cond_0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 167
    iget-object p1, p1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 166
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 168
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    return-object p1

    .line 170
    :catch_0
    move-exception p1

    .line 171
    const-string p2, "DeepShortcutManager"

    const-string v0, "Failed to get shortcut icon"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z

    .line 175
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final hasHostPermission()Z
    .locals 3

    .line 239
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT_MR1:Z

    if-eqz v0, :cond_0

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps;->hasShortcutHostPermission()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    const-string v1, "DeepShortcutManager"

    const-string v2, "Failed to make shortcut manager call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 2

    .line 208
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT_MR1:Z

    if-eqz v0, :cond_3

    .line 209
    new-instance v0, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 210
    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 211
    if-eqz p2, :cond_0

    .line 212
    invoke-virtual {v0, p2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 213
    invoke-virtual {v0, p3}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 214
    invoke-virtual {v0, p4}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 216
    :cond_0
    const/4 p1, 0x0

    .line 218
    :try_start_0
    iget-object p2, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p2, v0, p5}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 219
    const/4 p1, 0x1

    :try_start_1
    iput-boolean p1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 223
    nop

    .line 224
    move-object p1, p2

    goto :goto_1

    .line 220
    :catch_0
    move-exception p1

    move-object v1, p2

    move-object p2, p1

    move-object p1, v1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 221
    :goto_0
    const-string p3, "DeepShortcutManager"

    const-string p4, "Failed to query for shortcuts"

    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z

    .line 224
    :goto_1
    if-nez p1, :cond_1

    .line 225
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 227
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 228
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ShortcutInfo;

    .line 229
    new-instance p4, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    invoke-direct {p4, p3}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;-><init>(Landroid/content/pm/ShortcutInfo;)V

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    goto :goto_2

    .line 231
    :cond_2
    return-object p2

    .line 233
    :cond_3
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public final queryForAllShortcuts(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 6

    .line 188
    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final queryForFullDetails(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 6

    .line 90
    const/16 v1, 0xb

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final queryForPinnedShortcuts(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 6

    .line 184
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 7

    .line 150
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT_MR1:Z

    if-eqz v0, :cond_0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 154
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    return-void

    .line 155
    :catch_0
    move-exception p1

    .line 156
    const-string p2, "DeepShortcutManager"

    const-string p3, "Failed to start shortcut"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z

    .line 160
    :cond_0
    return-void
.end method

.method public final unpinShortcut(Lcom/android/launcher3/shortcuts/ShortcutKey;)V
    .locals 3

    .line 109
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT_MR1:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p1, Lcom/android/launcher3/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p1, Lcom/android/launcher3/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 112
    iget-object p1, p1, Lcom/android/launcher3/shortcuts/ShortcutKey;->user:Landroid/os/UserHandle;

    .line 113
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForPinnedShortcuts(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->extractIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 114
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, v0, v2, p1}, Landroid/content/pm/LauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 117
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    return-void

    .line 118
    :catch_0
    move-exception p1

    .line 119
    const-string v0, "DeepShortcutManager"

    const-string v1, "Failed to unpin shortcut"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z

    .line 123
    :cond_0
    return-void
.end method
