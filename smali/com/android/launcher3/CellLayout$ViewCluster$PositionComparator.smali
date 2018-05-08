.class Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/CellLayout$ViewCluster;

.field whichEdge:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/CellLayout$ViewCluster;)V
    .locals 0

    .line 1427
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;->this$1:Lcom/android/launcher3/CellLayout$ViewCluster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1428
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;->whichEdge:I

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1427
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;->this$1:Lcom/android/launcher3/CellLayout$ViewCluster;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/CellAndSpan;

    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;->this$1:Lcom/android/launcher3/CellLayout$ViewCluster;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/util/CellAndSpan;

    iget v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;->whichEdge:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    iget p1, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget p2, p2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    :goto_0
    sub-int/2addr p1, p2

    return p1

    :pswitch_0
    iget v0, p2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget p2, p2, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v0, p2

    iget p2, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget p1, p1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    :goto_1
    add-int/2addr p2, p1

    sub-int/2addr v0, p2

    return v0

    :pswitch_1
    iget v0, p2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget p2, p2, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v0, p2

    iget p2, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget p1, p1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    goto :goto_1

    :cond_0
    iget p1, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget p2, p2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
