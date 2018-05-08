.class final Lcom/google/android/gms/common/internal/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/x;


# instance fields
.field private synthetic Kg:Lcom/google/android/gms/common/api/u;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/u;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/b;->Kg:Lcom/google/android/gms/common/api/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->Kg:Lcom/google/android/gms/common/api/u;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/u;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
