.class public final Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public command:I

.field public dir:I

.field public isOutside:Z

.field public isStateChange:Z

.field public touch:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 507
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 508
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->type:I

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->touch:I

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->dir:I

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->command:I

    iput-boolean v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->isOutside:Z

    iput-boolean v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->isStateChange:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->cachedSize:I

    .line 509
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .line 548
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 549
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->type:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 550
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->type:I

    .line 551
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 553
    :cond_0
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->touch:I

    if-eqz v1, :cond_1

    .line 554
    const/4 v1, 0x2

    iget v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->touch:I

    .line 555
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 557
    :cond_1
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->dir:I

    if-eqz v1, :cond_2

    .line 558
    const/4 v1, 0x3

    iget v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->dir:I

    .line 559
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 561
    :cond_2
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->command:I

    if-eqz v1, :cond_3

    .line 562
    const/4 v1, 0x4

    iget v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->command:I

    .line 563
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 565
    :cond_3
    iget-boolean v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->isOutside:Z

    if-eqz v1, :cond_4

    .line 566
    const/4 v1, 0x5

    .line 567
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 569
    :cond_4
    iget-boolean v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->isStateChange:Z

    if-eqz v1, :cond_5

    .line 570
    const/4 v1, 0x6

    .line 571
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 573
    :cond_5
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 436
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    const/16 v1, 0x18

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->isStateChange:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->isOutside:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->command:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->dir:I

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_2
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->touch:I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    goto :goto_0

    :pswitch_3
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->type:I

    goto :goto_0

    :cond_7
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .line 525
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->type:I

    if-eqz v0, :cond_0

    .line 526
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 528
    :cond_0
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->touch:I

    if-eqz v0, :cond_1

    .line 529
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->touch:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 531
    :cond_1
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->dir:I

    if-eqz v0, :cond_2

    .line 532
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->dir:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 534
    :cond_2
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->command:I

    if-eqz v0, :cond_3

    .line 535
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->command:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 537
    :cond_3
    iget-boolean v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->isOutside:Z

    if-eqz v0, :cond_4

    .line 538
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->isOutside:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(IZ)V

    .line 540
    :cond_4
    iget-boolean v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->isStateChange:Z

    if-eqz v0, :cond_5

    .line 541
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->isStateChange:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(IZ)V

    .line 543
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 544
    return-void
.end method
