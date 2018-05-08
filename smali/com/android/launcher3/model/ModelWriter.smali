.class public Lcom/android/launcher3/model/ModelWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field final mContext:Landroid/content/Context;

.field private final mHasVerticalHotseat:Z

.field final mModel:Lcom/android/launcher3/LauncherModel;

.field final mUiHandler:Landroid/os/Handler;

.field final mVerifyChanges:Z

.field private final mWorkerExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/BgDataModel;ZZ)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/launcher3/model/ModelWriter;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 67
    iput-object p3, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 68
    new-instance p1, Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/launcher3/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    .line 69
    iput-boolean p4, p0, Lcom/android/launcher3/model/ModelWriter;->mHasVerticalHotseat:Z

    .line 70
    iput-boolean p5, p0, Lcom/android/launcher3/model/ModelWriter;->mVerifyChanges:Z

    .line 71
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter;->mUiHandler:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method public static synthetic lambda$addItemToDatabase$0(Lcom/android/launcher3/model/ModelWriter;Landroid/content/ContentResolver;Lcom/android/launcher3/util/ContentWriter;Lcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .locals 2

    .line 231
    sget-object v0, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/android/launcher3/util/ContentWriter;->getValues(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 233
    iget-object p1, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter p1

    .line 234
    :try_start_0
    iget-wide v0, p3, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/android/launcher3/model/ModelWriter;->checkItemInfoLocked(JLcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 235
    iget-object p2, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p4, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p2, p4, p3, v0}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;Z)V

    .line 236
    invoke-virtual {p5}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->verifyModel()V

    .line 237
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public static synthetic lambda$deleteFolderAndContentsFromDatabase$2(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/FolderInfo;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .locals 5

    .line 279
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 280
    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "container="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p1, Lcom/android/launcher3/FolderInfo;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 282
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v4}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;Ljava/lang/Iterable;)V

    .line 283
    iget-object v1, p1, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 285
    iget-wide v1, p1, Lcom/android/launcher3/FolderInfo;->id:J

    invoke-static {v1, v2}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/launcher3/ItemInfo;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/ItemInfo;)V

    .line 287
    invoke-virtual {p2}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->verifyModel()V

    .line 288
    return-void
.end method

.method public static synthetic lambda$deleteItemsFromDatabase$1(Lcom/android/launcher3/model/ModelWriter;Ljava/lang/Iterable;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .locals 5

    .line 262
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 263
    iget-wide v1, v0, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-static {v1, v2}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 264
    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 266
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/launcher3/ItemInfo;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/ItemInfo;)V

    .line 267
    invoke-virtual {p2}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->verifyModel()V

    .line 268
    goto :goto_0

    .line 269
    :cond_0
    return-void
.end method

.method private updateItemInfoProps(Lcom/android/launcher3/ItemInfo;JJII)V
    .locals 2

    .line 76
    iput-wide p2, p1, Lcom/android/launcher3/ItemInfo;->container:J

    .line 77
    iput p6, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 78
    iput p7, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 81
    const-wide/16 v0, -0x65

    cmp-long p2, p2, v0

    if-nez p2, :cond_1

    .line 82
    iget-boolean p2, p0, Lcom/android/launcher3/model/ModelWriter;->mHasVerticalHotseat:Z

    if-eqz p2, :cond_0

    .line 83
    iget-object p2, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p2

    iget-object p2, p2, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget p2, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    sub-int/2addr p2, p7

    add-int/lit8 p2, p2, -0x1

    int-to-long p2, p2

    goto :goto_0

    :cond_0
    int-to-long p2, p6

    :goto_0
    iput-wide p2, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    return-void

    .line 85
    :cond_1
    iput-wide p4, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 87
    return-void
.end method


# virtual methods
.method public final addItemToDatabase(Lcom/android/launcher3/ItemInfo;JJII)V
    .locals 7

    .line 218
    invoke-direct/range {p0 .. p7}, Lcom/android/launcher3/model/ModelWriter;->updateItemInfoProps(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 220
    new-instance v3, Lcom/android/launcher3/util/ContentWriter;

    iget-object p2, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-direct {v3, p2}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    .line 221
    iget-object p2, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 222
    invoke-virtual {p1, v3}, Lcom/android/launcher3/ItemInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    .line 224
    const-string p2, "generate_new_item_id"

    invoke-static {v2, p2}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "value"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/android/launcher3/ItemInfo;->id:J

    .line 225
    const-string p2, "_id"

    iget-wide p3, p1, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v3, p2, p3}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/launcher3/util/ContentWriter;

    .line 227
    new-instance v6, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-direct {v6, p0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    .line 229
    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 230
    iget-object p2, p0, Lcom/android/launcher3/model/ModelWriter;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$ItEGbDR_6cXLsuu8tWhEMI90Ypo;

    move-object v0, p3

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$ItEGbDR_6cXLsuu8tWhEMI90Ypo;-><init>(Lcom/android/launcher3/model/ModelWriter;Landroid/content/ContentResolver;Lcom/android/launcher3/util/ContentWriter;Lcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 239
    return-void
.end method

.method public final addOrMoveItemInDatabase(Lcom/android/launcher3/ItemInfo;JJII)V
    .locals 4

    .line 95
    iget-wide v0, p1, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 97
    invoke-virtual/range {p0 .. p7}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    return-void

    .line 100
    :cond_0
    invoke-virtual/range {p0 .. p7}, Lcom/android/launcher3/model/ModelWriter;->moveItemInDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 102
    return-void
.end method

.method final checkItemInfoLocked(JLcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 5

    .line 105
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/ItemInfo;

    .line 106
    if-eqz p1, :cond_4

    if-eq p3, p1, :cond_4

    .line 108
    instance-of p2, p1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz p2, :cond_0

    instance-of p2, p3, Lcom/android/launcher3/ShortcutInfo;

    if-eqz p2, :cond_0

    .line 109
    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/ShortcutInfo;

    .line 110
    move-object v0, p3

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 111
    iget-object v1, p2, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 112
    invoke-virtual {v1, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p2, Lcom/android/launcher3/ShortcutInfo;->id:J

    iget-wide v3, v0, Lcom/android/launcher3/ShortcutInfo;->id:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget v1, p2, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    iget v2, v0, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    if-ne v1, v2, :cond_0

    iget-wide v1, p2, Lcom/android/launcher3/ShortcutInfo;->container:J

    iget-wide v3, v0, Lcom/android/launcher3/ShortcutInfo;->container:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p2, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    iget-wide v3, v0, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget v1, p2, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    iget v2, v0, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    if-ne v1, v2, :cond_0

    iget v1, p2, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    iget v2, v0, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    if-ne v1, v2, :cond_0

    iget v1, p2, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    iget v2, v0, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    if-ne v1, v2, :cond_0

    iget p2, p2, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    iget v0, v0, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    if-ne p2, v0, :cond_0

    .line 122
    return-void

    .line 129
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "item: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/launcher3/ItemInfo;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    const-string p3, "null"

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "modelItem: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfo;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, "null"

    :goto_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Error: ItemInfo passed to checkItemInfo doesn\'t match original"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 133
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 134
    if-eqz p4, :cond_3

    .line 135
    invoke-virtual {p2, p4}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 137
    :cond_3
    throw p2

    .line 139
    :cond_4
    return-void
.end method

.method public final deleteFolderAndContentsFromDatabase(Lcom/android/launcher3/FolderInfo;)V
    .locals 3

    .line 276
    new-instance v0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    .line 278
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$L-XuB8STDjB_-Q2myy_RxlNLmeY;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$L-XuB8STDjB_-Q2myy_RxlNLmeY;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/FolderInfo;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 289
    return-void
.end method

.method public final deleteItemFromDatabase(Lcom/android/launcher3/ItemInfo;)V
    .locals 2

    .line 245
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/launcher3/ItemInfo;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Ljava/lang/Iterable;)V

    .line 246
    return-void
.end method

.method public final deleteItemsFromDatabase(Lcom/android/launcher3/util/ItemInfoMatcher;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->filterItemInfos(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Ljava/lang/Iterable;)V

    .line 253
    return-void
.end method

.method public final deleteItemsFromDatabase(Ljava/lang/Iterable;)V
    .locals 3

    .line 259
    new-instance v0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    .line 261
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$dBgTNmWSiHJipdaOvZxnLBfkuno;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$dBgTNmWSiHJipdaOvZxnLBfkuno;-><init>(Lcom/android/launcher3/model/ModelWriter;Ljava/lang/Iterable;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 270
    return-void
.end method

.method public final modifyItemInDatabase(Lcom/android/launcher3/ItemInfo;JJIIII)V
    .locals 0

    .line 187
    invoke-direct/range {p0 .. p7}, Lcom/android/launcher3/model/ModelWriter;->updateItemInfoProps(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 188
    iput p8, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 189
    iput p9, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 191
    new-instance p2, Lcom/android/launcher3/util/ContentWriter;

    iget-object p3, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    const-string p3, "container"

    iget-wide p4, p1, Lcom/android/launcher3/ItemInfo;->container:J

    .line 192
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p2

    const-string p3, "cellX"

    iget p4, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 193
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p2

    const-string p3, "cellY"

    iget p4, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 194
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p2

    const-string p3, "rank"

    iget p4, p1, Lcom/android/launcher3/ItemInfo;->rank:I

    .line 195
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p2

    const-string p3, "spanX"

    iget p4, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 196
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p2

    const-string p3, "spanY"

    iget p4, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 197
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p2

    const-string p3, "screen"

    iget-wide p4, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 198
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p2

    .line 200
    iget-object p3, p0, Lcom/android/launcher3/model/ModelWriter;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    new-instance p4, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/util/ContentWriter;)V

    invoke-interface {p3, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method

.method public final moveItemInDatabase(Lcom/android/launcher3/ItemInfo;JJII)V
    .locals 0

    .line 146
    invoke-direct/range {p0 .. p7}, Lcom/android/launcher3/model/ModelWriter;->updateItemInfoProps(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 148
    new-instance p2, Lcom/android/launcher3/util/ContentWriter;

    iget-object p3, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    const-string p3, "container"

    iget-wide p4, p1, Lcom/android/launcher3/ItemInfo;->container:J

    .line 149
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p2

    const-string p3, "cellX"

    iget p4, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 150
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p2

    const-string p3, "cellY"

    iget p4, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 151
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p2

    const-string p3, "rank"

    iget p4, p1, Lcom/android/launcher3/ItemInfo;->rank:I

    .line 152
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p2

    const-string p3, "screen"

    iget-wide p4, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 153
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p2

    .line 155
    iget-object p3, p0, Lcom/android/launcher3/model/ModelWriter;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    new-instance p4, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/util/ContentWriter;)V

    invoke-interface {p3, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method

.method public final moveItemsInDatabase(Ljava/util/ArrayList;JI)V
    .locals 15

    move-object v8, p0

    move-object/from16 v9, p1

    .line 163
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 166
    const/4 v0, 0x0

    move v12, v0

    :goto_0
    if-ge v12, v11, :cond_0

    .line 167
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/launcher3/ItemInfo;

    .line 168
    move/from16 v14, p4

    int-to-long v4, v14

    iget v6, v13, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v7, v13, Lcom/android/launcher3/ItemInfo;->cellY:I

    move-object v0, v8

    move-object v1, v13

    move-wide/from16 v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/model/ModelWriter;->updateItemInfoProps(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 170
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 171
    const-string v1, "container"

    iget-wide v2, v13, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 172
    const-string v1, "cellX"

    iget v2, v13, Lcom/android/launcher3/ItemInfo;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    const-string v1, "cellY"

    iget v2, v13, Lcom/android/launcher3/ItemInfo;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    const-string v1, "rank"

    iget v2, v13, Lcom/android/launcher3/ItemInfo;->rank:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    const-string v1, "screen"

    iget-wide v2, v13, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 177
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, v8, Lcom/android/launcher3/model/ModelWriter;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;

    invoke-direct {v1, v8, v9, v10}, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method public final updateItemInDatabase(Lcom/android/launcher3/ItemInfo;)V
    .locals 3

    .line 207
    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    .line 208
    invoke-virtual {p1, v0}, Lcom/android/launcher3/ItemInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    .line 209
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/util/ContentWriter;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 210
    return-void
.end method
