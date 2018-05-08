.class public Lcom/android/launcher3/model/PackageUpdatedTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "SourceFile"


# instance fields
.field private final mOp:I

.field private final mPackages:[Ljava/lang/String;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public varargs constructor <init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    .line 79
    iput p1, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    .line 80
    iput-object p2, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    .line 81
    iput-object p3, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 82
    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 86
    move-object/from16 v3, p3

    iget-object v4, v1, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    .line 87
    iget-object v5, v1, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 89
    iget-object v6, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 90
    array-length v7, v6

    .line 91
    sget-object v8, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    .line 92
    new-instance v9, Ljava/util/HashSet;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 93
    iget-object v10, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v9, v10}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ItemInfoMatcher;

    move-result-object v10

    .line 94
    iget v11, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v12, 0x4

    const/4 v13, 0x2

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_6

    .line 145
    :pswitch_0
    invoke-static {v4}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v8

    iget-object v10, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v8, v10}, Lcom/android/launcher3/compat/UserManagerCompat;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v8

    const/16 v10, 0x8

    if-eqz v8, :cond_0

    .line 146
    invoke-static {v10}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v8

    goto :goto_0

    .line 147
    :cond_0
    invoke-static {v10}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v8

    .line 149
    :goto_0
    iget-object v10, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v10}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofUser(Landroid/os/UserHandle;)Lcom/android/launcher3/util/ItemInfoMatcher;

    move-result-object v10

    .line 150
    invoke-virtual {v3, v10, v8}, Lcom/android/launcher3/AllAppsList;->updateDisabledFlags(Lcom/android/launcher3/util/ItemInfoMatcher;Lcom/android/launcher3/util/FlagOp;)V

    goto/16 :goto_6

    .line 138
    :pswitch_1
    iget v8, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v11, 0x5

    if-ne v8, v11, :cond_1

    .line 139
    invoke-static {v12}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v8

    goto :goto_1

    .line 140
    :cond_1
    invoke-static {v12}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v8

    .line 142
    :goto_1
    invoke-virtual {v3, v10, v8}, Lcom/android/launcher3/AllAppsList;->updateDisabledFlags(Lcom/android/launcher3/util/ItemInfoMatcher;Lcom/android/launcher3/util/FlagOp;)V

    .line 143
    goto/16 :goto_6

    .line 123
    :pswitch_2
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_2

    .line 124
    aget-object v11, v6, v8

    iget-object v15, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v5, v11, v15}, Lcom/android/launcher3/IconCache;->removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 123
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 129
    :cond_2
    :pswitch_3
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_3

    .line 131
    aget-object v11, v6, v8

    iget-object v15, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v11, v15}, Lcom/android/launcher3/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 132
    iget-object v11, v1, Lcom/android/launcher3/LauncherAppState;->mWidgetCache:Lcom/android/launcher3/WidgetPreviewLoader;

    aget-object v15, v6, v8

    iget-object v12, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v11, v15, v12}, Lcom/android/launcher3/WidgetPreviewLoader;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 129
    add-int/lit8 v8, v8, 0x1

    const/4 v12, 0x4

    goto :goto_3

    .line 134
    :cond_3
    invoke-static {v13}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v8

    .line 135
    goto :goto_6

    .line 113
    :pswitch_4
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_4

    .line 115
    aget-object v11, v6, v8

    iget-object v12, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v5, v11, v12}, Lcom/android/launcher3/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 116
    aget-object v11, v6, v8

    iget-object v12, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v11, v12}, Lcom/android/launcher3/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 117
    iget-object v11, v1, Lcom/android/launcher3/LauncherAppState;->mWidgetCache:Lcom/android/launcher3/WidgetPreviewLoader;

    aget-object v12, v6, v8

    iget-object v15, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v11, v12, v15}, Lcom/android/launcher3/WidgetPreviewLoader;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 113
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 120
    :cond_4
    invoke-static {v13}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v8

    .line 121
    goto :goto_6

    .line 96
    :pswitch_5
    const/4 v8, 0x0

    :goto_5
    if-ge v8, v7, :cond_6

    .line 98
    aget-object v11, v6, v8

    iget-object v12, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v5, v11, v12}, Lcom/android/launcher3/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 102
    aget-object v11, v6, v8

    iget-object v12, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v11, v12}, Lcom/android/launcher3/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 105
    sget-boolean v11, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    if-nez v11, :cond_5

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    iget-object v12, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v11, v12}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 106
    aget-object v11, v6, v8

    iget-object v12, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v4, v11, v12}, Lcom/android/launcher3/SessionCommitReceiver;->queueAppIconAddition(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 96
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 109
    :cond_6
    invoke-static {v13}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v8

    .line 110
    nop

    .line 154
    :goto_6
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 155
    iget-object v12, v3, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 156
    iget-object v12, v3, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 157
    iget-object v12, v3, Lcom/android/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 158
    iget-object v12, v3, Lcom/android/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 160
    new-instance v12, Ljava/util/ArrayList;

    iget-object v15, v3, Lcom/android/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-direct {v12, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 161
    iget-object v3, v3, Lcom/android/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 163
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 164
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_7

    .line 165
    new-instance v15, Lcom/android/launcher3/model/PackageUpdatedTask$1;

    invoke-direct {v15, v0, v11}, Lcom/android/launcher3/model/PackageUpdatedTask$1;-><init>(Lcom/android/launcher3/model/PackageUpdatedTask;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v15}, Lcom/android/launcher3/model/PackageUpdatedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 171
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/AppInfo;

    .line 172
    iget-object v14, v15, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v14, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    goto :goto_7

    .line 176
    :cond_7
    new-instance v11, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v11}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .line 179
    iget v14, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_9

    sget-object v14, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    if-eq v8, v14, :cond_8

    goto :goto_8

    .line 299
    :cond_8
    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v18, v12

    const/4 v10, 0x0

    goto/16 :goto_17

    .line 180
    :cond_9
    :goto_8
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 181
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 184
    iget v1, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    if-eq v1, v15, :cond_b

    iget v1, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v15, 0x2

    if-ne v1, v15, :cond_a

    goto :goto_9

    .line 185
    :cond_a
    const/4 v1, 0x0

    goto :goto_a

    .line 184
    :cond_b
    :goto_9
    nop

    .line 185
    const/4 v1, 0x1

    :goto_a
    monitor-enter p2

    .line 186
    :try_start_0
    iget-object v15, v2, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v15}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    check-cast v15, Lcom/android/launcher3/ItemInfo;

    .line 187
    move-object/from16 v18, v12

    instance-of v12, v15, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v12, :cond_1b

    iget-object v12, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    move/from16 v19, v7

    iget-object v7, v15, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v12, v7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 188
    check-cast v15, Lcom/android/launcher3/ShortcutInfo;

    .line 189
    nop

    .line 190
    nop

    .line 193
    iget-object v7, v15, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v7, :cond_c

    iget-object v7, v15, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v7, v7, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 194
    invoke-virtual {v9, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 195
    invoke-static {v4}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object v7

    .line 196
    iget-object v12, v15, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {v7, v12}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/content/Intent$ShortcutIconResource;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object v12

    .line 197
    invoke-virtual {v7}, Lcom/android/launcher3/graphics/LauncherIcons;->recycle()V

    .line 198
    if-eqz v12, :cond_c

    .line 199
    invoke-virtual {v12, v15}, Lcom/android/launcher3/graphics/BitmapInfo;->applyTo(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 200
    nop

    .line 204
    const/4 v7, 0x1

    goto :goto_c

    :cond_c
    const/4 v7, 0x0

    :goto_c
    invoke-virtual {v15}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v12

    .line 205
    if-eqz v12, :cond_14

    invoke-virtual {v10, v15, v12}, Lcom/android/launcher3/util/ItemInfoMatcher;->matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v16

    if-eqz v16, :cond_14

    .line 206
    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher3/AppInfo;

    .line 208
    move/from16 v20, v7

    const/16 v7, 0x10

    invoke-virtual {v15, v7}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 209
    move-object/from16 v21, v6

    iget-wide v6, v15, Lcom/android/launcher3/ShortcutInfo;->id:J

    move-object/from16 v22, v10

    move-object/from16 v23, v13

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v6, v7, v13}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 210
    iget v6, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_19

    goto :goto_d

    .line 211
    :cond_d
    move-object/from16 v21, v6

    move-object/from16 v22, v10

    move-object/from16 v23, v13

    :goto_d
    const/4 v6, 0x3

    invoke-virtual {v15, v6}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v7

    if-eqz v7, :cond_12

    if-eqz v1, :cond_12

    .line 216
    const/4 v6, 0x2

    invoke-virtual {v15, v6}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 218
    nop

    .line 219
    invoke-static {v4}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v6

    .line 220
    iget-object v7, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v6, v12, v7}, Lcom/android/launcher3/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 222
    new-instance v6, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v6, v4}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    .line 223
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v10, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v10}, Lcom/android/launcher3/util/PackageManagerHelper;->getAppLaunchIntent(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v6

    .line 224
    if-eqz v6, :cond_e

    .line 225
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 226
    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Lcom/android/launcher3/AppInfo;

    .line 229
    :cond_e
    if-eqz v6, :cond_f

    if-eqz v16, :cond_f

    .line 230
    iput-object v6, v15, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 231
    goto :goto_e

    .line 233
    :cond_f
    invoke-virtual {v15}, Lcom/android/launcher3/ShortcutInfo;->hasPromiseIconUi()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 234
    iget-wide v6, v15, Lcom/android/launcher3/ShortcutInfo;->id:J

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v6, v7, v12}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 235
    goto :goto_12

    .line 238
    :cond_10
    goto :goto_f

    .line 239
    :cond_11
    :goto_e
    const/4 v6, 0x0

    iput v6, v15, Lcom/android/launcher3/ShortcutInfo;->status:I

    .line 240
    nop

    .line 244
    const/16 v20, 0x1

    :cond_12
    :goto_f
    if-eqz v1, :cond_13

    iget v6, v15, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    if-nez v6, :cond_13

    .line 246
    iget-boolean v6, v15, Lcom/android/launcher3/ShortcutInfo;->usingLowResIcon:Z

    invoke-virtual {v5, v15, v6}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Z)V

    .line 247
    nop

    .line 250
    const/4 v7, 0x1

    goto :goto_10

    :cond_13
    move/from16 v7, v20

    :goto_10
    iget v6, v15, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    .line 251
    iget v10, v15, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    invoke-virtual {v8, v10}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v10

    iput v10, v15, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    .line 252
    iget v10, v15, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    if-eq v10, v6, :cond_15

    .line 253
    nop

    .line 257
    const/4 v6, 0x1

    goto :goto_11

    :cond_14
    move-object/from16 v21, v6

    move/from16 v20, v7

    move-object/from16 v22, v10

    move-object/from16 v23, v13

    move/from16 v7, v20

    :cond_15
    const/4 v6, 0x0

    :goto_11
    if-nez v7, :cond_16

    if-eqz v6, :cond_17

    .line 258
    :cond_16
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_17
    if-eqz v7, :cond_18

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/PackageUpdatedTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v6

    invoke-virtual {v6, v15}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 263
    :cond_18
    nop

    .line 186
    :cond_19
    :goto_12
    move-object/from16 v15, v17

    move-object/from16 v12, v18

    move/from16 v7, v19

    move-object/from16 v6, v21

    move-object/from16 v10, v22

    move-object/from16 v13, v23

    goto/16 :goto_b

    .line 263
    :cond_1a
    move-object/from16 v21, v6

    goto :goto_13

    :cond_1b
    move-object/from16 v21, v6

    move/from16 v19, v7

    :goto_13
    move-object/from16 v22, v10

    move-object/from16 v23, v13

    instance-of v6, v15, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v6, :cond_1c

    if-eqz v1, :cond_1c

    .line 264
    check-cast v15, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 265
    iget-object v6, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    iget-object v7, v15, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v6, v7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 266
    const/4 v6, 0x2

    invoke-virtual {v15, v6}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v7

    if-eqz v7, :cond_1c

    iget-object v6, v15, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 267
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 268
    iget v6, v15, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v6, v6, -0xb

    iput v6, v15, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 275
    iget v6, v15, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    const/4 v7, 0x4

    or-int/2addr v6, v7

    iput v6, v15, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 277
    move-object/from16 v6, v23

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/PackageUpdatedTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v10

    invoke-virtual {v10, v15}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/ItemInfo;)V

    goto :goto_14

    .line 281
    :cond_1c
    move-object/from16 v6, v23

    const/4 v7, 0x4

    .line 186
    :goto_14
    move-object v13, v6

    move-object/from16 v15, v17

    move-object/from16 v12, v18

    move/from16 v7, v19

    move-object/from16 v6, v21

    move-object/from16 v10, v22

    goto/16 :goto_b

    .line 282
    :cond_1d
    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v18, v12

    move-object v6, v13

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    iget-object v1, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v14, v1}, Lcom/android/launcher3/model/PackageUpdatedTask;->bindUpdatedShortcuts(Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    .line 285
    invoke-virtual {v11}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v1

    if-gtz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_15

    :cond_1e
    const/4 v1, 0x0

    :goto_15
    if-nez v1, :cond_1f

    .line 286
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofItemIds(Lcom/android/launcher3/util/LongArrayMap;Ljava/lang/Boolean;)Lcom/android/launcher3/util/ItemInfoMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/PackageUpdatedTask;->deleteAndBindComponentsRemoved(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    goto :goto_16

    .line 289
    :cond_1f
    const/4 v10, 0x0

    :goto_16
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    .line 290
    new-instance v1, Lcom/android/launcher3/model/PackageUpdatedTask$2;

    invoke-direct {v1, v0, v6}, Lcom/android/launcher3/model/PackageUpdatedTask$2;-><init>(Lcom/android/launcher3/model/PackageUpdatedTask;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/PackageUpdatedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 299
    :cond_20
    :goto_17
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 300
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 301
    iget v5, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_22

    .line 303
    move-object/from16 v5, v21

    invoke-static {v1, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 322
    :cond_21
    move-object/from16 v6, v18

    move/from16 v8, v19

    goto :goto_1a

    .line 307
    :cond_22
    move-object/from16 v5, v21

    iget v6, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_21

    .line 309
    invoke-static {v4}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v6

    .line 310
    move v7, v10

    :goto_18
    move/from16 v8, v19

    if-ge v7, v8, :cond_24

    .line 311
    aget-object v9, v5, v7

    iget-object v12, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v6, v9, v12}, Lcom/android/launcher3/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v9

    if-nez v9, :cond_23

    .line 312
    aget-object v9, v5, v7

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_23
    add-int/lit8 v7, v7, 0x1

    move/from16 v19, v8

    goto :goto_18

    .line 317
    :cond_24
    move-object/from16 v6, v18

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_19
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_25

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/AppInfo;

    .line 318
    iget-object v9, v9, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 319
    goto :goto_19

    .line 322
    :cond_25
    :goto_1a
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_27

    .line 323
    :cond_26
    iget-object v7, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v1, v7}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ItemInfoMatcher;

    move-result-object v7

    iget-object v9, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    .line 324
    new-instance v12, Lcom/android/launcher3/util/ItemInfoMatcher$5;

    invoke-direct {v12, v3, v9}, Lcom/android/launcher3/util/ItemInfoMatcher$5;-><init>(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    new-instance v3, Lcom/android/launcher3/util/ItemInfoMatcher$1;

    invoke-direct {v3, v7, v7, v12}, Lcom/android/launcher3/util/ItemInfoMatcher$1;-><init>(Lcom/android/launcher3/util/ItemInfoMatcher;Lcom/android/launcher3/util/ItemInfoMatcher;Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 325
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v11, v9}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofItemIds(Lcom/android/launcher3/util/LongArrayMap;Ljava/lang/Boolean;)Lcom/android/launcher3/util/ItemInfoMatcher;

    move-result-object v7

    new-instance v9, Lcom/android/launcher3/util/ItemInfoMatcher$2;

    invoke-direct {v9, v3, v3, v7}, Lcom/android/launcher3/util/ItemInfoMatcher$2;-><init>(Lcom/android/launcher3/util/ItemInfoMatcher;Lcom/android/launcher3/util/ItemInfoMatcher;Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 326
    invoke-virtual {v0, v9}, Lcom/android/launcher3/model/PackageUpdatedTask;->deleteAndBindComponentsRemoved(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 329
    iget-object v3, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v4, v1, v3}, Lcom/android/launcher3/InstallShortcutReceiver;->removeFromInstallQueue(Landroid/content/Context;Ljava/util/HashSet;Landroid/os/UserHandle;)V

    .line 332
    :cond_27
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    .line 334
    new-instance v1, Lcom/android/launcher3/model/PackageUpdatedTask$3;

    invoke-direct {v1, v0, v6}, Lcom/android/launcher3/model/PackageUpdatedTask$3;-><init>(Lcom/android/launcher3/model/PackageUpdatedTask;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/PackageUpdatedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 342
    :cond_28
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    if-eqz v1, :cond_2a

    iget v1, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2a

    .line 345
    :goto_1b
    if-ge v10, v8, :cond_29

    .line 346
    iget-object v1, v2, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    new-instance v3, Lcom/android/launcher3/util/PackageUserKey;

    aget-object v4, v5, v10

    iget-object v6, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-direct {v3, v4, v6}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object/from16 v4, p1

    invoke-virtual {v1, v4, v3}, Lcom/android/launcher3/model/WidgetsModel;->update(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)V

    .line 345
    add-int/lit8 v10, v10, 0x1

    goto :goto_1b

    .line 348
    :cond_29
    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/PackageUpdatedTask;->bindUpdatedWidgets(Lcom/android/launcher3/model/BgDataModel;)V

    .line 350
    :cond_2a
    return-void

    .line 282
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
