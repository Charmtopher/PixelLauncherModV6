.class public final Lcom/google/android/apps/nexuslauncher/search/a/e;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public EX:Lcom/google/android/apps/nexuslauncher/search/a/d;

.field public EY:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 682
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 683
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->EX:Lcom/google/android/apps/nexuslauncher/search/a/d;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->EY:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->cachedSize:I

    .line 684
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .line 707
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 708
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->EX:Lcom/google/android/apps/nexuslauncher/search/a/d;

    if-eqz v1, :cond_0

    .line 709
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->EX:Lcom/google/android/apps/nexuslauncher/search/a/d;

    .line 710
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 712
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->EY:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 713
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->EY:Ljava/lang/String;

    .line 714
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 716
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 659
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0xa

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

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->EY:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->EX:Lcom/google/android/apps/nexuslauncher/search/a/d;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/apps/nexuslauncher/search/a/d;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/search/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->EX:Lcom/google/android/apps/nexuslauncher/search/a/d;

    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->EX:Lcom/google/android/apps/nexuslauncher/search/a/d;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .line 696
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->EX:Lcom/google/android/apps/nexuslauncher/search/a/d;

    if-eqz v0, :cond_0

    .line 697
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->EX:Lcom/google/android/apps/nexuslauncher/search/a/d;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->EY:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 700
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->EY:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 702
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 703
    return-void
.end method
