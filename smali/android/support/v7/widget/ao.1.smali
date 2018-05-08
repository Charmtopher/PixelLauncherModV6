.class public Landroid/support/v7/widget/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field qe:Landroid/util/SparseArray;

.field qf:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5353
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ao;->qe:Landroid/util/SparseArray;

    .line 5355
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ao;->qf:I

    return-void
.end method


# virtual methods
.method final V(I)Landroid/support/v7/widget/ap;
    .locals 2

    .line 5506
    iget-object v0, p0, Landroid/support/v7/widget/ao;->qe:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ap;

    .line 5507
    if-nez v0, :cond_0

    .line 5508
    new-instance v0, Landroid/support/v7/widget/ap;

    invoke-direct {v0}, Landroid/support/v7/widget/ap;-><init>()V

    .line 5509
    iget-object v1, p0, Landroid/support/v7/widget/ao;->qe:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5511
    :cond_0
    return-object v0
.end method

.method final a(JJ)J
    .locals 4

    .line 5444
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 5445
    return-wide p3

    .line 5447
    :cond_0
    const-wide/16 v0, 0x4

    div-long/2addr p1, v0

    const-wide/16 v2, 0x3

    mul-long/2addr p1, v2

    div-long/2addr p3, v0

    add-long/2addr p1, p3

    return-wide p1
.end method

.method final attach()V
    .locals 1

    .line 5473
    iget v0, p0, Landroid/support/v7/widget/ao;->qf:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/ao;->qf:I

    .line 5474
    return-void
.end method

.method public final clear()V
    .locals 2

    .line 5361
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/ao;->qe:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5362
    iget-object v1, p0, Landroid/support/v7/widget/ao;->qe:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ap;

    .line 5363
    iget-object v1, v1, Landroid/support/v7/widget/ap;->qg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5365
    :cond_0
    return-void
.end method

.method final detach()V
    .locals 1

    .line 5477
    iget v0, p0, Landroid/support/v7/widget/ao;->qf:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/ao;->qf:I

    .line 5478
    return-void
.end method

.method public final k(Landroid/support/v7/widget/aA;)V
    .locals 3

    .line 5431
    iget v0, p1, Landroid/support/v7/widget/aA;->mItemViewType:I

    .line 5432
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ao;->V(I)Landroid/support/v7/widget/ap;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v7/widget/ap;->qg:Ljava/util/ArrayList;

    .line 5433
    iget-object v2, p0, Landroid/support/v7/widget/ao;->qe:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ap;

    iget v0, v0, Landroid/support/v7/widget/ap;->qh:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 5434
    return-void

    .line 5439
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->resetInternal()V

    .line 5440
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5441
    return-void
.end method

.method public final u(II)V
    .locals 1

    .line 5374
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ao;->V(I)Landroid/support/v7/widget/ap;

    move-result-object p1

    .line 5375
    iput p2, p1, Landroid/support/v7/widget/ap;->qh:I

    .line 5376
    iget-object p1, p1, Landroid/support/v7/widget/ap;->qg:Ljava/util/ArrayList;

    .line 5377
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 5378
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 5380
    :cond_0
    return-void
.end method
