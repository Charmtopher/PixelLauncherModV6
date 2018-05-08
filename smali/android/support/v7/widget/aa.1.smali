.class public abstract Landroid/support/v7/widget/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field pU:Landroid/support/v7/widget/ab;

.field private pV:Ljava/util/ArrayList;

.field pW:J

.field pX:J

.field pY:J

.field pZ:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12470
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/aa;->pU:Landroid/support/v7/widget/ab;

    .line 12471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/aa;->pV:Ljava/util/ArrayList;

    .line 12474
    const-wide/16 v0, 0x78

    iput-wide v0, p0, Landroid/support/v7/widget/aa;->pW:J

    .line 12475
    iput-wide v0, p0, Landroid/support/v7/widget/aa;->pX:J

    .line 12476
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Landroid/support/v7/widget/aa;->pY:J

    .line 12477
    iput-wide v0, p0, Landroid/support/v7/widget/aa;->pZ:J

    .line 13082
    return-void
.end method

.method static g(Landroid/support/v7/widget/aA;)I
    .locals 3

    .line 12799
    invoke-static {p0}, Landroid/support/v7/widget/aA;->access$1800(Landroid/support/v7/widget/aA;)I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    .line 12800
    invoke-virtual {p0}, Landroid/support/v7/widget/aA;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12801
    const/4 p0, 0x4

    return p0

    .line 12803
    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    .line 12804
    iget v1, p0, Landroid/support/v7/widget/aA;->mOldPosition:I

    .line 12805
    invoke-virtual {p0}, Landroid/support/v7/widget/aA;->getAdapterPosition()I

    move-result p0

    .line 12806
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eq p0, v2, :cond_1

    if-eq v1, p0, :cond_1

    .line 12807
    or-int/lit16 v0, v0, 0x800

    .line 12810
    :cond_1
    return v0
.end method


# virtual methods
.method public abstract a(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;)Z
.end method

.method public a(Landroid/support/v7/widget/aA;Ljava/util/List;)Z
    .locals 0

    .line 13018
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aa;->canReuseUpdatedViewHolder(Landroid/support/v7/widget/aA;)Z

    move-result p1

    return p1
.end method

.method public final bD()V
    .locals 3

    .line 13026
    iget-object v0, p0, Landroid/support/v7/widget/aa;->pV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 13027
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 13028
    iget-object v2, p0, Landroid/support/v7/widget/aa;->pV:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13027
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13030
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aa;->pV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13031
    return-void
.end method

.method public abstract bq()V
.end method

.method public abstract bs()V
.end method

.method public abstract c(Landroid/support/v7/widget/aA;)V
.end method

.method public canReuseUpdatedViewHolder(Landroid/support/v7/widget/aA;)Z
    .locals 0

    .line 12988
    const/4 p1, 0x1

    return p1
.end method

.method public abstract d(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;)Z
.end method

.method public abstract e(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;)Z
.end method

.method public final f(Landroid/support/v7/widget/aA;)Landroid/support/v7/widget/ac;
    .locals 1

    .line 12599
    new-instance v0, Landroid/support/v7/widget/ac;

    invoke-direct {v0}, Landroid/support/v7/widget/ac;-><init>()V

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ac;->j(Landroid/support/v7/widget/aA;)Landroid/support/v7/widget/ac;

    move-result-object p1

    return-object p1
.end method

.method public abstract f(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;)Z
.end method

.method public final h(Landroid/support/v7/widget/aA;)V
    .locals 1

    .line 12883
    iget-object v0, p0, Landroid/support/v7/widget/aa;->pU:Landroid/support/v7/widget/ab;

    if-eqz v0, :cond_0

    .line 12885
    iget-object v0, p0, Landroid/support/v7/widget/aa;->pU:Landroid/support/v7/widget/ab;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ab;->i(Landroid/support/v7/widget/aA;)V

    .line 12887
    :cond_0
    return-void
.end method

.method public abstract isRunning()Z
.end method
