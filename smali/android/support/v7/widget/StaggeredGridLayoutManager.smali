.class public Landroid/support/v7/widget/StaggeredGridLayoutManager;
.super Landroid/support/v7/widget/af;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/aw;


# instance fields
.field private mOrientation:I

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field mReverseLayout:Z

.field mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field private mSpanCount:I

.field private final mX:Landroid/graphics/Rect;

.field qX:[Landroid/support/v7/widget/aJ;

.field qY:Landroid/support/v7/widget/M;

.field qZ:Landroid/support/v7/widget/M;

.field private ra:I

.field private final rb:Landroid/support/v7/widget/E;

.field private rc:Ljava/util/BitSet;

.field rd:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

.field private re:I

.field private rf:Z

.field private rg:Z

.field private rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

.field private ri:I

.field private final rj:Landroid/support/v7/widget/aF;

.field private rk:Z

.field private rl:[I

.field private final rm:Ljava/lang/Runnable;


# direct methods
.method private a(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/E;Landroid/support/v7/widget/ax;)I
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 1577
    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rc:Ljava/util/BitSet;

    iget v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v1, v10}, Ljava/util/BitSet;->set(IIZ)V

    .line 1582
    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iget-boolean v0, v0, Landroid/support/v7/widget/E;->pv:Z

    if-eqz v0, :cond_1

    .line 1583
    iget v0, v8, Landroid/support/v7/widget/E;->pr:I

    if-ne v0, v10, :cond_0

    .line 1584
    nop

    .line 1596
    const v13, 0x7fffffff

    goto :goto_1

    .line 1586
    :cond_0
    nop

    .line 1596
    const/high16 v13, -0x80000000

    goto :goto_1

    .line 1589
    :cond_1
    iget v0, v8, Landroid/support/v7/widget/E;->pr:I

    if-ne v0, v10, :cond_2

    .line 1590
    iget v0, v8, Landroid/support/v7/widget/E;->pt:I

    iget v1, v8, Landroid/support/v7/widget/E;->po:I

    add-int/2addr v0, v1

    .line 1596
    :goto_0
    move v13, v0

    goto :goto_1

    .line 1592
    :cond_2
    iget v0, v8, Landroid/support/v7/widget/E;->ps:I

    iget v1, v8, Landroid/support/v7/widget/E;->po:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1596
    :goto_1
    iget v0, v8, Landroid/support/v7/widget/E;->pr:I

    invoke-direct {v6, v0, v13}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v(II)V

    .line 1603
    iget-boolean v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_3

    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    .line 1604
    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bz()I

    move-result v0

    .line 1606
    :goto_2
    move v14, v0

    goto :goto_3

    .line 1604
    :cond_3
    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    .line 1605
    invoke-virtual {v0}, Landroid/support/v7/widget/M;->by()I

    move-result v0

    goto :goto_2

    .line 1606
    :goto_3
    nop

    .line 1607
    move v0, v9

    :goto_4
    invoke-virtual/range {p2 .. p3}, Landroid/support/v7/widget/E;->a(Landroid/support/v7/widget/ax;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2e

    iget-object v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iget-boolean v1, v1, Landroid/support/v7/widget/E;->pv:Z

    if-nez v1, :cond_4

    iget-object v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rc:Ljava/util/BitSet;

    .line 1608
    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1609
    :cond_4
    iget v0, v8, Landroid/support/v7/widget/E;->pp:I

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/aq;->X(I)Landroid/view/View;

    move-result-object v15

    iget v0, v8, Landroid/support/v7/widget/E;->pp:I

    iget v1, v8, Landroid/support/v7/widget/E;->pq:I

    add-int/2addr v0, v1

    iput v0, v8, Landroid/support/v7/widget/E;->pp:I

    .line 1610
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/support/v7/widget/aG;

    .line 1611
    iget-object v0, v5, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result v0

    .line 1612
    iget-object v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rd:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v3, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v3, :cond_6

    iget-object v3, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v3, v3

    if-lt v0, v3, :cond_5

    goto :goto_5

    :cond_5
    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    aget v1, v1, v0

    goto :goto_6

    .line 1614
    :cond_6
    :goto_5
    move v1, v2

    :goto_6
    if-ne v1, v2, :cond_7

    .line 1615
    move v3, v10

    goto :goto_7

    .line 1614
    :cond_7
    nop

    .line 1615
    move v3, v9

    :goto_7
    if-eqz v3, :cond_e

    .line 1616
    iget-boolean v1, v5, Landroid/support/v7/widget/aG;->rr:Z

    if-eqz v1, :cond_8

    iget-object v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v1, v1, v9

    goto :goto_b

    :cond_8
    iget v1, v8, Landroid/support/v7/widget/E;->pr:I

    invoke-direct {v6, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->af(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr v1, v10

    move v4, v2

    move/from16 v16, v4

    goto :goto_8

    :cond_9
    iget v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move v4, v1

    move v1, v9

    move/from16 v16, v10

    :goto_8
    iget v11, v8, Landroid/support/v7/widget/E;->pr:I

    const/16 v17, 0x0

    if-ne v11, v10, :cond_c

    iget-object v11, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v11}, Landroid/support/v7/widget/M;->by()I

    move-result v11

    const v12, 0x7fffffff

    :goto_9
    if-eq v1, v4, :cond_b

    iget-object v2, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v2, v2, v1

    invoke-virtual {v2, v11}, Landroid/support/v7/widget/aJ;->an(I)I

    move-result v9

    if-ge v9, v12, :cond_a

    move-object/from16 v17, v2

    move v12, v9

    :cond_a
    add-int v1, v1, v16

    const/4 v2, -0x1

    const/4 v9, 0x0

    goto :goto_9

    .line 1617
    :cond_b
    move-object/from16 v1, v17

    goto :goto_b

    .line 1616
    :cond_c
    iget-object v2, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v2}, Landroid/support/v7/widget/M;->bz()I

    move-result v2

    const/high16 v9, -0x80000000

    :goto_a
    if-eq v1, v4, :cond_b

    iget-object v11, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v11, v11, v1

    invoke-virtual {v11, v2}, Landroid/support/v7/widget/aJ;->am(I)I

    move-result v12

    if-le v12, v9, :cond_d

    move-object/from16 v17, v11

    move v9, v12

    :cond_d
    add-int v1, v1, v16

    goto :goto_a

    .line 1617
    :goto_b
    iget-object v2, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rd:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->aj(I)V

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iget v4, v1, Landroid/support/v7/widget/aJ;->cx:I

    aput v4, v2, v0

    goto :goto_c

    .line 1625
    :cond_e
    iget-object v2, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v1, v2, v1

    .line 1628
    :goto_c
    move-object v9, v1

    iput-object v9, v5, Landroid/support/v7/widget/aG;->rq:Landroid/support/v7/widget/aJ;

    .line 1629
    iget v1, v8, Landroid/support/v7/widget/E;->pr:I

    if-ne v1, v10, :cond_f

    .line 1630
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-super {v6, v15, v2, v1}, Landroid/support/v7/widget/af;->addViewInt(Landroid/view/View;IZ)V

    goto :goto_d

    .line 1632
    :cond_f
    const/4 v1, 0x0

    invoke-super {v6, v15, v1, v1}, Landroid/support/v7/widget/af;->addViewInt(Landroid/view/View;IZ)V

    .line 1634
    :goto_d
    iget-boolean v1, v5, Landroid/support/v7/widget/aG;->rr:Z

    if-eqz v1, :cond_11

    iget v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v1, v10, :cond_10

    iget v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ri:I

    iget v2, v6, Landroid/support/v7/widget/af;->mHeight:I

    iget v4, v6, Landroid/support/v7/widget/af;->mHeightMode:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v5, Landroid/support/v7/widget/aG;->height:I

    invoke-static {v2, v4, v11, v12, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v2

    const/4 v4, 0x0

    :goto_e
    invoke-direct {v6, v15, v1, v2, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_f

    :cond_10
    const/4 v4, 0x0

    iget v1, v6, Landroid/support/v7/widget/af;->mWidth:I

    iget v2, v6, Landroid/support/v7/widget/af;->mWidthMode:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v5, Landroid/support/v7/widget/aG;->width:I

    invoke-static {v1, v2, v11, v12, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    iget v2, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ri:I

    goto :goto_e

    :cond_11
    const/4 v4, 0x0

    iget v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v1, v10, :cond_12

    iget v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ra:I

    iget v2, v6, Landroid/support/v7/widget/af;->mWidthMode:I

    iget v11, v5, Landroid/support/v7/widget/aG;->width:I

    invoke-static {v1, v2, v4, v11, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    iget v2, v6, Landroid/support/v7/widget/af;->mHeight:I

    iget v11, v6, Landroid/support/v7/widget/af;->mHeightMode:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v16

    add-int v12, v12, v16

    iget v7, v5, Landroid/support/v7/widget/aG;->height:I

    invoke-static {v2, v11, v12, v7, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v2

    goto :goto_e

    :cond_12
    iget v1, v6, Landroid/support/v7/widget/af;->mWidth:I

    iget v2, v6, Landroid/support/v7/widget/af;->mWidthMode:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v7

    add-int/2addr v4, v7

    iget v7, v5, Landroid/support/v7/widget/aG;->width:I

    invoke-static {v1, v2, v4, v7, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    iget v2, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ra:I

    iget v4, v6, Landroid/support/v7/widget/af;->mHeightMode:I

    iget v7, v5, Landroid/support/v7/widget/aG;->height:I

    const/4 v11, 0x0

    invoke-static {v2, v4, v11, v7, v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v2

    invoke-direct {v6, v15, v1, v2, v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 1638
    :goto_f
    iget v1, v8, Landroid/support/v7/widget/E;->pr:I

    if-ne v1, v10, :cond_16

    .line 1639
    iget-boolean v1, v5, Landroid/support/v7/widget/aG;->rr:Z

    if-eqz v1, :cond_13

    invoke-direct {v6, v14}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ae(I)I

    move-result v1

    goto :goto_10

    .line 1640
    :cond_13
    invoke-virtual {v9, v14}, Landroid/support/v7/widget/aJ;->an(I)I

    move-result v1

    .line 1641
    :goto_10
    iget-object v2, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v2, v15}, Landroid/support/v7/widget/M;->W(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    .line 1642
    if-eqz v3, :cond_15

    iget-boolean v4, v5, Landroid/support/v7/widget/aG;->rr:Z

    if-eqz v4, :cond_15

    .line 1644
    new-instance v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    iget v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v7, v7, [I

    iput-object v7, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->ru:[I

    const/4 v7, 0x0

    :goto_11
    iget v11, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v7, v11, :cond_14

    iget-object v11, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->ru:[I

    iget-object v12, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v12, v12, v7

    invoke-virtual {v12, v1}, Landroid/support/v7/widget/aJ;->an(I)I

    move-result v12

    sub-int v12, v1, v12

    aput v12, v11, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 1645
    :cond_14
    const/4 v7, -0x1

    iput v7, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->rt:I

    .line 1646
    iput v0, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1647
    iget-object v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rd:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v7, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    .line 1648
    nop

    .line 1663
    :cond_15
    move v4, v1

    move v7, v2

    goto :goto_14

    .line 1650
    :cond_16
    iget-boolean v1, v5, Landroid/support/v7/widget/aG;->rr:Z

    if-eqz v1, :cond_17

    invoke-direct {v6, v14}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ad(I)I

    move-result v1

    goto :goto_12

    .line 1651
    :cond_17
    invoke-virtual {v9, v14}, Landroid/support/v7/widget/aJ;->am(I)I

    move-result v1

    .line 1652
    :goto_12
    iget-object v2, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v2, v15}, Landroid/support/v7/widget/M;->W(Landroid/view/View;)I

    move-result v2

    sub-int v2, v1, v2

    .line 1653
    if-eqz v3, :cond_19

    iget-boolean v4, v5, Landroid/support/v7/widget/aG;->rr:Z

    if-eqz v4, :cond_19

    .line 1655
    new-instance v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    iget v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v7, v7, [I

    iput-object v7, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->ru:[I

    const/4 v7, 0x0

    :goto_13
    iget v11, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v7, v11, :cond_18

    iget-object v11, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->ru:[I

    iget-object v12, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v12, v12, v7

    invoke-virtual {v12, v1}, Landroid/support/v7/widget/aJ;->am(I)I

    move-result v12

    sub-int/2addr v12, v1

    aput v12, v11, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 1656
    :cond_18
    iput v10, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->rt:I

    .line 1657
    iput v0, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1658
    iget-object v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rd:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v7, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    .line 1663
    :cond_19
    move v7, v1

    move v4, v2

    :goto_14
    iget-boolean v1, v5, Landroid/support/v7/widget/aG;->rr:Z

    if-eqz v1, :cond_21

    iget v1, v8, Landroid/support/v7/widget/E;->pq:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_21

    .line 1664
    if-nez v3, :cond_1f

    .line 1665
    iget v1, v8, Landroid/support/v7/widget/E;->pr:I

    if-ne v1, v10, :cond_1c

    .line 1669
    iget-object v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/aJ;->an(I)I

    move-result v1

    move v3, v10

    :goto_15
    iget v11, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v11, :cond_1b

    iget-object v11, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v11, v11, v3

    invoke-virtual {v11, v2}, Landroid/support/v7/widget/aJ;->an(I)I

    move-result v11

    if-eq v11, v1, :cond_1a

    const/4 v1, 0x0

    goto :goto_16

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    const/high16 v2, -0x80000000

    goto :goto_15

    :cond_1b
    move v1, v10

    .line 1673
    :goto_16
    xor-int/2addr v1, v10

    const/high16 v11, -0x80000000

    goto :goto_19

    .line 1671
    :cond_1c
    iget-object v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/high16 v11, -0x80000000

    invoke-virtual {v1, v11}, Landroid/support/v7/widget/aJ;->am(I)I

    move-result v1

    move v2, v10

    :goto_17
    iget v3, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v2, v3, :cond_1e

    iget-object v3, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v3, v3, v2

    invoke-virtual {v3, v11}, Landroid/support/v7/widget/aJ;->am(I)I

    move-result v3

    if-eq v3, v1, :cond_1d

    const/4 v1, 0x0

    goto :goto_18

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_1e
    move v1, v10

    .line 1673
    :goto_18
    xor-int/2addr v1, v10

    :goto_19
    if-eqz v1, :cond_22

    .line 1674
    iget-object v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rd:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 1675
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->ak(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 1676
    if-eqz v0, :cond_20

    .line 1677
    iput-boolean v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->rv:Z

    goto :goto_1a

    .line 1679
    :cond_1f
    const/high16 v11, -0x80000000

    :cond_20
    :goto_1a
    iput-boolean v10, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rk:Z

    goto :goto_1b

    .line 1683
    :cond_21
    const/high16 v11, -0x80000000

    :cond_22
    :goto_1b
    iget v0, v8, Landroid/support/v7/widget/E;->pr:I

    if-ne v0, v10, :cond_24

    iget-boolean v0, v5, Landroid/support/v7/widget/aG;->rr:Z

    if-eqz v0, :cond_23

    iget v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr v0, v10

    :goto_1c
    if-ltz v0, :cond_26

    iget-object v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v1, v1, v0

    invoke-virtual {v1, v15}, Landroid/support/v7/widget/aJ;->ae(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    :cond_23
    iget-object v0, v5, Landroid/support/v7/widget/aG;->rq:Landroid/support/v7/widget/aJ;

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/aJ;->ae(Landroid/view/View;)V

    goto :goto_1e

    :cond_24
    iget-boolean v0, v5, Landroid/support/v7/widget/aG;->rr:Z

    if-eqz v0, :cond_25

    iget v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr v0, v10

    :goto_1d
    if-ltz v0, :cond_26

    iget-object v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v1, v1, v0

    invoke-virtual {v1, v15}, Landroid/support/v7/widget/aJ;->ad(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    :cond_25
    iget-object v0, v5, Landroid/support/v7/widget/aG;->rq:Landroid/support/v7/widget/aJ;

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/aJ;->ad(Landroid/view/View;)V

    .line 1686
    :cond_26
    :goto_1e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_28

    iget v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v10, :cond_28

    .line 1687
    iget-boolean v0, v5, Landroid/support/v7/widget/aG;->rr:Z

    if-eqz v0, :cond_27

    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qZ:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bz()I

    move-result v0

    goto :goto_1f

    :cond_27
    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qZ:Landroid/support/v7/widget/M;

    .line 1688
    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bz()I

    move-result v0

    iget v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr v1, v10

    iget v2, v9, Landroid/support/v7/widget/aJ;->cx:I

    sub-int/2addr v1, v2

    iget v2, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ra:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 1690
    :goto_1f
    iget-object v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qZ:Landroid/support/v7/widget/M;

    invoke-virtual {v1, v15}, Landroid/support/v7/widget/M;->W(Landroid/view/View;)I

    move-result v1

    sub-int v1, v0, v1

    .line 1698
    move v12, v0

    move v3, v1

    goto :goto_21

    .line 1692
    :cond_28
    iget-boolean v0, v5, Landroid/support/v7/widget/aG;->rr:Z

    if-eqz v0, :cond_29

    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qZ:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->by()I

    move-result v0

    goto :goto_20

    :cond_29
    iget v0, v9, Landroid/support/v7/widget/aJ;->cx:I

    iget v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ra:I

    mul-int/2addr v0, v1

    iget-object v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qZ:Landroid/support/v7/widget/M;

    .line 1694
    invoke-virtual {v1}, Landroid/support/v7/widget/M;->by()I

    move-result v1

    add-int/2addr v0, v1

    .line 1695
    :goto_20
    iget-object v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qZ:Landroid/support/v7/widget/M;

    invoke-virtual {v1, v15}, Landroid/support/v7/widget/M;->W(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    .line 1698
    move v3, v0

    move v12, v1

    :goto_21
    iget v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v10, :cond_2a

    .line 1699
    move-object v0, v6

    move-object v1, v15

    move v2, v3

    move v3, v4

    move v4, v12

    move-object v12, v5

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1704
    move-object v7, v12

    goto :goto_22

    .line 1701
    :cond_2a
    move-object v0, v6

    move-object v1, v15

    move v2, v4

    move v4, v7

    move-object v7, v5

    move v5, v12

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1704
    :goto_22
    iget-boolean v0, v7, Landroid/support/v7/widget/aG;->rr:Z

    if-eqz v0, :cond_2b

    .line 1705
    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iget v0, v0, Landroid/support/v7/widget/E;->pr:I

    invoke-direct {v6, v0, v13}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v(II)V

    goto :goto_23

    .line 1707
    :cond_2b
    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iget v0, v0, Landroid/support/v7/widget/E;->pr:I

    invoke-direct {v6, v9, v0, v13}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/aJ;II)V

    .line 1709
    :goto_23
    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    move-object/from16 v1, p1

    invoke-direct {v6, v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/E;)V

    .line 1710
    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iget-boolean v0, v0, Landroid/support/v7/widget/E;->pu:Z

    if-eqz v0, :cond_2d

    invoke-virtual {v15}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1711
    iget-boolean v0, v7, Landroid/support/v7/widget/aG;->rr:Z

    if-eqz v0, :cond_2c

    .line 1712
    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rc:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    goto :goto_24

    .line 1714
    :cond_2c
    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rc:Ljava/util/BitSet;

    iget v2, v9, Landroid/support/v7/widget/aJ;->cx:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 1717
    :cond_2d
    :goto_24
    nop

    .line 1718
    nop

    .line 1607
    move-object v7, v1

    move v0, v10

    const/4 v9, 0x0

    goto/16 :goto_4

    .line 1719
    :cond_2e
    move-object v1, v7

    if-nez v0, :cond_2f

    .line 1720
    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    invoke-direct {v6, v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/E;)V

    .line 1723
    :cond_2f
    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iget v0, v0, Landroid/support/v7/widget/E;->pr:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_30

    .line 1724
    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->by()I

    move-result v0

    invoke-direct {v6, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ad(I)I

    move-result v0

    .line 1725
    iget-object v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v1}, Landroid/support/v7/widget/M;->by()I

    move-result v1

    sub-int/2addr v1, v0

    .line 1726
    goto :goto_25

    .line 1727
    :cond_30
    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bz()I

    move-result v0

    invoke-direct {v6, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ae(I)I

    move-result v0

    .line 1728
    iget-object v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v1}, Landroid/support/v7/widget/M;->bz()I

    move-result v1

    sub-int v1, v0, v1

    .line 1730
    :goto_25
    if-lez v1, :cond_31

    iget v0, v8, Landroid/support/v7/widget/E;->po:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method private a(ILandroid/support/v7/widget/ax;)V
    .locals 4

    .line 1450
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/E;->po:I

    .line 1451
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iput p1, v0, Landroid/support/v7/widget/E;->pp:I

    .line 1452
    nop

    .line 1453
    nop

    .line 1454
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isSmoothScrolling()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1455
    iget p2, p2, Landroid/support/v7/widget/ax;->qt:I

    .line 1456
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 1457
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ge p2, p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-ne v0, p1, :cond_1

    .line 1458
    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {p1}, Landroid/support/v7/widget/M;->bA()I

    move-result p1

    .line 1466
    move p2, p1

    move p1, v1

    goto :goto_1

    .line 1460
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {p1}, Landroid/support/v7/widget/M;->bA()I

    move-result p1

    .line 1466
    move p2, v1

    goto :goto_1

    :cond_2
    move p1, v1

    move p2, p1

    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_3

    .line 1467
    move v0, v2

    goto :goto_2

    .line 1466
    :cond_3
    nop

    .line 1467
    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    .line 1468
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v3}, Landroid/support/v7/widget/M;->by()I

    move-result v3

    sub-int/2addr v3, p1

    iput v3, v0, Landroid/support/v7/widget/E;->ps:I

    .line 1469
    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bz()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p1, Landroid/support/v7/widget/E;->pt:I

    goto :goto_3

    .line 1471
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v3}, Landroid/support/v7/widget/M;->getEnd()I

    move-result v3

    add-int/2addr v3, p2

    iput v3, v0, Landroid/support/v7/widget/E;->pt:I

    .line 1472
    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    neg-int p1, p1

    iput p1, p2, Landroid/support/v7/widget/E;->ps:I

    .line 1474
    :goto_3
    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iput-boolean v1, p1, Landroid/support/v7/widget/E;->pu:Z

    .line 1475
    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iput-boolean v2, p1, Landroid/support/v7/widget/E;->pn:Z

    .line 1476
    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {p2}, Landroid/support/v7/widget/M;->getMode()I

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    .line 1477
    invoke-virtual {p2}, Landroid/support/v7/widget/M;->getEnd()I

    move-result p2

    if-nez p2, :cond_5

    move v1, v2

    nop

    :cond_5
    iput-boolean v1, p1, Landroid/support/v7/widget/E;->pv:Z

    .line 1478
    return-void
.end method

.method private a(Landroid/support/v7/widget/aJ;II)V
    .locals 3

    .line 1830
    iget v0, p1, Landroid/support/v7/widget/aJ;->rE:I

    .line 1831
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 1832
    invoke-virtual {p1}, Landroid/support/v7/widget/aJ;->bS()I

    move-result p2

    .line 1833
    add-int/2addr p2, v0

    if-gt p2, p3, :cond_0

    .line 1834
    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rc:Ljava/util/BitSet;

    iget p1, p1, Landroid/support/v7/widget/aJ;->cx:I

    invoke-virtual {p2, p1, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 1836
    :cond_0
    return-void

    .line 1837
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/aJ;->bU()I

    move-result p2

    .line 1838
    sub-int/2addr p2, v0

    if-lt p2, p3, :cond_2

    .line 1839
    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rc:Ljava/util/BitSet;

    iget p1, p1, Landroid/support/v7/widget/aJ;->cx:I

    invoke-virtual {p2, p1, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 1842
    :cond_2
    return-void
.end method

.method private a(Landroid/support/v7/widget/aq;I)V
    .locals 5

    .line 1909
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 1910
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1911
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/M;->T(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_5

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    .line 1912
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/M;->U(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_5

    .line 1913
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/aG;

    .line 1915
    iget-boolean v3, v2, Landroid/support/v7/widget/aG;->rr:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 1916
    move v2, v0

    :goto_1
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v2, v3, :cond_1

    .line 1917
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v3, v3, v2

    iget-object v3, v3, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 1918
    return-void

    .line 1916
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1921
    :cond_1
    :goto_2
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v2, :cond_4

    .line 1922
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/aJ;->bW()V

    .line 1921
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1925
    :cond_2
    iget-object v0, v2, Landroid/support/v7/widget/aG;->rq:Landroid/support/v7/widget/aJ;

    iget-object v0, v0, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 1926
    return-void

    .line 1928
    :cond_3
    iget-object v0, v2, Landroid/support/v7/widget/aG;->rq:Landroid/support/v7/widget/aJ;

    invoke-virtual {v0}, Landroid/support/v7/widget/aJ;->bW()V

    .line 1930
    :cond_4
    invoke-virtual {p0, v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/aq;)V

    .line 1931
    goto :goto_0

    .line 1932
    :cond_5
    return-void

    .line 1934
    :cond_6
    return-void
.end method

.method private a(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/E;)V
    .locals 5

    .line 1768
    iget-boolean v0, p2, Landroid/support/v7/widget/E;->pn:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p2, Landroid/support/v7/widget/E;->pv:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 1771
    :cond_0
    iget v0, p2, Landroid/support/v7/widget/E;->po:I

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 1773
    iget v0, p2, Landroid/support/v7/widget/E;->pr:I

    if-ne v0, v1, :cond_1

    .line 1774
    iget p2, p2, Landroid/support/v7/widget/E;->pt:I

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/aq;I)V

    return-void

    .line 1776
    :cond_1
    iget p2, p2, Landroid/support/v7/widget/E;->ps:I

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/aq;I)V

    return-void

    .line 1781
    :cond_2
    iget v0, p2, Landroid/support/v7/widget/E;->pr:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_6

    .line 1783
    iget v0, p2, Landroid/support/v7/widget/E;->ps:I

    iget v1, p2, Landroid/support/v7/widget/E;->ps:I

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v2, v4, v2

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/aJ;->am(I)I

    move-result v2

    :goto_0
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/aJ;->am(I)I

    move-result v4

    if-le v4, v2, :cond_3

    move v2, v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    sub-int/2addr v0, v2

    .line 1785
    if-gez v0, :cond_5

    .line 1786
    iget p2, p2, Landroid/support/v7/widget/E;->pt:I

    goto :goto_1

    .line 1788
    :cond_5
    iget v1, p2, Landroid/support/v7/widget/E;->pt:I

    iget p2, p2, Landroid/support/v7/widget/E;->po:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int p2, v1, p2

    .line 1790
    :goto_1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/aq;I)V

    .line 1791
    return-void

    .line 1793
    :cond_6
    iget v0, p2, Landroid/support/v7/widget/E;->pt:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/aJ;->an(I)I

    move-result v1

    :goto_2
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v2, :cond_8

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/aJ;->an(I)I

    move-result v2

    if-ge v2, v1, :cond_7

    move v1, v2

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    iget v0, p2, Landroid/support/v7/widget/E;->pt:I

    sub-int/2addr v1, v0

    .line 1795
    if-gez v1, :cond_9

    .line 1796
    iget p2, p2, Landroid/support/v7/widget/E;->ps:I

    goto :goto_3

    .line 1798
    :cond_9
    iget v0, p2, Landroid/support/v7/widget/E;->ps:I

    iget p2, p2, Landroid/support/v7/widget/E;->po:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p2, v0

    .line 1800
    :goto_3
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/aq;I)V

    .line 1804
    return-void

    .line 1769
    :cond_a
    :goto_4
    return-void
.end method

.method private a(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Z)V
    .locals 2

    .line 1413
    const/high16 v0, -0x80000000

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ae(I)I

    move-result v1

    .line 1414
    if-ne v1, v0, :cond_0

    .line 1415
    return-void

    .line 1417
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bz()I

    move-result v0

    sub-int/2addr v0, v1

    .line 1419
    if-lez v0, :cond_2

    .line 1420
    neg-int v1, v0

    invoke-virtual {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->scrollBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I

    move-result p1

    neg-int p1, p1

    .line 1424
    sub-int/2addr v0, p1

    .line 1425
    if-eqz p3, :cond_1

    if-lez v0, :cond_1

    .line 1426
    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/M;->U(I)V

    .line 1428
    :cond_1
    return-void

    .line 1422
    :cond_2
    return-void
.end method

.method private ac(I)V
    .locals 4

    .line 1481
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iput p1, v0, Landroid/support/v7/widget/E;->pr:I

    .line 1482
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput v2, v0, Landroid/support/v7/widget/E;->pq:I

    .line 1484
    return-void
.end method

.method private ad(I)I
    .locals 3

    .line 1856
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aJ;->am(I)I

    move-result v0

    .line 1857
    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_1

    .line 1858
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/aJ;->am(I)I

    move-result v2

    .line 1859
    if-ge v2, v0, :cond_0

    .line 1860
    nop

    .line 1857
    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1863
    :cond_1
    return v0
.end method

.method private ae(I)I
    .locals 3

    .line 1887
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aJ;->an(I)I

    move-result v0

    .line 1888
    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_1

    .line 1889
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/aJ;->an(I)I

    move-result v2

    .line 1890
    if-le v2, v0, :cond_0

    .line 1891
    nop

    .line 1888
    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1894
    :cond_1
    return v0
.end method

.method private af(I)Z
    .locals 4

    .line 1972
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 1973
    if-ne p1, v1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq p1, v0, :cond_1

    return v3

    :cond_1
    return v2

    .line 1975
    :cond_2
    if-ne p1, v1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_3
    move p1, v2

    :goto_1
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ne p1, v0, :cond_4

    move p1, v3

    goto :goto_2

    :cond_4
    move p1, v2

    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-ne p1, v0, :cond_5

    return v3

    :cond_5
    return v2
.end method

.method private ag(I)I
    .locals 3

    .line 2045
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2046
    iget-boolean p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v1

    .line 2048
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bP()I

    move-result v0

    .line 2049
    if-ge p1, v0, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq p1, v0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method private b(Landroid/support/v7/widget/aq;I)V
    .locals 6

    .line 1938
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    .line 1940
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_6

    .line 1941
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1942
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/M;->S(Landroid/view/View;)I

    move-result v3

    if-lt v3, p2, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    .line 1943
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/M;->V(Landroid/view/View;)I

    move-result v3

    if-lt v3, p2, :cond_5

    .line 1944
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/aG;

    .line 1946
    iget-boolean v4, v3, Landroid/support/v7/widget/aG;->rr:Z

    if-eqz v4, :cond_2

    .line 1947
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    iget v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_1

    .line 1948
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v1, :cond_0

    .line 1949
    return-void

    .line 1947
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1952
    :cond_1
    :goto_2
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_4

    .line 1953
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/aJ;->bV()V

    .line 1952
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1956
    :cond_2
    iget-object v4, v3, Landroid/support/v7/widget/aG;->rq:Landroid/support/v7/widget/aJ;

    iget-object v4, v4, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_3

    .line 1957
    return-void

    .line 1959
    :cond_3
    iget-object v3, v3, Landroid/support/v7/widget/aG;->rq:Landroid/support/v7/widget/aJ;

    invoke-virtual {v3}, Landroid/support/v7/widget/aJ;->bV()V

    .line 1961
    :cond_4
    invoke-virtual {p0, v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/aq;)V

    .line 1962
    nop

    .line 1940
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1963
    :cond_5
    return-void

    .line 1966
    :cond_6
    return-void
.end method

.method private b(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Z)V
    .locals 2

    .line 1432
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ad(I)I

    move-result v1

    .line 1433
    if-ne v1, v0, :cond_0

    .line 1434
    return-void

    .line 1436
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->by()I

    move-result v0

    sub-int/2addr v1, v0

    .line 1438
    if-lez v1, :cond_2

    .line 1439
    invoke-virtual {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->scrollBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I

    move-result p1

    .line 1443
    sub-int/2addr v1, p1

    .line 1444
    if-eqz p3, :cond_1

    if-lez v1, :cond_1

    .line 1445
    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    neg-int p2, v1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/M;->U(I)V

    .line 1447
    :cond_1
    return-void

    .line 1441
    :cond_2
    return-void
.end method

.method private computeScrollExtent(Landroid/support/v7/widget/ax;)I
    .locals 6

    .line 1092
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1093
    const/4 p1, 0x0

    return p1

    .line 1095
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1096
    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1097
    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1095
    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/aD;->a(Landroid/support/v7/widget/ax;Landroid/support/v7/widget/M;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/af;Z)I

    move-result p1

    return p1
.end method

.method private computeScrollOffset(Landroid/support/v7/widget/ax;)I
    .locals 7

    .line 1072
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1073
    const/4 p1, 0x0

    return p1

    .line 1075
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1076
    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1077
    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 1075
    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/aD;->a(Landroid/support/v7/widget/ax;Landroid/support/v7/widget/M;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/af;ZZ)I

    move-result p1

    return p1
.end method

.method private computeScrollRange(Landroid/support/v7/widget/ax;)I
    .locals 6

    .line 1112
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1113
    const/4 p1, 0x0

    return p1

    .line 1115
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1116
    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1117
    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1115
    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/aD;->b(Landroid/support/v7/widget/ax;Landroid/support/v7/widget/M;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/af;Z)I

    move-result p1

    return p1
.end method

.method private f(III)I
    .locals 2

    .line 1209
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1210
    return p1

    .line 1212
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1213
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1217
    :cond_1
    return p1

    .line 1214
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 1215
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    sub-int/2addr p1, p2

    sub-int/2addr p1, p3

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1214
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private g(III)V
    .locals 5

    .line 1533
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bO()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bP()I

    move-result v0

    .line 1537
    :goto_0
    const/16 v1, 0x8

    if-ne p3, v1, :cond_2

    .line 1538
    if-ge p1, p2, :cond_1

    .line 1539
    add-int/lit8 v2, p2, 0x1

    .line 1540
    goto :goto_1

    .line 1542
    :cond_1
    add-int/lit8 v2, p1, 0x1

    .line 1543
    nop

    .line 1550
    move v3, v2

    move v2, p2

    goto :goto_2

    .line 1546
    :cond_2
    nop

    .line 1547
    add-int v2, p1, p2

    .line 1550
    :goto_1
    move v3, v2

    move v2, p1

    :goto_2
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rd:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->ai(I)I

    .line 1551
    if-eq p3, v1, :cond_3

    packed-switch p3, :pswitch_data_0

    goto :goto_3

    .line 1556
    :pswitch_0
    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rd:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p3, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->w(II)V

    .line 1557
    goto :goto_3

    .line 1553
    :pswitch_1
    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rd:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p3, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->x(II)V

    .line 1554
    goto :goto_3

    .line 1560
    :cond_3
    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rd:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    const/4 v1, 0x1

    invoke-virtual {p3, p1, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->w(II)V

    .line 1561
    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rd:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->x(II)V

    .line 1565
    :goto_3
    if-gt v3, v0, :cond_4

    .line 1566
    return-void

    .line 1569
    :cond_4
    iget-boolean p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bP()I

    move-result p1

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bO()I

    move-result p1

    .line 1570
    :goto_4
    if-gt v2, p1, :cond_6

    .line 1571
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 1573
    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 4

    .line 1193
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mX:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1194
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aG;

    .line 1195
    iget v1, v0, Landroid/support/v7/widget/aG;->leftMargin:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mX:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v7/widget/aG;->rightMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mX:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-direct {p0, p2, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(III)I

    move-result p2

    .line 1197
    iget v1, v0, Landroid/support/v7/widget/aG;->topMargin:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mX:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v7/widget/aG;->bottomMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mX:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-direct {p0, p3, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(III)I

    move-result p3

    .line 1199
    if-eqz p4, :cond_0

    .line 1200
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/aj;)Z

    move-result p4

    goto :goto_0

    .line 1201
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/aj;)Z

    move-result p4

    .line 1202
    :goto_0
    if-eqz p4, :cond_1

    .line 1203
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 1206
    :cond_1
    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    .line 560
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 563
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 561
    :cond_2
    :goto_0
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 563
    :goto_1
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 565
    return-void
.end method

.method private v(II)V
    .locals 2

    .line 1821
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1

    .line 1822
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1823
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/aJ;II)V

    .line 1821
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1827
    :cond_1
    return-void
.end method


# virtual methods
.method final ab(I)V
    .locals 1

    .line 927
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    div-int v0, p1, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ra:I

    .line 929
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qZ:Landroid/support/v7/widget/M;

    .line 930
    invoke-virtual {v0}, Landroid/support/v7/widget/M;->getMode()I

    move-result v0

    .line 929
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ri:I

    .line 931
    return-void
.end method

.method public final assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    .line 528
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 529
    invoke-super {p0, p1}, Landroid/support/v7/widget/af;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 531
    :cond_0
    return-void
.end method

.method final b(ILandroid/support/v7/widget/ax;)V
    .locals 5

    .line 2162
    const/4 v0, 0x1

    if-lez p1, :cond_0

    .line 2163
    nop

    .line 2164
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bO()I

    move-result v1

    .line 2169
    move v2, v0

    goto :goto_0

    .line 2166
    :cond_0
    const/4 v1, -0x1

    .line 2167
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bP()I

    move-result v2

    .line 2169
    move v4, v2

    move v2, v1

    move v1, v4

    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iput-boolean v0, v3, Landroid/support/v7/widget/E;->pn:Z

    .line 2170
    invoke-direct {p0, v1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ILandroid/support/v7/widget/ax;)V

    .line 2171
    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ac(I)V

    .line 2172
    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iget v0, v0, Landroid/support/v7/widget/E;->pq:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/support/v7/widget/E;->pp:I

    .line 2173
    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p2, Landroid/support/v7/widget/E;->po:I

    .line 2174
    return-void
.end method

.method final bM()Z
    .locals 7

    .line 270
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->re:I

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Landroid/support/v7/widget/af;->mIsAttachedToWindow:Z

    if-nez v0, :cond_0

    goto :goto_3

    .line 274
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bO()I

    move-result v0

    .line 276
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bP()I

    move-result v2

    goto :goto_0

    .line 278
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bP()I

    move-result v0

    .line 279
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bO()I

    move-result v2

    .line 281
    :goto_0
    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 282
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bN()Landroid/view/View;

    move-result-object v4

    .line 283
    if-eqz v4, :cond_2

    .line 284
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rd:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 285
    iput-boolean v3, p0, Landroid/support/v7/widget/af;->mRequestedSimpleAnimations:Z

    .line 286
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 287
    return v3

    .line 290
    :cond_2
    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rk:Z

    if-nez v4, :cond_3

    .line 291
    return v1

    .line 293
    :cond_3
    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    const/4 v5, -0x1

    if-eqz v4, :cond_4

    .line 294
    move v4, v5

    goto :goto_1

    .line 293
    :cond_4
    nop

    .line 294
    move v4, v3

    :goto_1
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rd:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/2addr v2, v3

    .line 295
    invoke-virtual {v6, v0, v2, v4, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(IIIZ)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v6

    .line 296
    if-nez v6, :cond_5

    .line 297
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rk:Z

    .line 298
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rd:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->ah(I)I

    .line 299
    return v1

    .line 301
    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rd:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v2, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    mul-int/2addr v4, v5

    .line 302
    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(IIIZ)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 304
    if-nez v0, :cond_6

    .line 305
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rd:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->ah(I)I

    goto :goto_2

    .line 307
    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rd:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->ah(I)I

    .line 309
    :goto_2
    iput-boolean v3, p0, Landroid/support/v7/widget/af;->mRequestedSimpleAnimations:Z

    .line 310
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 311
    return v3

    .line 271
    :cond_7
    :goto_3
    return v1
.end method

.method final bN()Landroid/view/View;
    .locals 12

    .line 339
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 341
    new-instance v2, Ljava/util/BitSet;

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    .line 342
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v1}, Ljava/util/BitSet;->set(IIZ)V

    .line 345
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v5, -0x1

    if-ne v3, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 347
    move v3, v1

    goto :goto_0

    .line 345
    :cond_0
    nop

    .line 347
    move v3, v5

    :goto_0
    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_1

    .line 348
    nop

    .line 349
    nop

    .line 354
    move v6, v5

    goto :goto_1

    .line 351
    :cond_1
    nop

    .line 352
    add-int/lit8 v0, v0, 0x1

    .line 354
    move v6, v0

    move v0, v4

    :goto_1
    if-ge v0, v6, :cond_2

    .line 355
    move v5, v1

    goto :goto_2

    .line 354
    :cond_2
    nop

    .line 355
    :goto_2
    if-eq v0, v6, :cond_f

    .line 356
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 357
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/aG;

    .line 358
    iget-object v9, v8, Landroid/support/v7/widget/aG;->rq:Landroid/support/v7/widget/aJ;

    iget v9, v9, Landroid/support/v7/widget/aJ;->cx:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 359
    iget-object v9, v8, Landroid/support/v7/widget/aG;->rq:Landroid/support/v7/widget/aJ;

    iget-boolean v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v10, :cond_3

    invoke-virtual {v9}, Landroid/support/v7/widget/aJ;->bU()I

    move-result v10

    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v11}, Landroid/support/v7/widget/M;->bz()I

    move-result v11

    if-ge v10, v11, :cond_4

    iget-object v10, v9, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    iget-object v9, v9, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v1

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/aG;

    iget-boolean v9, v9, Landroid/support/v7/widget/aG;->rr:Z

    if-nez v9, :cond_4

    :goto_3
    move v9, v1

    goto :goto_4

    :cond_3
    invoke-virtual {v9}, Landroid/support/v7/widget/aJ;->bS()I

    move-result v10

    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v11}, Landroid/support/v7/widget/M;->by()I

    move-result v11

    if-le v10, v11, :cond_4

    iget-object v9, v9, Landroid/support/v7/widget/aJ;->rB:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/aG;

    iget-boolean v9, v9, Landroid/support/v7/widget/aG;->rr:Z

    if-nez v9, :cond_4

    goto :goto_3

    :cond_4
    move v9, v4

    :goto_4
    if-eqz v9, :cond_5

    .line 360
    return-object v7

    .line 362
    :cond_5
    iget-object v9, v8, Landroid/support/v7/widget/aG;->rq:Landroid/support/v7/widget/aJ;

    iget v9, v9, Landroid/support/v7/widget/aJ;->cx:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->clear(I)V

    .line 364
    :cond_6
    iget-boolean v9, v8, Landroid/support/v7/widget/aG;->rr:Z

    if-nez v9, :cond_e

    .line 365
    add-int v9, v0, v5

    if-eq v9, v6, :cond_e

    .line 369
    invoke-virtual {p0, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 370
    nop

    .line 371
    iget-boolean v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v10, :cond_9

    .line 373
    iget-object v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v10, v7}, Landroid/support/v7/widget/M;->T(Landroid/view/View;)I

    move-result v10

    .line 374
    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v11, v9}, Landroid/support/v7/widget/M;->T(Landroid/view/View;)I

    move-result v11

    .line 375
    if-ge v10, v11, :cond_7

    .line 376
    return-object v7

    .line 377
    :cond_7
    if-ne v10, v11, :cond_8

    .line 378
    nop

    .line 380
    move v10, v1

    goto :goto_5

    :cond_8
    move v10, v4

    :goto_5
    goto :goto_6

    .line 381
    :cond_9
    iget-object v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v10, v7}, Landroid/support/v7/widget/M;->S(Landroid/view/View;)I

    move-result v10

    .line 382
    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v11, v9}, Landroid/support/v7/widget/M;->S(Landroid/view/View;)I

    move-result v11

    .line 383
    if-le v10, v11, :cond_a

    .line 384
    return-object v7

    .line 385
    :cond_a
    if-ne v10, v11, :cond_b

    .line 386
    nop

    .line 389
    move v10, v1

    goto :goto_6

    :cond_b
    move v10, v4

    :goto_6
    if-eqz v10, :cond_e

    .line 391
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/aG;

    .line 392
    iget-object v8, v8, Landroid/support/v7/widget/aG;->rq:Landroid/support/v7/widget/aJ;

    iget v8, v8, Landroid/support/v7/widget/aJ;->cx:I

    iget-object v9, v9, Landroid/support/v7/widget/aG;->rq:Landroid/support/v7/widget/aJ;

    iget v9, v9, Landroid/support/v7/widget/aJ;->cx:I

    sub-int/2addr v8, v9

    if-gez v8, :cond_c

    move v8, v1

    goto :goto_7

    :cond_c
    move v8, v4

    :goto_7
    if-gez v3, :cond_d

    move v9, v1

    goto :goto_8

    :cond_d
    move v9, v4

    :goto_8
    if-eq v8, v9, :cond_e

    .line 393
    return-object v7

    .line 355
    :cond_e
    add-int/2addr v0, v5

    goto/16 :goto_2

    .line 399
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method final bO()I
    .locals 1

    .line 2205
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    .line 2206
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method final bP()I
    .locals 2

    .line 2210
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    .line 2211
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final canScrollHorizontally()Z
    .locals 1

    .line 2029
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final canScrollVertically()Z
    .locals 2

    .line 2024
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final checkLayoutParams(Landroid/support/v7/widget/aj;)Z
    .locals 0

    .line 2275
    instance-of p1, p1, Landroid/support/v7/widget/aG;

    return p1
.end method

.method public final collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/ax;Landroid/support/v7/widget/ai;)V
    .locals 4

    .line 2125
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 2126
    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result p2

    if-eqz p2, :cond_8

    if-nez p1, :cond_1

    goto/16 :goto_4

    .line 2130
    :cond_1
    invoke-virtual {p0, p1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ILandroid/support/v7/widget/ax;)V

    .line 2133
    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rl:[I

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rl:[I

    array-length p1, p1

    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge p1, p2, :cond_3

    .line 2134
    :cond_2
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rl:[I

    .line 2137
    :cond_3
    nop

    .line 2138
    const/4 p1, 0x0

    move p2, p1

    move v0, p2

    :goto_1
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge p2, v1, :cond_6

    .line 2140
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iget v1, v1, Landroid/support/v7/widget/E;->pq:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iget v1, v1, Landroid/support/v7/widget/E;->ps:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v2, v2, p2

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iget v3, v3, Landroid/support/v7/widget/E;->ps:I

    .line 2141
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/aJ;->am(I)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_2

    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v1, v1, p2

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iget v2, v2, Landroid/support/v7/widget/E;->pt:I

    .line 2142
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/aJ;->an(I)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iget v2, v2, Landroid/support/v7/widget/E;->pt:I

    sub-int/2addr v1, v2

    .line 2143
    :goto_2
    if-ltz v1, :cond_5

    .line 2145
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rl:[I

    aput v1, v2, v0

    .line 2146
    add-int/lit8 v0, v0, 0x1

    .line 2138
    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 2149
    :cond_6
    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rl:[I

    invoke-static {p2, p1, v0}, Ljava/util/Arrays;->sort([III)V

    .line 2152
    :goto_3
    if-ge p1, v0, :cond_7

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/E;->a(Landroid/support/v7/widget/ax;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 2153
    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iget p2, p2, Landroid/support/v7/widget/E;->pp:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rl:[I

    aget v1, v1, p1

    invoke-interface {p4, p2, v1}, Landroid/support/v7/widget/ai;->q(II)V

    .line 2155
    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iget v1, p2, Landroid/support/v7/widget/E;->pp:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iget v2, v2, Landroid/support/v7/widget/E;->pq:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/support/v7/widget/E;->pp:I

    .line 2152
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 2157
    :cond_7
    return-void

    .line 2128
    :cond_8
    :goto_4
    return-void
.end method

.method public final computeHorizontalScrollExtent(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 1088
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->computeScrollExtent(Landroid/support/v7/widget/ax;)I

    move-result p1

    return p1
.end method

.method public final computeHorizontalScrollOffset(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 1068
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->computeScrollOffset(Landroid/support/v7/widget/ax;)I

    move-result p1

    return p1
.end method

.method public final computeHorizontalScrollRange(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 1108
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->computeScrollRange(Landroid/support/v7/widget/ax;)I

    move-result p1

    return p1
.end method

.method public final computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3

    .line 2054
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ag(I)I

    move-result p1

    .line 2055
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 2056
    if-nez p1, :cond_0

    .line 2057
    const/4 p1, 0x0

    return-object p1

    .line 2059
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2060
    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 2061
    iput v2, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 2063
    :cond_1
    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 2064
    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 2066
    :goto_0
    return-object v0
.end method

.method public final computeVerticalScrollExtent(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 1103
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->computeScrollExtent(Landroid/support/v7/widget/ax;)I

    move-result p1

    return p1
.end method

.method public final computeVerticalScrollOffset(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 1083
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->computeScrollOffset(Landroid/support/v7/widget/ax;)I

    move-result p1

    return p1
.end method

.method public final computeVerticalScrollRange(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 1123
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->computeScrollRange(Landroid/support/v7/widget/ax;)I

    move-result p1

    return p1
.end method

.method public final generateDefaultLayoutParams()Landroid/support/v7/widget/aj;
    .locals 3

    .line 2250
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-nez v0, :cond_0

    .line 2251
    new-instance v0, Landroid/support/v7/widget/aG;

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/aG;-><init>(II)V

    return-object v0

    .line 2254
    :cond_0
    new-instance v0, Landroid/support/v7/widget/aG;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/aG;-><init>(II)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/aj;
    .locals 1

    .line 2261
    new-instance v0, Landroid/support/v7/widget/aG;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/aG;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/aj;
    .locals 1

    .line 2266
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 2267
    new-instance v0, Landroid/support/v7/widget/aG;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/aG;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 2269
    :cond_0
    new-instance v0, Landroid/support/v7/widget/aG;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/aG;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final getColumnCountForAccessibility(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I
    .locals 2

    .line 1346
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1347
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    return p1

    .line 1349
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/af;->getColumnCountForAccessibility(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I

    move-result p1

    return p1
.end method

.method public final getRowCountForAccessibility(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I
    .locals 1

    .line 1337
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 1338
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    return p1

    .line 1340
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/af;->getRowCountForAccessibility(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I

    move-result p1

    return p1
.end method

.method public final isAutoMeasureEnabled()Z
    .locals 1

    .line 254
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->re:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final isLayoutRTL()Z
    .locals 2

    .line 568
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/n;->h(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final l(Z)Landroid/view/View;
    .locals 8

    .line 1359
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->by()I

    move-result v0

    .line 1360
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v1}, Landroid/support/v7/widget/M;->bz()I

    move-result v1

    .line 1361
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    .line 1362
    nop

    .line 1363
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    .line 1364
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1365
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/M;->S(Landroid/view/View;)I

    move-result v6

    .line 1366
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v7, v5}, Landroid/support/v7/widget/M;->T(Landroid/view/View;)I

    move-result v7

    .line 1367
    if-le v7, v0, :cond_2

    if-ge v6, v1, :cond_2

    .line 1368
    if-ge v6, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 1375
    :cond_0
    if-nez v3, :cond_2

    .line 1376
    nop

    .line 1363
    move-object v3, v5

    goto :goto_2

    .line 1373
    :cond_1
    :goto_1
    return-object v5

    .line 1363
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1379
    :cond_3
    return-object v3
.end method

.method final m(Z)Landroid/view/View;
    .locals 7

    .line 1389
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->by()I

    move-result v0

    .line 1390
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v1}, Landroid/support/v7/widget/M;->bz()I

    move-result v1

    .line 1391
    nop

    .line 1392
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ltz v2, :cond_3

    .line 1393
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1394
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/M;->S(Landroid/view/View;)I

    move-result v5

    .line 1395
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/M;->T(Landroid/view/View;)I

    move-result v6

    .line 1396
    if-le v6, v0, :cond_2

    if-ge v5, v1, :cond_2

    .line 1397
    if-le v6, v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 1404
    :cond_0
    if-nez v3, :cond_2

    .line 1405
    nop

    .line 1392
    move-object v3, v4

    goto :goto_2

    .line 1402
    :cond_1
    :goto_1
    return-object v4

    .line 1392
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1408
    :cond_3
    return-object v3
.end method

.method public final offsetChildrenHorizontal(I)V
    .locals 2

    .line 1488
    invoke-super {p0, p1}, Landroid/support/v7/widget/af;->offsetChildrenHorizontal(I)V

    .line 1489
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    .line 1490
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/aJ;->ap(I)V

    .line 1489
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1492
    :cond_0
    return-void
.end method

.method public final offsetChildrenVertical(I)V
    .locals 2

    .line 1496
    invoke-super {p0, p1}, Landroid/support/v7/widget/af;->offsetChildrenVertical(I)V

    .line 1497
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    .line 1498
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/aJ;->ap(I)V

    .line 1497
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1500
    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/aq;)V
    .locals 1

    .line 323
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/af;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/aq;)V

    .line 325
    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rm:Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 326
    const/4 p2, 0x0

    :goto_0
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge p2, v0, :cond_0

    .line 327
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/support/v7/widget/aJ;->clear()V

    .line 326
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 331
    return-void
.end method

.method public final onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)Landroid/view/View;
    .locals 9

    .line 2286
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2287
    return-object v1

    .line 2290
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 2291
    if-nez p1, :cond_1

    .line 2292
    return-object v1

    .line 2295
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 2296
    const/16 v0, 0x11

    const/high16 v2, -0x80000000

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq p2, v0, :cond_a

    const/16 v0, 0x21

    if-eq p2, v0, :cond_9

    const/16 v0, 0x42

    if-eq p2, v0, :cond_8

    const/16 v0, 0x82

    if-eq p2, v0, :cond_7

    packed-switch p2, :pswitch_data_0

    .line 2297
    :cond_2
    move p2, v2

    goto :goto_2

    .line 2296
    :pswitch_0
    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne p2, v4, :cond_4

    .line 2297
    :cond_3
    :goto_0
    move p2, v4

    goto :goto_2

    .line 2296
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :pswitch_1
    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne p2, v4, :cond_6

    .line 2297
    :cond_5
    :goto_1
    move p2, v3

    goto :goto_2

    .line 2296
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_0

    :cond_7
    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne p2, v4, :cond_2

    goto :goto_0

    :cond_8
    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez p2, :cond_2

    goto :goto_0

    :cond_9
    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne p2, v4, :cond_2

    goto :goto_1

    :cond_a
    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez p2, :cond_2

    goto :goto_1

    .line 2297
    :goto_2
    if-ne p2, v2, :cond_b

    .line 2298
    return-object v1

    .line 2300
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aG;

    .line 2301
    iget-boolean v2, v0, Landroid/support/v7/widget/aG;->rr:Z

    .line 2302
    iget-object v0, v0, Landroid/support/v7/widget/aG;->rq:Landroid/support/v7/widget/aJ;

    .line 2304
    if-ne p2, v4, :cond_c

    .line 2305
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bO()I

    move-result v5

    goto :goto_3

    .line 2307
    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bP()I

    move-result v5

    .line 2309
    :goto_3
    invoke-direct {p0, v5, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ILandroid/support/v7/widget/ax;)V

    .line 2310
    invoke-direct {p0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ac(I)V

    .line 2312
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iget v7, v7, Landroid/support/v7/widget/E;->pq:I

    add-int/2addr v7, v5

    iput v7, v6, Landroid/support/v7/widget/E;->pp:I

    .line 2313
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    const v7, 0x3eaaaaab

    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v8}, Landroid/support/v7/widget/M;->bA()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/support/v7/widget/E;->po:I

    .line 2314
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iput-boolean v4, v6, Landroid/support/v7/widget/E;->pu:Z

    .line 2315
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/E;->pn:Z

    .line 2316
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    invoke-direct {p0, p3, v6, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/E;Landroid/support/v7/widget/ax;)I

    .line 2317
    iget-boolean p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rf:Z

    .line 2318
    if-nez v2, :cond_d

    .line 2319
    invoke-virtual {v0, v5, p2}, Landroid/support/v7/widget/aJ;->y(II)Landroid/view/View;

    move-result-object p3

    .line 2320
    if-eqz p3, :cond_d

    if-eq p3, p1, :cond_d

    .line 2321
    return-object p3

    .line 2327
    :cond_d
    invoke-direct {p0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->af(I)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 2328
    iget p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr p3, v4

    :goto_4
    if-ltz p3, :cond_11

    .line 2329
    iget-object p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object p4, p4, p3

    invoke-virtual {p4, v5, p2}, Landroid/support/v7/widget/aJ;->y(II)Landroid/view/View;

    move-result-object p4

    .line 2330
    if-eqz p4, :cond_e

    if-eq p4, p1, :cond_e

    .line 2331
    return-object p4

    .line 2328
    :cond_e
    add-int/lit8 p3, p3, -0x1

    goto :goto_4

    .line 2335
    :cond_f
    move p3, v7

    :goto_5
    iget p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge p3, p4, :cond_11

    .line 2336
    iget-object p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object p4, p4, p3

    invoke-virtual {p4, v5, p2}, Landroid/support/v7/widget/aJ;->y(II)Landroid/view/View;

    move-result-object p4

    .line 2337
    if-eqz p4, :cond_10

    if-eq p4, p1, :cond_10

    .line 2338
    return-object p4

    .line 2335
    :cond_10
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 2347
    :cond_11
    iget-boolean p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    xor-int/2addr p3, v4

    if-ne p2, v3, :cond_12

    move p4, v4

    goto :goto_6

    :cond_12
    move p4, v7

    :goto_6
    if-ne p3, p4, :cond_13

    .line 2348
    move p3, v4

    goto :goto_7

    .line 2347
    :cond_13
    nop

    .line 2348
    move p3, v7

    :goto_7
    if-nez v2, :cond_15

    .line 2350
    if-eqz p3, :cond_14

    .line 2351
    invoke-virtual {v0}, Landroid/support/v7/widget/aJ;->bX()I

    move-result p4

    goto :goto_8

    .line 2352
    :cond_14
    invoke-virtual {v0}, Landroid/support/v7/widget/aJ;->bY()I

    move-result p4

    .line 2350
    :goto_8
    invoke-virtual {p0, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p4

    .line 2353
    if-eqz p4, :cond_15

    if-eq p4, p1, :cond_15

    .line 2354
    return-object p4

    .line 2358
    :cond_15
    invoke-direct {p0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->af(I)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 2359
    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr p2, v4

    :goto_9
    if-ltz p2, :cond_1b

    .line 2360
    iget p4, v0, Landroid/support/v7/widget/aJ;->cx:I

    if-eq p2, p4, :cond_17

    .line 2361
    if-eqz p3, :cond_16

    iget-object p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object p4, p4, p2

    .line 2364
    invoke-virtual {p4}, Landroid/support/v7/widget/aJ;->bX()I

    move-result p4

    goto :goto_a

    :cond_16
    iget-object p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object p4, p4, p2

    .line 2365
    invoke-virtual {p4}, Landroid/support/v7/widget/aJ;->bY()I

    move-result p4

    .line 2363
    :goto_a
    invoke-virtual {p0, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p4

    .line 2366
    if-eqz p4, :cond_17

    if-eq p4, p1, :cond_17

    .line 2367
    return-object p4

    .line 2359
    :cond_17
    add-int/lit8 p2, p2, -0x1

    goto :goto_9

    .line 2371
    :cond_18
    :goto_b
    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v7, p2, :cond_1b

    .line 2372
    if-eqz p3, :cond_19

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object p2, p2, v7

    .line 2373
    invoke-virtual {p2}, Landroid/support/v7/widget/aJ;->bX()I

    move-result p2

    goto :goto_c

    :cond_19
    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object p2, p2, v7

    .line 2374
    invoke-virtual {p2}, Landroid/support/v7/widget/aJ;->bY()I

    move-result p2

    .line 2372
    :goto_c
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    .line 2375
    if-eqz p2, :cond_1a

    if-eq p2, p1, :cond_1a

    .line 2376
    return-object p2

    .line 2371
    :cond_1a
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 2380
    :cond_1b
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1304
    invoke-super {p0, p1}, Landroid/support/v7/widget/af;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1305
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1306
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(Z)Landroid/view/View;

    move-result-object v1

    .line 1307
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m(Z)Landroid/view/View;

    move-result-object v0

    .line 1308
    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 1311
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 1312
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 1313
    if-ge v1, v0, :cond_1

    .line 1314
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1315
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    return-void

    .line 1317
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1318
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    goto :goto_1

    .line 1309
    :cond_2
    :goto_0
    return-void

    .line 1321
    :cond_3
    :goto_1
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 7

    .line 1283
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1284
    instance-of p2, p1, Landroid/support/v7/widget/aG;

    if-nez p2, :cond_0

    .line 1285
    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/af;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 1286
    return-void

    .line 1288
    :cond_0
    check-cast p1, Landroid/support/v7/widget/aG;

    .line 1289
    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 p3, 0x1

    const/4 v0, -0x1

    if-nez p2, :cond_2

    .line 1290
    nop

    .line 1291
    invoke-virtual {p1}, Landroid/support/v7/widget/aG;->bQ()I

    move-result p2

    iget-boolean v1, p1, Landroid/support/v7/widget/aG;->rr:Z

    if-eqz v1, :cond_1

    iget p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    nop

    .line 1290
    :cond_1
    nop

    .line 1297
    move v1, p2

    move v2, p3

    move v3, v0

    move v4, v3

    goto :goto_1

    .line 1295
    :cond_2
    nop

    .line 1297
    invoke-virtual {p1}, Landroid/support/v7/widget/aG;->bQ()I

    move-result p2

    iget-boolean v1, p1, Landroid/support/v7/widget/aG;->rr:Z

    if-eqz v1, :cond_3

    iget p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    :goto_0
    move v3, p2

    move v4, p3

    move v1, v0

    move v2, v1

    goto :goto_1

    :cond_3
    goto :goto_0

    :goto_1
    iget-boolean v5, p1, Landroid/support/v7/widget/aG;->rr:Z

    const/4 v6, 0x0

    .line 1295
    invoke-static/range {v1 .. v6}, Landroid/support/v4/view/a/c;->a(IIIIZZ)Landroid/support/v4/view/a/c;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/support/v4/view/a/a;->q(Ljava/lang/Object;)V

    .line 1300
    return-void
.end method

.method public final onItemsAdded$5927c743(II)V
    .locals 1

    .line 1509
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(III)V

    .line 1510
    return-void
.end method

.method public final onItemsChanged$57043c5d()V
    .locals 1

    .line 1514
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rd:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 1515
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 1516
    return-void
.end method

.method public final onItemsMoved$342e6be0(II)V
    .locals 1

    .line 1520
    const/16 v0, 0x8

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(III)V

    .line 1521
    return-void
.end method

.method public final onItemsRemoved$5927c743(II)V
    .locals 1

    .line 1504
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(III)V

    .line 1505
    return-void
.end method

.method public final onItemsUpdated$783f8c5f$5927c743(II)V
    .locals 1

    .line 1526
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(III)V

    .line 1527
    return-void
.end method

.method public final onLayoutChildren(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)V
    .locals 12

    .line 605
    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rj:Landroid/support/v7/widget/aF;

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    const/4 v5, -0x1

    if-nez v4, :cond_0

    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-eq v4, v5, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/aq;)V

    invoke-virtual {v3}, Landroid/support/v7/widget/aF;->reset()V

    return-void

    :cond_1
    iget-boolean v4, v3, Landroid/support/v7/widget/aF;->py:Z

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v0

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v1

    :goto_2
    const/high16 v6, -0x80000000

    if-eqz v4, :cond_23

    invoke-virtual {v3}, Landroid/support/v7/widget/aF;->reset()V

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v7, :cond_a

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->rx:I

    const/4 v8, 0x0

    if-lez v7, :cond_7

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->rx:I

    iget v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ne v7, v9, :cond_6

    move v7, v0

    :goto_3
    iget v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v7, v9, :cond_7

    iget-object v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Landroid/support/v7/widget/aJ;->clear()V

    iget-object v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->ry:[I

    aget v9, v9, v7

    if-eq v9, v6, :cond_5

    iget-object v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->pJ:Z

    if-eqz v10, :cond_4

    iget-object v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v10}, Landroid/support/v7/widget/M;->bz()I

    move-result v10

    :goto_4
    add-int/2addr v9, v10

    goto :goto_5

    :cond_4
    iget-object v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v10}, Landroid/support/v7/widget/M;->by()I

    move-result v10

    goto :goto_4

    :cond_5
    :goto_5
    iget-object v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v10, v10, v7

    invoke-virtual {v10, v9}, Landroid/support/v7/widget/aJ;->ao(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-object v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->ry:[I

    iput v0, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->rx:I

    iput v0, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->rz:I

    iput-object v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->rA:[I

    iput-object v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->rs:Ljava/util/List;

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->rw:I

    iput v9, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->pH:I

    :cond_7
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->rg:Z

    iput-boolean v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rg:Z

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    invoke-virtual {p0, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v8, :cond_8

    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    if-eq v8, v7, :cond_8

    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-boolean v7, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    :cond_8
    iput-boolean v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->pH:I

    if-eq v7, v5, :cond_9

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->pH:I

    iput v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->pJ:Z

    :goto_6
    iput-boolean v7, v3, Landroid/support/v7/widget/aF;->px:Z

    goto :goto_7

    :cond_9
    iget-boolean v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    goto :goto_6

    :goto_7
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->rz:I

    if-le v7, v1, :cond_b

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rd:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->rA:[I

    iput-object v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rd:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->rs:Ljava/util/List;

    iput-object v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    goto :goto_8

    :cond_a
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    iget-boolean v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v7, v3, Landroid/support/v7/widget/aF;->px:Z

    :cond_b
    :goto_8
    iget-boolean v7, p2, Landroid/support/v7/widget/ax;->qG:Z

    if-nez v7, :cond_1d

    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ne v7, v5, :cond_c

    goto/16 :goto_15

    :cond_c
    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ltz v7, :cond_1c

    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p2}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v8

    if-lt v7, v8, :cond_d

    goto/16 :goto_14

    :cond_d
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v7, :cond_f

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->pH:I

    if-eq v7, v5, :cond_f

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->rx:I

    if-gtz v7, :cond_e

    goto :goto_9

    :cond_e
    iput v6, v3, Landroid/support/v7/widget/aF;->mOffset:I

    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v7, v3, Landroid/support/v7/widget/aF;->mPosition:I

    goto/16 :goto_13

    :cond_f
    :goto_9
    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_17

    iget-boolean v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_10

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bO()I

    move-result v8

    goto :goto_a

    :cond_10
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bP()I

    move-result v8

    :goto_a
    iput v8, v3, Landroid/support/v7/widget/aF;->mPosition:I

    iget v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    if-eq v8, v6, :cond_12

    iget-boolean v8, v3, Landroid/support/v7/widget/aF;->px:Z

    if-eqz v8, :cond_11

    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v8}, Landroid/support/v7/widget/M;->bz()I

    move-result v8

    iget v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v9, v7}, Landroid/support/v7/widget/M;->T(Landroid/view/View;)I

    move-result v7

    :goto_b
    sub-int/2addr v8, v7

    goto :goto_e

    :cond_11
    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v8}, Landroid/support/v7/widget/M;->by()I

    move-result v8

    iget v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v9, v7}, Landroid/support/v7/widget/M;->S(Landroid/view/View;)I

    move-result v7

    goto :goto_b

    :cond_12
    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v8, v7}, Landroid/support/v7/widget/M;->W(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v9}, Landroid/support/v7/widget/M;->bA()I

    move-result v9

    if-le v8, v9, :cond_14

    iget-boolean v7, v3, Landroid/support/v7/widget/aF;->px:Z

    if-eqz v7, :cond_13

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v7}, Landroid/support/v7/widget/M;->bz()I

    move-result v7

    goto :goto_c

    :cond_13
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v7}, Landroid/support/v7/widget/M;->by()I

    move-result v7

    :goto_c
    goto :goto_d

    :cond_14
    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v8, v7}, Landroid/support/v7/widget/M;->S(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v9}, Landroid/support/v7/widget/M;->by()I

    move-result v9

    sub-int/2addr v8, v9

    if-gez v8, :cond_15

    neg-int v7, v8

    :goto_d
    iput v7, v3, Landroid/support/v7/widget/aF;->mOffset:I

    goto :goto_13

    :cond_15
    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v8}, Landroid/support/v7/widget/M;->bz()I

    move-result v8

    iget-object v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v9, v7}, Landroid/support/v7/widget/M;->T(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v8, v7

    if-gez v8, :cond_16

    :goto_e
    iput v8, v3, Landroid/support/v7/widget/aF;->mOffset:I

    goto :goto_13

    :cond_16
    iput v6, v3, Landroid/support/v7/widget/aF;->mOffset:I

    goto :goto_13

    :cond_17
    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v7, v3, Landroid/support/v7/widget/aF;->mPosition:I

    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v7, v6, :cond_1a

    iget v7, v3, Landroid/support/v7/widget/aF;->mPosition:I

    invoke-direct {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ag(I)I

    move-result v7

    if-ne v7, v1, :cond_18

    move v7, v1

    goto :goto_f

    :cond_18
    move v7, v0

    :goto_f
    iput-boolean v7, v3, Landroid/support/v7/widget/aF;->px:Z

    iget-boolean v7, v3, Landroid/support/v7/widget/aF;->px:Z

    if-eqz v7, :cond_19

    iget-object v7, v3, Landroid/support/v7/widget/aF;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v7}, Landroid/support/v7/widget/M;->bz()I

    move-result v7

    goto :goto_10

    :cond_19
    iget-object v7, v3, Landroid/support/v7/widget/aF;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v7}, Landroid/support/v7/widget/M;->by()I

    move-result v7

    :goto_10
    iput v7, v3, Landroid/support/v7/widget/aF;->mOffset:I

    goto :goto_12

    :cond_1a
    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    iget-boolean v8, v3, Landroid/support/v7/widget/aF;->px:Z

    if-eqz v8, :cond_1b

    iget-object v8, v3, Landroid/support/v7/widget/aF;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v8}, Landroid/support/v7/widget/M;->bz()I

    move-result v8

    sub-int/2addr v8, v7

    :goto_11
    iput v8, v3, Landroid/support/v7/widget/aF;->mOffset:I

    goto :goto_12

    :cond_1b
    iget-object v8, v3, Landroid/support/v7/widget/aF;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v8}, Landroid/support/v7/widget/M;->by()I

    move-result v8

    add-int/2addr v8, v7

    goto :goto_11

    :goto_12
    iput-boolean v1, v3, Landroid/support/v7/widget/aF;->rn:Z

    :goto_13
    move v7, v1

    goto :goto_16

    :cond_1c
    :goto_14
    iput v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    nop

    :cond_1d
    :goto_15
    move v7, v0

    :goto_16
    if-nez v7, :cond_22

    iget-boolean v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rf:Z

    if-eqz v7, :cond_20

    invoke-virtual {p2}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v8

    sub-int/2addr v8, v1

    :goto_17
    if-ltz v8, :cond_1f

    invoke-virtual {p0, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v9

    if-ltz v9, :cond_1e

    if-ge v9, v7, :cond_1e

    goto :goto_19

    :cond_1e
    add-int/lit8 v8, v8, -0x1

    goto :goto_17

    :cond_1f
    move v9, v0

    goto :goto_19

    :cond_20
    invoke-virtual {p2}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v8

    move v9, v0

    :goto_18
    if-ge v9, v8, :cond_1f

    invoke-virtual {p0, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v10

    if-ltz v10, :cond_21

    if-ge v10, v7, :cond_21

    move v9, v10

    goto :goto_19

    :cond_21
    add-int/lit8 v9, v9, 0x1

    goto :goto_18

    :goto_19
    iput v9, v3, Landroid/support/v7/widget/aF;->mPosition:I

    iput v6, v3, Landroid/support/v7/widget/aF;->mOffset:I

    :cond_22
    iput-boolean v1, v3, Landroid/support/v7/widget/aF;->py:Z

    :cond_23
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v7, :cond_25

    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ne v7, v5, :cond_25

    iget-boolean v7, v3, Landroid/support/v7/widget/aF;->px:Z

    iget-boolean v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rf:Z

    if-ne v7, v8, :cond_24

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v7

    iget-boolean v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rg:Z

    if-eq v7, v8, :cond_25

    :cond_24
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rd:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    iput-boolean v1, v3, Landroid/support/v7/widget/aF;->rn:Z

    :cond_25
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v7

    if-lez v7, :cond_33

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v7, :cond_26

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->rx:I

    if-gtz v7, :cond_33

    :cond_26
    iget-boolean v7, v3, Landroid/support/v7/widget/aF;->rn:Z

    if-eqz v7, :cond_28

    move v4, v0

    :goto_1a
    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v7, :cond_33

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroid/support/v7/widget/aJ;->clear()V

    iget v7, v3, Landroid/support/v7/widget/aF;->mOffset:I

    if-eq v7, v6, :cond_27

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v7, v7, v4

    iget v8, v3, Landroid/support/v7/widget/aF;->mOffset:I

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/aJ;->ao(I)V

    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_28
    if-nez v4, :cond_2a

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rj:Landroid/support/v7/widget/aF;

    iget-object v4, v4, Landroid/support/v7/widget/aF;->ro:[I

    if-nez v4, :cond_29

    goto :goto_1c

    :cond_29
    move v4, v0

    :goto_1b
    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v7, :cond_33

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroid/support/v7/widget/aJ;->clear()V

    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rj:Landroid/support/v7/widget/aF;

    iget-object v8, v8, Landroid/support/v7/widget/aF;->ro:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/aJ;->ao(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_2a
    :goto_1c
    move v4, v0

    :goto_1d
    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v7, :cond_30

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v7, v7, v4

    iget-boolean v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iget v9, v3, Landroid/support/v7/widget/aF;->mOffset:I

    if-eqz v8, :cond_2b

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/aJ;->an(I)I

    move-result v10

    goto :goto_1e

    :cond_2b
    invoke-virtual {v7, v6}, Landroid/support/v7/widget/aJ;->am(I)I

    move-result v10

    :goto_1e
    invoke-virtual {v7}, Landroid/support/v7/widget/aJ;->clear()V

    if-eq v10, v6, :cond_2f

    if-eqz v8, :cond_2c

    iget-object v11, v7, Landroid/support/v7/widget/aJ;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v11}, Landroid/support/v7/widget/M;->bz()I

    move-result v11

    if-lt v10, v11, :cond_2f

    :cond_2c
    if-nez v8, :cond_2d

    iget-object v8, v7, Landroid/support/v7/widget/aJ;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v8}, Landroid/support/v7/widget/M;->by()I

    move-result v8

    if-le v10, v8, :cond_2d

    goto :goto_1f

    :cond_2d
    if-eq v9, v6, :cond_2e

    add-int/2addr v10, v9

    :cond_2e
    iput v10, v7, Landroid/support/v7/widget/aJ;->rD:I

    iput v10, v7, Landroid/support/v7/widget/aJ;->rC:I

    :cond_2f
    :goto_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_30
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rj:Landroid/support/v7/widget/aF;

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    array-length v8, v7

    iget-object v9, v4, Landroid/support/v7/widget/aF;->ro:[I

    if-eqz v9, :cond_31

    iget-object v9, v4, Landroid/support/v7/widget/aF;->ro:[I

    array-length v9, v9

    if-ge v9, v8, :cond_32

    :cond_31
    iget-object v9, v4, Landroid/support/v7/widget/aF;->rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    array-length v9, v9

    new-array v9, v9, [I

    iput-object v9, v4, Landroid/support/v7/widget/aF;->ro:[I

    :cond_32
    move v9, v0

    :goto_20
    if-ge v9, v8, :cond_33

    iget-object v10, v4, Landroid/support/v7/widget/aF;->ro:[I

    aget-object v11, v7, v9

    invoke-virtual {v11, v6}, Landroid/support/v7/widget/aJ;->am(I)I

    move-result v11

    aput v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_20

    :cond_33
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/aq;)V

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iput-boolean v0, v4, Landroid/support/v7/widget/E;->pn:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rk:Z

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qZ:Landroid/support/v7/widget/M;

    invoke-virtual {v4}, Landroid/support/v7/widget/M;->bA()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ab(I)V

    iget v4, v3, Landroid/support/v7/widget/aF;->mPosition:I

    invoke-direct {p0, v4, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ILandroid/support/v7/widget/ax;)V

    iget-boolean v4, v3, Landroid/support/v7/widget/aF;->px:Z

    if-eqz v4, :cond_34

    invoke-direct {p0, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ac(I)V

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    invoke-direct {p0, p1, v4, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/E;Landroid/support/v7/widget/ax;)I

    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ac(I)V

    :goto_21
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iget v5, v3, Landroid/support/v7/widget/aF;->mPosition:I

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iget v7, v7, Landroid/support/v7/widget/E;->pq:I

    add-int/2addr v5, v7

    iput v5, v4, Landroid/support/v7/widget/E;->pp:I

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    invoke-direct {p0, p1, v4, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/E;Landroid/support/v7/widget/ax;)I

    goto :goto_22

    :cond_34
    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ac(I)V

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    invoke-direct {p0, p1, v4, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/E;Landroid/support/v7/widget/ax;)I

    invoke-direct {p0, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ac(I)V

    goto :goto_21

    :goto_22
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qZ:Landroid/support/v7/widget/M;

    invoke-virtual {v4}, Landroid/support/v7/widget/M;->getMode()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v4, v5, :cond_3c

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    move v7, v4

    move v4, v0

    :goto_23
    if-ge v4, v5, :cond_37

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qZ:Landroid/support/v7/widget/M;

    invoke-virtual {v9, v8}, Landroid/support/v7/widget/M;->W(Landroid/view/View;)I

    move-result v9

    int-to-float v9, v9

    cmpg-float v10, v9, v7

    if-ltz v10, :cond_36

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/aG;

    iget-boolean v8, v8, Landroid/support/v7/widget/aG;->rr:Z

    if-eqz v8, :cond_35

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    iget v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    int-to-float v9, v9

    div-float v9, v8, v9

    :cond_35
    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_37
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ra:I

    iget v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qZ:Landroid/support/v7/widget/M;

    invoke-virtual {v8}, Landroid/support/v7/widget/M;->getMode()I

    move-result v8

    if-ne v8, v6, :cond_38

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qZ:Landroid/support/v7/widget/M;

    invoke-virtual {v6}, Landroid/support/v7/widget/M;->bA()I

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    :cond_38
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ab(I)V

    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ra:I

    if-eq v6, v4, :cond_3c

    move v6, v0

    :goto_24
    if-ge v6, v5, :cond_3c

    invoke-virtual {p0, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/aG;

    iget-boolean v9, v8, Landroid/support/v7/widget/aG;->rr:Z

    if-nez v9, :cond_3b

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v9

    if-eqz v9, :cond_39

    iget v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v9, v1, :cond_39

    iget v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr v9, v1

    iget-object v10, v8, Landroid/support/v7/widget/aG;->rq:Landroid/support/v7/widget/aJ;

    iget v10, v10, Landroid/support/v7/widget/aJ;->cx:I

    sub-int/2addr v9, v10

    neg-int v9, v9

    iget v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ra:I

    mul-int/2addr v9, v10

    iget v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr v10, v1

    iget-object v8, v8, Landroid/support/v7/widget/aG;->rq:Landroid/support/v7/widget/aJ;

    iget v8, v8, Landroid/support/v7/widget/aJ;->cx:I

    sub-int/2addr v10, v8

    neg-int v8, v10

    mul-int/2addr v8, v4

    :goto_25
    sub-int/2addr v9, v8

    invoke-virtual {v7, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_26

    :cond_39
    iget-object v9, v8, Landroid/support/v7/widget/aG;->rq:Landroid/support/v7/widget/aJ;

    iget v9, v9, Landroid/support/v7/widget/aJ;->cx:I

    iget v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ra:I

    mul-int/2addr v9, v10

    iget-object v8, v8, Landroid/support/v7/widget/aG;->rq:Landroid/support/v7/widget/aJ;

    iget v8, v8, Landroid/support/v7/widget/aJ;->cx:I

    mul-int/2addr v8, v4

    iget v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v10, v1, :cond_3a

    goto :goto_25

    :cond_3a
    sub-int/2addr v9, v8

    invoke-virtual {v7, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_3b
    :goto_26
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    :cond_3c
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v4

    if-lez v4, :cond_3e

    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_3d

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Z)V

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Z)V

    goto :goto_27

    :cond_3d
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Z)V

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Z)V

    :cond_3e
    :goto_27
    if-eqz v2, :cond_41

    iget-boolean v2, p2, Landroid/support/v7/widget/ax;->qG:Z

    if-nez v2, :cond_41

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->re:I

    if-eqz v2, :cond_40

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    if-lez v2, :cond_40

    iget-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rk:Z

    if-nez v2, :cond_3f

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bN()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_40

    :cond_3f
    move v2, v1

    goto :goto_28

    :cond_40
    move v2, v0

    :goto_28
    if-eqz v2, :cond_41

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rm:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bM()Z

    move-result v2

    if-eqz v2, :cond_41

    move v2, v1

    goto :goto_29

    :cond_41
    move v2, v0

    :goto_29
    iget-boolean v4, p2, Landroid/support/v7/widget/ax;->qG:Z

    if-eqz v4, :cond_42

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rj:Landroid/support/v7/widget/aF;

    invoke-virtual {v4}, Landroid/support/v7/widget/aF;->reset()V

    :cond_42
    iget-boolean v3, v3, Landroid/support/v7/widget/aF;->px:Z

    iput-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rf:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rg:Z

    if-eqz v2, :cond_43

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rj:Landroid/support/v7/widget/aF;

    invoke-virtual {v2}, Landroid/support/v7/widget/aF;->reset()V

    move v2, v0

    goto/16 :goto_0

    .line 606
    :cond_43
    return-void
.end method

.method public final onLayoutCompleted(Landroid/support/v7/widget/ax;)V
    .locals 0

    .line 726
    invoke-super {p0, p1}, Landroid/support/v7/widget/af;->onLayoutCompleted(Landroid/support/v7/widget/ax;)V

    .line 727
    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 728
    const/high16 p1, -0x80000000

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 729
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 730
    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rj:Landroid/support/v7/widget/aF;

    invoke-virtual {p1}, Landroid/support/v7/widget/aF;->reset()V

    .line 731
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1222
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1223
    check-cast p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 1224
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 1228
    :cond_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .line 1232
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1233
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;)V

    return-object v0

    .line 1235
    :cond_0
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>()V

    .line 1236
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 1237
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rf:Z

    iput-boolean v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->pJ:Z

    .line 1238
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rg:Z

    iput-boolean v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->rg:Z

    .line 1240
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rd:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rd:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v1, :cond_1

    .line 1241
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rd:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iput-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->rA:[I

    .line 1242
    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->rA:[I

    array-length v1, v1

    iput v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->rz:I

    .line 1243
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rd:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    iput-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->rs:Ljava/util/List;

    goto :goto_0

    .line 1245
    :cond_1
    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->rz:I

    .line 1248
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    const/4 v3, -0x1

    if-lez v1, :cond_7

    .line 1249
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rf:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bO()I

    move-result v1

    goto :goto_1

    .line 1250
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bP()I

    move-result v1

    :goto_1
    iput v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->pH:I

    .line 1251
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m(Z)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(Z)Landroid/view/View;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    :goto_3
    iput v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->rw:I

    .line 1252
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    iput v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->rx:I

    .line 1253
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->ry:[I

    .line 1254
    :goto_4
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v2, v1, :cond_8

    .line 1256
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rf:Z

    const/high16 v3, -0x80000000

    if-eqz v1, :cond_5

    .line 1257
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/aJ;->an(I)I

    move-result v1

    .line 1258
    if-eq v1, v3, :cond_6

    .line 1259
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v3}, Landroid/support/v7/widget/M;->bz()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_5

    .line 1262
    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qX:[Landroid/support/v7/widget/aJ;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/aJ;->am(I)I

    move-result v1

    .line 1263
    if-eq v1, v3, :cond_6

    .line 1264
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    invoke-virtual {v3}, Landroid/support/v7/widget/M;->by()I

    move-result v3

    sub-int/2addr v1, v3

    .line 1267
    :cond_6
    :goto_5
    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->ry:[I

    aput v1, v3, v2

    .line 1254
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1270
    :cond_7
    iput v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->pH:I

    .line 1271
    iput v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->rw:I

    .line 1272
    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->rx:I

    .line 1277
    :cond_8
    return-object v0
.end method

.method public final onScrollStateChanged(I)V
    .locals 0

    .line 316
    if-nez p1, :cond_0

    .line 317
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bM()Z

    .line 319
    :cond_0
    return-void
.end method

.method final scrollBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I
    .locals 2

    .line 2177
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 2181
    :cond_0
    invoke-virtual {p0, p1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ILandroid/support/v7/widget/ax;)V

    .line 2182
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    invoke-direct {p0, p2, v0, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/E;Landroid/support/v7/widget/ax;)I

    move-result p3

    .line 2183
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iget v0, v0, Landroid/support/v7/widget/E;->po:I

    .line 2185
    if-ge v0, p3, :cond_1

    .line 2186
    goto :goto_0

    .line 2187
    :cond_1
    if-gez p1, :cond_2

    .line 2188
    neg-int p1, p3

    goto :goto_0

    .line 2190
    :cond_2
    nop

    .line 2196
    move p1, p3

    :goto_0
    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->qY:Landroid/support/v7/widget/M;

    neg-int v0, p1

    invoke-virtual {p3, v0}, Landroid/support/v7/widget/M;->U(I)V

    .line 2198
    iget-boolean p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rf:Z

    .line 2199
    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    iput v1, p3, Landroid/support/v7/widget/E;->po:I

    .line 2200
    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rb:Landroid/support/v7/widget/E;

    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/E;)V

    .line 2201
    return p1

    .line 2178
    :cond_3
    :goto_1
    return v1
.end method

.method public final scrollHorizontallyBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 2035
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->scrollBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I

    move-result p1

    return p1
.end method

.method public final scrollToPosition(I)V
    .locals 2

    .line 2079
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->pH:I

    if-eq v0, p1, :cond_0

    .line 2080
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->ry:[I

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->rx:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->pH:I

    iput v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->rw:I

    .line 2082
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 2083
    const/high16 p1, -0x80000000

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 2084
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 2085
    return-void
.end method

.method public final scrollVerticallyBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 2041
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->scrollBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I

    move-result p1

    return p1
.end method

.method public final setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 4

    .line 587
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 588
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 589
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 590
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v1

    .line 591
    iget-object v1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/n;->j(Landroid/view/View;)I

    move-result v1

    invoke-static {p3, p1, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result p1

    .line 592
    iget p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ra:I

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    mul-int/2addr p3, v1

    add-int/2addr p3, v0

    .line 593
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/n;->i(Landroid/view/View;)I

    move-result v0

    .line 592
    invoke-static {p2, p3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result p2

    .line 594
    goto :goto_0

    .line 595
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v0

    .line 596
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/n;->i(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result p2

    .line 597
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ra:I

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    mul-int/2addr p1, v0

    add-int/2addr p1, v1

    .line 598
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/n;->j(Landroid/view/View;)I

    move-result v0

    .line 597
    invoke-static {p3, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result p1

    .line 600
    :goto_0
    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setMeasuredDimension(II)V

    .line 601
    return-void
.end method

.method public final smoothScrollToPosition$7d69765f(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    .line 2072
    new-instance v0, Landroid/support/v7/widget/J;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v7/widget/J;-><init>(Landroid/content/Context;)V

    .line 2073
    iput p2, v0, Landroid/support/v7/widget/au;->qt:I

    .line 2074
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/au;)V

    .line 2075
    return-void
.end method

.method public final supportsPredictiveItemAnimations()Z
    .locals 1

    .line 935
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->rh:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
