.class public final Lcom/google/android/apps/nexuslauncher/reflection/e/m;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public Co:J

.field public Cp:J

.field public Cq:Ljava/lang/String;

.field public Cr:J

.field public timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 641
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 642
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->timestamp:J

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->Co:J

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->Cp:J

    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->Cq:Ljava/lang/String;

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->Cr:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->cachedSize:I

    .line 643
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 7

    .line 678
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 679
    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->timestamp:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 680
    const/4 v1, 0x1

    iget-wide v5, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->timestamp:J

    .line 681
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 683
    :cond_0
    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->Co:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 684
    const/4 v1, 0x2

    iget-wide v5, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->Co:J

    .line 685
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 687
    :cond_1
    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->Cp:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 688
    const/4 v1, 0x3

    iget-wide v5, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->Cp:J

    .line 689
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 691
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->Cq:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 692
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->Cq:Ljava/lang/String;

    .line 693
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 695
    :cond_3
    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->Cr:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 696
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->Cr:J

    .line 697
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 699
    :cond_4
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 609
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->Cr:J

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->Cq:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->Cp:J

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->Co:J

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->timestamp:J

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6

    .line 658
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 659
    const/4 v0, 0x1

    iget-wide v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->timestamp:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 661
    :cond_0
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->Co:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 662
    const/4 v0, 0x2

    iget-wide v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->Co:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 664
    :cond_1
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->Cp:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 665
    const/4 v0, 0x3

    iget-wide v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->Cp:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 667
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->Cq:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 668
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->Cq:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 670
    :cond_3
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->Cr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 671
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->Cr:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 673
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 674
    return-void
.end method
