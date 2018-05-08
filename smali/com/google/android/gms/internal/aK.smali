.class public abstract Lcom/google/android/gms/internal/aK;
.super Lcom/google/android/gms/internal/aP;


# instance fields
.field final Iw:Lcom/google/android/gms/common/api/a;

.field final RG:Lcom/google/android/gms/common/api/h;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/r;)V
    .locals 1

    const-string v0, "GoogleApiClient must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/common/api/r;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/aP;-><init>(Lcom/google/android/gms/common/api/r;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/a;->fo()Lcom/google/android/gms/common/api/h;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/aK;->RG:Lcom/google/android/gms/common/api/h;

    iput-object p1, p0, Lcom/google/android/gms/internal/aK;->Iw:Lcom/google/android/gms/common/api/a;

    return-void
.end method

.method private final b(Landroid/os/RemoteException;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aK;->d(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/common/api/g;)V
.end method

.method public final b(Lcom/google/android/gms/common/api/g;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aK;->a(Lcom/google/android/gms/common/api/g;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aK;->b(Landroid/os/RemoteException;)V

    return-void

    :catch_1
    move-exception p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aK;->b(Landroid/os/RemoteException;)V

    throw p1
.end method

.method public final d(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->fl()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Failed result must not be success"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aK;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/y;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aK;->b(Lcom/google/android/gms/common/api/y;)V

    return-void
.end method
