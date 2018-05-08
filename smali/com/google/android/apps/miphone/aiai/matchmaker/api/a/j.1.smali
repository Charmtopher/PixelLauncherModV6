.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;
.super Lcom/google/protobuf/nano/b;
.source "SourceFile"


# static fields
.field private static volatile sx:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;


# instance fields
.field public rX:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

.field public sA:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;

.field public sB:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;

.field public sC:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;

.field private sD:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;

.field public sc:Ljava/lang/String;

.field public sw:I

.field public sy:J

.field public sz:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 302
    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    .line 175
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sw:I

    .line 303
    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sc:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sy:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sz:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->rX:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sw:I

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sA:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sw:I

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sB:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sw:I

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sC:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sw:I

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sD:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->aeU:Lcom/google/protobuf/nano/d;

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->cachedSize:I

    .line 304
    return-void
.end method

.method public static ce()[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;
    .locals 2

    .line 180
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sx:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    if-nez v0, :cond_1

    .line 181
    sget-object v0, Lcom/google/protobuf/nano/f;->afc:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    sget-object v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sx:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    if-nez v1, :cond_0

    .line 184
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    sput-object v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sx:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    .line 186
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 188
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sx:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    return-object v0
.end method


# virtual methods
.method public final c(Lcom/google/protobuf/nano/a;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;
    .locals 6

    .line 397
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    .line 398
    if-eqz v0, :cond_f

    const/16 v1, 0xa

    if-eq v0, v1, :cond_e

    const/16 v1, 0x18

    if-eq v0, v1, :cond_d

    const/16 v1, 0x20

    if-eq v0, v1, :cond_b

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_9

    const/16 v1, 0x32

    if-eq v0, v1, :cond_7

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_5

    const/16 v1, 0x42

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_0

    .line 402
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/b;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 403
    return-object p0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sD:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;

    if-nez v0, :cond_1

    .line 458
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sD:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sD:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    .line 461
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sw:I

    .line 465
    :cond_2
    goto :goto_0

    .line 449
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sC:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;

    if-nez v0, :cond_4

    .line 450
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sC:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;

    .line 452
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sC:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    .line 453
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sw:I

    .line 454
    goto :goto_0

    .line 441
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sB:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;

    if-nez v0, :cond_6

    .line 442
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sB:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;

    .line 444
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sB:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    .line 445
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sw:I

    .line 446
    goto :goto_0

    .line 433
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sA:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;

    if-nez v0, :cond_8

    .line 434
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sA:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;

    .line 436
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sA:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    .line 437
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sw:I

    .line 438
    goto :goto_0

    .line 426
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->rX:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

    if-nez v0, :cond_a

    .line 427
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->rX:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

    .line 429
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->rX:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    .line 430
    goto/16 :goto_0

    .line 416
    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->getPosition()I

    move-result v1

    .line 418
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v2

    if-ltz v2, :cond_c

    const/4 v3, 0x4

    if-gt v2, v3, :cond_c

    iput v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sz:I

    .line 422
    goto/16 :goto_0

    .line 418
    :cond_c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/16 v4, 0x30

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum SuggestionAction"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :catch_0
    move-exception v2

    .line 420
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->br(I)V

    .line 421
    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->a(Lcom/google/protobuf/nano/a;I)Z

    .line 423
    goto/16 :goto_0

    .line 412
    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sy:J

    .line 413
    goto/16 :goto_0

    .line 408
    :cond_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sc:Ljava/lang/String;

    .line 409
    goto/16 :goto_0

    .line 400
    :cond_f
    return-object p0
.end method

.method protected final computeSerializedSize()I
    .locals 7

    .line 356
    invoke-super {p0}, Lcom/google/protobuf/nano/b;->computeSerializedSize()I

    move-result v0

    .line 357
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sc:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sc:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sc:Ljava/lang/String;

    .line 359
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 361
    :cond_0
    iget-wide v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sy:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    const/4 v3, 0x3

    if-eqz v1, :cond_1

    .line 362
    iget-wide v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sy:J

    .line 363
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 365
    :cond_1
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sz:I

    if-eqz v1, :cond_2

    .line 366
    const/4 v1, 0x4

    iget v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sz:I

    .line 367
    invoke-static {v1, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 369
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->rX:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

    if-eqz v1, :cond_3

    .line 370
    const/4 v1, 0x5

    iget-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->rX:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

    .line 371
    invoke-static {v1, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 373
    :cond_3
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sw:I

    if-nez v1, :cond_4

    .line 374
    const/4 v1, 0x6

    iget-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sA:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;

    .line 375
    invoke-static {v1, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 377
    :cond_4
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sw:I

    if-ne v1, v2, :cond_5

    .line 378
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sB:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;

    .line 379
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 381
    :cond_5
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sw:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 382
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sC:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;

    .line 383
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 385
    :cond_6
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sw:I

    if-ne v1, v3, :cond_7

    .line 386
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sD:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;

    .line 387
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 389
    :cond_7
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 0

    .line 173
    invoke-virtual {p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->c(Lcom/google/protobuf/nano/a;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6

    .line 327
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sc:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sc:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sc:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 330
    :cond_0
    iget-wide v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sy:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    .line 331
    iget-wide v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sy:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(IJ)V

    .line 333
    :cond_1
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sz:I

    if-eqz v0, :cond_2

    .line 334
    const/4 v0, 0x4

    iget v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sz:I

    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->rX:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

    if-eqz v0, :cond_3

    .line 337
    const/4 v0, 0x5

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->rX:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 339
    :cond_3
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sw:I

    if-nez v0, :cond_4

    .line 340
    const/4 v0, 0x6

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sA:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;

    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 342
    :cond_4
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sw:I

    if-ne v0, v1, :cond_5

    .line 343
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sB:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 345
    :cond_5
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sw:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 346
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sC:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 348
    :cond_6
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sw:I

    if-ne v0, v2, :cond_7

    .line 349
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sD:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 351
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/b;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 352
    return-void
.end method
