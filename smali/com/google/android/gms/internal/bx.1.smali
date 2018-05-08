.class final Lcom/google/android/gms/internal/bx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/d;


# instance fields
.field private synthetic TD:Lcom/google/android/gms/internal/bw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bx;->TD:Lcom/google/android/gms/internal/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fJ()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->TD:Lcom/google/android/gms/internal/bw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bw;->isConnected()Z

    move-result v0

    return v0
.end method
