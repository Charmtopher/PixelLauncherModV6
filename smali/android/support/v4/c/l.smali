.class final Landroid/support/v4/c/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field final synthetic jG:Landroid/support/v4/c/j;


# direct methods
.method constructor <init>(Landroid/support/v4/c/j;)V
    .locals 0

    .line 165
    iput-object p1, p0, Landroid/support/v4/c/l;->jG:Landroid/support/v4/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 165
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 4

    .line 173
    iget-object v0, p0, Landroid/support/v4/c/l;->jG:Landroid/support/v4/c/j;

    invoke-virtual {v0}, Landroid/support/v4/c/j;->aA()I

    move-result v0

    .line 174
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 175
    iget-object v2, p0, Landroid/support/v4/c/l;->jG:Landroid/support/v4/c/j;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/c/j;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    goto :goto_0

    .line 177
    :cond_0
    iget-object p1, p0, Landroid/support/v4/c/l;->jG:Landroid/support/v4/c/j;

    invoke-virtual {p1}, Landroid/support/v4/c/j;->aA()I

    move-result p1

    if-eq v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final clear()V
    .locals 1

    .line 182
    iget-object v0, p0, Landroid/support/v4/c/l;->jG:Landroid/support/v4/c/j;

    invoke-virtual {v0}, Landroid/support/v4/c/j;->aC()V

    .line 183
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    .line 187
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 188
    return v1

    .line 189
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 190
    iget-object v0, p0, Landroid/support/v4/c/l;->jG:Landroid/support/v4/c/j;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/c/j;->m(Ljava/lang/Object;)I

    move-result v0

    .line 191
    if-gez v0, :cond_1

    .line 192
    return v1

    .line 194
    :cond_1
    iget-object v1, p0, Landroid/support/v4/c/l;->jG:Landroid/support/v4/c/j;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/c/j;->g(II)Ljava/lang/Object;

    move-result-object v0

    .line 195
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/support/v4/c/e;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    .line 200
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 201
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/c/l;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    const/4 p1, 0x0

    return p1

    .line 206
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 251
    invoke-static {p0, p1}, Landroid/support/v4/c/j;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 6

    .line 256
    nop

    .line 257
    iget-object v0, p0, Landroid/support/v4/c/l;->jG:Landroid/support/v4/c/j;

    invoke-virtual {v0}, Landroid/support/v4/c/j;->aA()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v0, :cond_2

    .line 258
    iget-object v4, p0, Landroid/support/v4/c/l;->jG:Landroid/support/v4/c/j;

    invoke-virtual {v4, v0, v2}, Landroid/support/v4/c/j;->g(II)Ljava/lang/Object;

    move-result-object v4

    .line 259
    iget-object v5, p0, Landroid/support/v4/c/l;->jG:Landroid/support/v4/c/j;

    invoke-virtual {v5, v0, v1}, Landroid/support/v4/c/j;->g(II)Ljava/lang/Object;

    move-result-object v5

    .line 260
    if-nez v4, :cond_0

    .line 261
    move v4, v2

    goto :goto_1

    .line 260
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 261
    :goto_1
    if-nez v5, :cond_1

    move v5, v2

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_2
    xor-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 257
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 263
    :cond_2
    return v3
.end method

.method public final isEmpty()Z
    .locals 1

    .line 211
    iget-object v0, p0, Landroid/support/v4/c/l;->jG:Landroid/support/v4/c/j;

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
    .locals 2

    .line 216
    new-instance v0, Landroid/support/v4/c/n;

    iget-object v1, p0, Landroid/support/v4/c/l;->jG:Landroid/support/v4/c/j;

    invoke-direct {v0, v1}, Landroid/support/v4/c/n;-><init>(Landroid/support/v4/c/j;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    .line 221
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 0

    .line 226
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 0

    .line 231
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final size()I
    .locals 1

    .line 236
    iget-object v0, p0, Landroid/support/v4/c/l;->jG:Landroid/support/v4/c/j;

    invoke-virtual {v0}, Landroid/support/v4/c/j;->aA()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .line 241
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    .line 246
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
