.class Landroid/support/v7/widget/aF;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mOffset:I

.field mPosition:I

.field px:Z

.field py:Z

.field rn:Z

.field ro:[I

.field final synthetic rp:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# virtual methods
.method final reset()V
    .locals 2

    .line 3271
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/aF;->mPosition:I

    .line 3272
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/support/v7/widget/aF;->mOffset:I

    .line 3273
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/aF;->px:Z

    .line 3274
    iput-boolean v1, p0, Landroid/support/v7/widget/aF;->rn:Z

    .line 3275
    iput-boolean v1, p0, Landroid/support/v7/widget/aF;->py:Z

    .line 3276
    iget-object v1, p0, Landroid/support/v7/widget/aF;->ro:[I

    if-eqz v1, :cond_0

    .line 3277
    iget-object v1, p0, Landroid/support/v7/widget/aF;->ro:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 3279
    :cond_0
    return-void
.end method
