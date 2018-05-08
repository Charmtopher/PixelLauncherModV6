.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;
.super Lcom/google/protobuf/nano/b;
.source "SourceFile"


# static fields
.field private static volatile sZ:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;


# instance fields
.field public sc:Ljava/lang/String;

.field public sh:Ljava/lang/String;

.field public ta:Ljava/lang/String;

.field public tb:Ljava/lang/String;

.field public tc:Ljava/lang/String;

.field public td:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

.field public te:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 888
    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    .line 889
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->sc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->ta:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->tb:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->tc:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->td:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->te:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->sh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->aeU:Lcom/google/protobuf/nano/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->cachedSize:I

    .line 890
    return-void
.end method

.method public static cf()[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;
    .locals 2

    .line 854
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->sZ:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    if-nez v0, :cond_1

    .line 855
    sget-object v0, Lcom/google/protobuf/nano/f;->afc:Ljava/lang/Object;

    monitor-enter v0

    .line 857
    :try_start_0
    sget-object v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->sZ:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    if-nez v1, :cond_0

    .line 858
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    sput-object v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->sZ:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    .line 860
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 862
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->sZ:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .line 934
    invoke-super {p0}, Lcom/google/protobuf/nano/b;->computeSerializedSize()I

    move-result v0

    .line 935
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->sc:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->sc:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 936
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->sc:Ljava/lang/String;

    .line 937
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 939
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->ta:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->ta:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 940
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->ta:Ljava/lang/String;

    .line 941
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 943
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->tb:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->tb:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 944
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->tb:Ljava/lang/String;

    .line 945
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 947
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->tc:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->tc:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 948
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->tc:Ljava/lang/String;

    .line 949
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 951
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->td:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    if-eqz v1, :cond_4

    .line 952
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->td:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    .line 953
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 955
    :cond_4
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->te:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    if-eqz v1, :cond_5

    .line 956
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->te:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    .line 957
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 959
    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->sh:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->sh:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 960
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->sh:Ljava/lang/String;

    .line 961
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 963
    :cond_6
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 848
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_a

    const/16 v1, 0xa

    if-eq v0, v1, :cond_9

    const/16 v1, 0x12

    if-eq v0, v1, :cond_8

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_7

    const/16 v1, 0x22

    if-eq v0, v1, :cond_6

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x32

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/b;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->sh:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->te:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->te:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->te:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->td:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->td:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->td:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->tc:Ljava/lang/String;

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->tb:Ljava/lang/String;

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->ta:Ljava/lang/String;

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->sc:Ljava/lang/String;

    goto :goto_0

    :cond_a
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .line 908
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->sc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->sc:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 909
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->sc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->ta:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->ta:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 912
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->ta:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 914
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->tb:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->tb:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 915
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->tb:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 917
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->tc:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->tc:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 918
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->tc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 920
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->td:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    if-eqz v0, :cond_4

    .line 921
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->td:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 923
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->te:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    if-eqz v0, :cond_5

    .line 924
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->te:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 926
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->sh:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->sh:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 927
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->sh:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 929
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/b;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 930
    return-void
.end method
