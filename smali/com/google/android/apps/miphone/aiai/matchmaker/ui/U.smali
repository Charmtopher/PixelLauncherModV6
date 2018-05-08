.class public Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final uR:Landroid/widget/FrameLayout;

.field final un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

.field private wA:Landroid/text/SpannableString;

.field private wB:I

.field private wC:I

.field wD:I

.field final wv:Landroid/widget/TextView;

.field private final ww:Ljava/util/List;

.field private final wx:Ljava/lang/StringBuilder;

.field private final wy:Landroid/graphics/RectF;

.field private final wz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/T;


# direct methods
.method constructor <init>(Landroid/widget/FrameLayout;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/T;)V
    .locals 1

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->ww:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wx:Ljava/lang/StringBuilder;

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wB:I

    .line 71
    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wC:I

    .line 73
    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wD:I

    .line 522
    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->uR:Landroid/widget/FrameLayout;

    .line 523
    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 524
    iput-object p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/T;

    .line 525
    iget-object p2, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uF:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wy:Landroid/graphics/RectF;

    .line 526
    sget p2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/R$id;->text_view:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wv:Landroid/widget/TextView;

    .line 527
    return-void
.end method

.method private declared-synchronized B(II)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;
    .locals 10

    monitor-enter p0

    .line 446
    const/16 v0, 0x2d

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "-- Selection changed: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->f(Ljava/lang/String;)V

    .line 447
    const/4 v0, 0x0

    if-ltz p1, :cond_3

    if-lt p2, p1, :cond_3

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    invoke-static {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 456
    invoke-virtual {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->cn()Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    iput-object v4, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sb:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    .line 457
    invoke-virtual {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->cn()Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sb:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    new-instance v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    invoke-direct {v4}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 458
    sub-int v2, p2, p1

    add-int/2addr v2, v3

    new-array v2, v2, [I

    .line 459
    move v4, v5

    :goto_0
    array-length v6, v2

    if-ge v4, v6, :cond_1

    .line 460
    add-int v6, p1, v4

    aput v6, v2, v4

    .line 459
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 462
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->cn()Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sb:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    aget-object v4, v4, v5

    iput-object v2, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->sj:[I

    .line 463
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 465
    invoke-virtual {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->nextToken()I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wD:I

    .line 466
    iget v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wD:I

    .line 467
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v6, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    nop

    .line 470
    :try_start_1
    iget-object v7, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    .line 472
    iget-object v8, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rS:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    invoke-static {v8}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    new-instance v9, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/af;

    invoke-direct {v9, v2, v6}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/af;-><init>(Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    .line 471
    invoke-virtual {v7, v8, v9, v5}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/K;Z)V

    .line 483
    const-wide/16 v7, 0xbb8

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 484
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v3, :cond_2

    .line 485
    nop

    .line 487
    iget-object v3, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rS:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    invoke-static {v3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    .line 488
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;

    .line 489
    iget v7, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->tp:I

    .line 485
    invoke-virtual {v1, v4, v3, v6, v7}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->a(ILcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 490
    invoke-direct {p0, v5}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->av(I)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 493
    :cond_2
    nop

    .line 499
    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x5e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unable to query any entities; indices: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; # of new entities: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 493
    invoke-static {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->g(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 502
    goto :goto_1

    .line 500
    :catch_0
    move-exception p1

    .line 501
    :try_start_3
    const-string p2, "Unable to query new entities"

    invoke-static {p2, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 504
    :goto_1
    monitor-exit p0

    return-object v0

    .line 450
    :cond_3
    :goto_2
    monitor-exit p0

    return-object v0

    .line 445
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized av(I)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;
    .locals 8

    monitor-enter p0

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    iget v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->tp:I

    const/4 v3, 0x0

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->cn()Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sb:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->cn()Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sb:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->cn()Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sb:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    array-length v1, v1

    if-lt p1, v1, :cond_2

    goto :goto_3

    :cond_2
    iget-object v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;

    invoke-static {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;

    iget-object v1, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tr:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    array-length v4, v1

    :goto_2
    if-ge v3, v4, :cond_4

    aget-object v5, v1, v3

    iget v6, v5, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tp:I

    iget v7, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->tp:I

    if-ne v6, v7, :cond_3

    iget v6, v5, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tC:I

    if-ne v6, p1, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 332
    :cond_4
    :goto_3
    move-object v5, v2

    :goto_4
    if-eqz v5, :cond_6

    .line 333
    const-string p1, "-- Selected entity: "

    iget-object v0, v5, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tx:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_5
    invoke-static {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    monitor-exit p0

    return-object v5

    .line 336
    :cond_6
    monitor-exit p0

    return-object v2

    .line 330
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized c(Ljava/lang/CharSequence;II)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;
    .locals 7

    monitor-enter p0

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wD:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->at(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 396
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 399
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wx:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 400
    add-int/2addr p2, p1

    .line 401
    add-int/2addr p1, p3

    .line 402
    const/16 p3, 0x2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Selection changed: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->d(Ljava/lang/String;)V

    .line 403
    iget p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wB:I

    const/4 v0, 0x0

    if-ne p2, p3, :cond_1

    iget p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wC:I

    if-eq p1, p3, :cond_6

    .line 406
    :cond_1
    nop

    .line 407
    iget-object p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->ww:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->ww:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;

    iget p3, p3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;->ua:I

    .line 408
    move v2, p3

    move p3, v0

    move v1, p3

    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->ww:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p3, v3, :cond_4

    .line 409
    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->ww:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;

    .line 410
    iget v4, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;->ua:I

    if-ltz v4, :cond_3

    .line 411
    iget v4, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;->ub:I

    if-gt v4, p2, :cond_2

    .line 414
    iget v1, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;->ua:I

    .line 416
    :cond_2
    iget v4, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;->uc:I

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, p1, 0x1

    if-gt v4, v5, :cond_3

    .line 417
    iget v2, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;->ua:I

    .line 408
    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 421
    :cond_4
    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->B(II)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    move-result-object p3

    .line 422
    if-eqz p3, :cond_6

    .line 423
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    iget-object v1, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uB:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 424
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/T;

    invoke-static {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/T;

    iget v2, p3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tD:I

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 430
    iget-object v3, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uB:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    iget v4, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tD:I

    iget v5, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wB:I

    iget v6, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wC:I

    .line 425
    move-object v0, v1

    move v1, v2

    move v2, p2

    move v3, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/T;->a(IIIIII)V

    .line 434
    :cond_5
    iput p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wB:I

    .line 435
    iput p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wC:I

    .line 436
    invoke-direct {p0, p3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->d(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    monitor-exit p0

    return-object p3

    .line 440
    :cond_6
    :try_start_2
    invoke-direct {p0, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->av(I)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 394
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private d(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;)V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->uR:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ae;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ae;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 373
    return-void
.end method


# virtual methods
.method final declared-synchronized a(Ljava/lang/CharSequence;II)Landroid/view/textclassifier/TextClassification;
    .locals 3

    monitor-enter p0

    .line 342
    :try_start_0
    new-instance v0, Landroid/view/textclassifier/TextClassification$Builder;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassification$Builder;-><init>()V

    .line 343
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wD:I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->at(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 344
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/textclassifier/TextClassification$Builder;->setText(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Builder;->build()Landroid/view/textclassifier/TextClassification;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 346
    :cond_0
    const/16 v1, 0x26

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Classify text: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->d(Ljava/lang/String;)V

    .line 348
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->c(Ljava/lang/CharSequence;II)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    move-result-object p2

    .line 349
    if-eqz p2, :cond_2

    .line 350
    iget-boolean p3, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sk:Z

    if-eqz p3, :cond_1

    .line 351
    const-string p3, "other"

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, p3, v1}, Landroid/view/textclassifier/TextClassification$Builder;->setEntityType(Ljava/lang/String;F)Landroid/view/textclassifier/TextClassification$Builder;

    .line 353
    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->d(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;)V

    .line 355
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/textclassifier/TextClassification$Builder;->setText(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Builder;->build()Landroid/view/textclassifier/TextClassification;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 341
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized b(Ljava/lang/CharSequence;II)Landroid/view/textclassifier/TextSelection;
    .locals 2

    monitor-enter p0

    .line 378
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x29

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Text selection: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->d(Ljava/lang/String;)V

    .line 380
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->av(I)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    move-result-object p1

    .line 381
    if-eqz p1, :cond_1

    .line 382
    new-instance v0, Landroid/view/textclassifier/TextSelection$Builder;

    invoke-direct {v0, p2, p3}, Landroid/view/textclassifier/TextSelection$Builder;-><init>(II)V

    .line 384
    iget-boolean p1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sk:Z

    if-eqz p1, :cond_0

    .line 385
    const-string p1, "other"

    const p2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, p1, p2}, Landroid/view/textclassifier/TextSelection$Builder;->setEntityType(Ljava/lang/String;F)Landroid/view/textclassifier/TextSelection$Builder;

    .line 387
    :cond_0
    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection$Builder;->build()Landroid/view/textclassifier/TextSelection;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 389
    :cond_1
    :try_start_1
    new-instance p1, Landroid/view/textclassifier/TextSelection$Builder;

    invoke-direct {p1, p2, p3}, Landroid/view/textclassifier/TextSelection$Builder;-><init>(II)V

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Builder;->build()Landroid/view/textclassifier/TextSelection;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 377
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized cC()Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;
    .locals 21

    move-object/from16 v1, p0

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wy:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 83
    const-string v0, "Empty text container rect."

    invoke-static {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->g(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-object v1

    .line 87
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/i;->cq()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wv:Landroid/widget/TextView;

    const/16 v2, 0x96

    const/16 v3, 0x3c

    const/16 v4, 0x32

    invoke-static {v4, v4, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 98
    :cond_1
    iget-object v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->cn()Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    move-result-object v0

    .line 99
    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sa:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    .line 102
    nop

    .line 103
    nop

    .line 104
    iget-object v2, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    iget-object v2, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uB:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_7

    .line 105
    iget-object v2, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    iget-object v2, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uB:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    .line 106
    iget-object v5, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tw:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

    array-length v5, v5

    if-lez v5, :cond_7

    .line 107
    iget-object v2, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tw:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

    aget-object v2, v2, v4

    .line 108
    iget-object v2, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->sj:[I

    array-length v5, v2

    move v6, v3

    move v7, v6

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_6

    aget v8, v2, v3

    .line 109
    if-ltz v6, :cond_2

    if-le v6, v8, :cond_3

    .line 110
    :cond_2
    nop

    .line 112
    move v6, v8

    :cond_3
    if-ltz v7, :cond_4

    if-ge v7, v8, :cond_5

    .line 113
    :cond_4
    nop

    .line 108
    move v7, v8

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    :cond_6
    move v3, v6

    goto :goto_1

    :cond_7
    move v7, v3

    :goto_1
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 132
    nop

    .line 133
    const/4 v5, 0x1

    move v6, v4

    move v8, v5

    :goto_2
    array-length v9, v0

    if-ge v6, v9, :cond_f

    .line 134
    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14}, Landroid/graphics/RectF;-><init>()V

    .line 135
    aget-object v15, v0, v6

    .line 137
    array-length v9, v0

    sub-int/2addr v9, v5

    if-ge v6, v9, :cond_8

    add-int/lit8 v9, v6, 0x1

    aget-object v9, v0, v9

    goto :goto_3

    :cond_8
    const/4 v9, 0x0

    .line 138
    :goto_3
    move-object v13, v9

    iget-object v9, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    invoke-virtual {v9, v15, v14}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;Landroid/graphics/RectF;)V

    .line 139
    iget-object v9, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    iget v10, v15, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tn:I

    invoke-virtual {v9, v10}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->as(I)Landroid/graphics/RectF;

    move-result-object v9

    .line 140
    if-eqz v13, :cond_9

    iget v10, v13, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tn:I

    iget v11, v15, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tn:I

    if-eq v10, v11, :cond_9

    .line 141
    move/from16 v16, v5

    goto :goto_4

    .line 140
    :cond_9
    nop

    .line 141
    move/from16 v16, v4

    :goto_4
    if-nez v16, :cond_a

    if-eqz v13, :cond_a

    .line 142
    iget-object v10, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    invoke-virtual {v10, v13, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;Landroid/graphics/RectF;)V

    .line 143
    iget v10, v2, Landroid/graphics/RectF;->left:F

    iput v10, v14, Landroid/graphics/RectF;->right:F

    .line 146
    :cond_a
    iget v10, v9, Landroid/graphics/RectF;->top:F

    iput v10, v14, Landroid/graphics/RectF;->top:F

    .line 147
    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iput v9, v14, Landroid/graphics/RectF;->bottom:F

    .line 148
    iget-object v9, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wy:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    neg-float v9, v9

    iget-object v10, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wy:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    neg-float v10, v10

    invoke-virtual {v14, v9, v10}, Landroid/graphics/RectF;->offset(FF)V

    .line 149
    const/4 v12, 0x0

    if-eqz v8, :cond_b

    .line 150
    nop

    .line 151
    iget-object v8, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wx:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    .line 152
    iget-object v8, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wx:Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v8, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wx:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    .line 155
    iget-object v11, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->ww:Ljava/util/List;

    const-string v8, " "

    new-instance v9, Landroid/graphics/RectF;

    iget v10, v14, Landroid/graphics/RectF;->left:F

    .line 158
    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-direct {v9, v12, v12, v10, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v5, 0x0

    .line 156
    move v10, v6

    move-object v4, v11

    move v11, v5

    move v5, v12

    move/from16 v12, v17

    move-object/from16 v19, v13

    move/from16 v13, v18

    invoke-static/range {v8 .. v13}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;->a(Ljava/lang/String;Landroid/graphics/RectF;IZII)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;

    move-result-object v8

    .line 155
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    const/4 v4, 0x0

    goto :goto_5

    :cond_b
    move v5, v12

    move-object/from16 v19, v13

    move v4, v8

    :goto_5
    iget-object v8, v15, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tl:Ljava/lang/String;

    .line 166
    iget-object v9, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wx:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    .line 170
    iget-object v9, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wx:Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v9, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wx:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v9, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wx:Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v9, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wx:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    .line 174
    iget-object v12, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->ww:Ljava/util/List;

    const/4 v11, 0x0

    .line 175
    move-object v9, v14

    move v10, v6

    move-object v5, v12

    move v12, v13

    move-object/from16 v20, v0

    move v0, v13

    move/from16 v13, v17

    invoke-static/range {v8 .. v13}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;->a(Ljava/lang/String;Landroid/graphics/RectF;IZII)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;

    move-result-object v8

    .line 174
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    if-ne v3, v6, :cond_c

    .line 177
    iput v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wB:I

    .line 179
    :cond_c
    if-ne v7, v6, :cond_d

    .line 180
    add-int/lit8 v0, v17, -0x1

    iput v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wC:I

    .line 182
    :cond_d
    if-eqz v16, :cond_e

    .line 183
    iget-object v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wx:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    .line 184
    iget-object v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wx:Ljava/lang/StringBuilder;

    const-string v4, " \n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wx:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 186
    iget-object v4, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->ww:Ljava/util/List;

    const-string v8, " \n"

    new-instance v9, Landroid/graphics/RectF;

    .line 189
    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-direct {v9, v10, v10, v14, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v11, 0x0

    .line 187
    move v10, v6

    move v13, v0

    invoke-static/range {v8 .. v13}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;->a(Ljava/lang/String;Landroid/graphics/RectF;IZII)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;

    move-result-object v5

    .line 186
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v4, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wx:Ljava/lang/StringBuilder;

    const-string v5, " \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v4, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 196
    move-object/from16 v9, v19

    invoke-static {v9}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    iget v5, v5, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tn:I

    invoke-virtual {v4, v5}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->as(I)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 197
    invoke-static {v15}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    iget v8, v8, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tn:I

    invoke-virtual {v5, v8}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->as(I)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v4, v14

    .line 199
    iget-object v5, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->ww:Ljava/util/List;

    const-string v8, "\n \n"

    new-instance v9, Landroid/graphics/RectF;

    const/4 v10, 0x0

    invoke-direct {v9, v10, v10, v14, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v11, 0x1

    add-int/lit8 v13, v0, 0x2

    .line 200
    move v10, v6

    move v12, v0

    invoke-static/range {v8 .. v13}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;->a(Ljava/lang/String;Landroid/graphics/RectF;IZII)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;

    move-result-object v0

    .line 199
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    nop

    .line 133
    const/4 v8, 0x1

    goto :goto_6

    :cond_e
    move v8, v4

    :goto_6
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v20

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_2

    .line 211
    :cond_f
    iget-object v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->ww:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 212
    iget-object v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->uR:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    monitor-exit p0

    return-object v1

    .line 216
    :cond_10
    :try_start_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wy:Landroid/graphics/RectF;

    .line 218
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x10

    iget-object v3, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wy:Landroid/graphics/RectF;

    .line 219
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x10

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 220
    iget-object v2, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wy:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 221
    iget-object v2, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wy:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 222
    iget-object v2, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->uR:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    new-instance v0, Landroid/text/SpannableString;

    iget-object v2, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wx:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wA:Landroid/text/SpannableString;

    .line 225
    iget-object v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->ww:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;

    .line 226
    iget-object v3, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;->tZ:Landroid/graphics/RectF;

    iget-object v4, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wy:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iget-object v5, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wy:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 227
    iget-object v3, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wA:Landroid/text/SpannableString;

    invoke-static {v3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/SpannableString;

    iget v4, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;->ub:I

    iget v5, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;->uc:I

    .line 232
    iget-boolean v6, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;->ud:Z

    if-eqz v6, :cond_11

    const/16 v6, 0x33

    goto :goto_8

    :cond_11
    const/16 v6, 0x11

    .line 228
    :goto_8
    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 233
    goto :goto_7

    .line 234
    :cond_12
    iget-object v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wv:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wA:Landroid/text/SpannableString;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wv:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wv:Landroid/widget/TextView;

    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/V;

    invoke-direct {v2, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/V;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 240
    iget-object v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wv:Landroid/widget/TextView;

    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/W;

    invoke-direct {v2, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/W;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 241
    iget-object v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wv:Landroid/widget/TextView;

    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/Y;

    invoke-direct {v2, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/Y;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 242
    iget-object v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wv:Landroid/widget/TextView;

    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/Z;

    invoke-direct {v2, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/Z;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->uR:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/aa;

    invoke-direct {v2, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/aa;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 245
    iget-object v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->uR:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ab;

    invoke-direct {v2, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ab;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 246
    iget-object v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->uR:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ac;

    invoke-direct {v2, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ac;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 247
    iget-object v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->uR:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ad;

    invoke-direct {v2, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ad;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wv:Landroid/widget/TextView;

    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ag;

    invoke-direct {v2, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ag;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    .line 276
    iget-object v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wv:Landroid/widget/TextView;

    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ah;

    invoke-direct {v2, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ah;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 312
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->av(I)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    .line 313
    iget v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wB:I

    iget v2, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wC:I

    if-le v2, v0, :cond_13

    iget-object v3, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wx:Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    const/16 v3, 0x22

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Selecting: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->f(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->uR:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/X;

    invoke-direct {v4, v1, v0, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/X;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;II)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 314
    :cond_13
    iget-object v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->nextToken()I

    move-result v0

    iput v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wD:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    monitor-exit p0

    return-object v1

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
