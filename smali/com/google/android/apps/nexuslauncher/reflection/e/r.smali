.class public final Lcom/google/android/apps/nexuslauncher/reflection/e/r;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public DA:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

.field public Dt:Ljava/lang/String;

.field public Du:[B

.field public Dv:I

.field public Dw:I

.field public Dx:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

.field public Dy:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

.field public Dz:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 204
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dt:Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/j;->afl:[B

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Du:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dv:I

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dw:I

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/e/t;->en()[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dx:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->ek()[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dy:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->ek()[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dz:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->ek()[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->DA:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->cachedSize:I

    .line 206
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .line 273
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 274
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dt:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dt:Ljava/lang/String;

    .line 276
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Du:[B

    sget-object v2, Lcom/google/protobuf/nano/j;->afl:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 279
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Du:[B

    .line 280
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 282
    :cond_1
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dv:I

    if-eqz v1, :cond_2

    .line 283
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dv:I

    .line 284
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 286
    :cond_2
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dw:I

    if-eqz v1, :cond_3

    .line 287
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dw:I

    .line 288
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 290
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dx:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dx:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    array-length v1, v1

    if-lez v1, :cond_6

    .line 291
    move v1, v0

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dx:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 292
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dx:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    aget-object v3, v3, v0

    .line 293
    if-eqz v3, :cond_4

    .line 294
    const/4 v4, 0x5

    .line 295
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v3

    add-int/2addr v1, v3

    .line 291
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_5
    move v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dy:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dy:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v1, v1

    if-lez v1, :cond_9

    .line 300
    move v1, v0

    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dy:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 301
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dy:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    aget-object v3, v3, v0

    .line 302
    if-eqz v3, :cond_7

    .line 303
    const/4 v4, 0x6

    .line 304
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v3

    add-int/2addr v1, v3

    .line 300
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 308
    :cond_8
    move v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dz:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dz:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v1, v1

    if-lez v1, :cond_c

    .line 309
    move v1, v0

    move v0, v2

    :goto_2
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dz:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v3, v3

    if-ge v0, v3, :cond_b

    .line 310
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dz:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    aget-object v3, v3, v0

    .line 311
    if-eqz v3, :cond_a

    .line 312
    const/4 v4, 0x7

    .line 313
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v3

    add-int/2addr v1, v3

    .line 309
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 317
    :cond_b
    move v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->DA:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->DA:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v1, v1

    if-lez v1, :cond_e

    .line 318
    :goto_3
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->DA:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v1, v1

    if-ge v2, v1, :cond_e

    .line 319
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->DA:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    aget-object v1, v1, v2

    .line 320
    if-eqz v1, :cond_d

    .line 321
    const/16 v3, 0x8

    .line 322
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 318
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 326
    :cond_e
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 4

    .line 163
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_15

    const/16 v1, 0xa

    if-eq v0, v1, :cond_14

    const/16 v1, 0x12

    if-eq v0, v1, :cond_13

    const/16 v1, 0x18

    if-eq v0, v1, :cond_12

    const/16 v1, 0x20

    if-eq v0, v1, :cond_11

    const/16 v1, 0x2a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_d

    const/16 v1, 0x32

    if-eq v0, v1, :cond_9

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_5

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->DA:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->DA:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->DA:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/o;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/o;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->DA:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    goto :goto_0

    :cond_5
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dz:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dz:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dz:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_8

    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/o;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/o;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dz:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    goto/16 :goto_0

    :cond_9
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dy:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    if-nez v1, :cond_a

    move v1, v2

    goto :goto_5

    :cond_a
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dy:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v1, v1

    :goto_5
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    if-eqz v1, :cond_b

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dy:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_6
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_c

    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/o;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/o;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dy:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    goto/16 :goto_0

    :cond_d
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dx:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    if-nez v1, :cond_e

    move v1, v2

    goto :goto_7

    :cond_e
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dx:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    array-length v1, v1

    :goto_7
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    if-eqz v1, :cond_f

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dx:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    :goto_8
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_10

    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/t;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_10
    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/t;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dx:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dw:I

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dv:I

    goto/16 :goto_0

    :cond_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Du:[B

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dt:Ljava/lang/String;

    goto/16 :goto_0

    :cond_15
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dt:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dt:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Du:[B

    sget-object v1, Lcom/google/protobuf/nano/j;->afl:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Du:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(I[B)V

    .line 230
    :cond_1
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dv:I

    if-eqz v0, :cond_2

    .line 231
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dv:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 233
    :cond_2
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dw:I

    if-eqz v0, :cond_3

    .line 234
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dw:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dx:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dx:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 237
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dx:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 238
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dx:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    aget-object v2, v2, v0

    .line 239
    if-eqz v2, :cond_4

    .line 240
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 237
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dy:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dy:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 245
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dy:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 246
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dy:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    aget-object v2, v2, v0

    .line 247
    if-eqz v2, :cond_6

    .line 248
    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 245
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 252
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dz:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dz:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v0, v0

    if-lez v0, :cond_9

    .line 253
    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dz:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v2, v2

    if-ge v0, v2, :cond_9

    .line 254
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dz:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    aget-object v2, v2, v0

    .line 255
    if-eqz v2, :cond_8

    .line 256
    const/4 v3, 0x7

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 253
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 260
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->DA:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->DA:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v0, v0

    if-lez v0, :cond_b

    .line 261
    :goto_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->DA:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v0, v0

    if-ge v1, v0, :cond_b

    .line 262
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->DA:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    aget-object v0, v0, v1

    .line 263
    if-eqz v0, :cond_a

    .line 264
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 261
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 268
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 269
    return-void
.end method
