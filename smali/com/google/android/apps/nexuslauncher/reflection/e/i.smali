.class public final Lcom/google/android/apps/nexuslauncher/reflection/e/i;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public Cx:D

.field public Cy:D

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 878
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 879
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/i;->time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/i;->Cx:D

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/i;->Cy:D

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/i;->cachedSize:I

    .line 880
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 7

    .line 909
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 910
    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/i;->time:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 911
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/i;->time:J

    .line 912
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 914
    :cond_0
    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/i;->Cx:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 915
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-eqz v1, :cond_1

    .line 916
    const/4 v1, 0x2

    .line 917
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 919
    :cond_1
    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/i;->Cy:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 920
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 921
    const/4 v1, 0x3

    .line 922
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 924
    :cond_2
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 852
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

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/i;->Cy:D

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ir()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/i;->Cx:D

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/i;->time:J

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6

    .line 893
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/i;->time:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 894
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/i;->time:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 896
    :cond_0
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/i;->Cx:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 897
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 898
    const/4 v0, 0x2

    iget-wide v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/i;->Cx:D

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ID)V

    .line 900
    :cond_1
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/i;->Cy:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 901
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 902
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/i;->Cy:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ID)V

    .line 904
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 905
    return-void
.end method
