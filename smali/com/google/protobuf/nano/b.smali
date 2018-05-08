.class public abstract Lcom/google/protobuf/nano/b;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public aeU:Lcom/google/protobuf/nano/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/nano/a;I)Z
    .locals 9

    .line 140
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->getPosition()I

    move-result v0

    .line 141
    invoke-virtual {p1, p2}, Lcom/google/protobuf/nano/a;->bo(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 142
    return v2

    .line 144
    :cond_0
    invoke-static {p2}, Lcom/google/protobuf/nano/j;->bC(I)I

    move-result v1

    .line 145
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->getPosition()I

    move-result v3

    .line 146
    sub-int/2addr v3, v0

    if-nez v3, :cond_1

    sget-object p1, Lcom/google/protobuf/nano/j;->afl:[B

    goto :goto_0

    :cond_1
    new-array v4, v3, [B

    iget v5, p1, Lcom/google/protobuf/nano/a;->aeK:I

    add-int/2addr v5, v0

    iget-object p1, p1, Lcom/google/protobuf/nano/a;->buffer:[B

    invoke-static {p1, v5, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    move-object p1, v4

    :goto_0
    new-instance v0, Lcom/google/protobuf/nano/i;

    invoke-direct {v0, p2, p1}, Lcom/google/protobuf/nano/i;-><init>(I[B)V

    .line 149
    nop

    .line 150
    iget-object p1, p0, Lcom/google/protobuf/nano/b;->aeU:Lcom/google/protobuf/nano/d;

    const/4 p2, 0x0

    if-nez p1, :cond_2

    .line 151
    new-instance p1, Lcom/google/protobuf/nano/d;

    invoke-direct {p1}, Lcom/google/protobuf/nano/d;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/nano/b;->aeU:Lcom/google/protobuf/nano/d;

    goto :goto_2

    .line 153
    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/nano/b;->aeU:Lcom/google/protobuf/nano/d;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/d;->bA(I)I

    move-result v3

    if-ltz v3, :cond_4

    iget-object v4, p1, Lcom/google/protobuf/nano/d;->aeZ:[Lcom/google/protobuf/nano/e;

    aget-object v4, v4, v3

    sget-object v5, Lcom/google/protobuf/nano/d;->aeX:Lcom/google/protobuf/nano/e;

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/google/protobuf/nano/d;->aeZ:[Lcom/google/protobuf/nano/e;

    aget-object p1, p1, v3

    .line 155
    move-object p2, p1

    goto :goto_2

    .line 153
    :cond_4
    :goto_1
    nop

    .line 155
    :goto_2
    const/4 p1, 0x1

    if-nez p2, :cond_a

    .line 156
    new-instance p2, Lcom/google/protobuf/nano/e;

    invoke-direct {p2}, Lcom/google/protobuf/nano/e;-><init>()V

    .line 157
    iget-object v3, p0, Lcom/google/protobuf/nano/b;->aeU:Lcom/google/protobuf/nano/d;

    invoke-virtual {v3, v1}, Lcom/google/protobuf/nano/d;->bA(I)I

    move-result v4

    if-ltz v4, :cond_5

    iget-object v1, v3, Lcom/google/protobuf/nano/d;->aeZ:[Lcom/google/protobuf/nano/e;

    aput-object p2, v1, v4

    goto/16 :goto_3

    :cond_5
    not-int v4, v4

    iget v5, v3, Lcom/google/protobuf/nano/d;->mSize:I

    if-ge v4, v5, :cond_6

    iget-object v5, v3, Lcom/google/protobuf/nano/d;->aeZ:[Lcom/google/protobuf/nano/e;

    aget-object v5, v5, v4

    sget-object v6, Lcom/google/protobuf/nano/d;->aeX:Lcom/google/protobuf/nano/e;

    if-ne v5, v6, :cond_6

    iget-object v2, v3, Lcom/google/protobuf/nano/d;->aeY:[I

    aput v1, v2, v4

    iget-object v1, v3, Lcom/google/protobuf/nano/d;->aeZ:[Lcom/google/protobuf/nano/e;

    aput-object p2, v1, v4

    goto :goto_3

    :cond_6
    iget-boolean v5, v3, Lcom/google/protobuf/nano/d;->jt:Z

    if-eqz v5, :cond_7

    iget v5, v3, Lcom/google/protobuf/nano/d;->mSize:I

    iget-object v6, v3, Lcom/google/protobuf/nano/d;->aeY:[I

    array-length v6, v6

    if-lt v5, v6, :cond_7

    invoke-virtual {v3}, Lcom/google/protobuf/nano/d;->gc()V

    invoke-virtual {v3, v1}, Lcom/google/protobuf/nano/d;->bA(I)I

    move-result v4

    not-int v4, v4

    :cond_7
    iget v5, v3, Lcom/google/protobuf/nano/d;->mSize:I

    iget-object v6, v3, Lcom/google/protobuf/nano/d;->aeY:[I

    array-length v6, v6

    if-lt v5, v6, :cond_8

    iget v5, v3, Lcom/google/protobuf/nano/d;->mSize:I

    add-int/2addr v5, p1

    invoke-virtual {v3, v5}, Lcom/google/protobuf/nano/d;->r(I)I

    move-result v5

    new-array v6, v5, [I

    new-array v5, v5, [Lcom/google/protobuf/nano/e;

    iget-object v7, v3, Lcom/google/protobuf/nano/d;->aeY:[I

    iget-object v8, v3, Lcom/google/protobuf/nano/d;->aeY:[I

    array-length v8, v8

    invoke-static {v7, v2, v6, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, v3, Lcom/google/protobuf/nano/d;->aeZ:[Lcom/google/protobuf/nano/e;

    iget-object v8, v3, Lcom/google/protobuf/nano/d;->aeZ:[Lcom/google/protobuf/nano/e;

    array-length v8, v8

    invoke-static {v7, v2, v5, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v6, v3, Lcom/google/protobuf/nano/d;->aeY:[I

    iput-object v5, v3, Lcom/google/protobuf/nano/d;->aeZ:[Lcom/google/protobuf/nano/e;

    :cond_8
    iget v2, v3, Lcom/google/protobuf/nano/d;->mSize:I

    sub-int/2addr v2, v4

    if-eqz v2, :cond_9

    iget-object v2, v3, Lcom/google/protobuf/nano/d;->aeY:[I

    iget-object v5, v3, Lcom/google/protobuf/nano/d;->aeY:[I

    add-int/lit8 v6, v4, 0x1

    iget v7, v3, Lcom/google/protobuf/nano/d;->mSize:I

    sub-int/2addr v7, v4

    invoke-static {v2, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v3, Lcom/google/protobuf/nano/d;->aeZ:[Lcom/google/protobuf/nano/e;

    iget-object v5, v3, Lcom/google/protobuf/nano/d;->aeZ:[Lcom/google/protobuf/nano/e;

    iget v7, v3, Lcom/google/protobuf/nano/d;->mSize:I

    sub-int/2addr v7, v4

    invoke-static {v2, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    iget-object v2, v3, Lcom/google/protobuf/nano/d;->aeY:[I

    aput v1, v2, v4

    iget-object v1, v3, Lcom/google/protobuf/nano/d;->aeZ:[Lcom/google/protobuf/nano/e;

    aput-object p2, v1, v4

    iget v1, v3, Lcom/google/protobuf/nano/d;->mSize:I

    add-int/2addr v1, p1

    iput v1, v3, Lcom/google/protobuf/nano/d;->mSize:I

    .line 159
    :cond_a
    :goto_3
    iget-object p2, p2, Lcom/google/protobuf/nano/e;->afb:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    return p1
.end method

.method public final synthetic clone()Lcom/google/protobuf/nano/g;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/google/protobuf/nano/b;->iv()Lcom/google/protobuf/nano/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/google/protobuf/nano/b;->iv()Lcom/google/protobuf/nano/b;

    move-result-object v0

    return-object v0
.end method

.method public computeSerializedSize()I
    .locals 3

    .line 49
    nop

    .line 50
    iget-object v0, p0, Lcom/google/protobuf/nano/b;->aeU:Lcom/google/protobuf/nano/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 51
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/b;->aeU:Lcom/google/protobuf/nano/d;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/d;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 52
    iget-object v2, p0, Lcom/google/protobuf/nano/b;->aeU:Lcom/google/protobuf/nano/d;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/nano/d;->bz(I)Lcom/google/protobuf/nano/e;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lcom/google/protobuf/nano/e;->computeSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public final iv()Lcom/google/protobuf/nano/b;
    .locals 1

    .line 165
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->clone()Lcom/google/protobuf/nano/g;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/b;

    .line 166
    invoke-static {p0, v0}, Lcom/google/protobuf/nano/f;->a(Lcom/google/protobuf/nano/b;Lcom/google/protobuf/nano/b;)V

    .line 167
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/google/protobuf/nano/b;->aeU:Lcom/google/protobuf/nano/d;

    if-nez v0, :cond_0

    .line 62
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/nano/b;->aeU:Lcom/google/protobuf/nano/d;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/d;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/google/protobuf/nano/b;->aeU:Lcom/google/protobuf/nano/d;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/nano/d;->bz(I)Lcom/google/protobuf/nano/e;

    move-result-object v1

    .line 66
    invoke-virtual {v1, p1}, Lcom/google/protobuf/nano/e;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    return-void
.end method
