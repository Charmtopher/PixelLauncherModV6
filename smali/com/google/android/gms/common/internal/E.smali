.class public final Lcom/google/android/gms/common/internal/E;
.super Lcom/google/android/gms/common/internal/v;


# instance fields
.field private synthetic Lq:Lcom/google/android/gms/common/internal/u;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/u;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/E;->Lq:Lcom/google/android/gms/common/internal/u;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/internal/v;-><init>(Lcom/google/android/gms/common/internal/u;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/E;->Lq:Lcom/google/android/gms/common/internal/u;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/u;->Lc:Lcom/google/android/gms/common/internal/A;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/A;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/E;->Lq:Lcom/google/android/gms/common/internal/u;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/u;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method protected final fX()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/E;->Lq:Lcom/google/android/gms/common/internal/u;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/u;->Lc:Lcom/google/android/gms/common/internal/A;

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->Ib:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/A;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x1

    return v0
.end method
