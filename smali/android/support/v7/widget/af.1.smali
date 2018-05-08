.class public abstract Landroid/support/v7/widget/af;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mAutoMeasure:Z

.field mChildHelper:Landroid/support/v7/widget/d;

.field mHeight:I

.field mHeightMode:I

.field mHorizontalBoundCheck:Landroid/support/v7/widget/aK;

.field private final mHorizontalBoundCheckCallback:Landroid/support/v7/widget/aM;

.field mIsAttachedToWindow:Z

.field mItemPrefetchEnabled:Z

.field private mMeasurementCacheEnabled:Z

.field mPrefetchMaxCountObserved:I

.field mPrefetchMaxObservedInInitialPrefetch:Z

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field mRequestedSimpleAnimations:Z

.field mSmoothScroller:Landroid/support/v7/widget/au;

.field mVerticalBoundCheck:Landroid/support/v7/widget/aK;

.field private final mVerticalBoundCheckCallback:Landroid/support/v7/widget/aM;

.field mWidth:I

.field mWidthMode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7254
    new-instance v0, Landroid/support/v7/widget/ag;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ag;-><init>(Landroid/support/v7/widget/af;)V

    iput-object v0, p0, Landroid/support/v7/widget/af;->mHorizontalBoundCheckCallback:Landroid/support/v7/widget/aM;

    .line 7300
    new-instance v0, Landroid/support/v7/widget/ah;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ah;-><init>(Landroid/support/v7/widget/af;)V

    iput-object v0, p0, Landroid/support/v7/widget/af;->mVerticalBoundCheckCallback:Landroid/support/v7/widget/aM;

    .line 7350
    new-instance v0, Landroid/support/v7/widget/aK;

    iget-object v1, p0, Landroid/support/v7/widget/af;->mHorizontalBoundCheckCallback:Landroid/support/v7/widget/aM;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/aK;-><init>(Landroid/support/v7/widget/aM;)V

    iput-object v0, p0, Landroid/support/v7/widget/af;->mHorizontalBoundCheck:Landroid/support/v7/widget/aK;

    .line 7351
    new-instance v0, Landroid/support/v7/widget/aK;

    iget-object v1, p0, Landroid/support/v7/widget/af;->mVerticalBoundCheckCallback:Landroid/support/v7/widget/aM;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/aK;-><init>(Landroid/support/v7/widget/aM;)V

    iput-object v0, p0, Landroid/support/v7/widget/af;->mVerticalBoundCheck:Landroid/support/v7/widget/aK;

    .line 7356
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/af;->mRequestedSimpleAnimations:Z

    .line 7358
    iput-boolean v0, p0, Landroid/support/v7/widget/af;->mIsAttachedToWindow:Z

    .line 7364
    iput-boolean v0, p0, Landroid/support/v7/widget/af;->mAutoMeasure:Z

    .line 7370
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/af;->mMeasurementCacheEnabled:Z

    .line 7372
    iput-boolean v0, p0, Landroid/support/v7/widget/af;->mItemPrefetchEnabled:Z

    .line 10367
    return-void
.end method

.method static synthetic access$1600(Landroid/support/v7/widget/af;Landroid/support/v7/widget/au;)V
    .locals 1

    .line 7246
    iget-object v0, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    :cond_0
    return-void
.end method

.method public static chooseSize(III)I
    .locals 2

    .line 7560
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 7561
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    .line 7562
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 7569
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 7564
    :cond_0
    return p0

    .line 7566
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static getChildMeasureSpec(IIIIZ)I
    .locals 4

    .line 9126
    sub-int/2addr p0, p2

    const/4 p2, 0x0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 9127
    nop

    .line 9128
    nop

    .line 9129
    const/4 v0, -0x2

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p4, :cond_4

    .line 9130
    if-ltz p3, :cond_0

    .line 9131
    nop

    .line 9132
    nop

    .line 9167
    :goto_0
    move p2, v3

    goto :goto_6

    .line 9133
    :cond_0
    if-ne p3, v1, :cond_3

    .line 9134
    if-eq p1, v2, :cond_2

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_2

    goto :goto_1

    .line 9141
    :cond_1
    nop

    .line 9142
    nop

    .line 9143
    :goto_1
    goto :goto_5

    .line 9137
    :cond_2
    nop

    .line 9138
    nop

    .line 9139
    goto :goto_2

    .line 9145
    :cond_3
    if-ne p3, v0, :cond_9

    .line 9146
    nop

    .line 9147
    nop

    .line 9161
    move p3, p2

    goto :goto_3

    .line 9150
    :cond_4
    if-ltz p3, :cond_5

    .line 9151
    nop

    .line 9152
    goto :goto_0

    .line 9153
    :cond_5
    if-ne p3, v1, :cond_6

    .line 9154
    nop

    .line 9155
    nop

    .line 9167
    :goto_2
    move p3, p0

    move p2, p1

    goto :goto_6

    .line 9156
    :cond_6
    if-ne p3, v0, :cond_9

    .line 9157
    nop

    .line 9158
    if-eq p1, v2, :cond_8

    if-ne p1, v3, :cond_7

    goto :goto_4

    .line 9161
    :cond_7
    move p3, p0

    :goto_3
    goto :goto_6

    .line 9159
    :cond_8
    :goto_4
    nop

    .line 9167
    move p3, p0

    move p2, v2

    goto :goto_6

    :cond_9
    :goto_5
    move p3, p2

    :goto_6
    invoke-static {p3, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private static isMeasurementUpToDate(III)Z
    .locals 3

    .line 9020
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 9021
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 9022
    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    .line 9023
    return v1

    .line 9025
    :cond_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-eqz v0, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_1

    .line 9033
    return v1

    .line 9031
    :cond_1
    if-ne p1, p0, :cond_2

    return v2

    :cond_2
    return v1

    .line 9027
    :cond_3
    return v2

    .line 9029
    :cond_4
    if-lt p1, p0, :cond_5

    return v2

    :cond_5
    return v1
.end method


# virtual methods
.method final addViewInt(Landroid/view/View;IZ)V
    .locals 6

    .line 8243
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v0

    .line 8244
    if-nez p3, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 8253
    :cond_0
    iget-object p3, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p3, p3, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    invoke-virtual {p3, v0}, Landroid/support/v7/widget/aN;->p(Landroid/support/v7/widget/aA;)V

    goto :goto_1

    .line 8246
    :cond_1
    :goto_0
    iget-object p3, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p3, p3, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    invoke-virtual {p3, v0}, Landroid/support/v7/widget/aN;->o(Landroid/support/v7/widget/aA;)V

    .line 8255
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/support/v7/widget/aj;

    .line 8256
    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->wasReturnedFromScrap()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_9

    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_4

    .line 8266
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-ne v1, v3, :cond_8

    .line 8268
    iget-object v1, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/d;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 8269
    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    .line 8270
    iget-object p2, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {p2}, Landroid/support/v7/widget/d;->getChildCount()I

    move-result p2

    .line 8272
    :cond_3
    if-eq v1, v3, :cond_7

    .line 8277
    if-eq v1, p2, :cond_6

    .line 8278
    iget-object p1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/af;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/af;->detachViewAt(I)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aj;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p1, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/aN;->o(Landroid/support/v7/widget/aA;)V

    goto :goto_2

    :cond_4
    iget-object v5, p1, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/aN;->p(Landroid/support/v7/widget/aA;)V

    :goto_2
    iget-object p1, p1, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v4}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v4

    invoke-virtual {p1, v3, p2, v1, v4}, Landroid/support/v7/widget/d;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto :goto_3

    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Cannot move a child from non-existing index:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8280
    :cond_6
    :goto_3
    goto :goto_6

    .line 8273
    :cond_7
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 8275
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8281
    :cond_8
    iget-object v1, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v1, p1, p2, v2}, Landroid/support/v7/widget/d;->a(Landroid/view/View;IZ)V

    .line 8282
    const/4 p2, 0x1

    iput-boolean p2, p3, Landroid/support/v7/widget/aj;->qc:Z

    .line 8283
    iget-object p2, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    if-eqz p2, :cond_b

    iget-object p2, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    iget-boolean p2, p2, Landroid/support/v7/widget/au;->bh:Z

    if-eqz p2, :cond_b

    .line 8284
    iget-object p2, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/au;->getChildPosition(Landroid/view/View;)I

    move-result v1

    iget v3, p2, Landroid/support/v7/widget/au;->qt:I

    if-ne v1, v3, :cond_b

    iput-object p1, p2, Landroid/support/v7/widget/au;->mTargetView:Landroid/view/View;

    goto :goto_6

    .line 8257
    :cond_9
    :goto_4
    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 8258
    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->unScrap()V

    goto :goto_5

    .line 8260
    :cond_a
    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->clearReturnedFromScrapFlag()V

    .line 8262
    :goto_5
    iget-object v1, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v3, v2}, Landroid/support/v7/widget/d;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 8287
    :cond_b
    :goto_6
    iget-boolean p1, p3, Landroid/support/v7/widget/aj;->qd:Z

    if-eqz p1, :cond_c

    .line 8291
    iget-object p1, v0, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 8292
    iput-boolean v2, p3, Landroid/support/v7/widget/aj;->qd:Z

    .line 8294
    :cond_c
    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    .line 7581
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7582
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 7584
    :cond_0
    return-void
.end method

.method public final calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    .line 9387
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 9388
    const/4 p1, 0x0

    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 9389
    return-void

    .line 9391
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    .line 9392
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9393
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .line 8099
    const/4 v0, 0x0

    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    .line 8109
    const/4 v0, 0x0

    return v0
.end method

.method public checkLayoutParams(Landroid/support/v7/widget/aj;)Z
    .locals 0

    .line 8014
    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/ax;Landroid/support/v7/widget/ai;)V
    .locals 0

    .line 7766
    return-void
.end method

.method public collectInitialPrefetchPositions(ILandroid/support/v7/widget/ai;)V
    .locals 0

    .line 7794
    return-void
.end method

.method public computeHorizontalScrollExtent(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 9837
    const/4 p1, 0x0

    return p1
.end method

.method public computeHorizontalScrollOffset(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 9852
    const/4 p1, 0x0

    return p1
.end method

.method public computeHorizontalScrollRange(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 9867
    const/4 p1, 0x0

    return p1
.end method

.method public computeVerticalScrollExtent(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 9882
    const/4 p1, 0x0

    return p1
.end method

.method public computeVerticalScrollOffset(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 9897
    const/4 p1, 0x0

    return p1
.end method

.method public computeVerticalScrollRange(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 9912
    const/4 p1, 0x0

    return p1
.end method

.method public final detachAndScrapAttachedViews(Landroid/support/v7/widget/aq;)V
    .locals 4

    .line 8872
    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getChildCount()I

    move-result v0

    .line 8873
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 8874
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/af;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8875
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/support/v7/widget/aA;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    iget-boolean v3, v3, Landroid/support/v7/widget/V;->mHasStableIds:Z

    if-nez v3, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/af;->removeViewAt(I)V

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/aq;->l(Landroid/support/v7/widget/aA;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/af;->detachViewAt(I)V

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/aq;->ac(Landroid/view/View;)V

    iget-object v1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/aN;->p(Landroid/support/v7/widget/aA;)V

    .line 8873
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8877
    :cond_2
    return-void
.end method

.method public final detachViewAt(I)V
    .locals 1

    .line 8464
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/af;->getChildAt(I)Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/d;->detachViewFromParent(I)V

    .line 8465
    return-void
.end method

.method final dispatchDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/aq;)V
    .locals 1

    .line 7802
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/af;->mIsAttachedToWindow:Z

    .line 7803
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/af;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/aq;)V

    .line 7804
    return-void
.end method

.method public final findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 8383
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8384
    return-object v1

    .line 8386
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 8387
    if-nez p1, :cond_1

    .line 8388
    return-object v1

    .line 8390
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/d;->O(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8391
    return-object v1

    .line 8393
    :cond_2
    return-object p1
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 5

    .line 8411
    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getChildCount()I

    move-result v0

    .line 8412
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 8413
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/af;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8414
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v3

    .line 8415
    if-eqz v3, :cond_1

    .line 8416
    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    .line 8419
    iget-boolean v4, v4, Landroid/support/v7/widget/ax;->qG:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8420
    :cond_0
    return-object v2

    .line 8412
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8423
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract generateDefaultLayoutParams()Landroid/support/v7/widget/aj;
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/aj;
    .locals 1

    .line 8055
    new-instance v0, Landroid/support/v7/widget/aj;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/aj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/aj;
    .locals 1

    .line 8031
    instance-of v0, p1, Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_0

    .line 8032
    new-instance v0, Landroid/support/v7/widget/aj;

    check-cast p1, Landroid/support/v7/widget/aj;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/aj;-><init>(Landroid/support/v7/widget/aj;)V

    return-object v0

    .line 8033
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 8034
    new-instance v0, Landroid/support/v7/widget/aj;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/aj;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 8036
    :cond_1
    new-instance v0, Landroid/support/v7/widget/aj;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/aj;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final getChildAt(I)Landroid/view/View;
    .locals 1

    .line 8613
    iget-object v0, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/d;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getChildCount()I
    .locals 1

    .line 8603
    iget-object v0, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->getChildCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getColumnCountForAccessibility(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 10212
    iget-object p1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    if-nez p1, :cond_0

    goto :goto_0

    .line 10215
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/af;->canScrollHorizontally()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    invoke-virtual {p1}, Landroid/support/v7/widget/V;->getItemCount()I

    move-result p1

    return p1

    :cond_1
    return p2

    .line 10213
    :cond_2
    :goto_0
    return p2
.end method

.method public final getDecoratedBottom(Landroid/view/View;)I
    .locals 1

    .line 9366
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/aj;

    iget-object p1, p1, Landroid/support/v7/widget/aj;->mDecorInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p1

    return v0
.end method

.method public final getDecoratedLeft(Landroid/view/View;)I
    .locals 1

    .line 9330
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/aj;

    iget-object p1, p1, Landroid/support/v7/widget/aj;->mDecorInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final getDecoratedMeasuredHeight(Landroid/view/View;)I
    .locals 2

    .line 9194
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aj;

    iget-object v0, v0, Landroid/support/v7/widget/aj;->mDecorInsets:Landroid/graphics/Rect;

    .line 9195
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    return p1
.end method

.method public final getDecoratedMeasuredWidth(Landroid/view/View;)I
    .locals 2

    .line 9180
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aj;

    iget-object v0, v0, Landroid/support/v7/widget/aj;->mDecorInsets:Landroid/graphics/Rect;

    .line 9181
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v0

    return p1
.end method

.method public final getDecoratedRight(Landroid/view/View;)I
    .locals 1

    .line 9354
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/aj;

    iget-object p1, p1, Landroid/support/v7/widget/aj;->mDecorInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p1

    return v0
.end method

.method public final getDecoratedTop(Landroid/view/View;)I
    .locals 1

    .line 9342
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/aj;

    iget-object p1, p1, Landroid/support/v7/widget/aj;->mDecorInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final getFocusedChild()Landroid/view/View;
    .locals 3

    .line 8769
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8770
    return-object v1

    .line 8772
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 8773
    if-eqz v0, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/d;->O(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 8776
    :cond_1
    return-object v0

    .line 8774
    :cond_2
    :goto_0
    return-object v1
.end method

.method public final getPaddingBottom()I
    .locals 1

    .line 8719
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getPaddingLeft()I
    .locals 1

    .line 8689
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getPaddingRight()I
    .locals 1

    .line 8709
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getPaddingTop()I
    .locals 1

    .line 8699
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getPosition(Landroid/view/View;)I
    .locals 0

    .line 8353
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/aj;

    iget-object p1, p1, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result p1

    return p1
.end method

.method public getRowCountForAccessibility(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 10192
    iget-object p1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    if-nez p1, :cond_0

    goto :goto_0

    .line 10195
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/af;->canScrollVertically()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    invoke-virtual {p1}, Landroid/support/v7/widget/V;->getItemCount()I

    move-result p1

    return p1

    :cond_1
    return p2

    .line 10193
    :cond_2
    :goto_0
    return p2
.end method

.method public final getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 5

    .line 9285
    if-eqz p2, :cond_0

    .line 9286
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/aj;

    iget-object p2, p2, Landroid/support/v7/widget/aj;->mDecorInsets:Landroid/graphics/Rect;

    .line 9287
    iget v0, p2, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    .line 9288
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p2

    .line 9287
    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 9289
    goto :goto_0

    .line 9290
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 9293
    :goto_0
    iget-object p2, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz p2, :cond_1

    .line 9294
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    .line 9295
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9296
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 9297
    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 9298
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 9299
    iget p2, v0, Landroid/graphics/RectF;->left:F

    float-to-double v1, p2

    .line 9300
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p2, v1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    .line 9301
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    .line 9302
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v0

    .line 9303
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    .line 9299
    invoke-virtual {p3, p2, v1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 9307
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 9308
    return-void
.end method

.method public isAutoMeasureEnabled()Z
    .locals 1

    .line 7675
    iget-boolean v0, p0, Landroid/support/v7/widget/af;->mAutoMeasure:Z

    return v0
.end method

.method public final isSmoothScrolling()Z
    .locals 1

    .line 8156
    iget-object v0, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    iget-boolean v0, v0, Landroid/support/v7/widget/au;->bh:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 3

    .line 9265
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aj;

    .line 9266
    iget-object v1, v0, Landroid/support/v7/widget/aj;->mDecorInsets:Landroid/graphics/Rect;

    .line 9267
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v2

    iget v2, v0, Landroid/support/v7/widget/aj;->leftMargin:I

    add-int/2addr p2, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v2

    iget v2, v0, Landroid/support/v7/widget/aj;->topMargin:I

    add-int/2addr p3, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v2

    iget v2, v0, Landroid/support/v7/widget/aj;->rightMargin:I

    sub-int/2addr p4, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, v1

    iget v0, v0, Landroid/support/v7/widget/aj;->bottomMargin:I

    sub-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 9270
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 1

    .line 8803
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8804
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->offsetChildrenHorizontal(I)V

    .line 8806
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 1

    .line 8815
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8816
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->offsetChildrenVertical(I)V

    .line 8818
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/aq;)V
    .locals 0

    .line 7905
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)Landroid/view/View;
    .locals 0

    .line 9480
    const/4 p1, 0x0

    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 10081
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    nop

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    invoke-virtual {v0}, Landroid/support/v7/widget/V;->getItemCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 10082
    :cond_3
    return-void

    .line 10081
    :cond_4
    :goto_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 6

    .line 10137
    invoke-virtual {p0}, Landroid/support/v7/widget/af;->canScrollVertically()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/af;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 10138
    move v0, p1

    goto :goto_0

    .line 10137
    :cond_0
    nop

    .line 10138
    move v0, p2

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/af;->canScrollHorizontally()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/af;->getPosition(Landroid/view/View;)I

    move-result p2

    .line 10139
    :goto_1
    move v2, p2

    goto :goto_2

    .line 10138
    :cond_1
    goto :goto_1

    .line 10139
    :goto_2
    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 10140
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/a/c;->a(IIIIZZ)Landroid/support/v4/view/a/c;

    move-result-object p1

    .line 10142
    invoke-virtual {p4, p1}, Landroid/support/v4/view/a/a;->q(Ljava/lang/Object;)V

    .line 10143
    return-void
.end method

.method final onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 2

    .line 10112
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v0

    .line 10114
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    iget-object v0, v0, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/d;->O(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10115
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    iget-object v1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/af;->onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 10118
    :cond_0
    return-void
.end method

.method public onItemsAdded$5927c743(II)V
    .locals 0

    .line 9767
    return-void
.end method

.method public onItemsChanged$57043c5d()V
    .locals 0

    .line 9754
    return-void
.end method

.method public onItemsMoved$342e6be0(II)V
    .locals 0

    .line 9822
    return-void
.end method

.method public onItemsRemoved$5927c743(II)V
    .locals 0

    .line 9778
    return-void
.end method

.method public onItemsUpdated$783f8c5f$5927c743(II)V
    .locals 0

    .line 9804
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)V
    .locals 0

    .line 7969
    const-string p1, "RecyclerView"

    const-string p2, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7970
    return-void
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/ax;)V
    .locals 0

    .line 7984
    return-void
.end method

.method public final onMeasure$19b62fcb(II)V
    .locals 1

    .line 9940
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 9941
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 9987
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 9981
    const/4 v0, 0x0

    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    .line 10007
    return-void
.end method

.method public final removeAndRecycleAllViews(Landroid/support/v7/widget/aq;)V
    .locals 2

    .line 10022
    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 10023
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/af;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 10024
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10025
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/af;->removeAndRecycleViewAt(ILandroid/support/v7/widget/aq;)V

    .line 10022
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 10028
    :cond_1
    return-void
.end method

.method final removeAndRecycleScrapInt(Landroid/support/v7/widget/aq;)V
    .locals 6

    .line 8908
    iget-object v0, p1, Landroid/support/v7/widget/aq;->qk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8910
    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 8911
    iget-object v2, p1, Landroid/support/v7/widget/aq;->qk:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/aA;

    iget-object v2, v2, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    .line 8912
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v3

    .line 8913
    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2

    .line 8914
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/aA;->setIsRecyclable(Z)V

    .line 8922
    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->isTmpDetached()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8923
    iget-object v5, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v2, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 8925
    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    if-eqz v4, :cond_1

    .line 8926
    iget-object v4, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/aa;->c(Landroid/support/v7/widget/aA;)V

    .line 8928
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/aA;->setIsRecyclable(Z)V

    .line 8929
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/aq;->ab(Landroid/view/View;)V

    .line 8910
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 8931
    :cond_3
    iget-object v1, p1, Landroid/support/v7/widget/aq;->qk:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p1, Landroid/support/v7/widget/aq;->ql:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object p1, p1, Landroid/support/v7/widget/aq;->ql:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 8932
    :cond_4
    if-lez v0, :cond_5

    .line 8933
    iget-object p1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 8935
    :cond_5
    return-void
.end method

.method public final removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/aq;)V
    .locals 3

    .line 8580
    iget-object v0, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    iget-object v1, v0, Landroid/support/v7/widget/d;->nO:Landroid/support/v7/widget/f;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/f;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, v0, Landroid/support/v7/widget/d;->nP:Landroid/support/v7/widget/e;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/e;->P(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/d;->N(Landroid/view/View;)Z

    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/d;->nO:Landroid/support/v7/widget/f;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/f;->removeViewAt(I)V

    .line 8581
    :cond_1
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/aq;->aa(Landroid/view/View;)V

    .line 8582
    return-void
.end method

.method public final removeAndRecycleViewAt(ILandroid/support/v7/widget/aq;)V
    .locals 1

    .line 8591
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/af;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8592
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/af;->removeViewAt(I)V

    .line 8593
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/aq;->aa(Landroid/view/View;)V

    .line 8594
    return-void
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 1

    .line 7848
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7849
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    return p1

    .line 7851
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final removeViewAt(I)V
    .locals 3

    .line 8317
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/af;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8318
    if-eqz v0, :cond_1

    .line 8319
    iget-object v0, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/d;->N(I)I

    move-result p1

    iget-object v1, v0, Landroid/support/v7/widget/d;->nO:Landroid/support/v7/widget/f;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/f;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v0, Landroid/support/v7/widget/d;->nP:Landroid/support/v7/widget/e;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/e;->P(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/d;->N(Landroid/view/View;)Z

    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/d;->nO:Landroid/support/v7/widget/f;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/f;->removeViewAt(I)V

    .line 8321
    :cond_1
    return-void
.end method

.method public final requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 9

    .line 9590
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingTop()I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/af;->mWidth:I

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/af;->mHeight:I

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result p2

    sub-int/2addr v6, p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p2, v5

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, v6

    sub-int/2addr v5, v1

    const/4 v1, 0x0

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int/2addr v6, v2

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr p2, v3

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr p3, v4

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget-object v4, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v4/view/n;->h(Landroid/view/View;)I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_1

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v7, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1

    :cond_1
    if-eqz v7, :cond_2

    :goto_0
    move v3, v7

    goto :goto_1

    :cond_2
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v6, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_2
    aput v3, v0, v1

    aput v2, v0, v8

    .line 9592
    aget p2, v0, v1

    .line 9593
    aget p3, v0, v8

    .line 9594
    if-eqz p5, :cond_7

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object p5

    if-nez p5, :cond_5

    :cond_4
    :goto_3
    move p5, v1

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingTop()I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/af;->mWidth:I

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/af;->mHeight:I

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-static {p5, v5}, Landroid/support/v7/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p5, p2

    if-ge p5, v3, :cond_4

    iget p5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p2

    if-le p5, v0, :cond_4

    iget p5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p5, p3

    if-ge p5, v4, :cond_4

    iget p5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, p3

    if-gt p5, v2, :cond_6

    goto :goto_3

    :cond_6
    move p5, v8

    :goto_4
    if-eqz p5, :cond_8

    .line 9595
    :cond_7
    if-nez p2, :cond_9

    if-eqz p3, :cond_8

    goto :goto_5

    .line 9604
    :cond_8
    return v1

    .line 9596
    :cond_9
    :goto_5
    if-eqz p4, :cond_a

    .line 9597
    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    goto :goto_6

    .line 9599
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    .line 9601
    :goto_6
    return v8
.end method

.method public final requestLayout()V
    .locals 1

    .line 7531
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7532
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 7534
    :cond_0
    return-void
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 8072
    const/4 p1, 0x0

    return p1
.end method

.method public scrollToPosition(I)V
    .locals 0

    .line 8122
    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 8089
    const/4 p1, 0x0

    return p1
.end method

.method final setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 10332
    nop

    .line 10333
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 10334
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 10332
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/af;->setMeasureSpecs(II)V

    .line 10336
    return-void
.end method

.method final setMeasureSpecs(II)V
    .locals 1

    .line 7441
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/af;->mWidth:I

    .line 7442
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/af;->mWidthMode:I

    .line 7443
    iget p1, p0, Landroid/support/v7/widget/af;->mWidthMode:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-boolean p1, Landroid/support/v7/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez p1, :cond_0

    .line 7444
    iput v0, p0, Landroid/support/v7/widget/af;->mWidth:I

    .line 7447
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/af;->mHeight:I

    .line 7448
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/af;->mHeightMode:I

    .line 7449
    iget p1, p0, Landroid/support/v7/widget/af;->mHeightMode:I

    if-nez p1, :cond_1

    sget-boolean p1, Landroid/support/v7/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez p1, :cond_1

    .line 7450
    iput v0, p0, Landroid/support/v7/widget/af;->mHeight:I

    .line 7452
    :cond_1
    return-void
.end method

.method public final setMeasuredDimension(II)V
    .locals 1

    .line 9951
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->access$1400(Landroid/support/v7/widget/RecyclerView;II)V

    .line 9952
    return-void
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 2

    .line 7520
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 7521
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingTop()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingBottom()I

    move-result v1

    add-int/2addr p1, v1

    .line 7522
    iget-object v1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/n;->i(Landroid/view/View;)I

    move-result v1

    invoke-static {p2, v0, v1}, Landroid/support/v7/widget/af;->chooseSize(III)I

    move-result p2

    .line 7523
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/n;->j(Landroid/view/View;)I

    move-result v0

    invoke-static {p3, p1, v0}, Landroid/support/v7/widget/af;->chooseSize(III)I

    move-result p1

    .line 7524
    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/af;->setMeasuredDimension(II)V

    .line 7525
    return-void
.end method

.method final setMeasuredDimensionFromChildren(II)V
    .locals 8

    .line 7468
    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getChildCount()I

    move-result v0

    .line 7469
    if-nez v0, :cond_0

    .line 7470
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 7471
    return-void

    .line 7473
    :cond_0
    nop

    .line 7474
    nop

    .line 7475
    nop

    .line 7476
    nop

    .line 7478
    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    const v3, 0x7fffffff

    move v4, v2

    move v5, v4

    move v2, v3

    :goto_0
    if-ge v1, v0, :cond_5

    .line 7479
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/af;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7480
    iget-object v7, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 7481
    invoke-static {v6, v7}, Landroid/support/v7/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 7482
    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v3, :cond_1

    .line 7483
    iget v3, v7, Landroid/graphics/Rect;->left:I

    .line 7485
    :cond_1
    iget v6, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v4, :cond_2

    .line 7486
    iget v4, v7, Landroid/graphics/Rect;->right:I

    .line 7488
    :cond_2
    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v2, :cond_3

    .line 7489
    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 7491
    :cond_3
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v5, :cond_4

    .line 7492
    iget v5, v7, Landroid/graphics/Rect;->bottom:I

    .line 7478
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7495
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 7496
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/widget/af;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 7497
    return-void
.end method

.method final setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 7425
    if-nez p1, :cond_0

    .line 7426
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 7427
    iput-object p1, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    .line 7428
    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/widget/af;->mWidth:I

    .line 7429
    iput p1, p0, Landroid/support/v7/widget/af;->mHeight:I

    goto :goto_0

    .line 7431
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 7432
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    iput-object v0, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    .line 7433
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/af;->mWidth:I

    .line 7434
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/af;->mHeight:I

    .line 7436
    :goto_0
    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Landroid/support/v7/widget/af;->mWidthMode:I

    .line 7437
    iput p1, p0, Landroid/support/v7/widget/af;->mHeightMode:I

    .line 7438
    return-void
.end method

.method final shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/aj;)Z
    .locals 2

    .line 8987
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/af;->mMeasurementCacheEnabled:Z

    if-eqz v0, :cond_1

    .line 8989
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/aj;->width:I

    invoke-static {v0, p2, v1}, Landroid/support/v7/widget/af;->isMeasurementUpToDate(III)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8990
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p2, p4, Landroid/support/v7/widget/aj;->height:I

    invoke-static {p1, p3, p2}, Landroid/support/v7/widget/af;->isMeasurementUpToDate(III)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method shouldMeasureTwice()Z
    .locals 1

    .line 10349
    const/4 v0, 0x0

    return v0
.end method

.method final shouldReMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/aj;)Z
    .locals 2

    .line 8973
    iget-boolean v0, p0, Landroid/support/v7/widget/af;->mMeasurementCacheEnabled:Z

    if-eqz v0, :cond_1

    .line 8974
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/aj;->width:I

    invoke-static {v0, p2, v1}, Landroid/support/v7/widget/af;->isMeasurementUpToDate(III)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8975
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, p4, Landroid/support/v7/widget/aj;->height:I

    invoke-static {p1, p3, p2}, Landroid/support/v7/widget/af;->isMeasurementUpToDate(III)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public smoothScrollToPosition$7d69765f(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 8135
    const-string p1, "RecyclerView"

    const-string p2, "You must override smoothScrollToPosition to support smooth scrolling"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8136
    return-void
.end method

.method public final startSmoothScroll(Landroid/support/v7/widget/au;)V
    .locals 2

    .line 8144
    iget-object v0, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    .line 8145
    iget-boolean v0, v0, Landroid/support/v7/widget/au;->bh:Z

    if-eqz v0, :cond_0

    .line 8146
    iget-object v0, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    invoke-virtual {v0}, Landroid/support/v7/widget/au;->stop()V

    .line 8148
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    .line 8149
    iget-object p1, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Landroid/support/v7/widget/au;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iput-object p0, p1, Landroid/support/v7/widget/au;->pR:Landroid/support/v7/widget/af;

    iget v0, p1, Landroid/support/v7/widget/au;->qt:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Landroid/support/v7/widget/au;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget v1, p1, Landroid/support/v7/widget/au;->qt:I

    iput v1, v0, Landroid/support/v7/widget/ax;->qt:I

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/widget/au;->bh:Z

    iput-boolean v0, p1, Landroid/support/v7/widget/au;->qu:Z

    iget v0, p1, Landroid/support/v7/widget/au;->qt:I

    iget-object v1, p1, Landroid/support/v7/widget/au;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/af;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v7/widget/au;->mTargetView:Landroid/view/View;

    iget-object p1, p1, Landroid/support/v7/widget/au;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/az;

    invoke-virtual {p1}, Landroid/support/v7/widget/az;->bL()V

    .line 8150
    return-void

    .line 8149
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid target position"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final stopSmoothScroller()V
    .locals 1

    .line 9990
    iget-object v0, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    if-eqz v0, :cond_0

    .line 9991
    iget-object v0, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    invoke-virtual {v0}, Landroid/support/v7/widget/au;->stop()V

    .line 9993
    :cond_0
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .line 7701
    const/4 v0, 0x0

    return v0
.end method
