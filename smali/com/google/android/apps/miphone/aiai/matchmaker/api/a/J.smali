.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;
.super Lcom/google/protobuf/nano/b;
.source "SourceFile"


# instance fields
.field public height:F

.field public left:F

.field public top:F

.field public width:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1828
    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    .line 1829
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->left:F

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->top:F

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->width:F

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->height:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->aeU:Lcom/google/protobuf/nano/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->cachedSize:I

    .line 1830
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .line 1866
    invoke-super {p0}, Lcom/google/protobuf/nano/b;->computeSerializedSize()I

    move-result v0

    .line 1867
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->left:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1868
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/4 v4, 0x4

    if-eq v1, v3, :cond_0

    .line 1869
    const/4 v1, 0x1

    .line 1870
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    .line 1872
    :cond_0
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->top:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1873
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 1874
    const/4 v1, 0x2

    .line 1875
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    .line 1877
    :cond_1
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->width:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1878
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_2

    .line 1879
    const/4 v1, 0x3

    .line 1880
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    .line 1882
    :cond_2
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->height:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1883
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1884
    nop

    .line 1885
    invoke-static {v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    .line 1887
    :cond_3
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 1797
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x25

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/b;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->iq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->height:F

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->iq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->width:F

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->iq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->top:F

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->iq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->left:F

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .line 1845
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->left:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1846
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 1847
    const/4 v0, 0x1

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->left:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IF)V

    .line 1849
    :cond_0
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->top:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1850
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 1851
    const/4 v0, 0x2

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->top:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IF)V

    .line 1853
    :cond_1
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->width:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1854
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 1855
    const/4 v0, 0x3

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->width:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IF)V

    .line 1857
    :cond_2
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->height:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1858
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 1859
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->height:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IF)V

    .line 1861
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/b;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1862
    return-void
.end method
