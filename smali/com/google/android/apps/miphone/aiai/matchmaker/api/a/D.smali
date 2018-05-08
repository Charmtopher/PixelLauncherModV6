.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;
.super Lcom/google/protobuf/nano/b;
.source "SourceFile"


# static fields
.field private static volatile tu:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;


# instance fields
.field public sc:Ljava/lang/String;

.field public sh:Ljava/lang/String;

.field public sk:Z

.field public sl:I

.field public tA:Ljava/lang/String;

.field public tB:F

.field public tC:I

.field public tD:I

.field public tE:I

.field public tF:I

.field public tp:I

.field public tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

.field public tw:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

.field public tx:Ljava/lang/String;

.field public ty:Ljava/lang/String;

.field public tz:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 358
    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    .line 359
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sc:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->cg()[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    invoke-static {}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->cj()[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tw:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tx:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->ty:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tz:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tA:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tB:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tp:I

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tC:I

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sk:Z

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sl:I

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tD:I

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tE:I

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tF:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sh:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->aeU:Lcom/google/protobuf/nano/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->cachedSize:I

    .line 360
    return-void
.end method

.method public static ci()[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;
    .locals 2

    .line 297
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tu:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    if-nez v0, :cond_1

    .line 298
    sget-object v0, Lcom/google/protobuf/nano/f;->afc:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_0
    sget-object v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tu:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    if-nez v1, :cond_0

    .line 301
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    sput-object v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tu:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    .line 303
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 305
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tu:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 6

    .line 451
    invoke-super {p0}, Lcom/google/protobuf/nano/b;->computeSerializedSize()I

    move-result v0

    .line 452
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sc:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sc:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sc:Ljava/lang/String;

    .line 454
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 456
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 457
    move v1, v0

    move v0, v3

    :goto_0
    iget-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 458
    iget-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    aget-object v4, v4, v0

    .line 459
    if-eqz v4, :cond_1

    .line 460
    const/4 v5, 0x2

    .line 461
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v4

    add-int/2addr v1, v4

    .line 457
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 465
    :cond_2
    move v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tw:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tw:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 466
    :goto_1
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tw:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

    array-length v1, v1

    if-ge v3, v1, :cond_5

    .line 467
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tw:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

    aget-object v1, v1, v3

    .line 468
    if-eqz v1, :cond_4

    .line 469
    const/4 v4, 0x3

    .line 470
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 466
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 474
    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tx:Ljava/lang/String;

    const/4 v3, 0x4

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tx:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 475
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tx:Ljava/lang/String;

    .line 476
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 478
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->ty:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->ty:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 479
    const/4 v1, 0x5

    iget-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->ty:Ljava/lang/String;

    .line 480
    invoke-static {v1, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 482
    :cond_7
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tz:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tz:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 483
    const/4 v1, 0x6

    iget-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tz:Ljava/lang/String;

    .line 484
    invoke-static {v1, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 486
    :cond_8
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tA:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tA:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 487
    const/4 v1, 0x7

    iget-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tA:Ljava/lang/String;

    .line 488
    invoke-static {v1, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 490
    :cond_9
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tB:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v4, 0x0

    .line 491
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v1, v4, :cond_a

    .line 492
    const/16 v1, 0x8

    .line 493
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 495
    :cond_a
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tp:I

    if-eqz v1, :cond_b

    .line 496
    const/16 v1, 0x9

    iget v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tp:I

    .line 497
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 499
    :cond_b
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tC:I

    if-eqz v1, :cond_c

    .line 500
    const/16 v1, 0xa

    iget v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tC:I

    .line 501
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 503
    :cond_c
    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sk:Z

    if-eqz v1, :cond_d

    .line 504
    const/16 v1, 0xb

    .line 505
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 507
    :cond_d
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sl:I

    if-eqz v1, :cond_e

    .line 508
    const/16 v1, 0xc

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sl:I

    .line 509
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 511
    :cond_e
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tD:I

    if-eqz v1, :cond_f

    .line 512
    const/16 v1, 0xd

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tD:I

    .line 513
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 515
    :cond_f
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tE:I

    if-eqz v1, :cond_10

    .line 516
    const/16 v1, 0xe

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tE:I

    .line 517
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 519
    :cond_10
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tF:I

    if-eqz v1, :cond_11

    .line 520
    const/16 v1, 0xf

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tF:I

    .line 521
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 523
    :cond_11
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sh:Ljava/lang/String;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sh:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 524
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sh:Ljava/lang/String;

    .line 525
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 527
    :cond_12
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 4

    .line 291
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/b;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sh:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tF:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tE:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tD:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sl:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sk:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tC:I

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tp:I

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->iq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tB:F

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tA:Ljava/lang/String;

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tz:Ljava/lang/String;

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->ty:Ljava/lang/String;

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tx:Ljava/lang/String;

    goto :goto_0

    :sswitch_d
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tw:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tw:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

    array-length v2, v2

    :goto_1
    add-int/2addr v0, v2

    new-array v0, v0, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tw:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_3

    new-instance v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

    invoke-direct {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

    invoke-direct {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tw:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

    goto/16 :goto_0

    :sswitch_e
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    array-length v2, v2

    :goto_3
    add-int/2addr v0, v2

    new-array v0, v0, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_6

    new-instance v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    invoke-direct {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    new-instance v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    invoke-direct {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sc:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_10
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0xa -> :sswitch_f
        0x12 -> :sswitch_e
        0x1a -> :sswitch_d
        0x22 -> :sswitch_c
        0x2a -> :sswitch_b
        0x32 -> :sswitch_a
        0x3a -> :sswitch_9
        0x45 -> :sswitch_8
        0x48 -> :sswitch_7
        0x50 -> :sswitch_6
        0x58 -> :sswitch_5
        0x60 -> :sswitch_4
        0x68 -> :sswitch_3
        0x70 -> :sswitch_2
        0x78 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .line 387
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sc:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sc:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 391
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 392
    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    aget-object v2, v2, v0

    .line 393
    if-eqz v2, :cond_1

    .line 394
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 391
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tw:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tw:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 399
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tw:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 400
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tw:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

    aget-object v0, v0, v1

    .line 401
    if-eqz v0, :cond_3

    .line 402
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 399
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 406
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tx:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tx:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 407
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tx:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 409
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->ty:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->ty:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 410
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->ty:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 412
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tz:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tz:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 413
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tz:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 415
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tA:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tA:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 416
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tA:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 418
    :cond_8
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tB:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x0

    .line 419
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 420
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tB:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IF)V

    .line 422
    :cond_9
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tp:I

    if-eqz v0, :cond_a

    .line 423
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tp:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 425
    :cond_a
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tC:I

    if-eqz v0, :cond_b

    .line 426
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tC:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 428
    :cond_b
    iget-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sk:Z

    if-eqz v0, :cond_c

    .line 429
    const/16 v0, 0xb

    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sk:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(IZ)V

    .line 431
    :cond_c
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sl:I

    if-eqz v0, :cond_d

    .line 432
    const/16 v0, 0xc

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sl:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 434
    :cond_d
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tD:I

    if-eqz v0, :cond_e

    .line 435
    const/16 v0, 0xd

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tD:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 437
    :cond_e
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tE:I

    if-eqz v0, :cond_f

    .line 438
    const/16 v0, 0xe

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tE:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 440
    :cond_f
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tF:I

    if-eqz v0, :cond_10

    .line 441
    const/16 v0, 0xf

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tF:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 443
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sh:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sh:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 444
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sh:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 446
    :cond_11
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/b;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 447
    return-void
.end method
