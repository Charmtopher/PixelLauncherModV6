.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;
.super Lcom/google/protobuf/nano/b;
.source "SourceFile"


# static fields
.field private static volatile tj:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;


# instance fields
.field public tk:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

.field public tl:Ljava/lang/String;

.field public tm:I

.field public tn:I

.field public to:Ljava/lang/String;

.field public tp:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1663
    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    .line 1664
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tk:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tl:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tm:I

    iput v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tn:I

    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->to:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tp:I

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->aeU:Lcom/google/protobuf/nano/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->cachedSize:I

    .line 1665
    return-void
.end method

.method public static ch()[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;
    .locals 2

    .line 1631
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tj:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    if-nez v0, :cond_1

    .line 1632
    sget-object v0, Lcom/google/protobuf/nano/f;->afc:Ljava/lang/Object;

    monitor-enter v0

    .line 1634
    :try_start_0
    sget-object v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tj:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    if-nez v1, :cond_0

    .line 1635
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    sput-object v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tj:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    .line 1637
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1639
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tj:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .line 1705
    invoke-super {p0}, Lcom/google/protobuf/nano/b;->computeSerializedSize()I

    move-result v0

    .line 1706
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tk:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    if-eqz v1, :cond_0

    .line 1707
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tk:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    .line 1708
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1710
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tl:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1711
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tl:Ljava/lang/String;

    .line 1712
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1714
    :cond_1
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tm:I

    if-eqz v1, :cond_2

    .line 1715
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tm:I

    .line 1716
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1718
    :cond_2
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tn:I

    if-eqz v1, :cond_3

    .line 1719
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tn:I

    .line 1720
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1722
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->to:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->to:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1723
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->to:Ljava/lang/String;

    .line 1724
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1726
    :cond_4
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tp:I

    if-eqz v1, :cond_5

    .line 1727
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tp:I

    .line 1728
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1730
    :cond_5
    return v0
.end method

.method public final f(Lcom/google/protobuf/nano/a;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;
    .locals 6

    .line 1738
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    .line 1739
    if-eqz v0, :cond_9

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    const/16 v1, 0x12

    if-eq v0, v1, :cond_6

    const/16 v1, 0x18

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    .line 1743
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/b;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1744
    return-object p0

    .line 1778
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tp:I

    .line 1782
    :cond_1
    goto :goto_0

    .line 1774
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->to:Ljava/lang/String;

    .line 1775
    goto :goto_0

    .line 1770
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tn:I

    .line 1771
    goto :goto_0

    .line 1760
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->getPosition()I

    move-result v1

    .line 1762
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v2

    if-ltz v2, :cond_5

    const/4 v3, 0x2

    if-gt v2, v3, :cond_5

    iput v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tm:I

    .line 1766
    goto :goto_0

    .line 1762
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/16 v4, 0x2b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum ContentType"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1763
    :catch_0
    move-exception v2

    .line 1764
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->br(I)V

    .line 1765
    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->a(Lcom/google/protobuf/nano/a;I)Z

    .line 1767
    goto :goto_0

    .line 1756
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tl:Ljava/lang/String;

    .line 1757
    goto :goto_0

    .line 1749
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tk:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    if-nez v0, :cond_8

    .line 1750
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tk:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    .line 1752
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tk:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    .line 1753
    goto/16 :goto_0

    .line 1741
    :cond_9
    return-object p0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 0

    .line 1625
    invoke-virtual {p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->f(Lcom/google/protobuf/nano/a;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .line 1682
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tk:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    if-eqz v0, :cond_0

    .line 1683
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tk:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 1685
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1686
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 1688
    :cond_1
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tm:I

    if-eqz v0, :cond_2

    .line 1689
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tm:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 1691
    :cond_2
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tn:I

    if-eqz v0, :cond_3

    .line 1692
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tn:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 1694
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->to:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->to:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1695
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->to:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 1697
    :cond_4
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tp:I

    if-eqz v0, :cond_5

    .line 1698
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tp:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 1700
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/b;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1701
    return-void
.end method
