.class Landroid/support/v7/widget/H;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mOffset:I

.field pC:I

.field pD:I

.field pE:Z

.field pF:I

.field pG:Ljava/util/List;

.field pn:Z

.field po:I

.field pp:I

.field pq:I

.field pr:I

.field pv:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 2127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2146
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/H;->pn:Z

    .line 2187
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/H;->pD:I

    .line 2194
    iput-boolean v0, p0, Landroid/support/v7/widget/H;->pE:Z

    .line 2206
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/H;->pG:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final R(Landroid/view/View;)V
    .locals 7

    .line 2263
    iget-object v0, p0, Landroid/support/v7/widget/H;->pG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/H;->pG:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/aA;

    iget-object v4, v4, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/aj;

    if-eq v4, p1, :cond_1

    iget-object v6, v5, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    invoke-virtual {v6}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v5, v5, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/H;->pp:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/support/v7/widget/H;->pq:I

    mul-int/2addr v5, v6

    if-ltz v5, :cond_1

    if-ge v5, v2, :cond_1

    if-eqz v5, :cond_0

    move-object v1, v4

    move v2, v5

    goto :goto_1

    .line 2264
    :cond_0
    move-object v1, v4

    goto :goto_2

    .line 2263
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2264
    :cond_2
    :goto_2
    if-nez v1, :cond_3

    .line 2265
    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/H;->pp:I

    return-void

    .line 2267
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/aj;

    .line 2268
    iget-object p1, p1, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/H;->pp:I

    .line 2270
    return-void
.end method

.method final a(Landroid/support/v7/widget/aq;)Landroid/view/View;
    .locals 4

    .line 2227
    iget-object v0, p0, Landroid/support/v7/widget/H;->pG:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2228
    iget-object p1, p0, Landroid/support/v7/widget/H;->pG:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/H;->pG:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aA;

    iget-object v1, v1, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/aj;

    iget-object v3, v2, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Landroid/support/v7/widget/H;->pp:I

    iget-object v2, v2, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    invoke-virtual {v2}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result v2

    if-ne v3, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/H;->R(Landroid/view/View;)V

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 2230
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/H;->pp:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/aq;->X(I)Landroid/view/View;

    move-result-object p1

    .line 2231
    iget v0, p0, Landroid/support/v7/widget/H;->pp:I

    iget v1, p0, Landroid/support/v7/widget/H;->pq:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/H;->pp:I

    .line 2232
    return-object p1
.end method

.method final a(Landroid/support/v7/widget/ax;)Z
    .locals 1

    .line 2217
    iget v0, p0, Landroid/support/v7/widget/H;->pp:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/H;->pp:I

    invoke-virtual {p1}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
