.class public final Lcom/google/android/gms/common/internal/zzk;
.super Lcom/google/android/gms/common/internal/zzav;


# instance fields
.field private zzaTi:Lcom/google/android/gms/common/internal/u;

.field private final zzaTj:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/u;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzav;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzk;->zzaTi:Lcom/google/android/gms/common/internal/u;

    iput p2, p0, Lcom/google/android/gms/common/internal/zzk;->zzaTj:I

    return-void
.end method


# virtual methods
.method public final zza(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzaTi:Lcom/google/android/gms/common/internal/u;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzaTi:Lcom/google/android/gms/common/internal/u;

    iget v1, p0, Lcom/google/android/gms/common/internal/zzk;->zzaTj:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/common/internal/u;->a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzk;->zzaTi:Lcom/google/android/gms/common/internal/u;

    return-void
.end method

.method public final zza$68e2e3e6()V
    .locals 3

    const-string v0, "GmsClient"

    const-string v1, "received deprecated onAccountValidationComplete callback, ignoring"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
