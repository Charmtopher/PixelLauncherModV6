.class public Lcom/android/launcher3/model/UserLockStateChangedTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "SourceFile"


# instance fields
.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/launcher3/model/UserLockStateChangedTask;->mUser:Landroid/os/UserHandle;

    .line 52
    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;)V
    .locals 11

    .line 56
    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object p3

    iget-object v0, p0, Lcom/android/launcher3/model/UserLockStateChangedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p3, v0}, Lcom/android/launcher3/compat/UserManagerCompat;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p3

    .line 58
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 61
    const/4 v2, 0x0

    if-eqz p3, :cond_1

    .line 62
    iget-object v3, p0, Lcom/android/launcher3/model/UserLockStateChangedTask;->mUser:Landroid/os/UserHandle;

    .line 63
    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForPinnedShortcuts(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    .line 64
    iget-boolean v4, v0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z

    if-eqz v4, :cond_0

    .line 65
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 66
    invoke-static {v4}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromInfo(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    goto :goto_0

    .line 72
    :cond_0
    const/4 p3, 0x0

    .line 77
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 78
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 80
    iget-object v5, p2, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v5}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/ItemInfo;

    .line 81
    iget v7, v6, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lcom/android/launcher3/model/UserLockStateChangedTask;->mUser:Landroid/os/UserHandle;

    iget-object v8, v6, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    .line 82
    invoke-virtual {v7, v8}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 83
    check-cast v6, Lcom/android/launcher3/ShortcutInfo;

    .line 84
    if-eqz p3, :cond_3

    .line 85
    invoke-static {v6}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v7

    .line 86
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 89
    if-nez v8, :cond_2

    .line 90
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 91
    goto :goto_1

    .line 93
    :cond_2
    iget v7, v6, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    and-int/lit8 v7, v7, -0x21

    iput v7, v6, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    .line 94
    invoke-virtual {v6, v8, p1}, Lcom/android/launcher3/ShortcutInfo;->updateFromDeepShortcutInfo(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 97
    invoke-static {p1}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object v7

    .line 98
    const/4 v9, 0x1

    iget-object v10, v6, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v10}, Lcom/android/launcher3/util/Provider;->of(Ljava/lang/Object;)Lcom/android/launcher3/util/Provider;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/launcher3/graphics/LauncherIcons;->createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;ZLcom/android/launcher3/util/Provider;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/launcher3/graphics/BitmapInfo;->applyTo(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 99
    invoke-virtual {v7}, Lcom/android/launcher3/graphics/LauncherIcons;->recycle()V

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    iget v7, v6, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v6, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    .line 103
    :goto_2
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_4
    goto :goto_1

    .line 106
    :cond_5
    iget-object p1, p0, Lcom/android/launcher3/model/UserLockStateChangedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, p1}, Lcom/android/launcher3/model/UserLockStateChangedTask;->bindUpdatedShortcuts(Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    .line 107
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 108
    invoke-static {v4}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofShortcutKeys(Ljava/util/HashSet;)Lcom/android/launcher3/util/ItemInfoMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/UserLockStateChangedTask;->deleteAndBindComponentsRemoved(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 112
    :cond_6
    iget-object p1, p2, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {p1}, Lcom/android/launcher3/util/MultiHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 113
    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 114
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/ComponentKey;

    iget-object v1, v1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/launcher3/model/UserLockStateChangedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 115
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 119
    :cond_8
    if-eqz p3, :cond_9

    .line 120
    iget-object p1, p0, Lcom/android/launcher3/model/UserLockStateChangedTask;->mUser:Landroid/os/UserHandle;

    iget-object p3, p0, Lcom/android/launcher3/model/UserLockStateChangedTask;->mUser:Landroid/os/UserHandle;

    .line 121
    invoke-virtual {v0, p3}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForAllShortcuts(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p3

    .line 120
    invoke-virtual {p2, v2, p1, p3}, Lcom/android/launcher3/model/BgDataModel;->updateDeepShortcutMap(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    .line 123
    :cond_9
    invoke-virtual {p0, p2}, Lcom/android/launcher3/model/UserLockStateChangedTask;->bindDeepShortcuts(Lcom/android/launcher3/model/BgDataModel;)V

    .line 124
    return-void
.end method
