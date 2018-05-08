.class public final Lcom/android/launcher3/CellLayout$CellInfo;
.super Lcom/android/launcher3/util/CellAndSpan;
.source "SourceFile"


# instance fields
.field public final cell:Landroid/view/View;

.field final container:J

.field final screenId:J


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V
    .locals 2

    .line 2709
    invoke-direct {p0}, Lcom/android/launcher3/util/CellAndSpan;-><init>()V

    .line 2710
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cellX:I

    .line 2711
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cellY:I

    .line 2712
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->spanX:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->spanX:I

    .line 2713
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->spanY:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->spanY:I

    .line 2714
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2715
    iget-wide v0, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    iput-wide v0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:J

    .line 2716
    iget-wide p1, p2, Lcom/android/launcher3/ItemInfo;->container:J

    iput-wide p1, p0, Lcom/android/launcher3/CellLayout$CellInfo;->container:J

    .line 2717
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 2721
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cell[view="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
