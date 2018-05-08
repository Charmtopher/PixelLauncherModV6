.class Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mData:[I

.field rs:Ljava/util/List;


# virtual methods
.method public final a(IIIZ)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 5

    .line 3053
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3054
    return-object v1

    .line 3056
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3057
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 3058
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 3059
    iget v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v4, p2, :cond_1

    .line 3060
    return-object v1

    .line 3062
    :cond_1
    iget v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v4, p1, :cond_3

    if-eqz p3, :cond_2

    iget v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->rt:I

    if-eq v4, p3, :cond_2

    if-eqz p4, :cond_3

    iget-boolean v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->rv:Z

    if-eqz v4, :cond_3

    .line 3065
    :cond_2
    return-object v3

    .line 3057
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3068
    :cond_4
    return-object v1
.end method

.method public final a(Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V
    .locals 5

    .line 3009
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 3010
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    .line 3012
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3013
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 3014
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 3015
    iget v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    iget v4, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-ne v3, v4, :cond_1

    .line 3019
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3022
    :cond_1
    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    iget v3, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v2, v3, :cond_2

    .line 3023
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3024
    return-void

    .line 3013
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3028
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3029
    return-void
.end method

.method final ah(I)I
    .locals 2

    .line 2851
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2852
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2853
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2854
    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v1, p1, :cond_0

    .line 2855
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2852
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2859
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->ai(I)I

    move-result p1

    return p1
.end method

.method final ai(I)I
    .locals 4

    .line 2866
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2867
    return v1

    .line 2869
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 2870
    return v1

    .line 2872
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->ak(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v3, p1, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_1
    if-eq v2, v1, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    goto :goto_2

    .line 2873
    :cond_5
    move v0, v1

    :goto_2
    if-ne v0, v1, :cond_6

    .line 2874
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v2, v2

    invoke-static {v0, p1, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 2875
    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length p1, p1

    return p1

    .line 2878
    :cond_6
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2, p1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 2879
    return v0
.end method

.method final aj(I)V
    .locals 4

    .line 2905
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2906
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 2907
    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    return-void

    .line 2908
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 2909
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 2910
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v2, v2

    :goto_0
    if-gt v2, p1, :cond_1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    new-array p1, v2, [I

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 2911
    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2912
    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v0, v0

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v2, v2

    invoke-static {p1, v0, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 2914
    :cond_2
    return-void
.end method

.method public final ak(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4

    .line 3032
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3033
    return-object v1

    .line 3035
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 3036
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 3037
    iget v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-ne v3, p1, :cond_1

    .line 3038
    return-object v2

    .line 3035
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3041
    :cond_2
    return-object v1
.end method

.method final clear()V
    .locals 2

    .line 2917
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v0, :cond_0

    .line 2918
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2920
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    .line 2921
    return-void
.end method

.method final w(II)V
    .locals 5

    .line 2924
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    .line 2927
    :cond_0
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->aj(I)V

    .line 2928
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v3, v3

    sub-int/2addr v3, p1

    sub-int/2addr v3, p2

    invoke-static {v1, v0, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2930
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v2, v2

    sub-int/2addr v2, p2

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v3, v3

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 2932
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    iget v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v3, p1, :cond_2

    iget v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-ge v3, v0, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    sub-int/2addr v3, p2

    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2933
    :cond_3
    return-void

    .line 2925
    :cond_4
    :goto_2
    return-void
.end method

.method final x(II)V
    .locals 4

    .line 2954
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 2957
    :cond_0
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->aj(I)V

    .line 2958
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v3, v3

    sub-int/2addr v3, p1

    sub-int/2addr v3, p2

    invoke-static {v1, p1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2960
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    const/4 v2, -0x1

    invoke-static {v1, p1, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 2962
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->rs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    iget v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v2, p1, :cond_1

    iget v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    add-int/2addr v2, p2

    iput v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2963
    :cond_2
    return-void

    .line 2955
    :cond_3
    :goto_1
    return-void
.end method
