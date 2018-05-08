.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;
.super Lcom/google/protobuf/nano/b;
.source "SourceFile"


# instance fields
.field public sF:I

.field public sG:I

.field public sH:I

.field public sq:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 544
    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    .line 545
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sq:I

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sF:I

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sG:I

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sH:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->aeU:Lcom/google/protobuf/nano/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->cachedSize:I

    .line 546
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .line 578
    invoke-super {p0}, Lcom/google/protobuf/nano/b;->computeSerializedSize()I

    move-result v0

    .line 579
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sq:I

    if-eqz v1, :cond_0

    .line 580
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sq:I

    .line 581
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 583
    :cond_0
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sF:I

    if-eqz v1, :cond_1

    .line 584
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sF:I

    .line 585
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 587
    :cond_1
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sG:I

    if-eqz v1, :cond_2

    .line 588
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sG:I

    .line 589
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 591
    :cond_2
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sH:I

    if-eqz v1, :cond_3

    .line 592
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sH:I

    .line 593
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 595
    :cond_3
    return v0
.end method

.method public final d(Lcom/google/protobuf/nano/a;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;
    .locals 6

    .line 603
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    .line 604
    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 608
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/b;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 609
    return-object p0

    .line 632
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sH:I

    .line 636
    :cond_1
    goto :goto_0

    .line 628
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sG:I

    .line 629
    goto :goto_0

    .line 624
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sF:I

    .line 625
    goto :goto_0

    .line 614
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->getPosition()I

    move-result v1

    .line 616
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v2

    if-ltz v2, :cond_5

    const/4 v3, 0x3

    if-gt v2, v3, :cond_5

    iput v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sq:I

    .line 620
    goto :goto_0

    .line 616
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/16 v4, 0x33

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum OverviewInteraction"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :catch_0
    move-exception v2

    .line 618
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->br(I)V

    .line 619
    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->a(Lcom/google/protobuf/nano/a;I)Z

    .line 621
    goto :goto_0

    .line 606
    :cond_6
    return-object p0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 0

    .line 480
    invoke-virtual {p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->d(Lcom/google/protobuf/nano/a;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .line 561
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sq:I

    if-eqz v0, :cond_0

    .line 562
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sq:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 564
    :cond_0
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sF:I

    if-eqz v0, :cond_1

    .line 565
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sF:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 567
    :cond_1
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sG:I

    if-eqz v0, :cond_2

    .line 568
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sG:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 570
    :cond_2
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sH:I

    if-eqz v0, :cond_3

    .line 571
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sH:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 573
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/b;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 574
    return-void
.end method
