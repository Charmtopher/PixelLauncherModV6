.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;
.super Lcom/google/protobuf/nano/b;
.source "SourceFile"


# instance fields
.field public tU:J

.field public tV:J

.field public tW:J

.field public tX:J

.field public tY:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1971
    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    .line 1972
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tU:J

    iput-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tV:J

    iput-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tW:J

    iput-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tX:J

    iput-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tY:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->aeU:Lcom/google/protobuf/nano/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->cachedSize:I

    .line 1973
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 7

    .line 2009
    invoke-super {p0}, Lcom/google/protobuf/nano/b;->computeSerializedSize()I

    move-result v0

    .line 2010
    iget-wide v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tU:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 2011
    const/4 v1, 0x1

    iget-wide v5, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tU:J

    .line 2012
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2014
    :cond_0
    iget-wide v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tV:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 2015
    const/4 v1, 0x2

    iget-wide v5, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tV:J

    .line 2016
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2018
    :cond_1
    iget-wide v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tW:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 2019
    const/4 v1, 0x3

    iget-wide v5, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tW:J

    .line 2020
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2022
    :cond_2
    iget-wide v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tX:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 2023
    const/4 v1, 0x4

    iget-wide v5, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tX:J

    .line 2024
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2026
    :cond_3
    iget-wide v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tY:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 2027
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tY:J

    .line 2028
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2030
    :cond_4
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 1937
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

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/b;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tY:J

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tX:J

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tW:J

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tV:J

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tU:J

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6

    .line 1989
    iget-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tU:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1990
    const/4 v0, 0x1

    iget-wide v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tU:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(IJ)V

    .line 1992
    :cond_0
    iget-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tV:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1993
    const/4 v0, 0x2

    iget-wide v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tV:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(IJ)V

    .line 1995
    :cond_1
    iget-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tW:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 1996
    const/4 v0, 0x3

    iget-wide v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tW:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(IJ)V

    .line 1998
    :cond_2
    iget-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tX:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 1999
    const/4 v0, 0x4

    iget-wide v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tX:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(IJ)V

    .line 2001
    :cond_3
    iget-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tY:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 2002
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;->tY:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(IJ)V

    .line 2004
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/b;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2005
    return-void
.end method
