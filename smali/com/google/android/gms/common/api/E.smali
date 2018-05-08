.class public final Lcom/google/android/gms/common/api/E;
.super Ljava/lang/Object;


# instance fields
.field private GT:Landroid/accounts/Account;

.field IB:Lcom/google/android/gms/internal/cj;

.field private Iz:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fC()Lcom/google/android/gms/common/api/q;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/E;->IB:Lcom/google/android/gms/internal/cj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/aD;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aD;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/E;->IB:Lcom/google/android/gms/internal/cj;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/E;->Iz:Landroid/os/Looper;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/common/api/E;->Iz:Landroid/os/Looper;

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v0, Lcom/google/android/gms/common/api/q;

    iget-object v1, p0, Lcom/google/android/gms/common/api/E;->IB:Lcom/google/android/gms/internal/cj;

    iget-object v2, p0, Lcom/google/android/gms/common/api/E;->GT:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/android/gms/common/api/E;->Iz:Landroid/os/Looper;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/api/q;-><init>(Lcom/google/android/gms/internal/cj;Landroid/accounts/Account;Landroid/os/Looper;B)V

    return-object v0
.end method
