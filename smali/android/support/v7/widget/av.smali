.class public Landroid/support/v7/widget/av;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDuration:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private qw:I

.field qx:I

.field private qy:Z

.field private qz:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 11736
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/av;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 11737
    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 1

    .line 11756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11721
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/av;->qx:I

    .line 11725
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/av;->qy:Z

    .line 11729
    iput v0, p0, Landroid/support/v7/widget/av;->qz:I

    .line 11757
    iput p1, p0, Landroid/support/v7/widget/av;->qw:I

    .line 11758
    iput p2, p0, Landroid/support/v7/widget/av;->mDy:I

    .line 11759
    iput p3, p0, Landroid/support/v7/widget/av;->mDuration:I

    .line 11760
    iput-object p4, p0, Landroid/support/v7/widget/av;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11761
    return-void
.end method


# virtual methods
.method public final a(IIILandroid/view/animation/Interpolator;)V
    .locals 0

    .line 11883
    iput p1, p0, Landroid/support/v7/widget/av;->qw:I

    .line 11884
    iput p2, p0, Landroid/support/v7/widget/av;->mDy:I

    .line 11885
    iput p3, p0, Landroid/support/v7/widget/av;->mDuration:I

    .line 11886
    iput-object p4, p0, Landroid/support/v7/widget/av;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11887
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/av;->qy:Z

    .line 11888
    return-void
.end method

.method final a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 5

    .line 11787
    iget v0, p0, Landroid/support/v7/widget/av;->qx:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 11788
    iget v0, p0, Landroid/support/v7/widget/av;->qx:I

    .line 11789
    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v7/widget/av;->qx:I

    .line 11790
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    .line 11791
    iput-boolean v1, p0, Landroid/support/v7/widget/av;->qy:Z

    .line 11792
    return-void

    .line 11794
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/av;->qy:Z

    if-eqz v0, :cond_7

    .line 11795
    iget-object v0, p0, Landroid/support/v7/widget/av;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/av;->mDuration:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/av;->mDuration:I

    if-lez v0, :cond_6

    .line 11796
    iget-object v0, p0, Landroid/support/v7/widget/av;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_4

    .line 11797
    iget v0, p0, Landroid/support/v7/widget/av;->mDuration:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_3

    .line 11798
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/az;

    iget v0, p0, Landroid/support/v7/widget/av;->qw:I

    iget v2, p0, Landroid/support/v7/widget/av;->mDy:I

    invoke-virtual {p1, v0, v2, v1, v1}, Landroid/support/v7/widget/az;->b(IIII)I

    move-result v3

    invoke-virtual {p1, v0, v2, v3}, Landroid/support/v7/widget/az;->e(III)V

    goto :goto_1

    .line 11800
    :cond_3
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/az;

    iget v0, p0, Landroid/support/v7/widget/av;->qw:I

    iget v2, p0, Landroid/support/v7/widget/av;->mDy:I

    iget v3, p0, Landroid/support/v7/widget/av;->mDuration:I

    invoke-virtual {p1, v0, v2, v3}, Landroid/support/v7/widget/az;->e(III)V

    goto :goto_1

    .line 11803
    :cond_4
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/az;

    iget v0, p0, Landroid/support/v7/widget/av;->qw:I

    iget v2, p0, Landroid/support/v7/widget/av;->mDy:I

    iget v3, p0, Landroid/support/v7/widget/av;->mDuration:I

    iget-object v4, p0, Landroid/support/v7/widget/av;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/support/v7/widget/az;->b(IIILandroid/view/animation/Interpolator;)V

    .line 11806
    :goto_1
    iget p1, p0, Landroid/support/v7/widget/av;->qz:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/v7/widget/av;->qz:I

    .line 11807
    iget p1, p0, Landroid/support/v7/widget/av;->qz:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_5

    .line 11810
    const-string p1, "RecyclerView"

    const-string v0, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11813
    :cond_5
    iput-boolean v1, p0, Landroid/support/v7/widget/av;->qy:Z

    return-void

    .line 11795
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Scroll duration must be a positive number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11815
    :cond_7
    iput v1, p0, Landroid/support/v7/widget/av;->qz:I

    .line 11817
    return-void
.end method
