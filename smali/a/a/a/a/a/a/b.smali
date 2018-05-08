.class public final La/a/a/a/a/a/b;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# static fields
.field private static volatile aiw:[La/a/a/a/a/a/b;


# instance fields
.field public aiA:I

.field public aiB:Z

.field public aix:I

.field public aiy:I

.field public aiz:I

.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 505
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 506
    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/a/a/b;->aix:I

    iput v0, p0, La/a/a/a/a/a/b;->aiy:I

    iput v0, p0, La/a/a/a/a/a/b;->aiz:I

    iput v0, p0, La/a/a/a/a/a/b;->aiA:I

    iput v0, p0, La/a/a/a/a/a/b;->width:I

    iput v0, p0, La/a/a/a/a/a/b;->height:I

    iput-boolean v0, p0, La/a/a/a/a/a/b;->aiB:Z

    const/4 v0, -0x1

    iput v0, p0, La/a/a/a/a/a/b;->cachedSize:I

    .line 507
    return-void
.end method

.method public static jk()[La/a/a/a/a/a/b;
    .locals 2

    .line 473
    sget-object v0, La/a/a/a/a/a/b;->aiw:[La/a/a/a/a/a/b;

    if-nez v0, :cond_1

    .line 474
    sget-object v0, Lcom/google/protobuf/nano/f;->afc:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_0
    sget-object v1, La/a/a/a/a/a/b;->aiw:[La/a/a/a/a/a/b;

    if-nez v1, :cond_0

    .line 477
    const/4 v1, 0x0

    new-array v1, v1, [La/a/a/a/a/a/b;

    sput-object v1, La/a/a/a/a/a/b;->aiw:[La/a/a/a/a/a/b;

    .line 479
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 481
    :cond_1
    :goto_0
    sget-object v0, La/a/a/a/a/a/b;->aiw:[La/a/a/a/a/a/b;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .line 550
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 551
    iget v1, p0, La/a/a/a/a/a/b;->aix:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 552
    iget v1, p0, La/a/a/a/a/a/b;->aix:I

    .line 553
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 555
    :cond_0
    iget v1, p0, La/a/a/a/a/a/b;->aiy:I

    if-eqz v1, :cond_1

    .line 556
    const/4 v1, 0x2

    iget v3, p0, La/a/a/a/a/a/b;->aiy:I

    .line 557
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 559
    :cond_1
    iget v1, p0, La/a/a/a/a/a/b;->aiz:I

    if-eqz v1, :cond_2

    .line 560
    const/4 v1, 0x3

    iget v3, p0, La/a/a/a/a/a/b;->aiz:I

    .line 561
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 563
    :cond_2
    iget v1, p0, La/a/a/a/a/a/b;->aiA:I

    if-eqz v1, :cond_3

    .line 564
    const/4 v1, 0x4

    iget v3, p0, La/a/a/a/a/a/b;->aiA:I

    .line 565
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 567
    :cond_3
    iget v1, p0, La/a/a/a/a/a/b;->width:I

    if-eqz v1, :cond_4

    .line 568
    const/4 v1, 0x5

    iget v3, p0, La/a/a/a/a/a/b;->width:I

    .line 569
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 571
    :cond_4
    iget v1, p0, La/a/a/a/a/a/b;->height:I

    if-eqz v1, :cond_5

    .line 572
    const/4 v1, 0x6

    iget v3, p0, La/a/a/a/a/a/b;->height:I

    .line 573
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 575
    :cond_5
    iget-boolean v1, p0, La/a/a/a/a/a/b;->aiB:Z

    if-eqz v1, :cond_6

    .line 576
    const/4 v1, 0x7

    .line 577
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 579
    :cond_6
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 467
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    const/16 v1, 0x18

    if-eq v0, v1, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    const/16 v1, 0x28

    if-eq v0, v1, :cond_3

    const/16 v1, 0x30

    if-eq v0, v1, :cond_2

    const/16 v1, 0x38

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, La/a/a/a/a/a/b;->aiB:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, La/a/a/a/a/a/b;->height:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, La/a/a/a/a/a/b;->width:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, La/a/a/a/a/a/b;->aiA:I

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, La/a/a/a/a/a/b;->aiz:I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, La/a/a/a/a/a/b;->aiy:I

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, La/a/a/a/a/a/b;->aix:I

    goto :goto_0

    :cond_8
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .line 524
    iget v0, p0, La/a/a/a/a/a/b;->aix:I

    if-eqz v0, :cond_0

    .line 525
    const/4 v0, 0x1

    iget v1, p0, La/a/a/a/a/a/b;->aix:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 527
    :cond_0
    iget v0, p0, La/a/a/a/a/a/b;->aiy:I

    if-eqz v0, :cond_1

    .line 528
    const/4 v0, 0x2

    iget v1, p0, La/a/a/a/a/a/b;->aiy:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 530
    :cond_1
    iget v0, p0, La/a/a/a/a/a/b;->aiz:I

    if-eqz v0, :cond_2

    .line 531
    const/4 v0, 0x3

    iget v1, p0, La/a/a/a/a/a/b;->aiz:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 533
    :cond_2
    iget v0, p0, La/a/a/a/a/a/b;->aiA:I

    if-eqz v0, :cond_3

    .line 534
    const/4 v0, 0x4

    iget v1, p0, La/a/a/a/a/a/b;->aiA:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 536
    :cond_3
    iget v0, p0, La/a/a/a/a/a/b;->width:I

    if-eqz v0, :cond_4

    .line 537
    const/4 v0, 0x5

    iget v1, p0, La/a/a/a/a/a/b;->width:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 539
    :cond_4
    iget v0, p0, La/a/a/a/a/a/b;->height:I

    if-eqz v0, :cond_5

    .line 540
    const/4 v0, 0x6

    iget v1, p0, La/a/a/a/a/a/b;->height:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 542
    :cond_5
    iget-boolean v0, p0, La/a/a/a/a/a/b;->aiB:Z

    if-eqz v0, :cond_6

    .line 543
    const/4 v0, 0x7

    iget-boolean v1, p0, La/a/a/a/a/a/b;->aiB:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(IZ)V

    .line 545
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 546
    return-void
.end method
