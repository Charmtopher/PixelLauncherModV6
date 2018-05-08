.class Landroid/support/v7/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field nR:J

.field nS:Landroid/support/v7/widget/e;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v7/widget/e;->nR:J

    return-void
.end method

.method private bp()V
    .locals 1

    .line 415
    iget-object v0, p0, Landroid/support/v7/widget/e;->nS:Landroid/support/v7/widget/e;

    if-nez v0, :cond_0

    .line 416
    new-instance v0, Landroid/support/v7/widget/e;

    invoke-direct {v0}, Landroid/support/v7/widget/e;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/e;->nS:Landroid/support/v7/widget/e;

    .line 418
    :cond_0
    return-void
.end method


# virtual methods
.method final P(I)Z
    .locals 11

    .line 470
    move-object v0, p0

    :goto_0
    const/16 v1, 0x40

    if-lt p1, v1, :cond_0

    .line 471
    invoke-direct {v0}, Landroid/support/v7/widget/e;->bp()V

    .line 472
    iget-object v0, v0, Landroid/support/v7/widget/e;->nS:Landroid/support/v7/widget/e;

    add-int/lit8 p1, p1, -0x40

    goto :goto_0

    .line 474
    :cond_0
    const-wide/16 v1, 0x1

    shl-long v3, v1, p1

    .line 475
    iget-wide v5, v0, Landroid/support/v7/widget/e;->nR:J

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    .line 476
    move p1, v5

    goto :goto_1

    .line 475
    :cond_1
    nop

    .line 476
    move p1, v6

    :goto_1
    iget-wide v7, v0, Landroid/support/v7/widget/e;->nR:J

    not-long v9, v3

    and-long/2addr v7, v9

    iput-wide v7, v0, Landroid/support/v7/widget/e;->nR:J

    .line 477
    sub-long/2addr v3, v1

    .line 478
    iget-wide v1, v0, Landroid/support/v7/widget/e;->nR:J

    and-long/2addr v1, v3

    .line 480
    iget-wide v7, v0, Landroid/support/v7/widget/e;->nR:J

    not-long v3, v3

    and-long/2addr v3, v7

    invoke-static {v3, v4, v5}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v3

    .line 481
    or-long/2addr v1, v3

    iput-wide v1, v0, Landroid/support/v7/widget/e;->nR:J

    .line 482
    iget-object v1, v0, Landroid/support/v7/widget/e;->nS:Landroid/support/v7/widget/e;

    if-eqz v1, :cond_3

    .line 483
    iget-object v1, v0, Landroid/support/v7/widget/e;->nS:Landroid/support/v7/widget/e;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/e;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 484
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/e;->set(I)V

    .line 486
    :cond_2
    iget-object v0, v0, Landroid/support/v7/widget/e;->nS:Landroid/support/v7/widget/e;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/e;->P(I)Z

    .line 488
    :cond_3
    return p1
.end method

.method final Q(I)I
    .locals 6

    .line 493
    iget-object v0, p0, Landroid/support/v7/widget/e;->nS:Landroid/support/v7/widget/e;

    const/16 v1, 0x40

    const-wide/16 v2, 0x1

    if-nez v0, :cond_1

    .line 494
    if-lt p1, v1, :cond_0

    .line 495
    iget-wide v0, p0, Landroid/support/v7/widget/e;->nR:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    .line 497
    :cond_0
    iget-wide v0, p0, Landroid/support/v7/widget/e;->nR:J

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    .line 499
    :cond_1
    if-ge p1, v1, :cond_2

    .line 500
    iget-wide v0, p0, Landroid/support/v7/widget/e;->nR:J

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    .line 502
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/e;->nS:Landroid/support/v7/widget/e;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/e;->Q(I)I

    move-result p1

    iget-wide v0, p0, Landroid/support/v7/widget/e;->nR:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method final clear(I)V
    .locals 5

    .line 421
    move-object v0, p0

    :goto_0
    const/16 v1, 0x40

    if-lt p1, v1, :cond_0

    .line 422
    iget-object v1, v0, Landroid/support/v7/widget/e;->nS:Landroid/support/v7/widget/e;

    if-eqz v1, :cond_1

    .line 423
    iget-object v0, v0, Landroid/support/v7/widget/e;->nS:Landroid/support/v7/widget/e;

    add-int/lit8 p1, p1, -0x40

    goto :goto_0

    .line 426
    :cond_0
    iget-wide v1, v0, Landroid/support/v7/widget/e;->nR:J

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    not-long v3, v3

    and-long/2addr v1, v3

    iput-wide v1, v0, Landroid/support/v7/widget/e;->nR:J

    .line 429
    :cond_1
    return-void
.end method

.method final d(IZ)V
    .locals 10

    .line 448
    const/4 v0, 0x0

    move v1, p2

    move-object p2, p0

    :goto_0
    const/16 v2, 0x40

    if-lt p1, v2, :cond_0

    .line 449
    invoke-direct {p2}, Landroid/support/v7/widget/e;->bp()V

    .line 450
    iget-object p2, p2, Landroid/support/v7/widget/e;->nS:Landroid/support/v7/widget/e;

    add-int/lit8 p1, p1, -0x40

    goto :goto_0

    .line 452
    :cond_0
    iget-wide v2, p2, Landroid/support/v7/widget/e;->nR:J

    const-wide/high16 v4, -0x8000000000000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 453
    move v2, v3

    goto :goto_1

    .line 452
    :cond_1
    nop

    .line 453
    move v2, v0

    :goto_1
    const-wide/16 v4, 0x1

    shl-long v6, v4, p1

    sub-long/2addr v6, v4

    .line 454
    iget-wide v4, p2, Landroid/support/v7/widget/e;->nR:J

    and-long/2addr v4, v6

    .line 455
    iget-wide v8, p2, Landroid/support/v7/widget/e;->nR:J

    not-long v6, v6

    and-long/2addr v6, v8

    shl-long/2addr v6, v3

    .line 456
    or-long v3, v4, v6

    iput-wide v3, p2, Landroid/support/v7/widget/e;->nR:J

    .line 457
    if-eqz v1, :cond_2

    .line 458
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/e;->set(I)V

    goto :goto_2

    .line 460
    :cond_2
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/e;->clear(I)V

    .line 462
    :goto_2
    if-nez v2, :cond_4

    iget-object p1, p2, Landroid/support/v7/widget/e;->nS:Landroid/support/v7/widget/e;

    if-eqz p1, :cond_3

    goto :goto_3

    .line 467
    :cond_3
    return-void

    .line 463
    :cond_4
    :goto_3
    invoke-direct {p2}, Landroid/support/v7/widget/e;->bp()V

    .line 464
    iget-object p2, p2, Landroid/support/v7/widget/e;->nS:Landroid/support/v7/widget/e;

    .line 448
    move p1, v0

    move v1, v2

    goto :goto_0
.end method

.method final get(I)Z
    .locals 4

    .line 432
    move-object v0, p0

    :goto_0
    const/16 v1, 0x40

    if-lt p1, v1, :cond_0

    .line 433
    invoke-direct {v0}, Landroid/support/v7/widget/e;->bp()V

    .line 434
    iget-object v0, v0, Landroid/support/v7/widget/e;->nS:Landroid/support/v7/widget/e;

    add-int/lit8 p1, p1, -0x40

    goto :goto_0

    .line 436
    :cond_0
    iget-wide v0, v0, Landroid/support/v7/widget/e;->nR:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method final set(I)V
    .locals 5

    .line 406
    move-object v0, p0

    :goto_0
    const/16 v1, 0x40

    if-lt p1, v1, :cond_0

    .line 407
    invoke-direct {v0}, Landroid/support/v7/widget/e;->bp()V

    .line 408
    iget-object v0, v0, Landroid/support/v7/widget/e;->nS:Landroid/support/v7/widget/e;

    add-int/lit8 p1, p1, -0x40

    goto :goto_0

    .line 410
    :cond_0
    iget-wide v1, v0, Landroid/support/v7/widget/e;->nR:J

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    or-long/2addr v1, v3

    iput-wide v1, v0, Landroid/support/v7/widget/e;->nR:J

    .line 412
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 508
    iget-object v0, p0, Landroid/support/v7/widget/e;->nS:Landroid/support/v7/widget/e;

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/support/v7/widget/e;->nR:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v7/widget/e;->nS:Landroid/support/v7/widget/e;

    .line 509
    invoke-virtual {v1}, Landroid/support/v7/widget/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/support/v7/widget/e;->nR:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
