.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/v;
.super Lcom/google/protobuf/nano/b;
.source "SourceFile"


# instance fields
.field public sX:Z

.field public sY:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/v;->sX:Z

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/v;->sY:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/v;->aeU:Lcom/google/protobuf/nano/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/v;->cachedSize:I

    .line 38
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .line 62
    invoke-super {p0}, Lcom/google/protobuf/nano/b;->computeSerializedSize()I

    move-result v0

    .line 63
    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/v;->sX:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 64
    nop

    .line 65
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 67
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/v;->sY:Z

    if-eqz v1, :cond_1

    .line 68
    const/4 v1, 0x2

    .line 69
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 71
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 11
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

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/v;->sY:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/v;->sX:Z

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .line 51
    iget-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/v;->sX:Z

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/v;->sX:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(IZ)V

    .line 54
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/v;->sY:Z

    if-eqz v0, :cond_1

    .line 55
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/v;->sY:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(IZ)V

    .line 57
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/b;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 58
    return-void
.end method
