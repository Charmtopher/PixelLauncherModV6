.class public final Lcom/google/android/gms/common/a/b;
.super Ljava/util/AbstractSet;


# instance fields
.field private final Mz:Landroid/support/v4/c/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    new-instance v0, Landroid/support/v4/c/a;

    invoke-direct {v0}, Landroid/support/v4/c/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/a/b;->Mz:Landroid/support/v4/c/a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    new-instance v0, Landroid/support/v4/c/a;

    invoke-direct {v0, p1}, Landroid/support/v4/c/a;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/a/b;->Mz:Landroid/support/v4/c/a;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/a/b;->Mz:Landroid/support/v4/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/a/b;->Mz:Landroid/support/v4/c/a;

    invoke-virtual {v0, p1, p1}, Landroid/support/v4/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 7

    instance-of v0, p1, Lcom/google/android/gms/common/a/b;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/gms/common/a/b;

    invoke-virtual {p0}, Lcom/google/android/gms/common/a/b;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/a/b;->Mz:Landroid/support/v4/c/a;

    iget-object p1, p1, Lcom/google/android/gms/common/a/b;->Mz:Landroid/support/v4/c/a;

    iget v2, p1, Landroid/support/v4/c/u;->mSize:I

    iget v3, v1, Landroid/support/v4/c/u;->mSize:I

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/support/v4/c/u;->ensureCapacity(I)V

    iget v3, v1, Landroid/support/v4/c/u;->mSize:I

    const/4 v4, 0x0

    if-nez v3, :cond_0

    if-lez v2, :cond_1

    iget-object v3, p1, Landroid/support/v4/c/u;->jl:[I

    iget-object v5, v1, Landroid/support/v4/c/u;->jl:[I

    invoke-static {v3, v4, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    iget-object v3, v1, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    invoke-static {p1, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, v1, Landroid/support/v4/c/u;->mSize:I

    goto :goto_1

    :cond_0
    move v3, v4

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p1, v3}, Landroid/support/v4/c/u;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v3}, Landroid/support/v4/c/u;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/support/v4/c/u;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/a/b;->size()I

    move-result p1

    if-le p1, v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v4

    :cond_3
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/a/b;->Mz:Landroid/support/v4/c/a;

    invoke-virtual {v0}, Landroid/support/v4/c/a;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/a/b;->Mz:Landroid/support/v4/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/a;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/a/b;->Mz:Landroid/support/v4/c/a;

    invoke-virtual {v0}, Landroid/support/v4/c/a;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/a/b;->Mz:Landroid/support/v4/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/a/b;->Mz:Landroid/support/v4/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/a/b;->Mz:Landroid/support/v4/c/a;

    invoke-virtual {v0}, Landroid/support/v4/c/a;->size()I

    move-result v0

    return v0
.end method
