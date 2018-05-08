.class Landroid/support/v7/widget/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/b;


# instance fields
.field final synthetic pT:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 917
    iput-object p1, p0, Landroid/support/v7/widget/U;->pT:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final M(I)Landroid/support/v7/widget/aA;
    .locals 3

    .line 920
    iget-object v0, p0, Landroid/support/v7/widget/U;->pT:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroid/support/v7/widget/aA;

    move-result-object p1

    .line 921
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 922
    return-object v0

    .line 926
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/U;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    iget-object v2, p1, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/d;->O(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 930
    return-object v0

    .line 932
    :cond_1
    return-object p1
.end method

.method public final a(IILjava/lang/Object;)V
    .locals 1

    .line 952
    iget-object v0, p0, Landroid/support/v7/widget/U;->pT:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 953
    iget-object p1, p0, Landroid/support/v7/widget/U;->pT:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    .line 954
    return-void
.end method

.method public final d(Landroid/support/v7/widget/c;)V
    .locals 0

    .line 958
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/U;->f(Landroid/support/v7/widget/c;)V

    .line 959
    return-void
.end method

.method public final e(Landroid/support/v7/widget/c;)V
    .locals 0

    .line 981
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/U;->f(Landroid/support/v7/widget/c;)V

    .line 982
    return-void
.end method

.method final f(Landroid/support/v7/widget/c;)V
    .locals 2

    .line 962
    iget v0, p1, Landroid/support/v7/widget/c;->cG:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 967
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/U;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget v1, p1, Landroid/support/v7/widget/c;->nL:I

    iget p1, p1, Landroid/support/v7/widget/c;->nN:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/af;->onItemsRemoved$5927c743(II)V

    .line 968
    return-void

    .line 964
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/U;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget v1, p1, Landroid/support/v7/widget/c;->nL:I

    iget p1, p1, Landroid/support/v7/widget/c;->nN:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/af;->onItemsAdded$5927c743(II)V

    .line 965
    return-void

    .line 974
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/U;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget v1, p1, Landroid/support/v7/widget/c;->nL:I

    iget p1, p1, Landroid/support/v7/widget/c;->nN:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/af;->onItemsMoved$342e6be0(II)V

    .line 977
    :goto_0
    return-void

    .line 970
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/U;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget v1, p1, Landroid/support/v7/widget/c;->nL:I

    iget p1, p1, Landroid/support/v7/widget/c;->nN:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/af;->onItemsUpdated$783f8c5f$5927c743(II)V

    .line 972
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final m(II)V
    .locals 2

    .line 937
    iget-object v0, p0, Landroid/support/v7/widget/U;->pT:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 938
    iget-object p1, p0, Landroid/support/v7/widget/U;->pT:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v1, p1, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 939
    iget-object p1, p0, Landroid/support/v7/widget/U;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget v0, p1, Landroid/support/v7/widget/ax;->qC:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/support/v7/widget/ax;->qC:I

    .line 940
    return-void
.end method

.method public final n(II)V
    .locals 2

    .line 945
    iget-object v0, p0, Landroid/support/v7/widget/U;->pT:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 946
    iget-object p1, p0, Landroid/support/v7/widget/U;->pT:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 947
    return-void
.end method

.method public final o(II)V
    .locals 1

    .line 986
    iget-object v0, p0, Landroid/support/v7/widget/U;->pT:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 987
    iget-object p1, p0, Landroid/support/v7/widget/U;->pT:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 988
    return-void
.end method

.method public final p(II)V
    .locals 1

    .line 992
    iget-object v0, p0, Landroid/support/v7/widget/U;->pT:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    .line 994
    iget-object p1, p0, Landroid/support/v7/widget/U;->pT:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 995
    return-void
.end method
