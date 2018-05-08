.class Lcom/android/launcher3/CellLayout$ViewCluster;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final bottomEdge:[I

.field final boundingRect:Landroid/graphics/Rect;

.field boundingRectDirty:Z

.field final comparator:Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;

.field final config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

.field dirtyEdges:I

.field final leftEdge:[I

.field final rightEdge:[I

.field final synthetic this$0:Lcom/android/launcher3/CellLayout;

.field final topEdge:[I

.field final views:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;)V
    .locals 0

    .line 1291
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1281
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    .line 1283
    iget-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-static {p1}, Lcom/android/launcher3/CellLayout;->access$000(Lcom/android/launcher3/CellLayout;)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    .line 1284
    iget-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-static {p1}, Lcom/android/launcher3/CellLayout;->access$000(Lcom/android/launcher3/CellLayout;)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->rightEdge:[I

    .line 1285
    iget-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-static {p1}, Lcom/android/launcher3/CellLayout;->access$100(Lcom/android/launcher3/CellLayout;)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->topEdge:[I

    .line 1286
    iget-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-static {p1}, Lcom/android/launcher3/CellLayout;->access$100(Lcom/android/launcher3/CellLayout;)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->bottomEdge:[I

    .line 1426
    new-instance p1, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;

    invoke-direct {p1, p0}, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;-><init>(Lcom/android/launcher3/CellLayout$ViewCluster;)V

    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->comparator:Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;

    .line 1292
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    .line 1293
    iput-object p3, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    .line 1294
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout$ViewCluster;->resetEdges()V

    .line 1295
    return-void
.end method


# virtual methods
.method public final getBoundingRect()Landroid/graphics/Rect;
    .locals 3

    .line 1420
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->boundingRectDirty:Z

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->getBoundingRectForViews(Ljava/util/ArrayList;Landroid/graphics/Rect;)V

    .line 1423
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method final resetEdges()V
    .locals 4

    .line 1298
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-static {v2}, Lcom/android/launcher3/CellLayout;->access$100(Lcom/android/launcher3/CellLayout;)I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_0

    .line 1299
    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->topEdge:[I

    aput v3, v2, v1

    .line 1300
    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->bottomEdge:[I

    aput v3, v2, v1

    .line 1298
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1302
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-static {v1}, Lcom/android/launcher3/CellLayout;->access$000(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1303
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    aput v3, v1, v0

    .line 1304
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->rightEdge:[I

    aput v3, v1, v0

    .line 1302
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1306
    :cond_1
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->dirtyEdges:I

    .line 1307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->boundingRectDirty:Z

    .line 1308
    return-void
.end method
