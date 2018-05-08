.class Lcom/android/launcher3/CellLayout$ItemConfiguration;
.super Lcom/android/launcher3/util/CellAndSpan;
.source "SourceFile"


# instance fields
.field intersectingViews:Ljava/util/ArrayList;

.field isSolution:Z

.field final map:Landroid/util/ArrayMap;

.field final savedMap:Landroid/util/ArrayMap;

.field final sortedViews:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2346
    invoke-direct {p0}, Lcom/android/launcher3/util/CellAndSpan;-><init>()V

    .line 2347
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    .line 2348
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->savedMap:Landroid/util/ArrayMap;

    .line 2349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    .line 2351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 2346
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>()V

    return-void
.end method


# virtual methods
.method final area()I
    .locals 2

    .line 2374
    iget v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanX:I

    iget v1, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanY:I

    mul-int/2addr v0, v1

    return v0
.end method

.method final getBoundingRectForViews(Ljava/util/ArrayList;Landroid/graphics/Rect;)V
    .locals 6

    .line 2378
    nop

    .line 2379
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2380
    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    .line 2381
    if-eqz v0, :cond_0

    .line 2382
    iget v0, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v2, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v3, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v4, v1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v3, v4

    iget v4, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v1, v1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v4, v1

    invoke-virtual {p2, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2383
    const/4 v0, 0x0

    goto :goto_0

    .line 2385
    :cond_0
    iget v2, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v3, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v4, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v5, v1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v4, v5

    iget v5, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v1, v1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v5, v1

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    .line 2387
    goto :goto_0

    .line 2388
    :cond_1
    return-void
.end method
