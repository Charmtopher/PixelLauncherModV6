.class public Lcom/android/launcher3/provider/LossyScreenMigrationTask;
.super Lcom/android/launcher3/model/GridSizeMigrationTask;
.source "SourceFile"


# instance fields
.field final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field final mOriginalItems:Lcom/android/launcher3/util/LongArrayMap;

.field final mUpdates:Lcom/android/launcher3/util/LongArrayMap;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .line 48
    invoke-static {p1}, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->getValidPackages(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v3

    new-instance v4, Landroid/graphics/Point;

    iget v0, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v1, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v5, Landroid/graphics/Point;

    iget v0, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v1, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/model/GridSizeMigrationTask;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/HashSet;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 52
    iput-object p3, p0, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 53
    new-instance p1, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {p1}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mOriginalItems:Lcom/android/launcher3/util/LongArrayMap;

    .line 54
    new-instance p1, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {p1}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mUpdates:Lcom/android/launcher3/util/LongArrayMap;

    .line 55
    return-void
.end method


# virtual methods
.method protected final loadWorkspaceEntries(J)Ljava/util/ArrayList;
    .locals 5

    .line 69
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/model/GridSizeMigrationTask;->loadWorkspaceEntries(J)Ljava/util/ArrayList;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 71
    iget-object v1, p0, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mOriginalItems:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v2, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-virtual {v0}, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->copy()Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 74
    iget v1, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    .line 75
    iget-object v1, p0, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mUpdates:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v2, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-virtual {v0}, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->copy()Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 76
    goto :goto_0

    .line 78
    :cond_0
    return-object p1
.end method

.method protected final queryWorkspace([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorites"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method protected final update(Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;)V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mUpdates:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v1, p1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-virtual {p1}, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->copy()Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 65
    return-void
.end method
