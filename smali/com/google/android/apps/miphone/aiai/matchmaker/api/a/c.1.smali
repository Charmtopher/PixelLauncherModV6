.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;
.super Lcom/google/protobuf/nano/b;
.source "SourceFile"


# instance fields
.field public sc:Ljava/lang/String;

.field public sd:J

.field public se:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

.field public sf:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;

.field public sg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/B;

.field public sh:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sc:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sd:J

    invoke-static {}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->cc()[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->se:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sf:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/B;

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->aeU:Lcom/google/protobuf/nano/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->cachedSize:I

    .line 50
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .line 95
    invoke-super {p0}, Lcom/google/protobuf/nano/b;->computeSerializedSize()I

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sc:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sc:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sc:Ljava/lang/String;

    .line 98
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->se:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->se:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 101
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->se:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 102
    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->se:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    aget-object v2, v2, v1

    .line 103
    if-eqz v2, :cond_1

    .line 104
    const/4 v3, 0x2

    .line 105
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v2

    add-int/2addr v0, v2

    .line 101
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sf:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;

    if-eqz v1, :cond_3

    .line 110
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sf:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;

    .line 111
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/B;

    if-eqz v1, :cond_4

    .line 114
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/B;

    .line 115
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_4
    iget-wide v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sd:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    .line 118
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sd:J

    .line 119
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 121
    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sh:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sh:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 122
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sh:Ljava/lang/String;

    .line 123
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    :cond_6
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 4

    .line 11
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_c

    const/16 v1, 0xa

    if-eq v0, v1, :cond_b

    const/16 v1, 0x12

    if-eq v0, v1, :cond_7

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_5

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/b;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sh:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sd:J

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/B;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/B;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/B;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/B;

    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/B;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sf:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sf:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;

    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sf:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    goto :goto_0

    :cond_7
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->se:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    move v1, v2

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->se:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    array-length v1, v1

    :goto_2
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    if-eqz v1, :cond_9

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->se:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    :goto_3
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_a

    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    invoke-direct {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    invoke-direct {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->se:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sc:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sc:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sc:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->se:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->se:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 71
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->se:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 72
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->se:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    aget-object v1, v1, v0

    .line 73
    if-eqz v1, :cond_1

    .line 74
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 71
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sf:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;

    if-eqz v0, :cond_3

    .line 79
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sf:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/B;

    if-eqz v0, :cond_4

    .line 82
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/B;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 84
    :cond_4
    iget-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 85
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sd:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 87
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sh:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sh:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 88
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sh:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 90
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/b;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 91
    return-void
.end method
