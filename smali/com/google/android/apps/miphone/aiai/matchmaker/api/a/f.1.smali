.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;
.super Lcom/google/protobuf/nano/b;
.source "SourceFile"


# instance fields
.field public sm:I

.field public sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

.field public so:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

.field public sp:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

.field public sq:I

.field public sr:I

.field public ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1393
    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    .line 1394
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sm:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    invoke-static {}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->cf()[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->so:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sp:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sq:I

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sr:I

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->aeU:Lcom/google/protobuf/nano/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->cachedSize:I

    .line 1395
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/nano/a;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;
    .locals 6

    .line 1486
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    .line 1487
    if-eqz v0, :cond_f

    const/16 v1, 0x8

    if-eq v0, v1, :cond_e

    const/16 v1, 0x12

    if-eq v0, v1, :cond_c

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_8

    const/16 v1, 0x22

    if-eq v0, v1, :cond_6

    const/16 v1, 0x28

    if-eq v0, v1, :cond_4

    const/16 v1, 0x30

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    .line 1491
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/b;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1492
    return-object p0

    .line 1555
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    if-nez v0, :cond_1

    .line 1556
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    .line 1558
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    .line 1562
    :cond_2
    goto :goto_0

    .line 1551
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sr:I

    .line 1552
    goto :goto_0

    .line 1541
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->getPosition()I

    move-result v1

    .line 1543
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v2

    if-ltz v2, :cond_5

    const/4 v3, 0x3

    if-gt v2, v3, :cond_5

    iput v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sq:I

    .line 1547
    goto :goto_0

    .line 1543
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/16 v4, 0x31

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum ActionInteraction"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1544
    :catch_0
    move-exception v2

    .line 1545
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->br(I)V

    .line 1546
    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->a(Lcom/google/protobuf/nano/a;I)Z

    .line 1548
    goto :goto_0

    .line 1534
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sp:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    if-nez v0, :cond_7

    .line 1535
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sp:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    .line 1537
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sp:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    .line 1538
    goto/16 :goto_0

    .line 1514
    :cond_8
    nop

    .line 1515
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    .line 1516
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->so:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    const/4 v2, 0x0

    if-nez v1, :cond_9

    .line 1517
    move v1, v2

    goto :goto_1

    .line 1516
    :cond_9
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->so:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    array-length v1, v1

    .line 1517
    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    .line 1519
    if-eqz v1, :cond_a

    .line 1520
    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->so:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1522
    :cond_a
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_b

    .line 1523
    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    invoke-direct {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;-><init>()V

    aput-object v2, v0, v1

    .line 1524
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    .line 1525
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    .line 1522
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1528
    :cond_b
    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    invoke-direct {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;-><init>()V

    aput-object v2, v0, v1

    .line 1529
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    .line 1530
    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->so:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    .line 1531
    goto/16 :goto_0

    .line 1507
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    if-nez v0, :cond_d

    .line 1508
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    .line 1510
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    .line 1511
    goto/16 :goto_0

    .line 1497
    :cond_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->getPosition()I

    move-result v1

    .line 1499
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->aq(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sm:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1503
    goto/16 :goto_0

    .line 1500
    :catch_1
    move-exception v2

    .line 1501
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->br(I)V

    .line 1502
    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->a(Lcom/google/protobuf/nano/a;I)Z

    .line 1504
    goto/16 :goto_0

    .line 1489
    :cond_f
    return-object p0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .line 1444
    invoke-super {p0}, Lcom/google/protobuf/nano/b;->computeSerializedSize()I

    move-result v0

    .line 1445
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sm:I

    if-eqz v1, :cond_0

    .line 1446
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sm:I

    .line 1447
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1449
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    if-eqz v1, :cond_1

    .line 1450
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    .line 1451
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1453
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->so:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->so:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 1454
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->so:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 1455
    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->so:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    aget-object v2, v2, v1

    .line 1456
    if-eqz v2, :cond_2

    .line 1457
    const/4 v3, 0x3

    .line 1458
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1454
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1462
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sp:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    if-eqz v1, :cond_4

    .line 1463
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sp:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    .line 1464
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1466
    :cond_4
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sq:I

    if-eqz v1, :cond_5

    .line 1467
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sq:I

    .line 1468
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1470
    :cond_5
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sr:I

    if-eqz v1, :cond_6

    .line 1471
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sr:I

    .line 1472
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1474
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    if-eqz v1, :cond_7

    .line 1475
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    .line 1476
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1478
    :cond_7
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 0

    .line 1319
    invoke-virtual {p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->a(Lcom/google/protobuf/nano/a;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .line 1413
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sm:I

    if-eqz v0, :cond_0

    .line 1414
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sm:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 1416
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    if-eqz v0, :cond_1

    .line 1417
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 1419
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->so:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->so:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 1420
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->so:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1421
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->so:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    aget-object v1, v1, v0

    .line 1422
    if-eqz v1, :cond_2

    .line 1423
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 1420
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1427
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sp:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    if-eqz v0, :cond_4

    .line 1428
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sp:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 1430
    :cond_4
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sq:I

    if-eqz v0, :cond_5

    .line 1431
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sq:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 1433
    :cond_5
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sr:I

    if-eqz v0, :cond_6

    .line 1434
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sr:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 1436
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    if-eqz v0, :cond_7

    .line 1437
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 1439
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/b;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1440
    return-void
.end method
