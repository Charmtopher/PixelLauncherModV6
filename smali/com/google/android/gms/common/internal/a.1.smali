.class final Lcom/google/android/gms/common/internal/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/w;


# instance fields
.field private synthetic Kf:Lcom/google/android/gms/common/api/t;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/t;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/a;->Kf:Lcom/google/android/gms/common/api/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->Kf:Lcom/google/android/gms/common/api/t;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/t;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->Kf:Lcom/google/android/gms/common/api/t;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/t;->onConnectionSuspended(I)V

    return-void
.end method
