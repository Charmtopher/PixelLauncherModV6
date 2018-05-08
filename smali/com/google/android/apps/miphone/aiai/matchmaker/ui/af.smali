.class final synthetic Lcom/google/android/apps/miphone/aiai/matchmaker/ui/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/miphone/aiai/matchmaker/ui/K;


# instance fields
.field private final wH:Ljava/util/List;

.field private final wI:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/af;->wH:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/af;->wI:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/af;->wH:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/af;->wI:Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;->rT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;

    iget-boolean v1, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tq:Z

    if-eqz v1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "-Obtained new entities"

    invoke-static {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Unable to obtain new entities"

    invoke-static {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->g(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
