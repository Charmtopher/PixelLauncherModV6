.class public final Lcom/google/android/gms/internal/aT;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/t;
.implements Lcom/google/android/gms/common/api/u;


# instance fields
.field public final Iw:Lcom/google/android/gms/common/api/a;

.field private final Sf:Z

.field Sg:Lcom/google/android/gms/internal/aU;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/aT;->Iw:Lcom/google/android/gms/common/api/a;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/aT;->Sf:Z

    return-void
.end method

.method private final hn()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aT;->Sg:Lcom/google/android/gms/internal/aU;

    const-string v1, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/aT;->hn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/aT;->Sg:Lcom/google/android/gms/internal/aU;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/aU;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/aT;->hn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/aT;->Sg:Lcom/google/android/gms/internal/aU;

    iget-object v1, p0, Lcom/google/android/gms/internal/aT;->Iw:Lcom/google/android/gms/common/api/a;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/aT;->Sf:Z

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/aU;->a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;Z)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/aT;->hn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/aT;->Sg:Lcom/google/android/gms/internal/aU;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/aU;->onConnectionSuspended(I)V

    return-void
.end method
