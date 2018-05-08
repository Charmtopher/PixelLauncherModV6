.class public Lcom/android/launcher3/AllAppsList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public added:Ljava/util/ArrayList;

.field public final data:Ljava/util/ArrayList;

.field private mAppFilter:Lcom/android/launcher3/AppFilter;

.field private mIconCache:Lcom/android/launcher3/IconCache;

.field public modified:Ljava/util/ArrayList;

.field public removed:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/IconCache;Lcom/android/launcher3/AppFilter;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 64
    iput-object p1, p0, Lcom/android/launcher3/AllAppsList;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 65
    iput-object p2, p0, Lcom/android/launcher3/AllAppsList;->mAppFilter:Lcom/android/launcher3/AppFilter;

    .line 66
    return-void
.end method

.method private findAppInfo(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/AppInfo;
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/AppInfo;

    .line 242
    iget-object v2, v1, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    return-object v1

    .line 245
    :cond_0
    goto :goto_0

    .line 246
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final add(Lcom/android/launcher3/AppInfo;Landroid/content/pm/LauncherActivityInfo;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->mAppFilter:Lcom/android/launcher3/AppFilter;

    iget-object v1, p1, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    return-void

    .line 78
    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/AllAppsList;->findAppInfo(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/AppInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->mIconCache:Lcom/android/launcher3/IconCache;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    .line 83
    iget-object p2, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object p2, p0, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public final addPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .line 126
    invoke-static {p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    .line 127
    invoke-virtual {v0, p2, p3}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p2

    .line 130
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    .line 131
    new-instance v1, Lcom/android/launcher3/AppInfo;

    invoke-direct {v1, p1, v0, p3}, Lcom/android/launcher3/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/AllAppsList;->add(Lcom/android/launcher3/AppInfo;Landroid/content/pm/LauncherActivityInfo;)V

    .line 132
    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method

.method public final removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    .line 140
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 141
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/AppInfo;

    .line 142
    iget-object v3, v2, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    iget-object v3, p0, Lcom/android/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 140
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 147
    :cond_1
    return-void
.end method

.method public final updateDisabledFlags(Lcom/android/launcher3/util/ItemInfoMatcher;Lcom/android/launcher3/util/FlagOp;)V
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    .line 154
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 155
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/AppInfo;

    .line 156
    iget-object v3, v2, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher3/util/ItemInfoMatcher;->matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    iget v3, v2, Lcom/android/launcher3/AppInfo;->runtimeStatusFlags:I

    invoke-virtual {p2, v3}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/AppInfo;->runtimeStatusFlags:I

    .line 158
    iget-object v3, p0, Lcom/android/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 161
    :cond_1
    return-void
.end method

.method public final updateIconsAndLabels(Ljava/util/HashSet;Landroid/os/UserHandle;Ljava/util/ArrayList;)V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/AppInfo;

    .line 166
    iget-object v2, v1, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/android/launcher3/AllAppsList;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/IconCache;->updateTitleAndIcon(Lcom/android/launcher3/AppInfo;)V

    .line 168
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_0
    goto :goto_0

    .line 171
    :cond_1
    return-void
.end method

.method public final updatePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 7

    .line 177
    invoke-static {p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    .line 178
    invoke-virtual {v0, p2, p3}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 180
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_6

    .line 183
    iget-object v1, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    .line 184
    iget-object v3, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/AppInfo;

    .line 185
    iget-object v4, v3, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 186
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 187
    iget-object v4, v3, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v2

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_2

    .line 188
    const-string v4, "AllAppsList"

    const-string v5, "Shortcut will be removed due to app component name change."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v4, p0, Lcom/android/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v3, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 183
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 197
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    .line 198
    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/android/launcher3/AllAppsList;->findAppInfo(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/AppInfo;

    move-result-object v1

    .line 199
    if-nez v1, :cond_4

    .line 200
    new-instance v1, Lcom/android/launcher3/AppInfo;

    invoke-direct {v1, p1, v0, p3}, Lcom/android/launcher3/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/AllAppsList;->add(Lcom/android/launcher3/AppInfo;Landroid/content/pm/LauncherActivityInfo;)V

    goto :goto_2

    .line 202
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/AllAppsList;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v3, v1, v0, v2}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    .line 203
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    goto :goto_2

    :cond_5
    return-void

    .line 208
    :cond_6
    iget-object p1, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_3
    if-ltz p1, :cond_8

    .line 209
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 210
    iget-object v1, v0, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p3, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 211
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 212
    iget-object v1, p0, Lcom/android/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v1, p0, Lcom/android/launcher3/AllAppsList;->mIconCache:Lcom/android/launcher3/IconCache;

    iget-object v0, v0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v0, p3}, Lcom/android/launcher3/IconCache;->remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 214
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 208
    :cond_7
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    .line 218
    :cond_8
    return-void
.end method
