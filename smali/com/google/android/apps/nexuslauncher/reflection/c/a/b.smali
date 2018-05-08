.class public final Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public Cm:Ljava/lang/String;

.field public Cn:Ljava/lang/String;

.field public Co:J

.field public Cp:J

.field public Cq:Ljava/lang/String;

.field public Cr:J

.field public Cs:[Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;

.field public Ct:[Ljava/lang/String;

.field public Cu:Lcom/google/android/apps/nexuslauncher/reflection/c/a/e;

.field public Cv:Lcom/google/android/apps/nexuslauncher/reflection/c/a/c;

.field public Cw:Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;

.field public duration:J

.field public sc:Ljava/lang/String;

.field public time:J

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 70
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->sc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->type:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cm:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cn:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->time:J

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Co:J

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cp:J

    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cq:Ljava/lang/String;

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cr:J

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->duration:J

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->ed()[Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cs:[Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;

    sget-object v0, Lcom/google/protobuf/nano/j;->afj:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Ct:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cu:Lcom/google/android/apps/nexuslauncher/reflection/c/a/e;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cv:Lcom/google/android/apps/nexuslauncher/reflection/c/a/c;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cw:Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->cachedSize:I

    .line 72
    return-void
.end method

.method public static i(Lcom/google/protobuf/nano/a;)Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;
    .locals 1

    .line 361
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->h(Lcom/google/protobuf/nano/a;)Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 7

    .line 157
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 158
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->sc:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->sc:Ljava/lang/String;

    .line 160
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->type:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->type:Ljava/lang/String;

    .line 164
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cm:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 167
    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cm:Ljava/lang/String;

    .line 168
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 170
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cn:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 171
    const/4 v1, 0x4

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cn:Ljava/lang/String;

    .line 172
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 174
    :cond_3
    iget-wide v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->time:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    .line 175
    const/4 v1, 0x5

    iget-wide v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->time:J

    .line 176
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 178
    :cond_4
    iget-wide v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Co:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    .line 179
    const/4 v1, 0x6

    iget-wide v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Co:J

    .line 180
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 182
    :cond_5
    iget-wide v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    .line 183
    const/4 v1, 0x7

    iget-wide v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cp:J

    .line 184
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 186
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cq:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 187
    const/16 v1, 0x8

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cq:Ljava/lang/String;

    .line 188
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 190
    :cond_7
    iget-wide v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cr:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    .line 191
    const/16 v1, 0x9

    iget-wide v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cr:J

    .line 192
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 194
    :cond_8
    iget-wide v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->duration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    .line 195
    const/16 v1, 0xa

    iget-wide v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->duration:J

    .line 196
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 198
    :cond_9
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cs:[Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;

    const/4 v3, 0x0

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cs:[Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;

    array-length v1, v1

    if-lez v1, :cond_c

    .line 199
    move v1, v0

    move v0, v3

    :goto_0
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cs:[Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;

    array-length v4, v4

    if-ge v0, v4, :cond_b

    .line 200
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cs:[Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;

    aget-object v4, v4, v0

    .line 201
    if-eqz v4, :cond_a

    .line 202
    const/16 v5, 0xb

    .line 203
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v4

    add-int/2addr v1, v4

    .line 199
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_b
    move v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Ct:[Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Ct:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_f

    .line 208
    nop

    .line 209
    nop

    .line 210
    move v1, v3

    move v4, v1

    :goto_1
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Ct:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_e

    .line 211
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Ct:[Ljava/lang/String;

    aget-object v5, v5, v3

    .line 212
    if-eqz v5, :cond_d

    .line 213
    add-int/lit8 v4, v4, 0x1

    .line 214
    nop

    .line 215
    invoke-static {v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 210
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 218
    :cond_e
    add-int/2addr v0, v1

    .line 219
    mul-int/2addr v2, v4

    add-int/2addr v0, v2

    .line 221
    :cond_f
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cu:Lcom/google/android/apps/nexuslauncher/reflection/c/a/e;

    if-eqz v1, :cond_10

    .line 222
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cu:Lcom/google/android/apps/nexuslauncher/reflection/c/a/e;

    .line 223
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 225
    :cond_10
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cv:Lcom/google/android/apps/nexuslauncher/reflection/c/a/c;

    if-eqz v1, :cond_11

    .line 226
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cv:Lcom/google/android/apps/nexuslauncher/reflection/c/a/c;

    .line 227
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 229
    :cond_11
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cw:Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;

    if-eqz v1, :cond_12

    .line 230
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cw:Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;

    .line 231
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 233
    :cond_12
    return v0
.end method

.method public final h(Lcom/google/protobuf/nano/a;)Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;
    .locals 4

    .line 241
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    .line 242
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 246
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 247
    return-object p0

    .line 343
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cw:Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;

    if-nez v0, :cond_0

    .line 344
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cw:Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cw:Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    goto/16 :goto_5

    .line 336
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cv:Lcom/google/android/apps/nexuslauncher/reflection/c/a/c;

    if-nez v0, :cond_1

    .line 337
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/c;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/c/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cv:Lcom/google/android/apps/nexuslauncher/reflection/c/a/c;

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cv:Lcom/google/android/apps/nexuslauncher/reflection/c/a/c;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    .line 340
    goto :goto_0

    .line 329
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cu:Lcom/google/android/apps/nexuslauncher/reflection/c/a/e;

    if-nez v0, :cond_2

    .line 330
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/e;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/c/a/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cu:Lcom/google/android/apps/nexuslauncher/reflection/c/a/e;

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cu:Lcom/google/android/apps/nexuslauncher/reflection/c/a/e;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    .line 333
    goto :goto_0

    .line 312
    :sswitch_3
    const/16 v0, 0x62

    .line 313
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    .line 314
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Ct:[Ljava/lang/String;

    if-nez v2, :cond_3

    .line 315
    move v2, v1

    goto :goto_1

    .line 314
    :cond_3
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Ct:[Ljava/lang/String;

    array-length v2, v2

    .line 315
    :goto_1
    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/String;

    .line 316
    if-eqz v2, :cond_4

    .line 317
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Ct:[Ljava/lang/String;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    :cond_4
    :goto_2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_5

    .line 320
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 321
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    .line 319
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 324
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 325
    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Ct:[Ljava/lang/String;

    .line 326
    goto :goto_0

    .line 292
    :sswitch_4
    const/16 v0, 0x5a

    .line 293
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    .line 294
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cs:[Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;

    if-nez v2, :cond_6

    .line 295
    move v2, v1

    goto :goto_3

    .line 294
    :cond_6
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cs:[Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;

    array-length v2, v2

    .line 295
    :goto_3
    add-int/2addr v0, v2

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;

    .line 297
    if-eqz v2, :cond_7

    .line 298
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cs:[Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    :cond_7
    :goto_4
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_8

    .line 301
    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;

    invoke-direct {v1}, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;-><init>()V

    aput-object v1, v0, v2

    .line 302
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    .line 303
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    .line 300
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 306
    :cond_8
    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;

    invoke-direct {v1}, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;-><init>()V

    aput-object v1, v0, v2

    .line 307
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    .line 308
    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cs:[Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;

    .line 309
    goto/16 :goto_0

    .line 288
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->duration:J

    .line 289
    goto/16 :goto_0

    .line 284
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cr:J

    .line 285
    goto/16 :goto_0

    .line 280
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cq:Ljava/lang/String;

    .line 281
    goto/16 :goto_0

    .line 276
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cp:J

    .line 277
    goto/16 :goto_0

    .line 272
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Co:J

    .line 273
    goto/16 :goto_0

    .line 268
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->time:J

    .line 269
    goto/16 :goto_0

    .line 264
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cn:Ljava/lang/String;

    .line 265
    goto/16 :goto_0

    .line 260
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cm:Ljava/lang/String;

    .line 261
    goto/16 :goto_0

    .line 256
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->type:Ljava/lang/String;

    .line 257
    goto/16 :goto_0

    .line 252
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->sc:Ljava/lang/String;

    .line 253
    goto/16 :goto_0

    .line 244
    :sswitch_f
    return-object p0

    .line 350
    :cond_9
    :goto_5
    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_e
        0x12 -> :sswitch_d
        0x1a -> :sswitch_c
        0x22 -> :sswitch_b
        0x28 -> :sswitch_a
        0x30 -> :sswitch_9
        0x38 -> :sswitch_8
        0x42 -> :sswitch_7
        0x48 -> :sswitch_6
        0x50 -> :sswitch_5
        0x5a -> :sswitch_4
        0x62 -> :sswitch_3
        0x6a -> :sswitch_2
        0x72 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->h(Lcom/google/protobuf/nano/a;)Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->sc:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->sc:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->type:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->type:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cm:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cm:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cn:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 107
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 109
    :cond_3
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->time:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 110
    const/4 v0, 0x5

    iget-wide v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->time:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 112
    :cond_4
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Co:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 113
    const/4 v0, 0x6

    iget-wide v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Co:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 115
    :cond_5
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cp:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 116
    const/4 v0, 0x7

    iget-wide v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cp:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 118
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cq:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 119
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cq:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 121
    :cond_7
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    .line 122
    const/16 v0, 0x9

    iget-wide v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cr:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 124
    :cond_8
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->duration:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 125
    const/16 v0, 0xa

    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->duration:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 127
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cs:[Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cs:[Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;

    array-length v0, v0

    if-lez v0, :cond_b

    .line 128
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cs:[Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;

    array-length v2, v2

    if-ge v0, v2, :cond_b

    .line 129
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cs:[Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;

    aget-object v2, v2, v0

    .line 130
    if-eqz v2, :cond_a

    .line 131
    const/16 v3, 0xb

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 128
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Ct:[Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Ct:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_d

    .line 136
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Ct:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_d

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Ct:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 138
    if-eqz v0, :cond_c

    .line 139
    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 136
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 143
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cu:Lcom/google/android/apps/nexuslauncher/reflection/c/a/e;

    if-eqz v0, :cond_e

    .line 144
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cu:Lcom/google/android/apps/nexuslauncher/reflection/c/a/e;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 146
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cv:Lcom/google/android/apps/nexuslauncher/reflection/c/a/c;

    if-eqz v0, :cond_f

    .line 147
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cv:Lcom/google/android/apps/nexuslauncher/reflection/c/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 149
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cw:Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;

    if-eqz v0, :cond_10

    .line 150
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;->Cw:Lcom/google/android/apps/nexuslauncher/reflection/c/a/d;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 152
    :cond_10
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 153
    return-void
.end method
