.class public Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;
.super Lcom/android/launcher3/ItemInfo;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public weight:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 820
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public final addToContentValues(Landroid/content/ContentValues;)V
    .locals 3

    .line 857
    const-string v0, "screen"

    iget-wide v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->screenId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 858
    const-string v0, "cellX"

    iget v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 859
    const-string v0, "cellY"

    iget v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 860
    const-string v0, "spanX"

    iget v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 861
    const-string v0, "spanY"

    iget v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 862
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 816
    check-cast p1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->itemType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->itemType:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    iget p1, p1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    mul-int/2addr v0, p1

    iget p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    iget v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    mul-int/2addr p1, v1

    sub-int/2addr v0, p1

    return v0

    :cond_0
    const/4 p1, -0x1

    return p1

    :cond_1
    iget v0, p1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->itemType:I

    if-ne v0, v1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    iget p1, p1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F

    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public final copy()Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;
    .locals 2

    .line 823
    new-instance v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    invoke-direct {v0}, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;-><init>()V

    .line 824
    invoke-virtual {v0, p0}, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->copyFrom(Lcom/android/launcher3/ItemInfo;)V

    .line 825
    iget v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F

    iput v1, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F

    .line 826
    iget v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->minSpanX:I

    iput v1, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->minSpanX:I

    .line 827
    iget v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->minSpanY:I

    iput v1, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->minSpanY:I

    .line 828
    return-object v0
.end method
