.class Lcom/google/android/apps/miphone/aiai/matchmaker/ui/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/miphone/aiai/matchmaker/ui/q;


# instance fields
.field final synthetic vr:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/v;->vr:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Runnable;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/v;->vr:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;

    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;->cv()Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/v;->vr:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;

    new-instance v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/w;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/w;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/v;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;->e(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method

.method public final cu()Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/v;->vr:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;->vf:Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;

    return-object v0
.end method

.method public final d(Ljava/lang/Runnable;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/v;->vr:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;->vd:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    return-void
.end method
