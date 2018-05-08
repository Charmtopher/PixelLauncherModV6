.class Lcom/google/android/apps/nexuslauncher/reflection/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private BU:Lcom/google/android/apps/nexuslauncher/reflection/j;

.field final synthetic BV:Lcom/google/android/apps/nexuslauncher/reflection/p;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/nexuslauncher/reflection/p;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/q;->BV:Lcom/google/android/apps/nexuslauncher/reflection/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/reflection/p;B)V
    .locals 0

    .line 169
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/q;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/p;)V

    return-void
.end method

.method private eb()Lcom/google/android/apps/nexuslauncher/reflection/j;
    .locals 11

    .line 261
    nop

    .line 265
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/q;->BV:Lcom/google/android/apps/nexuslauncher/reflection/p;

    monitor-enter v0

    .line 267
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/q;->BV:Lcom/google/android/apps/nexuslauncher/reflection/p;

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/reflection/p;->c(Lcom/google/android/apps/nexuslauncher/reflection/p;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "staged_batch_training_progress"

    const-string v3, "Success"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    const-string v2, "Success"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 272
    monitor-exit v0

    return-object v3

    .line 276
    :cond_0
    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/j;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/q;->BV:Lcom/google/android/apps/nexuslauncher/reflection/p;

    invoke-static {v4}, Lcom/google/android/apps/nexuslauncher/reflection/p;->d(Lcom/google/android/apps/nexuslauncher/reflection/p;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/q;->BV:Lcom/google/android/apps/nexuslauncher/reflection/p;

    invoke-static {v4}, Lcom/google/android/apps/nexuslauncher/reflection/p;->b(Lcom/google/android/apps/nexuslauncher/reflection/p;)Lcom/google/android/apps/nexuslauncher/reflection/d/c;

    move-result-object v7

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/q;->BV:Lcom/google/android/apps/nexuslauncher/reflection/p;

    .line 277
    invoke-static {v4}, Lcom/google/android/apps/nexuslauncher/reflection/p;->c(Lcom/google/android/apps/nexuslauncher/reflection/p;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "background_evt_buf.properties"

    const/4 v10, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/google/android/apps/nexuslauncher/reflection/j;-><init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/d/c;Lcom/google/research/reflection/a/c;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/q;->BU:Lcom/google/android/apps/nexuslauncher/reflection/j;

    .line 279
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/q;->BU:Lcom/google/android/apps/nexuslauncher/reflection/j;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/q;->BV:Lcom/google/android/apps/nexuslauncher/reflection/p;

    invoke-static {v4}, Lcom/google/android/apps/nexuslauncher/reflection/p;->e(Lcom/google/android/apps/nexuslauncher/reflection/p;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/apps/nexuslauncher/reflection/j;->a(Ljava/io/File;)V

    .line 280
    const-string v2, "New"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 281
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/p;->ea()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 282
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1

    .line 283
    const-string v1, "Reflection.StBatchTrain"

    const-string v2, "Invalid progress string."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    return-object v3

    .line 288
    :cond_1
    :try_start_1
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 292
    nop

    .line 294
    :try_start_2
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/q;->BU:Lcom/google/android/apps/nexuslauncher/reflection/j;

    invoke-virtual {v3}, Lcom/google/android/apps/nexuslauncher/reflection/j;->dX()Z

    goto :goto_0

    .line 289
    :catch_0
    move-exception v1

    .line 290
    const-string v2, "Reflection.StBatchTrain"

    const-string v4, "Invalid progress string."

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    monitor-exit v0

    return-object v3

    .line 296
    :cond_2
    const-wide/16 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v0, "Reflection.StBatchTrain"

    const-string v3, "Start loading events from logs..."

    invoke-static {v0, v3}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/q;->BV:Lcom/google/android/apps/nexuslauncher/reflection/p;

    monitor-enter v3

    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/q;->BV:Lcom/google/android/apps/nexuslauncher/reflection/p;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/p;->a(Lcom/google/android/apps/nexuslauncher/reflection/p;)Lcom/google/android/apps/nexuslauncher/reflection/q;

    move-result-object v0

    if-eq v0, p0, :cond_3

    monitor-exit v3

    goto/16 :goto_3

    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/q;->BV:Lcom/google/android/apps/nexuslauncher/reflection/p;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/p;->b(Lcom/google/android/apps/nexuslauncher/reflection/p;)Lcom/google/android/apps/nexuslauncher/reflection/d/c;

    move-result-object v0

    const/16 v7, 0x3e8

    invoke-virtual {v0, v1, v2, v7}, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->a(JI)Lcom/google/android/apps/nexuslauncher/reflection/d/d;

    move-result-object v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->CJ:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->CJ:Ljava/util/List;

    const-string v3, "Reflection.StBatchTrain"

    const-string v7, "Num events loaded: %d, time taken so far: %dms"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    iget-object v7, p0, Lcom/google/android/apps/nexuslauncher/reflection/q;->BV:Lcom/google/android/apps/nexuslauncher/reflection/p;

    monitor-enter v7

    :try_start_4
    iget-object v8, p0, Lcom/google/android/apps/nexuslauncher/reflection/q;->BV:Lcom/google/android/apps/nexuslauncher/reflection/p;

    invoke-static {v8}, Lcom/google/android/apps/nexuslauncher/reflection/p;->a(Lcom/google/android/apps/nexuslauncher/reflection/p;)Lcom/google/android/apps/nexuslauncher/reflection/q;

    move-result-object v8

    if-ne v8, p0, :cond_5

    iget-object v8, p0, Lcom/google/android/apps/nexuslauncher/reflection/q;->BU:Lcom/google/android/apps/nexuslauncher/reflection/j;

    const-string v9, "GEL"

    invoke-virtual {v8, v9, v3}, Lcom/google/android/apps/nexuslauncher/reflection/j;->b(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/g/c;)V

    iget-object v8, v3, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    iget-object v8, v8, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->sc:Ljava/lang/String;

    const-string v9, "/deleted_app/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/google/android/apps/nexuslauncher/reflection/q;->BU:Lcom/google/android/apps/nexuslauncher/reflection/j;

    iget-object v8, v8, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bp:Lcom/google/research/reflection/c/b;

    if-eqz v8, :cond_4

    invoke-virtual {v8, v3}, Lcom/google/research/reflection/c/b;->b(Lcom/google/research/reflection/signal/ReflectionEvent;)V

    :cond_4
    monitor-exit v7

    goto :goto_2

    :cond_5
    monitor-exit v7

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_6
    iget-wide v2, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->CI:J

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "InProgress:%d"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v0, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "Reflection.StBatchTrain"

    const-string v8, "Progress: %s"

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v0, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/google/android/apps/nexuslauncher/reflection/q;->BV:Lcom/google/android/apps/nexuslauncher/reflection/p;

    monitor-enter v7

    :try_start_5
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/q;->BV:Lcom/google/android/apps/nexuslauncher/reflection/p;

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/reflection/p;->a(Lcom/google/android/apps/nexuslauncher/reflection/p;)Lcom/google/android/apps/nexuslauncher/reflection/q;

    move-result-object v1

    if-ne v1, p0, :cond_7

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/q;->BV:Lcom/google/android/apps/nexuslauncher/reflection/p;

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/reflection/p;->c(Lcom/google/android/apps/nexuslauncher/reflection/p;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v8, "staged_batch_training_progress"

    invoke-interface {v1, v8, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/q;->BU:Lcom/google/android/apps/nexuslauncher/reflection/j;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/j;->dY()Z

    monitor-exit v7

    move-wide v1, v2

    goto/16 :goto_1

    :cond_7
    monitor-exit v7

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_8
    const-string v0, "Reflection.StBatchTrain"

    const-string v2, "Retrain finished, total time including loading: %dms"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :goto_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/q;->BV:Lcom/google/android/apps/nexuslauncher/reflection/p;

    monitor-enter v0

    .line 302
    :try_start_6
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/q;->BV:Lcom/google/android/apps/nexuslauncher/reflection/p;

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/reflection/p;->a(Lcom/google/android/apps/nexuslauncher/reflection/p;)Lcom/google/android/apps/nexuslauncher/reflection/q;

    move-result-object v1

    if-ne v1, p0, :cond_9

    .line 303
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/q;->BV:Lcom/google/android/apps/nexuslauncher/reflection/p;

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/reflection/p;->c(Lcom/google/android/apps/nexuslauncher/reflection/p;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "staged_batch_training_progress"

    const-string v3, "Success"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 305
    :cond_9
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 306
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/q;->BU:Lcom/google/android/apps/nexuslauncher/reflection/j;

    return-object v0

    .line 305
    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1

    .line 299
    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    .line 296
    :catchall_4
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 176
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/reflection/q;->eb()Lcom/google/android/apps/nexuslauncher/reflection/j;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/q;->BV:Lcom/google/android/apps/nexuslauncher/reflection/p;

    invoke-static {v1, v0, p0}, Lcom/google/android/apps/nexuslauncher/reflection/p;->a(Lcom/google/android/apps/nexuslauncher/reflection/p;Lcom/google/android/apps/nexuslauncher/reflection/j;Lcom/google/android/apps/nexuslauncher/reflection/q;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/q;->BV:Lcom/google/android/apps/nexuslauncher/reflection/p;

    invoke-static {v0, p0}, Lcom/google/android/apps/nexuslauncher/reflection/p;->a(Lcom/google/android/apps/nexuslauncher/reflection/p;Lcom/google/android/apps/nexuslauncher/reflection/q;)V

    .line 181
    return-void
.end method
