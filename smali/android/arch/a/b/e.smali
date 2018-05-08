.class public Landroid/arch/a/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field final o:Ljava/lang/Object;

.field final p:Ljava/lang/Object;

.field q:Landroid/arch/a/b/e;

.field public r:Landroid/arch/a/b/e;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p1, p0, Landroid/arch/a/b/e;->o:Ljava/lang/Object;

    .line 347
    iput-object p2, p0, Landroid/arch/a/b/e;->p:Ljava/lang/Object;

    .line 348
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 374
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 375
    return v0

    .line 377
    :cond_0
    instance-of v1, p1, Landroid/arch/a/b/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 378
    return v2

    .line 380
    :cond_1
    check-cast p1, Landroid/arch/a/b/e;

    .line 381
    iget-object v1, p0, Landroid/arch/a/b/e;->o:Ljava/lang/Object;

    iget-object v3, p1, Landroid/arch/a/b/e;->o:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/arch/a/b/e;->p:Ljava/lang/Object;

    iget-object p1, p1, Landroid/arch/a/b/e;->p:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 353
    iget-object v0, p0, Landroid/arch/a/b/e;->o:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 359
    iget-object v0, p0, Landroid/arch/a/b/e;->p:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 364
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "An entry modification is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/arch/a/b/e;->o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/arch/a/b/e;->p:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
