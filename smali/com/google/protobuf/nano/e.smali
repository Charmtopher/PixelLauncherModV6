.class Lcom/google/protobuf/nano/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private afa:Lcom/google/protobuf/nano/c;

.field afb:Ljava/util/List;

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/nano/e;->afb:Ljava/util/List;

    .line 55
    return-void
.end method

.method private toByteArray()[B
    .locals 3

    .line 184
    invoke-virtual {p0}, Lcom/google/protobuf/nano/e;->computeSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    .line 185
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c([BII)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v1

    .line 186
    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/e;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 187
    return-object v0
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/google/protobuf/nano/e;->ix()Lcom/google/protobuf/nano/e;

    move-result-object v0

    return-object v0
.end method

.method final computeSerializedSize()I
    .locals 5

    .line 99
    nop

    .line 100
    iget-object v0, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/protobuf/nano/e;->afa:Lcom/google/protobuf/nano/c;

    iget-object v1, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/c;->z(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/e;->afb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/nano/i;

    .line 104
    iget v4, v3, Lcom/google/protobuf/nano/i;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->by(I)I

    move-result v4

    add-int/2addr v4, v1

    iget-object v3, v3, Lcom/google/protobuf/nano/i;->afd:[B

    array-length v3, v3

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    .line 105
    goto :goto_0

    .line 107
    :cond_1
    move v0, v2

    :goto_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 122
    if-ne p1, p0, :cond_0

    .line 123
    const/4 p1, 0x1

    return p1

    .line 125
    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/nano/e;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 126
    return v1

    .line 129
    :cond_1
    check-cast p1, Lcom/google/protobuf/nano/e;

    .line 130
    iget-object v0, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 134
    iget-object v0, p0, Lcom/google/protobuf/nano/e;->afa:Lcom/google/protobuf/nano/c;

    iget-object v2, p1, Lcom/google/protobuf/nano/e;->afa:Lcom/google/protobuf/nano/c;

    if-eq v0, v2, :cond_2

    .line 135
    return v1

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/nano/e;->afa:Lcom/google/protobuf/nano/c;

    iget-object v0, v0, Lcom/google/protobuf/nano/c;->aeV:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    check-cast v0, [B

    iget-object p1, p1, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_5

    .line 144
    iget-object v0, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    check-cast v0, [I

    iget-object p1, p1, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    check-cast p1, [I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    return p1

    .line 145
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_6

    .line 146
    iget-object v0, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    check-cast v0, [J

    iget-object p1, p1, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    check-cast p1, [J

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    return p1

    .line 147
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-eqz v0, :cond_7

    .line 148
    iget-object v0, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    check-cast v0, [F

    iget-object p1, p1, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    check-cast p1, [F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    return p1

    .line 149
    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-eqz v0, :cond_8

    .line 150
    iget-object v0, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    check-cast v0, [D

    iget-object p1, p1, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    check-cast p1, [D

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p1

    return p1

    .line 151
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    instance-of v0, v0, [Z

    if-eqz v0, :cond_9

    .line 152
    iget-object v0, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    check-cast v0, [Z

    iget-object p1, p1, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    check-cast p1, [Z

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p1

    return p1

    .line 154
    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 157
    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/nano/e;->afb:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/google/protobuf/nano/e;->afb:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 159
    iget-object v0, p0, Lcom/google/protobuf/nano/e;->afb:Ljava/util/List;

    iget-object p1, p1, Lcom/google/protobuf/nano/e;->afb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 163
    :cond_b
    :try_start_0
    invoke-direct {p0}, Lcom/google/protobuf/nano/e;->toByteArray()[B

    move-result-object v0

    invoke-direct {p1}, Lcom/google/protobuf/nano/e;->toByteArray()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 164
    :catch_0
    move-exception p1

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .line 172
    const/16 v0, 0x20f

    :try_start_0
    invoke-direct {p0}, Lcom/google/protobuf/nano/e;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    .line 179
    nop

    .line 180
    return v0

    .line 176
    :catch_0
    move-exception v0

    .line 178
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final ix()Lcom/google/protobuf/nano/e;
    .locals 5

    .line 192
    new-instance v0, Lcom/google/protobuf/nano/e;

    invoke-direct {v0}, Lcom/google/protobuf/nano/e;-><init>()V

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/google/protobuf/nano/e;->afa:Lcom/google/protobuf/nano/c;

    iput-object v1, v0, Lcom/google/protobuf/nano/e;->afa:Lcom/google/protobuf/nano/c;

    .line 195
    iget-object v1, p0, Lcom/google/protobuf/nano/e;->afb:Ljava/util/List;

    if-nez v1, :cond_0

    .line 196
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/protobuf/nano/e;->afb:Ljava/util/List;

    goto :goto_0

    .line 198
    :cond_0
    iget-object v1, v0, Lcom/google/protobuf/nano/e;->afb:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/nano/e;->afb:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 204
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    if-eqz v1, :cond_a

    .line 206
    iget-object v1, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    instance-of v1, v1, Lcom/google/protobuf/nano/g;

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/nano/g;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/g;->clone()Lcom/google/protobuf/nano/g;

    move-result-object v1

    iput-object v1, v0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    goto/16 :goto_3

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    goto/16 :goto_3

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    instance-of v1, v1, [[B

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 211
    iget-object v1, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    check-cast v1, [[B

    .line 212
    array-length v3, v1

    new-array v3, v3, [[B

    .line 213
    iput-object v3, v0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    .line 214
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 215
    aget-object v4, v1, v2

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, v3, v2

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 217
    :cond_3
    goto/16 :goto_3

    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    instance-of v1, v1, [Z

    if-eqz v1, :cond_5

    .line 218
    iget-object v1, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    check-cast v1, [Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    goto :goto_3

    .line 219
    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    instance-of v1, v1, [I

    if-eqz v1, :cond_6

    .line 220
    iget-object v1, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    check-cast v1, [I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    goto :goto_3

    .line 221
    :cond_6
    iget-object v1, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_7

    .line 222
    iget-object v1, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    check-cast v1, [J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    goto :goto_3

    .line 223
    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    instance-of v1, v1, [F

    if-eqz v1, :cond_8

    .line 224
    iget-object v1, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    check-cast v1, [F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    goto :goto_3

    .line 225
    :cond_8
    iget-object v1, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    instance-of v1, v1, [D

    if-eqz v1, :cond_9

    .line 226
    iget-object v1, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    check-cast v1, [D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    goto :goto_3

    .line 227
    :cond_9
    iget-object v1, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    instance-of v1, v1, [Lcom/google/protobuf/nano/g;

    if-eqz v1, :cond_a

    .line 228
    iget-object v1, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    check-cast v1, [Lcom/google/protobuf/nano/g;

    .line 229
    array-length v3, v1

    new-array v3, v3, [Lcom/google/protobuf/nano/g;

    .line 230
    iput-object v3, v0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    .line 231
    :goto_2
    array-length v4, v1

    if-ge v2, v4, :cond_a

    .line 232
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/google/protobuf/nano/g;->clone()Lcom/google/protobuf/nano/g;

    move-result-object v4

    aput-object v4, v3, v2
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 235
    :cond_a
    :goto_3
    return-object v0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/google/protobuf/nano/e;->afa:Lcom/google/protobuf/nano/c;

    iget-object v1, p0, Lcom/google/protobuf/nano/e;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/protobuf/nano/c;->a(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/e;->afb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/nano/i;

    .line 115
    iget v2, v1, Lcom/google/protobuf/nano/i;->tag:I

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bx(I)V

    iget-object v1, v1, Lcom/google/protobuf/nano/i;->afd:[B

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h([B)V

    .line 116
    goto :goto_0

    .line 118
    :cond_1
    return-void
.end method
