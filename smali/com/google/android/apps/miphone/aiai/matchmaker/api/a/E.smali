.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;
.super Lcom/google/protobuf/nano/b;
.source "SourceFile"


# static fields
.field private static volatile tG:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;


# instance fields
.field public sj:[I

.field public tH:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

.field public tI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1466
    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    .line 1467
    invoke-static {}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->ch()[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->tH:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->tI:Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/j;->afe:[I

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->sj:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->aeU:Lcom/google/protobuf/nano/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->cachedSize:I

    .line 1468
    return-void
.end method

.method public static cj()[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;
    .locals 2

    .line 1444
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->tG:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

    if-nez v0, :cond_1

    .line 1445
    sget-object v0, Lcom/google/protobuf/nano/f;->afc:Ljava/lang/Object;

    monitor-enter v0

    .line 1447
    :try_start_0
    sget-object v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->tG:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

    if-nez v1, :cond_0

    .line 1448
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

    sput-object v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->tG:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

    .line 1450
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1452
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->tG:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .line 1503
    invoke-super {p0}, Lcom/google/protobuf/nano/b;->computeSerializedSize()I

    move-result v0

    .line 1504
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->tH:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->tH:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 1505
    move v1, v0

    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->tH:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 1506
    iget-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->tH:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    aget-object v4, v4, v0

    .line 1507
    if-eqz v4, :cond_0

    .line 1508
    nop

    .line 1509
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1505
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1513
    :cond_1
    move v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->tI:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->tI:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1514
    const/4 v1, 0x2

    iget-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->tI:Ljava/lang/String;

    .line 1515
    invoke-static {v1, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1517
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->sj:[I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->sj:[I

    array-length v1, v1

    if-lez v1, :cond_5

    .line 1518
    nop

    .line 1519
    move v1, v2

    :goto_1
    iget-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->sj:[I

    array-length v4, v4

    if-ge v2, v4, :cond_4

    .line 1520
    iget-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->sj:[I

    aget v4, v4, v2

    .line 1521
    nop

    .line 1522
    invoke-static {v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bu(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 1519
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1524
    :cond_4
    add-int/2addr v0, v1

    .line 1525
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->sj:[I

    array-length v1, v1

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 1527
    :cond_5
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 5

    .line 1438
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_f

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_b

    const/16 v1, 0x12

    if-eq v0, v1, :cond_a

    const/16 v1, 0x18

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/b;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
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

    if-lez v4, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->br(I)V

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->sj:[I

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->sj:[I

    array-length v1, v1

    :goto_2
    add-int/2addr v3, v1

    new-array v3, v3, [I

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->sj:[I

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_3
    array-length v2, v3

    if-ge v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v2

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iput-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->sj:[I

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->bq(I)V

    goto :goto_0

    :cond_6
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->sj:[I

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->sj:[I

    array-length v1, v1

    :goto_4
    add-int/2addr v0, v1

    new-array v0, v0, [I

    if-eqz v1, :cond_8

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->sj:[I

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_5
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_9

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->sj:[I

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->tI:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->tH:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    if-nez v1, :cond_c

    move v1, v2

    goto :goto_6

    :cond_c
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->tH:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    array-length v1, v1

    :goto_6
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    if-eqz v1, :cond_d

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->tH:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_7
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_e

    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    invoke-direct {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_e
    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    invoke-direct {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->tH:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    goto/16 :goto_0

    :cond_f
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .line 1482
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->tH:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->tH:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1483
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->tH:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1484
    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->tH:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    aget-object v2, v2, v0

    .line 1485
    if-eqz v2, :cond_0

    .line 1486
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 1483
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1490
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->tI:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->tI:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1491
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->tI:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 1493
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->sj:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->sj:[I

    array-length v0, v0

    if-lez v0, :cond_3

    .line 1494
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->sj:[I

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 1495
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->sj:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 1494
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1498
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/b;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1499
    return-void
.end method
