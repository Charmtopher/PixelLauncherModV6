.class Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ah;
.super Landroid/view/ActionMode$Callback2;
.source "SourceFile"


# instance fields
.field final synthetic wJ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ah;->wJ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .line 302
    iget-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ah;->wJ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;

    monitor-enter p1

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ah;->wJ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uA:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->a(Landroid/view/MenuItem;)Z

    move-result p2

    monitor-exit p1

    return p2

    .line 304
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ah;->wJ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;

    monitor-enter v0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ah;->wJ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;

    iget-object v1, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ah;->wJ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;

    iget v2, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wD:I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->at(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ah;->wJ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;

    iget-object v1, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    iget-object v1, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uA:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ah;->wJ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;

    iget-object v2, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->a(Landroid/view/ActionMode;Landroid/view/Menu;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;)V

    .line 285
    monitor-exit v0

    .line 286
    const/4 p1, 0x1

    return p1

    .line 285
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    .line 308
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ah;->wJ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;

    monitor-enter v0

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ah;->wJ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;

    iget-object v1, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ah;->wJ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;

    iget v2, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wD:I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->at(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ah;->wJ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;

    iget-object v1, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    iget-object v1, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uA:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ah;->wJ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;

    iget-object v2, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->a(Landroid/view/ActionMode;Landroid/view/Menu;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;)V

    .line 296
    monitor-exit v0

    .line 297
    const/4 p1, 0x1

    return p1

    .line 296
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
