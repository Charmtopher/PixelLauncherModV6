.class final Landroid/support/v7/widget/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final oZ:Ljava/lang/ThreadLocal;

.field static pd:Ljava/util/Comparator;


# instance fields
.field private mTasks:Ljava/util/ArrayList;

.field pa:Ljava/util/ArrayList;

.field pb:J

.field pc:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v7/widget/w;->oZ:Ljava/lang/ThreadLocal;

    .line 188
    new-instance v0, Landroid/support/v7/widget/x;

    invoke-direct {v0}, Landroid/support/v7/widget/x;-><init>()V

    sput-object v0, Landroid/support/v7/widget/w;->pd:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/w;->pa:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/w;->mTasks:Ljava/util/ArrayList;

    .line 63
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;IJ)Landroid/support/v7/widget/aA;
    .locals 5

    .line 277
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->bo()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/d;->O(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v3

    iget v4, v3, Landroid/support/v7/widget/aA;->mPosition:I

    if-ne v4, p2, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 279
    const/4 p1, 0x0

    return-object p1

    .line 282
    :cond_2
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    .line 285
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 286
    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/support/v7/widget/aq;->a(IZJ)Landroid/support/v7/widget/aA;

    move-result-object p2

    .line 289
    if-eqz p2, :cond_4

    .line 290
    invoke-virtual {p2}, Landroid/support/v7/widget/aA;->isBound()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Landroid/support/v7/widget/aA;->isInvalid()Z

    move-result p3

    if-nez p3, :cond_3

    .line 293
    iget-object p3, p2, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/aq;->aa(Landroid/view/View;)V

    goto :goto_2

    .line 299
    :cond_3
    invoke-virtual {v0, p2, v1}, Landroid/support/v7/widget/aq;->a(Landroid/support/v7/widget/aA;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :cond_4
    :goto_2
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    .line 304
    nop

    .line 305
    return-object p2

    .line 303
    :catchall_0
    move-exception p2

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    throw p2
.end method


# virtual methods
.method final a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 4

    .line 175
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-wide v0, p0, Landroid/support/v7/widget/w;->pb:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 180
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/widget/w;->pb:J

    .line 181
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 185
    :cond_0
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/y;

    iput p2, p1, Landroid/support/v7/widget/y;->pe:I

    iput p3, p1, Landroid/support/v7/widget/y;->pf:I

    .line 186
    return-void
.end method

.method public final run()V
    .locals 18

    .line 372
    move-object/from16 v1, p0

    const-wide/16 v2, 0x0

    :try_start_0
    const-string v0, "RV Prefetch"

    invoke-static {v0}, Landroid/support/v4/os/e;->beginSection(Ljava/lang/String;)V

    .line 374
    iget-object v0, v1, Landroid/support/v7/widget/w;->pa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 401
    iput-wide v2, v1, Landroid/support/v7/widget/w;->pb:J

    .line 402
    invoke-static {}, Landroid/support/v4/os/e;->endSection()V

    .line 376
    return-void

    .line 381
    :cond_0
    :try_start_1
    iget-object v0, v1, Landroid/support/v7/widget/w;->pa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 382
    nop

    .line 383
    const/4 v4, 0x0

    move-wide v6, v2

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_2

    .line 384
    iget-object v8, v1, Landroid/support/v7/widget/w;->pa:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView;

    .line 385
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getWindowVisibility()I

    move-result v9

    if-nez v9, :cond_1

    .line 386
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getDrawingTime()J

    move-result-wide v8

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 383
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 390
    :cond_2
    cmp-long v0, v6, v2

    if-nez v0, :cond_3

    .line 401
    iput-wide v2, v1, Landroid/support/v7/widget/w;->pb:J

    .line 402
    invoke-static {}, Landroid/support/v4/os/e;->endSection()V

    .line 392
    return-void

    .line 395
    :cond_3
    :try_start_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    iget-wide v7, v1, Landroid/support/v7/widget/w;->pc:J

    add-long/2addr v5, v7

    .line 397
    iget-object v0, v1, Landroid/support/v7/widget/w;->pa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v7, v4

    move v8, v7

    :goto_1
    if-ge v7, v0, :cond_5

    iget-object v9, v1, Landroid/support/v7/widget/w;->pa:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getWindowVisibility()I

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, v9, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/y;

    invoke-virtual {v10, v9, v4}, Landroid/support/v7/widget/y;->a(Landroid/support/v7/widget/RecyclerView;Z)V

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/y;

    iget v9, v9, Landroid/support/v7/widget/y;->mCount:I

    add-int/2addr v8, v9

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    iget-object v7, v1, Landroid/support/v7/widget/w;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->ensureCapacity(I)V

    move v7, v4

    move v8, v7

    :goto_2
    const/4 v9, 0x1

    if-ge v7, v0, :cond_a

    iget-object v10, v1, Landroid/support/v7/widget/w;->pa:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView;->getWindowVisibility()I

    move-result v11

    if-nez v11, :cond_9

    iget-object v11, v10, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/y;

    iget v12, v11, Landroid/support/v7/widget/y;->pe:I

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    iget v13, v11, Landroid/support/v7/widget/y;->pf:I

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int/2addr v12, v13

    move v13, v8

    move v8, v4

    :goto_3
    iget v14, v11, Landroid/support/v7/widget/y;->mCount:I

    mul-int/lit8 v14, v14, 0x2

    if-ge v8, v14, :cond_8

    iget-object v14, v1, Landroid/support/v7/widget/w;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lt v13, v14, :cond_6

    new-instance v14, Landroid/support/v7/widget/z;

    invoke-direct {v14}, Landroid/support/v7/widget/z;-><init>()V

    iget-object v15, v1, Landroid/support/v7/widget/w;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    iget-object v14, v1, Landroid/support/v7/widget/w;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/support/v7/widget/z;

    :goto_4
    iget-object v15, v11, Landroid/support/v7/widget/y;->pg:[I

    add-int/lit8 v16, v8, 0x1

    aget v15, v15, v16

    if-gt v15, v12, :cond_7

    move v2, v9

    goto :goto_5

    :cond_7
    move v2, v4

    :goto_5
    iput-boolean v2, v14, Landroid/support/v7/widget/z;->ph:Z

    iput v12, v14, Landroid/support/v7/widget/z;->pi:I

    iput v15, v14, Landroid/support/v7/widget/z;->pj:I

    iput-object v10, v14, Landroid/support/v7/widget/z;->pk:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v11, Landroid/support/v7/widget/y;->pg:[I

    aget v2, v2, v8

    iput v2, v14, Landroid/support/v7/widget/z;->position:I

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v8, v8, 0x2

    const-wide/16 v2, 0x0

    goto :goto_3

    :cond_8
    move v8, v13

    :cond_9
    add-int/lit8 v7, v7, 0x1

    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_a
    iget-object v0, v1, Landroid/support/v7/widget/w;->mTasks:Ljava/util/ArrayList;

    sget-object v2, Landroid/support/v7/widget/w;->pd:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v0, v4

    :goto_6
    iget-object v2, v1, Landroid/support/v7/widget/w;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_f

    iget-object v2, v1, Landroid/support/v7/widget/w;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/z;

    iget-object v3, v2, Landroid/support/v7/widget/z;->pk:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_f

    iget-boolean v3, v2, Landroid/support/v7/widget/z;->ph:Z

    if-eqz v3, :cond_b

    const-wide v7, 0x7fffffffffffffffL

    goto :goto_7

    :cond_b
    move-wide v7, v5

    :goto_7
    iget-object v3, v2, Landroid/support/v7/widget/z;->pk:Landroid/support/v7/widget/RecyclerView;

    iget v10, v2, Landroid/support/v7/widget/z;->position:I

    invoke-direct {v1, v3, v10, v7, v8}, Landroid/support/v7/widget/w;->a(Landroid/support/v7/widget/RecyclerView;IJ)Landroid/support/v7/widget/aA;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v7, v3, Landroid/support/v7/widget/aA;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_e

    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->isBound()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v3, v3, Landroid/support/v7/widget/aA;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_e

    iget-boolean v7, v3, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v7, :cond_c

    iget-object v7, v3, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v7}, Landroid/support/v7/widget/d;->bo()I

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->removeAndRecycleViews()V

    :cond_c
    iget-object v7, v3, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/y;

    invoke-virtual {v7, v3, v9}, Landroid/support/v7/widget/y;->a(Landroid/support/v7/widget/RecyclerView;Z)V

    iget v8, v7, Landroid/support/v7/widget/y;->mCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_e

    :try_start_3
    const-string v8, "RV Nested Prefetch"

    invoke-static {v8}, Landroid/support/v4/os/e;->beginSection(Ljava/lang/String;)V

    iget-object v8, v3, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-object v10, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    iput v9, v8, Landroid/support/v7/widget/ax;->qD:I

    invoke-virtual {v10}, Landroid/support/v7/widget/V;->getItemCount()I

    move-result v10

    iput v10, v8, Landroid/support/v7/widget/ax;->qE:I

    iput-boolean v4, v8, Landroid/support/v7/widget/ax;->qG:Z

    iput-boolean v4, v8, Landroid/support/v7/widget/ax;->qH:Z

    iput-boolean v4, v8, Landroid/support/v7/widget/ax;->qI:Z

    move v8, v4

    :goto_8
    iget v10, v7, Landroid/support/v7/widget/y;->mCount:I

    mul-int/lit8 v10, v10, 0x2

    if-ge v8, v10, :cond_d

    iget-object v10, v7, Landroid/support/v7/widget/y;->pg:[I

    aget v10, v10, v8

    invoke-direct {v1, v3, v10, v5, v6}, Landroid/support/v7/widget/w;->a(Landroid/support/v7/widget/RecyclerView;IJ)Landroid/support/v7/widget/aA;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v8, v8, 0x2

    goto :goto_8

    :cond_d
    :try_start_4
    invoke-static {}, Landroid/support/v4/os/e;->endSection()V

    goto :goto_9

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/support/v4/os/e;->endSection()V

    throw v0

    :cond_e
    :goto_9
    iput-boolean v4, v2, Landroid/support/v7/widget/z;->ph:Z

    iput v4, v2, Landroid/support/v7/widget/z;->pi:I

    iput v4, v2, Landroid/support/v7/widget/z;->pj:I

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/z;->pk:Landroid/support/v7/widget/RecyclerView;

    iput v4, v2, Landroid/support/v7/widget/z;->position:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 401
    :cond_f
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/support/v7/widget/w;->pb:J

    .line 402
    invoke-static {}, Landroid/support/v4/os/e;->endSection()V

    .line 403
    return-void

    .line 401
    :catchall_1
    move-exception v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/support/v7/widget/w;->pb:J

    .line 402
    invoke-static {}, Landroid/support/v4/os/e;->endSection()V

    throw v0
.end method
