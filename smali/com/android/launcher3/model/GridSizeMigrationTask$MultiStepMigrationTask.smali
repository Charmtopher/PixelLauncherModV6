.class public Lcom/android/launcher3/model/GridSizeMigrationTask$MultiStepMigrationTask;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mValidPackages:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Ljava/util/HashSet;Landroid/content/Context;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1001
    iput-object p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$MultiStepMigrationTask;->mValidPackages:Ljava/util/HashSet;

    .line 1002
    iput-object p2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$MultiStepMigrationTask;->mContext:Landroid/content/Context;

    .line 1003
    return-void
.end method


# virtual methods
.method public final migrate(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 10

    .line 1006
    nop

    .line 1007
    invoke-virtual {p2, p1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 1008
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    if-ge v0, v2, :cond_0

    .line 1010
    iget v0, p2, Landroid/graphics/Point;->x:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 1012
    :cond_0
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    if-ge v0, v2, :cond_1

    .line 1014
    iget v0, p2, Landroid/graphics/Point;->y:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 1019
    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1021
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    .line 1022
    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/4 v8, 0x1

    if-ge v2, v3, :cond_2

    .line 1023
    iget v2, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v8

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 1025
    :cond_2
    iget v2, p2, Landroid/graphics/Point;->y:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-ge v2, v3, :cond_3

    .line 1026
    iget v2, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v8

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 1028
    :cond_3
    new-instance v9, Lcom/android/launcher3/model/GridSizeMigrationTask;

    iget-object v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$MultiStepMigrationTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$MultiStepMigrationTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    iget-object v4, v2, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v5, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$MultiStepMigrationTask;->mValidPackages:Ljava/util/HashSet;

    move-object v2, v9

    move-object v6, p1

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/model/GridSizeMigrationTask;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/HashSet;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v9}, Lcom/android/launcher3/model/GridSizeMigrationTask;->migrateWorkspace()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1029
    nop

    .line 1031
    move v1, v8

    :cond_4
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Point;->set(II)V

    .line 1032
    goto :goto_0

    .line 1034
    :cond_5
    return v1
.end method
