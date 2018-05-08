.class public Lcom/android/launcher3/model/AddWorkspaceItemsTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "SourceFile"


# instance fields
.field private final mItemList:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->mItemList:Ljava/util/List;

    .line 52
    return-void
.end method

.method private findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z
    .locals 2

    .line 279
    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 281
    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    iget v1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    .line 282
    if-eqz p2, :cond_0

    .line 283
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/ItemInfo;

    .line 284
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    .line 285
    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {v0, p3, p4, p5}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    .line 56
    iget-object v1, v0, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    return-void

    .line 59
    :cond_0
    move-object/from16 v9, p1

    iget-object v10, v9, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    .line 61
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 62
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-static {v10}, Lcom/android/launcher3/LauncherModel;->loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v13

    .line 68
    monitor-enter p2

    .line 70
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    iget-object v2, v0, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->mItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v14, 0x1

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 72
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/ItemInfo;

    .line 73
    iget v4, v3, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-eqz v4, :cond_2

    iget v4, v3, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-ne v4, v14, :cond_3

    .line 76
    :cond_2
    invoke-virtual {v3}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iget-object v5, v3, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v4, v5}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->shortcutExists(Lcom/android/launcher3/model/BgDataModel;Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 77
    :cond_3
    iget v4, v3, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-nez v4, :cond_4

    .line 82
    instance-of v4, v3, Lcom/android/launcher3/AppInfo;

    if-eqz v4, :cond_4

    .line 83
    check-cast v3, Lcom/android/launcher3/AppInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/AppInfo;->makeShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v3

    .line 86
    :cond_4
    if-eqz v3, :cond_5

    .line 87
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_5
    goto :goto_0

    .line 91
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/launcher3/ItemInfo;

    .line 93
    iget v6, v7, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v5, v7, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object v1, v0

    move-object v2, v9

    move-object v3, v8

    move-object v4, v13

    move/from16 v16, v5

    move-object v5, v12

    move-object v14, v7

    move/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->findSpaceForItem(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/util/Pair;

    move-result-object v1

    .line 95
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 96
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [I

    .line 99
    instance-of v2, v14, Lcom/android/launcher3/ShortcutInfo;

    if-nez v2, :cond_9

    instance-of v2, v14, Lcom/android/launcher3/FolderInfo;

    if-nez v2, :cond_9

    instance-of v2, v14, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v2, :cond_7

    goto :goto_2

    .line 102
    :cond_7
    instance-of v2, v14, Lcom/android/launcher3/AppInfo;

    if-eqz v2, :cond_8

    .line 103
    move-object v7, v14

    check-cast v7, Lcom/android/launcher3/AppInfo;

    invoke-virtual {v7}, Lcom/android/launcher3/AppInfo;->makeShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v7

    .line 109
    move-object v14, v7

    goto :goto_3

    .line 105
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected info type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_9
    :goto_2
    nop

    .line 109
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v17

    const-wide/16 v19, -0x64

    const/4 v2, 0x0

    aget v23, v1, v2

    const/4 v2, 0x1

    aget v24, v1, v2

    move-object/from16 v18, v14

    invoke-virtual/range {v17 .. v24}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 114
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    nop

    .line 91
    move v14, v2

    goto :goto_1

    .line 116
    :cond_a
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-static {v10, v13}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 121
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 122
    new-instance v1, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;

    invoke-direct {v1, v0, v11, v12}, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;-><init>(Lcom/android/launcher3/model/AddWorkspaceItemsTask;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 143
    :cond_b
    return-void

    .line 116
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final findSpaceForItem(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/util/Pair;
    .locals 17

    move-object/from16 v1, p2

    move-object/from16 v0, p3

    .line 214
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    .line 217
    monitor-enter p2

    .line 218
    :try_start_0
    iget-object v3, v1, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/ItemInfo;

    .line 219
    iget-wide v5, v4, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v7, -0x64

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 220
    iget-wide v5, v4, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v2, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 221
    if-nez v5, :cond_0

    .line 222
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 223
    iget-wide v6, v4, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v2, v6, v7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 225
    :cond_0
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_1
    goto :goto_0

    .line 228
    :cond_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    const-wide/16 v3, 0x0

    .line 232
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 233
    const/4 v5, 0x0

    .line 235
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 237
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    .line 238
    const/4 v12, 0x1

    xor-int/2addr v6, v12

    if-ge v6, v11, :cond_3

    .line 239
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 240
    nop

    .line 241
    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/util/ArrayList;

    .line 240
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v8, v1

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v5

    .line 244
    :cond_3
    move-wide v15, v3

    move v3, v5

    move-wide v4, v15

    if-nez v3, :cond_6

    .line 246
    move-wide v5, v4

    move v4, v12

    :goto_1
    if-ge v4, v11, :cond_5

    .line 247
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 248
    nop

    .line 249
    invoke-virtual {v2, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/util/ArrayList;

    .line 248
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v8, v1

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 251
    nop

    .line 252
    nop

    .line 257
    move v3, v12

    goto :goto_2

    .line 246
    :cond_4
    add-int/lit8 v4, v4, 0x1

    move-wide v5, v13

    goto :goto_1

    .line 257
    :cond_5
    move-wide v13, v5

    goto :goto_2

    :cond_6
    move-wide v13, v4

    :goto_2
    if-nez v3, :cond_8

    .line 259
    move-object/from16 v3, p1

    iget-object v4, v3, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "generate_new_screen_id"

    invoke-static {v4, v5}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "value"

    .line 261
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 264
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v4, p4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    nop

    .line 269
    invoke-virtual {v2, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/ArrayList;

    .line 268
    move-object/from16 v5, p0

    move-object v6, v3

    move-object v8, v1

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    .line 270
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t find space to add the item"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_8
    :goto_3
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 228
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final shortcutExists(Lcom/android/launcher3/model/BgDataModel;Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .locals 11

    .line 155
    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 157
    return v0

    .line 159
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 162
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 164
    invoke-virtual {p2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    .line 165
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 167
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    .line 168
    invoke-virtual {p2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 171
    :cond_2
    nop

    .line 172
    invoke-virtual {p2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    .line 173
    invoke-virtual {p2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    :goto_0
    invoke-static {p2}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v5

    .line 177
    monitor-enter p1

    .line 178
    :try_start_0
    iget-object v6, p1, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v6}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/ItemInfo;

    .line 179
    instance-of v8, v7, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v8, :cond_5

    .line 180
    move-object v8, v7

    check-cast v8, Lcom/android/launcher3/ShortcutInfo;

    .line 181
    invoke-virtual {v7}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, v8, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v9, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 182
    new-instance v9, Landroid/content/Intent;

    invoke-virtual {v7}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-direct {v9, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 183
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 184
    invoke-virtual {v9, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    .line 185
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    .line 190
    :cond_3
    if-eqz v5, :cond_5

    .line 191
    const/4 v7, 0x3

    invoke-virtual {v8, v7}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x2

    .line 192
    invoke-virtual {v8, v7}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 193
    invoke-virtual {v8}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_5

    if-eqz v1, :cond_5

    .line 195
    invoke-virtual {v8}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 196
    monitor-exit p1

    return v0

    .line 186
    :cond_4
    :goto_2
    monitor-exit p1

    return v0

    .line 200
    :cond_5
    goto :goto_1

    .line 201
    :cond_6
    monitor-exit p1

    .line 202
    return v3

    .line 201
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
