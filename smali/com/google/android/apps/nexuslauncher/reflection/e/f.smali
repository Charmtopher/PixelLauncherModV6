.class public final Lcom/google/android/apps/nexuslauncher/reflection/e/f;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public CY:I

.field public CZ:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

.field public Da:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

.field public Db:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

.field public Dc:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

.field public Dd:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

.field public De:Lcom/google/android/apps/nexuslauncher/reflection/e/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 426
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 427
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->CY:I

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/e/d;->ej()[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->CZ:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/e/d;->ej()[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Da:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/e/d;->ej()[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Db:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/e/d;->ej()[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Dc:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/e/d;->ej()[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Dd:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->De:Lcom/google/android/apps/nexuslauncher/reflection/e/e;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->cachedSize:I

    .line 428
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .line 496
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 497
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->CY:I

    if-eqz v1, :cond_0

    .line 498
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->CY:I

    .line 499
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->CZ:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->CZ:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 502
    move v1, v0

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->CZ:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 503
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->CZ:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    aget-object v3, v3, v0

    .line 504
    if-eqz v3, :cond_1

    .line 505
    const/4 v4, 0x2

    .line 506
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v3

    add-int/2addr v1, v3

    .line 502
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 510
    :cond_2
    move v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Da:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Da:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    array-length v1, v1

    if-lez v1, :cond_6

    .line 511
    move v1, v0

    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Da:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 512
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Da:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    aget-object v3, v3, v0

    .line 513
    if-eqz v3, :cond_4

    .line 514
    const/4 v4, 0x3

    .line 515
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v3

    add-int/2addr v1, v3

    .line 511
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 519
    :cond_5
    move v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Db:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Db:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    array-length v1, v1

    if-lez v1, :cond_9

    .line 520
    move v1, v0

    move v0, v2

    :goto_2
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Db:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 521
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Db:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    aget-object v3, v3, v0

    .line 522
    if-eqz v3, :cond_7

    .line 523
    const/4 v4, 0x4

    .line 524
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v3

    add-int/2addr v1, v3

    .line 520
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 528
    :cond_8
    move v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Dc:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Dc:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    array-length v1, v1

    if-lez v1, :cond_c

    .line 529
    move v1, v0

    move v0, v2

    :goto_3
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Dc:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    array-length v3, v3

    if-ge v0, v3, :cond_b

    .line 530
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Dc:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    aget-object v3, v3, v0

    .line 531
    if-eqz v3, :cond_a

    .line 532
    const/4 v4, 0x5

    .line 533
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v3

    add-int/2addr v1, v3

    .line 529
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 537
    :cond_b
    move v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Dd:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Dd:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    array-length v1, v1

    if-lez v1, :cond_e

    .line 538
    :goto_4
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Dd:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    array-length v1, v1

    if-ge v2, v1, :cond_e

    .line 539
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Dd:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    aget-object v1, v1, v2

    .line 540
    if-eqz v1, :cond_d

    .line 541
    const/4 v3, 0x6

    .line 542
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 538
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 546
    :cond_e
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->De:Lcom/google/android/apps/nexuslauncher/reflection/e/e;

    if-eqz v1, :cond_f

    .line 547
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->De:Lcom/google/android/apps/nexuslauncher/reflection/e/e;

    .line 548
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 550
    :cond_f
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 4

    .line 388
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_18

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-eq v0, v1, :cond_13

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_f

    const/16 v1, 0x22

    if-eq v0, v1, :cond_b

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_7

    const/16 v1, 0x32

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->De:Lcom/google/android/apps/nexuslauncher/reflection/e/e;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/e/e;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/e/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->De:Lcom/google/android/apps/nexuslauncher/reflection/e/e;

    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->De:Lcom/google/android/apps/nexuslauncher/reflection/e/e;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    goto :goto_0

    :cond_3
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Dd:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Dd:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Dd:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_6

    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/d;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/d;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Dd:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    goto :goto_0

    :cond_7
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Dc:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    if-nez v1, :cond_8

    move v1, v2

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Dc:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    if-eqz v1, :cond_9

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Dc:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    :goto_4
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_a

    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/d;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/d;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Dc:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    goto/16 :goto_0

    :cond_b
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Db:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    if-nez v1, :cond_c

    move v1, v2

    goto :goto_5

    :cond_c
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Db:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    array-length v1, v1

    :goto_5
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    if-eqz v1, :cond_d

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Db:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_6
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_e

    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/d;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_e
    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/d;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Db:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    goto/16 :goto_0

    :cond_f
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Da:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    if-nez v1, :cond_10

    move v1, v2

    goto :goto_7

    :cond_10
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Da:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    array-length v1, v1

    :goto_7
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    if-eqz v1, :cond_11

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Da:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    :goto_8
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_12

    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/d;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/d;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Da:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    goto/16 :goto_0

    :cond_13
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->CZ:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    if-nez v1, :cond_14

    move v1, v2

    goto :goto_9

    :cond_14
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->CZ:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    array-length v1, v1

    :goto_9
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    if-eqz v1, :cond_15

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->CZ:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_15
    :goto_a
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_16

    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/d;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_16
    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/d;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->CZ:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    goto/16 :goto_0

    :cond_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->CY:I

    goto/16 :goto_0

    :cond_18
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .line 445
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->CY:I

    if-eqz v0, :cond_0

    .line 446
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->CY:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->CZ:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->CZ:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 449
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->CZ:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 450
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->CZ:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    aget-object v2, v2, v0

    .line 451
    if-eqz v2, :cond_1

    .line 452
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 449
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 456
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Da:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Da:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 457
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Da:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 458
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Da:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    aget-object v2, v2, v0

    .line 459
    if-eqz v2, :cond_3

    .line 460
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 457
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 464
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Db:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Db:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 465
    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Db:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 466
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Db:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    aget-object v2, v2, v0

    .line 467
    if-eqz v2, :cond_5

    .line 468
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 465
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 472
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Dc:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Dc:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    array-length v0, v0

    if-lez v0, :cond_8

    .line 473
    move v0, v1

    :goto_3
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Dc:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 474
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Dc:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    aget-object v2, v2, v0

    .line 475
    if-eqz v2, :cond_7

    .line 476
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 473
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 480
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Dd:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Dd:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    array-length v0, v0

    if-lez v0, :cond_a

    .line 481
    :goto_4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Dd:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    array-length v0, v0

    if-ge v1, v0, :cond_a

    .line 482
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Dd:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    aget-object v0, v0, v1

    .line 483
    if-eqz v0, :cond_9

    .line 484
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 481
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 488
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->De:Lcom/google/android/apps/nexuslauncher/reflection/e/e;

    if-eqz v0, :cond_b

    .line 489
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->De:Lcom/google/android/apps/nexuslauncher/reflection/e/e;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 491
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 492
    return-void
.end method
