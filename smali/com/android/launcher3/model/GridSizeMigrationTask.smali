.class public Lcom/android/launcher3/model/GridSizeMigrationTask;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ENABLED:Z


# instance fields
.field public final mCarryOver:Ljava/util/ArrayList;

.field private final mContext:Landroid/content/Context;

.field private final mDestHotseatSize:I

.field public final mEntryToRemove:Ljava/util/ArrayList;

.field private final mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

.field private final mShouldRemoveX:Z

.field private final mShouldRemoveY:Z

.field private final mSrcHotseatSize:I

.field private final mSrcX:I

.field private final mSrcY:I

.field private final mTempValues:Landroid/content/ContentValues;

.field private final mTrgX:I

.field private final mTrgY:I

.field private final mUpdateOperations:Ljava/util/ArrayList;

.field private final mValidPackages:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT:Z

    sput-boolean v0, Lcom/android/launcher3/model/GridSizeMigrationTask;->ENABLED:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/HashSet;II)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTempValues:Landroid/content/ContentValues;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mUpdateOperations:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    .line 96
    iput-object p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 98
    iput-object p3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mValidPackages:Ljava/util/HashSet;

    .line 100
    iput p4, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mSrcHotseatSize:I

    .line 102
    iput p5, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mDestHotseatSize:I

    .line 105
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgY:I

    iput p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgX:I

    iput p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mSrcY:I

    iput p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mSrcX:I

    .line 106
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mShouldRemoveY:Z

    iput-boolean p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mShouldRemoveX:Z

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/HashSet;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTempValues:Landroid/content/ContentValues;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mUpdateOperations:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    .line 76
    iput-object p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    .line 77
    iput-object p3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mValidPackages:Ljava/util/HashSet;

    .line 78
    iput-object p2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 80
    iget p1, p4, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mSrcX:I

    .line 81
    iget p1, p4, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mSrcY:I

    .line 83
    iget p1, p5, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgX:I

    .line 84
    iget p1, p5, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgY:I

    .line 86
    iget p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgX:I

    iget p2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mSrcX:I

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-ge p1, p2, :cond_0

    move p1, p4

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    iput-boolean p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mShouldRemoveX:Z

    .line 87
    iget p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgY:I

    iget p2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mSrcY:I

    if-ge p1, p2, :cond_1

    move p3, p4

    nop

    :cond_1
    iput-boolean p3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mShouldRemoveY:Z

    .line 90
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mDestHotseatSize:I

    iput p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mSrcHotseatSize:I

    .line 91
    return-void
.end method

.method static synthetic access$000(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 40
    invoke-static {p0}, Lcom/android/launcher3/model/GridSizeMigrationTask;->deepCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/model/GridSizeMigrationTask;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgY:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/model/GridSizeMigrationTask;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgX:I

    return p0
.end method

.method private applyOperations()Z
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mUpdateOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherProvider;->AUTHORITY:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mUpdateOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    const-string v0, "GridSizeMigrationTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removing items: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", "

    iget-object v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id"

    iget-object v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    .line 124
    invoke-static {v2, v3}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 123
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mUpdateOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static deepCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2

    .line 866
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 867
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 868
    invoke-virtual {v1}, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->copy()Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    goto :goto_0

    .line 870
    :cond_0
    return-object v0
.end method

.method private getFolderItemsCount(J)I
    .locals 4

    .line 772
    const-string v0, "_id"

    const-string v1, "intent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "container = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/model/GridSizeMigrationTask;->queryWorkspace([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 776
    nop

    .line 777
    const/4 p2, 0x0

    move v0, p2

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 779
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/GridSizeMigrationTask;->verifyIntent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 781
    :catch_0
    move-exception v1

    .line 782
    iget-object v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    :goto_1
    goto :goto_0

    .line 785
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 786
    return v0
.end method

.method private static getPointString(II)Ljava/lang/String;
    .locals 4

    .line 879
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%d,%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v2, p1

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getValidPackages(Landroid/content/Context;)Ljava/util/HashSet;
    .locals 3

    .line 963
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 964
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 965
    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 964
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 966
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 967
    goto :goto_0

    .line 968
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/compat/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/PackageInstallerCompat;

    move-result-object p0

    .line 969
    invoke-virtual {p0}, Lcom/android/launcher3/compat/PackageInstallerCompat;->updateAndGetActiveSessionCache()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 968
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 970
    return-object v0
.end method

.method private loadHotseatEntries()Ljava/util/ArrayList;
    .locals 12

    .line 606
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "_id"

    const-string v3, "itemType"

    const-string v4, "intent"

    const-string v5, "screen"

    filled-new-array {v0, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "container = -101"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 614
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 615
    const-string v2, "itemType"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 616
    const-string v3, "intent"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 617
    const-string v4, "screen"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 619
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 620
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 621
    new-instance v6, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    invoke-direct {v6}, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;-><init>()V

    .line 622
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    .line 623
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->itemType:I

    .line 624
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->screenId:J

    .line 626
    iget-wide v7, v6, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->screenId:J

    iget v9, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mSrcHotseatSize:I

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-ltz v7, :cond_0

    .line 627
    iget-object v7, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    iget-wide v8, v6, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    goto :goto_0

    .line 633
    :cond_0
    :try_start_0
    iget v7, v6, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->itemType:I

    const/4 v8, 0x6

    if-eq v7, v8, :cond_2

    packed-switch v7, :pswitch_data_0

    .line 651
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "Invalid item type"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7

    .line 643
    :pswitch_0
    iget-wide v7, v6, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-direct {p0, v7, v8}, Lcom/android/launcher3/model/GridSizeMigrationTask;->getFolderItemsCount(J)I

    move-result v7

    .line 644
    if-eqz v7, :cond_1

    .line 647
    const/high16 v8, 0x3f000000    # 0.5f

    int-to-float v7, v7

    mul-float/2addr v8, v7

    iput v8, v6, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F

    .line 648
    goto :goto_2

    .line 645
    :cond_1
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "Folder is empty"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7

    .line 637
    :cond_2
    :pswitch_1
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/launcher3/model/GridSizeMigrationTask;->verifyIntent(Ljava/lang/String;)V

    .line 638
    iget v7, v6, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->itemType:I

    if-nez v7, :cond_3

    .line 639
    const v7, 0x3f4ccccd    # 0.8f

    goto :goto_1

    :cond_3
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_1
    iput v7, v6, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    nop

    .line 660
    :goto_2
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    goto :goto_0

    .line 659
    :catch_0
    move-exception v7

    .line 655
    const-string v8, "GridSizeMigrationTask"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Removing item "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, v6, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 657
    iget-object v7, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    iget-wide v8, v6, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    goto/16 :goto_0

    .line 662
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 663
    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static markForMigration(Landroid/content/Context;III)V
    .locals 1

    .line 884
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "migration_src_workspace_size"

    .line 885
    invoke-static {p1, p2}, Lcom/android/launcher3/model/GridSizeMigrationTask;->getPointString(II)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "migration_src_hotseat_count"

    .line 886
    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 887
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 888
    return-void
.end method

.method public static migrateGridIfNeeded(Landroid/content/Context;)Z
    .locals 18

    .line 895
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 896
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iget-object v2, v0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 898
    iget v0, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v3, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v0, v3}, Lcom/android/launcher3/model/GridSizeMigrationTask;->getPointString(II)Ljava/lang/String;

    move-result-object v3

    .line 900
    const-string v0, "migration_src_workspace_size"

    const-string v4, ""

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget v0, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    const-string v5, "migration_src_hotseat_count"

    iget v6, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    .line 901
    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v0, v5, :cond_0

    .line 903
    return v4

    .line 906
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 908
    nop

    .line 910
    const/4 v7, 0x0

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/model/GridSizeMigrationTask;->getValidPackages(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v0

    .line 912
    const-string v8, "migration_src_hotseat_count"

    iget v9, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 913
    iget v8, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    if-eq v12, v8, :cond_6

    .line 916
    new-instance v14, Lcom/android/launcher3/model/GridSizeMigrationTask;

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    iget-object v10, v8, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v13, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    move-object v8, v14

    move-object/from16 v9, p0

    move-object v11, v0

    invoke-direct/range {v8 .. v13}, Lcom/android/launcher3/model/GridSizeMigrationTask;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/HashSet;II)V

    .line 917
    invoke-direct {v14}, Lcom/android/launcher3/model/GridSizeMigrationTask;->loadHotseatEntries()Ljava/util/ArrayList;

    move-result-object v8

    iget v9, v14, Lcom/android/launcher3/model/GridSizeMigrationTask;->mDestHotseatSize:I

    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v9, :cond_3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    iget v13, v12, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F

    iget v15, v10, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F

    cmpg-float v13, v13, v15

    if-gez v13, :cond_1

    move-object v10, v12

    goto :goto_1

    :cond_2
    iget-object v11, v14, Lcom/android/launcher3/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    iget-wide v12, v10, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v7

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    iget-wide v11, v10, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->screenId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide/from16 v16, v5

    int-to-long v4, v9

    cmp-long v6, v11, v4

    if-eqz v6, :cond_4

    :try_start_1
    iput-wide v4, v10, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->screenId:J

    iput v9, v10, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    iput v7, v10, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    invoke-virtual {v14, v10}, Lcom/android/launcher3/model/GridSizeMigrationTask;->update(Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;)V

    :cond_4
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v5, v16

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    move-wide/from16 v16, v5

    invoke-direct {v14}, Lcom/android/launcher3/model/GridSizeMigrationTask;->applyOperations()Z

    move-result v4

    goto :goto_3

    .line 921
    :cond_6
    move-wide/from16 v16, v5

    move v4, v7

    :goto_3
    new-instance v5, Landroid/graphics/Point;

    iget v6, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v8, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-direct {v5, v6, v8}, Landroid/graphics/Point;-><init>(II)V

    .line 922
    const-string v6, "migration_src_workspace_size"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    new-instance v8, Landroid/graphics/Point;

    aget-object v9, v6, v7

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v8, v9, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 925
    new-instance v6, Lcom/android/launcher3/model/GridSizeMigrationTask$MultiStepMigrationTask;

    move-object/from16 v9, p0

    invoke-direct {v6, v0, v9}, Lcom/android/launcher3/model/GridSizeMigrationTask$MultiStepMigrationTask;-><init>(Ljava/util/HashSet;Landroid/content/Context;)V

    invoke-virtual {v6, v8, v5}, Lcom/android/launcher3/model/GridSizeMigrationTask$MultiStepMigrationTask;->migrate(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 926
    nop

    .line 929
    const/4 v4, 0x1

    :cond_7
    if-eqz v4, :cond_9

    .line 931
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 933
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    .line 934
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 935
    if-eqz v4, :cond_8

    goto :goto_4

    .line 936
    :cond_8
    new-instance v0, Ljava/lang/Exception;

    const-string v4, "Removed every thing during grid resize"

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 940
    :cond_9
    :goto_4
    const-string v0, "GridSizeMigrationTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Workspace migration completed in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 947
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v16

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 946
    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "migration_src_workspace_size"

    .line 951
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "migration_src_hotseat_count"

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    .line 952
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 953
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 940
    const/4 v0, 0x1

    return v0

    .line 941
    :catch_0
    move-exception v0

    goto :goto_5

    .line 946
    :catchall_0
    move-exception v0

    move-wide/from16 v16, v5

    goto :goto_6

    .line 941
    :catch_1
    move-exception v0

    move-wide/from16 v16, v5

    .line 942
    :goto_5
    :try_start_2
    const-string v4, "GridSizeMigrationTask"

    const-string v5, "Error during grid migration"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 944
    const-string v0, "GridSizeMigrationTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Workspace migration completed in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 947
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v16

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 946
    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "migration_src_workspace_size"

    .line 951
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "migration_src_hotseat_count"

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    .line 952
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 953
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 944
    return v7

    .line 946
    :catchall_1
    move-exception v0

    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Workspace migration completed in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 947
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v16

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 946
    const-string v5, "GridSizeMigrationTask"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 951
    const-string v4, "migration_src_workspace_size"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    .line 952
    const-string v3, "migration_src_hotseat_count"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 953
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    throw v0
.end method

.method public static removeBrokenHotseatItems(Landroid/content/Context;)Lcom/android/launcher3/util/LongArrayMap;
    .locals 7

    .line 978
    new-instance v6, Lcom/android/launcher3/model/GridSizeMigrationTask;

    .line 979
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iget-object v2, v0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-static {p0}, Lcom/android/launcher3/model/GridSizeMigrationTask;->getValidPackages(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v3

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/model/GridSizeMigrationTask;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/HashSet;II)V

    .line 983
    invoke-direct {v6}, Lcom/android/launcher3/model/GridSizeMigrationTask;->loadHotseatEntries()Ljava/util/ArrayList;

    move-result-object p0

    .line 985
    invoke-direct {v6}, Lcom/android/launcher3/model/GridSizeMigrationTask;->applyOperations()Z

    .line 986
    new-instance v0, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .line 987
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 988
    iget-wide v2, v1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->screenId:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 989
    goto :goto_0

    .line 990
    :cond_0
    return-object v0
.end method

.method private verifyIntent(Ljava/lang/String;)V
    .locals 1

    .line 798
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 799
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 800
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/GridSizeMigrationTask;->verifyPackage(Ljava/lang/String;)V

    return-void

    .line 801
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 803
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/GridSizeMigrationTask;->verifyPackage(Ljava/lang/String;)V

    .line 805
    :cond_1
    return-void
.end method

.method private verifyPackage(Ljava/lang/String;)V
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 814
    return-void

    .line 812
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Package not available"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public loadWorkspaceEntries(J)Ljava/util/ArrayList;
    .locals 20

    move-object/from16 v1, p0

    .line 671
    move-wide/from16 v2, p1

    const-string v4, "_id"

    const-string v5, "itemType"

    const-string v6, "cellX"

    const-string v7, "cellY"

    const-string v8, "spanX"

    const-string v9, "spanY"

    const-string v10, "intent"

    const-string v11, "appWidgetProvider"

    const-string v12, "appWidgetId"

    filled-new-array/range {v4 .. v12}, [Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "container = -100 AND screen = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/android/launcher3/model/GridSizeMigrationTask;->queryWorkspace([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 685
    const-string v0, "_id"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 686
    const-string v0, "itemType"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 687
    const-string v0, "cellX"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 688
    const-string v0, "cellY"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 689
    const-string v0, "spanX"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 690
    const-string v0, "spanY"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 691
    const-string v0, "intent"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 692
    const-string v0, "appWidgetProvider"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 693
    const-string v0, "appWidgetId"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 695
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 696
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 697
    new-instance v15, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    invoke-direct {v15}, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;-><init>()V

    .line 698
    move/from16 v16, v13

    move-object/from16 v17, v14

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    iput-wide v13, v15, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    .line 699
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v15, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->itemType:I

    .line 700
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v15, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    .line 701
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v15, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    .line 702
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v15, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    .line 703
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v15, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    .line 704
    iput-wide v2, v15, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->screenId:J

    .line 708
    :try_start_0
    iget v0, v15, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->itemType:I

    const/4 v13, 0x4

    if-eq v0, v13, :cond_3

    const/4 v13, 0x6

    if-eq v0, v13, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 753
    new-instance v0, Ljava/lang/Exception;

    const-string v13, "Invalid item type"

    invoke-direct {v0, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 745
    :pswitch_0
    iget-wide v13, v15, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-direct {v1, v13, v14}, Lcom/android/launcher3/model/GridSizeMigrationTask;->getFolderItemsCount(J)I

    move-result v0

    .line 746
    if-eqz v0, :cond_0

    .line 749
    const/high16 v13, 0x3f000000    # 0.5f

    int-to-float v0, v0

    mul-float/2addr v13, v0

    iput v13, v15, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F

    .line 750
    nop

    .line 762
    :goto_1
    move/from16 v13, v16

    goto/16 :goto_9

    .line 747
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v13, "Folder is empty"

    invoke-direct {v0, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_1
    :pswitch_1
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/launcher3/model/GridSizeMigrationTask;->verifyIntent(Ljava/lang/String;)V

    .line 713
    iget v0, v15, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->itemType:I

    if-nez v0, :cond_2

    .line 714
    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_2

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    iput v0, v15, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F

    .line 715
    goto :goto_1

    .line 718
    :cond_3
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 719
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 720
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/launcher3/model/GridSizeMigrationTask;->verifyPackage(Ljava/lang/String;)V

    .line 721
    const/high16 v0, 0x40000000    # 2.0f

    const v13, 0x3f19999a    # 0.6f

    iget v14, v15, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    iget v14, v15, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    invoke-static {v0, v13}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v15, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 724
    move/from16 v13, v16

    :try_start_1
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 725
    iget-object v14, v1, Lcom/android/launcher3/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v14

    .line 726
    invoke-virtual {v14, v0}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v0

    .line 727
    nop

    .line 728
    if-eqz v0, :cond_6

    .line 729
    new-instance v14, Landroid/graphics/Point;

    iget v2, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    iget v2, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanX:I

    goto :goto_3

    :cond_4
    const/4 v2, -0x1

    :goto_3
    iget v3, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->resizeMode:I

    const/16 v16, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    iget v3, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanY:I

    goto :goto_4

    :cond_5
    const/4 v3, -0x1

    :goto_4
    invoke-direct {v14, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_5

    .line 731
    :cond_6
    const/4 v14, 0x0

    :goto_5
    if-eqz v14, :cond_9

    .line 732
    iget v0, v14, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_7

    iget v0, v14, Landroid/graphics/Point;->x:I

    goto :goto_6

    :cond_7
    iget v0, v15, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    :goto_6
    iput v0, v15, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->minSpanX:I

    .line 733
    iget v0, v14, Landroid/graphics/Point;->y:I

    if-lez v0, :cond_8

    iget v0, v14, Landroid/graphics/Point;->y:I

    goto :goto_7

    :cond_8
    iget v0, v15, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    :goto_7
    iput v0, v15, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->minSpanY:I

    goto :goto_8

    .line 736
    :cond_9
    const/4 v0, 0x2

    iput v0, v15, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->minSpanY:I

    iput v0, v15, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->minSpanX:I

    .line 739
    :goto_8
    iget v0, v15, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->minSpanX:I

    iget v2, v1, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgX:I

    if-gt v0, v2, :cond_a

    iget v0, v15, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->minSpanY:I

    iget v2, v1, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgY:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-gt v0, v2, :cond_a

    .line 761
    nop

    .line 762
    :goto_9
    move-object/from16 v2, v17

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    nop

    .line 696
    move-object v14, v2

    goto :goto_c

    .line 740
    :cond_a
    move-object/from16 v2, v17

    :try_start_2
    new-instance v0, Ljava/lang/Exception;

    const-string v3, "Widget can\'t be resized down to fit the grid"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 755
    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    move/from16 v13, v16

    :goto_a
    move-object/from16 v2, v17

    .line 757
    :goto_b
    const-string v3, "GridSizeMigrationTask"

    new-instance v14, Ljava/lang/StringBuilder;

    move/from16 v18, v5

    const-string v5, "Removing item "

    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v19, v6

    iget-wide v5, v15, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 759
    iget-object v0, v1, Lcom/android/launcher3/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    iget-wide v5, v15, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    nop

    .line 696
    move-object v14, v2

    move/from16 v5, v18

    move/from16 v6, v19

    :goto_c
    move-wide/from16 v2, p1

    goto/16 :goto_0

    .line 764
    :cond_b
    move-object v2, v14

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 765
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final migrateScreen(J)V
    .locals 24

    move-object/from16 v6, p0

    .line 260
    move-wide/from16 v7, p1

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 261
    nop

    .line 263
    move v4, v2

    goto :goto_0

    .line 261
    :cond_0
    nop

    .line 263
    const/4 v4, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/launcher3/model/GridSizeMigrationTask;->loadWorkspaceEntries(J)Ljava/util/ArrayList;

    move-result-object v0

    .line 265
    nop

    .line 266
    nop

    .line 273
    nop

    .line 274
    nop

    .line 275
    const/4 v3, 0x2

    new-array v5, v3, [F

    .line 276
    const/4 v9, 0x0

    .line 279
    const v10, 0x7f7fffff    # Float.MAX_VALUE

    move-object v11, v9

    move v12, v10

    move v13, v12

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const/4 v14, 0x0

    :goto_1
    iget v15, v6, Lcom/android/launcher3/model/GridSizeMigrationTask;->mSrcX:I

    if-ge v14, v15, :cond_11

    .line 282
    iget v15, v6, Lcom/android/launcher3/model/GridSizeMigrationTask;->mSrcY:I

    sub-int/2addr v15, v2

    move/from16 v16, v9

    move/from16 v17, v10

    move-object/from16 v19, v11

    move/from16 v18, v12

    move/from16 v20, v13

    :goto_2
    if-lt v15, v4, :cond_f

    .line 285
    invoke-static {v0}, Lcom/android/launcher3/model/GridSizeMigrationTask;->deepCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v13

    new-instance v12, Lcom/android/launcher3/util/GridOccupancy;

    iget v9, v6, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgX:I

    iget v10, v6, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgY:I

    invoke-direct {v12, v9, v10}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v9, v6, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgX:I

    const/16 v21, 0x1

    move/from16 v22, v9

    move-object v9, v12

    move-object v3, v12

    move/from16 v12, v22

    move-object v1, v13

    move v13, v4

    move/from16 v22, v14

    move/from16 v14, v21

    invoke-virtual/range {v9 .. v14}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    iget-boolean v9, v6, Lcom/android/launcher3/model/GridSizeMigrationTask;->mShouldRemoveX:Z

    if-eqz v9, :cond_1

    move/from16 v9, v22

    goto :goto_3

    :cond_1
    const v9, 0x7fffffff

    :goto_3
    iget-boolean v10, v6, Lcom/android/launcher3/model/GridSizeMigrationTask;->mShouldRemoveY:Z

    if-eqz v10, :cond_2

    move v10, v15

    goto :goto_4

    :cond_2
    const v10, 0x7fffffff

    :goto_4
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    iget v14, v13, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    if-gt v14, v9, :cond_3

    iget v14, v13, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    iget v2, v13, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    add-int/2addr v14, v2

    if-gt v14, v9, :cond_4

    :cond_3
    iget v2, v13, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    if-gt v2, v10, :cond_6

    iget v2, v13, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    iget v14, v13, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    add-int/2addr v2, v14

    if-le v2, v10, :cond_6

    :cond_4
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v13, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    if-lt v2, v9, :cond_5

    iget v2, v13, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    const/4 v14, 0x1

    sub-int/2addr v2, v14

    iput v2, v13, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    goto :goto_6

    :cond_5
    const/4 v14, 0x1

    :goto_6
    iget v2, v13, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    if-lt v2, v10, :cond_9

    iget v2, v13, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    sub-int/2addr v2, v14

    iput v2, v13, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    move v2, v14

    goto :goto_5

    :cond_6
    const/4 v14, 0x1

    iget v2, v13, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    if-le v2, v9, :cond_7

    iget v2, v13, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    sub-int/2addr v2, v14

    iput v2, v13, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    :cond_7
    iget v2, v13, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    if-le v2, v10, :cond_8

    iget v2, v13, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    sub-int/2addr v2, v14

    iput v2, v13, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    :cond_8
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v13, v14}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    :cond_9
    const/4 v2, 0x1

    goto :goto_5

    :cond_a
    new-instance v1, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;

    invoke-direct {v1, v6, v3, v12, v4}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;-><init>(Lcom/android/launcher3/model/GridSizeMigrationTask;Lcom/android/launcher3/util/GridOccupancy;Ljava/util/ArrayList;I)V

    invoke-virtual {v1}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->find()V

    iget-object v2, v1, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->finalPlacedItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v2, v1, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->lowestWeightLoss:F

    const/4 v3, 0x0

    aput v2, v5, v3

    iget v1, v1, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->lowestMoveCost:F

    const/4 v2, 0x1

    aput v1, v5, v2

    .line 287
    aget v1, v5, v3

    cmpg-float v1, v1, v18

    if-ltz v1, :cond_b

    aget v1, v5, v3

    cmpl-float v1, v1, v18

    if-nez v1, :cond_e

    aget v1, v5, v2

    cmpg-float v1, v1, v20

    if-gez v1, :cond_e

    .line 288
    :cond_b
    const/4 v1, 0x0

    aget v3, v5, v1

    .line 289
    aget v1, v5, v2

    .line 290
    iget-boolean v2, v6, Lcom/android/launcher3/model/GridSizeMigrationTask;->mShouldRemoveX:Z

    if-eqz v2, :cond_c

    .line 291
    move/from16 v16, v22

    :cond_c
    iget-boolean v2, v6, Lcom/android/launcher3/model/GridSizeMigrationTask;->mShouldRemoveY:Z

    if-eqz v2, :cond_d

    .line 292
    move/from16 v17, v15

    .line 296
    :cond_d
    move/from16 v20, v1

    move/from16 v18, v3

    move-object/from16 v19, v11

    :cond_e
    iget-boolean v1, v6, Lcom/android/launcher3/model/GridSizeMigrationTask;->mShouldRemoveY:Z

    if-eqz v1, :cond_10

    .line 297
    add-int/lit8 v15, v15, -0x1

    .line 282
    move/from16 v14, v22

    const/4 v2, 0x1

    const/4 v3, 0x2

    goto/16 :goto_2

    .line 301
    :cond_f
    move/from16 v22, v14

    :cond_10
    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v12, v18

    move-object/from16 v11, v19

    move/from16 v13, v20

    iget-boolean v1, v6, Lcom/android/launcher3/model/GridSizeMigrationTask;->mShouldRemoveX:Z

    if-eqz v1, :cond_11

    .line 302
    add-int/lit8 v14, v22, 0x1

    .line 279
    const/4 v2, 0x1

    const/4 v3, 0x2

    goto/16 :goto_1

    .line 307
    :cond_11
    move-object v1, v11

    const-string v2, "GridSizeMigrationTask"

    const-string v3, "Removing row %d, column %d on screen %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 308
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v5, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v5, v10

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v5, v10

    .line 307
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v2, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v2}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .line 312
    invoke-static {v0}, Lcom/android/launcher3/model/GridSizeMigrationTask;->deepCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 313
    iget-wide v9, v3, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-virtual {v2, v9, v10, v3}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 314
    goto :goto_7

    .line 316
    :cond_12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 317
    iget-wide v9, v3, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-virtual {v2, v9, v10}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 318
    iget-wide v9, v3, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-virtual {v2, v9, v10}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 321
    iget v9, v5, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    iget v10, v3, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    if-ne v9, v10, :cond_13

    iget v9, v5, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    iget v10, v3, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    if-ne v9, v10, :cond_13

    iget v9, v5, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    iget v10, v3, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    if-ne v9, v10, :cond_13

    iget v9, v5, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    iget v10, v3, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    if-ne v9, v10, :cond_13

    iget-wide v9, v5, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->screenId:J

    iget-wide v13, v3, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->screenId:J

    cmp-long v5, v9, v13

    if-nez v5, :cond_13

    const/4 v5, 0x1

    goto :goto_9

    :cond_13
    move v5, v11

    :goto_9
    if-nez v5, :cond_14

    .line 322
    invoke-virtual {v6, v3}, Lcom/android/launcher3/model/GridSizeMigrationTask;->update(Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;)V

    .line 324
    :cond_14
    goto :goto_8

    .line 327
    :cond_15
    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 328
    iget-object v3, v6, Lcom/android/launcher3/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    goto :goto_a

    .line 331
    :cond_16
    iget-object v0, v6, Lcom/android/launcher3/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v15, 0x0

    cmpl-float v0, v12, v15

    if-nez v0, :cond_19

    .line 333
    new-instance v2, Lcom/android/launcher3/util/GridOccupancy;

    iget v0, v6, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgX:I

    iget v3, v6, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgY:I

    invoke-direct {v2, v0, v3}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    .line 334
    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, v6, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgX:I

    const/4 v14, 0x1

    move-object v9, v2

    move v13, v4

    invoke-virtual/range {v9 .. v14}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 335
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 336
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    .line 337
    goto :goto_b

    .line 339
    :cond_17
    new-instance v9, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;

    iget-object v0, v6, Lcom/android/launcher3/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    .line 340
    invoke-static {v0}, Lcom/android/launcher3/model/GridSizeMigrationTask;->deepCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, v9

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;-><init>(Lcom/android/launcher3/model/GridSizeMigrationTask;Lcom/android/launcher3/util/GridOccupancy;Ljava/util/ArrayList;IZ)V

    .line 341
    invoke-virtual {v9}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->find()V

    .line 342
    iget v0, v9, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->lowestWeightLoss:F

    cmpl-float v0, v0, v15

    if-nez v0, :cond_19

    .line 345
    iget-object v0, v9, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->finalPlacedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 346
    iput-wide v7, v1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->screenId:J

    .line 347
    invoke-virtual {v6, v1}, Lcom/android/launcher3/model/GridSizeMigrationTask;->update(Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;)V

    .line 348
    goto :goto_c

    .line 350
    :cond_18
    iget-object v0, v6, Lcom/android/launcher3/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 353
    :cond_19
    return-void
.end method

.method protected final migrateWorkspace()Z
    .locals 12

    .line 186
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 191
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 193
    const-string v4, "GridSizeMigrationTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Migrating "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/model/GridSizeMigrationTask;->migrateScreen(J)V

    .line 196
    goto :goto_0

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 199
    new-instance v1, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v1}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .line 200
    iget-object v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 201
    iget-wide v4, v3, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-virtual {v1, v4, v5, v3}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 202
    goto :goto_1

    .line 210
    :cond_1
    new-instance v2, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;

    new-instance v8, Lcom/android/launcher3/util/GridOccupancy;

    iget v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgX:I

    iget v4, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgY:I

    invoke-direct {v8, v3, v4}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iget-object v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    .line 211
    invoke-static {v3}, Lcom/android/launcher3/model/GridSizeMigrationTask;->deepCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, v2

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;-><init>(Lcom/android/launcher3/model/GridSizeMigrationTask;Lcom/android/launcher3/util/GridOccupancy;Ljava/util/ArrayList;IZ)V

    .line 212
    invoke-virtual {v2}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->find()V

    .line 213
    iget-object v3, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->finalPlacedItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 214
    iget-object v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    .line 215
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "generate_new_screen_id"

    .line 214
    invoke-static {v3, v4}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "value"

    .line 217
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 219
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v2, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->finalPlacedItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 221
    iget-object v6, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    iget-wide v7, v5, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-virtual {v1, v7, v8}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 224
    iput-wide v3, v5, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->screenId:J

    .line 225
    invoke-virtual {p0, v5}, Lcom/android/launcher3/model/GridSizeMigrationTask;->update(Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;)V

    .line 226
    goto :goto_2

    .line 222
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unable to find matching items"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_3
    nop

    .line 231
    iget-object v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    sget-object v1, Lcom/android/launcher3/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    .line 235
    iget-object v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mUpdateOperations:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 237
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_5

    .line 238
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 239
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 240
    const-string v7, "_id"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 241
    const-string v5, "screenRank"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    iget-object v5, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mUpdateOperations:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 228
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "None of the items can be placed on an empty screen"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher3/model/GridSizeMigrationTask;->applyOperations()Z

    move-result v0

    return v0

    .line 188
    :cond_6
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unable to get workspace screens"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queryWorkspace([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 790
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public update(Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;)V
    .locals 3

    .line 359
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTempValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 360
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTempValues:Landroid/content/ContentValues;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->addToContentValues(Landroid/content/ContentValues;)V

    .line 361
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mUpdateOperations:Ljava/util/ArrayList;

    iget-wide v1, p1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    .line 362
    invoke-static {v1, v2}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTempValues:Landroid/content/ContentValues;

    .line 363
    invoke-virtual {p1, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    .line 361
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    return-void
.end method
