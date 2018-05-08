.class final synthetic Lcom/google/android/apps/miphone/aiai/matchmaker/ui/C;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final vH:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

.field private final vI:Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;

.field private final vL:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

.field private final vM:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/K;

.field private final vN:Z


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/K;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/C;->vH:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/C;->vI:Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;

    iput-object p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/C;->vL:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    iput-object p4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/C;->vM:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/K;

    iput-boolean p5, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/C;->vN:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/C;->vH:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/C;->vI:Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/C;->vL:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/C;->vM:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/K;

    iget-boolean v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/C;->vN:Z

    monitor-enter v0

    :try_start_0
    invoke-static {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;

    iget-object v6, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vv:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/ContentData;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/ContentData;

    move-result-object v8

    iget-wide v9, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vu:J

    iget-object v11, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vz:Landroid/graphics/Bitmap;

    iget-object v12, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vG:Landroid/os/Bundle;

    new-instance v13, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/I;

    invoke-direct {v13, v0, v2, v3, v4}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/I;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/K;Z)V

    invoke-interface/range {v5 .. v13}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;->getEntitiesAsync(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/api/ContentData;JLandroid/graphics/Bitmap;Landroid/os/Bundle;Lcom/google/android/apps/miphone/aiai/matchmaker/api/IEntitiesCallback;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "Failed to call service - extract entities."

    invoke-static {v2, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->a(Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
