.class public abstract Landroid/support/v7/widget/au;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bh:Z

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field mTargetView:Landroid/view/View;

.field pR:Landroid/support/v7/widget/af;

.field qt:I

.field qu:Z

.field private final qv:Landroid/support/v7/widget/av;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11433
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/au;->qt:I

    .line 11448
    new-instance v0, Landroid/support/v7/widget/av;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/av;-><init>(II)V

    iput-object v0, p0, Landroid/support/v7/widget/au;->qv:Landroid/support/v7/widget/av;

    .line 11449
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/au;II)V
    .locals 5

    .line 11431
    iget-object v0, p0, Landroid/support/v7/widget/au;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v1, p0, Landroid/support/v7/widget/au;->bh:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/au;->qt:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/au;->stop()V

    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/au;->qu:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/au;->mTargetView:Landroid/view/View;

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/au;->pR:Landroid/support/v7/widget/af;

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/support/v7/widget/au;->qt:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/au;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    :cond_2
    iget v3, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-int v3, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v2}, Landroid/support/v7/widget/RecyclerView;->access$700(Landroid/support/v7/widget/RecyclerView;II[I)V

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/au;->qu:Z

    iget-object v3, p0, Landroid/support/v7/widget/au;->mTargetView:Landroid/view/View;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/au;->mTargetView:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/au;->getChildPosition(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/au;->qt:I

    if-ne v3, v4, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/au;->mTargetView:Landroid/view/View;

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-object v3, p0, Landroid/support/v7/widget/au;->qv:Landroid/support/v7/widget/av;

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/au;->a(Landroid/view/View;Landroid/support/v7/widget/av;)V

    iget-object v2, p0, Landroid/support/v7/widget/au;->qv:Landroid/support/v7/widget/av;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/av;->a(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/au;->stop()V

    goto :goto_0

    :cond_4
    const-string v3, "RecyclerView"

    const-string v4, "Passed over target position while smooth scrolling."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Landroid/support/v7/widget/au;->mTargetView:Landroid/view/View;

    :cond_5
    :goto_0
    iget-boolean v2, p0, Landroid/support/v7/widget/au;->bh:Z

    if-eqz v2, :cond_8

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-object v2, p0, Landroid/support/v7/widget/au;->qv:Landroid/support/v7/widget/av;

    invoke-virtual {p0, p1, p2, v2}, Landroid/support/v7/widget/au;->a(IILandroid/support/v7/widget/av;)V

    iget-object p1, p0, Landroid/support/v7/widget/au;->qv:Landroid/support/v7/widget/av;

    iget p1, p1, Landroid/support/v7/widget/av;->qx:I

    const/4 p2, 0x1

    if-ltz p1, :cond_6

    move v1, p2

    nop

    :cond_6
    iget-object p1, p0, Landroid/support/v7/widget/au;->qv:Landroid/support/v7/widget/av;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/av;->a(Landroid/support/v7/widget/RecyclerView;)V

    if-eqz v1, :cond_8

    iget-boolean p1, p0, Landroid/support/v7/widget/au;->bh:Z

    if-eqz p1, :cond_7

    iput-boolean p2, p0, Landroid/support/v7/widget/au;->qu:Z

    iget-object p0, v0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/az;

    invoke-virtual {p0}, Landroid/support/v7/widget/az;->bL()V

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/au;->stop()V

    :cond_8
    return-void
.end method


# virtual methods
.method protected abstract a(IILandroid/support/v7/widget/av;)V
.end method

.method protected abstract a(Landroid/view/View;Landroid/support/v7/widget/av;)V
.end method

.method public final computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2

    .line 11493
    iget-object v0, p0, Landroid/support/v7/widget/au;->pR:Landroid/support/v7/widget/af;

    .line 11494
    instance-of v1, v0, Landroid/support/v7/widget/aw;

    if-eqz v1, :cond_0

    .line 11495
    check-cast v0, Landroid/support/v7/widget/aw;

    .line 11496
    invoke-interface {v0, p1}, Landroid/support/v7/widget/aw;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 11498
    :cond_0
    const-string p1, "RecyclerView"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Landroid/support/v7/widget/aw;

    .line 11499
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11498
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11500
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getChildPosition(Landroid/view/View;)I
    .locals 1

    .line 11624
    iget-object v0, p0, Landroid/support/v7/widget/au;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method protected abstract onStop()V
.end method

.method protected final stop()V
    .locals 3

    .line 11519
    iget-boolean v0, p0, Landroid/support/v7/widget/au;->bh:Z

    if-nez v0, :cond_0

    .line 11520
    return-void

    .line 11522
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/au;->bh:Z

    .line 11523
    invoke-virtual {p0}, Landroid/support/v7/widget/au;->onStop()V

    .line 11524
    iget-object v1, p0, Landroid/support/v7/widget/au;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v7/widget/ax;->qt:I

    .line 11525
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/au;->mTargetView:Landroid/view/View;

    .line 11526
    iput v2, p0, Landroid/support/v7/widget/au;->qt:I

    .line 11527
    iput-boolean v0, p0, Landroid/support/v7/widget/au;->qu:Z

    .line 11529
    iget-object v0, p0, Landroid/support/v7/widget/au;->pR:Landroid/support/v7/widget/af;

    invoke-static {v0, p0}, Landroid/support/v7/widget/af;->access$1600(Landroid/support/v7/widget/af;Landroid/support/v7/widget/au;)V

    .line 11531
    iput-object v1, p0, Landroid/support/v7/widget/au;->pR:Landroid/support/v7/widget/af;

    .line 11532
    iput-object v1, p0, Landroid/support/v7/widget/au;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 11533
    return-void
.end method
