.class public Lcom/google/android/apps/nexuslauncher/reflection/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final Bp:Lcom/google/research/reflection/c/b;

.field final Bq:Lcom/google/android/apps/nexuslauncher/reflection/d/b;

.field private final Br:Lcom/google/research/reflection/a/c;

.field Bs:Ljava/util/HashMap;

.field private final Bt:Lcom/google/android/apps/nexuslauncher/reflection/d/c;

.field private final Bu:Ljava/lang/Runnable;

.field private final Bv:Landroid/content/SharedPreferences;

.field private final Bw:Ljava/lang/String;

.field private Bx:Ljava/io/File;

.field final By:Lcom/google/research/reflection/predictor/b;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/d/c;Lcom/google/research/reflection/a/c;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bs:Ljava/util/HashMap;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bx:Ljava/io/File;

    .line 99
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bt:Lcom/google/android/apps/nexuslauncher/reflection/d/c;

    .line 102
    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Br:Lcom/google/research/reflection/a/c;

    .line 103
    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bv:Landroid/content/SharedPreferences;

    .line 104
    iput-object p5, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bw:Ljava/lang/String;

    .line 105
    iput-object p6, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bu:Ljava/lang/Runnable;

    .line 107
    new-instance p1, Lcom/google/research/reflection/predictor/b;

    invoke-direct {p1}, Lcom/google/research/reflection/predictor/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->By:Lcom/google/research/reflection/predictor/b;

    .line 108
    new-instance p1, Lcom/google/research/reflection/c/b;

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->By:Lcom/google/research/reflection/predictor/b;

    invoke-direct {p1, p2}, Lcom/google/research/reflection/c/b;-><init>(Lcom/google/research/reflection/predictor/b;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bp:Lcom/google/research/reflection/c/b;

    .line 109
    new-instance p1, Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bt:Lcom/google/android/apps/nexuslauncher/reflection/d/c;

    invoke-direct {p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/d/b;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/d/c;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bq:Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    .line 110
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/apps/nexuslauncher/reflection/j;)V
    .locals 2

    monitor-enter p0

    .line 120
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 121
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 122
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bs:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bs:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 123
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/io/File;)V
    .locals 0

    monitor-enter p0

    .line 113
    :try_start_0
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bx:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/g/c;)V
    .locals 2

    monitor-enter p0

    .line 254
    :try_start_0
    const-string v0, "system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/j;->b(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/g/c;)V

    .line 258
    :cond_0
    iget-object p1, p2, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->sc:Ljava/lang/String;

    const-string v0, "/deleted_app/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->By:Lcom/google/research/reflection/predictor/b;

    if-eqz p1, :cond_1

    .line 259
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bp:Lcom/google/research/reflection/c/b;

    invoke-virtual {p1, p2}, Lcom/google/research/reflection/c/b;->b(Lcom/google/research/reflection/signal/ReflectionEvent;)V

    .line 260
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bq:Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    invoke-virtual {p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->b(Lcom/google/research/reflection/signal/ReflectionEvent;)V

    .line 269
    :cond_1
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bt:Lcom/google/android/apps/nexuslauncher/reflection/d/c;

    invoke-virtual {p2}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->eu()Lcom/google/research/reflection/signal/d;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->d(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    .line 253
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized b(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/g/c;)V
    .locals 4

    monitor-enter p0

    .line 284
    :try_start_0
    iget-object v0, p2, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->sc:Ljava/lang/String;

    .line 285
    const-string v1, "/deleted_app/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 286
    monitor-exit p0

    return-void

    .line 288
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    :try_start_1
    invoke-interface {p2}, Lcom/google/research/reflection/signal/ReflectionEvent;->ew()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Lcom/google/research/reflection/signal/ReflectionEvent;->ew()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-interface {p2}, Lcom/google/research/reflection/signal/ReflectionEvent;->et()Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    move-result-object v2

    sget-object v3, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->aib:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    if-ne v2, v3, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/google/research/reflection/signal/ReflectionEvent;->ew()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Lcom/google/research/reflection/signal/ReflectionEvent;->ew()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p2}, Lcom/google/research/reflection/signal/ReflectionEvent;->ew()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "GEL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :cond_5
    :goto_1
    if-nez v1, :cond_6

    .line 289
    monitor-exit p0

    return-void

    .line 294
    :cond_6
    :try_start_2
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/research/reflection/predictor/j;

    .line 295
    if-nez v1, :cond_7

    .line 296
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->By:Lcom/google/research/reflection/predictor/b;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Br:Lcom/google/research/reflection/a/c;

    invoke-static {v1, v2}, Lcom/google/research/reflection/utils/a;->a(Lcom/google/research/reflection/predictor/b;Lcom/google/research/reflection/a/c;)Lcom/google/research/reflection/predictor/j;

    move-result-object v1

    .line 297
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bs:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_7
    iget-object p1, v1, Lcom/google/research/reflection/predictor/j;->ahO:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/predictor/g;

    invoke-virtual {v2, p2}, Lcom/google/research/reflection/predictor/g;->j(Lcom/google/research/reflection/signal/ReflectionEvent;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2, p2}, Lcom/google/research/reflection/predictor/g;->g(Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;

    goto :goto_2

    :cond_8
    new-instance v2, Lcom/google/research/reflection/predictor/l;

    invoke-direct {v2}, Lcom/google/research/reflection/predictor/l;-><init>()V

    goto :goto_2

    :cond_9
    iget p1, v1, Lcom/google/research/reflection/predictor/j;->ahN:I

    add-int/2addr p1, v0

    iput p1, v1, Lcom/google/research/reflection/predictor/j;->ahN:I

    new-instance p1, Lcom/google/research/reflection/predictor/l;

    invoke-direct {p1}, Lcom/google/research/reflection/predictor/l;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 300
    monitor-exit p0

    return-void

    .line 283
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 343
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/deleted_app/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 345
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bs:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/research/reflection/predictor/j;

    .line 346
    if-eqz p1, :cond_0

    .line 347
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/research/reflection/predictor/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 348
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/j;->dY()Z

    .line 350
    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bt:Lcom/google/android/apps/nexuslauncher/reflection/d/c;

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    monitor-exit p0

    return-void

    .line 342
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/g/c;)Lcom/google/research/reflection/predictor/l;
    .locals 1

    monitor-enter p0

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/research/reflection/predictor/j;

    .line 307
    if-nez p1, :cond_0

    .line 311
    new-instance p1, Lcom/google/research/reflection/predictor/l;

    invoke-direct {p1}, Lcom/google/research/reflection/predictor/l;-><init>()V

    .line 312
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/google/research/reflection/predictor/l;->ahU:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    monitor-exit p0

    return-object p1

    .line 317
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/google/research/reflection/predictor/j;->k(Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    monitor-exit p0

    return-object p1

    .line 305
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized dX()Z
    .locals 28

    move-object/from16 v1, p0

    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, v1, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bv:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, v1, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bv:Landroid/content/SharedPreferences;

    iget-object v4, v1, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bw:Ljava/lang/String;

    .line 136
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    invoke-direct {v4}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;-><init>()V

    invoke-static {v0, v4}, Lcom/google/research/reflection/predictor/b;->a(Ljava/lang/String;Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/b;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/google/research/reflection/predictor/b;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/google/research/reflection/predictor/b;->jg()Lcom/google/research/reflection/a/a;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/research/reflection/a/a;->bD(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/research/reflection/signal/ReflectionEvent;

    invoke-interface {v4}, Lcom/google/research/reflection/signal/ReflectionEvent;->eu()Lcom/google/research/reflection/signal/d;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 143
    :cond_0
    :try_start_1
    iget-object v0, v1, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bv:Landroid/content/SharedPreferences;

    iget-object v4, v1, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bw:Ljava/lang/String;

    .line 144
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/g/a;->o(Ljava/lang/String;)Lcom/google/research/reflection/predictor/b;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 151
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 150
    :try_start_2
    new-instance v0, Lcom/google/research/reflection/predictor/b;

    invoke-direct {v0}, Lcom/google/research/reflection/predictor/b;-><init>()V

    .line 154
    :cond_1
    :goto_0
    iget-object v4, v1, Lcom/google/android/apps/nexuslauncher/reflection/j;->By:Lcom/google/research/reflection/predictor/b;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 155
    :try_start_3
    iget-object v5, v1, Lcom/google/android/apps/nexuslauncher/reflection/j;->By:Lcom/google/research/reflection/predictor/b;

    invoke-virtual {v5}, Lcom/google/research/reflection/predictor/b;->clear()V

    .line 156
    move v5, v3

    :goto_1
    invoke-virtual {v0}, Lcom/google/research/reflection/predictor/b;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 157
    iget-object v6, v1, Lcom/google/android/apps/nexuslauncher/reflection/j;->By:Lcom/google/research/reflection/predictor/b;

    invoke-virtual {v0}, Lcom/google/research/reflection/predictor/b;->jg()Lcom/google/research/reflection/a/a;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/research/reflection/a/a;->bD(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/research/reflection/signal/ReflectionEvent;

    invoke-virtual {v6, v7}, Lcom/google/research/reflection/predictor/b;->b(Lcom/google/research/reflection/signal/ReflectionEvent;)V

    .line 156
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 159
    :cond_2
    monitor-exit v4

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 164
    :cond_3
    :goto_2
    iget-object v0, v1, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bx:Ljava/io/File;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-nez v0, :cond_4

    .line 168
    monitor-exit p0

    return v3

    .line 170
    :cond_4
    :try_start_5
    iget-object v0, v1, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 171
    iget-object v0, v1, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bx:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-nez v0, :cond_5

    .line 175
    monitor-exit p0

    return v3

    .line 177
    :cond_5
    :try_start_6
    iget-object v0, v1, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bx:Ljava/io/File;

    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->toByteArray(Ljava/io/File;)[B

    move-result-object v0

    .line 180
    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->b([B)Lcom/google/android/apps/nexuslauncher/reflection/e/q;

    move-result-object v0

    .line 181
    iget-object v4, v1, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bs:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/google/android/apps/nexuslauncher/reflection/j;->By:Lcom/google/research/reflection/predictor/b;

    iget-object v6, v1, Lcom/google/android/apps/nexuslauncher/reflection/j;->Br:Lcom/google/research/reflection/a/c;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->Ds:[Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    array-length v7, v0

    move v8, v3

    :goto_3
    if-ge v8, v7, :cond_d

    aget-object v9, v0, v8

    new-instance v10, Lcom/google/research/reflection/predictor/j;

    invoke-direct {v10}, Lcom/google/research/reflection/predictor/j;-><init>()V

    iget-object v11, v9, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->DC:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    array-length v12, v11

    move v13, v3

    :goto_4
    if-ge v13, v12, :cond_c

    aget-object v14, v11, v13

    iget-object v15, v14, Lcom/google/android/apps/nexuslauncher/reflection/e/p;->Dp:Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    iget-object v3, v15, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dt:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/google/research/reflection/predictor/g;->a(Ljava/lang/String;Lcom/google/research/reflection/a/c;)Lcom/google/research/reflection/predictor/g;

    move-result-object v3

    if-eqz v3, :cond_b

    new-instance v2, Ljava/io/DataInputStream;

    move-object/from16 v16, v0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    move-object/from16 v17, v6

    iget-object v6, v15, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Du:[B

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;-><init>()V

    invoke-virtual {v3, v2, v0}, Lcom/google/research/reflection/predictor/g;->a(Ljava/io/DataInputStream;Lcom/google/research/reflection/signal/ReflectionEvent;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    instance-of v0, v3, Lcom/google/research/reflection/predictor/AbstractEventEstimator;

    if-nez v0, :cond_6

    move/from16 v20, v7

    move-object/from16 v23, v11

    move/from16 v24, v12

    goto/16 :goto_9

    :cond_6
    check-cast v3, Lcom/google/research/reflection/predictor/AbstractEventEstimator;

    iget v0, v15, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dw:I

    invoke-virtual {v3, v0}, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->bG(I)V

    iget v0, v15, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dv:I

    invoke-virtual {v3, v0}, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->bF(I)V

    iget-object v0, v15, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dx:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    array-length v2, v0

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v2, :cond_7

    move/from16 v18, v2

    aget-object v2, v0, v6

    move-object/from16 v19, v0

    invoke-virtual {v3}, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->jf()Ljava/util/HashMap;

    move-result-object v0

    move/from16 v20, v7

    iget-object v7, v2, Lcom/google/android/apps/nexuslauncher/reflection/e/t;->name:Ljava/lang/String;

    iget v2, v2, Lcom/google/android/apps/nexuslauncher/reflection/e/t;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v18

    move-object/from16 v0, v19

    move/from16 v7, v20

    goto :goto_5

    :cond_7
    move/from16 v20, v7

    iget-object v0, v15, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dy:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v2, v0

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v2, :cond_8

    aget-object v7, v0, v6

    move-object/from16 v21, v0

    invoke-virtual {v3}, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->jb()Ljava/util/HashMap;

    move-result-object v0

    move/from16 v22, v2

    iget v2, v7, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->key:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v23, v11

    move/from16 v24, v12

    iget-wide v11, v7, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->value:J

    long-to-int v7, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v21

    move/from16 v2, v22

    move-object/from16 v11, v23

    move/from16 v12, v24

    goto :goto_6

    :cond_8
    move-object/from16 v23, v11

    move/from16 v24, v12

    iget-object v0, v15, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dz:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v2, v0

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v2, :cond_9

    aget-object v7, v0, v6

    invoke-virtual {v3}, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ja()Ljava/util/HashMap;

    move-result-object v11

    iget v12, v7, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->key:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v25, v0

    :try_start_7
    iget-wide v0, v7, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    goto :goto_7

    :cond_9
    iget-object v0, v15, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->DA:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_a

    aget-object v6, v0, v2

    invoke-virtual {v3}, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->jc()Ljava/util/HashMap;

    move-result-object v7

    iget v11, v6, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->key:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v26, v0

    move/from16 v27, v1

    iget-wide v0, v6, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    goto :goto_8

    :cond_a
    :goto_9
    const-string v0, "reflection"

    invoke-virtual {v3}, Lcom/google/research/reflection/predictor/g;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v14, Lcom/google/android/apps/nexuslauncher/reflection/e/p;->Dq:I

    invoke-virtual {v10, v3, v0}, Lcom/google/research/reflection/predictor/j;->a(Lcom/google/research/reflection/predictor/g;I)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v16

    move-object/from16 v6, v17

    move/from16 v7, v20

    move-object/from16 v11, v23

    move/from16 v12, v24

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find predictor with name ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v15, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move-object/from16 v16, v0

    move-object/from16 v17, v6

    move/from16 v20, v7

    invoke-virtual {v10, v5}, Lcom/google/research/reflection/predictor/j;->c(Lcom/google/research/reflection/predictor/b;)V

    iget-object v0, v9, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->Cm:Ljava/lang/String;

    invoke-interface {v4, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v16

    move-object/from16 v6, v17

    move/from16 v7, v20

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto/16 :goto_3

    .line 191
    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_b

    .line 187
    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_a

    .line 191
    :cond_d
    const/4 v1, 0x0

    :try_start_8
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 192
    nop

    .line 193
    move-object/from16 v1, p0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 131
    :catchall_2
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_c

    .line 191
    :catchall_3
    move-exception v0

    goto :goto_b

    .line 187
    :catch_2
    move-exception v0

    .line 188
    :goto_a
    :try_start_9
    const-string v2, "Reflection.Engine"

    const-string v3, "Failed to load models, starting a fresh model."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 189
    const/4 v2, 0x0

    :try_start_a
    invoke-static {v2}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 191
    :goto_b
    const/4 v2, 0x0

    :try_start_b
    invoke-static {v2}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 131
    :catchall_4
    move-exception v0

    :goto_c
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized dY()Z
    .locals 13

    monitor-enter p0

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->By:Lcom/google/research/reflection/predictor/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bv:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->By:Lcom/google/research/reflection/predictor/b;

    invoke-static {v0}, Lcom/google/research/reflection/predictor/b;->b(Lcom/google/research/reflection/predictor/b;)Ljava/lang/String;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bv:Landroid/content/SharedPreferences;

    const-string v2, "reflection_most_recent_usage_buffer"

    const-wide/16 v3, 0x0

    .line 206
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 208
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bv:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bw:Ljava/lang/String;

    .line 209
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "reflection_most_recent_usage"

    .line 210
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 212
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bx:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 221
    monitor-exit p0

    return v1

    .line 223
    :cond_1
    const/4 v0, 0x0

    .line 225
    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bs:Ljava/util/HashMap;

    .line 226
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/e/q;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/e/q;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->timestamp:J

    const/4 v4, -0x1

    iput v4, v3, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->version:I

    const-string v4, ""

    iput-object v4, v3, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->Dr:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    iput-object v4, v3, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->Ds:[Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    new-instance v6, Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    invoke-direct {v6}, Lcom/google/android/apps/nexuslauncher/reflection/e/s;-><init>()V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v6, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->Cm:Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/research/reflection/predictor/j;

    iget-object v7, v5, Lcom/google/research/reflection/predictor/j;->ahO:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    iput-object v7, v6, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->DC:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    iget-object v7, v5, Lcom/google/research/reflection/predictor/j;->ahO:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v1

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/research/reflection/predictor/g;

    iget-object v10, v6, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->DC:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    new-instance v11, Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    invoke-direct {v11}, Lcom/google/android/apps/nexuslauncher/reflection/e/p;-><init>()V

    aput-object v11, v10, v8

    iget-object v10, v6, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->DC:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    aget-object v10, v10, v8

    invoke-static {v9}, Lcom/google/android/apps/nexuslauncher/reflection/a/c;->a(Lcom/google/research/reflection/predictor/g;)Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    move-result-object v11

    iput-object v11, v10, Lcom/google/android/apps/nexuslauncher/reflection/e/p;->Dp:Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    invoke-static {v9}, Lcom/google/android/apps/nexuslauncher/reflection/a/c;->a(Lcom/google/research/reflection/predictor/g;)Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    iget-object v10, v6, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->DC:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    aget-object v10, v10, v8

    iget-object v11, v5, Lcom/google/research/reflection/predictor/j;->ahP:Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v10, Lcom/google/android/apps/nexuslauncher/reflection/e/p;->Dq:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    iget-object v5, v3, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->Ds:[Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    add-int/lit8 v7, v4, 0x1

    aput-object v6, v5, v4

    move v4, v7

    goto :goto_0

    .line 227
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->timestamp:J

    .line 228
    const/16 v2, 0x28

    iput v2, v3, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->version:I

    .line 229
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "LatLong=%b "

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "Privateplace=%b "

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "Publicplace=%b "

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "Install=%b "

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "Headset=%b "

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->Dr:Ljava/lang/String;

    .line 230
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bx:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 231
    :try_start_2
    invoke-static {v3}, Lcom/google/protobuf/nano/g;->toByteArray(Lcom/google/protobuf/nano/g;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 233
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bu:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 234
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bu:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    :cond_4
    :try_start_3
    invoke-static {v2}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 241
    nop

    .line 242
    monitor-exit p0

    return v5

    .line 240
    :catchall_0
    move-exception v1

    move-object v0, v2

    goto :goto_3

    .line 236
    :catch_0
    move-exception v0

    move-object v12, v2

    move-object v2, v0

    move-object v0, v12

    goto :goto_2

    .line 240
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 236
    :catch_1
    move-exception v2

    .line 237
    :goto_2
    :try_start_4
    const-string v3, "Reflection.Engine"

    const-string v4, "Failed to save models"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 238
    :try_start_5
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return v1

    .line 240
    :goto_3
    :try_start_6
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 201
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    monitor-exit p0

    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
