.class public Lcom/android/launcher3/model/ShortcutsChangedTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "SourceFile"


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mShortcuts:Ljava/util/List;

.field private final mUpdateIdMap:Z

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mPackageName:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mShortcuts:Ljava/util/List;

    .line 52
    iput-object p3, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mUser:Landroid/os/UserHandle;

    .line 53
    iput-boolean p4, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mUpdateIdMap:Z

    .line 54
    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;)V
    .locals 9

    .line 58
    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object p3

    .line 60
    nop

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 64
    new-instance v1, Lcom/android/launcher3/util/MultiHashMap;

    invoke-direct {v1}, Lcom/android/launcher3/util/MultiHashMap;-><init>()V

    .line 65
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 67
    iget-object v3, p2, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/ItemInfo;

    .line 68
    iget v5, v4, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    .line 69
    check-cast v4, Lcom/android/launcher3/ShortcutInfo;

    .line 70
    invoke-virtual {v4}, Lcom/android/launcher3/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 71
    invoke-static {v4}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Lcom/android/launcher3/util/MultiHashMap;->addToList(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v4}, Lcom/android/launcher3/ShortcutInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    goto :goto_0

    .line 77
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-virtual {v1}, Lcom/android/launcher3/util/MultiHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 80
    iget-object v4, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mPackageName:Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p3, v4, v5, v2}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForFullDetails(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p3

    .line 82
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 83
    invoke-static {v2}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromInfo(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v4

    .line 84
    invoke-virtual {v1, v4}, Lcom/android/launcher3/util/MultiHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 85
    iget-object v6, v2, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v6

    if-nez v6, :cond_2

    .line 91
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    goto :goto_1

    .line 94
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/ShortcutInfo;

    .line 95
    invoke-virtual {v5, v2, p1}, Lcom/android/launcher3/ShortcutInfo;->updateFromDeepShortcutInfo(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 98
    invoke-static {p1}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object v6

    .line 99
    const/4 v7, 0x1

    iget-object v8, v5, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v8}, Lcom/android/launcher3/util/Provider;->of(Ljava/lang/Object;)Lcom/android/launcher3/util/Provider;

    move-result-object v8

    invoke-virtual {v6, v2, v7, v8}, Lcom/android/launcher3/graphics/LauncherIcons;->createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;ZLcom/android/launcher3/util/Provider;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object v7

    .line 100
    invoke-virtual {v7, v5}, Lcom/android/launcher3/graphics/BitmapInfo;->applyTo(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 101
    invoke-virtual {v6}, Lcom/android/launcher3/graphics/LauncherIcons;->recycle()V

    .line 102
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    goto :goto_1

    .line 110
    :cond_4
    invoke-virtual {v1}, Lcom/android/launcher3/util/MultiHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 112
    iget-object p1, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, p1}, Lcom/android/launcher3/model/ShortcutsChangedTask;->bindUpdatedShortcuts(Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    .line 113
    invoke-virtual {v1}, Lcom/android/launcher3/util/MultiHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 114
    invoke-static {v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofShortcutKeys(Ljava/util/HashSet;)Lcom/android/launcher3/util/ItemInfoMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/ShortcutsChangedTask;->deleteAndBindComponentsRemoved(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 117
    :cond_5
    iget-boolean p1, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mUpdateIdMap:Z

    if-eqz p1, :cond_6

    .line 119
    iget-object p1, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mPackageName:Ljava/lang/String;

    iget-object p3, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mUser:Landroid/os/UserHandle;

    iget-object v0, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mShortcuts:Ljava/util/List;

    invoke-virtual {p2, p1, p3, v0}, Lcom/android/launcher3/model/BgDataModel;->updateDeepShortcutMap(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    .line 120
    invoke-virtual {p0, p2}, Lcom/android/launcher3/model/ShortcutsChangedTask;->bindDeepShortcuts(Lcom/android/launcher3/model/BgDataModel;)V

    .line 122
    :cond_6
    return-void
.end method
