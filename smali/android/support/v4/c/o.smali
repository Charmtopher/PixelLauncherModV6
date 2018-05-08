.class final Landroid/support/v4/c/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;


# instance fields
.field final synthetic jG:Landroid/support/v4/c/j;


# direct methods
.method constructor <init>(Landroid/support/v4/c/j;)V
    .locals 0

    .line 355
    iput-object p1, p0, Landroid/support/v4/c/o;->jG:Landroid/support/v4/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 0

    .line 359
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 0

    .line 364
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final clear()V
    .locals 1

    .line 369
    iget-object v0, p0, Landroid/support/v4/c/o;->jG:Landroid/support/v4/c/j;

    invoke-virtual {v0}, Landroid/support/v4/c/j;->aC()V

    .line 370
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 374
    iget-object v0, p0, Landroid/support/v4/c/o;->jG:Landroid/support/v4/c/j;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/j;->n(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    .line 379
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 380
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/c/o;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    const/4 p1, 0x0

    return p1

    .line 385
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 390
    iget-object v0, p0, Landroid/support/v4/c/o;->jG:Landroid/support/v4/c/j;

    invoke-virtual {v0}, Landroid/support/v4/c/j;->aA()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .line 395
    new-instance v0, Landroid/support/v4/c/k;

    iget-object v1, p0, Landroid/support/v4/c/o;->jG:Landroid/support/v4/c/j;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v4/c/k;-><init>(Landroid/support/v4/c/j;I)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .line 400
    iget-object v0, p0, Landroid/support/v4/c/o;->jG:Landroid/support/v4/c/j;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/j;->n(Ljava/lang/Object;)I

    move-result p1

    .line 401
    if-ltz p1, :cond_0

    .line 402
    iget-object v0, p0, Landroid/support/v4/c/o;->jG:Landroid/support/v4/c/j;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/j;->p(I)V

    .line 403
    const/4 p1, 0x1

    return p1

    .line 405
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 5

    .line 410
    iget-object v0, p0, Landroid/support/v4/c/o;->jG:Landroid/support/v4/c/j;

    invoke-virtual {v0}, Landroid/support/v4/c/j;->aA()I

    move-result v0

    .line 411
    nop

    .line 412
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 413
    iget-object v3, p0, Landroid/support/v4/c/o;->jG:Landroid/support/v4/c/j;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/support/v4/c/j;->g(II)Ljava/lang/Object;

    move-result-object v3

    .line 414
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 415
    iget-object v2, p0, Landroid/support/v4/c/o;->jG:Landroid/support/v4/c/j;

    invoke-virtual {v2, v1}, Landroid/support/v4/c/j;->p(I)V

    .line 416
    add-int/lit8 v1, v1, -0x1

    .line 417
    add-int/lit8 v0, v0, -0x1

    .line 418
    nop

    .line 412
    move v2, v4

    :cond_0
    add-int/2addr v1, v4

    goto :goto_0

    .line 421
    :cond_1
    return v2
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 5

    .line 426
    iget-object v0, p0, Landroid/support/v4/c/o;->jG:Landroid/support/v4/c/j;

    invoke-virtual {v0}, Landroid/support/v4/c/j;->aA()I

    move-result v0

    .line 427
    nop

    .line 428
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 429
    iget-object v3, p0, Landroid/support/v4/c/o;->jG:Landroid/support/v4/c/j;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/support/v4/c/j;->g(II)Ljava/lang/Object;

    move-result-object v3

    .line 430
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 431
    iget-object v2, p0, Landroid/support/v4/c/o;->jG:Landroid/support/v4/c/j;

    invoke-virtual {v2, v1}, Landroid/support/v4/c/j;->p(I)V

    .line 432
    add-int/lit8 v1, v1, -0x1

    .line 433
    add-int/lit8 v0, v0, -0x1

    .line 434
    nop

    .line 428
    move v2, v4

    :cond_0
    add-int/2addr v1, v4

    goto :goto_0

    .line 437
    :cond_1
    return v2
.end method

.method public final size()I
    .locals 1

    .line 442
    iget-object v0, p0, Landroid/support/v4/c/o;->jG:Landroid/support/v4/c/j;

    invoke-virtual {v0}, Landroid/support/v4/c/j;->aA()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 2

    .line 447
    iget-object v0, p0, Landroid/support/v4/c/o;->jG:Landroid/support/v4/c/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/c/j;->u(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .line 452
    iget-object v0, p0, Landroid/support/v4/c/o;->jG:Landroid/support/v4/c/j;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/c/j;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
