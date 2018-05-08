.class public Lcom/android/launcher3/model/WidgetsModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAppFilter:Lcom/android/launcher3/AppFilter;

.field private final mWidgetsList:Lcom/android/launcher3/util/MultiHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/android/launcher3/util/MultiHashMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/MultiHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Lcom/android/launcher3/util/MultiHashMap;

    return-void
.end method

.method private declared-synchronized setWidgetsAndShortcuts(Ljava/util/ArrayList;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 6

    monitor-enter p0

    .line 122
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    if-nez p3, :cond_0

    .line 126
    iget-object p3, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {p3}, Lcom/android/launcher3/util/MultiHashMap;->clear()V

    goto :goto_3

    .line 129
    :cond_0
    const/4 v1, 0x0

    .line 130
    iget-object v2, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/MultiHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/PackageItemInfo;

    .line 131
    iget-object v4, v3, Lcom/android/launcher3/model/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v5, p3, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    nop

    .line 133
    nop

    .line 136
    move-object v1, v3

    goto :goto_1

    .line 135
    :cond_1
    goto :goto_0

    .line 136
    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    .line 139
    iget-object v2, v1, Lcom/android/launcher3/model/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v2, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/MultiHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 142
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/WidgetItem;

    .line 144
    iget-object v3, v2, Lcom/android/launcher3/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p3, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, v2, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    iget-object v3, p3, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    .line 145
    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 148
    :cond_3
    goto :goto_2

    .line 152
    :cond_4
    :goto_3
    iget-object p3, p2, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 153
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 156
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/WidgetItem;

    .line 157
    iget-object v3, v2, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    if-eqz v3, :cond_6

    .line 158
    iget-object v3, v2, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getWidgetFeatures()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_5

    .line 160
    iget-object v3, v2, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    iget v3, v3, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->spanX:I

    iget-object v4, v2, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    iget v4, v4, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanX:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 165
    iget-object v4, v2, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    iget v4, v4, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->spanY:I

    iget-object v5, v2, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    iget v5, v5, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanY:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 166
    iget v5, p3, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-gt v3, v5, :cond_5

    iget v3, p3, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    if-gt v4, v3, :cond_5

    .line 172
    :cond_6
    iget-object v3, p0, Lcom/android/launcher3/model/WidgetsModel;->mAppFilter:Lcom/android/launcher3/AppFilter;

    if-nez v3, :cond_7

    .line 177
    iget-object v3, p2, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/AppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/AppFilter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/model/WidgetsModel;->mAppFilter:Lcom/android/launcher3/AppFilter;

    .line 179
    :cond_7
    iget-object v3, p0, Lcom/android/launcher3/model/WidgetsModel;->mAppFilter:Lcom/android/launcher3/AppFilter;

    iget-object v4, v2, Lcom/android/launcher3/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 184
    iget-object v3, v2, Lcom/android/launcher3/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/PackageItemInfo;

    .line 189
    if-nez v4, :cond_8

    .line 190
    new-instance v4, Lcom/android/launcher3/model/PackageItemInfo;

    invoke-direct {v4, v3}, Lcom/android/launcher3/model/PackageItemInfo;-><init>(Ljava/lang/String;)V

    .line 191
    iget-object v5, v2, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    iput-object v5, v4, Lcom/android/launcher3/model/PackageItemInfo;->user:Landroid/os/UserHandle;

    .line 192
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 193
    :cond_8
    iget-object v3, v4, Lcom/android/launcher3/model/PackageItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 195
    iget-object v3, v2, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    iput-object v3, v4, Lcom/android/launcher3/model/PackageItemInfo;->user:Landroid/os/UserHandle;

    .line 197
    :cond_9
    :goto_5
    iget-object v3, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/util/MultiHashMap;->addToList(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    goto :goto_4

    .line 201
    :cond_a
    iget-object p1, p2, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 202
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/model/PackageItemInfo;

    .line 203
    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0}, Lcom/android/launcher3/IconCache;->getTitleAndIconForApp(Lcom/android/launcher3/model/PackageItemInfo;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    goto :goto_6

    .line 205
    :cond_b
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized getWidgetsList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6

    monitor-enter p0

    .line 61
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    new-instance v1, Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    invoke-direct {v1, p1}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance p1, Lcom/android/launcher3/widget/WidgetItemComparator;

    invoke-direct {p1}, Lcom/android/launcher3/widget/WidgetItemComparator;-><init>()V

    .line 65
    iget-object v2, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/MultiHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 66
    new-instance v4, Lcom/android/launcher3/widget/WidgetListRowEntry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/PackageItemInfo;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-direct {v4, v5, v3}, Lcom/android/launcher3/widget/WidgetListRowEntry;-><init>(Lcom/android/launcher3/model/PackageItemInfo;Ljava/util/ArrayList;)V

    .line 67
    iget-object v3, v4, Lcom/android/launcher3/widget/WidgetListRowEntry;->pkgItem:Lcom/android/launcher3/model/PackageItemInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/PackageItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/android/launcher3/widget/WidgetListRowEntry;->titleSectionName:Ljava/lang/String;

    .line 68
    iget-object v3, v4, Lcom/android/launcher3/widget/WidgetListRowEntry;->widgets:Ljava/util/ArrayList;

    invoke-static {v3, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 69
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    monitor-exit p0

    return-object v0

    .line 60
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final update(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 7

    .line 79
    iget-object v0, p1, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 85
    iget-object v3, p1, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 88
    invoke-static {v0}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v4

    .line 89
    invoke-virtual {v4, p2}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getAllProviders(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    .line 90
    new-instance v6, Lcom/android/launcher3/model/WidgetItem;

    .line 91
    invoke-static {v0, v5}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v5

    invoke-direct {v6, v5, v2, v3}, Lcom/android/launcher3/model/WidgetItem;-><init>(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Landroid/content/pm/PackageManager;Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 90
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    goto :goto_0

    .line 95
    :cond_0
    invoke-static {v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getCustomShortcutActivityList(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;

    .line 97
    new-instance v3, Lcom/android/launcher3/model/WidgetItem;

    invoke-direct {v3, v2}, Lcom/android/launcher3/model/WidgetItem;-><init>(Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    invoke-direct {p0, v1, p1, p2}, Lcom/android/launcher3/model/WidgetsModel;->setWidgetsAndShortcuts(Ljava/util/ArrayList;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_2

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isBinderSizeError(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    :goto_2
    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mWidgetCache:Lcom/android/launcher3/WidgetPreviewLoader;

    invoke-virtual {p1, v1, p2}, Lcom/android/launcher3/WidgetPreviewLoader;->removeObsoletePreviews(Ljava/util/ArrayList;Lcom/android/launcher3/util/PackageUserKey;)V

    .line 112
    return-void

    .line 107
    :cond_2
    throw v0
.end method
