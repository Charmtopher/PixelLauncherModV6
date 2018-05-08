.class public final Lcom/google/android/apps/nexuslauncher/smartspace/a/f;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public Gj:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public tN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 472
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 473
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/f;->key:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/f;->Gj:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/f;->tN:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/f;->cachedSize:I

    .line 474
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .line 501
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 502
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/f;->key:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 503
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/f;->key:Ljava/lang/String;

    .line 504
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 506
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/f;->Gj:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 507
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/f;->Gj:Ljava/lang/String;

    .line 508
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 510
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/f;->tN:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 511
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/f;->tN:Ljava/lang/String;

    .line 512
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 514
    :cond_2
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 446
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/f;->tN:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/f;->Gj:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/f;->key:Ljava/lang/String;

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/f;->key:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/f;->key:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/f;->Gj:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 491
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/f;->Gj:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/f;->tN:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 494
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/f;->tN:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 496
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 497
    return-void
.end method
