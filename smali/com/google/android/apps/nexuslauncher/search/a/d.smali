.class public final Lcom/google/android/apps/nexuslauncher/search/a/d;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public EF:I

.field public EG:Z

.field public EH:Ljava/lang/String;

.field public EI:Ljava/lang/String;

.field public EJ:Lcom/google/android/apps/nexuslauncher/search/a/b;

.field public EK:Lcom/google/android/apps/nexuslauncher/search/a/b;

.field public EL:I

.field public EM:[Lcom/google/android/apps/nexuslauncher/search/a/c;

.field public EN:Lcom/google/android/apps/nexuslauncher/search/a/b;

.field public EO:Ljava/lang/String;

.field public EP:I

.field public EQ:I

.field public ER:Ljava/lang/String;

.field public ES:Lcom/google/android/apps/nexuslauncher/search/a/b;

.field public ET:Z

.field public EU:Z

.field public EV:I

.field public EW:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 345
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 346
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EF:I

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EG:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EH:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EI:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EJ:Lcom/google/android/apps/nexuslauncher/search/a/b;

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EK:Lcom/google/android/apps/nexuslauncher/search/a/b;

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EL:I

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/search/a/c;->eH()[Lcom/google/android/apps/nexuslauncher/search/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EM:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EN:Lcom/google/android/apps/nexuslauncher/search/a/b;

    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EO:Ljava/lang/String;

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EP:I

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EQ:I

    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->ER:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->ES:Lcom/google/android/apps/nexuslauncher/search/a/b;

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->ET:Z

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EU:Z

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EV:I

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EW:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->cachedSize:I

    .line 347
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .line 439
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 440
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EF:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 441
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EF:I

    .line 442
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EH:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 445
    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EH:Ljava/lang/String;

    .line 446
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 448
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EI:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 449
    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EI:Ljava/lang/String;

    .line 450
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 452
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EJ:Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-eqz v1, :cond_3

    .line 453
    const/4 v1, 0x4

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EJ:Lcom/google/android/apps/nexuslauncher/search/a/b;

    .line 454
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 456
    :cond_3
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EL:I

    if-eqz v1, :cond_4

    .line 457
    const/4 v1, 0x5

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EL:I

    .line 458
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 460
    :cond_4
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EM:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EM:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    array-length v1, v1

    if-lez v1, :cond_6

    .line 461
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EM:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    array-length v3, v3

    if-ge v1, v3, :cond_6

    .line 462
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EM:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    aget-object v3, v3, v1

    .line 463
    if-eqz v3, :cond_5

    .line 464
    const/4 v4, 0x6

    .line 465
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v3

    add-int/2addr v0, v3

    .line 461
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 469
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EN:Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-eqz v1, :cond_7

    .line 470
    const/4 v1, 0x7

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EN:Lcom/google/android/apps/nexuslauncher/search/a/b;

    .line 471
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 473
    :cond_7
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EO:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 474
    const/16 v1, 0x8

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EO:Ljava/lang/String;

    .line 475
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 477
    :cond_8
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EP:I

    if-eqz v1, :cond_9

    .line 478
    const/16 v1, 0x9

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EP:I

    .line 479
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 481
    :cond_9
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EQ:I

    if-eqz v1, :cond_a

    .line 482
    const/16 v1, 0xa

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EQ:I

    .line 483
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 485
    :cond_a
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->ER:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 486
    const/16 v1, 0xb

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->ER:Ljava/lang/String;

    .line 487
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 489
    :cond_b
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->ES:Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-eqz v1, :cond_c

    .line 490
    const/16 v1, 0xc

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->ES:Lcom/google/android/apps/nexuslauncher/search/a/b;

    .line 491
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 493
    :cond_c
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->ET:Z

    if-eqz v1, :cond_d

    .line 494
    const/16 v1, 0xd

    .line 495
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 497
    :cond_d
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EK:Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-eqz v1, :cond_e

    .line 498
    const/16 v1, 0xe

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EK:Lcom/google/android/apps/nexuslauncher/search/a/b;

    .line 499
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 501
    :cond_e
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EG:Z

    if-eqz v1, :cond_f

    .line 502
    const/16 v1, 0xf

    .line 503
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 505
    :cond_f
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EU:Z

    if-eqz v1, :cond_10

    .line 506
    const/16 v1, 0x10

    .line 507
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 509
    :cond_10
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EV:I

    if-eqz v1, :cond_11

    .line 510
    const/16 v1, 0x11

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EV:I

    .line 511
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 513
    :cond_11
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EW:I

    if-eqz v1, :cond_12

    .line 514
    const/16 v1, 0x12

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EW:I

    .line 515
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 517
    :cond_12
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 4

    .line 274
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EW:I

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EV:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EU:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EG:Z

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EK:Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/apps/nexuslauncher/search/a/b;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/search/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EK:Lcom/google/android/apps/nexuslauncher/search/a/b;

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EK:Lcom/google/android/apps/nexuslauncher/search/a/b;

    goto/16 :goto_3

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->ET:Z

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->ES:Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/apps/nexuslauncher/search/a/b;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/search/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->ES:Lcom/google/android/apps/nexuslauncher/search/a/b;

    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->ES:Lcom/google/android/apps/nexuslauncher/search/a/b;

    goto/16 :goto_3

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->ER:Ljava/lang/String;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EQ:I

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EP:I

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EO:Ljava/lang/String;

    goto :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EN:Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/apps/nexuslauncher/search/a/b;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/search/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EN:Lcom/google/android/apps/nexuslauncher/search/a/b;

    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EN:Lcom/google/android/apps/nexuslauncher/search/a/b;

    goto :goto_3

    :sswitch_c
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EM:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EM:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/search/a/c;

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EM:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_6

    new-instance v2, Lcom/google/android/apps/nexuslauncher/search/a/c;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/search/a/c;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    new-instance v2, Lcom/google/android/apps/nexuslauncher/search/a/c;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/search/a/c;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EM:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EL:I

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EJ:Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/android/apps/nexuslauncher/search/a/b;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/search/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EJ:Lcom/google/android/apps/nexuslauncher/search/a/b;

    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EJ:Lcom/google/android/apps/nexuslauncher/search/a/b;

    :goto_3
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EI:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EH:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EF:I

    goto/16 :goto_0

    :sswitch_12
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_12
        0x8 -> :sswitch_11
        0x12 -> :sswitch_10
        0x1a -> :sswitch_f
        0x22 -> :sswitch_e
        0x28 -> :sswitch_d
        0x32 -> :sswitch_c
        0x3a -> :sswitch_b
        0x42 -> :sswitch_a
        0x48 -> :sswitch_9
        0x50 -> :sswitch_8
        0x5a -> :sswitch_7
        0x62 -> :sswitch_6
        0x68 -> :sswitch_5
        0x72 -> :sswitch_4
        0x78 -> :sswitch_3
        0x80 -> :sswitch_2
        0x88 -> :sswitch_1
        0x90 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .line 375
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EF:I

    if-eqz v0, :cond_0

    .line 376
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EF:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EH:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 379
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EH:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EI:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 382
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EI:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EJ:Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-eqz v0, :cond_3

    .line 385
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EJ:Lcom/google/android/apps/nexuslauncher/search/a/b;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 387
    :cond_3
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EL:I

    if-eqz v0, :cond_4

    .line 388
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EL:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 390
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EM:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EM:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 391
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EM:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 392
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EM:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    aget-object v1, v1, v0

    .line 393
    if-eqz v1, :cond_5

    .line 394
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 391
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EN:Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-eqz v0, :cond_7

    .line 399
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EN:Lcom/google/android/apps/nexuslauncher/search/a/b;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 401
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EO:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 402
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EO:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 404
    :cond_8
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EP:I

    if-eqz v0, :cond_9

    .line 405
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EP:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 407
    :cond_9
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EQ:I

    if-eqz v0, :cond_a

    .line 408
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EQ:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 410
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->ER:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 411
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->ER:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 413
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->ES:Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-eqz v0, :cond_c

    .line 414
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->ES:Lcom/google/android/apps/nexuslauncher/search/a/b;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 416
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->ET:Z

    if-eqz v0, :cond_d

    .line 417
    const/16 v0, 0xd

    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->ET:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(IZ)V

    .line 419
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EK:Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-eqz v0, :cond_e

    .line 420
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EK:Lcom/google/android/apps/nexuslauncher/search/a/b;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 422
    :cond_e
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EG:Z

    if-eqz v0, :cond_f

    .line 423
    const/16 v0, 0xf

    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EG:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(IZ)V

    .line 425
    :cond_f
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EU:Z

    if-eqz v0, :cond_10

    .line 426
    const/16 v0, 0x10

    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EU:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(IZ)V

    .line 428
    :cond_10
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EV:I

    if-eqz v0, :cond_11

    .line 429
    const/16 v0, 0x11

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EV:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 431
    :cond_11
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EW:I

    if-eqz v0, :cond_12

    .line 432
    const/16 v0, 0x12

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EW:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 434
    :cond_12
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 435
    return-void
.end method
