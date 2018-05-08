.class public abstract Landroid/support/v4/c/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field jC:Landroid/support/v4/c/l;

.field jD:Landroid/support/v4/c/m;

.field jE:Landroid/support/v4/c/o;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 3

    .line 476
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    .line 477
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 478
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 479
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 480
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 483
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-eq v0, p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 4

    .line 513
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 514
    return v0

    .line 516
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 517
    check-cast p1, Ljava/util/Set;

    .line 520
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2

    .line 523
    :catch_0
    move-exception p0

    .line 524
    return v2

    .line 521
    :catch_1
    move-exception p0

    .line 522
    return v2

    .line 527
    :cond_2
    return v2
.end method


# virtual methods
.method protected abstract a(ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method public final a([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3

    .line 497
    invoke-virtual {p0}, Landroid/support/v4/c/j;->aA()I

    move-result v0

    .line 498
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 499
    nop

    .line 500
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 501
    nop

    .line 503
    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 504
    invoke-virtual {p0, v1, p2}, Landroid/support/v4/c/j;->g(II)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    .line 503
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 506
    :cond_1
    array-length p2, p1

    if-le p2, v0, :cond_2

    .line 507
    const/4 p2, 0x0

    aput-object p2, p1, v0

    .line 509
    :cond_2
    return-object p1
.end method

.method protected abstract aA()I
.end method

.method protected abstract aB()Ljava/util/Map;
.end method

.method protected abstract aC()V
.end method

.method public final aG()Ljava/util/Set;
    .locals 1

    .line 538
    iget-object v0, p0, Landroid/support/v4/c/j;->jD:Landroid/support/v4/c/m;

    if-nez v0, :cond_0

    .line 539
    new-instance v0, Landroid/support/v4/c/m;

    invoke-direct {v0, p0}, Landroid/support/v4/c/m;-><init>(Landroid/support/v4/c/j;)V

    iput-object v0, p0, Landroid/support/v4/c/j;->jD:Landroid/support/v4/c/m;

    .line 541
    :cond_0
    iget-object v0, p0, Landroid/support/v4/c/j;->jD:Landroid/support/v4/c/m;

    return-object v0
.end method

.method protected abstract b(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method protected abstract g(II)Ljava/lang/Object;
.end method

.method protected abstract m(Ljava/lang/Object;)I
.end method

.method protected abstract n(Ljava/lang/Object;)I
.end method

.method protected abstract p(I)V
.end method

.method public final u(I)[Ljava/lang/Object;
    .locals 4

    .line 488
    invoke-virtual {p0}, Landroid/support/v4/c/j;->aA()I

    move-result v0

    .line 489
    new-array v1, v0, [Ljava/lang/Object;

    .line 490
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 491
    invoke-virtual {p0, v2, p1}, Landroid/support/v4/c/j;->g(II)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 490
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 493
    :cond_0
    return-object v1
.end method
