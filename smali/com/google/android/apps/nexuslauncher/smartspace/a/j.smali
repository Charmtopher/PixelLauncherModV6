.class public final Lcom/google/android/apps/nexuslauncher/smartspace/a/j;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public ED:Ljava/lang/String;

.field public Gr:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 590
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 591
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/j;->Gr:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/j;->ED:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/j;->cachedSize:I

    .line 592
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .line 615
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 616
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/j;->Gr:I

    if-eqz v1, :cond_0

    .line 617
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/j;->Gr:I

    .line 618
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 620
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/j;->ED:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 621
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/j;->ED:Ljava/lang/String;

    .line 622
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 624
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 560
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

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/j;->ED:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/j;->Gr:I

    goto :goto_0

    :cond_3
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .line 604
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/j;->Gr:I

    if-eqz v0, :cond_0

    .line 605
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/j;->Gr:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/j;->ED:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 608
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/j;->ED:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 610
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 611
    return-void
.end method
