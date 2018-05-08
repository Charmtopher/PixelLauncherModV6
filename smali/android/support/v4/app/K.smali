.class Landroid/support/v4/app/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/l;


# instance fields
.field final fq:Z

.field final fr:Landroid/support/v4/app/c;

.field fs:I


# direct methods
.method constructor <init>(Landroid/support/v4/app/c;Z)V
    .locals 0

    .line 3882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3883
    iput-boolean p2, p0, Landroid/support/v4/app/K;->fq:Z

    .line 3884
    iput-object p1, p0, Landroid/support/v4/app/K;->fr:Landroid/support/v4/app/c;

    .line 3885
    return-void
.end method


# virtual methods
.method public final aa()V
    .locals 1

    .line 3894
    iget v0, p0, Landroid/support/v4/app/K;->fs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/app/K;->fs:I

    .line 3895
    iget v0, p0, Landroid/support/v4/app/K;->fs:I

    if-eqz v0, :cond_0

    .line 3896
    return-void

    .line 3898
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/K;->fr:Landroid/support/v4/app/c;

    iget-object v0, v0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    invoke-static {v0}, Landroid/support/v4/app/v;->b(Landroid/support/v4/app/v;)V

    .line 3899
    return-void
.end method

.method public final aq()V
    .locals 9

    .line 3925
    iget v0, p0, Landroid/support/v4/app/K;->fs:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    .line 3926
    move v0, v2

    goto :goto_0

    .line 3925
    :cond_0
    nop

    .line 3926
    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/K;->fr:Landroid/support/v4/app/c;

    iget-object v3, v3, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    .line 3927
    iget-object v4, v3, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3928
    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_5

    .line 3929
    iget-object v6, v3, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    .line 3930
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v4/app/Fragment;->b(Landroid/support/v4/app/l;)V

    .line 3931
    if-eqz v0, :cond_4

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->Y()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3932
    iget-object v7, v6, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    if-eqz v7, :cond_3

    iget-object v7, v6, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    iget-object v7, v7, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, v6, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    iget-object v8, v8, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    iget-object v8, v8, Landroid/support/v4/app/t;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    if-eq v7, v8, :cond_2

    iget-object v7, v6, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    iget-object v7, v7, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    iget-object v7, v7, Landroid/support/v4/app/t;->mHandler:Landroid/os/Handler;

    new-instance v8, Landroid/support/v4/app/i;

    invoke-direct {v8, v6}, Landroid/support/v4/app/i;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_2
    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->K()V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->P()Landroid/support/v4/app/k;

    move-result-object v6

    iput-boolean v1, v6, Landroid/support/v4/app/k;->ee:Z

    .line 3928
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3935
    :cond_5
    iget-object v1, p0, Landroid/support/v4/app/K;->fr:Landroid/support/v4/app/c;

    iget-object v1, v1, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    iget-object v3, p0, Landroid/support/v4/app/K;->fr:Landroid/support/v4/app/c;

    iget-boolean v4, p0, Landroid/support/v4/app/K;->fq:Z

    xor-int/2addr v0, v2

    invoke-static {v1, v3, v4, v0, v2}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/v;Landroid/support/v4/app/c;ZZZ)V

    .line 3936
    return-void
.end method

.method public final ar()V
    .locals 4

    .line 3943
    iget-object v0, p0, Landroid/support/v4/app/K;->fr:Landroid/support/v4/app/c;

    iget-object v0, v0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    iget-object v1, p0, Landroid/support/v4/app/K;->fr:Landroid/support/v4/app/c;

    iget-boolean v2, p0, Landroid/support/v4/app/K;->fq:Z

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/v;Landroid/support/v4/app/c;ZZZ)V

    .line 3944
    return-void
.end method

.method public final startListening()V
    .locals 1

    .line 3908
    iget v0, p0, Landroid/support/v4/app/K;->fs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/K;->fs:I

    .line 3909
    return-void
.end method
