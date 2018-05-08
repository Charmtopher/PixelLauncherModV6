.class public final Lcom/google/android/apps/nexuslauncher/reflection/e/h;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public Cn:Ljava/lang/String;

.field public Ct:[Ljava/lang/String;

.field public Df:Lcom/google/android/apps/nexuslauncher/reflection/e/m;

.field public Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

.field public Dh:Ljava/lang/String;

.field public Di:Ljava/lang/String;

.field public duration:J

.field public sc:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->sc:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->type:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->duration:J

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Cn:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Df:Lcom/google/android/apps/nexuslauncher/reflection/e/m;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Dh:Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/j;->afj:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Ct:[Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Di:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->cachedSize:I

    .line 66
    return-void
.end method

.method public static a([B)Lcom/google/android/apps/nexuslauncher/reflection/e/h;
    .locals 1

    .line 260
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/e/h;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/g;->mergeFrom(Lcom/google/protobuf/nano/g;[B)Lcom/google/protobuf/nano/g;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    return-object p0
.end method

.method public static l(Lcom/google/protobuf/nano/a;)Lcom/google/android/apps/nexuslauncher/reflection/e/h;
    .locals 1

    .line 266
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/e/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->k(Lcom/google/protobuf/nano/a;)Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 7

    .line 122
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 123
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->sc:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->sc:Ljava/lang/String;

    .line 125
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 127
    :cond_0
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->type:I

    if-eqz v1, :cond_1

    .line 128
    const/4 v1, 0x2

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->type:I

    .line 129
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 131
    :cond_1
    iget-wide v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->duration:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    .line 132
    const/4 v1, 0x3

    iget-wide v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->duration:J

    .line 133
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Cn:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 136
    const/4 v1, 0x4

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Cn:Ljava/lang/String;

    .line 137
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Df:Lcom/google/android/apps/nexuslauncher/reflection/e/m;

    if-eqz v1, :cond_4

    .line 140
    const/4 v1, 0x5

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Df:Lcom/google/android/apps/nexuslauncher/reflection/e/m;

    .line 141
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 143
    :cond_4
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    if-eqz v1, :cond_5

    .line 144
    const/4 v1, 0x6

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    .line 145
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 147
    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Dh:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 148
    const/4 v1, 0x7

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Dh:Ljava/lang/String;

    .line 149
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 151
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Ct:[Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Ct:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_9

    .line 152
    nop

    .line 153
    nop

    .line 154
    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Ct:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_8

    .line 155
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Ct:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 156
    if-eqz v5, :cond_7

    .line 157
    add-int/lit8 v4, v4, 0x1

    .line 158
    nop

    .line 159
    invoke-static {v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 154
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_8
    add-int/2addr v0, v3

    .line 163
    mul-int/2addr v2, v4

    add-int/2addr v0, v2

    .line 165
    :cond_9
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Di:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 166
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Di:Ljava/lang/String;

    .line 167
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 169
    :cond_a
    return v0
.end method

.method public final k(Lcom/google/protobuf/nano/a;)Lcom/google/android/apps/nexuslauncher/reflection/e/h;
    .locals 4

    .line 177
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    .line 178
    if-eqz v0, :cond_f

    const/16 v1, 0xa

    if-eq v0, v1, :cond_e

    const/16 v1, 0x10

    if-eq v0, v1, :cond_d

    const/16 v1, 0x18

    if-eq v0, v1, :cond_c

    const/16 v1, 0x22

    if-eq v0, v1, :cond_b

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_9

    const/16 v1, 0x32

    if-eq v0, v1, :cond_7

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_6

    const/16 v1, 0x42

    if-eq v0, v1, :cond_2

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_0

    .line 182
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    return-object p0

    .line 251
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Di:Ljava/lang/String;

    .line 255
    :cond_1
    goto :goto_0

    .line 234
    :cond_2
    nop

    .line 235
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    .line 236
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Ct:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 237
    move v1, v2

    goto :goto_1

    .line 236
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Ct:[Ljava/lang/String;

    array-length v1, v1

    .line 237
    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 238
    if-eqz v1, :cond_4

    .line 239
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Ct:[Ljava/lang/String;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    :cond_4
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_5

    .line 242
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 243
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 246
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 247
    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Ct:[Ljava/lang/String;

    .line 248
    goto :goto_0

    .line 230
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Dh:Ljava/lang/String;

    .line 231
    goto :goto_0

    .line 223
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    if-nez v0, :cond_8

    .line 224
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/e/j;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    .line 226
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    .line 227
    goto/16 :goto_0

    .line 216
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Df:Lcom/google/android/apps/nexuslauncher/reflection/e/m;

    if-nez v0, :cond_a

    .line 217
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/e/m;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Df:Lcom/google/android/apps/nexuslauncher/reflection/e/m;

    .line 219
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Df:Lcom/google/android/apps/nexuslauncher/reflection/e/m;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    .line 220
    goto/16 :goto_0

    .line 212
    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Cn:Ljava/lang/String;

    .line 213
    goto/16 :goto_0

    .line 208
    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->duration:J

    .line 209
    goto/16 :goto_0

    .line 192
    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    .line 193
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 202
    :pswitch_0
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->type:I

    .line 205
    :goto_3
    goto/16 :goto_0

    .line 188
    :cond_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->sc:Ljava/lang/String;

    .line 189
    goto/16 :goto_0

    .line 180
    :cond_f
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->k(Lcom/google/protobuf/nano/a;)Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->sc:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->sc:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 88
    :cond_0
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->type:I

    if-eqz v0, :cond_1

    .line 89
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 91
    :cond_1
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 92
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->duration:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Cn:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 95
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Cn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Df:Lcom/google/android/apps/nexuslauncher/reflection/e/m;

    if-eqz v0, :cond_4

    .line 98
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Df:Lcom/google/android/apps/nexuslauncher/reflection/e/m;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    if-eqz v0, :cond_5

    .line 101
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 103
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Dh:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 104
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Dh:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 106
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Ct:[Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Ct:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_8

    .line 107
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Ct:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_8

    .line 108
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Ct:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 109
    if-eqz v1, :cond_7

    .line 110
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 107
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Di:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 115
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Di:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 117
    :cond_9
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 118
    return-void
.end method
