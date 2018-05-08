.class final Lcom/google/android/gms/internal/bL;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/A;
.implements Lcom/google/android/gms/internal/ci;


# instance fields
.field final Iy:Lcom/google/android/gms/internal/aE;

.field final Su:Lcom/google/android/gms/common/api/j;

.field final synthetic TZ:Lcom/google/android/gms/internal/bF;

.field private Tc:Lcom/google/android/gms/common/internal/zzal;

.field Uk:Z

.field private zzaoj:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bF;Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/internal/aE;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bL;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/bL;->Tc:Lcom/google/android/gms/common/internal/zzal;

    iput-object p1, p0, Lcom/google/android/gms/internal/bL;->zzaoj:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/bL;->Uk:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/bL;->Su:Lcom/google/android/gms/common/api/j;

    iput-object p3, p0, Lcom/google/android/gms/internal/bL;->Iy:Lcom/google/android/gms/internal/aE;

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bL;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v0}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/bM;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/bM;-><init>(Lcom/google/android/gms/internal/bL;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/internal/zzal;Ljava/util/Set;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/bL;->Tc:Lcom/google/android/gms/common/internal/zzal;

    iput-object p2, p0, Lcom/google/android/gms/internal/bL;->zzaoj:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bL;->hP()V

    return-void

    :cond_1
    :goto_0
    const-string p1, "GoogleApiManager"

    const-string p2, "Received null response from onSignInSuccess"

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, p2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/bL;->j(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method final hP()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bL;->Uk:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bL;->Tc:Lcom/google/android/gms/common/internal/zzal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bL;->Su:Lcom/google/android/gms/common/api/j;

    iget-object v1, p0, Lcom/google/android/gms/internal/bL;->Tc:Lcom/google/android/gms/common/internal/zzal;

    iget-object v2, p0, Lcom/google/android/gms/internal/bL;->zzaoj:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/internal/zzal;Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public final j(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bL;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v0}, Lcom/google/android/gms/internal/bF;->j(Lcom/google/android/gms/internal/bF;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bL;->Iy:Lcom/google/android/gms/internal/aE;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bH;

    iget-object v1, v0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v1}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->a(Landroid/os/Handler;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/bH;->Su:Lcom/google/android/gms/common/api/j;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/j;->disconnect()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bH;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
