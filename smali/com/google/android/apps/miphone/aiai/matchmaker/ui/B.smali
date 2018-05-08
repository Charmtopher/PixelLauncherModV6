.class final synthetic Lcom/google/android/apps/miphone/aiai/matchmaker/ui/B;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final vH:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

.field private final vI:Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;

.field private final vJ:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

.field private final vK:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/J;


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/J;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/B;->vH:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/B;->vI:Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;

    iput-object p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/B;->vJ:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

    iput-object p4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/B;->vK:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/J;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/B;->vH:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/B;->vI:Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/B;->vJ:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/B;->vK:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/J;

    monitor-enter v0

    :try_start_0
    invoke-static {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;

    iget-object v5, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vv:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/InteractionContextData;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/InteractionContextData;

    move-result-object v7

    iget-wide v8, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vu:J

    iget-object v10, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vz:Landroid/graphics/Bitmap;

    iget-object v11, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vG:Landroid/os/Bundle;

    new-instance v12, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/H;

    invoke-direct {v12, v0, v2, v3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/H;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/J;)V

    invoke-interface/range {v4 .. v12}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;->extractContentAsync(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/api/InteractionContextData;JLandroid/graphics/Bitmap;Landroid/os/Bundle;Lcom/google/android/apps/miphone/aiai/matchmaker/api/IContentCallback;)Ljava/lang/String;
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
    const-string v2, "Failed to call matchmaker (content extraction) "

    invoke-static {v2, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
