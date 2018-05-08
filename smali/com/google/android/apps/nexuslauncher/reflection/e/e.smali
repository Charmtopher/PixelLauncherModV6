.class public final Lcom/google/android/apps/nexuslauncher/reflection/e/e;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public CC:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 715
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 716
    sget-object v0, Lcom/google/protobuf/nano/j;->afh:[D

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/e;->CC:[D

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/e;->cachedSize:I

    .line 717
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .line 738
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 739
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/e;->CC:[D

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/e;->CC:[D

    array-length v1, v1

    if-lez v1, :cond_0

    .line 740
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/e;->CC:[D

    array-length v2, v2

    mul-int/2addr v1, v2

    .line 741
    add-int/2addr v0, v1

    .line 742
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/e;->CC:[D

    array-length v2, v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 744
    :cond_0
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 6

    .line 695
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->bp(I)I

    move-result v2

    div-int/lit8 v0, v0, 0x8

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/e;->CC:[D

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/e;->CC:[D

    array-length v3, v3

    :goto_1
    add-int/2addr v0, v3

    new-array v0, v0, [D

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/e;->CC:[D

    invoke-static {v4, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v1, v0

    if-ge v3, v1, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ir()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    aput-wide v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/e;->CC:[D

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->bq(I)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/e;->CC:[D

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/e;->CC:[D

    array-length v2, v2

    :goto_3
    add-int/2addr v0, v2

    new-array v0, v0, [D

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/e;->CC:[D

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ir()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    aput-wide v3, v0, v2

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ir()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    aput-wide v3, v0, v2

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/e;->CC:[D

    goto :goto_0

    :cond_7
    return-object p0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .line 728
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/e;->CC:[D

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/e;->CC:[D

    array-length v0, v0

    if-lez v0, :cond_0

    .line 729
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/e;->CC:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 730
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/e;->CC:[D

    aget-wide v2, v1, v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ID)V

    .line 729
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 733
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 734
    return-void
.end method
