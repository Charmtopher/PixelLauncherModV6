.class public Landroid/support/v7/widget/LinearLayoutManager;
.super Landroid/support/v7/widget/af;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/aw;


# instance fields
.field final mAnchorInfo:Landroid/support/v7/widget/F;

.field private mInitialPrefetchItemCount:I

.field private mLastStackFromEnd:Z

.field private final mLayoutChunkResult:Landroid/support/v7/widget/G;

.field private mLayoutState:Landroid/support/v7/widget/H;

.field mOrientation:I

.field mOrientationHelper:Landroid/support/v7/widget/M;

.field public mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

.field public mPendingScrollPosition:I

.field public mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mReverseLayout:Z

.field mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 153
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(IZ)V

    .line 154
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3

    .line 163
    invoke-direct {p0}, Landroid/support/v7/widget/af;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 100
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 107
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 113
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 119
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 125
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 129
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 135
    new-instance v2, Landroid/support/v7/widget/F;

    invoke-direct {v2}, Landroid/support/v7/widget/F;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    .line 140
    new-instance v2, Landroid/support/v7/widget/G;

    invoke-direct {v2}, Landroid/support/v7/widget/G;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutChunkResult:Landroid/support/v7/widget/G;

    .line 145
    const/4 v2, 0x2

    iput v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    .line 164
    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid orientation:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    if-nez v0, :cond_3

    :cond_2
    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid orientation"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance v0, Landroid/support/v7/widget/O;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/O;-><init>(Landroid/support/v7/widget/af;)V

    goto :goto_1

    :pswitch_1
    new-instance v0, Landroid/support/v7/widget/N;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/N;-><init>(Landroid/support/v7/widget/af;)V

    :goto_1
    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    iput-object v2, v0, Landroid/support/v7/widget/F;->mOrientationHelper:Landroid/support/v7/widget/M;

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 165
    :cond_3
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    if-eq p2, p1, :cond_4

    iput-boolean p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 166
    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private computeScrollExtent(Landroid/support/v7/widget/ax;)I
    .locals 6

    .line 1120
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1121
    const/4 p1, 0x0

    return p1

    .line 1123
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1124
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1125
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    .line 1126
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1124
    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/aD;->a(Landroid/support/v7/widget/ax;Landroid/support/v7/widget/M;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/af;Z)I

    move-result p1

    return p1
.end method

.method private computeScrollOffset(Landroid/support/v7/widget/ax;)I
    .locals 7

    .line 1109
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1110
    const/4 p1, 0x0

    return p1

    .line 1112
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1113
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1114
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    .line 1115
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 1113
    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/aD;->a(Landroid/support/v7/widget/ax;Landroid/support/v7/widget/M;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/af;ZZ)I

    move-result p1

    return p1
.end method

.method private computeScrollRange(Landroid/support/v7/widget/ax;)I
    .locals 6

    .line 1131
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1132
    const/4 p1, 0x0

    return p1

    .line 1134
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1135
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1136
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    .line 1137
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1135
    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/aD;->b(Landroid/support/v7/widget/ax;Landroid/support/v7/widget/M;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/af;Z)I

    move-result p1

    return p1
.end method

.method private findFirstPartiallyOrCompletelyInvisibleChild$5a57ce53()Landroid/view/View;
    .locals 2

    .line 1830
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .locals 2

    .line 1731
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    .line 1732
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1735
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .locals 2

    .line 1713
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    .line 1714
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1717
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private findLastPartiallyOrCompletelyInvisibleChild$5a57ce53()Landroid/view/View;
    .locals 2

    .line 1835
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findLastReferenceChild(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)Landroid/view/View;
    .locals 7

    .line 1779
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p2}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v6

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/widget/LinearLayoutManager;->findReferenceChild(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private fixLayoutEndGap(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Z)I
    .locals 1

    .line 908
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bz()I

    move-result v0

    sub-int/2addr v0, p1

    .line 909
    if-lez v0, :cond_1

    .line 911
    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I

    move-result p2

    neg-int p2, p2

    .line 916
    add-int/2addr p1, p2

    .line 917
    if-eqz p4, :cond_0

    .line 919
    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {p3}, Landroid/support/v7/widget/M;->bz()I

    move-result p3

    sub-int/2addr p3, p1

    .line 920
    if-lez p3, :cond_0

    .line 921
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/M;->U(I)V

    .line 922
    add-int/2addr p3, p2

    return p3

    .line 925
    :cond_0
    return p2

    .line 913
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private fixLayoutStartGap(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Z)I
    .locals 1

    .line 933
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->by()I

    move-result v0

    sub-int v0, p1, v0

    .line 934
    if-lez v0, :cond_1

    .line 937
    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I

    move-result p2

    neg-int p2, p2

    .line 941
    add-int/2addr p1, p2

    .line 942
    if-eqz p4, :cond_0

    .line 944
    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {p3}, Landroid/support/v7/widget/M;->by()I

    move-result p3

    sub-int/2addr p1, p3

    .line 945
    if-lez p1, :cond_0

    .line 946
    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    neg-int p4, p1

    invoke-virtual {p3, p4}, Landroid/support/v7/widget/M;->U(I)V

    .line 947
    sub-int/2addr p2, p1

    return p2

    .line 950
    :cond_0
    return p2

    .line 939
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 1

    .line 1701
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    .line 1691
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private recycleByLayoutState(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/H;)V
    .locals 5

    .line 1478
    iget-boolean v0, p2, Landroid/support/v7/widget/H;->pn:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p2, Landroid/support/v7/widget/H;->pv:Z

    if-eqz v0, :cond_0

    goto/16 :goto_8

    .line 1481
    :cond_0
    iget v0, p2, Landroid/support/v7/widget/H;->pr:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    .line 1482
    iget p2, p2, Landroid/support/v7/widget/H;->pC:I

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-ltz p2, :cond_7

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1}, Landroid/support/v7/widget/M;->getEnd()I

    move-result v1

    sub-int/2addr v1, p2

    iget-boolean p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz p2, :cond_4

    move p2, v2

    :goto_0
    if-ge p2, v0, :cond_3

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/M;->S(Landroid/view/View;)I

    move-result v4

    if-lt v4, v1, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/M;->V(Landroid/view/View;)I

    move-result v3

    if-ge v3, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {p0, p1, v2, p2}, Landroid/support/v7/widget/LinearLayoutManager;->recycleChildren(Landroid/support/v7/widget/aq;II)V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v0, v0, -0x1

    move p2, v0

    :goto_2
    if-ltz p2, :cond_7

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/M;->S(Landroid/view/View;)I

    move-result v3

    if-lt v3, v1, :cond_6

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/M;->V(Landroid/view/View;)I

    move-result v2

    if-ge v2, v1, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->recycleChildren(Landroid/support/v7/widget/aq;II)V

    :cond_7
    return-void

    .line 1484
    :cond_8
    iget p2, p2, Landroid/support/v7/widget/H;->pC:I

    if-ltz p2, :cond_f

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_c

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4
    if-ltz v1, :cond_b

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/M;->T(Landroid/view/View;)I

    move-result v3

    if-gt v3, p2, :cond_a

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/M;->U(Landroid/view/View;)I

    move-result v2

    if-le v2, p2, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_a
    :goto_5
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->recycleChildren(Landroid/support/v7/widget/aq;II)V

    :cond_b
    return-void

    :cond_c
    move v1, v2

    :goto_6
    if-ge v1, v0, :cond_f

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/M;->T(Landroid/view/View;)I

    move-result v4

    if-gt v4, p2, :cond_e

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/M;->U(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_d

    goto :goto_7

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_e
    :goto_7
    invoke-direct {p0, p1, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->recycleChildren(Landroid/support/v7/widget/aq;II)V

    return-void

    .line 1486
    :cond_f
    return-void

    .line 1479
    :cond_10
    :goto_8
    return-void
.end method

.method private recycleChildren(Landroid/support/v7/widget/aq;II)V
    .locals 0

    .line 1361
    if-ne p2, p3, :cond_0

    .line 1362
    return-void

    .line 1367
    :cond_0
    if-le p3, p2, :cond_2

    .line 1368
    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_1

    .line 1369
    invoke-virtual {p0, p3, p1}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/aq;)V

    .line 1368
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    return-void

    .line 1372
    :cond_2
    :goto_1
    if-le p2, p3, :cond_3

    .line 1373
    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/aq;)V

    .line 1372
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 1376
    :cond_3
    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    .line 356
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 357
    :cond_2
    :goto_0
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 359
    :goto_1
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 361
    return-void
.end method

.method private updateLayoutState(IIZLandroid/support/v7/widget/ax;)V
    .locals 4

    .line 1176
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->resolveIsInfinite()Z

    move-result v1

    iput-boolean v1, v0, Landroid/support/v7/widget/H;->pv:Z

    .line 1177
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->getExtraLayoutSpace(Landroid/support/v7/widget/ax;)I

    move-result p4

    iput p4, v0, Landroid/support/v7/widget/H;->pD:I

    .line 1178
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput p1, p4, Landroid/support/v7/widget/H;->pr:I

    .line 1180
    const/4 p4, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1181
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v1, p1, Landroid/support/v7/widget/H;->pD:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v2}, Landroid/support/v7/widget/M;->getEndPadding()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/support/v7/widget/H;->pD:I

    .line 1183
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object p1

    .line 1185
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    iput p4, v1, Landroid/support/v7/widget/H;->pq:I

    .line 1187
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v1, v1, Landroid/support/v7/widget/H;->pq:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/support/v7/widget/H;->pp:I

    .line 1188
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/M;->T(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroid/support/v7/widget/H;->mOffset:I

    .line 1190
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {p4, p1}, Landroid/support/v7/widget/M;->T(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 1191
    invoke-virtual {p4}, Landroid/support/v7/widget/M;->bz()I

    move-result p4

    sub-int/2addr p1, p4

    .line 1193
    goto :goto_1

    .line 1194
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object p1

    .line 1195
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v2, v1, Landroid/support/v7/widget/H;->pD:I

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v3}, Landroid/support/v7/widget/M;->by()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/support/v7/widget/H;->pD:I

    .line 1196
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_2

    move p4, v0

    nop

    :cond_2
    iput p4, v1, Landroid/support/v7/widget/H;->pq:I

    .line 1198
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v1, v1, Landroid/support/v7/widget/H;->pq:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/support/v7/widget/H;->pp:I

    .line 1199
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/M;->S(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroid/support/v7/widget/H;->mOffset:I

    .line 1200
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {p4, p1}, Landroid/support/v7/widget/M;->S(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 1201
    invoke-virtual {p4}, Landroid/support/v7/widget/M;->by()I

    move-result p4

    add-int/2addr p1, p4

    .line 1203
    :goto_1
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput p2, p4, Landroid/support/v7/widget/H;->po:I

    .line 1204
    if-eqz p3, :cond_3

    .line 1205
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget p3, p2, Landroid/support/v7/widget/H;->po:I

    sub-int/2addr p3, p1

    iput p3, p2, Landroid/support/v7/widget/H;->po:I

    .line 1207
    :cond_3
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput p1, p2, Landroid/support/v7/widget/H;->pC:I

    .line 1208
    return-void
.end method

.method private updateLayoutStateToFillEnd(II)V
    .locals 3

    .line 958
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1}, Landroid/support/v7/widget/M;->bz()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/support/v7/widget/H;->po:I

    .line 959
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, v0, Landroid/support/v7/widget/H;->pq:I

    .line 961
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput p1, v0, Landroid/support/v7/widget/H;->pp:I

    .line 962
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput v2, p1, Landroid/support/v7/widget/H;->pr:I

    .line 963
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput p2, p1, Landroid/support/v7/widget/H;->mOffset:I

    .line 964
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    const/high16 p2, -0x80000000

    iput p2, p1, Landroid/support/v7/widget/H;->pC:I

    .line 965
    return-void
.end method

.method private updateLayoutStateToFillEnd(Landroid/support/v7/widget/F;)V
    .locals 1

    .line 954
    iget v0, p1, Landroid/support/v7/widget/F;->mPosition:I

    iget p1, p1, Landroid/support/v7/widget/F;->pw:I

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 955
    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .locals 2

    .line 972
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1}, Landroid/support/v7/widget/M;->by()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Landroid/support/v7/widget/H;->po:I

    .line 973
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput p1, v0, Landroid/support/v7/widget/H;->pp:I

    .line 974
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p1, Landroid/support/v7/widget/H;->pq:I

    .line 976
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput v1, p1, Landroid/support/v7/widget/H;->pr:I

    .line 977
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput p2, p1, Landroid/support/v7/widget/H;->mOffset:I

    .line 978
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    const/high16 p2, -0x80000000

    iput p2, p1, Landroid/support/v7/widget/H;->pC:I

    .line 980
    return-void
.end method

.method private updateLayoutStateToFillStart(Landroid/support/v7/widget/F;)V
    .locals 1

    .line 968
    iget v0, p1, Landroid/support/v7/widget/F;->mPosition:I

    iget p1, p1, Landroid/support/v7/widget/F;->pw:I

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 969
    return-void
.end method


# virtual methods
.method public final assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    .line 1349
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1350
    invoke-super {p0, p1}, Landroid/support/v7/widget/af;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1352
    :cond_0
    return-void
.end method

.method public final canScrollHorizontally()Z
    .locals 1

    .line 289
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final canScrollVertically()Z
    .locals 2

    .line 297
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/ax;Landroid/support/v7/widget/ai;)V
    .locals 1

    .line 1308
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 1309
    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    .line 1314
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1315
    const/4 p2, 0x1

    if-lez p1, :cond_2

    .line 1316
    move v0, p2

    goto :goto_1

    .line 1315
    :cond_2
    const/4 v0, -0x1

    .line 1316
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 1317
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutState(IIZLandroid/support/v7/widget/ax;)V

    .line 1318
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {p0, p3, p1, p4}, Landroid/support/v7/widget/LinearLayoutManager;->collectPrefetchPositionsForLayoutState(Landroid/support/v7/widget/ax;Landroid/support/v7/widget/H;Landroid/support/v7/widget/ai;)V

    .line 1319
    return-void

    .line 1311
    :cond_3
    :goto_2
    return-void
.end method

.method public final collectInitialPrefetchPositions(ILandroid/support/v7/widget/ai;)V
    .locals 5

    .line 1228
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->bw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->pJ:Z

    .line 1231
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->pH:I

    goto :goto_0

    .line 1233
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1234
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 1235
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v3, v1, :cond_2

    .line 1236
    if-eqz v0, :cond_1

    add-int/lit8 v3, p1, -0x1

    goto :goto_0

    .line 1242
    :cond_1
    move v3, v2

    goto :goto_0

    .line 1238
    :cond_2
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 1242
    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    .line 1245
    :cond_3
    const/4 v1, 0x1

    .line 1246
    :goto_1
    move v0, v2

    :goto_2
    iget v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    if-ge v0, v4, :cond_4

    .line 1247
    if-ltz v3, :cond_4

    if-ge v3, p1, :cond_4

    .line 1248
    invoke-interface {p2, v3, v2}, Landroid/support/v7/widget/ai;->q(II)V

    .line 1252
    add-int/2addr v3, v1

    .line 1246
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1254
    :cond_4
    return-void
.end method

.method collectPrefetchPositionsForLayoutState(Landroid/support/v7/widget/ax;Landroid/support/v7/widget/H;Landroid/support/v7/widget/ai;)V
    .locals 1

    .line 1217
    iget v0, p2, Landroid/support/v7/widget/H;->pp:I

    .line 1218
    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result p1

    if-ge v0, p1, :cond_0

    .line 1219
    const/4 p1, 0x0

    iget p2, p2, Landroid/support/v7/widget/H;->pC:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {p3, v0, p1}, Landroid/support/v7/widget/ai;->q(II)V

    .line 1221
    :cond_0
    return-void
.end method

.method public final computeHorizontalScrollExtent(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 1090
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollExtent(Landroid/support/v7/widget/ax;)I

    move-result p1

    return p1
.end method

.method public final computeHorizontalScrollOffset(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 1080
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollOffset(Landroid/support/v7/widget/ax;)I

    move-result p1

    return p1
.end method

.method public final computeHorizontalScrollRange(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 1100
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollRange(Landroid/support/v7/widget/ax;)I

    move-result p1

    return p1
.end method

.method public final computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3

    .line 456
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 457
    const/4 p1, 0x0

    return-object p1

    .line 459
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 460
    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    move v0, v2

    nop

    :cond_1
    iget-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v0, p1, :cond_2

    const/4 v2, -0x1

    nop

    .line 461
    :cond_2
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 462
    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    .line 464
    :cond_3
    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public final computeVerticalScrollExtent(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 1095
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollExtent(Landroid/support/v7/widget/ax;)I

    move-result p1

    return p1
.end method

.method public final computeVerticalScrollOffset(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 1085
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollOffset(Landroid/support/v7/widget/ax;)I

    move-result p1

    return p1
.end method

.method public final computeVerticalScrollRange(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 1105
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollRange(Landroid/support/v7/widget/ax;)I

    move-result p1

    return p1
.end method

.method final convertFocusDirectionToLayoutDirection(I)I
    .locals 4

    .line 1646
    const/16 v0, 0x11

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    if-eq p1, v0, :cond_a

    const/16 v0, 0x21

    const/4 v3, 0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x42

    if-eq p1, v0, :cond_6

    const/16 v0, 0x82

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    .line 1679
    return v2

    .line 1656
    :pswitch_0
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v3, :cond_0

    .line 1657
    return v3

    .line 1658
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1659
    return v1

    .line 1661
    :cond_1
    return v3

    .line 1648
    :pswitch_1
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v3, :cond_2

    .line 1649
    return v1

    .line 1650
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1651
    return v3

    .line 1653
    :cond_3
    return v1

    .line 1667
    :cond_4
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v3, :cond_5

    return v3

    :cond_5
    return v2

    .line 1673
    :cond_6
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez p1, :cond_7

    return v3

    :cond_7
    return v2

    .line 1664
    :cond_8
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v3, :cond_9

    return v1

    :cond_9
    return v2

    .line 1670
    :cond_a
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez p1, :cond_b

    return v1

    :cond_b
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final ensureLayoutState()V
    .locals 1

    .line 987
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    if-nez v0, :cond_0

    .line 988
    new-instance v0, Landroid/support/v7/widget/H;

    invoke-direct {v0}, Landroid/support/v7/widget/H;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    .line 990
    :cond_0
    return-void
.end method

.method final fill(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/H;Landroid/support/v7/widget/ax;Z)I
    .locals 7

    .line 1502
    iget v0, p2, Landroid/support/v7/widget/H;->po:I

    .line 1503
    iget v1, p2, Landroid/support/v7/widget/H;->pC:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 1505
    iget v1, p2, Landroid/support/v7/widget/H;->po:I

    if-gez v1, :cond_0

    .line 1506
    iget v1, p2, Landroid/support/v7/widget/H;->pC:I

    iget v3, p2, Landroid/support/v7/widget/H;->po:I

    add-int/2addr v1, v3

    iput v1, p2, Landroid/support/v7/widget/H;->pC:I

    .line 1508
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->recycleByLayoutState(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/H;)V

    .line 1510
    :cond_1
    iget v1, p2, Landroid/support/v7/widget/H;->po:I

    iget v3, p2, Landroid/support/v7/widget/H;->pD:I

    add-int/2addr v1, v3

    .line 1511
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutChunkResult:Landroid/support/v7/widget/G;

    .line 1512
    :cond_2
    iget-boolean v4, p2, Landroid/support/v7/widget/H;->pv:Z

    if-nez v4, :cond_3

    if-lez v1, :cond_8

    :cond_3
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/H;->a(Landroid/support/v7/widget/ax;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1513
    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v7/widget/G;->pz:I

    iput-boolean v4, v3, Landroid/support/v7/widget/G;->mFinished:Z

    iput-boolean v4, v3, Landroid/support/v7/widget/G;->pA:Z

    iput-boolean v4, v3, Landroid/support/v7/widget/G;->pB:Z

    .line 1517
    invoke-virtual {p0, p1, p3, p2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->layoutChunk(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Landroid/support/v7/widget/H;Landroid/support/v7/widget/G;)V

    .line 1521
    iget-boolean v4, v3, Landroid/support/v7/widget/G;->mFinished:Z

    if-nez v4, :cond_8

    .line 1522
    iget v4, p2, Landroid/support/v7/widget/H;->mOffset:I

    iget v5, v3, Landroid/support/v7/widget/G;->pz:I

    iget v6, p2, Landroid/support/v7/widget/H;->pr:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p2, Landroid/support/v7/widget/H;->mOffset:I

    .line 1531
    iget-boolean v4, v3, Landroid/support/v7/widget/G;->pA:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget-object v4, v4, Landroid/support/v7/widget/H;->pG:Ljava/util/List;

    if-nez v4, :cond_4

    .line 1532
    iget-boolean v4, p3, Landroid/support/v7/widget/ax;->qG:Z

    if-nez v4, :cond_5

    .line 1533
    :cond_4
    iget v4, p2, Landroid/support/v7/widget/H;->po:I

    iget v5, v3, Landroid/support/v7/widget/G;->pz:I

    sub-int/2addr v4, v5

    iput v4, p2, Landroid/support/v7/widget/H;->po:I

    .line 1535
    iget v4, v3, Landroid/support/v7/widget/G;->pz:I

    sub-int/2addr v1, v4

    .line 1538
    :cond_5
    iget v4, p2, Landroid/support/v7/widget/H;->pC:I

    if-eq v4, v2, :cond_7

    .line 1539
    iget v4, p2, Landroid/support/v7/widget/H;->pC:I

    iget v5, v3, Landroid/support/v7/widget/G;->pz:I

    add-int/2addr v4, v5

    iput v4, p2, Landroid/support/v7/widget/H;->pC:I

    .line 1540
    iget v4, p2, Landroid/support/v7/widget/H;->po:I

    if-gez v4, :cond_6

    .line 1541
    iget v4, p2, Landroid/support/v7/widget/H;->pC:I

    iget v5, p2, Landroid/support/v7/widget/H;->po:I

    add-int/2addr v4, v5

    iput v4, p2, Landroid/support/v7/widget/H;->pC:I

    .line 1543
    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->recycleByLayoutState(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/H;)V

    .line 1545
    :cond_7
    if-eqz p4, :cond_2

    iget-boolean v4, v3, Landroid/support/v7/widget/G;->pB:Z

    if-eqz v4, :cond_2

    .line 1546
    :cond_8
    iget p1, p2, Landroid/support/v7/widget/H;->po:I

    sub-int/2addr v0, p1

    return v0
.end method

.method final findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;
    .locals 3

    .line 1946
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1947
    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1948
    :goto_0
    if-nez v0, :cond_2

    .line 1949
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1951
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/M;->S(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 1954
    invoke-virtual {v1}, Landroid/support/v7/widget/M;->by()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1955
    const/16 v0, 0x4104

    .line 1957
    const/16 v1, 0x4004

    goto :goto_1

    .line 1960
    :cond_3
    const/16 v0, 0x1041

    .line 1962
    const/16 v1, 0x1001

    .line 1965
    :goto_1
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mHorizontalBoundCheck:Landroid/support/v7/widget/aK;

    .line 1966
    invoke-virtual {v2, p1, p2, v0, v1}, Landroid/support/v7/widget/aK;->c(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mVerticalBoundCheck:Landroid/support/v7/widget/aK;

    .line 1968
    invoke-virtual {v2, p1, p2, v0, v1}, Landroid/support/v7/widget/aK;->c(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method final findOneVisibleChild(IIZZ)Landroid/view/View;
    .locals 1

    .line 1924
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1925
    nop

    .line 1927
    const/16 v0, 0x140

    if-eqz p3, :cond_0

    .line 1928
    const/16 p3, 0x6003

    goto :goto_0

    .line 1931
    :cond_0
    nop

    .line 1934
    move p3, v0

    :goto_0
    if-eqz p4, :cond_1

    .line 1935
    goto :goto_1

    .line 1938
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez p4, :cond_2

    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mHorizontalBoundCheck:Landroid/support/v7/widget/aK;

    .line 1939
    invoke-virtual {p4, p1, p2, p3, v0}, Landroid/support/v7/widget/aK;->c(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mVerticalBoundCheck:Landroid/support/v7/widget/aK;

    .line 1941
    invoke-virtual {p4, p1, p2, p3, v0}, Landroid/support/v7/widget/aK;->c(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method findReferenceChild(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;III)Landroid/view/View;
    .locals 5

    .line 1785
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1786
    nop

    .line 1787
    nop

    .line 1788
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {p1}, Landroid/support/v7/widget/M;->by()I

    move-result p1

    .line 1789
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {p2}, Landroid/support/v7/widget/M;->bz()I

    move-result p2

    .line 1790
    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 1791
    :goto_0
    const/4 v1, 0x0

    move-object v2, v1

    :goto_1
    if-eq p3, p4, :cond_5

    .line 1792
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1793
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    .line 1794
    if-ltz v4, :cond_4

    if-ge v4, p5, :cond_4

    .line 1795
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/aj;

    iget-object v4, v4, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    invoke-virtual {v4}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1796
    if-nez v2, :cond_4

    .line 1797
    nop

    .line 1791
    move-object v2, v3

    goto :goto_3

    .line 1799
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/M;->S(Landroid/view/View;)I

    move-result v4

    if-ge v4, p2, :cond_3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 1800
    invoke-virtual {v4, v3}, Landroid/support/v7/widget/M;->T(Landroid/view/View;)I

    move-result v4

    if-ge v4, p1, :cond_2

    goto :goto_2

    .line 1805
    :cond_2
    return-object v3

    .line 1801
    :cond_3
    :goto_2
    if-nez v1, :cond_4

    .line 1802
    nop

    .line 1791
    move-object v1, v3

    :cond_4
    :goto_3
    add-int/2addr p3, v0

    goto :goto_1

    .line 1809
    :cond_5
    if-eqz v1, :cond_6

    return-object v1

    :cond_6
    return-object v2
.end method

.method public final findViewByPosition(I)Landroid/view/View;
    .locals 2

    .line 401
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    .line 402
    if-nez v0, :cond_0

    .line 403
    const/4 p1, 0x0

    return-object p1

    .line 405
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 406
    sub-int v1, p1, v1

    .line 407
    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    .line 408
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 409
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 410
    return-object v0

    .line 414
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/af;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/aj;
    .locals 2

    .line 194
    new-instance v0, Landroid/support/v7/widget/aj;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/aj;-><init>(II)V

    return-object v0
.end method

.method protected final getExtraLayoutSpace(Landroid/support/v7/widget/ax;)I
    .locals 2

    .line 438
    iget p1, p1, Landroid/support/v7/widget/ax;->qt:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 439
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {p1}, Landroid/support/v7/widget/M;->bA()I

    move-result p1

    return p1

    .line 441
    :cond_1
    return v0
.end method

.method public final isAutoMeasureEnabled()Z
    .locals 1

    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method protected final isLayoutRTL()Z
    .locals 2

    .line 983
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

.method layoutChunk(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Landroid/support/v7/widget/H;Landroid/support/v7/widget/G;)V
    .locals 9

    .line 1557
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/H;->a(Landroid/support/v7/widget/aq;)Landroid/view/View;

    move-result-object p1

    .line 1558
    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 1564
    iput-boolean p2, p4, Landroid/support/v7/widget/G;->mFinished:Z

    .line 1565
    return-void

    .line 1567
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/aj;

    .line 1568
    iget-object v0, p3, Landroid/support/v7/widget/H;->pG:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 1569
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, p3, Landroid/support/v7/widget/H;->pr:I

    if-ne v3, v1, :cond_1

    move v3, p2

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-ne v0, v3, :cond_2

    .line 1571
    invoke-super {p0, p1, v1, v2}, Landroid/support/v7/widget/af;->addViewInt(Landroid/view/View;IZ)V

    goto :goto_2

    .line 1573
    :cond_2
    invoke-super {p0, p1, v2, v2}, Landroid/support/v7/widget/af;->addViewInt(Landroid/view/View;IZ)V

    goto :goto_2

    .line 1576
    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, p3, Landroid/support/v7/widget/H;->pr:I

    if-ne v3, v1, :cond_4

    move v3, p2

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    if-ne v0, v3, :cond_5

    .line 1578
    invoke-super {p0, p1, v1, p2}, Landroid/support/v7/widget/af;->addViewInt(Landroid/view/View;IZ)V

    goto :goto_2

    .line 1580
    :cond_5
    invoke-super {p0, p1, v2, p2}, Landroid/support/v7/widget/af;->addViewInt(Landroid/view/View;IZ)V

    .line 1583
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aj;

    iget-object v3, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v3

    add-int/2addr v2, v5

    iget v3, p0, Landroid/support/v7/widget/af;->mWidth:I

    iget v5, p0, Landroid/support/v7/widget/af;->mWidthMode:I

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v0, Landroid/support/v7/widget/aj;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v0, Landroid/support/v7/widget/aj;->rightMargin:I

    add-int/2addr v7, v8

    add-int/2addr v7, v4

    iget v4, v0, Landroid/support/v7/widget/aj;->width:I

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->canScrollHorizontally()Z

    move-result v8

    invoke-static {v3, v5, v7, v4, v8}, Landroid/support/v7/widget/af;->getChildMeasureSpec(IIIIZ)I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/af;->mHeight:I

    iget v5, p0, Landroid/support/v7/widget/af;->mHeightMode:I

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v0, Landroid/support/v7/widget/aj;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v0, Landroid/support/v7/widget/aj;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    iget v2, v0, Landroid/support/v7/widget/aj;->height:I

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->canScrollVertically()Z

    move-result v8

    invoke-static {v4, v5, v7, v2, v8}, Landroid/support/v7/widget/af;->getChildMeasureSpec(IIIIZ)I

    move-result v2

    invoke-virtual {p0, p1, v3, v2, v0}, Landroid/support/v7/widget/af;->shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/aj;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, v3, v2}, Landroid/view/View;->measure(II)V

    .line 1584
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/M;->W(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroid/support/v7/widget/G;->pz:I

    .line 1586
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne v0, p2, :cond_9

    .line 1587
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1588
    iget v0, p0, Landroid/support/v7/widget/af;->mWidth:I

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1589
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/M;->X(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    goto :goto_3

    .line 1591
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getPaddingLeft()I

    move-result v2

    .line 1592
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/M;->X(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    .line 1594
    :goto_3
    iget v3, p3, Landroid/support/v7/widget/H;->pr:I

    if-ne v3, v1, :cond_8

    .line 1595
    iget v1, p3, Landroid/support/v7/widget/H;->mOffset:I

    .line 1596
    iget p3, p3, Landroid/support/v7/widget/H;->mOffset:I

    iget v3, p4, Landroid/support/v7/widget/G;->pz:I

    sub-int/2addr p3, v3

    .line 1615
    move v3, p3

    move v4, v0

    move v5, v1

    goto :goto_4

    .line 1598
    :cond_8
    iget v1, p3, Landroid/support/v7/widget/H;->mOffset:I

    .line 1599
    iget p3, p3, Landroid/support/v7/widget/H;->mOffset:I

    iget v3, p4, Landroid/support/v7/widget/G;->pz:I

    add-int/2addr p3, v3

    .line 1615
    move v5, p3

    move v4, v0

    move v3, v1

    goto :goto_4

    .line 1602
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getPaddingTop()I

    move-result v0

    .line 1603
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/M;->X(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    .line 1605
    iget v3, p3, Landroid/support/v7/widget/H;->pr:I

    if-ne v3, v1, :cond_a

    .line 1606
    iget v1, p3, Landroid/support/v7/widget/H;->mOffset:I

    .line 1607
    iget p3, p3, Landroid/support/v7/widget/H;->mOffset:I

    iget v3, p4, Landroid/support/v7/widget/G;->pz:I

    sub-int/2addr p3, v3

    .line 1615
    move v3, v0

    move v4, v1

    move v5, v2

    move v2, p3

    goto :goto_4

    .line 1609
    :cond_a
    iget v1, p3, Landroid/support/v7/widget/H;->mOffset:I

    .line 1610
    iget p3, p3, Landroid/support/v7/widget/H;->mOffset:I

    iget v3, p4, Landroid/support/v7/widget/G;->pz:I

    add-int/2addr p3, v3

    .line 1615
    move v4, p3

    move v3, v0

    move v5, v2

    move v2, v1

    :goto_4
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1622
    iget-object p3, v6, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    invoke-virtual {p3}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result p3

    if-nez p3, :cond_b

    iget-object p3, v6, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    invoke-virtual {p3}, Landroid/support/v7/widget/aA;->isUpdated()Z

    move-result p3

    if-eqz p3, :cond_c

    .line 1623
    :cond_b
    iput-boolean p2, p4, Landroid/support/v7/widget/G;->pA:Z

    .line 1625
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p1

    iput-boolean p1, p4, Landroid/support/v7/widget/G;->pB:Z

    .line 1626
    return-void
.end method

.method onAnchorReady(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Landroid/support/v7/widget/F;I)V
    .locals 0

    .line 690
    return-void
.end method

.method public final onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/aq;)V
    .locals 0

    .line 228
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/af;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/aq;)V

    .line 229
    iget-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/aq;)V

    .line 231
    invoke-virtual {p2}, Landroid/support/v7/widget/aq;->clear()V

    .line 233
    :cond_0
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)Landroid/view/View;
    .locals 3

    .line 1975
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1976
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1977
    return-object v0

    .line 1980
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result p1

    .line 1981
    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_1

    .line 1982
    return-object v0

    .line 1984
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1985
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1986
    const v1, 0x3eaaaaab

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v2}, Landroid/support/v7/widget/M;->bA()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 1987
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, p4}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutState(IIZLandroid/support/v7/widget/ax;)V

    .line 1988
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput p2, v1, Landroid/support/v7/widget/H;->pC:I

    .line 1989
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput-boolean v2, p2, Landroid/support/v7/widget/H;->pn:Z

    .line 1990
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    const/4 v1, 0x1

    invoke-virtual {p0, p3, p2, p4, v1}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/H;Landroid/support/v7/widget/ax;Z)I

    .line 1997
    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    .line 1998
    iget-boolean p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz p3, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastPartiallyOrCompletelyInvisibleChild$5a57ce53()Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstPartiallyOrCompletelyInvisibleChild$5a57ce53()Landroid/view/View;

    move-result-object p3

    goto :goto_0

    .line 2000
    :cond_3
    iget-boolean p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz p3, :cond_4

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstPartiallyOrCompletelyInvisibleChild$5a57ce53()Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastPartiallyOrCompletelyInvisibleChild$5a57ce53()Landroid/view/View;

    move-result-object p3

    .line 2005
    :goto_0
    if-ne p1, p2, :cond_5

    .line 2006
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 2008
    :cond_5
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object p1

    .line 2010
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 2011
    if-nez p3, :cond_6

    .line 2012
    return-object v0

    .line 2014
    :cond_6
    return-object p1

    .line 2016
    :cond_7
    return-object p3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 237
    invoke-super {p0, p1}, Landroid/support/v7/widget/af;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 238
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 239
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    const/4 v3, -0x1

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 240
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v3, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 242
    :cond_2
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 483
    move-object/from16 v8, p2

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v9, -0x1

    if-nez v0, :cond_0

    iget v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-eq v0, v9, :cond_1

    .line 484
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 485
    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/aq;)V

    .line 486
    return-void

    .line 489
    :cond_1
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_2

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->bw()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 490
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->pH:I

    iput v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 493
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 494
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    const/4 v10, 0x0

    iput-boolean v10, v0, Landroid/support/v7/widget/H;->pn:Z

    .line 496
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 498
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 499
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    iget-boolean v1, v1, Landroid/support/v7/widget/F;->py:Z

    const/high16 v11, -0x80000000

    const/4 v12, 0x1

    if-eqz v1, :cond_5

    iget v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v1, v9, :cond_5

    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v1, :cond_3

    goto :goto_0

    .line 506
    :cond_3
    if-eqz v0, :cond_21

    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/M;->S(Landroid/view/View;)I

    move-result v1

    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 507
    invoke-virtual {v2}, Landroid/support/v7/widget/M;->bz()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 508
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/M;->T(Landroid/view/View;)I

    move-result v1

    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 509
    invoke-virtual {v2}, Landroid/support/v7/widget/M;->by()I

    move-result v2

    if-gt v1, v2, :cond_21

    .line 521
    :cond_4
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/F;->n(Landroid/view/View;I)V

    goto/16 :goto_13

    .line 501
    :cond_5
    :goto_0
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    invoke-virtual {v0}, Landroid/support/v7/widget/F;->reset()V

    .line 502
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    iget-boolean v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/support/v7/widget/F;->px:Z

    .line 504
    iget-object v13, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    iget-boolean v0, v8, Landroid/support/v7/widget/ax;->qG:Z

    if-nez v0, :cond_15

    iget v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v0, v9, :cond_6

    goto/16 :goto_8

    :cond_6
    iget v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ltz v0, :cond_14

    iget v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_7

    goto/16 :goto_7

    :cond_7
    iget v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    iput v0, v13, Landroid/support/v7/widget/F;->mPosition:I

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_9

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->bw()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->pJ:Z

    iput-boolean v0, v13, Landroid/support/v7/widget/F;->px:Z

    iget-boolean v0, v13, Landroid/support/v7/widget/F;->px:Z

    if-eqz v0, :cond_8

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bz()I

    move-result v0

    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->pI:I

    sub-int/2addr v0, v1

    :goto_1
    iput v0, v13, Landroid/support/v7/widget/F;->pw:I

    goto :goto_2

    :cond_8
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->by()I

    move-result v0

    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->pI:I

    add-int/2addr v0, v1

    goto :goto_1

    :goto_2
    move v0, v12

    goto/16 :goto_9

    :cond_9
    iget v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v0, v11, :cond_12

    iget v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/M;->W(Landroid/view/View;)I

    move-result v1

    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v2}, Landroid/support/v7/widget/M;->bA()I

    move-result v2

    if-le v1, v2, :cond_a

    goto/16 :goto_6

    :cond_a
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/M;->S(Landroid/view/View;)I

    move-result v1

    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v2}, Landroid/support/v7/widget/M;->by()I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_b

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->by()I

    move-result v0

    iput v0, v13, Landroid/support/v7/widget/F;->pw:I

    iput-boolean v10, v13, Landroid/support/v7/widget/F;->px:Z

    goto :goto_2

    :cond_b
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1}, Landroid/support/v7/widget/M;->bz()I

    move-result v1

    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/M;->T(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_c

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bz()I

    move-result v0

    iput v0, v13, Landroid/support/v7/widget/F;->pw:I

    iput-boolean v12, v13, Landroid/support/v7/widget/F;->px:Z

    goto :goto_2

    :cond_c
    iget-boolean v1, v13, Landroid/support/v7/widget/F;->px:Z

    if-eqz v1, :cond_d

    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/M;->T(Landroid/view/View;)I

    move-result v0

    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1}, Landroid/support/v7/widget/M;->bx()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3

    :cond_d
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/M;->S(Landroid/view/View;)I

    move-result v0

    :goto_3
    goto :goto_1

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_11

    invoke-virtual {v6, v10}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ge v1, v0, :cond_f

    move v0, v12

    goto :goto_4

    :cond_f
    move v0, v10

    :goto_4
    iget-boolean v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-ne v0, v1, :cond_10

    move v0, v12

    goto :goto_5

    :cond_10
    move v0, v10

    :goto_5
    iput-boolean v0, v13, Landroid/support/v7/widget/F;->px:Z

    :cond_11
    :goto_6
    invoke-virtual {v13}, Landroid/support/v7/widget/F;->bv()V

    goto/16 :goto_2

    :cond_12
    iget-boolean v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v0, v13, Landroid/support/v7/widget/F;->px:Z

    iget-boolean v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_13

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bz()I

    move-result v0

    iget v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v0, v1

    goto/16 :goto_1

    :cond_13
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->by()I

    move-result v0

    iget v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v0, v1

    goto/16 :goto_1

    :cond_14
    :goto_7
    iput v9, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    iput v11, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    nop

    :cond_15
    :goto_8
    move v0, v10

    :goto_9
    if-nez v0, :cond_20

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aj;

    iget-object v2, v1, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    invoke-virtual {v2}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, v1, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    invoke-virtual {v2}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result v2

    if-ltz v2, :cond_16

    iget-object v1, v1, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    invoke-virtual {v1}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_16

    move v1, v12

    goto :goto_a

    :cond_16
    move v1, v10

    :goto_a
    if-eqz v1, :cond_17

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v13, v0, v1}, Landroid/support/v7/widget/F;->n(Landroid/view/View;I)V

    :goto_b
    move v0, v12

    goto/16 :goto_11

    :cond_17
    iget-boolean v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, v1, :cond_1e

    iget-boolean v0, v13, Landroid/support/v7/widget/F;->px:Z

    if-eqz v0, :cond_18

    iget-boolean v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-nez v0, :cond_19

    :goto_c
    invoke-direct/range {p0 .. p2}, Landroid/support/v7/widget/LinearLayoutManager;->findLastReferenceChild(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)Landroid/view/View;

    move-result-object v0

    goto :goto_d

    :cond_18
    iget-boolean v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_19

    goto :goto_c

    :cond_19
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v5

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->findReferenceChild(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;III)Landroid/view/View;

    move-result-object v0

    :goto_d
    if-eqz v0, :cond_1e

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v13, v0, v1}, Landroid/support/v7/widget/F;->o(Landroid/view/View;I)V

    iget-boolean v1, v8, Landroid/support/v7/widget/ax;->qG:Z

    if-nez v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/M;->S(Landroid/view/View;)I

    move-result v1

    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v2}, Landroid/support/v7/widget/M;->bz()I

    move-result v2

    if-ge v1, v2, :cond_1b

    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/M;->T(Landroid/view/View;)I

    move-result v0

    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1}, Landroid/support/v7/widget/M;->by()I

    move-result v1

    if-ge v0, v1, :cond_1a

    goto :goto_e

    :cond_1a
    move v0, v10

    goto :goto_f

    :cond_1b
    :goto_e
    move v0, v12

    :goto_f
    if-eqz v0, :cond_1d

    iget-boolean v0, v13, Landroid/support/v7/widget/F;->px:Z

    if-eqz v0, :cond_1c

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bz()I

    move-result v0

    goto :goto_10

    :cond_1c
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->by()I

    move-result v0

    :goto_10
    iput v0, v13, Landroid/support/v7/widget/F;->pw:I

    :cond_1d
    goto :goto_b

    :cond_1e
    move v0, v10

    :goto_11
    if-nez v0, :cond_20

    invoke-virtual {v13}, Landroid/support/v7/widget/F;->bv()V

    iget-boolean v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz v0, :cond_1f

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v12

    goto :goto_12

    :cond_1f
    move v0, v10

    :goto_12
    iput v0, v13, Landroid/support/v7/widget/F;->mPosition:I

    .line 505
    :cond_20
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    iput-boolean v12, v0, Landroid/support/v7/widget/F;->py:Z

    .line 531
    :cond_21
    :goto_13
    invoke-virtual {v6, v8}, Landroid/support/v7/widget/LinearLayoutManager;->getExtraLayoutSpace(Landroid/support/v7/widget/ax;)I

    move-result v0

    .line 534
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v1, v1, Landroid/support/v7/widget/H;->pF:I

    if-ltz v1, :cond_22

    .line 535
    nop

    .line 536
    nop

    .line 541
    move v1, v0

    move v0, v10

    goto :goto_14

    .line 538
    :cond_22
    nop

    .line 539
    nop

    .line 541
    move v1, v10

    :goto_14
    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v2}, Landroid/support/v7/widget/M;->by()I

    move-result v2

    add-int/2addr v0, v2

    .line 542
    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v2}, Landroid/support/v7/widget/M;->getEndPadding()I

    move-result v2

    add-int/2addr v1, v2

    .line 543
    iget-boolean v2, v8, Landroid/support/v7/widget/ax;->qG:Z

    if-eqz v2, :cond_25

    iget v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-eq v2, v9, :cond_25

    iget v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    if-eq v2, v11, :cond_25

    .line 548
    iget v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {v6, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 549
    if-eqz v2, :cond_25

    .line 552
    iget-boolean v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_23

    .line 553
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v3}, Landroid/support/v7/widget/M;->bz()I

    move-result v3

    iget-object v4, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 554
    invoke-virtual {v4, v2}, Landroid/support/v7/widget/M;->T(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v3, v2

    .line 555
    iget v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v3, v2

    goto :goto_15

    .line 557
    :cond_23
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/M;->S(Landroid/view/View;)I

    move-result v2

    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 558
    invoke-virtual {v3}, Landroid/support/v7/widget/M;->by()I

    move-result v3

    sub-int/2addr v2, v3

    .line 559
    iget v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v3, v2

    .line 561
    :goto_15
    if-lez v3, :cond_24

    .line 562
    add-int/2addr v0, v3

    goto :goto_16

    .line 564
    :cond_24
    sub-int/2addr v1, v3

    .line 571
    :cond_25
    :goto_16
    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    iget-boolean v2, v2, Landroid/support/v7/widget/F;->px:Z

    if-eqz v2, :cond_27

    .line 572
    iget-boolean v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_26

    .line 579
    :goto_17
    move v2, v12

    goto :goto_19

    .line 572
    :cond_26
    nop

    .line 579
    :goto_18
    move v2, v9

    goto :goto_19

    .line 575
    :cond_27
    iget-boolean v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_28

    goto :goto_18

    :cond_28
    goto :goto_17

    .line 579
    :goto_19
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    invoke-virtual {v6, v7, v8, v3, v2}, Landroid/support/v7/widget/LinearLayoutManager;->onAnchorReady(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Landroid/support/v7/widget/F;I)V

    .line 580
    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/LinearLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/aq;)V

    .line 581
    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->resolveIsInfinite()Z

    move-result v3

    iput-boolean v3, v2, Landroid/support/v7/widget/H;->pv:Z

    .line 582
    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget-boolean v3, v8, Landroid/support/v7/widget/ax;->qG:Z

    iput-boolean v3, v2, Landroid/support/v7/widget/H;->pE:Z

    .line 583
    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    iget-boolean v2, v2, Landroid/support/v7/widget/F;->px:Z

    if-eqz v2, :cond_2b

    .line 585
    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    invoke-direct {v6, v2}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Landroid/support/v7/widget/F;)V

    .line 586
    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput v0, v2, Landroid/support/v7/widget/H;->pD:I

    .line 587
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {v6, v7, v0, v8, v10}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/H;Landroid/support/v7/widget/ax;Z)I

    .line 588
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v0, v0, Landroid/support/v7/widget/H;->mOffset:I

    .line 589
    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v2, v2, Landroid/support/v7/widget/H;->pp:I

    .line 590
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v3, v3, Landroid/support/v7/widget/H;->po:I

    if-lez v3, :cond_29

    .line 591
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v3, v3, Landroid/support/v7/widget/H;->po:I

    add-int/2addr v1, v3

    .line 594
    :cond_29
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    invoke-direct {v6, v3}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Landroid/support/v7/widget/F;)V

    .line 595
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput v1, v3, Landroid/support/v7/widget/H;->pD:I

    .line 596
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v3, v1, Landroid/support/v7/widget/H;->pp:I

    iget-object v4, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v4, v4, Landroid/support/v7/widget/H;->pq:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/support/v7/widget/H;->pp:I

    .line 597
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {v6, v7, v1, v8, v10}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/H;Landroid/support/v7/widget/ax;Z)I

    .line 598
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v1, v1, Landroid/support/v7/widget/H;->mOffset:I

    .line 600
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v3, v3, Landroid/support/v7/widget/H;->po:I

    if-lez v3, :cond_2a

    .line 602
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v3, v3, Landroid/support/v7/widget/H;->po:I

    .line 603
    invoke-direct {v6, v2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 604
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput v3, v0, Landroid/support/v7/widget/H;->pD:I

    .line 605
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {v6, v7, v0, v8, v10}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/H;Landroid/support/v7/widget/ax;Z)I

    .line 606
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v0, v0, Landroid/support/v7/widget/H;->mOffset:I

    .line 608
    :cond_2a
    goto :goto_1a

    .line 610
    :cond_2b
    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    invoke-direct {v6, v2}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Landroid/support/v7/widget/F;)V

    .line 611
    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput v1, v2, Landroid/support/v7/widget/H;->pD:I

    .line 612
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {v6, v7, v1, v8, v10}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/H;Landroid/support/v7/widget/ax;Z)I

    .line 613
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v1, v1, Landroid/support/v7/widget/H;->mOffset:I

    .line 614
    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v2, v2, Landroid/support/v7/widget/H;->pp:I

    .line 615
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v3, v3, Landroid/support/v7/widget/H;->po:I

    if-lez v3, :cond_2c

    .line 616
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v3, v3, Landroid/support/v7/widget/H;->po:I

    add-int/2addr v0, v3

    .line 619
    :cond_2c
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    invoke-direct {v6, v3}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Landroid/support/v7/widget/F;)V

    .line 620
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput v0, v3, Landroid/support/v7/widget/H;->pD:I

    .line 621
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v3, v0, Landroid/support/v7/widget/H;->pp:I

    iget-object v4, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v4, v4, Landroid/support/v7/widget/H;->pq:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/support/v7/widget/H;->pp:I

    .line 622
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {v6, v7, v0, v8, v10}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/H;Landroid/support/v7/widget/ax;Z)I

    .line 623
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v0, v0, Landroid/support/v7/widget/H;->mOffset:I

    .line 625
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v3, v3, Landroid/support/v7/widget/H;->po:I

    if-lez v3, :cond_2d

    .line 626
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v3, v3, Landroid/support/v7/widget/H;->po:I

    .line 628
    invoke-direct {v6, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 629
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput v3, v1, Landroid/support/v7/widget/H;->pD:I

    .line 630
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {v6, v7, v1, v8, v10}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/H;Landroid/support/v7/widget/ax;Z)I

    .line 631
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v1, v1, Landroid/support/v7/widget/H;->mOffset:I

    .line 638
    :cond_2d
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2f

    .line 642
    iget-boolean v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v2, v3

    if-eqz v2, :cond_2e

    .line 643
    invoke-direct {v6, v1, v7, v8, v12}, Landroid/support/v7/widget/LinearLayoutManager;->fixLayoutEndGap(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Z)I

    move-result v2

    .line 644
    add-int/2addr v0, v2

    .line 645
    add-int/2addr v1, v2

    .line 646
    invoke-direct {v6, v0, v7, v8, v10}, Landroid/support/v7/widget/LinearLayoutManager;->fixLayoutStartGap(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Z)I

    move-result v2

    .line 647
    add-int/2addr v0, v2

    .line 648
    add-int/2addr v1, v2

    .line 649
    goto :goto_1b

    .line 650
    :cond_2e
    invoke-direct {v6, v0, v7, v8, v12}, Landroid/support/v7/widget/LinearLayoutManager;->fixLayoutStartGap(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Z)I

    move-result v2

    .line 651
    add-int/2addr v0, v2

    .line 652
    add-int/2addr v1, v2

    .line 653
    invoke-direct {v6, v1, v7, v8, v10}, Landroid/support/v7/widget/LinearLayoutManager;->fixLayoutEndGap(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Z)I

    move-result v2

    .line 654
    add-int/2addr v0, v2

    .line 655
    add-int/2addr v1, v2

    .line 658
    :cond_2f
    :goto_1b
    iget-boolean v2, v8, Landroid/support/v7/widget/ax;->qK:Z

    if-eqz v2, :cond_38

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_38

    iget-boolean v2, v8, Landroid/support/v7/widget/ax;->qG:Z

    if-nez v2, :cond_38

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v2

    if-nez v2, :cond_30

    goto/16 :goto_20

    :cond_30
    iget-object v2, v7, Landroid/support/v7/widget/aq;->qn:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v6, v10}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    move v5, v10

    move v11, v5

    move v13, v11

    :goto_1c
    if-ge v5, v3, :cond_35

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/support/v7/widget/aA;

    invoke-virtual {v14}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v15

    if-nez v15, :cond_34

    invoke-virtual {v14}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result v15

    if-ge v15, v4, :cond_31

    move v15, v12

    goto :goto_1d

    :cond_31
    move v15, v10

    :goto_1d
    iget-boolean v12, v6, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v15, v12, :cond_32

    move v12, v9

    goto :goto_1e

    :cond_32
    const/4 v12, 0x1

    :goto_1e
    if-ne v12, v9, :cond_33

    iget-object v12, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    iget-object v14, v14, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v12, v14}, Landroid/support/v7/widget/M;->W(Landroid/view/View;)I

    move-result v12

    add-int/2addr v11, v12

    goto :goto_1f

    :cond_33
    iget-object v12, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    iget-object v14, v14, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v12, v14}, Landroid/support/v7/widget/M;->W(Landroid/view/View;)I

    move-result v12

    add-int/2addr v13, v12

    :cond_34
    :goto_1f
    add-int/lit8 v5, v5, 0x1

    const/4 v12, 0x1

    goto :goto_1c

    :cond_35
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput-object v2, v3, Landroid/support/v7/widget/H;->pG:Ljava/util/List;

    const/4 v2, 0x0

    if-lez v11, :cond_36

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    invoke-direct {v6, v3, v0}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput v11, v0, Landroid/support/v7/widget/H;->pD:I

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput v10, v0, Landroid/support/v7/widget/H;->po:I

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/H;->R(Landroid/view/View;)V

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {v6, v7, v0, v8, v10}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/H;Landroid/support/v7/widget/ax;Z)I

    :cond_36
    if-lez v13, :cond_37

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-direct {v6, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput v13, v0, Landroid/support/v7/widget/H;->pD:I

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput v10, v0, Landroid/support/v7/widget/H;->po:I

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/H;->R(Landroid/view/View;)V

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {v6, v7, v0, v8, v10}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/H;Landroid/support/v7/widget/ax;Z)I

    :cond_37
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput-object v2, v0, Landroid/support/v7/widget/H;->pG:Ljava/util/List;

    .line 659
    :cond_38
    :goto_20
    iget-boolean v0, v8, Landroid/support/v7/widget/ax;->qG:Z

    if-nez v0, :cond_39

    .line 660
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bA()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/M;->pS:I

    goto :goto_21

    .line 662
    :cond_39
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    invoke-virtual {v0}, Landroid/support/v7/widget/F;->reset()V

    .line 664
    :goto_21
    iget-boolean v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    iput-boolean v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    .line 668
    return-void
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/ax;)V
    .locals 0

    .line 672
    invoke-super {p0, p1}, Landroid/support/v7/widget/af;->onLayoutCompleted(Landroid/support/v7/widget/ax;)V

    .line 673
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 674
    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 675
    const/high16 p1, -0x80000000

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 676
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    invoke-virtual {p1}, Landroid/support/v7/widget/F;->reset()V

    .line 677
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 273
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 274
    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 275
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 282
    :cond_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 246
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 247
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/LinearLayoutManager$SavedState;)V

    return-object v0

    .line 249
    :cond_0
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 250
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 251
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 252
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    xor-int/2addr v1, v2

    .line 253
    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->pJ:Z

    .line 254
    if-eqz v1, :cond_1

    .line 255
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v1

    .line 256
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v2}, Landroid/support/v7/widget/M;->bz()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 257
    invoke-virtual {v3, v1}, Landroid/support/v7/widget/M;->T(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->pI:I

    .line 258
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->pH:I

    .line 259
    goto :goto_0

    .line 260
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    .line 261
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->pH:I

    .line 262
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/M;->S(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 263
    invoke-virtual {v2}, Landroid/support/v7/widget/M;->by()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->pI:I

    .line 265
    goto :goto_0

    .line 266
    :cond_2
    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->pH:I

    .line 268
    :goto_0
    return-object v0
.end method

.method final resolveIsInfinite()Z
    .locals 1

    .line 1211
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 1212
    invoke-virtual {v0}, Landroid/support/v7/widget/M;->getEnd()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final scrollBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I
    .locals 5

    .line 1322
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1325
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v7/widget/H;->pn:Z

    .line 1326
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1327
    if-lez p1, :cond_1

    .line 1328
    move v0, v2

    goto :goto_0

    .line 1327
    :cond_1
    const/4 v0, -0x1

    .line 1328
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1329
    invoke-direct {p0, v0, v3, v2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutState(IIZLandroid/support/v7/widget/ax;)V

    .line 1330
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v2, v2, Landroid/support/v7/widget/H;->pC:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    .line 1331
    invoke-virtual {p0, p2, v4, p3, v1}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/H;Landroid/support/v7/widget/ax;Z)I

    move-result p2

    add-int/2addr v2, p2

    .line 1332
    if-gez v2, :cond_2

    .line 1336
    return v1

    .line 1338
    :cond_2
    if-le v3, v2, :cond_3

    mul-int p1, v0, v2

    .line 1339
    :cond_3
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/M;->U(I)V

    .line 1343
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput p1, p2, Landroid/support/v7/widget/H;->pF:I

    .line 1344
    return p1

    .line 1323
    :cond_4
    :goto_1
    return v1
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I
    .locals 2

    .line 1060
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1061
    const/4 p1, 0x0

    return p1

    .line 1063
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I

    move-result p1

    return p1
.end method

.method public final scrollToPosition(I)V
    .locals 1

    .line 1017
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 1018
    const/high16 p1, -0x80000000

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 1019
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz p1, :cond_0

    .line 1020
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v0, -0x1

    iput v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->pH:I

    .line 1022
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 1023
    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I
    .locals 1

    .line 1072
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 1073
    const/4 p1, 0x0

    return p1

    .line 1075
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I

    move-result p1

    return p1
.end method

.method final shouldMeasureTwice()Z
    .locals 6

    .line 1630
    iget v0, p0, Landroid/support/v7/widget/af;->mHeightMode:I

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 1631
    iget v0, p0, Landroid/support/v7/widget/af;->mWidthMode:I

    if-eq v0, v1, :cond_2

    .line 1632
    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getChildCount()I

    move-result v0

    move v1, v2

    :goto_0
    const/4 v3, 0x1

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/af;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v5, :cond_0

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v4, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public final smoothScrollToPosition$7d69765f(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    .line 448
    new-instance v0, Landroid/support/v7/widget/J;

    .line 449
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v7/widget/J;-><init>(Landroid/content/Context;)V

    .line 450
    iput p2, v0, Landroid/support/v7/widget/au;->qt:I

    .line 451
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/au;)V

    .line 452
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    .line 2085
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
