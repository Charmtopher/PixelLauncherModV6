.class public Lcom/android/launcher3/LauncherProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field public static final AUTHORITY:Ljava/lang/String;


# instance fields
.field private mListenerHandler:Landroid/os/Handler;

.field final mListenerWrapper:Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;

.field protected mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    .line 300
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

.method static constructor <clinit>()V
    .locals 1

    .line 85
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->AUTHORITY:Ljava/lang/String;

    sput-object v0, Lcom/android/launcher3/LauncherProvider;->AUTHORITY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 91
    new-instance v0, Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;-><init>(B)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mListenerWrapper:Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;

    return-void
.end method

.method static addModifiedTime(Landroid/content/ContentValues;)V
    .locals 3

    .line 440
    const-string v0, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 441
    return-void
.end method

.method private clearFlagEmptyDbCreated()V
    .locals 2

    .line 444
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EMPTY_DATABASE_CREATED"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 445
    return-void
.end method

.method private createWorkspaceLoaderFromAppRestriction(Landroid/appwidget/AppWidgetHost;)Lcom/android/launcher3/AutoInstallsLayout;
    .locals 5

    .line 504
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 505
    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 506
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 507
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 508
    return-object v2

    .line 511
    :cond_0
    const-string v3, "workspace.configuration.package.name"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 512
    if-eqz v1, :cond_1

    .line 514
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 515
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 516
    iget-object v4, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-static {v0, v1, v3, p1, v4}, Lcom/android/launcher3/AutoInstallsLayout;->get(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 518
    :catch_0
    move-exception p1

    .line 519
    const-string v0, "LauncherProvider"

    const-string v1, "Target package for restricted profile not found"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 520
    return-object v2

    .line 523
    :cond_1
    return-object v2
.end method

.method static dbInsertAndCheck(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 1

    .line 175
    if-eqz p4, :cond_1

    .line 178
    const-string v0, "_id"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0, p2, p4}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->checkId(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 182
    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0

    .line 179
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error: attempting to add item without specifying an id"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 176
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error: attempting to insert null values"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private deleteEmptyFolders()Ljava/util/ArrayList;
    .locals 13

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 407
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 408
    :try_start_0
    new-instance v10, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v10, v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 410
    const/4 v11, 0x0

    :try_start_1
    const-string v5, "itemType = 2 AND _id NOT IN (SELECT container FROM favorites)"

    .line 415
    const-string v3, "favorites"

    const-string v2, "_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 418
    const/4 v3, 0x0

    :try_start_2
    invoke-static {v2, v3, v0}, Lcom/android/launcher3/provider/LauncherDbUtils;->iterateCursor(Landroid/database/Cursor;ILjava/util/Collection;)Ljava/util/Collection;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 419
    if-eqz v2, :cond_0

    :try_start_3
    invoke-static {v11, v2}, Lcom/android/launcher3/LauncherProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 420
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 421
    const-string v2, "favorites"

    const-string v3, "_id"

    invoke-static {v3, v0}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 424
    :cond_1
    iget-object v1, v10, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 425
    :try_start_4
    invoke-static {v11, v10}, Lcom/android/launcher3/LauncherProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 419
    :catchall_0
    move-exception v1

    move-object v3, v11

    goto :goto_0

    .line 415
    :catch_0
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 419
    :catchall_1
    move-exception v3

    move-object v12, v3

    move-object v3, v1

    move-object v1, v12

    :goto_0
    if-eqz v2, :cond_2

    :try_start_6
    invoke-static {v3, v2}, Lcom/android/launcher3/LauncherProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    throw v1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 425
    :catchall_2
    move-exception v1

    goto :goto_1

    .line 408
    :catch_1
    move-exception v1

    move-object v11, v1

    :try_start_7
    throw v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 425
    :goto_1
    :try_start_8
    invoke-static {v11, v10}, Lcom/android/launcher3/LauncherProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v1
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_2

    .line 428
    :catch_2
    move-exception v1

    .line 426
    const-string v2, "LauncherProvider"

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 429
    :goto_2
    return-object v0
.end method

.method private getDefaultLayoutParser(Landroid/appwidget/AppWidgetHost;)Lcom/android/launcher3/DefaultLayoutParser;
    .locals 8

    .line 527
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 528
    iget v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultLayoutId:I

    .line 530
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v2

    .line 531
    invoke-virtual {v2}, Lcom/android/launcher3/compat/UserManagerCompat;->isDemoUser()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->demoModeLayoutId:I

    if-eqz v2, :cond_0

    .line 532
    iget v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->demoModeLayoutId:I

    .line 535
    :cond_0
    move v7, v1

    new-instance v0, Lcom/android/launcher3/DefaultLayoutParser;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 536
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V

    .line 535
    return-object v0
.end method

.method static getMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 4

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT MAX(_id) FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 1081
    nop

    .line 1082
    const-wide/16 v0, -0x1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1083
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_0

    .line 1085
    :cond_0
    move-wide v2, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 1086
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1089
    :cond_1
    cmp-long p0, v2, v0

    if-eqz p0, :cond_2

    .line 1093
    return-wide v2

    .line 1090
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: could not query max id in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initializeExternalAdd(Landroid/content/ContentValues;)Z
    .locals 8

    .line 233
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->generateNewItemId()J

    move-result-wide v0

    .line 234
    const-string v2, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 238
    const-string v0, "itemType"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 239
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    const-string v0, "appWidgetId"

    .line 241
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 243
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 244
    const-string v2, "appWidgetProvider"

    .line 245
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 247
    if-eqz v2, :cond_1

    .line 249
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->newLauncherWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v3

    .line 250
    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v4

    .line 251
    const-string v5, "appWidgetId"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 252
    invoke-virtual {v0, v4, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    invoke-virtual {v3, v4}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    return v1

    .line 259
    :cond_0
    goto :goto_0

    .line 256
    :catch_0
    move-exception p1

    .line 257
    const-string v0, "LauncherProvider"

    const-string v2, "Failed to initialize external widget"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    return v1

    .line 261
    :cond_1
    return v1

    .line 266
    :cond_2
    :goto_0
    const-string v0, "screen"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 267
    const/4 p1, 0x0

    .line 269
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "INSERT OR IGNORE INTO workspaceScreens (_id, screenRank) select ?, (ifnull(MAX(screenRank), -1)+1) from workspaceScreens"

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 272
    const/4 p1, 0x1

    :try_start_2
    invoke-virtual {v0, p1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 274
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 275
    const-string v3, "_id"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 276
    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    const-string v4, "workspaceScreens"

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->checkId(Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    return p1

    .line 281
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 278
    :catch_1
    move-exception p1

    move-object p1, v0

    goto :goto_2

    .line 281
    :catchall_1
    move-exception v0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    :goto_1
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    throw p1

    .line 278
    :catch_2
    move-exception v0

    .line 279
    :goto_2
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    return v1
.end method

.method private declared-synchronized loadDefaultFavoritesIfNecessary()V
    .locals 10

    monitor-enter p0

    .line 455
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 457
    const-string v1, "EMPTY_DATABASE_CREATED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 458
    const-string v0, "LauncherProvider"

    const-string v1, "loading default workspace"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->newLauncherWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v0

    .line 461
    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherProvider;->createWorkspaceLoaderFromAppRestriction(Landroid/appwidget/AppWidgetHost;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object v1

    .line 462
    if-nez v1, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-static {v1, v0, v3}, Lcom/android/launcher3/AutoInstallsLayout;->get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object v1

    .line 465
    :cond_0
    const/4 v9, 0x1

    if-nez v1, :cond_2

    .line 466
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/Partner;->get(Landroid/content/pm/PackageManager;)Lcom/android/launcher3/Partner;

    move-result-object v3

    .line 467
    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/android/launcher3/Partner;->mResources:Landroid/content/res/Resources;

    const-string v5, "partner_default_layout"

    const-string v6, "xml"

    iget-object v7, v3, Lcom/android/launcher3/Partner;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v9

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    if-eqz v4, :cond_2

    .line 468
    iget-object v7, v3, Lcom/android/launcher3/Partner;->mResources:Landroid/content/res/Resources;

    .line 469
    const-string v4, "partner_default_layout"

    const-string v5, "xml"

    .line 470
    iget-object v3, v3, Lcom/android/launcher3/Partner;->mPackageName:Ljava/lang/String;

    .line 469
    invoke-virtual {v7, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 471
    if-eqz v8, :cond_2

    .line 472
    new-instance v1, Lcom/android/launcher3/DefaultLayoutParser;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    move-object v3, v1

    move-object v5, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V

    .line 478
    :cond_2
    if-eqz v1, :cond_3

    .line 479
    move v2, v9

    goto :goto_1

    .line 478
    :cond_3
    nop

    .line 479
    :goto_1
    if-nez v1, :cond_4

    .line 480
    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherProvider;->getDefaultLayoutParser(Landroid/appwidget/AppWidgetHost;)Lcom/android/launcher3/DefaultLayoutParser;

    move-result-object v1

    .line 485
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v4, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 487
    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v4, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout;)I

    move-result v1

    if-gtz v1, :cond_5

    if-eqz v2, :cond_5

    .line 490
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 491
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 492
    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherProvider;->getDefaultLayoutParser(Landroid/appwidget/AppWidgetHost;)Lcom/android/launcher3/DefaultLayoutParser;

    move-result-object v0

    .line 491
    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout;)I

    .line 494
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->clearFlagEmptyDbCreated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    :cond_6
    monitor-exit p0

    return-void

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private reloadLauncherIfExternal()V
    .locals 2

    .line 186
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 187
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/LauncherAppState;

    .line 188
    if-eqz v0, :cond_0

    .line 189
    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    .line 192
    :cond_0
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 3

    .line 310
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->createDbIfNotExists()V

    .line 311
    new-instance v0, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 312
    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    .line 313
    iget-object v2, v0, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 314
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->reloadLauncherIfExternal()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    nop

    .line 316
    invoke-static {v1, v0}, Lcom/android/launcher3/LauncherProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 315
    return-object p1

    .line 316
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 311
    :catch_0
    move-exception p1

    move-object v1, p1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    :goto_0
    invoke-static {v1, v0}, Lcom/android/launcher3/LauncherProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p1
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 10

    .line 287
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->createDbIfNotExists()V

    .line 288
    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 290
    iget-object p1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 291
    new-instance v1, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v1, p1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 292
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p2

    .line 293
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    .line 294
    aget-object v6, p2, v5

    invoke-static {v6}, Lcom/android/launcher3/LauncherProvider;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 295
    iget-object v6, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v7, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    aget-object v8, p2, v5

    invoke-static {v6, p1, v7, v2, v8}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 296
    invoke-static {v2, v1}, Lcom/android/launcher3/LauncherProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    return v4

    .line 293
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 299
    :cond_1
    :try_start_1
    iget-object p1, v1, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    invoke-static {v2, v1}, Lcom/android/launcher3/LauncherProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 302
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->notifyListeners()V

    .line 303
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->reloadLauncherIfExternal()V

    .line 304
    array-length p1, p2

    return p1

    .line 300
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 291
    :catch_0
    move-exception p1

    move-object v2, p1

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 300
    :goto_1
    invoke-static {v2, v1}, Lcom/android/launcher3/LauncherProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 354
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p3

    const/4 v0, 0x0

    if-eq p2, p3, :cond_0

    .line 355
    return-object v0

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->createDbIfNotExists()V

    .line 359
    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/4 v1, 0x0

    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p3, "create_empty_db"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x5

    goto :goto_0

    :sswitch_1
    const-string p3, "get_empty_db_flag"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :sswitch_2
    const-string p3, "load_default_favorites"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x6

    goto :goto_0

    :sswitch_3
    const-string p3, "clear_empty_db_flag"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p2, v1

    goto :goto_0

    :sswitch_4
    const-string p3, "generate_new_screen_id"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x4

    goto :goto_0

    :sswitch_5
    const-string p3, "generate_new_item_id"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x3

    goto :goto_0

    :sswitch_6
    const-string p3, "remove_ghost_widgets"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x7

    goto :goto_0

    :sswitch_7
    const-string p3, "delete_empty_folders"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x2

    :cond_1
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 398
    return-object v0

    .line 394
    :pswitch_0
    iget-object p1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object p2, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->removeGhostWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 395
    return-object v0

    .line 390
    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->loadDefaultFavoritesIfNecessary()V

    .line 391
    return-object v0

    .line 386
    :pswitch_2
    iget-object p1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object p2, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 387
    return-object v0

    .line 381
    :pswitch_3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 382
    const-string p2, "value"

    iget-object p3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-wide v0, p3, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p3, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p3, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    iget-wide v0, p3, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 383
    return-object p1

    .line 382
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Error: max screen id was not initialized"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 376
    :pswitch_4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 377
    const-string p2, "value"

    iget-object p3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->generateNewItemId()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 378
    return-object p1

    .line 371
    :pswitch_5
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 372
    const-string p2, "value"

    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->deleteEmptyFolders()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 373
    return-object p1

    .line 365
    :pswitch_6
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 366
    const-string p2, "value"

    .line 367
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p3

    const-string v0, "EMPTY_DATABASE_CREATED"

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    .line 366
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 368
    return-object p1

    .line 361
    :pswitch_7
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->clearFlagEmptyDbCreated()V

    .line 362
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x772f6ec1 -> :sswitch_7
        -0x5d566b7c -> :sswitch_6
        -0x4200a9a2 -> :sswitch_5
        -0x3d63635b -> :sswitch_4
        -0x3c1ca8d7 -> :sswitch_3
        0x1c6a9ec0 -> :sswitch_2
        0x28c62c72 -> :sswitch_1
        0x7e36b893 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final declared-synchronized createDbIfNotExists()V
    .locals 3

    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    if-nez v0, :cond_1

    .line 144
    new-instance v0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mListenerHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 146
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/provider/RestoreDbTask;->isPending(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-static {v0}, Lcom/android/launcher3/provider/RestoreDbTask;->performRestore(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/provider/RestoreDbTask;->setPending(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_1
    monitor-exit p0

    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 321
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->createDbIfNotExists()V

    .line 322
    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 324
    iget-object p1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 326
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p3

    if-eq p2, p3, :cond_0

    const-string p2, "favorites"

    iget-object p3, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    .line 327
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 328
    iget-object p2, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object p3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->removeGhostWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 330
    :cond_0
    iget-object p2, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object p3, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 331
    if-lez p1, :cond_1

    .line 332
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->notifyListeners()V

    .line 333
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->reloadLauncherIfExternal()V

    .line 335
    :cond_1
    return p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 101
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/LauncherAppState;

    .line 102
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    const-string v1, ""

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/launcher3/LauncherModel;->dumpState(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 106
    return-void

    .line 103
    :cond_1
    :goto_0
    return-void
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 132
    iget-object p1, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "vnd.android.cursor.dir/"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 135
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "vnd.android.cursor.item/"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6

    .line 196
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->createDbIfNotExists()V

    .line 197
    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 200
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 201
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherProvider;->initializeExternalAdd(Landroid/content/ContentValues;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    return-object v3

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 207
    invoke-static {p2}, Lcom/android/launcher3/LauncherProvider;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 208
    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {v2, v1, v0, v3, p2}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 209
    const-wide/16 v4, 0x0

    cmp-long p2, v0, v4

    if-gez p2, :cond_1

    return-object v3

    .line 211
    :cond_1
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 212
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->notifyListeners()V

    .line 214
    sget-boolean p2, Lcom/android/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-eqz p2, :cond_2

    .line 215
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->reloadLauncherIfExternal()V

    goto :goto_0

    .line 218
    :cond_2
    sget-object p2, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/LauncherAppState;

    .line 219
    if-eqz p2, :cond_3

    const-string v0, "true"

    const-string v1, "isExternalAdd"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    iget-object p2, p2, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {p2}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    .line 223
    :cond_3
    const-string p2, "notify"

    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 224
    if-eqz p2, :cond_4

    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 225
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 228
    :cond_5
    :goto_0
    return-object p1
.end method

.method protected final notifyListeners()V
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mListenerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 437
    return-void
.end method

.method public onCreate()Z
    .locals 2

    .line 113
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mListenerWrapper:Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mListenerHandler:Landroid/os/Handler;

    .line 117
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/MainProcessInitializer;->initialize(Landroid/content/Context;)V

    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 160
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->createDbIfNotExists()V

    .line 162
    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 163
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 164
    iget-object p3, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 166
    iget-object p3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 167
    iget-object v4, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 168
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 170
    return-object p2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 340
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->createDbIfNotExists()V

    .line 341
    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 343
    invoke-static {p2}, Lcom/android/launcher3/LauncherProvider;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 344
    iget-object p1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 345
    iget-object p3, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object p4, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {p1, p3, p2, p4, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 346
    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->notifyListeners()V

    .line 348
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->reloadLauncherIfExternal()V

    .line 349
    return p1
.end method
