.class public final Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final aeT:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    .line 65
    iget-object p1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 66
    return-void
.end method

.method private constructor <init>([BII)V
    .locals 0

    .line 60
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;-><init>(Ljava/nio/ByteBuffer;)V

    .line 61
    return-void
.end method

.method public static J(II)I
    .locals 0

    .line 609
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bu(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static J(Ljava/lang/String;)I
    .locals 1

    .line 835
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->g(Ljava/lang/CharSequence;)I

    move-result p0

    .line 836
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->by(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static b(ILcom/google/protobuf/nano/g;)I
    .locals 1

    .line 663
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/g;->getSerializedSize()I

    move-result p1

    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->by(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method private static b(Ljava/lang/CharSequence;[BII)I
    .locals 8

    .line 465
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 466
    nop

    .line 468
    add-int/2addr p3, p2

    .line 471
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x80

    if-ge v1, v0, :cond_0

    add-int v3, v1, p2

    if-ge v3, p3, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v2, :cond_0

    .line 472
    int-to-byte v2, v4

    aput-byte v2, p1, v3

    .line 471
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    :cond_0
    if-ne v1, v0, :cond_1

    .line 475
    add-int/2addr p2, v0

    return p2

    .line 477
    :cond_1
    add-int/2addr p2, v1

    .line 478
    :goto_1
    if-ge v1, v0, :cond_9

    .line 479
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 480
    if-ge v3, v2, :cond_2

    if-ge p2, p3, :cond_2

    .line 481
    add-int/lit8 v4, p2, 0x1

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    .line 478
    :goto_2
    move p2, v4

    goto/16 :goto_3

    .line 482
    :cond_2
    const/16 v4, 0x800

    const/16 v5, 0x3f

    if-ge v3, v4, :cond_3

    add-int/lit8 v4, p3, -0x2

    if-gt p2, v4, :cond_3

    .line 483
    add-int/lit8 v4, p2, 0x1

    const/16 v6, 0x3c0

    ushr-int/lit8 v7, v3, 0x6

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    .line 484
    add-int/lit8 p2, v4, 0x1

    and-int/2addr v3, v5

    or-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p1, v4

    goto :goto_3

    .line 485
    :cond_3
    const v4, 0xd800

    if-lt v3, v4, :cond_4

    const v4, 0xdfff

    if-ge v4, v3, :cond_5

    :cond_4
    add-int/lit8 v4, p3, -0x3

    if-gt p2, v4, :cond_5

    .line 487
    add-int/lit8 v4, p2, 0x1

    const/16 v6, 0x1e0

    ushr-int/lit8 v7, v3, 0xc

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    .line 488
    add-int/lit8 p2, v4, 0x1

    ushr-int/lit8 v6, v3, 0x6

    and-int/2addr v6, v5

    or-int/2addr v6, v2

    int-to-byte v6, v6

    aput-byte v6, p1, v4

    .line 489
    add-int/lit8 v4, p2, 0x1

    and-int/2addr v3, v5

    or-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    goto :goto_2

    .line 490
    :cond_5
    add-int/lit8 v4, p3, -0x4

    if-gt p2, v4, :cond_8

    .line 493
    add-int/lit8 v4, v1, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v4, v6, :cond_7

    .line 494
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 497
    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 498
    add-int/lit8 v3, p2, 0x1

    const/16 v6, 0xf0

    ushr-int/lit8 v7, v1, 0x12

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    .line 499
    add-int/lit8 p2, v3, 0x1

    ushr-int/lit8 v6, v1, 0xc

    and-int/2addr v6, v5

    or-int/2addr v6, v2

    int-to-byte v6, v6

    aput-byte v6, p1, v3

    .line 500
    add-int/lit8 v3, p2, 0x1

    ushr-int/lit8 v6, v1, 0x6

    and-int/2addr v6, v5

    or-int/2addr v6, v2

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    .line 501
    add-int/lit8 p2, v3, 0x1

    and-int/2addr v1, v5

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v3

    .line 502
    nop

    .line 478
    move v1, v4

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 495
    :cond_6
    move v1, v4

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unpaired surrogate at index "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 503
    :cond_8
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Failed writing "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p3, " at index "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 506
    :cond_9
    return p2
.end method

.method public static bu(I)I
    .locals 0

    .line 798
    if-ltz p0, :cond_0

    .line 799
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->by(I)I

    move-result p0

    return p0

    .line 802
    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static bw(I)I
    .locals 1

    .line 1014
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/protobuf/nano/j;->L(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->by(I)I

    move-result p0

    return p0
.end method

.method public static by(I)I
    .locals 1

    .line 1039
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1040
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 1041
    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    .line 1042
    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    .line 1043
    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static c([BII)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .locals 1

    .line 87
    new-instance v0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;-><init>([BII)V

    return-object v0
.end method

.method private static c(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 416
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 418
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    nop

    .line 421
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 422
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 423
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 420
    invoke-static {p0, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(Ljava/lang/CharSequence;[BII)I

    move-result p0

    .line 424
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    return-void

    .line 425
    :catch_0
    move-exception p0

    .line 426
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    .line 427
    invoke-virtual {p1, p0}, Ljava/nio/BufferOverflowException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 428
    throw p1

    .line 431
    :cond_0
    invoke-static {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 433
    return-void

    .line 417
    :cond_1
    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public static d(I[B)I
    .locals 1

    .line 672
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result p0

    array-length v0, p1

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->by(I)I

    move-result v0

    array-length p1, p1

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method private static d(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 436
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 437
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    .line 438
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 439
    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    .line 440
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_2

    .line 441
    :cond_0
    const/16 v4, 0x800

    const/16 v5, 0x3f

    if-ge v2, v4, :cond_1

    .line 442
    const/16 v4, 0x3c0

    ushr-int/lit8 v6, v2, 0x6

    or-int/2addr v4, v6

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 443
    and-int/2addr v2, v5

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 444
    :cond_1
    const v4, 0xd800

    if-lt v2, v4, :cond_5

    const v4, 0xdfff

    if-ge v4, v2, :cond_2

    goto :goto_1

    .line 451
    :cond_2
    add-int/lit8 v4, v1, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v4, v6, :cond_4

    .line 452
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 455
    invoke-static {v2, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 456
    const/16 v2, 0xf0

    ushr-int/lit8 v6, v1, 0x12

    or-int/2addr v2, v6

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 457
    ushr-int/lit8 v2, v1, 0xc

    and-int/2addr v2, v5

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 458
    ushr-int/lit8 v2, v1, 0x6

    and-int/2addr v2, v5

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 459
    and-int/2addr v1, v5

    or-int/2addr v1, v3

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 437
    move v1, v4

    goto :goto_2

    .line 453
    :cond_3
    move v1, v4

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unpaired surrogate at index "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 446
    :cond_5
    :goto_1
    const/16 v4, 0x1e0

    ushr-int/lit8 v6, v2, 0xc

    or-int/2addr v4, v6

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 447
    ushr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v5

    or-int/2addr v4, v3

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 448
    and-int/2addr v2, v5

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 437
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 462
    :cond_6
    return-void
.end method

.method public static e(IJ)I
    .locals 0

    .line 593
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->p(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static e(ILjava/lang/String;)I
    .locals 0

    .line 645
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static f(IJ)I
    .locals 0

    .line 601
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->p(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private static g(Ljava/lang/CharSequence;)I
    .locals 8

    .line 348
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 349
    nop

    .line 350
    nop

    .line 353
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_0

    .line 354
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 358
    :cond_0
    move v3, v0

    :goto_1
    if-ge v2, v0, :cond_6

    .line 359
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 360
    const/16 v5, 0x800

    if-ge v4, v5, :cond_1

    .line 361
    rsub-int/lit8 v4, v4, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    .line 358
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 363
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    :goto_2
    if-ge v2, v4, :cond_5

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ge v6, v5, :cond_2

    rsub-int/lit8 v6, v6, 0x7f

    ushr-int/lit8 v6, v6, 0x1f

    add-int/2addr v1, v6

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x2

    const v7, 0xd800

    if-gt v7, v6, :cond_4

    const v7, 0xdfff

    if-gt v6, v7, :cond_4

    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    const/high16 v7, 0x10000

    if-lt v6, v7, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unpaired surrogate at index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    add-int/2addr v3, v1

    .line 364
    nop

    .line 368
    :cond_6
    if-lt v3, v0, :cond_7

    .line 373
    return v3

    .line 370
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UTF-8 length does not fit in int: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v1, v3

    const-wide v3, 0x100000000L

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static p(J)I
    .locals 4

    .line 1061
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1062
    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 1063
    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    .line 1064
    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 p0, 0x4

    return p0

    .line 1065
    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 p0, 0x5

    return p0

    .line 1066
    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 p0, 0x6

    return p0

    .line 1067
    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 p0, 0x7

    return p0

    .line 1068
    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 p0, 0x8

    return p0

    .line 1069
    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-nez p0, :cond_8

    const/16 p0, 0x9

    return p0

    .line 1070
    :cond_8
    const/16 p0, 0xa

    return p0
.end method


# virtual methods
.method public final I(II)V
    .locals 1

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->K(II)V

    .line 124
    if-ltz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bx(I)V

    return-void

    :cond_0
    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->o(J)V

    .line 125
    return-void
.end method

.method public final K(II)V
    .locals 0

    .line 1009
    invoke-static {p1, p2}, Lcom/google/protobuf/nano/j;->L(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bx(I)V

    .line 1010
    return-void
.end method

.method public final a(ILcom/google/protobuf/nano/g;)V
    .locals 1

    .line 166
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->K(II)V

    .line 167
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(Lcom/google/protobuf/nano/g;)V

    .line 168
    return-void
.end method

.method public final b(ID)V
    .locals 1

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->K(II)V

    .line 96
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    iget-object p3, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p3

    const/16 v0, 0x8

    if-lt p3, v0, :cond_0

    iget-object p3, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 97
    return-void

    .line 96
    :cond_0
    new-instance p1, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object p2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    iget-object p3, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw p1
.end method

.method public final b(IF)V
    .locals 1

    .line 102
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->K(II)V

    .line 103
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    iget-object p2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    const/4 v0, 0x4

    if-lt p2, v0, :cond_0

    iget-object p2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 104
    return-void

    .line 103
    :cond_0
    new-instance p1, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object p2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-direct {p1, p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw p1
.end method

.method public final b(Lcom/google/protobuf/nano/g;)V
    .locals 1

    .line 519
    iget v0, p1, Lcom/google/protobuf/nano/g;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/g;->getSerializedSize()I

    :cond_0
    iget v0, p1, Lcom/google/protobuf/nano/g;->cachedSize:I

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bx(I)V

    .line 520
    invoke-virtual {p1, p0}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 521
    return-void
.end method

.method public final bv(I)V
    .locals 2

    .line 987
    int-to-byte p1, p1

    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 988
    return-void

    .line 987
    :cond_0
    new-instance p1, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw p1
.end method

.method public final bx(I)V
    .locals 1

    .line 1023
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 1024
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bv(I)V

    .line 1025
    return-void

    .line 1027
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bv(I)V

    .line 1028
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public final c(IJ)V
    .locals 1

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->K(II)V

    .line 110
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->o(J)V

    .line 111
    return-void
.end method

.method public final c(I[B)V
    .locals 1

    .line 173
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->K(II)V

    .line 174
    array-length p1, p2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bx(I)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h([B)V

    .line 175
    return-void
.end method

.method public final d(IJ)V
    .locals 1

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->K(II)V

    .line 117
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->o(J)V

    .line 118
    return-void
.end method

.method public final d(ILjava/lang/String;)V
    .locals 3

    .line 151
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->K(II)V

    .line 152
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->by(I)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->by(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v1, p1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    add-int v2, v0, p1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    invoke-static {p2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    iget-object p2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int v0, p2, v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bx(I)V

    iget-object p1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_0
    new-instance p2, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-direct {p2, v0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw p2

    :cond_1
    invoke-static {p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->g(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bx(I)V

    iget-object p1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    invoke-static {p2, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-direct {p2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    invoke-virtual {p2, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public final h(IZ)V
    .locals 1

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->K(II)V

    .line 145
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bv(I)V

    .line 146
    return-void
.end method

.method public final h([B)V
    .locals 3

    .line 992
    array-length v0, p1

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    new-instance p1, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw p1
.end method

.method public final o(J)V
    .locals 4

    .line 1049
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1050
    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bv(I)V

    .line 1051
    return-void

    .line 1053
    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bv(I)V

    .line 1054
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method
