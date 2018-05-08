.class public Lcom/google/android/apps/nexuslauncher/reflection/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final BA:Lcom/google/android/apps/nexuslauncher/reflection/j;

.field final BB:Lcom/google/research/reflection/c/d;

.field final BC:Lcom/google/android/apps/nexuslauncher/reflection/b/e;

.field final BD:Lcom/google/android/apps/nexuslauncher/reflection/b/a;

.field final BE:Lcom/google/android/apps/nexuslauncher/reflection/b/c;

.field final BF:Lcom/google/android/apps/nexuslauncher/reflection/b/f;

.field final BG:Lcom/google/android/apps/nexuslauncher/reflection/b/g;

.field final BH:Lcom/google/android/apps/nexuslauncher/reflection/f;

.field private final BI:Lcom/google/android/apps/nexuslauncher/reflection/d/f;

.field final BJ:Lcom/google/android/apps/nexuslauncher/reflection/c;

.field private final BK:Lcom/google/android/apps/nexuslauncher/reflection/f/j;

.field final BL:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

.field private final BM:Lcom/google/android/apps/nexuslauncher/reflection/p;

.field final Bi:Lcom/google/android/apps/nexuslauncher/reflection/b/b;

.field final Bz:Ljava/util/ArrayList;

.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/j;Lcom/google/android/apps/nexuslauncher/reflection/p;Lcom/google/research/reflection/c/d;Lcom/google/android/apps/nexuslauncher/reflection/b/b;Lcom/google/android/apps/nexuslauncher/reflection/b/e;Lcom/google/android/apps/nexuslauncher/reflection/b/c;Lcom/google/android/apps/nexuslauncher/reflection/f;Lcom/google/android/apps/nexuslauncher/reflection/d/f;Lcom/google/android/apps/nexuslauncher/reflection/d/e;Lcom/google/android/apps/nexuslauncher/reflection/c;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->Bz:Ljava/util/ArrayList;

    .line 100
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BA:Lcom/google/android/apps/nexuslauncher/reflection/j;

    .line 102
    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BM:Lcom/google/android/apps/nexuslauncher/reflection/p;

    .line 103
    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BB:Lcom/google/research/reflection/c/d;

    .line 104
    iput-object p5, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->Bi:Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    .line 105
    iput-object p6, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BC:Lcom/google/android/apps/nexuslauncher/reflection/b/e;

    .line 106
    iput-object p7, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BE:Lcom/google/android/apps/nexuslauncher/reflection/b/c;

    .line 107
    new-instance p2, Lcom/google/android/apps/nexuslauncher/reflection/b/g;

    invoke-direct {p2, p1}, Lcom/google/android/apps/nexuslauncher/reflection/b/g;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BG:Lcom/google/android/apps/nexuslauncher/reflection/b/g;

    .line 108
    new-instance p2, Lcom/google/android/apps/nexuslauncher/reflection/b/a;

    invoke-direct {p2, p1}, Lcom/google/android/apps/nexuslauncher/reflection/b/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BD:Lcom/google/android/apps/nexuslauncher/reflection/b/a;

    .line 109
    iput-object p8, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BH:Lcom/google/android/apps/nexuslauncher/reflection/f;

    .line 110
    iput-object p9, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BI:Lcom/google/android/apps/nexuslauncher/reflection/d/f;

    .line 111
    iput-object p10, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BL:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    .line 112
    iput-object p11, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BJ:Lcom/google/android/apps/nexuslauncher/reflection/c;

    .line 113
    new-instance p2, Lcom/google/android/apps/nexuslauncher/reflection/b/f;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/google/android/apps/nexuslauncher/reflection/b/f;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BF:Lcom/google/android/apps/nexuslauncher/reflection/b/f;

    .line 114
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->n(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/f/j;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BK:Lcom/google/android/apps/nexuslauncher/reflection/f/j;

    .line 115
    return-void
.end method

.method static a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 5

    .line 388
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/research/reflection/predictor/m;

    .line 389
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 391
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/predictor/m;

    .line 392
    iget-object v3, v2, Lcom/google/research/reflection/predictor/m;->sc:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 393
    iget-object v3, v2, Lcom/google/research/reflection/predictor/m;->sc:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 394
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 395
    aput-object v2, v0, v3

    goto :goto_0

    .line 405
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    goto :goto_0

    .line 408
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    goto :goto_0

    .line 412
    :cond_2
    nop

    .line 413
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 414
    const/4 p0, 0x0

    move p1, p0

    :goto_1
    array-length v2, v0

    if-ge p0, v2, :cond_4

    .line 415
    aget-object v2, v0, p0

    if-nez v2, :cond_3

    .line 416
    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/research/reflection/predictor/m;

    aput-object p1, v0, p0

    .line 414
    move p1, v2

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 419
    :cond_4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final a(Lcom/google/android/apps/nexuslauncher/reflection/g/c;Z)V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BK:Lcom/google/android/apps/nexuslauncher/reflection/f/j;

    if-eqz v0, :cond_1

    .line 208
    if-eqz p2, :cond_0

    .line 209
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BK:Lcom/google/android/apps/nexuslauncher/reflection/f/j;

    invoke-virtual {p2, p1}, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->b(Lcom/google/android/apps/nexuslauncher/reflection/g/c;)V

    .line 211
    :cond_0
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BK:Lcom/google/android/apps/nexuslauncher/reflection/f/j;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->eu()Lcom/google/research/reflection/signal/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->g(J)V

    .line 213
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/g/c;Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;)V
    .locals 5

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BA:Lcom/google/android/apps/nexuslauncher/reflection/j;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/j;->a(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/g/c;)V

    .line 164
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BA:Lcom/google/android/apps/nexuslauncher/reflection/j;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/reflection/j;->dY()Z

    .line 167
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BE:Lcom/google/android/apps/nexuslauncher/reflection/b/c;

    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/reflection/b/c;->Cg:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/nexuslauncher/reflection/b/d;

    iget v3, v1, Lcom/google/android/apps/nexuslauncher/reflection/b/d;->Cj:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/google/android/apps/nexuslauncher/reflection/b/d;->Cj:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/reflection/b/c;->ec()V

    .line 170
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BL:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    if-eqz p1, :cond_3

    .line 171
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 172
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/e/c;-><init>()V

    .line 173
    invoke-virtual {p2}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->et()Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->tM:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->timestamp:J

    .line 175
    iget-object p1, p2, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->sc:Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->packageName:Ljava/lang/String;

    .line 176
    if-eqz p3, :cond_2

    .line 177
    new-instance p1, Lcom/google/android/apps/nexuslauncher/reflection/e/b;

    invoke-direct {p1}, Lcom/google/android/apps/nexuslauncher/reflection/e/b;-><init>()V

    .line 178
    iget-object p2, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length p2, p2

    const/4 v1, 0x2

    if-lt p2, v1, :cond_1

    iget-object p2, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object p2, p2, v2

    iget p2, p2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    if-eqz p2, :cond_1

    .line 183
    iget-object p2, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object p2, p2, v2

    iget p2, p2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/b;->CP:Ljava/lang/String;

    .line 186
    iget-object p2, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    const/4 p3, 0x0

    aget-object p2, p2, p3

    iget p2, p2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/b;->CQ:Ljava/lang/String;

    .line 188
    :cond_1
    iput-object p1, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->CT:Lcom/google/android/apps/nexuslauncher/reflection/e/b;

    .line 190
    :cond_2
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BL:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->a(Lcom/google/android/apps/nexuslauncher/reflection/e/c;)V

    .line 192
    :cond_3
    return-void
.end method

.method final i(Ljava/util/List;)[Lcom/google/android/apps/nexuslauncher/reflection/e/d;
    .locals 4

    .line 344
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    .line 345
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 346
    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/d;-><init>()V

    .line 347
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/research/reflection/predictor/m;

    iget-object v3, v3, Lcom/google/research/reflection/predictor/m;->sc:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/apps/nexuslauncher/reflection/e/d;->CW:Ljava/lang/String;

    .line 348
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/research/reflection/predictor/m;

    iget v3, v3, Lcom/google/research/reflection/predictor/m;->CX:F

    iput v3, v2, Lcom/google/android/apps/nexuslauncher/reflection/e/d;->CX:F

    .line 349
    aput-object v2, v0, v1

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 351
    :cond_0
    return-object v0
.end method

.method public final declared-synchronized v(Z)V
    .locals 1

    monitor-enter p0

    .line 355
    if-eqz p1, :cond_0

    .line 357
    :try_start_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BI:Lcom/google/android/apps/nexuslauncher/reflection/d/f;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->ei()V

    .line 358
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BA:Lcom/google/android/apps/nexuslauncher/reflection/j;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/reflection/j;->reset()V

    goto :goto_0

    .line 354
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 360
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->Bz:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/l;

    .line 361
    invoke-interface {v0}, Lcom/google/android/apps/nexuslauncher/reflection/l;->dV()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    goto :goto_1

    .line 363
    :cond_1
    monitor-exit p0

    return-void

    .line 354
    :goto_2
    monitor-exit p0

    throw p1
.end method
