.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;
.super Lcom/google/protobuf/nano/b;
.source "SourceFile"


# instance fields
.field public sE:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

.field public sd:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    .line 71
    invoke-static {}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->ce()[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;->sE:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;->sd:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;->aeU:Lcom/google/protobuf/nano/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;->cachedSize:I

    .line 72
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .line 101
    invoke-super {p0}, Lcom/google/protobuf/nano/b;->computeSerializedSize()I

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;->sE:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;->sE:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 103
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;->sE:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;->sE:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    aget-object v2, v2, v1

    .line 105
    if-eqz v2, :cond_0

    .line 106
    nop

    .line 107
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v2

    add-int/2addr v0, v2

    .line 103
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_1
    iget-wide v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;->sd:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 112
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;->sd:J

    .line 113
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    :cond_2
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 4

    .line 45
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/b;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;->sd:J

    goto :goto_0

    :cond_2
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;->sE:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;->sE:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;->sE:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_5

    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    invoke-direct {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    invoke-direct {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;->sE:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;->sE:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;->sE:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 86
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;->sE:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;->sE:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    aget-object v1, v1, v0

    .line 88
    if-eqz v1, :cond_0

    .line 89
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 86
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_1
    iget-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;->sd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 94
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;->sd:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 96
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/b;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 97
    return-void
.end method
