.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;
.super Lcom/google/protobuf/nano/b;
.source "SourceFile"


# static fields
.field private static volatile tf:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;


# instance fields
.field public sc:Ljava/lang/String;

.field public sh:Ljava/lang/String;

.field public ta:Ljava/lang/String;

.field public tg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

.field public th:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

.field public ti:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 694
    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    .line 695
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->sc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->ta:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->tg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    invoke-static {}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->cf()[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->th:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->ti:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->sh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->aeU:Lcom/google/protobuf/nano/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->cachedSize:I

    .line 696
    return-void
.end method

.method public static cg()[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;
    .locals 2

    .line 663
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->tf:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    if-nez v0, :cond_1

    .line 664
    sget-object v0, Lcom/google/protobuf/nano/f;->afc:Ljava/lang/Object;

    monitor-enter v0

    .line 666
    :try_start_0
    sget-object v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->tf:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    if-nez v1, :cond_0

    .line 667
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    sput-object v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->tf:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    .line 669
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 671
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->tf:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .line 741
    invoke-super {p0}, Lcom/google/protobuf/nano/b;->computeSerializedSize()I

    move-result v0

    .line 742
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->sc:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->sc:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 743
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->sc:Ljava/lang/String;

    .line 744
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 746
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->ta:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->ta:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 747
    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->ta:Ljava/lang/String;

    .line 748
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 750
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->tg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    if-eqz v1, :cond_2

    .line 751
    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->tg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    .line 752
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 754
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->th:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->th:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 755
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->th:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 756
    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->th:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    aget-object v3, v3, v1

    .line 757
    if-eqz v3, :cond_3

    .line 758
    const/4 v4, 0x4

    .line 759
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v3

    add-int/2addr v0, v3

    .line 755
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 763
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->ti:Z

    if-eqz v1, :cond_5

    .line 764
    const/4 v1, 0x5

    .line 765
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 767
    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->sh:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->sh:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 768
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->sh:Ljava/lang/String;

    .line 769
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 771
    :cond_6
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 4

    .line 657
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_b

    const/16 v1, 0xa

    if-eq v0, v1, :cond_a

    const/16 v1, 0x12

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_7

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/b;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->sh:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->ti:Z

    goto :goto_0

    :cond_3
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->th:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->th:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->th:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_6

    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    invoke-direct {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    invoke-direct {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->th:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->tg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    if-nez v0, :cond_8

    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->tg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->tg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->ta:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->sc:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .line 713
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->sc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->sc:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->sc:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->ta:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->ta:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 717
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->ta:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 719
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->tg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    if-eqz v0, :cond_2

    .line 720
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->tg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 722
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->th:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->th:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 723
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->th:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 724
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->th:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    aget-object v1, v1, v0

    .line 725
    if-eqz v1, :cond_3

    .line 726
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 723
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 730
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->ti:Z

    if-eqz v0, :cond_5

    .line 731
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->ti:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(IZ)V

    .line 733
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->sh:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->sh:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 734
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->sh:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 736
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/b;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 737
    return-void
.end method
