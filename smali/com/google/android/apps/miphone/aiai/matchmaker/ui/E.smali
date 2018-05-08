.class final synthetic Lcom/google/android/apps/miphone/aiai/matchmaker/ui/E;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final vH:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

.field private final vR:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

.field private final vS:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/J;

.field private final vT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/J;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/E;->vH:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/E;->vR:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    iput-object p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/E;->vS:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/J;

    iput-object p4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/E;->vT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/E;->vH:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/E;->vR:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/E;->vS:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/J;

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/E;->vT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

    monitor-enter v0

    :try_start_0
    invoke-interface {v2, v1, v3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/J;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
