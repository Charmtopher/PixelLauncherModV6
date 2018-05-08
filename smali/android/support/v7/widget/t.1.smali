.class Landroid/support/v7/widget/t;
.super Landroid/support/v7/widget/an;
.source "SourceFile"


# instance fields
.field final synthetic oX:Landroid/support/v7/widget/r;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/r;)V
    .locals 0

    .line 126
    iput-object p1, p0, Landroid/support/v7/widget/t;->oX:Landroid/support/v7/widget/r;

    invoke-direct {p0}, Landroid/support/v7/widget/an;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrolled$5927c743(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 9

    .line 129
    iget-object p2, p0, Landroid/support/v7/widget/t;->oX:Landroid/support/v7/widget/r;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 130
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    .line 129
    iget-object v1, p2, Landroid/support/v7/widget/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v1

    iget v2, p2, Landroid/support/v7/widget/r;->oP:I

    sub-int v3, v1, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_0

    iget v3, p2, Landroid/support/v7/widget/r;->oP:I

    iget v6, p2, Landroid/support/v7/widget/r;->oy:I

    if-lt v3, v6, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iput-boolean v3, p2, Landroid/support/v7/widget/r;->oQ:Z

    iget-object v3, p2, Landroid/support/v7/widget/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v3

    iget v6, p2, Landroid/support/v7/widget/r;->oO:I

    sub-int v7, v3, v6

    if-lez v7, :cond_1

    iget v7, p2, Landroid/support/v7/widget/r;->oO:I

    iget v8, p2, Landroid/support/v7/widget/r;->oy:I

    if-lt v7, v8, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    iput-boolean v7, p2, Landroid/support/v7/widget/r;->oR:Z

    iget-boolean v7, p2, Landroid/support/v7/widget/r;->oQ:Z

    if-nez v7, :cond_3

    iget-boolean v7, p2, Landroid/support/v7/widget/r;->oR:Z

    if-nez v7, :cond_3

    iget p1, p2, Landroid/support/v7/widget/r;->mState:I

    if-eqz p1, :cond_2

    invoke-virtual {p2, v4}, Landroid/support/v7/widget/r;->setState(I)V

    :cond_2
    return-void

    :cond_3
    iget-boolean v4, p2, Landroid/support/v7/widget/r;->oQ:Z

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v4, :cond_4

    int-to-float p1, p1

    int-to-float v4, v2

    div-float v8, v4, v7

    add-float/2addr p1, v8

    mul-float/2addr v4, p1

    int-to-float p1, v1

    div-float/2addr v4, p1

    float-to-int p1, v4

    iput p1, p2, Landroid/support/v7/widget/r;->oJ:I

    mul-int p1, v2, v2

    div-int/2addr p1, v1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p2, Landroid/support/v7/widget/r;->oI:I

    :cond_4
    iget-boolean p1, p2, Landroid/support/v7/widget/r;->oR:Z

    if-eqz p1, :cond_5

    int-to-float p1, v0

    int-to-float v0, v6

    div-float v1, v0, v7

    add-float/2addr p1, v1

    mul-float/2addr v0, p1

    int-to-float p1, v3

    div-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p2, Landroid/support/v7/widget/r;->oM:I

    mul-int p1, v6, v6

    div-int/2addr p1, v3

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p2, Landroid/support/v7/widget/r;->oL:I

    :cond_5
    iget p1, p2, Landroid/support/v7/widget/r;->mState:I

    if-eqz p1, :cond_6

    iget p1, p2, Landroid/support/v7/widget/r;->mState:I

    if-ne p1, v5, :cond_7

    :cond_6
    invoke-virtual {p2, v5}, Landroid/support/v7/widget/r;->setState(I)V

    .line 131
    :cond_7
    return-void
.end method
