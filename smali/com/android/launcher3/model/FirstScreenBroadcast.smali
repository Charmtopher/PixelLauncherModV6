.class public Lcom/android/launcher3/model/FirstScreenBroadcast;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mPackagesForInstaller:Lcom/android/launcher3/util/MultiHashMap;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-direct {p0, p1}, Lcom/android/launcher3/model/FirstScreenBroadcast;->getPackagesForInstaller(Ljava/util/HashMap;)Lcom/android/launcher3/util/MultiHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/FirstScreenBroadcast;->mPackagesForInstaller:Lcom/android/launcher3/util/MultiHashMap;

    .line 65
    return-void
.end method

.method private static getPackageName(Lcom/android/launcher3/ItemInfo;)Ljava/lang/String;
    .locals 2

    .line 147
    nop

    .line 148
    instance-of v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 149
    check-cast p0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 150
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 151
    iget-object p0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 153
    move-object v1, p0

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {p0}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 156
    :cond_2
    :goto_0
    return-object v1
.end method

.method private getPackagesForInstaller(Ljava/util/HashMap;)Lcom/android/launcher3/util/MultiHashMap;
    .locals 3

    .line 73
    new-instance v0, Lcom/android/launcher3/util/MultiHashMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/MultiHashMap;-><init>()V

    .line 74
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/MultiHashMap;->addToList(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final sendBroadcasts(Landroid/content/Context;Ljava/util/List;)V
    .locals 15

    move-object/from16 v0, p1

    .line 86
    move-object v1, p0

    iget-object v1, v1, Lcom/android/launcher3/model/FirstScreenBroadcast;->mPackagesForInstaller:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/MultiHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 87
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/ItemInfo;

    instance-of v10, v9, Lcom/android/launcher3/FolderInfo;

    if-eqz v10, :cond_2

    move-object v10, v9

    check-cast v10, Lcom/android/launcher3/FolderInfo;

    iget-object v10, v10, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/ItemInfo;

    invoke-static {v11}, Lcom/android/launcher3/model/FirstScreenBroadcast;->getPackageName(Lcom/android/launcher3/ItemInfo;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v4, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-static {v9}, Lcom/android/launcher3/model/FirstScreenBroadcast;->getPackageName(Lcom/android/launcher3/ItemInfo;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-interface {v2, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    instance-of v11, v9, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v11, :cond_3

    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-wide v11, v9, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v13, -0x65

    cmp-long v11, v11, v13

    if-nez v11, :cond_4

    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-wide v11, v9, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v13, -0x64

    cmp-long v9, v11, v13

    if-nez v9, :cond_0

    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.android.launcher3.action.FIRST_SCREEN_ACTIVE_INSTALLS"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "folderItem"

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "workspaceItem"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "hotseatItem"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "widgetItem"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "verificationToken"

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v0, v4, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 88
    goto/16 :goto_0

    .line 89
    :cond_6
    return-void
.end method
