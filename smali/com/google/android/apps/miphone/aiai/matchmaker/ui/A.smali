.class public Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final packageName:Ljava/lang/String;

.field private final vA:Landroid/graphics/RectF;

.field private final vB:Landroid/graphics/PointF;

.field private final vC:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/z;

.field private vD:I

.field private vE:Z

.field private vF:Z

.field public vG:Landroid/os/Bundle;

.field final vu:J

.field final vv:Ljava/lang/String;

.field private final vw:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/q;

.field final vx:Landroid/graphics/RectF;

.field final vy:Landroid/graphics/PointF;

.field final vz:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/q;Landroid/graphics/RectF;Landroid/graphics/PointF;JLandroid/graphics/Bitmap;Landroid/os/Bundle;Landroid/content/ComponentName;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/z;)V
    .locals 2

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vA:Landroid/graphics/RectF;

    .line 53
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vB:Landroid/graphics/PointF;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vD:I

    .line 375
    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vw:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/q;

    .line 376
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vx:Landroid/graphics/RectF;

    .line 377
    new-instance p1, Landroid/graphics/PointF;

    iget p2, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-direct {p1, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vy:Landroid/graphics/PointF;

    .line 378
    iput-wide p4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vu:J

    .line 379
    iput-object p6, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vz:Landroid/graphics/Bitmap;

    .line 380
    iput-object p7, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vG:Landroid/os/Bundle;

    .line 381
    invoke-virtual {p8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->packageName:Ljava/lang/String;

    .line 382
    invoke-virtual {p8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vv:Ljava/lang/String;

    .line 383
    iput-object p9, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vC:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/z;

    .line 384
    return-void
.end method


# virtual methods
.method final declared-synchronized a(Landroid/graphics/PointF;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/J;)V
    .locals 4

    monitor-enter p0

    .line 170
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Fetching contents @ "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->f(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vw:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/q;

    invoke-interface {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/q;->cu()Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;

    move-result-object v0

    .line 172
    if-nez v0, :cond_0

    .line 173
    const-string p1, "No matchmaker service."

    invoke-static {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/CanceledException;->c(Ljava/lang/String;)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/CanceledException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 177
    :cond_0
    const/4 v1, 0x0

    .line 178
    if-eqz p1, :cond_1

    .line 179
    :try_start_1
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vA:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 180
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 182
    :cond_1
    new-instance p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

    invoke-direct {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;-><init>()V

    .line 183
    if-eqz v1, :cond_2

    .line 184
    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    invoke-direct {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;-><init>()V

    iput-object v2, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sQ:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    .line 185
    iget-object v2, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sQ:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iput v3, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->left:F

    .line 186
    iget-object v2, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sQ:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iput v3, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->top:F

    .line 187
    iget-object v2, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sQ:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    iput v3, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->width:F

    .line 188
    iget-object v2, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sQ:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    iput v3, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->height:F

    .line 190
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vE:Z

    iput-boolean v2, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sW:Z

    .line 191
    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vD:I

    if-lez v2, :cond_3

    .line 192
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sR:Z

    .line 193
    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vD:I

    iput v2, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;->sS:I

    .line 195
    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Contents new rect: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->e(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vw:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/q;

    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/B;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/B;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/J;)V

    invoke-interface {v1, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/q;->c(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    .line 169
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized a(Landroid/graphics/RectF;IZ)V
    .locals 1

    monitor-enter p0

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vA:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 300
    iput-boolean p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vE:Z

    .line 301
    iput p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vD:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    monitor-exit p0

    return-void

    .line 298
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/ContentData;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/J;)V
    .locals 3

    monitor-enter p0

    .line 310
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vF:Z

    if-eqz v0, :cond_0

    .line 311
    const-string p1, "Content extraction cancelled."

    invoke-static {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/CanceledException;->c(Ljava/lang/String;)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/CanceledException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    monitor-exit p0

    return-void

    .line 314
    :cond_0
    :try_start_1
    const-string v0, "Fetched contents\n\n"

    invoke-static {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/ContentData;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->d(Ljava/lang/String;)V

    .line 315
    iget-object v0, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/ContentData;->rS:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    if-nez v0, :cond_2

    new-instance p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    invoke-direct {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;-><init>()V

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/ContentData;->rS:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    .line 316
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vw:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/q;

    new-instance v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/E;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/E;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/J;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;)V

    invoke-interface {v0, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/q;->d(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    monitor-exit p0

    return-void

    .line 309
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/K;Z)V
    .locals 7

    monitor-enter p0

    .line 334
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vF:Z

    if-eqz v0, :cond_0

    .line 335
    const-string p1, "Entity extraction cancelled"

    invoke-static {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/CanceledException;->c(Ljava/lang/String;)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/CanceledException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    monitor-exit p0

    return-void

    .line 338
    :cond_0
    :try_start_1
    invoke-static {p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->e(Ljava/lang/String;)V

    .line 339
    iget-object v0, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;->rT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;-><init>()V

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;->rT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;

    .line 340
    :goto_0
    move-object v3, v0

    if-eqz p4, :cond_2

    .line 341
    iget-object p4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vw:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/q;

    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/F;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/F;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/K;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;)V

    invoke-interface {p4, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/q;->d(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 350
    :cond_2
    :try_start_2
    invoke-interface {p3, p1, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/K;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 352
    monitor-exit p0

    return-void

    .line 333
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/K;)V
    .locals 1

    monitor-enter p0

    .line 226
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/K;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/K;Z)V
    .locals 8

    monitor-enter p0

    .line 238
    :try_start_0
    const-string v0, "Extracting entities."

    invoke-static {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->f(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vw:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/q;

    invoke-interface {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/q;->cu()Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;

    move-result-object v3

    .line 240
    if-nez v3, :cond_0

    .line 241
    const-string p1, "No matchmaker service."

    invoke-static {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/CanceledException;->c(Ljava/lang/String;)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/CanceledException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return-void

    .line 244
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vF:Z

    if-eqz v0, :cond_1

    .line 245
    const-string p1, "Entity extraction cancelled."

    invoke-static {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/CanceledException;->c(Ljava/lang/String;)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/CanceledException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    .line 248
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vw:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/q;

    new-instance v7, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/C;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/C;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/K;Z)V

    invoke-interface {v0, v7}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/q;->c(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    monitor-exit p0

    return-void

    .line 237
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized a(Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;)V
    .locals 3

    monitor-enter p0

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vw:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/q;

    invoke-interface {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/q;->cu()Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_1

    iget-object v1, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;->rW:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;

    iget-object v1, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;->sE:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vw:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/q;

    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/D;

    invoke-direct {v2, v0, p1, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/D;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;)V

    invoke-interface {v1, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/q;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    monitor-exit p0

    return-void

    .line 280
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 277
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 356
    const-string v0, "Canceling suggestion interaction."

    invoke-static {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->f(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vw:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/q;

    new-instance v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/G;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/G;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/q;->d(Ljava/lang/Runnable;)V

    .line 363
    return-void
.end method

.method final declared-synchronized cw()Lcom/google/android/apps/miphone/aiai/matchmaker/ui/z;
    .locals 1

    monitor-enter p0

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vC:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized o(Z)V
    .locals 1

    monitor-enter p0

    .line 109
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vF:Z

    .line 110
    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vB:Landroid/graphics/PointF;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 112
    iget-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vB:Landroid/graphics/PointF;

    iput v0, p1, Landroid/graphics/PointF;->y:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_0
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
