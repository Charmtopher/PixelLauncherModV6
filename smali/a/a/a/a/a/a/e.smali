.class public final La/a/a/a/a/a/e;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# static fields
.field private static volatile aiL:[La/a/a/a/a/a/e;


# instance fields
.field public aiM:[La/a/a/a/a/a/b;

.field public aiN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 365
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 366
    invoke-static {}, La/a/a/a/a/a/b;->jk()[La/a/a/a/a/a/b;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/a/a/e;->aiM:[La/a/a/a/a/a/b;

    const-string v0, ""

    iput-object v0, p0, La/a/a/a/a/a/e;->aiN:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, La/a/a/a/a/a/e;->cachedSize:I

    .line 367
    return-void
.end method

.method public static jl()[La/a/a/a/a/a/e;
    .locals 2

    .line 348
    sget-object v0, La/a/a/a/a/a/e;->aiL:[La/a/a/a/a/a/e;

    if-nez v0, :cond_1

    .line 349
    sget-object v0, Lcom/google/protobuf/nano/f;->afc:Ljava/lang/Object;

    monitor-enter v0

    .line 351
    :try_start_0
    sget-object v1, La/a/a/a/a/a/e;->aiL:[La/a/a/a/a/a/e;

    if-nez v1, :cond_0

    .line 352
    const/4 v1, 0x0

    new-array v1, v1, [La/a/a/a/a/a/e;

    sput-object v1, La/a/a/a/a/a/e;->aiL:[La/a/a/a/a/a/e;

    .line 354
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 356
    :cond_1
    :goto_0
    sget-object v0, La/a/a/a/a/a/e;->aiL:[La/a/a/a/a/a/e;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .line 395
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 396
    iget-object v1, p0, La/a/a/a/a/a/e;->aiM:[La/a/a/a/a/a/b;

    if-eqz v1, :cond_1

    iget-object v1, p0, La/a/a/a/a/a/e;->aiM:[La/a/a/a/a/a/b;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 397
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, La/a/a/a/a/a/e;->aiM:[La/a/a/a/a/a/b;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 398
    iget-object v2, p0, La/a/a/a/a/a/e;->aiM:[La/a/a/a/a/a/b;

    aget-object v2, v2, v1

    .line 399
    if-eqz v2, :cond_0

    .line 400
    nop

    .line 401
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v2

    add-int/2addr v0, v2

    .line 397
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 405
    :cond_1
    iget-object v1, p0, La/a/a/a/a/a/e;->aiN:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 406
    const/4 v1, 0x2

    iget-object v2, p0, La/a/a/a/a/a/e;->aiN:Ljava/lang/String;

    .line 407
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 409
    :cond_2
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 4

    .line 342
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/a/a/e;->aiN:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, La/a/a/a/a/a/e;->aiM:[La/a/a/a/a/a/b;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v1, p0, La/a/a/a/a/a/e;->aiM:[La/a/a/a/a/a/b;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [La/a/a/a/a/a/b;

    if-eqz v1, :cond_4

    iget-object v3, p0, La/a/a/a/a/a/e;->aiM:[La/a/a/a/a/a/b;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_5

    new-instance v2, La/a/a/a/a/a/b;

    invoke-direct {v2}, La/a/a/a/a/a/b;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    new-instance v2, La/a/a/a/a/a/b;

    invoke-direct {v2}, La/a/a/a/a/a/b;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, La/a/a/a/a/a/e;->aiM:[La/a/a/a/a/a/b;

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .line 379
    iget-object v0, p0, La/a/a/a/a/a/e;->aiM:[La/a/a/a/a/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/a/a/a/e;->aiM:[La/a/a/a/a/a/b;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 380
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, La/a/a/a/a/a/e;->aiM:[La/a/a/a/a/a/b;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 381
    iget-object v1, p0, La/a/a/a/a/a/e;->aiM:[La/a/a/a/a/a/b;

    aget-object v1, v1, v0

    .line 382
    if-eqz v1, :cond_0

    .line 383
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 380
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p0, La/a/a/a/a/a/e;->aiN:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 388
    const/4 v0, 0x2

    iget-object v1, p0, La/a/a/a/a/a/e;->aiN:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 390
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 391
    return-void
.end method
