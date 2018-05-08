.class public Landroid/support/v7/widget/W;
.super Landroid/database/Observable;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11917
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(IILjava/lang/Object;)V
    .locals 2

    .line 11942
    iget-object v0, p0, Landroid/support/v7/widget/W;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 11943
    iget-object v1, p0, Landroid/support/v7/widget/W;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/X;

    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v7/widget/X;->onItemRangeChanged(IILjava/lang/Object;)V

    .line 11942
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 11945
    :cond_0
    return-void
.end method

.method public final notifyChanged()V
    .locals 2

    .line 11927
    iget-object v0, p0, Landroid/support/v7/widget/W;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 11928
    iget-object v1, p0, Landroid/support/v7/widget/W;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/X;

    invoke-virtual {v1}, Landroid/support/v7/widget/X;->onChanged()V

    .line 11927
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 11930
    :cond_0
    return-void
.end method

.method public final s(II)V
    .locals 2

    .line 11952
    iget-object v0, p0, Landroid/support/v7/widget/W;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 11953
    iget-object v1, p0, Landroid/support/v7/widget/W;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/X;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/X;->onItemRangeInserted(II)V

    .line 11952
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 11955
    :cond_0
    return-void
.end method

.method public final t(II)V
    .locals 2

    .line 11962
    iget-object v0, p0, Landroid/support/v7/widget/W;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 11963
    iget-object v1, p0, Landroid/support/v7/widget/W;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/X;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/X;->onItemRangeRemoved(II)V

    .line 11962
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 11965
    :cond_0
    return-void
.end method
