.class Landroid/support/v7/widget/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/ai;


# instance fields
.field mCount:I

.field pe:I

.field pf:I

.field pg:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final S(I)Z
    .locals 4

    .line 137
    iget-object v0, p0, Landroid/support/v7/widget/y;->pg:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 138
    iget v0, p0, Landroid/support/v7/widget/y;->mCount:I

    mul-int/lit8 v0, v0, 0x2

    .line 139
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 140
    iget-object v3, p0, Landroid/support/v7/widget/y;->pg:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 139
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 143
    :cond_1
    return v1
.end method

.method final a(Landroid/support/v7/widget/RecyclerView;Z)V
    .locals 4

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/y;->mCount:I

    .line 78
    iget-object v0, p0, Landroid/support/v7/widget/y;->pg:[I

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Landroid/support/v7/widget/y;->pg:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 82
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    .line 83
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 85
    iget-boolean v1, v0, Landroid/support/v7/widget/af;->mItemPrefetchEnabled:Z

    if-eqz v1, :cond_3

    .line 86
    if-eqz p2, :cond_1

    .line 89
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    invoke-virtual {v1}, Landroid/support/v7/widget/a;->bm()Z

    move-result v1

    if-nez v1, :cond_2

    .line 90
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    invoke-virtual {v1}, Landroid/support/v7/widget/V;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/widget/af;->collectInitialPrefetchPositions(ILandroid/support/v7/widget/ai;)V

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v1

    if-nez v1, :cond_2

    .line 95
    iget v1, p0, Landroid/support/v7/widget/y;->pe:I

    iget v2, p0, Landroid/support/v7/widget/y;->pf:I

    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/support/v7/widget/af;->collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/ax;Landroid/support/v7/widget/ai;)V

    .line 100
    :cond_2
    :goto_0
    iget v1, p0, Landroid/support/v7/widget/y;->mCount:I

    iget v2, v0, Landroid/support/v7/widget/af;->mPrefetchMaxCountObserved:I

    if-le v1, v2, :cond_3

    .line 101
    iget v1, p0, Landroid/support/v7/widget/y;->mCount:I

    iput v1, v0, Landroid/support/v7/widget/af;->mPrefetchMaxCountObserved:I

    .line 102
    iput-boolean p2, v0, Landroid/support/v7/widget/af;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 103
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    invoke-virtual {p1}, Landroid/support/v7/widget/aq;->bH()V

    .line 106
    :cond_3
    return-void
.end method

.method final bu()V
    .locals 2

    .line 150
    iget-object v0, p0, Landroid/support/v7/widget/y;->pg:[I

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Landroid/support/v7/widget/y;->pg:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 153
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/y;->mCount:I

    .line 154
    return-void
.end method

.method public final q(II)V
    .locals 5

    .line 110
    if-ltz p1, :cond_3

    .line 114
    if-ltz p2, :cond_2

    .line 119
    iget v0, p0, Landroid/support/v7/widget/y;->mCount:I

    mul-int/lit8 v0, v0, 0x2

    .line 120
    iget-object v1, p0, Landroid/support/v7/widget/y;->pg:[I

    if-nez v1, :cond_0

    .line 121
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v7/widget/y;->pg:[I

    .line 122
    iget-object v1, p0, Landroid/support/v7/widget/y;->pg:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/y;->pg:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 124
    iget-object v1, p0, Landroid/support/v7/widget/y;->pg:[I

    .line 125
    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/support/v7/widget/y;->pg:[I

    .line 126
    iget-object v2, p0, Landroid/support/v7/widget/y;->pg:[I

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/y;->pg:[I

    aput p1, v1, v0

    .line 131
    iget-object p1, p0, Landroid/support/v7/widget/y;->pg:[I

    add-int/lit8 v0, v0, 0x1

    aput p2, p1, v0

    .line 133
    iget p1, p0, Landroid/support/v7/widget/y;->mCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/v7/widget/y;->mCount:I

    .line 134
    return-void

    .line 115
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pixel distance must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Layout positions must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
