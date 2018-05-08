.class public final Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public Cx:D

.field public Cy:D

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 715
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 716
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;->time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;->Cx:D

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;->Cy:D

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;->cachedSize:I

    .line 717
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 7

    .line 746
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 747
    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;->time:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 748
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;->time:J

    .line 749
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 751
    :cond_0
    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;->Cx:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 752
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-eqz v1, :cond_1

    .line 753
    const/4 v1, 0x2

    .line 754
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 756
    :cond_1
    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;->Cy:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 757
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 758
    const/4 v1, 0x3

    .line 759
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 761
    :cond_2
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 689
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ir()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;->Cy:D

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ir()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;->Cx:D

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;->time:J

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6

    .line 730
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;->time:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 731
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;->time:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 733
    :cond_0
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;->Cx:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 734
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 735
    const/4 v0, 0x2

    iget-wide v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;->Cx:D

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ID)V

    .line 737
    :cond_1
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;->Cy:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 738
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 739
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;->Cy:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ID)V

    .line 741
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 742
    return-void
.end method
