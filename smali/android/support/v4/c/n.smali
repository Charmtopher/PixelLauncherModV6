.class final Landroid/support/v4/c/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# instance fields
.field cx:I

.field final synthetic jG:Landroid/support/v4/c/j;

.field jH:I

.field jI:Z


# direct methods
.method constructor <init>(Landroid/support/v4/c/j;)V
    .locals 1

    .line 77
    iput-object p1, p0, Landroid/support/v4/c/n;->jG:Landroid/support/v4/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/c/n;->jI:Z

    .line 78
    invoke-virtual {p1}, Landroid/support/v4/c/j;->aA()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/support/v4/c/n;->jH:I

    .line 79
    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v4/c/n;->cx:I

    .line 80
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 135
    iget-boolean v0, p0, Landroid/support/v4/c/n;->jI:Z

    if-eqz v0, :cond_2

    .line 139
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 140
    return v1

    .line 142
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 143
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/c/n;->jG:Landroid/support/v4/c/j;

    iget v3, p0, Landroid/support/v4/c/n;->cx:I

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/c/j;->g(II)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/c/e;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v4/c/n;->jG:Landroid/support/v4/c/j;

    iget v2, p0, Landroid/support/v4/c/n;->cx:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/c/j;->g(II)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/c/e;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v3

    .line 143
    :cond_1
    return v1

    .line 136
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This container does not support retaining Map.Entry objects"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 3

    .line 108
    iget-boolean v0, p0, Landroid/support/v4/c/n;->jI:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Landroid/support/v4/c/n;->jG:Landroid/support/v4/c/j;

    iget v1, p0, Landroid/support/v4/c/n;->cx:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/c/j;->g(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 3

    .line 117
    iget-boolean v0, p0, Landroid/support/v4/c/n;->jI:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Landroid/support/v4/c/n;->jG:Landroid/support/v4/c/j;

    iget v1, p0, Landroid/support/v4/c/n;->cx:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/c/j;->g(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    .line 84
    iget v0, p0, Landroid/support/v4/c/n;->cx:I

    iget v1, p0, Landroid/support/v4/c/n;->jH:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 149
    iget-boolean v0, p0, Landroid/support/v4/c/n;->jI:Z

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Landroid/support/v4/c/n;->jG:Landroid/support/v4/c/j;

    iget v1, p0, Landroid/support/v4/c/n;->cx:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/c/j;->g(II)Ljava/lang/Object;

    move-result-object v0

    .line 154
    iget-object v1, p0, Landroid/support/v4/c/n;->jG:Landroid/support/v4/c/j;

    iget v3, p0, Landroid/support/v4/c/n;->cx:I

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/c/j;->g(II)Ljava/lang/Object;

    move-result-object v1

    .line 155
    if-nez v0, :cond_0

    .line 156
    move v0, v2

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 156
    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    .line 155
    return v0

    .line 150
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    .line 72
    invoke-virtual {p0}, Landroid/support/v4/c/n;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/c/n;->cx:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/c/n;->cx:I

    iput-boolean v1, p0, Landroid/support/v4/c/n;->jI:Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    .line 97
    iget-boolean v0, p0, Landroid/support/v4/c/n;->jI:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Landroid/support/v4/c/n;->jG:Landroid/support/v4/c/j;

    iget v1, p0, Landroid/support/v4/c/n;->cx:I

    invoke-virtual {v0, v1}, Landroid/support/v4/c/j;->p(I)V

    .line 101
    iget v0, p0, Landroid/support/v4/c/n;->cx:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/c/n;->cx:I

    .line 102
    iget v0, p0, Landroid/support/v4/c/n;->jH:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/c/n;->jH:I

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/c/n;->jI:Z

    .line 104
    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 126
    iget-boolean v0, p0, Landroid/support/v4/c/n;->jI:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Landroid/support/v4/c/n;->jG:Landroid/support/v4/c/j;

    iget v1, p0, Landroid/support/v4/c/n;->cx:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/c/j;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This container does not support retaining Map.Entry objects"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/support/v4/c/n;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v4/c/n;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
