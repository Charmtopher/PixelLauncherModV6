.class public final La/a/a/a/a/a/d;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public aiK:[La/a/a/a/a/a/e;

.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 228
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 229
    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/a/a/d;->width:I

    iput v0, p0, La/a/a/a/a/a/d;->height:I

    invoke-static {}, La/a/a/a/a/a/e;->jl()[La/a/a/a/a/a/e;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/a/a/d;->aiK:[La/a/a/a/a/a/e;

    const/4 v0, -0x1

    iput v0, p0, La/a/a/a/a/a/d;->cachedSize:I

    .line 230
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .line 262
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 263
    iget v1, p0, La/a/a/a/a/a/d;->width:I

    if-eqz v1, :cond_0

    .line 264
    iget v1, p0, La/a/a/a/a/a/d;->width:I

    .line 265
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 267
    :cond_0
    iget v1, p0, La/a/a/a/a/a/d;->height:I

    if-eqz v1, :cond_1

    .line 268
    const/4 v1, 0x2

    iget v2, p0, La/a/a/a/a/a/d;->height:I

    .line 269
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 271
    :cond_1
    iget-object v1, p0, La/a/a/a/a/a/d;->aiK:[La/a/a/a/a/a/e;

    if-eqz v1, :cond_3

    iget-object v1, p0, La/a/a/a/a/a/d;->aiK:[La/a/a/a/a/a/e;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 272
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, La/a/a/a/a/a/d;->aiK:[La/a/a/a/a/a/e;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 273
    iget-object v2, p0, La/a/a/a/a/a/d;->aiK:[La/a/a/a/a/a/e;

    aget-object v2, v2, v1

    .line 274
    if-eqz v2, :cond_2

    .line 275
    const/4 v3, 0x3

    .line 276
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v2

    add-int/2addr v0, v2

    .line 272
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    :cond_3
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 4

    .line 202
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, La/a/a/a/a/a/d;->aiK:[La/a/a/a/a/a/e;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, La/a/a/a/a/a/d;->aiK:[La/a/a/a/a/a/e;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [La/a/a/a/a/a/e;

    if-eqz v1, :cond_3

    iget-object v3, p0, La/a/a/a/a/a/d;->aiK:[La/a/a/a/a/a/e;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    new-instance v2, La/a/a/a/a/a/e;

    invoke-direct {v2}, La/a/a/a/a/a/e;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance v2, La/a/a/a/a/a/e;

    invoke-direct {v2}, La/a/a/a/a/a/e;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, La/a/a/a/a/a/d;->aiK:[La/a/a/a/a/a/e;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, La/a/a/a/a/a/d;->height:I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, La/a/a/a/a/a/d;->width:I

    goto :goto_0

    :cond_7
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .line 243
    iget v0, p0, La/a/a/a/a/a/d;->width:I

    if-eqz v0, :cond_0

    .line 244
    iget v0, p0, La/a/a/a/a/a/d;->width:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 246
    :cond_0
    iget v0, p0, La/a/a/a/a/a/d;->height:I

    if-eqz v0, :cond_1

    .line 247
    const/4 v0, 0x2

    iget v1, p0, La/a/a/a/a/a/d;->height:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 249
    :cond_1
    iget-object v0, p0, La/a/a/a/a/a/d;->aiK:[La/a/a/a/a/a/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, La/a/a/a/a/a/d;->aiK:[La/a/a/a/a/a/e;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 250
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, La/a/a/a/a/a/d;->aiK:[La/a/a/a/a/a/e;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 251
    iget-object v1, p0, La/a/a/a/a/a/d;->aiK:[La/a/a/a/a/a/e;

    aget-object v1, v1, v0

    .line 252
    if-eqz v1, :cond_2

    .line 253
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 250
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 258
    return-void
.end method
