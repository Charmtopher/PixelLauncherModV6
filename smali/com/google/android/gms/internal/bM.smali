.class final Lcom/google/android/gms/internal/bM;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic Uj:Lcom/google/android/gms/common/ConnectionResult;

.field private synthetic Ul:Lcom/google/android/gms/internal/bL;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bL;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bM;->Ul:Lcom/google/android/gms/internal/bL;

    iput-object p2, p0, Lcom/google/android/gms/internal/bM;->Uj:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->Uj:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->fl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->Ul:Lcom/google/android/gms/internal/bL;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/bL;->Uk:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->Ul:Lcom/google/android/gms/internal/bL;

    iget-object v0, v0, Lcom/google/android/gms/internal/bL;->Su:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->fp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->Ul:Lcom/google/android/gms/internal/bL;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bL;->hP()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->Ul:Lcom/google/android/gms/internal/bL;

    iget-object v0, v0, Lcom/google/android/gms/internal/bL;->Su:Lcom/google/android/gms/common/api/j;

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/internal/zzal;Ljava/util/Set;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->Ul:Lcom/google/android/gms/internal/bL;

    iget-object v0, v0, Lcom/google/android/gms/internal/bL;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v0}, Lcom/google/android/gms/internal/bF;->j(Lcom/google/android/gms/internal/bF;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bM;->Ul:Lcom/google/android/gms/internal/bL;

    iget-object v1, v1, Lcom/google/android/gms/internal/bL;->Iy:Lcom/google/android/gms/internal/aE;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bH;

    iget-object v1, p0, Lcom/google/android/gms/internal/bM;->Uj:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bH;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
