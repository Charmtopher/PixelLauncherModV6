.class final synthetic Lcom/google/android/apps/miphone/aiai/matchmaker/ui/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final vs:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/v;

.field private final vt:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/v;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/w;->vs:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/v;

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/w;->vt:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/w;->vs:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/v;

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/w;->vt:Ljava/lang/Runnable;

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/v;->vr:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;->vc:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
