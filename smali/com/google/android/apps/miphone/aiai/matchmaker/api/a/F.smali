.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;
.super Lcom/google/protobuf/nano/b;
.source "SourceFile"


# instance fields
.field public tJ:Z

.field public tK:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2169
    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    .line 2170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;->tJ:Z

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;->tK:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;->aeU:Lcom/google/protobuf/nano/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;->cachedSize:I

    .line 2171
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .line 2195
    invoke-super {p0}, Lcom/google/protobuf/nano/b;->computeSerializedSize()I

    move-result v0

    .line 2196
    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;->tJ:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2197
    nop

    .line 2198
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 2200
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;->tK:Z

    if-eqz v1, :cond_1

    .line 2201
    const/4 v1, 0x2

    .line 2202
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 2204
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 2144
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/b;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;->tK:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;->tJ:Z

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .line 2184
    iget-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;->tJ:Z

    if-eqz v0, :cond_0

    .line 2185
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;->tJ:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(IZ)V

    .line 2187
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;->tK:Z

    if-eqz v0, :cond_1

    .line 2188
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;->tK:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(IZ)V

    .line 2190
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/b;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2191
    return-void
.end method
