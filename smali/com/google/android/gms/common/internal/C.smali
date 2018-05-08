.class public final Lcom/google/android/gms/common/internal/C;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/A;


# instance fields
.field private synthetic Lq:Lcom/google/android/gms/common/internal/u;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/u;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/C;->Lq:Lcom/google/android/gms/common/internal/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->fl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/internal/C;->Lq:Lcom/google/android/gms/common/internal/u;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/C;->Lq:Lcom/google/android/gms/common/internal/u;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/u;->fV()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/internal/u;->a(Lcom/google/android/gms/common/internal/zzal;Ljava/util/Set;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/C;->Lq:Lcom/google/android/gms/common/internal/u;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->h(Lcom/google/android/gms/common/internal/u;)Lcom/google/android/gms/common/internal/x;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/C;->Lq:Lcom/google/android/gms/common/internal/u;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->h(Lcom/google/android/gms/common/internal/u;)Lcom/google/android/gms/common/internal/x;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/x;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_1
    return-void
.end method
