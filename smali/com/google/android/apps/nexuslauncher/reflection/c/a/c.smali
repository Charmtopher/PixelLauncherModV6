.class public final Lcom/google/android/apps/nexuslauncher/reflection/c/a/c;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public tM:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 613
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 614
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/c;->time:J

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/c;->tM:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/c;->cachedSize:I

    .line 615
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .line 638
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 639
    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/c;->time:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 640
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/c;->time:J

    .line 641
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 643
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/c;->tM:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 644
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/c;->tM:Ljava/lang/String;

    .line 645
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 647
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 581
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/c;->tM:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/c;->time:J

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .line 627
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/c;->time:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 628
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/c;->time:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/c;->tM:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 631
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/c;->tM:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 633
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 634
    return-void
.end method
