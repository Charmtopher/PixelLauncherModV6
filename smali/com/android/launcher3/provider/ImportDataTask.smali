.class public Lcom/android/launcher3/provider/ImportDataTask;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mHotseatSize:I

.field public mMaxGridSizeX:I

.field public mMaxGridSizeY:I

.field public final mOtherFavoritesUri:Landroid/net/Uri;

.field public final mOtherScreensUri:Landroid/net/Uri;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    .line 144
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/launcher3/provider/ImportDataTask;->mContext:Landroid/content/Context;

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "content://"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/workspaceScreens"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/provider/ImportDataTask;->mOtherScreensUri:Landroid/net/Uri;

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "content://"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/favorites"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/provider/ImportDataTask;->mOtherFavoritesUri:Landroid/net/Uri;

    .line 85
    return-void
.end method

.method static getPackage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .line 328
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 329
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    .line 328
    return-object p0
.end method


# virtual methods
.method public final importWorkspaceItems(JLandroid/util/LongSparseArray;)V
    .locals 46

    move-object/from16 v0, p0

    .line 132
    iget-object v1, v0, Lcom/android/launcher3/provider/ImportDataTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v1

    .line 133
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v1

    .line 132
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 137
    iget-object v2, v0, Lcom/android/launcher3/provider/ImportDataTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, v0, Lcom/android/launcher3/provider/ImportDataTask;->mOtherFavoritesUri:Landroid/net/Uri;

    const-string v6, "profileId = ? AND container = -100 AND screen = ? AND cellY = 0"

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v1, v7, v9

    .line 140
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x1

    aput-object v5, v7, v10

    .line 137
    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 143
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 144
    if-eqz v3, :cond_0

    invoke-static {v4, v3}, Lcom/android/launcher3/provider/ImportDataTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 147
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    const/16 v6, 0xf

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 151
    nop

    .line 154
    nop

    .line 156
    iget-object v7, v0, Lcom/android/launcher3/provider/ImportDataTask;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    iget-object v14, v0, Lcom/android/launcher3/provider/ImportDataTask;->mOtherFavoritesUri:Landroid/net/Uri;

    const/4 v15, 0x0

    const-string v16, "profileId = ?"

    new-array v7, v10, [Ljava/lang/String;

    aput-object v1, v7, v9

    const-string v18, "container"

    .line 157
    move-object/from16 v17, v7

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 156
    nop

    .line 165
    :try_start_1
    const-string v7, "_id"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 166
    const-string v8, "intent"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 167
    const-string v11, "title"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 168
    const-string v13, "container"

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 169
    const-string v14, "itemType"

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 170
    const-string v15, "appWidgetProvider"

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 171
    :try_start_2
    const-string v4, "screen"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 172
    const-string v6, "cellX"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 173
    const-string v2, "cellY"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 174
    const-string v10, "spanX"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 175
    const-string v9, "spanY"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 176
    move-object/from16 v19, v3

    const-string v3, "rank"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 177
    move/from16 v20, v11

    const-string v11, "icon"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 178
    move-object/from16 v21, v12

    const-string v12, "iconPackage"

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 179
    move/from16 v22, v15

    const-string v15, "iconResource"

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 181
    move/from16 v23, v3

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 182
    move/from16 v24, v11

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 184
    move/from16 v26, v15

    const/4 v15, 0x0

    const/16 v25, 0x0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 185
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 186
    move-object/from16 v27, v11

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 187
    invoke-static {v15, v11}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 188
    move/from16 v28, v7

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 189
    move/from16 v29, v14

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 191
    move/from16 v31, v12

    move/from16 v30, v13

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 193
    move/from16 v32, v4

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 194
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 195
    move/from16 v33, v2

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 196
    move/from16 v34, v6

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 198
    move/from16 v35, v9

    packed-switch v14, :pswitch_data_0

    .line 221
    move/from16 v36, v5

    invoke-virtual {v3, v14}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    goto :goto_1

    .line 200
    :pswitch_0
    move-object/from16 v9, p3

    invoke-virtual {v9, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    check-cast v9, Ljava/lang/Long;

    .line 201
    if-nez v9, :cond_1

    .line 202
    const-string v2, "ImportDataTask"

    const-string v4, "Skipping item %d, type %d not on a valid screen %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v6, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v9, 0x2

    aput-object v7, v6, v9

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    nop

    .line 184
    move-object/from16 v37, v3

    move/from16 v36, v5

    goto/16 :goto_4

    .line 206
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 207
    if-eqz v5, :cond_2

    const-wide/16 v17, 0x0

    cmp-long v9, v12, v17

    if-nez v9, :cond_2

    .line 209
    add-int/lit8 v16, v16, 0x1

    .line 212
    :cond_2
    iget v9, v0, Lcom/android/launcher3/provider/ImportDataTask;->mMaxGridSizeX:I

    move/from16 v36, v5

    add-int v5, v4, v2

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/provider/ImportDataTask;->mMaxGridSizeX:I

    .line 213
    iget v5, v0, Lcom/android/launcher3/provider/ImportDataTask;->mMaxGridSizeY:I

    add-int v9, v16, v6

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/provider/ImportDataTask;->mMaxGridSizeY:I

    .line 214
    goto :goto_2

    .line 217
    :pswitch_1
    move/from16 v36, v5

    iget v5, v0, Lcom/android/launcher3/provider/ImportDataTask;->mHotseatSize:I

    long-to-int v9, v12

    const/16 v17, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/provider/ImportDataTask;->mHotseatSize:I

    .line 218
    goto :goto_2

    .line 221
    :goto_1
    if-nez v5, :cond_3

    .line 222
    const-string v2, "ImportDataTask"

    const-string v4, "Skipping item %d, type %d not in a valid folder %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x0

    aput-object v6, v5, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    goto :goto_3

    .line 227
    :cond_3
    :goto_2
    move/from16 v5, v16

    .line 228
    const/4 v9, 0x4

    if-eq v7, v9, :cond_5

    packed-switch v7, :pswitch_data_1

    .line 260
    const-string v2, "ImportDataTask"

    const-string v4, "Skipping item %d, not a valid type %d"

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v11, 0x0

    aput-object v6, v5, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    nop

    .line 184
    :goto_3
    move-object/from16 v37, v3

    :goto_4
    move/from16 v39, v8

    move/from16 v41, v10

    move/from16 v8, v22

    move/from16 v44, v23

    move/from16 v43, v24

    move/from16 v42, v26

    move-object/from16 v7, v27

    move/from16 v40, v31

    const/4 v10, 0x0

    goto/16 :goto_7

    .line 230
    :pswitch_2
    const/4 v9, 0x2

    const/4 v9, 0x1

    invoke-virtual {v3, v11, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 232
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 233
    nop

    .line 264
    move-object/from16 v37, v3

    move v3, v7

    move/from16 v39, v8

    move/from16 v41, v10

    move/from16 v8, v22

    move/from16 v44, v23

    move/from16 v43, v24

    move/from16 v42, v26

    move-object/from16 v7, v27

    move/from16 v40, v31

    goto/16 :goto_6

    .line 245
    :pswitch_3
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v37, v3

    const/4 v3, 0x0

    invoke-static {v9, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    .line 246
    invoke-static {v9}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 247
    nop

    .line 252
    move/from16 v39, v8

    move/from16 v41, v10

    move/from16 v8, v26

    move-object/from16 v7, v27

    move/from16 v40, v31

    const/16 v38, 0x0

    goto :goto_5

    .line 249
    :cond_4
    const-string v3, "iconPackage"

    move/from16 v38, v7

    move/from16 v39, v8

    move/from16 v7, v31

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v40, v7

    move-object/from16 v7, v27

    invoke-virtual {v7, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v3, "iconResource"

    move/from16 v41, v10

    move/from16 v8, v26

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :goto_5
    const-string v3, "icon"

    move/from16 v42, v8

    move/from16 v10, v24

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 253
    const-string v3, "intent"

    move/from16 v43, v10

    const/4 v8, 0x0

    invoke-virtual {v9, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v3, "rank"

    move/from16 v8, v23

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 256
    const-string v3, "restored"

    move/from16 v44, v8

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    nop

    .line 264
    move/from16 v8, v22

    move/from16 v3, v38

    goto :goto_6

    .line 236
    :cond_5
    move-object/from16 v37, v3

    move/from16 v38, v7

    move/from16 v39, v8

    move/from16 v41, v10

    move/from16 v44, v23

    move/from16 v43, v24

    move/from16 v42, v26

    move-object/from16 v7, v27

    move/from16 v40, v31

    const-string v3, "restored"

    const/4 v8, 0x7

    .line 237
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 236
    invoke-virtual {v7, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    const-string v3, "appWidgetProvider"

    move/from16 v8, v22

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    nop

    .line 264
    move/from16 v3, v38

    const/4 v9, 0x0

    :goto_6
    const/16 v10, -0x65

    if-ne v14, v10, :cond_8

    .line 265
    if-nez v9, :cond_6

    .line 266
    const-string v2, "ImportDataTask"

    const-string v3, "Skipping item %d, null intent on hotseat"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v10, 0x0

    aput-object v4, v5, v10

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    nop

    .line 184
    :goto_7
    move-object v11, v7

    move/from16 v22, v8

    :goto_8
    move/from16 v7, v28

    move/from16 v14, v29

    move/from16 v13, v30

    move/from16 v4, v32

    move/from16 v2, v33

    move/from16 v6, v34

    move/from16 v9, v35

    move/from16 v5, v36

    move-object/from16 v3, v37

    move/from16 v8, v39

    move/from16 v12, v40

    move/from16 v10, v41

    move/from16 v26, v42

    move/from16 v24, v43

    move/from16 v23, v44

    goto/16 :goto_0

    .line 269
    :cond_6
    const/4 v10, 0x0

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    if-eqz v16, :cond_7

    .line 270
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    :cond_7
    invoke-static {v9}, Lcom/android/launcher3/provider/ImportDataTask;->getPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, v21

    invoke-virtual {v10, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 275
    :cond_8
    move-object/from16 v10, v21

    :goto_9
    const-string v9, "_id"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 276
    const-string v9, "itemType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 277
    const-string v3, "container"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 278
    const-string v3, "screen"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 279
    const-string v3, "cellX"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    const-string v3, "cellY"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    const-string v3, "spanX"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 282
    const-string v2, "spanY"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 283
    const-string v2, "title"

    move/from16 v3, v20

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    sget-object v2, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 285
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 284
    move-object/from16 v4, v19

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    if-gez v14, :cond_9

    .line 287
    move/from16 v2, v25

    add-int/lit8 v25, v2, 0x1

    goto :goto_a

    .line 290
    :cond_9
    move/from16 v2, v25

    :goto_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v5, 0xf

    if-lt v2, v5, :cond_a

    .line 291
    iget-object v2, v0, Lcom/android/launcher3/provider/ImportDataTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v6, Lcom/android/launcher3/LauncherProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 293
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    :cond_a
    nop

    .line 184
    move/from16 v20, v3

    move-object/from16 v19, v4

    move-object v11, v7

    move/from16 v22, v8

    move-object/from16 v21, v10

    goto/16 :goto_8

    .line 296
    :cond_b
    move-object/from16 v4, v19

    move-object/from16 v10, v21

    move/from16 v2, v25

    if-eqz v1, :cond_c

    const/4 v3, 0x0

    invoke-static {v3, v1}, Lcom/android/launcher3/provider/ImportDataTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 297
    :cond_c
    const-string v1, "ImportDataTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " items imported from external source"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/4 v1, 0x6

    if-lt v2, v1, :cond_f

    .line 301
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 302
    iget-object v1, v0, Lcom/android/launcher3/provider/ImportDataTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 304
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 307
    :cond_d
    iget-object v1, v0, Lcom/android/launcher3/provider/ImportDataTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/model/GridSizeMigrationTask;->removeBrokenHotseatItems(Landroid/content/Context;)Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v1

    .line 308
    iget-object v2, v0, Lcom/android/launcher3/provider/ImportDataTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    .line 312
    invoke-virtual {v1}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v3

    if-ge v3, v2, :cond_e

    .line 314
    new-instance v3, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;

    const/4 v5, 0x1

    add-int/2addr v15, v5

    move-object v11, v3

    move-object v12, v10

    move-object v13, v1

    move-object v14, v4

    move/from16 v16, v2

    invoke-direct/range {v11 .. v16}, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;-><init>(Ljava/util/HashSet;Lcom/android/launcher3/util/LongArrayMap;Ljava/util/ArrayList;II)V

    .line 316
    new-instance v2, Lcom/android/launcher3/provider/ImportDataTask$HotseatLayoutParser;

    iget-object v5, v0, Lcom/android/launcher3/provider/ImportDataTask;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, v3}, Lcom/android/launcher3/provider/ImportDataTask$HotseatLayoutParser;-><init>(Landroid/content/Context;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 317
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Lcom/android/launcher3/provider/ImportDataTask$HotseatLayoutParser;->loadLayout(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)I

    .line 318
    invoke-virtual {v1}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LongArrayMap;->keyAt(I)J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/android/launcher3/provider/ImportDataTask;->mHotseatSize:I

    .line 320
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 321
    iget-object v0, v0, Lcom/android/launcher3/provider/ImportDataTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 325
    :cond_e
    return-void

    .line 299
    :cond_f
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Insufficient data"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :catchall_0
    move-exception v0

    const/4 v5, 0x0

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v5, v4

    goto :goto_b

    .line 156
    :catch_0
    move-exception v0

    move-object v4, v0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 296
    :goto_b
    if-eqz v1, :cond_10

    invoke-static {v5, v1}, Lcom/android/launcher3/provider/ImportDataTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_10
    throw v0

    .line 144
    :catchall_2
    move-exception v0

    move-object v5, v4

    goto :goto_c

    .line 137
    :catch_1
    move-exception v0

    move-object v4, v0

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 144
    :catchall_3
    move-exception v0

    :goto_c
    if-eqz v3, :cond_11

    invoke-static {v4, v3}, Lcom/android/launcher3/provider/ImportDataTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_11
    throw v0

    :pswitch_data_0
    .packed-switch -0x65
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
