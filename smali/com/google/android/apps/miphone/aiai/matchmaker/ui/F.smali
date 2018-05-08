.class final synthetic Lcom/google/android/apps/miphone/aiai/matchmaker/ui/F;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final vH:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

.field private final vU:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;

.field private final vV:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/K;

.field private final vW:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

.field private final vX:Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/K;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/F;->vH:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/F;->vU:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;

    iput-object p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/F;->vV:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/K;

    iput-object p4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/F;->vW:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    iput-object p5, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/F;->vX:Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/F;->vH:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/F;->vV:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/K;

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/F;->vW:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/F;->vX:Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;

    monitor-enter v0

    :try_start_0
    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/K;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
