.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;
.super Lcom/google/protobuf/nano/b;
.source "SourceFile"


# instance fields
.field public sQ:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

.field public sR:Z

.field public sS:I

.field public sT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

.field public sU:Z

.field public sV:Z

.field public sW:Z

.field public sd:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sd:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sQ:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sR:Z

    iput v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sS:I

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    iput-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sU:Z

    iput-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sV:Z

    iput-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sW:Z

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->aeU:Lcom/google/protobuf/nano/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->cachedSize:I

    .line 56
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .line 104
    invoke-super {p0}, Lcom/google/protobuf/nano/b;->computeSerializedSize()I

    move-result v0

    .line 105
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sQ:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sQ:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    .line 107
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sR:Z

    if-eqz v1, :cond_1

    .line 110
    const/4 v1, 0x2

    .line 111
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    if-eqz v1, :cond_2

    .line 114
    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    .line 115
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sU:Z

    if-eqz v1, :cond_3

    .line 118
    const/4 v1, 0x4

    .line 119
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 121
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sV:Z

    if-eqz v1, :cond_4

    .line 122
    const/4 v1, 0x5

    .line 123
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 125
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sW:Z

    if-eqz v1, :cond_5

    .line 126
    const/4 v1, 0x6

    .line 127
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 129
    :cond_5
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sS:I

    if-eqz v1, :cond_6

    .line 130
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sS:I

    .line 131
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    :cond_6
    iget-wide v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sd:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    .line 134
    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sd:J

    .line 135
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    :cond_7
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 11
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_b

    const/16 v1, 0xa

    if-eq v0, v1, :cond_9

    const/16 v1, 0x10

    if-eq v0, v1, :cond_8

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_6

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    const/16 v1, 0x28

    if-eq v0, v1, :cond_4

    const/16 v1, 0x30

    if-eq v0, v1, :cond_3

    const/16 v1, 0x38

    if-eq v0, v1, :cond_2

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/b;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sd:J

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sS:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sW:Z

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sV:Z

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sU:Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sR:Z

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sQ:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sQ:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sQ:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    goto :goto_0

    :cond_b
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sQ:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sQ:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 78
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sR:Z

    if-eqz v0, :cond_1

    .line 79
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sR:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(IZ)V

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    if-eqz v0, :cond_2

    .line 82
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 84
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sU:Z

    if-eqz v0, :cond_3

    .line 85
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sU:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(IZ)V

    .line 87
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sV:Z

    if-eqz v0, :cond_4

    .line 88
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sV:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(IZ)V

    .line 90
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sW:Z

    if-eqz v0, :cond_5

    .line 91
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sW:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(IZ)V

    .line 93
    :cond_5
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sS:I

    if-eqz v0, :cond_6

    .line 94
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sS:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 96
    :cond_6
    iget-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 97
    const/16 v0, 0x8

    iget-wide v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sd:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 99
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/b;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 100
    return-void
.end method
