.class public final Landroid/support/v7/widget/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic pT:Landroid/support/v7/widget/RecyclerView;

.field final qk:Ljava/util/ArrayList;

.field ql:Ljava/util/ArrayList;

.field final qm:Ljava/util/ArrayList;

.field final qn:Ljava/util/List;

.field qo:I

.field qp:I

.field qq:Landroid/support/v7/widget/ao;

.field qr:Landroid/support/v7/widget/ay;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 5587
    iput-object p1, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5588
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/aq;->qk:Ljava/util/ArrayList;

    .line 5589
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/aq;->ql:Ljava/util/ArrayList;

    .line 5591
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    .line 5593
    iget-object p1, p0, Landroid/support/v7/widget/aq;->qk:Ljava/util/ArrayList;

    .line 5594
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/aq;->qn:Ljava/util/List;

    .line 5596
    const/4 p1, 0x2

    iput p1, p0, Landroid/support/v7/widget/aq;->qo:I

    .line 5597
    iput p1, p0, Landroid/support/v7/widget/aq;->qp:I

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 6011
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 6012
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6013
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 6014
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v1}, Landroid/support/v7/widget/aq;->a(Landroid/view/ViewGroup;Z)V

    .line 6011
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6017
    :cond_1
    if-nez p2, :cond_2

    .line 6018
    return-void

    .line 6021
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    .line 6022
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6023
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 6025
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    .line 6026
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6027
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6029
    return-void
.end method


# virtual methods
.method public final W(I)I
    .locals 3

    .line 5778
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    invoke-virtual {v0}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 5782
    iget-object v0, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v0, v0, Landroid/support/v7/widget/ax;->qG:Z

    if-nez v0, :cond_0

    .line 5783
    return p1

    .line 5785
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/a;->L(I)I

    move-result p1

    return p1

    .line 5779
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". State item count is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    .line 5780
    invoke-virtual {p1}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final X(I)Landroid/view/View;
    .locals 3

    .line 5804
    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/support/v7/widget/aq;->a(IZJ)Landroid/support/v7/widget/aA;

    move-result-object p1

    iget-object p1, p1, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    return-object p1
.end method

.method final Y(I)V
    .locals 2

    .line 6091
    iget-object v0, p0, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aA;

    .line 6095
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/aq;->a(Landroid/support/v7/widget/aA;Z)V

    .line 6096
    iget-object v0, p0, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6097
    return-void
.end method

.method final Z(I)Landroid/support/v7/widget/aA;
    .locals 9

    .line 6289
    iget-object v0, p0, Landroid/support/v7/widget/aq;->ql:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/aq;->ql:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 6293
    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_2

    .line 6294
    iget-object v5, p0, Landroid/support/v7/widget/aq;->ql:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/aA;

    .line 6295
    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->wasReturnedFromScrap()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 6296
    invoke-virtual {v5, v4}, Landroid/support/v7/widget/aA;->addFlags(I)V

    .line 6297
    return-object v5

    .line 6293
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6301
    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    iget-boolean v3, v3, Landroid/support/v7/widget/V;->mHasStableIds:Z

    if-eqz v3, :cond_4

    .line 6302
    iget-object v3, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    invoke-virtual {v3, p1, v2}, Landroid/support/v7/widget/a;->l(II)I

    move-result p1

    .line 6303
    if-lez p1, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    invoke-virtual {v3}, Landroid/support/v7/widget/V;->getItemCount()I

    move-result v3

    if-ge p1, v3, :cond_4

    .line 6304
    iget-object v3, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/V;->getItemId(I)J

    move-result-wide v5

    .line 6305
    :goto_1
    if-ge v2, v0, :cond_4

    .line 6306
    iget-object p1, p0, Landroid/support/v7/widget/aq;->ql:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/aA;

    .line 6307
    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_3

    iget-wide v7, p1, Landroid/support/v7/widget/aA;->mItemId:J

    cmp-long v3, v7, v5

    if-nez v3, :cond_3

    .line 6308
    invoke-virtual {p1, v4}, Landroid/support/v7/widget/aA;->addFlags(I)V

    .line 6309
    return-object p1

    .line 6305
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6314
    :cond_4
    return-object v1

    .line 6290
    :cond_5
    :goto_2
    return-object v1
.end method

.method final a(IZJ)Landroid/support/v7/widget/aA;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 5832
    if-ltz v1, :cond_27

    iget-object v5, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    invoke-virtual {v5}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v5

    if-ge v1, v5, :cond_27

    .line 5837
    nop

    .line 5838
    nop

    .line 5840
    iget-object v5, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v5, v5, Landroid/support/v7/widget/ax;->qG:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    .line 5841
    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/aq;->Z(I)Landroid/support/v7/widget/aA;

    move-result-object v5

    .line 5842
    if-eqz v5, :cond_0

    .line 5845
    move v9, v7

    goto :goto_0

    .line 5842
    :cond_0
    nop

    .line 5845
    move v9, v8

    goto :goto_0

    :cond_1
    move v9, v8

    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_a

    .line 5846
    invoke-virtual/range {p0 .. p2}, Landroid/support/v7/widget/aq;->e(IZ)Landroid/support/v7/widget/aA;

    move-result-object v5

    .line 5847
    if-eqz v5, :cond_a

    .line 5848
    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v10, v10, Landroid/support/v7/widget/ax;->qG:Z

    goto :goto_2

    :cond_2
    iget v10, v5, Landroid/support/v7/widget/aA;->mPosition:I

    if-ltz v10, :cond_9

    iget v10, v5, Landroid/support/v7/widget/aA;->mPosition:I

    iget-object v11, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    invoke-virtual {v11}, Landroid/support/v7/widget/V;->getItemCount()I

    move-result v11

    if-ge v10, v11, :cond_9

    iget-object v10, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v10, v10, Landroid/support/v7/widget/ax;->qG:Z

    if-nez v10, :cond_3

    iget-object v10, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    iget v11, v5, Landroid/support/v7/widget/aA;->mPosition:I

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/V;->getItemViewType(I)I

    move-result v10

    iget v11, v5, Landroid/support/v7/widget/aA;->mItemViewType:I

    if-eq v10, v11, :cond_3

    :goto_1
    move v10, v8

    goto :goto_2

    :cond_3
    iget-object v10, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    iget-boolean v10, v10, Landroid/support/v7/widget/V;->mHasStableIds:Z

    if-eqz v10, :cond_4

    iget-wide v10, v5, Landroid/support/v7/widget/aA;->mItemId:J

    iget-object v12, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    iget v13, v5, Landroid/support/v7/widget/aA;->mPosition:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/V;->getItemId(I)J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_4

    goto :goto_1

    :cond_4
    move v10, v7

    :goto_2
    if-nez v10, :cond_8

    .line 5850
    if-nez v2, :cond_7

    .line 5853
    const/4 v10, 0x4

    invoke-virtual {v5, v10}, Landroid/support/v7/widget/aA;->addFlags(I)V

    .line 5854
    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->isScrap()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 5855
    iget-object v10, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v5, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v10, v11, v8}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5856
    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->unScrap()V

    goto :goto_3

    .line 5857
    :cond_5
    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->wasReturnedFromScrap()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 5858
    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->clearReturnedFromScrapFlag()V

    .line 5860
    :cond_6
    :goto_3
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/aq;->l(Landroid/support/v7/widget/aA;)V

    .line 5862
    :cond_7
    nop

    .line 5868
    const/4 v5, 0x0

    goto :goto_4

    .line 5864
    :cond_8
    nop

    .line 5868
    move v9, v7

    goto :goto_4

    .line 5848
    :cond_9
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5868
    :cond_a
    :goto_4
    const-wide/16 v10, 0x0

    const-wide v12, 0x7fffffffffffffffL

    if-nez v5, :cond_17

    .line 5869
    iget-object v14, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v14, v14, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    invoke-virtual {v14, v1}, Landroid/support/v7/widget/a;->L(I)I

    move-result v14

    .line 5870
    if-ltz v14, :cond_16

    iget-object v15, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    invoke-virtual {v15}, Landroid/support/v7/widget/V;->getItemCount()I

    move-result v15

    if-ge v14, v15, :cond_16

    .line 5876
    iget-object v15, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    invoke-virtual {v15, v14}, Landroid/support/v7/widget/V;->getItemViewType(I)I

    move-result v15

    .line 5878
    iget-object v6, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    iget-boolean v6, v6, Landroid/support/v7/widget/V;->mHasStableIds:Z

    if-eqz v6, :cond_b

    .line 5879
    iget-object v5, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    invoke-virtual {v5, v14}, Landroid/support/v7/widget/V;->getItemId(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6, v15, v2}, Landroid/support/v7/widget/aq;->a(JIZ)Landroid/support/v7/widget/aA;

    move-result-object v5

    .line 5881
    if-eqz v5, :cond_b

    .line 5883
    iput v14, v5, Landroid/support/v7/widget/aA;->mPosition:I

    .line 5884
    nop

    .line 5887
    move v9, v7

    :cond_b
    if-nez v5, :cond_e

    iget-object v2, v0, Landroid/support/v7/widget/aq;->qr:Landroid/support/v7/widget/ay;

    if-eqz v2, :cond_e

    .line 5890
    iget-object v2, v0, Landroid/support/v7/widget/aq;->qr:Landroid/support/v7/widget/ay;

    .line 5891
    invoke-virtual {v2}, Landroid/support/v7/widget/ay;->bK()Landroid/view/View;

    move-result-object v2

    .line 5892
    if-eqz v2, :cond_e

    .line 5893
    iget-object v5, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v5

    .line 5894
    if-eqz v5, :cond_d

    .line 5898
    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_5

    .line 5899
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    .line 5901
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5895
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    .line 5897
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5905
    :cond_e
    :goto_5
    if-nez v5, :cond_11

    .line 5910
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getRecycledViewPool()Landroid/support/v7/widget/ao;

    move-result-object v2

    iget-object v2, v2, Landroid/support/v7/widget/ao;->qe:Landroid/util/SparseArray;

    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ap;

    if-eqz v2, :cond_f

    iget-object v5, v2, Landroid/support/v7/widget/ap;->qg:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v2, v2, Landroid/support/v7/widget/ap;->qg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/support/v7/widget/aA;

    goto :goto_6

    .line 5911
    :cond_f
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_10

    .line 5912
    invoke-virtual {v6}, Landroid/support/v7/widget/aA;->resetInternal()V

    .line 5913
    sget-boolean v2, Landroid/support/v7/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    if-eqz v2, :cond_10

    .line 5914
    iget-object v2, v6, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_10

    iget-object v2, v6, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {v0, v2, v8}, Landroid/support/v7/widget/aq;->a(Landroid/view/ViewGroup;Z)V

    .line 5918
    :cond_10
    move-object v5, v6

    :cond_11
    if-nez v5, :cond_17

    .line 5919
    iget-object v2, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v5

    .line 5920
    cmp-long v2, p3, v12

    if-eqz v2, :cond_14

    iget-object v2, v0, Landroid/support/v7/widget/aq;->qq:Landroid/support/v7/widget/ao;

    .line 5921
    invoke-virtual {v2, v15}, Landroid/support/v7/widget/ao;->V(I)Landroid/support/v7/widget/ap;

    move-result-object v2

    iget-wide v12, v2, Landroid/support/v7/widget/ap;->qi:J

    cmp-long v2, v12, v10

    if-eqz v2, :cond_13

    add-long/2addr v12, v5

    cmp-long v2, v12, p3

    if-gez v2, :cond_12

    goto :goto_7

    :cond_12
    move v2, v8

    goto :goto_8

    :cond_13
    :goto_7
    move v2, v7

    :goto_8
    if-nez v2, :cond_14

    .line 5923
    const/4 v0, 0x0

    return-object v0

    .line 5925
    :cond_14
    iget-object v2, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    iget-object v12, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v12, v15}, Landroid/support/v7/widget/V;->createViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/aA;

    move-result-object v2

    .line 5926
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$1000()Z

    move-result v12

    if-eqz v12, :cond_15

    .line 5928
    iget-object v12, v2, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-static {v12}, Landroid/support/v7/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v12

    .line 5929
    if-eqz v12, :cond_15

    .line 5930
    new-instance v13, Ljava/lang/ref/WeakReference;

    invoke-direct {v13, v12}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v13, v2, Landroid/support/v7/widget/aA;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 5934
    :cond_15
    iget-object v12, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v12

    .line 5935
    iget-object v14, v0, Landroid/support/v7/widget/aq;->qq:Landroid/support/v7/widget/ao;

    sub-long/2addr v12, v5

    invoke-virtual {v14, v15}, Landroid/support/v7/widget/ao;->V(I)Landroid/support/v7/widget/ap;

    move-result-object v5

    iget-wide v10, v5, Landroid/support/v7/widget/ap;->qi:J

    invoke-virtual {v14, v10, v11, v12, v13}, Landroid/support/v7/widget/ao;->a(JJ)J

    move-result-wide v10

    iput-wide v10, v5, Landroid/support/v7/widget/ap;->qi:J

    .line 5945
    move-object v5, v2

    goto :goto_9

    .line 5871
    :cond_16
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Inconsistency detected. Invalid item position "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(offset:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ").state:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    .line 5873
    invoke-virtual {v1}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5945
    :cond_17
    :goto_9
    if-eqz v9, :cond_18

    iget-object v2, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v2, v2, Landroid/support/v7/widget/ax;->qG:Z

    if-nez v2, :cond_18

    .line 5946
    const/16 v2, 0x2000

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/aA;->hasAnyOfTheFlags(I)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 5947
    invoke-virtual {v5, v8, v2}, Landroid/support/v7/widget/aA;->setFlags(II)V

    .line 5948
    iget-object v2, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v2, v2, Landroid/support/v7/widget/ax;->qJ:Z

    if-eqz v2, :cond_18

    .line 5949
    nop

    .line 5950
    invoke-static {v5}, Landroid/support/v7/widget/aa;->g(Landroid/support/v7/widget/aA;)I

    .line 5951
    iget-object v2, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    iget-object v6, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    .line 5953
    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->getUnmodifiedPayloads()Ljava/util/List;

    .line 5952
    invoke-virtual {v2, v5}, Landroid/support/v7/widget/aa;->f(Landroid/support/v7/widget/aA;)Landroid/support/v7/widget/ac;

    move-result-object v2

    .line 5954
    iget-object v6, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v5, v2}, Landroid/support/v7/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;)V

    .line 5958
    :cond_18
    nop

    .line 5959
    iget-object v2, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v2, v2, Landroid/support/v7/widget/ax;->qG:Z

    if-eqz v2, :cond_19

    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->isBound()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 5961
    iput v1, v5, Landroid/support/v7/widget/aA;->mPreLayoutPosition:I

    goto :goto_a

    .line 5962
    :cond_19
    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->isBound()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->needsUpdate()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_b

    .line 5972
    :cond_1a
    :goto_a
    move v1, v8

    goto/16 :goto_e

    .line 5968
    :cond_1b
    :goto_b
    iget-object v2, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/a;->L(I)I

    move-result v2

    .line 5969
    iget-object v6, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iput-object v6, v5, Landroid/support/v7/widget/aA;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget v6, v5, Landroid/support/v7/widget/aA;->mItemViewType:I

    iget-object v10, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v10

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v12, p3, v12

    if-eqz v12, :cond_1e

    iget-object v12, v0, Landroid/support/v7/widget/aq;->qq:Landroid/support/v7/widget/ao;

    invoke-virtual {v12, v6}, Landroid/support/v7/widget/ao;->V(I)Landroid/support/v7/widget/ap;

    move-result-object v6

    iget-wide v12, v6, Landroid/support/v7/widget/ap;->qj:J

    const-wide/16 v14, 0x0

    cmp-long v6, v12, v14

    if-eqz v6, :cond_1d

    add-long/2addr v12, v10

    cmp-long v3, v12, p3

    if-gez v3, :cond_1c

    goto :goto_c

    :cond_1c
    move v3, v8

    goto :goto_d

    :cond_1d
    :goto_c
    move v3, v7

    :goto_d
    if-nez v3, :cond_1e

    goto :goto_a

    :cond_1e
    iget-object v3, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    iput v2, v5, Landroid/support/v7/widget/aA;->mPosition:I

    iget-boolean v4, v3, Landroid/support/v7/widget/V;->mHasStableIds:Z

    if-eqz v4, :cond_1f

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/V;->getItemId(I)J

    move-result-wide v12

    iput-wide v12, v5, Landroid/support/v7/widget/aA;->mItemId:J

    :cond_1f
    const/16 v4, 0x207

    invoke-virtual {v5, v7, v4}, Landroid/support/v7/widget/aA;->setFlags(II)V

    const-string v4, "RV OnBindView"

    invoke-static {v4}, Landroid/support/v4/os/e;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->getUnmodifiedPayloads()Ljava/util/List;

    invoke-virtual {v3, v5, v2}, Landroid/support/v7/widget/V;->onBindViewHolder(Landroid/support/v7/widget/aA;I)V

    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->clearPayload()V

    iget-object v2, v5, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Landroid/support/v7/widget/aj;

    if-eqz v3, :cond_20

    check-cast v2, Landroid/support/v7/widget/aj;

    iput-boolean v7, v2, Landroid/support/v7/widget/aj;->qc:Z

    :cond_20
    invoke-static {}, Landroid/support/v4/os/e;->endSection()V

    iget-object v2, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v2

    iget-object v4, v0, Landroid/support/v7/widget/aq;->qq:Landroid/support/v7/widget/ao;

    iget v6, v5, Landroid/support/v7/widget/aA;->mItemViewType:I

    sub-long/2addr v2, v10

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/ao;->V(I)Landroid/support/v7/widget/ap;

    move-result-object v6

    iget-wide v10, v6, Landroid/support/v7/widget/ap;->qj:J

    invoke-virtual {v4, v10, v11, v2, v3}, Landroid/support/v7/widget/ao;->a(JJ)J

    move-result-wide v2

    iput-wide v2, v6, Landroid/support/v7/widget/ap;->qj:J

    iget-object v2, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, v5, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/n;->g(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_21

    invoke-static {v2, v7}, Landroid/support/v4/view/n;->d(Landroid/view/View;I)V

    :cond_21
    invoke-static {v2}, Landroid/support/v4/view/n;->d(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_22

    const/16 v3, 0x4000

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/aA;->addFlags(I)V

    iget-object v3, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/aB;

    iget-object v3, v3, Landroid/support/v7/widget/aB;->qU:Landroid/support/v4/view/b;

    invoke-static {v2, v3}, Landroid/support/v4/view/n;->a(Landroid/view/View;Landroid/support/v4/view/b;)V

    :cond_22
    iget-object v2, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v2, v2, Landroid/support/v7/widget/ax;->qG:Z

    if-eqz v2, :cond_23

    iput v1, v5, Landroid/support/v7/widget/aA;->mPreLayoutPosition:I

    .line 5972
    :cond_23
    move v1, v7

    :goto_e
    iget-object v2, v5, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 5974
    if-nez v2, :cond_24

    .line 5975
    iget-object v0, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aj;

    .line 5976
    iget-object v2, v5, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f

    .line 5977
    :cond_24
    iget-object v3, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 5978
    iget-object v0, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aj;

    .line 5979
    iget-object v2, v5, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f

    .line 5981
    :cond_25
    move-object v0, v2

    check-cast v0, Landroid/support/v7/widget/aj;

    .line 5983
    :goto_f
    iput-object v5, v0, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    .line 5984
    if-eqz v9, :cond_26

    if-eqz v1, :cond_26

    goto :goto_10

    :cond_26
    move v7, v8

    :goto_10
    iput-boolean v7, v0, Landroid/support/v7/widget/aj;->qd:Z

    .line 5985
    return-object v5

    .line 5833
    :cond_27
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid item position "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "). Item count:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    .line 5834
    invoke-virtual {v1}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    .line 5835
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method final a(JIZ)Landroid/support/v7/widget/aA;
    .locals 5

    .line 6379
    iget-object v0, p0, Landroid/support/v7/widget/aq;->qk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6380
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 6381
    iget-object v1, p0, Landroid/support/v7/widget/aq;->qk:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aA;

    .line 6382
    iget-wide v2, v1, Landroid/support/v7/widget/aA;->mItemId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/support/v7/widget/aA;->wasReturnedFromScrap()Z

    move-result v2

    if-nez v2, :cond_2

    .line 6383
    iget v2, v1, Landroid/support/v7/widget/aA;->mItemViewType:I

    if-ne p3, v2, :cond_1

    .line 6384
    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/aA;->addFlags(I)V

    .line 6385
    invoke-virtual {v1}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6394
    iget-object p1, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean p1, p1, Landroid/support/v7/widget/ax;->qG:Z

    if-nez p1, :cond_0

    .line 6395
    const/4 p1, 0x2

    const/16 p2, 0xe

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/aA;->setFlags(II)V

    .line 6399
    :cond_0
    return-object v1

    .line 6400
    :cond_1
    if-nez p4, :cond_2

    .line 6404
    iget-object v2, p0, Landroid/support/v7/widget/aq;->qk:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6405
    iget-object v2, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v1, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6406
    iget-object v1, v1, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/aq;->ab(Landroid/view/View;)V

    .line 6380
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6412
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6413
    add-int/lit8 v0, v0, -0x1

    :goto_1
    const/4 v1, 0x0

    if-ltz v0, :cond_7

    .line 6414
    iget-object v2, p0, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/aA;

    .line 6415
    iget-wide v3, v2, Landroid/support/v7/widget/aA;->mItemId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_6

    .line 6416
    iget v3, v2, Landroid/support/v7/widget/aA;->mItemViewType:I

    if-ne p3, v3, :cond_5

    .line 6417
    if-nez p4, :cond_4

    .line 6418
    iget-object p1, p0, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6420
    :cond_4
    return-object v2

    .line 6421
    :cond_5
    if-nez p4, :cond_6

    .line 6422
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/aq;->Y(I)V

    .line 6423
    return-object v1

    .line 6413
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 6427
    :cond_7
    return-object v1
.end method

.method final a(Landroid/support/v7/widget/aA;Z)V
    .locals 3

    .line 6200
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroid/support/v7/widget/aA;)V

    .line 6201
    const/16 v0, 0x4000

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/aA;->hasAnyOfTheFlags(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6202
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/aA;->setFlags(II)V

    .line 6203
    iget-object v0, p1, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/n;->a(Landroid/view/View;Landroid/support/v4/view/b;)V

    .line 6205
    :cond_0
    if-eqz p2, :cond_3

    .line 6206
    iget-object p2, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->mRecyclerListener:Landroid/support/v7/widget/ar;

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->mRecyclerListener:Landroid/support/v7/widget/ar;

    :cond_1
    iget-object p2, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/V;->onViewRecycled(Landroid/support/v7/widget/aA;)V

    :cond_2
    iget-object p2, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/aN;->q(Landroid/support/v7/widget/aA;)V

    .line 6208
    :cond_3
    iput-object v2, p1, Landroid/support/v7/widget/aA;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 6209
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getRecycledViewPool()Landroid/support/v7/widget/ao;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/ao;->k(Landroid/support/v7/widget/aA;)V

    .line 6210
    return-void
.end method

.method public final aa(Landroid/view/View;)V
    .locals 3

    .line 6044
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v0

    .line 6045
    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6046
    iget-object v1, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6048
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->isScrap()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6049
    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->unScrap()V

    goto :goto_0

    .line 6050
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->wasReturnedFromScrap()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6051
    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->clearReturnedFromScrapFlag()V

    .line 6053
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/aq;->l(Landroid/support/v7/widget/aA;)V

    .line 6054
    return-void
.end method

.method final ab(Landroid/view/View;)V
    .locals 1

    .line 6218
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object p1

    .line 6219
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/aA;->access$1202(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/aq;)Landroid/support/v7/widget/aq;

    .line 6220
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/aA;->access$1302(Landroid/support/v7/widget/aA;Z)Z

    .line 6221
    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->clearReturnedFromScrapFlag()V

    .line 6222
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aq;->l(Landroid/support/v7/widget/aA;)V

    .line 6223
    return-void
.end method

.method final ac(Landroid/view/View;)V
    .locals 2

    .line 6235
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object p1

    .line 6236
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/aA;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6237
    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->canReuseUpdatedViewHolder(Landroid/support/v7/widget/aA;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6246
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aq;->ql:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 6247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/aq;->ql:Ljava/util/ArrayList;

    .line 6249
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/widget/aA;->setScrapContainer(Landroid/support/v7/widget/aq;Z)V

    .line 6250
    iget-object v0, p0, Landroid/support/v7/widget/aq;->ql:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6252
    return-void

    .line 6238
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    iget-boolean v0, v0, Landroid/support/v7/widget/V;->mHasStableIds:Z

    if-eqz v0, :cond_3

    goto :goto_1

    .line 6239
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    .line 6241
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6243
    :cond_4
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/widget/aA;->setScrapContainer(Landroid/support/v7/widget/aq;Z)V

    .line 6244
    iget-object v0, p0, Landroid/support/v7/widget/aq;->qk:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final bH()V
    .locals 3

    .line 5625
    iget-object v0, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget v0, v0, Landroid/support/v7/widget/af;->mPrefetchMaxCountObserved:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5626
    :goto_0
    iget v1, p0, Landroid/support/v7/widget/aq;->qo:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/support/v7/widget/aq;->qp:I

    .line 5629
    iget-object v0, p0, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 5630
    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/aq;->qp:I

    if-le v1, v2, :cond_1

    .line 5631
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/aq;->Y(I)V

    .line 5630
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 5633
    :cond_1
    return-void
.end method

.method final bI()V
    .locals 1

    .line 6066
    iget-object v0, p0, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6067
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 6068
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/aq;->Y(I)V

    .line 6067
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6070
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6071
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6072
    iget-object v0, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/y;

    invoke-virtual {v0}, Landroid/support/v7/widget/y;->bu()V

    .line 6074
    :cond_1
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 5610
    iget-object v0, p0, Landroid/support/v7/widget/aq;->qk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5611
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->bI()V

    .line 5612
    return-void
.end method

.method final e(IZ)Landroid/support/v7/widget/aA;
    .locals 8

    .line 6325
    iget-object v0, p0, Landroid/support/v7/widget/aq;->qk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6328
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 6329
    iget-object v3, p0, Landroid/support/v7/widget/aq;->qk:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/aA;

    .line 6330
    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->wasReturnedFromScrap()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 6331
    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v4, v4, Landroid/support/v7/widget/ax;->qG:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_1

    .line 6332
    :cond_0
    const/16 p1, 0x20

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/aA;->addFlags(I)V

    .line 6333
    return-object v3

    .line 6328
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6337
    :cond_2
    const/4 v0, 0x0

    if-nez p2, :cond_8

    .line 6338
    iget-object v2, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    iget-object v3, v2, Landroid/support/v7/widget/d;->nQ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_4

    iget-object v5, v2, Landroid/support/v7/widget/d;->nQ:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    iget-object v6, v2, Landroid/support/v7/widget/d;->nO:Landroid/support/v7/widget/f;

    invoke-interface {v6, v5}, Landroid/support/v7/widget/f;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result v7

    if-ne v7, p1, :cond_3

    invoke-virtual {v6}, Landroid/support/v7/widget/aA;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 6339
    :cond_4
    move-object v5, v0

    :goto_2
    if-eqz v5, :cond_8

    .line 6342
    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object p1

    .line 6343
    iget-object p2, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    iget-object v0, p2, Landroid/support/v7/widget/d;->nO:Landroid/support/v7/widget/f;

    invoke-interface {v0, v5}, Landroid/support/v7/widget/f;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_7

    iget-object v1, p2, Landroid/support/v7/widget/d;->nP:Landroid/support/v7/widget/e;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/e;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p2, Landroid/support/v7/widget/d;->nP:Landroid/support/v7/widget/e;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/e;->clear(I)V

    invoke-virtual {p2, v5}, Landroid/support/v7/widget/d;->N(Landroid/view/View;)Z

    .line 6344
    iget-object p2, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {p2, v5}, Landroid/support/v7/widget/d;->indexOfChild(Landroid/view/View;)I

    move-result p2

    .line 6345
    const/4 v0, -0x1

    if-eq p2, v0, :cond_5

    .line 6349
    iget-object v0, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/d;->detachViewFromParent(I)V

    .line 6350
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/aq;->ac(Landroid/view/View;)V

    .line 6351
    const/16 p2, 0x2020

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/aA;->addFlags(I)V

    .line 6353
    return-object p1

    .line 6346
    :cond_5
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "layout index should not be -1 after unhiding a view:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    .line 6347
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6343
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "trying to unhide a view that was not hidden"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "view is not a child, cannot hide "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6358
    :cond_8
    iget-object v2, p0, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6359
    :goto_3
    if-ge v1, v2, :cond_b

    .line 6360
    iget-object v3, p0, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/aA;

    .line 6363
    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_a

    .line 6364
    if-nez p2, :cond_9

    .line 6365
    iget-object p1, p0, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6371
    :cond_9
    return-object v3

    .line 6359
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 6374
    :cond_b
    return-object v0
.end method

.method final getRecycledViewPool()Landroid/support/v7/widget/ao;
    .locals 1

    .line 6535
    iget-object v0, p0, Landroid/support/v7/widget/aq;->qq:Landroid/support/v7/widget/ao;

    if-nez v0, :cond_0

    .line 6536
    new-instance v0, Landroid/support/v7/widget/ao;

    invoke-direct {v0}, Landroid/support/v7/widget/ao;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/aq;->qq:Landroid/support/v7/widget/ao;

    .line 6538
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aq;->qq:Landroid/support/v7/widget/ao;

    return-object v0
.end method

.method final l(Landroid/support/v7/widget/aA;)V
    .locals 6

    .line 6105
    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->isScrap()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    iget-object v0, p1, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 6112
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->isTmpDetached()Z

    move-result v0

    if-nez v0, :cond_b

    .line 6118
    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_a

    .line 6124
    nop

    .line 6125
    invoke-static {p1}, Landroid/support/v7/widget/aA;->access$1100(Landroid/support/v7/widget/aA;)Z

    move-result v0

    .line 6126
    iget-object v3, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    .line 6128
    invoke-virtual {v3}, Landroid/support/v7/widget/V;->onFailedToRecycleView$cb3a904()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6129
    move v3, v2

    goto :goto_0

    .line 6128
    :cond_1
    nop

    .line 6129
    move v3, v1

    .line 6130
    :goto_0
    nop

    .line 6135
    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->isRecyclable()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 6185
    :cond_2
    move v3, v1

    goto :goto_4

    .line 6136
    :cond_3
    :goto_1
    iget v3, p0, Landroid/support/v7/widget/aq;->qp:I

    if-lez v3, :cond_7

    const/16 v3, 0x20e

    .line 6137
    invoke-virtual {p1, v3}, Landroid/support/v7/widget/aA;->hasAnyOfTheFlags(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 6142
    iget-object v3, p0, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6143
    iget v4, p0, Landroid/support/v7/widget/aq;->qp:I

    if-lt v3, v4, :cond_4

    if-lez v3, :cond_4

    .line 6144
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/aq;->Y(I)V

    .line 6145
    add-int/lit8 v3, v3, -0x1

    .line 6148
    :cond_4
    nop

    .line 6149
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$1000()Z

    move-result v4

    if-eqz v4, :cond_6

    if-lez v3, :cond_6

    iget-object v4, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/y;

    iget v5, p1, Landroid/support/v7/widget/aA;->mPosition:I

    .line 6151
    invoke-virtual {v4, v5}, Landroid/support/v7/widget/y;->S(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 6153
    add-int/lit8 v3, v3, -0x1

    .line 6154
    :goto_2
    if-ltz v3, :cond_5

    .line 6155
    iget-object v4, p0, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/aA;

    iget v4, v4, Landroid/support/v7/widget/aA;->mPosition:I

    .line 6156
    iget-object v5, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/y;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/y;->S(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 6157
    add-int/lit8 v3, v3, -0x1

    .line 6160
    goto :goto_2

    .line 6161
    :cond_5
    add-int/2addr v3, v2

    .line 6163
    :cond_6
    iget-object v4, p0, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 6164
    nop

    .line 6166
    move v3, v2

    goto :goto_3

    :cond_7
    move v3, v1

    :goto_3
    if-nez v3, :cond_8

    .line 6167
    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/aq;->a(Landroid/support/v7/widget/aA;Z)V

    .line 6168
    nop

    .line 6185
    move v1, v2

    :cond_8
    :goto_4
    iget-object v2, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/aN;->q(Landroid/support/v7/widget/aA;)V

    .line 6186
    if-nez v3, :cond_9

    if-nez v1, :cond_9

    if-eqz v0, :cond_9

    .line 6187
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/aA;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 6189
    :cond_9
    return-void

    .line 6119
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    .line 6121
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6113
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    .line 6115
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6106
    :cond_c
    :goto_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6108
    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->isScrap()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    .line 6109
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_d

    move v1, v2

    nop

    :cond_d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final m(Landroid/support/v7/widget/aA;)V
    .locals 1

    .line 6261
    invoke-static {p1}, Landroid/support/v7/widget/aA;->access$1300(Landroid/support/v7/widget/aA;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6262
    iget-object v0, p0, Landroid/support/v7/widget/aq;->ql:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6264
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aq;->qk:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6266
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/aA;->access$1202(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/aq;)Landroid/support/v7/widget/aq;

    .line 6267
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/aA;->access$1302(Landroid/support/v7/widget/aA;Z)Z

    .line 6268
    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->clearReturnedFromScrapFlag()V

    .line 6269
    return-void
.end method
