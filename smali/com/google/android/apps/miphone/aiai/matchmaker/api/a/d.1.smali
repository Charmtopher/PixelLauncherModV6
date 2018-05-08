.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;
.super Lcom/google/protobuf/nano/b;
.source "SourceFile"


# static fields
.field private static volatile si:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;


# instance fields
.field public sc:Ljava/lang/String;

.field public sh:Ljava/lang/String;

.field public sj:[I

.field public sk:Z

.field public sl:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 393
    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    .line 394
    sget-object v0, Lcom/google/protobuf/nano/j;->afe:[I

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sj:[I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sc:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sk:Z

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sl:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sh:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->aeU:Lcom/google/protobuf/nano/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->cachedSize:I

    .line 395
    return-void
.end method

.method public static cd()[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;
    .locals 2

    .line 365
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->si:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    if-nez v0, :cond_1

    .line 366
    sget-object v0, Lcom/google/protobuf/nano/f;->afc:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_0
    sget-object v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->si:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    if-nez v1, :cond_0

    .line 369
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    sput-object v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->si:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    .line 371
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 373
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->si:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .line 433
    invoke-super {p0}, Lcom/google/protobuf/nano/b;->computeSerializedSize()I

    move-result v0

    .line 434
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sj:[I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sj:[I

    array-length v1, v1

    if-lez v1, :cond_1

    .line 435
    nop

    .line 436
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sj:[I

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 437
    iget-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sj:[I

    aget v4, v4, v1

    .line 438
    nop

    .line 439
    invoke-static {v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bu(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 436
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    :cond_0
    add-int/2addr v0, v3

    .line 442
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sj:[I

    array-length v1, v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 444
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sc:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sc:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 445
    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sc:Ljava/lang/String;

    .line 446
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 448
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sk:Z

    if-eqz v1, :cond_3

    .line 449
    const/4 v1, 0x3

    .line 450
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 452
    :cond_3
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sl:I

    if-eqz v1, :cond_4

    .line 453
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sl:I

    .line 454
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 456
    :cond_4
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sh:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sh:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 457
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sh:Ljava/lang/String;

    .line 458
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 460
    :cond_5
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 5

    .line 359
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_e

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/b;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sh:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sl:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sk:Z

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sc:Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->bp(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->getPosition()I

    move-result v1

    move v3, v2

    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->it()I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->br(I)V

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sj:[I

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sj:[I

    array-length v1, v1

    :goto_2
    add-int/2addr v3, v1

    new-array v3, v3, [I

    if-eqz v1, :cond_8

    iget-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sj:[I

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_3
    array-length v2, v3

    if-ge v1, v2, :cond_9

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v2

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    iput-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sj:[I

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->bq(I)V

    goto/16 :goto_0

    :cond_a
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sj:[I

    if-nez v1, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sj:[I

    array-length v1, v1

    :goto_4
    add-int/2addr v0, v1

    new-array v0, v0, [I

    if-eqz v1, :cond_c

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sj:[I

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    :goto_5
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_d

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sj:[I

    goto/16 :goto_0

    :cond_e
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .line 411
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sj:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sj:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 412
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sj:[I

    aget v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sc:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 417
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 419
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sk:Z

    if-eqz v0, :cond_2

    .line 420
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sk:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(IZ)V

    .line 422
    :cond_2
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sl:I

    if-eqz v0, :cond_3

    .line 423
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sl:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 425
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sh:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sh:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 426
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sh:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 428
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/b;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 429
    return-void
.end method
