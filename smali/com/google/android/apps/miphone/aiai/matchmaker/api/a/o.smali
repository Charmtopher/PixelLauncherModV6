.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;
.super Lcom/google/protobuf/nano/b;
.source "SourceFile"


# instance fields
.field public sP:I

.field public sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

.field public sq:I

.field public ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 753
    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    .line 754
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->type:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sq:I

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sP:I

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->aeU:Lcom/google/protobuf/nano/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->cachedSize:I

    .line 755
    return-void
.end method

.method public static aq(I)I
    .locals 3

    .line 666
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    .line 667
    return p0

    .line 669
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum SelectionType"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .line 791
    invoke-super {p0}, Lcom/google/protobuf/nano/b;->computeSerializedSize()I

    move-result v0

    .line 792
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->type:I

    if-eqz v1, :cond_0

    .line 793
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->type:I

    .line 794
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 796
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    if-eqz v1, :cond_1

    .line 797
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    .line 798
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 800
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    if-eqz v1, :cond_2

    .line 801
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    .line 802
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 804
    :cond_2
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sq:I

    if-eqz v1, :cond_3

    .line 805
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sq:I

    .line 806
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 808
    :cond_3
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sP:I

    if-eqz v1, :cond_4

    .line 809
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sP:I

    .line 810
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 812
    :cond_4
    return v0
.end method

.method public final e(Lcom/google/protobuf/nano/a;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;
    .locals 6

    .line 820
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    .line 821
    if-eqz v0, :cond_9

    const/16 v1, 0x8

    if-eq v0, v1, :cond_8

    const/16 v1, 0x12

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    .line 825
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/b;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 826
    return-object p0

    .line 865
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sP:I

    .line 869
    :cond_1
    goto :goto_0

    .line 855
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->getPosition()I

    move-result v1

    .line 857
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v2

    if-ltz v2, :cond_3

    const/4 v3, 0x5

    if-gt v2, v3, :cond_3

    iput v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sq:I

    .line 861
    goto :goto_0

    .line 857
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/16 v4, 0x34

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum SelectionInteraction"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    :catch_0
    move-exception v2

    .line 859
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->br(I)V

    .line 860
    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->a(Lcom/google/protobuf/nano/a;I)Z

    .line 862
    goto :goto_0

    .line 848
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    if-nez v0, :cond_5

    .line 849
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    .line 851
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    .line 852
    goto :goto_0

    .line 841
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    if-nez v0, :cond_7

    .line 842
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    .line 844
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    .line 845
    goto :goto_0

    .line 831
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->getPosition()I

    move-result v1

    .line 833
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->aq(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->type:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 837
    goto/16 :goto_0

    .line 834
    :catch_1
    move-exception v2

    .line 835
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->br(I)V

    .line 836
    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->a(Lcom/google/protobuf/nano/a;I)Z

    .line 838
    goto/16 :goto_0

    .line 823
    :cond_9
    return-object p0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 0

    .line 651
    invoke-virtual {p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->e(Lcom/google/protobuf/nano/a;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .line 771
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->type:I

    if-eqz v0, :cond_0

    .line 772
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    if-eqz v0, :cond_1

    .line 775
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 777
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    if-eqz v0, :cond_2

    .line 778
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 780
    :cond_2
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sq:I

    if-eqz v0, :cond_3

    .line 781
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sq:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 783
    :cond_3
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sP:I

    if-eqz v0, :cond_4

    .line 784
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sP:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 786
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/b;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 787
    return-void
.end method
