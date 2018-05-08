.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;
.super Lcom/google/protobuf/nano/b;
.source "SourceFile"


# instance fields
.field public sc:Ljava/lang/String;

.field public sf:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;

.field public sg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/B;

.field public sh:Ljava/lang/String;

.field public tq:Z

.field public tr:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

.field public tt:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 119
    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sc:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tq:Z

    invoke-static {}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->ci()[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tr:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sf:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/B;

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tt:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->aeU:Lcom/google/protobuf/nano/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->cachedSize:I

    .line 121
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .line 170
    invoke-super {p0}, Lcom/google/protobuf/nano/b;->computeSerializedSize()I

    move-result v0

    .line 171
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sc:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sc:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sc:Ljava/lang/String;

    .line 173
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 175
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tq:Z

    if-eqz v1, :cond_1

    .line 176
    const/4 v1, 0x2

    .line 177
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tr:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tr:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 180
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tr:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 181
    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tr:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    aget-object v2, v2, v1

    .line 182
    if-eqz v2, :cond_2

    .line 183
    const/4 v3, 0x3

    .line 184
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v2

    add-int/2addr v0, v2

    .line 180
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sf:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;

    if-eqz v1, :cond_4

    .line 189
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sf:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;

    .line 190
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 192
    :cond_4
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/B;

    if-eqz v1, :cond_5

    .line 193
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/B;

    .line 194
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 196
    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tt:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;

    if-eqz v1, :cond_6

    .line 197
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tt:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;

    .line 198
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 200
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sh:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sh:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 201
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sh:Ljava/lang/String;

    .line 202
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 204
    :cond_7
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 4

    .line 79
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_e

    const/16 v1, 0xa

    if-eq v0, v1, :cond_d

    const/16 v1, 0x10

    if-eq v0, v1, :cond_c

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_8

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

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sh:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tt:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tt:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;

    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tt:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/B;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/B;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/B;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/B;

    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/B;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sf:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sf:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;

    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sf:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    goto :goto_0

    :cond_8
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tr:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    const/4 v2, 0x0

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tr:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    array-length v1, v1

    :goto_2
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    if-eqz v1, :cond_a

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tr:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_3
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_b

    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    invoke-direct {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    invoke-direct {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tr:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tq:Z

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sc:Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sc:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sc:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 142
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tq:Z

    if-eqz v0, :cond_1

    .line 143
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tq:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(IZ)V

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tr:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tr:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 146
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tr:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 147
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tr:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    aget-object v1, v1, v0

    .line 148
    if-eqz v1, :cond_2

    .line 149
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 146
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sf:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;

    if-eqz v0, :cond_4

    .line 154
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sf:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/K;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 156
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/B;

    if-eqz v0, :cond_5

    .line 157
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/B;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 159
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tt:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;

    if-eqz v0, :cond_6

    .line 160
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tt:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 162
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sh:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sh:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 163
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->sh:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 165
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/b;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 166
    return-void
.end method
