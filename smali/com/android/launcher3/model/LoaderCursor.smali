.class public Lcom/android/launcher3/model/LoaderCursor;
.super Landroid/database/CursorWrapper;
.source "SourceFile"


# instance fields
.field public final allUsers:Landroid/util/LongSparseArray;

.field private final cellXIndex:I

.field private final cellYIndex:I

.field public container:J

.field private final containerIndex:I

.field private final iconIndex:I

.field private final iconPackageIndex:I

.field private final iconResourceIndex:I

.field public id:J

.field private final idIndex:I

.field private final intentIndex:I

.field public itemType:I

.field private final itemTypeIndex:I

.field final itemsToRemove:Ljava/util/ArrayList;

.field final mContext:Landroid/content/Context;

.field private final mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

.field private final mIconCache:Lcom/android/launcher3/IconCache;

.field private final mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

.field private final occupied:Lcom/android/launcher3/util/LongArrayMap;

.field private final profileIdIndex:I

.field public restoreFlag:I

.field private final restoredIndex:I

.field final restoredRows:Ljava/util/ArrayList;

.field private final screenIndex:I

.field public serialNumber:J

.field public final titleIndex:I

.field public user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcom/android/launcher3/LauncherAppState;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 65
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderCursor;->allUsers:Landroid/util/LongSparseArray;

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderCursor;->itemsToRemove:Ljava/util/ArrayList;

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderCursor;->restoredRows:Ljava/util/ArrayList;

    .line 74
    new-instance p1, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {p1}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderCursor;->occupied:Lcom/android/launcher3/util/LongArrayMap;

    .line 101
    iget-object p1, p2, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    .line 102
    iget-object p1, p2, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 103
    iget-object p1, p2, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 104
    iget-object p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 107
    const-string p1, "icon"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->iconIndex:I

    .line 108
    const-string p1, "iconPackage"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->iconPackageIndex:I

    .line 109
    const-string p1, "iconResource"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->iconResourceIndex:I

    .line 110
    const-string p1, "title"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->titleIndex:I

    .line 112
    const-string p1, "_id"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->idIndex:I

    .line 113
    const-string p1, "container"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->containerIndex:I

    .line 114
    const-string p1, "itemType"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->itemTypeIndex:I

    .line 115
    const-string p1, "screen"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->screenIndex:I

    .line 116
    const-string p1, "cellX"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->cellXIndex:I

    .line 117
    const-string p1, "cellY"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->cellYIndex:I

    .line 118
    const-string p1, "profileId"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->profileIdIndex:I

    .line 119
    const-string p1, "restored"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->restoredIndex:I

    .line 120
    const-string p1, "intent"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/model/LoaderCursor;->intentIndex:I

    .line 121
    return-void
.end method

.method private getTitle()Ljava/lang/String;
    .locals 2

    .line 201
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->titleIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final applyCommonProperties(Lcom/android/launcher3/ItemInfo;)V
    .locals 2

    .line 365
    iget-wide v0, p0, Lcom/android/launcher3/model/LoaderCursor;->id:J

    iput-wide v0, p1, Lcom/android/launcher3/ItemInfo;->id:J

    .line 366
    iget-wide v0, p0, Lcom/android/launcher3/model/LoaderCursor;->container:J

    iput-wide v0, p1, Lcom/android/launcher3/ItemInfo;->container:J

    .line 367
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->screenIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 368
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->cellXIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 369
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->cellYIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 370
    return-void
.end method

.method public final checkAndAddItem(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 377
    move-object/from16 v2, p2

    iget-object v3, v2, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    iget-wide v4, v1, Lcom/android/launcher3/ItemInfo;->screenId:J

    iget-wide v6, v1, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v6, v6, v8

    const/4 v7, 0x0

    const/4 v10, 0x1

    if-nez v6, :cond_3

    iget-object v3, v0, Lcom/android/launcher3/model/LoaderCursor;->occupied:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/GridOccupancy;

    iget-wide v4, v1, Lcom/android/launcher3/ItemInfo;->screenId:J

    iget-object v6, v0, Lcom/android/launcher3/model/LoaderCursor;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v6, v6, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    int-to-long v11, v6

    cmp-long v4, v4, v11

    if-ltz v4, :cond_0

    const-string v3, "LoaderCursor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error loading shortcut "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " into hotseat position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", position out of bounds: (0 to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderCursor;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v5, v5, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    sub-int/2addr v5, v10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v10, v7

    goto/16 :goto_4

    :cond_0
    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget-wide v5, v1, Lcom/android/launcher3/ItemInfo;->screenId:J

    long-to-int v5, v5

    aget-object v4, v4, v5

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_1

    const-string v3, "LoaderCursor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error loading shortcut into hotseat "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " into position ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/launcher3/ItemInfo;->cellX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/launcher3/ItemInfo;->cellY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") already occupied"

    goto :goto_0

    :cond_1
    iget-object v3, v3, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget-wide v4, v1, Lcom/android/launcher3/ItemInfo;->screenId:J

    long-to-int v4, v4

    aget-object v3, v3, v4

    aput-boolean v10, v3, v7

    goto/16 :goto_4

    :cond_2
    new-instance v3, Lcom/android/launcher3/util/GridOccupancy;

    iget-object v4, v0, Lcom/android/launcher3/model/LoaderCursor;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v4, v4, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    invoke-direct {v3, v4, v10}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iget-object v4, v3, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget-wide v5, v1, Lcom/android/launcher3/ItemInfo;->screenId:J

    long-to-int v5, v5

    aget-object v4, v4, v5

    aput-boolean v10, v4, v7

    iget-object v4, v0, Lcom/android/launcher3/model/LoaderCursor;->occupied:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4, v8, v9, v3}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget-wide v8, v1, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v11, -0x64

    cmp-long v6, v8, v11

    if-nez v6, :cond_b

    iget-wide v8, v1, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, v0, Lcom/android/launcher3/model/LoaderCursor;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget-object v6, v0, Lcom/android/launcher3/model/LoaderCursor;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v6, v6, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iget-wide v8, v1, Lcom/android/launcher3/ItemInfo;->container:J

    cmp-long v8, v8, v11

    if-nez v8, :cond_5

    iget v8, v1, Lcom/android/launcher3/ItemInfo;->cellX:I

    if-ltz v8, :cond_a

    :cond_5
    iget v8, v1, Lcom/android/launcher3/ItemInfo;->cellY:I

    if-ltz v8, :cond_a

    iget v8, v1, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v9, v1, Lcom/android/launcher3/ItemInfo;->spanX:I

    add-int/2addr v8, v9

    if-gt v8, v3, :cond_a

    iget v8, v1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v9, v1, Lcom/android/launcher3/ItemInfo;->spanY:I

    add-int/2addr v8, v9

    if-le v8, v6, :cond_6

    goto/16 :goto_3

    :cond_6
    iget-object v8, v0, Lcom/android/launcher3/model/LoaderCursor;->occupied:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v11, v1, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v8, v11, v12}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v8

    if-nez v8, :cond_8

    new-instance v8, Lcom/android/launcher3/util/GridOccupancy;

    add-int/lit8 v14, v3, 0x1

    add-int/2addr v6, v10

    invoke-direct {v8, v14, v6}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iget-wide v11, v1, Lcom/android/launcher3/ItemInfo;->screenId:J

    const-wide/16 v15, 0x0

    cmp-long v3, v11, v15

    if-nez v3, :cond_7

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object v11, v8

    invoke-virtual/range {v11 .. v16}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_7
    iget-object v3, v0, Lcom/android/launcher3/model/LoaderCursor;->occupied:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v11, v1, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v3, v11, v12, v8}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    :cond_8
    iget-object v3, v0, Lcom/android/launcher3/model/LoaderCursor;->occupied:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v8, v1, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v3, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/GridOccupancy;

    iget v6, v1, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v8, v1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v9, v1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v11, v1, Lcom/android/launcher3/ItemInfo;->spanY:I

    invoke-virtual {v3, v6, v8, v9, v11}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v3, v1, v10}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    goto/16 :goto_4

    :cond_9
    const-string v3, "LoaderCursor"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Error loading shortcut "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " into cell ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/launcher3/ItemInfo;->cellX:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/launcher3/ItemInfo;->cellX:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/launcher3/ItemInfo;->spanX:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/launcher3/ItemInfo;->spanY:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") already occupied"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_a
    :goto_3
    const-string v8, "LoaderCursor"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Error loading shortcut "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " into cell ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/launcher3/ItemInfo;->cellX:I

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/launcher3/ItemInfo;->cellY:I

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") out of screen bounds ( "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    :goto_4
    if-eqz v10, :cond_c

    .line 378
    iget-object v0, v0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1, v7}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;Z)V

    return-void

    .line 380
    :cond_c
    const-string v1, "Item position overlap"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public final getAppShortcutInfo(Landroid/content/Intent;ZZ)Lcom/android/launcher3/ShortcutInfo;
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 244
    const-string p1, "LoaderCursor"

    const-string p2, "Null user found in getShortcutInfo"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-object v1

    .line 248
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    .line 249
    if-nez p1, :cond_1

    .line 250
    const-string p1, "LoaderCursor"

    const-string p2, "Missing component found in getShortcutInfo"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-object v1

    .line 254
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 255
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 257
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    .line 258
    invoke-virtual {v2, v0, v3}, Lcom/android/launcher3/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v2

    .line 259
    if-nez v2, :cond_2

    if-nez p2, :cond_2

    .line 260
    const-string p2, "LoaderCursor"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Missing activity found in getShortcutInfo: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-object v1

    .line 264
    :cond_2
    new-instance p2, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {p2}, Lcom/android/launcher3/ShortcutInfo;-><init>()V

    .line 265
    const/4 v1, 0x0

    iput v1, p2, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    .line 266
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v1, p2, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    .line 267
    iput-object v0, p2, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 269
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v0, p2, v2, p3}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    .line 270
    iget-object p3, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/IconCache;

    iget-object v0, p2, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {p3, v0, v1}, Lcom/android/launcher3/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Landroid/os/UserHandle;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 271
    invoke-virtual {p0, p2}, Lcom/android/launcher3/model/LoaderCursor;->loadIcon(Lcom/android/launcher3/ShortcutInfo;)Z

    .line 274
    :cond_3
    if-eqz v2, :cond_4

    .line 275
    invoke-static {p2, v2}, Lcom/android/launcher3/AppInfo;->updateRuntimeFlagsForActivityTarget(Lcom/android/launcher3/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;)V

    .line 279
    :cond_4
    iget-object p3, p2, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 280
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderCursor;->getTitle()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 284
    :cond_5
    iget-object p3, p2, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez p3, :cond_6

    .line 285
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 288
    :cond_6
    iget-object p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object p3, p2, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    iget-object v0, p2, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, p3, v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p2, Lcom/android/launcher3/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 289
    return-object p2
.end method

.method public final getRestoredItemInfo(Landroid/content/Intent;)Lcom/android/launcher3/ShortcutInfo;
    .locals 3

    .line 210
    new-instance v0, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v0}, Lcom/android/launcher3/ShortcutInfo;-><init>()V

    .line 211
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    .line 212
    iput-object p1, v0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 215
    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->loadIcon(Lcom/android/launcher3/ShortcutInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 216
    iget-object p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/IconCache;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Z)V

    .line 219
    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 220
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderCursor;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 224
    :cond_1
    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 225
    iget-object p1, v0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 226
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderCursor;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 232
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/model/LoaderCursor;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    iget-object v2, v0, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/launcher3/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 233
    iget p1, p0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    iput p1, v0, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    .line 234
    iget p1, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    iput p1, v0, Lcom/android/launcher3/ShortcutInfo;->status:I

    .line 235
    return-object v0

    .line 229
    :cond_4
    new-instance p1, Ljava/security/InvalidParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid restoreType "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final hasRestoreFlag(I)Z
    .locals 1

    .line 334
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isOnWorkspaceOrHotseat()Z
    .locals 4

    .line 352
    iget-wide v0, p0, Lcom/android/launcher3/model/LoaderCursor;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/launcher3/model/LoaderCursor;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected final loadIcon(Lcom/android/launcher3/ShortcutInfo;)Z
    .locals 6

    .line 169
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 170
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->iconPackageIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    iget v2, p0, Lcom/android/launcher3/model/LoaderCursor;->iconResourceIndex:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 173
    :cond_0
    new-instance v3, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v3}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v3, p1, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 174
    iget-object v3, p1, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v0, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 175
    iget-object v0, p1, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v2, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object v0

    .line 177
    iget-object v2, p1, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/content/Intent$ShortcutIconResource;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object v2

    .line 178
    invoke-virtual {v0}, Lcom/android/launcher3/graphics/LauncherIcons;->recycle()V

    .line 179
    if-eqz v2, :cond_1

    .line 180
    invoke-virtual {v2, p1}, Lcom/android/launcher3/graphics/BitmapInfo;->applyTo(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 181
    return v1

    .line 187
    :cond_1
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->iconIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getBlob(I)[B

    move-result-object v0

    .line 188
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v4, 0x0

    .line 189
    :try_start_1
    array-length v5, v0

    invoke-static {v0, v2, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/graphics/BitmapInfo;->applyTo(Lcom/android/launcher3/ItemInfoWithIcon;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Lcom/android/launcher3/graphics/LauncherIcons;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    return v1

    .line 191
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    move-object v4, v0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 191
    :goto_0
    if-eqz v3, :cond_4

    if-eqz v4, :cond_3

    :try_start_4
    invoke-virtual {v3}, Lcom/android/launcher3/graphics/LauncherIcons;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_5
    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/android/launcher3/graphics/LauncherIcons;->close()V

    :cond_4
    :goto_1
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    .line 192
    const-string v1, "LoaderCursor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to load icon for info "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    return v2
.end method

.method public final loadSimpleShortcut()Lcom/android/launcher3/ShortcutInfo;
    .locals 3

    .line 150
    new-instance v0, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v0}, Lcom/android/launcher3/ShortcutInfo;-><init>()V

    .line 152
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    .line 153
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    iput v1, v0, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    .line 154
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderCursor;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->loadIcon(Lcom/android/launcher3/ShortcutInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/IconCache;

    iget-object v2, v0, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/graphics/BitmapInfo;->applyTo(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 162
    :cond_0
    return-object v0
.end method

.method public final markDeleted(Ljava/lang/String;)V
    .locals 2

    .line 304
    const-string v0, "LoaderCursor"

    invoke-static {v0, p1}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object p1, p0, Lcom/android/launcher3/model/LoaderCursor;->itemsToRemove:Ljava/util/ArrayList;

    iget-wide v0, p0, Lcom/android/launcher3/model/LoaderCursor;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    return-void
.end method

.method public final markRestored()V
    .locals 3

    .line 327
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoredRows:Ljava/util/ArrayList;

    iget-wide v1, p0, Lcom/android/launcher3/model/LoaderCursor;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    .line 331
    :cond_0
    return-void
.end method

.method public moveToNext()Z
    .locals 4

    .line 125
    invoke-super {p0}, Landroid/database/CursorWrapper;->moveToNext()Z

    move-result v0

    .line 126
    if-eqz v0, :cond_0

    .line 128
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->itemTypeIndex:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    .line 129
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->containerIndex:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/launcher3/model/LoaderCursor;->container:J

    .line 130
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->idIndex:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/LoaderCursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/launcher3/model/LoaderCursor;->id:J

    .line 131
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->profileIdIndex:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    .line 132
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->allUsers:Landroid/util/LongSparseArray;

    iget-wide v2, p0, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    iput-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    .line 133
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->restoredIndex:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    .line 135
    :cond_0
    return v0
.end method

.method public final parseIntent()Landroid/content/Intent;
    .locals 3

    .line 139
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->intentIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    return-object v1

    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    return-object v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    const-string v0, "LoaderCursor"

    const-string v2, "Error parsing Intent"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-object v1
.end method

.method public final updater()Lcom/android/launcher3/util/ContentWriter;
    .locals 7

    .line 296
    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/launcher3/util/ContentWriter$CommitParams;

    const-string v3, "_id= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/launcher3/model/LoaderCursor;->id:J

    .line 297
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/util/ContentWriter$CommitParams;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;Lcom/android/launcher3/util/ContentWriter$CommitParams;)V

    .line 296
    return-object v0
.end method
