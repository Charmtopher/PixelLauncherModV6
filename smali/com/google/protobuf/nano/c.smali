.class public Lcom/google/protobuf/nano/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final aeV:Ljava/lang/Class;

.field protected final aeW:Z

.field public final tag:I

.field protected final type:I


# virtual methods
.method protected final A(Ljava/lang/Object;)I
    .locals 2

    .line 319
    iget v0, p0, Lcom/google/protobuf/nano/c;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/nano/j;->bC(I)I

    move-result v0

    .line 320
    iget v1, p0, Lcom/google/protobuf/nano/c;->type:I

    packed-switch v1, :pswitch_data_0

    .line 328
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/protobuf/nano/c;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 325
    :pswitch_0
    check-cast p1, Lcom/google/protobuf/nano/g;

    .line 326
    invoke-static {v0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result p1

    return p1

    .line 322
    :pswitch_1
    check-cast p1, Lcom/google/protobuf/nano/g;

    .line 323
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/google/protobuf/nano/g;->getSerializedSize()I

    move-result p1

    add-int/2addr v0, p1

    return v0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final a(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .line 253
    iget-boolean v0, p0, Lcom/google/protobuf/nano/c;->aeW:Z

    if-eqz v0, :cond_2

    .line 254
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2, p2}, Lcom/google/protobuf/nano/c;->b(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 256
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/nano/c;->b(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 258
    return-void
.end method

.method protected final b(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 1

    .line 263
    :try_start_0
    iget v0, p0, Lcom/google/protobuf/nano/c;->tag:I

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bx(I)V

    .line 264
    iget v0, p0, Lcom/google/protobuf/nano/c;->type:I

    packed-switch v0, :pswitch_data_0

    .line 277
    new-instance p1, Ljava/lang/IllegalArgumentException;

    goto :goto_0

    .line 273
    :pswitch_0
    check-cast p1, Lcom/google/protobuf/nano/g;

    .line 274
    invoke-virtual {p2, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(Lcom/google/protobuf/nano/g;)V

    .line 275
    return-void

    .line 266
    :pswitch_1
    check-cast p1, Lcom/google/protobuf/nano/g;

    .line 267
    iget v0, p0, Lcom/google/protobuf/nano/c;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/nano/j;->bC(I)I

    move-result v0

    .line 268
    invoke-virtual {p1, p2}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 270
    const/4 p1, 0x4

    invoke-virtual {p2, v0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->K(II)V

    .line 271
    return-void

    .line 277
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown type "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/protobuf/nano/c;->type:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :catch_0
    move-exception p1

    .line 281
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final z(Ljava/lang/Object;)I
    .locals 4

    .line 297
    iget-boolean v0, p0, Lcom/google/protobuf/nano/c;->aeW:Z

    if-eqz v0, :cond_2

    .line 298
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/nano/c;->A(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 300
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/c;->A(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
