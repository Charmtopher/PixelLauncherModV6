.class public final La/a/a/a/a/a/c;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public aiC:La/a/a/a/a/a/d;

.field public aiD:Ljava/lang/String;

.field public aiE:Z

.field public aiF:Z

.field public aiG:F

.field public aiH:I

.field public aiI:I

.field public aiJ:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/a/a/c;->aiC:La/a/a/a/a/a/d;

    const-string v0, ""

    iput-object v0, p0, La/a/a/a/a/a/c;->aiD:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/a/a/c;->aiE:Z

    iput-boolean v0, p0, La/a/a/a/a/a/c;->aiF:Z

    const/4 v1, 0x0

    iput v1, p0, La/a/a/a/a/a/c;->aiG:F

    iput v0, p0, La/a/a/a/a/a/c;->aiH:I

    iput v0, p0, La/a/a/a/a/a/c;->aiI:I

    iput v0, p0, La/a/a/a/a/a/c;->aiJ:I

    const/4 v0, -0x1

    iput v0, p0, La/a/a/a/a/a/c;->cachedSize:I

    .line 51
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .line 99
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 100
    iget-object v1, p0, La/a/a/a/a/a/c;->aiC:La/a/a/a/a/a/d;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, La/a/a/a/a/a/c;->aiC:La/a/a/a/a/a/d;

    .line 102
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    :cond_0
    iget-object v1, p0, La/a/a/a/a/a/c;->aiD:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    const/4 v1, 0x2

    iget-object v3, p0, La/a/a/a/a/a/c;->aiD:Ljava/lang/String;

    .line 106
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_1
    iget-boolean v1, p0, La/a/a/a/a/a/c;->aiE:Z

    if-eqz v1, :cond_2

    .line 109
    const/4 v1, 0x3

    .line 110
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 112
    :cond_2
    iget-boolean v1, p0, La/a/a/a/a/a/c;->aiF:Z

    const/4 v3, 0x4

    if-eqz v1, :cond_3

    .line 113
    nop

    .line 114
    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 116
    :cond_3
    iget v1, p0, La/a/a/a/a/a/c;->aiG:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v2, 0x0

    .line 117
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 118
    const/4 v1, 0x5

    .line 119
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 121
    :cond_4
    iget v1, p0, La/a/a/a/a/a/c;->aiH:I

    if-eqz v1, :cond_5

    .line 122
    const/4 v1, 0x6

    iget v2, p0, La/a/a/a/a/a/c;->aiH:I

    .line 123
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    :cond_5
    iget v1, p0, La/a/a/a/a/a/c;->aiI:I

    if-eqz v1, :cond_6

    .line 126
    const/4 v1, 0x7

    iget v2, p0, La/a/a/a/a/a/c;->aiI:I

    .line 127
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 129
    :cond_6
    iget v1, p0, La/a/a/a/a/a/c;->aiJ:I

    if-eqz v1, :cond_7

    .line 130
    const/16 v1, 0x8

    iget v2, p0, La/a/a/a/a/a/c;->aiJ:I

    .line 131
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    :cond_7
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 8
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_a

    const/16 v1, 0xa

    if-eq v0, v1, :cond_8

    const/16 v1, 0x12

    if-eq v0, v1, :cond_7

    const/16 v1, 0x18

    if-eq v0, v1, :cond_6

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_4

    const/16 v1, 0x30

    if-eq v0, v1, :cond_3

    const/16 v1, 0x38

    if-eq v0, v1, :cond_2

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, La/a/a/a/a/a/c;->aiJ:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, La/a/a/a/a/a/c;->aiI:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, La/a/a/a/a/a/c;->aiH:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->iq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p0, La/a/a/a/a/a/c;->aiG:F

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, La/a/a/a/a/a/c;->aiF:Z

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, La/a/a/a/a/a/c;->aiE:Z

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/a/a/c;->aiD:Ljava/lang/String;

    goto :goto_0

    :cond_8
    iget-object v0, p0, La/a/a/a/a/a/c;->aiC:La/a/a/a/a/a/d;

    if-nez v0, :cond_9

    new-instance v0, La/a/a/a/a/a/d;

    invoke-direct {v0}, La/a/a/a/a/a/d;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/c;->aiC:La/a/a/a/a/a/d;

    :cond_9
    iget-object v0, p0, La/a/a/a/a/a/c;->aiC:La/a/a/a/a/a/d;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    goto :goto_0

    :cond_a
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .line 69
    iget-object v0, p0, La/a/a/a/a/a/c;->aiC:La/a/a/a/a/a/d;

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x1

    iget-object v1, p0, La/a/a/a/a/a/c;->aiC:La/a/a/a/a/a/d;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 72
    :cond_0
    iget-object v0, p0, La/a/a/a/a/a/c;->aiD:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    const/4 v0, 0x2

    iget-object v1, p0, La/a/a/a/a/a/c;->aiD:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 75
    :cond_1
    iget-boolean v0, p0, La/a/a/a/a/a/c;->aiE:Z

    if-eqz v0, :cond_2

    .line 76
    const/4 v0, 0x3

    iget-boolean v1, p0, La/a/a/a/a/a/c;->aiE:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(IZ)V

    .line 78
    :cond_2
    iget-boolean v0, p0, La/a/a/a/a/a/c;->aiF:Z

    if-eqz v0, :cond_3

    .line 79
    const/4 v0, 0x4

    iget-boolean v1, p0, La/a/a/a/a/a/c;->aiF:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(IZ)V

    .line 81
    :cond_3
    iget v0, p0, La/a/a/a/a/a/c;->aiG:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x0

    .line 82
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 83
    const/4 v0, 0x5

    iget v1, p0, La/a/a/a/a/a/c;->aiG:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IF)V

    .line 85
    :cond_4
    iget v0, p0, La/a/a/a/a/a/c;->aiH:I

    if-eqz v0, :cond_5

    .line 86
    const/4 v0, 0x6

    iget v1, p0, La/a/a/a/a/a/c;->aiH:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 88
    :cond_5
    iget v0, p0, La/a/a/a/a/a/c;->aiI:I

    if-eqz v0, :cond_6

    .line 89
    const/4 v0, 0x7

    iget v1, p0, La/a/a/a/a/a/c;->aiI:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 91
    :cond_6
    iget v0, p0, La/a/a/a/a/a/c;->aiJ:I

    if-eqz v0, :cond_7

    .line 92
    const/16 v0, 0x8

    iget v1, p0, La/a/a/a/a/a/c;->aiJ:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 94
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 95
    return-void
.end method
