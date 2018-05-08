.class public final Lcom/google/android/apps/nexuslauncher/smartspace/a/e;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public Gi:I

.field public xs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 696
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 697
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/e;->xs:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/e;->Gi:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/e;->cachedSize:I

    .line 698
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .line 721
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 722
    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/e;->xs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 723
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/e;->xs:J

    .line 724
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 726
    :cond_0
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/e;->Gi:I

    if-eqz v1, :cond_1

    .line 727
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/e;->Gi:I

    .line 728
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 730
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 673
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/e;->Gi:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/e;->xs:J

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .line 710
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/e;->xs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 711
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/e;->xs:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 713
    :cond_0
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/e;->Gi:I

    if-eqz v0, :cond_1

    .line 714
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/e;->Gi:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 716
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 717
    return-void
.end method
