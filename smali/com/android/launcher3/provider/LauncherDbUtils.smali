.class public Lcom/android/launcher3/provider/LauncherDbUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getScreenIdsFromCursor(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 2

    .line 106
    :try_start_0
    const-string v0, "_id"

    .line 107
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-static {p0, v0, v1}, Lcom/android/launcher3/provider/LauncherDbUtils;->iterateCursor(Landroid/database/Cursor;ILjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 106
    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static iterateCursor(Landroid/database/Cursor;ILjava/util/Collection;)Ljava/util/Collection;
    .locals 2

    .line 115
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_0
    return-object p2
.end method

.method public static prepareScreenZeroToHostQsb(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 12

    .line 48
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v1, p1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 50
    const/4 v2, 0x0

    :try_start_1
    const-string v4, "workspaceScreens"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "screenRank"

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/provider/LauncherDbUtils;->getScreenIdsFromCursor(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v3

    .line 53
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 55
    iget-object p0, v1, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :try_start_2
    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return v5

    .line 58
    :cond_0
    :try_start_3
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_3

    .line 60
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 62
    nop

    .line 63
    const-wide/16 v6, 0x1

    move-wide v10, v6

    :goto_0
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_1

    add-long/2addr v10, v6

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {p1, v8, v9, v10, v11}, Lcom/android/launcher3/provider/LauncherDbUtils;->renameScreen(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    .line 68
    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p1, v3, v4, v8, v9}, Lcom/android/launcher3/provider/LauncherDbUtils;->renameScreen(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    .line 72
    :cond_3
    const-string v3, "favorites"

    const-string v4, "container = -100 and screen = 0 and cellY = 0"

    invoke-static {p1, v3, v4}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v3, v3, v8

    if-nez v3, :cond_4

    .line 75
    iget-object p0, v1, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    :try_start_4
    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return v5

    .line 79
    :cond_4
    :try_start_5
    new-instance v3, Lcom/android/launcher3/provider/LossyScreenMigrationTask;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v3, p0, v4, p1}, Lcom/android/launcher3/provider/LossyScreenMigrationTask;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 80
    invoke-virtual {v3, v8, v9}, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->migrateScreen(J)V

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    iget-object p1, v3, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mUpdates:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    iget-object v6, v3, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mOriginalItems:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v7, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    iget v7, v6, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    iget v8, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    if-ne v7, v8, :cond_6

    iget v7, v6, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    iget v8, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    if-ne v7, v8, :cond_6

    iget v7, v6, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    iget v8, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    if-ne v7, v8, :cond_6

    iget v6, v6, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    iget v7, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    if-eq v6, v7, :cond_5

    :cond_6
    invoke-virtual {p0}, Landroid/content/ContentValues;->clear()V

    invoke-virtual {v4, p0}, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->addToContentValues(Landroid/content/ContentValues;)V

    iget-object v6, v3, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "favorites"

    const-string v8, "_id = ?"

    new-array v9, v5, [Ljava/lang/String;

    iget-wide v10, v4, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v0

    invoke-virtual {v6, v7, p0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    iget-object p0, v3, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    iget-object v4, v3, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    iget-wide v6, p1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    iget-object p0, v3, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    iget-object p0, v3, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string p1, "favorites"

    const-string v4, "_id"

    iget-object v3, v3, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 81
    :cond_9
    iget-object p0, v1, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 82
    :try_start_6
    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    return v5

    .line 83
    :catchall_0
    move-exception p0

    goto :goto_3

    .line 48
    :catch_0
    move-exception p0

    move-object v2, p0

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 83
    :goto_3
    if-eqz v2, :cond_a

    :try_start_8
    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_4

    :catch_1
    move-exception p1

    :try_start_9
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V

    :goto_4
    throw p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :catch_2
    move-exception p0

    .line 84
    const-string p1, "LauncherDbUtils"

    const-string v1, "Failed to update workspace size"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    return v0
.end method

.method private static renameScreen(Landroid/database/sqlite/SQLiteDatabase;JJ)V
    .locals 2

    .line 90
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    .line 92
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 93
    const-string p2, "_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 94
    const-string p2, "workspaceScreens"

    const-string v1, "_id = ?"

    invoke-virtual {p0, p2, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 96
    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    .line 97
    const-string p2, "screen"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    const-string p2, "favorites"

    const-string p3, "container = -100 and screen = ?"

    invoke-virtual {p0, p2, p1, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 99
    return-void
.end method
