.class Landroid/support/v7/widget/aJ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final cx:I

.field rB:Ljava/util/ArrayList;

.field rC:I

.field rD:I

.field rE:I

.field final synthetic rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# virtual methods
.method final a(IIZ)I
    .locals 10

    .line 2795
    iget-object v0, p0, Landroid/support/v7/widget/aJ;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->by()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/aJ;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v1}, Landroid/support/v7/widget/M;->bz()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-le p2, p1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eq p1, p2, :cond_7

    iget-object v5, p0, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    iget-object v6, p0, Landroid/support/v7/widget/aJ;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/M;->S(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/widget/aJ;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v7, v5}, Landroid/support/v7/widget/M;->T(Landroid/view/View;)I

    move-result v7

    const/4 v8, 0x0

    if-eqz p3, :cond_2

    if-gt v6, v1, :cond_1

    :goto_1
    move v9, v3

    goto :goto_2

    :cond_1
    move v9, v8

    goto :goto_2

    :cond_2
    if-ge v6, v1, :cond_1

    goto :goto_1

    :goto_2
    if-eqz p3, :cond_4

    if-lt v7, v0, :cond_3

    :goto_3
    move v8, v3

    goto :goto_4

    :cond_3
    goto :goto_4

    :cond_4
    if-le v7, v0, :cond_3

    goto :goto_3

    :goto_4
    if-eqz v9, :cond_6

    if-eqz v8, :cond_6

    if-lt v6, v0, :cond_5

    if-le v7, v1, :cond_6

    :cond_5
    iget-object p1, p0, Landroid/support/v7/widget/aJ;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    return p1

    :cond_6
    add-int/2addr p1, v4

    goto :goto_0

    :cond_7
    return v2
.end method

.method final ad(Landroid/view/View;)V
    .locals 4

    .line 2589
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aG;

    .line 2590
    iput-object p0, v0, Landroid/support/v7/widget/aG;->rq:Landroid/support/v7/widget/aJ;

    .line 2591
    iget-object v1, p0, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2592
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/support/v7/widget/aJ;->rC:I

    .line 2593
    iget-object v2, p0, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2594
    iput v1, p0, Landroid/support/v7/widget/aJ;->rD:I

    .line 2596
    :cond_0
    iget-object v1, v0, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    invoke-virtual {v1}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2597
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/aJ;->rE:I

    iget-object v1, p0, Landroid/support/v7/widget/aJ;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/M;->W(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/aJ;->rE:I

    .line 2599
    :cond_2
    return-void
.end method

.method final ae(Landroid/view/View;)V
    .locals 4

    .line 2602
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aG;

    .line 2603
    iput-object p0, v0, Landroid/support/v7/widget/aG;->rq:Landroid/support/v7/widget/aJ;

    .line 2604
    iget-object v1, p0, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2605
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/support/v7/widget/aJ;->rD:I

    .line 2606
    iget-object v2, p0, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2607
    iput v1, p0, Landroid/support/v7/widget/aJ;->rC:I

    .line 2609
    :cond_0
    iget-object v1, v0, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    invoke-virtual {v1}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2610
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/aJ;->rE:I

    iget-object v1, p0, Landroid/support/v7/widget/aJ;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/M;->W(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/aJ;->rE:I

    .line 2612
    :cond_2
    return-void
.end method

.method final am(I)I
    .locals 2

    .line 2522
    iget v0, p0, Landroid/support/v7/widget/aJ;->rC:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2523
    iget p1, p0, Landroid/support/v7/widget/aJ;->rC:I

    return p1

    .line 2525
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2526
    return p1

    .line 2528
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/aJ;->bR()V

    .line 2529
    iget p1, p0, Landroid/support/v7/widget/aJ;->rC:I

    return p1
.end method

.method final an(I)I
    .locals 2

    .line 2555
    iget v0, p0, Landroid/support/v7/widget/aJ;->rD:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2556
    iget p1, p0, Landroid/support/v7/widget/aJ;->rD:I

    return p1

    .line 2558
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2559
    if-nez v0, :cond_1

    .line 2560
    return p1

    .line 2562
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/aJ;->bT()V

    .line 2563
    iget p1, p0, Landroid/support/v7/widget/aJ;->rD:I

    return p1
.end method

.method final ao(I)V
    .locals 0

    .line 2648
    iput p1, p0, Landroid/support/v7/widget/aJ;->rC:I

    iput p1, p0, Landroid/support/v7/widget/aJ;->rD:I

    .line 2649
    return-void
.end method

.method final ap(I)V
    .locals 2

    .line 2687
    iget v0, p0, Landroid/support/v7/widget/aJ;->rC:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2688
    iget v0, p0, Landroid/support/v7/widget/aJ;->rC:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/aJ;->rC:I

    .line 2690
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/aJ;->rD:I

    if-eq v0, v1, :cond_1

    .line 2691
    iget v0, p0, Landroid/support/v7/widget/aJ;->rD:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/aJ;->rD:I

    .line 2693
    :cond_1
    return-void
.end method

.method final bR()V
    .locals 3

    .line 2533
    iget-object v0, p0, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2534
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aG;

    .line 2535
    iget-object v2, p0, Landroid/support/v7/widget/aJ;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/M;->S(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/aJ;->rC:I

    .line 2536
    iget-boolean v0, v1, Landroid/support/v7/widget/aG;->rr:Z

    if-eqz v0, :cond_0

    .line 2537
    iget-object v0, p0, Landroid/support/v7/widget/aJ;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rd:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 2538
    iget-object v1, v1, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    invoke-virtual {v1}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->ak(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 2539
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->rt:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2540
    iget v1, p0, Landroid/support/v7/widget/aJ;->rC:I

    iget v2, p0, Landroid/support/v7/widget/aJ;->cx:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->al(I)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/support/v7/widget/aJ;->rC:I

    .line 2543
    :cond_0
    return-void
.end method

.method final bS()I
    .locals 2

    .line 2547
    iget v0, p0, Landroid/support/v7/widget/aJ;->rC:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2548
    iget v0, p0, Landroid/support/v7/widget/aJ;->rC:I

    return v0

    .line 2550
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/aJ;->bR()V

    .line 2551
    iget v0, p0, Landroid/support/v7/widget/aJ;->rC:I

    return v0
.end method

.method final bT()V
    .locals 4

    .line 2567
    iget-object v0, p0, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2568
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aG;

    .line 2569
    iget-object v3, p0, Landroid/support/v7/widget/aJ;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/M;->T(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/aJ;->rD:I

    .line 2570
    iget-boolean v0, v1, Landroid/support/v7/widget/aG;->rr:Z

    if-eqz v0, :cond_0

    .line 2571
    iget-object v0, p0, Landroid/support/v7/widget/aJ;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rd:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 2572
    iget-object v1, v1, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    invoke-virtual {v1}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->ak(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 2573
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->rt:I

    if-ne v1, v2, :cond_0

    .line 2574
    iget v1, p0, Landroid/support/v7/widget/aJ;->rD:I

    iget v2, p0, Landroid/support/v7/widget/aJ;->cx:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->al(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Landroid/support/v7/widget/aJ;->rD:I

    .line 2577
    :cond_0
    return-void
.end method

.method final bU()I
    .locals 2

    .line 2581
    iget v0, p0, Landroid/support/v7/widget/aJ;->rD:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2582
    iget v0, p0, Landroid/support/v7/widget/aJ;->rD:I

    return v0

    .line 2584
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/aJ;->bT()V

    .line 2585
    iget v0, p0, Landroid/support/v7/widget/aJ;->rD:I

    return v0
.end method

.method final bV()V
    .locals 4

    .line 2652
    iget-object v0, p0, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2653
    iget-object v1, p0, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2654
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/aG;

    .line 2655
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/aG;->rq:Landroid/support/v7/widget/aJ;

    .line 2656
    iget-object v3, v2, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, v2, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    invoke-virtual {v2}, Landroid/support/v7/widget/aA;->isUpdated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2657
    :cond_0
    iget v2, p0, Landroid/support/v7/widget/aJ;->rE:I

    iget-object v3, p0, Landroid/support/v7/widget/aJ;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/M;->W(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, p0, Landroid/support/v7/widget/aJ;->rE:I

    .line 2659
    :cond_1
    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 2660
    iput v1, p0, Landroid/support/v7/widget/aJ;->rC:I

    .line 2662
    :cond_2
    iput v1, p0, Landroid/support/v7/widget/aJ;->rD:I

    .line 2663
    return-void
.end method

.method final bW()V
    .locals 4

    .line 2666
    iget-object v0, p0, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2667
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aG;

    .line 2668
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/aG;->rq:Landroid/support/v7/widget/aJ;

    .line 2669
    iget-object v2, p0, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/high16 v3, -0x80000000

    if-nez v2, :cond_0

    .line 2670
    iput v3, p0, Landroid/support/v7/widget/aJ;->rD:I

    .line 2672
    :cond_0
    iget-object v2, v1, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    invoke-virtual {v2}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, v1, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    invoke-virtual {v1}, Landroid/support/v7/widget/aA;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2673
    :cond_1
    iget v1, p0, Landroid/support/v7/widget/aJ;->rE:I

    iget-object v2, p0, Landroid/support/v7/widget/aJ;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/M;->W(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/support/v7/widget/aJ;->rE:I

    .line 2675
    :cond_2
    iput v3, p0, Landroid/support/v7/widget/aJ;->rC:I

    .line 2676
    return-void
.end method

.method public final bX()I
    .locals 3

    .line 2702
    iget-object v0, p0, Landroid/support/v7/widget/aJ;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    .line 2703
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Landroid/support/v7/widget/aJ;->a(IIZ)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    .line 2704
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v0, v2, v1}, Landroid/support/v7/widget/aJ;->a(IIZ)I

    move-result v0

    return v0
.end method

.method public final bY()I
    .locals 3

    .line 2720
    iget-object v0, p0, Landroid/support/v7/widget/aJ;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    .line 2721
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v0, v2, v1}, Landroid/support/v7/widget/aJ;->a(IIZ)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    .line 2722
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Landroid/support/v7/widget/aJ;->a(IIZ)I

    move-result v0

    return v0
.end method

.method final clear()V
    .locals 1

    .line 2637
    iget-object v0, p0, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2638
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/aJ;->rC:I

    iput v0, p0, Landroid/support/v7/widget/aJ;->rD:I

    .line 2639
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/aJ;->rE:I

    .line 2640
    return-void
.end method

.method public final y(II)Landroid/view/View;
    .locals 4

    .line 2803
    nop

    .line 2804
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_3

    .line 2805
    iget-object p2, p0, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 2806
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 2807
    iget-object v2, p0, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2808
    iget-object v3, p0, Landroid/support/v7/widget/aJ;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/aJ;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-le v3, p1, :cond_2

    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/aJ;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/aJ;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 2809
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-ge v3, p1, :cond_2

    .line 2810
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2813
    nop

    .line 2806
    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    goto :goto_0

    .line 2818
    :cond_2
    goto :goto_2

    .line 2819
    :cond_3
    iget-object p2, p0, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_6

    .line 2820
    iget-object v0, p0, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2821
    iget-object v2, p0, Landroid/support/v7/widget/aJ;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/aJ;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    if-ge v2, p1, :cond_6

    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/aJ;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Landroid/support/v7/widget/aJ;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 2822
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    if-le v2, p1, :cond_6

    .line 2823
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2826
    nop

    .line 2819
    add-int/lit8 p2, p2, -0x1

    move-object v1, v0

    goto :goto_1

    .line 2832
    :cond_6
    :goto_2
    return-object v1
.end method
