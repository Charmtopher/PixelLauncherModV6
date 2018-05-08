.class public abstract Lcom/google/protobuf/nano/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/g;->cachedSize:I

    return-void
.end method

.method public static final mergeFrom(Lcom/google/protobuf/nano/g;[B)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 131
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/protobuf/nano/g;->mergeFrom(Lcom/google/protobuf/nano/g;[BII)Lcom/google/protobuf/nano/g;

    move-result-object p0

    return-object p0
.end method

.method public static final mergeFrom(Lcom/google/protobuf/nano/g;[BII)Lcom/google/protobuf/nano/g;
    .locals 0

    .line 141
    nop

    .line 142
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/nano/a;->b([BII)Lcom/google/protobuf/nano/a;

    move-result-object p1

    .line 143
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/g;->mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;

    .line 144
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/protobuf/nano/a;->bn(I)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    return-object p0

    .line 148
    :catch_0
    move-exception p0

    .line 149
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 146
    :catch_1
    move-exception p0

    throw p0
.end method

.method public static final toByteArray(Lcom/google/protobuf/nano/g;[BII)V
    .locals 0

    .line 115
    nop

    .line 116
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c([BII)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object p1

    .line 117
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 118
    iget-object p0, p1, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->aeT:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    if-nez p0, :cond_0

    .line 122
    return-void

    .line 118
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Did not write as much data as expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :catch_0
    move-exception p0

    .line 120
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final toByteArray(Lcom/google/protobuf/nano/g;)[B
    .locals 3

    .line 100
    invoke-virtual {p0}, Lcom/google/protobuf/nano/g;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    .line 101
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lcom/google/protobuf/nano/g;->toByteArray(Lcom/google/protobuf/nano/g;[BII)V

    .line 102
    return-object v0
.end method


# virtual methods
.method public clone()Lcom/google/protobuf/nano/g;
    .locals 1

    .line 196
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/g;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/google/protobuf/nano/g;->clone()Lcom/google/protobuf/nano/g;

    move-result-object v0

    return-object v0
.end method

.method public computeSerializedSize()I
    .locals 1

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public final getSerializedSize()I
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 66
    iput v0, p0, Lcom/google/protobuf/nano/g;->cachedSize:I

    .line 67
    return v0
.end method

.method public abstract mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 188
    invoke-static {p0}, Lcom/google/protobuf/nano/h;->c(Lcom/google/protobuf/nano/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 0

    .line 87
    return-void
.end method
