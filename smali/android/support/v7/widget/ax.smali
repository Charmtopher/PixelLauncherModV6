.class public Landroid/support/v7/widget/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private qA:Landroid/util/SparseArray;

.field qB:I

.field qC:I

.field qD:I

.field qE:I

.field qF:Z

.field qG:Z

.field qH:Z

.field qI:Z

.field qJ:Z

.field qK:Z

.field qL:I

.field qM:J

.field qN:I

.field qO:I

.field qP:I

.field qt:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12052
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/ax;->qt:I

    .line 12063
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ax;->qB:I

    .line 12069
    iput v0, p0, Landroid/support/v7/widget/ax;->qC:I

    .line 12081
    const/4 v1, 0x1

    iput v1, p0, Landroid/support/v7/widget/ax;->qD:I

    .line 12087
    iput v0, p0, Landroid/support/v7/widget/ax;->qE:I

    .line 12089
    iput-boolean v0, p0, Landroid/support/v7/widget/ax;->qF:Z

    .line 12096
    iput-boolean v0, p0, Landroid/support/v7/widget/ax;->qG:Z

    .line 12098
    iput-boolean v0, p0, Landroid/support/v7/widget/ax;->qH:Z

    .line 12100
    iput-boolean v0, p0, Landroid/support/v7/widget/ax;->qI:Z

    .line 12106
    iput-boolean v0, p0, Landroid/support/v7/widget/ax;->qJ:Z

    .line 12108
    iput-boolean v0, p0, Landroid/support/v7/widget/ax;->qK:Z

    return-void
.end method


# virtual methods
.method final aa(I)V
    .locals 3

    .line 12043
    iget v0, p0, Landroid/support/v7/widget/ax;->qD:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 12048
    return-void

    .line 12044
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Layout state should be one of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12045
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but it is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/support/v7/widget/ax;->qD:I

    .line 12046
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getItemCount()I
    .locals 2

    .line 12297
    iget-boolean v0, p0, Landroid/support/v7/widget/ax;->qG:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/ax;->qB:I

    iget v1, p0, Landroid/support/v7/widget/ax;->qC:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/ax;->qE:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 12326
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "State{mTargetPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v7/widget/ax;->qt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/ax;->qA:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/ax;->qE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsMeasuring="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/widget/ax;->qI:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/ax;->qB:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/ax;->qC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/widget/ax;->qF:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/widget/ax;->qG:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/widget/ax;->qJ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/widget/ax;->qK:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
